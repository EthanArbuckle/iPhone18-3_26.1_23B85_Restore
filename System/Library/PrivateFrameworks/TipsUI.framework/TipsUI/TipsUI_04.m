uint64_t sub_220BA6338(uint64_t a1)
{
  swift_beginAccess();

  v3 = sub_220B9DA2C(v2, a1);

  if (v3)
  {
    return sub_220BA5E68(a1);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC2F0();
}

uint64_t sub_220BA647C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;

  v4 = (a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsTipsUpdated);
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {
    swift_getKeyPath();
    sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);

    sub_220BCC300();

    v6(v7);
    sub_220B3A128(v6);
  }

  return result;
}

void (*sub_220BA65D8(uint64_t *a1))(void *a1)
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6TipsUI18SearchResultsModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  *v4 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v4[7] = sub_220BA5F9C(v4);
  return sub_220BA6710;
}

uint64_t sub_220BA671C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  v3 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsTopicsUpdated);
  result = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {
    swift_getKeyPath();
    sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);

    sub_220BCC300();

    v5(v6);
    sub_220B3A128(v5);
  }

  return result;
}

void (*sub_220BA6850(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  return sub_220BA68C8;
}

void sub_220BA68C8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = (v3[4] + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsTopicsUpdated);
    swift_beginAccess();
    v5 = *v4;
    if (*v4)
    {
      v6 = v3[4];
      swift_getKeyPath();
      v3[3] = v6;
      sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);

      sub_220BCC300();

      v5(v7);
      sub_220B3A128(v5);
    }
  }

  free(v3);
}

uint64_t sub_220BA69FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_220BA6AE8()
{
  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  swift_beginAccess();
}

uint64_t sub_220BA6BA0(uint64_t a1)
{
  swift_beginAccess();

  v3 = sub_220B9DCA8(v2, a1);

  if (v3)
  {
    return sub_220BA671C(a1);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC2F0();
}

uint64_t sub_220BA6CE4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;

  v4 = (a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsTopicsUpdated);
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {
    swift_getKeyPath();
    sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);

    sub_220BCC300();

    v6(v7);
    sub_220B3A128(v6);
  }

  return result;
}

void (*sub_220BA6E40(uint64_t *a1))(void *a1)
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6TipsUI18SearchResultsModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  *v4 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v4[7] = sub_220BA6850(v4);
  return sub_220BA6F78;
}

uint64_t sub_220BA6F84(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__deviceExpertResult;
  swift_beginAccess();
  sub_220BB5BEC(a1, v1 + v6);
  swift_endAccess();
  v7 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsDeviceExpertResponseUpdated);
  swift_beginAccess();
  v8 = *v7;
  if (*v7)
  {
    swift_getKeyPath();
    v10 = v1;
    sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);

    sub_220BCC300();

    sub_220B462DC(v1 + v6, v5, &qword_27CF773A8);
    v8(v5);
    sub_220B3A128(v8);
    sub_220B463F4(a1, &qword_27CF773A8);
    a1 = v5;
  }

  return sub_220B463F4(a1, &qword_27CF773A8);
}

void (*sub_220BA715C(uint64_t *a1))(void *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 56) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__deviceExpertResult;
  *(v5 + 64) = v7;
  *(v5 + 72) = v8;
  swift_beginAccess();
  return sub_220BA7228;
}

void sub_220BA7228(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = (v3[7] + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsDeviceExpertResponseUpdated);
    swift_beginAccess();
    v5 = *v4;
    if (*v4)
    {
      v6 = v3[8];
      v7 = v3[9];
      v8 = v3[7];
      swift_getKeyPath();
      v3[6] = v8;
      sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);

      sub_220BCC300();

      sub_220B462DC(v8 + v7, v6, &qword_27CF773A8);
      v5(v6);
      sub_220B3A128(v5);
      sub_220B463F4(v6, &qword_27CF773A8);
    }
  }

  free(v3[8]);

  free(v3);
}

uint64_t sub_220BA7394@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  v4 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__deviceExpertResult;
  swift_beginAccess();
  return sub_220B462DC(v3 + v4, a2, &qword_27CF773A8);
}

uint64_t sub_220BA746C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_220B462DC(a1, &v6 - v3, &qword_27CF773A8);
  return sub_220BA75F0(v4);
}

uint64_t sub_220BA7518@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  v3 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__deviceExpertResult;
  swift_beginAccess();
  return sub_220B462DC(v5 + v3, a1, &qword_27CF773A8);
}

uint64_t sub_220BA75F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v9 - v4;
  v6 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__deviceExpertResult;
  swift_beginAccess();
  sub_220B462DC(v1 + v6, v5, &qword_27CF773A8);
  LOBYTE(v6) = sub_220BB3AEC(v5, a1);
  sub_220B463F4(v5, &qword_27CF773A8);
  if (v6)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v1;
    v9[-1] = a1;
    v9[2] = v1;
    sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
    sub_220BCC2F0();
  }

  else
  {
    sub_220B462DC(a1, v5, &qword_27CF773A8);
    sub_220BA6F84(v5);
  }

  return sub_220B463F4(a1, &qword_27CF773A8);
}

uint64_t sub_220BA77D0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  sub_220B462DC(a2, v15 - v9, &qword_27CF773A8);
  v11 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__deviceExpertResult;
  swift_beginAccess();
  sub_220BB5BEC(v10, a1 + v11);
  swift_endAccess();
  v12 = (a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsDeviceExpertResponseUpdated);
  swift_beginAccess();
  v13 = *v12;
  if (*v12)
  {
    swift_getKeyPath();
    v15[0] = v2;
    v15[5] = a1;
    sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);

    sub_220BCC300();

    sub_220B462DC(a1 + v11, v8, &qword_27CF773A8);
    v13(v8);
    sub_220B3A128(v13);
    sub_220B463F4(v8, &qword_27CF773A8);
  }

  return sub_220B463F4(v10, &qword_27CF773A8);
}

void (*sub_220BA79F4(uint64_t *a1))(void *a1)
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6TipsUI18SearchResultsModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  *v4 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v4[7] = sub_220BA715C(v4);
  return sub_220BA7B2C;
}

void (*sub_220BA7B38(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__supportArticles;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return sub_220BA7BC0;
}

uint64_t sub_220BA7BFC()
{
  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC2F0();
}

uint64_t sub_220BA7CDC()
{
  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC2F0();
}

void (*sub_220BA7DAC(uint64_t *a1))(void *a1)
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6TipsUI18SearchResultsModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  *v4 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v4[7] = sub_220BA7B38(v4);
  return sub_220BA7EE4;
}

uint64_t sub_220BA7EF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__supportFlows;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsSupportFlowsUpdated);
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {
    swift_getKeyPath();
    sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);

    sub_220BCC300();

    v6(v7);
    sub_220B3A128(v6);
  }

  return result;
}

void (*sub_220BA802C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__supportFlows;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return sub_220BA80B4;
}

void sub_220BA80DC(void **a1, char a2, void *a3, uint64_t a4, void (*a5)(void (*)(uint64_t), uint64_t))
{
  v8 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v9 = v8[4] + *a3;
    swift_beginAccess();
    v10 = *v9;
    if (*v9)
    {
      v11 = v8[4];
      v12 = *(v9 + 8);
      swift_getKeyPath();
      v8[3] = v11;
      sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);

      sub_220BCC300();

      v10(v13);
      a5(v10, v12);
    }
  }

  free(v8);
}

uint64_t sub_220BA8274(uint64_t a1)
{
  swift_beginAccess();

  v3 = sub_220B9DA18(v2, a1);

  if (v3)
  {
    return sub_220BA7EF0(a1);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC2F0();
}

uint64_t sub_220BA83C0(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, void (*a6)(void (*)(uint64_t), uint64_t))
{
  v10 = *a3;
  swift_beginAccess();
  *(a1 + v10) = a2;

  v11 = a1 + *a4;
  result = swift_beginAccess();
  v13 = *v11;
  if (*v11)
  {
    v14 = *(v11 + 8);
    swift_getKeyPath();
    sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);

    sub_220BCC300();

    v13(v15);
    a6(v13, v14);
  }

  return result;
}

void (*sub_220BA8514(uint64_t *a1))(void *a1)
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6TipsUI18SearchResultsModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  *v4 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v4[7] = sub_220BA802C(v4);
  return sub_220BA864C;
}

uint64_t sub_220BA8658(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchPerformedDebouncer;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_220BA8708(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchPerformedDebouncer;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_220BA87C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_tipActionHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_220BB5734;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_220B3A13C(v4);
}

uint64_t sub_220BA8860(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_220BB572C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_tipActionHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_220B3A13C(v3);
  return sub_220B3A128(v8);
}

uint64_t sub_220BA89C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_topicActionHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_220BB5D0C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_220B3A13C(v4);
}

uint64_t sub_220BA8A68(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_220BB5C5C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_topicActionHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_220B3A13C(v3);
  return sub_220B3A128(v8);
}

uint64_t sub_220BA8BD0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_supportArticleActionHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_220BB5700;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_220B3A13C(v4);
}

uint64_t sub_220BA8C70(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_220BB568C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_supportArticleActionHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_220B3A13C(v3);
  return sub_220B3A128(v8);
}

uint64_t sub_220BA8DD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_supportFlowActionHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_220BB5D0C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_220B3A13C(v4);
}

uint64_t sub_220BA8E78(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_220BB5C5C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_supportFlowActionHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_220B3A13C(v3);
  return sub_220B3A128(v8);
}

uint64_t sub_220BA8FE0@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_supportArticleURLHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_220BB5634;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_220B3A13C(v4);
}

uint64_t sub_220BA9080(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_220BB562C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_supportArticleURLHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_220B3A13C(v3);
  return sub_220B3A128(v8);
}

void *sub_220BA91E8()
{
  v1 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchQuery;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_220BA9234(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchQuery;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v2 + v4) = a1;
  v6 = a1;

  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  v7 = *(v2 + v4);

  sub_220BCC440();
}

void (*sub_220BA9340(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchQuery;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_220BA93C8;
}

void sub_220BA93C8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    swift_getKeyPath();
    *v3 = v5;
    sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
    sub_220BCC300();

    v6 = *(v5 + v4);
    *v3 = v6;
    v7 = v6;

    sub_220BCC440();
  }

  free(v3);
}

uint64_t sub_220BA94BC()
{
  v1 = sub_220BCDA30();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchQuery;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (!v6)
  {
    return 0;
  }

  v7 = OBJC_IVAR___TPSAppSearchQuery__searchTerm;
  swift_beginAccess();
  (*(v2 + 16))(v4, v6 + v7, v1);
  v8 = sub_220BCDA10();
  (*(v2 + 8))(v4, v1);
  return v8;
}

BOOL sub_220BA9604()
{
  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_220BCDF70();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 != 0;
}

BOOL sub_220BA96E4()
{
  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  swift_beginAccess();
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    v2 = sub_220BCDF70();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 != 0;
}

BOOL sub_220BA97EC(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
    v6 = sub_220BCDF70();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6 != 0;
}

BOOL sub_220BA98CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  swift_getKeyPath();
  v10 = v0;
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  v5 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__deviceExpertResult;
  swift_beginAccess();
  sub_220B462DC(v1 + v5, v4, &qword_27CF773A8);
  v6 = sub_220BCC2E0();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_220B463F4(v4, &qword_27CF773A8);
  return v7;
}

BOOL sub_220BA9A4C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - v3;
  swift_getKeyPath();
  v16 = v0;
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  swift_beginAccess();
  v5 = *(v0 + 16);
  if (v5 >> 62)
  {
    if (sub_220BCDF70())
    {
      return 1;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 1;
  }

  swift_getKeyPath();
  v15[10] = v0;
  sub_220BCC300();

  swift_beginAccess();
  v6 = *(v0 + 24);
  if (v6 >> 62)
  {
    if (sub_220BCDF70())
    {
      return 1;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 1;
  }

  swift_getKeyPath();
  v15[7] = v0;
  sub_220BCC300();

  v8 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__deviceExpertResult;
  swift_beginAccess();
  sub_220B462DC(v0 + v8, v4, &qword_27CF773A8);
  v9 = sub_220BCC2E0();
  LODWORD(v8) = (*(*(v9 - 8) + 48))(v4, 1, v9);
  sub_220B463F4(v4, &qword_27CF773A8);
  result = 1;
  if (v8 == 1)
  {
    swift_getKeyPath();
    v15[4] = v0;
    sub_220BCC300();

    v10 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__supportArticles;
    swift_beginAccess();
    v11 = *(v1 + v10);
    if (v11 >> 62)
    {
      if (sub_220BCDF70())
      {
        return 1;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 1;
    }

    swift_getKeyPath();
    v15[1] = v1;
    sub_220BCC300();

    v12 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__supportFlows;
    swift_beginAccess();
    v13 = *(v1 + v12);
    if (v13 >> 62)
    {
      v14 = sub_220BCDF70();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v14 != 0;
  }

  return result;
}

BOOL sub_220BA9DCC()
{
  v1 = v0;
  v2 = sub_220BCDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchQuery;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7)
  {
    v8 = OBJC_IVAR___TPSAppSearchQuery__searchTerm;
    swift_beginAccess();
    (*(v3 + 16))(v5, v7 + v8, v2);
    v9 = sub_220BCDA10();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = 0;
    v11 = 0xE000000000000000;
  }

  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12;
  }

  if (!v13)
  {
    return 0;
  }

  v14 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_queryCount;
  swift_beginAccess();
  return *(v1 + v14) > 0;
}

uint64_t sub_220BA9F58@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchQueryCompleted);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_220BB5D2C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_220B3A13C(v4);
}

uint64_t sub_220BA9FF8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_220BB5CF0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchQueryCompleted);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_220B3A13C(v3);
  return sub_220B3A128(v8);
}

uint64_t sub_220BAA160@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultCollectionResolver);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_220BB56F8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_220B3A13C(v4);
}

uint64_t sub_220BAA200(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_220BB56F0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultCollectionResolver);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_220B3A13C(v3);
  return sub_220B3A128(v8);
}

uint64_t sub_220BAA368@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultUserGuideResolver);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_220BB56F8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_220B3A13C(v4);
}

uint64_t sub_220BAA408(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_220BB56F0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultUserGuideResolver);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_220B3A13C(v3);
  return sub_220B3A128(v8);
}

uint64_t sub_220BAA570@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultEligibilityFilter);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_220BB56F8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_220B3A13C(v4);
}

uint64_t sub_220BAA610(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_220BB56F0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultEligibilityFilter);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_220B3A13C(v3);
  return sub_220B3A128(v8);
}

uint64_t sub_220BAA778@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultScrollHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_220BB5D2C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_220B3A13C(v4);
}

uint64_t sub_220BAA818(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_220BB5CF0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultScrollHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_220B3A13C(v3);
  return sub_220B3A128(v8);
}

uint64_t sub_220BAA980@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsUpdated);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_220B6B818;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_220B3A13C(v4);
}

uint64_t sub_220BAAA20(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_220B6B810;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsUpdated);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_220B3A13C(v3);
  return sub_220B3A128(v8);
}

uint64_t sub_220BAAB88@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsTipsUpdated);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_220BB5D08;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_220B3A13C(v4);
}

uint64_t sub_220BAAC28(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_220BB5C5C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsTipsUpdated);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_220B3A13C(v3);
  return sub_220B3A128(v8);
}

uint64_t sub_220BAAD90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsTopicsUpdated);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_220BB5D08;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_220B3A13C(v4);
}

uint64_t sub_220BAAE30(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_220BB5C5C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsTopicsUpdated);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_220B3A13C(v3);
  return sub_220B3A128(v8);
}

uint64_t sub_220BAAF98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsSupportArticlesUpdated);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_220BB56C4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_220B3A13C(v4);
}

uint64_t sub_220BAB038(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_220BB568C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsSupportArticlesUpdated);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_220B3A13C(v3);
  return sub_220B3A128(v8);
}

uint64_t sub_220BAB1A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsSupportFlowsUpdated);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_220BB5D08;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_220B3A13C(v4);
}

uint64_t sub_220BAB240(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_220BB5C5C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsSupportFlowsUpdated);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_220B3A13C(v3);
  return sub_220B3A128(v8);
}

uint64_t sub_220BAB3A8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsDeviceExpertResponseUpdated);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_220BB5664;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_220B3A13C(v4);
}

uint64_t sub_220BAB448(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_220BB563C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsDeviceExpertResponseUpdated);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_220B3A13C(v3);
  return sub_220B3A128(v8);
}

uint64_t sub_220BAB5B0@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsSeeAllHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_220BB5634;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_220B3A13C(v4);
}

uint64_t sub_220BAB650(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_220BB562C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsSeeAllHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_220B3A13C(v3);
  return sub_220B3A128(v8);
}

uint64_t sub_220BAB758(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_220BAB81C@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultSelected);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_220BB5634;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_220B3A13C(v4);
}

uint64_t sub_220BAB8BC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_220BB562C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultSelected);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_220B3A13C(v3);
  sub_220B3A13C(v6);
  sub_220B3A128(v8);
  sub_220BAB9A0();
  return sub_220B3A128(v6);
}

uint64_t sub_220BAB9A0()
{
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = (v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_tipActionHandler);
  swift_beginAccess();
  v3 = *v2;
  *v2 = sub_220BB5AD8;
  v2[1] = v1;

  sub_220B3A128(v3);

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = (v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_topicActionHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = sub_220BB5B0C;
  v5[1] = v4;

  sub_220B3A128(v6);

  v7 = swift_allocObject();
  swift_weakInit();
  v8 = (v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_supportArticleActionHandler);
  swift_beginAccess();
  v9 = *v8;
  *v8 = sub_220BB5B40;
  v8[1] = v7;

  sub_220B3A128(v9);

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = (v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_supportArticleURLHandler);
  swift_beginAccess();
  v12 = *v11;
  *v11 = sub_220BB5B48;
  v11[1] = v10;

  sub_220B3A128(v12);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = (v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_supportFlowActionHandler);
  swift_beginAccess();
  v15 = *v14;
  *v14 = sub_220BB5B50;
  v14[1] = v13;

  sub_220B3A128(v15);
}

void sub_220BABC48(void *a1, uint64_t a2, void (*a3)(void *), unsigned __int8 a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a3(a1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = (Strong + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultSelected);
    swift_beginAccess();
    v9 = *v8;
    sub_220B3A13C(*v8);

    if (v9)
    {
      v11 = a1;
      v12 = a4;
      v10 = a1;
      v9(&v11);
      sub_220B3A128(v9);
      sub_220BB5B58(v11, v12);
    }
  }
}

uint64_t sub_220BABD54(void *a1)
{
  v3 = sub_220BCD550();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220BCD580();
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220BCD560();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  v14 = *(v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__currentSearchQuery[0]);
  if (v14)
  {
    sub_220B55458(0, &qword_2812C0900);
    (*(v10 + 104))(v12, *MEMORY[0x277D851A8], v9);
    v15 = v14;
    v16 = sub_220BCDE40();
    (*(v10 + 8))(v12, v9);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = a1;
    aBlock[4] = sub_220BB5BE4;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_220B61C68;
    aBlock[3] = &block_descriptor_307;
    v18 = _Block_copy(aBlock);
    v19 = v15;
    v20 = a1;
    sub_220BCD570();
    v24 = MEMORY[0x277D84F90];
    sub_220BB3EDC(&qword_2812C0968, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77168);
    sub_220B43830(&qword_2812C0950, &qword_27CF77168);
    sub_220BCDF50();
    MEMORY[0x223D92BC0](0, v8, v5, v18);
    _Block_release(v18);

    (*(v23 + 8))(v5, v3);
    (*(v21 + 8))(v8, v22);
  }

  return result;
}

void sub_220BAC190(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = (Strong + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultSelected);
    swift_beginAccess();
    v4 = *v3;
    sub_220B3A13C(*v3);

    if (v4)
    {
      v5 = a1;
      v6 = 2;

      v4(&v5);
      sub_220B3A128(v4);
      sub_220BB5B58(v5, v6);
    }
  }
}

uint64_t sub_220BAC25C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = (result + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_supportArticleURLHandler);
    swift_beginAccess();
    v4 = *v3;
    sub_220B3A13C(*v3);

    if (v4)
    {
      v4(a1);
      return sub_220B3A128(v4);
    }
  }

  return result;
}

void sub_220BAC308(void *a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_220BAC428(a1, &unk_28345E2D0, sub_220BB5BD8, &block_descriptor_301);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = (Strong + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultSelected);
    swift_beginAccess();
    v4 = *v3;
    sub_220B3A13C(*v3);

    if (v4)
    {
      v6 = a1;
      v7 = 3;
      v5 = a1;
      v4(&v6);
      sub_220B3A128(v4);
      sub_220BB5B58(v6, v7);
    }
  }
}

uint64_t sub_220BAC428(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v25[1] = a2;
  v6 = sub_220BCD550();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220BCD580();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_220BCD560();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  aBlock[0] = v4;
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  v17 = *(v4 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__currentSearchQuery[0]);
  if (v17)
  {
    sub_220B55458(0, &qword_2812C0900);
    (*(v13 + 104))(v15, *MEMORY[0x277D851A8], v12);
    v18 = v17;
    v25[0] = sub_220BCDE40();
    (*(v13 + 8))(v15, v12);
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    v20[2] = v18;
    v20[3] = a1;
    v20[4] = v19;
    aBlock[4] = v26;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_220B61C68;
    aBlock[3] = v27;
    v21 = _Block_copy(aBlock);
    v22 = v18;
    v23 = a1;

    sub_220BCD570();
    v31 = MEMORY[0x277D84F90];
    sub_220BB3EDC(&qword_2812C0968, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77168);
    sub_220B43830(&qword_2812C0950, &qword_27CF77168);
    sub_220BCDF50();
    v24 = v25[0];
    MEMORY[0x223D92BC0](0, v11, v8, v21);
    _Block_release(v21);

    (*(v30 + 8))(v8, v6);
    (*(v28 + 8))(v11, v29);
  }

  return result;
}

uint64_t sub_220BAC8B4(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_220BAC91C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultSelected);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  sub_220B3A13C(a1);
  sub_220B3A128(v6);
  sub_220BAB9A0();
  return sub_220B3A128(a1);
}

uint64_t (*sub_220BAC9A8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_220BACA0C;
}

uint64_t sub_220BACA0C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_220BAB9A0();
  }

  return result;
}

uint64_t sub_220BACA40()
{
  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();
}

uint64_t sub_220BACAEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  *a2 = *(v3 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__searchQuerySubject);
}

uint64_t sub_220BACBA0(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__searchQuerySubject) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
    sub_220BCC2F0();
  }
}

uint64_t sub_220BACCDC()
{
  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();
}

uint64_t sub_220BACD88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  *a2 = *(v3 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__searchQueryTask);
}

uint64_t sub_220BACE3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__searchQueryTask;
  if (!*(v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__searchQueryTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
    sub_220BCC2F0();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_220BCDD50();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_220BACFE0()
{
  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  swift_beginAccess();
}

uint64_t sub_220BAD098@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_220BAD164(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__cancellables;
  swift_beginAccess();

  v5 = sub_220BB36F4(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
    sub_220BCC2F0();
  }
}

uint64_t sub_220BAD2B4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__cancellables;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void *sub_220BAD388(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_220BAD444@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_220BAD508(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_220BAD538(v1);
}

void sub_220BAD574(void *a1, uint64_t *a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *a2;
  v7 = *(v3 + *a2);
  if (!v7)
  {
    if (!a1)
    {
      v11 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
    sub_220BCC2F0();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  a3(0);
  v8 = v7;
  v9 = a1;
  v10 = sub_220BCDED0();

  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(v4 + v6);
LABEL_8:
  *(v4 + v6) = a1;
}

void sub_220BAD6FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__lastTipResults);
  *(a1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__lastTipResults) = a2;
  v3 = a2;
}

uint64_t sub_220BAD738()
{
  v1 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_queryCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_220BAD77C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_queryCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_220BAD82C@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchLocation;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_220BAD880(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchLocation;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t SearchResultsModel.__allocating_init()()
{
  v0 = swift_allocObject();
  SearchResultsModel.init()();
  return v0;
}

uint64_t SearchResultsModel.init()()
{
  v1 = v0;
  v2 = sub_220BCC020();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220BCDA30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = v10;
  v11 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__deviceExpertResult;
  v12 = sub_220BCC2E0();
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__supportArticles) = v10;
  *(v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__supportFlows) = v10;
  v13 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchPerformedDebouncer;
  sub_220B55458(0, &qword_2812C0900);
  sub_220BCDE10();
  sub_220BCD920();
  swift_allocObject();
  *(v1 + v13) = sub_220BCD900();
  v14 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_tipActionHandler);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_topicActionHandler);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_supportArticleActionHandler);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_supportFlowActionHandler);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_supportArticleURLHandler);
  *v18 = 0;
  v18[1] = 0;
  *(v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchQuery) = 0;
  v19 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchQueryCompleted);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultCollectionResolver);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultUserGuideResolver);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultEligibilityFilter);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultScrollHandler);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsUpdated);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsTipsUpdated);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsTopicsUpdated);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsSupportArticlesUpdated);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsSupportFlowsUpdated);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsDeviceExpertResponseUpdated);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsSeeAllHandler);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultSelected);
  v32 = type metadata accessor for TPSAppSearchQuery();
  *v31 = 0;
  v31[1] = 0;
  v33 = objc_allocWithZone(v32);
  v34 = OBJC_IVAR___TPSAppSearchQuery__searchTerm;
  sub_220BCD9F0();
  (*(v7 + 32))(&v33[v34], v9, v6);
  v35 = OBJC_IVAR___TPSAppSearchQuery_origin;
  *&v33[OBJC_IVAR___TPSAppSearchQuery_origin] = 0;
  swift_beginAccess();
  (*(v7 + 8))(&v33[v34], v6);
  sub_220BCD9F0();
  swift_endAccess();
  swift_beginAccess();
  *&v33[v35] = 0;
  sub_220BCC010();
  v36 = sub_220BCC000();
  v38 = v37;
  (*(v3 + 8))(v5, v2);
  v39 = &v33[OBJC_IVAR___TPSAppSearchQuery_identifier];
  *v39 = v36;
  v39[1] = v38;
  v42.receiver = v33;
  v42.super_class = v32;
  v41 = objc_msgSendSuper2(&v42, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77EE0);
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__searchQuerySubject) = sub_220BCC450();
  *(v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__searchQueryTask) = 0;
  *(v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__cancellables) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__currentSearchQuery[0]) = 0;
  *(v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__lastTipResults) = 0;
  *(v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_queryCount) = 0;
  *(v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchLocation) = 0;
  sub_220BCC330();
  sub_220BAE70C();
  return v1;
}

uint64_t sub_220BADE48()
{
  v1 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_queryCount;
  swift_beginAccess();
  *(v0 + v1) = 0;
  result = sub_220BADF70();
  if (*(v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__lastTipResults))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
    sub_220BCC2F0();
  }

  return result;
}

uint64_t sub_220BADF70()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v27 - v6;
  swift_getKeyPath();
  v32 = v0;
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  v32 = v0;
  swift_getKeyPath();
  sub_220BCC320();

  swift_beginAccess();
  v8 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];

  v9 = (v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsTipsUpdated);
  swift_beginAccess();
  v10 = *v9;
  if (*v9)
  {
    swift_getKeyPath();
    v31 = v1;

    sub_220BCC300();

    v10(v11);
    sub_220B3A128(v10);
    v8 = MEMORY[0x277D84F90];
  }

  v31 = v1;
  swift_getKeyPath();
  sub_220BCC310();

  swift_getKeyPath();
  v31 = v1;
  sub_220BCC300();

  v31 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  swift_beginAccess();
  *(v1 + 24) = v8;

  v12 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsTopicsUpdated);
  swift_beginAccess();
  v13 = *v12;
  if (*v12)
  {
    swift_getKeyPath();
    v30 = v1;

    sub_220BCC300();

    v13(v14);
    sub_220B3A128(v13);
    v8 = MEMORY[0x277D84F90];
  }

  v30 = v1;
  swift_getKeyPath();
  sub_220BCC310();

  swift_getKeyPath();
  v30 = v1;
  sub_220BCC300();

  v30 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v15 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__supportArticles;
  swift_beginAccess();
  *(v1 + v15) = v8;

  v16 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsSupportArticlesUpdated);
  swift_beginAccess();
  v17 = *v16;
  if (*v16)
  {
    swift_getKeyPath();
    v29 = v1;

    sub_220BCC300();

    v17(v18);
    sub_220B3A128(v17);
    v8 = MEMORY[0x277D84F90];
  }

  v29 = v1;
  swift_getKeyPath();
  sub_220BCC310();

  swift_getKeyPath();
  v29 = v1;
  sub_220BCC300();

  v29 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v19 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__supportFlows;
  swift_beginAccess();
  *(v1 + v19) = v8;

  v20 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsSupportFlowsUpdated);
  swift_beginAccess();
  v21 = *v20;
  if (*v20)
  {
    swift_getKeyPath();
    v28 = v1;

    sub_220BCC300();

    v21(v22);
    sub_220B3A128(v21);
  }

  v28 = v1;
  swift_getKeyPath();
  sub_220BCC310();

  v23 = sub_220BCC2E0();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  v24 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__deviceExpertResult;
  swift_beginAccess();
  sub_220B462DC(v1 + v24, v5, &qword_27CF773A8);
  LOBYTE(v24) = sub_220BB3AEC(v5, v7);
  sub_220B463F4(v5, &qword_27CF773A8);
  if (v24)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v27[-2] = v1;
    v27[-1] = v7;
    v27[1] = v1;
    sub_220BCC2F0();
  }

  else
  {
    sub_220B462DC(v7, v5, &qword_27CF773A8);
    sub_220BA6F84(v5);
  }

  return sub_220B463F4(v7, &qword_27CF773A8);
}

uint64_t sub_220BAE70C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76ED0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v26 = sub_220BCDF00();
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77F10);
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v21 = &v20 - v6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77F18);
  v31 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v22 = &v20 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77F20);
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  MEMORY[0x28223BE20](v8);
  v23 = &v20 - v10;
  swift_getKeyPath();
  v29 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel___observationRegistrar;
  v34 = v0;
  v30 = sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  v34 = *(v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__searchQuerySubject);

  sub_220BCDEF0();
  v11 = [objc_opt_self() mainRunLoop];
  v35 = v11;
  v12 = sub_220BCDEE0();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77EE0);
  sub_220B55458(0, &qword_2812C0868);
  sub_220B43830(&qword_2812C0AD0, &qword_27CF77EE0);
  sub_220B550E4();
  v13 = v21;
  sub_220BCC550();
  sub_220B463F4(v3, &qword_27CF76ED0);

  (*(v24 + 8))(v5, v26);

  sub_220B43830(&qword_2812C0AE8, &qword_27CF77F10);
  v14 = v22;
  v15 = v25;
  sub_220BCC520();
  (*(v27 + 8))(v13, v15);
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for TPSAppSearchQuery();
  sub_220B43830(&qword_2812C0AF8, &qword_27CF77F18);
  v16 = v23;
  v17 = v28;
  sub_220BCC500();

  (*(v31 + 8))(v14, v17);
  swift_allocObject();
  swift_weakInit();
  sub_220B43830(&qword_2812C0B08, &qword_27CF77F20);
  v18 = v32;
  sub_220BCC560();

  (*(v33 + 8))(v16, v18);
  swift_getKeyPath();
  v34 = v0;
  sub_220BCC300();

  v34 = v0;
  swift_getKeyPath();
  sub_220BCC320();

  swift_beginAccess();
  sub_220BCC400();
  swift_endAccess();

  v34 = v0;
  swift_getKeyPath();
  sub_220BCC310();
}

uint64_t sub_220BAEE24(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_220BCDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  v9 = *a2;
  if (v8)
  {
    v10 = OBJC_IVAR___TPSAppSearchQuery__searchTerm;
    swift_beginAccess();
    (*(v5 + 16))(v7, v8 + v10, v4);
    v11 = sub_220BCDA10();
    v13 = v12;
    (*(v5 + 8))(v7, v4);
    if (!v9)
    {
      if (!v13)
      {
        goto LABEL_17;
      }

LABEL_14:
      v19 = 0;
LABEL_19:

      return v19 & 1;
    }
  }

  else
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    v13 = 0;
    v11 = 0;
  }

  v14 = OBJC_IVAR___TPSAppSearchQuery__searchTerm;
  swift_beginAccess();
  (*(v5 + 16))(v7, v9 + v14, v4);
  v15 = sub_220BCDA10();
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  if (v13)
  {
    if (v17)
    {
      if (v11 == v15 && v13 == v17)
      {

        v19 = 1;
      }

      else
      {
        v19 = sub_220BCE130();
      }

      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (v17)
  {
    v19 = 0;
    goto LABEL_19;
  }

LABEL_17:
  v19 = 1;
  return v19 & 1;
}

id sub_220BAF038@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = sub_220BCDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (!*a1)
  {
    goto LABEL_8;
  }

  v9 = OBJC_IVAR___TPSAppSearchQuery__searchTerm;
  v17 = v8;
  swift_beginAccess();
  (*(v5 + 16))(v7, v17 + v9, v4);
  v10 = sub_220BCDA10();
  v12 = v11;
  (*(v5 + 8))(v7, v4);

  v13 = v17;
  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    *a2 = v17;

    return v13;
  }

  else
  {
LABEL_8:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_220BADF70();
    }

    *a2 = 0;
  }

  return result;
}

uint64_t sub_220BAF1EC(char **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SearchResultsModel.query(searchQuery:)(v1);
  }

  return result;
}

uint64_t SearchResultsModel.query(searchQuery:)(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E08);
  MEMORY[0x28223BE20](v4 - 8);
  v29[0] = v29 - v5;
  v6 = sub_220BCDA30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220BCD630();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220BCD610();
  strcpy(v30, "SearchTerm: ");
  HIBYTE(v30[6]) = 0;
  v30[7] = -5120;
  v14 = OBJC_IVAR___TPSAppSearchQuery__searchTerm;
  swift_beginAccess();
  (*(v7 + 16))(v9, &a1[v14], v6);
  v15 = sub_220BCDA10();
  v17 = v16;
  (*(v7 + 8))(v9, v6);
  MEMORY[0x223D929B0](v15, v17);

  sub_220BCDA50();

  (*(v11 + 8))(v13, v10);
  v18 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_queryCount;
  result = swift_beginAccess();
  v20 = *(v2 + v18);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v18) = v22;
    swift_getKeyPath();
    v29[1] = v2;
    sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
    sub_220BCC300();

    if (*(v2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__searchQueryTask))
    {

      sub_220BCDD60();
    }

    v23 = sub_220BCDD40();
    v24 = v29[0];
    (*(*(v23 - 8) + 56))(v29[0], 1, 1, v23);
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = a1;
    v26[5] = v25;
    v27 = a1;
    v28 = sub_220BA5594(0, 0, v24, &unk_220BD4EE0, v26);
    return sub_220BACE3C(v28);
  }

  return result;
}

void *sub_220BAF640(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  swift_beginAccess();
  v5 = *(v2 + 16);
  if (v5 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_220BCDF70())
  {

    if (!i)
    {
      break;
    }

    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D92D80](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 identifier];
      v12 = sub_220BCDBA0();
      v14 = v13;

      if (v12 == a1 && v14 == a2)
      {

LABEL_19:

        return v9;
      }

      v16 = sub_220BCE130();

      if (v16)
      {
        goto LABEL_19;
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_17:

  return 0;
}

void *sub_220BAF840(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  swift_beginAccess();
  v4 = *(v2 + 24);
  if (v4 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_220BCDF70())
  {

    if (!i)
    {
      break;
    }

    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D92D80](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = sub_220BCD8D0();
      if (v12)
      {
        if (v11 == a1 && v12 == a2)
        {

LABEL_17:

          return v9;
        }

        v7 = sub_220BCE130();

        if (v7)
        {
          goto LABEL_17;
        }
      }

      ++v6;
      if (v10 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t sub_220BAFA1C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  v4 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__supportArticles;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
LABEL_21:
    v6 = sub_220BCDF70();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D92D80](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_15;
        }
      }

      if (sub_220BCD830() == a1 && v10 == a2)
      {

LABEL_18:

        return v8;
      }

      v11 = sub_220BCE130();

      if (v11)
      {
        goto LABEL_18;
      }

      ++v7;
    }

    while (v9 != v6);
  }

  return 0;
}

void *sub_220BAFC04(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v19 = v2;
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  v5 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__supportFlows;
  swift_beginAccess();
  v6 = *(v19 + v5);
  if (v6 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_220BCDF70())
  {

    if (!i)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223D92D80](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v9 identifier];
      v13 = sub_220BCDBA0();
      v15 = v14;

      if (v13 == a1 && v15 == a2)
      {

LABEL_19:

        return v10;
      }

      v17 = sub_220BCE130();

      if (v17)
      {
        goto LABEL_19;
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_17:

  return 0;
}

void sub_220BAFE0C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_18;
  }

  v7 = sub_220BAF640(a1, a2);
  if (v7)
  {
    v8 = v7;
    v9 = (v3 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_tipActionHandler);
    swift_beginAccess();
    v10 = *v9;
    if (*v9)
    {

      v10(v8);
      sub_220B3A128(v10);
    }

    v11 = 1;
    goto LABEL_19;
  }

  v12 = sub_220BAF840(a1, a2);
  if (v12)
  {
    v13 = v12;
    v14 = (v3 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_topicActionHandler);
    swift_beginAccess();
    v15 = *v14;
    if (*v14)
    {

      v15(v13);
      sub_220B3A128(v15);
    }

    v11 = 2;
    goto LABEL_19;
  }

  v16 = sub_220BAFA1C(a1, a2);
  if (v16)
  {
    v17 = v16;
    v18 = (v3 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_supportArticleActionHandler);
    swift_beginAccess();
    v19 = *v18;
    if (*v18)
    {

      v19(v17);
      sub_220B3A128(v19);
    }

    v11 = 3;
    goto LABEL_19;
  }

  v20 = sub_220BAFC04(a1, a2);
  if (!v20)
  {
LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  v21 = v20;
  v22 = (v3 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_supportFlowActionHandler);
  swift_beginAccess();
  v23 = *v22;
  if (*v22)
  {

    v23(v21);
    sub_220B3A128(v23);
  }

  v11 = 4;
LABEL_19:
  *a3 = v11;
}

uint64_t SearchResultsModel.deinit()
{

  sub_220B463F4(v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__deviceExpertResult, &qword_27CF773A8);

  sub_220B3A128(*(v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_tipActionHandler));
  sub_220B3A128(*(v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_topicActionHandler));
  sub_220B3A128(*(v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_supportArticleActionHandler));
  sub_220B3A128(*(v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_supportFlowActionHandler));
  sub_220B3A128(*(v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_supportArticleURLHandler));

  sub_220B3A128(*(v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchQueryCompleted));
  sub_220B3A128(*(v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultCollectionResolver));
  sub_220B3A128(*(v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultUserGuideResolver));
  sub_220B3A128(*(v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultEligibilityFilter));
  sub_220B3A128(*(v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultScrollHandler));
  sub_220B3A128(*(v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsUpdated));
  sub_220B3A128(*(v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsTipsUpdated));
  sub_220B3A128(*(v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsTopicsUpdated));
  sub_220B3A128(*(v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsSupportArticlesUpdated));
  sub_220B3A128(*(v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsSupportFlowsUpdated));
  sub_220B3A128(*(v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsDeviceExpertResponseUpdated));
  sub_220B3A128(*(v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsSeeAllHandler));
  sub_220B3A128(*(v0 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultSelected));

  v1 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel___observationRegistrar;
  v2 = sub_220BCC340();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SearchResultsModel.__deallocating_deinit()
{
  SearchResultsModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_220BB02E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SearchResultsModel();
  result = sub_220BCDFC0();
  *a1 = result;
  return result;
}

uint64_t sub_220BB0328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = sub_220BCDCE0();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E08);
  v5[17] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[18] = v7;
  *v7 = v5;
  v7[1] = sub_220BB0458;

  return sub_220B4A3A0((v5 + 2));
}

uint64_t sub_220BB0458()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_220BB074C;
  }

  else
  {
    v2 = sub_220BB056C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_220BB056C()
{
  v1 = v0[17];
  v17 = v1;
  v2 = v0[12];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = sub_220BCDD40();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v7 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_220BCDD00();
  v16 = v5;
  v8 = v2;

  v9 = v3;
  v10 = v4;
  v11 = sub_220BCDCF0();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v7;
  v12[5] = v3;
  v12[6] = v4;
  v12[7] = v5;
  v12[8] = v8;

  sub_220BA5594(0, 0, v17, &unk_220BD5260, v12);

  v14 = v0[1];

  return v14();
}

uint64_t sub_220BB074C()
{
  v1 = *(v0 + 152);
  *(v0 + 88) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DA8);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 112);

    (*(v4 + 8))(v3, v5);
    v6 = *(v0 + 88);
  }

  else
  {

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v8 = *(v0 + 152);
    if (Strong)
    {
      sub_220BADF70();

      goto LABEL_7;
    }

    v6 = *(v0 + 152);
  }

LABEL_7:

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_220BB0888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[40] = a7;
  v8[41] = a8;
  v8[38] = a5;
  v8[39] = a6;
  v8[37] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A8);
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  sub_220BCDD00();
  v8[44] = sub_220BCDCF0();
  v10 = sub_220BCDCB0();

  return MEMORY[0x2822009F8](sub_220BB096C, v10, v9);
}

uint64_t sub_220BB096C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_30;
  }

  v2 = Strong;
  v3 = v0[38];
  v4 = v3;
  sub_220BAD538(v3);
  if (v3)
  {
    v5 = sub_220BCD740();
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v53 = v0[39];
  v54 = v4;
  if (!v53)
  {
    v6 = MEMORY[0x277D84F90];
    if (v0[40])
    {
      goto LABEL_7;
    }

LABEL_9:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v6 = sub_220BCD740();
  if (!v0[40])
  {
    goto LABEL_9;
  }

LABEL_7:
  v7 = sub_220BCD740();
LABEL_10:
  sub_220BBD1BC(v6);
  sub_220BBD1BC(v7);
  v8 = sub_220BB11BC(v5);
  v55 = v9;
  v11 = v10;
  v13 = v12;

  swift_beginAccess();

  v15 = sub_220B9DA2C(v14, v8);

  v16 = v11;
  if (v15)
  {
    sub_220BA5E68(v8);
  }

  else
  {
    swift_getKeyPath();
    v17 = swift_task_alloc();
    *(v17 + 16) = v2;
    *(v17 + 24) = v8;
    v0[32] = v2;
    sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
    sub_220BCC2F0();
  }

  swift_beginAccess();

  v19 = sub_220B9DCA8(v18, v55);

  if (v19)
  {
    sub_220BA671C(v55);
  }

  else
  {
    swift_getKeyPath();
    v20 = swift_task_alloc();
    *(v20 + 16) = v2;
    *(v20 + 24) = v55;
    v0[33] = v2;
    sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
    sub_220BCC2F0();
  }

  swift_getKeyPath();
  v21 = swift_task_alloc();
  *(v21 + 16) = v2;
  *(v21 + 24) = v16;
  v0[34] = v2;
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC2F0();

  swift_beginAccess();

  v23 = sub_220B9DA18(v22, v13);

  if (v23)
  {
    sub_220BA7EF0(v13);
  }

  else
  {
    swift_getKeyPath();
    v24 = swift_task_alloc();
    *(v24 + 16) = v2;
    *(v24 + 24) = v13;
    v0[35] = v2;
    sub_220BCC2F0();
    swift_bridgeObjectRelease_n();
  }

  v25 = v0[43];
  if (v53)
  {
    sub_220BCD6B0();
  }

  else
  {
    v26 = sub_220BCC2E0();
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  }

  v28 = v0[42];
  v27 = v0[43];
  v29 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__deviceExpertResult;
  swift_beginAccess();
  sub_220B462DC(v2 + v29, v28, &qword_27CF773A8);
  LOBYTE(v29) = sub_220BB3AEC(v28, v27);
  sub_220B463F4(v28, &qword_27CF773A8);
  v30 = v0[43];
  if (v29)
  {
    swift_getKeyPath();
    v31 = swift_task_alloc();
    *(v31 + 16) = v2;
    *(v31 + 24) = v30;
    v0[36] = v2;
    sub_220BCC2F0();
  }

  else
  {
    v32 = v0[42];
    sub_220B462DC(v0[43], v32, &qword_27CF773A8);
    sub_220BA6F84(v32);
  }

  v33 = v0[41];
  sub_220B463F4(v0[43], &qword_27CF773A8);
  v34 = v33;
  sub_220BAD338(v33);
  v35 = (v2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchQueryCompleted);
  swift_beginAccess();
  v36 = *v35;
  if (*v35)
  {

    v36(v37);
    sub_220B3A128(v36);
  }

  v38 = (v2 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsUpdated);
  swift_beginAccess();
  v39 = *v38;
  if (*v38)
  {

    v39(v40);
    sub_220B3A128(v39);
  }

  v42 = v0[40];
  v41 = v0[41];
  v44 = v0[38];
  v43 = v0[39];
  swift_beginAccess();
  v45 = swift_allocObject();
  v45[2] = v2;
  v45[3] = v44;
  v45[4] = v43;
  v45[5] = v42;
  v45[6] = v41;
  v0[6] = sub_220BB59E4;
  v0[7] = v45;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_220B61C68;
  v0[5] = &block_descriptor_280;
  v46 = _Block_copy(v0 + 2);
  v47 = v42;
  v48 = v41;

  v49 = v54;
  v50 = v43;
  sub_220BCD910();

  _Block_release(v46);

LABEL_30:

  v51 = v0[1];

  return v51();
}

unint64_t sub_220BB11BC(unint64_t a1)
{
  v39 = MEMORY[0x277D84F90];
  v40 = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D84F90];
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_76:
    v4 = sub_220BCDF70();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultCollectionResolver);
  v6 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultUserGuideResolver);
  v29 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultEligibilityFilter);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v32 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  v34 = MEMORY[0x277D84F90];
  v30 = v5;
  v31 = v6;
  while (2)
  {
    while (2)
    {
      v35 = v8;
      while (1)
      {
        for (i = v7; ; ++i)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x223D92D80](i, a1);
          }

          else
          {
            if (i >= *(v3 + 16))
            {
              goto LABEL_75;
            }

            v10 = *(a1 + 8 * i + 32);
          }

          v11 = v10;
          v7 = i + 1;
          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

          v1 = v10;
          SearchResult.Item.category.getter(&v36);
          if (v36)
          {
            break;
          }

          if (v7 == v4)
          {
            return v32;
          }
        }

        if (v36 > 2u)
        {
          break;
        }

        if (v36 == 1)
        {
          v12 = *v29;
          if (!*v29)
          {
            goto LABEL_41;
          }

          v13 = sub_220BCD6D0();
          v1 = v12(v13);

          sub_220B3A128(v12);
          if (!v1)
          {

            v5 = v30;
            v6 = v31;
            if (v7 != v4)
            {
              continue;
            }

            return v32;
          }

          if (v32 >> 62)
          {
            v14 = sub_220BCDF70();
          }

          else
          {
            v14 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v5 = v30;
          v6 = v31;
          if (v14 > 49)
          {

LABEL_41:
            if (v7 != v4)
            {
              continue;
            }

            return v32;
          }

          v15 = v1;
          v1 = &v40;
          MEMORY[0x223D929F0]();
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_220BCDC80();
            v6 = v31;
          }

          sub_220BCDC90();

          v32 = v40;
          if (v7 == v4)
          {
            return v32;
          }
        }

        else
        {
          v16 = *v6;
          if (!*v6)
          {

            if (v7 != v4)
            {
              continue;
            }

            return v32;
          }

          v17 = sub_220BCD6E0();
          v1 = v16(v17);

          if (!v1)
          {

            sub_220B3A128(v16);
            v5 = v30;
            v6 = v31;
            if (v7 != v4)
            {
              continue;
            }

            return v32;
          }

          sub_220BCD6E0();
          sub_220BCD6D0();
          v18 = objc_allocWithZone(sub_220BCD8F0());
          v19 = sub_220BCD890();
          sub_220BCD710();
          sub_220BCD8C0();
          sub_220BCD700();
          v1 = v19;
          sub_220BCD8B0();
          sub_220B3A128(v16);
          if (v34 >> 62)
          {
            v20 = sub_220BCDF70();
          }

          else
          {
            v20 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v6 = v31;
          if (v20 >= 50)
          {
          }

          else
          {
            v21 = v19;
            v1 = &v39;
            MEMORY[0x223D929F0]();
            if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_220BCDC80();
              v6 = v31;
            }

            sub_220BCDC90();

            v34 = v39;
          }

          v5 = v30;
          if (v7 == v4)
          {
            return v32;
          }
        }
      }

      if (v36 != 3)
      {
        v24 = *v5;
        if (*v5)
        {

          v25 = sub_220BCD6D0();
          v1 = v24(v25);

          sub_220B3A128(v24);
          if (!v1)
          {

            v5 = v30;
            v6 = v31;
            goto LABEL_65;
          }

          v6 = v31;
          if (v33 >> 62)
          {
            v26 = sub_220BCDF70();
          }

          else
          {
            v26 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v5 = v30;
          if (v26 <= 49)
          {
            v27 = v1;
            v1 = &v37;
            MEMORY[0x223D929F0]();
            if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_220BCDC80();
              v6 = v31;
            }

            sub_220BCDC90();

            v33 = v37;
LABEL_65:
            v8 = v35;
            if (v7 != v4)
            {
              continue;
            }

            return v32;
          }
        }

        goto LABEL_65;
      }

      break;
    }

    sub_220BCD6D0();
    sub_220BCD870();
    swift_allocObject();
    v22 = sub_220BCD820();
    sub_220BCD710();
    sub_220BCD860();
    sub_220BCD700();
    v1 = v22;
    sub_220BCD850();
    if (v35 >> 62)
    {
      if (sub_220BCDF70() < 50)
      {
        goto LABEL_51;
      }

LABEL_68:

      v8 = v35;
      goto LABEL_69;
    }

    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 50)
    {
      goto LABEL_68;
    }

LABEL_51:

    v1 = &v38;
    MEMORY[0x223D929F0](v23);
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_220BCDC80();
      v6 = v31;
    }

    sub_220BCDC90();

    v8 = v38;
LABEL_69:
    if (v7 != v4)
    {
      continue;
    }

    return v32;
  }
}

uint64_t sub_220BB1838(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E08);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v19 - v12;
  sub_220BB1AB0(a2, a5);
  swift_getKeyPath();
  v19[1] = a1;
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  v14 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__deviceExpertResult;
  swift_beginAccess();
  sub_220B462DC(a1 + v14, v13, &qword_27CF773A8);
  v15 = sub_220BCC2E0();
  LOBYTE(v14) = (*(*(v15 - 8) + 48))(v13, 1, v15) != 1;
  sub_220B463F4(v13, &qword_27CF773A8);
  sub_220BCDD10();
  v16 = sub_220BCDD40();
  (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v14;
  sub_220BA5594(0, 0, v10, &unk_220BD5270, v17);
}

uint64_t sub_220BB1AB0(void *a1, uint64_t a2)
{
  v4 = sub_220BCD550();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220BCD580();
  v34 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220BCD560();
  v12 = *(v11 - 8);
  result = MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v29 = *(a2 + OBJC_IVAR___TPSAppSearchQuery_identifier);
    v33 = v5;
    v16 = *(a2 + OBJC_IVAR___TPSAppSearchQuery_identifier + 8);
    v31 = v4;
    v17 = OBJC_IVAR___TPSAppSearchQuery_origin;
    swift_beginAccess();
    v18 = *(a2 + v17);
    sub_220B55458(0, &qword_2812C0900);
    (*(v12 + 104))(v15, *MEMORY[0x277D851A8], v11);
    v19 = a1;
    v32 = v8;
    v20 = v19;

    v30 = sub_220BCDE40();
    (*(v12 + 8))(v15, v11);
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    v23 = v29;
    v22[2] = v20;
    v22[3] = v23;
    v22[4] = v16;
    v22[5] = v18;
    v22[6] = v21;
    aBlock[4] = sub_220BB573C;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_220B61C68;
    aBlock[3] = &block_descriptor_254;
    v24 = _Block_copy(aBlock);
    v25 = v20;

    sub_220BCD570();
    v35 = MEMORY[0x277D84F90];
    sub_220BB3EDC(&qword_2812C0968, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77168);
    sub_220B43830(&qword_2812C0950, &qword_27CF77168);
    v26 = v31;
    sub_220BCDF50();
    v27 = v30;
    MEMORY[0x223D92BC0](0, v10, v7, v24);
    _Block_release(v24);

    (*(v33 + 8))(v7, v26);
    (*(v34 + 8))(v10, v32);
  }

  return result;
}

Swift::Void __swiftcall SearchResultsModel.updateSearchQuery(text:identifier:)(Swift::String text, Swift::String_optional identifier)
{
  v3 = v2;
  object = identifier.value._object;
  v26[0] = identifier.value._countAndFlagsBits;
  v5 = text._object;
  countAndFlagsBits = text._countAndFlagsBits;
  v7 = sub_220BCDA30();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchQuery;
  swift_beginAccess();
  v12 = *(v3 + v11);
  if (v12)
  {
    v13 = OBJC_IVAR___TPSAppSearchQuery__searchTerm;
    swift_beginAccess();
    (*(v8 + 16))(v10, v12 + v13, v7);
    v14 = sub_220BCDA10();
    v16 = v15;
    (*(v8 + 8))(v10, v7);
    if (v14 != countAndFlagsBits)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = 0xE000000000000000;
    if (countAndFlagsBits)
    {
      goto LABEL_7;
    }
  }

  if (v16 == v5)
  {

    goto LABEL_8;
  }

LABEL_7:
  v17 = sub_220BCE130();

  if (v17)
  {
LABEL_8:
    swift_getKeyPath();
    v26[3] = v3;
    sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
    sub_220BCC300();

    v18 = *(v3 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__lastTipResults);
    if (v18)
    {
      v19 = *(v3 + v11);
      if (v19)
      {
        v20 = v18;
        v21 = v19;
        sub_220BB1AB0(v18, v21);
      }
    }

    return;
  }

  v22 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_queryCount;
  swift_beginAccess();
  *(v3 + v22) = 0;
  sub_220BADF70();
  if (*(v3 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__lastTipResults))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v26[-2] = v3;
    v26[-1] = 0;
    v26[2] = v3;
    sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
    sub_220BCC2F0();
  }

  v24 = objc_allocWithZone(type metadata accessor for TPSAppSearchQuery());

  v25 = TPSAppSearchQuery.init(searchTerm:origin:identifier:)(countAndFlagsBits, v5, 0, v26[0], object);
  sub_220BA9234(v25);
}

uint64_t sub_220BB22D0()
{
  sub_220BCD9D0();
  swift_allocObject();
  sub_220BCD9C0();
  sub_220BCD5F0();

  v1 = *(v0 + 8);

  return v1();
}

void sub_220BB2360(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = sub_220BCD740();
  v6 = v5;
  v7 = v5 >> 62;
  if (v5 >> 62)
  {
    goto LABEL_49;
  }

  v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 >= 0xA)
  {
    v9 = 10;
  }

  else
  {
    v9 = v8;
  }

  if (v8 < v9)
  {
LABEL_63:
    __break(1u);
  }

  else
  {
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0 && v9)
      {
        sub_220BCD730();

        v10 = 0;
        do
        {
          v11 = v10 + 1;
          sub_220BCDFD0();
          v10 = v11;
        }

        while (v9 != v11);
      }

      else
      {
      }

      if (v7)
      {
        v15 = sub_220BCE0B0();
        v14 = v16;
        v12 = v17;
        v19 = v18;

        v13 = v15;
        v9 = v19 >> 1;
      }

      else
      {
        v12 = 0;
        v13 = v6 & 0xFFFFFFFFFFFFFF8;
        v14 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      }

      v6 = MEMORY[0x277D84F90];
      v48 = MEMORY[0x277D84F90];
      v46 = v13;
      swift_unknownObjectRetain();
      v47 = a4;
      if (v9 == v12)
      {
        break;
      }

      v28 = v9 - v12;
      if (v9 <= v12)
      {
        v29 = v12;
      }

      else
      {
        v29 = v9;
      }

      v7 = v29 - v12;
      v30 = (v14 + 8 * v12);
      while (v7)
      {
        v31 = *v30;
        v32 = sub_220BCDB70();
        v33 = sub_220BCD750();
        sub_220BCD670();

        v34 = sub_220BCDB70();

        if (a4 && a4 != 2 && a4 != 1)
        {
          goto LABEL_54;
        }

        sub_220BCDBA0();
        v35 = objc_opt_self();
        v36 = sub_220BCDB70();

        v37 = [v35 eventWithSearchID:v32 searchTerm:v34 invocationMethod:v36];

        sub_220BCD6D0();
        v38 = sub_220BCDB70();

        [v37 setTipID_];

        sub_220BCD6F0();
        if (v39)
        {
          v40 = sub_220BCDB70();
        }

        else
        {
          v40 = 0;
        }

        [v37 setCorrelationID_];

        sub_220BCD6E0();
        v41 = sub_220BCDB70();

        [v37 setCollectionID_];

        sub_220BCD720();
        [v37 setRelevance_];
        a4 = v47;
        if (v6 >> 62)
        {
          if (__OFADD__(sub_220BCDF70(), 1))
          {
            goto LABEL_48;
          }
        }

        else if (__OFADD__(*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10), 1))
        {
          goto LABEL_48;
        }

        [v37 setResultOrder_];
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          swift_beginAccess();
        }

        v42 = sub_220BCDB70();

        [v37 setLocation_];

        v43 = v37;
        MEMORY[0x223D929F0]();
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_220BCDC80();
        }

        sub_220BCDC90();

        v6 = v48;
        --v7;
        ++v30;
        if (!--v28)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v44 = sub_220BCDF70();
      if (sub_220BCDF70() < 0)
      {
        __break(1u);
        goto LABEL_51;
      }

      if (v44 >= 0xA)
      {
        v45 = 10;
      }

      else
      {
        v45 = v44;
      }

      if (v44 >= 0)
      {
        v9 = v45;
      }

      else
      {
        v9 = 10;
      }

      if (sub_220BCDF70() < v9)
      {
        goto LABEL_63;
      }
    }

LABEL_16:
    swift_unknownObjectRelease_n();
    v48 = v6;
    if (!(v6 >> 62))
    {
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

LABEL_51:
    if (sub_220BCDF70())
    {
      goto LABEL_22;
    }

LABEL_18:
    v20 = sub_220BCDB70();
    v21 = sub_220BCD750();
    sub_220BCD670();

    v22 = sub_220BCDB70();

    if (v47 >= 3)
    {
      while (1)
      {
LABEL_54:
        sub_220BCE160();
        __break(1u);
      }
    }

    sub_220BCDBA0();
    v23 = objc_opt_self();
    v24 = sub_220BCDB70();

    v25 = [v23 eventWithSearchID:v20 searchTerm:v22 invocationMethod:v24];

    MEMORY[0x223D929F0]();
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_220BCDC80();
    }

    sub_220BCDC90();
    v6 = v48;
LABEL_22:
    v26 = [objc_opt_self() sharedInstance];
    if (v6 >> 62)
    {
      sub_220B55458(0, &qword_27CF77F08);

      sub_220BCE090();
    }

    else
    {

      sub_220BCE140();
      sub_220B55458(0, &qword_27CF77F08);
    }

    sub_220B55458(0, &qword_27CF77F08);
    v27 = sub_220BCDC60();

    [v26 logAnalyticsEvents_];
  }
}

void sub_220BB2B44(uint64_t a1, void *a2)
{
  v4 = sub_220BCDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220BCDB70();
  v9 = OBJC_IVAR___TPSAppSearchQuery__searchTerm;
  swift_beginAccess();
  (*(v5 + 16))(v7, a1 + v9, v4);
  sub_220BCDA10();
  (*(v5 + 8))(v7, v4);
  v10 = sub_220BCDB70();

  v11 = [a2 identifier];
  if (!v11)
  {
    sub_220BCDBA0();
    v11 = sub_220BCDB70();
  }

  v12 = [a2 collectionIdentifiers];
  if (v12)
  {
    v13 = v12;
    v14 = sub_220BCDC70();

    if (*(v14 + 16))
    {
    }
  }

  v15 = objc_opt_self();
  v16 = sub_220BCDB70();

  v17 = [a2 correlationID];
  v18 = [v15 eventWithSearchID:v8 searchTerm:v10 tipID:v11 collectionID:v16 correlationID:v17];

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
  }

  v19 = sub_220BCDB70();

  [v18 setLocation_];

  v20 = [objc_opt_self() sharedInstance];
  [v20 logAnalyticsEvent_];
}

void sub_220BB2F40(uint64_t a1)
{
  v2 = sub_220BCDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_220BCDB70();
  v8 = OBJC_IVAR___TPSAppSearchQuery__searchTerm;
  swift_beginAccess();
  (*(v3 + 16))(v5, a1 + v8, v2);
  sub_220BCDA10();
  (*(v3 + 8))(v5, v2);
  v9 = sub_220BCDB70();

  sub_220BCD880();
  v10 = sub_220BCDB70();

  sub_220BCD8E0();
  v11 = sub_220BCDB70();

  sub_220BCD8E0();
  v12 = sub_220BCDB70();

  v13 = [v6 eventWithSearchID:v7 searchTerm:v9 topicID:v10 bookID:v11 bookSlug:v12];

  v14 = [objc_opt_self() sharedInstance];
  [v14 logAnalyticsEvent_];
}

void sub_220BB3178(uint64_t a1, void *a2)
{
  v4 = sub_220BCDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220BCDB70();
  v9 = OBJC_IVAR___TPSAppSearchQuery__searchTerm;
  swift_beginAccess();
  (*(v5 + 16))(v7, a1 + v9, v4);
  sub_220BCDA10();
  (*(v5 + 8))(v7, v4);
  v10 = sub_220BCDB70();

  v11 = sub_220BCDB70();
  v12 = [a2 identifier];
  if (!v12)
  {
    sub_220BCDBA0();
    v12 = sub_220BCDB70();
  }

  v13 = objc_opt_self();
  v14 = [a2 correlationID];
  v15 = [v13 eventWithSearchID:v8 searchTerm:v10 tipID:v11 collectionID:v12 correlationID:v14];

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
  }

  v16 = sub_220BCDB70();

  [v15 setLocation_];

  v17 = [objc_opt_self() sharedInstance];
  [v17 logAnalyticsEvent_];
}

uint64_t sub_220BB3504(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_220BB35FC;

  return v6(a1);
}

uint64_t sub_220BB35FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_220BB36F4(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return MEMORY[0x2821FCF40](v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        sub_220BCC410();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &qword_27CF77EF8;
        if (!v13)
        {
LABEL_27:
          v17 = v14;
          while (1)
          {
            v14 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v18 = *(v10 + 8 * v14);
            ++v17;
            if (v18)
            {
              v23 = (v18 - 1) & v18;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](v5, v4);
        }

        while (1)
        {
          v23 = (v13 - 1) & v13;
LABEL_32:
          sub_220BB3EDC(&qword_27CF77EF8, MEMORY[0x277CBCDA8]);

          v19 = sub_220BCDB20();
          v20 = -1 << *(a2 + 32);
          v21 = v19 & ~v20;
          if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          sub_220BB3EDC(&qword_27CF77F00, MEMORY[0x277CBCDA8]);
          while ((sub_220BCDB40() & 1) == 0)
          {
            v21 = (v21 + 1) & v22;
            if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v23;
          v5 = &qword_27CF77EF8;
          if (!v23)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_220BB39E8(v8, v7);
}

uint64_t sub_220BB39E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_220BCDF70();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_220BCDF90();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_220BB3AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_220BCC2E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77F28);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_220B462DC(a1, &v21 - v13, &qword_27CF773A8);
  sub_220B462DC(a2, &v14[v15], &qword_27CF773A8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_220B462DC(v14, v10, &qword_27CF773A8);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_220BB3EDC(&qword_27CF773E8, MEMORY[0x277D38DF8]);
      v18 = sub_220BCDB40();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_220B463F4(v14, &qword_27CF773A8);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_220B463F4(v14, &qword_27CF77F28);
    v17 = 1;
    return v17 & 1;
  }

  sub_220B463F4(v14, &qword_27CF773A8);
  v17 = 0;
  return v17 & 1;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_220BB3EDC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_220BB3F24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__lastTipResults);
  *(v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__lastTipResults) = v2;
  v4 = v2;
}

uint64_t sub_220BB3F64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_220B4EBA0;

  return sub_220BB0328(a1, v4, v5, v7, v6);
}

unint64_t sub_220BB4028()
{
  result = qword_27CF77EE8;
  if (!qword_27CF77EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77EE8);
  }

  return result;
}

unint64_t sub_220BB4080()
{
  result = qword_27CF77EF0;
  if (!qword_27CF77EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77EF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchLocation(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_220BB4250(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_220BB4298(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_220BB430C()
{
  sub_220BB5500();
  if (v0 <= 0x3F)
  {
    sub_220BCC340();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_220BB5500()
{
  if (!qword_2812C2208)
  {
    sub_220BCC2E0();
    v0 = sub_220BCDF10();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C2208);
    }
  }
}

void sub_220BB5558()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__currentSearchQuery[0]);
  *(v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__currentSearchQuery[0]) = v2;
  v4 = v2;
}

uint64_t sub_220BB55E8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__searchQuerySubject) = *(v0 + 24);
}

uint64_t sub_220BB568C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_220BB5754()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC6TipsUI18SearchResultsModel__searchQueryTask) = *(v0 + 24);
}

uint64_t sub_220BB5798(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_220B4EBA0;

  return sub_220BB3504(a1, v4);
}

uint64_t sub_220BB5850(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_220B4EA34;

  return sub_220BB3504(a1, v4);
}

uint64_t sub_220BB5908(uint64_t a1)
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
  v11[1] = sub_220B4EBA0;

  return sub_220BB0888(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_220BB5A14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_220B4EA34;

  return sub_220BB22B0(a1, v4, v5, v6);
}

void sub_220BB5B58(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    goto LABEL_2;
  }

  if (a2 == 2)
  {
  }

  else if (a2 == 3)
  {
LABEL_2:
  }
}

uint64_t objectdestroy_28Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_220BB5BEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t View.readScrollOffset(onChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v15 = a1;
  v16 = a2;
  v17 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77F30);
  v5 = sub_220BCC860();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v20 = sub_220BB5F94;
  v21 = 0;
  sub_220BCD460();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77F38);
  sub_220B43830(&qword_2812C0A28, &qword_27CF77F38);
  v9 = a3;
  sub_220BCCFD0();
  v10 = swift_allocObject();
  v11 = v16;
  *(v10 + 16) = v15;
  *(v10 + 24) = v11;
  v12 = sub_220B43830(&qword_2812C09C8, &qword_27CF77F30);
  v18 = v9;
  v19 = v12;

  swift_getWitnessTable();
  sub_220BB60F8();
  sub_220BB614C();
  sub_220BCD070();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_220BB5F94@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_220BCCCA0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220BCD1B0();
  v12[0] = 0x69566C6C6F726353;
  v12[1] = 0xEA00000000007765;
  sub_220BCCD00();
  sub_220BCC700();
  v8 = v7;
  v10 = v9;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  return result;
}

unint64_t sub_220BB60F8()
{
  result = qword_2812C0F78;
  if (!qword_2812C0F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C0F78);
  }

  return result;
}

unint64_t sub_220BB614C()
{
  result = qword_2812C0898;
  if (!qword_2812C0898)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C0898);
  }

  return result;
}

uint64_t type metadata accessor for ListAnswerView()
{
  result = qword_27CF77F48;
  if (!qword_27CF77F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220BB6228()
{
  result = type metadata accessor for ListAnswerViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_220BB62B0@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77F58);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v11 - v4;
  *v5 = sub_220BCCB20();
  *(v5 + 1) = 0x4024000000000000;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77F60);
  sub_220BB6410(v1, &v5[*(v6 + 44)]);
  sub_220BCD470();
  sub_220BCC880();
  sub_220B46540(v5, a1, &qword_27CF77F58);
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77F68) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_220BB6410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v3 = sub_220BCCAF0();
  v110 = *(v3 - 8);
  v111 = v3;
  MEMORY[0x28223BE20](v3);
  v109 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_220BCCD40();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v102 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for AttributionView();
  MEMORY[0x28223BE20](v104);
  v100 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77F70);
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v103 = &v99 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77F78);
  v123 = *(v8 - 8);
  v124 = v8;
  MEMORY[0x28223BE20](v8);
  v101 = &v99 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D78);
  MEMORY[0x28223BE20](v10 - 8);
  v122 = &v99 - v11;
  v12 = type metadata accessor for AttributionItem();
  v120 = *(v12 - 8);
  v121 = v12;
  MEMORY[0x28223BE20](v12);
  v99 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77F80);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v135 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v134 = &v99 - v17;
  v126 = type metadata accessor for ItemListView();
  MEMORY[0x28223BE20](v126);
  v19 = (&v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77F88);
  MEMORY[0x28223BE20](v116);
  v117 = &v99 - v20;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77F90);
  v21 = MEMORY[0x28223BE20](v115);
  v133 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v113 = &v99 - v24;
  MEMORY[0x28223BE20](v23);
  v137 = &v99 - v25;
  v26 = sub_220BCC2B0();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220BCC2C0();
  v30 = sub_220BCC250();
  v31 = *(v27 + 8);
  v114 = v26;
  v112 = v31;
  v31(v29, v26);
  v32 = *(v30 + 16);

  if (v32)
  {
    v33 = a1 + *(type metadata accessor for ListAnswerViewModel() + 24);
    v34 = *v33;
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);
    v37 = *(v33 + 24);
    KeyPath = swift_getKeyPath();
    LOBYTE(v150) = v36;
    LOBYTE(v149[0]) = 1;
    v128 = v36;
    v129 = KeyPath;
    v119 = 1;
    v131 = v35;
    v132 = v34;
    sub_220B5E890(v34, v35, v36);
    v130 = v37;

    v136 = sub_220BCCDB0();
    v127 = swift_getKeyPath();
    v118 = 0x10000;
  }

  else
  {
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    v136 = 0;
    v118 = 0;
    v119 = 0;
  }

  v39 = type metadata accessor for ListAnswerViewModel();
  v40 = *(a1 + v39[7]);
  *v19 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF770A8);
  swift_storeEnumTagMultiPayload();
  v41 = v126;
  v42 = a1;
  v43 = v19 + *(v126 + 20);
  *v43 = swift_getKeyPath();
  v43[8] = 0;
  v44 = (v19 + *(v41 + 24));
  v149[0] = 0;

  sub_220BCD2E0();
  v45 = v151;
  *v44 = v150;
  v44[1] = v45;
  *(v19 + *(v41 + 28)) = v40;
  LOBYTE(v44) = *(v42 + v39[5]);
  v46 = swift_getKeyPath();
  v47 = v117;
  sub_220BB71AC(v19, v117, type metadata accessor for ItemListView);
  v48 = v47 + *(v116 + 36);
  *v48 = v46;
  *(v48 + 8) = v44;
  v49 = sub_220BCCDB0();
  v50 = swift_getKeyPath();
  v51 = v47;
  v52 = v113;
  sub_220B46540(v51, v113, &qword_27CF77F88);
  v53 = (v52 + *(v115 + 36));
  *v53 = v50;
  v53[1] = v49;
  v54 = v42;
  sub_220B46540(v52, v137, &qword_27CF77F90);
  sub_220BCC2C0();
  v55 = sub_220BCC260();
  v112(v29, v114);
  v56 = *(v55 + 16);

  if (v56)
  {
    v57 = v42 + v39[8];
    v58 = *v57;
    v59 = *(v57 + 8);
    v60 = *(v57 + 16);
    v61 = *(v57 + 24);
    v62 = swift_getKeyPath();
    LOBYTE(v150) = v60;
    LOBYTE(v149[0]) = 1;
    v114 = v60;
    v115 = v62;
    v63 = 1;
    v116 = v59;
    v117 = v58;
    sub_220B5E890(v58, v59, v60);
    v126 = v61;

    v113 = sub_220BCCDB0();
    v112 = swift_getKeyPath();
    v64 = 0x10000;
  }

  else
  {
    v116 = 0;
    v117 = 0;
    v126 = 0;
    v114 = 0;
    v115 = 0;
    v112 = 0;
    v113 = 0;
    v63 = 0;
    v64 = 0;
  }

  v65 = v122;
  sub_220B462DC(v54 + v39[9], v122, &qword_27CF76D78);
  if ((*(v120 + 48))(v65, 1, v121) == 1)
  {
    sub_220B463F4(v65, &qword_27CF76D78);
    v66 = 1;
    v67 = v134;
  }

  else
  {
    v68 = v63;
    v69 = v99;
    sub_220BB71AC(v65, v99, type metadata accessor for AttributionItem);
    v70 = v100;
    sub_220B49240(v69, v100);
    v71 = v102;
    sub_220BCCD30();
    v72 = sub_220BB7214();
    v74 = v103;
    v73 = v104;
    sub_220BCD0B0();
    (*(v105 + 8))(v71, v107);
    sub_220BB726C(v70, type metadata accessor for AttributionView);
    v75 = v109;
    sub_220BCCAE0();
    v150 = v73;
    v151 = v72;
    swift_getOpaqueTypeConformance2();
    v76 = v101;
    v77 = v108;
    sub_220BCD0E0();
    (*(v110 + 8))(v75, v111);
    (*(v106 + 8))(v74, v77);
    v78 = v69;
    v63 = v68;
    sub_220BB726C(v78, type metadata accessor for AttributionItem);
    v79 = v76;
    v67 = v134;
    sub_220B46540(v79, v134, &qword_27CF77F78);
    v66 = 0;
  }

  (*(v123 + 56))(v67, v66, 1, v124);
  v80 = v118 | v119;
  v124 = v118 | v119;
  v81 = v133;
  sub_220B462DC(v137, v133, &qword_27CF77F90);
  v82 = v64 | v63;
  v123 = v82;
  sub_220B39030(v67, v135);
  *&v138 = v132;
  *(&v138 + 1) = v131;
  *&v139 = v128;
  *(&v139 + 1) = v130;
  v140 = v129;
  *&v141 = v80;
  *(&v141 + 1) = v127;
  v142 = v136;
  v83 = v125;
  *(v125 + 64) = v136;
  v84 = v141;
  v83[2] = v140;
  v83[3] = v84;
  v85 = v139;
  *v83 = v138;
  v83[1] = v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77F98);
  sub_220B462DC(v81, v83 + v86[12], &qword_27CF77F90);
  v87 = v83 + v86[16];
  v88 = v116;
  v89 = v117;
  *&v143 = v117;
  *(&v143 + 1) = v116;
  v91 = v114;
  v90 = v115;
  *&v144 = v114;
  *(&v144 + 1) = v126;
  v145 = v115;
  v146 = 0;
  v92 = v112;
  *&v147 = v82;
  *(&v147 + 1) = v112;
  v93 = v113;
  v148 = v113;
  v94 = v147;
  *(v87 + 2) = v115;
  *(v87 + 3) = v94;
  *(v87 + 8) = v93;
  v95 = v144;
  *v87 = v143;
  *(v87 + 1) = v95;
  v96 = v83 + v86[20];
  v97 = v135;
  sub_220B39030(v135, v96);
  sub_220B462DC(&v138, &v150, &qword_27CF77FA0);
  sub_220B462DC(&v143, &v150, &qword_27CF77FA0);
  sub_220B390A0(v134);
  sub_220B463F4(v137, &qword_27CF77F90);
  sub_220B390A0(v97);
  v149[0] = v89;
  v149[1] = v88;
  v149[2] = v91;
  v149[3] = v126;
  v149[4] = v90;
  v149[5] = 0;
  v149[6] = v123;
  v149[7] = v92;
  v149[8] = v93;
  sub_220B463F4(v149, &qword_27CF77FA0);
  sub_220B463F4(v133, &qword_27CF77F90);
  v150 = v132;
  v151 = v131;
  v152 = v128;
  v153 = v130;
  v154 = v129;
  v155 = 0;
  v156 = v124;
  v157 = v127;
  v158 = v136;
  return sub_220B463F4(&v150, &qword_27CF77FA0);
}

uint64_t sub_220BB70E4(uint64_t a1)
{
  v2 = sub_220BCC830();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_220BCC920();
}

uint64_t sub_220BB71AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_220BB7214()
{
  result = qword_27CF77FA8;
  if (!qword_27CF77FA8)
  {
    type metadata accessor for AttributionView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77FA8);
  }

  return result;
}

uint64_t sub_220BB726C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_220BB72CC()
{
  result = qword_27CF77FB0;
  if (!qword_27CF77FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77F68);
    sub_220BB7358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77FB0);
  }

  return result;
}

unint64_t sub_220BB7358()
{
  result = qword_27CF77FB8;
  if (!qword_27CF77FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77FB8);
  }

  return result;
}

uint64_t sub_220BB73BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_220BCC9D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CE0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_220B462DC(v2, &v14 - v9, &qword_27CF76CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_220BCC5C0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_220BCDDC0();
    v13 = sub_220BCCD50();
    sub_220BCC3C0();

    sub_220BCC9C0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_220BB75BC@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v54 = sub_220BCCC90();
  MEMORY[0x28223BE20](v54);
  v52 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_220BCC5F0();
  v4 = *(v3 - 8);
  v55 = v3;
  v56 = v4;
  MEMORY[0x28223BE20](v3);
  v51 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78018);
  v7 = *(v6 - 8);
  v57 = v6;
  v58 = v7;
  MEMORY[0x28223BE20](v6);
  v53 = &v41 - v8;
  v9 = type metadata accessor for SearchResultsView();
  v10 = v9 - 8;
  v44 = *(v9 - 8);
  v60 = *(v44 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_220BCC720();
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78020);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78028);
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v20 = &v41 - v19;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78030);
  MEMORY[0x28223BE20](v48);
  v45 = &v41 - v21;
  v22 = v1 + *(v10 + 32);
  v23 = *(v22 + 16);
  v64 = *v22;
  v65 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78038);
  sub_220BCD310();
  v61 = v1;
  v43 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78040);
  sub_220B43830(&qword_27CF78048, &qword_27CF78040);
  sub_220BCCE90();
  sub_220BCC710();
  v24 = v12;
  v42 = v12;
  sub_220BBA6D4(v1, v12);
  v25 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v26 = swift_allocObject();
  sub_220BBA738(v24, v26 + v25);
  v27 = sub_220B43830(&qword_27CF78050, &qword_27CF78020);
  sub_220BCCFF0();

  (*(v46 + 8))(v14, v47);
  (*(v16 + 8))(v18, v15);
  v28 = [objc_opt_self() systemBackgroundColor];
  *&v64 = sub_220BCD150();
  v62 = v15;
  v63 = v27;
  swift_getOpaqueTypeConformance2();
  v29 = v45;
  v30 = v49;
  sub_220BCD0F0();

  (*(v50 + 8))(v20, v30);
  v29[*(v48 + 36)] = sub_220BCCD60();
  v31 = v29;
  sub_220BCCCF0();
  v32 = v51;
  sub_220BCC5E0();
  v33 = v42;
  sub_220BBA6D4(v43, v42);
  v34 = swift_allocObject();
  sub_220BBA738(v33, v34 + v25);
  sub_220BBADE8(&qword_27CF78058, MEMORY[0x277CDD730]);
  sub_220BBADE8(&qword_27CF78060, MEMORY[0x277CDD708]);
  v35 = v53;
  v36 = v55;
  sub_220BCD3E0();

  (*(v56 + 8))(v32, v36);
  sub_220BCC610();
  sub_220BBA824();
  sub_220B43830(&qword_27CF78080, &qword_27CF78018);
  v37 = v59;
  v38 = v57;
  sub_220BCD090();
  (*(v58 + 8))(v35, v38);
  sub_220B463F4(v31, &qword_27CF78030);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77FC8);
  return sub_220BB73BC(v37 + *(v39 + 52));
}

uint64_t sub_220BB7E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v3 = type metadata accessor for SearchResultsView();
  v133 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v134 = v4;
  v138 = (&v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A0);
  MEMORY[0x28223BE20](v5 - 8);
  v128 = &v109 - v6;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78088);
  MEMORY[0x28223BE20](v131);
  v130 = &v109 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78090);
  v132 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v129 = &v109 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v109 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78098);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v135 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v136 = v3;
  v137 = &v109 - v16;
  v17 = *(a1 + *(v3 + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v114 = v17;
  sub_220BCC4C0();

  v18 = v165;
  swift_getKeyPath();
  v165 = v18;
  v139 = sub_220BBADE8(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();
  v19 = v8;
  v20 = a1;

  v21 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__deviceExpertResult;
  swift_beginAccess();
  sub_220B462DC(v18 + v21, v12, &qword_27CF773A8);

  v22 = sub_220BCC2E0();
  v23 = 1;
  LODWORD(v18) = (*(*(v22 - 8) + 48))(v12, 1, v22);
  sub_220B463F4(v12, &qword_27CF773A8);
  if (v18 != 1)
  {
    type metadata accessor for SearchResultsViewModel();
    sub_220BBADE8(&qword_2812C0F98, type metadata accessor for SearchResultsViewModel);
    v24 = sub_220BCC7B0();
    swift_getKeyPath();
    sub_220BCC7C0();

    v25 = v165;
    v26 = v166;
    v27 = v167;
    swift_getKeyPath();
    *&v156 = v25;
    *(&v156 + 1) = v26;
    v157 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF780C0);
    v28 = v128;
    sub_220BCD3B0();

    v29 = v130;
    DeviceExpertClientView.init(response:)(v28, v130);
    *(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF780C8) + 36)) = 256;
    v30 = v138;
    sub_220BBA6D4(v20, v138);
    v31 = (*(v133 + 80) + 16) & ~*(v133 + 80);
    v32 = swift_allocObject();
    sub_220BBA738(v30, v32 + v31);
    KeyPath = swift_getKeyPath();
    v34 = swift_allocObject();
    *(v34 + 16) = sub_220BBAA1C;
    *(v34 + 24) = v32;
    v35 = (v29 + *(v131 + 36));
    *v35 = KeyPath;
    v35[1] = sub_220BBAAB8;
    v35[2] = v34;
    sub_220BCC660();
    sub_220BBAAC0();
    v36 = v129;
    sub_220BCD040();
    sub_220B463F4(v29, &qword_27CF78088);
    (*(v132 + 32))(v137, v36, v19);
    v23 = 0;
  }

  (*(v132 + 56))(v137, v23, 1, v19);
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v114;
  sub_220BCC4C0();

  v38 = v165;
  swift_getKeyPath();
  v165 = v38;
  sub_220BCC300();

  swift_beginAccess();
  v39 = *(v38 + 16);
  if (v39 >> 62)
  {
    v40 = sub_220BCDF70();
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = v133;

  if (v40)
  {
    v42 = *(v20 + v136[8]);
    v43 = v136[6];
    v133 = *(v20 + v136[7]);
    v134 = v42;
    v44 = (v20 + v43);
    v45 = *(v20 + v43 + 16);
    v156 = *v44;
    v157 = v45;
    v46 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78038);
    sub_220BCD310();
    v131 = v166;
    v132 = v165;
    v129 = v168;
    v130 = v167;
    v47 = v138;
    sub_220BBA6D4(v20, v138);
    v48 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v128 = swift_allocObject();
    sub_220BBA738(v47, &v128[v48]);
    type metadata accessor for SearchResultsViewModel();
    sub_220BBADE8(&qword_2812C0F98, type metadata accessor for SearchResultsViewModel);
    v49 = sub_220BCC7A0();
    v126 = v50;
    v127 = v49;
    v125 = sub_220BBAE30;
  }

  else
  {
    v126 = 0;
    v127 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v133 = 0;
    v134 = 0;
    v125 = 0;
    v128 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  v51 = v165;
  swift_getKeyPath();
  v165 = v51;
  sub_220BCC300();

  v52 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__supportFlows;
  swift_beginAccess();
  v53 = *(v51 + v52);
  if (v53 >> 62)
  {
    v54 = sub_220BCDF70();
  }

  else
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v54)
  {
    v55 = *(v20 + v136[8]);
    v56 = v136[6];
    v123 = *(v20 + v136[7]);
    v124 = v55;
    v57 = (v20 + v56);
    v58 = *(v20 + v56 + 16);
    v156 = *v57;
    v157 = v58;
    v59 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78038);
    sub_220BCD310();
    v121 = v166;
    v122 = v165;
    v119 = v168;
    v120 = v167;
    v60 = v138;
    sub_220BBA6D4(v20, v138);
    v61 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v118 = swift_allocObject();
    sub_220BBA738(v60, v118 + v61);
    type metadata accessor for SearchResultsViewModel();
    sub_220BBADE8(&qword_2812C0F98, type metadata accessor for SearchResultsViewModel);
    v62 = sub_220BCC7A0();
    v116 = v63;
    v117 = v62;
    v115 = sub_220BBA9A4;
  }

  else
  {
    v116 = 0;
    v117 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v123 = 0;
    v124 = 0;
    v115 = 0;
    v118 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  v64 = v165;
  swift_getKeyPath();
  v165 = v64;
  sub_220BCC300();

  swift_beginAccess();
  v65 = *(v64 + 24);
  if (v65 >> 62)
  {
    v66 = sub_220BCDF70();
  }

  else
  {
    v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v67 = v37;
  if (v66 || ((swift_getKeyPath(), swift_getKeyPath(), sub_220BCC4C0(), , , v68 = v165, swift_getKeyPath(), v165 = v68, sub_220BCC300(), , v69 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel__supportArticles, swift_beginAccess(), v70 = *(v68 + v69), v70 >> 62) ? (v71 = sub_220BCDF70()) : (v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v67 = v37, v71))
  {
    v139 = *(v20 + v136[8]);
    v72 = v136[6];
    v136 = *(v20 + v136[7]);
    v73 = (v20 + v72);
    v74 = *(v20 + v72 + 16);
    v156 = *v73;
    v157 = v74;
    v75 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78038);
    sub_220BCD310();
    v76 = v41;
    v77 = v165;
    v78 = v166;
    v114 = v167;
    v79 = v168;
    v80 = v138;
    sub_220BBA6D4(v20, v138);
    v81 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v112 = swift_allocObject();
    sub_220BBA738(v80, v112 + v81);
    type metadata accessor for SearchResultsViewModel();
    sub_220BBADE8(&qword_2812C0F98, type metadata accessor for SearchResultsViewModel);
    v82 = sub_220BCC7A0();
    v84 = v83;
    v85 = sub_220BBAE30;
  }

  else
  {
    v82 = 0;
    v84 = 0;
    v77 = 0;
    v78 = 0;
    v114 = 0;
    v79 = 0;
    v139 = 0;
    v85 = 0;
    v112 = 0;
    v136 = 0;
  }

  v110 = v82;
  v111 = v84;
  v86 = v137;
  v87 = v135;
  sub_220B392D0(v137, v135);
  v88 = v87;
  v89 = v113;
  sub_220B392D0(v88, v113);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF780A0);
  v91 = (v89 + v90[12]);
  *&v140 = v127;
  *(&v140 + 1) = v126;
  *&v141 = v132;
  *(&v141 + 1) = v131;
  *&v142 = v130;
  *(&v142 + 1) = v129;
  *&v143 = v134;
  *(&v143 + 1) = v133;
  *&v144 = v125;
  *(&v144 + 1) = v128;
  v92 = v141;
  *v91 = v140;
  v91[1] = v92;
  v93 = v143;
  v91[2] = v142;
  v91[3] = v93;
  v91[4] = v144;
  v94 = (v89 + v90[16]);
  *&v145 = v117;
  *(&v145 + 1) = v116;
  *&v146 = v122;
  *(&v146 + 1) = v121;
  *&v147 = v120;
  *(&v147 + 1) = v119;
  *&v148 = v124;
  *(&v148 + 1) = v123;
  *&v149 = v115;
  *(&v149 + 1) = v118;
  v95 = v146;
  *v94 = v145;
  v94[1] = v95;
  v96 = v148;
  v94[2] = v147;
  v94[3] = v96;
  *&v150 = v82;
  *(&v150 + 1) = v84;
  v97 = v150;
  v94[4] = v149;
  v98 = (v89 + v90[20]);
  *&v151 = v77;
  *(&v151 + 1) = v78;
  v99 = v114;
  *&v152 = v114;
  *(&v152 + 1) = v79;
  v100 = v79;
  v101 = v139;
  v102 = v136;
  *&v153 = v139;
  *(&v153 + 1) = v136;
  v138 = v85;
  *&v154 = v85;
  v103 = v112;
  *(&v154 + 1) = v112;
  v104 = v151;
  v105 = v152;
  v106 = v153;
  v107 = v154;
  *v98 = v97;
  v98[1] = v104;
  v98[2] = v105;
  v98[3] = v106;
  v98[4] = v107;
  sub_220B462DC(&v140, &v165, &qword_27CF780A8);
  sub_220B462DC(&v145, &v165, &qword_27CF780B0);
  sub_220B462DC(&v150, &v165, &qword_27CF780B8);
  sub_220B463F4(v86, &qword_27CF78098);
  v155[0] = v110;
  v155[1] = v111;
  v155[2] = v77;
  v155[3] = v78;
  v155[4] = v99;
  v155[5] = v100;
  v155[6] = v101;
  v155[7] = v102;
  v155[8] = v138;
  v155[9] = v103;
  sub_220B463F4(v155, &qword_27CF780B8);
  *&v156 = v117;
  *(&v156 + 1) = v116;
  v157 = v122;
  v158 = v121;
  v159 = v120;
  v160 = v119;
  v161 = v124;
  v162 = v123;
  v163 = v115;
  v164 = v118;
  sub_220B463F4(&v156, &qword_27CF780B0);
  v165 = v127;
  v166 = v126;
  v167 = v132;
  v168 = v131;
  v169 = v130;
  v170 = v129;
  v171 = v134;
  v172 = v133;
  v173 = v125;
  v174 = v128;
  sub_220B463F4(&v165, &qword_27CF780A8);
  return sub_220B463F4(v135, &qword_27CF78098);
}

uint64_t sub_220BB8E98(uint64_t a1, uint64_t a2)
{
  v33 = sub_220BCD550();
  v36 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220BCD580();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SearchResultsView();
  v9 = v8 - 8;
  v30 = *(v8 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_220BCD5A0();
  v12 = *(v11 - 8);
  v37 = v11;
  v38 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v29 = &v29 - v16;
  v17 = v2 + *(v9 + 32);
  v18 = *(v17 + 16);
  aBlock = *v17;
  v40 = v18;
  v44 = a1;
  v45 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78038);
  sub_220BCD300();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  sub_220BAFE0C(a1, a2, &aBlock);

  sub_220B60CE8();
  v19 = sub_220BCDE10();
  sub_220BCD590();
  sub_220BCD5E0();
  v20 = *(v38 + 8);
  v38 += 8;
  v20(v15, v37);
  sub_220BBA6D4(v2, &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v22 = swift_allocObject();
  sub_220BBA738(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v42 = sub_220BBAD70;
  v43 = v22;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v40 = sub_220B61C68;
  v41 = &block_descriptor_10;
  v23 = _Block_copy(&aBlock);

  v24 = v31;
  sub_220BCD570();
  *&aBlock = MEMORY[0x277D84F90];
  sub_220BBADE8(&qword_2812C0968, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77168);
  sub_220B43830(&qword_2812C0950, &qword_27CF77168);
  v26 = v32;
  v25 = v33;
  sub_220BCDF50();
  v27 = v29;
  MEMORY[0x223D92B80](v29, v24, v26, v23);
  _Block_release(v23);

  (*(v36 + 8))(v26, v25);
  (*(v34 + 8))(v24, v35);
  return (v20)(v27, v37);
}

uint64_t sub_220BB93C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SearchResultsView() + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v13 = *v3;
  v14 = v5;
  v15 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78038);
  sub_220BCD2F0();
  if (v12)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_220BCC4C0();

    sub_220BAFE0C(v11, v12, &v13);

    v13 = v4;
    v14 = v5;
    v15 = v6;
    sub_220BCD300();
    v7 = MEMORY[0x277CDF120];
  }

  else
  {
    v7 = MEMORY[0x277CDF128];
  }

  v8 = *v7;
  v9 = sub_220BCD430();
  return (*(*(v9 - 8) + 104))(a2, v8, v9);
}

uint64_t sub_220BB954C()
{
  type metadata accessor for SearchResultsView();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  v0 = (v3 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultScrollHandler);
  swift_beginAccess();
  v1 = *v0;
  sub_220B3A13C(*v0);

  if (v1)
  {
    v1(result);
    return sub_220B3A128(v1);
  }

  return result;
}

double sub_220BB962C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_220BCDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SearchResultsView();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  v7 = sub_220BA9DC8(v6);

  if (v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_220BCC4C0();

    v8 = v28;
    v9 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchQuery;
    swift_beginAccess();
    v10 = *(v8 + v9);
    if (v10)
    {
      v11 = OBJC_IVAR___TPSAppSearchQuery__searchTerm;
      swift_beginAccess();
      (*(v3 + 16))(v5, v10 + v11, v2);
      v10 = sub_220BCDA10();
      v13 = v12;
      (*(v3 + 8))(v5, v2);
    }

    else
    {

      v13 = 0xE000000000000000;
    }

    v14 = objc_allocWithZone(type metadata accessor for ContentMessageViewModel());
    v15 = ContentMessageViewModel.init(type:additionalContext:defaultMessage:)(4, v10, v13, 0, 0);
    v16 = [objc_opt_self() systemBackgroundColor];
    v17 = sub_220BCD150();
    v18 = sub_220BCCD60();
    v24 = v15;
    v25 = 0x7FF0000000000000;
    v26 = v17;
    v27 = v18;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 256;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77FF8);
  sub_220BBA2F0();
  sub_220BCCC30();
  result = *&v28;
  v20 = v29;
  v21 = v30;
  v22 = v31;
  *a1 = v28;
  *(a1 + 16) = v20;
  *(a1 + 24) = v21;
  *(a1 + 25) = v22;
  return result;
}

uint64_t sub_220BB9924@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  *a1 = v3;
  return result;
}

uint64_t sub_220BB99A4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_220BCC4D0();
}

uint64_t sub_220BB9A20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - v3;
  v5 = sub_220BCBF80();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220B462DC(a1, v4, &qword_27CF76C90);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_220B463F4(v4, &qword_27CF76C90);
  }

  (*(v6 + 32))(v8, v4, v5);
  if (sub_220BCBF60())
  {
    type metadata accessor for SearchResultsView();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_220BCC4C0();

    v10 = (v16[1] + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_supportArticleURLHandler);
    swift_beginAccess();
    v11 = *v10;
    sub_220B3A13C(*v10);

    if (v11)
    {
      v11(v8);
      sub_220B3A128(v11);
    }
  }

  else
  {
    v12 = [objc_opt_self() defaultWorkspace];
    if (v12)
    {
      v13 = v12;
      v14 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
      [v14 setSensitive_];
      v15 = sub_220BCBF20();
      [v13 openURL:v15 configuration:v14 completionHandler:0];
    }
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SearchResultsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77FC0);
  MEMORY[0x28223BE20](v23);
  v2 = &v20 - v1;
  v3 = sub_220BCC7F0();
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77FC8);
  MEMORY[0x28223BE20](v22);
  v7 = &v20 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77FD0);
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v20 - v9;
  type metadata accessor for SearchResultsView();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  v11 = sub_220BA9A4C();

  if (v11)
  {
    sub_220BB75BC(v7);
    sub_220BCC7E0();
    v12 = sub_220B43830(&qword_27CF77FE0, &qword_27CF77FC8);
    v13 = v22;
    sub_220BCD140();
    (*(v21 + 8))(v5, v3);
    sub_220B463F4(v7, &qword_27CF77FC8);
    v14 = v24;
    (*(v8 + 16))(v2, v10, v24);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77FD8);
    *&v26 = v13;
    *(&v26 + 1) = v3;
    v27 = v12;
    v28 = MEMORY[0x277CDD980];
    swift_getOpaqueTypeConformance2();
    sub_220BBA264();
    sub_220BCCC30();
    return (*(v8 + 8))(v10, v14);
  }

  else
  {
    sub_220BB962C(&v26);
    v16 = v27;
    v17 = v28;
    v18 = BYTE1(v28);
    *v2 = v26;
    *(v2 + 2) = v16;
    v2[24] = v17;
    v2[25] = v18;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77FD8);
    v19 = sub_220B43830(&qword_27CF77FE0, &qword_27CF77FC8);
    *&v26 = v22;
    *(&v26 + 1) = v3;
    v27 = v19;
    v28 = MEMORY[0x277CDD980];
    swift_getOpaqueTypeConformance2();
    sub_220BBA264();
    return sub_220BCCC30();
  }
}

uint64_t type metadata accessor for SearchResultsView()
{
  result = qword_2812C1C30;
  if (!qword_2812C1C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220BBA1F0()
{
  type metadata accessor for SearchResultsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78038);
  return sub_220BCD300();
}

unint64_t sub_220BBA264()
{
  result = qword_27CF77FE8;
  if (!qword_27CF77FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77FD8);
    sub_220BBA2F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77FE8);
  }

  return result;
}

unint64_t sub_220BBA2F0()
{
  result = qword_27CF77FF0;
  if (!qword_27CF77FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77FF8);
    sub_220BBA3A8();
    sub_220B43830(&qword_27CF76C70, &qword_27CF76C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77FF0);
  }

  return result;
}

unint64_t sub_220BBA3A8()
{
  result = qword_27CF78000;
  if (!qword_27CF78000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF78000);
  }

  return result;
}

void sub_220BBA440()
{
  sub_220BBA4F4();
  if (v0 <= 0x3F)
  {
    sub_220B43CD4();
    if (v1 <= 0x3F)
    {
      sub_220BBA54C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220BBA4F4()
{
  if (!qword_2812C0A40)
  {
    sub_220BCC5C0();
    v0 = sub_220BCC600();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C0A40);
    }
  }
}

void sub_220BBA54C()
{
  if (!qword_2812C0980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76F90);
    v0 = sub_220BCD320();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C0980);
    }
  }
}

unint64_t sub_220BBA5B0()
{
  result = qword_27CF78008;
  if (!qword_27CF78008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF78010);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77FC8);
    sub_220BCC7F0();
    sub_220B43830(&qword_27CF77FE0, &qword_27CF77FC8);
    swift_getOpaqueTypeConformance2();
    sub_220BBA264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF78008);
  }

  return result;
}

uint64_t sub_220BBA6D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220BBA738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220BBA79C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultsView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_220BB93C4(v4, a1);
}

unint64_t sub_220BBA824()
{
  result = qword_27CF78068;
  if (!qword_27CF78068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF78030);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF78028);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF78020);
    sub_220B43830(&qword_27CF78050, &qword_27CF78020);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_220B43830(&qword_27CF78070, &qword_27CF78078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF78068);
  }

  return result;
}

uint64_t sub_220BBAA34(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SearchResultsView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_220BBAAC0()
{
  result = qword_27CF780D0;
  if (!qword_27CF780D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF78088);
    sub_220BBAB78();
    sub_220B43830(&qword_27CF77178, &qword_27CF77170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF780D0);
  }

  return result;
}

unint64_t sub_220BBAB78()
{
  result = qword_27CF780D8;
  if (!qword_27CF780D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF780C8);
    sub_220BBADE8(&qword_27CF780E0, type metadata accessor for DeviceExpertClientView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF780D8);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for SearchResultsView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_220BCC5C0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_220BBAD70()
{
  type metadata accessor for SearchResultsView();

  return sub_220BBA1F0();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_220BBADE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ListItemDocumentView.init(viewModel:document:preferLineCount:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CE0);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for ListItemDocumentView();
  v7 = (a3 + v6[5]);
  type metadata accessor for SearchResultsViewModel();
  sub_220BBBFC4(&qword_2812C0F98, type metadata accessor for SearchResultsViewModel);
  result = sub_220BCC7A0();
  *v7 = result;
  v7[1] = v9;
  *(a3 + v6[6]) = a1;
  v10 = 2;
  if (a2 > 2)
  {
    v10 = a2;
  }

  *(a3 + v6[7]) = v10;
  return result;
}

uint64_t sub_220BBAF34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21 = a1;
  v22 = sub_220BCCAF0();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220BCCD40();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF780E8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF780F0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - v14;
  *v11 = sub_220BCCA50();
  *(v11 + 1) = 0x4028000000000000;
  v11[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF780F8);
  sub_220BBB25C(v2, &v11[*(v16 + 44)]);
  sub_220BCCD30();
  v17 = sub_220BBBC94();
  sub_220BCD0B0();
  (*(v6 + 8))(v8, v5);
  sub_220B463F4(v11, &qword_27CF780E8);
  sub_220BCCAE0();
  v23 = v9;
  v24 = v17;
  swift_getOpaqueTypeConformance2();
  sub_220BCD0E0();
  (*(v20 + 8))(v4, v22);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_220BBB25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CE8);
  MEMORY[0x28223BE20](v3 - 8);
  v81 = &v79 - v4;
  v82 = sub_220BCCE70();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ListItemDocumentBodyView();
  MEMORY[0x28223BE20](v6 - 8);
  v85 = (&v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78128);
  MEMORY[0x28223BE20](v88);
  v89 = &v79 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78130);
  v9 = MEMORY[0x28223BE20](v87);
  v92 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v86 = &v79 - v12;
  MEMORY[0x28223BE20](v11);
  v90 = &v79 - v13;
  v14 = type metadata accessor for ListItemDocumentImageView();
  MEMORY[0x28223BE20](v14);
  v16 = (&v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78138);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v79 - v20;
  v22 = type metadata accessor for ListItemDocumentView();
  v23 = v22[5];
  v24 = v22[6];
  *&v84 = a1;
  v25 = *(a1 + v23 + 8);
  v26 = *(a1 + v24);
  *v16 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CE0);
  swift_storeEnumTagMultiPayload();
  v27 = v14[5];
  *(v16 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF776C8);
  swift_storeEnumTagMultiPayload();
  v28 = (v16 + v14[6]);
  type metadata accessor for SearchResultsViewModel();
  sub_220BBBFC4(&qword_2812C0F98, type metadata accessor for SearchResultsViewModel);
  v29 = v25;
  v30 = v26;
  v31 = v29;
  v32 = v30;
  *v28 = sub_220BCC7A0();
  v28[1] = v33;
  *(v16 + v14[7]) = v32;
  sub_220BBBFC4(&qword_27CF78140, type metadata accessor for ListItemDocumentImageView);
  v34 = v85;
  sub_220BCD080();
  sub_220BBC00C(v16);
  sub_220B76D20(v31, v32, *(v84 + v22[7]), v34);
  v35 = sub_220BCCD90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  v36 = v118;
  v37 = 0uLL;
  v38 = 0uLL;
  if (v118 == 1)
  {
    sub_220BCC590();
    *(&v38 + 1) = v39;
    *(&v37 + 1) = v40;
  }

  v83 = v38;
  v84 = v37;
  v41 = v89;
  sub_220B79528(v34, v89);
  v42 = v41 + *(v88 + 36);
  *v42 = v35;
  v43 = v84;
  *(v42 + 24) = v83;
  *(v42 + 8) = v43;
  *(v42 + 40) = v36 ^ 1;
  v44 = sub_220BCCB00();
  v45 = v86;
  sub_220B46540(v41, v86, &qword_27CF78128);
  v46 = (v45 + *(v87 + 36));
  *v46 = v44;
  v46[1] = sub_220BBBC20;
  v46[2] = 0;
  v47 = v90;
  sub_220B46540(v45, v90, &qword_27CF78130);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  if (v118 == 1)
  {
    v48 = sub_220BCD260();
    v50 = v79;
    v49 = v80;
    v51 = v82;
    (*(v80 + 104))(v79, *MEMORY[0x277CE0AB0], v82);
    v52 = sub_220BCCDD0();
    v53 = v81;
    (*(*(v52 - 8) + 56))(v81, 1, 1, v52);
    sub_220BCCE10();
    sub_220B463F4(v53, &qword_27CF76CE8);
    (*(v49 + 8))(v50, v51);
    sub_220BCCDE0();
    v54 = sub_220BCCE30();

    KeyPath = swift_getKeyPath();
    v56 = [objc_opt_self() tertiaryLabelColor];
    v57 = sub_220BCD150();
    v58 = swift_getKeyPath();
    sub_220BCD480();
    sub_220BCC6C0();
    LOBYTE(v50) = sub_220BCCD80();
    sub_220BCC590();
    *(v114 + 8) = v103;
    LOBYTE(v118) = 0;
    *&v112 = v48;
    *(&v112 + 1) = KeyPath;
    *&v113 = v54;
    *(&v113 + 1) = v58;
    *&v114[0] = v57;
    *(&v114[1] + 8) = v104;
    *(&v114[2] + 8) = v105;
    BYTE8(v114[3]) = v50;
    *&v115 = v59;
    *(&v115 + 1) = v60;
    *&v116 = v61;
    *(&v116 + 1) = v62;
    v117 = 0;
    nullsub_1(&v112);
    v124 = v115;
    v125 = v116;
    v126 = v117;
    v120 = v114[0];
    v121 = v114[1];
    v122 = v114[2];
    v123 = v114[3];
    v118 = v112;
    v119 = v113;
  }

  else
  {
    sub_220BBC068(&v118);
  }

  v63 = v91;
  sub_220B462DC(v21, v91, &qword_27CF78138);
  v64 = v47;
  v65 = v47;
  v66 = v92;
  sub_220B462DC(v65, v92, &qword_27CF78130);
  v100 = v124;
  v101 = v125;
  v102 = v126;
  v96 = v120;
  v97 = v121;
  v98 = v122;
  v99 = v123;
  v94 = v118;
  v95 = v119;
  v67 = v93;
  sub_220B462DC(v63, v93, &qword_27CF78138);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78148);
  sub_220B462DC(v66, v67 + *(v68 + 48), &qword_27CF78130);
  v69 = *(v68 + 64);
  v70 = v101;
  v109 = v100;
  v110 = v101;
  v72 = v98;
  v71 = v99;
  v107 = v98;
  v108 = v99;
  v73 = v96;
  v74 = v97;
  v105 = v96;
  v106 = v97;
  v76 = v94;
  v75 = v95;
  v103 = v94;
  v104 = v95;
  v77 = v67 + v69;
  *(v77 + 96) = v100;
  *(v77 + 112) = v70;
  *(v77 + 32) = v73;
  *(v77 + 48) = v74;
  *(v77 + 64) = v72;
  *(v77 + 80) = v71;
  v111 = v102;
  *(v77 + 128) = v102;
  *v77 = v76;
  *(v77 + 16) = v75;
  sub_220B462DC(&v103, &v112, &qword_27CF78150);
  sub_220B463F4(v64, &qword_27CF78130);
  sub_220B463F4(v21, &qword_27CF78138);
  v115 = v100;
  v116 = v101;
  v117 = v102;
  v114[0] = v96;
  v114[1] = v97;
  v114[2] = v98;
  v114[3] = v99;
  v112 = v94;
  v113 = v95;
  sub_220B463F4(&v112, &qword_27CF78150);
  sub_220B463F4(v66, &qword_27CF78130);
  return sub_220B463F4(v63, &qword_27CF78138);
}

uint64_t type metadata accessor for ListItemDocumentView()
{
  result = qword_27CF78108;
  if (!qword_27CF78108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_220BBBC94()
{
  result = qword_27CF78100;
  if (!qword_27CF78100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF780E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF78100);
  }

  return result;
}

void sub_220BBBD3C()
{
  sub_220BBA4F4();
  if (v0 <= 0x3F)
  {
    sub_220B43CD4();
    if (v1 <= 0x3F)
    {
      sub_220B43D68();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_220BBBDE0()
{
  result = qword_27CF78118;
  if (!qword_27CF78118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF78120);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF780E8);
    sub_220BBBC94();
    swift_getOpaqueTypeConformance2();
    sub_220BBBFC4(&qword_2812C0998, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF78118);
  }

  return result;
}

uint64_t sub_220BBBEFC(uint64_t a1)
{
  v2 = sub_220BCCC80();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_220BCC960();
}

uint64_t sub_220BBBFC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220BBC00C(uint64_t a1)
{
  v2 = type metadata accessor for ListItemDocumentImageView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_220BBC068(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_220BBC0B0()
{
  v0 = sub_220BCC080();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_220BCDB60();
  MEMORY[0x28223BE20](v1 - 8);
  sub_220BCDB50();
  sub_220B55458(0, &qword_27CF77300);
  if (!sub_220BCDEC0())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  sub_220BCC050();
  result = sub_220BCDBC0();
  qword_27CF7B2E8 = result;
  unk_27CF7B2F0 = v4;
  return result;
}

uint64_t sub_220BBC214()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77900);
  MEMORY[0x28223BE20](v1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  if (v7 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78160);
    v2 = sub_220BCE090();
  }

  else
  {
    sub_220BCE140();
    v2 = v7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  if (v7 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78160);
    v3 = sub_220BCE090();
  }

  else
  {
    sub_220BCE140();
    v3 = v7;
  }

  v7 = v2;
  sub_220BBD2CC(v3);
  v4 = sub_220B87374();
  MEMORY[0x28223BE20](v4);
  *(&v6 - 2) = v2;
  *(&v6 - 1) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78168);
  sub_220B897D0();
  sub_220BBD3C4();
  sub_220BCD3F0();
}

uint64_t sub_220BBC4BC(unint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = a1;
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    v4 = a1 >> 62;
    if (!(a1 >> 62))
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= v5)
      {
        v8 = *(a2 + 48);
      }

      else
      {
        v8 = *(v6 + 16);
      }

      if (v5)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (result >= v9)
      {
        goto LABEL_10;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  v18 = sub_220BCDF70();
  result = sub_220BCDF70();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v18 >= v5)
    {
      v19 = v5;
    }

    else
    {
      v19 = v18;
    }

    if (v18 < 0)
    {
      v19 = v5;
    }

    if (v5)
    {
      v9 = v19;
    }

    else
    {
      v9 = 0;
    }

    result = sub_220BCDF70();
    if (result >= v9)
    {
LABEL_10:
      if ((v3 & 0xC000000000000001) != 0)
      {

        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78160);
            sub_220BCDFD0();
          }
        }

        if (!v4)
        {
          goto LABEL_15;
        }
      }

      else
      {

        if (!v4)
        {
LABEL_15:
          v11 = 0;
          v12 = v3 & 0xFFFFFFFFFFFFFF8;
          v13 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
          v14 = (2 * v9) | 1;
LABEL_18:
          v21 = v12;
          v22 = v13;
          v23 = v11;
          v24 = v14;
          swift_getKeyPath();
          v15 = swift_allocObject();
          v16 = v2[3];
          *(v15 + 48) = v2[2];
          *(v15 + 64) = v16;
          *(v15 + 80) = v2[4];
          v17 = v2[1];
          *(v15 + 16) = *v2;
          *(v15 + 32) = v17;
          *(v15 + 96) = v3;

          sub_220B89D98(v2, v20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF781A8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78180);
          sub_220B43830(&qword_27CF781B0, &qword_27CF781A8);
          sub_220BBD448();
          return sub_220BCD3D0();
        }
      }

      v12 = sub_220BCE0B0();
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_220BBC730@<X0>(void **a1@<X0>, _OWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ArticleSearchResultItemView();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78190);
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78188);
  v59 = *(v14 - 8);
  v60 = v14;
  MEMORY[0x28223BE20](v14);
  v64 = &v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF781B8);
  v61 = *(v16 - 8);
  v62 = v16;
  MEMORY[0x28223BE20](v16);
  v57 = &v55 - v17;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78180);
  MEMORY[0x28223BE20](v56);
  v55 = &v55 - v18;
  v19 = *a1;
  v66 = *a2;
  v20 = *(&v66 + 1);
  sub_220BBD724(&v66, v65);
  swift_unknownObjectRetain();
  sub_220B63600(v20, v19, v10);
  v21 = [v19 identifier];
  v22 = sub_220BCDBA0();
  v24 = v23;

  v58 = a2;
  v25 = sub_220B87D98(v22, v24);

  if (v25)
  {
    v65[0] = v25;
    v25 = sub_220BCD380();
  }

  result = sub_220B65938(v10, v13);
  *&v13[*(v11 + 36)] = v25;
  if (a3 >> 62)
  {
    result = sub_220BCDF70();
    v27 = result;
    v63 = a4;
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:
    v29 = v11;
    v31 = 0;
    v33 = 0;
    goto LABEL_11;
  }

  v27 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v63 = a4;
  if (!v27)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((a3 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x223D92D80](0, a3);
  }

  else
  {
    if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v28 = *(a3 + 32);
    swift_unknownObjectRetain();
  }

  v29 = v11;
  v30 = [v28 identifier];
  swift_unknownObjectRelease();
  v31 = sub_220BCDBA0();
  v33 = v32;

LABEL_11:
  v34 = [v19 identifier];
  v35 = sub_220BCDBA0();
  v37 = v36;

  if (v33)
  {
    if (v31 == v35 && v33 == v37)
    {

      v11 = v29;
    }

    else
    {
      sub_220BCE130();

      v11 = v29;
    }
  }

  else
  {

    v11 = v29;
  }

  a2 = v64;
  sub_220BCC670();
  v10 = sub_220BBD548();
  sub_220BCD040();
  sub_220BBD794(v13);
  if (!v27)
  {
    v40 = 0;
    v42 = 0;
    goto LABEL_25;
  }

  result = v27 - 1;
  if (__OFSUB__(v27, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  if ((a3 & 0xC000000000000001) != 0)
  {
LABEL_35:
    v38 = MEMORY[0x223D92D80](result, a3);
    goto LABEL_23;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (result >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v38 = *(a3 + 8 * result + 32);
  swift_unknownObjectRetain();
LABEL_23:
  v39 = [v38 identifier];
  swift_unknownObjectRelease();
  v40 = sub_220BCDBA0();
  v42 = v41;

LABEL_25:
  v43 = [v19 identifier];
  v44 = sub_220BCDBA0();
  v46 = v45;

  if (v42)
  {
    if (v40 == v44 && v42 == v46)
    {
    }

    else
    {
      sub_220BCE130();
    }
  }

  else
  {
  }

  sub_220BCC680();
  v65[0] = v11;
  v65[1] = v10;
  swift_getOpaqueTypeConformance2();
  v47 = v57;
  v48 = v60;
  sub_220BCD040();
  (*(v59 + 8))(a2, v48);
  v49 = swift_allocObject();
  v50 = v58;
  v51 = v58[3];
  *(v49 + 48) = v58[2];
  *(v49 + 64) = v51;
  *(v49 + 80) = v50[4];
  v52 = v50[1];
  *(v49 + 16) = *v50;
  *(v49 + 32) = v52;
  *(v49 + 96) = v19;
  v53 = v55;
  (*(v61 + 32))(v55, v47, v62);
  v54 = (v53 + *(v56 + 36));
  *v54 = sub_220B89C48;
  v54[1] = v49;
  sub_220B3965C(v53, v63);
  swift_unknownObjectRetain();
  return sub_220B89D98(v50, v65);
}

uint64_t sub_220BBCE14()
{
  if (qword_27CF76988 != -1)
  {
    swift_once();
  }

  v0 = qword_27CF7B2E8;

  return v0;
}

uint64_t sub_220BBCE7C@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  type metadata accessor for SearchResultsViewModel();
  sub_220BBD630(&qword_2812C0F98, type metadata accessor for SearchResultsViewModel);
  result = sub_220BCC7A0();
  *a8 = result;
  *(a8 + 8) = v17;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a1;
  *(a8 + 56) = a2;
  *(a8 + 64) = a7;
  *(a8 + 72) = a9;
  return result;
}

unint64_t sub_220BBCFE8(uint64_t a1)
{
  result = sub_220BBD010();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_220BBD010()
{
  result = qword_27CF78158;
  if (!qword_27CF78158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF78158);
  }

  return result;
}

uint64_t sub_220BBD0A0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  *a1 = v3;
  return result;
}

uint64_t sub_220BBD130(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_220BCC4D0();
}

uint64_t sub_220BBD1D4(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_220BCDF70();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_220BCDF70();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_220BBD684(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_220BBD2CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_220BCDF70();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_220BCDF70();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_220BBD684(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_220BBDBC4(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_220BBD3C4()
{
  result = qword_27CF78170;
  if (!qword_27CF78170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF78168);
    sub_220BBD448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF78170);
  }

  return result;
}

unint64_t sub_220BBD448()
{
  result = qword_27CF78178;
  if (!qword_27CF78178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF78180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF78188);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF78190);
    sub_220BBD548();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_220B89B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF78178);
  }

  return result;
}

unint64_t sub_220BBD548()
{
  result = qword_27CF78198;
  if (!qword_27CF78198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF78190);
    sub_220BBD630(&qword_27CF781A0, type metadata accessor for ArticleSearchResultItemView);
    sub_220B43830(&qword_27CF77960, &qword_27CF77968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF78198);
  }

  return result;
}

uint64_t sub_220BBD630(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220BBD684(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_220BCDF70();
LABEL_9:
  result = sub_220BCDFF0();
  *v1 = result;
  return result;
}

uint64_t sub_220BBD724(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220BBD794(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_7(void (*a1)(void))
{

  a1(*(v1 + 96));

  return MEMORY[0x2821FE8E8](v1, 104, 7);
}

uint64_t sub_220BBD86C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_220BCDF70();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_220BCDF70();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_220B43830(&qword_27CF781E8, &qword_27CF781E0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF781E0);
            v9 = sub_220B4D540(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_220B55458(0, &qword_2812C0930);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220BBDA20(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_220BCDF70();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_220BCDF70();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_220B43830(&qword_27CF781D8, &qword_27CF781D0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF781D0);
            v9 = sub_220B4D150(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_220BCD730();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220BBDBC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_220BCDF70();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_220BCDF70();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_220B43830(&qword_27CF781C8, &qword_27CF781C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF781C0);
            v9 = sub_220B4D5C0(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78160);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_220BBDD74()
{
  result = qword_27CF781F0;
  if (!qword_27CF781F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF781F8);
    sub_220B897D0();
    sub_220BBD3C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF781F0);
  }

  return result;
}

uint64_t sub_220BBDE38()
{
  v0 = sub_220BCC080();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_220BCDB60();
  MEMORY[0x28223BE20](v1 - 8);
  sub_220BCDB50();
  sub_220B55458(0, &qword_27CF77300);
  if (!sub_220BCDEC0())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  sub_220BCC050();
  result = sub_220BCDBC0();
  qword_27CF7B2F8 = result;
  unk_27CF7B300 = v4;
  return result;
}

uint64_t sub_220BBDF9C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77900);
  MEMORY[0x28223BE20](v2);
  v3 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  v4 = *(v0 + 48);
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = v20;
  v1 = v20 >> 62;
  if (v20 >> 62)
  {
LABEL_21:
    v17 = sub_220BCDF70();
    result = sub_220BCDF70();
    if (result < 0)
    {
LABEL_32:
      __break(1u);
      return result;
    }

    if (v17 >= v4)
    {
      v18 = v4;
    }

    else
    {
      v18 = v17;
    }

    if (v17 < 0)
    {
      v18 = v4;
    }

    if (v4)
    {
      v7 = v18;
    }

    else
    {
      v7 = 0;
    }

    result = sub_220BCDF70();
    if (result >= v7)
    {
      goto LABEL_10;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= v4)
  {
    v6 = *(v0 + 48);
  }

  else
  {
    v6 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (result < v7)
  {
    goto LABEL_31;
  }

LABEL_10:
  if ((v3 & 0xC000000000000001) != 0 && v7)
  {
    sub_220B55458(0, &qword_2812C08B0);

    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_220BCDFD0();
      v8 = v9;
    }

    while (v7 != v9);
  }

  else
  {
  }

  if (v1)
  {
    v10 = sub_220BCE0B0();
    v11 = v13;
    v1 = v14;
    v12 = v15;
  }

  else
  {
    v10 = v3 & 0xFFFFFFFFFFFFFF8;
    v11 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v12 = (2 * v7) | 1;
  }

  v16 = sub_220B875AC();
  MEMORY[0x28223BE20](v16);
  *(&v19 - 6) = v10;
  *(&v19 - 5) = v11;
  *(&v19 - 4) = v1;
  *(&v19 - 3) = v12;
  *(&v19 - 2) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78208);
  sub_220B897D0();
  sub_220BBEC10();
  sub_220BCD3F0();
  return swift_unknownObjectRelease();
}

uint64_t sub_220BBE250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  swift_getKeyPath();
  v10 = swift_allocObject();
  v11 = a5[3];
  *(v10 + 48) = a5[2];
  *(v10 + 64) = v11;
  *(v10 + 80) = a5[4];
  v12 = a5[1];
  *(v10 + 16) = *a5;
  *(v10 + 32) = v12;
  *(v10 + 96) = a1;
  *(v10 + 104) = a2;
  *(v10 + 112) = a3;
  *(v10 + 120) = a4;
  swift_unknownObjectRetain_n();
  sub_220B89EE0(a5, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77938);
  sub_220B43830(&qword_27CF78220, &qword_27CF78218);
  sub_220B8990C();
  return sub_220BCD3D0();
}

uint64_t sub_220BBE3B4@<X0>(void **a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v54 = a5;
  v57 = a4;
  v46 = a3;
  v53 = a6;
  v8 = type metadata accessor for ListItemDocumentView();
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77948);
  MEMORY[0x28223BE20](v56);
  v13 = &v46 - v12;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77940);
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v55 = &v46 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77988);
  v51 = *(v15 - 8);
  v52 = v15;
  MEMORY[0x28223BE20](v15);
  v48 = &v46 - v16;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77938);
  MEMORY[0x28223BE20](v47);
  v18 = &v46 - v17;
  v19 = *a1;
  v59 = *a2;
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CE0);
  swift_storeEnumTagMultiPayload();
  v20 = (v11 + v9[7]);
  sub_220BBD724(&v59, v58);
  type metadata accessor for SearchResultsViewModel();
  sub_220B89AF4(&qword_2812C0F98, type metadata accessor for SearchResultsViewModel);
  v21 = v19;
  *v20 = sub_220BCC7A0();
  v20[1] = v22;
  *(v11 + v9[8]) = v21;
  *(v11 + v9[9]) = 3;
  v23 = [v21 identifier];
  v24 = sub_220BCDBA0();
  v26 = v25;

  v27 = sub_220B87F24(v24, v26);

  if (v27)
  {
    v58[0] = v27;
    v27 = sub_220BCD380();
  }

  result = sub_220B89BE4(v11, v13);
  v30 = v55;
  v29 = v56;
  *&v13[*(v56 + 36)] = v27;
  v31 = v54 >> 1;
  if (v54 >> 1 == v57)
  {
    v32 = v21;
  }

  else
  {
    if (v31 <= v57)
    {
      __break(1u);
      goto LABEL_13;
    }

    v33 = *(v46 + 8 * v57);
    sub_220B55458(0, &qword_2812C08B0);
    v34 = v21;
    v35 = v33;
    sub_220BCDED0();
  }

  sub_220BCC670();
  v36 = sub_220B89A0C();
  sub_220BCD040();
  result = sub_220BBECA4(v13);
  if (v31 == v57)
  {

LABEL_11:
    sub_220BCC680();
    v58[0] = v29;
    v58[1] = v36;
    swift_getOpaqueTypeConformance2();
    v39 = v48;
    v40 = v50;
    sub_220BCD040();
    (*(v49 + 8))(v30, v40);
    v41 = swift_allocObject();
    v42 = a2[3];
    *(v41 + 48) = a2[2];
    *(v41 + 64) = v42;
    *(v41 + 80) = a2[4];
    v43 = a2[1];
    *(v41 + 16) = *a2;
    *(v41 + 32) = v43;
    *(v41 + 96) = v21;
    (*(v51 + 32))(v18, v39, v52);
    v44 = &v18[*(v47 + 36)];
    *v44 = sub_220B89C48;
    v44[1] = v41;
    sub_220B37334(v18, v53);
    v45 = v21;
    return sub_220B89EE0(a2, v58);
  }

  if (v31 > v57)
  {
    v37 = *(v46 + 8 * v31 - 8);
    sub_220B55458(0, &qword_2812C08B0);
    v38 = v37;
    sub_220BCDED0();

    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_220BBE990()
{
  if (qword_27CF76990 != -1)
  {
    swift_once();
  }

  v0 = qword_27CF7B2F8;

  return v0;
}

unint64_t sub_220BBEA8C(uint64_t a1)
{
  result = sub_220BBEAB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_220BBEAB4()
{
  result = qword_27CF78200;
  if (!qword_27CF78200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF78200);
  }

  return result;
}

uint64_t sub_220BBEB08@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  *a1 = v3;
  return result;
}

uint64_t sub_220BBEB88(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_220BCC4D0();
}

unint64_t sub_220BBEC10()
{
  result = qword_27CF78210;
  if (!qword_27CF78210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF78208);
    sub_220B8990C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF78210);
  }

  return result;
}

uint64_t sub_220BBECA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77948);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_220BBED0C()
{
  result = qword_27CF78228;
  if (!qword_27CF78228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF78230);
    sub_220B897D0();
    sub_220BBEC10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF78228);
  }

  return result;
}

uint64_t sub_220BBEDA4()
{
  v0 = sub_220BCC080();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_220BCDB60();
  MEMORY[0x28223BE20](v1 - 8);
  sub_220BCD8F0();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_unknownObjectRetain();
    sub_220BCC4C0();

    v2 = (v9 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultUserGuideResolver);
    swift_beginAccess();
    v3 = *v2;
    sub_220B3A13C(*v2);

    if (v3)
    {
      v4 = sub_220BCD8E0();
      v5 = v3(v4);

      if (v5)
      {
        v6 = sub_220BCDA90();

        swift_unknownObjectRelease();
        sub_220B3A128(v3);
        return v6;
      }

      sub_220B3A128(v3);
    }

    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    sub_220BCD870();
    result = swift_dynamicCastClass();
    if (result)
    {
      sub_220BCDB50();
      sub_220B6AECC();
      if (!sub_220BCDEC0())
      {
        v8 = [objc_opt_self() mainBundle];
      }

      sub_220BCC050();
      return sub_220BCDBC0();
    }
  }

  return result;
}

uint64_t sub_220BBF10C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *))
{
  v5[0] = a1;
  v5[1] = a2;
  a3(&v4, v5);
  return v4;
}

uint64_t (*sub_220BBF19C(uint64_t *a1))()
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
  *(v3 + 48) = sub_220BCC4B0();
  return sub_220B55ED8;
}

uint64_t (*sub_220BBF268(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E80);
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

  v10 = OBJC_IVAR___TPSSearchResultViewModel__presentAsPopover;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E78);
  sub_220BCC490();
  swift_endAccess();
  return sub_220B55EDC;
}

uint64_t (*sub_220BBF450(uint64_t *a1))()
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
  *(v3 + 48) = sub_220BCC4B0();
  return sub_220B55ED8;
}

uint64_t (*sub_220BBF51C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E80);
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

  v10 = OBJC_IVAR___TPSSearchResultViewModel__viewCollapsed;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E78);
  sub_220BCC490();
  swift_endAccess();
  return sub_220B55EDC;
}

uint64_t sub_220BBF6A0(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  sub_220BCC4C0();

  return v4;
}

uint64_t sub_220BBF744(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_220BCC4D0();
}

uint64_t (*sub_220BBF7EC(uint64_t *a1))()
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
  *(v3 + 48) = sub_220BCC4B0();
  return sub_220B55ED8;
}

uint64_t (*sub_220BBF8B8(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E80);
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

  v10 = OBJC_IVAR___TPSSearchResultViewModel__displayChevron;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E78);
  sub_220BCC490();
  swift_endAccess();
  return sub_220B55EDC;
}

uint64_t (*sub_220BBFA50(uint64_t *a1))()
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
  *(v3 + 48) = sub_220BCC4B0();
  return sub_220B55ED8;
}

uint64_t (*sub_220BBFB1C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E80);
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

  v10 = OBJC_IVAR___TPSSearchResultViewModel__showAllResults;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E78);
  sub_220BCC490();
  swift_endAccess();
  return sub_220B55EDC;
}

uint64_t sub_220BBFC8C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  *a1 = v3;
  return result;
}

uint64_t sub_220BBFD0C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_220BCC4D0();
}

uint64_t sub_220BBFD7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();
}

uint64_t sub_220BBFDF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_220BCC4D0();
}

uint64_t (*sub_220BBFE60(uint64_t *a1))()
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
  *(v3 + 48) = sub_220BCC4B0();
  return sub_220B50F9C;
}

uint64_t sub_220BBFF04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78240);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78238);
  sub_220BCC4A0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_220BC00A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78240);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78238);
  sub_220BCC4A0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_220BC01DC(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78240);
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

  v10 = OBJC_IVAR___TPSSearchResultViewModel__seeAllResultsCategory;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78238);
  sub_220BCC490();
  swift_endAccess();
  return sub_220B51138;
}

uint64_t sub_220BC0374(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_220BCC4D0();
}

uint64_t sub_220BC0408()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_220BCC4D0();
}

uint64_t (*sub_220BC0470(uint64_t *a1))()
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
  *(v3 + 48) = sub_220BCC4B0();
  return sub_220B55ED8;
}

uint64_t sub_220BC0514(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E78);
  sub_220BCC4A0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_220BC06C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E78);
  sub_220BCC4A0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_220BC0800(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E80);
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

  v10 = OBJC_IVAR___TPSSearchResultViewModel__supportsHighlight;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E78);
  sub_220BCC490();
  swift_endAccess();
  return sub_220B55EDC;
}

uint64_t sub_220BC0970()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  return v1;
}

double sub_220BC09E4@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_220BC0A64(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_220BCC4D0();
}

uint64_t sub_220BC0AE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  return v1;
}

uint64_t sub_220BC0B58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_220BCC4D0();
}

uint64_t (*sub_220BC0BD0(uint64_t *a1))()
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
  *(v3 + 48) = sub_220BCC4B0();
  return sub_220B55ED8;
}

uint64_t sub_220BC0C74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78250);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78248);
  sub_220BCC4A0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_220BC0E14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78250);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78248);
  sub_220BCC4A0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_220BC0F4C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78250);
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

  v10 = OBJC_IVAR___TPSSearchResultViewModel__selectedIdentifier;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF78248);
  sub_220BCC490();
  swift_endAccess();
  return sub_220B55EDC;
}

uint64_t sub_220BC110C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  return v1;
}

uint64_t sub_220BC1178()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();
}

void *sub_220BC12B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  v0 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchQuery;
  swift_beginAccess();
  v1 = *(v4 + v0);
  v2 = v1;

  return v1;
}

uint64_t sub_220BC1400(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  sub_220BA9234(a1);
}

uint64_t sub_220BC1488@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  v2 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchQuery;
  swift_beginAccess();
  v3 = *(v6 + v2);
  v4 = v3;

  *a1 = v3;
  return result;
}

uint64_t sub_220BC1538(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_220BCC4C0();

  sub_220BA9234(v1);
}

void (*sub_220BC15C8(uint64_t *a1))(void **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  v6 = *v5;
  v7 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchQuery;
  swift_beginAccess();
  v8 = *(v6 + v7);
  v9 = v8;

  v5[3] = v8;
  return sub_220BC16C0;
}

void sub_220BC16C0(void **a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  swift_getKeyPath();
  swift_getKeyPath();
  if (a2)
  {
    v6 = v4;
    sub_220BCC4C0();

    sub_220BA9234(v4);
  }

  else
  {
    sub_220BCC4C0();

    sub_220BA9234(v4);
  }

  free(v3);
}

uint64_t sub_220BC185C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  v1 = sub_220BA9DC8(v0);

  return v1 & 1;
}

uint64_t sub_220BC18E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___TPSSearchResultViewModel_supportFlowSearchResultsProvider;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_220BC1994(uint64_t a1)
{
  v3 = OBJC_IVAR___TPSSearchResultViewModel_supportFlowSearchResultsProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_220BC1CC4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  v2 = (v7 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_tipActionHandler);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  sub_220B3A13C(v3);

  if (v3)
  {
    result = swift_allocObject();
    *(result + 16) = v3;
    *(result + 24) = v4;
    v6 = sub_220BB5700;
  }

  else
  {
    v6 = 0;
    result = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}