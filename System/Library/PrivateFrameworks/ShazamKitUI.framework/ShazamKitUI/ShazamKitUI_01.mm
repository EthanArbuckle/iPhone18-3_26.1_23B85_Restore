unint64_t sub_265FA2C8C()
{
  result = qword_280052260;
  if (!qword_280052260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052218, &qword_265FAEBD0);
    sub_265FA2D44();
    sub_265F92604(&qword_280052278, &qword_280052280, &unk_265FAED50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052260);
  }

  return result;
}

unint64_t sub_265FA2D44()
{
  result = qword_280052268;
  if (!qword_280052268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052210, &qword_265FAEBC8);
    sub_265F92604(&qword_280052270, &qword_280052208, &qword_265FAEBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052268);
  }

  return result;
}

uint64_t sub_265FA2DFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265FA2E34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_265FA2E5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_265FA2E84(double a1, double a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *v6 = a1;
  *&v6[1] = a2;
  return v3(v6);
}

unint64_t sub_265FA2EBC()
{
  result = qword_2800522B0;
  if (!qword_2800522B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800522A0, &qword_265FAED78);
    sub_265FA2F48();
    sub_265FA3028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800522B0);
  }

  return result;
}

unint64_t sub_265FA2F48()
{
  result = qword_2800522B8;
  if (!qword_2800522B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800522C0, &qword_265FAED88);
    sub_265FA2FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800522B8);
  }

  return result;
}

unint64_t sub_265FA2FD4()
{
  result = qword_2800522C8;
  if (!qword_2800522C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800522C8);
  }

  return result;
}

unint64_t sub_265FA3028()
{
  result = qword_2800522D0;
  if (!qword_2800522D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052288, &qword_265FAED60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800522D8, &qword_265FAED90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280051ED8, &qword_265FAE350);
    sub_265FA3150();
    sub_265F92604(&qword_280051F90, &qword_280051ED8, &qword_265FAE350);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800522D0);
  }

  return result;
}

unint64_t sub_265FA3150()
{
  result = qword_2800522E0;
  if (!qword_2800522E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800522D8, &qword_265FAED90);
    sub_265FA3208();
    sub_265F92604(&qword_280051DD0, &qword_280051DD8, &qword_265FADFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800522E0);
  }

  return result;
}

unint64_t sub_265FA3208()
{
  result = qword_2800522E8;
  if (!qword_2800522E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800522E8);
  }

  return result;
}

unint64_t sub_265FA325C()
{
  result = qword_2800522F0;
  if (!qword_2800522F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800522A8, &qword_265FAED80);
    sub_265FA32E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800522F0);
  }

  return result;
}

unint64_t sub_265FA32E8()
{
  result = qword_2800522F8;
  if (!qword_2800522F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800522F8);
  }

  return result;
}

uint64_t sub_265FA333C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265FA3380()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_265FA33C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_265F8E700;

  return sub_265FA124C(a1, v4, v5, v6, v7);
}

uint64_t sub_265FA3484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CA8, &unk_265FAD9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ArtworkUnavailableView.init(placeholderImage:widthRatio:heightRatio:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, double a3@<X2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v8 = 0.6;
  if (a4)
  {
    a3 = 0.6;
  }

  *a7 = result;
  *(a7 + 8) = a2;
  if ((a6 & 1) == 0)
  {
    v8 = a5;
  }

  *(a7 + 16) = a3;
  *(a7 + 24) = v8;
  return result;
}

uint64_t ArtworkUnavailableView.body.getter@<X0>(double (**a1)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = swift_allocObject();
  *(v7 + 2) = v4;
  *(v7 + 3) = v3;
  *(v7 + 4) = v5;
  *(v7 + 5) = v6;
  *a1 = sub_265FA36F4;
  a1[1] = v7;
}

double sub_265FA35C4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_265FAB0A8();
  v4 = v3;
  sub_265FA371C(&v10);
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  v16 = v10;
  v17 = v11;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v14;
  v22[5] = v15;
  v22[0] = v10;
  v22[1] = v11;
  sub_265F8A480(&v16, &v9, &qword_280052318, &qword_265FAEE50);
  sub_265F8A4E8(v22, &qword_280052318, &qword_265FAEE50);
  *a1 = v2;
  *(a1 + 8) = v4;
  v5 = v19;
  *(a1 + 48) = v18;
  *(a1 + 64) = v5;
  v6 = v21;
  *(a1 + 80) = v20;
  *(a1 + 96) = v6;
  result = *&v16;
  v8 = v17;
  *(a1 + 16) = v16;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_265FA36BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

double sub_265FA36F4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_265FA35C4(a1);
}

uint64_t sub_265FA371C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_265FAAFA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 systemGray5Color];
  v18 = sub_265FAAF48();

  sub_265FAAFC8();
  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
  v9 = sub_265FAAFE8();

  (*(v3 + 8))(v6, v2);
  sub_265FAAA18();
  sub_265FAAA18();
  sub_265FAB0A8();
  sub_265FAAA08();
  LOBYTE(v24[0]) = 1;
  *&v20[3] = *&v20[27];
  *&v20[11] = *&v20[35];
  *&v20[19] = *&v20[43];
  v10 = [v7 systemFillColor];
  v11 = sub_265FAAF48();
  KeyPath = swift_getKeyPath();
  v21[0] = v9;
  v21[1] = 0;
  LOWORD(v22[0]) = 1;
  v13 = *v20;
  *(v22 + 2) = *v20;
  v14 = *&v20[16];
  *(&v22[2] + 2) = *&v20[16];
  v15 = *&v20[8];
  *(&v22[1] + 2) = *&v20[8];
  *&v22[3] = *&v20[23];
  *(&v22[3] + 1) = KeyPath;
  *(a1 + 24) = v22[0];
  *(a1 + 8) = v9;
  *(a1 + 72) = v22[3];
  v16 = v22[1];
  *(a1 + 56) = v22[2];
  *(a1 + 40) = v16;
  v23 = v11;
  *a1 = v18;
  *(a1 + 88) = v11;
  v24[0] = v9;
  v24[1] = 0;
  v25 = 1;
  *&v28[14] = *&v20[23];
  v29 = KeyPath;
  v27 = v15;
  *v28 = v14;
  v26 = v13;
  v30 = v11;

  sub_265F8A480(v21, &v19, &qword_280051C90, &qword_265FAD9A8);
  sub_265F8A4E8(v24, &qword_280051C90, &qword_265FAD9A8);
}

uint64_t sub_265FA3A04@<X0>(double (**a1)@<D0>(uint64_t@<X8>)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = swift_allocObject();
  *(v7 + 2) = v4;
  *(v7 + 3) = v3;
  *(v7 + 4) = v5;
  *(v7 + 5) = v6;
  *a1 = sub_265FA3B94;
  a1[1] = v7;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_265FA3A8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_265FA3AD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_265FA3B28()
{
  result = qword_280052308;
  if (!qword_280052308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052310, "~B");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052308);
  }

  return result;
}

uint64_t ListeningView.init(state:bass:treble:showIntroAnimation:compatibleWithCustomBackground:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12)
{
  v15 = result;
  if (a5)
  {
    v18 = a5;
  }

  else
  {
    v20 = a3;
    result = sub_265FAB048();
    a3 = v20;
    a4 = v23;
    v18 = v24;
    a6 = v25;
  }

  if (!a8)
  {
    v22 = a3;
    result = sub_265FAB048();
    a3 = v22;
    a7 = v23;
    a8 = v24;
    a10 = v25;
  }

  *a9 = v15;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v18;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 73) = a12 & 1;
  return result;
}

double ListeningView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 3);
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v6 = *(v1 + 6);
  v7 = *(v1 + 7);
  v8 = *(v1 + 8);
  v9 = *(v1 + 72);
  v10 = *(v1 + 73);
  v14 = *v1;
  v15 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052320, &qword_265FAEE90);
  sub_265FAB038();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052328, &qword_265FAEE98);
  sub_265FAB038();
  sub_265FAB038();
  result = v13;
  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 24) = v12;
  *(a1 + 40) = v13;
  *(a1 + 48) = v12;
  *(a1 + 64) = v13;
  *(a1 + 72) = v9;
  *(a1 + 73) = v10;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  return result;
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

id sub_265FA3E1C(uint64_t a1, double a2, double a3)
{
  [v3 setBass_];
  [v3 setTreble_];
  result = [v3 state];
  v7 = &selRef_stopAllAnimations;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      if (result == 3)
      {
        return result;
      }

      v7 = &selRef_startPassiveListeningAnimation;
      if (result != 4)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (a1 != 4)
      {
        goto LABEL_16;
      }

      if (result == 4)
      {
        return result;
      }

      v7 = &selRef_startActiveListeningAnimation;
      if (result != 3)
      {
        goto LABEL_16;
      }
    }

    [v3 stopAllAnimations];
  }

  else if (a1 == 1)
  {
    if (result == 1)
    {
      return result;
    }
  }

  else if (a1 == 2)
  {
    if (result == 2)
    {
      return result;
    }

    v7 = &selRef_startIdleAnimation;
  }

LABEL_16:
  v8 = *v7;

  return [v3 v8];
}

unint64_t sub_265FA40D8()
{
  result = qword_280052338;
  if (!qword_280052338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052340, &qword_265FAEF88);
    sub_265FA4164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052338);
  }

  return result;
}

unint64_t sub_265FA4164()
{
  result = qword_280052348;
  if (!qword_280052348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052348);
  }

  return result;
}

uint64_t sub_265FA41B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
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

uint64_t sub_265FA4200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_265FA4268(void *a1)
{
  type metadata accessor for ListeningLayerPlatformWrapper.ListeningUIView();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtCV11ShazamKitUI29ListeningLayerPlatformWrapper15ListeningUIView_listeningLayer);
    v12 = *v1;
    v13 = *(v1 + 2);
    v5 = a1;
    v6 = v4;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052320, &qword_265FAEE90);
    MEMORY[0x2667746A0](&v11, v7);
    v8 = *&v11;
    v12 = *(v1 + 24);
    v13 = *(v1 + 5);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052328, &qword_265FAEE98);
    MEMORY[0x2667746A0](&v11);
    v10 = v11;
    v12 = v1[3];
    v13 = *(v1 + 8);
    MEMORY[0x2667746A0](&v11, v9);
    sub_265FA3E1C(v8, v10, v11);
  }
}

id sub_265FA4384()
{
  v1 = [objc_allocWithZone(SHListeningLayer) initWithIntroAnimation:*(v0 + 72) useCustomCompatibleBackground:*(v0 + 73)];
  v2 = type metadata accessor for ListeningLayerPlatformWrapper.ListeningUIView();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtCV11ShazamKitUI29ListeningLayerPlatformWrapper15ListeningUIView_listeningLayer] = v1;
  v8.receiver = v3;
  v8.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = [v5 layer];
  [v6 addSublayer_];

  return v5;
}

unint64_t sub_265FA446C(uint64_t a1)
{
  result = sub_265FA4494();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_265FA4494()
{
  result = qword_280052350;
  if (!qword_280052350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052350);
  }

  return result;
}

uint64_t sub_265FA44E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265FA4494();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_265FA454C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265FA4494();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_265FA45B0()
{
  sub_265FA4494();
  sub_265FAAD08();
  __break(1u);
}

uint64_t sub_265FA45E0(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_265FA779C(a1);
  (*(*(*(v2 + qword_280054660) - 8) + 8))(a1);
  return v5;
}

id sub_265FA4660()
{
  v1 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___albumArtContainerViewHeightConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___albumArtContainerViewHeightConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___albumArtContainerViewHeightConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtContainerView) heightAnchor];
    v5 = [v4 constraintEqualToConstant_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_265FA4708(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [*(v2 + *a2) centerYAnchor];
    v7 = [*(v2 + OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtContainerView) centerYAnchor];
    v8 = [v6 constraintEqualToAnchor:v7 constant:391.0];

    v9 = *(v2 + v3);
    *(v2 + v3) = v8;
    v5 = v8;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

void sub_265FA47DC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtContainerView;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v12 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtImageView;
  *&v5[v12] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v13 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_titleLabel;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v14 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_artistLabel;
  *&v5[v14] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v15 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamLogoImageView;
  *&v5[v15] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v16 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamCountLabel;
  *&v5[v16] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v17 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_trackDetailsStackView;
  *&v5[v17] = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  v18 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamCountStackView;
  *&v5[v18] = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  v19 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_appleMusicButton;
  *&v5[v19] = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052470, &qword_265FAF180));
  v21 = sub_265FAAC68();
  v22 = [v21 view];

  if (v22)
  {
    *&v5[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_placeholderArtworkView] = v22;
    *&v5[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___albumArtImageViewCenterYConstraint] = 0;
    *&v5[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___albumArtContainerViewHeightConstraint] = 0;
    *&v5[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___placeholderViewCenterYConstraint] = 0;
    v24.receiver = v5;
    v24.super_class = ObjectType;
    v23 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
    sub_265FA4A94();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_265FA4A94()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052478, &qword_265FAF188);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v137 = &v130 - v4;
  v5 = sub_265FAB2E8();
  v135 = *(v5 - 8);
  v136 = v5;
  v6 = *(v135 + 64);
  MEMORY[0x28223BE20](v5);
  v134 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265FAB338();
  v144 = *(v8 - 8);
  v145 = v8;
  v9 = *(v144 + 64);
  MEMORY[0x28223BE20](v8);
  v143 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = *&v0[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_trackDetailsStackView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v12 = *&v1[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_titleLabel];
  [v11 addArrangedSubview_];
  v13 = *&v1[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_artistLabel];
  [v11 addArrangedSubview_];
  [v11 setAxis_];
  [v11 setDistribution_];
  v141 = v11;
  [v11 setAlignment_];
  v14 = *&v1[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtContainerView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v15 = *&v1[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtImageView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 addSubview_];
  [v15 _setContinuousCornerRadius_];
  [v15 setClipsToBounds_];
  v16 = [v15 layer];
  if (qword_280051A28 != -1)
  {
    swift_once();
  }

  v17 = qword_280052368;
  v18 = [qword_280052368 CGColor];
  [v16 setBorderColor_];

  v19 = [v15 layer];
  [v19 setBorderWidth_];

  v20 = [v15 layer];
  [v20 setBorderPathIsBounds_];

  v21 = sub_265FAB178();
  v132 = v15;
  [v15 setAccessibilityIdentifier_];

  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = objc_opt_self();
  v23 = [v22 systemFontOfSize:38.0 weight:*MEMORY[0x277D74420]];
  [v12 setFont_];

  v24 = objc_opt_self();
  v25 = [v24 whiteColor];
  [v12 setTextColor_];

  [v12 setNumberOfLines_];
  LODWORD(v26) = 1132068864;
  [v12 setContentCompressionResistancePriority:0 forAxis:v26];
  v27 = sub_265FAB178();
  [v12 setAccessibilityIdentifier_];

  v28 = *&v1[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_placeholderArtworkView];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 addSubview_];
  [v28 _setContinuousCornerRadius_];
  [v28 setClipsToBounds_];
  v29 = sub_265FAB178();
  [v28 setAccessibilityIdentifier_];

  v30 = [v28 layer];
  v31 = [v17 CGColor];
  [v30 setBorderColor_];

  v32 = [v28 layer];
  [v32 setBorderWidth_];

  v33 = [v28 layer];
  [v33 setBorderPathIsBounds_];

  v140 = v28;
  [v28 setOverrideUserInterfaceStyle_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v34 = *MEMORY[0x277D74418];
  v130 = v22;
  v35 = [v22 systemFontOfSize:34.0 weight:v34];
  [v13 setFont_];

  [v13 setNumberOfLines_];
  if (qword_280051A18 != -1)
  {
    swift_once();
  }

  [v13 setTextColor_];
  LODWORD(v36) = 1132068864;
  [v13 setContentCompressionResistancePriority:0 forAxis:v36];
  v37 = sub_265FAB178();
  [v13 setAccessibilityIdentifier_];

  v38 = *&v1[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamCountStackView];
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v39 = *&v1[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamLogoImageView];
  [v38 addArrangedSubview_];
  v142 = v39;
  [v38 setCustomSpacing:v39 afterView:4.0];
  v40 = *&v1[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamCountLabel];
  [v38 addArrangedSubview_];
  [v38 setAxis_];
  [v38 setDistribution_];
  v131 = v38;
  [v38 setAlignment_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051D40, &qword_265FAF190);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_265FAF0B0;
  *(v41 + 32) = [v24 blackColor];
  *(v41 + 40) = [v24 blackColor];
  if (qword_280051A20 != -1)
  {
    swift_once();
  }

  v42 = qword_280052360;
  *(v41 + 48) = qword_280052360;
  sub_265F97BC0(0, &qword_280052480, 0x277D75348);
  v43 = v42;
  v44 = sub_265FAB208();

  v45 = [objc_opt_self() configurationWithPaletteColors_];

  v46 = v45;
  v47 = sub_265FAB178();
  v48 = objc_opt_self();
  v49 = [v48 systemImageNamed:v47 withConfiguration:v46];

  v139 = v46;
  v138 = v49;
  [v142 setImage_];
  v50 = [v130 systemFontOfSize:20.0 weight:*MEMORY[0x277D74410]];
  [v40 setFont_];

  [v40 setAdjustsFontForContentSizeCategory_];
  [v40 setTextColor_];
  LODWORD(v51) = 1132068864;
  [v40 setContentCompressionResistancePriority:0 forAxis:v51];
  v52 = sub_265FAB178();
  [v40 setAccessibilityIdentifier_];

  v53 = *&v1[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_appleMusicButton];
  [v53 setTranslatesAutoresizingMaskIntoConstraints_];
  v54 = sub_265FAB178();
  [v53 setAccessibilityIdentifier_];

  v55 = objc_opt_self();
  v56 = [v55 mainBundle];
  sub_265FAA708();

  v57 = sub_265FAB178();

  [v53 setAccessibilityLabel_];

  [v1 addSubview_];
  v58 = v143;
  sub_265FAB328();
  v59 = [v55 bundleForClass_];
  v60 = sub_265FAB178();
  v61 = [v48 imageNamed:v60 inBundle:v59 withConfiguration:0];

  sub_265FAB318();
  v62 = v132;
  if (qword_280051A30 != -1)
  {
    swift_once();
  }

  v63 = qword_280052370;
  sub_265FAB308();
  (*(v135 + 104))(v134, *MEMORY[0x277D74FD8], v136);
  sub_265FAB2F8();
  v64 = v144;
  v65 = v145;
  v66 = v137;
  (*(v144 + 16))(v137, v58, v145);
  (*(v64 + 56))(v66, 0, 1, v65);
  sub_265FAB348();
  v137 = objc_opt_self();
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_265FAF0C0;
  v68 = [v14 leadingAnchor];
  v69 = [v1 0x279BBF529];
  v70 = [v68 constraintEqualToAnchor:v69 constant:24.0];

  *(v67 + 32) = v70;
  *(v67 + 40) = sub_265FA4660();
  v71 = [v14 widthAnchor];
  v72 = [v14 heightAnchor];
  v73 = [v71 constraintEqualToAnchor_];

  *(v67 + 48) = v73;
  v74 = [v14 centerYAnchor];
  v75 = [v1 &selRef_presentMediaItem_presentationSettings_completionHandler_];
  v76 = [v74 constraintEqualToAnchor_];

  *(v67 + 56) = v76;
  v77 = [v62 centerXAnchor];
  v78 = [v14 centerXAnchor];
  v79 = [v77 constraintEqualToAnchor_];

  *(v67 + 64) = v79;
  v80 = [v62 heightAnchor];
  v81 = [v14 heightAnchor];
  v82 = [v80 constraintEqualToAnchor_];

  *(v67 + 72) = v82;
  v83 = [v62 widthAnchor];
  v84 = [v14 widthAnchor];
  v85 = [v83 constraintEqualToAnchor_];

  *(v67 + 80) = v85;
  *(v67 + 88) = sub_265FA4708(&OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___albumArtImageViewCenterYConstraint, &OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtImageView);
  v86 = v141;
  v87 = [v141 leadingAnchor];
  v88 = [v14 trailingAnchor];
  v89 = [v87 constraintEqualToAnchor:v88 constant:38.0];

  *(v67 + 96) = v89;
  v90 = [v86 trailingAnchor];
  v91 = [v1 trailingAnchor];
  v92 = [v90 constraintEqualToAnchor_];

  *(v67 + 104) = v92;
  v93 = [v86 centerYAnchor];
  v94 = [v1 centerYAnchor];
  v95 = [v93 constraintEqualToAnchor_];

  *(v67 + 112) = v95;
  v96 = [v53 trailingAnchor];
  v136 = v1;
  v97 = [v1 trailingAnchor];
  v98 = [v96 constraintEqualToAnchor_];

  *(v67 + 120) = v98;
  v99 = [v53 widthAnchor];
  v100 = [v99 constraintEqualToConstant_];

  *(v67 + 128) = v100;
  v101 = [v53 heightAnchor];
  v102 = [v101 constraintEqualToConstant_];

  *(v67 + 136) = v102;
  v103 = [v53 bottomAnchor];
  v104 = [v14 bottomAnchor];
  v105 = [v103 constraintEqualToAnchor_];

  *(v67 + 144) = v105;
  v106 = v131;
  v107 = [v131 leadingAnchor];
  v108 = [v86 leadingAnchor];
  v109 = [v107 constraintEqualToAnchor_];

  *(v67 + 152) = v109;
  v110 = [v106 centerYAnchor];
  v111 = [v53 centerYAnchor];
  v112 = [v110 &selRef:v111 systemFontOfSize:? weight:? + 5];

  *(v67 + 160) = v112;
  v113 = v142;
  v114 = [v142 heightAnchor];
  if (qword_280051A38 != -1)
  {
    swift_once();
  }

  v115 = [v114 constraintEqualToConstant_];

  *(v67 + 168) = v115;
  v116 = [v113 widthAnchor];
  v117 = [v116 constraintEqualToConstant_];

  *(v67 + 176) = v117;
  v118 = v140;
  v119 = [v140 centerXAnchor];
  v120 = [v14 centerXAnchor];
  v121 = [v119 &selRef:v120 systemFontOfSize:? weight:? + 5];

  *(v67 + 184) = v121;
  v122 = [v118 0x279BBF5BALL];
  v123 = [v14 0x279BBF5BALL];
  v124 = [v122 &selRef:v123 systemFontOfSize:? weight:? + 5];

  *(v67 + 192) = v124;
  v125 = [v118 widthAnchor];
  v126 = [v14 widthAnchor];
  v127 = [v125 &selRef:v126 systemFontOfSize:? weight:? + 5];

  *(v67 + 200) = v127;
  *(v67 + 208) = sub_265FA4708(&OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___placeholderViewCenterYConstraint, &OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_placeholderArtworkView);
  sub_265F97BC0(0, &qword_280051D48, 0x277CCAAD0);
  v128 = sub_265FAB208();

  [v137 activateConstraints_];

  return (*(v144 + 8))(v143, v145);
}

void sub_265FA5FCC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtContainerView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v6 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtImageView;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v7 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_titleLabel;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v8 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_artistLabel;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v9 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamLogoImageView;
  *&v1[v9] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v10 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamCountLabel;
  *&v1[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_trackDetailsStackView;
  *&v1[v11] = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  v12 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamCountStackView;
  *&v1[v12] = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  v13 = OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_appleMusicButton;
  *&v1[v13] = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052470, &qword_265FAF180));
  v15 = sub_265FAAC68();
  v16 = [v15 view];

  if (v16)
  {
    *&v2[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_placeholderArtworkView] = v16;
    *&v2[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___albumArtImageViewCenterYConstraint] = 0;
    *&v2[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___albumArtContainerViewHeightConstraint] = 0;
    *&v2[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___placeholderViewCenterYConstraint] = 0;
    v19.receiver = v2;
    v19.super_class = ObjectType;
    v17 = objc_msgSendSuper2(&v19, sel_initWithCoder_, a1);
    if (v17)
    {
      v18 = v17;
      sub_265FA4A94();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_265FA64A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtImageView);
  v2 = [v1 layer];
  v3 = [objc_opt_self() blackColor];
  v4 = [v3 CGColor];

  [v2 setBackgroundColor_];
  v5 = [v1 layer];
  [v5 setOpacity_];

  [v1 transform];
  CGAffineTransformScale(&v19, &aBlock, 0.9, 0.9);
  aBlock = v19;
  [v1 setTransform_];
  v6 = sub_265FA4708(&OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView____lazy_storage___albumArtImageViewCenterYConstraint, &OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtImageView);
  [v6 setConstant_];

  v18 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:120.0 damping:16.0 initialVelocity:{0.0, 0.0}];
  v7 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v18 timingParameters:0.0];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&aBlock.tx = sub_265FA7768;
  *&aBlock.ty = v8;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_265FA6D94;
  *&aBlock.d = &block_descriptor_27;
  v9 = _Block_copy(&aBlock);

  [v7 addAnimations_];
  _Block_release(v9);
  v10 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:120.0 damping:20.0 initialVelocity:{0.0, 0.0}];
  v11 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v10 timingParameters:0.0];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&aBlock.tx = sub_265FA7770;
  *&aBlock.ty = v12;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_265FA6D94;
  *&aBlock.d = &block_descriptor_31;
  v13 = _Block_copy(&aBlock);

  [v11 addAnimations_];
  _Block_release(v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = objc_allocWithZone(MEMORY[0x277D75D40]);
  *&aBlock.tx = sub_265FA7794;
  *&aBlock.ty = v14;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_265FA6D94;
  *&aBlock.d = &block_descriptor_35;
  v16 = _Block_copy(&aBlock);

  v17 = [v15 initWithDuration:3 curve:v16 animations:0.84];
  _Block_release(v16);

  [v7 startAnimation];
  [v11 startAnimationAfterDelay_];
  [v17 startAnimation];
}

void sub_265FA692C()
{
  v1 = *&v0[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_titleLabel];
  [v1 transform];
  CGAffineTransformTranslate(&v15, &aBlock, 0.0, 70.0);
  aBlock = v15;
  [v1 setTransform_];
  v2 = *&v0[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_artistLabel];
  [v2 transform];
  CGAffineTransformTranslate(&v15, &aBlock, 0.0, 80.0);
  aBlock = v15;
  [v2 setTransform_];
  v14 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:120.0 damping:20.0 initialVelocity:{0.0, 0.0}];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v14 timingParameters:0.0];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&aBlock.tx = sub_265FA7678;
  *&aBlock.ty = v4;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_265FA6D94;
  *&aBlock.d = &block_descriptor_4;
  v5 = _Block_copy(&aBlock);

  [v3 addAnimations_];
  _Block_release(v5);
  v6 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:200.0 damping:27.0 initialVelocity:{0.0, 0.0}];
  v7 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v6 timingParameters:0.0];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&aBlock.tx = sub_265FA76B4;
  *&aBlock.ty = v8;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_265FA6D94;
  *&aBlock.d = &block_descriptor_5;
  v9 = _Block_copy(&aBlock);

  [v7 addAnimations_];
  _Block_release(v9);
  [v3 startAnimationAfterDelay_];
  [v7 startAnimationAfterDelay_];
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  *&aBlock.tx = sub_265FA7710;
  *&aBlock.ty = v11;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_265FA6D94;
  *&aBlock.d = &block_descriptor_11;
  v12 = _Block_copy(&aBlock);
  v13 = v0;

  [v10 animateKeyframesWithDuration:0 delay:v12 options:0 animations:1.25 completion:0.25];

  _Block_release(v12);
}

void sub_265FA6D38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong layoutIfNeeded];
  }
}

uint64_t sub_265FA6D94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_265FA6DD8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtImageView);

    v3 = [v2 layer];
    LODWORD(v4) = 1.0;
    [v3 setOpacity_];
  }
}

void sub_265FA6E74(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + *a2);

    v6[0] = 0x3FF0000000000000;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = 0x3FF0000000000000;
    v6[4] = 0;
    v6[5] = 0;
    [v5 setTransform_];
  }
}

void sub_265FA6F00()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = sub_265FA7718;
  v12 = v1;
  v7 = MEMORY[0x277D85DD0];
  v8 = 1107296256;
  v9 = sub_265FA6D94;
  v10 = &block_descriptor_15;
  v2 = _Block_copy(&v7);

  [v0 addKeyframeWithRelativeStartTime:v2 relativeDuration:0.0 animations:1.0];
  _Block_release(v2);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = sub_265FA773C;
  v12 = v3;
  v7 = MEMORY[0x277D85DD0];
  v8 = 1107296256;
  v9 = sub_265FA6D94;
  v10 = &block_descriptor_19;
  v4 = _Block_copy(&v7);

  [v0 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.05 animations:0.9];
  _Block_release(v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = sub_265FA7760;
  v12 = v5;
  v7 = MEMORY[0x277D85DD0];
  v8 = 1107296256;
  v9 = sub_265FA6D94;
  v10 = &block_descriptor_23;
  v6 = _Block_copy(&v7);

  [v0 addKeyframeWithRelativeStartTime:v6 relativeDuration:0.2 animations:0.8];
  _Block_release(v6);
}

void sub_265FA7158(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + *a2);

    [v5 setAlpha_];
  }
}

void sub_265FA71D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamCountStackView);

    [v2 setAlpha_];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_appleMusicButton);

    [v5 setAlpha_];
  }
}

id sub_265FA72A8()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
  qword_280052358 = result;
  return result;
}

id sub_265FA72F4()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.447058824 green:0.447058824 blue:0.447058824 alpha:0.6];
  qword_280052360 = result;
  return result;
}

void sub_265FA7344()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent_];

  qword_280052368 = v1;
}

id sub_265FA73B4()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0980392157 green:0.0980392157 blue:0.0980392157 alpha:1.0];
  qword_280052370 = result;
  return result;
}

__n128 sub_265FA73FC()
{
  __asm { FMOV            V0.2D, #24.0 }

  xmmword_280052378 = result;
  return result;
}

void *sub_265FA745C(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + qword_280054660);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v12 - v7);
  v8 = sub_265FAAC58();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_265FA7594(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_265FA7640()
{
  MEMORY[0x266775400](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265FA76D8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265FA779C(uint64_t a1)
{
  v2 = *(*(*((*MEMORY[0x277D85000] & *v1) + qword_280054660) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - v3);
  return sub_265FAAC68();
}

uint64_t sub_265FA790C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB0, &unk_265FAE990);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_265FA7998(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB0, &unk_265FAE990);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AlbumArt()
{
  result = qword_280052488;
  if (!qword_280052488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_265FA7A60()
{
  sub_265F94FF8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_265FA7AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a1;
  v52 = a2;
  v57 = a3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800524E0, &qword_265FAF218);
  v3 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v49 = &v48 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800524F8, &qword_265FAF228);
  v5 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v54 = &v48 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052500, &qword_265FAF230);
  v7 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v9 = &v48 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800524B0, &qword_265FAF200);
  v10 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v12 = &v48 - v11;
  v13 = sub_265FAAFA8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800524C0, &qword_265FAF208);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v48 - v20;
  v22 = sub_265FAAAC8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = (&v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v26, v51, v22);
  v27 = (*(v23 + 88))(v26, v22);
  if (v27 == *MEMORY[0x277CDD9C8])
  {
    (*(v23 + 96))(v26, v22);
    v28 = *v26;
    (*(v14 + 104))(v17, *MEMORY[0x277CE0FE0], v13);
    v29 = sub_265FAAFE8();
    (*(v14 + 8))(v17, v13);
    v30 = *(v52 + *(type metadata accessor for AlbumArt() + 20));
    v31 = &v21[*(v18 + 36)];
    v32 = *(sub_265FAAAE8() + 20);
    v33 = *MEMORY[0x277CE0118];
    v34 = sub_265FAAC28();
    (*(*(v34 - 8) + 104))(&v31[v32], v33, v34);
    *v31 = v30;
    *(v31 + 1) = v30;
    *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800520E8, &qword_265FAE7C0) + 36)] = 256;
    *v21 = v29;
    *(v21 + 1) = 0;
    *(v21 + 8) = 1;
    sub_265F8A480(v21, v9, &qword_2800524C0, &qword_265FAF208);
    swift_storeEnumTagMultiPayload();
    sub_265FA8738();
    sub_265FA8810();
    sub_265FAAD38();
    sub_265F8A480(v12, v54, &qword_2800524B0, &qword_265FAF200);
    swift_storeEnumTagMultiPayload();
    sub_265FA86AC();
    sub_265FAAD38();

    sub_265F8A4E8(v12, &qword_2800524B0, &qword_265FAF200);
    v35 = v21;
    v36 = &qword_2800524C0;
    v37 = &qword_265FAF208;
    return sub_265F8A4E8(v35, v36, v37);
  }

  v38 = v52;
  v39 = v53;
  v51 = v18;
  if (v27 == *MEMORY[0x277CDD9C0])
  {
    (*(v23 + 8))(v26, v22);
LABEL_6:
    if (qword_2800519E0 != -1)
    {
      swift_once();
    }

    v40 = qword_280054618;
    v41 = *(v38 + *(type metadata accessor for AlbumArt() + 20));
    v42 = v49;
    v43 = &v49[*(v39 + 36)];
    v44 = *(sub_265FAAAE8() + 20);
    v45 = *MEMORY[0x277CE0118];
    v46 = sub_265FAAC28();
    (*(*(v46 - 8) + 104))(&v43[v44], v45, v46);
    *v43 = v41;
    *(v43 + 1) = v41;
    *&v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800520E8, &qword_265FAE7C0) + 36)] = 256;
    *v42 = v40;
    *(v42 + 8) = 0;
    *(v42 + 16) = 1;
    sub_265F8A480(v42, v9, &qword_2800524E0, &qword_265FAF218);
    swift_storeEnumTagMultiPayload();
    sub_265FA8738();
    sub_265FA8810();

    sub_265FAAD38();
    sub_265F8A480(v12, v54, &qword_2800524B0, &qword_265FAF200);
    swift_storeEnumTagMultiPayload();
    sub_265FA86AC();
    sub_265FAAD38();
    sub_265F8A4E8(v12, &qword_2800524B0, &qword_265FAF200);
    v35 = v42;
    v36 = &qword_2800524E0;
    v37 = &qword_265FAF218;
    return sub_265F8A4E8(v35, v36, v37);
  }

  if (v27 == *MEMORY[0x277CDD9B8])
  {
    goto LABEL_6;
  }

  swift_storeEnumTagMultiPayload();
  sub_265FA86AC();
  sub_265FAAD38();
  return (*(v23 + 8))(v26, v22);
}

uint64_t sub_265FA8298(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB0, &unk_265FAE990);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_265F8A480(v1, &v10 - v6, &qword_280051CB0, &unk_265FAE990);
  sub_265FA8430(v1, &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  sub_265F96630(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052498, &qword_265FAF1F8);
  sub_265FA8620();
  return sub_265FAA948();
}

uint64_t sub_265FA8430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlbumArt();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265FA8494()
{
  v1 = *(type metadata accessor for AlbumArt() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_265FAA7D8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_265FA85A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AlbumArt() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_265FA7AF0(a1, v6, a2);
}

unint64_t sub_265FA8620()
{
  result = qword_2800524A0;
  if (!qword_2800524A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052498, &qword_265FAF1F8);
    sub_265FA86AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800524A0);
  }

  return result;
}

unint64_t sub_265FA86AC()
{
  result = qword_2800524A8;
  if (!qword_2800524A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800524B0, &qword_265FAF200);
    sub_265FA8738();
    sub_265FA8810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800524A8);
  }

  return result;
}

unint64_t sub_265FA8738()
{
  result = qword_2800524B8;
  if (!qword_2800524B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800524C0, &qword_265FAF208);
    sub_265FA88E8(&qword_2800524C8, &qword_2800524D0, &qword_265FAF210);
    sub_265F92604(&qword_280052178, &qword_2800520E8, &qword_265FAE7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800524B8);
  }

  return result;
}

unint64_t sub_265FA8810()
{
  result = qword_2800524D8;
  if (!qword_2800524D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800524E0, &qword_265FAF218);
    sub_265FA88E8(&qword_2800524E8, &qword_2800524F0, &qword_265FAF220);
    sub_265F92604(&qword_280052178, &qword_2800520E8, &qword_265FAE7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800524D8);
  }

  return result;
}

uint64_t sub_265FA88E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_265FA89C8@<X0>(_OWORD *a1@<X8>)
{
  v49 = a1;
  v1 = sub_265FAAFA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280051A08 != -1)
  {
    swift_once();
  }

  (*(v2 + 104))(v5, *MEMORY[0x277CE0FE0], v1);
  v48 = sub_265FAAFE8();
  (*(v2 + 8))(v5, v1);
  sub_265FAB0A8();
  sub_265FAAA08();
  v52 = v63;
  v53 = v65;
  v50 = v64;
  v51 = v66;
  v47 = v67;
  v54 = v68;
  LOBYTE(v89[0]) = v64;
  LOBYTE(v69) = v66;
  LOBYTE(v80[0]) = 1;
  sub_265FAABF8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = sub_265FAAE78();
  v10 = v9;
  v12 = v11;
  sub_265FAADB8();
  v13 = sub_265FAAE48();
  v15 = v14;
  v17 = v16;

  sub_265F8D998(v8, v10, v12 & 1);

  sub_265FAADC8();
  v18 = sub_265FAAE18();
  v20 = v19;
  v22 = v21;
  sub_265F8D998(v13, v15, v17 & 1);

  LODWORD(v89[0]) = sub_265FAAD48();
  v23 = sub_265FAAE38();
  v25 = v24;
  LOBYTE(ObjCClassFromMetadata) = v26;
  sub_265F8D998(v18, v20, v22 & 1);

  sub_265FAAF78();
  v27 = sub_265FAAE28();
  v29 = v28;
  LOBYTE(v15) = v30;
  v32 = v31;

  sub_265F8D998(v23, v25, ObjCClassFromMetadata & 1);

  KeyPath = swift_getKeyPath();
  v34 = swift_getKeyPath();
  v35 = v15 & 1;
  LOBYTE(v89[0]) = v15 & 1;
  v37 = v47;
  v36 = v48;
  *&v69 = v48;
  *(&v69 + 1) = v52;
  LOBYTE(v70) = v50;
  *(&v70 + 1) = *v62;
  DWORD1(v70) = *&v62[3];
  *(&v70 + 1) = v53;
  LOBYTE(v71) = v51;
  DWORD1(v71) = *&v61[3];
  *(&v71 + 1) = *v61;
  *(&v71 + 1) = v47;
  v72 = v54;
  v73 = 0;
  v74 = 1;
  LOWORD(v59[0]) = 1;
  v57 = v71;
  v58 = v54;
  v55 = v69;
  v56 = v70;
  *&v75 = v27;
  *(&v75 + 1) = v29;
  LOBYTE(v76) = v35;
  DWORD1(v76) = *&v60[3];
  *(&v76 + 1) = *v60;
  *(&v76 + 1) = v32;
  *&v77 = KeyPath;
  *(&v77 + 1) = 0x3FE0000000000000;
  *&v78 = v34;
  *(&v78 + 1) = 2;
  v79 = 0;
  *(v59 + 8) = v75;
  BYTE8(v59[4]) = 0;
  *(&v59[3] + 8) = v78;
  *(&v59[2] + 8) = v77;
  *(&v59[1] + 8) = v76;
  v38 = v69;
  v39 = v70;
  v40 = v54;
  v41 = v49;
  v49[2] = v71;
  v41[3] = v40;
  *v41 = v38;
  v41[1] = v39;
  v42 = v59[0];
  v43 = v59[1];
  *(v41 + 121) = *(&v59[3] + 9);
  v44 = v59[3];
  v41[6] = v59[2];
  v41[7] = v44;
  v41[4] = v42;
  v41[5] = v43;
  v80[0] = v27;
  v80[1] = v29;
  v81 = v35;
  *v82 = *v60;
  *&v82[3] = *&v60[3];
  v83 = v32;
  v84 = KeyPath;
  v85 = 0x3FE0000000000000;
  v86 = v34;
  v87 = 2;
  v88 = 0;
  sub_265F8A480(&v69, v89, &qword_280052520, &qword_265FAF318);
  sub_265F8A480(&v75, v89, &qword_280052528, &qword_265FAF320);
  sub_265F8A4E8(v80, &qword_280052528, &qword_265FAF320);
  v89[0] = v36;
  v89[1] = v52;
  v90 = v50;
  *v91 = *v62;
  *&v91[3] = *&v62[3];
  v92 = v53;
  v93 = v51;
  *v94 = *v61;
  *&v94[3] = *&v61[3];
  v95 = v37;
  v96 = v54;
  v97 = 0;
  v98 = 1;
  return sub_265F8A4E8(v89, &qword_280052520, &qword_265FAF318);
}

double sub_265FA8F5C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_265FAABA8();
  v19 = 1;
  sub_265FA89C8(&v10);
  v25 = v15;
  v26 = v16;
  v27[0] = v17[0];
  *(v27 + 9) = *(v17 + 9);
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v20 = v10;
  v21 = v11;
  v28[5] = v15;
  v28[6] = v16;
  v29[0] = v17[0];
  *(v29 + 9) = *(v17 + 9);
  v28[2] = v12;
  v28[3] = v13;
  v28[4] = v14;
  v28[0] = v10;
  v28[1] = v11;
  sub_265F8A480(&v20, &v9, &qword_280052518, &qword_265FAF2B0);
  sub_265F8A4E8(v28, &qword_280052518, &qword_265FAF2B0);
  *(&v18[6] + 7) = v26;
  *(&v18[5] + 7) = v25;
  *(&v18[2] + 7) = v22;
  *(&v18[1] + 7) = v21;
  *(&v18[7] + 7) = v27[0];
  v18[8] = *(v27 + 9);
  *(&v18[3] + 7) = v23;
  *(&v18[4] + 7) = v24;
  *(v18 + 7) = v20;
  v3 = v18[4];
  *(a1 + 97) = v18[5];
  v4 = v18[7];
  *(a1 + 113) = v18[6];
  *(a1 + 129) = v4;
  *(a1 + 145) = v18[8];
  v5 = v18[0];
  *(a1 + 33) = v18[1];
  result = *&v18[2];
  v7 = v18[3];
  *(a1 + 49) = v18[2];
  *(a1 + 65) = v7;
  *(a1 + 81) = v3;
  v8 = v19;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 17) = v5;
  return result;
}

uint64_t sub_265FA9130@<X0>(void *a1@<X8>)
{
  result = sub_265FAAB28();
  *a1 = v3;
  return result;
}

unint64_t sub_265FA9190()
{
  result = qword_280052530;
  if (!qword_280052530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052538, &qword_265FAF328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052530);
  }

  return result;
}

uint64_t sub_265FA91F4()
{
  v0 = sub_265FAA8B8();
  __swift_allocate_value_buffer(v0, qword_280054670);
  __swift_project_value_buffer(v0, qword_280054670);
  return sub_265FAA8A8();
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

uint64_t sub_265FA92C8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051C68, &qword_265FAD8C0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_265FA9390()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[3] = sub_265FA94B0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052300, &qword_265FAEDA8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_265FA92C8;
  v0[13] = &block_descriptor_5;
  v0[14] = v2;
  [v1 _presentMediaLibraryWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_265FA94B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 144) = v2;
  if (v2)
  {
    v3 = sub_265FA95D8;
  }

  else
  {
    v3 = sub_265FA95C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_265FA95D8()
{
  v1 = *(v0 + 144);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 144);

  return v2();
}

uint64_t sub_265FA9688@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052580, &qword_265FAF418);
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v37);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052588, &qword_265FAF420);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  sub_265FAA9C8();
  sub_265FA9E04();
  sub_265FAAEF8();
  if (a1 >> 62)
  {
    v35 = sub_265FAB3D8();
  }

  else
  {
    v35 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052598, &qword_265FAF428);
  sub_265FAA7F8();
  sub_265F92604(&qword_2800525A0, &qword_280052598, &qword_265FAF428);
  sub_265FA9E58();
  sub_265FA9EAC();
  sub_265FAB058();
  v32 = *(v10 + 16);
  v17 = v14;
  v34 = v16;
  v18 = v9;
  v32(v14, v16, v9);
  v19 = v3;
  v33 = *(v3 + 16);
  v20 = v36;
  v21 = v37;
  v33(v36, v8, v37);
  v22 = v18;
  v23 = v10;
  v24 = v8;
  v25 = v20;
  v26 = v38;
  v27 = v22;
  (v32)(v38, v17);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800525C0, &unk_265FAF430);
  *(v26 + *(v28 + 48)) = v35;
  v33((v26 + *(v28 + 64)), v25, v21);
  v29 = *(v19 + 8);
  v29(v24, v21);
  v30 = *(v23 + 8);
  v30(v34, v27);
  v29(v25, v21);
  return (v30)(v17, v27);
}

id sub_265FA9A58@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_265FA9A64()
{
  v1 = sub_265FAAA98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052540, &qword_265FAF3C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-v8];
  v14 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052548, &qword_265FAF3D0);
  sub_265F92604(&qword_280052550, &qword_280052548, &qword_265FAF3D0);
  sub_265FAAE08();
  KeyPath = swift_getKeyPath();
  v11 = &v9[*(v6 + 36)];
  *v11 = KeyPath;
  v11[1] = 0x4034000000000000;
  sub_265FAAA88();
  sub_265FA9CB8();
  sub_265FAAF38();
  (*(v2 + 8))(v5, v1);
  return sub_265FA9D9C(v9);
}

uint64_t sub_265FA9C64@<X0>(void *a1@<X8>)
{
  result = sub_265FAAB48();
  *a1 = v3;
  return result;
}

unint64_t sub_265FA9CB8()
{
  result = qword_280052558;
  if (!qword_280052558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052540, &qword_265FAF3C8);
    sub_265F92604(&qword_280052560, &qword_280052568, &qword_265FAF408);
    sub_265F92604(&qword_280052570, &qword_280052578, &qword_265FAF410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052558);
  }

  return result;
}

uint64_t sub_265FA9D9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052540, &qword_265FAF3C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_265FA9E04()
{
  result = qword_280052590;
  if (!qword_280052590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052590);
  }

  return result;
}

unint64_t sub_265FA9E58()
{
  result = qword_2800525A8;
  if (!qword_2800525A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800525A8);
  }

  return result;
}

unint64_t sub_265FA9EAC()
{
  result = qword_2800525B0;
  if (!qword_2800525B0)
  {
    sub_265FA9F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800525B0);
  }

  return result;
}

unint64_t sub_265FA9F04()
{
  result = qword_2800525B8;
  if (!qword_2800525B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800525B8);
  }

  return result;
}

uint64_t sub_265FA9F50()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052540, &qword_265FAF3C8);
  sub_265FAAA98();
  sub_265FA9CB8();
  return swift_getOpaqueTypeConformance2();
}

id sub_265FAA000()
{
  type metadata accessor for AmbientNoMatchUIView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_265FAA03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265FAA130();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_265FAA0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265FAA130();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_265FAA104()
{
  sub_265FAA130();
  sub_265FAAD08();
  __break(1u);
}

unint64_t sub_265FAA130()
{
  result = qword_2800525C8;
  if (!qword_2800525C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800525C8);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_2800545F8 == -1)
  {
    if (qword_280054600)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_280054600)
    {
      goto LABEL_3;
    }
  }

  if (qword_2800545F0 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_2800545E4 > a3)
      {
        goto LABEL_11;
      }

      if (dword_2800545E4 >= a3)
      {
        result = dword_2800545E8 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_280054600;
  if (qword_280054600)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_280054600 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x266774DA0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_2800545E4, &dword_2800545E8);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x282110B10](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}