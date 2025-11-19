uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_26CC57E30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_26CC57E78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26CC57EC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26CD3C1E0;
  v1 = sub_26CD3A59C();
  v2 = [v1 lastPathComponent];

  v3 = sub_26CD3A5CC();
  v5 = v4;

  MEMORY[0x26D6AD060](v3, v5);

  MEMORY[0x26D6AD060](8285, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  sub_26CC58138();
  v6 = sub_26CD3A55C();
  MEMORY[0x26D6AD060](v6);

  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_26CC19E10();
  *(v0 + 32) = 91;
  *(v0 + 40) = 0xE100000000000000;
  sub_26CD3A3CC();
}

uint64_t sub_26CC58054()
{
  sub_26CC1964C();
  result = sub_26CD3AACC();
  qword_2804D1498 = result;
  word_2804D14A0 = 257;
  return result;
}

uint64_t sub_26CC580C0()
{
  sub_26CC1964C();
  result = sub_26CD3AACC();
  qword_280BBCBD0 = result;
  word_280BBCBD8 = 768;
  return result;
}

unint64_t sub_26CC58138()
{
  result = qword_2804BBDB8;
  if (!qword_2804BBDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804BCA20, &unk_26CD3D4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBDB8);
  }

  return result;
}

id sub_26CC5819C()
{
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v1 = qword_280BBCC98;
  qword_280BBCBE0 = qword_280BBCC98;
  word_280BBCBE8 = word_280BBCCA0;

  return v1;
}

uint64_t sub_26CC5823C()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CC58308()
{
  *v0;
  *v0;
  *v0;
  sub_26CD3A54C();
}

uint64_t sub_26CC583C0()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CC58488@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26CC58910();
  *a2 = result;
  return result;
}

void sub_26CC584B8(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368769;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x696B726F7774654ELL;
  if (*v1 != 2)
  {
    v5 = 0x61467374726F7053;
    v4 = 0xEF73657469726F76;
  }

  if (*v1)
  {
    v3 = 0x6465646465626D45;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_26CC58540(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "com.apple.TVAppServices";
  v4 = 0xD00000000000001FLL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001FLL;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v2 == 1)
  {
    v6 = "com.apple.TVAppServices";
  }

  else
  {
    v6 = "com.apple.TVAppServicesEmbedded";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000017;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "tworking";
  }

  if (*a2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v3 = "com.apple.TVAppServicesEmbedded";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000017;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "tworking";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}

uint64_t sub_26CC58618()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CC586B4()
{
  *v0;
  *v0;
  sub_26CD3A54C();
}

uint64_t sub_26CC5873C()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CC587D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26CC5895C();
  *a2 = result;
  return result;
}

void sub_26CC58804(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = "com.apple.TVAppServices";
  v4 = 0xD00000000000001FLL;
  if (*v1 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v3 = "com.apple.TVAppServicesEmbedded";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "tworking";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_26CC58864()
{
  result = qword_2804BC390;
  if (!qword_2804BC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC390);
  }

  return result;
}

unint64_t sub_26CC588BC()
{
  result = qword_2804BC398;
  if (!qword_2804BC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC398);
  }

  return result;
}

uint64_t sub_26CC58910()
{
  v0 = sub_26CD3AD9C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26CC5895C()
{
  v0 = sub_26CD3AD9C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26CC589A8@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = sub_26CD3A59C();
  v4 = [v2 containerURLForSecurityApplicationGroupIdentifier_];

  if (v4)
  {
    sub_26CD39FEC();

    v5 = 0;
    v2 = v4;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_26CD3A07C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_26CC58AAC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_26CC58ACC, 0, 0);
}

uint64_t sub_26CC58ACC()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v2 = v0 + 2;
  v3 = v0[3];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      v6 = *v5;
      v7 = objc_allocWithZone(MEMORY[0x277CEE5A8]);

      v8 = sub_26CD3A59C();
      v9 = [v7 initWithTopic_];

      v10 = sub_26CD3A4DC();

      [v9 addPropertiesWithDictionary_];

      v11 = v9;
      MEMORY[0x26D6AD170]();
      if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_26CD3A7CC();
      }

      sub_26CD3A7DC();

      ++v5;
      --v4;
    }

    while (v4);
    v1 = *v2;
    v0 = v16;
  }

  v0[5] = v1;
  v13 = swift_task_alloc();
  v0[6] = v13;
  *v13 = v0;
  v13[1] = sub_26CC58CB8;
  v14 = v0[4];

  return sub_26CC58E50(v1);
}

uint64_t sub_26CC58CB8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_26CC58DEC;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_26CC58DD4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CC58DEC()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_26CC58E50(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_26CC58E70, 0, 0);
}

uint64_t sub_26CC58E70()
{
  v2 = v0[19];
  v1 = v0[20];
  sub_26CC18080(0, &qword_2804BC3D0, 0x277CEE5A8);
  v3 = sub_26CD3A79C();
  [v1 enqueueEvents_];

  v4 = [v1 flush];
  v0[21] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26CC58FF4;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3D8, &qword_26CD40478);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26CC1691C;
  v0[13] = &block_descriptor_2;
  v0[14] = v5;
  [v4 resultWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26CC58FF4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_26CC59248;
  }

  else
  {
    v3 = sub_26CC59104;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CC59104()
{
  v1 = *(v0 + 168);

  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26CD3C1E0;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_26CC19E10();
  *(v2 + 32) = 0xD00000000000001CLL;
  *(v2 + 40) = 0x800000026CD4E3C0;
  sub_26CD3A3DC();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26CC59248()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t sub_26CC592B8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CC37110;

  return sub_26CC58AAC(a1);
}

uint64_t MetricsServiceError.hashValue.getter()
{
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](0);
  return sub_26CD3B13C();
}

uint64_t sub_26CC593C4()
{
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](0);
  return sub_26CD3B13C();
}

uint64_t sub_26CC59408()
{
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](0);
  return sub_26CD3B13C();
}

uint64_t sub_26CC59448()
{
  v0 = [objc_opt_self() app];
  v1 = *&v0[OBJC_IVAR___TVAppBag_amsBag];

  v2 = objc_allocWithZone(MEMORY[0x277CEE598]);
  v3 = sub_26CD3A59C();
  v4 = [v2 initWithContainerID:v3 bag:v1];

  result = sub_26CC18080(0, &qword_2804BC3E8, 0x277CEE598);
  qword_2804BC3B8 = result;
  unk_2804BC3C0 = &off_287DFF248;
  qword_2804BC3A0 = v4;
  return result;
}

uint64_t static MetricsService.report(metrics:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26CC246B8;

  return sub_26CC595F0(a1);
}

uint64_t sub_26CC59610()
{
  if (*(v0[2] + 16))
  {
    if (qword_2804BBA10 != -1)
    {
      swift_once();
    }

    v1 = qword_2804BC3B8;
    v2 = unk_2804BC3C0;
    __swift_project_boxed_opaque_existential_1(qword_2804BC3A0, qword_2804BC3B8);
    v3 = *(v2 + 8);
    v10 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[3] = v5;
    *v5 = v0;
    v5[1] = sub_26CC35904;
    v6 = v0[2];

    return v10(v6, v1, v2);
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26CD3C1E0;
    *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v8 + 64) = sub_26CC2E6E8();
    *(v8 + 32) = &unk_287DFABA0;
    sub_26CD3A3DC();

    sub_26CC59A70();
    swift_allocError();
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

unint64_t sub_26CC598A8()
{
  result = qword_2804BC3C8;
  if (!qword_2804BC3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC3C8);
  }

  return result;
}

uint64_t sub_26CC598FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_26CC246B8;

  return v11(a1, a2, a3);
}

unint64_t sub_26CC59A70()
{
  result = qword_2804BC3E0;
  if (!qword_2804BC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC3E0);
  }

  return result;
}

Swift::Bool __swiftcall TimeRange.intersectsRange(_:)(TVAppServices::TimeRange a1)
{
  v3 = v1;
  result = 0;
  if (v2[1] > 0.0 && v3[1] > 0.0)
  {
    if (*v2 == *v3)
    {
      return 1;
    }

    if (*v2 >= *v3)
    {
      if (*v2 < v3[2])
      {
        return 1;
      }
    }

    else if (*v3 < v2[2])
    {
      return 1;
    }

    return 0;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TimeRange(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimeRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_26CC59C1C()
{
  type metadata accessor for MusicService();
  v0 = swift_allocObject();
  type metadata accessor for MusicAPIRequestFactory();
  swift_allocObject();
  result = sub_26CC63524();
  *(v0 + 16) = result;
  qword_2804BC3F0 = v0;
  return result;
}

uint64_t static MusicService.shared.getter()
{
  if (qword_2804BBA18 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26CC59CD0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = sub_26CD39D0C();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC59DD4, 0, 0);
}

uint64_t sub_26CC59DD4()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = *(v0[5] + 16);
  sub_26CC6143C(v0[4], 29557, 0xE200000000000000, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26CC5BF40(v0[6]);
    sub_26CC5BFA8();
    swift_allocError();
    *v5 = xmmword_26CD3E690;
    swift_willThrow();
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[6];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[9];
    v12 = v0[10];
    v13 = v0[7];
    v14 = v0[8];
    v15 = *(v14 + 32);
    v15(v12, v0[6], v13);
    (*(v14 + 16))(v11, v12, v13);
    v16 = type metadata accessor for AMSMediaRequestHandler();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    v19 = swift_allocObject();
    v0[11] = v19;
    *(v19 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_sessionTask) = 0;
    v15(v19 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_request, v11, v13);
    v20 = swift_task_alloc();
    v0[12] = v20;
    *v20 = v0;
    v20[1] = sub_26CC59FE4;

    return sub_26CD07B88();
  }
}

uint64_t sub_26CC59FE4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = sub_26CC5A2E8;
  }

  else
  {
    v5 = sub_26CC5A0F8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CC5A0F8()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = sub_26CD39D5C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_26CD39D4C();
  v6 = [v1 data];
  v7 = sub_26CD3A0BC();
  v9 = v8;

  sub_26CC5C7AC();
  sub_26CD39D3C();
  v10 = v0[13];
  v11 = v0[11];
  if (v2)
  {
    (*(v0[8] + 8))(v0[10], v0[7]);
    sub_26CC18C50(v7, v9);

    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[6];

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[9];
    v19 = v0[6];
    v18 = v0[7];
    v20 = v0[10];
    (*(v0[8] + 8))();
    sub_26CC18C50(v7, v9);

    v22 = v0[2];
    v21 = v0[3];

    v23 = v0[1];

    return v23(v22, v21);
  }
}

uint64_t sub_26CC5A2E8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];
  v4 = v0[8];

  (*(v4 + 8))(v2, v3);
  v5 = v0[14];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_26CC5A38C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v5 = sub_26CD39D0C();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC5A494, 0, 0);
}

uint64_t sub_26CC5A494()
{
  v1 = *(v0[5] + 16);
  sub_26CC619B0(v0[4], v0[6]);
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_26CC5BF40(v4);
    sub_26CC5BFA8();
    swift_allocError();
    *v5 = xmmword_26CD3E690;
    swift_willThrow();
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[6];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v12 = v0[9];
    v11 = v0[10];
    v13 = *(v3 + 32);
    v13(v11, v4, v2);
    (*(v3 + 16))(v12, v11, v2);
    v14 = type metadata accessor for AMSMediaRequestHandler();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    v17 = swift_allocObject();
    v0[11] = v17;
    *(v17 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_sessionTask) = 0;
    v13(v17 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_request, v12, v2);
    v18 = swift_task_alloc();
    v0[12] = v18;
    *v18 = v0;
    v18[1] = sub_26CC5A6AC;

    return sub_26CD07B88();
  }
}

uint64_t sub_26CC5A6AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = sub_26CC5A2E8;
  }

  else
  {
    v5 = sub_26CC5A7C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CC5A7C0()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = sub_26CD39D5C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_26CD39D4C();
  v6 = [v1 data];
  v7 = sub_26CD3A0BC();
  v9 = v8;

  sub_26CC5BFFC();
  sub_26CD39D3C();
  if (v2)
  {
    v10 = v0[13];
    v11 = v0[11];
    (*(v0[8] + 8))(v0[10], v0[7]);
    sub_26CC18C50(v7, v9);

    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[6];

    v15 = v0[1];
  }

  else
  {
    sub_26CC18C50(v7, v9);

    v16 = v0[2];
    v17 = v0[3];
    v18 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[7];
    v22 = v0[8];
    if (v16[2])
    {
      v23 = v16[5];
      v37 = v16[6];
      v38 = v16[4];
      v36 = v0[10];
      v24 = v16[7];
      v34 = v0[7];
      v35 = v16[8];
      v25 = v16[9];
      v26 = v16[10];

      (*(v22 + 8))(v36, v34);
      v27 = v35;
      v28 = v37;
      *v17 = v38;
      v17[1] = v23;
    }

    else
    {

      (*(v22 + 8))(v19, v21);
      v28 = 0;
      v24 = 0;
      v27 = 0;
      v25 = 0;
      v26 = 0;
      *v17 = 0;
      v17[1] = 0;
    }

    v30 = v0[9];
    v29 = v0[10];
    v31 = v0[6];
    v32 = v0[3];
    v32[2] = v28;
    v32[3] = v24;
    v32[4] = v27;
    v32[5] = v25;
    v32[6] = v26;

    v15 = v0[1];
  }

  return v15();
}

uint64_t sub_26CC5AA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v6 = sub_26CD39D0C();
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC5AB38, 0, 0);
}

uint64_t sub_26CC5AB38()
{
  v1 = *(v0[6] + 16);
  sub_26CC62038(v0[4], v0[5], v0[7]);
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_26CC5BF40(v4);
    sub_26CC5BFA8();
    swift_allocError();
    *v5 = xmmword_26CD3E690;
    swift_willThrow();
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[7];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v12 = v0[10];
    v11 = v0[11];
    v13 = *(v3 + 32);
    v13(v11, v4, v2);
    (*(v3 + 16))(v12, v11, v2);
    v14 = type metadata accessor for AMSMediaRequestHandler();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    v17 = swift_allocObject();
    v0[12] = v17;
    *(v17 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_sessionTask) = 0;
    v13(v17 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_request, v12, v2);
    v18 = swift_task_alloc();
    v0[13] = v18;
    *v18 = v0;
    v18[1] = sub_26CC5AD50;

    return sub_26CD07B88();
  }
}

uint64_t sub_26CC5AD50(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v7 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v5 = sub_26CC5B0D4;
  }

  else
  {
    v5 = sub_26CC5AE64;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CC5AE64()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = sub_26CD39D5C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_26CD39D4C();
  v6 = [v1 data];
  v7 = sub_26CD3A0BC();
  v9 = v8;

  sub_26CC5BFFC();
  sub_26CD39D3C();
  if (v2)
  {
    v10 = v0[14];
    v11 = v0[12];
    (*(v0[9] + 8))(v0[11], v0[8]);
    sub_26CC18C50(v7, v9);

    v13 = v0[10];
    v12 = v0[11];
    v14 = v0[7];

    v15 = v0[1];
  }

  else
  {
    sub_26CC18C50(v7, v9);

    v16 = v0[2];
    v17 = v0[3];
    v18 = v0[14];
    v19 = v0[11];
    v20 = v0[12];
    v21 = v0[8];
    v22 = v0[9];
    if (v16[2])
    {
      v23 = v16[5];
      v37 = v16[6];
      v38 = v16[4];
      v36 = v0[11];
      v24 = v16[7];
      v34 = v0[8];
      v35 = v16[8];
      v25 = v16[9];
      v26 = v16[10];

      (*(v22 + 8))(v36, v34);
      v27 = v35;
      v28 = v37;
      *v17 = v38;
      v17[1] = v23;
    }

    else
    {

      (*(v22 + 8))(v19, v21);
      v28 = 0;
      v24 = 0;
      v27 = 0;
      v25 = 0;
      v26 = 0;
      *v17 = 0;
      v17[1] = 0;
    }

    v30 = v0[10];
    v29 = v0[11];
    v31 = v0[7];
    v32 = v0[3];
    v32[2] = v28;
    v32[3] = v24;
    v32[4] = v27;
    v32[5] = v25;
    v32[6] = v26;

    v15 = v0[1];
  }

  return v15();
}

uint64_t sub_26CC5B0D4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[9];

  (*(v4 + 8))(v2, v3);
  v5 = v0[15];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_26CC5B178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v6 = sub_26CD39D0C();
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC5B280, 0, 0);
}

uint64_t sub_26CC5B280()
{
  v1 = *(v0[6] + 16);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_26CC5B320;
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];

  return sub_26CC622F8(v3, v4, v5);
}

uint64_t sub_26CC5B320()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_26CC5B9E8;
  }

  else
  {
    v3 = sub_26CC5B434;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CC5B434()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26CC5BF40(v3);
    sub_26CC5BFA8();
    swift_allocError();
    *v4 = xmmword_26CD3E690;
    swift_willThrow();
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[7];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v11 = v0[10];
    v10 = v0[11];
    v12 = *(v2 + 32);
    v12(v10, v3, v1);
    (*(v2 + 16))(v11, v10, v1);
    v13 = type metadata accessor for AMSMediaRequestHandler();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    v0[14] = v16;
    *(v16 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_sessionTask) = 0;
    v12(v16 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_request, v11, v1);
    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_26CC5B630;

    return sub_26CD07B88();
  }
}

uint64_t sub_26CC5B630(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_26CC5BA68;
  }

  else
  {
    v5 = sub_26CC5B744;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CC5B744()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = sub_26CD39D5C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_26CD39D4C();
  v6 = [v1 data];
  v7 = sub_26CD3A0BC();
  v9 = v8;

  sub_26CC5BFFC();
  sub_26CD39D3C();
  if (v2)
  {
    v10 = v0[16];
    v11 = v0[14];
    (*(v0[9] + 8))(v0[11], v0[8]);
    sub_26CC18C50(v7, v9);

LABEL_3:
    v13 = v0[10];
    v12 = v0[11];
    v14 = v0[7];

    v15 = v0[1];
    goto LABEL_6;
  }

  sub_26CC18C50(v7, v9);

  v16 = v0[2];
  v17 = v0[16];
  v18 = v0[11];
  if (!v16[2])
  {
    v27 = v0[8];
    v26 = v0[9];
    v28 = v0[2];

    sub_26CC5BFA8();
    swift_allocError();
    *v29 = xmmword_26CD3E6A0;
    swift_willThrow();

    (*(v26 + 8))(v18, v27);
    goto LABEL_3;
  }

  v19 = v0[9];
  v34 = v0[8];
  v35 = v0[10];
  v36 = v0[7];
  v20 = v0[3];
  v21 = v16[5];
  v32 = v16[6];
  v33 = v16[4];
  v30 = v0[14];
  v22 = v16[7];
  v31 = v16[8];
  v23 = v16[9];
  v24 = v16[10];

  (*(v19 + 8))(v18, v34);
  *v20 = v33;
  v20[1] = v21;
  v20[2] = v32;
  v20[3] = v22;
  v20[4] = v31;
  v20[5] = v23;
  v20[6] = v24;

  v15 = v0[1];
LABEL_6:

  return v15();
}

uint64_t sub_26CC5B9E8()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26CC5BA68()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];

  (*(v4 + 8))(v2, v3);
  v5 = v0[17];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_26CC5BB10(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_26CC5BB34, 0, 0);
}

uint64_t sub_26CC5BB34()
{
  v2 = v0[9];
  v1 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v3 = swift_allocObject();
  v0[12] = v3;
  *(v3 + 16) = xmmword_26CD3C1E0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_26CC5BC20;
  v5 = v0[11];

  return sub_26CC5A38C((v0 + 2), v3);
}

uint64_t sub_26CC5BC20()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_26CC5BE80;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_26CC5BD3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CC5BD3C()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[7];
    v7 = v0[8];
    if (!v7 || !*(v7 + 16) || (v8 = sub_26CC181C4(v0[9], v0[10]), (v9 & 1) == 0))
    {
      sub_26CC5C050(v2, v1);
      sub_26CC5BFA8();
      swift_allocError();
      *v12 = xmmword_26CD3E6A0;
      swift_willThrow();
      v13 = v0[1];
      v11 = 0;
      goto LABEL_9;
    }

    v10 = *(*(v7 + 56) + v8);
    sub_26CC5C050(v2, v1);
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v13 = v0[1];
LABEL_9:

  return v13(v11);
}

uint64_t sub_26CC5BE80()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[1];

  return v3(0);
}

uint64_t MusicService.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MusicService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_26CC5BF40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26CC5BFA8()
{
  result = qword_2804BC400;
  if (!qword_2804BC400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC400);
  }

  return result;
}

unint64_t sub_26CC5BFFC()
{
  result = qword_2804BC408;
  if (!qword_2804BC408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC408);
  }

  return result;
}

uint64_t sub_26CC5C050(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t dispatch thunk of MusicService.fetchSavedSongsPlaylist(checkIfHasTracks:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26CC37110;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MusicService.fetchPlaylist(withId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 112);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26CC246B8;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MusicService.addToSavedSongsPlaylist(songId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 120);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26CC37110;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MusicService.isSongAddedToSavedSongPlaylist(songId:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26CC5C5BC;

  return v10(a1, a2);
}

uint64_t sub_26CC5C5BC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t get_enum_tag_for_layout_string_13TVAppServices12MusicServiceC0cD5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26CC5C6D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26CC5C72C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_26CC5C77C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_26CC5C7AC()
{
  result = qword_2804BC410;
  if (!qword_2804BC410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC410);
  }

  return result;
}

uint64_t sub_26CC5C800(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC4E0, &qword_26CD40B08);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5F2E4();
  sub_26CD3B16C();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC4C0, &qword_26CD40B00);
  sub_26CC5F3E0(&qword_2804BC4E8, sub_26CC5F458);
  sub_26CD3AF6C();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    sub_26CC5F4AC();
    sub_26CD3AF6C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_26CC5C9DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC460, &qword_26CD408A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[3];
  v17[3] = v1[2];
  v17[4] = v8;
  v11 = v1[5];
  v17[1] = v1[4];
  v17[2] = v10;
  v17[0] = v11;
  v12 = *(v1 + 6);
  v28 = *(v1 + 5);
  v29 = v12;
  v30 = *(v1 + 7);
  v31 = v1[16];
  v13 = *(v1 + 4);
  v26 = *(v1 + 3);
  v27 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5E74C();
  sub_26CD3B16C();
  LOBYTE(v20) = 0;
  v15 = v17[5];
  sub_26CD3AF2C();
  if (!v15)
  {
    LOBYTE(v20) = 1;
    sub_26CD3AF2C();
    LOBYTE(v20) = 2;
    sub_26CD3AF2C();
    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v20 = v26;
    v21 = v27;
    v32 = 3;
    sub_26CC5E85C(&v26, v18);
    sub_26CC5E894();
    sub_26CD3AF6C();
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v19 = v25;
    v18[0] = v20;
    v18[1] = v21;
    sub_26CC5E8E8(v18);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_26CC5CC28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC448, &qword_26CD40898);
  v5 = *(v66 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v66);
  v8 = &v31 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5E74C();
  sub_26CD3B15C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  v36 = a2;
  LOBYTE(v46[0]) = 0;
  v11 = sub_26CD3AE3C();
  v13 = v12;
  v34 = v11;
  LOBYTE(v46[0]) = 1;
  v14 = sub_26CD3AE3C();
  v35 = v15;
  v32 = v14;
  LOBYTE(v46[0]) = 2;
  v16 = a1;
  v31 = sub_26CD3AE3C();
  v33 = v17;
  v53 = 3;
  sub_26CC5E7A0();
  sub_26CD3AE7C();
  (*(v10 + 8))(v8, v66);
  v62 = v56;
  v63 = v57;
  v64 = v58;
  v60 = v54;
  v61 = v55;
  v65 = v59;
  v18 = v34;
  v19 = v35;
  *&v37 = v34;
  *(&v37 + 1) = v13;
  v20 = v32;
  *&v38 = v32;
  *(&v38 + 1) = v35;
  v21 = v33;
  *&v39 = v31;
  *(&v39 + 1) = v33;
  v40 = v54;
  v41 = v55;
  v45 = v59;
  v43 = v57;
  v44 = v58;
  v42 = v56;
  v22 = v37;
  v23 = v38;
  v24 = v54;
  v25 = v36;
  *(v36 + 32) = v39;
  *(v25 + 48) = v24;
  *v25 = v22;
  *(v25 + 16) = v23;
  v26 = v41;
  v27 = v42;
  v28 = v43;
  v29 = v44;
  *(v25 + 128) = v45;
  *(v25 + 96) = v28;
  *(v25 + 112) = v29;
  *(v25 + 64) = v26;
  *(v25 + 80) = v27;
  sub_26CC5E7F4(&v37, v46);
  __swift_destroy_boxed_opaque_existential_1(v16);
  v46[0] = v18;
  v46[1] = v13;
  v46[2] = v20;
  v46[3] = v19;
  v46[4] = v31;
  v46[5] = v21;
  v49 = v62;
  v50 = v63;
  v51 = v64;
  v52 = v65;
  v47 = v60;
  v48 = v61;
  return sub_26CC5E82C(v46);
}

uint64_t sub_26CC5CFB0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC4A0, &qword_26CD40AF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v22 = v1[3];
  v23 = v10;
  v11 = v1[4];
  v20[5] = v1[5];
  v21 = v11;
  v12 = v1[6];
  v13 = v1[7];
  v14 = v1[9];
  v20[3] = v1[8];
  v20[4] = v12;
  v20[0] = v14;
  v20[1] = v1[10];
  v20[2] = v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5F1E8();
  sub_26CD3B16C();
  LOBYTE(v25) = 0;
  v16 = v24;
  sub_26CD3AF2C();
  if (!v16)
  {
    v17 = v21;
    v18 = v22;
    LOBYTE(v25) = 1;
    sub_26CD3AF5C();
    v25 = v18;
    v26 = v17;
    v27 = 2;
    sub_26CC5F290();

    sub_26CD3AF6C();

    LOBYTE(v25) = 3;
    sub_26CD3AF2C();
    LOBYTE(v25) = 4;
    sub_26CD3AF2C();
    LOBYTE(v25) = 5;
    sub_26CD3AF2C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_26CC5D220@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC488, &qword_26CD40AE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5F1E8();
  sub_26CD3B15C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v41) = 0;
  v11 = sub_26CD3AE3C();
  v13 = v12;
  LOBYTE(v41) = 1;
  v34 = sub_26CD3AE6C();
  LOBYTE(v35) = 2;
  sub_26CC5F23C();
  sub_26CD3AE7C();
  v31 = v41;
  v33 = v42;
  LOBYTE(v41) = 3;
  v14 = sub_26CD3AE3C();
  v32 = v15;
  v28 = v14;
  LOBYTE(v41) = 4;
  v29 = 0;
  v27 = sub_26CD3AE3C();
  v30 = v16;
  v52 = 5;
  v17 = sub_26CD3AE3C();
  v18 = v9;
  v20 = v19;
  (*(v6 + 8))(v18, v5);
  *&v35 = v11;
  v21 = v34;
  *(&v35 + 1) = v13;
  *&v36 = v34;
  *(&v36 + 1) = v31;
  *&v37 = v33;
  v22 = v32;
  *(&v37 + 1) = v28;
  *&v38 = v32;
  *(&v38 + 1) = v27;
  *&v39 = v30;
  *(&v39 + 1) = v17;
  v40 = v20;
  *(a2 + 80) = v20;
  v23 = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v23;
  *(a2 + 64) = v39;
  v24 = v36;
  *a2 = v35;
  *(a2 + 16) = v24;
  sub_26CC5E85C(&v35, &v41);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v41 = v11;
  v42 = v13;
  v43 = v21;
  v44 = v31;
  v45 = v33;
  v46 = v28;
  v47 = v22;
  v48 = v27;
  v49 = v30;
  v50 = v17;
  v51 = v20;
  return sub_26CC5E8E8(&v41);
}

uint64_t sub_26CC5D668()
{
  if (*v0)
  {
    return 1635018093;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_26CC5D68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_26CD3AFDC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26CD3AFDC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26CC5D75C(uint64_t a1)
{
  v2 = sub_26CC5F2E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC5D798(uint64_t a1)
{
  v2 = sub_26CC5F2E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CC5D7D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26CC5EE58(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_26CC5D81C()
{
  v1 = 25705;
  v2 = 1717924456;
  if (*v0 != 2)
  {
    v2 = 0x7475626972747461;
  }

  if (*v0)
  {
    v1 = 1701869940;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26CC5D880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CC5F084(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CC5D8A8(uint64_t a1)
{
  v2 = sub_26CC5E74C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC5D8E4(uint64_t a1)
{
  v2 = sub_26CC5E74C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CC5D950()
{
  v1 = *v0;
  v2 = 0x6D614E6D75626C61;
  v3 = 7107189;
  v4 = 1701667182;
  if (v1 != 4)
  {
    v4 = 0x614E747369747261;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x6B726F77747261;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26CC5DA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CC5F740(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CC5DA30(uint64_t a1)
{
  v2 = sub_26CC5F1E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC5DA6C(uint64_t a1)
{
  v2 = sub_26CC5F1E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Artwork.url.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_26CC5DB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26CC5DBA0(uint64_t a1)
{
  v2 = sub_26CC5DD54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC5DBDC(uint64_t a1)
{
  v2 = sub_26CC5DD54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Artwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC418, &qword_26CD40630);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5DD54();
  sub_26CD3B16C();
  sub_26CD3AF2C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26CC5DD54()
{
  result = qword_2804BC420;
  if (!qword_2804BC420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC420);
  }

  return result;
}

uint64_t Artwork.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC428, &qword_26CD40638);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5DD54();
  sub_26CD3B15C();
  if (!v2)
  {
    v11 = sub_26CD3AE3C();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26CC5DF1C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC5F0, &qword_26CD410E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC605DC();
  sub_26CD3B16C();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_26CD3AF2C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_26CD3AF2C();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_26CD3AF2C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26CC5E0BC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC548, &qword_26CD40DA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5FE20();
  sub_26CD3B16C();
  v11[1] = a2;
  sub_26CC5FEC8();
  sub_26CD3AF6C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_26CC5E204(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC5A8, &qword_26CD40F40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC601C8();
  sub_26CD3B16C();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC580, &qword_26CD40F30);
  sub_26CC603A4();
  sub_26CD3AF6C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_26CC5E378(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC418, &qword_26CD40630);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5DD54();
  sub_26CD3B16C();
  sub_26CD3AF2C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_26CC5E4B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26CC5E4FC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_26CC5E57C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_26CC5E5C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26CC5E648()
{
  result = qword_2804BC430;
  if (!qword_2804BC430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC430);
  }

  return result;
}

unint64_t sub_26CC5E6A0()
{
  result = qword_2804BC438;
  if (!qword_2804BC438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC438);
  }

  return result;
}

unint64_t sub_26CC5E6F8()
{
  result = qword_2804BC440;
  if (!qword_2804BC440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC440);
  }

  return result;
}

unint64_t sub_26CC5E74C()
{
  result = qword_2804BC450;
  if (!qword_2804BC450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC450);
  }

  return result;
}

unint64_t sub_26CC5E7A0()
{
  result = qword_2804BC458;
  if (!qword_2804BC458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC458);
  }

  return result;
}

unint64_t sub_26CC5E894()
{
  result = qword_2804BC468;
  if (!qword_2804BC468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC468);
  }

  return result;
}

unint64_t sub_26CC5E94C()
{
  result = qword_2804BC470;
  if (!qword_2804BC470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC470);
  }

  return result;
}

unint64_t sub_26CC5E9A4()
{
  result = qword_2804BC478;
  if (!qword_2804BC478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC478);
  }

  return result;
}

unint64_t sub_26CC5E9FC()
{
  result = qword_2804BC480;
  if (!qword_2804BC480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC480);
  }

  return result;
}

uint64_t sub_26CC5EA50()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 1717924456;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_26CC5EA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CC5F954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CC5EAB8(uint64_t a1)
{
  v2 = sub_26CC605DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC5EAF4(uint64_t a1)
{
  v2 = sub_26CC605DC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26CC5EB30@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_26CC5FA64(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_26CC5EBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26CC5EC2C(uint64_t a1)
{
  v2 = sub_26CC5FE20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC5EC68(uint64_t a1)
{
  v2 = sub_26CC5FE20();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26CC5ECA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_26CC5FCB0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26CC5ED0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C617669757165 && a2 == 0xEB0000000073746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26CC5ED98(uint64_t a1)
{
  v2 = sub_26CC601C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC5EDD4(uint64_t a1)
{
  v2 = sub_26CC601C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26CC5EE10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_26CC60044(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26CC5EE58(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC4B0, &qword_26CD40AF8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5F2E4();
  sub_26CD3B15C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC4C0, &qword_26CD40B00);
  HIBYTE(v10) = 0;
  sub_26CC5F3E0(&qword_2804BC4C8, sub_26CC5F338);
  sub_26CD3AE7C();
  v9 = v11;
  HIBYTE(v10) = 1;
  sub_26CC5F38C();
  sub_26CD3AE7C();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_26CC5F084(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1717924456 && a2 == 0xE400000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    return 3;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_26CC5F1E8()
{
  result = qword_2804BC490;
  if (!qword_2804BC490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC490);
  }

  return result;
}

unint64_t sub_26CC5F23C()
{
  result = qword_2804BC498;
  if (!qword_2804BC498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC498);
  }

  return result;
}

unint64_t sub_26CC5F290()
{
  result = qword_2804BC4A8;
  if (!qword_2804BC4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC4A8);
  }

  return result;
}

unint64_t sub_26CC5F2E4()
{
  result = qword_2804BC4B8;
  if (!qword_2804BC4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC4B8);
  }

  return result;
}

unint64_t sub_26CC5F338()
{
  result = qword_2804BC4D0;
  if (!qword_2804BC4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC4D0);
  }

  return result;
}

unint64_t sub_26CC5F38C()
{
  result = qword_2804BC4D8;
  if (!qword_2804BC4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC4D8);
  }

  return result;
}

uint64_t sub_26CC5F3E0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC4C0, &qword_26CD40B00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CC5F458()
{
  result = qword_2804BC4F0;
  if (!qword_2804BC4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC4F0);
  }

  return result;
}

unint64_t sub_26CC5F4AC()
{
  result = qword_2804BC4F8;
  if (!qword_2804BC4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC4F8);
  }

  return result;
}

unint64_t sub_26CC5F534()
{
  result = qword_2804BC500;
  if (!qword_2804BC500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC500);
  }

  return result;
}

unint64_t sub_26CC5F58C()
{
  result = qword_2804BC508;
  if (!qword_2804BC508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC508);
  }

  return result;
}

unint64_t sub_26CC5F5E4()
{
  result = qword_2804BC510;
  if (!qword_2804BC510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC510);
  }

  return result;
}

unint64_t sub_26CC5F63C()
{
  result = qword_2804BC518;
  if (!qword_2804BC518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC518);
  }

  return result;
}

unint64_t sub_26CC5F694()
{
  result = qword_2804BC520;
  if (!qword_2804BC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC520);
  }

  return result;
}

unint64_t sub_26CC5F6EC()
{
  result = qword_2804BC528;
  if (!qword_2804BC528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC528);
  }

  return result;
}

uint64_t sub_26CC5F740(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026CD4E420 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_26CC5F954(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1717924456 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_26CC5FA64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC5E0, &qword_26CD410E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC605DC();
  sub_26CD3B15C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_26CD3AE3C();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_26CD3AE3C();
  v23 = v14;
  v25 = 2;
  v15 = sub_26CD3AE3C();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v24;
  a2[1] = v13;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

void *sub_26CC5FCB0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC530, &qword_26CD40D98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5FE20();
  sub_26CD3B15C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_26CC5FE74();
    sub_26CD3AE7C();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_26CC5FE20()
{
  result = qword_2804BC538;
  if (!qword_2804BC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC538);
  }

  return result;
}

unint64_t sub_26CC5FE74()
{
  result = qword_2804BC540;
  if (!qword_2804BC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC540);
  }

  return result;
}

unint64_t sub_26CC5FEC8()
{
  result = qword_2804BC550;
  if (!qword_2804BC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC550);
  }

  return result;
}

unint64_t sub_26CC5FF40()
{
  result = qword_2804BC558;
  if (!qword_2804BC558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC558);
  }

  return result;
}

unint64_t sub_26CC5FF98()
{
  result = qword_2804BC560;
  if (!qword_2804BC560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC560);
  }

  return result;
}

unint64_t sub_26CC5FFF0()
{
  result = qword_2804BC568;
  if (!qword_2804BC568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC568);
  }

  return result;
}

void *sub_26CC60044(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC570, &qword_26CD40F28);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC601C8();
  sub_26CD3B15C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC580, &qword_26CD40F30);
    sub_26CC6021C();
    sub_26CD3AE7C();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_26CC601C8()
{
  result = qword_2804BC578;
  if (!qword_2804BC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC578);
  }

  return result;
}

unint64_t sub_26CC6021C()
{
  result = qword_2804BC588;
  if (!qword_2804BC588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC580, &qword_26CD40F30);
    sub_26CC602D8(&qword_2804BC590, sub_26CC60350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC588);
  }

  return result;
}

uint64_t sub_26CC602D8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC598, &qword_26CD40F38);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CC60350()
{
  result = qword_2804BC5A0;
  if (!qword_2804BC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC5A0);
  }

  return result;
}

unint64_t sub_26CC603A4()
{
  result = qword_2804BC5B0;
  if (!qword_2804BC5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC580, &qword_26CD40F30);
    sub_26CC602D8(&qword_2804BC5B8, sub_26CC60460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC5B0);
  }

  return result;
}

unint64_t sub_26CC60460()
{
  result = qword_2804BC5C0;
  if (!qword_2804BC5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC5C0);
  }

  return result;
}

unint64_t sub_26CC604D8()
{
  result = qword_2804BC5C8;
  if (!qword_2804BC5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC5C8);
  }

  return result;
}

unint64_t sub_26CC60530()
{
  result = qword_2804BC5D0;
  if (!qword_2804BC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC5D0);
  }

  return result;
}

unint64_t sub_26CC60588()
{
  result = qword_2804BC5D8;
  if (!qword_2804BC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC5D8);
  }

  return result;
}

unint64_t sub_26CC605DC()
{
  result = qword_2804BC5E8;
  if (!qword_2804BC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC5E8);
  }

  return result;
}

unint64_t sub_26CC60644()
{
  result = qword_2804BC5F8;
  if (!qword_2804BC5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC5F8);
  }

  return result;
}

unint64_t sub_26CC6069C()
{
  result = qword_2804BC600;
  if (!qword_2804BC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC600);
  }

  return result;
}

unint64_t sub_26CC606F4()
{
  result = qword_2804BC608;
  if (!qword_2804BC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC608);
  }

  return result;
}

uint64_t sub_26CC60760(uint64_t a1, uint64_t a2)
{
  v2[15] = a1;
  v2[16] = a2;
  v3 = *(*(sub_26CD3A38C() - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v4 = *(*(sub_26CD3A2BC() - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v5 = sub_26CD3A36C();
  v2[19] = v5;
  v6 = *(v5 - 8);
  v2[20] = v6;
  v7 = *(v6 + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC60878, 0, 0);
}

uint64_t sub_26CC60878()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = sub_26CD39D0C();
  v0[22] = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  v0[23] = v4;
  (*(v4 + 16))(v2, v1, v3);
  v6 = sub_26CD39CCC();
  v0[24] = v6;
  v0[25] = v7;
  if (v7 >> 60 == 15)
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v8 = v0[15];
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26CD3C1E0;
    *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v9 + 64) = sub_26CC2E6E8();
    *(v9 + 32) = &unk_287DF9AF8;
    sub_26CD3A3DC();

    sub_26CC61334();
    swift_allocError();
    swift_willThrow();
    (*(v5 + 8))(v8, v3);
    v17 = v0[21];
    v18 = v0[17];
    v19 = v0[18];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v10 = v6;
    v11 = v7;
    v0[5] = &type metadata for FeatureFlagManager;
    v12 = sub_26CC30530();
    *(v0 + 16) = 0;
    v0[6] = v12;
    v13 = sub_26CD3A29C();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v13)
    {
      v14 = v0[21];
      v16 = v0[17];
      v15 = v0[18];
      sub_26CD3A2AC();
      sub_26CD3A37C();
      sub_26CD3A2DC();
      v27 = v0[21];
      sub_26CD3A96C();
      v28 = sub_26CD3A95C();
      v0[26] = v28;
      sub_26CC61388();
      v29 = *(MEMORY[0x277CEE130] + 4);
      v30 = swift_task_alloc();
      v0[27] = v30;
      *v30 = v0;
      v30[1] = sub_26CC60CD0;
      v31 = v10;
      v32 = v11;
      v33 = v28;
    }

    else
    {
      sub_26CC61388();
      v22 = [objc_opt_self() app];
      v23 = *&v22[OBJC_IVAR___TVAppBag_amsBag];
      v0[29] = v23;
      v24 = v23;

      v25 = *(MEMORY[0x277CEE130] + 4);
      v26 = swift_task_alloc();
      v0[30] = v26;
      *v26 = v0;
      v26[1] = sub_26CC60F28;
      v31 = v10;
      v32 = v11;
      v33 = v24;
    }

    return MEMORY[0x282140828](v31, v32, 1, v33);
  }
}

uint64_t sub_26CC60CD0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[7] = v3;
  v5[8] = a1;
  v5[9] = a2;
  v5[10] = v2;
  v6 = v4[27];
  v9 = *v3;
  v5[28] = v2;

  if (v2)
  {
    v7 = sub_26CC61178;
  }

  else
  {
    v7 = sub_26CC60DEC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26CC60DEC()
{
  v1 = v0[26];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v4);
  v5 = v0[8];
  v6 = v0[9];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[21];
  v14 = v0[18];
  v15 = v0[17];
  v10 = v0[15];
  sub_26CD3A0AC();
  v11 = *MEMORY[0x277CEE1C0];
  sub_26CD3A5CC();
  sub_26CD39CEC();

  sub_26CC1D1B8(v8, v7);
  sub_26CC18C50(v5, v6);

  v12 = v0[1];

  return v12();
}

uint64_t sub_26CC60F28(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[11] = v3;
  v5[12] = a1;
  v5[13] = a2;
  v5[14] = v2;
  v6 = v4[30];
  v7 = *v3;
  v5[31] = v2;

  if (v2)
  {
    v8 = sub_26CC61258;
  }

  else
  {
    v8 = sub_26CC61064;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26CC61064()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[21];
  v10 = v0[18];
  v11 = v0[17];
  v6 = v0[15];
  sub_26CD3A0AC();
  v7 = *MEMORY[0x277CEE1C0];
  sub_26CD3A5CC();
  sub_26CD39CEC();

  sub_26CC1D1B8(v4, v3);
  sub_26CC18C50(v1, v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_26CC61178()
{
  v1 = v0[26];
  v2 = v0[23];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  v7 = v0[15];
  sub_26CC1D1B8(v0[24], v0[25]);
  swift_unknownObjectRelease();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v7, v3);
  v8 = v0[28];
  v9 = v0[21];
  v11 = v0[17];
  v10 = v0[18];

  v12 = v0[1];

  return v12();
}

uint64_t sub_26CC61258()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[15];
  sub_26CC1D1B8(v0[24], v0[25]);
  (*(v2 + 8))(v3, v1);
  v4 = v0[31];
  v5 = v0[21];
  v7 = v0[17];
  v6 = v0[18];

  v8 = v0[1];

  return v8();
}

unint64_t sub_26CC61334()
{
  result = qword_2804BC610;
  if (!qword_2804BC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC610);
  }

  return result;
}

unint64_t sub_26CC61388()
{
  result = qword_2804BC618;
  if (!qword_2804BC618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804BC618);
  }

  return result;
}

unint64_t sub_26CC613E8()
{
  result = qword_2804BC620;
  if (!qword_2804BC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC620);
  }

  return result;
}

uint64_t sub_26CC6143C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a1;
  v50 = a4;
  v7 = sub_26CD39EAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v49 = &v43 - v13;
  v14 = sub_26CD3A07C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v43 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v44 = &v43 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC628, &qword_26CD41378);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v43 - v22;
  v24 = *(v4 + 16);
  v25 = *(v4 + 24);
  v45 = v4;
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_26CD3AC6C();

  v51 = 0x2F676F6C61746163;
  v52 = 0xE800000000000000;
  MEMORY[0x26D6AD060](a2, a3);
  MEMORY[0x26D6AD060](0x73676E6F732FLL, 0xE600000000000000);
  v26 = v51;
  v27 = v52;
  v51 = v24;
  v52 = v25;

  MEMORY[0x26D6AD060](v26, v27);

  sub_26CD39E9C();

  v51 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  sub_26CC58138();
  v28 = sub_26CD3A55C();
  v47 = v8;
  v48 = v28;
  v29 = *(v8 + 48);
  if (v29(v23, 1, v7))
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC630, &unk_26CD454C0);
    v30 = *(sub_26CD39E2C() - 8);
    v31 = *(v30 + 72);
    v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    *(swift_allocObject() + 16) = xmmword_26CD3C1E0;
    v33 = *(v45 + 32);
    v34 = *(v45 + 40);
    sub_26CD39DFC();

    sub_26CD39E5C();
  }

  v35 = v29(v23, 1, v7);
  v36 = v49;
  if (v35)
  {
    (*(v15 + 56))(v49, 1, 1, v14);
  }

  else
  {
    v37 = v46;
    v38 = v47;
    (*(v47 + 16))(v46, v23, v7);
    sub_26CD39E7C();
    (*(v38 + 8))(v37, v7);
    if ((*(v15 + 48))(v36, 1, v14) != 1)
    {
      v42 = v44;
      (*(v15 + 32))(v44, v36, v14);
      (*(v15 + 16))(v43, v42, v14);
      sub_26CD39C7C();
      (*(v15 + 8))(v42, v14);
      v39 = 0;
      goto LABEL_8;
    }
  }

  sub_26CC1B544(v36, &qword_2804BCA30, &qword_26CD3DA70);
  v39 = 1;
LABEL_8:
  v40 = sub_26CD39D0C();
  (*(*(v40 - 8) + 56))(v50, v39, 1, v40);
  return sub_26CC1B544(v23, &qword_2804BC628, &qword_26CD41378);
}

uint64_t sub_26CC619B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a2;
  v5 = sub_26CD39EAC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v57 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v51 - v11;
  v13 = sub_26CD3A07C();
  v60 = *(v13 - 8);
  v61 = v13;
  v14 = *(v60 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v54 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v55 = &v51 - v17;
  v53 = sub_26CD39E2C();
  v59 = *(v53 - 8);
  v18 = *(v59 + 64);
  MEMORY[0x28223BE20](v53);
  v56 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC628, &qword_26CD41378);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v51 - v22;
  v24 = v2[3];
  v63[0] = v2[2];
  v63[1] = v24;

  MEMORY[0x26D6AD060](0xD000000000000014, 0x800000026CD4E590);
  sub_26CD39E9C();

  v58 = v6;
  v25 = *(v6 + 48);
  if (!v25(v23, 1, v5))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC630, &unk_26CD454C0);
    v26 = *(v59 + 72);
    v27 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    *(swift_allocObject() + 16) = xmmword_26CD3C1E0;
    v28 = v2[6];
    v29 = v2[7];
    v30 = v2[14];
    v31 = v2[15];
    sub_26CD39DFC();
    sub_26CD39E5C();
  }

  if (*(a1 + 16))
  {
    v63[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    sub_26CC58138();
    sub_26CD3A55C();
    if (v25(v23, 1, v5))
    {
    }

    else
    {
      v33 = sub_26CD39E3C();
      if (*v32)
      {
        v52 = v12;
        v34 = v32;
        v35 = v3[16];
        v36 = v3[17];
        sub_26CD39DFC();

        v37 = *v34;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v34;
        *v34 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = sub_26CCBE394(0, v37[2] + 1, 1, v37);
          *v51 = v37;
        }

        v40 = v37[2];
        v39 = v37[3];
        v12 = v52;
        if (v40 >= v39 >> 1)
        {
          v37 = sub_26CCBE394(v39 > 1, v40 + 1, 1, v37);
          *v51 = v37;
        }

        v37[2] = v40 + 1;
        (*(v59 + 32))(v37 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v40, v56, v53);
      }

      else
      {
      }

      v33(v63, 0);
    }
  }

  if (v25(v23, 1, v5))
  {
    (*(v60 + 56))(v12, 1, 1, v61);
    v41 = v62;
  }

  else
  {
    v43 = v57;
    v42 = v58;
    (*(v58 + 16))(v57, v23, v5);
    sub_26CD39E7C();
    (*(v42 + 8))(v43, v5);
    v45 = v60;
    v44 = v61;
    v46 = (*(v60 + 48))(v12, 1, v61);
    v41 = v62;
    if (v46 != 1)
    {
      v50 = v55;
      (*(v45 + 32))(v55, v12, v44);
      (*(v45 + 16))(v54, v50, v44);
      sub_26CD39C7C();
      (*(v45 + 8))(v50, v44);
      v47 = 0;
      goto LABEL_18;
    }
  }

  sub_26CC1B544(v12, &qword_2804BCA30, &qword_26CD3DA70);
  v47 = 1;
LABEL_18:
  v48 = sub_26CD39D0C();
  (*(*(v48 - 8) + 56))(v41, v47, 1, v48);
  return sub_26CC1B544(v23, &qword_2804BC628, &qword_26CD41378);
}

uint64_t sub_26CC62038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v26 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_26CD3A07C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v18 = *(v3 + 16);
  v17 = *(v3 + 24);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_26CD3AC6C();

  v27 = 0xD000000000000015;
  v28 = 0x800000026CD4E5B0;
  MEMORY[0x26D6AD060](a1, v25);
  v19 = v27;
  v20 = v28;
  v27 = v18;
  v28 = v17;

  MEMORY[0x26D6AD060](v19, v20);

  sub_26CD3A03C();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_26CC1B544(v8, &qword_2804BCA30, &qword_26CD3DA70);
    v21 = 1;
    v22 = v26;
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
    (*(v10 + 16))(v14, v16, v9);
    v22 = v26;
    sub_26CD39C7C();
    (*(v10 + 8))(v16, v9);
    v21 = 0;
  }

  v23 = sub_26CD39D0C();
  return (*(*(v23 - 8) + 56))(v22, v21, 1, v23);
}

uint64_t sub_26CC622F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = sub_26CD39D0C();
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v7 = *(v6 + 64) + 15;
  v4[25] = swift_task_alloc();
  v8 = sub_26CD39EAC();
  v4[26] = v8;
  v9 = *(v8 - 8);
  v4[27] = v9;
  v10 = *(v9 + 64) + 15;
  v4[28] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v12 = sub_26CD3A07C();
  v4[30] = v12;
  v13 = *(v12 - 8);
  v4[31] = v13;
  v14 = *(v13 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v15 = sub_26CD39E2C();
  v4[34] = v15;
  v16 = *(v15 - 8);
  v4[35] = v16;
  v17 = *(v16 + 64) + 15;
  v4[36] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC628, &qword_26CD41378) - 8) + 64) + 15;
  v4[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC6254C, 0, 0);
}

uint64_t sub_26CC6254C()
{
  v1 = v0[37];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[22];
  v74 = *(v4 + 16);
  v75 = *(v4 + 24);

  MEMORY[0x26D6AD060](0xD000000000000014, 0x800000026CD4E590);
  sub_26CD39E9C();

  v5 = *(v3 + 48);
  v0[38] = v5;
  v0[39] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (!v5(v1, 1, v2))
  {
    v6 = v0[37];
    v7 = v0[35];
    v8 = v0[22];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC630, &unk_26CD454C0);
    v9 = *(v7 + 72);
    v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_26CD3C1E0;
    v11 = v8[8];
    v12 = v8[9];
    v13 = v8[12];
    v14 = v8[13];
    sub_26CD39DFC();
    sub_26CD39E5C();
  }

  v0[5] = &type metadata for FeatureFlagManager;
  v0[6] = sub_26CC30530();
  *(v0 + 16) = 0;
  v15 = sub_26CD3A29C();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v15)
  {
    if (qword_280BBB5E8 != -1)
    {
      swift_once();
    }

    v16 = swift_task_alloc();
    v0[40] = v16;
    *v16 = v0;
    v16[1] = sub_26CC62CA8;

    return TVBagService.bag.getter((v0 + 7));
  }

  v18 = [objc_opt_self() app];
  v19 = _sSo8TVAppBagC0A8ServicesE6string3forSSSgSS_tF_0(0x65676175676E616CLL, 0xEC0000006761742DLL);
  v21 = v20;

  if (v21)
  {
    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v22 && (v23 = v0[39], !(v0[38])(v0[37], 1, v0[26])))
    {
      v25 = sub_26CD39E3C();
      if (*v24)
      {
        v26 = v24;
        v27 = v0[36];
        v28 = v0[22];
        v29 = *(v28 + 80);
        v30 = *(v28 + 88);
        sub_26CD39DFC();

        v31 = *v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v26 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = sub_26CCBE394(0, v31[2] + 1, 1, v31);
          *v26 = v31;
        }

        v34 = v31[2];
        v33 = v31[3];
        if (v34 >= v33 >> 1)
        {
          v31 = sub_26CCBE394(v33 > 1, v34 + 1, 1, v31);
          *v26 = v31;
        }

        v36 = v0[35];
        v35 = v0[36];
        v37 = v0[34];
        v31[2] = v34 + 1;
        (*(v36 + 32))(v31 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v34, v35, v37);
      }

      else
      {
      }

      v25(v0 + 12, 0);
    }

    else
    {
    }
  }

  v38 = v0[39];
  v39 = v0[37];
  v40 = v0[26];
  v41 = (v0[38])(v39, 1, v40);
  v42 = v0[30];
  v43 = v0[31];
  v44 = v0[29];
  if (v41)
  {
    (*(v43 + 56))(v0[29], 1, 1, v0[30]);
  }

  else
  {
    v46 = v0[27];
    v45 = v0[28];
    (*(v46 + 16))(v45, v39, v40);
    sub_26CD39E7C();
    (*(v46 + 8))(v45, v40);
    if ((*(v43 + 48))(v44, 1, v42) != 1)
    {
      v57 = v0[32];
      v56 = v0[33];
      v58 = v0[30];
      v59 = v0[31];
      v60 = v0[25];
      v62 = v0[20];
      v61 = v0[21];
      (*(v59 + 32))(v56, v0[29], v58);
      (*(v59 + 16))(v57, v56, v58);
      sub_26CD39C7C();
      v63 = sub_26CD39D8C();
      v64 = *(v63 + 48);
      v65 = *(v63 + 52);
      swift_allocObject();
      sub_26CD39D7C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC638, &qword_26CD41380);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_26CD3C1E0;
      *(v66 + 32) = v62;
      *(v66 + 40) = v61;
      *(v66 + 48) = 0x73676E6F73;
      *(v66 + 56) = 0xE500000000000000;
      v0[16] = v66;
      v0[17] = 0x73676E6F73;
      v0[18] = 0xE500000000000000;
      sub_26CC634D0();

      sub_26CD39D6C();
      v67 = v0[33];
      v68 = v0[30];
      v69 = v0[31];
      v71 = v0[24];
      v70 = v0[25];
      v72 = v0[23];
      v73 = v0[19];

      sub_26CD39CDC();
      sub_26CD39C0C();
      (*(v69 + 8))(v67, v68);
      (*(v71 + 32))(v73, v70, v72);
      v47 = 0;
      goto LABEL_27;
    }
  }

  sub_26CC1B544(v0[29], &qword_2804BCA30, &qword_26CD3DA70);
  v47 = 1;
LABEL_27:
  v48 = v0[36];
  v49 = v0[37];
  v51 = v0[32];
  v50 = v0[33];
  v53 = v0[28];
  v52 = v0[29];
  v54 = v0[25];
  (*(v0[24] + 56))(v0[19], v47, 1, v0[23]);
  sub_26CC1B544(v49, &qword_2804BC628, &qword_26CD41378);

  v55 = v0[1];

  return v55();
}

uint64_t sub_26CC62CA8()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_26CC6334C;
  }

  else
  {
    v3 = sub_26CC62DBC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CC62DBC()
{
  v1 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v2 = sub_26CD3A39C();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v5 = *(v0 + 328);
  if (v4)
  {
    v6 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v6 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v6 && (v7 = *(v0 + 312), !(*(v0 + 304))(*(v0 + 296), 1, *(v0 + 208))))
    {
      v9 = sub_26CD39E3C();
      if (*v8)
      {
        v10 = v8;
        v11 = *(v0 + 288);
        v12 = *(v0 + 176);
        v13 = *(v12 + 80);
        v14 = *(v12 + 88);
        sub_26CD39DFC();

        v15 = *v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v10 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = sub_26CCBE394(0, v15[2] + 1, 1, v15);
          *v10 = v15;
        }

        v18 = v15[2];
        v17 = v15[3];
        if (v18 >= v17 >> 1)
        {
          v15 = sub_26CCBE394(v17 > 1, v18 + 1, 1, v15);
          *v10 = v15;
        }

        v20 = *(v0 + 280);
        v19 = *(v0 + 288);
        v21 = *(v0 + 272);
        v15[2] = v18 + 1;
        (*(v20 + 32))(v15 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v18, v19, v21);
      }

      else
      {
      }

      v9(v0 + 96, 0);
    }

    else
    {
    }
  }

  v22 = *(v0 + 312);
  v23 = *(v0 + 296);
  v24 = *(v0 + 208);
  v25 = (*(v0 + 304))(v23, 1, v24);
  v26 = *(v0 + 240);
  v27 = *(v0 + 248);
  v28 = *(v0 + 232);
  if (v25)
  {
    (*(v27 + 56))(*(v0 + 232), 1, 1, *(v0 + 240));
LABEL_18:
    sub_26CC1B544(*(v0 + 232), &qword_2804BCA30, &qword_26CD3DA70);
    v31 = 1;
LABEL_19:
    v32 = *(v0 + 288);
    v33 = *(v0 + 296);
    v35 = *(v0 + 256);
    v34 = *(v0 + 264);
    v37 = *(v0 + 224);
    v36 = *(v0 + 232);
    v38 = *(v0 + 200);
    (*(*(v0 + 192) + 56))(*(v0 + 152), v31, 1, *(v0 + 184));
    sub_26CC1B544(v33, &qword_2804BC628, &qword_26CD41378);

    v39 = *(v0 + 8);
    goto LABEL_20;
  }

  v30 = *(v0 + 216);
  v29 = *(v0 + 224);
  (*(v30 + 16))(v29, v23, v24);
  sub_26CD39E7C();
  (*(v30 + 8))(v29, v24);
  if ((*(v27 + 48))(v28, 1, v26) == 1)
  {
    goto LABEL_18;
  }

  v42 = *(v0 + 256);
  v41 = *(v0 + 264);
  v43 = *(v0 + 240);
  v44 = *(v0 + 248);
  v45 = *(v0 + 200);
  v47 = *(v0 + 160);
  v46 = *(v0 + 168);
  (*(v44 + 32))(v41, *(v0 + 232), v43);
  (*(v44 + 16))(v42, v41, v43);
  sub_26CD39C7C();
  v48 = sub_26CD39D8C();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  sub_26CD39D7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC638, &qword_26CD41380);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_26CD3C1E0;
  *(v51 + 32) = v47;
  *(v51 + 40) = v46;
  *(v51 + 48) = 0x73676E6F73;
  *(v51 + 56) = 0xE500000000000000;
  *(v0 + 128) = v51;
  *(v0 + 136) = 0x73676E6F73;
  *(v0 + 144) = 0xE500000000000000;
  sub_26CC634D0();

  sub_26CD39D6C();
  v52 = *(v0 + 264);
  v53 = *(v0 + 240);
  v54 = *(v0 + 248);
  v56 = *(v0 + 192);
  v55 = *(v0 + 200);
  v57 = *(v0 + 184);
  if (!v5)
  {
    v64 = *(v0 + 152);

    sub_26CD39CDC();
    sub_26CD39C0C();
    (*(v54 + 8))(v52, v53);
    (*(v56 + 32))(v64, v55, v57);
    v31 = 0;
    goto LABEL_19;
  }

  (*(v56 + 8))(v55, v57);
  (*(v54 + 8))(v52, v53);
  v58 = *(v0 + 288);
  v60 = *(v0 + 256);
  v59 = *(v0 + 264);
  v62 = *(v0 + 224);
  v61 = *(v0 + 232);
  v63 = *(v0 + 200);
  sub_26CC1B544(*(v0 + 296), &qword_2804BC628, &qword_26CD41378);

  v39 = *(v0 + 8);
LABEL_20:

  return v39();
}

uint64_t sub_26CC6334C()
{
  v1 = v0[41];
  v2 = v0[36];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[25];
  sub_26CC1B544(v0[37], &qword_2804BC628, &qword_26CD41378);

  v8 = v0[1];

  return v8();
}

void *sub_26CC63420()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  return v0;
}

uint64_t sub_26CC63478()
{
  sub_26CC63420();

  return swift_deallocClassInstance();
}

unint64_t sub_26CC634D0()
{
  result = qword_2804BC640;
  if (!qword_2804BC640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC640);
  }

  return result;
}

uint64_t sub_26CC63524()
{
  result = v0;
  *(v0 + 16) = 0xD000000000000023;
  *(v0 + 24) = 0x800000026CD4E5D0;
  *(v0 + 32) = 0xD000000000000013;
  *(v0 + 40) = 0x800000026CD4E600;
  *(v0 + 48) = 0xD000000000000013;
  *(v0 + 56) = 0x800000026CD4E620;
  *(v0 + 64) = 1701080941;
  *(v0 + 72) = 0xE400000000000000;
  *(v0 + 80) = 108;
  *(v0 + 88) = 0xE100000000000000;
  strcpy((v0 + 96), "byExternalId");
  *(v0 + 109) = 0;
  *(v0 + 110) = -5120;
  *(v0 + 112) = 0x6F732D6465766173;
  *(v0 + 120) = 0xEB0000000073676ELL;
  *(v0 + 128) = 0xD000000000000021;
  *(v0 + 136) = 0x800000026CD4E640;
  return result;
}

uint64_t sub_26CC635E8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC6A8, &qword_26CD41778);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC64F7C();
  sub_26CD3B16C();
  v11[1] = a2;
  sub_26CC64FD0();
  sub_26CD3AF6C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_26CC63730(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC6E8, &qword_26CD41910);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC651A0();
  sub_26CD3B16C();
  v11[1] = a2;
  sub_26CC651F4();
  sub_26CD3AF6C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_26CC63878(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC728, &qword_26CD41AA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC653C4();
  sub_26CD3B16C();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC738, &qword_26CD41AA8);
  sub_26CC6546C(&qword_2804BC740, sub_26CC65418);
  sub_26CD3AF6C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_26CC63A04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC670, &qword_26CD41498);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC64CE8();
  sub_26CD3B16C();
  v16 = 0;
  sub_26CD3AF2C();
  if (!v5)
  {
    v15 = 1;
    sub_26CD3AF2C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_26CC63B98()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t sub_26CC63C14()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t sub_26CC63C6C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26CD3AD9C();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_26CC63D04@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26CD3AD9C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26CC63D5C(uint64_t a1)
{
  v2 = sub_26CC645C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC63D98(uint64_t a1)
{
  v2 = sub_26CC645C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CC63DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26CC63E88(uint64_t a1)
{
  v2 = sub_26CC64F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC63EC4(uint64_t a1)
{
  v2 = sub_26CC64F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26CC63F00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_26CC64670(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26CC63F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736B63617274 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26CC63FE0(uint64_t a1)
{
  v2 = sub_26CC651A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC6401C(uint64_t a1)
{
  v2 = sub_26CC651A0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26CC64058@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_26CC647E0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26CC640B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26CC64138(uint64_t a1)
{
  v2 = sub_26CC653C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC64174(uint64_t a1)
{
  v2 = sub_26CC653C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26CC641B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_26CC64950(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26CC641F8()
{
  if (*v0)
  {
    result = 1701869940;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_26CC64220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_26CD3AFDC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26CD3AFDC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26CC642F4(uint64_t a1)
{
  v2 = sub_26CC64CE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC64330(uint64_t a1)
{
  v2 = sub_26CC64CE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CC6436C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26CC64B04(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_26CC643D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26CC64420(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_26CC64480(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC648, &qword_26CD41488);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC645C8();
  sub_26CD3B16C();
  v11[1] = a2;
  sub_26CC6461C();
  sub_26CD3AF6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_26CC645C8()
{
  result = qword_2804BC650;
  if (!qword_2804BC650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC650);
  }

  return result;
}

unint64_t sub_26CC6461C()
{
  result = qword_2804BC658;
  if (!qword_2804BC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC658);
  }

  return result;
}

void *sub_26CC64670(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC6C0, &qword_26CD41780);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC64F7C();
  sub_26CD3B15C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_26CC65024();
    sub_26CD3AE7C();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

void *sub_26CC647E0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC700, &qword_26CD41918);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC651A0();
  sub_26CD3B15C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_26CC65248();
    sub_26CD3AE7C();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

void *sub_26CC64950(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC750, &qword_26CD41AB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC653C4();
  sub_26CD3B15C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC738, &qword_26CD41AA8);
    sub_26CC6546C(&qword_2804BC758, sub_26CC654E4);
    sub_26CD3AE7C();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_26CC64B04(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC660, &qword_26CD41490);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC64CE8();
  sub_26CD3B15C();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_26CD3AE3C();
    v11 = 1;
    sub_26CD3AE3C();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_26CC64CE8()
{
  result = qword_2804BC668;
  if (!qword_2804BC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC668);
  }

  return result;
}

unint64_t sub_26CC64D70()
{
  result = qword_2804BC678;
  if (!qword_2804BC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC678);
  }

  return result;
}

unint64_t sub_26CC64DC8()
{
  result = qword_2804BC680;
  if (!qword_2804BC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC680);
  }

  return result;
}

unint64_t sub_26CC64E20()
{
  result = qword_2804BC688;
  if (!qword_2804BC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC688);
  }

  return result;
}

unint64_t sub_26CC64E78()
{
  result = qword_2804BC690;
  if (!qword_2804BC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC690);
  }

  return result;
}

unint64_t sub_26CC64ED0()
{
  result = qword_2804BC698;
  if (!qword_2804BC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC698);
  }

  return result;
}

unint64_t sub_26CC64F28()
{
  result = qword_2804BC6A0;
  if (!qword_2804BC6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC6A0);
  }

  return result;
}

unint64_t sub_26CC64F7C()
{
  result = qword_2804BC6B0;
  if (!qword_2804BC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC6B0);
  }

  return result;
}

unint64_t sub_26CC64FD0()
{
  result = qword_2804BC6B8;
  if (!qword_2804BC6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC6B8);
  }

  return result;
}

unint64_t sub_26CC65024()
{
  result = qword_2804BC6C8;
  if (!qword_2804BC6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC6C8);
  }

  return result;
}

unint64_t sub_26CC6509C()
{
  result = qword_2804BC6D0;
  if (!qword_2804BC6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC6D0);
  }

  return result;
}

unint64_t sub_26CC650F4()
{
  result = qword_2804BC6D8;
  if (!qword_2804BC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC6D8);
  }

  return result;
}

unint64_t sub_26CC6514C()
{
  result = qword_2804BC6E0;
  if (!qword_2804BC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC6E0);
  }

  return result;
}

unint64_t sub_26CC651A0()
{
  result = qword_2804BC6F0;
  if (!qword_2804BC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC6F0);
  }

  return result;
}

unint64_t sub_26CC651F4()
{
  result = qword_2804BC6F8;
  if (!qword_2804BC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC6F8);
  }

  return result;
}

unint64_t sub_26CC65248()
{
  result = qword_2804BC708;
  if (!qword_2804BC708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC708);
  }

  return result;
}

unint64_t sub_26CC652C0()
{
  result = qword_2804BC710;
  if (!qword_2804BC710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC710);
  }

  return result;
}

unint64_t sub_26CC65318()
{
  result = qword_2804BC718;
  if (!qword_2804BC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC718);
  }

  return result;
}

unint64_t sub_26CC65370()
{
  result = qword_2804BC720;
  if (!qword_2804BC720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC720);
  }

  return result;
}

unint64_t sub_26CC653C4()
{
  result = qword_2804BC730;
  if (!qword_2804BC730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC730);
  }

  return result;
}

unint64_t sub_26CC65418()
{
  result = qword_2804BC748;
  if (!qword_2804BC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC748);
  }

  return result;
}

uint64_t sub_26CC6546C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC738, &qword_26CD41AA8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CC654E4()
{
  result = qword_2804BC760;
  if (!qword_2804BC760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC760);
  }

  return result;
}

unint64_t sub_26CC6554C()
{
  result = qword_2804BC768;
  if (!qword_2804BC768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC768);
  }

  return result;
}

unint64_t sub_26CC655A4()
{
  result = qword_2804BC770;
  if (!qword_2804BC770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC770);
  }

  return result;
}

unint64_t sub_26CC655FC()
{
  result = qword_2804BC778;
  if (!qword_2804BC778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC778);
  }

  return result;
}

uint64_t LocationAuthorizationStatus.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

id sub_26CC65740()
{
  type metadata accessor for LocationService();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(type metadata accessor for LocationManager()) init];
  *(v0 + 16) = result;
  off_2804BC780 = v0;
  return result;
}

uint64_t static LocationService.shared()()
{
  if (qword_2804BBA20 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26CC65834()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_26CC658C8;

  return sub_26CC7F9DC();
}

uint64_t sub_26CC658C8(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v5 + 8);

    return v8(a1);
  }
}

uint64_t LocationService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_26CC65A70()
{
  result = qword_2804BC788;
  if (!qword_2804BC788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC788);
  }

  return result;
}

uint64_t sub_26CC65AD4(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26CC5C5BC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of LocationService.retrieveLocation()()
{
  v2 = *(*v0 + 104);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26CC65DA8;

  return v6();
}

uint64_t sub_26CC65DAC(uint64_t a1)
{
  v2 = sub_26CC65FC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC65DE8(uint64_t a1)
{
  v2 = sub_26CC65FC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicPlaylistsResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC790, &qword_26CD41CD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC65FC8();

  sub_26CD3B16C();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC7A0, &qword_26CD41CD8);
  sub_26CC66220(&qword_2804BC7A8, sub_26CC6601C);
  sub_26CD3AF6C();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26CC65FC8()
{
  result = qword_2804BC798;
  if (!qword_2804BC798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC798);
  }

  return result;
}

unint64_t sub_26CC6601C()
{
  result = qword_2804BC7B0;
  if (!qword_2804BC7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC7B0);
  }

  return result;
}

uint64_t MusicPlaylistsResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC7B8, &qword_26CD41CE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC65FC8();
  sub_26CD3B15C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC7A0, &qword_26CD41CD8);
    sub_26CC66220(&qword_2804BC7C0, sub_26CC66298);
    sub_26CD3AE7C();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26CC66220(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC7A0, &qword_26CD41CD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CC66298()
{
  result = qword_2804BC7C8;
  if (!qword_2804BC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC7C8);
  }

  return result;
}

uint64_t MusicPlaylist.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MusicPlaylist.attributes.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t sub_26CC6639C()
{
  v1 = 0x7475626972747461;
  if (*v0 != 1)
  {
    v1 = 1635018093;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_26CC663E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CC67BC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CC66410(uint64_t a1)
{
  v2 = sub_26CC666AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC6644C(uint64_t a1)
{
  v2 = sub_26CC666AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicPlaylist.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC7D0, &qword_26CD41CE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v18 = v1[2];
  v19 = v10;
  v11 = v1[4];
  v20 = v1[5];
  v16 = v1[6];
  v17 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC666AC();
  sub_26CD3B16C();
  LOBYTE(v22) = 0;
  v13 = v21;
  sub_26CD3AF2C();
  if (!v13)
  {
    v22 = v18;
    v23 = v19;
    v14 = v16;
    v24 = v17;
    v25 = v20;
    v26 = 1;
    sub_26CC66700();

    sub_26CD3AF6C();

    v22 = v14;
    v26 = 2;
    sub_26CC66754();

    sub_26CD3AF1C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26CC666AC()
{
  result = qword_2804BC7D8;
  if (!qword_2804BC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC7D8);
  }

  return result;
}

unint64_t sub_26CC66700()
{
  result = qword_2804BC7E0;
  if (!qword_2804BC7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC7E0);
  }

  return result;
}

unint64_t sub_26CC66754()
{
  result = qword_2804BC7E8;
  if (!qword_2804BC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC7E8);
  }

  return result;
}

uint64_t MusicPlaylist.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC7F0, &qword_26CD41CF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC666AC();
  sub_26CD3B15C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v25) = 0;
  v11 = sub_26CD3AE3C();
  v24 = v12;
  v29 = 1;
  sub_26CC66A70();
  sub_26CD3AE7C();
  v20 = v27;
  v21 = v25;
  v22 = v28;
  v23 = v26;
  v29 = 2;
  sub_26CC66AC4();
  sub_26CD3AE2C();
  (*(v6 + 8))(v9, v5);
  v14 = v24;
  v13 = v25;
  *a2 = v11;
  a2[1] = v14;
  v15 = v20;
  v17 = v22;
  v16 = v23;
  a2[2] = v21;
  a2[3] = v16;
  a2[4] = v15;
  a2[5] = v17;
  a2[6] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26CC66A70()
{
  result = qword_2804BC7F8;
  if (!qword_2804BC7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC7F8);
  }

  return result;
}

unint64_t sub_26CC66AC4()
{
  result = qword_2804BC800;
  if (!qword_2804BC800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC800);
  }

  return result;
}

uint64_t MusicPlaylistAttributes.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MusicPlaylistAttributes.artwork.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_26CC66B84()
{
  if (*v0)
  {
    result = 0x6B726F77747261;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_26CC66BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_26CD3AFDC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26CD3AFDC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26CC66C94(uint64_t a1)
{
  v2 = sub_26CC66EB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC66CD0(uint64_t a1)
{
  v2 = sub_26CC66EB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicPlaylistAttributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC808, &qword_26CD41CF8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[3];
  v15 = v1[2];
  v16 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC66EB0();
  sub_26CD3B16C();
  LOBYTE(v18) = 0;
  v12 = v17;
  sub_26CD3AF2C();
  if (!v12)
  {
    v18 = v15;
    v19 = v16;
    v20 = 1;
    sub_26CC5F290();

    sub_26CD3AF1C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26CC66EB0()
{
  result = qword_2804BC810;
  if (!qword_2804BC810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC810);
  }

  return result;
}

uint64_t MusicPlaylistAttributes.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC818, &qword_26CD41D00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC66EB0();
  sub_26CD3B15C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v18[0]) = 0;
  v11 = sub_26CD3AE3C();
  v13 = v12;
  v14 = v11;
  v19 = 1;
  sub_26CC5F23C();
  sub_26CD3AE2C();
  (*(v6 + 8))(v9, v5);
  v15 = v18[0];
  v16 = v18[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26CC67164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B63617254736168 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26CC671EC(uint64_t a1)
{
  v2 = sub_26CC67404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC67228(uint64_t a1)
{
  v2 = sub_26CC67404();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicPlaylistMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC820, &qword_26CD41D08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC67404();

  sub_26CD3B16C();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC830, &qword_26CD41D10);
  sub_26CC67604(&qword_2804BC838);
  sub_26CD3AF6C();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26CC67404()
{
  result = qword_2804BC828;
  if (!qword_2804BC828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC828);
  }

  return result;
}

uint64_t MusicPlaylistMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC840, &qword_26CD41D18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC67404();
  sub_26CD3B15C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC830, &qword_26CD41D10);
    sub_26CC67604(&qword_2804BC848);
    sub_26CD3AE7C();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26CC67604(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC830, &qword_26CD41D10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26CC676D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_26CC6771C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26CC677AC()
{
  result = qword_2804BC850;
  if (!qword_2804BC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC850);
  }

  return result;
}

unint64_t sub_26CC67804()
{
  result = qword_2804BC858;
  if (!qword_2804BC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC858);
  }

  return result;
}

unint64_t sub_26CC6785C()
{
  result = qword_2804BC860;
  if (!qword_2804BC860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC860);
  }

  return result;
}

unint64_t sub_26CC678B4()
{
  result = qword_2804BC868;
  if (!qword_2804BC868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC868);
  }

  return result;
}

unint64_t sub_26CC6790C()
{
  result = qword_2804BC870;
  if (!qword_2804BC870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC870);
  }

  return result;
}

unint64_t sub_26CC67964()
{
  result = qword_2804BC878;
  if (!qword_2804BC878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC878);
  }

  return result;
}

unint64_t sub_26CC679BC()
{
  result = qword_2804BC880;
  if (!qword_2804BC880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC880);
  }

  return result;
}

unint64_t sub_26CC67A14()
{
  result = qword_2804BC888;
  if (!qword_2804BC888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC888);
  }

  return result;
}

unint64_t sub_26CC67A6C()
{
  result = qword_2804BC890;
  if (!qword_2804BC890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC890);
  }

  return result;
}

unint64_t sub_26CC67AC4()
{
  result = qword_2804BC898;
  if (!qword_2804BC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC898);
  }

  return result;
}

unint64_t sub_26CC67B1C()
{
  result = qword_2804BC8A0;
  if (!qword_2804BC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC8A0);
  }

  return result;
}

unint64_t sub_26CC67B74()
{
  result = qword_2804BC8A8;
  if (!qword_2804BC8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC8A8);
  }

  return result;
}

uint64_t sub_26CC67BC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_26CC67CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v8 = sub_26CD39EAC();
  v7[12] = v8;
  v9 = *(v8 - 8);
  v7[13] = v9;
  v10 = *(v9 + 64) + 15;
  v7[14] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70) - 8) + 64) + 15;
  v7[15] = swift_task_alloc();
  v12 = sub_26CD3A07C();
  v7[16] = v12;
  v13 = *(v12 - 8);
  v7[17] = v13;
  v14 = *(v13 + 64) + 15;
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC628, &qword_26CD41378) - 8) + 64) + 15;
  v7[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC67E90, 0, 0);
}

uint64_t sub_26CC67E90()
{
  v1 = [objc_opt_self() standardUserDefaults];
  *(v0 + 16) = v1;
  *(v0 + 168) = v1;
  *(v0 + 24) = xmmword_26CD423B0;
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_26CC67F54;

  return sub_26CCF46C4();
}

uint64_t sub_26CC67F54(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 176);
  v8 = *v3;
  v4[23] = a1;
  v4[24] = a2;
  v4[25] = v2;

  if (v2)
  {
    v6 = sub_26CC683E8;
  }

  else
  {
    v6 = sub_26CC6806C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26CC6806C()
{
  v1 = *(v0 + 88);

  if (v1)
  {
    v2 = *(v0 + 88);
    v3 = (v0 + 80);
  }

  else
  {
    if (!*(v0 + 192))
    {
      sub_26CC6848C();
      swift_allocError();
      *v37 = 4;
      swift_willThrow();
      goto LABEL_11;
    }

    v3 = (v0 + 184);
    v4 = *(v0 + 192);
  }

  v5 = *v3;
  v6 = *(v0 + 160);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  sub_26CD39E9C();

  v9 = *(v8 + 48);
  if (!v9(v6, 1, v7))
  {
    v10 = *(v0 + 160);
    v12 = *(v0 + 48);
    v11 = *(v0 + 56);
    v38 = *(v0 + 64);
    v39 = *(v0 + 72);

    MEMORY[0x26D6AD060](v12, v11);
    MEMORY[0x26D6AC870](v38, v39);
  }

  v13 = *(v0 + 160);
  v14 = *(v0 + 96);
  v15 = v9(v13, 1, v14);
  v16 = *(v0 + 128);
  v17 = *(v0 + 136);
  v18 = *(v0 + 120);
  if (v15)
  {
    (*(v17 + 56))(*(v0 + 120), 1, 1, *(v0 + 128));
LABEL_10:
    v21 = *(v0 + 160);
    sub_26CC1B544(*(v0 + 120), &qword_2804BCA30, &qword_26CD3DA70);
    sub_26CC6848C();
    swift_allocError();
    *v22 = 4;
    swift_willThrow();
    sub_26CC1B544(v21, &qword_2804BC628, &qword_26CD41378);
LABEL_11:
    v24 = *(v0 + 152);
    v23 = *(v0 + 160);
    v25 = *(v0 + 144);
    v27 = *(v0 + 112);
    v26 = *(v0 + 120);

    v28 = *(v0 + 8);
    goto LABEL_12;
  }

  v20 = *(v0 + 104);
  v19 = *(v0 + 112);
  (*(v20 + 16))(v19, v13, v14);
  sub_26CD39E7C();
  (*(v20 + 8))(v19, v14);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    goto LABEL_10;
  }

  v31 = *(v0 + 152);
  v30 = *(v0 + 160);
  v33 = *(v0 + 136);
  v32 = *(v0 + 144);
  v34 = *(v0 + 128);
  v35 = *(v0 + 112);
  v36 = *(v0 + 40);
  (*(v33 + 32))(v31, *(v0 + 120), v34);
  (*(v33 + 16))(v32, v31, v34);
  sub_26CD39C7C();
  (*(v33 + 8))(v31, v34);
  sub_26CC1B544(v30, &qword_2804BC628, &qword_26CD41378);

  v28 = *(v0 + 8);
LABEL_12:

  return v28();
}

uint64_t sub_26CC683E8()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 144);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);

  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_26CC6848C()
{
  result = qword_2804BC8B0;
  if (!qword_2804BC8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC8B0);
  }

  return result;
}

SportsFavoriteServiceObjC __swiftcall SportsFavoriteServiceObjC.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SportsFavoriteServiceObjC()
{
  result = qword_2804BC8B8;
  if (!qword_2804BC8B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804BC8B8);
  }

  return result;
}

uint64_t sub_26CC685E0(uint64_t a1)
{
  if (qword_280BB9C18 != -1)
  {
    swift_once();
  }

  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD000000000000019, 0x800000026CD4E750);
  if (a1)
  {
    v2 = 0x657469726F766166;
  }

  else
  {
    v2 = 0x736E6F4372657375;
  }

  if (a1)
  {
    v3 = 0xE900000000000073;
  }

  else
  {
    v3 = 0xEB00000000746E65;
  }

  MEMORY[0x26D6AD060](v2, v3);

  MEMORY[0x26D6AD060](0xD000000000000018, 0x800000026CD4E770);
  sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26CD3C1E0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_26CC19E10();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_26CD3A3DC();

  if (a1 == 1)
  {
    if (qword_280BBB2D0 != -1)
    {
      swift_once();
    }

    sub_26CCA1FA8(1);

    if (qword_280BBB460 != -1)
    {
      swift_once();
    }

    v6 = 1;
  }

  else
  {
    if (a1)
    {
      return result;
    }

    if (qword_280BBB2D0 != -1)
    {
      swift_once();
    }

    sub_26CCA1FA8(0);

    if (qword_280BBB460 != -1)
    {
      swift_once();
    }

    v6 = 0;
  }

  return sub_26CC96AB0(v6);
}

Swift::OpaquePointer_optional __swiftcall Data.asDictionary()()
{
  v22 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = sub_26CD3A09C();
  v20 = 0;
  v2 = [v0 JSONObjectWithData:v1 options:0 error:&v20];

  if (!v2)
  {
    v6 = v20;
    v7 = sub_26CD39F8C();

    swift_willThrow();
    v19 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    sub_26CC69164();
    swift_dynamicCast();
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26CD3C1E0;
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_26CD3AC6C();

    v20 = 0xD000000000000026;
    v21 = 0x800000026CD4E7C0;
    v9 = [v17 localizedDescription];
    v10 = sub_26CD3A5CC();
    v12 = v11;

    MEMORY[0x26D6AD060](v10, v12);

    v13 = v21;
    *(v8 + 32) = v20;
    *(v8 + 40) = v13;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_26CD3C1E0;
    *(v14 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v14 + 64) = sub_26CC2E6E8();
    *(v14 + 32) = v8;
    sub_26CD3A3DC();

    goto LABEL_10;
  }

  v3 = v20;
  sub_26CD3AB3C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if (!swift_dynamicCast())
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26CD3C1E0;
    *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v15 + 64) = sub_26CC2E6E8();
    *(v15 + 32) = &unk_287DF9310;
    sub_26CD3A3DC();

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  v5 = v18;
LABEL_11:
  v16 = *MEMORY[0x277D85DE8];
  result.value._rawValue = v5;
  result.is_nil = v4;
  return result;
}

unint64_t sub_26CC69164()
{
  result = qword_280BB9BA8;
  if (!qword_280BB9BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BB9BA8);
  }

  return result;
}

uint64_t sub_26CC691B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_26CC691BC(_BYTE *a1, uint64_t a2)
{
  v3 = 3;
  result = sub_26CC97DB0(a1, &v3, a2);
  if (result)
  {
    if (qword_280BBB460 != -1)
    {
      swift_once();
    }

    return sub_26CC96AB0(0);
  }

  return result;
}

uint64_t sub_26CC69240(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26CC246B8;

  return sub_26CCA544C(a1);
}

uint64_t sub_26CC692E8(_BYTE *a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = a3;
  result = sub_26CC97DB0(a1, &v4, a2);
  if (result)
  {
    if (qword_280BBB460 != -1)
    {
      swift_once();
    }

    return sub_26CC96AB0(0);
  }

  return result;
}

uint64_t sub_26CC6936C(char a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26CC69418;

  return sub_26CCAB85C((v1 + 32));
}

uint64_t sub_26CC69418()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26CC6954C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_26CC69564(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26CC37110;

  return sub_26CCA544C(a1);
}

uint64_t sub_26CC695FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_26CC6960C(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = *(*(type metadata accessor for SportsFavoriteService.UserConsent.State() - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v4 = _s5CacheC5ValueOMa(0);
  v2[17] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC696D8, 0, 0);
}

uint64_t sub_26CC696D8()
{
  if (qword_2804BB9F0 != -1)
  {
    swift_once();
  }

  if (byte_2804D1490)
  {
    v2 = v0[18];
    v1 = v0[19];
    v3 = v0[16];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = swift_allocObject();
    v0[20] = v6;
    *(v6 + 16) = 0;
    v0[2] = sub_26CC6E67C;
    v0[3] = v6;
    v0[4] = 0;
    v0[5] = 0;
    v0[6] = sub_26CC691BC;
    v0[7] = 0;
    v0[8] = 0;
    v0[9] = 0;
    v0[10] = &unk_26CD423D8;
    v0[11] = 0;
    v0[12] = 0;
    v0[13] = 0;
    v7 = swift_task_alloc();
    v0[21] = v7;
    *v7 = v0;
    v7[1] = sub_26CC69864;
    v8 = v0[19];
    v9 = v0[14];
    v10 = v0[15];

    return sub_26CC7C314(v8, (v0 + 2), v9, v10);
  }
}

uint64_t sub_26CC69864()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_26CC6E660;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_26CC69980;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CC69980()
{
  v1 = v0[17];
  sub_26CC6DAC8(v0[19], v0[18]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[18];
  v4 = v0[19];
  if (EnumCaseMultiPayload == 1)
  {
    sub_26CC3BD30();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    sub_26CC6DB90(v4, _s5CacheC5ValueOMa);
    sub_26CC6DB90(v3, _s5CacheC5ValueOMa);
LABEL_6:
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[16];

    v13 = v0[1];
    goto LABEL_9;
  }

  v6 = v0[16];
  sub_26CC6DB90(v0[19], _s5CacheC5ValueOMa);
  sub_26CC6DB2C(v3, v6);
  v7 = *v6;
  sub_26CC6DB90(v6, type metadata accessor for SportsFavoriteService.UserConsent.State);
  if (v7 > 1)
  {
  }

  else
  {
    v8 = sub_26CD3AFDC();

    if ((v8 & 1) == 0)
    {
      sub_26CC6E3DC();
      swift_allocError();
      *v9 = 1;
      swift_willThrow();
      goto LABEL_6;
    }
  }

  v15 = v0[18];
  v14 = v0[19];
  v16 = v0[16];

  v13 = v0[1];
LABEL_9:

  return v13();
}

uint64_t sub_26CC69BA4(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = *(*(type metadata accessor for SportsFavoriteService.UserConsent.State() - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v4 = _s5CacheC5ValueOMa(0);
  v2[17] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC69C70, 0, 0);
}

uint64_t sub_26CC69C70()
{
  v1 = swift_allocObject();
  v0[20] = v1;
  *(v1 + 16) = 0;
  v0[2] = sub_26CC6E67C;
  v0[4] = 0;
  v0[5] = 0;
  v0[3] = v1;
  v0[6] = sub_26CC691BC;
  v0[7] = 0;
  v0[8] = 0;
  v0[9] = 0;
  v0[10] = &unk_26CD423D8;
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_26CC69D78;
  v3 = v0[19];
  v4 = v0[14];
  v5 = v0[15];

  return sub_26CC7C314(v3, (v0 + 2), v4, v5);
}

uint64_t sub_26CC69D78()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_26CC6A084;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_26CC69E94;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CC69E94()
{
  v1 = v0[17];
  sub_26CC6DAC8(v0[19], v0[18]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[18];
  v4 = v0[19];
  if (EnumCaseMultiPayload == 1)
  {
    sub_26CC3BD30();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    sub_26CC6DB90(v4, _s5CacheC5ValueOMa);
    sub_26CC6DB90(v3, _s5CacheC5ValueOMa);
LABEL_3:
    v7 = v0[18];
    v6 = v0[19];
    v8 = v0[16];

    v9 = v0[1];
    goto LABEL_9;
  }

  v10 = v0[16];
  sub_26CC6DB90(v0[19], _s5CacheC5ValueOMa);
  sub_26CC6DB2C(v3, v10);
  v11 = *v10;
  sub_26CC6DB90(v10, type metadata accessor for SportsFavoriteService.UserConsent.State);
  if (v11 != 2)
  {
    if (qword_2804BB9F0 != -1)
    {
      swift_once();
    }

    if ((byte_2804D1490 & 1) == 0)
    {
      sub_26CC6DBF0();
      swift_allocError();
      swift_willThrow();
      goto LABEL_3;
    }
  }

  v13 = v0[18];
  v12 = v0[19];
  v14 = v0[16];

  v9 = v0[1];
LABEL_9:

  return v9();
}

uint64_t sub_26CC6A084()
{
  v1 = v0[20];

  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26CC6A124(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26CC6A144, 0, 0);
}

uint64_t sub_26CC6A144()
{
  v1 = v0[3];
  v2 = sub_26CC98BEC(v0[2]);
  v4 = v3;
  v6 = v5;
  v0[4] = v2;
  v0[5] = v3;
  v0[6] = v5;
  v7 = swift_task_alloc();
  v0[7] = v7;
  v7[2] = v2;
  v7[3] = v4;
  v7[4] = v6;
  v7[5] = v1;
  v8 = *(MEMORY[0x277D858E8] + 4);
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_26CC6A254;

  return MEMORY[0x282200600]();
}

uint64_t sub_26CC6A254()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);
  v7 = *v0;

  return MEMORY[0x2822009F8](sub_26CC58DD4, 0, 0);
}

uint64_t sub_26CC6A3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC6A46C, 0, 0);
}

uint64_t sub_26CC6A46C()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v3 = v0[6];
    v2 = v0[7];
    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[2];
    v7 = sub_26CD3A86C();
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v1;
    v8[5] = v5;
    v8[6] = v4;
    v8[7] = v3;

    sub_26CC6AB14(v2, &unk_26CD42460, v8);
    sub_26CC1B544(v2, &qword_2804BCA00, &qword_26CD3D510);
  }

  v9 = v0[4];
  if (*(v9 + 16))
  {
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[5];
    v13 = v0[2];
    v14 = v0[3];
    v15 = sub_26CD3A86C();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v16[5] = v9;
    v16[6] = v12;
    v16[7] = v11;

    sub_26CC6AB14(v10, &unk_26CD42470, v16);
    sub_26CC1B544(v10, &qword_2804BCA00, &qword_26CD3D510);
  }

  v17 = v0[5];
  if (*(v17 + 16))
  {
    v19 = v0[6];
    v18 = v0[7];
    v21 = v0[3];
    v20 = v0[4];
    v22 = v0[2];
    v23 = sub_26CD3A86C();
    (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v21;
    v24[5] = v20;
    v24[6] = v17;
    v24[7] = v19;

    sub_26CC6AB14(v18, &unk_26CD42480, v24);
    sub_26CC1B544(v18, &qword_2804BCA00, &qword_26CD3D510);
  }

  v25 = v0[7];

  v26 = v0[1];

  return v26();
}

uint64_t sub_26CC6A760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 48) = v6;
  *v6 = v4;
  v6[1] = sub_26CC6A808;

  return sub_26CCABFC4(a4);
}

uint64_t sub_26CC6A808()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26CC6A93C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_26CC6A93C()
{
  if (qword_280BB9C18 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();

  swift_getErrorValue();
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = sub_26CD3B08C();
  MEMORY[0x26D6AD060](v6);

  *(v2 + 32) = 0xD00000000000001ELL;
  *(v2 + 40) = 0x800000026CD4E8D0;
  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26CD3C1E0;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v7 + 64) = sub_26CC2E6E8();
  *(v7 + 32) = v2;
  sub_26CD3A3DC();

  v8 = v0[1];

  return v8();
}

uint64_t sub_26CC6AB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  sub_26CC1B4DC(a1, v22 - v10, &qword_2804BCA00, &qword_26CD3D510);
  v12 = sub_26CD3A86C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26CC1B544(v11, &qword_2804BCA00, &qword_26CD3D510);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_26CD3A80C();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_26CD3A85C();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_26CC6AD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 48) = v7;
  *v7 = v5;
  v7[1] = sub_26CC6ADD4;

  return sub_26CCAC7BC(a5);
}

uint64_t sub_26CC6ADD4()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26CC6AF08, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_26CC6AF08()
{
  if (qword_280BB9C18 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();

  swift_getErrorValue();
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = sub_26CD3B08C();
  MEMORY[0x26D6AD060](v6);

  *(v2 + 32) = 0xD000000000000020;
  *(v2 + 40) = 0x800000026CD4E8A0;
  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26CD3C1E0;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v7 + 64) = sub_26CC2E6E8();
  *(v7 + 32) = v2;
  sub_26CD3A3DC();

  v8 = v0[1];

  return v8();
}

uint64_t sub_26CC6B0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = swift_task_alloc();
  *(v6 + 48) = v8;
  *v8 = v6;
  v8[1] = sub_26CC6B188;

  return sub_26CCACE34(a6);
}

uint64_t sub_26CC6B188()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26CC6B2BC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_26CC6B2BC()
{
  if (qword_280BB9C18 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();

  swift_getErrorValue();
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = sub_26CD3B08C();
  MEMORY[0x26D6AD060](v6);

  *(v2 + 32) = 0xD00000000000001FLL;
  *(v2 + 40) = 0x800000026CD4E880;
  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26CD3C1E0;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v7 + 64) = sub_26CC2E6E8();
  *(v7 + 32) = v2;
  sub_26CD3A3DC();

  v8 = v0[1];

  return v8();
}

uint64_t sub_26CC6B494(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = *(*(type metadata accessor for SportsFavoriteService.UserConsent.State() - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v4 = _s5CacheC5ValueOMa(0);
  v2[17] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC6B560, 0, 0);
}

uint64_t sub_26CC6B560()
{
  v1 = swift_allocObject();
  v0[20] = v1;
  *(v1 + 16) = 0;
  v0[2] = sub_26CC6E67C;
  v0[4] = 0;
  v0[5] = 0;
  v0[3] = v1;
  v0[6] = sub_26CC691BC;
  v0[7] = 0;
  v0[8] = 0;
  v0[9] = 0;
  v0[10] = &unk_26CD423D8;
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_26CC6B668;
  v3 = v0[19];
  v4 = v0[14];
  v5 = v0[15];

  return sub_26CC7C314(v3, (v0 + 2), v4, v5);
}

uint64_t sub_26CC6B668()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_26CC6E660;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_26CC6E668;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CC6B79C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = type metadata accessor for SportsFavoriteService.Favorites.State();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC8C0, &qword_26CD447F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v27 - v18);
  sub_26CC1B4DC(a2, &v27 - v18, &qword_2804BC8C0, &qword_26CD447F0);
  v20 = _s10NetworkingO12FetchedValueOMa(0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
  {
    sub_26CC1B544(v19, &qword_2804BC8C0, &qword_26CD447F0);
LABEL_10:
    if (qword_280BBB460 != -1)
    {
      swift_once();
    }

    sub_26CC96AB0(1);
    v26 = *(_s5CacheC5ModelVMa(0) + 20);
    a4(a3);
    return sub_26CC6DA54(v11, a1 + v26);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_26CC6DB90(v19, _s10NetworkingO12FetchedValueOMa);
    goto LABEL_10;
  }

  v21 = *v19;
  v22 = (a1 + *(_s5CacheC5ModelVMa(0) + 20));
  if ((sub_26CCDE714(*v22, v21) & 1) == 0)
  {
    if (qword_280BBB460 != -1)
    {
      swift_once();
    }

    sub_26CC96AB0(1);
  }

  v23 = *(v8 + 20);
  sub_26CC1B4DC(v22 + v23, v15, &qword_2804BCA90, &qword_26CD3C200);
  sub_26CC6DB90(v22, type metadata accessor for SportsFavoriteService.Favorites.State);
  v24 = sub_26CD3A1EC();
  (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
  *v22 = v21;
  result = sub_26CC17CCC(v15, v22 + v23);
  *(v22 + *(v8 + 24)) = 0;
  return result;
}

uint64_t sub_26CC6BAD8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26CC6BAF8, 0, 0);
}

uint64_t sub_26CC6BAF8()
{
  v1 = v0[3];
  v2 = sub_26CC98BEC(v0[2]);
  v4 = v3;
  v6 = v5;
  v0[4] = v2;
  v0[5] = v3;
  v0[6] = v5;
  v7 = swift_task_alloc();
  v0[7] = v7;
  v7[2] = v2;
  v7[3] = v4;
  v7[4] = v6;
  v7[5] = v1;
  v8 = *(MEMORY[0x277D858E8] + 4);
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_26CC6BC08;

  return MEMORY[0x282200600]();
}

uint64_t sub_26CC6BC08()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);
  v7 = *v0;

  return MEMORY[0x2822009F8](sub_26CC6E664, 0, 0);
}

uint64_t sub_26CC6BD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC6BE20, 0, 0);
}

uint64_t sub_26CC6BE20()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v3 = v0[6];
    v2 = v0[7];
    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[2];
    v7 = sub_26CD3A86C();
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v1;
    v8[5] = v5;
    v8[6] = v4;
    v8[7] = v3;

    sub_26CC6AB14(v2, &unk_26CD42400, v8);
    sub_26CC1B544(v2, &qword_2804BCA00, &qword_26CD3D510);
  }

  v9 = v0[4];
  if (*(v9 + 16))
  {
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[5];
    v13 = v0[2];
    v14 = v0[3];
    v15 = sub_26CD3A86C();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v16[5] = v9;
    v16[6] = v12;
    v16[7] = v11;

    sub_26CC6AB14(v10, &unk_26CD42410, v16);
    sub_26CC1B544(v10, &qword_2804BCA00, &qword_26CD3D510);
  }

  v17 = v0[5];
  if (*(v17 + 16))
  {
    v19 = v0[6];
    v18 = v0[7];
    v21 = v0[3];
    v20 = v0[4];
    v22 = v0[2];
    v23 = sub_26CD3A86C();
    (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v21;
    v24[5] = v20;
    v24[6] = v17;
    v24[7] = v19;

    sub_26CC6AB14(v18, &unk_26CD42420, v24);
    sub_26CC1B544(v18, &qword_2804BCA00, &qword_26CD3D510);
  }

  v25 = v0[7];

  v26 = v0[1];

  return v26();
}

uint64_t sub_26CC6C114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 48) = v6;
  *v6 = v4;
  v6[1] = sub_26CC6C1BC;

  return sub_26CCAD390(a4);
}

uint64_t sub_26CC6C1BC()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26CC6C2F0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_26CC6C2F0()
{
  if (qword_280BB9C18 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();

  swift_getErrorValue();
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = sub_26CD3B08C();
  MEMORY[0x26D6AD060](v6);

  *(v2 + 32) = 0xD000000000000021;
  *(v2 + 40) = 0x800000026CD4E850;
  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26CD3C1E0;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v7 + 64) = sub_26CC2E6E8();
  *(v7 + 32) = v2;
  sub_26CD3A3DC();

  v8 = v0[1];

  return v8();
}

uint64_t sub_26CC6C4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 48) = v7;
  *v7 = v5;
  v7[1] = sub_26CC6C570;

  return sub_26CCAD8EC(a5);
}

uint64_t sub_26CC6C570()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26CC6C6A4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_26CC6C6A4()
{
  if (qword_280BB9C18 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();

  swift_getErrorValue();
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = sub_26CD3B08C();
  MEMORY[0x26D6AD060](v6);

  *(v2 + 32) = 0xD000000000000023;
  *(v2 + 40) = 0x800000026CD4E820;
  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26CD3C1E0;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v7 + 64) = sub_26CC2E6E8();
  *(v7 + 32) = v2;
  sub_26CD3A3DC();

  v8 = v0[1];

  return v8();
}

uint64_t sub_26CC6C87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = swift_task_alloc();
  *(v6 + 48) = v8;
  *v8 = v6;
  v8[1] = sub_26CC6C924;

  return sub_26CCADE48(a6);
}

uint64_t sub_26CC6C924()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26CC6CA58, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_26CC6CA58()
{
  if (qword_280BB9C18 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();

  swift_getErrorValue();
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = sub_26CD3B08C();
  MEMORY[0x26D6AD060](v6);

  *(v2 + 32) = 0xD000000000000022;
  *(v2 + 40) = 0x800000026CD4E7F0;
  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26CD3C1E0;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v7 + 64) = sub_26CC2E6E8();
  *(v7 + 32) = v2;
  sub_26CD3A3DC();

  v8 = v0[1];

  return v8();
}

uint64_t sub_26CC6CC30(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = *(*(type metadata accessor for SportsFavoriteService.UserConsent.State() - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v4 = _s5CacheC5ValueOMa(0);
  v2[17] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC6CCFC, 0, 0);
}

uint64_t sub_26CC6CCFC()
{
  v1 = swift_allocObject();
  v0[20] = v1;
  *(v1 + 16) = 0;
  v0[2] = sub_26CC6DAB8;
  v0[4] = 0;
  v0[5] = 0;
  v0[3] = v1;
  v0[6] = sub_26CC691BC;
  v0[7] = 0;
  v0[8] = 0;
  v0[9] = 0;
  v0[10] = &unk_26CD423D8;
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_26CC6B668;
  v3 = v0[19];
  v4 = v0[14];
  v5 = v0[15];

  return sub_26CC7C314(v3, (v0 + 2), v4, v5);
}

uint64_t sub_26CC6CE3C()
{
  sub_26CC98DD8(v0[2]);
  v2 = v1;

  if (!v2[2])
  {

    v2 = &unk_287DFAEC0;
  }

  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_26CC6CF1C;

  return (sub_26CCAE3A4)(v2);
}

uint64_t sub_26CC6CF1C()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26CC6D058, 0, 0);
  }

  else
  {
    v4 = v3[3];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_26CC6D058()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_26CC6D0BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26CC37110;

  return sub_26CCA5DEC(a1);
}

uint64_t sub_26CC6D154(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = *(*(type metadata accessor for SportsFavoriteService.UserConsent.State() - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v4 = _s5CacheC5ValueOMa(0);
  v2[17] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC6D220, 0, 0);
}

uint64_t sub_26CC6D220()
{
  v1 = swift_allocObject();
  v0[20] = v1;
  *(v1 + 16) = 0;
  v0[2] = sub_26CC6E67C;
  v0[4] = 0;
  v0[5] = 0;
  v0[3] = v1;
  v0[6] = sub_26CC691BC;
  v0[7] = 0;
  v0[8] = 0;
  v0[9] = 0;
  v0[10] = &unk_26CD423D8;
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_26CC6D328;
  v3 = v0[19];
  v4 = v0[14];
  v5 = v0[15];

  return sub_26CC7C314(v3, (v0 + 2), v4, v5);
}

uint64_t sub_26CC6D328()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_26CC6E660;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_26CC6D444;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CC6D444()
{
  v1 = v0[17];
  sub_26CC6DAC8(v0[19], v0[18]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[18];
  v4 = v0[19];
  if (EnumCaseMultiPayload == 1)
  {
    sub_26CC3BD30();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    sub_26CC6DB90(v4, _s5CacheC5ValueOMa);
    sub_26CC6DB90(v3, _s5CacheC5ValueOMa);
LABEL_5:
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[16];

    v13 = v0[1];
    goto LABEL_7;
  }

  v6 = v0[16];
  sub_26CC6DB90(v0[19], _s5CacheC5ValueOMa);
  sub_26CC6DB2C(v3, v6);
  v7 = *v6;
  sub_26CC6DB90(v6, type metadata accessor for SportsFavoriteService.UserConsent.State);
  if (v7 == 2)
  {
    v8 = v0[22];
    v9 = v0[14];
    sub_26CC9C624(v0[15]);
    if (v8)
    {
      goto LABEL_5;
    }
  }

  v15 = v0[18];
  v14 = v0[19];
  v16 = v0[16];

  v13 = v0[1];
LABEL_7:

  return v13();
}

uint64_t sub_26CC6D5E4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CC6D6DC;

  return v7(a1);
}

uint64_t sub_26CC6D6DC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26CC6D7D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC8C0, &qword_26CD447F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v19 - v10);
  sub_26CC1B4DC(a2, &v19 - v10, &qword_2804BC8C0, &qword_26CD447F0);
  v12 = _s10NetworkingO12FetchedValueOMa(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    return sub_26CC1B544(v11, &qword_2804BC8C0, &qword_26CD447F0);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_26CC6DB90(v11, _s10NetworkingO12FetchedValueOMa);
  }

  v14 = *v11;
  v15 = (a1 + *(_s5CacheC5ModelVMa(0) + 20));
  if ((sub_26CCDE714(*v15, v14) & 1) == 0)
  {
    if (qword_280BBB460 != -1)
    {
      swift_once();
    }

    sub_26CC96AB0(1);
  }

  v16 = type metadata accessor for SportsFavoriteService.Favorites.State();
  v17 = *(v16 + 20);
  sub_26CC1B4DC(v15 + v17, v7, &qword_2804BCA90, &qword_26CD3C200);
  sub_26CC6DB90(v15, type metadata accessor for SportsFavoriteService.Favorites.State);
  v18 = sub_26CD3A1EC();
  (*(*(v18 - 8) + 56))(v15 + v17, 1, 1, v18);
  *v15 = v14;
  result = sub_26CC17CCC(v7, v15 + v17);
  *(v15 + *(v16 + 24)) = 0;
  return result;
}

uint64_t sub_26CC6DA54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsFavoriteService.Favorites.State();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_26CC6DAB8(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = 0;
  *(a1 + 8) = v2;
}

uint64_t sub_26CC6DAC8(uint64_t a1, uint64_t a2)
{
  v4 = _s5CacheC5ValueOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CC6DB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsFavoriteService.UserConsent.State();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CC6DB90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26CC6DBF0()
{
  result = qword_2804BC8C8;
  if (!qword_2804BC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC8C8);
  }

  return result;
}

uint64_t sub_26CC6DC44(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_26CC37110;

  return sub_26CC6BD7C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_26CC6DD0C(uint64_t a1)
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
  v10[1] = sub_26CC37110;

  return sub_26CC6C114(a1, v4, v5, v6);
}

uint64_t sub_26CC6DDE0(uint64_t a1)
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
  v10[1] = sub_26CC37110;

  return sub_26CC6C4C8(a1, v4, v5, v6, v7);
}

uint64_t sub_26CC6DEB4(uint64_t a1)
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
  v10[1] = sub_26CC37110;

  return sub_26CC6C87C(a1, v4, v5, v6, v7, v9);
}

uint64_t sub_26CC6DF88(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26CC246B8;

  return sub_26CC6D5E4(a1, v5);
}

uint64_t sub_26CC6E040(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_26CC246B8;

  return sub_26CC6A3C8(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_26CC6E108(uint64_t a1)
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
  v10[1] = sub_26CC37110;

  return sub_26CC6A760(a1, v4, v5, v6);
}

uint64_t sub_26CC6E1DC(uint64_t a1)
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
  v10[1] = sub_26CC37110;

  return sub_26CC6AD2C(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_8Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26CC6E308(uint64_t a1)
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
  v10[1] = sub_26CC37110;

  return sub_26CC6B0E0(a1, v4, v5, v6, v7, v9);
}

unint64_t sub_26CC6E3DC()
{
  result = qword_2804BC8D0;
  if (!qword_2804BC8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC8D0);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_26CC6E44C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_26CC6E494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s6ActionV7ContextVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s6ActionV7ContextVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_26CC6E5B4()
{
  result = qword_2804BC8D8;
  if (!qword_2804BC8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC8D8);
  }

  return result;
}

unint64_t sub_26CC6E60C()
{
  result = qword_2804BC8E0;
  if (!qword_2804BC8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC8E0);
  }

  return result;
}

uint64_t sub_26CC6E68C()
{
  result = sub_26CD3A59C();
  qword_2804BC8E8 = result;
  return result;
}

uint64_t sub_26CC6E6E8()
{
  result = sub_26CD3A59C();
  qword_2804BC8F0 = result;
  return result;
}

uint64_t sub_26CC6E744()
{
  result = sub_26CD3A59C();
  qword_2804BC8F8 = result;
  return result;
}

uint64_t sub_26CC6E7A0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC900, &unk_26CD47F10);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v22[-v13];
  v15 = OBJC_IVAR____TtC13TVAppServices12CacheStorage____lazy_storage___cacheUrl;
  swift_beginAccess();
  sub_26CC1B4DC(v1 + v15, v14, &qword_2804BC900, &unk_26CD47F10);
  if ((*(v4 + 48))(v14, 1, v3) != 1)
  {
    return sub_26CC6FFD0(v14, a1);
  }

  sub_26CC1B544(v14, &qword_2804BC900, &unk_26CD47F10);
  sub_26CC589A8(v7);
  v16 = sub_26CD3A07C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v7, 1, v16) == 1)
  {
    sub_26CC1B544(v7, &qword_2804BCA30, &qword_26CD3DA70);
    v18 = 1;
  }

  else
  {
    v20 = *(v1 + 16);
    v21 = *(v1 + 24);
    sub_26CD39FDC();
    (*(v17 + 8))(v7, v16);
    v18 = 0;
  }

  (*(v17 + 56))(a1, v18, 1, v16);
  sub_26CC1B4DC(a1, v12, &qword_2804BCA30, &qword_26CD3DA70);
  (*(v4 + 56))(v12, 0, 1, v3);
  swift_beginAccess();
  sub_26CC1B88C(v12, v1 + v15);
  return swift_endAccess();
}

uint64_t sub_26CC6EA9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16[-v2];
  v4 = sub_26CD3A07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26CC6E7A0(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_26CC1B544(v3, &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_2804BBA08 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26CD3C1E0;
    *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v9 + 64) = sub_26CC2E6E8();
    *(v9 + 32) = &unk_287DF9790;
    sub_26CD3A3DC();
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v10 = [objc_opt_self() defaultManager];
    sub_26CD39FFC();
    v11 = sub_26CD3A59C();

    v12 = [v10 fileExistsAtPath_];

    if (v12)
    {
      v14 = sub_26CD3A08C();
      (*(v5 + 8))(v8, v4);
      return v14;
    }

    if (qword_2804BBA08 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26CD3C1E0;
    *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v13 + 64) = sub_26CC2E6E8();
    *(v13 + 32) = &unk_287DF97C0;
    sub_26CD3A3DC();

    (*(v5 + 8))(v8, v4);
  }

  return 0;
}

uint64_t sub_26CC6EE84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - v2;
  v4 = sub_26CD3A07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CC6E7A0(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_26CC1B544(v3, &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_2804BBA08 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26CD3C1E0;
    *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v9 + 64) = sub_26CC2E6E8();
    *(v9 + 32) = &unk_287DF9A00;
    sub_26CD3A3DC();
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v11 = objc_opt_self();
    v12 = [v11 defaultManager];
    sub_26CD39FFC();
    v13 = sub_26CD3A59C();

    v14 = sub_26CD3A09C();
    [v12 createFileAtPath:v13 contents:v14 attributes:0];

    v15 = [v11 defaultManager];
    sub_26CD39FFC();
    v16 = sub_26CD3A59C();

    LOBYTE(v14) = [v15 fileExistsAtPath_];

    if (v14)
    {
      if (qword_2804BBA08 != -1)
      {
        swift_once();
      }

      v17 = 0xEB00000000737473;
      v18 = 0x69786520656C6946;
    }

    else
    {
      if (qword_2804BBA08 != -1)
      {
        swift_once();
      }

      v17 = 0x800000026CD4E9B0;
      v18 = 0xD000000000000013;
    }

    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_26CD3C1E0;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_26CC19E10();
    *(v19 + 32) = v18;
    *(v19 + 40) = v17;
    sub_26CD3A3DC();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_26CC6F2D0()
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v6 = sub_26CD3A07C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CC6E7A0(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_26CC1B544(v5, &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_2804BBA08 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v11 = swift_allocObject();
    v26 = xmmword_26CD3C1E0;
    *(v11 + 16) = xmmword_26CD3C1E0;
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD00000000000003BLL, 0x800000026CD4E9D0);
    MEMORY[0x26D6AD060](*(v0 + 16), *(v0 + 24));
    v12 = v28;
    *(v11 + 32) = v27;
    *(v11 + 40) = v12;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v13 = swift_allocObject();
    *(v13 + 16) = v26;
    *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v13 + 64) = sub_26CC2E6E8();
    *(v13 + 32) = v11;
    sub_26CD3A3DC();
  }

  else
  {
    *&v26 = v1;
    (*(v7 + 32))(v10, v5, v6);
    sub_26CD39FFC();
    v15 = objc_opt_self();
    v16 = [v15 defaultManager];
    v17 = sub_26CD3A59C();
    v18 = [v16 fileExistsAtPath_];

    if (v18)
    {
      v19 = [v15 defaultManager];
      v20 = sub_26CD3A59C();

      v27 = 0;
      v21 = [v19 removeItemAtPath:v20 error:&v27];

      if (v21)
      {
        v22 = *(v7 + 8);
        v23 = v27;
        result = v22(v10, v6);
      }

      else
      {
        v24 = v27;
        sub_26CD39F8C();

        swift_willThrow();
        result = (*(v7 + 8))(v10, v6);
      }
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26CC6F714@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40 - v6;
  v8 = sub_26CD3A07C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CC6E7A0(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_26CC1B544(v7, &qword_2804BCA30, &qword_26CD3DA70);
LABEL_8:
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v23 = swift_allocObject();
    v44 = xmmword_26CD3C1E0;
    *(v23 + 16) = xmmword_26CD3C1E0;
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD00000000000003BLL, 0x800000026CD4E9D0);
    MEMORY[0x26D6AD060](*(v2 + 16), *(v2 + 24));
    v24 = v48;
    *(v23 + 32) = v47;
    *(v23 + 40) = v24;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v25 = swift_allocObject();
    *(v25 + 16) = v44;
    *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v25 + 64) = sub_26CC2E6E8();
    *(v25 + 32) = v23;
    sub_26CD3A3DC();

    goto LABEL_11;
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_26CD39FAC();
  v13 = objc_allocWithZone(MEMORY[0x277CBEBC0]);
  v14 = sub_26CD3A59C();

  v15 = [v13 initWithString_];

  if (!v15)
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_8;
  }

  v16 = *MEMORY[0x277CBE7B0];
  v46 = 0;
  v47 = 0;
  v17 = [v15 getResourceValue:&v47 forKey:v16 error:&v46];
  v18 = v47;
  if ((v17 & 1) == 0)
  {
    *&v44 = a1;
    v28 = v46;
    swift_unknownObjectRetain();
    v29 = sub_26CD39F8C();

    swift_willThrow();
    v46 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    sub_26CC69164();
    swift_dynamicCast();
    v30 = v45;
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v43 = qword_280BBCBE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v31 = swift_allocObject();
    v42 = xmmword_26CD3C1E0;
    *(v31 + 16) = xmmword_26CD3C1E0;
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_26CD3AC6C();

    v47 = 0xD00000000000001ALL;
    v48 = 0x800000026CD4EA10;
    v32 = [v30 localizedDescription];
    v33 = sub_26CD3A5CC();
    v41 = v30;
    v35 = v34;

    MEMORY[0x26D6AD060](v33, v35);

    MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD4EA30);
    MEMORY[0x26D6AD060](*(v2 + 16), *(v2 + 24));
    v36 = v48;
    *(v31 + 32) = v47;
    *(v31 + 40) = v36;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v37 = swift_allocObject();
    *(v37 + 16) = v42;
    *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v37 + 64) = sub_26CC2E6E8();
    *(v37 + 32) = v31;
    sub_26CD3A3DC();

    (*(v9 + 8))(v12, v8);
    v38 = sub_26CD3A1EC();
    (*(*(v38 - 8) + 56))(v44, 1, 1, v38);

    goto LABEL_15;
  }

  v19 = *(v9 + 8);
  v20 = v46;
  swift_unknownObjectRetain();
  v19(v12, v8);

  if (v18)
  {
    v47 = v18;
    v21 = sub_26CD3A1EC();
    swift_unknownObjectRetain();
    v22 = swift_dynamicCast();
    (*(*(v21 - 8) + 56))(a1, v22 ^ 1u, 1, v21);
LABEL_15:
    result = swift_unknownObjectRelease();
    goto LABEL_16;
  }

LABEL_11:
  v26 = sub_26CD3A1EC();
  result = (*(*(v26 - 8) + 56))(a1, 1, 1, v26);
LABEL_16:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26CC6FE0C()
{
  v1 = v0[3];

  sub_26CC1B544(v0 + OBJC_IVAR____TtC13TVAppServices12CacheStorage____lazy_storage___cacheUrl, &qword_2804BC900, &unk_26CD47F10);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CacheStorage()
{
  result = qword_280BBB1A0;
  if (!qword_280BBB1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26CC6FEDC()
{
  sub_26CC190D0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26CC6FF78@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_26CC6EA9C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_26CC6FFA4(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v1;
  return sub_26CC6EE84();
}

uint64_t sub_26CC6FFD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CC70040@<X0>(unsigned __int8 *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v160 = a2;
  v159 = a3;
  v156 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v158 = &v144 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v144 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v144 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v144 - v18;
  LODWORD(v157) = *a1;
  v20 = sub_26CD3A07C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v178 = v19;
  v22(v19, 1, 1, v20);
  v23 = Data.asDictionary()();
  if (!v23)
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_26CD3C1E0;
    *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v36 + 64) = sub_26CC2E6E8();
    v37 = &unk_287DFB5E0;
    goto LABEL_22;
  }

  v24 = v23;
  if (!*(v23 + 16) || (v25 = sub_26CC181C4(1635017060, 0xE400000000000000), (v26 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_26CC168C0(*(v24 + 56) + 32 * v25, v171);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_26CD3C1E0;
    *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v36 + 64) = sub_26CC2E6E8();
    v37 = &unk_287DFB5B0;
    goto LABEL_22;
  }

  v27 = v165;
  if (!*(v165 + 16) || (v28 = sub_26CC181C4(0x746E65746E6F63, 0xE700000000000000), (v29 & 1) == 0) || (sub_26CC168C0(*(v27 + 56) + 32 * v28, v171), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_26CD3C1E0;
    *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v36 + 64) = sub_26CC2E6E8();
    v37 = &unk_287DFB580;
    goto LABEL_22;
  }

  v30 = v165;
  if (!*(v165 + 16) || (v31 = sub_26CC181C4(0x656C746974, 0xE500000000000000), (v32 & 1) == 0) || (sub_26CC168C0(*(v30 + 56) + 32 * v31, v171), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_26CD3C1E0;
    *(v41 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v41 + 64) = sub_26CC2E6E8();
    *(v41 + 32) = &unk_287DFB550;
    sub_26CD3A3DC();

    sub_26CC2E794();
    swift_allocError();
    v39 = 6;
    goto LABEL_23;
  }

  v155 = v165;
  if (*(v30 + 16) && (v33 = sub_26CC181C4(7107189, 0xE300000000000000), (v34 & 1) != 0))
  {
    sub_26CC168C0(*(v30 + 56) + 32 * v33, v171);

    if (swift_dynamicCast())
    {
      sub_26CD3A03C();

      v35 = v178;
      sub_26CC3C0E0(v178);
      sub_26CC6FFD0(v17, v35);
    }
  }

  else
  {
  }

  sub_26CC4EDBC(v178, v14);
  v42 = (*(v21 + 48))(v14, 1, v20);
  sub_26CC3C0E0(v14);
  if (v42 == 1)
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_26CD3C1E0;
    *(v43 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v43 + 64) = sub_26CC2E6E8();
    *(v43 + 32) = &unk_287DFB1C0;
    sub_26CD3A3DC();
  }

  if (!*(v27 + 16) || (v44 = sub_26CC181C4(0x746E65746E6F63, 0xE700000000000000), (v45 & 1) == 0) || (sub_26CC168C0(*(v27 + 56) + 32 * v44, v171), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_26CD3C1E0;
    *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v36 + 64) = sub_26CC2E6E8();
    v37 = &unk_287DFB520;
    goto LABEL_22;
  }

  v46 = v165;
  if (!*(v165 + 16) || (v47 = v155, v48 = sub_26CC181C4(0x736567616D69, 0xE600000000000000), (v49 & 1) == 0) || (v50 = v9, sub_26CC168C0(*(v46 + 56) + 32 * v48, v171), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_26CD3C1E0;
    *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v36 + 64) = sub_26CC2E6E8();
    v37 = &unk_287DFB4F0;
    goto LABEL_22;
  }

  v51 = v46;
  v52 = v165;
  if (!*(v165 + 16) || (v53 = sub_26CC181C4(0x7241726574736F70, 0xE900000000000074), (v54 & 1) == 0))
  {

LABEL_55:

    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_26CD3C1E0;
    *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v36 + 64) = sub_26CC2E6E8();
    v37 = &unk_287DFB4C0;
    goto LABEL_22;
  }

  sub_26CC168C0(*(v52 + 56) + 32 * v53, v171);

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_55;
  }

  v55 = v161;
  sub_26CC72708(v165, v177);
  if (v55)
  {
    sub_26CC3C0E0(v178);
  }

  v173 = v177[0];
  v174 = v177[1];
  v175 = v177[2];
  v176 = v177[3];
  if (!*(v51 + 16) || (v56 = sub_26CC181C4(0x676E69746172, 0xE600000000000000), (v57 & 1) == 0))
  {

    sub_26CC41EB0(&v173);

LABEL_64:
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_26CD3C1E0;
    *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v36 + 64) = sub_26CC2E6E8();
    v37 = &unk_287DFB490;
    goto LABEL_22;
  }

  sub_26CC168C0(*(v51 + 56) + 32 * v56, v171);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_26CC41EB0(&v173);
    goto LABEL_64;
  }

  sub_26CC72B14(v165, v171);
  v161 = 0;

  v167 = v171[2];
  v168 = v171[3];
  v169 = v171[4];
  v170 = v172;
  v165 = v171[0];
  v166 = v171[1];
  if (!*(v51 + 16) || (v58 = sub_26CC181C4(0x7365726E6567, 0xE600000000000000), (v59 & 1) == 0))
  {

    sub_26CC41EB0(&v173);
    sub_26CC42E74(&v165);

LABEL_79:
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_26CD3C1E0;
    *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v36 + 64) = sub_26CC2E6E8();
    v37 = &unk_287DFB460;
    goto LABEL_22;
  }

  sub_26CC168C0(*(v51 + 56) + 32 * v58, v164);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BD460, &unk_26CD45D60);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_26CC41EB0(&v173);
    sub_26CC42E74(&v165);
    goto LABEL_79;
  }

  v60 = v161;
  v153 = sub_26CC72F9C(v162);
  v161 = v60;

  if (!*(v51 + 16) || (v61 = sub_26CC181C4(0x44657361656C6572, 0xEB00000000657461), (v62 & 1) == 0))
  {

    sub_26CC41EB0(&v173);
    sub_26CC42E74(&v165);

LABEL_84:

    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_26CD3C1E0;
    *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v36 + 64) = sub_26CC2E6E8();
    v37 = &unk_287DFB430;
    goto LABEL_22;
  }

  sub_26CC168C0(*(v51 + 56) + 32 * v61, v164);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_26CC41EB0(&v173);
    sub_26CC42E74(&v165);
    goto LABEL_84;
  }

  v63 = v162;
  if (*(v51 + 16) && (v64 = sub_26CC181C4(0x6E6F697461727564, 0xE800000000000000), (v65 & 1) != 0) && (sub_26CC168C0(*(v51 + 56) + 32 * v64, v164), swift_dynamicCast()))
  {
    v66 = v162;
  }

  else
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_26CD3C1E0;
    *(v67 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v67 + 64) = sub_26CC2E6E8();
    *(v67 + 32) = &unk_287DFB1F0;
    sub_26CD3A3DC();

    v66 = 0;
  }

  if (*(v51 + 16) && (v68 = sub_26CC181C4(0x43746C7564417369, 0xEE00746E65746E6FLL), (v69 & 1) != 0))
  {
    sub_26CC168C0(*(v51 + 56) + 32 * v68, v164);
    LOBYTE(v152) = swift_dynamicCast() & v162;
    v152 = v152;
  }

  else
  {
    v152 = 0;
  }

  if (*(v51 + 16) && (v70 = sub_26CC181C4(0x4F656C7070417369, 0xEF6C616E69676972), (v71 & 1) != 0))
  {
    sub_26CC168C0(*(v51 + 56) + 32 * v70, v164);

    LOBYTE(v151) = swift_dynamicCast() & v162;
    v151 = v151;
  }

  else
  {

    v151 = 0;
  }

  if (v157 != 1)
  {
    if (v157)
    {

      sub_26CC41EB0(&v173);
      sub_26CC42E74(&v165);

      sub_26CC2E794();
      swift_allocError();
      v39 = 7;
      goto LABEL_23;
    }

    v72 = v158;
    sub_26CC6FFD0(v178, v158);
    v73 = type metadata accessor for MovieItem(0);
    v74 = v156;
    v156[3] = v73;
    v74[4] = sub_26CC73648(&unk_2804BC910, type metadata accessor for MovieItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
    v76 = v159;
    *boxed_opaque_existential_1 = v160;
    boxed_opaque_existential_1[1] = v76;
    v77 = *(&v155 + 1);
    boxed_opaque_existential_1[2] = v47;
    boxed_opaque_existential_1[3] = v77;
    v79 = v175;
    v78 = v176;
    v80 = v174;
    *(boxed_opaque_existential_1 + 2) = v173;
    *(boxed_opaque_existential_1 + 3) = v80;
    *(boxed_opaque_existential_1 + 4) = v79;
    *(boxed_opaque_existential_1 + 5) = v78;
    v81 = v166;
    *(boxed_opaque_existential_1 + 6) = v165;
    *(boxed_opaque_existential_1 + 7) = v81;
    v82 = v167;
    v83 = v169;
    v84 = v170;
    *(boxed_opaque_existential_1 + 9) = v168;
    *(boxed_opaque_existential_1 + 10) = v83;
    *(boxed_opaque_existential_1 + 8) = v82;
    v85 = v153;
    boxed_opaque_existential_1[22] = v84;
    boxed_opaque_existential_1[23] = v85;
    sub_26CC6FFD0(v72, boxed_opaque_existential_1 + v73[9]);
    *(boxed_opaque_existential_1 + v73[10]) = v63;
    *(boxed_opaque_existential_1 + v73[11]) = v66;
    *(boxed_opaque_existential_1 + v73[12]) = v152;
    v86 = v73 + 13;
    goto LABEL_102;
  }

  if (!*(v27 + 16) || (v87 = sub_26CC181C4(0x7461576F54776F68, 0xEA00000000006863), (v88 & 1) == 0))
  {

    sub_26CC41EB0(&v173);
    sub_26CC42E74(&v165);

LABEL_129:

    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_26CD3C1E0;
    *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v36 + 64) = sub_26CC2E6E8();
    v37 = &unk_287DFB400;
    goto LABEL_22;
  }

  sub_26CC168C0(*(v27 + 56) + 32 * v87, v164);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_26CC41EB0(&v173);
    sub_26CC42E74(&v165);
    goto LABEL_129;
  }

  v146 = v162;
  v144 = *(v162 + 16);
  if (v144)
  {
    v147 = 0;
    v145 = v146 + 32;
    v158 = MEMORY[0x277D84F90];
    while (v147 < *(v146 + 16))
    {
      sub_26CC168C0(v145 + 32 * v147, v164);
      if (!swift_dynamicCast())
      {

        sub_26CC41EB0(&v173);
        sub_26CC42E74(&v165);

        if (qword_280BBB6B8 != -1)
        {
          swift_once();
        }

        sub_26CD3A98C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_26CD3C1E0;
        *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
        *(v36 + 64) = sub_26CC2E6E8();
        v37 = &unk_287DFB2B0;
        goto LABEL_22;
      }

      v89 = v162;
      if (!*(v162 + 16) || (v90 = sub_26CC181C4(0x736E6F73616573, 0xE700000000000000), (v91 & 1) == 0))
      {

        sub_26CC41EB0(&v173);
        sub_26CC42E74(&v165);

LABEL_178:

        if (qword_280BBB6B8 != -1)
        {
LABEL_213:
          swift_once();
        }

        sub_26CD3A98C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_26CD3C1E0;
        *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
        *(v36 + 64) = sub_26CC2E6E8();
        v37 = &unk_287DFB280;
        goto LABEL_22;
      }

      sub_26CC168C0(*(v89 + 56) + 32 * v90, v164);

      if ((swift_dynamicCast() & 1) == 0)
      {

        sub_26CC41EB0(&v173);
        sub_26CC42E74(&v165);
        goto LABEL_178;
      }

      v92 = v162;
      if (*(v162 + 16))
      {
        v93 = *(v162 + 16);
        v94 = 0;
        v157 = v162 + 32;
        while (1)
        {
          if (v94 >= *(v92 + 16))
          {
            __break(1u);
LABEL_206:

            sub_26CC41EB0(&v173);
            sub_26CC42E74(&v165);

LABEL_207:

            if (qword_280BBB6B8 != -1)
            {
              swift_once();
            }

            sub_26CD3A98C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
            v36 = swift_allocObject();
            *(v36 + 16) = xmmword_26CD3C1E0;
            *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
            *(v36 + 64) = sub_26CC2E6E8();
            v37 = &unk_287DFB2E0;
            goto LABEL_22;
          }

          sub_26CC168C0(v157, v164);
          if (!swift_dynamicCast())
          {

            sub_26CC41EB0(&v173);
            sub_26CC42E74(&v165);

            if (qword_280BBB6B8 != -1)
            {
              swift_once();
            }

            sub_26CD3A98C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
            v36 = swift_allocObject();
            *(v36 + 16) = xmmword_26CD3C1E0;
            *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
            *(v36 + 64) = sub_26CC2E6E8();
            v37 = &unk_287DFB250;
            goto LABEL_22;
          }

          v95 = v162;
          if (!*(v162 + 16) || (v96 = sub_26CC181C4(25705, 0xE200000000000000), (v97 & 1) == 0))
          {

            sub_26CC41EB0(&v173);
            sub_26CC42E74(&v165);

            goto LABEL_170;
          }

          sub_26CC168C0(*(v95 + 56) + 32 * v96, v164);

          if ((swift_dynamicCast() & 1) == 0)
          {
            break;
          }

          v148 = v163;
          v149 = v162;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v158 = sub_26CCBE3BC(0, *(v158 + 2) + 1, 1, v158);
          }

          v99 = *(v158 + 2);
          v98 = *(v158 + 3);
          v150 = v99 + 1;
          if (v99 >= v98 >> 1)
          {
            v158 = sub_26CCBE3BC((v98 > 1), v150, 1, v158);
          }

          ++v94;
          v100 = v158;
          v101 = v149;
          *(v158 + 2) = v150;
          v102 = &v100[16 * v99];
          v103 = v148;
          *(v102 + 4) = v101;
          *(v102 + 5) = v103;
          v157 += 32;
          if (v93 == v94)
          {
            goto LABEL_125;
          }
        }

        sub_26CC41EB0(&v173);
        sub_26CC42E74(&v165);
LABEL_170:

        if (qword_280BBB6B8 == -1)
        {
LABEL_171:
          sub_26CD3A98C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_26CD3C1E0;
          *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
          *(v36 + 64) = sub_26CC2E6E8();
          v37 = &unk_287DFB220;
          goto LABEL_22;
        }

LABEL_211:
        swift_once();
        goto LABEL_171;
      }

LABEL_125:
      v104 = v147 + 1;

      v147 = v104;
      if (v104 == v144)
      {
        goto LABEL_134;
      }
    }

    __break(1u);
    goto LABEL_211;
  }

  v158 = MEMORY[0x277D84F90];
LABEL_134:

  if (!*(v27 + 16) || (v105 = sub_26CC181C4(0x736E6F73616573, 0xE700000000000000), (v106 & 1) == 0))
  {

    sub_26CC41EB0(&v173);
    sub_26CC42E74(&v165);

LABEL_162:

    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_26CD3C1E0;
    *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v36 + 64) = sub_26CC2E6E8();
    v37 = &unk_287DFB3D0;
    goto LABEL_22;
  }

  sub_26CC168C0(*(v27 + 56) + 32 * v105, v164);

  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_26CC41EB0(&v173);
    sub_26CC42E74(&v165);
    goto LABEL_162;
  }

  v157 = v162;
  v146 = *(v158 + 2);
  if (!v146)
  {
    v154 = MEMORY[0x277D84F90];
LABEL_181:

    sub_26CC6FFD0(v178, v50);
    v132 = type metadata accessor for TVShowItem(0);
    v133 = v156;
    v156[3] = v132;
    v133[4] = sub_26CC73648(&qword_2804BC908, type metadata accessor for TVShowItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v133);
    v134 = v159;
    *boxed_opaque_existential_1 = v160;
    boxed_opaque_existential_1[1] = v134;
    v135 = *(&v155 + 1);
    boxed_opaque_existential_1[2] = v47;
    boxed_opaque_existential_1[3] = v135;
    v137 = v175;
    v136 = v176;
    v138 = v174;
    *(boxed_opaque_existential_1 + 2) = v173;
    *(boxed_opaque_existential_1 + 3) = v138;
    *(boxed_opaque_existential_1 + 4) = v137;
    *(boxed_opaque_existential_1 + 5) = v136;
    boxed_opaque_existential_1[12] = v153;
    sub_26CC6FFD0(v50, boxed_opaque_existential_1 + v132[8]);
    v139 = boxed_opaque_existential_1 + v132[9];
    v140 = v166;
    *v139 = v165;
    *(v139 + 1) = v140;
    v141 = v167;
    v142 = v168;
    v143 = v169;
    *(v139 + 10) = v170;
    *(v139 + 3) = v142;
    *(v139 + 4) = v143;
    *(v139 + 2) = v141;
    *(boxed_opaque_existential_1 + v132[10]) = v63;
    *(boxed_opaque_existential_1 + v132[11]) = v66;
    *(boxed_opaque_existential_1 + v132[12]) = v152;
    *(boxed_opaque_existential_1 + v132[13]) = v154;
    v86 = v132 + 14;
LABEL_102:
    *(boxed_opaque_existential_1 + *v86) = v151;
  }

  v107 = 0;
  v108 = (v158 + 40);
  v154 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v107 >= *(v158 + 2))
    {
      __break(1u);
      goto LABEL_213;
    }

    v109 = *(v108 - 1);
    v110 = *v108;
    v111 = *(v157 + 16);

    if (!v111)
    {

      sub_26CC41EB0(&v173);
      sub_26CC42E74(&v165);

LABEL_188:

LABEL_190:

      if (qword_280BBB6B8 != -1)
      {
        swift_once();
      }

      sub_26CD3A98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_26CD3C1E0;
      *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v36 + 64) = sub_26CC2E6E8();
      v37 = &unk_287DFB3A0;
      goto LABEL_22;
    }

    v112 = sub_26CC181C4(v109, v110);
    v114 = v113;

    if ((v114 & 1) == 0)
    {

      sub_26CC41EB0(&v173);
      sub_26CC42E74(&v165);
      goto LABEL_188;
    }

    sub_26CC168C0(*(v157 + 56) + 32 * v112, v164);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_26CC41EB0(&v173);
      sub_26CC42E74(&v165);

      goto LABEL_190;
    }

    v115 = v162;
    if (!*(v162 + 16) || (v116 = sub_26CC181C4(0x6C746954776F6873, 0xE900000000000065), (v117 & 1) == 0))
    {

      sub_26CC41EB0(&v173);
      sub_26CC42E74(&v165);

      goto LABEL_194;
    }

    sub_26CC168C0(*(v115 + 56) + 32 * v116, v164);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v150 = v163;
    if (!*(v115 + 16) || (v148 = v162, v118 = sub_26CC181C4(0x656C746974, 0xE500000000000000), (v119 & 1) == 0))
    {

      sub_26CC41EB0(&v173);
      sub_26CC42E74(&v165);

LABEL_198:

      if (qword_280BBB6B8 != -1)
      {
        swift_once();
      }

      sub_26CD3A98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_26CD3C1E0;
      *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v36 + 64) = sub_26CC2E6E8();
      v37 = &unk_287DFB340;
      goto LABEL_22;
    }

    sub_26CC168C0(*(v115 + 56) + 32 * v118, v164);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_26CC41EB0(&v173);
      sub_26CC42E74(&v165);

      goto LABEL_198;
    }

    v149 = v163;
    if (!*(v115 + 16) || (v147 = v162, v120 = sub_26CC181C4(0x754E6E6F73616573, 0xEC0000007265626DLL), (v121 & 1) == 0))
    {

      sub_26CC41EB0(&v173);
      sub_26CC42E74(&v165);

LABEL_202:

      if (qword_280BBB6B8 != -1)
      {
        swift_once();
      }

      sub_26CD3A98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_26CD3C1E0;
      *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v36 + 64) = sub_26CC2E6E8();
      v37 = &unk_287DFB310;
      goto LABEL_22;
    }

    sub_26CC168C0(*(v115 + 56) + 32 * v120, v164);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_26CC41EB0(&v173);
      sub_26CC42E74(&v165);

      goto LABEL_202;
    }

    if (!*(v115 + 16) || (v122 = v162, v123 = sub_26CC181C4(25705, 0xE200000000000000), (v124 & 1) == 0))
    {

      sub_26CC41EB0(&v173);
      sub_26CC42E74(&v165);

      goto LABEL_207;
    }

    sub_26CC168C0(*(v115 + 56) + 32 * v123, v164);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_206;
    }

    v144 = v163;
    v145 = v162;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v154 = sub_26CCBE5D4(0, *(v154 + 2) + 1, 1, v154);
    }

    v126 = *(v154 + 2);
    v125 = *(v154 + 3);
    if (v126 >= v125 >> 1)
    {
      v154 = sub_26CCBE5D4((v125 > 1), v126 + 1, 1, v154);
    }

    v127 = v154;
    *(v154 + 2) = v126 + 1;
    v128 = &v127[56 * v126];
    v129 = v144;
    *(v128 + 4) = v145;
    *(v128 + 5) = v129;
    v130 = v148;
    *(v128 + 6) = v122;
    *(v128 + 7) = v130;
    v131 = v147;
    *(v128 + 8) = v150;
    *(v128 + 9) = v131;
    *(v128 + 10) = v149;
    v108 += 2;
    if (v146 == ++v107)
    {
      goto LABEL_181;
    }
  }

  sub_26CC41EB0(&v173);
  sub_26CC42E74(&v165);

LABEL_194:

  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_26CD3C1E0;
  *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v36 + 64) = sub_26CC2E6E8();
  v37 = &unk_287DFB370;
LABEL_22:
  *(v36 + 32) = v37;
  sub_26CD3A3DC();

  sub_26CC2E794();
  swift_allocError();
  v39 = 3;
LABEL_23:
  *v38 = v39;
  swift_willThrow();
  return sub_26CC3C0E0(v178);
}