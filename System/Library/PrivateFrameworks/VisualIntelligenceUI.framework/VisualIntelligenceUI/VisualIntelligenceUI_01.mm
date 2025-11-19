uint64_t sub_21DF288CC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__selectedActionID);
  v6 = *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__selectedActionID + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_21E142B14() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3B4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_21DF28A6C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CE8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualLookup;
  swift_beginAccess();
  sub_21DF236C0(v1 + v6, v5, &qword_27CEA6CE8);
  v7 = sub_21DF356F0(v5, a1);
  sub_21DF23614(v5, &qword_27CEA6CE8);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3B4();
  }

  else
  {
    swift_beginAccess();
    sub_21DF35A68(a1, v1 + v6, &qword_27CEA6CE8);
    swift_endAccess();
  }

  return sub_21DF23614(a1, &qword_27CEA6CE8);
}

uint64_t sub_21DF28CE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a3;
  swift_beginAccess();
  sub_21DF35A68(a2, a1 + v7, a4);
  return swift_endAccess();
}

uint64_t sub_21DF28EC8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v11[0] = v1;
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v3 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 32);
  v5 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 64);
  v12 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 48);
  v4 = v12;
  v13 = v5;
  v14 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 80);
  v6 = v14;
  v8 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 16);
  v11[0] = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch);
  v7 = v11[0];
  v11[1] = v8;
  v11[2] = v3;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *a1 = v7;
  *(a1 + 16) = v8;
  return sub_21DF236C0(v11, v10, &qword_27CEA6D60);
}

uint64_t sub_21DF28FCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v15[0] = v3;
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v4 = v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch;
  v5 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 16);
  v15[0] = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch);
  v15[1] = v5;
  v7 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 48);
  v6 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 64);
  v8 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 80);
  v15[2] = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 32);
  v16 = v8;
  v15[3] = v7;
  v15[4] = v6;
  v9 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 16);
  *a2 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch);
  *(a2 + 16) = v9;
  v10 = *(v4 + 32);
  v11 = *(v4 + 48);
  v12 = *(v4 + 64);
  *(a2 + 80) = *(v4 + 80);
  *(a2 + 48) = v11;
  *(a2 + 64) = v12;
  *(a2 + 32) = v10;
  return sub_21DF236C0(v15, v14, &qword_27CEA6D60);
}

uint64_t sub_21DF290E0()
{
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3B4();
}

void sub_21DF291CC(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch;
  v14 = *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 8);
  v15 = *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch);
  v3 = *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 16);
  v4 = *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 24);
  v5 = *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 32);
  v6 = *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 40);
  v7 = *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 48);
  v8 = *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 56);
  v9 = *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 64);
  v10 = *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 72);
  v11 = *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 80);
  v12 = *(a2 + 48);
  *(v2 + 32) = *(a2 + 32);
  *(v2 + 48) = v12;
  *(v2 + 64) = *(a2 + 64);
  *(v2 + 80) = *(a2 + 80);
  v13 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v13;
  sub_21DF236C0(a2, v16, &qword_27CEA6D60);
  sub_21DF345D8(v15, v14, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_21DF292CC@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v7 = *a1;
  swift_beginAccess();
  return sub_21DF236C0(v9 + v7, a3, a2);
}

uint64_t sub_21DF293D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v8 = *a2;
  swift_beginAccess();
  return sub_21DF236C0(v7 + v8, a4, a3);
}

uint64_t sub_21DF294E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13[-v9];
  sub_21DF236C0(a1, &v13[-v9], a5);
  v11 = *a2;
  swift_getKeyPath();
  v14 = v11;
  v15 = v10;
  v16 = v11;
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3B4();

  return sub_21DF23614(v10, a5);
}

uint64_t sub_21DF29628@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v3 = v1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme;
  v4 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme);
  v5 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 8);
  v6 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 16);
  v7 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 32);
  *(a1 + 32) = v8;
  return sub_21DF356CC(v4, v5, v6, v7, v8);
}

uint64_t sub_21DF296F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v4 = v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme;
  v5 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme);
  v6 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 8);
  v7 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 16);
  v8 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 24);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  v9 = *(v4 + 32);
  *(a2 + 32) = v9;
  return sub_21DF356CC(v5, v6, v7, v8, v9);
}

uint64_t sub_21DF297B8()
{
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3B4();
}

uint64_t sub_21DF29894(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme;
  v3 = *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme);
  v4 = *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 8);
  v5 = *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 16);
  v6 = *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 24);
  v7 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v7;
  v8 = *(v2 + 32);
  *(v2 + 32) = *(a2 + 32);
  sub_21DF236C0(a2, v10, &qword_27CEA6D58);
  return sub_21DF346A0(v3, v4, v5, v6, v8);
}

uint64_t sub_21DF29958@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_21DF29A24()
{
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3B4();
}

uint64_t sub_21DF29B04()
{
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  swift_beginAccess();
}

uint64_t sub_21DF29BBC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executionFailures;
  swift_beginAccess();

  v5 = sub_21E0E713C(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3B4();
  }
}

uint64_t sub_21DF29D0C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

void *sub_21DF29D78()
{
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v1 = *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text);
  sub_21DF3563C(v1, *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text + 8), *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text + 16));
  return v1;
}

id sub_21DF29E44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v4 = v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text;
  v5 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text);
  v6 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text + 8);
  *a2 = v5;
  *(a2 + 8) = v6;
  v7 = *(v4 + 16);
  *(a2 + 16) = v7;
  return sub_21DF3563C(v5, v6, v7);
}

uint64_t sub_21DF29F04()
{
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3B4();
}

id sub_21DF29FE4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v3 = v1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback;
  v4 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback);
  *a1 = v4;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;
  return sub_21DF355B8(v4, v5);
}

id sub_21DF2A0A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v4 = v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback;
  v5 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback);
  *a2 = v5;
  v6 = *(v4 + 8);
  *(a2 + 8) = v6;
  return sub_21DF355B8(v5, v6);
}

uint64_t sub_21DF2A164()
{
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3B4();
}

uint64_t CardModel.onboardingExperience.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

uint64_t sub_21DF2A2FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t CardModel.onboardingExperience.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience;
  swift_beginAccess();
  result = *(v1 + v3);
  if (result != 5)
  {
    if (v2 == 5)
    {
      goto LABEL_7;
    }

    result = sub_21DF32F88(result, v2);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + v3) = v2;
    return result;
  }

  if (v2 == 5)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3B4();
}

uint64_t sub_21DF2A564()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void (*CardModel.onboardingExperience.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DF2A708;
}

uint64_t CardModel.isSearchCollapsed.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_21DF2A7D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t CardModel.isSearchCollapsed.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21DF2A9E8(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*CardModel.isSearchCollapsed.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DF2AB8C;
}

void sub_21DF2AB98(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_21E13D3D4();

  free(v1);
}

uint64_t CardModel.__allocating_init(id:cardTopPadding:cardBottomPadding:executeAction:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  *(v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__carouselActions) = MEMORY[0x277D84F90];
  v10 = (v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executeAction);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__selectedActionID);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualLookup;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C88);
  (*(*(v13 - 8) + 56))(v8 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__barcode;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C90);
  (*(*(v15 - 8) + 56))(v8 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__summarization;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C98);
  (*(*(v17 - 8) + 56))(v8 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__readAloud;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA0);
  (*(*(v19 - 8) + 56))(v8 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__eventExtraction;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA8);
  (*(*(v21 - 8) + 56))(v8 + v20, 1, 1, v21);
  v22 = v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *(v22 + 64) = 0u;
  *(v22 + 80) = -1;
  v23 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__geoLookup;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CB0);
  (*(*(v24 - 8) + 56))(v8 + v23, 1, 1, v24);
  v25 = v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = -256;
  *(v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualSearch) = sub_21DF26084(v9);
  *(v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executionFailures) = sub_21DF26264(v9);
  v26 = v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text;
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = -1;
  v27 = v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback;
  *v27 = 0;
  *(v27 + 8) = -1;
  *(v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience) = 5;
  *(v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed) = 1;
  sub_21E13D3F4();
  v28 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_id;
  v29 = sub_21E13D344();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v8 + v28, a1, v29);
  *(v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding) = a3;
  *(v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding) = a4;
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3B4();
  sub_21DF1F1DC(a2);

  (*(v30 + 8))(a1, v29);
  return v8;
}

uint64_t CardModel.init(id:cardTopPadding:cardBottomPadding:executeAction:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v10 = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__carouselActions) = MEMORY[0x277D84F90];
  v11 = (v5 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executeAction);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v5 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__selectedActionID);
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualLookup;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C88);
  (*(*(v14 - 8) + 56))(v5 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__barcode;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C90);
  (*(*(v16 - 8) + 56))(v5 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__summarization;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C98);
  (*(*(v18 - 8) + 56))(v5 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__readAloud;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA0);
  (*(*(v20 - 8) + 56))(v5 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__eventExtraction;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA8);
  (*(*(v22 - 8) + 56))(v5 + v21, 1, 1, v22);
  v23 = v5 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 0u;
  *(v23 + 64) = 0u;
  *(v23 + 80) = -1;
  v24 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__geoLookup;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CB0);
  (*(*(v25 - 8) + 56))(v5 + v24, 1, 1, v25);
  v26 = v5 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = -256;
  *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualSearch) = sub_21DF26084(v10);
  *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executionFailures) = sub_21DF26264(v10);
  v27 = v5 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text;
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = -1;
  v28 = v5 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback;
  *v28 = 0;
  *(v28 + 8) = -1;
  *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience) = 5;
  *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed) = 1;
  sub_21E13D3F4();
  v29 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_id;
  v30 = sub_21E13D344();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v5 + v29, a1, v30);
  *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding) = a3;
  *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding) = a4;
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3B4();
  sub_21DF1F1DC(a2);

  (*(v31 + 8))(a1, v30);
  return v5;
}

uint64_t CardModel.__allocating_init(pin:cardTopPadding:cardBottomPadding:executeAction:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = sub_21DF338D4(a1, a2, a3, a4, a5);
  sub_21DF1F1DC(a2);
  return v6;
}

void sub_21DF2B578(unint64_t a1)
{
  v50 = sub_21E13EE74();
  v2 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_21E13EE94();
  v4 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v33 - v7;
  v8 = sub_21E13EEE4();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v51 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  v55 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v55)
  {
    do
    {
      v13 = 0;
      v45 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel___observationRegistrar;
      v46 = 0;
      v36 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__carouselActions;
      v14 = v10 & 0xC000000000000001;
      v52 = (v9 + 48);
      v53 = v10 & 0xFFFFFFFFFFFFFF8;
      v43 = (v9 + 32);
      v42 = *MEMORY[0x277D79678];
      v41 = (v2 + 13);
      v40 = (v2 + 1);
      v39 = (v4 + 8);
      v38 = (v9 + 8);
      v2 = &qword_27CEA6D48;
      v34 = v10;
      v44 = v10 & 0xC000000000000001;
      v37 = v8;
      while (v14)
      {
        v15 = v10;
        v4 = MEMORY[0x223D530F0](v13, v11);
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_20;
        }

LABEL_10:
        swift_getKeyPath();
        v17 = v2;
        v57 = v4;
        sub_21DF34590(&qword_280F6B830, type metadata accessor for NewActionModel);
        sub_21E13D3C4();

        v18 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
        swift_beginAccess();
        v19 = v4 + v18;
        v2 = v17;
        v9 = v54;
        sub_21DF236C0(v19, v54, v17);
        if ((*v52)(v9, 1, v8) == 1)
        {

          sub_21DF23614(v9, v17);
        }

        else
        {
          v20 = v51;
          (*v43)(v51, v9, v8);
          v21 = v47;
          sub_21E13EEA4();
          v22 = v49;
          v9 = v50;
          (*v41)(v49, v42, v50);
          v23 = sub_21E13EE84();
          (*v40)(v22, v9);
          (*v39)(v21, v48);
          if ((v23 & 1) == 0)
          {
            swift_getKeyPath();
            v24 = v35;
            v57 = v35;
            v9 = sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
            sub_21E13D3C4();

            v57 = v24;
            swift_getKeyPath();
            sub_21E13D3E4();

            v25 = swift_beginAccess();
            v56 = v4;
            MEMORY[0x28223BE20](v25);
            *(&v33 - 2) = &v56;
            v26 = v46;
            v28 = sub_21DFA3790(sub_21DF35558, (&v33 - 4), v27);
            v46 = v26;
            v8 = v37;
            if ((v28 & 1) == 0)
            {

              v30 = v36;
              MEMORY[0x223D52AF0](v29);
              if (*((*(v24 + v30) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v24 + v30) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_21E1422F4();
                v24 = v35;
              }

              sub_21E142324();
            }

            swift_endAccess();
            sub_21DF27EE8();
            v57 = v24;
            swift_getKeyPath();
            sub_21E13D3D4();

            (*v38)(v51, v8);
            v10 = v34;
            v14 = v44;
            v2 = v17;
            goto LABEL_6;
          }

          v8 = v37;
          (*v38)(v20, v37);

          v14 = v44;
          v2 = v17;
        }

        v10 = v15;
LABEL_6:
        ++v13;
        if (v16 == v55)
        {
          return;
        }
      }

      if (v13 >= *(v53 + 16))
      {
        goto LABEL_21;
      }

      v15 = v10;
      v4 = *(v10 + 8 * v13 + 32);

      v16 = v13 + 1;
      if (!__OFADD__(v13, 1))
      {
        goto LABEL_10;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v31 = v10;
      v32 = sub_21E1427B4();
      v10 = v31;
      v55 = v32;
    }

    while (v32);
  }
}

void sub_21DF2BCDC(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = v3;
  v120 = a1;
  v108 = sub_21E13F0B4();
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E13D994();
  v9 = *(v8 - 8);
  v113 = v8;
  v114 = v9;
  MEMORY[0x28223BE20](v8);
  v111 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v112 = v77 - v12;
  v80 = sub_21E13DAE4();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_21E13DDE4();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_21E13DC24();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_21E13E0B4();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_21E13EDB4();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21E13DFC4();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_21E13DBC4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_21E13D884();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_21E13DDC4();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21E13DF64();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v115 = v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v116 = v77 - v26;
  v27 = sub_21E13E224();
  v117 = *(v27 - 8);
  v118 = v27;
  MEMORY[0x28223BE20](v27);
  v119 = v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = a2;
  v29 = a2[2];
  v30 = a2[3];

  sub_21DF288CC(v29, v30);
  sub_21DF2B578(a3);
  swift_getKeyPath();
  v31 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel___observationRegistrar;
  v126 = v4;
  v122 = sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  v123 = v31;
  sub_21E13D3C4();

  v32 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__carouselActions;
  swift_beginAccess();
  v124 = v4;
  v33 = *(v4 + v32);
  if (v33 >> 62)
  {
    v34 = sub_21E1427B4();
    if (v34)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
LABEL_3:
      v77[1] = v32;
      v109 = v22;
      v110 = v23;
      v35 = (v124 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__selectedActionID);
      v36 = (v33 & 0xC000000000000001);
      v121 = v33 & 0xFFFFFFFFFFFFFF8;

      v22 = 0;
      while (1)
      {
        if (v36)
        {
          v38 = MEMORY[0x223D530F0](v22, v33);
        }

        else
        {
          if (v22 >= *(v121 + 16))
          {
            __break(1u);
LABEL_67:
            if (v37 == *MEMORY[0x277D79240])
            {
              (*(v23 + 96))(v36, v22);
              v58 = v82;
              v59 = v81;
              v60 = v83;
              (*(v82 + 32))(v81, v36, v83);
              sub_21DF2FA14(v59);
              goto LABEL_31;
            }

            if (v37 != *MEMORY[0x277D79290] && v37 != *MEMORY[0x277D79258] && v37 != *MEMORY[0x277D79238])
            {
              if (v37 == *MEMORY[0x277D79278])
              {
                v72 = v23;
                v73 = v115;
                (*(v23 + 96))(v115, v22);
                v74 = v79;
                v75 = v78;
                v76 = v80;
                (*(v79 + 32))(v78, v73, v80);
                sub_21DF2FD30(v75);
                (*(v74 + 8))(v75, v76);
                (*(v72 + 8))(v116, v22);
                return;
              }

              if (v37 == *MEMORY[0x277D79250])
              {
                v65 = *(v23 + 8);
                v65(v116, v22);
                v66 = v115;
                goto LABEL_37;
              }

LABEL_85:
              sub_21E142B04();
              __break(1u);
              goto LABEL_86;
            }

LABEL_36:
            v65 = *(v23 + 8);
            v65(v34, v22);
            v66 = v36;
LABEL_37:
            v65(v66, v22);
            return;
          }

          v38 = *(v33 + 8 * v22 + 32);
        }

        v39 = *(v38 + 16);
        v23 = *(v38 + 24);
        swift_getKeyPath();
        v125 = v124;

        sub_21E13D3C4();

        v40 = v35[1];
        if (v40)
        {
          if (v39 == *v35 && v40 == v23)
          {

            goto LABEL_20;
          }

          v41 = sub_21E142B14();

          if (v41)
          {

LABEL_20:
            swift_getKeyPath();
            v43 = v124;
            v125 = v124;
            sub_21E13D3C4();

            v125 = v43;
            swift_getKeyPath();
            sub_21E13D3E4();

            swift_beginAccess();
            sub_21E001C40(v22);
            swift_endAccess();

            sub_21DF27EE8();
            v125 = v43;
            swift_getKeyPath();
            sub_21E13D3D4();

LABEL_21:
            v23 = v110;
            v22 = v109;
            break;
          }

          v42 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_61;
          }
        }

        else
        {

          v42 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }
        }

        ++v22;
        if (v42 == v34)
        {

          goto LABEL_21;
        }
      }
    }
  }

  v45 = v117;
  v44 = v118;
  v46 = v119;
  (*(v117 + 16))(v119, v120, v118);
  v47 = (*(v45 + 88))(v46, v44);
  if (v47 == *MEMORY[0x277D793B0])
  {
    (*(v45 + 96))(v46, v44);
    v34 = v116;
    (*(v23 + 32))(v116, v46, v22);
    v36 = v115;
    (*(v23 + 16))(v115, v34, v22);
    v37 = (*(v23 + 88))(v36, v22);
    if (v37 == *MEMORY[0x277D79268])
    {
      (*(v23 + 96))(v36, v22);
      v48 = *v36;
      v49 = *(v36 + 1);
      sub_21DF34830();
      v50 = swift_allocError();
      *v51 = v48;
      *(v51 + 8) = v49;
      *(v51 + 16) = 0;
      *(v51 + 24) = 0;
      *(v51 + 32) = 0;
      sub_21DF2D278(0, 0, v50);
    }

    else
    {
      if (v37 == *MEMORY[0x277D79270])
      {
        (*(v23 + 96))(v36, v22);
        v58 = v103;
        v59 = v102;
        v60 = v104;
        (*(v103 + 32))(v102, v36, v104);
        sub_21DF2DC38(v59);
        goto LABEL_31;
      }

      if (v37 == *MEMORY[0x277D79280])
      {
        goto LABEL_36;
      }

      if (v37 == *MEMORY[0x277D79220])
      {
        (*(v23 + 96))(v36, v22);
        v58 = v100;
        v59 = v99;
        v60 = v101;
        (*(v100 + 32))(v99, v36, v101);
        sub_21DF2DFD0(v59);
      }

      else if (v37 == *MEMORY[0x277D79230])
      {
        (*(v23 + 96))(v36, v22);
        v58 = v97;
        v59 = v96;
        v60 = v98;
        (*(v97 + 32))(v96, v36, v98);
        sub_21DF2E450(v59);
      }

      else if (v37 == *MEMORY[0x277D79260])
      {
        (*(v23 + 96))(v36, v22);
        v58 = v94;
        v59 = v93;
        v60 = v95;
        (*(v94 + 32))(v93, v36, v95);
        sub_21DF2E990(v59);
      }

      else if (v37 == *MEMORY[0x277D79248])
      {
        (*(v23 + 96))(v36, v22);
        v58 = v91;
        v59 = v90;
        v60 = v92;
        (*(v91 + 32))(v90, v36, v92);
        sub_21DF2EFD0(v59);
      }

      else
      {
LABEL_62:
        if (v37 == *MEMORY[0x277D79288])
        {
          (*(v23 + 96))(v36, v22);
          v58 = v88;
          v59 = v87;
          v60 = v89;
          (*(v88 + 32))(v87, v36, v89);
          sub_21DF2F640(v59);
        }

        else
        {
          if (v37 != *MEMORY[0x277D79228])
          {
            goto LABEL_67;
          }

          (*(v23 + 96))(v36, v22);
          v58 = v85;
          v59 = v84;
          v60 = v86;
          (*(v85 + 32))(v84, v36, v86);
          sub_21DF2D628(v59);
        }
      }

LABEL_31:
      (*(v58 + 8))(v59, v60);
    }

    (*(v23 + 8))(v34, v22);
    return;
  }

  if (v47 != *MEMORY[0x277D793A0])
  {
    if (v47 == *MEMORY[0x277D793B8])
    {
      (*(v45 + 96))(v46, v44);
      v61 = v106;
      v62 = v105;
      v63 = v46;
      v64 = v108;
      (*(v106 + 32))(v105, v63, v108);
      sub_21DF30050(v62, v107);
      (*(v61 + 8))(v62, v64);
      return;
    }

    if (v47 == *MEMORY[0x277D793A8])
    {
      (*(v45 + 96))(v46, v44);
      v67 = *v46;
      v68 = *(v46 + 1);
      sub_21DF34830();
      v69 = swift_allocError();
      *v70 = v67;
      *(v70 + 8) = v68;
      *(v70 + 16) = 0;
      *(v70 + 24) = 0;
      *(v70 + 32) = 0;
      sub_21DF2D278(0, 0, v69);

      return;
    }

    sub_21E142B04();
    __break(1u);
    goto LABEL_85;
  }

  (*(v45 + 96))(v46, v44);
  v53 = v113;
  v52 = v114;
  v54 = v112;
  (*(v114 + 32))(v112, v46, v113);
  v55 = v111;
  (*(v52 + 16))(v111, v54, v53);
  v56 = (*(v52 + 88))(v55, v53);
  if (v56 == *MEMORY[0x277D78F80] || v56 == *MEMORY[0x277D78F30])
  {
    v57 = *(v52 + 8);
    v57(v54, v53);
    v57(v55, v53);
    return;
  }

  if (v56 == *MEMORY[0x277D78F38])
  {
    (*(v52 + 8))(v54, v53);
    (*(v52 + 96))(v55, v53);
    v71 = sub_21E13E3F4();
    (*(*(v71 - 8) + 8))(v55, v71);
    return;
  }

  if (v56 == *MEMORY[0x277D78F68])
  {
    (*(v52 + 8))(v54, v53);
    (*(v52 + 96))(v55, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D20);

    sub_21DF23614(v55, &qword_27CEA6D28);
    return;
  }

  if (v56 == *MEMORY[0x277D78F70] || v56 == *MEMORY[0x277D78F78] || v56 == *MEMORY[0x277D78F28] || v56 == *MEMORY[0x277D78F98] || v56 == *MEMORY[0x277D78F20] || v56 == *MEMORY[0x277D78F88] || v56 == *MEMORY[0x277D78F60] || v56 == *MEMORY[0x277D78F58])
  {
    (*(v52 + 8))(v54, v53);
    return;
  }

  if (v56 == *MEMORY[0x277D78F48] || v56 == *MEMORY[0x277D78F90] || v56 == *MEMORY[0x277D78F50] || v56 == *MEMORY[0x277D78FA0] || v56 == *MEMORY[0x277D78F40])
  {
    (*(v114 + 8))(v112, v113);
  }

  else
  {
LABEL_86:
    sub_21E142B04();
    __break(1u);
  }
}

void sub_21DF2D278(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_21E13F1B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_6;
  }

  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v24 - 4) = v4;
    *(&v24 - 3) = a1;
    *(&v24 - 2) = a2;
    *(&v24 - 8) = 0;
    v26 = v4;
    sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);

    sub_21E13D3B4();
  }

  else
  {
LABEL_6:
    if (a3)
    {
      v14 = a3;
      sub_21E13EBF4();
      v15 = a3;
      v16 = sub_21E13F1A4();
      v17 = sub_21E142564();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = v25;
        *v18 = 136315138;
        swift_getErrorValue();
        v19 = sub_21E142BC4();
        v21 = sub_21E0E08C0(v19, v20, &v26);

        *(v18 + 4) = v21;
        _os_log_impl(&dword_21DF05000, v16, v17, "Attempted to apply an error built-in state: %s", v18, 0xCu);
        v22 = v25;
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x223D540B0](v22, -1, -1);
        MEMORY[0x223D540B0](v18, -1, -1);
      }

      (*(v9 + 8))(v11, v8);
      v23 = swift_getKeyPath();
      MEMORY[0x28223BE20](v23);
      *(&v24 - 4) = v4;
      *(&v24 - 3) = a3;
      *(&v24 - 2) = 0;
      *(&v24 - 8) = 1;
      v26 = v4;
      sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
      sub_21E13D3B4();
    }
  }
}

uint64_t sub_21DF2D628(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CC8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  v33 = sub_21E13DDB4();
  v5 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E13DDC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21E13D8D4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8, v14);
  result = (*(v9 + 88))(v11, v8);
  if (result == *MEMORY[0x277D791D0])
  {
    (*(v9 + 96))(v11, v8);
    v18 = v33;
    (*(v5 + 32))(v7, v11, v33);
    sub_21E13DD94();
    v19 = sub_21E13DDA4();
    *&v4[*(type metadata accessor for EventExtractionResult(0) + 20)] = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA8);
    swift_storeEnumTagMultiPayload();
    (*(*(v20 - 8) + 56))(v4, 0, 1, v20);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v22 = v34;
    *(&v33 - 2) = v34;
    *(&v33 - 1) = v4;
    v35 = v22;
    sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3B4();

    (*(v5 + 8))(v7, v18);
    return sub_21DF23614(v4, &qword_27CEA6CC8);
  }

  v23 = v34;
  if (result == *MEMORY[0x277D791A8] || result == *MEMORY[0x277D791C0] || result == *MEMORY[0x277D79198] || result == *MEMORY[0x277D791A0] || result == *MEMORY[0x277D791B0] || result == *MEMORY[0x277D791B8] || result == *MEMORY[0x277D79190])
  {
    (*(v9 + 96))(v11, v8);
    v30 = *(v13 + 32);
    v30(v16, v11, v12);
    v30(v4, v16, v12);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA8);
    swift_storeEnumTagMultiPayload();
    (*(*(v31 - 8) + 56))(v4, 0, 1, v31);
    v32 = swift_getKeyPath();
    MEMORY[0x28223BE20](v32);
    *(&v33 - 2) = v23;
    *(&v33 - 1) = v4;
    v35 = v23;
    sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3B4();

    return sub_21DF23614(v4, &qword_27CEA6CC8);
  }

  if (result != *MEMORY[0x277D791C8])
  {
    result = sub_21E142B04();
    __break(1u);
  }

  return result;
}

uint64_t sub_21DF2DC38(uint64_t a1)
{
  v2 = sub_21E13D8D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CE8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-v7];
  v9 = sub_21E13D884();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v13, a1, v9, v11);
  result = (*(v10 + 88))(v13, v9);
  if (result == *MEMORY[0x277D78EE8])
  {
    (*(v10 + 96))(v13, v9);
    *v8 = *v13;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C88);
    swift_storeEnumTagMultiPayload();
    (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
    return sub_21DF28A6C(v8);
  }

  else if (result == *MEMORY[0x277D78ED8])
  {
    (*(v10 + 96))(v13, v9);
    (*(v3 + 32))(v5, v13, v2);
    (*(v3 + 16))(v8, v5, v2);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C88);
    swift_storeEnumTagMultiPayload();
    (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
    sub_21DF28A6C(v8);
    return (*(v3 + 8))(v5, v2);
  }

  else if (result != *MEMORY[0x277D78EE0])
  {
    if (result == *MEMORY[0x277D78ED0])
    {
      v18 = 4;
      return CardModel.onboardingExperience.setter(&v18);
    }

    else
    {
      result = sub_21E142B04();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21DF2DFD0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v25 - v4;
  v6 = sub_21E13E144();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21E13DBC4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == *MEMORY[0x277D790F0])
  {
    return (*(v11 + 8))(v14, v10);
  }

  if (v15 == *MEMORY[0x277D790F8])
  {
    (*(v11 + 96))(v14, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACFC0);

    return (*(v7 + 8))(v14, v6);
  }

  else if (v15 == *MEMORY[0x277D79100])
  {
    (*(v11 + 96))(v14, v10);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D30);
    v18 = *&v14[v17[12]];
    v19 = *&v14[v17[16]];
    v20 = *&v14[v17[20]];
    v21 = *&v14[v17[24]];
    (*(v7 + 32))(v9, v14, v6);
    (*(v7 + 16))(v5, v9, v6);
    v22 = type metadata accessor for GeoLookupCardResult(0);
    *&v5[v22[5]] = v18;
    *&v5[v22[6]] = v19;
    *&v5[v22[7]] = v20;
    *&v5[v22[8]] = v21;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CB0);
    swift_storeEnumTagMultiPayload();
    (*(*(v23 - 8) + 56))(v5, 0, 1, v23);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v25[-2] = v1;
    v25[-1] = v5;
    v25[1] = v1;
    sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3B4();

    (*(v7 + 8))(v9, v6);
    return sub_21DF23614(v5, &qword_27CEA6CC0);
  }

  else
  {
    result = sub_21E142B04();
    __break(1u);
  }

  return result;
}

uint64_t sub_21DF2E450(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v23 - v4);
  v6 = sub_21E13DFB4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21E13DFC4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v14, a1, v10, v12);
  result = (*(v11 + 88))(v14, v10);
  if (result == *MEMORY[0x277D792D0])
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    (*(v7 + 16))(v5, v9, v6);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C90);
    swift_storeEnumTagMultiPayload();
    (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v23 - 2) = v1;
    *(&v23 - 1) = v5;
    v24 = v1;
    sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3B4();

    (*(v7 + 8))(v9, v6);
    return sub_21DF23614(v5, &qword_27CEA6CE0);
  }

  if (result == *MEMORY[0x277D792C0])
  {
    (*(v11 + 96))(v14, v10);
    v18 = v14[1];
    *v5 = *v14;
    v5[1] = v18;
    v19 = *MEMORY[0x277D792B8];
    v20 = sub_21E13DF94();
    (*(*(v20 - 8) + 104))(v5, v19, v20);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C90);
    swift_storeEnumTagMultiPayload();
    (*(*(v21 - 8) + 56))(v5, 0, 1, v21);
    v22 = swift_getKeyPath();
    MEMORY[0x28223BE20](v22);
    *(&v23 - 2) = v1;
    *(&v23 - 1) = v5;
    v24 = v1;
    sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3B4();

    return sub_21DF23614(v5, &qword_27CEA6CE0);
  }

  if (result != *MEMORY[0x277D792C8])
  {
    result = sub_21E142B04();
    __break(1u);
  }

  return result;
}

uint64_t sub_21DF2E990(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E13DF84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v34 - v9;
  v11 = sub_21E13EDB4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v15, a1, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == *MEMORY[0x277D79640])
  {
    (*(v12 + 96))(v15, v11);
    (*(v5 + 32))(v10, v15, v4);
    sub_21E13E7D4();
    v17 = sub_21E13E7C4();
    if (v18)
    {
      *&v36 = v17;
      *(&v36 + 1) = v18;
      *&v37 = v19;
      *(&v37 + 1) = v20;
      v38 = 257;
      v21 = v17;
      v34[0] = v20;
      v22 = v18;
      KeyPath = swift_getKeyPath();
      v34[1] = v34;
      MEMORY[0x28223BE20](KeyPath);
      v34[-2] = v2;
      v34[-1] = &v36;
      v35 = v2;
      sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
      sub_21E13D3B4();
      sub_21DF35414(v21, v22);

      return (*(v5 + 8))(v10, v4);
    }

    v28 = *(v5 + 104);
    v28(v7, *MEMORY[0x277D792B0], v4);
    v29 = sub_21E13DF74();
    v30 = *(v5 + 8);
    v30(v7, v4);
    if (v29)
    {
      LOBYTE(v36) = 0;
    }

    else
    {
      v28(v7, *MEMORY[0x277D792A0], v4);
      v31 = sub_21E13DF74();
      v30(v7, v4);
      if (v31)
      {
        v32 = 2;
      }

      else
      {
        v28(v7, *MEMORY[0x277D792A8], v4);
        v33 = sub_21E13DF74();
        v30(v7, v4);
        if ((v33 & 1) == 0)
        {
          return (v30)(v10, v4);
        }

        v32 = 3;
      }

      LOBYTE(v36) = v32;
    }

    CardModel.onboardingExperience.setter(&v36);
    return (v30)(v10, v4);
  }

  if (v16 == *MEMORY[0x277D79648])
  {
    (*(v12 + 96))(v15, v11);
    v25 = v15[1];
    *&v36 = *v15;
    *(&v36 + 1) = v25;
    v37 = 0uLL;
    v38 = 256;
    v26 = swift_getKeyPath();
    MEMORY[0x28223BE20](v26);
    v34[-2] = v2;
    v34[-1] = &v36;
    v35 = v2;
    sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3B4();
  }

  else if (v16 == *MEMORY[0x277D79650])
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v27 = swift_getKeyPath();
    MEMORY[0x28223BE20](v27);
    v34[-2] = v2;
    v34[-1] = &v36;
    v35 = v2;
    sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3B4();
  }

  else
  {
    result = sub_21E142B04();
    __break(1u);
  }

  return result;
}

uint64_t sub_21DF2EFD0(uint64_t a1)
{
  v3 = sub_21E13E614();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CD8);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v35 - v8);
  v10 = sub_21E13E0A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v17 = sub_21E13E0B4();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, v17, v19);
  result = (*(v18 + 88))(v21, v17);
  if (result == *MEMORY[0x277D79340])
  {
    (*(v18 + 96))(v21, v17);
    (*(v11 + 32))(v16, v21, v10);
    (*(v11 + 104))(v13, *MEMORY[0x277D79348], v10);
    v23 = sub_21E13E094();
    v24 = *(v11 + 8);
    v24(v13, v10);
    sub_21DF35458();
    v25 = swift_allocError();
    *v26 = (v23 & 1) == 0;
    *v9 = v25;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C98);
    swift_storeEnumTagMultiPayload();
    (*(*(v27 - 8) + 56))(v9, 0, 1, v27);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v35 - 2) = v1;
    *(&v35 - 1) = v9;
    v39 = v1;
    sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3B4();

    v24(v16, v10);
    return sub_21DF23614(v9, &qword_27CEA6CD8);
  }

  if (result == *MEMORY[0x277D79358])
  {
    (*(v18 + 96))(v21, v17);
    v30 = v36;
    v29 = v37;
    v31 = v38;
    (*(v37 + 32))(v36, v21, v38);
    v32 = v35;
    (*(v29 + 16))(v35, v30, v31);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C98);
    swift_storeEnumTagMultiPayload();
    (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    v34 = swift_getKeyPath();
    MEMORY[0x28223BE20](v34);
    *(&v35 - 2) = v1;
    *(&v35 - 1) = v32;
    v39 = v1;
    sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3B4();

    (*(v29 + 8))(v30, v31);
    v9 = v32;
    return sub_21DF23614(v9, &qword_27CEA6CD8);
  }

  if (result != *MEMORY[0x277D79350])
  {
    result = sub_21E142B04();
    __break(1u);
  }

  return result;
}

uint64_t sub_21DF2F640(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_21E13DC14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21E13DC24();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  result = (*(v11 + 88))(v14, v10);
  if (result == *MEMORY[0x277D79128])
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    (*(v7 + 16))(v5, v9, v6);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA0);
    swift_storeEnumTagMultiPayload();
    (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v18[-2] = v1;
    v18[-1] = v5;
    v18[1] = v1;
    sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3B4();

    (*(v7 + 8))(v9, v6);
    return sub_21DF23614(v5, &qword_27CEA6CD0);
  }

  else if (result == *MEMORY[0x277D79118])
  {
    return (*(v11 + 8))(v14, v10);
  }

  else if (result != *MEMORY[0x277D79120])
  {
    result = sub_21E142B04();
    __break(1u);
  }

  return result;
}

uint64_t sub_21DF2FA14(uint64_t a1)
{
  v3 = sub_21E13DDE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v24 - v9;
  v11 = *(v4 + 16);
  v11(v24 - v9, a1, v3, v8);
  v12 = *(v4 + 88);
  if (v12(v10, v3) == *MEMORY[0x277D791F8])
  {
    (*(v4 + 96))(v10, v3);
    v13 = v10[8];
    v14 = *(v10 + 4);
    v15 = *(v10 + 5);
    v16 = *(v10 + 3);
    v17 = *(v10 + 8);
    v18 = *(v10 + 9);
    *&v25 = *v10;
    BYTE8(v25) = v13;
    v26 = *(v10 + 1);
    *&v27 = v14;
    *(&v27 + 1) = v15;
    v28 = v16;
    *&v29 = v17;
    *(&v29 + 1) = v18;
    v31[3] = v16;
    v31[4] = v29;
    v31[2] = v27;
    v31[0] = v25;
    v31[1] = v26;
    v30 = 0;
    v32 = 0;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v24[-2] = v1;
    v24[-1] = v31;
    v24[2] = v1;
    sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3B4();
    sub_21DF354AC(&v25);
  }

  else
  {
    v24[0] = v1;
    v21 = *(v4 + 8);
    v21(v10, v3);
    (v11)(v6, a1, v3);
    v22 = v12(v6, v3);
    v23 = *MEMORY[0x277D791E8];
    result = (v21)(v6, v3);
    if (v22 == v23)
    {
      LOBYTE(v31[0]) = 1;
      return CardModel.onboardingExperience.setter(v31);
    }
  }

  return result;
}

void sub_21DF2FD30(uint64_t a1)
{
  v3 = sub_21E13DAE4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x277D79048])
  {
    (*(v4 + 96))(v7, v3);
    v9 = *v7;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v16 - 4) = v1;
    *(&v16 - 3) = v9;
    *(&v16 - 16) = 0;
    v17 = v1;
    sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3B4();
  }

  else if (v8 == *MEMORY[0x277D79040])
  {
    (*(v4 + 96))(v7, v3);
    v12 = *v7;
    v11 = *(v7 + 1);
    sub_21DF34830();
    v13 = swift_allocError();
    *v14 = v12;
    *(v14 + 8) = v11;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    v15 = swift_getKeyPath();
    MEMORY[0x28223BE20](v15);
    *(&v16 - 4) = v1;
    *(&v16 - 3) = v13;
    *(&v16 - 16) = 1;
    v17 = v1;
    sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3B4();
  }

  else
  {
    sub_21E142B04();
    __break(1u);
  }
}

uint64_t sub_21DF30050(uint64_t a1, void *a2)
{
  v119 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58);
  v116 = *(v3 - 8);
  v117 = v3;
  MEMORY[0x28223BE20](v3);
  v105 = &v103 - v4;
  v107 = sub_21E13F0C4();
  v109 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v110 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D40);
  MEMORY[0x28223BE20](v6 - 8);
  v111 = (&v103 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v103 - v9;
  v120 = sub_21E13EEE4();
  v112 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v108 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21E13F0A4();
  v115 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_21E13F1B4();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v103 - v18;
  MEMORY[0x28223BE20](v20);
  v106 = &v103 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v103 - v23;
  v25 = sub_21E13F0B4();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v29, v119, v25, v27);
  v30 = (*(v26 + 88))(v29, v25);
  if (v30 == *MEMORY[0x277D78A30])
  {
    (*(v26 + 96))(v29, v25);
    v31 = v115;
    (*(v115 + 32))(v14, v29, v12);
    swift_getKeyPath();
    v124 = a2;
    sub_21DF34590(&qword_280F6B830, type metadata accessor for NewActionModel);
    sub_21E13D3C4();

    v32 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
    swift_beginAccess();
    sub_21DF236C0(a2 + v32, v10, &qword_27CEA6D48);
    v33 = (*(v112 + 48))(v10, 1, v120);
    v104 = v12;
    v103 = v14;
    if (v33 == 1)
    {
      sub_21DF23614(v10, &qword_27CEA6D48);
      v34 = v106;
      sub_21E13EBF4();

      v35 = sub_21E13F1A4();
      v36 = sub_21E142564();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v124 = v38;
        *v37 = 136315138;
        swift_getKeyPath();
        v122 = a2;
        sub_21E13D3C4();

        swift_beginAccess();
        v39 = a2[7];
        v40 = a2[8];

        v41 = sub_21E0E08C0(v39, v40, &v124);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_21DF05000, v35, v36, "Failed to get pill for VAP visualSearchQuery – %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x223D540B0](v38, -1, -1);
        MEMORY[0x223D540B0](v37, -1, -1);
      }

      (*(v113 + 8))(v34, v114);
      v42 = a2[2];
      v43 = a2[3];
      sub_21DF34830();
      v44 = swift_allocError();
      *v45 = 0xD00000000000002CLL;
      *(v45 + 8) = 0x800000021E15B440;
      *(v45 + 16) = 0;
      *(v45 + 24) = 0;
      *(v45 + 32) = 0;
      v46 = v111;
      *v111 = v44;
      v47 = v117;
      swift_storeEnumTagMultiPayload();
      (*(v116 + 56))(v46, 0, 1, v47);
      swift_getKeyPath();
      v48 = v118;
      v124 = v118;
      sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);

      sub_21E13D3C4();

      v124 = v48;
      swift_getKeyPath();
      sub_21E13D3E4();

      swift_beginAccess();
      sub_21E08CF14(v46, v42, v43);
      swift_endAccess();
      v124 = v48;
      swift_getKeyPath();
      sub_21E13D3D4();

      return (*(v115 + 8))(v103, v104);
    }

    else
    {
      v73 = v112;
      v74 = v108;
      v75 = v120;
      (*(v112 + 32))(v108, v10, v120);
      v76 = a2[2];
      v77 = a2[3];
      v119 = v76;
      v78 = v111;
      (*(v73 + 16))(v111, v74, v75);
      v79 = type metadata accessor for PillQueryResult(0);
      (*(v31 + 16))(v78 + *(v79 + 20), v14, v12);
      v80 = v117;
      swift_storeEnumTagMultiPayload();
      (*(v116 + 56))(v78, 0, 1, v80);
      swift_getKeyPath();
      v81 = v118;
      v124 = v118;
      sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);

      sub_21E13D3C4();

      v124 = v81;
      swift_getKeyPath();
      sub_21E13D3E4();

      swift_beginAccess();

      v82 = v78;
      v83 = v119;
      sub_21E08CF14(v82, v119, v77);
      swift_endAccess();
      v124 = v81;
      swift_getKeyPath();
      sub_21E13D3D4();

      swift_getKeyPath();
      v124 = v81;
      sub_21E13D3C4();

      v124 = v81;
      swift_getKeyPath();
      sub_21E13D3E4();

      swift_beginAccess();
      sub_21DFD8B60(v83, v77, &v124);

      sub_21DF354DC(v124, v125, v126, v127, v128);
      swift_endAccess();
      v124 = v81;
      swift_getKeyPath();
      sub_21E13D3D4();

      (*(v73 + 8))(v108, v120);
      return (*(v31 + 8))(v103, v104);
    }
  }

  else if (v30 == *MEMORY[0x277D78A40])
  {
    (*(v26 + 96))(v29, v25);
    v50 = v107;
    (*(v109 + 32))(v110, v29, v107);
    sub_21E13EBF4();
    v51 = a2;

    v52 = sub_21E13F1A4();
    v53 = sub_21E142564();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v124 = v55;
      *v54 = 136315138;
      swift_getKeyPath();
      v123 = v51;
      sub_21DF34590(&qword_280F6B830, type metadata accessor for NewActionModel);
      sub_21E13D3C4();

      swift_beginAccess();
      v56 = v51[7];
      v57 = v51[8];

      v58 = sub_21E0E08C0(v56, v57, &v124);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_21DF05000, v52, v53, "Failed to execute VAP action – %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x223D540B0](v55, -1, -1);
      MEMORY[0x223D540B0](v54, -1, -1);
    }

    (*(v113 + 8))(v19, v114);
    v59 = v118;
    v60 = v51[2];
    v61 = v51[3];
    swift_getKeyPath();
    v124 = v59;
    sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3C4();

    v62 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualSearch;
    swift_beginAccess();
    v63 = *(v59 + v62);
    if (*(v63 + 16))
    {

      v64 = sub_21E0E0F20(v60, v61);
      if (v65)
      {
        v66 = v105;
        sub_21DF236C0(*(v63 + 56) + *(v116 + 72) * v64, v105, &qword_27CEA6C58);

        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_21DF23614(v66, &qword_27CEA6C58);
        if (EnumCaseMultiPayload != 1)
        {
          sub_21DF34590(&qword_27CEA6D50, MEMORY[0x277D78B00]);

          v68 = v110;
          v124 = sub_21E142BC4();
          v125 = v69;
          v126 = 0;
          v127 = 0;
          v128 = 2;
          swift_getKeyPath();
          v70 = v60;
          v122 = v59;
          sub_21E13D3C4();

          v122 = v59;
          swift_getKeyPath();
          sub_21E13D3E4();

          v71 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executionFailures;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v121 = *(v59 + v71);
          *(v59 + v71) = 0x8000000000000000;
          sub_21E0E6A2C(&v124, v70, v61, isUniquelyReferenced_nonNull_native);

          *(v59 + v71) = v121;
          swift_endAccess();
          v122 = v59;
          swift_getKeyPath();
          sub_21E13D3D4();

          return (*(v109 + 8))(v68, v50);
        }
      }

      else
      {
      }
    }

    v120 = v60;
    sub_21DF34590(&qword_27CEA6D50, MEMORY[0x277D78B00]);
    v98 = swift_allocError();
    v99 = v109;
    (*(v109 + 16))(v100, v110, v50);
    v101 = v111;
    *v111 = v98;
    v102 = v117;
    swift_storeEnumTagMultiPayload();
    (*(v116 + 56))(v101, 0, 1, v102);
    swift_getKeyPath();
    v124 = v59;

    sub_21E13D3C4();

    v124 = v59;
    swift_getKeyPath();
    sub_21E13D3E4();

    swift_beginAccess();
    sub_21E08CF14(v101, v120, v61);
    swift_endAccess();
    v124 = v59;
    swift_getKeyPath();
    sub_21E13D3D4();

    return (*(v99 + 8))(v110, v107);
  }

  else if (v30 == *MEMORY[0x277D78A48])
  {
    v84 = a2;
    sub_21E13EBF4();

    v85 = sub_21E13F1A4();
    v86 = sub_21E142554();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v124 = v88;
      *v87 = 136315138;
      swift_getKeyPath();
      v123 = v84;
      sub_21DF34590(&qword_280F6B830, type metadata accessor for NewActionModel);
      sub_21E13D3C4();

      swift_beginAccess();
      v89 = v84[7];
      v90 = v84[8];

      v91 = sub_21E0E08C0(v89, v90, &v124);

      *(v87 + 4) = v91;
      _os_log_impl(&dword_21DF05000, v85, v86, "Successfully executed VAP action – %s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v88);
      MEMORY[0x223D540B0](v88, -1, -1);
      MEMORY[0x223D540B0](v87, -1, -1);
    }

    (*(v113 + 8))(v24, v114);
    v92 = v118;
    v94 = v84[2];
    v93 = v84[3];
    swift_getKeyPath();
    v124 = v92;
    sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);

    sub_21E13D3C4();

    v124 = v92;
    swift_getKeyPath();
    sub_21E13D3E4();

    swift_beginAccess();
    sub_21DFD8B60(v94, v93, &v124);

    sub_21DF354DC(v124, v125, v126, v127, v128);
    swift_endAccess();
    v124 = v92;
    swift_getKeyPath();
    sub_21E13D3D4();
  }

  else
  {
    sub_21E13EBF4();
    v95 = sub_21E13F1A4();
    v96 = sub_21E142564();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_21DF05000, v95, v96, "Received an unknown case while parsing VAP execution results – no results will be produced", v97, 2u);
      MEMORY[0x223D540B0](v97, -1, -1);
    }

    (*(v113 + 8))(v16, v114);
    return (*(v26 + 8))(v29, v25);
  }
}

uint64_t sub_21DF31604(void *a1)
{
  v2 = v1;
  if (*a1 != 1)
  {
    if (*a1 == 8)
    {
      swift_getKeyPath();
      sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
      sub_21E13D3C4();

      v3 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience;
      swift_beginAccess();
      v4 = *(v2 + v3);
      if (v4 == 5 || (sub_21DF32F88(v4, 1u) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_15;
  }

  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v5 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback + 8);
  if (v5 != 255 && (v5 & 1) != 0 || ((swift_getKeyPath(), sub_21E13D3C4(), , v6 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 32), v6 >> 8 <= 0xFE) ? (v7 = (v6 & 0x100) == 0) : (v7 = 1), !v7))
  {
LABEL_15:
    LOBYTE(v10) = 0;
    return v10 & 1;
  }

  swift_getKeyPath();
  sub_21E13D3C4();

  v8 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (v9 > 3)
  {
LABEL_16:
    LOBYTE(v10) = 1;
    return v10 & 1;
  }

  v10 = 2u >> (v9 & 0xF);
  return v10 & 1;
}

Swift::Void __swiftcall CardModel.reset()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CC0);
  MEMORY[0x28223BE20](v2 - 8);
  v60 = &v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CC8);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CD8);
  MEMORY[0x28223BE20](v9 - 8);
  v58 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CE0);
  MEMORY[0x28223BE20](v11 - 8);
  v57 = &v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CE8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v54 - v14;
  v16 = sub_21E13F1B4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13EBF4();

  v20 = sub_21E13F1A4();
  v21 = sub_21E142554();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v56 = v8;
    v23 = v22;
    v24 = swift_slowAlloc();
    v55 = v16;
    v25 = v24;
    *&v65[0] = v24;
    *v23 = 136315138;
    sub_21E13D344();
    sub_21DF34590(&qword_27CEA6CF0, MEMORY[0x277CC95F0]);
    v26 = sub_21E142AB4();
    v28 = sub_21E0E08C0(v26, v27, v65);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_21DF05000, v20, v21, "Reset card model %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x223D540B0](v25, -1, -1);
    v29 = v23;
    v8 = v56;
    MEMORY[0x223D540B0](v29, -1, -1);

    (*(v17 + 8))(v19, v55);
  }

  else
  {

    (*(v17 + 8))(v19, v16);
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C88);
  (*(*(v30 - 8) + 56))(v15, 1, 1, v30);
  sub_21DF28A6C(v15);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C90);
  v32 = v57;
  (*(*(v31 - 8) + 56))(v57, 1, 1, v31);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v54 - 2) = v0;
  *(&v54 - 1) = v32;
  *&v65[0] = v0;
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3B4();

  sub_21DF23614(v32, &qword_27CEA6CE0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C98);
  v35 = v58;
  (*(*(v34 - 8) + 56))(v58, 1, 1, v34);
  v36 = swift_getKeyPath();
  MEMORY[0x28223BE20](v36);
  *(&v54 - 2) = v0;
  *(&v54 - 1) = v35;
  *&v65[0] = v0;
  sub_21E13D3B4();

  sub_21DF23614(v35, &qword_27CEA6CD8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA0);
  (*(*(v37 - 8) + 56))(v8, 1, 1, v37);
  v38 = swift_getKeyPath();
  MEMORY[0x28223BE20](v38);
  *(&v54 - 2) = v0;
  *(&v54 - 1) = v8;
  *&v65[0] = v0;
  sub_21E13D3B4();

  sub_21DF23614(v8, &qword_27CEA6CD0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA8);
  v40 = v59;
  (*(*(v39 - 8) + 56))(v59, 1, 1, v39);
  v41 = swift_getKeyPath();
  MEMORY[0x28223BE20](v41);
  *(&v54 - 2) = v0;
  *(&v54 - 1) = v40;
  *&v65[0] = v0;
  sub_21E13D3B4();

  sub_21DF23614(v40, &qword_27CEA6CC8);
  memset(v65, 0, sizeof(v65));
  v66 = -1;
  v42 = swift_getKeyPath();
  MEMORY[0x28223BE20](v42);
  *(&v54 - 2) = v0;
  *(&v54 - 1) = v65;
  *&v63[0] = v0;
  sub_21E13D3B4();

  v43 = sub_21DF26084(MEMORY[0x277D84F90]);
  v44 = swift_getKeyPath();
  MEMORY[0x28223BE20](v44);
  *(&v54 - 2) = v0;
  *(&v54 - 1) = v43;
  *&v63[0] = v0;
  sub_21E13D3B4();

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CB0);
  v46 = v60;
  (*(*(v45 - 8) + 56))(v60, 1, 1, v45);
  v47 = swift_getKeyPath();
  MEMORY[0x28223BE20](v47);
  *(&v54 - 2) = v0;
  *(&v54 - 1) = v46;
  *&v63[0] = v0;
  sub_21E13D3B4();

  sub_21DF23614(v46, &qword_27CEA6CC0);
  memset(v63, 0, sizeof(v63));
  v64 = -256;
  v48 = swift_getKeyPath();
  MEMORY[0x28223BE20](v48);
  *(&v54 - 2) = v0;
  *(&v54 - 1) = v63;
  v62[0] = v0;
  sub_21E13D3B4();

  v49 = swift_getKeyPath();
  MEMORY[0x28223BE20](v49);
  *(&v54 - 3) = 0;
  *(&v54 - 2) = 0;
  *(&v54 - 4) = v0;
  *(&v54 - 8) = -1;
  v62[0] = v0;
  sub_21E13D3B4();

  v50 = swift_getKeyPath();
  MEMORY[0x28223BE20](v50);
  *(&v54 - 4) = v0;
  *(&v54 - 3) = 0;
  *(&v54 - 16) = -1;
  v62[0] = v0;
  sub_21E13D3B4();

  LOBYTE(v62[0]) = 5;
  CardModel.onboardingExperience.setter(v62);
  v51 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
  swift_beginAccess();
  if (*(v1 + v51) == 1)
  {
    *(v1 + v51) = 1;
  }

  else
  {
    v52 = swift_getKeyPath();
    MEMORY[0x28223BE20](v52);
    *(&v54 - 2) = v1;
    *(&v54 - 8) = 1;
    v61 = v1;
    sub_21E13D3B4();
  }

  v53 = sub_21DF26264(MEMORY[0x277D84F90]);
  sub_21DF29BBC(v53);
}

uint64_t CardModel.deinit()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_id;
  v2 = sub_21E13D344();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21DF1F1DC(*(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executeAction));

  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualLookup, &qword_27CEA6CE8);
  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__barcode, &qword_27CEA6CE0);
  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__summarization, &qword_27CEA6CD8);
  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__readAloud, &qword_27CEA6CD0);
  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__eventExtraction, &qword_27CEA6CC8);
  sub_21DF345D8(*(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch), *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 8), *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 16), *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 24), *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 32), *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 40), *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 48), *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 56), *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 64), *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 72), *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 80));
  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__geoLookup, &qword_27CEA6CC0);
  sub_21DF346A0(*(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme), *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 8), *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 16), *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 24), *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 32));

  sub_21DF34730(*(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text), *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text + 8), *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text + 16));
  sub_21DF34758(*(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback), *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback + 8));
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel___observationRegistrar;
  v4 = sub_21E13D404();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t CardModel.__deallocating_deinit()
{
  CardModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21DF3279C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_id;
  v5 = sub_21E13D344();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t static PillQueryResult.== infix(_:_:)()
{
  if ((MEMORY[0x223D4F680]() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PillQueryResult(0);

  return sub_21E13F084();
}

uint64_t PillQueryResult.hash(into:)()
{
  sub_21E13EEE4();
  sub_21DF34590(&qword_27CEA6CF8, MEMORY[0x277D79698]);
  sub_21E142024();
  type metadata accessor for PillQueryResult(0);
  sub_21E13F0A4();
  sub_21DF34590(&qword_27CEA6D00, MEMORY[0x277D788A8]);
  return sub_21E142024();
}

uint64_t PillQueryResult.hashValue.getter()
{
  sub_21E142C14();
  sub_21E13EEE4();
  sub_21DF34590(&qword_27CEA6CF8, MEMORY[0x277D79698]);
  sub_21E142024();
  type metadata accessor for PillQueryResult(0);
  sub_21E13F0A4();
  sub_21DF34590(&qword_27CEA6D00, MEMORY[0x277D788A8]);
  sub_21E142024();
  return sub_21E142C44();
}

uint64_t sub_21DF32A40()
{
  sub_21E142C14();
  sub_21E13EEE4();
  sub_21DF34590(&qword_27CEA6CF8, MEMORY[0x277D79698]);
  sub_21E142024();
  sub_21E13F0A4();
  sub_21DF34590(&qword_27CEA6D00, MEMORY[0x277D788A8]);
  sub_21E142024();
  return sub_21E142C44();
}

uint64_t sub_21DF32B2C()
{
  sub_21E13EEE4();
  sub_21DF34590(&qword_27CEA6CF8, MEMORY[0x277D79698]);
  sub_21E142024();
  sub_21E13F0A4();
  sub_21DF34590(&qword_27CEA6D00, MEMORY[0x277D788A8]);
  return sub_21E142024();
}

uint64_t sub_21DF32C00()
{
  sub_21E142C14();
  sub_21E13EEE4();
  sub_21DF34590(&qword_27CEA6CF8, MEMORY[0x277D79698]);
  sub_21E142024();
  sub_21E13F0A4();
  sub_21DF34590(&qword_27CEA6D00, MEMORY[0x277D788A8]);
  sub_21E142024();
  return sub_21E142C44();
}

uint64_t sub_21DF32CE8()
{
  if ((MEMORY[0x223D4F680]() & 1) == 0)
  {
    return 0;
  }

  return sub_21E13F084();
}

uint64_t CardModelError.internalDescription.getter()
{
  v1 = *(v0 + 16 * (*(v0 + 32) == 1));

  return v1;
}

uint64_t CardModelError.errorDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_21DF32DD4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_21DF32E24(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7261657070416E6FLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD00000000000001ALL;
    }

    else
    {
      v4 = 0x72676B6361426E6FLL;
    }

    if (v3 == 2)
    {
      v5 = 0x800000021E15AFD0;
    }

    else
    {
      v5 = 0xEC000000646E756FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7070617369446E6FLL;
    }

    else
    {
      v4 = 0x7261657070416E6FLL;
    }

    if (v3)
    {
      v5 = 0xEB00000000726165;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xD00000000000001ALL;
  v8 = 0x800000021E15AFD0;
  if (a2 != 2)
  {
    v7 = 0x72676B6361426E6FLL;
    v8 = 0xEC000000646E756FLL;
  }

  if (a2)
  {
    v2 = 0x7070617369446E6FLL;
    v6 = 0xEB00000000726165;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21E142B14();
  }

  return v11 & 1;
}

uint64_t sub_21DF32F88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6165536567616D69;
    }

    else
    {
      v4 = 0x656D63416B7361;
    }

    if (v2)
    {
      v3 = 0xEB00000000686372;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1769105779;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x617261746E6F6DLL;
  }

  else
  {
    v4 = 0x6F4C6C6175736976;
    v3 = 0xEC00000070556B6FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6165536567616D69;
    }

    else
    {
      v9 = 0x656D63416B7361;
    }

    if (a2)
    {
      v8 = 0xEB00000000686372;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x617261746E6F6DLL;
    if (a2 != 3)
    {
      v6 = 0x6F4C6C6175736976;
      v5 = 0xEC00000070556B6FLL;
    }

    if (a2 == 2)
    {
      v7 = 1769105779;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_21E142B14();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_21DF33124(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000072656E69;
  v3 = 0x61746E6F436E6950;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0x6F436172656D6143;
    v14 = 0xED00006C6F72746ELL;
    if (a1 != 2)
    {
      v13 = 0x61426E6F69746341;
      v14 = 0xE900000000000072;
    }

    v15 = 0xE700000000000000;
    v16 = 0x72657474756853;
    if (!a1)
    {
      v16 = 0x61746E6F436E6950;
      v15 = 0xEC00000072656E69;
    }

    if (a1 <= 1u)
    {
      v11 = v16;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 1)
    {
      v12 = v15;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x726162696E6D4FLL;
    v7 = 0xE400000000000000;
    v8 = 1685217603;
    if (a1 != 7)
    {
      v8 = 0xD000000000000010;
      v7 = 0x800000021E15AEF0;
    }

    if (a1 != 6)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = 0x61426E6F69746341;
    v10 = 0xED0000756E654D72;
    if (a1 != 4)
    {
      v9 = 0x6574616369646544;
      v10 = 0xEF6E6F7474754264;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        if (a2 == 7)
        {
          v2 = 0xE400000000000000;
          if (v11 != 1685217603)
          {
            goto LABEL_49;
          }

          goto LABEL_46;
        }

        v3 = 0xD000000000000010;
        v2 = 0x800000021E15AEF0;
        goto LABEL_45;
      }

      v2 = 0xE700000000000000;
      v17 = 0x6162696E6D4FLL;
LABEL_40:
      if (v11 != (v17 & 0xFFFFFFFFFFFFLL | 0x72000000000000))
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 != 4)
    {
      v2 = 0xEF6E6F7474754264;
      if (v11 != 0x6574616369646544)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v18 = 0x61426E6F69746341;
    v19 = 0x756E654D72;
LABEL_37:
    v2 = v19 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v11 != v18)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v2 = 0xE900000000000072;
      if (v11 != 0x61426E6F69746341)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v18 = 0x6F436172656D6143;
    v19 = 0x6C6F72746ELL;
    goto LABEL_37;
  }

  if (a2)
  {
    v2 = 0xE700000000000000;
    v17 = 0x657474756853;
    goto LABEL_40;
  }

LABEL_45:
  if (v11 != v3)
  {
LABEL_49:
    v20 = sub_21E142B14();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v20 = 1;
LABEL_50:

  return v20 & 1;
}

uint64_t sub_21DF33420(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21E1423C4();
  v5[2] = v2;
  v5[3] = v3;
  return sub_21E0C372C(sub_21DF35578, v5, "VisualIntelligenceUI/NewActionModel.swift") & 1;
}

uint64_t _s20VisualIntelligenceUI14CardModelErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      goto LABEL_24;
    }

    v18 = *a1;
    if (v3 == v8 && v2 == v7)
    {
      sub_21DF27ADC(v18, v2, v10, v9, 0);
      sub_21DF27ADC(v3, v2, v5, v4, 0);
      sub_21DF346C4(v3, v2, v5, v4, 0);
      v13 = v3;
      v14 = v2;
      v15 = v10;
      v16 = v9;
      v17 = 0;
      goto LABEL_30;
    }

    v20 = sub_21E142B14();
    sub_21DF27ADC(v8, v7, v10, v9, 0);
    sub_21DF27ADC(v3, v2, v5, v4, 0);
    sub_21DF346C4(v3, v2, v5, v4, 0);
    v21 = v8;
    v22 = v7;
    v23 = v10;
    v24 = v9;
    v25 = 0;
LABEL_28:
    sub_21DF346C4(v21, v22, v23, v24, v25);
    return v20 & 1;
  }

  if (v6 != 1)
  {
    if (v11 != 2)
    {
      goto LABEL_24;
    }

    v26 = *a1;
    if (v3 == v8 && v2 == v7)
    {
      sub_21DF27ADC(v26, v2, v10, v9, 2);
      sub_21DF27ADC(v3, v2, v5, v4, 2);
      sub_21DF346C4(v3, v2, v5, v4, 2);
      v13 = v3;
      v14 = v2;
      v15 = v10;
      v16 = v9;
      v17 = 2;
      goto LABEL_30;
    }

    v20 = sub_21E142B14();
    sub_21DF27ADC(v8, v7, v10, v9, 2);
    sub_21DF27ADC(v3, v2, v5, v4, 2);
    sub_21DF346C4(v3, v2, v5, v4, 2);
    v21 = v8;
    v22 = v7;
    v23 = v10;
    v24 = v9;
    v25 = 2;
    goto LABEL_28;
  }

  if (v11 != 1)
  {
LABEL_24:
    sub_21DF27ADC(*a2, *(a2 + 8), v10, v9, v11);
    sub_21DF27ADC(v3, v2, v5, v4, v6);
    sub_21DF346C4(v3, v2, v5, v4, v6);
    v28 = v8;
    v29 = v7;
    v30 = v10;
    v31 = v9;
    v32 = v11;
LABEL_25:
    sub_21DF346C4(v28, v29, v30, v31, v32);
    return 0;
  }

  v12 = v3 == v8 && v2 == v7;
  if (!v12 && (sub_21E142B14() & 1) == 0)
  {
    sub_21DF27ADC(v8, v7, v10, v9, 1);
    sub_21DF27ADC(v3, v2, v5, v4, 1);
    sub_21DF346C4(v3, v2, v5, v4, 1);
    v28 = v8;
    v29 = v7;
    v30 = v10;
    v31 = v9;
    v32 = 1;
    goto LABEL_25;
  }

  if (v5 != v10 || v4 != v9)
  {
    v20 = sub_21E142B14();
    sub_21DF27ADC(v8, v7, v10, v9, 1);
    sub_21DF27ADC(v3, v2, v5, v4, 1);
    sub_21DF346C4(v3, v2, v5, v4, 1);
    v21 = v8;
    v22 = v7;
    v23 = v10;
    v24 = v9;
    v25 = 1;
    goto LABEL_28;
  }

  sub_21DF27ADC(v8, v7, v5, v4, 1);
  sub_21DF27ADC(v3, v2, v5, v4, 1);
  sub_21DF346C4(v3, v2, v5, v4, 1);
  v13 = v8;
  v14 = v7;
  v15 = v5;
  v16 = v4;
  v17 = 1;
LABEL_30:
  sub_21DF346C4(v13, v14, v15, v16, v17);
  return 1;
}

uint64_t sub_21DF338D4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v64 = a1;
  v81 = sub_21E13EE74();
  v75 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_21E13EE94();
  v70 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E13EEE4();
  v82 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v66 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v68 = v63 - v14;
  v83 = sub_21E13D344();
  v15 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13EE24();
  type metadata accessor for CardModel(0);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D84F90];
  *(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__carouselActions) = MEMORY[0x277D84F90];
  v20 = (v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executeAction);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__selectedActionID);
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualLookup;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C88);
  (*(*(v23 - 8) + 56))(v18 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__barcode;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C90);
  (*(*(v25 - 8) + 56))(v18 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__summarization;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C98);
  (*(*(v27 - 8) + 56))(v18 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__readAloud;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA0);
  (*(*(v29 - 8) + 56))(v18 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__eventExtraction;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA8);
  (*(*(v31 - 8) + 56))(v18 + v30, 1, 1, v31);
  v32 = v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0u;
  *(v32 + 48) = 0u;
  *(v32 + 64) = 0u;
  *(v32 + 80) = -1;
  v33 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__geoLookup;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CB0);
  (*(*(v34 - 8) + 56))(v18 + v33, 1, 1, v34);
  v35 = v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme;
  *v35 = 0u;
  *(v35 + 16) = 0u;
  *(v35 + 32) = -256;
  sub_21DF09028(a2);
  *(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualSearch) = sub_21DF26084(v19);
  *(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executionFailures) = sub_21DF26264(v19);
  v36 = v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text;
  *v36 = 0;
  *(v36 + 8) = 0;
  *(v36 + 16) = -1;
  v37 = v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback;
  *v37 = 0;
  *(v37 + 8) = -1;
  *(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience) = 5;
  *(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed) = 1;
  sub_21E13D3F4();
  v38 = v17;
  v39 = v17;
  v40 = v83;
  (*(v15 + 16))(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_id, v39, v83);
  *(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding) = a4;
  *(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding) = a5;
  swift_getKeyPath();
  v84 = v18;
  v85 = a2;
  v86 = a3;
  v41 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel___observationRegistrar;
  v88 = v18;
  v76 = sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel);
  v77 = v41;
  sub_21E13D3B4();
  sub_21DF1F1DC(a2);
  v42 = v64;

  (*(v15 + 8))(v38, v40);

  v43 = sub_21E13EDD4();
  v44 = *(v43 + 16);
  if (v44)
  {
    v67 = v18;
    v65 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__carouselActions;
    v45 = *(v82 + 16);
    v46 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v63[1] = v43;
    v47 = v43 + v46;
    v74 = *(v82 + 72);
    v73 = *MEMORY[0x277D79678];
    v72 = (v75 + 104);
    v71 = (v75 + 8);
    ++v70;
    v82 += 16;
    v69 = (v82 - 8);
    v48 = v68;
    v75 = v45;
    do
    {
      v83 = v44;
      (v45)(v48, v47, v11);
      v49 = v11;
      v50 = v78;
      sub_21E13EEA4();
      v52 = v80;
      v51 = v81;
      (*v72)(v80, v73, v81);
      v53 = sub_21E13EE84();
      (*v71)(v52, v51);
      (*v70)(v50, v79);
      if (v53)
      {
        (*v69)(v48, v49);
        v11 = v49;
      }

      else
      {
        v54 = v66;
        (v45)(v66, v48, v49);
        type metadata accessor for NewActionModel();
        swift_allocObject();
        v55 = NewActionModel.init(pill:)(v54);
        swift_getKeyPath();
        v56 = v67;
        v88 = v67;
        sub_21E13D3C4();

        v88 = v56;
        swift_getKeyPath();
        sub_21E13D3E4();

        v57 = v65;
        v58 = swift_beginAccess();
        v87 = v55;
        MEMORY[0x28223BE20](v58);
        v63[-2] = &v87;
        v11 = v49;
        if ((sub_21DFA3790(sub_21DF35DA4, &v63[-4], v59) & 1) == 0)
        {

          MEMORY[0x223D52AF0](v60);
          if (*((*(v56 + v57) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v56 + v57) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21E1422F4();
          }

          sub_21E142324();
        }

        swift_endAccess();
        sub_21DF27EE8();
        v88 = v56;
        swift_getKeyPath();
        sub_21E13D3D4();

        v48 = v68;
        (*v69)(v68, v49);
      }

      v47 += v74;
      v44 = v83 - 1;
      v45 = v75;
    }

    while (v83 != 1);
    v18 = v67;

    v42 = v64;
  }

  else
  {
  }

  v61 = sub_21E13EF04();
  (*(*(v61 - 8) + 8))(v42, v61);
  return v18;
}

uint64_t sub_21DF34534()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_21DF34590(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21DF345D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  if (a11 != 255)
  {
    sub_21DF345FC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11 & 1);
  }
}

void sub_21DF345FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11)
  {
  }

  else
  {
  }
}

uint64_t sub_21DF346A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if (HIBYTE(a5) != 255)
  {
    return sub_21DF346B8(result, a2, a3, a4, a5, HIBYTE(a5) & 1);
  }

  return result;
}

uint64_t sub_21DF346B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    return sub_21DF346C4(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_21DF346C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5 || a5 == 2)
  {
  }

  else
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

void sub_21DF34730(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_21DF34748(a1, a2, a3 & 1);
  }
}

void sub_21DF34748(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_21DF34758(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_21DF34770(a1);
  }
}

unint64_t sub_21DF34830()
{
  result = qword_27CEA6D10;
  if (!qword_27CEA6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6D10);
  }

  return result;
}

void sub_21DF3488C()
{
  sub_21E13D344();
  if (v0 <= 0x3F)
  {
    sub_21DF350F8(319, &qword_280F68BC8, &qword_27CEA6C88, &unk_21E145670, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21DF350F8(319, &qword_280F68BD0, &qword_27CEA6C90, &unk_21E147310, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21DF350F8(319, &qword_280F68BE0, &qword_27CEA6C98, &unk_21E145680, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21DF350F8(319, &qword_280F68BD8, &qword_27CEA6CA0, &unk_21E147320, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_21DF350F8(319, &qword_280F68BE8, &qword_27CEA6CA8, &unk_21E145690, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_21DF350F8(319, &qword_280F68BF0, &qword_27CEA6CB0, &unk_21E147330, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_21E13D404();
                if (v7 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_21DF34C74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_21DF34CBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PartneredActionsManager(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PartneredActionsManager(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21DF34E34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21DF34E7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void sub_21DF34F24()
{
  sub_21E13E144();
  if (v0 <= 0x3F)
  {
    sub_21DF35054(319, &qword_280F68CB0, MEMORY[0x277D796C8]);
    if (v1 <= 0x3F)
    {
      sub_21DF35054(319, &qword_280F68CC0, MEMORY[0x277D794F8]);
      if (v2 <= 0x3F)
      {
        sub_21DF350A8();
        if (v3 <= 0x3F)
        {
          sub_21DF350F8(319, &qword_280F68CB8, &qword_27CEA6D18, &unk_21E145C48, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21DF35054(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21E142344();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21DF350A8()
{
  if (!qword_280F68CA0)
  {
    v0 = sub_21E142344();
    if (!v1)
    {
      atomic_store(v0, &qword_280F68CA0);
    }
  }
}

void sub_21DF350F8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_75Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_76Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21DF35320(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DF35384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21DF35414(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_21DF35458()
{
  result = qword_27CEA6D38;
  if (!qword_27CEA6D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6D38);
  }

  return result;
}

uint64_t sub_21DF354DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_21DF346C4(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_21DF3550C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__selectedActionID);
  *v2 = v0[3];
  v2[1] = v1;
}

id sub_21DF355B8(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_21DF355D0(a1);
  }

  return a1;
}

void sub_21DF355DC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback;
  v3 = *v2;
  v4 = *(v0 + 32);
  *v2 = v1;
  v5 = *(v2 + 8);
  *(v2 + 8) = v4;
  sub_21DF355B8(v1, v4);
  sub_21DF34758(v3, v5);
}

id sub_21DF3563C(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_21DF35654(result, a2, a3 & 1);
  }

  return result;
}

id sub_21DF35654(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_21DF35664()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v0 + 40);
  *v3 = v1;
  *(v3 + 8) = v2;
  v7 = *(v3 + 16);
  *(v3 + 16) = v6;
  sub_21DF3563C(v1, v2, v6);
  sub_21DF34730(v4, v5, v7);
}

uint64_t sub_21DF356CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if (HIBYTE(a5) != 255)
  {
    return sub_21DF356E4(result, a2, a3, a4, a5, HIBYTE(a5) & 1);
  }

  return result;
}

uint64_t sub_21DF356E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    return sub_21DF27ADC(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_21DF356F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C88);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CE8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D68);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_21DF236C0(a1, &v21 - v12, &qword_27CEA6CE8);
  sub_21DF236C0(a2, &v13[v15], &qword_27CEA6CE8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21DF236C0(v13, v10, &qword_27CEA6CE8);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_21DF35B04(&v13[v15], v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D70);
      sub_21E13D8D4();
      sub_21DF35B74();
      v18 = MEMORY[0x277D78EF0];
      sub_21DF34590(&qword_27CEA6D88, MEMORY[0x277D78EF0]);
      sub_21DF34590(&qword_27CEA6D90, v18);
      v19 = sub_21E142C54();
      sub_21DF23614(v7, &qword_27CEA6C88);
      sub_21DF23614(v10, &qword_27CEA6C88);
      sub_21DF23614(v13, &qword_27CEA6CE8);
      v17 = v19 ^ 1;
      return v17 & 1;
    }

    sub_21DF23614(v10, &qword_27CEA6C88);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21DF23614(v13, &qword_27CEA6D68);
    v17 = 1;
    return v17 & 1;
  }

  sub_21DF23614(v13, &qword_27CEA6CE8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21DF35A68(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DF35B04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DF35B74()
{
  result = qword_27CEA6D78;
  if (!qword_27CEA6D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6D70);
    sub_21DF34590(&qword_27CEA6D80, MEMORY[0x277D78D90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6D78);
  }

  return result;
}

uint64_t sub_21DF35C28()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executeAction);
  v4 = *v3;
  *v3 = v1;
  v3[1] = v2;
  sub_21DF09028(v1);
  return sub_21DF1F1DC(v4);
}

uint64_t sub_21DF35C80(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

VisualIntelligenceUI::ActionAnalytics::ActionType_optional __swiftcall ActionAnalytics.ActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21E142B24();

  v5 = 0;
  v6 = 4;
  switch(v3)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v5 = 1;
      goto LABEL_11;
    case 2:
      v5 = 2;
      goto LABEL_11;
    case 3:
      v5 = 3;
LABEL_11:
      v6 = v5;
      break;
    case 4:
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    default:
      v6 = 22;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t ActionAnalytics.ActionType.rawValue.getter()
{
  result = 0x6F4C6C6175736956;
  switch(*v0)
  {
    case 1:
      result = 0x6B6F6F4C7370614DLL;
      break;
    case 2:
      result = 0x697463417370614DLL;
      break;
    case 3:
      result = 0x65646F435251;
      break;
    case 4:
      result = 0x4370696C43707041;
      break;
    case 5:
      result = 0x6574654461746144;
      break;
    case 6:
      result = 0x7A6972616D6D7553;
      break;
    case 7:
      result = 0x756F6C4164616552;
      break;
    case 8:
    case 0xA:
      result = 0x7261646E656C6143;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 0xB:
      result = 7041857;
      break;
    case 0xC:
      result = 0x6165536567616D49;
      break;
    case 0xD:
      result = 0x74616C736E617254;
      break;
    case 0xE:
      result = 0x4172657474756853;
      break;
    case 0xF:
      result = 0x4E72657474756853;
      break;
    case 0x10:
      result = 0x6B63697453646441;
      break;
    case 0x11:
      result = 0xD000000000000014;
      break;
    case 0x12:
      result = 0x746F685065766153;
      break;
    case 0x13:
      result = 0x6974634174786554;
      break;
    case 0x14:
      result = 0x6B63616264656546;
      break;
    case 0x15:
      result = 0x6669636570736E55;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_21DF361FC@<X0>(unint64_t *a1@<X8>)
{
  result = ActionAnalytics.ActionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21DF36224()
{
  v0 = ActionAnalytics.ActionType.rawValue.getter();
  v2 = v1;
  if (v0 == ActionAnalytics.ActionType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21E142B14();
  }

  return v5 & 1;
}

uint64_t sub_21DF362C0()
{
  sub_21E142C14();
  ActionAnalytics.ActionType.rawValue.getter();
  sub_21E142204();

  return sub_21E142C44();
}

uint64_t sub_21DF36328()
{
  ActionAnalytics.ActionType.rawValue.getter();
  sub_21E142204();
}

uint64_t sub_21DF3638C()
{
  sub_21E142204();
}

uint64_t sub_21DF36508()
{
  sub_21E142C14();
  ActionAnalytics.ActionType.rawValue.getter();
  sub_21E142204();

  return sub_21E142C44();
}

VisualIntelligenceUI::ActionAnalytics::ActionSource_optional __swiftcall ActionAnalytics.ActionSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21E142A34();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ActionAnalytics.ActionSource.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x61746E6F436E6950;
    v7 = 0x6F436172656D6143;
    if (v1 != 2)
    {
      v7 = 0x61426E6F69746341;
    }

    if (*v0)
    {
      v6 = 0x72657474756853;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x726162696E6D4FLL;
    v3 = 1685217603;
    if (v1 != 7)
    {
      v3 = 0xD000000000000010;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x61426E6F69746341;
    if (v1 != 4)
    {
      v4 = 0x6574616369646544;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21DF367CC@<X0>(uint64_t *a1@<X8>)
{
  result = ActionAnalytics.ActionSource.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21DF36800()
{
  sub_21E142C14();
  sub_21DF3638C();
  return sub_21E142C44();
}

uint64_t sub_21DF36850()
{
  sub_21E142C14();
  sub_21DF3638C();
  return sub_21E142C44();
}

VisualIntelligenceUI::ActionAnalytics::ActionType __swiftcall ActionPin.Pill.analyticsAction()()
{
  v2 = v0;
  v3 = sub_21E13EEE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  (*(v4 + 16))(v6, v1, v3);
  sub_21E13D964();
  v10 = sub_21E13D994();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);
  if (v12 != 1)
  {
    v12 = (*(v11 + 88))(v9, v10);
    if (v12 == *MEMORY[0x277D78F80])
    {
      LOBYTE(v12) = (*(v11 + 8))(v9, v10);
      v13 = 1;
      goto LABEL_7;
    }

    if (v12 == *MEMORY[0x277D78F30])
    {
      LOBYTE(v12) = (*(v11 + 8))(v9, v10);
      v13 = 3;
      goto LABEL_7;
    }

    if (v12 == *MEMORY[0x277D78F38])
    {
      (*(v11 + 96))(v9, v10);
      *v2 = 19;
      v14 = sub_21E13E3F4();
      LOBYTE(v12) = (*(*(v14 - 8) + 8))(v9, v14);
      return v12;
    }

    if (v12 == *MEMORY[0x277D78F68])
    {
      (*(v11 + 96))(v9, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D20);

      *v2 = 20;
      LOBYTE(v12) = sub_21DF36DA0(v9);
      return v12;
    }

    if (v12 == *MEMORY[0x277D78F70])
    {
      *v2 = 0;
      return v12;
    }

    if (v12 != *MEMORY[0x277D78F78])
    {
      if (v12 == *MEMORY[0x277D78F28])
      {
        v13 = 12;
        goto LABEL_7;
      }

      if (v12 == *MEMORY[0x277D78F98] || v12 == *MEMORY[0x277D78F20])
      {
        v13 = 6;
        goto LABEL_7;
      }

      if (v12 == *MEMORY[0x277D78F88])
      {
        v13 = 7;
        goto LABEL_7;
      }

      if (v12 == *MEMORY[0x277D78F60])
      {
        v13 = 8;
        goto LABEL_7;
      }

      if (v12 == *MEMORY[0x277D78F58] || v12 == *MEMORY[0x277D78F48])
      {
        v13 = 11;
        goto LABEL_7;
      }

      if (v12 == *MEMORY[0x277D78F90])
      {
        v13 = 18;
        goto LABEL_7;
      }

      if (v12 == *MEMORY[0x277D78F50])
      {
        v13 = 17;
        goto LABEL_7;
      }

      if (v12 == *MEMORY[0x277D78FA0])
      {
        v13 = 13;
        goto LABEL_7;
      }

      if (v12 != *MEMORY[0x277D78F40])
      {
        LOBYTE(v12) = sub_21E142B04();
        __break(1u);
        return v12;
      }
    }
  }

  v13 = 21;
LABEL_7:
  *v2 = v13;
  return v12;
}

uint64_t sub_21DF36DA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DF36E0C()
{
  result = qword_280F6B3F8[0];
  if (!qword_280F6B3F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F6B3F8);
  }

  return result;
}

unint64_t sub_21DF36E64()
{
  result = qword_27CEA6DA0;
  if (!qword_27CEA6DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6DA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionAnalytics.ActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActionAnalytics.ActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionAnalytics.ActionSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActionAnalytics.ActionSource(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21DF37194()
{
  result = qword_27CEA6DA8;
  if (!qword_27CEA6DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6DA8);
  }

  return result;
}

unint64_t sub_21DF371E8()
{
  result = qword_27CEA6DB0;
  if (!qword_27CEA6DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6DB0);
  }

  return result;
}

void sub_21DF3723C(_BYTE *a1)
{
  v26 = sub_21E13F1B4();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  LOBYTE(a1) = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21DF26AE0(MEMORY[0x277D84F90]);
  LOBYTE(aBlock[0]) = a1;
  ActionAnalytics.ActionType.rawValue.getter();
  v6 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v7 = sub_21E1420F4();

  v8 = [v6 initWithString_];

  v9 = *(v5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v9;
  *(v5 + 16) = 0x8000000000000000;
  sub_21E0E6CE4(v8, 0x6E6F69746361, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  *(v5 + 16) = aBlock[0];
  v11 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v12 = sub_21E1420F4();

  v13 = [v11 initWithString_];

  v14 = *(v5 + 16);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v14;
  *(v5 + 16) = 0x8000000000000000;
  sub_21E0E6CE4(v13, 0x656372756F73, 0xE600000000000000, v15);
  *(v5 + 16) = aBlock[0];
  sub_21E13EC34();

  v16 = sub_21E13F1A4();
  v17 = sub_21E142554();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315138;
    swift_beginAccess();
    sub_21DF377DC();

    v20 = sub_21E142004();
    v22 = v21;

    v23 = sub_21E0E08C0(v20, v22, aBlock);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_21DF05000, v16, v17, "ActionAnalytics: publishing %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x223D540B0](v19, -1, -1);
    MEMORY[0x223D540B0](v18, -1, -1);
  }

  (*(v2 + 8))(v4, v26);
  v24 = sub_21E1420F4();
  aBlock[4] = sub_21DF3778C;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E001D60;
  aBlock[3] = &block_descriptor;
  v25 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v25);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21DF377DC()
{
  result = qword_280F68C10;
  if (!qword_280F68C10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F68C10);
  }

  return result;
}

uint64_t type metadata accessor for ScrollableSegmentedControl()
{
  result = qword_27CEA6DC8;
  if (!qword_27CEA6DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21DF378A4()
{
  sub_21DF37A78();
  if (v0 <= 0x3F)
  {
    sub_21DF37B34(319, &qword_27CEA6DD8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_21DF37B34(319, &qword_27CEA6DE0, MEMORY[0x277D83B88], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_21DF37AD0();
        if (v3 <= 0x3F)
        {
          sub_21DF37B34(319, &qword_280F68D48, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_21DF37B34(319, &qword_280F68D70, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_21DF37B34(319, &qword_280F68D38, MEMORY[0x277D83B88], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_21DF37A78()
{
  if (!qword_280F69040)
  {
    sub_21E13F444();
    v0 = sub_21E13F464();
    if (!v1)
    {
      atomic_store(v0, &qword_280F69040);
    }
  }
}

void sub_21DF37AD0()
{
  if (!qword_27CEA6DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6DF0);
    v0 = sub_21E141744();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEA6DE8);
    }
  }
}

void sub_21DF37B34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21DF37BA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DF8);
  MEMORY[0x28223BE20](v1);
  v3 = v12 - v2;
  v4 = type metadata accessor for ScrollableSegmentedControl();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21DF3CD70(v0, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21DF3CDD4(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_21E141CC4();
  sub_21E13F664();
  v23 = v18;
  v22 = v20;
  v12[0] = sub_21DF3CE38;
  v12[1] = v8;
  v12[2] = v17;
  v13 = v18;
  v14 = v19;
  v15 = v20;
  v16 = v21;
  v9 = *MEMORY[0x277CDFA10];
  v10 = sub_21E13F9D4();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_21DF3ED60(&unk_280F68FD8, MEMORY[0x277CDFA28]);
  result = sub_21E142074();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E00);
    sub_21DF3CEB8();
    sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8);
    sub_21E140F74();
    sub_21DF23614(v3, &qword_27CEA6DF8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21DF37E80(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ScrollableSegmentedControl();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E20);
  MEMORY[0x28223BE20](v7);
  v9 = (v22 - v8);
  sub_21E13F714();
  v11 = v10;
  *v9 = sub_21E141CC4();
  v9[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E28);
  sub_21DF38164(a2, v9 + *(v13 + 44), v11);
  v14 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E30) + 36);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_21E140144();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E38) + 36)] = 256;
  sub_21DF3CD70(a2, v6);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_21DF3CDD4(v6, v18 + v17);
  *(v18 + ((v17 + v5 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  v19 = (v9 + *(v7 + 36));
  *v19 = sub_21DF3CF70;
  v19[1] = v18;
  v19[2] = 0;
  v19[3] = 0;
  *&v22[1] = v11;
  sub_21DF3CD70(a2, v6);
  v20 = swift_allocObject();
  sub_21DF3CDD4(v6, v20 + v17);
  sub_21DF3CFA0();
  sub_21DF3D110();
  sub_21E141324();

  return sub_21DF23614(v9, &qword_27CEA6E20);
}

uint64_t sub_21DF38164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v151 = a1;
  v149 = a2;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E80);
  MEMORY[0x28223BE20](v134);
  v135 = &v111 - v4;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E88);
  MEMORY[0x28223BE20](v148);
  v136 = &v111 - v5;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E90);
  MEMORY[0x28223BE20](v144);
  v146 = &v111 - v6;
  v150 = type metadata accessor for ScrollableSegmentedControl();
  v140 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v141 = v7;
  v142 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E98);
  MEMORY[0x28223BE20](v143);
  v133 = (&v111 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6EA0);
  MEMORY[0x28223BE20](v9 - 8);
  v147 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v145 = &v111 - v12;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6EA8);
  MEMORY[0x28223BE20](v138);
  v14 = &v111 - v13;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6EB0);
  MEMORY[0x28223BE20](v137);
  v16 = &v111 - v15;
  v126 = sub_21E141A34();
  MEMORY[0x28223BE20](v126);
  v125 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_21E1419A4();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6EB8);
  MEMORY[0x28223BE20](v132);
  v127 = &v111 - v19;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6EC0);
  MEMORY[0x28223BE20](v130);
  v131 = &v111 - v20;
  v120 = sub_21E13F444();
  v21 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v23 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v111 - v25;
  v119 = sub_21E141D94();
  v117 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v116 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6EC8);
  MEMORY[0x28223BE20](v115);
  v29 = &v111 - v28;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6ED0);
  MEMORY[0x28223BE20](v114);
  v31 = &v111 - v30;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6ED8);
  MEMORY[0x28223BE20](v113);
  v118 = &v111 - v32;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6EE0);
  MEMORY[0x28223BE20](v128);
  v34 = &v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v121 = &v111 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6EE8);
  MEMORY[0x28223BE20](v37);
  v129 = &v111 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6EF0);
  MEMORY[0x28223BE20](v39 - 8);
  v139 = &v111 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v111 - v42;
  if (sub_21E141C74())
  {
    v111 = v37;
    v112 = v16;
    if (*(v151 + *(v150 + 28)) == 1)
    {
      v44 = [objc_opt_self() secondarySystemFillColor];
      v127 = sub_21E141414();
      sub_21E021DE8(v26);
      v45 = v120;
      (*(v21 + 104))(v23, *MEMORY[0x277CDF3D0], v120);
      v46 = sub_21E13F434();
      v47 = *(v21 + 8);
      v47(v23, v45);
      v47(v26, v45);
      v48 = v117;
      v49 = MEMORY[0x277CE13B0];
      if ((v46 & 1) == 0)
      {
        v49 = MEMORY[0x277CE13B8];
      }

      v50 = v116;
      v51 = v119;
      (*(v117 + 104))(v116, *v49, v119);
      (*(v48 + 32))(&v29[*(v115 + 36)], v50, v51);
      *v29 = v127;
      sub_21DF3DE9C(v29, v31, &qword_27CEA6EC8);
      *&v31[*(v114 + 36)] = 0x3FECCCCCCCCCCCCDLL;
      v52 = v118;
      v53 = &v118[*(v113 + 36)];
      v54 = *MEMORY[0x277CE0118];
      v55 = sub_21E140144();
      (*(*(v55 - 8) + 104))(v53, v54, v55);
      *&v53[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E38) + 36)] = 256;
      sub_21DF3DE9C(v31, v52, &qword_27CEA6ED0);
      sub_21E141CC4();
      sub_21E13F664();
      sub_21DF3DE9C(v52, v34, &qword_27CEA6ED8);
      v56 = &v34[*(v128 + 36)];
      v57 = v160;
      *v56 = v159;
      *(v56 + 1) = v57;
      *(v56 + 2) = v161;
      v58 = v121;
      sub_21DF3DE9C(v34, v121, &qword_27CEA6EE0);
      sub_21DF236C0(v58, v131, &qword_27CEA6EE0);
      swift_storeEnumTagMultiPayload();
      sub_21DF3D220();
      sub_21DF3D410();
      v59 = v129;
      sub_21E1402F4();
      sub_21DF23614(v58, &qword_27CEA6EE0);
    }

    else
    {
      *&v153 = sub_21E1414A4();
      v67 = v122;
      sub_21E141974();
      v68 = *MEMORY[0x277CE0118];
      v69 = sub_21E140144();
      v70 = v125;
      (*(*(v69 - 8) + 104))(v125, v68, v69);
      sub_21DF3ED60(&qword_27CEA6F30, MEMORY[0x277CE1260]);
      v71 = v127;
      sub_21E140E54();
      sub_21DF3DBB0(v70);
      (*(v123 + 8))(v67, v124);

      sub_21E141CC4();
      sub_21E13F664();
      v72 = (v71 + *(v132 + 36));
      v73 = v160;
      *v72 = v159;
      v72[1] = v73;
      v72[2] = v161;
      sub_21DF236C0(v71, v131, &qword_27CEA6EB8);
      swift_storeEnumTagMultiPayload();
      sub_21DF3D220();
      sub_21DF3D410();
      v59 = v129;
      sub_21E1402F4();
      sub_21DF23614(v71, &qword_27CEA6EB8);
    }

    v66 = v145;
    sub_21DF236C0(v59, v112, &qword_27CEA6EE8);
    swift_storeEnumTagMultiPayload();
    sub_21DF3D194();
    sub_21DF3D510();
    sub_21E1402F4();
    sub_21DF23614(v59, &qword_27CEA6EE8);
  }

  else
  {
    v60 = *MEMORY[0x277CE0118];
    v61 = sub_21E140144();
    (*(*(v61 - 8) + 104))(v14, v60, v61);
    sub_21E141584();
    v62 = sub_21E141514();

    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6EF8);
    *&v14[*(v63 + 52)] = v62;
    *&v14[*(v63 + 56)] = 256;
    sub_21E141CC4();
    sub_21E13F664();
    v64 = &v14[*(v138 + 36)];
    v65 = v160;
    *v64 = v159;
    *(v64 + 1) = v65;
    *(v64 + 2) = v161;
    sub_21DF236C0(v14, v16, &qword_27CEA6EA8);
    swift_storeEnumTagMultiPayload();
    sub_21DF3D194();
    sub_21DF3D510();
    sub_21E1402F4();
    sub_21DF23614(v14, &qword_27CEA6EA8);
    v66 = v145;
  }

  v74 = v150;
  v75 = v151 + *(v150 + 48);
  v76 = *v75;
  v77 = *(v75 + 8);
  LOBYTE(v153) = v76;
  *(&v153 + 1) = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141714();
  if (v152 == 1)
  {
    v78 = sub_21E140004();
    v79 = v133;
    *v133 = v78;
    *(v79 + 8) = 0;
    *(v79 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6FB0);
    v80 = v151;
    v81 = *(*(v151 + *(v74 + 20)) + 16);
    *&v153 = 0;
    *(&v153 + 1) = v81;
    swift_getKeyPath();
    v82 = v142;
    sub_21DF3CD70(v80, v142);
    v83 = (*(v140 + 80) + 16) & ~*(v140 + 80);
    v84 = swift_allocObject();
    sub_21DF3CDD4(v82, v84 + v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6FB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6FC0);
    sub_21DF3D8C8();
    sub_21DF3D9A8();
    sub_21E141A74();
    sub_21E141CC4();
    sub_21E13F664();
    v85 = (v79 + *(v143 + 36));
    v86 = v154;
    *v85 = v153;
    v85[1] = v86;
    v85[2] = v155;
    v87 = &qword_27CEA6E98;
    sub_21DF236C0(v79, v146, &qword_27CEA6E98);
    swift_storeEnumTagMultiPayload();
    sub_21DF3D71C();
    sub_21DF3D7D4();
    sub_21E1402F4();
    v88 = v79;
  }

  else
  {
    v89 = sub_21E1408D4();
    MEMORY[0x28223BE20](v89);
    v90 = v151;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6F48);
    sub_21DF23E5C(&qword_27CEA6F50, &qword_27CEA6F48);
    v91 = v135;
    sub_21E13F3C4();
    sub_21DF3B218(&v153);
    v92 = v91 + *(v134 + 36);
    v93 = v156;
    *(v92 + 32) = v155;
    *(v92 + 48) = v93;
    *(v92 + 64) = v157;
    *(v92 + 80) = v158;
    v94 = v154;
    *v92 = v153;
    *(v92 + 16) = v94;
    v95 = v90 + *(v74 + 24);
    v96 = *v95;
    v97 = *(v95 + 16);
    v153 = v96;
    *&v154 = v97;
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6F58);
    MEMORY[0x223D52200](&v152, v98);
    v99 = v142;
    sub_21DF3CD70(v90, v142);
    v100 = (*(v140 + 80) + 16) & ~*(v140 + 80);
    v101 = (v141 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
    v102 = swift_allocObject();
    sub_21DF3CDD4(v99, v102 + v100);
    *(v102 + v101) = a3;
    sub_21DF3D638();
    v103 = v136;
    sub_21E141324();

    sub_21DF23614(v91, &qword_27CEA6E80);
    sub_21E141CC4();
    sub_21E13F664();
    v104 = (v103 + *(v148 + 36));
    v105 = v154;
    *v104 = v153;
    v104[1] = v105;
    v104[2] = v155;
    v87 = &qword_27CEA6E88;
    sub_21DF236C0(v103, v146, &qword_27CEA6E88);
    swift_storeEnumTagMultiPayload();
    sub_21DF3D71C();
    sub_21DF3D7D4();
    sub_21E1402F4();
    v88 = v103;
  }

  sub_21DF23614(v88, v87);
  v106 = v139;
  sub_21DF236C0(v43, v139, &qword_27CEA6EF0);
  v107 = v147;
  sub_21DF236C0(v66, v147, &qword_27CEA6EA0);
  v108 = v149;
  sub_21DF236C0(v106, v149, &qword_27CEA6EF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6FA8);
  sub_21DF236C0(v107, v108 + *(v109 + 48), &qword_27CEA6EA0);
  sub_21DF23614(v66, &qword_27CEA6EA0);
  sub_21DF23614(v43, &qword_27CEA6EF0);
  sub_21DF23614(v107, &qword_27CEA6EA0);
  return sub_21DF23614(v106, &qword_27CEA6EF0);
}

uint64_t sub_21DF39700@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6FE8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - v7;
  v9 = *a1;
  result = type metadata accessor for ScrollableSegmentedControl();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v11 = *(a2 + *(result + 20));
    if (v9 < *(v11 + 16))
    {
      v12 = v11 + 16 * v9;
      v13 = *(v12 + 32);
      v14 = *(v12 + 40);

      sub_21DF39884(v13, v14, v9, 1, v8);

      sub_21E141CC4();
      sub_21E13FCE4();
      sub_21DF093EC(v8, a3);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6FC0);
      v15 = (a3 + *(result + 36));
      v16 = v19[5];
      v15[4] = v19[4];
      v15[5] = v16;
      v15[6] = v19[6];
      v17 = v19[1];
      *v15 = v19[0];
      v15[1] = v17;
      v18 = v19[3];
      v15[2] = v19[2];
      v15[3] = v18;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21DF39884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v58) = a4;
  v48 = a2;
  v46 = a1;
  v60 = a5;
  v7 = sub_21E13D384();
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21E1420E4();
  MEMORY[0x28223BE20](v9 - 8);
  v57 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v41 - v12;
  v13 = sub_21E1420C4();
  MEMORY[0x28223BE20](v13 - 8);
  v44 = sub_21E13FC44();
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for ScrollableSegmentedControl();
  v16 = *(v54 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v54);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6FF0);
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v19 = &v41 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7008);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v21 = &v41 - v20;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6FE8);
  MEMORY[0x28223BE20](v55);
  v53 = &v41 - v22;
  sub_21DF3CD70(v5, &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v24 = swift_allocObject();
  sub_21DF3CDD4(&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  *(v24 + ((v17 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v61 = v46;
  v62 = v48;
  v56 = v5;
  v63 = v5;
  v64 = v58;
  v58 = a3;
  v65 = a3;
  v25 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7010);
  sub_21DF3DC38();
  v26 = v42;
  sub_21E141764();
  sub_21E13FC34();
  v27 = sub_21DF23E5C(&qword_27CEA6FF8, &qword_27CEA6FF0);
  v28 = sub_21DF3ED60(&qword_27CEA7000, MEMORY[0x277CDDB18]);
  v50 = v21;
  v43 = v27;
  sub_21E140DC4();
  (*(v47 + 8))(v15, v25);
  (*(v45 + 8))(v19, v26);
  sub_21E1420B4();
  sub_21E1420A4();
  sub_21E142094();
  sub_21E1420A4();
  sub_21E1420D4();
  sub_21DF3ED18(0, &qword_280F68C20);
  if (!sub_21E1426B4())
  {
    v29 = [objc_opt_self() mainBundle];
  }

  sub_21E13D374();
  v69[0] = sub_21E142184();
  v69[1] = v30;
  *&v66 = v26;
  *(&v66 + 1) = v25;
  v67 = v43;
  v68 = v28;
  swift_getOpaqueTypeConformance2();
  sub_21DF252E0();
  v31 = v53;
  v32 = v52;
  v33 = v50;
  sub_21E141024();

  (*(v51 + 8))(v33, v32);
  v34 = v56 + *(v54 + 24);
  v35 = *v34;
  v36 = *(v34 + 16);
  v66 = v35;
  v67 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6F58);
  MEMORY[0x223D52200](v69, v37);
  sub_21E142084();
  if (!sub_21E1426B4())
  {
    v38 = [objc_opt_self() mainBundle];
  }

  sub_21E13D374();
  *&v66 = sub_21E142184();
  *(&v66 + 1) = v39;
  sub_21E13FB34();

  return sub_21DF23614(v31, &qword_27CEA6FE8);
}

uint64_t sub_21DF3A0D4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for ScrollableSegmentedControl();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_21DF3CD70(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  result = sub_21DF3CDD4(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v10 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  *a2 = sub_21DF3E410;
  a2[1] = v10;
  return result;
}

uint64_t sub_21DF3A1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v40 = a1;
  v39 = sub_21E13FBB4();
  v37 = *(v39 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v36 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ScrollableSegmentedControl();
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = sub_21E140004();
  *(a3 + 8) = 0x4020000000000000;
  *(a3 + 16) = 0;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70A0) + 44);
  v34 = a2;
  v35 = v13;
  v14 = *(*(a2 + *(v9 + 28)) + 16);
  v41 = 0;
  v42 = v14;
  v33[1] = swift_getKeyPath();
  sub_21DF3CD70(a2, v12);
  v15 = *(v10 + 80);
  v16 = (v15 + 16) & ~v15;
  v17 = v16 + v11;
  v33[2] = v15 | 7;
  v18 = swift_allocObject();
  sub_21DF3CDD4(v12, v18 + v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6FB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70A8);
  sub_21DF3D8C8();
  sub_21DF23E5C(&qword_27CEA70B0, &qword_27CEA70A8);
  sub_21E141A74();
  v19 = v34;
  sub_21DF3CD70(v34, v12);
  v20 = swift_allocObject();
  sub_21DF3CDD4(v12, v20 + v16);
  *(v20 + ((v16 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v21 = sub_21E141CC4();
  v23 = v22;
  v24 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70B8) + 36));
  *v24 = sub_21DF3E4D4;
  v24[1] = v20;
  v24[2] = v21;
  v24[3] = v23;
  sub_21DF3CD70(v19, v12);
  v26 = v36;
  v25 = v37;
  v27 = v39;
  (*(v37 + 16))(v36, v40, v39);
  v28 = v25;
  v29 = (v17 + *(v25 + 80)) & ~*(v25 + 80);
  v30 = swift_allocObject();
  sub_21DF3CDD4(v12, v30 + v16);
  (*(v28 + 32))(v30 + v29, v26, v27);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70C0);
  v32 = (a3 + *(result + 36));
  *v32 = sub_21DF3E5AC;
  v32[1] = v30;
  v32[2] = 0;
  v32[3] = 0;
  return result;
}

uint64_t sub_21DF3A5B4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  result = type metadata accessor for ScrollableSegmentedControl();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a2 + *(result + 20));
    if (v5 < *(v7 + 16))
    {
      v8 = v7 + 16 * v5;
      v9 = *(v8 + 32);
      v10 = *(v8 + 40);

      sub_21DF39884(v9, v10, v5, 0, a3);

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70A8);
      *(a3 + *(result + 52)) = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21DF3A660(double a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ScrollableSegmentedControl();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21E1414A4();
  sub_21DF3CD70(a3, v8);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  sub_21DF3CDD4(v8, v11 + v10);
  *(v11 + ((v10 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v15[1] = v9;
  v15[2] = sub_21DF3E8E4;
  v15[3] = v11;
  v15[4] = 0;
  v15[5] = 0;
  sub_21DF3A9C0();
  v15[0] = v12;
  sub_21DF3CD70(a3, v8);
  v13 = swift_allocObject();
  sub_21DF3CDD4(v8, v13 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70C8);
  sub_21DF3ECA8(&qword_27CEA70D0, &qword_27CEA70C8);
  sub_21DF3D110();
  sub_21E141324();
}

uint64_t sub_21DF3A86C()
{
  sub_21DF3A9C0();
  type metadata accessor for ScrollableSegmentedControl();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141724();
  sub_21E141714();
  sub_21E141724();
  sub_21DF3AC80(&unk_282F3D260, sub_21DF3E384, &block_descriptor_34);
  return sub_21DF3AC80(&unk_282F3D148, sub_21DF3D164, &block_descriptor_0);
}

unint64_t sub_21DF3A9C0()
{
  result = type metadata accessor for ScrollableSegmentedControl();
  v2 = *(v0 + *(result + 20));
  v21 = *(v2 + 16);
  if (v21)
  {
    v3 = 0;
    v4 = *MEMORY[0x277D740A8];
    v20 = *MEMORY[0x277D769D0];
    v5 = v2 + 40;
    v6 = 0.0;
    while (v3 < *(v2 + 16))
    {

      v7 = sub_21E1420F4();
      v24[0] = v4;
      v8 = objc_opt_self();
      v9 = v4;
      v10 = [v8 preferredFontForTextStyle_];
      v24[4] = sub_21DF3ED18(0, &qword_27CEA70D8);
      v24[1] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70E0);
      v11 = sub_21E142A14();
      sub_21DF236C0(v24, &v22, &qword_27CEA70E8);
      v12 = v22;
      result = sub_21E0E10F8(v22);
      if (v13)
      {
        goto LABEL_10;
      }

      v11[(result >> 6) + 8] |= 1 << result;
      *(v11[6] + 8 * result) = v12;
      result = sub_21DF27A70(&v23, (v11[7] + 32 * result));
      v14 = v11[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_11;
      }

      ++v3;
      v11[2] = v16;
      sub_21DF23614(v24, &qword_27CEA70E8);
      type metadata accessor for Key(0);
      sub_21DF3ED60(&qword_27CEA6998, type metadata accessor for Key);
      v17 = sub_21E141FF4();

      [v7 sizeWithAttributes_];
      v19 = v18;

      v6 = v6 + v19 + 40.0 + 4.0;
      v5 += 16;
      if (v21 == v3)
      {
        return result;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_21DF3AC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v18[1] = a1;
  v4 = sub_21E141E74();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21E141E94();
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ScrollableSegmentedControl();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_21DF3ED18(0, &qword_280F68C78);
  v13 = sub_21E1425C4();
  sub_21DF3CD70(v3, v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  sub_21DF3CDD4(v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  aBlock[4] = v19;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E079CD4;
  aBlock[3] = v20;
  v16 = _Block_copy(aBlock);

  sub_21E141E84();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21DF3ED60(&qword_280F68CE8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E70);
  sub_21DF23E5C(&qword_280F68CA8, &qword_27CEA6E70);
  sub_21E142764();
  MEMORY[0x223D52E10](0, v9, v6, v16);
  _Block_release(v16);

  (*(v22 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v21);
}

uint64_t sub_21DF3AFF4()
{
  type metadata accessor for ScrollableSegmentedControl();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141724();
  return sub_21DF3AC80(&unk_282F3D148, sub_21DF3D164, &block_descriptor_0);
}

uint64_t sub_21DF3B098(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = sub_21E13FBB4();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a2, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  type metadata accessor for ScrollableSegmentedControl();
  sub_21DF236C0(v8, v5, &qword_27CEA6DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DC0);
  sub_21E141724();
  return sub_21DF23614(v8, &qword_27CEA6DF0);
}

double sub_21DF3B218@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7098);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21E1460A0;
  v4 = type metadata accessor for ScrollableSegmentedControl();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141714();
  sub_21E141484();
  sub_21E141514();

  *(v3 + 32) = sub_21E141B24();
  *(v3 + 40) = v5;
  sub_21E141484();
  sub_21E141514();

  *(v3 + 48) = sub_21E141B24();
  *(v3 + 56) = v6;
  sub_21E141484();
  sub_21E141514();

  *(v3 + 64) = sub_21E141B24();
  *(v3 + 72) = v7;
  v8 = v1 + *(v4 + 44);
  LOBYTE(v14) = *v8;
  *(&v14 + 1) = *(v8 + 8);
  sub_21E141714();
  sub_21E141484();
  sub_21E141514();

  *(v3 + 80) = sub_21E141B24();
  *(v3 + 88) = v9;
  sub_21E141B34();
  sub_21E141E04();
  sub_21E141E14();
  sub_21E13F8A4();
  sub_21E141CC4();
  sub_21E13F664();
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 56) = v15;
  result = *&v16;
  *(a1 + 72) = v16;
  return result;
}

uint64_t sub_21DF3B484()
{
  type metadata accessor for ScrollableSegmentedControl();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141724();
  return sub_21DF3AC80(&unk_282F3D148, sub_21DF3D164, &block_descriptor_0);
}

uint64_t sub_21DF3B528()
{
  type metadata accessor for ScrollableSegmentedControl();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141724();
  return sub_21DF3AC80(&unk_282F3D148, sub_21DF3D164, &block_descriptor_0);
}

uint64_t sub_21DF3B5CC()
{
  type metadata accessor for ScrollableSegmentedControl();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141714();
  sub_21E141714();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  return sub_21E141724();
}

uint64_t sub_21DF3B6C4()
{
  MEMORY[0x223D52580](0.25, 1.0, 0.0);
  sub_21E13F864();
}

uint64_t sub_21DF3B744()
{
  type metadata accessor for ScrollableSegmentedControl();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6F58);
  return sub_21E1419D4();
}

double sub_21DF3B7C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v77 = a5;
  v78 = a3;
  v76 = a4;
  v75 = sub_21E13F444();
  v9 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v11 = &v68[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v68[-v13];
  *&v83 = a1;
  *(&v83 + 1) = a2;
  sub_21DF252E0();

  v15 = sub_21E140C94();
  v17 = v16;
  LOBYTE(a1) = v18;
  sub_21E140994();
  v19 = sub_21E140C44();
  v70 = v20;
  v71 = v19;
  v69 = v21;
  v72 = v22;

  sub_21DF3DE8C(v15, v17, a1 & 1);

  sub_21E021DE8(v14);
  v23 = v75;
  (*(v9 + 104))(v11, *MEMORY[0x277CDF3D0], v75);
  LOBYTE(v15) = sub_21E13F434();
  v24 = *(v9 + 8);
  v24(v11, v23);
  v24(v14, v23);
  if (v15)
  {
    v25 = sub_21E141484();
  }

  else
  {
    v25 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  }

  *&v83 = v25;
  v26 = v69;
  v28 = v70;
  v27 = v71;
  v29 = sub_21E140C24();
  v74 = v30;
  v75 = v29;
  v32 = v31;
  v73 = v33;
  sub_21DF3DE8C(v27, v28, v26 & 1);

  v34 = sub_21E140904();
  sub_21E13F374();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v32 & 1;
  v80 = v32 & 1;
  v79 = 0;
  v44 = sub_21E140974();
  sub_21E13F374();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v81 = 0;
  sub_21E141CC4();
  v53 = v76 & 1;
  sub_21E13FCE4();
  *&v82[55] = v86;
  *&v82[71] = v87;
  *&v82[87] = v88;
  *&v82[103] = v89;
  *&v82[7] = v83;
  *&v82[23] = v84;
  *&v82[39] = v85;
  v54 = sub_21E141CC4();
  v56 = v55;
  v57 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7010) + 36));
  *v57 = v54;
  v57[1] = v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7060);
  sub_21DF3BC2C(v78, v77, v53, v57 + *(v58 + 44));
  v59 = sub_21E141CC4();
  v61 = v60;
  v62 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7058) + 36));
  *v62 = v59;
  v62[1] = v61;
  v63 = v74;
  *a6 = v75;
  *(a6 + 8) = v63;
  *(a6 + 16) = v43;
  *(a6 + 24) = v73;
  *(a6 + 32) = v34;
  *(a6 + 40) = v36;
  *(a6 + 48) = v38;
  *(a6 + 56) = v40;
  *(a6 + 64) = v42;
  *(a6 + 72) = 0;
  *(a6 + 80) = v44;
  *(a6 + 88) = v46;
  *(a6 + 96) = v48;
  *(a6 + 104) = v50;
  *(a6 + 112) = v52;
  *(a6 + 120) = 0;
  v64 = *&v82[80];
  *(a6 + 185) = *&v82[64];
  *(a6 + 201) = v64;
  *(a6 + 217) = *&v82[96];
  *(a6 + 232) = *&v82[111];
  v65 = *&v82[16];
  *(a6 + 121) = *v82;
  *(a6 + 137) = v65;
  result = *&v82[32];
  v67 = *&v82[48];
  *(a6 + 153) = *&v82[32];
  *(a6 + 169) = v67;
  return result;
}

uint64_t sub_21DF3BC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v54 = a3;
  v58 = a4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7068);
  MEMORY[0x28223BE20](v52);
  v7 = &v51 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7070);
  MEMORY[0x28223BE20](v53);
  v9 = &v51 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7078);
  MEMORY[0x28223BE20](v56);
  v11 = &v51 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7080);
  v12 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v55 = &v51 - v16;
  v17 = type metadata accessor for ScrollableSegmentedControl();
  v18 = (a1 + *(v17 + 24));
  v19 = *v18;
  v20 = *(v18 + 2);
  v60 = v19;
  *&v61 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6F58);
  MEMORY[0x223D52200](&v59, v21);
  v22 = 1;
  if (v59 == a2)
  {
    v23 = *MEMORY[0x277CE0118];
    v24 = sub_21E140144();
    (*(*(v24 - 8) + 104))(v7, v23, v24);
    v25 = sub_21DF3C140();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6EF8);
    *&v7[*(v26 + 52)] = v25;
    *&v7[*(v26 + 56)] = 256;
    v27 = sub_21E141DA4();
    v28 = sub_21E140664();
    _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
    v29 = &v7[*(v52 + 36)];
    *v29 = 0x6F697463656C6573;
    *(v29 + 1) = 0xE90000000000006ELL;
    *(v29 + 2) = v27;
    *(v29 + 6) = v28;
    *(v29 + 4) = v30;
    *(v29 + 5) = v31;
    v29[48] = 1;
    sub_21E141CC4();
    sub_21E13FCE4();
    sub_21DF3DE9C(v7, v9, &qword_27CEA7068);
    v32 = &v9[*(v53 + 36)];
    v33 = v65;
    *(v32 + 4) = v64;
    *(v32 + 5) = v33;
    *(v32 + 6) = v66;
    v34 = v61;
    *v32 = v60;
    *(v32 + 1) = v34;
    v35 = v63;
    *(v32 + 2) = v62;
    *(v32 + 3) = v35;
    v36 = sub_21E140914();
    sub_21E13F374();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_21DF3DE9C(v9, v11, &qword_27CEA7070);
    v45 = &v11[*(v56 + 36)];
    *v45 = v36;
    *(v45 + 1) = v38;
    *(v45 + 2) = v40;
    *(v45 + 3) = v42;
    *(v45 + 4) = v44;
    v45[40] = 0;
    v46 = sub_21DF3C394();
    if (*(a1 + *(v17 + 28)))
    {
      v47 = 20.0;
    }

    else
    {
      v47 = 5.0;
    }

    sub_21DF3DE9C(v11, v14, &qword_27CEA7078);
    v48 = &v14[*(v57 + 36)];
    *v48 = v46;
    *(v48 + 1) = v47;
    *(v48 + 1) = xmmword_21E1460B0;
    v49 = v55;
    sub_21DF3DE9C(v14, v55, &qword_27CEA7080);
    sub_21DF3DE9C(v49, v58, &qword_27CEA7080);
    v22 = 0;
  }

  return (*(v12 + 56))(v58, v22, 1, v57);
}

uint64_t sub_21DF3C140()
{
  v1 = sub_21E141424();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E13F444();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  sub_21E021DE8(&v16 - v10);
  (*(v6 + 104))(v8, *MEMORY[0x277CDF3D0], v5);
  v12 = sub_21E13F434();
  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v11, v5);
  if (v12)
  {
    return _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  }

  if (*(v0 + *(type metadata accessor for ScrollableSegmentedControl() + 28)) == 1)
  {
    v15 = [objc_opt_self() tertiaryLabelColor];
    return sub_21E141414();
  }

  else
  {
    (*(v2 + 104))(v4, *MEMORY[0x277CE0EE0], v1);
    return sub_21E141594();
  }
}

uint64_t sub_21DF3C394()
{
  v0 = sub_21E13F444();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  sub_21E021DE8(&v11 - v5);
  (*(v1 + 104))(v3, *MEMORY[0x277CDF3D0], v0);
  v7 = sub_21E13F434();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if ((v7 & 1) == 0)
  {
    return sub_21E1414A4();
  }

  type metadata accessor for ScrollableSegmentedControl();
  sub_21E141484();
  v9 = sub_21E141514();

  return v9;
}

uint64_t sub_21DF3C528()
{
  MEMORY[0x223D52580](0.15, 1.0, 0.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7088);
  sub_21E13F864();

  type metadata accessor for ScrollableSegmentedControl();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7090);
  sub_21E141724();
  return sub_21DF3AC80(&unk_282F3D260, sub_21DF3E384, &block_descriptor_34);
}

uint64_t sub_21DF3C62C@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  v4 = sub_21E13FBB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v13 - v9;
  type metadata accessor for ScrollableSegmentedControl();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DC0);
  sub_21E141714();
  v11 = (*(v5 + 48))(v10, 1, v4);
  if (v11)
  {
    result = sub_21DF23614(v10, &qword_27CEA6DF0);
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_21DF23614(v10, &qword_27CEA6DF0);
    v13[1] = a1;
    _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
    sub_21E13FBA4();
    result = (*(v5 + 8))(v7, v4);
  }

  *a2 = v11 != 0;
  return result;
}

uint64_t sub_21DF3C840(uint64_t a1)
{
  v2 = type metadata accessor for ScrollableSegmentedControl();
  v3 = (a1 + v2[6]);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *&v25 = *v3;
  *(&v25 + 1) = v5;
  v26 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6F58);
  MEMORY[0x223D52200](&v24);
  if (v24 == 0.0)
  {
    v25 = *(a1 + v2[17]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7090);
    sub_21E141714();
    v8 = *&v24 != 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = (a1 + v2[10]);
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v25) = v10;
  *(&v25 + 1) = v11;
  LOBYTE(v24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141724();
  v12 = (a1 + v2[16]);
  v13 = *v12;
  v14 = v12[1];
  *&v25 = v13;
  *(&v25 + 1) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141714();
  v15 = v24;
  v16 = (a1 + v2[15]);
  v17 = *v16;
  v18 = v16[1];
  *&v25 = v17;
  *(&v25 + 1) = v18;
  sub_21E141714();
  if (v15 >= v24)
  {
    v19 = 0;
  }

  else
  {
    *&v25 = v4;
    *(&v25 + 1) = v5;
    v26 = v6;
    MEMORY[0x223D52200](&v24, v7);
    v19 = *&v24 != *(*(a1 + v2[5]) + 16) - 1;
  }

  v20 = (a1 + v2[11]);
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v25) = v21;
  *(&v25 + 1) = v22;
  LOBYTE(v24) = v19;
  return sub_21E141724();
}

double sub_21DF3CA40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for ScrollableSegmentedControl();
  *(a6 + v18[5]) = a1;
  v19 = (a6 + v18[6]);
  *v19 = a2;
  v19[1] = a3;
  v19[2] = a4;
  *(a6 + v18[7]) = a5;
  *(a6 + v18[8]) = 0;
  v20 = sub_21E13FBB4();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  sub_21DF236C0(v17, v14, &qword_27CEA6DF0);
  sub_21E141704();
  sub_21DF23614(v17, &qword_27CEA6DF0);
  v21 = a6 + v18[10];
  LOBYTE(v38) = 0;
  sub_21E141704();
  v22 = *(&v39 + 1);
  *v21 = v39;
  *(v21 + 1) = v22;
  v23 = a6 + v18[11];
  LOBYTE(v38) = 0;
  sub_21E141704();
  v24 = *(&v39 + 1);
  *v23 = v39;
  *(v23 + 1) = v24;
  v25 = a6 + v18[12];
  LOBYTE(v38) = 0;
  sub_21E141704();
  v26 = *(&v39 + 1);
  *v25 = v39;
  *(v25 + 1) = v26;
  v27 = (a6 + v18[13]);
  v38 = 0;
  sub_21E141704();
  v28 = *(&v39 + 1);
  *v27 = v39;
  v27[1] = v28;
  v29 = (a6 + v18[14]);
  v38 = 0;
  sub_21E141704();
  v30 = *(&v39 + 1);
  *v29 = v39;
  v29[1] = v30;
  v31 = (a6 + v18[15]);
  v38 = 0;
  sub_21E141704();
  v32 = *(&v39 + 1);
  *v31 = v39;
  v31[1] = v32;
  v33 = (a6 + v18[16]);
  v38 = 0;
  sub_21E141704();
  v34 = *(&v39 + 1);
  *v33 = v39;
  v33[1] = v34;
  v35 = v18[17];
  v38 = 0;
  sub_21E141704();
  result = *&v39;
  *(a6 + v35) = v39;
  return result;
}

uint64_t sub_21DF3CD70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollableSegmentedControl();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DF3CDD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollableSegmentedControl();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DF3CE38(uint64_t a1)
{
  v3 = *(type metadata accessor for ScrollableSegmentedControl() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21DF37E80(a1, v4);
}

unint64_t sub_21DF3CEB8()
{
  result = qword_27CEA6E08;
  if (!qword_27CEA6E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6E00);
    sub_21DF23E5C(&qword_27CEA6E10, &qword_27CEA6E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6E08);
  }

  return result;
}

unint64_t sub_21DF3CFA0()
{
  result = qword_27CEA6E40;
  if (!qword_27CEA6E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6E20);
    sub_21DF3D02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6E40);
  }

  return result;
}

unint64_t sub_21DF3D02C()
{
  result = qword_27CEA6E48;
  if (!qword_27CEA6E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6E30);
    sub_21DF23E5C(&qword_27CEA6E50, &qword_27CEA6E58);
    sub_21DF23E5C(&qword_27CEA6E60, &qword_27CEA6E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6E48);
  }

  return result;
}

unint64_t sub_21DF3D110()
{
  result = qword_280F6C078;
  if (!qword_280F6C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F6C078);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21DF3D194()
{
  result = qword_27CEA6F00;
  if (!qword_27CEA6F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6EE8);
    sub_21DF3D220();
    sub_21DF3D410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6F00);
  }

  return result;
}

unint64_t sub_21DF3D220()
{
  result = qword_27CEA6F08;
  if (!qword_27CEA6F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6EE0);
    sub_21DF3D2AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6F08);
  }

  return result;
}

unint64_t sub_21DF3D2AC()
{
  result = qword_27CEA6F10;
  if (!qword_27CEA6F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6ED8);
    sub_21DF3D364();
    sub_21DF23E5C(&qword_27CEA6E60, &qword_27CEA6E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6F10);
  }

  return result;
}

unint64_t sub_21DF3D364()
{
  result = qword_27CEA6F18;
  if (!qword_27CEA6F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6ED0);
    sub_21DF3ECA8(&qword_27CEA6F20, &qword_27CEA6EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6F18);
  }

  return result;
}

unint64_t sub_21DF3D410()
{
  result = qword_27CEA6F28;
  if (!qword_27CEA6F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6EB8);
    sub_21E141A34();
    sub_21DF3ED60(&qword_27CEA6F30, MEMORY[0x277CE1260]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6F28);
  }

  return result;
}

unint64_t sub_21DF3D510()
{
  result = qword_27CEA6F38;
  if (!qword_27CEA6F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6EA8);
    sub_21DF23E5C(&qword_27CEA6F40, &qword_27CEA6EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6F38);
  }

  return result;
}

unint64_t sub_21DF3D638()
{
  result = qword_27CEA6F60;
  if (!qword_27CEA6F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6E80);
    sub_21DF23E5C(&qword_27CEA6F68, &qword_27CEA6F70);
    sub_21DF23E5C(&qword_27CEA6F78, &qword_27CEA6F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6F60);
  }

  return result;
}

unint64_t sub_21DF3D71C()
{
  result = qword_27CEA6F88;
  if (!qword_27CEA6F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6E98);
    sub_21DF23E5C(&qword_27CEA6F90, &qword_27CEA6F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6F88);
  }

  return result;
}

unint64_t sub_21DF3D7D4()
{
  result = qword_27CEA6FA0;
  if (!qword_27CEA6FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6E88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6E80);
    sub_21DF3D638();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6FA0);
  }

  return result;
}

unint64_t sub_21DF3D8C8()
{
  result = qword_27CEA6FC8;
  if (!qword_27CEA6FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6FB8);
    sub_21DF3D954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6FC8);
  }

  return result;
}

unint64_t sub_21DF3D954()
{
  result = qword_27CEA6FD0;
  if (!qword_27CEA6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6FD0);
  }

  return result;
}

unint64_t sub_21DF3D9A8()
{
  result = qword_27CEA6FD8;
  if (!qword_27CEA6FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6FC0);
    sub_21DF3DA34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6FD8);
  }

  return result;
}

unint64_t sub_21DF3DA34()
{
  result = qword_27CEA6FE0;
  if (!qword_27CEA6FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6FE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6FF0);
    sub_21E13FC44();
    sub_21DF23E5C(&qword_27CEA6FF8, &qword_27CEA6FF0);
    sub_21DF3ED60(&qword_27CEA7000, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_21DF3ED60(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6FE0);
  }

  return result;
}

uint64_t sub_21DF3DBB0(uint64_t a1)
{
  v2 = sub_21E141A34();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DF3DC38()
{
  result = qword_27CEA7018;
  if (!qword_27CEA7018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7010);
    sub_21DF3DCF0();
    sub_21DF23E5C(&qword_27CEA7050, &qword_27CEA7058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7018);
  }

  return result;
}

unint64_t sub_21DF3DCF0()
{
  result = qword_27CEA7020;
  if (!qword_27CEA7020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7028);
    sub_21DF3DD7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7020);
  }

  return result;
}

unint64_t sub_21DF3DD7C()
{
  result = qword_27CEA7030;
  if (!qword_27CEA7030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7038);
    sub_21DF3DE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7030);
  }

  return result;
}

unint64_t sub_21DF3DE08()
{
  result = qword_27CEA7040;
  if (!qword_27CEA7040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7040);
  }

  return result;
}

uint64_t sub_21DF3DE8C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21DF3DE9C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DF3DF20(uint64_t a1)
{
  v3 = sub_21E141E74();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E141E94();
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ScrollableSegmentedControl();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_21DF3ED18(0, &qword_280F68C78);
  v12 = sub_21E1425C4();
  sub_21DF3CD70(v1, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  sub_21DF3CDD4(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *(v14 + ((v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_21DF3E2B0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E079CD4;
  aBlock[3] = &block_descriptor_28;
  v15 = _Block_copy(aBlock);

  sub_21E141E84();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21DF3ED60(&qword_280F68CE8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E70);
  sub_21DF23E5C(&qword_280F68CA8, &qword_27CEA6E70);
  sub_21E142764();
  MEMORY[0x223D52E10](0, v8, v5, v15);
  _Block_release(v15);

  (*(v20 + 8))(v5, v3);
  return (*(v18 + 8))(v8, v19);
}

uint64_t sub_21DF3E2C8(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ScrollableSegmentedControl() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_21DF3E39C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ScrollableSegmentedControl() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21DF3E440(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ScrollableSegmentedControl() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_21DF3E4EC(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, __n128))
{
  v4 = *(type metadata accessor for ScrollableSegmentedControl() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6.n128_u64[0] = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v6);
}

uint64_t sub_21DF3E5AC()
{
  v1 = *(type metadata accessor for ScrollableSegmentedControl() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_21E13FBB4() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_21DF3B098(v0 + v2, v5);
}

uint64_t objectdestroy_3Tm()
{
  v1 = type metadata accessor for ScrollableSegmentedControl();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_21E13F444();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = v0 + v2 + *(v1 + 36);
  v5 = sub_21E13FBB4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DC0);

  return swift_deallocObject();
}

uint64_t sub_21DF3E8FC(uint64_t (*a1)(unint64_t, __n128))
{
  v2 = *(type metadata accessor for ScrollableSegmentedControl() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4.n128_u64[0] = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for ScrollableSegmentedControl();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_21E13F444();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = v0 + v2 + *(v1 + 36);
  v5 = sub_21E13FBB4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DC0);

  return swift_deallocObject();
}

uint64_t sub_21DF3EC14(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ScrollableSegmentedControl() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_21DF3ECA8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21DF3ED18(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_21DF3ED60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for EventLookupPlaceholder()
{
  result = qword_27CEA70F8;
  if (!qword_27CEA70F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21DF3EE2C()
{
  sub_21DF3EF18(319, &qword_280F69040, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    sub_21DF3EF18(319, &qword_27CEA7108, MEMORY[0x277CE02A8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for VIUIPeriodicOpacityAnimator();
      if (v2 <= 0x3F)
      {
        sub_21DF3EF6C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21DF3EF18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21E13F464();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21DF3EF6C()
{
  if (!qword_280F68D48)
  {
    v0 = sub_21E141744();
    if (!v1)
    {
      atomic_store(v0, &qword_280F68D48);
    }
  }
}

uint64_t sub_21DF3EFD8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v68 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7120);
  MEMORY[0x28223BE20](v67);
  v56 = (&v55 - v3);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7128);
  MEMORY[0x28223BE20](v57);
  v64 = &v55 - v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7130);
  MEMORY[0x28223BE20](v63);
  v6 = &v55 - v5;
  v7 = sub_21E1401B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7138);
  MEMORY[0x28223BE20](v11 - 8);
  v66 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v65 = &v55 - v14;
  v15 = type metadata accessor for EventLookupPlaceholder();
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = a1 + *(v16 + 36);
  v20 = *v19;
  v21 = *(v19 + 8);
  LOBYTE(v69) = v20;
  *(&v69 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141734();
  v61 = v73;
  v60 = v74;
  v59 = v75;
  v22 = *(a1 + *(v16 + 32));
  sub_21DF41FD4(a1, &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v58 = swift_allocObject();
  sub_21DF42038(&v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v58 + v23);
  v62 = v22;

  sub_21E021E10(v10);
  LOBYTE(v23) = sub_21E1401A4();
  (*(v8 + 8))(v10, v7);
  if (v23)
  {
    *v6 = sub_21E1401C4();
    *(v6 + 1) = 0x4020000000000000;
    v6[16] = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA71C0);
    sub_21DF3FF6C(&v6[*(v24 + 44)]);
    v25 = sub_21E140904();
    v26 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7170) + 36)];
    *v26 = v25;
    *(v26 + 8) = 0u;
    *(v26 + 24) = 0u;
    v26[40] = 1;
    v27 = &v6[*(v63 + 36)];
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7158) + 28);
    v29 = *MEMORY[0x277CDF420];
    v30 = sub_21E13F454();
    (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
    *v27 = swift_getKeyPath();
    v31 = &qword_27CEA7130;
    sub_21DF236C0(v6, v64, &qword_27CEA7130);
    swift_storeEnumTagMultiPayload();
    sub_21DF421C4(&qword_27CEA7160, &qword_27CEA7130, &unk_21E146468, sub_21DF4210C);
    sub_21DF421C4(&qword_27CEA7190, &qword_27CEA7120, &unk_21E146458, sub_21DF42274);
    v32 = v65;
    sub_21E1402F4();
    v33 = v6;
  }

  else
  {
    v34 = sub_21E140004();
    v35 = v56;
    *v56 = v34;
    *(v35 + 8) = 0x4022000000000000;
    *(v35 + 16) = 0;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7148);
    sub_21DF3FF6C(v35 + *(v36 + 44));
    v37 = sub_21E140904();
    v38 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7150) + 36);
    *v38 = v37;
    *(v38 + 8) = 0u;
    *(v38 + 24) = 0u;
    *(v38 + 40) = 1;
    v39 = (v35 + *(v67 + 36));
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7158) + 28);
    v41 = *MEMORY[0x277CDF420];
    v42 = sub_21E13F454();
    (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
    *v39 = swift_getKeyPath();
    v31 = &qword_27CEA7120;
    sub_21DF236C0(v35, v64, &qword_27CEA7120);
    swift_storeEnumTagMultiPayload();
    sub_21DF421C4(&qword_27CEA7160, &qword_27CEA7130, &unk_21E146468, sub_21DF4210C);
    sub_21DF421C4(&qword_27CEA7190, &qword_27CEA7120, &unk_21E146458, sub_21DF42274);
    v32 = v65;
    sub_21E1402F4();
    v33 = v35;
  }

  sub_21DF23614(v33, v31);
  v43 = v66;
  sub_21DF236C0(v32, v66, &qword_27CEA7138);
  *&v69 = 0x3FC999999999999ALL;
  v44 = v61;
  v45 = v60;
  *(&v69 + 1) = v61;
  *&v70 = v60;
  v46 = v59;
  BYTE8(v70) = v59;
  *(&v70 + 9) = v82[0];
  HIDWORD(v70) = *(v82 + 3);
  v47 = v62;
  v71 = v62;
  v48 = v58;
  *&v72 = sub_21DF4209C;
  *(&v72 + 1) = v58;
  v49 = v69;
  v50 = v70;
  v51 = v72;
  v52 = v68;
  v68[2] = v62;
  v52[3] = v51;
  *v52 = v49;
  v52[1] = v50;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA71B0);
  sub_21DF236C0(v43, v52 + *(v53 + 48), &qword_27CEA7138);
  sub_21DF236C0(&v69, &v73, &qword_27CEA71B8);
  sub_21DF23614(v32, &qword_27CEA7138);
  sub_21DF23614(v43, &qword_27CEA7138);
  v73 = 0x3FC999999999999ALL;
  v74 = v44;
  v75 = v45;
  v76 = v46;
  *v77 = v82[0];
  *&v77[3] = *(v82 + 3);
  v78 = v47;
  v79 = 0;
  v80 = sub_21DF4209C;
  v81 = v48;
  return sub_21DF23614(&v73, &qword_27CEA71B8);
}

uint64_t sub_21DF3F860()
{
  v0 = sub_21E13FC84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[1] = sub_21DF3F968();
  sub_21E13FC74();
  sub_21E141344();
  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21DF3F968()
{
  v18 = sub_21E13F1B4();
  v17[2] = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v17[1] = v17 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_21E13D484();
  v19 = *(v1 - 8);
  v20 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E13D304();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v10 = sub_21E13D044();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_21E13D4A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13D2E4();
  sub_21E13D2E4();
  sub_21E13D2D4();
  (*(v5 + 8))(v7, v4);
  sub_21E13D034();
  sub_21E13D494();
  sub_21E13D474();
  v15 = sub_21E13D464();
  (*(v19 + 8))(v3, v20);
  (*(v12 + 8))(v14, v11);
  return v15;
}

uint64_t sub_21DF3FF6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA71C8);
  v71 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v65 = v61 - v3;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA71D0);
  MEMORY[0x28223BE20](v70);
  v67 = v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA71D8);
  MEMORY[0x28223BE20](v5 - 8);
  v72 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v68 = v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA71E0);
  MEMORY[0x28223BE20](v9);
  v11 = v61 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA71E8);
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v13 = v61 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA71F0);
  MEMORY[0x28223BE20](v14 - 8);
  v66 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v62 = v61 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA71F8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7200);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7208);
  v20 = sub_21DF4232C();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7218);
  v22 = sub_21DF423E8();
  v75 = v21;
  v76 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = v18;
  v76 = MEMORY[0x277CE1350];
  v77 = v19;
  v78 = v20;
  v79 = MEMORY[0x277CE1340];
  v80 = OpaqueTypeConformance2;
  v61[1] = MEMORY[0x277CE0E68];
  swift_getOpaqueTypeConformance2();
  sub_21E141764();
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = 1;
  v26 = &v11[*(v9 + 36)];
  *v26 = KeyPath;
  v26[1] = sub_21DF259C8;
  v26[2] = v25;
  sub_21E141C84();
  v74 = v2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7228);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7230);
  v29 = sub_21DF4247C();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7260);
  v31 = sub_21E140194();
  v32 = sub_21DF42560();
  v33 = sub_21DF428C4(&qword_27CEA7280, MEMORY[0x277CDDEE0]);
  v75 = v30;
  v76 = v31;
  v77 = v32;
  v78 = v33;
  v61[0] = MEMORY[0x277CDE668];
  v34 = swift_getOpaqueTypeConformance2();
  v35 = sub_21DF42618();
  v36 = MEMORY[0x277CE1340];
  v37 = v13;
  v38 = MEMORY[0x277CE1350];
  sub_21E141354();
  sub_21DF23614(v11, &qword_27CEA71E0);
  v75 = v9;
  v76 = v38;
  v77 = v27;
  v78 = v28;
  v79 = v29;
  v80 = v36;
  v81 = v34;
  v82 = v35;
  swift_getOpaqueTypeConformance2();
  v39 = v62;
  v40 = v63;
  sub_21E141164();
  (*(v64 + 8))(v37, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA72A8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA72B0);
  v42 = sub_21DF4275C();
  v75 = MEMORY[0x277CE0BD8];
  v76 = v38;
  v77 = v41;
  v78 = MEMORY[0x277CE0BC8];
  v79 = v36;
  v80 = v42;
  swift_getOpaqueTypeConformance2();
  v43 = v65;
  sub_21E141764();
  sub_21E141C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA72C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA72C8);
  sub_21DF23E5C(&qword_27CEA72D0, &qword_27CEA71C8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA72D8);
  v45 = sub_21E140714();
  v46 = sub_21DF427E0();
  v47 = sub_21DF428C4(&qword_27CEA72E8, MEMORY[0x277CDE400]);
  v75 = v44;
  v76 = v45;
  v77 = v46;
  v78 = v47;
  swift_getOpaqueTypeConformance2();
  v48 = type metadata accessor for CapsuleButtonStyle();
  v49 = sub_21DF428C4(&qword_27CEA7290, type metadata accessor for CapsuleButtonStyle);
  v75 = v44;
  v76 = v48;
  v77 = v46;
  v78 = v49;
  swift_getOpaqueTypeConformance2();
  v50 = v67;
  v51 = v69;
  sub_21E141354();
  (*(v71 + 8))(v43, v51);
  v52 = swift_getKeyPath();
  v53 = swift_allocObject();
  *(v53 + 16) = 1;
  v54 = (v50 + *(v70 + 36));
  *v54 = v52;
  v54[1] = sub_21DF42CB4;
  v54[2] = v53;
  sub_21DF4290C();
  v55 = v68;
  sub_21E141164();
  sub_21DF23614(v50, &qword_27CEA71D0);
  v56 = v66;
  sub_21DF236C0(v39, v66, &qword_27CEA71F0);
  v57 = v72;
  sub_21DF236C0(v55, v72, &qword_27CEA71D8);
  v58 = v73;
  sub_21DF236C0(v56, v73, &qword_27CEA71F0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA72F8);
  sub_21DF236C0(v57, v58 + *(v59 + 48), &qword_27CEA71D8);
  sub_21DF23614(v55, &qword_27CEA71D8);
  sub_21DF23614(v39, &qword_27CEA71F0);
  sub_21DF23614(v57, &qword_27CEA71D8);
  return sub_21DF23614(v56, &qword_27CEA71F0);
}

uint64_t sub_21DF4099C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_21E141CD4();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7318);
  return sub_21DF409E4(a1 + *(v3 + 44));
}

uint64_t sub_21DF409E4@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7320) - 8;
  MEMORY[0x28223BE20](v40);
  v41 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v38 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7328);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = sub_21E13FCA4();
  v12 = *(v11 + 20);
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_21E140144();
  v15 = *(*(v14 - 8) + 104);
  v15(&v10[v12], v13, v14);
  __asm { FMOV            V0.2D, #8.0 }

  v38 = _Q0;
  *v10 = _Q0;
  sub_21E141454();
  v21 = sub_21E141514();

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7330);
  *&v10[*(v22 + 52)] = v21;
  *&v10[*(v22 + 56)] = 256;
  sub_21E141CC4();
  sub_21E13F664();
  v23 = &v10[*(v6 + 44)];
  v24 = v44;
  *v23 = v43;
  *(v23 + 1) = v24;
  *(v23 + 2) = v45;
  v15(&v4[*(v11 + 20)], v13, v14);
  *v4 = v38;
  sub_21E141454();
  v25 = sub_21E141514();

  *&v4[*(v22 + 52)] = v25;
  *&v4[*(v22 + 56)] = 256;
  sub_21E141CC4();
  sub_21E13F664();
  v26 = &v4[*(v6 + 44)];
  v27 = v47;
  *v26 = v46;
  *(v26 + 1) = v27;
  *(v26 + 2) = v48;
  LOBYTE(v6) = sub_21E140944();
  sub_21E13F374();
  v28 = v39;
  v29 = &v4[*(v40 + 44)];
  *v29 = v6;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  sub_21DF236C0(v10, v28, &qword_27CEA7328);
  v34 = v41;
  sub_21DF236C0(v4, v41, &qword_27CEA7320);
  v35 = v42;
  sub_21DF236C0(v28, v42, &qword_27CEA7328);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7338);
  sub_21DF236C0(v34, v35 + *(v36 + 48), &qword_27CEA7320);
  sub_21DF23614(v4, &qword_27CEA7320);
  sub_21DF23614(v10, &qword_27CEA7328);
  sub_21DF23614(v34, &qword_27CEA7320);
  return sub_21DF23614(v28, &qword_27CEA7328);
}

uint64_t sub_21DF40D98()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7200);
  MEMORY[0x28223BE20](v0);
  v2 = &v13 - v1;
  sub_21E1400D4();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v3 = [objc_opt_self() mainBundle];
  }

  v4 = sub_21E140C64();
  v6 = v5;
  v14 = v4;
  v15 = v5;
  v8 = v7 & 1;
  v16 = v7 & 1;
  v17 = v9;
  sub_21E141164();
  sub_21DF3DE8C(v4, v6, v8);

  sub_21E141C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7208);
  sub_21DF4232C();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7218);
  v11 = sub_21DF423E8();
  v14 = v10;
  v15 = v11;
  swift_getOpaqueTypeConformance2();
  sub_21E141364();
  return sub_21DF23614(v2, &qword_27CEA7200);
}

uint64_t sub_21DF40FF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7218);
  MEMORY[0x28223BE20](v2);
  v4 = v10 - v3;
  sub_21E141CC4();
  sub_21E13FCE4();
  sub_21DF236C0(a1, v4, &qword_27CEA7200);
  v5 = &v4[*(v2 + 36)];
  v6 = v10[5];
  *(v5 + 4) = v10[4];
  *(v5 + 5) = v6;
  *(v5 + 6) = v10[6];
  v7 = v10[1];
  *v5 = v10[0];
  *(v5 + 1) = v7;
  v8 = v10[3];
  *(v5 + 2) = v10[2];
  *(v5 + 3) = v8;
  sub_21DF423E8();
  sub_21E1411F4();
  return sub_21DF23614(v4, &qword_27CEA7218);
}

uint64_t sub_21DF41148(uint64_t a1)
{
  v2 = sub_21E140194();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7260);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v10 = (&v12 + *(v9 + 36) - v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7278);
  sub_21E13FD04();
  *v10 = swift_getKeyPath();
  sub_21DF236C0(a1, v8, &qword_27CEA71E0);
  sub_21E140184();
  sub_21DF42560();
  sub_21DF428C4(&qword_27CEA7280, MEMORY[0x277CDDEE0]);
  sub_21E140DC4();
  (*(v3 + 8))(v5, v2);
  return sub_21DF23614(v8, &qword_27CEA7260);
}

uint64_t sub_21DF41344@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v24[1] = a1;
  v27 = a2;
  v2 = sub_21E13F444();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v24 - v7;
  v9 = type metadata accessor for CapsuleButtonStyle();
  MEMORY[0x28223BE20](v9);
  v11 = (v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7300);
  v25 = *(v12 - 8);
  v26 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v24 - v13;
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  *(v11 + *(v9 + 20)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA71E0);
  sub_21DF4247C();
  sub_21DF428C4(&qword_27CEA7290, type metadata accessor for CapsuleButtonStyle);
  sub_21E140DD4();
  sub_21DF42B90(v11);
  sub_21E021DE8(v8);
  (*(v3 + 104))(v5, *MEMORY[0x277CDF3C0], v2);
  v15 = sub_21E13F434();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v16(v8, v2);
  if (v15)
  {
    v17 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  }

  else
  {
    v17 = sub_21E141484();
  }

  v18 = v17;
  KeyPath = swift_getKeyPath();
  v28 = v18;
  v20 = sub_21E13F674();
  v21 = v27;
  (*(v25 + 32))(v27, v14, v26);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7230);
  v23 = (v21 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = v20;
  return result;
}

uint64_t sub_21DF4169C()
{
  sub_21E1400D4();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v0 = [objc_opt_self() mainBundle];
  }

  v1 = sub_21E140C64();
  v3 = v2;
  v5 = v4;
  sub_21E140AC4();
  v6 = sub_21E140C44();
  v8 = v7;
  v10 = v9;

  sub_21DF3DE8C(v1, v3, v5 & 1);

  sub_21E141C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA72B0);
  sub_21DF4275C();
  sub_21E141364();
  sub_21DF3DE8C(v6, v8, v10 & 1);
}

uint64_t sub_21DF41874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_21E141CC4();
  sub_21E13FCE4();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 96) = v12;
  *(a2 + 112) = v13;
  *(a2 + 128) = v14;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v10;
  *(a2 + 80) = v11;
  sub_21DF42BEC(v3, v4, v5);
}

uint64_t sub_21DF41960(uint64_t a1)
{
  v2 = sub_21E140714();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA72D8);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v10 = (&v13 + *(v9 + 36) - v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7278);
  sub_21E13FD04();
  *v10 = swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA71C8);
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  sub_21E140704();
  sub_21DF427E0();
  sub_21DF428C4(&qword_27CEA72E8, MEMORY[0x277CDE400]);
  sub_21E140DC4();
  (*(v3 + 8))(v5, v2);
  return sub_21DF23614(v8, &qword_27CEA72D8);
}

uint64_t sub_21DF41B88(uint64_t a1)
{
  v2 = type metadata accessor for CapsuleButtonStyle();
  MEMORY[0x28223BE20](v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA72D8);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  v9 = (&v12 + *(v8 + 36) - v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7278);
  sub_21E13FD04();
  *v9 = swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA71C8);
  (*(*(v10 - 8) + 16))(v7, a1, v10);
  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  *(v4 + *(v2 + 20)) = 1;
  sub_21DF427E0();
  sub_21DF428C4(&qword_27CEA7290, type metadata accessor for CapsuleButtonStyle);
  sub_21E140DD4();
  sub_21DF42B90(v4);
  return sub_21DF23614(v7, &qword_27CEA72D8);
}

uint64_t sub_21DF41DAC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for EventLookupPlaceholder();
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140);
  swift_storeEnumTagMultiPayload();
  v4 = v2[6];
  type metadata accessor for VIUIPeriodicOpacityAnimator();
  v5 = swift_allocObject();
  *(v5 + 24) = 0x4008000000000000;
  *(v5 + 32) = 0;
  *(v5 + 40) = xmmword_21E1463B0;
  sub_21E13D3F4();
  v6 = sub_21E142314();
  *(v6 + 16) = 1;
  *(v6 + 32) = 0x3FF921FB54442D18;
  *(v6 + 40) = 0;
  *(v6 + 48) = 1;
  *(v5 + 16) = v6;
  v7 = sub_21E142314();
  *(v7 + 16) = 1;
  *(v7 + 32) = 0x3FF0000000000000;
  *(v5 + 56) = v7;
  *(a1 + v4) = v5;
  v8 = a1 + v2[7];
  result = sub_21E141704();
  *v8 = v10;
  *(v8 + 1) = v11;
  return result;
}

uint64_t sub_21DF41F24@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21E1401C4();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7110);
  sub_21DF3EFD8(v1, (a1 + *(v3 + 44)));
  v4 = sub_21E140904();
  sub_21E13F374();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7118);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_21DF41FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventLookupPlaceholder();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DF42038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventLookupPlaceholder();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DF4209C()
{
  type metadata accessor for EventLookupPlaceholder();

  return sub_21DF3F860();
}

unint64_t sub_21DF4210C()
{
  result = qword_27CEA7168;
  if (!qword_27CEA7168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7170);
    sub_21DF23E5C(&qword_27CEA7178, &qword_27CEA7180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7168);
  }

  return result;
}

uint64_t sub_21DF421C4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_21DF23E5C(&qword_27CEA7188, &qword_27CEA7158);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21DF42274()
{
  result = qword_27CEA7198;
  if (!qword_27CEA7198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7150);
    sub_21DF23E5C(&qword_27CEA71A0, &qword_27CEA71A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7198);
  }

  return result;
}

unint64_t sub_21DF4232C()
{
  result = qword_27CEA7210;
  if (!qword_27CEA7210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7200);
    sub_21DF428C4(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7210);
  }

  return result;
}

unint64_t sub_21DF423E8()
{
  result = qword_27CEA7220;
  if (!qword_27CEA7220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7218);
    sub_21DF4232C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7220);
  }

  return result;
}

unint64_t sub_21DF4247C()
{
  result = qword_27CEA7238;
  if (!qword_27CEA7238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA71E0);
    sub_21DF23E5C(&qword_27CEA7240, &qword_27CEA7248);
    sub_21DF23E5C(&qword_27CEA7250, &qword_27CEA7258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7238);
  }

  return result;
}

unint64_t sub_21DF42560()
{
  result = qword_27CEA7268;
  if (!qword_27CEA7268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7260);
    sub_21DF4247C();
    sub_21DF23E5C(&qword_27CEA7270, &qword_27CEA7278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7268);
  }

  return result;
}

unint64_t sub_21DF42618()
{
  result = qword_27CEA7288;
  if (!qword_27CEA7288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7230);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA71E0);
    type metadata accessor for CapsuleButtonStyle();
    sub_21DF4247C();
    sub_21DF428C4(&qword_27CEA7290, type metadata accessor for CapsuleButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_27CEA7298, &qword_27CEA72A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7288);
  }

  return result;
}

unint64_t sub_21DF4275C()
{
  result = qword_27CEA72B8;
  if (!qword_27CEA72B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA72B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA72B8);
  }

  return result;
}

unint64_t sub_21DF427E0()
{
  result = qword_27CEA72E0;
  if (!qword_27CEA72E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA72D8);
    sub_21DF23E5C(&qword_27CEA72D0, &qword_27CEA71C8);
    sub_21DF23E5C(&qword_27CEA7270, &qword_27CEA7278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA72E0);
  }

  return result;
}

uint64_t sub_21DF428C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21DF4290C()
{
  result = qword_27CEA72F0;
  if (!qword_27CEA72F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA71D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA71C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA72C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA72C8);
    sub_21DF23E5C(&qword_27CEA72D0, &qword_27CEA71C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA72D8);
    sub_21E140714();
    sub_21DF427E0();
    sub_21DF428C4(&qword_27CEA72E8, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for CapsuleButtonStyle();
    sub_21DF428C4(&qword_27CEA7290, type metadata accessor for CapsuleButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_27CEA7250, &qword_27CEA7258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA72F0);
  }

  return result;
}

uint64_t sub_21DF42B90(uint64_t a1)
{
  v2 = type metadata accessor for CapsuleButtonStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DF42BEC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_21DF42BFC()
{
  result = qword_27CEA7340;
  if (!qword_27CEA7340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7118);
    sub_21DF23E5C(&qword_27CEA7348, &qword_27CEA7350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7340);
  }

  return result;
}

uint64_t sub_21DF42CD0()
{
  v1 = *v0;
  sub_21E142C14();
  MEMORY[0x223D53460](v1);
  return sub_21E142C44();
}

uint64_t sub_21DF42D18()
{
  v1 = *v0;
  sub_21E142C14();
  MEMORY[0x223D53460](v1);
  return sub_21E142C44();
}

uint64_t sub_21DF42D60@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v62 = sub_21E13FC84();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v56 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD410);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v53 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7368);
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v55 = &v53 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7370) - 8;
  MEMORY[0x28223BE20](v58);
  v57 = &v53 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7378);
  MEMORY[0x28223BE20](v67);
  v66 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7380);
  v10 = *(v9 - 8);
  v63 = v9;
  v64 = v10;
  MEMORY[0x28223BE20](v9);
  v68 = &v53 - v11;
  LOBYTE(v80[0]) = *(v1 + 17);
  sub_21DF44574();
  v12 = sub_21E13D084();
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = 0xE000000000000000;
  if (v13)
  {
    v15 = v13;
  }

  *&v80[0] = v14;
  *(&v80[0] + 1) = v15;
  sub_21DF252E0();
  v16 = sub_21E140C94();
  v18 = v17;
  v20 = v19;
  v21 = [objc_opt_self() defaultMetrics];
  [v21 scaledValueForValue_];

  v22 = sub_21E1409D4();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  sub_21E140A24();
  sub_21DF23614(v5, &unk_27CEAD410);
  v23 = sub_21E140C44();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_21DF3DE8C(v16, v18, v20 & 1);

  sub_21E141CD4();
  sub_21E13FCE4();
  v82 = v27 & 1;
  KeyPath = swift_getKeyPath();
  *&v71 = v23;
  *(&v71 + 1) = v25;
  LOBYTE(v72) = v27 & 1;
  *(&v72 + 1) = v29;
  v77 = v79[6];
  v78 = v79[7];
  v79[0] = v79[8];
  v73 = v79[2];
  v74 = v79[3];
  v75 = v79[4];
  v76 = v79[5];
  *&v79[1] = KeyPath;
  BYTE8(v79[1]) = 0;
  v31 = v56;
  sub_21E13FC64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7390);
  sub_21DF445C8();
  v32 = v55;
  sub_21E141344();
  (*(v60 + 8))(v31, v62);
  v80[6] = v77;
  v80[7] = v78;
  v81[0] = v79[0];
  *(v81 + 9) = *(v79 + 9);
  v80[2] = v73;
  v80[3] = v74;
  v80[4] = v75;
  v80[5] = v76;
  v80[0] = v71;
  v80[1] = v72;
  sub_21DF23614(v80, &qword_27CEA7390);
  v33 = sub_21E140904();
  v34 = v57;
  (*(v59 + 32))(v57, v32, v61);
  v35 = &v34[*(v58 + 44)];
  *v35 = v33;
  *(v35 + 8) = 0u;
  *(v35 + 24) = 0u;
  v35[40] = 1;
  v36 = swift_allocObject();
  v37 = v54;
  v38 = *(v54 + 48);
  *(v36 + 48) = *(v54 + 32);
  *(v36 + 64) = v38;
  *(v36 + 80) = *(v37 + 64);
  v39 = *(v37 + 16);
  *(v36 + 16) = *v37;
  *(v36 + 32) = v39;
  v40 = v34;
  v41 = v66;
  sub_21DF09C54(v40, v66);
  v42 = (v41 + *(v67 + 36));
  *v42 = sub_21DF446C4;
  v42[1] = v36;
  v42[2] = 0;
  v42[3] = 0;
  v70 = *(v37 + 56);
  sub_21DF446CC(v37, &v71);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141734();
  v43 = swift_allocObject();
  v44 = *(v37 + 48);
  *(v43 + 48) = *(v37 + 32);
  *(v43 + 64) = v44;
  *(v43 + 80) = *(v37 + 64);
  v45 = *(v37 + 16);
  *(v43 + 16) = *v37;
  *(v43 + 32) = v45;
  sub_21DF446CC(v37, &v71);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA73A8);
  *&v52 = sub_21DF4470C();
  *(&v52 + 1) = sub_21DF44860();
  v47 = v67;
  v48 = v66;
  sub_21E141274();

  sub_21DF09CC4(v48);
  v70 = *(v37 + 40);
  sub_21E141734();
  v69 = v37;
  *&v71 = v47;
  *(&v71 + 1) = v46;
  v72 = v52;
  swift_getOpaqueTypeConformance2();
  v49 = v63;
  v50 = v68;
  sub_21E141234();

  return (*(v64 + 8))(v50, v49);
}

uint64_t sub_21DF43548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E13EF84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = &type metadata for SummarizationIncompleteCardView;
  v17 = sub_21DF449A8();
  v8 = swift_allocObject();
  v15 = v8;
  v9 = *(a1 + 48);
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(a1 + 64);
  v10 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D0D7D0], v4);
  sub_21DF446CC(a1, v14);
  sub_21E13EF24();
  v11 = sub_21E13FB64();
  LOBYTE(v4) = sub_21E140914();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA73A8);
  v13 = a2 + *(result + 36);
  *v13 = v11;
  *(v13 + 8) = v4;
  return result;
}

uint64_t sub_21DF436B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_21E1400C4();
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = sub_21E141404();
  MEMORY[0x28223BE20](v5 - 8);
  v65 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v58 - v8;
  MEMORY[0x28223BE20](v9);
  v63 = &v58 - v10;
  MEMORY[0x28223BE20](v11);
  v62 = &v58 - v12;
  v13 = *(a1 + 17);
  sub_21E1400D4();
  sub_21DF23B80();
  v14 = sub_21E1426B4();
  if (v13)
  {
    if (!v14)
    {
      v15 = [objc_opt_self() mainBundle];
    }

    v16 = sub_21E140C64();
    v62 = v17;
    v63 = v16;
    v60 = v18;
    v61 = v19;
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_21DF252E0();
    v59 = sub_21E140C94();
    v58 = v20;
    sub_21E1400B4();
    sub_21E1400A4();
    sub_21E13E434();
    sub_21E140094();

    sub_21E1400A4();
    sub_21E1400E4();
    if (!sub_21E1426B4())
    {
      v21 = [objc_opt_self() mainBundle];
    }

    v22 = sub_21E140C64();
    v24 = v23;
    v26 = v25;
    sub_21E1413F4();
    sub_21DF3DE8C(v22, v24, v26 & 1);

    sub_21E1400D4();
    if (!sub_21E1426B4())
    {
      v27 = [objc_opt_self() mainBundle];
    }

    v28 = sub_21E140C64();
    v30 = v29;
    v32 = v31;
    v33 = swift_allocObject();
    v34 = *(a1 + 48);
    *(v33 + 48) = *(a1 + 32);
    *(v33 + 64) = v34;
    *(v33 + 80) = *(a1 + 64);
    v35 = *(a1 + 16);
    *(v33 + 16) = *a1;
    *(v33 + 32) = v35;
    sub_21DF446CC(a1, &v67);
    sub_21E1413E4();

    sub_21DF3DE8C(v28, v30, v32 & 1);
  }

  else
  {
    if (!v14)
    {
      v36 = [objc_opt_self() mainBundle];
    }

    v37 = sub_21E140C64();
    v64 = v38;
    v65 = v37;
    v60 = v39;
    v61 = v40;
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_21DF252E0();
    v59 = sub_21E140C94();
    v58 = v41;
    sub_21E1400B4();
    sub_21E1400A4();
    sub_21E13E434();
    sub_21E140094();

    sub_21E1400A4();
    sub_21E1400E4();
    if (!sub_21E1426B4())
    {
      v42 = [objc_opt_self() mainBundle];
    }

    v43 = sub_21E140C64();
    v45 = v44;
    v47 = v46;
    sub_21E1413F4();
    sub_21DF3DE8C(v43, v45, v47 & 1);

    sub_21E1400D4();
    if (!sub_21E1426B4())
    {
      v48 = [objc_opt_self() mainBundle];
    }

    v49 = sub_21E140C64();
    v51 = v50;
    v53 = v52;
    v54 = swift_allocObject();
    v55 = *(a1 + 48);
    *(v54 + 48) = *(a1 + 32);
    *(v54 + 64) = v55;
    *(v54 + 80) = *(a1 + 64);
    v56 = *(a1 + 16);
    *(v54 + 16) = *a1;
    *(v54 + 32) = v56;
    sub_21DF446CC(a1, &v67);
    sub_21E1413E4();

    sub_21DF3DE8C(v49, v51, v53 & 1);
  }

  return sub_21E1413D4();
}

uint64_t sub_21DF43F04(uint64_t a1)
{
  v3 = sub_21E13D264();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E13EF54();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E13FF94();
  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E13EF94();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v1 + 56);
  LOBYTE(v27) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141724();
  (*(v12 + 16))(v14, a1, v11);
  result = (*(v12 + 88))(v14, v11);
  if (result != *MEMORY[0x277D0D810] && result != *MEMORY[0x277D0D820])
  {
    if (result == *MEMORY[0x277D0D7F0])
    {
      v28 = *v1;
      v29 = *(v1 + 16);
      v17 = v28;
      if (v29 == 1)
      {
      }

      else
      {

        sub_21E142574();
        v18 = sub_21E1408C4();
        sub_21E13F184();

        sub_21E13FF84();
        swift_getAtKeyPath();
        sub_21DF23614(&v28, &qword_27CEA7358);
        (*(v22 + 8))(v10, v8);
        v17 = v27;
      }

      v19 = v23;
      (*(v23 + 104))(v7, *MEMORY[0x277D0D758], v5);
      v20 = v24;
      sub_21E13EF44();
      (*(v19 + 8))(v7, v5);
      LOBYTE(v27) = 1;
      v17(v20, &v27);

      return (*(v25 + 8))(v20, v26);
    }

    else if (result == *MEMORY[0x277D0D808])
    {
      sub_21E13EF74();
      return sub_21E13EF64();
    }

    else
    {
      return (*(v12 + 8))(v14, v11);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IncompleteSummarizationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21DF44454(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21DF4449C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21DF44520()
{
  result = qword_27CEA7360;
  if (!qword_27CEA7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7360);
  }

  return result;
}

unint64_t sub_21DF44574()
{
  result = qword_27CEA7388;
  if (!qword_27CEA7388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7388);
  }

  return result;
}

unint64_t sub_21DF445C8()
{
  result = qword_27CEA7398;
  if (!qword_27CEA7398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7390);
    sub_21DF4275C();
    sub_21DF44654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7398);
  }

  return result;
}

unint64_t sub_21DF44654()
{
  result = qword_280F68DD8;
  if (!qword_280F68DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA73A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68DD8);
  }

  return result;
}

unint64_t sub_21DF4470C()
{
  result = qword_27CEA73B0;
  if (!qword_27CEA73B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7378);
    sub_21DF44798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA73B0);
  }

  return result;
}

unint64_t sub_21DF44798()
{
  result = qword_27CEA73B8;
  if (!qword_27CEA73B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7370);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7390);
    sub_21DF445C8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA73B8);
  }

  return result;
}

unint64_t sub_21DF44860()
{
  result = qword_280F68FC8;
  if (!qword_280F68FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA73A8);
    sub_21DF448EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68FC8);
  }

  return result;
}

unint64_t sub_21DF448EC()
{
  result = qword_280F69060;
  if (!qword_280F69060)
  {
    sub_21E13EF34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F69060);
  }

  return result;
}

unint64_t sub_21DF449A8()
{
  result = qword_27CEA73C0;
  if (!qword_27CEA73C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA73C0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  sub_21DF446B8();

  return swift_deallocObject();
}

uint64_t sub_21DF44A54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21E13FF94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_21DF491DC(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21E13F444();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_21E142574();
    v13 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_21DF44C3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141714();
  return v1;
}

double sub_21DF44D3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141714();
  return v1;
}

uint64_t sub_21DF44E38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141714();
  return v1;
}

uint64_t AttributionContainer.init(insets:showAttribution:dynamicallyCalculateHeight:label:content:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v32 = a6;
  v21 = type metadata accessor for AttributionContainer();
  v22 = v21[14];
  v23 = (a7 + v21[13]);
  v24 = v21[15];
  v25 = (a7 + v21[18]);
  sub_21E141704();
  *v25 = a5;
  v25[1] = v32;
  v26 = (a7 + v21[19]);
  sub_21E141704();
  *v26 = a5;
  v26[1] = v32;
  v27 = a7 + v21[20];
  v28 = sub_21E141704();
  *v27 = a5;
  *(v27 + 1) = v32;
  *v23 = a8;
  v23[1] = a9;
  v23[2] = a10;
  v23[3] = a11;
  *(a7 + v22) = a1;
  *(a7 + v24) = a2;
  v29 = a3(v28);
  return a4(v29);
}

uint64_t AttributionContainer.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  *&v116 = a1[3];
  v3 = sub_21E13FB54();
  *&v115 = a1[5];
  v172 = v115;
  v173 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v4 = sub_21E13F3B4();
  v107 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v105 = &v99 - v5;
  v6 = sub_21E1405B4();
  v123 = v4;
  v128 = v6;
  v7 = sub_21E13FB54();
  v109 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v108 = &v99 - v8;
  v9 = a1[2];
  v110 = a1;
  v113 = v9;
  sub_21E13FB54();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA73C8);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA73D0);
  sub_21E13FB54();
  v10 = sub_21E142724();
  v112 = a1[4];
  v170 = v112;
  v171 = MEMORY[0x277CDFC60];
  v11 = swift_getWitnessTable();
  v12 = sub_21DF49194(&qword_27CEA73D8, MEMORY[0x277CE0660]);
  v168 = v11;
  v169 = v12;
  v130 = v12;
  v13 = swift_getWitnessTable();
  v14 = sub_21DF23E5C(&qword_27CEA73E0, &qword_27CEA73C8);
  v166 = v13;
  v167 = v14;
  v15 = swift_getWitnessTable();
  v16 = sub_21DF23E5C(&qword_27CEA73E8, &qword_27CEA73D0);
  v164 = v15;
  v165 = v16;
  v163 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v119 = v10;
  v114 = v17;
  v18 = sub_21E140154();
  v129 = v7;
  v19 = sub_21E13FB54();
  v104 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v103 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v102 = &v99 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA73F0);
  v106 = v3;
  sub_21E13FB54();
  v23 = sub_21DF23E5C(&qword_27CEA73F8, &qword_27CEA73F0);
  v161 = WitnessTable;
  v162 = v23;
  swift_getWitnessTable();
  sub_21E13F3B4();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CEA7400);
  sub_21E13FB54();
  v159 = swift_getWitnessTable();
  v160 = MEMORY[0x277CDF678];
  v24 = swift_getWitnessTable();
  v25 = sub_21DF23E5C(&qword_280F68E80, qword_27CEA7400);
  v157 = v24;
  v158 = v25;
  v26 = v111;
  v99 = swift_getWitnessTable();
  v27 = sub_21E141924();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v99 - v29;
  v127 = v31;
  v32 = sub_21E13FB54();
  v100 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v99 - v33;
  v125 = v35;
  v128 = v18;
  v36 = sub_21E13FB54();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v99 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v101 = &v99 - v41;
  v124 = v42;
  v120 = v19;
  v43 = sub_21E140304();
  v117 = *(v43 - 8);
  v118 = v43;
  MEMORY[0x28223BE20](v43);
  v126 = &v99 - v45;
  v46 = v110;
  if (*(v26 + *(v110 + 15)) == 1)
  {
    MEMORY[0x28223BE20](v44);
    WitnessTable = v37;
    *&v48 = v112;
    *&v47 = v113;
    *(&v47 + 1) = v116;
    *(&v48 + 1) = v115;
    v115 = v48;
    v116 = v47;
    *(&v99 - 3) = v47;
    *(&v99 - 2) = v48;
    v97 = v26;
    sub_21E1401C4();
    sub_21E141914();
    v49 = (v26 + *(v46 + 13));
    v50 = *v49;
    v51 = v49[1];
    v52 = v49[3];
    v53 = v127;
    v54 = swift_getWitnessTable();
    sub_21DF46D94(v53, v54, v50, v51, 0.0, v52);
    v55 = (*(v28 + 8))(v30, v53);
    MEMORY[0x28223BE20](v55);
    v56 = v115;
    *(&v99 - 3) = v116;
    *(&v99 - 2) = v56;
    sub_21E1401C4();
    v137 = v54;
    v138 = v130;
    v57 = v125;
    v58 = swift_getWitnessTable();
    v97 = v58;
    v98 = v114;
    sub_21E140EE4();
    (*(v100 + 8))(v34, v57);
    v59 = swift_getWitnessTable();
    v135 = v58;
    v136 = v59;
    v60 = v59;
    v61 = v39;
    v62 = v124;
    v63 = swift_getWitnessTable();
    v64 = v101;
    sub_21DFE2A0C(v61, v62, v63);
    v65 = *(WitnessTable + 8);
    v65(v61, v62);
    sub_21DFE2A0C(v64, v62, v63);
    v133 = swift_getWitnessTable();
    v134 = v130;
    v131 = swift_getWitnessTable();
    v132 = v60;
    swift_getWitnessTable();
    sub_21DFE248C(v61, v62);
    v65(v61, v62);
    v65(v64, v62);
  }

  else
  {
    v66 = sub_21E1408F4();
    MEMORY[0x28223BE20](v66);
    *&v68 = v112;
    *&v67 = v113;
    *(&v67 + 1) = v116;
    *(&v68 + 1) = v115;
    v115 = v68;
    v116 = v67;
    *(&v99 - 3) = v67;
    *(&v99 - 2) = v68;
    v97 = v26;
    v69 = v105;
    sub_21E13F3C4();
    v70 = (v26 + *(v46 + 13));
    v71 = *v70;
    v72 = v70[1];
    v73 = v70[3];
    v74 = v123;
    v75 = swift_getWitnessTable();
    v76 = v108;
    sub_21DF46D94(v74, v75, v71, v72, 0.0, v73);
    v77 = (*(v107 + 8))(v69, v74);
    MEMORY[0x28223BE20](v77);
    v78 = v115;
    *(&v99 - 3) = v116;
    *(&v99 - 2) = v78;
    sub_21E1401C4();
    v79 = v129;
    v155 = v75;
    v156 = v130;
    v80 = swift_getWitnessTable();
    v97 = v80;
    v98 = v114;
    v81 = v103;
    sub_21E140EE4();
    (*(v109 + 8))(v76, v79);
    WitnessTable = swift_getWitnessTable();
    v153 = v80;
    v154 = WitnessTable;
    v82 = v120;
    v83 = swift_getWitnessTable();
    v84 = v124;
    v85 = v102;
    sub_21DFE2A0C(v81, v82, v83);
    v86 = *(v104 + 8);
    v86(v81, v82);
    sub_21DFE2A0C(v85, v82, v83);
    v151 = swift_getWitnessTable();
    v152 = v130;
    v149 = swift_getWitnessTable();
    v150 = WitnessTable;
    swift_getWitnessTable();
    sub_21DFE2584(v81, v84, v82);
    v86(v81, v82);
    v86(v85, v82);
  }

  v87 = swift_getWitnessTable();
  v88 = v130;
  v147 = v87;
  v148 = v130;
  v89 = swift_getWitnessTable();
  v90 = swift_getWitnessTable();
  v145 = v89;
  v146 = v90;
  v91 = swift_getWitnessTable();
  v143 = swift_getWitnessTable();
  v144 = v88;
  v141 = swift_getWitnessTable();
  v142 = v90;
  v92 = swift_getWitnessTable();
  v139 = v91;
  v140 = v92;
  v93 = v118;
  v94 = swift_getWitnessTable();
  v95 = v126;
  sub_21DFE2A0C(v126, v93, v94);
  return (*(v117 + 8))(v95, v93);
}

uint64_t sub_21DF45F58@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a4;
  v39 = a1;
  v43 = a6;
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA73F0);
  v9 = sub_21E13FB54();
  v59 = a5;
  v60 = MEMORY[0x277CDFC60];
  v42 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v58 = sub_21DF23E5C(&qword_27CEA73F8, &qword_27CEA73F0);
  v33 = v9;
  v32 = swift_getWitnessTable();
  v10 = sub_21E13F3B4();
  v36 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v35 = sub_21E13FB54();
  v40 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v31 = &v30 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CEA7400);
  v14 = sub_21E13FB54();
  v41 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v34 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v37 = &v30 - v17;
  sub_21E1408F4();
  v53 = a2;
  v54 = a3;
  v18 = v38;
  v55 = v38;
  v56 = a5;
  type metadata accessor for AttributionContainer();
  v19 = v39;
  sub_21DF44E38();
  v44 = a2;
  v45 = a3;
  v46 = v18;
  v47 = a5;
  v48 = v19;
  sub_21E13F3C4();
  sub_21DF44D3C();
  sub_21E141CC4();
  v20 = swift_getWitnessTable();
  v21 = v31;
  sub_21E141254();
  (*(v36 + 8))(v12, v10);
  sub_21E141D84();
  v53 = sub_21DF44D3C();
  v51 = v20;
  v52 = MEMORY[0x277CDF678];
  v22 = v35;
  v23 = swift_getWitnessTable();
  sub_21DF3D110();
  v24 = v34;
  sub_21E141384();

  (*(v40 + 8))(v21, v22);
  v25 = sub_21DF23E5C(&qword_280F68E80, qword_27CEA7400);
  v49 = v23;
  v50 = v25;
  v26 = swift_getWitnessTable();
  v27 = v37;
  sub_21DFE2A0C(v24, v14, v26);
  v28 = *(v41 + 8);
  v28(v24, v14);
  sub_21DFE2A0C(v27, v14, v26);
  return (v28)(v27, v14);
}

uint64_t sub_21DF464BC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a2;
  v35 = a4;
  v32 = a1;
  v39 = a6;
  v44 = a2;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v30 = a5;
  v7 = type metadata accessor for AttributionContainer();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = sub_21E13FB54();
  v37 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v31 = &v30 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA73F0);
  v13 = sub_21E13FB54();
  v38 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v33 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v36 = &v30 - v16;
  sub_21E141CC4();
  v17 = v32;
  sub_21E141264();
  (*(v8 + 16))(v10, v17, v7);
  v18 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v20 = v35;
  *(v19 + 2) = v34;
  *(v19 + 3) = a3;
  v21 = v30;
  *(v19 + 4) = v20;
  *(v19 + 5) = v21;
  (*(v8 + 32))(&v19[v18], v10, v7);
  v44 = sub_21DF4927C;
  v45 = v19;
  sub_21E141CC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7518);
  v42 = v21;
  v43 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  sub_21DF23E5C(&qword_27CEA7520, &qword_27CEA7518);
  v23 = v33;
  v24 = v31;
  sub_21E140D64();

  (*(v37 + 8))(v24, v11);
  v25 = sub_21DF23E5C(&qword_27CEA73F8, &qword_27CEA73F0);
  v40 = WitnessTable;
  v41 = v25;
  v26 = swift_getWitnessTable();
  v27 = v36;
  sub_21DFE2A0C(v23, v13, v26);
  v28 = *(v38 + 8);
  v28(v23, v13);
  sub_21DFE2A0C(v27, v13, v26);
  return (v28)(v27, v13);
}

uint64_t sub_21DF46938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)()@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a3;
  v42 = a6;
  v38 = a5;
  v39 = a2;
  v40 = a1;
  v37 = a7;
  v35 = sub_21E13F734();
  v11 = *(v35 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v35);
  v30 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a4;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v47 = a6;
  v13 = type metadata accessor for AttributionContainer();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v34 = sub_21E1414A4();
  v36 = *(v14 + 16);
  v36(v17, v39, v13);
  v18 = v35;
  (*(v11 + 16))(&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v35);
  v19 = *(v14 + 80);
  v20 = (v19 + 48) & ~v19;
  v32 = v19 | 7;
  v33 = v20 + v15;
  v21 = (v20 + v15 + *(v11 + 80)) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v41;
  *(v22 + 3) = a4;
  v23 = v42;
  *(v22 + 4) = v38;
  *(v22 + 5) = v23;
  v24 = *(v14 + 32);
  v24(&v22[v20], v17, v13);
  (*(v11 + 32))(&v22[v21], v30, v18);
  v44 = v34;
  v45 = sub_21DF49338;
  v46 = v22;
  v47 = 0;
  v48 = 0;
  sub_21E13F714();
  v43 = v25;
  v36(v17, v39, v13);
  v26 = swift_allocObject();
  v27 = v31;
  *(v26 + 2) = v41;
  *(v26 + 3) = v27;
  v28 = v42;
  *(v26 + 4) = v38;
  *(v26 + 5) = v28;
  v24(&v26[v20], v17, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70C8);
  sub_21DF496C4();
  sub_21DF3D110();
  sub_21E141324();
}

uint64_t sub_21DF46C7C()
{
  sub_21E13F714();
  type metadata accessor for AttributionContainer();
  return sub_21DF46CF8();
}

uint64_t sub_21DF46CF8()
{
  sub_21DF44C9C();
  sub_21DF44C3C();
  sub_21DF44E98();
  sub_21E141D64();
  sub_21E13F864();
}

uint64_t sub_21DF46D94(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_21E1405B4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E140914();
  *&v17[1] = a3;
  *&v17[2] = a4;
  *&v17[3] = a5;
  *&v17[4] = a6;
  v18 = 0;
  sub_21E1405A4();
  MEMORY[0x223D51B40](v15, a1, v12, a2);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_21DF46EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v31 = (a1 + 24);
  v32 = (a1 + 40);
  v29 = *(a1 + 16);
  v4 = sub_21E13FB54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  sub_21E1405B4();
  v8 = sub_21E13FB54();
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA73C8);
  v11 = sub_21E13FB54();
  v12 = *(v11 - 8);
  v34 = v11;
  v35 = v12;
  MEMORY[0x28223BE20](v11);
  v30 = &v29 - v13;
  sub_21E141CD4();
  v14 = *(a1 + 32);
  sub_21E141264();
  v15 = (v2 + *(a1 + 52));
  v16 = v15[1];
  v17 = *v15 + 8.0;
  v18 = v15[2];
  v19 = v15[3];
  v44 = v14;
  v45 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  sub_21DF46D94(v4, WitnessTable, v17, v16, v18, v19);
  (*(v5 + 8))(v7, v4);
  *&v21 = v29;
  *(&v21 + 1) = *v31;
  *&v22 = v14;
  *(&v22 + 1) = *v32;
  v37 = v21;
  v38 = v22;
  v39 = v2;
  sub_21E141CC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7488);
  v23 = sub_21DF49194(&qword_27CEA73D8, MEMORY[0x277CE0660]);
  v42 = WitnessTable;
  v43 = v23;
  v24 = swift_getWitnessTable();
  sub_21DF48EDC();
  v25 = v30;
  sub_21E140D44();
  (*(v33 + 8))(v10, v8);
  sub_21E141CB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA74D8);
  v26 = sub_21DF23E5C(&qword_27CEA73E0, &qword_27CEA73C8);
  v40 = v24;
  v41 = v26;
  v27 = v34;
  swift_getWitnessTable();
  sub_21DF490D8();
  sub_21E1412D4();
  return (*(v35 + 8))(v25, v27);
}

uint64_t sub_21DF47390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_21E13FB54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v19 - v14;
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  type metadata accessor for AttributionContainer();
  sub_21E141CD4();
  sub_21E141264();
  v19[0] = a5;
  v19[1] = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  sub_21DFE2A0C(v12, v9, WitnessTable);
  v17 = *(v10 + 8);
  v17(v12, v9);
  sub_21DFE2A0C(v15, v9, WitnessTable);
  return (v17)(v15, v9);
}

uint64_t sub_21DF47580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v56 = a6;
  v11 = sub_21E13FB54();
  sub_21E1405B4();
  v57 = v11;
  v12 = sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA73C8);
  v58 = v12;
  v13 = sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA73D0);
  v59 = v13;
  v14 = sub_21E13FB54();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - v19;
  v54 = sub_21E142724();
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v53 = &v52 - v24;
  v85 = a2;
  v86 = a3;
  v87 = a4;
  v88 = a5;
  v25 = type metadata accessor for AttributionContainer();
  v26 = MEMORY[0x277CDFC60];
  if (*(a1 + *(v25 + 56)) == 1)
  {
    sub_21DF46EC0(v25, v17);
    v66 = a4;
    v67 = v26;
    WitnessTable = swift_getWitnessTable();
    v28 = sub_21DF49194(&qword_27CEA73D8, MEMORY[0x277CE0660]);
    v64 = WitnessTable;
    v65 = v28;
    v29 = swift_getWitnessTable();
    v30 = sub_21DF23E5C(&qword_27CEA73E0, &qword_27CEA73C8);
    v62 = v29;
    v63 = v30;
    v31 = swift_getWitnessTable();
    v32 = sub_21DF23E5C(&qword_27CEA73E8, &qword_27CEA73D0);
    v60 = v31;
    v61 = v32;
    v33 = swift_getWitnessTable();
    sub_21DFE2A0C(v17, v14, v33);
    v34 = *(v15 + 8);
    v34(v17, v14);
    sub_21DFE2A0C(v20, v14, v33);
    v34(v20, v14);
    (*(v15 + 32))(v22, v17, v14);
    (*(v15 + 56))(v22, 0, 1, v14);
  }

  else
  {
    (*(v15 + 56))(v22, 1, 1, v14);
    v83 = a4;
    v84 = v26;
    v35 = swift_getWitnessTable();
    v36 = sub_21DF49194(&qword_27CEA73D8, MEMORY[0x277CE0660]);
    v81 = v35;
    v82 = v36;
    v37 = swift_getWitnessTable();
    v38 = sub_21DF23E5C(&qword_27CEA73E0, &qword_27CEA73C8);
    v79 = v37;
    v80 = v38;
    v39 = swift_getWitnessTable();
    v40 = sub_21DF23E5C(&qword_27CEA73E8, &qword_27CEA73D0);
    v77 = v39;
    v78 = v40;
    swift_getWitnessTable();
  }

  v41 = v53;
  sub_21DFF63B0(v22, v53);
  v42 = *(v55 + 8);
  v43 = v54;
  v42(v22, v54);
  v75 = a4;
  v76 = v26;
  v44 = swift_getWitnessTable();
  v45 = sub_21DF49194(&qword_27CEA73D8, MEMORY[0x277CE0660]);
  v73 = v44;
  v74 = v45;
  v46 = swift_getWitnessTable();
  v47 = sub_21DF23E5C(&qword_27CEA73E0, &qword_27CEA73C8);
  v71 = v46;
  v72 = v47;
  v48 = swift_getWitnessTable();
  v49 = sub_21DF23E5C(&qword_27CEA73E8, &qword_27CEA73D0);
  v69 = v48;
  v70 = v49;
  v68 = swift_getWitnessTable();
  v50 = swift_getWitnessTable();
  sub_21DFE2A0C(v41, v43, v50);
  return (v42)(v41, v43);
}

uint64_t sub_21DF47C9C()
{
  type metadata accessor for AttributionContainer();
  sub_21DF44C3C();
  return sub_21DF44D9C();
}

uint64_t sub_21DF47D08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v82 = a5;
  v9 = sub_21E13F444();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v65 - v14;
  v68 = sub_21E141C64();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v84 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA74F0);
  MEMORY[0x28223BE20](v66);
  v85 = &v65 - v17;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA74F8);
  MEMORY[0x28223BE20](v69);
  v71 = &v65 - v18;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7500);
  MEMORY[0x28223BE20](v70);
  v74 = &v65 - v19;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7508);
  MEMORY[0x28223BE20](v73);
  v77 = &v65 - v20;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7510);
  MEMORY[0x28223BE20](v76);
  v78 = &v65 - v21;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA74B0);
  MEMORY[0x28223BE20](v75);
  v80 = &v65 - v22;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA74A0);
  MEMORY[0x28223BE20](v79);
  v81 = &v65 - v23;
  v72 = sub_21E1414A4();
  *&v93 = a1;
  *(&v93 + 1) = a2;
  *&v94 = a3;
  *(&v94 + 1) = a4;
  v83 = type metadata accessor for AttributionContainer();
  sub_21DF44A54(v15);
  v24 = *MEMORY[0x277CDF3C0];
  v25 = *(v10 + 104);
  v25(v12, v24, v9);
  LOBYTE(a2) = sub_21E13F434();
  v26 = *(v10 + 8);
  v26(v12, v9);
  v26(v15, v9);
  if (a2)
  {
    sub_21E141BF4();
  }

  else
  {
    sub_21E141BD4();
  }

  v27 = v85;
  (*(v67 + 32))(v85, v84, v68);
  *(v27 + *(v66 + 56)) = 256;
  sub_21DF44A54(v15);
  v25(v12, v24, v9);
  v28 = sub_21E13F434();
  v26(v12, v9);
  v26(v15, v9);
  if (v28)
  {
    v29 = sub_21E1414A4();
  }

  else
  {
    v29 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  }

  v30 = v29;
  v31 = v77;
  v32 = sub_21E140914();
  v33 = v71;
  sub_21DF3DE9C(v85, v71, &qword_27CEA74F0);
  v34 = v33 + *(v69 + 36);
  *v34 = v30;
  *(v34 + 8) = v32;
  sub_21E141CC4();
  sub_21E13FCE4();
  v35 = v33;
  v36 = v74;
  sub_21DF3DE9C(v35, v74, &qword_27CEA74F8);
  v37 = (v36 + *(v70 + 36));
  v38 = v91;
  v37[4] = v90;
  v37[5] = v38;
  v37[6] = v92;
  v39 = v87;
  *v37 = v86;
  v37[1] = v39;
  v40 = v89;
  v37[2] = v88;
  v37[3] = v40;
  LOBYTE(v30) = sub_21E140914();
  sub_21DF3DE9C(v36, v31, &qword_27CEA7500);
  *(v31 + *(v73 + 36)) = v30;
  LOBYTE(v30) = sub_21E140934();
  sub_21E13F374();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v78;
  sub_21DF3DE9C(v31, v78, &qword_27CEA7508);
  v50 = v49 + *(v76 + 36);
  *v50 = v30;
  *(v50 + 8) = v42;
  *(v50 + 16) = v44;
  *(v50 + 24) = v46;
  *(v50 + 32) = v48;
  *(v50 + 40) = 0;
  v51 = sub_21E141CC4();
  v53 = v52;
  v54 = v80;
  v55 = &v80[*(v75 + 36)];
  sub_21DF3DE9C(v49, v55, &qword_27CEA7510);
  v56 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA74D0) + 36));
  *v56 = v51;
  v56[1] = v53;
  *v54 = v72;
  *(v54 + 8) = 256;
  sub_21E141CC4();
  sub_21E13FCE4();
  v57 = v81;
  sub_21DF3DE9C(v54, v81, &qword_27CEA74B0);
  v58 = (v57 + *(v79 + 36));
  v59 = v98;
  v58[4] = v97;
  v58[5] = v59;
  v58[6] = v99;
  v60 = v94;
  *v58 = v93;
  v58[1] = v60;
  v61 = v96;
  v58[2] = v95;
  v58[3] = v61;
  LOBYTE(v51) = sub_21E140914();
  v62 = v57;
  v63 = v82;
  sub_21DF3DE9C(v62, v82, &qword_27CEA74A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7488);
  *(v63 + *(result + 36)) = v51;
  return result;
}