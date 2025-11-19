id sub_1A4412CB4()
{
  sub_1A441326C(0, &qword_1EB126008, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v42 - v2;
  v5 = *v0;
  v4 = v0[1];
  v55 = *v0;
  v56 = v4;
  v6 = v0[3];
  v50 = v0;
  if (!v6)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v7 = v0[2];
  v53 = v5;
  v54 = v4;
  v49 = v7;
  v51 = v7;
  v52 = v6;
  v8 = sub_1A5241284();
  v48 = *(*(v8 - 8) + 56);
  v48(v3, 1, 1, v8);
  sub_1A3D5F9DC();
  swift_bridgeObjectRetain_n();
  sub_1A524E014();
  v10 = v9;
  sub_1A3FD7708(v3);

  if ((v10 & 1) == 0)
  {
    v53 = 10;
    v54 = 0xE100000000000000;
    sub_1A44134FC();
    sub_1A524C804();
    v53 = v55;
    v54 = v56;
    v51 = v49;
    v52 = v6;
    v48(v3, 1, 1, v8);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v46 = 0;
  v47 = 0;
  v11 = v50;
  v49 = 1;
  v12 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v13 = sub_1A524C634();

  v14 = [v12 initWithString_];

  v15 = v14;
  v48 = [v15 length];
  sub_1A441326C(0, &qword_1EB120260, sub_1A3C8BC40, MEMORY[0x1E69E6F90]);
  v45 = v16;
  inited = swift_initStackObject();
  v18 = MEMORY[0x1E69DB648];
  v44 = xmmword_1A52FC9F0;
  *(inited + 16) = xmmword_1A52FC9F0;
  v19 = *v18;
  *(inited + 32) = *v18;
  v20 = v11[4];
  v21 = sub_1A3C52C70(0, &qword_1EB120610);
  *(inited + 40) = v20;
  v22 = *MEMORY[0x1E69DB650];
  v43 = v21;
  *(inited + 64) = v21;
  *(inited + 72) = v22;
  v23 = v11[6];
  v24 = sub_1A3C52C70(0, &qword_1EB1205C0);
  *(inited + 104) = v24;
  *(inited + 80) = v23;
  v25 = v19;
  v26 = v20;
  v27 = v22;
  v28 = v23;
  sub_1A3C8BCC0(inited);
  swift_setDeallocating();
  sub_1A3C8BC40();
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_1A3C8C1E0(&unk_1EB1208B0, type metadata accessor for Key);
  v29 = sub_1A524C3D4();

  [v15 addAttributes:v29 range:{0, v48}];

  if ((v49 & 1) == 0)
  {
    v30 = swift_initStackObject();
    *(v30 + 16) = v44;
    *(v30 + 32) = v25;
    v31 = v50;
    v32 = v24;
    v33 = v50[5];
    *(v30 + 40) = v33;
    *(v30 + 64) = v43;
    *(v30 + 72) = v27;
    v34 = v25;
    v35 = v31[7];
    *(v30 + 104) = v32;
    *(v30 + 80) = v35;
    v36 = v34;
    v37 = v27;
    v38 = v33;
    v39 = v35;
    sub_1A3C8BCC0(v30);
    swift_setDeallocating();
    swift_arrayDestroy();
    v40 = sub_1A524C3D4();

    [v15 addAttributes:v40 range:{v47, v46}];
  }

  return v15;
}

void sub_1A441326C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A44132D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  if (a6)
  {
    v16 = a6;
  }

  else
  {
    v22 = a8;
    v17 = a5;
    v18 = [v17 fontDescriptor];
    v19 = [v18 fontDescriptorWithSymbolicTraits_];

    if (!v19)
    {
      v19 = [v17 fontDescriptor];
    }

    [v17 pointSize];
    v21 = v20;

    v16 = [objc_opt_self() fontWithDescriptor:v19 size:v21];
    a8 = v22;
  }

  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = v16;
  a9[6] = a7;
  a9[7] = a8;
}

uint64_t sub_1A441340C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A44135C8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A4413470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A44135C8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A44134D4()
{
  sub_1A44135C8();
  sub_1A52496F4();
  __break(1u);
}

unint64_t sub_1A44134FC()
{
  result = qword_1EB13A330;
  if (!qword_1EB13A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A330);
  }

  return result;
}

unint64_t sub_1A4413554()
{
  result = qword_1EB13A338;
  if (!qword_1EB13A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A338);
  }

  return result;
}

unint64_t sub_1A44135C8()
{
  result = qword_1EB13A340;
  if (!qword_1EB13A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A340);
  }

  return result;
}

void sub_1A44138AC()
{

  sub_1A5245EC4();
}

void sub_1A4413958(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 16);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1A59097F0]();
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v5 = *(v4 + 8 * a1 + 32);
LABEL_5:

  sub_1A3EE5800(v5, a2);
}

uint64_t type metadata accessor for SharedAlbumsActivityItemList()
{
  result = qword_1EB17E890;
  if (!qword_1EB17E890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4413B38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LemonadeShelvesViewModelDisplayState.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A4413D70(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 1120))();

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1A4413E18()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v2 + 16), v1);
  return swift_endAccess();
}

void (*sub_1A4413E78(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  (*(*v1 + 1112))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore24LemonadeShelvesViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C5C69C(&qword_1EB129EF8, type metadata accessor for LemonadeShelvesViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030();
  return sub_1A4413FC8;
}

uint64_t sub_1A4413FD4()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A4414040@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1112))();

  *a2 = *(v3 + 56);

  return swift_unknownObjectRetain();
}

uint64_t sub_1A44140EC()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();
}

uint64_t sub_1A4414160@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1112))();

  *a2 = v3[9];
}

uint64_t sub_1A4414208()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A4414274@<X0>(_OWORD **a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1112))();

  *a2 = v3[5];

  return swift_unknownObjectRetain();
}

uint64_t sub_1A4414320(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *a2;
  KeyPath = swift_getKeyPath();
  v12[2] = v9;
  v12[3] = v7;
  v12[4] = v8;
  (*(*v9 + 1120))(KeyPath, a6, v12, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1A44143CC(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (v2 == v1[112])
  {
    v1[112] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 1120))(v5);
  }

  return result;
}

uint64_t sub_1A44144C8(uint64_t result)
{
  if (v1[153] == (result & 1))
  {
    v1[153] = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1120))(v3);
  }

  return result;
}

uint64_t sub_1A44145B0(uint64_t result)
{
  if (v1[168] == (result & 1))
  {
    v1[168] = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1120))(v3);
  }

  return result;
}

uint64_t sub_1A4414698(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[96] == v2)
  {
    v1[96] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 1120))(v5);
  }

  return result;
}

uint64_t sub_1A4414794(char *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  (*(*v1 + 1112))();

  (*(*v1 + 256))(v8, v3);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v7 = v2;
  LOBYTE(v4) = (*(v5 + 48))(&v7, v4, v5);
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v4 & 1;
}

uint64_t sub_1A441488C@<X0>(_BYTE **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1112))();

  *a2 = v3[168];
  return result;
}

uint64_t sub_1A441497C()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();

  swift_beginAccess();
  return v0[96];
}

uint64_t sub_1A44149FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 472))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A4414AA4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  (*(*v1 + 1112))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore24LemonadeShelvesViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C5C69C(&qword_1EB129EF8, type metadata accessor for LemonadeShelvesViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A441492C();
  return sub_1A4414BF4;
}

char *sub_1A4414CD0()
{
  v1 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (*(*v0 + 560))(v3);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1A3C531C8(v8, v5);
      if (sub_1A4870D30())
      {
        sub_1A3C5322C();
        v11 = v15[15];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1A4418FCC(0, *(v10 + 2) + 1, 1, v10, &qword_1EB126260);
        }

        v13 = *(v10 + 2);
        v12 = *(v10 + 3);
        if (v13 >= v12 >> 1)
        {
          v10 = sub_1A4418FCC((v12 > 1), v13 + 1, 1, v10, &qword_1EB126260);
        }

        sub_1A3C53E7C(v5);
        *(v10 + 2) = v13 + 1;
        v10[v13 + 32] = v11;
      }

      else
      {
        sub_1A3C53E7C(v5);
      }

      v8 += v9;
      --v7;
    }

    while (v7);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v10;
}

uint64_t sub_1A4415020(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = (*v1 + 1104);
  v5 = *v4;
  v6 = (*v4)();
  (*(*v1 + 256))(v26);
  v7 = v27;
  v8 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v25 = v3;
  v9 = (*(v8 + 48))(&v25, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(v26);
  if (v9)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  KeyPath = swift_getKeyPath();
  v22[2] = v2;
  v23 = v3;
  (*(*v2 + 1120))(KeyPath, sub_1A44195D0, v22, MEMORY[0x1E69E7CA8] + 8);

  LOBYTE(v26[0]) = v3;
  sub_1A3DD1890(v24);
  v12 = v5();
  type metadata accessor for LemonadeAnalyticsCustomization();
  v13 = sub_1A47E502C();
  LOBYTE(v26[0]) = v10;
  LemonadeCustomizationAction.rawValue.getter();
  v14 = sub_1A524CFC4();
  LemonadeCustomizationAnalyticsName.rawValue.getter(v14);
  v15 = sub_1A524CFC4();
  v25 = 0;
  LemonadeCustomizationContentType.rawValue.getter(v15);
  v16 = sub_1A524CFC4();
  v17 = sub_1A3C5A374();
  (*(*v13 + 136))(v14, v17 & 1, v15, v16, v6, v12);

  v18 = objc_opt_self();
  v19 = sub_1A524C634();
  sub_1A3E75770(MEMORY[0x1E69E7CC0]);
  sub_1A3C7B6A4();
  v20 = sub_1A524C3D4();

  [v18 sendEvent:v19 withPayload:v20];

  return sub_1A3C5FECC();
}

void sub_1A4415324()
{
  (*(*v0 + 1104))();
  KeyPath = swift_getKeyPath();
  (*(*v0 + 1120))(KeyPath, sub_1A4419688, v0, MEMORY[0x1E69E7CA8] + 8);

  sub_1A3C5E1B8();
}

void sub_1A44154E8(void *a1)
{
  *a1 = *(v1 + 104);
  a1[1] = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4415534(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 104) = *a1;
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C5F7FC(v3);
}

uint64_t sub_1A44155A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 560))();
  *a2 = result;
  return result;
}

void sub_1A4415650(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  (*(*v1 + 1112))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore24LemonadeShelvesViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C5C69C(&qword_1EB129EF8, type metadata accessor for LemonadeShelvesViewModel);
  sub_1A52415F4();

  sub_1A44154E8(v4);
}

uint64_t sub_1A44157AC()
{
  v1 = *(v0 + 176);
  if (v1)
  {
    return (*(*v1 + 256))();
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1A4415808()
{
  v1 = *(v0 + 176);
  if (v1)
  {
    (*(*v1 + 304))(&v4);
    if (v5 == 255)
    {
      v2 = 0;
    }

    else
    {
      sub_1A4419724();
      sub_1A3C5C69C(&qword_1EB12A1D0, sub_1A4419724);
      v2 = sub_1A524C594();
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_1A44158F4()
{
  v1 = *(v0 + 176);
  if (v1)
  {
    return (*(*v1 + 336))() & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1A44159A0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 1112))();

  result = swift_beginAccess();
  *a1 = v1[112];
  return result;
}

void *sub_1A4415A30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 632))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A4415A94(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 640))(&v4);
}

void (*sub_1A4415AF4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  (*(*v1 + 1112))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore24LemonadeShelvesViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C5C69C(&qword_1EB129EF8, type metadata accessor for LemonadeShelvesViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4415950();
  return sub_1A4415C44;
}

uint64_t sub_1A4415C50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 680))();
  *a2 = result;
  return result;
}

void (*sub_1A4415D00(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  (*(*v1 + 1112))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore24LemonadeShelvesViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C5C69C(&qword_1EB129EF8, type metadata accessor for LemonadeShelvesViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3F28EBC();
  return sub_1A4415E50;
}

uint64_t sub_1A4415E5C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*v1 + 560))(v6);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    v27 = v9;
    v28 = v12;
    while (1)
    {
      sub_1A3C531C8(v11, v8);
      if (sub_1A4870D30())
      {
        v13 = sub_1A3C5322C();
        v14 = v30[0];
        v15 = (*(*v2 + 680))(v13);
        if (*(v15 + 16))
        {
          v16 = sub_1A3C6246C(v14);
          if (v17)
          {
            v18 = *(*(v15 + 56) + 8 * v16);

            if (((*(*v18 + 136))(v19) ^ a1))
            {
              v20 = (*(*v18 + 144))(a1 & 1);
              (*(*v2 + 256))(v30, v20);
              v21 = a1;
              v22 = v31;
              v23 = v32;
              __swift_project_boxed_opaque_existential_1(v30, v31);
              v29 = v14;
              v24 = v21 & 1;
              v25 = v22;
              a1 = v21;
              v12 = v28;
              (*(v23 + 104))(&v29, v24, v25, v23);

              sub_1A3C53E7C(v8);
              __swift_destroy_boxed_opaque_existential_0(v30);
            }

            else
            {
              sub_1A3C53E7C(v8);
            }

            goto LABEL_5;
          }
        }
      }

      sub_1A3C53E7C(v8);
LABEL_5:
      v11 += v12;
      if (!--v10)
      {
      }
    }
  }
}

uint64_t sub_1A4416164()
{
  sub_1A42F8230();
  sub_1A42F8448();
  if (sub_1A524E114())
  {
    sub_1A3C5E1B8();
  }

  sub_1A42F823C();
  result = sub_1A524E114();
  if (result)
  {
    return sub_1A3C5FECC();
  }

  return result;
}

uint64_t sub_1A4416200()
{
  (*(*v0 + 256))(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 80))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_1A441629C(char *a1)
{
  v2 = *a1;
  v3 = (*(*v1 + 272))(v9);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  v8 = v2;
  (*(v6 + 88))(&v8, v5, v6);
  return v3(v9, 0);
}

void (*sub_1A4416358(uint64_t *a1))(void *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  (*(*v1 + 256))();
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 80))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0(v4);
  return sub_1A441643C;
}

void sub_1A441643C(void *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 48);
  v5 = (*(**(*a1 + 40) + 272))(*a1);
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  if (a2)
  {
    v9 = v4;
    (*(v8 + 88))(&v9, v7, v8);
  }

  else
  {
    v10 = v4;
    (*(v8 + 88))(&v10, v7, v8);
  }

  v5(v3, 0);

  free(v3);
}

uint64_t sub_1A4416534()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();

  if ((*(v0 + 153) & 1) == 0)
  {
    v2 = *(v0 + 176);
    if (v2)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v11[2] = v0;
      v12 = 1;
      v4 = *(*v0 + 1120);

      v4(KeyPath, sub_1A44197B8, v11, MEMORY[0x1E69E7CA8] + 8);

      (*(*v2 + 304))(&aBlock, v5);
      v21 = aBlock;
      v22 = v14;
      v19 = 1;
      v20 = 3;
      sub_1A4419724();
      sub_1A3C5C69C(&qword_1EB12A1D0, sub_1A4419724);
      if ((sub_1A524C594() & 1) == 0)
      {
        v6 = [objc_opt_self() sharedScheduler];
        v7 = sub_1A524C634();
        v8 = [v6 startTrackedAnimationWithLabel_];

        aBlock = 1;
        LOBYTE(v14) = 3;
        (*(*v2 + 312))(&aBlock);
        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        v17 = sub_1A44197C8;
        v18 = v9;
        aBlock = MEMORY[0x1E69E9820];
        v14 = 1107296256;
        v15 = sub_1A3C2E0D0;
        v16 = &block_descriptor_181;
        _Block_copy(&aBlock);
        v10 = v8;

        px_perform_on_main_runloop();
      }
    }
  }

  return result;
}

uint64_t sub_1A44168A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5242394();
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 176);
  if (v8)
  {
    v9 = *(*v8 + 328);
    v14 = v4;
    v9(v5);
    return (*(v14 + 32))(a1, v7, v3);
  }

  else
  {
    v11 = *MEMORY[0x1E69C1DC8];
    v12 = *(v4 + 104);

    return v12(a1, v11, v3, v5);
  }
}

uint64_t sub_1A44169EC@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 152))
  {
    v3 = sub_1A5242394();
    v4 = *(*(v3 - 8) + 56);
    v5 = v3;
    v6 = a1;
    v7 = 1;
  }

  else
  {
    v8 = *MEMORY[0x1E69C1DD0];
    v9 = sub_1A5242394();
    v11 = *(v9 - 8);
    (*(v11 + 104))(a1, v8, v9);
    v4 = *(v11 + 56);
    v6 = a1;
    v7 = 0;
    v5 = v9;
  }

  return v4(v6, v7, 1, v5);
}

uint64_t sub_1A4416B04()
{
  result = (*(*v0 + 816))();
  if (result)
  {
    v3 = result;
    v4 = v2;
    v5 = (*(*v0 + 824))(0, 0);
    v3(v5);
    result = sub_1A3C784D4(v3, v4);
  }

  v6 = v0[22];
  if (v6)
  {
    v7 = 1;
    v8 = 3;
    return (*(*v6 + 312))(&v7);
  }

  return result;
}

uint64_t sub_1A4416C54()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();

  swift_beginAccess();
  v1 = v0[16];
  sub_1A3C66EE8(v1);
  return v1;
}

uint64_t sub_1A4416CE8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 816))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3C7146C;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A4416D80(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 824);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

void (*sub_1A4416E40(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  (*(*v1 + 1112))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore24LemonadeShelvesViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C5C69C(&qword_1EB129EF8, type metadata accessor for LemonadeShelvesViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4416C04();
  return sub_1A4416F90;
}

uint64_t sub_1A4416F9C()
{
  v1 = *(v0 + 176);
  if (v1)
  {
    return (*(*v1 + 360))() & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1A4416FF8()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();

  return v0[153];
}

uint64_t sub_1A441705C@<X0>(_BYTE **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1112))();

  *a2 = v3[153];
  return result;
}

void sub_1A44170FC()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4417170(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1112))();

  *a2 = v3[20];

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4417218(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = *a2;
  KeyPath = swift_getKeyPath();
  v11[2] = v8;
  v11[3] = v7;
  (*(*v8 + 1120))(KeyPath, a6, v11, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1A44172B8()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();

  return v0[168];
}

uint64_t sub_1A441731C(char a1, uint64_t a2, _BYTE *a3)
{
  v6 = swift_allocObject();
  LOBYTE(a3) = *a3;
  sub_1A5241604();
  *(v6 + 16) = a1;
  v7 = *(a2 + 16);
  *(v6 + 24) = *a2;
  *(v6 + 40) = v7;
  *(v6 + 56) = *(a2 + 32);
  *(v6 + 17) = a3;
  return v6;
}

void *sub_1A4417394()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();

  v1 = v0[24];
  v2 = v1;
  return v1;
}

id sub_1A4417400@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1112))();

  v4 = v3[24];
  *a2 = v4;

  return v4;
}

void sub_1A4417488(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A3C5C450(v1);
}

uint64_t sub_1A44174B8()
{
  sub_1A3C5EC14(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_1A5246F24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A3C5C42C();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_1A5246F04();
  v9 = sub_1A524D264();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1A3C1C000, v8, v9, "[ShelvesViewModel] Updating shelf visibilities because of mac synced albums availability change", v10, 2u);
    MEMORY[0x1A590EEC0](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v11 = sub_1A524CCB4();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  v12 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v13 = sub_1A524CC44();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;

  sub_1A3D4D930(0, 0, v2, &unk_1A533AD10, v14);
}

uint64_t sub_1A441778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1A524CC54();
  *(v4 + 48) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4417824, v6, v5);
}

uint64_t sub_1A4417824()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A3C5E1B8();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4417988()
{
  sub_1A3C5EC14(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1A524CCB4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v5 = sub_1A524CC44();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;

  sub_1A3D4D930(0, 0, v2, &unk_1A533AD28, v6);
}

uint64_t sub_1A4417B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1A5246F24();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1A524CC54();
  v4[9] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4417C20, v7, v6);
}

uint64_t sub_1A4417C20()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = v0[7];
    v1 = v0[8];
    v3 = v0[6];
    v4 = sub_1A3C5C42C();
    (*(v2 + 16))(v1, v4, v3);
    v5 = sub_1A5246F04();
    v6 = sub_1A524D264();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      v8 = sub_1A3C5C9EC();
      v9 = *((*MEMORY[0x1E69E7D40] & **v8) + 0xA0);
      v10 = *v8;
      LOBYTE(v9) = v9();

      *(v7 + 4) = v9 & 1;
      _os_log_impl(&dword_1A3C1C000, v5, v6, "[ShelvesViewModel] Updating shelf visibilities because of wallpaper 'feature available' changed to: %{BOOL}d", v7, 8u);
      MEMORY[0x1A590EEC0](v7, -1, -1);
    }

    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];

    (*(v12 + 8))(v11, v13);
    sub_1A3C5E1B8();
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1A4417E6C()
{
  sub_1A3C5322C();
  sub_1A3C5F5F8();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1A524EAB4();
  }

  return v1 & 1;
}

uint64_t sub_1A4418234()
{
  v1 = v0;
  v2 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 4];
  v7 = *(*v0 + 560);
  v8 = MEMORY[0x1E69E7CC0];
  for (i = 2; ; ++i)
  {
    v10 = *(v7(v4) + 16);

    if (i >= v10)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A4418FCC(0, *(v8 + 16) + 1, 1, v8, &qword_1EB126240);
        v8 = result;
      }

      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1A4418FCC((v17 > 1), v18 + 1, 1, v8, &qword_1EB126240);
        v8 = result;
      }

      *(v8 + 16) = v18 + 1;
      *(v8 + v18 + 32) = 1;
    }

    else
    {
      result = (v7)(v11);
      if (i >= *(result + 16))
      {
        goto LABEL_19;
      }

      sub_1A3C531C8(result + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * i, v6);

      sub_1A3C5322C();
      sub_1A3C53E7C(v6);
      v13 = v22;
      v21 = v22;
      result = (*(*v1 + 432))(&v21);
      if (result)
      {
        v20[1] = v13;
        sub_1A3DD1890(v20);
        v14 = v20[0];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1A4418FCC(0, *(v8 + 16) + 1, 1, v8, &qword_1EB126240);
          v8 = result;
        }

        v16 = *(v8 + 16);
        v15 = *(v8 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_1A4418FCC((v15 > 1), v16 + 1, 1, v8, &qword_1EB126240);
          v8 = result;
        }

        *(v8 + 16) = v16 + 1;
        *(v8 + v16 + 32) = v14;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v8 + 16) >= 3uLL)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1A4418544()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_1A3C784D4(*(v0 + 128), *(v0 + 136));

  v1 = OBJC_IVAR____TtC12PhotosUICore24LemonadeShelvesViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A44185FC()
{
  sub_1A4418544();

  return swift_deallocClassInstance();
}

uint64_t sub_1A4418654(char a1)
{
  v2 = a1 & 1;
  v3 = *(*v1 + 136);
  result = v3();
  if ((result & 1) != v2)
  {
    v5 = v1[17];
    if (v5 != 24)
    {
      sub_1A4419BCC((v1 + 24), v10, &qword_1EB13A348, sub_1A44199EC);
      v6 = v11;
      if (v11)
      {
        v7 = v12;
        __swift_project_boxed_opaque_existential_1(v10, v11);
        v9 = v5;
        v8 = v3();
        (*(v7 + 104))(&v9, v8 & 1, v6, v7);
        return __swift_destroy_boxed_opaque_existential_0(v10);
      }

      else
      {
        return sub_1A441997C(v10, &qword_1EB13A348, sub_1A44199EC);
      }
    }
  }

  return result;
}

uint64_t (*sub_1A4418780(uint64_t a1))(_BYTE *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return sub_1A44187AC;
}

uint64_t sub_1A44187AC(_BYTE *a1)
{
  v1 = *a1;
  v2 = a1[8];
  v3 = *(*a1 + 16);
  *(v1 + 16) = v2;
  return sub_1A4418654(v3);
}

uint64_t sub_1A44187DC()
{
  swift_getKeyPath();
  (*(*v0 + 168))();

  return v0[16];
}

uint64_t sub_1A4418838@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A44188D0(char a1)
{
  v2 = a1 & 1;
  v3 = v1[16];
  if (v3 == v2)
  {
    v1[16] = v2;

    return sub_1A4418654(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v7 = v1;
    v8 = v2;
    (*(*v1 + 176))(v5);
  }
}

void (*sub_1A44189C4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  (*(*v1 + 168))();

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22LemonadeShelfViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C5C69C(&qword_1EB1258A0, type metadata accessor for LemonadeShelfViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4418780(v4);
  return sub_1A4418B00;
}

uint64_t LemonadeShelfViewModel.deinit()
{
  sub_1A441997C(v0 + 24, &qword_1EB13A348, sub_1A44199EC);
  v1 = OBJC_IVAR____TtC12PhotosUICore22LemonadeShelfViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LemonadeShelfViewModel.__deallocating_deinit()
{
  sub_1A441997C(v0 + 24, &qword_1EB13A348, sub_1A44199EC);
  v1 = OBJC_IVAR____TtC12PhotosUICore22LemonadeShelfViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_1A4418CA0()
{
  type metadata accessor for LemonadeShelfViewModel(0);
  v0 = swift_allocObject();
  sub_1A5241604();
  *(v0 + 16) = 6144;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  qword_1EB173138 = v0;
  return result;
}

uint64_t sub_1A4418D04@<X0>(void *a1@<X8>)
{
  if (qword_1EB173130 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EB173138;
}

uint64_t EnvironmentValues.photosShelfCollapsedState.getter()
{
  sub_1A4419A50();
  sub_1A5249244();
  return v1;
}

uint64_t (*EnvironmentValues.photosShelfCollapsedState.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1A4419A50();
  sub_1A5249244();
  return sub_1A4418E4C;
}

uint64_t sub_1A4418E4C(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1A5249254();
  }

  sub_1A5249254();
}

uint64_t sub_1A4418EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A3F1D008();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A4418F44()
{
  sub_1A4419AA4();

  return sub_1A5249244();
}

char *sub_1A4418FCC(char *result, int64_t a2, char a3, char *a4, unint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1A3C4D548(0, a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

unint64_t sub_1A44190BC(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A3C6246C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A3C6266C(v14, a3 & 1);
      result = sub_1A3C6246C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1A4419208();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void *sub_1A4419208()
{
  v1 = v0;
  sub_1A3C62600();
  v2 = *v0;
  v3 = sub_1A524E764();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

char *sub_1A4419358(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + a2);
      if (&v8[a3] != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_1A4419414()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 112) = v2;
  return result;
}

uint64_t sub_1A4419468()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 96) = v2;
  return result;
}

uint64_t sub_1A44194BC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = (**(v0 + 16) + 256);
  v4 = *v3;
  (*v3)(v11);
  v5 = v12;
  v6 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v6 + 40))(v1, v5, v6);
  v7 = __swift_destroy_boxed_opaque_existential_0(v11);
  (v4)(v11, v7);
  v8 = v12;
  v9 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v9 + 120))(v2, v8, v9);
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_1A44195D0()
{
  v1 = *(v0 + 24);
  (*(**(v0 + 16) + 256))(v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = v1;
  (*(v3 + 56))(&v8, v2, v3);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_1A4419688()
{
  (*(*v0 + 256))(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 152))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

void sub_1A4419724()
{
  if (!qword_1EB12A1C8)
  {
    type metadata accessor for LemonadeFeatureLibrary.Shelf(255);
    sub_1A3C5C69C(&qword_1EB12A150, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v0 = type metadata accessor for LemonadeShelvesLoader.LoadingTarget();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A1C8);
    }
  }
}

void sub_1A44197C8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedScheduler];
  [v2 endTrackedAnimation_];
}

uint64_t sub_1A4419838()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = v2[16];
  v2[16] = *(v1 + 24);
  v4 = *(*v2 + 136);
  result = v4();
  if (v3 != (result & 1))
  {
    v6 = v2[17];
    if (v6 != 24)
    {
      sub_1A4419BCC((v2 + 24), v11, &qword_1EB13A348, sub_1A44199EC);
      v7 = v12;
      if (v12)
      {
        v8 = v13;
        __swift_project_boxed_opaque_existential_1(v11, v12);
        v10 = v6;
        v9 = v4();
        (*(v8 + 104))(&v10, v9 & 1, v7, v8);
        return __swift_destroy_boxed_opaque_existential_0(v11);
      }

      else
      {
        return sub_1A441997C(v11, &qword_1EB13A348, sub_1A44199EC);
      }
    }
  }

  return result;
}

uint64_t sub_1A441997C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C5EC14(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1A44199EC()
{
  result = qword_1EB1256E0;
  if (!qword_1EB1256E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB1256E0);
  }

  return result;
}

unint64_t sub_1A4419A50()
{
  result = qword_1EB1730A8[0];
  if (!qword_1EB1730A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1730A8);
  }

  return result;
}

unint64_t sub_1A4419AA4()
{
  result = qword_1EB15A950[0];
  if (!qword_1EB15A950[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15A950);
  }

  return result;
}

unint64_t sub_1A4419B00()
{
  result = qword_1EB13A350;
  if (!qword_1EB13A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A350);
  }

  return result;
}

uint64_t sub_1A4419BCC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C5EC14(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4419C4C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A4416164();
  }

  return result;
}

uint64_t sub_1A4419CAC()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A3C5E1B8();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A3C5FECC();
  }

  return result;
}

uint64_t sub_1A4419D3C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A441778C(v3, v4, v5, v2);
}

uint64_t sub_1A4419DD8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A4417B2C(v3, v4, v5, v2);
}

void (*sub_1A441A1C0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A42C9698(v2);
  return sub_1A3D3D728;
}

uint64_t sub_1A441A28C(uint64_t a1)
{
  result = sub_1A441A39C(&qword_1EB1254C0);
  *(a1 + 8) = result;
  return result;
}

void sub_1A441A328()
{
  type metadata accessor for LemonadeFixedShelvesDataSource();
  sub_1A441A39C(&qword_1EB1254C8);

    ;
  }
}

uint64_t sub_1A441A39C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadeFixedShelvesDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A441A508(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore25PXStoryChromeSystemButton_userData;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  sub_1A441A57C(v4);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void sub_1A441A57C(uint64_t a1)
{
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x60))())
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      if (a1)
      {
        goto LABEL_4;
      }

LABEL_12:
      v3 = 0;
      if (v7)
      {
        goto LABEL_7;
      }

LABEL_13:
      if (!v3)
      {
        return;
      }

      goto LABEL_14;
    }

    swift_unknownObjectRelease();
  }

  v7 = 0;
  if (!a1)
  {
    goto LABEL_12;
  }

LABEL_4:
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    swift_unknownObjectRetain();
  }

  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (!v3 || (sub_1A441B6FC(), v4 = v7, v5 = v3, v6 = sub_1A524DBF4(), v4, v5, (v6 & 1) == 0))
  {
LABEL_14:
    sub_1A441AAC4();

    goto LABEL_15;
  }

  v7 = v5;
LABEL_15:
}

void (*sub_1A441A6E8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore25PXStoryChromeSystemButton_userData;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  swift_unknownObjectRetain();
  return sub_1A441A784;
}

void sub_1A441A784(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);
  swift_unknownObjectRetain();
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_1A441A57C(v6);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1A441A57C(v6);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  free(v3);
}

double sub_1A441A87C()
{
  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore25PXStoryChromeSystemButton_clippingRect;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1A441A934(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC12PhotosUICore25PXStoryChromeSystemButton_clippingRect);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

uint64_t sub_1A441AAC4()
{
  v1 = v0;
  sub_1A42DC564();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  sub_1A524DDC4();
  v11 = sub_1A524DE34();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = sub_1A524DE64();
  v14 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  if ((v14)(v13))
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (!v15)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = [v15 tintColor];

  if (!v16)
  {
    v16 = v14();
    if (v16)
    {
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v20 = [v19 spec];
        swift_unknownObjectRelease();
        if (v20)
        {
          v16 = [v20 defaultTintColor];
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        v16 = 0;
      }
    }
  }

  [v1 setTintColor_];

  if (v14())
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = [v17 enabled];
    }

    else
    {
      v18 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0;
  }

  [v1 setEnabled_];
  sub_1A441AEF8();
  sub_1A524DE54();
  v21 = *(v12 + 48);
  if (v21(v7, 1, v11))
  {
    sub_1A42DC5BC(v7, v10);
    sub_1A524DE64();
    sub_1A4113CCC(v7);
  }

  else
  {
    if (v14())
    {
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = [v22 label];
        swift_unknownObjectRelease();
        if (v23)
        {
          sub_1A524C674();
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    sub_1A524DE04();
    sub_1A524DE64();
  }

  sub_1A524DE54();
  if (v21(v4, 1, v11))
  {
    sub_1A42DC5BC(v4, v10);
    sub_1A524DE64();
    return sub_1A4113CCC(v4);
  }

  else
  {
    sub_1A441B014();
    sub_1A524DDD4();
    return sub_1A524DE64();
  }
}

uint64_t sub_1A441AEF8()
{
  v1 = [v0 removeTarget:0 action:0 forControlEvents:0x2000];
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))(v1);
  if (result)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 action];
      if (v5)
      {
        [v0 addTarget:objc_msgSend(v4 action:sel_target) forControlEvents:{v5, 0x2000}];
        swift_unknownObjectRelease();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1A441B014()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))())
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = v1;
      v3 = [v1 systemImageName];
      if (v3)
      {
        v4 = v3;
        [v2 preferredSystemImagePointSize];
        v6 = v5;
        v7 = [v2 preferredSystemImageWeight];
        v8 = objc_opt_self();
        v9 = [v8 configurationWithPointSize:v7 weight:v6];
        if ([v2 applyTintColorAsHierarchicalColor])
        {
          v10 = [v0 tintColor];
          if (!v10)
          {

            __break(1u);
            return;
          }

          v11 = v10;
          v12 = [v8 configurationWithHierarchicalColor_];

          v13 = [v9 configurationByApplyingConfiguration_];
          v9 = v13;
        }

        v14 = [objc_opt_self() px:v4 systemImageNamed:?];

        if (v14)
        {
          [v14 px:v9 imageWithSymbolConfiguration:?];

          swift_unknownObjectRelease();
          return;
        }
      }
    }

    swift_unknownObjectRelease();
  }
}

id sub_1A441B368()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXStoryChromeSystemButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1A441B3AC()
{
  v0 = [objc_allocWithZone(type metadata accessor for PXStoryChromeSystemButton()) initWithFrame_];
  v1 = [objc_allocWithZone(PXStoryChromeButtonConfiguration) init];
  v2 = sub_1A524C634();
  [v1 setLabel_];

  v3 = sub_1A524C634();
  [v1 setSystemImageName_];

  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v5 = v1;
  v4(v1);

  return v0;
}

void *sub_1A441B550()
{
  v0 = [objc_allocWithZone(type metadata accessor for PXStoryChromeSystemButton()) initWithFrame_];
  v1 = [objc_allocWithZone(PXStoryChromeButtonConfiguration) init];
  v2 = sub_1A524C634();
  [v1 setSystemImageName_];

  v3 = [objc_opt_self() redColor];
  [v1 setTintColor_];

  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v5 = v1;
  v4(v1);

  return v0;
}

unint64_t sub_1A441B6FC()
{
  result = qword_1EB13A378;
  if (!qword_1EB13A378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB13A378);
  }

  return result;
}

SEL *sub_1A441B750(void *a1)
{
  sub_1A3C52C70(0, &qword_1EB126BB0);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 canShowInternalUI];

  if (v3 && a1)
  {
    v4 = a1;
    v5 = &selRef_buttonsAlpha;
    v6 = [v4 children];
    v7 = sub_1A3C52C70(0, &qword_1EB126C10);
    v8 = sub_1A524CA34();

    if (v8 >> 62)
    {
      goto LABEL_43;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

    if (v9 >= 1)
    {
      v60 = 0;
      v10 = v4;
      if (sub_1A441C0DC())
      {
        v5 = sub_1A441BEF8(v57, &v60, v10);

        goto LABEL_46;
      }

      v59 = 0;
      v13 = [v57 v5[431]];
      v14 = sub_1A524CA34();

      if (v14 >> 62)
      {
        v15 = sub_1A524E2B4();
        if (v15)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
LABEL_14:
          v49[1] = v49;
          v58 = MEMORY[0x1E69E7CC0];
          sub_1A524E554();
          if ((v15 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_56;
          }

          v16 = 0;
          v54 = v15;
          v55 = v14 & 0xC000000000000001;
          v52 = v14;
          v53 = v14 + 32;
          v50 = v10;
          v51 = v7;
          do
          {
            if (v55)
            {
              v18 = MEMORY[0x1A59097F0](v16, v14);
            }

            else
            {
              v18 = *(v53 + 8 * v16);
            }

            v19 = v18;
            objc_opt_self();
            v20 = swift_dynamicCastObjCClass();
            if (!v20)
            {
              goto LABEL_19;
            }

            v21 = v20;
            v22 = v10;
            v61[2] = &v60;
            v61[3] = v22;
            v56 = v22;
            if (sub_1A441C0DC())
            {
              if (v59 == 1)
              {
                v21;
                v17 = v56;
              }

              else
              {
                v59 = 1;
                v23 = v56;
                v24 = v56;
                sub_1A441BEF8(v21, &v60, v24);

                v17 = v23;
              }

              goto LABEL_18;
            }

            v62[0] = 0;
            v25 = [v21 v5[431]];
            v26 = sub_1A524CA34();

            if (v26 >> 62)
            {
              v4 = sub_1A524E2B4();
              if (v4)
              {
LABEL_29:
                v61[5] = MEMORY[0x1E69E7CC0];
                sub_1A524E554();
                if (v4 < 0)
                {
                  __break(1u);
LABEL_43:
                  v9 = sub_1A524E2B4();
                  goto LABEL_5;
                }

                v27 = 0;
                do
                {
                  if ((v26 & 0xC000000000000001) != 0)
                  {
                    v28 = MEMORY[0x1A59097F0](v27, v26);
                  }

                  else
                  {
                    v28 = *(v26 + 8 * v27 + 32);
                  }

                  v29 = v28;
                  objc_opt_self();
                  v30 = swift_dynamicCastObjCClass();
                  if (v30)
                  {
                    sub_1A441C2A8(v30, v62, &v59, sub_1A441C538, v61);
                  }

                  ++v27;
                  sub_1A524E514();
                  sub_1A524E564();
                  sub_1A524E574();
                  sub_1A524E524();
                }

                while (v4 != v27);

                v10 = v50;
                v7 = v51;
                v5 = &selRef_buttonsAlpha;
                goto LABEL_40;
              }
            }

            else
            {
              v4 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v4)
              {
                goto LABEL_29;
              }
            }

LABEL_40:
            v31 = sub_1A524CA14();

            [v21 menuByReplacingChildren_];

            v17 = v56;
            v14 = v52;
LABEL_18:

LABEL_19:
            ++v16;
            sub_1A524E514();
            sub_1A524E564();
            sub_1A524E574();
            sub_1A524E524();
          }

          while (v16 != v54);
        }
      }

      v32 = sub_1A524CA14();

      v5 = [v57 menuByReplacingChildren_];

LABEL_46:
      if (v60 == 1)
      {

        return v5;
      }

      v10 = v10;
      v33 = [v10 title];
      v34 = sub_1A524C674();
      v36 = v35;

      v37 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v37 = v34 & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        sub_1A3CB8F68();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1A52F9790;
        *(inited + 32) = v10;
        v39 = [v57 children];
        v40 = sub_1A524CA34();

        v61[0] = v40;
        sub_1A42C4684(inited);
        v41 = sub_1A524CA14();

        v42 = [v57 menuByReplacingChildren_];
LABEL_54:
        v48 = v42;

        return v48;
      }

      sub_1A3CB8F68();
      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_1A52F9790;
      sub_1A3C52C70(0, &qword_1EB120608);
      if (qword_1EB1C0510 == -1)
      {
LABEL_53:
        v43 = qword_1EB1C0518;
        v44 = [v10 children];
        v45 = sub_1A524CA34();

        v49[0] = v45;
        *(v15 + 32) = sub_1A524DAF4();
        v46 = [v57 children];
        v47 = sub_1A524CA34();

        v61[0] = v47;
        sub_1A42C4684(v15);
        v41 = sub_1A524CA14();

        v42 = [v57 menuByReplacingChildren_];
        goto LABEL_54;
      }

LABEL_56:
      swift_once();
      goto LABEL_53;
    }
  }

  v11 = v57;

  return v11;
}

id sub_1A441BEF8(void *a1, _BYTE *a2, void *a3)
{
  *a2 = 1;
  sub_1A3CB8F68();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F9790;
  sub_1A3C52C70(0, &qword_1EB120608);
  v6 = [a3 children];
  sub_1A3C52C70(0, &qword_1EB126C10);
  v7 = sub_1A524CA34();

  *(inited + 32) = sub_1A524DAF4();
  v8 = [a1 children];
  sub_1A524CA34();

  sub_1A42C4684(inited);
  v9 = sub_1A524CA14();

  v10 = [a1 menuByReplacingChildren_];

  return v10;
}

SEL *sub_1A441C078(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = sub_1A441B750(a3);

  return v7;
}

uint64_t sub_1A441C0DC()
{
  v1 = [v0 title];
  v2 = sub_1A524C674();
  v4 = v3;

  if (v2 == 0x6C616E7265746E49 && v4 == 0xE800000000000000)
  {
  }

  else
  {
    v6 = sub_1A524EAB4();

    v7 = 0;
    if ((v6 & 1) == 0)
    {
      return v7 & 1;
    }
  }

  v8 = [v0 image];
  if (qword_1EB1C0510 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB1C0518;
  v7 = qword_1EB1C0518 == 0;
  if (v8)
  {
    if (qword_1EB1C0518)
    {
      sub_1A3C52C70(0, &qword_1EB126630);
      v10 = v9;
      v7 = sub_1A524DBF4();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

void sub_1A441C238()
{
  v0 = sub_1A524C634();
  v1 = [objc_opt_self() systemImageNamed_];

  qword_1EB1C0518 = v1;
}

id sub_1A441C2A8(void *a1, _BYTE *a2, _BYTE *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v20 = a3;
  v21 = a4;
  v22 = a5;
  if ((sub_1A441C0DC() & 1) == 0)
  {
    v24 = 0;
    v9 = [a1 children];
    sub_1A3C52C70(0, &qword_1EB126C10);
    v10 = sub_1A524CA34();

    if (v10 >> 62)
    {
      v11 = sub_1A524E2B4();
      if (v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_9:
        v23 = MEMORY[0x1E69E7CC0];
        result = sub_1A524E554();
        if (v11 < 0)
        {
          __break(1u);
          return result;
        }

        v12 = 0;
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x1A59097F0](v12, v10);
          }

          else
          {
            v13 = *(v10 + 8 * v12 + 32);
          }

          v14 = v13;
          objc_opt_self();
          v15 = swift_dynamicCastObjCClass();
          if (v15)
          {
            sub_1A441C2A8(v15, &v24, a2, sub_1A441C540, v19);
          }

          ++v12;
          sub_1A524E514();
          sub_1A524E564();
          sub_1A524E574();
          sub_1A524E524();
        }

        while (v11 != v12);

        goto LABEL_21;
      }
    }

LABEL_21:
    v16 = sub_1A524CA14();

    v17 = [a1 menuByReplacingChildren_];

    return v17;
  }

  if (*a2 == 1 || (*a2 = 1, *a3 == 1))
  {

    return a1;
  }

  else
  {
    *a3 = 1;
    return a4(a1);
  }
}

id sub_1A441C540(void *a1)
{
  v2 = *(v1 + 16);
  if (*v2 == 1)
  {

    return a1;
  }

  else
  {
    v4 = *(v1 + 24);
    *v2 = 1;
    return v4();
  }
}

uint64_t type metadata accessor for CloudQuotaNotificationItem()
{
  result = qword_1EB182350;
  if (!qword_1EB182350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A441C5EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  v60 = a2;
  v61 = a3;
  v64 = sub_1A5246F24();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1A441CD84(0, &qword_1EB128BF8, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v56 - v11;
  v12 = sub_1A5241144();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A441CD84(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v7);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v59 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v56 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v56 - v21;
  v23 = type metadata accessor for CloudQuotaNotificationItem();
  v24 = a4 + v23[8];
  *v24 = 0;
  v24[8] = 1;
  v25 = v23[9];
  v63 = a4;
  v26 = a4 + v25;
  *v26 = 0;
  v26[8] = 1;
  v66 = v13;
  v27 = *(v13 + 56);
  v27(v22, 1, 1, v12);
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    v29 = v28;
    v56 = a1;
    v30 = a1;
    *v24 = [v29 offerLevel];
    v24[8] = 0;
    v31 = [v29 lastUpdatedDate];
    if (v31)
    {
      v32 = v31;
      sub_1A52410F4();

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    sub_1A3C42D30(v22, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    v27(v20, v33, 1, v12);
    sub_1A3E98DA0(v20, v22);
    v34 = [v29 offerType];

    *v26 = v34;
    v26[8] = 0;
    a1 = v56;
  }

  v68 = a1;
  v35 = sub_1A441CDE8();
  v36 = a1;
  SendableTransfer.init(wrappedValue:)(&v68, v35, &v69);
  v37 = v63;
  v39 = v60;
  v38 = v61;
  *v63 = v69;
  v37[1] = v39;
  v37[2] = v38;
  v40 = v65;
  sub_1A5241104();
  v41 = sub_1A45350E8();
  v42 = v62;
  v43 = v67;
  v44 = v64;
  (*(v62 + 16))(v67, v41, v64);
  (*(v42 + 56))(v43, 0, 1, v44);
  v45 = v23[7];
  v61 = v22;
  v46 = v22;
  v47 = v59;
  sub_1A3C5DB24(v46, v59, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  v48 = v66;
  if ((*(v66 + 48))(v47, 1, v12) == 1)
  {
    v60 = v12;
    sub_1A3C42D30(v47, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    v49 = v57;
    sub_1A3C5DB24(v43, v57, &qword_1EB128BF8, MEMORY[0x1E69E9420]);
    if ((*(v42 + 48))(v49, 1, v44) == 1)
    {
      sub_1A5246EF4();
    }

    v51 = v58;
    (*(v42 + 32))(v58, v49, v44);
    v52 = sub_1A5246F04();
    v53 = sub_1A524D244();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v54 = 136315138;
      sub_1A3C2EF94();
    }

    (*(v42 + 8))(v51, v44);
    v12 = v60;
    v48 = v66;
    v43 = v67;
    v40 = v65;
    (*(v66 + 16))(v37 + v45, v65, v60);
    v50 = v61;
  }

  else
  {
    (*(v48 + 32))(v37 + v45, v47, v12);
    v50 = v61;
  }

  sub_1A3C42D30(v43, &qword_1EB128BF8, MEMORY[0x1E69E9420]);
  (*(v48 + 8))(v40, v12);
  return sub_1A3C42D30(v50, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

void sub_1A441CD84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A441CDE8()
{
  result = qword_1EB12B170;
  if (!qword_1EB12B170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB12B170);
  }

  return result;
}

double sub_1A441CE34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CloudQuotaNotificationItem();
  sub_1A47D14A8(a1, *(v2 + *(v5 + 32)), *(v2 + *(v5 + 32) + 8), *(v2 + *(v5 + 36)), *(v2 + *(v5 + 36) + 8), v8);
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v9;
  return result;
}

unint64_t sub_1A441CEAC()
{
  v0 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v0);

  return 0xD000000000000025;
}

uint64_t sub_1A441CF28@<X0>(void *a1@<X8>)
{
  v2 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v2);

  *a1 = 0xD000000000000025;
  a1[1] = 0x80000001A53D6BD0;
  return result;
}

void sub_1A441CFB0()
{
  sub_1A441D2A4(&qword_1EB12C460);

    ;
  }
}

void sub_1A441D008()
{
  sub_1A441D2A4(&qword_1EB12C460);

    ;
  }
}

void sub_1A441D124()
{
  sub_1A441CD84(319, &unk_1EB125AC8, sub_1A441CDE8, type metadata accessor for SendableTransfer);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CloudQuotaNotificationPresentationContext();
    if (v1 <= 0x3F)
    {
      sub_1A5241144();
      if (v2 <= 0x3F)
      {
        sub_1A441CD84(319, &qword_1EB120AB8, type metadata accessor for PXICQOfferLevel, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A3E997E4(319, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A441D2A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CloudQuotaNotificationItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents.start.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5240664();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1A441D40C(uint64_t a1, uint64_t *a2)
{
  sub_1A441D550(0, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_1A441FD78(a1, &v9[-v5], &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  (*(*v7 + 232))();

  return sub_1A441FD08(v6, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
}

void sub_1A441D550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A441D5B4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 224))();

  v3 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource__selectedDateComponents;
  swift_beginAccess();
  return sub_1A441FD78(v1 + v3, a1, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
}

uint64_t sub_1A441D664(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 232))();

  return sub_1A441FD08(a1, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
}

uint64_t sub_1A441D720(uint64_t a1, uint64_t a2)
{
  sub_1A441D550(0, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1A441FD78(a2, &v9 - v5, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
  v7 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource__selectedDateComponents;
  swift_beginAccess();
  sub_1A4420200(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t GenerativeStoryDateAmbiguityDataSource.__allocating_init()()
{
  v0 = sub_1A52412A4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource__selectedDateComponents;
  v6 = type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents(0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource_logger;
  v8 = sub_1A3C4A780();
  v9 = sub_1A5246F24();
  (*(*(v9 - 8) + 16))(v4 + v7, v8, v9);
  sub_1A5241604();
  (*(v1 + 104))(v3, *MEMORY[0x1E6969868], v0);
  sub_1A52412B4();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t GenerativeStoryDateAmbiguityDataSource.init()()
{
  v1 = sub_1A52412A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A52413D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource__selectedDateComponents;
  v10 = type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents(0);
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource_logger;
  v12 = sub_1A3C4A780();
  v13 = sub_1A5246F24();
  (*(*(v13 - 8) + 16))(v0 + v11, v12, v13);
  sub_1A5241604();
  (*(v2 + 104))(v4, *MEMORY[0x1E6969868], v1);
  sub_1A52412B4();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 32))(v0 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource_localCalendar, v8, v5);
  return v0;
}

uint64_t sub_1A441DC48(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v25 = type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents;
  sub_1A441D550(0, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_1A5240664();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  v18 = *(*v2 + 208);
  v18(a1, v15);
  (v18)(v24);
  v19 = *(v8 + 16);
  v19(v6, v17, v7);
  v19(v10, v13, v7);
  v20 = type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents(0);
  v21 = *(v20 + 20);
  (*(v8 + 32))(&v6[v21], v10, v7);
  (*(v8 + 56))(&v6[v21], 0, 1, v7);
  (*(*(v20 - 8) + 56))(v6, 0, 1, v20);
  swift_getKeyPath();
  v26 = v2;
  v27 = v6;
  (*(*v2 + 232))();

  v22 = *(v8 + 8);
  v22(v13, v7);
  v22(v17, v7);
  return sub_1A441FD08(v6, &qword_1EB125158, v25);
}

uint64_t sub_1A441DF6C()
{
  sub_1A441D550(0, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6[-v2];
  v4 = type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  swift_getKeyPath();
  v7 = v0;
  v8 = v3;
  (*(*v0 + 232))();

  return sub_1A441FD08(v3, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
}

uint64_t sub_1A441E0D0(uint64_t a1)
{
  sub_1A441D550(0, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents, MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15[-v5];
  v7 = (*(*v1 + 192))(a1, v4);
  v8 = *v1;
  if (v7)
  {
    (*(v8 + 208))(a1);
  }

  else
  {
    (*(v8 + 200))(a1);
  }

  v9 = type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents(0);
  v10 = *(v9 + 20);
  v11 = sub_1A5240664();
  (*(*(v11 - 8) + 56))(&v6[v10], 1, 1, v11);
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  KeyPath = swift_getKeyPath();
  v13 = MEMORY[0x1EEE9AC00](KeyPath);
  *&v15[-16] = v1;
  *&v15[-8] = v6;
  (*(*v1 + 232))(v13);

  return sub_1A441FD08(v6, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
}

uint64_t sub_1A441E428(uint64_t a1)
{
  v16[1] = a1;
  v1 = sub_1A5240664();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A441D550(0, &qword_1EB1385B0, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v5 = sub_1A52413B4();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A52F8E10;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x1E6969A68], v5);
  sub_1A441F9F4(v8);
  swift_setDeallocating();
  (*(v6 + 8))(v8 + v7, v5);
  swift_deallocClassInstance();
  sub_1A5241314();

  sub_1A5240634();
  if (v9)
  {
    (*(v2 + 8))(v4, v1);
    v10 = 0;
  }

  else
  {
    v11 = sub_1A5240634();
    v13 = v12;
    v14 = *MEMORY[0x1E69DDC98];
    (*(v2 + 8))(v4, v1);
    v10 = v13 | (v11 != v14);
  }

  return v10 & 1;
}

uint64_t sub_1A441E698()
{
  sub_1A441D550(0, &qword_1EB1385B0, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v0 = sub_1A52413B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52FC9F0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6969A78], v0);
  v6(v5 + v2, *MEMORY[0x1E6969A48], v0);
  sub_1A441F9F4(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1A5241314();
}

uint64_t sub_1A441E840()
{
  sub_1A441D550(0, &qword_1EB1385B0, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v0 = sub_1A52413B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52FF950;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6969A68], v0);
  v6(v5 + v2, *MEMORY[0x1E6969A78], v0);
  v6(v5 + 2 * v2, *MEMORY[0x1E6969A48], v0);
  sub_1A441F9F4(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1A5241314();
}

uint64_t sub_1A441EA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v107 = a2;
  v104 = sub_1A52413B4();
  v7 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1A441D550(0, &qword_1EB125FF8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v100 = &v84 - v12;
  sub_1A441D550(0, &qword_1EB126000, MEMORY[0x1E6969AE8], v10);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v98 = &v84 - v14;
  sub_1A441D550(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v10);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v93 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v95 = &v84 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v99 = (&v84 - v23);
  v24 = sub_1A5241144();
  v108 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v96 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v101 = &v84 - v27;
  v106 = sub_1A5240664();
  v28 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v97 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v84 - v31;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v105 = &v84 - v35;
  if (((*(*v4 + 192))(a1, v34) & 1) != 0 && (sub_1A441FDF8(&unk_1EB134140, MEMORY[0x1E6969530]), (sub_1A524C534() & 1) == 0))
  {
    v65 = v108[2];

    return v65(a3, a1, v24);
  }

  else
  {
    v102 = v24;
    v103 = a3;
    v89 = v19;
    v90 = v9;
    v36 = v7;
    v37 = v105;
    (*(*v4 + 200))(a1);
    v38 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource_localCalendar;
    sub_1A441D550(0, &qword_1EB1385B0, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
    v39 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1A52F8E10;
    v41 = *(v36 + 104);
    v86 = *MEMORY[0x1E6969A68];
    v42 = v104;
    v87 = v36 + 104;
    v85 = v41;
    v41(v40 + v39);
    sub_1A441F9F4(v40);
    swift_setDeallocating();
    v43 = *(v36 + 8);
    v44 = v40 + v39;
    v45 = v107;
    v92 = v36 + 8;
    v88 = v43;
    v43(v44, v42);
    swift_deallocClassInstance();
    sub_1A5241314();

    v46 = sub_1A5240634();
    LOBYTE(v40) = v47;
    v50 = *(v28 + 8);
    v48 = v28 + 8;
    v49 = v50;
    v51 = v32;
    v52 = v106;
    v50(v51, v106);
    if (v40)
    {
      v49(v37, v52);
      return (v108[2])(v103, v45, v102);
    }

    else
    {
      v54 = sub_1A52413D4();
      v55 = *(*(v54 - 8) + 56);
      v94 = v48;
      v56 = v38;
      v84 = v46;
      v55(v98, 1, 1, v54);
      v57 = sub_1A5241534();
      v58 = *(*(v57 - 8) + 56);
      v91 = v49;
      v58(v100, 1, 1, v57);
      sub_1A5240644();
      sub_1A5240624();
      v59 = v106;
      v60 = v97;
      v61 = v91;
      sub_1A5240654();
      v100 = v56;
      v62 = v99;
      sub_1A5241354();
      v61(v60, v59);
      v63 = v108[6];
      v64 = v102;
      if (v63(v62, 1, v102) == 1)
      {
        v61(v37, v59);
        sub_1A441FD08(v62, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
        return (v108[2])(v103, v107, v64);
      }

      else
      {
        v66 = v108 + 4;
        v98 = v108[4];
        (v98)(v101, v62, v64);
        v67 = *(*v4 + 208);
        v68 = v107;
        v99 = v63;
        v67(v107);
        v69 = v61;
        v70 = v95;
        sub_1A5241354();
        v71 = v99;
        v69(v60, v59);
        if (v71(v70, 1, v64) == 1)
        {
          v72 = v96;
          (v108[2])(v96, v68, v64);
          if (v71(v70, 1, v64) != 1)
          {
            sub_1A441FD08(v70, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
          }
        }

        else
        {
          v72 = v96;
          (v98)(v96, v70, v64);
        }

        sub_1A441FDF8(&unk_1EB134140, MEMORY[0x1E6969530]);
        v73 = v101;
        if (sub_1A524C534())
        {
          v102 = v66;
          v74 = v90;
          v75 = v104;
          v85(v90, v86, v104);
          v76 = v89;
          sub_1A5241364();
          v88(v74, v75);
          v77 = v99;
          v78 = v99(v76, 1, v64);
          v79 = v91;
          if (v78 == 1)
          {
            v80 = v108[1];
            v80(v96, v64);
            v80(v73, v64);
            v79(v105, v106);
            sub_1A441FD08(v76, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
            return (v108[2])(v103, v107, v64);
          }

          else
          {
            v81 = v93;
            sub_1A441FD78(v76, v93, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
            result = v77(v81, 1, v64);
            v82 = v105;
            if (result == 1)
            {
              __break(1u);
            }

            else
            {
              v83 = v108[1];
              ++v108;
              v83(v96, v64);
              v83(v73, v64);
              v79(v82, v106);
              sub_1A441FD08(v76, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
              return (v98)(v103, v81, v64);
            }
          }
        }

        else
        {
          (v108[1])(v72, v64);
          v91(v105, v106);
          return (v98)(v103, v73, v64);
        }
      }
    }
  }

  return result;
}

uint64_t GenerativeStoryDateAmbiguityDataSource.deinit()
{
  sub_1A441FD08(v0 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource__selectedDateComponents, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
  v1 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource_localCalendar;
  v4 = sub_1A52413D4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource___observationRegistrar;
  v6 = sub_1A5241614();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t GenerativeStoryDateAmbiguityDataSource.__deallocating_deinit()
{
  sub_1A441FD08(v0 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource__selectedDateComponents, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
  v1 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource_localCalendar;
  v4 = sub_1A52413D4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource___observationRegistrar;
  v6 = sub_1A5241614();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_1A441F9F4(uint64_t a1)
{
  v2 = sub_1A52413B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1A433B544();
    v9 = sub_1A524E3D4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1A441FDF8(&qword_1EB1385B8, MEMORY[0x1E6969AD0]);
      v16 = sub_1A524C4A4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1A441FDF8(&unk_1EB146170, MEMORY[0x1E6969AD0]);
          v23 = sub_1A524C594();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1A441FD08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A441D550(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A441FD78(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A441D550(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A441FDF8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A441FE68()
{
  sub_1A441D550(319, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A5246F24();
    if (v1 <= 0x3F)
    {
      sub_1A52413D4();
      if (v2 <= 0x3F)
      {
        sub_1A5241614();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1A442014C()
{
  sub_1A5240664();
  if (v0 <= 0x3F)
  {
    sub_1A441D550(319, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4420200(uint64_t a1, uint64_t a2)
{
  sub_1A441D550(0, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LemonadeRootSubtitleTabIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

id sub_1A4420398()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0))();

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__photoLibrary;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t sub_1A4420440@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

void sub_1A4420500(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__photoLibrary;
  swift_beginAccess();
  v5 = *(v1 + v4);
  sub_1A3C52C70(0, &qword_1EB126BF0);
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2C8))(v10);
  }
}

void sub_1A442065C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__photoLibrary;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;
}

void (*sub_1A44206C8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4423F8C(&qword_1EB1256F8, type metadata accessor for LemonadeRootSubtitleModel);
  sub_1A52415F4();

  v4[7] = sub_1A4420338();
  return sub_1A4420828;
}

uint64_t type metadata accessor for LemonadeRootSubtitleModel()
{
  result = qword_1EB167770;
  if (!qword_1EB167770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_1A4420880(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A3FE25C0;
}

uint64_t sub_1A4420920()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0))();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1A44209C4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x118))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A4420A28(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x120);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1A4420AA4(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2C8))(KeyPath, sub_1A4420B78, &v7, MEMORY[0x1E69E7CA8] + 8);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A4420B78()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__delegate;
  swift_beginAccess();
  *(v2 + 8) = v1;
  return swift_unknownObjectWeakAssign();
}

void (*sub_1A4420BE4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4423F8C(&qword_1EB1256F8, type metadata accessor for LemonadeRootSubtitleModel);
  sub_1A52415F4();

  v4[7] = sub_1A4420880(v4);
  return sub_1A4420D44;
}

uint64_t sub_1A4420DB0()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0))();

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__canPresentCloudStatus;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4420E48@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x148))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A4420F10(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__canPresentCloudStatus;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    v7 = v1;
    v8 = v2;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C8))(v6);
  }

  return result;
}

uint64_t sub_1A4421024()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__canPresentCloudStatus;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void (*sub_1A4421080(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4423F8C(&qword_1EB1256F8, type metadata accessor for LemonadeRootSubtitleModel);
  sub_1A52415F4();

  v4[7] = sub_1A4420D50();
  return sub_1A44211E0;
}

uint64_t sub_1A4421260@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x178))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A442138C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4423F8C(&qword_1EB1256F8, type metadata accessor for LemonadeRootSubtitleModel);
  sub_1A52415F4();

  v4[7] = sub_1A44211EC();
  return sub_1A44214EC;
}

void sub_1A442156C()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4421618@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A4421724(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  if (v7)
  {
    if (a2)
    {
      v8 = *v6 == a1 && v7 == a2;
      if (v8 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v6 = a1;
    v6[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  v11 = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x2C8))(v11);
}

void (*sub_1A442189C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4423F8C(&qword_1EB1256F8, type metadata accessor for LemonadeRootSubtitleModel);
  sub_1A52415F4();

  v4[7] = sub_1A44214F8();
  return sub_1A44219FC;
}

void *sub_1A4421A68()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0))();

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__systemImageColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1A4421B08@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4421B6C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1E0);
  v4 = *a1;
  return v3(v2);
}

void sub_1A4421BDC(void *a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__systemImageColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C8))(v10);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB1205C0);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
}

void sub_1A4421D68()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__systemImageColor;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;
}

void (*sub_1A4421DD4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4423F8C(&qword_1EB1256F8, type metadata accessor for LemonadeRootSubtitleModel);
  sub_1A52415F4();

  v4[7] = sub_1A4421A08();
  return sub_1A4421F34;
}

uint64_t sub_1A4421FA0()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0))();

  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__action);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1);
  return v2;
}

uint64_t sub_1A4422050@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x208))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3C7146C;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A44220F8(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x210);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

uint64_t sub_1A44221C8(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2C8))(KeyPath, sub_1A44222A0, &v7, MEMORY[0x1E69E7CA8] + 8);
  sub_1A3C784D4(a1, a2);
}

uint64_t sub_1A44222A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__action);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_1A3C66EE8(v2);
  return sub_1A3C784D4(v5, v6);
}

void (*sub_1A4422324(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4423F8C(&qword_1EB1256F8, type metadata accessor for LemonadeRootSubtitleModel);
  sub_1A52415F4();

  v4[7] = sub_1A4421F40();
  return sub_1A4422484;
}

id sub_1A4422490()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel____lazy_storage___cloudQuotaConciseSource;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel____lazy_storage___cloudQuotaConciseSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel____lazy_storage___cloudQuotaConciseSource);
  }

  else
  {
    v4 = [objc_allocWithZone(PXCPLCloudQuotaConciseSource) initWithPlacement_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void LemonadeRootSubtitleModel.init(photoLibrary:tabIdentifier:)(void *a1, char *a2)
{
  v3 = v2;
  v17 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v17);
  v6 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v6);
  v7 = *a2;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__delegate + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__canPresentCloudStatus) = 0;
  v8 = (v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__subtitle);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__imageName);
  *v9 = 0;
  v9[1] = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__systemImageColor) = 0;
  v10 = (v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__action);
  *v10 = 0;
  v10[1] = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel_cplStatusProviderChanges) = 9;
  v11 = (v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel_cplStatusObservation);
  *v11 = 0;
  v11[1] = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel____lazy_storage___cloudQuotaConciseSource) = 0;
  v12 = (v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel_cloudQuotaConciseSourceObservation);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel_dismissibleQuotaNotificationsObservation);
  *v13 = 0;
  v13[1] = 0;
  sub_1A5241604();
  *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__photoLibrary) = a1;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel_tabIdentifier) = v7;
  v14 = objc_allocWithZone(PXPhotoKitCPLActionManager);
  v15 = a1;
  v16 = [objc_allocWithZone(PXCPLUIStatusProvider) initWithPhotoLibrary:v15 actionManager:objc_msgSend(v14 presentationStyle:{sel_initWithPhotoLibrary_, v15), 2}];
  *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel_cplUIStatusProvider) = v16;
  type metadata accessor for CloudQuotaNotificationItemListManager(0);
  v15;
  sub_1A42D69CC();
}

id sub_1A4422BE8()
{
  swift_getObjectType();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x150))(0);
  sub_1A4423340();
  [swift_getObjCClassFromMetadata() cancelPreviousPerformRequestsWithTarget:v0 selector:sel_restoreCloudStatusPresentation object:0];

  return [v0 performSelector:sel_restoreCloudStatusPresentation withObject:0 afterDelay:5.0];
}

uint64_t sub_1A4422CF4()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel_cplUIStatusProvider) status];
  v3 = v2;
  if (v2)
  {
  }

  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x150);
  v6 = v5(v3 != 0);
  if ((*((*v4 & *v1) + 0x148))(v6))
  {
    sub_1A42D7BA0(&v8);
    sub_1A3D37A9C();
    sub_1A5246484();
  }

  return v5(0);
}

uint64_t sub_1A4422E38()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))(v3))
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v14[1] = (*(v7 + 8))(v0, ObjectType, v7);
    swift_unknownObjectRelease();
    sub_1A4422490();
    PXPresentationEnvironmentForSender();
  }

  v9 = sub_1A3F37710();
  (*(v2 + 16))(v5, v9, v1);
  v10 = sub_1A5246F04();
  v11 = sub_1A524D244();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1A3C1C000, v10, v11, "Error performing iCloud quota action or presenting iCloud quota status alert.", v12, 2u);
    MEMORY[0x1A590EEC0](v12, -1, -1);
  }

  return (*(v2 + 8))(v5, v1);
}

void sub_1A44230EC()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))(v3))
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 8))(v0, ObjectType, v7);
    swift_unknownObjectRelease();
    v10 = [*(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel_cplUIStatusProvider) status];
    if (v10)
    {
      v17 = v10;
      type metadata accessor for LemonadeRootSubtitleUtilities();
      sub_1A3F37774(v9, v17);

      v11 = v17;

      return;
    }
  }

  v12 = sub_1A3F37710();
  (*(v2 + 16))(v5, v12, v1);
  v13 = sub_1A5246F04();
  v14 = sub_1A524D244();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1A3C1C000, v13, v14, "Error presenting iCloud sync status alert.", v15, 2u);
    MEMORY[0x1A590EEC0](v15, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
}

void sub_1A4423340()
{
  v1 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x148))())
  {
    v27 = [*(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel_cplUIStatusProvider) status];
    if (!v27)
    {
      __break(1u);
      return;
    }

    v2 = sub_1A4422490();
    v3 = [v2 title];

    if (v3)
    {
      v4 = sub_1A524C674();
      v6 = v5;

      (*((*v1 & *v0) + 0x180))(v4, v6);
      v7 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel____lazy_storage___cloudQuotaConciseSource;
      v8 = [*(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel____lazy_storage___cloudQuotaConciseSource) icon];
      if (v8)
      {
        v9 = v8;
        v10 = sub_1A524C674();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      (*((*v1 & *v0) + 0x1B0))(v10, v12);
      (*((*v1 & *v0) + 0x1E0))([*(v0 + v7) iconColor]);
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = *((*v1 & *v0) + 0x210);

      v21 = sub_1A44241A8;
    }

    else
    {
      if (![v27 isPaused])
      {
        if ([v27 state] == 1)
        {
          v22 = [v27 stateDescription];
          if (v22)
          {
            v23 = v22;
            v24 = sub_1A524C674();
            v26 = v25;
          }

          else
          {
            v24 = 0;
            v26 = 0;
          }

          (*((*v1 & *v0) + 0x180))(v24, v26);
          (*((*v1 & *v0) + 0x1B0))(0xD000000000000027, 0x80000001A53D6DE0);
        }

        else
        {
          (*((*v1 & *v0) + 0x180))(0, 0);
          (*((*v1 & *v0) + 0x1B0))(0, 0);
          (*((*v1 & *v0) + 0x1E0))(0);
        }

        (*((*v1 & *v0) + 0x210))(0, 0);
        goto LABEL_21;
      }

      v14 = [v27 stateDescription];
      if (v14)
      {
        v15 = v14;
        v16 = sub_1A524C674();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      (*((*v1 & *v0) + 0x180))(v16, v18);
      (*((*v1 & *v0) + 0x1B0))(0xD000000000000011, 0x80000001A53D6E10);
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = *((*v1 & *v0) + 0x210);

      v21 = sub_1A4424190;
    }

    v20(v21, v19);

LABEL_21:

    return;
  }

  (*((*v1 & *v0) + 0x180))(0, 0);
  (*((*v1 & *v0) + 0x1B0))(0, 0);
  (*((*v1 & *v0) + 0x1E0))(0);
  v13 = *((*v1 & *v0) + 0x210);

  v13(0, 0);
}

id LemonadeRootSubtitleModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadeRootSubtitleModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeRootSubtitleModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4423DB0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for PXCPLUIStatusChanged(0);
    sub_1A4423F8C(&unk_1EB12E710, type metadata accessor for PXCPLUIStatusChanged);
    sub_1A524EE54();
  }

  return result;
}

uint64_t sub_1A4423E74()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for PXCPLCloudQuotaConciseSourceChanged(0);
    sub_1A4423F8C(&qword_1EB13A418, type metadata accessor for PXCPLCloudQuotaConciseSourceChanged);
    sub_1A524EE54();
  }

  return result;
}

void sub_1A4423F38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A4422CF4();
    sub_1A4423340();
  }
}

uint64_t sub_1A4423F8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A4423FD8()
{
  result = qword_1EB13A410;
  if (!qword_1EB13A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A410);
  }

  return result;
}

uint64_t sub_1A4424044()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1A44241C0(void (*a1)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    a1();
  }
}

void sub_1A442445C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1A44244B8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4424514(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);
  v4 = *a1;
  return v3(v2);
}

void (*sub_1A442457C(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore39PHLivePhotoViewImageAnalysisInteraction_livePhotoView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A40AFAE0;
}

id PHLivePhotoViewImageAnalysisInteraction.__allocating_init(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC12PhotosUICore39PHLivePhotoViewImageAnalysisInteraction_visionKitInteraction] = a1;
  v7.receiver = v3;
  v7.super_class = v1;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  [v4 setDelegate_];

  return v5;
}

id PHLivePhotoViewImageAnalysisInteraction.init(_:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC12PhotosUICore39PHLivePhotoViewImageAnalysisInteraction_visionKitInteraction] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PHLivePhotoViewImageAnalysisInteraction();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  [v3 setDelegate_];

  return v4;
}

id PHLivePhotoViewImageAnalysisInteraction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PHLivePhotoViewImageAnalysisInteraction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PHLivePhotoViewImageAnalysisInteraction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void PHLivePhotoViewImageAnalysisInteraction.imageAnalysisInteraction(_:livePhotoShouldPlay:)(uint64_t a1, char a2)
{
  v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x60))();
  if (v4)
  {
    v5 = &selRef_livePhotoViewInteractionStartPlayback_;
    if ((a2 & 1) == 0)
    {
      v5 = &selRef_livePhotoViewInteractionStopPlayback_;
    }

    v6 = v4;
    [v4 *v5];
  }
}

uint64_t sub_1A4424AB0(uint64_t a1, double a2, double a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC12PhotosUICore39PHLivePhotoViewImageAnalysisInteraction_visionKitInteraction);
  v8 = [v7 view];
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v10 = [v7 analysis];
  if (!v10 || (v10, ([v7 activeInteractionTypes] & 8) == 0) && (objc_msgSend(v7, sel_activeInteractionTypes) & 1) == 0)
  {

    return 1;
  }

  if (([v7 isSubjectAnalysisComplete] & 1) != 0 || (objc_msgSend(v7, sel_isSubjectHighlightAvailable)) && (objc_msgSend(v9, sel_convertPoint_fromCoordinateSpace_, a1, a2, a3), !objc_msgSend(v7, sel_imageSubjectExistsAtPoint_)))
  {
    [v9 convertPoint:a1 fromCoordinateSpace:{a2, a3}];
    v12 = [v7 textExistsAtPoint_];

    return v12 ^ 1;
  }

  else
  {

    return 0;
  }
}

uint64_t type metadata accessor for AssetsRecoveryNotificationItem()
{
  result = qword_1EB17D970;
  if (!qword_1EB17D970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4424DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v15 = type metadata accessor for AssetsRecoveryNotificationItem();
  v16 = v15[5];
  v17 = sub_1A5241144();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&a9[v16], a3, v17);
  v19 = &a9[v15[6]];
  *v19 = a4;
  *(v19 + 1) = a5;
  v20 = &a9[v15[7]];
  *v20 = a6;
  *(v20 + 1) = a7;
  sub_1A4424ECC(a8, v25);
  v21 = v15[8];
  sub_1A4424F30(0);
  SendableTransfer.init(wrappedValue:)(v25, v22, &a9[v21]);
  sub_1A4424FC8(a8);
  return (*(v18 + 8))(a3, v17);
}

uint64_t sub_1A4424ECC(uint64_t a1, uint64_t a2)
{
  sub_1A4424F30(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A4424F64()
{
  result = qword_1EB1250E8;
  if (!qword_1EB1250E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB1250E8);
  }

  return result;
}

uint64_t sub_1A4424FC8(uint64_t a1)
{
  sub_1A4424F30(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4425024()
{
  v1 = type metadata accessor for AssetsRecoveryNotificationItem();
  sub_1A44250C8(v0 + *(v1 + 32), &v5);
  v8[0] = v5;
  v8[1] = v6;
  v9 = v7;
  v2 = *(&v6 + 1);
  if (!*(&v6 + 1))
  {
    return sub_1A4424FC8(v8);
  }

  v3 = v9;
  __swift_project_boxed_opaque_existential_1(v8, *(&v6 + 1));
  (*(v3 + 8))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t sub_1A44250C8(uint64_t a1, uint64_t a2)
{
  sub_1A442515C(0, &qword_1EB125B10, sub_1A4424F30, type metadata accessor for SendableTransfer);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A442515C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A442525C()
{
  sub_1A4425400(&qword_1EB129818);

    ;
  }
}

void sub_1A44252B4()
{
  sub_1A4425400(&qword_1EB129818);

    ;
  }
}

void sub_1A4425334()
{
  sub_1A5241144();
  if (v0 <= 0x3F)
  {
    sub_1A442515C(319, &qword_1EB125B10, sub_1A4424F30, type metadata accessor for SendableTransfer);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4425400(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssetsRecoveryNotificationItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

PhotosUICore::PhotosDynamicHeaderStyle_optional __swiftcall PhotosDynamicHeaderStyle.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

id PhotosDynamicHeaderLayoutProvider.__allocating_init(style:)(_BYTE *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC12PhotosUICore33PhotosDynamicHeaderLayoutProvider_style] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PhotosDynamicHeaderLayoutProvider.init(style:)(_BYTE *a1)
{
  v1[OBJC_IVAR____TtC12PhotosUICore33PhotosDynamicHeaderLayoutProvider_style] = *a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PhotosDynamicHeaderLayoutProvider();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_1A4425524(void *a1, uint64_t a2, void *a3)
{
  v9 = *(v3 + OBJC_IVAR____TtC12PhotosUICore33PhotosDynamicHeaderLayoutProvider_style);
  sub_1A419C220(a1, &v9, &v10);
  v5 = v10;
  v6 = v11;
  type metadata accessor for PhotosDynamicHeaderLayout();
  v10 = v5;
  v11 = v6;
  v7 = v5;
  v8 = a3;
  sub_1A41FA7A4();
}

void sub_1A442568C(void *a1, void *a2, void *a3)
{
  type metadata accessor for PhotosDynamicHeaderLayout();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x1E69E7D40];
    v9 = *((*MEMORY[0x1E69E7D40] & *v6) + 0xC8);
    v11 = a1;
    v10 = a2;
    v9(a2);
    (*((*v8 & *v7) + 0xE0))(a3);
  }
}

id PhotosDynamicHeaderLayoutProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosDynamicHeaderLayoutProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDynamicHeaderLayoutProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A4425A40(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC12PhotosUICore21PXVideoFormatMetadata_videoHDRType] = a1;
  v5[OBJC_IVAR____TtC12PhotosUICore21PXVideoFormatMetadata_isProResLog] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1A4425B14()
{
  v0 = [objc_opt_self() defaultManager];

  return v0;
}

id sub_1A4425B54(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC12PhotosUICore29PXVideoFormatMetadataProvider_activeRequestID];
  *v4 = 0;
  v4[4] = 1;
  *&v3[OBJC_IVAR____TtC12PhotosUICore29PXVideoFormatMetadataProvider_imageManager] = a1;
  *v4 = 0;
  v4[4] = 1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1A4425C60()
{
  if ((*(v0 + OBJC_IVAR____TtC12PhotosUICore29PXVideoFormatMetadataProvider_activeRequestID + 4) & 1) == 0)
  {
    return [*(v0 + OBJC_IVAR____TtC12PhotosUICore29PXVideoFormatMetadataProvider_imageManager) cancelImageRequest_];
  }

  return result;
}

uint64_t sub_1A4425CC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v24 = a2;
  v10 = sub_1A524BEE4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1A524BF64();
  v14 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a1;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = a5;
  aBlock[4] = sub_1A4425FB0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_183;
  v18 = _Block_copy(aBlock);
  v19 = v5;
  swift_unknownObjectRetain();
  v20 = a3;

  sub_1A524BF14();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1A3C29CE4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C38394();
  sub_1A3C29CE4(&qword_1EB12B1B0, sub_1A3C38394);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v23);
}

uint64_t sub_1A4425FB0()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v1[4];
  v5 = v1[5];
  v4 = v1[6];
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = v4;
  v7 = v2 + OBJC_IVAR____TtC12PhotosUICore29PXVideoFormatMetadataProvider_activeRequestID;
  if (*(v2 + OBJC_IVAR____TtC12PhotosUICore29PXVideoFormatMetadataProvider_activeRequestID + 4))
  {
    v8 = v3;
    swift_retain_n();
    v9 = v8;
  }

  else
  {
    v10 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x80);
    v11 = v3;
    swift_retain_n();
    v10(v11);
  }

  v12 = swift_allocObject();
  v12[2] = sub_1A44269A4;
  v12[3] = v6;
  v12[4] = v2;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  v14 = v2;

  if (!v13)
  {
    goto LABEL_8;
  }

  swift_unknownObjectRetain();
  if (![v13 isVideo])
  {
    swift_unknownObjectRelease();
LABEL_8:
    v20 = 1;
    sub_1A442629C(0, 1, v3, v5, v4);

    v19 = 0;
    goto LABEL_9;
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E6978868]) init];
  [v15 setDeliveryMode_];
  [v15 setDownloadPriority_];
  v16 = *(v14 + OBJC_IVAR____TtC12PhotosUICore29PXVideoFormatMetadataProvider_imageManager);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1A44269B4;
  *(v17 + 24) = v12;
  aBlock[4] = sub_1A4426ABC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3DD5B38;
  aBlock[3] = &block_descriptor_36_1;
  v18 = _Block_copy(aBlock);

  v19 = [v16 requestAVProxyForAsset:v13 options:v15 resultHandler:v18];

  _Block_release(v18);

  swift_unknownObjectRelease();
  v20 = 0;
LABEL_9:
  *v7 = v19;
  v7[4] = v20;
}

uint64_t sub_1A442629C(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a3;
  v9 = sub_1A524BEE4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A524BF64();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = a1;
  LOBYTE(a4) = a2 & 1;
  *(v17 + 40) = a2 & 1;
  aBlock[4] = sub_1A4426B84;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_42_2;
  v18 = _Block_copy(aBlock);

  sub_1A4426BB8(a1, a4);
  sub_1A524BF14();
  v20[1] = MEMORY[0x1E69E7CC0];
  sub_1A3C29CE4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C38394();
  sub_1A3C29CE4(&qword_1EB12B1B0, sub_1A3C38394);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v16, v12, v18);
  _Block_release(v18);
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
}

uint64_t sub_1A4426584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v12 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x88);

  v12(a1, a2, a3, sub_1A44266F8, v11);
}

void sub_1A442665C(uint64_t a1, char a2, void (*a3)(void))
{
  if (a2)
  {
    sub_1A3C52C70(0, &qword_1EB12C740);
    swift_dynamicCast();
    v4 = v5;
    a3(0);
  }

  else
  {
    (a3)(a1, 0);
  }
}

id sub_1A44268A4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1A44268F0()
{
  result = qword_1EB13A5D0;
  if (!qword_1EB13A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A5D0);
  }

  return result;
}

void type metadata accessor for PXMetadataUtilitiesHDRType()
{
  if (!qword_1EB13A5D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB13A5D8);
    }
  }
}

void sub_1A44269B4(void *a1)
{
  v2 = *(v1 + 16);
  if (a1)
  {
    v3 = a1;
    if ([v3 hasDolby8_4Metadata])
    {
      v4 = 8;
    }

    else if ([v3 isHDR10])
    {
      v4 = 4;
    }

    else if ([v3 isHighDynamicRange])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = [v3 isProResLOG];
    v6 = type metadata accessor for PXVideoFormatMetadata();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC12PhotosUICore21PXVideoFormatMetadata_videoHDRType] = v4;
    v7[OBJC_IVAR____TtC12PhotosUICore21PXVideoFormatMetadata_isProResLog] = v5;
    v9.receiver = v7;
    v9.super_class = v6;
    v8 = objc_msgSendSuper2(&v9, sel_init);
    v2(v8, 0);
  }

  else
  {
    v2(0, 1);
  }
}

void sub_1A4426ABC(void *a1)
{
  v2 = *(v1 + 16);
  if (a1)
  {
    v4 = objc_opt_self();
    v7 = a1;
    v5 = [v4 infoForFirstVideoTrackOfAsset_];
    v6 = v5;
    (v2)(v5);
  }

  else
  {
    v2();
  }
}

void sub_1A4426B78(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

id sub_1A4426BB8(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

void sub_1A4426C40()
{
  v1 = (v0 + qword_1EB165AF8);
  *v1 = 0;
  v1[1] = 0;
  sub_1A5246EF4();
}

uint64_t sub_1A442724C()
{

  swift_unknownObjectRelease();
  v1 = qword_1EB165AF0;
  v2 = sub_1A5246F24();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t UtilityAlbumItemListManager.deinit()
{
  v1 = (v0 + qword_1EB165AF8);
  if (*(v0 + qword_1EB165AF8))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1A5246634();
  }

  *v1 = 0;
  v1[1] = 0;
  swift_unknownObjectRelease();
  v2 = PhotoKitItemListManager.deinit();

  swift_unknownObjectRelease();
  v3 = qword_1EB165AF0;
  v4 = sub_1A5246F24();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  return v2;
}

uint64_t UtilityAlbumItemListManager.__deallocating_deinit()
{
  UtilityAlbumItemListManager.deinit();

  return swift_deallocClassInstance();
}

void sub_1A4427444()
{
  v0 = objc_allocWithZone(PXContentPrivacyController);
  v1 = sub_1A524C634();
  v2 = [v0 initWithLogIdentifier_];

  qword_1EB1EAE58 = v2;
}

unint64_t sub_1A44274B4()
{
  result = qword_1EB120CF0;
  if (!qword_1EB120CF0)
  {
    sub_1A3C4D5E4(255, &qword_1EB120CF8, &type metadata for UtilityAlbumType, MEMORY[0x1E69E62F8]);
    sub_1A3D71620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120CF0);
  }

  return result;
}

void sub_1A4427550()
{
  type metadata accessor for PXUtilityAlbumVisibilityPreferenceObserver();
  sub_1A44291FC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4427A60(uint64_t a1)
{
  v2 = qword_1EB165B10;
  v3 = *(a1 + qword_1EB165B10);
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x88);
  v6 = v3;
  v5();

  v7 = *(a1 + v2);
  v8 = *((*v4 & *v7) + 0xB8);
  v9 = v7;
  v8();
}

uint64_t sub_1A4427B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1A524CC54();
  *(v4 + 48) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4427BCC, v6, v5);
}

uint64_t sub_1A4427BCC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = qword_1EB165B10;
    v4 = *(Strong + qword_1EB165B10);
    v5 = MEMORY[0x1E69E7D40];
    v6 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x88);
    v7 = v4;
    v8 = v6();

    v9 = v8 ^ *(v2 + qword_1EB165B20);
    if (v9)
    {
      *(v2 + qword_1EB165B20) = v8 & 1;
    }

    v10 = *(v2 + v3);
    v11 = *((*v5 & *v10) + 0xB8);
    v12 = v10;
    v13 = v11() & 1;

    if (v13 != *(v2 + qword_1EB165B18))
    {
      *(v2 + qword_1EB165B18) = v13;
      goto LABEL_7;
    }

    if (v9)
    {
LABEL_7:
      sub_1A43F8A20();
    }

    sub_1A52415B4();
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1A4427D88(uint64_t a1)
{
  v1 = sub_1A3D63EA0(*(a1 + 200));
  (*(*v1 + 192))(v1);
}

uint64_t (*sub_1A4427DF4())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A4429130;
}

uint64_t (*sub_1A4427E54())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A4429064;
}

uint64_t sub_1A4427EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3C2A3A4(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1A524CCB4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v9 = sub_1A524CC44();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;

  sub_1A3D4D930(0, 0, v6, a3, v10);
}

uint64_t sub_1A442804C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1A524CC54();
  *(v4 + 48) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A44280E4, v6, v5);
}

uint64_t sub_1A44280E4()
{
  v14 = v0;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1A5246F04();
    v4 = sub_1A524D224();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1A3C1C000, v3, v4, "Updating UtilityAlbumItemListManager because of order change", v5, 2u);
      MEMORY[0x1A590EEC0](v5, -1, -1);
    }

    v6 = *(v2 + 200);

    v7 = v6;
    v8 = sub_1A3D63EA0(v7);

    v9 = (*(*v8 + 192))();

    sub_1A3C4D5E4(0, &qword_1EB120CF8, &type metadata for UtilityAlbumType, MEMORY[0x1E69E62F8]);
    v13[3] = v10;
    v13[4] = sub_1A44274B4();
    v13[0] = v9;
    sub_1A43FA078(v13);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1A44282DC(void *a1, char a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = a1;
      sub_1A44283C0(v5, a2);
    }
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

void sub_1A44283C0(void *a1, char a2)
{
  v5 = sub_1A524BEE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524BF64();
  v18 = *(v9 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 2) != 0)
  {
    v13 = qword_1EB165B08;
    v14 = *(v2 + qword_1EB165B08);
    if (v14 != [a1 isContentPrivacyEnabled])
    {
      *(v2 + v13) = [a1 isContentPrivacyEnabled];
      sub_1A3C52C70(0, &qword_1EB12B180);
      v15 = sub_1A524D474();
      aBlock[4] = sub_1A4428F0C;
      aBlock[5] = v2;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_184;
      v16 = _Block_copy(aBlock);

      sub_1A524BF14();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1A4059F40();
      sub_1A3C2A3A4(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C5DE88();
      sub_1A524E224();
      MEMORY[0x1A5908800](0, v12, v8, v16);
      _Block_release(v16);

      (*(v6 + 8))(v8, v5);
      (*(v18 + 8))(v12, v9);
    }
  }
}

void sub_1A44286DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A3C33378(a6);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1A4428718(unsigned __int16 a1)
{
  if (a1 <= 2u)
  {
    if (!a1)
    {
      return 1701736302;
    }

    if (a1 == 1 || a1 == 2)
    {
      return sub_1A3C38BD4();
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5 || a1 == 6)
    {
      return sub_1A3C38BD4();
    }
  }

  else if (a1 == 3 || a1 == 4)
  {
    return sub_1A3C38BD4();
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

id sub_1A442885C(void *a1)
{
  v1 = a1;
  sub_1A4428718([v1 type]);
  v3 = v2;

  if (v3)
  {
    v4 = sub_1A524C634();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t PHUtilityCollection.localizedTitle.getter()
{
  v1 = [v0 type];

  return sub_1A4428718(v1);
}

id LemonadeDocumentsUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadeDocumentsUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeDocumentsUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LemonadeDocumentsUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeDocumentsUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1A4428A40(char *a1, int64_t a2, char a3)
{
  result = sub_1A4428A60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A4428A60(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C4D5E4(0, &qword_1EB120388, &type metadata for UtilityAlbumType, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1A4428B6C()
{
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v2 = *(&unk_1F170D590 + v0 + 32);
    if (v2 > 2)
    {
      if (*(&unk_1F170D590 + v0 + 32) > 4u)
      {
        if (v2 != 5 && v2 != 6)
        {
          goto LABEL_24;
        }
      }

      else if (v2 != 3 && v2 != 4)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

    if (*(&unk_1F170D590 + v0 + 32))
    {
      break;
    }

    v3 = 0xE400000000000000;
    v4 = 1701736302;
LABEL_18:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1A3D3D914(0, *(v1 + 2) + 1, 1, v1);
    }

    v7 = *(v1 + 2);
    v6 = *(v1 + 3);
    if (v7 >= v6 >> 1)
    {
      v1 = sub_1A3D3D914((v6 > 1), v7 + 1, 1, v1);
    }

    v0 += 2;
    *(v1 + 2) = v7 + 1;
    v8 = &v1[16 * v7];
    *(v8 + 4) = v4;
    *(v8 + 5) = v3;
    if (v0 == 10)
    {
      return v1;
    }
  }

  if (v2 == 1 || v2 == 2)
  {
LABEL_17:
    v4 = sub_1A3C38BD4();
    v3 = v5;
    goto LABEL_18;
  }

LABEL_24:
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for UtilityAlbumItemListManager()
{
  result = qword_1EB165AE0;
  if (!qword_1EB165AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4428E04()
{
  result = sub_1A5246F24();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A4428F0C()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1A3C6F8E4();
  v0 = PhotoKitItemListImplementation.numberOfItems.getter();

  if (v0 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v0)
    {
      v2 = 0;
      v3 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1A3C6F8E4();
        PhotoKitItemListImplementation.item(at:)(v2);
        v5 = v4;

        if ([*(v5 + 16) px_isPrivacySensitiveAlbum])
        {

          MEMORY[0x1A5907D70](v6);
          if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1A524CA74();
          }

          sub_1A524CAE4();

          v3 = v7;
        }

        else
        {
        }

        ++v2;
      }

      while (v0 != v2);
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
    }

    sub_1A43F9ED0(v3);
  }

  return result;
}

uint64_t sub_1A442909C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A4427B34(v3, v4, v5, v2);
}

uint64_t sub_1A4429168()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A442804C(v3, v4, v5, v2);
}

void sub_1A44291FC()
{
  if (!qword_1EB12A000)
  {
    sub_1A3C52C70(255, &qword_1EB126AC0);
    ResultProviderInput = type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput();
    if (!v1)
    {
      atomic_store(ResultProviderInput, &qword_1EB12A000);
    }
  }
}

uint64_t sub_1A4429264(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C2A3A4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1A44292E4()
{
  result = qword_1EB120D78;
  if (!qword_1EB120D78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB120D78);
  }

  return result;
}

uint64_t sub_1A4429348(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C2A3A4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for TimelineEngineMockData()
{
  result = qword_1EB1C0F70;
  if (!qword_1EB1C0F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4429424@<X0>(uint64_t a1@<X8>)
{

  sub_1A52411B4();
  v2 = type metadata accessor for TimelineEngineMockData();
  *(a1 + v2[5]) = 0;
  *(a1 + v2[6]) = 0;
  result = sub_1A3E2AEFC(v2, 0.0, 1.0);
  *(a1 + v2[7]) = v4;
  return result;
}

uint64_t sub_1A4429484()
{
  v1 = v0;
  sub_1A52411C4();
  sub_1A44298B4(&unk_1EB12AFC0, MEMORY[0x1E69695A8]);
  sub_1A524C4B4();
  v2 = type metadata accessor for TimelineEngineMockData();
  v3 = *(v0 + v2[5]);
  sub_1A524ECB4();
  if (v3)
  {
    v4 = v3;
    sub_1A524DC04();
  }

  MEMORY[0x1A590A010](*(v1 + v2[6]));
  v5 = *(v1 + v2[7]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return MEMORY[0x1A590A040](*&v5);
}

void *sub_1A4429580(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));
  v3 = v2;
  return v2;
}

unint64_t sub_1A44295AC()
{
  result = sub_1A4429704(0x19uLL);
  if (result <= 0x18)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4429618()
{
  sub_1A524EC94();
  sub_1A4429484();
  return sub_1A524ECE4();
}

uint64_t sub_1A442965C()
{
  sub_1A524EC94();
  sub_1A4429484();
  return sub_1A524ECE4();
}

uint64_t sub_1A4429698@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A52411C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_1A4429704(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1A590EEE0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1A590EEE0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A4429794()
{
  result = qword_1EB13A5E0;
  if (!qword_1EB13A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A5E0);
  }

  return result;
}

uint64_t sub_1A44297E8(uint64_t a1)
{
  *(a1 + 8) = sub_1A44298B4(&qword_1EB13A5E8, type metadata accessor for TimelineEngineMockData);
  result = sub_1A44298B4(&qword_1EB13A5F0, type metadata accessor for TimelineEngineMockData);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A44298B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A442997C()
{
  sub_1A52411C4();
  if (v0 <= 0x3F)
  {
    sub_1A3F2D6AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A4429A1C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EBD90);
  __swift_project_value_buffer(v0, qword_1EB1EBD90);
  sub_1A5246EF4();
}

id FeaturedMemoriesSuggester.init(with:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(PXTimelineDataSource) initWithPhotoLibrary:a1 options:{objc_msgSend(objc_allocWithZone(PXTimelineDataSourceOptions), sel_initWithMemoriesOnly)}];
  v3 = [objc_allocWithZone(PXTimelineScheduler) initWithTimelineDataSource_];
  [v2 featuredMemories];
  v4 = [objc_allocWithZone(PXTimelineSchedulerOptions) init];
  v14 = v3;
  if (!PFOSVariantHasInternalUI())
  {
    goto LABEL_7;
  }

  sub_1A3C52C70(0, &unk_1EB120740);
  v5 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v5 timelineSchedulerMode];

  result = [objc_opt_self() schedulerOptionsFromTimelineSchedulerMode_];
  if (result)
  {

    if (qword_1EB1C0F80 != -1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v7 = sub_1A5246F24();
      __swift_project_value_buffer(v7, qword_1EB1EBD90);
      v8 = sub_1A524D264();
      v9 = sub_1A5246F04();
      if (os_log_type_enabled(v9, v8))
      {
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        *(v10 + 4) = v1;
        _os_log_impl(&dword_1A3C1C000, v9, v8, "Timeline scheduler mode: %lu", v10, 0xCu);
        MEMORY[0x1A590EEC0](v10, -1, -1);
      }

      v3 = v14;
LABEL_7:
      v11 = [v3 scheduledTimelineEntriesWithOptions_];
      sub_1A3C52C70(0, &qword_1EB120A88);
      v12 = sub_1A524CA34();

      if (v12 >> 62)
      {
        v13 = sub_1A524E2B4();
        if (!v13)
        {
LABEL_12:
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v13)
        {
          goto LABEL_12;
        }
      }

      if (v13 >= 1)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      __break(1u);
LABEL_14:
      swift_once();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4429F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  sub_1A442A5B0();
  v8 = v7;
  v9 = sub_1A442A6FC();

  sub_1A46562D0(0, sub_1A442A5A4, v6, v8, v9);
}

void sub_1A4429FD4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a2;
  v7 = sub_1A5249A24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  type metadata accessor for PickerConfiguration();
  v12 = v11;
  v13 = PickerConfiguration.__allocating_init()();
  v14 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v13) + 0x1D0))(5);
  (*((*v14 & *v13) + 0x5D8))(1);
  (*((*v14 & *v13) + 0x2A8))(1);
  (*((*v14 & *v13) + 0x2C0))(1);
  (*((*v14 & *v13) + 0x3C8))(1);
  (*((*v14 & *v13) + 0x620))(4098);
  v15 = (*((*v14 & *v13) + 0x5F0))(1033);
  (*((*v14 & *v13) + 0x548))(v15, 1.0);
  v17 = (*((*v14 & *v13) + 0x5F8))(&v31);
  if ((*v16 & 2) == 0)
  {
    *v16 |= 2uLL;
  }

  v17(&v31, 0);
  (*((*v14 & *v13) + 0x440))(0);
  (*((*v14 & *v13) + 0x578))(0);
  (*((*v14 & *v13) + 0x590))(0);
  v18 = sub_1A3C38BD4();
  (*((*v14 & *v13) + 0x3B0))(v18);
  v19 = swift_allocObject();
  v19[2] = v26;
  v19[3] = a3;
  v19[4] = a1;

  LemonadePickerView.init(photoLibrary:configuration:selectionHandler:)(v12, v13, sub_1A442AAEC, v19, &v31);
  v27 = v31;
  v28 = v32;
  v29 = v33;
  v30 = v34;
  sub_1A5249494();
  sub_1A442A6A8();
  sub_1A524AD14();
  (*(v8 + 8))(v10, v7);
  v20 = v29;
  sub_1A3E04274(v27, v28);

  v21 = sub_1A5248874();
  v22 = sub_1A524A064();

  sub_1A442A5B0();
  v24 = a4 + *(v23 + 36);
  *v24 = v21;
  *(v24 + 8) = v22;
}

void sub_1A442A5B0()
{
  if (!qword_1EB13A600)
  {
    sub_1A442A610();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A600);
    }
  }
}

void sub_1A442A610()
{
  if (!qword_1EB13A608)
  {
    sub_1A5249A24();
    sub_1A442A6A8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A608);
    }
  }
}

unint64_t sub_1A442A6A8()
{
  result = qword_1EB13A610;
  if (!qword_1EB13A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A610);
  }

  return result;
}

unint64_t sub_1A442A6FC()
{
  result = qword_1EB13A618;
  if (!qword_1EB13A618)
  {
    sub_1A442A5B0();
    sub_1A5249A24();
    sub_1A442A6A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A618);
  }

  return result;
}

uint64_t sub_1A442A7C0(uint64_t a1, void (*a2)(__int128 *))
{
  sub_1A3E7CAB0();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A442ABD4(0, &unk_1EB1403B0, sub_1A3E7CAB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19[-1] - v10;
  sub_1A442AAF8(a1, &v19[-1] - v10);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_1A442AB78(v11, &unk_1EB1403B0, sub_1A3E7CAB0);
LABEL_6:
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    a2(&v22);
    sub_1A442AB78(&v22, &qword_1EB124AA0, sub_1A442AC28);
    return sub_1A46564C4();
  }

  (*(v6 + 16))(v8, v11, v5);
  sub_1A442AC8C(&qword_1EB130310, sub_1A3E7CAB0);
  sub_1A524C914();
  sub_1A524E7C4();
  v12 = v19[0];

  if (!v12)
  {
    (*(v6 + 8))(v11, v5);
    goto LABEL_6;
  }

  (*(v6 + 8))(v11, v5);
  sub_1A52430E4();
  v13 = v20;
  v14 = v21;
  v15 = __swift_project_boxed_opaque_existential_1(v19, v20);
  *(&v23 + 1) = v13;
  v24 = *(v14 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v15, v13);
  a2(&v22);

  sub_1A442AB78(&v22, &qword_1EB124AA0, sub_1A442AC28);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return sub_1A46564C4();
}

uint64_t sub_1A442AAF8(uint64_t a1, uint64_t a2)
{
  sub_1A442ABD4(0, &unk_1EB1403B0, sub_1A3E7CAB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A442AB78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A442ABD4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A442ABD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A442AC28()
{
  result = qword_1EB128C70;
  if (!qword_1EB128C70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB128C70);
  }

  return result;
}

uint64_t sub_1A442AC8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A442ACD4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_1A442ADDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController_people;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A442AEDC()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A442AF3C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

uint64_t sub_1A442AFD4()
{
  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController_completionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1);
  return v2;
}

uint64_t sub_1A442B030(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController_completionHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1A3C33378(v6);
}

id SuggestLessPeopleOptionSelectionViewController.__allocating_init(people:delegate:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1A442FE98(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  return v10;
}

id SuggestLessPeopleOptionSelectionViewController.init(people:delegate:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1A442FE98(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  return v4;
}

uint64_t sub_1A442B354()
{
  v1 = type metadata accessor for SuggestLessPeopleOptionSelectionView(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  v7 = UIViewController.pxView.getter();
  v8 = [objc_opt_self() secondarySystemBackgroundColor];
  [v7 setBackgroundColor_];

  v9 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))();
  sub_1A442B4E0(v9, v0, v6);
  sub_1A442FFC8();
  sub_1A4432BCC(v6, v3, type metadata accessor for SuggestLessPeopleOptionSelectionView);
  v10 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v3);
  UIViewController.px_fillWithChildViewController(_:)(v10);

  return sub_1A443017C(v6, type metadata accessor for SuggestLessPeopleOptionSelectionView);
}

uint64_t sub_1A442B4E0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A524B694();
  *(a3 + 16) = v21;
  *(a3 + 32) = v22;
  sub_1A524B694();
  *(a3 + 40) = v21;
  *(a3 + 48) = *(&v21 + 1);
  v6 = type metadata accessor for SuggestLessPeopleOptionSelectionView(0);
  v7 = v6[8];
  *(a3 + v7) = swift_getKeyPath();
  sub_1A44300F8(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[10];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(a3 + v6[11]) = vdupq_n_s64(0x4065400000000000uLL);
  *a3 = a2;
  *(a3 + 8) = a1;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = sub_1A524E2B4();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_10;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(a1 + 32);
    *(a3 + v6[12]) = v10;
    sub_1A3C69B6C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A52F9790;
    v12 = *MEMORY[0x1E695C1C0];
    *(v11 + 32) = *MEMORY[0x1E695C1C0];
    sub_1A4049B80();
    v13 = v10;
    v14 = v12;
    v15 = sub_1A524CA14();

    v16 = [v13 linkedContactWithKeysToFetch_];

    if (v16)
    {
      v17 = [v16 termsOfAddress];

      sub_1A3C52C70(0, &qword_1EB13A648);
      v16 = sub_1A524CA34();
    }

    *(a3 + v6[13]) = v16;
    type metadata accessor for FaceCropImageManager(0);
    PLPhysicalScreenScale();
    sub_1A47B81E0(v13, 170.0, 170.0, v18);
    v19 = (a3 + v6[9]);
    sub_1A443005C(&qword_1EB13A640, type metadata accessor for FaceCropImageManager);
    result = sub_1A5248494();
    *v19 = result;
    v19[1] = v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SuggestLessPeopleOptionSelectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1A524C634();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SuggestLessPeopleOptionSelectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestLessPeopleOptionSelectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A442B9D4@<X0>(char *a1@<X8>)
{
  v3 = sub_1A52407E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44300C4(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for SuggestLessPeopleOptionsDataSource(0) + 24);
  sub_1A4432BCC(v1 + v10, v9, sub_1A44300C4);
  v11 = type metadata accessor for SuggestLessPeopleOption(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return sub_1A44329DC(v9, a1, type metadata accessor for SuggestLessPeopleOption);
  }

  v26 = v4;
  v27 = v3;
  sub_1A443017C(v9, sub_1A44300C4);
  v13 = *v1;
  v14 = sub_1A524C634();
  v15 = PXLocalizedStringForPersonOrPetAndVisibility(v13, 0, v14);

  v16 = sub_1A524C674();
  v25 = v17;

  v18 = *(v1 + 8);
  if (v18)
  {
    sub_1A3C52C70(0, &qword_1EB13A648);
    v18 = sub_1A524CA14();
  }

  v19 = sub_1A524C634();
  v20 = PXLocalizedAttributedStringForPersonOrPet(v13, 0, v18, v19);

  sub_1A5240834();
  *a1 = 0x6C65727574616566;
  *(a1 + 1) = 0xEB00000000737365;
  v21 = v25;
  v22 = v26;
  *(a1 + 2) = v16;
  *(a1 + 3) = v21;
  (*(v22 + 32))(&a1[*(v11 + 24)], v6, v27);
  sub_1A443017C(v1 + v10, sub_1A44300C4);
  sub_1A4432BCC(a1, v1 + v10, type metadata accessor for SuggestLessPeopleOption);
  return (*(v12 + 56))(v1 + v10, 0, 1, v11);
}

uint64_t sub_1A442BD28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A52407E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44300C4(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for SuggestLessPeopleOptionsDataSource(0) + 28);
  sub_1A4432BCC(v1 + v10, v9, sub_1A44300C4);
  v11 = type metadata accessor for SuggestLessPeopleOption(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return sub_1A44329DC(v9, a1, type metadata accessor for SuggestLessPeopleOption);
  }

  v26 = v4;
  v27 = v3;
  sub_1A443017C(v9, sub_1A44300C4);
  v13 = *v1;
  v14 = sub_1A524C634();
  v15 = PXLocalizedStringForPersonOrPetAndVisibility(v13, 0, v14);

  v16 = sub_1A524C674();
  v25 = v17;

  v18 = *(v1 + 8);
  if (v18)
  {
    sub_1A3C52C70(0, &qword_1EB13A648);
    v18 = sub_1A524CA14();
  }

  v19 = sub_1A524C634();
  v20 = PXLocalizedAttributedStringForPersonOrPet(v13, 0, v18, v19);

  sub_1A5240834();
  strcpy(a1, "neverfeature");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  v21 = v25;
  v22 = v26;
  *(a1 + 16) = v16;
  *(a1 + 24) = v21;
  (*(v22 + 32))(a1 + *(v11 + 24), v6, v27);
  sub_1A443017C(v1 + v10, sub_1A44300C4);
  sub_1A4432BCC(a1, v1 + v10, type metadata accessor for SuggestLessPeopleOption);
  return (*(v12 + 56))(v1 + v10, 0, 1, v11);
}

void sub_1A442C07C()
{
  v0 = type metadata accessor for SuggestLessPeopleOption(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A442B9D4(&v3 - v2);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A442C210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  sub_1A4430AD4();
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v43 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_1A5249284();
  v5 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5249904();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44306DC();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4430608();
  v17 = *(v16 - 8);
  v37 = v16;
  v38 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4430504();
  v21 = *(v20 - 8);
  v41 = v20;
  v42 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v36 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  sub_1A443075C();
  sub_1A4430938();
  sub_1A524A2C4();
  sub_1A52498F4();
  v23 = sub_1A443005C(&qword_1EB13A6F0, sub_1A44306DC);
  sub_1A524B1E4();
  (*(v8 + 8))(v10, v7);
  (*(v13 + 8))(v15, v12);
  v24 = a1;
  v25 = [*(a1 + *(type metadata accessor for SuggestLessPeopleOptionSelectionView(0) + 48)) px_localizedName];
  sub_1A524C674();

  v26 = v39;
  v27 = v40;
  (*(v5 + 104))(v39, *MEMORY[0x1E697C438], v40);
  v47 = v12;
  v48 = v7;
  v49 = v23;
  v50 = MEMORY[0x1E697C750];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v36;
  v30 = v37;
  sub_1A524ACE4();

  (*(v5 + 8))(v26, v27);
  (*(v38 + 8))(v19, v30);
  v31 = sub_1A5249314();
  v32 = v43;
  *v43 = v31;
  *(v32 + 8) = 0;
  *(v32 + 16) = 1;
  sub_1A4432C3C(0, &qword_1EB13A918, type metadata accessor for CancelButton);
  sub_1A442D46C(v24, v32 + *(v33 + 44));
  v47 = v30;
  v48 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1A443005C(&qword_1EB13A700, sub_1A4430AD4);
  v34 = v41;
  sub_1A524ACD4();
  sub_1A443017C(v32, sub_1A4430AD4);
  return (*(v42 + 8))(v29, v34);
}

void sub_1A442C7EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for SuggestLessPeopleOptionSelectionView(0);
  v4 = v3 - 8;
  v22[5] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v22[6] = v5;
  v22[7] = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A52407E4();
  v22[10] = *(v6 - 8);
  v22[11] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v22[8] = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OptionListFooter(0);
  MEMORY[0x1EEE9AC00](v23);
  v22[13] = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OptionListHeader(0);
  MEMORY[0x1EEE9AC00](v9);
  v22[2] = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SuggestLessPeopleOptionsDataSource(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v4 + 56);
  v16 = *(v4 + 60);
  v22[1] = a1;
  v17 = *(a1 + v15);
  v18 = *(a1 + v16);
  v19 = *(v12 + 32);
  v20 = type metadata accessor for SuggestLessPeopleOption(0);
  v21 = *(*(v20 - 8) + 56);
  v21(&v14[v19], 1, 1, v20);
  v21(&v14[*(v12 + 36)], 1, 1, v20);
  *v14 = v17;
  *(v14 + 1) = v18;
  v22[12] = v14;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A442CE58(id *a1)
{
  v2 = type metadata accessor for SuggestLessPeopleOptionSelectionView(0);
  v3 = v2 - 8;
  v14[1] = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v14[2] = v5;
  v14[3] = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[5] = [*a1 undoManager];
  v6 = type metadata accessor for SuggestLessPeopleOptionsDataSource(0);
  v14[4] = swift_allocBox();
  v8 = v7;
  v9 = *(a1 + *(v3 + 56));
  v10 = *(a1 + *(v3 + 60));
  v11 = *(v6 + 24);
  v12 = type metadata accessor for SuggestLessPeopleOption(0);
  v13 = *(*(v12 - 8) + 56);
  v13(&v8[v11], 1, 1, v12);
  v13(&v8[*(v6 + 28)], 1, 1, v12);
  *v8 = v9;
  *(v8 + 1) = v10;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A442D1A8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SuggestLessPeopleOptionSelectionView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A44300F8(0, &qword_1EB13A668, type metadata accessor for SuggestLessPeopleOption, MEMORY[0x1E69E6F90]);
  v6 = *(type metadata accessor for SuggestLessPeopleOption(0) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A52FC9F0;
  v10 = (v9 + v8);
  sub_1A442B9D4(v10);
  sub_1A442BD28(&v10[v7]);
  v14[1] = v9;
  swift_getKeyPath();
  sub_1A4432BCC(a2, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SuggestLessPeopleOptionSelectionView);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_1A44329DC(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for SuggestLessPeopleOptionSelectionView);
  sub_1A44308C4(0);
  type metadata accessor for SuggestLessPeopleOptionSelectionRowView(0);
  sub_1A443005C(&qword_1EB13A6C0, sub_1A44308C4);
  sub_1A443005C(&qword_1EB13A6E0, type metadata accessor for SuggestLessPeopleOptionSelectionRowView);
  return sub_1A524B9B4();
}

uint64_t sub_1A442D46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v18 = sub_1A5249234();
  v3 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E697BF90];
  sub_1A44300F8(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = sub_1A5248284();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SuggestLessPeopleOptionSelectionView(0);
  sub_1A4432B4C(a1 + *(v14 + 32), v9, &unk_1EB128A60, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(v11 + 32);
    v15(v13, v9, v10);
    return (v15)(v19, v13, v10);
  }

  else
  {
    sub_1A524D254();
    v17 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v18);
    return (*(v11 + 32))(v19, v13, v10);
  }
}

void sub_1A442D71C(uint64_t a1)
{
  v2 = *(a1 + 48);
  LOBYTE(aBlock) = *(a1 + 40);
  v15 = v2;
  sub_1A3C69B6C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  v3 = sub_1A524B6A4();
  if ((v20 & 1) == 0)
  {
    v4 = *a1;
    v5 = MEMORY[0x1E69E7D40];
    v6 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))(v3);
    if (v6)
    {
      v7 = v6;
      v8 = (*((*v5 & *v4) + 0x98))();
      if (v8)
      {
        v10 = v8;
        v11 = v9;
        v12 = swift_allocObject();
        *(v12 + 16) = v10;
        *(v12 + 24) = v11;
        v18 = sub_1A4433284;
        v19 = v12;
        aBlock = MEMORY[0x1E69E9820];
        v15 = 1107296256;
        v16 = sub_1A4043B58;
        v17 = &block_descriptor_116;
        v13 = _Block_copy(&aBlock);

        [v7 completeOptionSelectionActionWithCompletionHandler_];
        swift_unknownObjectRelease();
        _Block_release(v13);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1A442D8C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v39 = *(a1 - 8);
  v38 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v37 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5249C44();
  v5 = *(v4 - 8);
  v34 = v4;
  v35 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44301DC();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v2;
  sub_1A4430380();
  sub_1A4430504();
  v14 = v13;
  sub_1A4430AD4();
  v16 = v15;
  sub_1A4430608();
  v18 = v17;
  sub_1A44306DC();
  v20 = v19;
  v21 = sub_1A5249904();
  v22 = sub_1A443005C(&qword_1EB13A6F0, sub_1A44306DC);
  v41 = v20;
  v42 = v21;
  v43 = v22;
  v44 = MEMORY[0x1E697C750];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v18;
  v42 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = sub_1A443005C(&qword_1EB13A700, sub_1A4430AD4);
  v41 = v14;
  v42 = v16;
  v43 = v24;
  v44 = v25;
  swift_getOpaqueTypeConformance2();
  sub_1A5248474();
  sub_1A5249C34();
  sub_1A443005C(&qword_1EB13A708, sub_1A44301DC);
  sub_1A443005C(&qword_1EB13A710, MEMORY[0x1E697C938]);
  v26 = v36;
  v27 = v34;
  sub_1A524A864();
  (*(v35 + 8))(v7, v27);
  (*(v10 + 8))(v12, v9);
  v28 = v37;
  sub_1A4432BCC(v33[1], v37, type metadata accessor for SuggestLessPeopleOptionSelectionView);
  v29 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v30 = swift_allocObject();
  sub_1A44329DC(v28, v30 + v29, type metadata accessor for SuggestLessPeopleOptionSelectionView);
  sub_1A4430D90(0, &qword_1EB13A718, sub_1A4430BBC);
  v32 = (v26 + *(v31 + 36));
  *v32 = 0;
  v32[1] = 0;
  v32[2] = sub_1A4433288;
  v32[3] = v30;
}

void sub_1A442DD50(uint64_t a1@<X8>)
{
  v3[9] = a1;
  v1 = type metadata accessor for SuggestLessPeopleOptionSelectionRowView(0);
  v3[6] = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3[7] = v2;
  v3[8] = v3 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[5] = sub_1A5249314();
  v4 = 1;
  sub_1A5249584();
  v5 = 1;
  sub_1A442E3E4();
}

void sub_1A442E3E4()
{
  v0 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A442E6FC(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v4 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247B34();
  sub_1A4432BCC(v1, &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CancelButton);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  sub_1A44329DC(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for CancelButton);
  return MEMORY[0x1A5906A80](v6, sub_1A4432774, v8);
}

uint64_t sub_1A442E86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_1A5242D14();
  v4 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27[-v7];
  v32 = sub_1A5249314();
  LOBYTE(v53) = 1;
  v29 = a1;
  sub_1A442ECDC(a1, &v36);
  v9 = v36;
  v10 = BYTE8(v36);
  type metadata accessor for OptionListHeader(0);
  sub_1A524BC74();
  sub_1A52481F4();
  LOBYTE(v44[0]) = v10;
  LOBYTE(v34[0]) = BYTE8(v36);
  v33[0] = BYTE8(v37);
  *&v58 = 0;
  BYTE8(v58) = 1;
  *&v59 = v9;
  BYTE8(v59) = v10;
  *&v60 = v36;
  BYTE8(v60) = BYTE8(v36);
  *&v61 = v37;
  BYTE8(v61) = BYTE8(v37);
  v62[0] = v38;
  *&v62[1] = 0;
  BYTE8(v62[1]) = 1;
  v63 = 0;
  v64 = 1;
  v65 = v9;
  v66 = v10;
  v67 = v36;
  v68 = BYTE8(v36);
  v69 = v37;
  v70 = BYTE8(v37);
  v71 = v38;
  v72 = 0;
  v73 = 1;
  sub_1A4432BCC(&v58, &v36, sub_1A4431364);
  sub_1A443017C(&v63, sub_1A4431364);
  *(&v52[2] + 7) = v60;
  *(&v52[3] + 7) = v61;
  *(&v52[4] + 7) = v62[0];
  v52[5] = *(v62 + 9);
  *(v52 + 7) = v58;
  *(&v52[1] + 7) = v59;
  v28 = v53;
  sub_1A3D61808(v8);
  v11 = v30;
  v12 = v31;
  (*(v4 + 104))(v30, *MEMORY[0x1E69C2210], v31);
  sub_1A5242D04();
  v13 = *(v4 + 8);
  v13(v11, v12);
  v13(v8, v12);
  sub_1A524BC74();
  sub_1A52481F4();
  v14 = v53;
  v15 = v54;
  v16 = v55;
  v17 = v56;
  v33[136] = 1;
  v33[128] = v54;
  v33[120] = v56;
  v18 = v32;
  v34[0] = v32;
  v34[1] = 0;
  v19 = v28;
  v35[0] = v28;
  *&v35[1] = v52[0];
  *&v35[49] = v52[3];
  *&v35[33] = v52[2];
  *&v35[65] = v52[4];
  *&v35[81] = v52[5];
  *&v35[17] = v52[1];
  v39 = *&v35[32];
  v38 = *&v35[16];
  v37 = *v35;
  v36 = v32;
  LOBYTE(v43) = HIBYTE(v52[5]);
  v42 = *&v35[80];
  v41 = *&v35[64];
  v40 = *&v35[48];
  v20 = v32;
  v21 = *v35;
  v22 = *&v35[32];
  *(a2 + 32) = *&v35[16];
  *(a2 + 48) = v22;
  *a2 = v20;
  *(a2 + 16) = v21;
  v23 = v40;
  v24 = v42;
  v25 = v43;
  *(a2 + 80) = v41;
  *(a2 + 96) = v24;
  *(a2 + 64) = v23;
  *(a2 + 112) = v25;
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  *(a2 + 136) = v14;
  *(a2 + 144) = v15;
  *(a2 + 152) = v16;
  *(a2 + 160) = v17;
  *(a2 + 168) = v57;
  v44[0] = v18;
  v44[1] = 0;
  v45 = v19;
  v47 = v52[1];
  v46 = v52[0];
  v51 = v52[5];
  v50 = v52[4];
  v49 = v52[3];
  v48 = v52[2];
  sub_1A4432BCC(v34, v33, sub_1A44312D0);
  return sub_1A443017C(v44, sub_1A44312D0);
}

void sub_1A442ECDC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524B554();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5243454();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + *(type metadata accessor for OptionListHeader(0) + 20));
  if (v12)
  {
    (*(v9 + 104))(v11, *MEMORY[0x1E69C24B0], v8);
    v13 = v12;
    sub_1A524B534();
    (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
    v14 = sub_1A524B5C4();

    (*(v5 + 8))(v7, v4);
    v17 = v14;
    v18 = 0;

    sub_1A5249744();
  }

  else
  {
    v15 = [objc_opt_self() placeholderTextColor];
    v17 = sub_1A524B284();
    v18 = 1;
    sub_1A5249744();
  }

  v16 = v20;
  *a2 = v19;
  *(a2 + 8) = v16;
}

double sub_1A442EF80@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249574();
  v26 = 1;
  sub_1A442E86C(v2, &v13);
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v39[8] = v21;
  v39[9] = v22;
  v39[10] = v23;
  v39[4] = v17;
  v39[5] = v18;
  v39[6] = v19;
  v39[7] = v20;
  v39[0] = v13;
  v39[1] = v14;
  v38 = v24;
  v40 = v24;
  v39[2] = v15;
  v39[3] = v16;
  sub_1A4432BCC(&v27, v12, sub_1A4431200);
  sub_1A443017C(v39, sub_1A4431200);
  *(&v25[8] + 7) = v35;
  *(&v25[9] + 7) = v36;
  *(&v25[10] + 7) = v37;
  *(&v25[11] + 7) = v38;
  *(&v25[4] + 7) = v31;
  *(&v25[5] + 7) = v32;
  *(&v25[6] + 7) = v33;
  *(&v25[7] + 7) = v34;
  *(v25 + 7) = v27;
  *(&v25[1] + 7) = v28;
  *(&v25[2] + 7) = v29;
  *(&v25[3] + 7) = v30;
  v5 = v25[9];
  *(a1 + 145) = v25[8];
  *(a1 + 161) = v5;
  *(a1 + 177) = v25[10];
  *(a1 + 192) = *(&v25[10] + 15);
  v6 = v25[5];
  *(a1 + 81) = v25[4];
  *(a1 + 97) = v6;
  v7 = v25[7];
  *(a1 + 113) = v25[6];
  *(a1 + 129) = v7;
  v8 = v25[1];
  *(a1 + 17) = v25[0];
  *(a1 + 33) = v8;
  result = *&v25[2];
  v10 = v25[3];
  *(a1 + 49) = v25[2];
  v11 = v26;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 65) = v10;
  return result;
}

void sub_1A442F17C(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v118 = a2;
  v106 = sub_1A5249E64();
  v108 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v103 = v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OptionListFooter(0);
  v5 = v4 - 8;
  v100 = *(v4 - 8);
  v99[1] = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v99[0] = v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4431860();
  v104 = v7;
  v105 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v101 = v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A443168C(0, &qword_1EB13A810, sub_1A4431700, sub_1A3E42C88);
  v107 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9 - 8);
  v102 = v99 - v10;
  sub_1A44315DC();
  v110 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v115 = v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4431550();
  v114 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v117 = v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v113 = v99 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v116 = v99 - v18;
  v19 = sub_1A52407E4();
  v20 = MEMORY[0x1EEE9AC00](v19);
  (*(v22 + 16))(v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), &a1[*(v5 + 32)], v20);
  v23 = sub_1A524A454();
  v25 = v24;
  v27 = v26;
  sub_1A524A254();
  v28 = sub_1A524A3C4();
  v30 = v29;
  v32 = v31;

  sub_1A3E04DF4(v23, v25, v27 & 1);

  sub_1A524B4A4();
  v33 = sub_1A524A364();
  v112 = v34;
  v109 = v35;
  v111 = v36;

  sub_1A3E04DF4(v28, v30, v32 & 1);

  v37 = a1;
  v38 = a1;
  v39 = v99[0];
  sub_1A4432BCC(v37, v99[0], type metadata accessor for OptionListFooter);
  v40 = (*(v100 + 80) + 16) & ~*(v100 + 80);
  v41 = swift_allocObject();
  sub_1A44329DC(v39, v41 + v40, type metadata accessor for OptionListFooter);
  sub_1A439D5EC();
  sub_1A4431918();
  v42 = v101;
  sub_1A524B704();
  v43 = v103;
  sub_1A5249E54();
  sub_1A443005C(&qword_1EB13A840, sub_1A4431860);
  sub_1A443005C(&qword_1EB127A50, MEMORY[0x1E697CB70]);
  v44 = v102;
  v45 = v104;
  v46 = v106;
  sub_1A524A934();
  (*(v108 + 8))(v43, v46);
  (*(v105 + 8))(v42, v45);
  LOBYTE(v23) = sub_1A524A074();
  sub_1A5247BC4();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_1A4431734(0);
  v56 = &v44[*(v55 + 36)];
  *v56 = v23;
  *(v56 + 1) = v48;
  *(v56 + 2) = v50;
  *(v56 + 3) = v52;
  *(v56 + 4) = v54;
  v56[40] = 0;
  sub_1A4431700(0);
  v58 = &v44[*(v57 + 36)];
  sub_1A3E74608(0);
  v60 = *(v59 + 28);
  v61 = *MEMORY[0x1E697DC10];
  v62 = sub_1A5247E14();
  (*(*(v62 - 8) + 104))(v58 + v60, v61, v62);
  *v58 = swift_getKeyPath();
  v63 = v44;
  v64 = &v44[*(v107 + 44)];
  v65 = *(sub_1A5248A14() + 20);
  v66 = *MEMORY[0x1E697F468];
  v67 = sub_1A52494A4();
  (*(*(v67 - 8) + 104))(&v64[v65], v66, v67);
  __asm { FMOV            V0.2D, #14.0 }

  *v64 = _Q0;
  sub_1A3E42C88();
  *&v64[*(v73 + 36)] = 256;
  v74 = v38;
  v75 = *v38;
  v76 = *(v74 + 1);
  v77 = *(v74 + 2);
  v78 = *(v74 + 3);
  v121 = v75;
  v122 = v76;
  v123 = v77;
  v124 = v78;
  sub_1A3C69B6C(0, &qword_1EB13A730, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  v80 = v79;
  MEMORY[0x1A5906C60](&v119);
  if (v119 || v120 != 0xE000000000000000)
  {
    v82 = sub_1A524EAB4();

    if (v82)
    {
      v81 = sub_1A524B3D4();
    }

    else
    {
      v81 = sub_1A524B3C4();
    }
  }

  else
  {

    v81 = sub_1A524B3D4();
  }

  v83 = v81;
  v84 = v115;
  KeyPath = swift_getKeyPath();
  v121 = v83;
  v86 = sub_1A5248204();
  sub_1A3CFCE8C(v63, v84);
  v87 = (v84 + *(v110 + 36));
  *v87 = KeyPath;
  v87[1] = v86;
  v121 = v75;
  v122 = v76;
  v123 = v77;
  v124 = v78;
  MEMORY[0x1A5906C60](&v119, v80);
  if (v119 || v120 != 0xE000000000000000)
  {
    v88 = sub_1A524EAB4();
  }

  else
  {

    v88 = 1;
  }

  v89 = swift_getKeyPath();
  v90 = swift_allocObject();
  *(v90 + 16) = v88 & 1;
  v91 = v113;
  sub_1A4432AE4(v84, v113, sub_1A44315DC);
  v92 = (v91 + *(v114 + 36));
  *v92 = v89;
  v92[1] = sub_1A3E07024;
  v92[2] = v90;
  v93 = v116;
  sub_1A4432AE4(v91, v116, sub_1A4431550);
  v94 = v117;
  sub_1A3CFCF30(v93, v117);
  v95 = v118;
  v97 = v111;
  v96 = v112;
  *v118 = v33;
  v95[1] = v96;
  LOBYTE(v89) = v109 & 1;
  *(v95 + 16) = v109 & 1;
  v95[3] = v97;
  v95[4] = 0;
  *(v95 + 40) = 1;
  sub_1A44314E0();
  sub_1A3CFCF30(v94, v95 + *(v98 + 64));
  sub_1A3E75E68(v33, v96, v89);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

__n128 sub_1A442FBA8@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524C634();
  v3 = PXLocalizedString(v2);

  v4 = sub_1A524C674();
  v6 = v5;

  *&v17 = v4;
  *(&v17 + 1) = v6;
  sub_1A3D5F9DC();
  v7 = sub_1A524A464();
  v9 = v8;
  LOBYTE(v6) = v10;
  v12 = v11;
  sub_1A524BC74();
  sub_1A5248AD4();
  v13 = v6 & 1;
  v14 = sub_1A524A264();
  KeyPath = swift_getKeyPath();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v13;
  *(a1 + 24) = v12;
  *(a1 + 96) = v21;
  *(a1 + 112) = v22;
  *(a1 + 128) = v23;
  *(a1 + 32) = v17;
  *(a1 + 48) = v18;
  result = v20;
  *(a1 + 64) = v19;
  *(a1 + 80) = v20;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v14;
  return result;
}

void sub_1A442FCF0(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5242D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1A3D61808(&v14 - v9);
  (*(v5 + 104))(v7, *MEMORY[0x1E69C2210], v4);
  v11 = sub_1A5242D04();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = (v11 & 1) == 0;
  sub_1A4432C3C(0, &qword_1EB13A7E8, sub_1A44314AC);
  sub_1A442F17C(v2, (a1 + *(v13 + 44)));
}

id sub_1A442FE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  v8 = &v4[OBJC_IVAR____TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController_completionHandler];
  *v8 = 0;
  v8[1] = 0;
  *&v4[OBJC_IVAR____TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController_people] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v9 = *v8;
  *v8 = a3;
  v8[1] = a4;

  sub_1A3C33378(v9);
  v11.receiver = v4;
  v11.super_class = type metadata accessor for SuggestLessPeopleOptionSelectionViewController();
  return objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1A442FFC8()
{
  if (!qword_1EB13A650)
  {
    type metadata accessor for SuggestLessPeopleOptionSelectionView(255);
    sub_1A443005C(&qword_1EB13A658, type metadata accessor for SuggestLessPeopleOptionSelectionView);
    v0 = type metadata accessor for PXSwiftUIHostingViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A650);
    }
  }
}

uint64_t sub_1A443005C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A44300F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A443017C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A44301DC()
{
  if (!qword_1EB13A680)
  {
    sub_1A4430380();
    sub_1A4430504();
    sub_1A4430AD4();
    sub_1A4430608();
    sub_1A44306DC();
    sub_1A5249904();
    sub_1A443005C(&qword_1EB13A6F0, sub_1A44306DC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A443005C(&qword_1EB13A700, sub_1A4430AD4);
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A680);
    }
  }
}

void sub_1A4430380()
{
  if (!qword_1EB13A688)
  {
    sub_1A4430504();
    sub_1A4430AD4();
    sub_1A4430608();
    sub_1A44306DC();
    sub_1A5249904();
    sub_1A443005C(&qword_1EB13A6F0, sub_1A44306DC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A443005C(&qword_1EB13A700, sub_1A4430AD4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A688);
    }
  }
}

void sub_1A4430504()
{
  if (!qword_1EB13A690)
  {
    sub_1A4430608();
    sub_1A44306DC();
    sub_1A5249904();
    sub_1A443005C(&qword_1EB13A6F0, sub_1A44306DC);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A690);
    }
  }
}

void sub_1A4430608()
{
  if (!qword_1EB13A698)
  {
    sub_1A44306DC();
    sub_1A5249904();
    sub_1A443005C(&qword_1EB13A6F0, sub_1A44306DC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A698);
    }
  }
}

void sub_1A44306DC()
{
  if (!qword_1EB13A6A0)
  {
    sub_1A443075C();
    sub_1A4430938();
    v0 = sub_1A524A2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A6A0);
    }
  }
}

void sub_1A443075C()
{
  if (!qword_1EB13A6A8)
  {
    type metadata accessor for OptionListHeader(255);
    sub_1A44307FC();
    type metadata accessor for OptionListFooter(255);
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A6A8);
    }
  }
}

void sub_1A44307FC()
{
  if (!qword_1EB13A6B0)
  {
    sub_1A44308C4(255);
    type metadata accessor for SuggestLessPeopleOptionSelectionRowView(255);
    sub_1A443005C(&qword_1EB13A6C0, sub_1A44308C4);
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A6B0);
    }
  }
}

unint64_t sub_1A4430938()
{
  result = qword_1EB13A6C8;
  if (!qword_1EB13A6C8)
  {
    sub_1A443075C();
    sub_1A443005C(&qword_1EB13A6D0, type metadata accessor for OptionListHeader);
    sub_1A4430A2C();
    sub_1A443005C(&qword_1EB13A6E8, type metadata accessor for OptionListFooter);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A6C8);
  }

  return result;
}

unint64_t sub_1A4430A2C()
{
  result = qword_1EB13A6D8;
  if (!qword_1EB13A6D8)
  {
    sub_1A44307FC();
    sub_1A443005C(&qword_1EB13A6E0, type metadata accessor for SuggestLessPeopleOptionSelectionRowView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A6D8);
  }

  return result;
}

void sub_1A4430AD4()
{
  if (!qword_1EB13A6F8)
  {
    type metadata accessor for CancelButton(255);
    sub_1A4430B58();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A6F8);
    }
  }
}

unint64_t sub_1A4430B58()
{
  result = qword_1EB1C0FA0[0];
  if (!qword_1EB1C0FA0[0])
  {
    type metadata accessor for CancelButton(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C0FA0);
  }

  return result;
}

void sub_1A4430BBC()
{
  if (!qword_1EB13A720)
  {
    sub_1A44301DC();
    sub_1A5249C44();
    sub_1A443005C(&qword_1EB13A708, sub_1A44301DC);
    sub_1A443005C(&qword_1EB13A710, MEMORY[0x1E697C938]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A720);
    }
  }
}

void sub_1A4430CF4()
{
  if (!qword_1EB13A740)
  {
    sub_1A40745F4();
    sub_1A4430D90(255, &qword_1EB13A748, sub_1A43D3010);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13A740);
    }
  }
}

void sub_1A4430D90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4430DF4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A3C69B6C(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A4430E60()
{
  v1 = type metadata accessor for SuggestLessPeopleOptionSelectionRowView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  v3 = (v2 + *(v1 + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v15 = *v3;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  sub_1A3C69B6C(0, &qword_1EB13A730, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v13);
  v9 = *v2;
  v8 = v2[1];
  if (v13 == *v2 && v14 == v8)
  {
  }

  else
  {
    v11 = sub_1A524EAB4();

    if ((v11 & 1) == 0)
    {
      v15 = v4;
      v16 = v5;
      v17 = v6;
      v18 = v7;
      v13 = v9;
      v14 = v8;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v13 = 0;
  v14 = 0xE000000000000000;
  return sub_1A524B904();
}

void sub_1A4430FE0()
{
  if (!qword_1EB13A758)
  {
    sub_1A4430CC0(255);
    sub_1A443005C(&qword_1EB13A760, sub_1A4430CC0);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A758);
    }
  }
}

unint64_t sub_1A4431074()
{
  result = qword_1EB13A768;
  if (!qword_1EB13A768)
  {
    sub_1A4430FAC(255);
    sub_1A443005C(&unk_1EB13A770, sub_1A4430FE0);
    sub_1A443005C(&qword_1EB127C80, sub_1A3F330A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A768);
  }

  return result;
}

void sub_1A443117C()
{
  if (!qword_1EB13A788)
  {
    sub_1A4430FAC(255);
    sub_1A4431074();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A788);
    }
  }
}

void sub_1A4431234()
{
  if (!qword_1EB13A7A0)
  {
    sub_1A44312D0();
    sub_1A44318C4(255, &qword_1EB1284E0, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13A7A0);
    }
  }
}

void sub_1A44312D0()
{
  if (!qword_1EB13A7A8)
  {
    sub_1A4431364(255);
    sub_1A443005C(&unk_1EB13A7D8, sub_1A4431364);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A7A8);
    }
  }
}

void sub_1A4431398()
{
  if (!qword_1EB13A7B8)
  {
    sub_1A4430D90(255, &unk_1EB13A7C0, sub_1A4431428);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13A7B8);
    }
  }
}

void sub_1A4431428()
{
  if (!qword_1EB142340)
  {
    sub_1A44318C4(255, &qword_1EB13A7D0, MEMORY[0x1E6981748], MEMORY[0x1E69815C0], MEMORY[0x1E697F960]);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142340);
    }
  }
}

void sub_1A44314E0()
{
  if (!qword_1EB13A7F8)
  {
    sub_1A4431550();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13A7F8);
    }
  }
}

void sub_1A4431550()
{
  if (!qword_1EB13A800)
  {
    sub_1A44315DC();
    sub_1A3C69B6C(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A800);
    }
  }
}

void sub_1A44315DC()
{
  if (!qword_1EB13A808)
  {
    sub_1A443168C(255, &qword_1EB13A810, sub_1A4431700, sub_1A3E42C88);
    sub_1A4430DF4(255, &qword_1EB127868, &qword_1EB128960, MEMORY[0x1E697E0B8]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A808);
    }
  }
}

void sub_1A443168C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A443175C()
{
  if (!qword_1EB13A828)
  {
    sub_1A4431860();
    sub_1A5249E64();
    sub_1A443005C(&qword_1EB13A840, sub_1A4431860);
    sub_1A443005C(&qword_1EB127A50, MEMORY[0x1E697CB70]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A828);
    }
  }
}

void sub_1A4431860()
{
  if (!qword_1EB13A830)
  {
    sub_1A439D5EC();
    sub_1A4431918();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A830);
    }
  }
}

void sub_1A44318C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A4431918()
{
  result = qword_1EB13A838;
  if (!qword_1EB13A838)
  {
    sub_1A439D5EC();
    sub_1A410BDB4();
    sub_1A3F96350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A838);
  }

  return result;
}

uint64_t sub_1A4431AF8()
{
  result = sub_1A52407E4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1A4431B9C()
{
  sub_1A3C52C70(319, &qword_1EB1265C0);
  if (v0 <= 0x3F)
  {
    sub_1A4431C48();
    if (v1 <= 0x3F)
    {
      sub_1A44300C4(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A4431C48()
{
  if (!qword_1EB13A8B0)
  {
    sub_1A3CB6988(255, &unk_1EB13A8B8, &qword_1EB13A648, 0x1E696AEE0, MEMORY[0x1E69E62F8]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A8B0);
    }
  }
}

void sub_1A4431CF4()
{
  type metadata accessor for SuggestLessPeopleOptionSelectionViewController();
  sub_1A3CB6988(319, &qword_1EB120BF0, &qword_1EB1265C0, 0x1E6978980, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1A3C69B6C(319, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1A3C69B6C(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1A44300F8(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A4431F10();
          if (v4 <= 0x3F)
          {
            sub_1A44300F8(319, &unk_1EB124680, sub_1A3E316EC, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for CGSize(319);
              if (v6 <= 0x3F)
              {
                sub_1A3C52C70(319, &qword_1EB1265C0);
                if (v7 <= 0x3F)
                {
                  sub_1A4431C48();
                  if (v8 <= 0x3F)
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
  }
}

void sub_1A4431F10()
{
  if (!qword_1EB13A8C8)
  {
    type metadata accessor for FaceCropImageManager(255);
    sub_1A443005C(&qword_1EB13A640, type metadata accessor for FaceCropImageManager);
    v0 = sub_1A52484C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A8C8);
    }
  }
}

void sub_1A4431FCC()
{
  type metadata accessor for SuggestLessPeopleOption(319);
  if (v0 <= 0x3F)
  {
    sub_1A3C69B6C(319, &qword_1EB13A730, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A443209C()
{
  sub_1A44300F8(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A3CB6988(319, &qword_1EB126620, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A44321BC()
{
  sub_1A3C69B6C(319, &qword_1EB13A730, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1A44300F8(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A52407E4();
      if (v2 <= 0x3F)
      {
        sub_1A44300F8(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A44322F4()
{
  result = qword_1EB13A8D0;
  if (!qword_1EB13A8D0)
  {
    sub_1A4430D90(255, &qword_1EB13A718, sub_1A4430BBC);
    sub_1A44301DC();
    sub_1A5249C44();
    sub_1A443005C(&qword_1EB13A708, sub_1A44301DC);
    sub_1A443005C(&qword_1EB13A710, MEMORY[0x1E697C938]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A8D0);
  }

  return result;
}

unint64_t sub_1A4432448()
{
  result = qword_1EB13A8D8;
  if (!qword_1EB13A8D8)
  {
    sub_1A4430D90(255, &qword_1EB13A790, sub_1A4431154);
    sub_1A44324EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A8D8);
  }

  return result;
}

unint64_t sub_1A44324EC()
{
  result = qword_1EB13A8E0;
  if (!qword_1EB13A8E0)
  {
    sub_1A4431154(255);
    sub_1A4430FAC(255);
    sub_1A4431074();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A8E0);
  }

  return result;
}

void sub_1A443259C()
{
  if (!qword_1EB13A8F0)
  {
    sub_1A4431200(255);
    sub_1A443005C(&qword_1EB13A8F8, sub_1A4431200);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A8F0);
    }
  }
}

void sub_1A4432630()
{
  if (!qword_1EB13A908)
  {
    sub_1A44314AC(255);
    sub_1A443005C(&qword_1EB13A910, sub_1A44314AC);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A908);
    }
  }
}

uint64_t sub_1A44326EC()
{
  result = sub_1A5248284();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t objectdestroy_6Tm_0()
{
  v1 = type metadata accessor for SuggestLessPeopleOptionSelectionView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v3 = v1[8];
  sub_1A44300F8(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5248284();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1A3EF9960(*(v2 + v1[10]), *(v2 + v1[10] + 8), *(v2 + v1[10] + 16), *(v2 + v1[10] + 17));

  return swift_deallocObject();
}

void sub_1A443297C()
{
  v1 = *(type metadata accessor for SuggestLessPeopleOptionSelectionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1A442D71C(v2);
}

uint64_t sub_1A44329DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4432A44()
{
  v1 = type metadata accessor for OptionListFooter(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v0 + *(result + 36) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (v4)
  {

    v4(v5);

    return sub_1A3C33378(v4);
  }

  return result;
}

uint64_t sub_1A4432AE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4432B4C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A44300F8(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4432BCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A4432C3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4432CA8()
{
  v1 = *(type metadata accessor for SuggestLessPeopleOptionSelectionView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_1A442CE58(v2);
}

__n128 sub_1A4432D10@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for SuggestLessPeopleOptionSelectionView(0);
  sub_1A4432BCC(a1, a2, type metadata accessor for SuggestLessPeopleOption);
  sub_1A3C69B6C(0, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v4 = (a2 + *(type metadata accessor for SuggestLessPeopleOptionSelectionRowView(0) + 20));
  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v7;
  v4[1].n128_u64[1] = v8;
  return result;
}

void sub_1A4432E10()
{
  v1 = *(type metadata accessor for SuggestLessPeopleOptionSelectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for SuggestLessPeopleOptionsDataSource(0);
  swift_projectBox();
  v5 = *(v3 + 48);
  LOBYTE(v23) = *(v3 + 40);
  v24 = v5;
  LOBYTE(v29) = 1;
  v6 = MEMORY[0x1E6981790];
  sub_1A3C69B6C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v23 = v7;
  v24 = v8;
  v25 = v9;
  sub_1A3C69B6C(0, &unk_1EB13A670, MEMORY[0x1E69E6158], v6);
  sub_1A524B6A4();
  if (v29 || v30 != 0xE000000000000000)
  {
    v11 = sub_1A524EAB4();

    if ((v11 & 1) == 0)
    {
      v23 = v7;
      v24 = v8;
      v25 = v9;
      sub_1A524B6A4();
      swift_beginAccess();
      sub_1A442C07C();
    }
  }

  else
  {
  }

  v12 = MEMORY[0x1E69E7D40];
  v13 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x80))(v10);
  if (v13)
  {
    v16 = v13;
    v17 = (*((*v12 & *v4) + 0x98))(v13, v14, v15);
    if (v17)
    {
      v19 = v17;
      v20 = v18;
      v21 = swift_allocObject();
      *(v21 + 16) = v19;
      *(v21 + 24) = v20;
      v27 = sub_1A4433284;
      v28 = v21;
      v23 = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = sub_1A4043B58;
      v26 = &block_descriptor_140;
      v22 = _Block_copy(&v23);

      [v16 completeOptionSelectionActionWithCompletionHandler_];
      swift_unknownObjectRelease();
      _Block_release(v22);
    }

    else
    {
      __break(1u);
      __break(1u);
    }
  }
}

void sub_1A44332A0(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  sub_1A52458F4();
}

unint64_t sub_1A44333D0@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = (*v2 + 32 * result);
  v5 = v3[4];
  v4 = v3[5];
  v7 = v3[6];
  v6 = v3[7];
  *a2 = v5;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v6;
  v8 = v6;
  v9 = v5;
  swift_unknownObjectRetain();

  return swift_unknownObjectRetain();
}

unint64_t sub_1A443345C()
{
  result = qword_1EB13A920;
  if (!qword_1EB13A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A920);
  }

  return result;
}

unint64_t sub_1A44334B4()
{
  result = qword_1EB13A928;
  if (!qword_1EB13A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A928);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore17SharedWithYouItemVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t static PeopleNamingUtilities.items(for:photoLibrary:detectionType:)(unint64_t a1, uint64_t a2, void *a3, __int16 a4)
{
  v5 = v4;
  v10 = sub_1A52404F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = a1;
  v60 = a2;
  sub_1A5240474();
  sub_1A3D5F9DC();
  v14 = MEMORY[0x1E69E6158];
  v15 = sub_1A524DFB4();
  v17 = v16;
  (*(v11 + 8))(v13, v10);
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = [a3 librarySpecificFetchOptions];
    sub_1A3C52C70(0, &qword_1EB126D20);
    sub_1A4434518(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1A52FC9F0;
    *(v20 + 56) = v14;
    v21 = sub_1A3D710E8();
    v22 = MEMORY[0x1E69E6530];
    v23 = MEMORY[0x1E69E65A8];
    strcpy((v20 + 32), "verifiedType");
    *(v20 + 45) = 0;
    *(v20 + 46) = -5120;
    *(v20 + 96) = v22;
    *(v20 + 104) = v23;
    *(v20 + 64) = v21;
    *(v20 + 72) = 1;
    v24 = sub_1A524D134();
    [v19 setPredicate_];

    sub_1A3CB8F68();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1A52F9790;
    v26 = a4;
    *(v25 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
    sub_1A3C52C70(0, &qword_1EB126610);
    v27 = sub_1A524CA14();

    [v19 setIncludedDetectionTypes_];

    v28 = [objc_opt_self() fetchPersonsWithOptions_];
    v58 = v28;
    v29 = [v28 fetchedObjects];
    v30 = MEMORY[0x1E69E7CC0];
    if (v29)
    {
      v31 = v29;
      sub_1A3C52C70(0, &qword_1EB1265C0);
      v32 = sub_1A524CA34();

      v57 = _s12PhotosUICore21PeopleNamingUtilitiesC10peopleInfo3for12searchStringSayAA0cD4ItemCG11personItems_ShySSG24linkedContactIdentifierstSaySo8PHPersonCG_SStFZ_0(v32, v15, v17);
      v34 = v33;
    }

    else
    {
      v34 = MEMORY[0x1E69E7CD0];
      v57 = MEMORY[0x1E69E7CC0];
    }

    v65 = v30;
    v36 = objc_opt_self();
    if ([v36 isDetectionTypeHuman_])
    {
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1A52FF960;
      v38 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
      v39 = *MEMORY[0x1E695C208];
      *(v37 + 32) = v38;
      *(v37 + 40) = v39;
      v40 = *MEMORY[0x1E695C330];
      *(v37 + 48) = *MEMORY[0x1E695C330];
      v41 = objc_allocWithZone(MEMORY[0x1E695CD78]);
      sub_1A4049B80();
      v42 = v39;
      v43 = v40;
      v44 = sub_1A524CA14();

      v45 = [v41 initWithKeysToFetch_];

      v46 = objc_opt_self();
      v47 = sub_1A524C634();
      v48 = [v46 predicateForContactsMatchingName_];

      [v45 setPredicate_];
      [v45 setSortOrder_];
      v49 = [v36 sharedContactStore];
      v50 = swift_allocObject();
      v50[2] = v5;
      v50[3] = v15;
      v50[4] = v17;
      v50[5] = v34;
      v50[6] = &v65;
      v51 = swift_allocObject();
      *(v51 + 16) = sub_1A443492C;
      *(v51 + 24) = v50;
      v63 = sub_1A3D9C868;
      v64 = v51;
      aBlock = MEMORY[0x1E69E9820];
      v60 = 1107296256;
      v61 = sub_1A3D9A79C;
      v62 = &block_descriptor_185;
      _Block_copy(&aBlock);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C33378(0);

    v56 = v30;
    sub_1A4434518(0, &qword_1EB13A938, sub_1A44344E4, MEMORY[0x1E69E6F90]);
    sub_1A44344E4(0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1A52FF950;
    swift_getKeyPath();
    sub_1A5240844();
    swift_getKeyPath();
    sub_1A5240844();
    swift_getKeyPath();
    sub_1A5240844();
    aBlock = v57;
    v65 = v52;
    sub_1A4434588(0);
    sub_1A44345BC(0);
    sub_1A44345F0(&qword_1EB13A958, sub_1A4434588);
    sub_1A44345F0(&qword_1EB13A960, sub_1A44345BC);
    sub_1A44345F0(&unk_1EB13A968, sub_1A44344E4);
    v53 = sub_1A524C8F4();

    aBlock = v56;
    v65 = v52;
    v54 = sub_1A524C8F4();

    aBlock = v53;
    sub_1A4434258(v54);

    return aBlock;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

void sub_1A4433F60(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 string];
  v4 = sub_1A524C674();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1A4433FB8@<X0>(uint64_t *a1@<X8>)
{
  result = PeopleNamingItem.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static PeopleNamingUtilities.item(for:searchString:linkedContactIdentifiers:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (![a1 contactType])
  {
    v6 = [a1 identifier];
    v7 = sub_1A524C674();
    v9 = v8;

    v10 = sub_1A3C62374(v7, v9, a4);

    if ((v10 & 1) == 0)
    {
      type metadata accessor for PeopleNamingItem();
      v12 = a1;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  return 0;
}

id PeopleNamingUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeopleNamingUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PeopleNamingUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4434258(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A524E2B4();
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

  v13 = sub_1A524E2B4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3D5C1C8(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A4434348(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_1A4434348(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A524E2B4();
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
      result = sub_1A524E2B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A4434588(0);
          sub_1A44345F0(&qword_1EB13A978, sub_1A4434588);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1A3D5C268(v13, i, a3);
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
        type metadata accessor for PeopleNamingItem();
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

void sub_1A4434518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A44345F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t _s12PhotosUICore21PeopleNamingUtilitiesC10peopleInfo3for12searchStringSayAA0cD4ItemCG11personItems_ShySSG24linkedContactIdentifierstSaySo8PHPersonCG_SStFZ_0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!(result >> 62))
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1A524E2B4();
  v5 = result;
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    v15 = a3;
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1A59097F0](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 name];
      if (v9)
      {
        v10 = v9;
        sub_1A524C674();
      }

      v11 = sub_1A524C634();

      v12 = sub_1A524C634();
      v13 = [v11 px:v12 containsStringIgnoringCaseAndDiacritics:?];

      if (v13)
      {
        type metadata accessor for PeopleNamingItem();
        v14 = v8;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      ++v6;
    }

    while (v5 != v6);
    return v16;
  }

  return result;
}