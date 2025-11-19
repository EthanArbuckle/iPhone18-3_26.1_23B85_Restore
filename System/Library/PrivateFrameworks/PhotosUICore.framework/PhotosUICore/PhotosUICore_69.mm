unint64_t sub_1A44E5400()
{
  result = qword_1EB1223A0;
  if (!qword_1EB1223A0)
  {
    sub_1A44E0578(255, &qword_1EB122398, sub_1A44E02E8, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A44E54B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1223A0);
  }

  return result;
}

unint64_t sub_1A44E54B8()
{
  result = qword_1EB122450;
  if (!qword_1EB122450)
  {
    sub_1A44E02E8(255);
    sub_1A44E5570();
    sub_1A44E1678(&qword_1EB123550, sub_1A3EE1534, sub_1A3EE4B64);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122450);
  }

  return result;
}

unint64_t sub_1A44E5570()
{
  result = qword_1EB1226B0;
  if (!qword_1EB1226B0)
  {
    sub_1A44E0330(255);
    sub_1A44E03AC(255);
    sub_1A5249764();
    sub_1A44E08F0();
    sub_1A44E6248(&qword_1EB122360, MEMORY[0x1E697C658]);
    swift_getOpaqueTypeConformance2();
    sub_1A44E0BC4(255, &qword_1EB121EB0, sub_1A44E0CA4, sub_1A44E1288);
    sub_1A44E0CA4(255);
    sub_1A44E1288();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1226B0);
  }

  return result;
}

uint64_t sub_1A44E570C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A44E5774(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1A44E57F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A44E5860(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A44E58C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A44E5930(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A44E60B8(0, &qword_1EB13C8D8, sub_1A44E0FF4);
  sub_1A44E27DC(v3, a1 + *(v4 + 44));
}

uint64_t sub_1A44E5AB0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A44E5774(0, a3, a4, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroyTm_56()
{
  v1 = type metadata accessor for PhotosDetailsVisualLookupWidgetView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A52486A4();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A44E5C64()
{
  v1 = type metadata accessor for PhotosDetailsVisualLookupWidgetView();
  v2 = *(*(v0 + *(v1 + 20) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + 8) + OBJC_IVAR____TtC12PhotosUICore40PhotosDetailsVisualLookupWidgetViewModel_onTappedAction);

  v2(v3);
}

void sub_1A44E5D00(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  sub_1A44E60B8(0, &qword_1EB13C8D0, sub_1A44E07A4);
  sub_1A44E205C(v3, a1 + *(v4 + 44));
}

void sub_1A44E5E20()
{
  if (!qword_1EB1261B0)
  {
    sub_1A44E5EA0(255, &qword_1EB1267F0, type metadata accessor for AttributeName);
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1261B0);
    }
  }
}

void sub_1A44E5EA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A44E5F0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for TraitKey(255);
    v7 = v6;
    type metadata accessor for Weight(255);
    v9 = v8;
    v10 = sub_1A44E6248(&qword_1EB126878, type metadata accessor for TraitKey);
    v11 = a3(a1, v7, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1A44E5FC0(uint64_t a1, uint64_t a2)
{
  sub_1A44E5774(0, &unk_1EB1282D0, sub_1A429B9D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A44E6068(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A44E60B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A44E6124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A44E6188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A44E61E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A44E6248(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SendableTransfer.unwrapped<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[2] = *(*(a1 + 16) + 16);
  v3 = type metadata accessor for SendableTransfer();
  return sub_1A3C7BE04(sub_1A44E64B0, v6, MEMORY[0x1E69E73E0], v3, v4, a2);
}

uint64_t sub_1A44E63D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  return (*(v5 + 32))(a3, v7, a2);
}

uint64_t sub_1A44E64F4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A44E6564()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v3 = 1;
  type metadata accessor for LemonadeAlbumsViewOptionsModel();
  v1 = swift_allocObject();
  result = sub_1A44E7310(v0, &v3);
  qword_1EB163C88 = v1;
  return result;
}

uint64_t sub_1A44E65E0(void *a1, char *a2)
{
  v4 = swift_allocObject();
  sub_1A44E7310(a1, a2);
  return v4;
}

uint64_t *sub_1A44E6630()
{
  if (qword_1EB163C80 != -1)
  {
    swift_once();
  }

  return &qword_1EB163C88;
}

uint64_t static LemonadeAlbumsViewOptionsModel.shared.getter()
{
  if (qword_1EB163C80 != -1)
  {
    swift_once();
  }
}

void sub_1A44E66DC(char *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 160);
  v3((&v7 + 3));
  BYTE2(v7) = BYTE3(v7);
  BYTE1(v7) = v2;
  sub_1A44E7418();
  if ((sub_1A524C594() & 1) == 0)
  {
    v4 = v1[4];
    if (v4)
    {
      v3(&v7);
      v5 = LemonadeAlbumCellStyle.rawValue.getter();
      v6 = sub_1A524C634();
      [v4 setInteger:v5 forKey:v6];
    }
  }
}

void (*sub_1A44E67C8(uint64_t a1))(_BYTE *a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return sub_1A44E67F4;
}

void sub_1A44E67F4(_BYTE *a1, char a2)
{
  v2 = *(*a1 + 16);
  *(*a1 + 16) = a1[8];
  if (a2)
  {
    v4 = v2;
    v3 = &v4;
  }

  else
  {
    v5 = v2;
    v3 = &v5;
  }

  sub_1A44E66DC(v3);
}

void *sub_1A44E6844@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A44E68A0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 168))(&v4);
}

uint64_t sub_1A44E68F8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 304))();

  *a1 = v1[16];
  return result;
}

void sub_1A44E696C(char *a1)
{
  v2 = *a1;
  v6[16] = v1[16];
  v6[15] = v2;
  sub_1A44E7418();
  if (sub_1A524C594())
  {
    v3 = v1[16];
    v1[16] = v2;
    v6[0] = v3;
    sub_1A44E66DC(v6);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 312))(v5);
  }
}

void (*sub_1A44E6A9C(uint64_t *a1))(void *a1)
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
  (*(*v1 + 304))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore30LemonadeAlbumsViewOptionsModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A44E74B8();
  sub_1A52415F4();

  v4[7] = sub_1A44E67C8(v4);
  return sub_1A44E6BBC;
}

uint64_t sub_1A44E6C30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A44E6CC8()
{
  swift_getKeyPath();
  (*(*v0 + 304))();

  swift_beginAccess();
  return v0[18];
}

uint64_t sub_1A44E6D48(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[18] == v2)
  {
    v1[18] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 312))(v5);
  }

  return result;
}

void (*sub_1A44E6E44(uint64_t *a1))(void *a1)
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
  (*(*v1 + 304))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore30LemonadeAlbumsViewOptionsModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A44E74B8();
  sub_1A52415F4();

  v4[7] = sub_1A44E6BE0();
  return sub_1A44E6F64;
}

void *sub_1A44E6F7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 264))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A44E6FE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 272))(&v4);
}

uint64_t sub_1A44E7040@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 304))();

  result = swift_beginAccess();
  *a1 = v1[3];
  return result;
}

uint64_t sub_1A44E70D0(uint64_t *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (v1[3] != v2)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 312))(v5);
  }

  return result;
}

void (*sub_1A44E71C0(uint64_t *a1))(void *a1)
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
  (*(*v1 + 304))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore30LemonadeAlbumsViewOptionsModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A44E74B8();
  sub_1A52415F4();

  v4[7] = sub_1A3DE36A4();
  return sub_1A44E72E0;
}

uint64_t sub_1A44E7310(void *a1, char *a2)
{
  v4 = *a2;
  *(v2 + 18) = 0;
  *(v2 + 24) = 3;
  *(v2 + 40) = 0xD000000000000028;
  *(v2 + 48) = 0x80000001A53DA380;
  sub_1A5241604();
  *(v2 + 32) = a1;
  if (a1)
  {
    v5 = a1;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  LemonadeAlbumCellStyle.init(rawValue:)(0);

  v6 = v8;
  if (v8 == 2)
  {
    v6 = v4;
  }

  *(v2 + 16) = v6 & 1;
  *(v2 + 17) = v4;
  return v2;
}

unint64_t sub_1A44E7418()
{
  result = qword_1EB13C8E0;
  if (!qword_1EB13C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C8E0);
  }

  return result;
}

void sub_1A44E746C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
  v3 = v2;
  sub_1A44E66DC(&v3);
}

unint64_t sub_1A44E74B8()
{
  result = qword_1EB1254D0;
  if (!qword_1EB1254D0)
  {
    type metadata accessor for LemonadeAlbumsViewOptionsModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1254D0);
  }

  return result;
}

uint64_t type metadata accessor for LemonadeAlbumsViewOptionsModel()
{
  result = qword_1EB163C70;
  if (!qword_1EB163C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LemonadeAlbumsViewOptionsModel.deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore30LemonadeAlbumsViewOptionsModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LemonadeAlbumsViewOptionsModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore30LemonadeAlbumsViewOptionsModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

BOOL LemonadeAlbumsContentFilter.isFilterApplied.getter()
{
  if (*v0)
  {
    v1 = *v0 == 3;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

uint64_t sub_1A44E77A0@<X0>(void *a1@<X8>)
{
  if (qword_1EB163C80 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EB163C88;
}

uint64_t sub_1A44E7810()
{
  sub_1A44E784C();
  sub_1A5249244();
  return v1;
}

unint64_t sub_1A44E784C()
{
  result = qword_1EB15A830[0];
  if (!qword_1EB15A830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15A830);
  }

  return result;
}

unint64_t sub_1A44E78E0()
{
  result = qword_1EB13C8E8;
  if (!qword_1EB13C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C8E8);
  }

  return result;
}

unint64_t sub_1A44E7940()
{
  result = qword_1EB125638;
  if (!qword_1EB125638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125638);
  }

  return result;
}

uint64_t sub_1A44E799C()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id PXSwiftUIHostingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1A44E7DCC(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = objc_allocWithZone(v2);
  v7 = sub_1A44E7FB4(a1);
  (*(*(*(v4 + *a2) - 8) + 8))(a1);
  return v7;
}

uint64_t sub_1A44E7E6C(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v6 = *MEMORY[0x1E69E7D40] & *v3;
  v7 = a2();
  (*(*(*(v6 + *a3) - 8) + 8))(a1);
  return v7;
}

id sub_1A44E7F34(void *a1, uint64_t (*a2)(void, void, void))
{
  v3 = a2(0, *((*MEMORY[0x1E69E7D40] & *v2) + *a1), *((*MEMORY[0x1E69E7D40] & *v2) + *a1 + 8));
  v5.receiver = v2;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id sub_1A44E7FB4(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v8 - v2, v1);
  v4 = sub_1A5249624();
  result = [v4 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A44E88E4(uint64_t a1, uint64_t a2)
{
  sub_1A44E9688(0, &qword_1EB120E88, off_1E7721298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A44E8964()
{
  result = qword_1EB125A60;
  if (!qword_1EB125A60)
  {
    sub_1A5246754();
  }

  return result;
}

unint64_t sub_1A44E89DC()
{
  result = qword_1EB16C9F0[0];
  if (!qword_1EB16C9F0[0])
  {
    sub_1A44E8964();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB16C9F0);
  }

  return result;
}

uint64_t sub_1A44E8A34(uint64_t a1)
{
  sub_1A44E9688(0, &qword_1EB120E88, off_1E7721298);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A44E8AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A44E8964();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A44E8B10(uint64_t a1, uint64_t a2)
{
  sub_1A44E9688(0, &qword_1EB120E88, off_1E7721298);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A44E8B90(uint64_t a1)
{
  if (*(v1 + *(a1 + 44)))
  {
    sub_1A524C104();
  }

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1A5245D84();
}

void sub_1A44E8BF8(uint64_t a1)
{
  if (*(v1 + *(a1 + 44)))
  {
    sub_1A524C104();
  }

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1A5245D54();
}

uint64_t sub_1A44E8C60(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  if (*(v1 + *(a1 + 44)))
  {
    sub_1A524C104();
  }

  (*(v5 + 16))(v8, v1 + *(a1 + 36), v4, v6);
  if ((*(*(v3 - 8) + 48))(v8, 1, v3) != 1)
  {
    sub_1A5245F34();
  }

  (*(v5 + 8))(v8, v4);
  return 0;
}

void sub_1A44E8DFC(uint64_t a1)
{
  sub_1A44E9688(0, &qword_1EB120E88, off_1E7721298);
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (*(v1 + *(a1 + 44)))
  {
    sub_1A524C104();
  }

  sub_1A44E88E4(v1 + *(a1 + 40), &v5 - v4);
  sub_1A524C074();
}

id sub_1A44E8F6C()
{
  v0 = [objc_allocWithZone(PXPhotosAppGridConfiguration) init];

  return v0;
}

id sub_1A44E8FA8(void *a1)
{
  v1 = a1;
  result = [v1 appSpecificConfiguration];
  if (result)
  {

    objc_opt_self();
    v3 = swift_dynamicCastObjCClassUnconditional();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A44E9024()
{
  sub_1A3C34400(319, &qword_1EB128D20);
  if (v0 <= 0x3F)
  {
    sub_1A524DF24();
    if (v1 <= 0x3F)
    {
      sub_1A44E9688(319, &qword_1EB120E88, off_1E7721298);
      if (v2 <= 0x3F)
      {
        sub_1A44E9688(319, &qword_1EB120E78, off_1E77212B0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A44E9688(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A44E96DC()
{
  result = qword_1EB120E90;
  if (!qword_1EB120E90)
  {
    sub_1A524C074();
  }

  return result;
}

uint64_t sub_1A44E9734(uint64_t a1, uint64_t a2)
{
  sub_1A3E792C4(0, &qword_1EB128C80, &qword_1EB128C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A44E97B0@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C4C27C(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()())
  {
    v8 = sub_1A3DC1AF8();
    v10 = v9;
    v11 = sub_1A3C5A374();

    return sub_1A42E7F0C(v8, v10 & 1, v11, a1);
  }

  else
  {
    v13 = sub_1A3C47918();
    v15 = v14;
    v16 = sub_1A3C47918();
    v18 = v17;
    v19 = sub_1A3C52D68();
    v21 = v20;
    v25 = a1;
    v23 = v22;
    v24 = sub_1A3C4ED50();
    v26 = 1;
    *v7 = sub_1A44E99AC;
    *(v7 + 1) = 0;
    v7[16] = 2;
    *(v7 + 3) = 3;
    v7[32] = 1;
    *(v7 + 5) = v13;
    *(v7 + 6) = v15;
    *(v7 + 7) = v16;
    *(v7 + 8) = v18;
    *(v7 + 9) = v19;
    *(v7 + 10) = v21;
    v7[88] = v23;
    v7[89] = v24;
    swift_storeEnumTagMultiPayload();
    sub_1A3C4ED54(v4);
    return sub_1A3C52D78(v7, 0, v4, v25);
  }
}

uint64_t sub_1A44E99AC(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69C2210])
  {
    return 4;
  }

  (*(v3 + 8))(v6, v2);
  return 3;
}

uint64_t sub_1A44E9AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3C4C27C(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5242D14();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *MEMORY[0x1E69C2210], v10, v12);
  sub_1A3C759B4(&qword_1EB129148, MEMORY[0x1E69C2218]);
  v15 = sub_1A524C594();
  v16 = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    return sub_1A44E97B0(a2);
  }

  MEMORY[0x1EEE9AC00](v16);
  *(&v25 - 2) = a1;
  v17 = type metadata accessor for LemonadeShelfStyleOptions(0);
  if ((sub_1A41875F0(sub_1A44E9DB4, (&v25 - 4), a1, a1 + *(v17 + 28)) & 1) == 0)
  {
    return sub_1A44E97B0(a2);
  }

  v18 = sub_1A43A1D68();
  v20 = v19;
  v22 = v21;
  sub_1A43A1D88(v18, v19, v21, v9);
  sub_1A3C4208C(v18, v20, v22);
  sub_1A5241F74();
  v23 = sub_1A5241F84();
  (*(*(v23 - 8) + 56))(v6, 0, 1, v23);
  return sub_1A3C52D78(v9, 7, v6, a2);
}

uint64_t sub_1A44E9DB4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = type metadata accessor for LemonadeShelfStyleOptions(0);
  *a1 = *(v3 + *(result + 20));
  return result;
}

uint64_t sub_1A44E9DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v40 = a4;
  v7 = type metadata accessor for LemonadeNavigationDestination();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v34 - v11);
  v13 = sub_1A524C634();
  v14 = PXLemonadeLocalizedString(v13);

  v15 = sub_1A524C674();
  v38 = v16;
  v39 = v15;

  v17 = sub_1A524C634();
  v18 = PXLemonadeLocalizedString(v17);

  v19 = sub_1A524C674();
  v35 = v20;
  v36 = v19;

  v21 = sub_1A524C634();
  v22 = PXLemonadeLocalizedString(v21);

  v34 = sub_1A524C674();
  v24 = v23;

  v25 = *(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
  v42 = a2;
  v43 = a3;
  v26 = sub_1A3C57168();
  sub_1A3C66934(&v42, &type metadata for LemonadeBookmarksFeature.ShelfProvider, v26);
  sub_1A40EE918();
  swift_allocObject();
  *v12 = sub_1A5243184();
  swift_storeEnumTagMultiPayload();
  _s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v41);
  v27 = sub_1A4656D64(v12, &v41);
  v28 = *(v25 + 16);
  sub_1A44F27E0(v12, v9, type metadata accessor for LemonadeNavigationDestination);
  v29 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = v27;
  sub_1A3CA26F8(v9, v30 + v29, type metadata accessor for LemonadeNavigationDestination);
  v31 = v28;

  LOBYTE(a1) = sub_1A3C5A374();
  LOBYTE(v29) = sub_1A3C5A374();
  LOBYTE(v9) = sub_1A3C5A374();
  LOBYTE(v8) = sub_1A3C5A374();
  v32 = sub_1A3C5A374();
  sub_1A425463C(v31, a1 & 1, v29 & 1, v9 & 1, v8 & 1, v32 & 1, 7235952, 0xE300000000000000, v40, v39, v38, v36, v35, 0, 0, 0, 0, 0, 0, v34, v24, sub_1A44EF71C, v30, 0, 0);

  return sub_1A44F292C(v12, type metadata accessor for LemonadeNavigationDestination);
}

uint64_t sub_1A44EA188(uint64_t a1)
{
  sub_1A3C4C27C(0, &qword_1EB129F58, sub_1A40EEA04, type metadata accessor for LemonadeBookmarksFeature.ShelfProvider.BookmarkView);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v14 - v4);
  sub_1A44EF754(0, &unk_1EB122CA0, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v14 - v7);
  if (shouldUseNewCollectionsLayout()())
  {
    *v8 = a1;
    swift_storeEnumTagMultiPayload();
    sub_1A44F01F4();
    sub_1A44F0248();

    return sub_1A5249744();
  }

  else
  {
    v10 = v3[7];
    *(v5 + v10) = swift_getKeyPath();
    v11 = MEMORY[0x1E697DCB8];
    sub_1A3C4C27C(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    v12 = v5 + v3[8];
    *v12 = swift_getKeyPath();
    v12[8] = 0;
    v13 = v3[9];
    *(v5 + v13) = swift_getKeyPath();
    sub_1A3C4C27C(0, &qword_1EB128A50, MEMORY[0x1E697E730], v11);
    swift_storeEnumTagMultiPayload();
    *v5 = a1;
    sub_1A44F2128(v5, v8, &qword_1EB129F58, sub_1A40EEA04, type metadata accessor for LemonadeBookmarksFeature.ShelfProvider.BookmarkView, sub_1A3C4C27C);
    swift_storeEnumTagMultiPayload();
    sub_1A44F01F4();
    sub_1A44F0248();

    sub_1A5249744();
    return sub_1A44F2098(v5, &qword_1EB129F58, sub_1A40EEA04, type metadata accessor for LemonadeBookmarksFeature.ShelfProvider.BookmarkView);
  }
}

uint64_t sub_1A44EA488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69C2218];
  v9 = MEMORY[0x1E697DCB8];
  sub_1A3C4C27C(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  sub_1A44F2128(v2 + *(a1 + 28), &v16 - v11, &qword_1EB128AA0, v8, v9, sub_1A3C4C27C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A5242D14();
    return (*(*(v13 - 8) + 32))(v17, v12, v13);
  }

  else
  {
    sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_1A44EA6D0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 32);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_1A524D254();
    v11 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3DD15BC(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1A44EA82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v4 = type metadata accessor for LemonadeCollectionBookmarkCell(0);
  MEMORY[0x1EEE9AC00](v4);
  v84 = *(a1 + 16);
  v85 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeBookmarkListCell();
  v78 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v77 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v76 = v69 - v9;
  v10 = sub_1A52486A4();
  v82 = *(v10 - 8);
  v83 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v81 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5242D14();
  v95 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v88 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v69 - v15;
  v92 = v4;
  v93 = v6;
  v17 = sub_1A5249754();
  v90 = *(v17 - 8);
  v91 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v89 = v69 - v18;
  v19 = sub_1A5246E54();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v87 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v86 = v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v69 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v69 - v29;
  sub_1A3C4C27C(0, &qword_1EB128C00, MEMORY[0x1E69E93D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = v69 - v32;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1A5905890](a1);
  v34 = sub_1A5246E94();
  v79 = *(v34 - 8);
  v35 = *(v79 + 48);
  v80 = v34;
  if (v35(v33, 1) == 1)
  {
    sub_1A44F2098(v33, &qword_1EB128C00, MEMORY[0x1E69E93D8], MEMORY[0x1E69E6720]);
    v36 = v89;
    v37 = v2;
  }

  else
  {
    v72 = v20;
    v73 = v19;
    v38 = *(v22 + 16);
    v38(v30, v2, a1);
    v38(v27, v2, a1);
    v74 = v2;
    v38(v86, v2, a1);
    sub_1A5246E44();
    v39 = sub_1A5246E84();
    v40 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v41 = swift_slowAlloc();
      v70 = v40;
      v42 = v41;
      v71 = swift_slowAlloc();
      v96[2] = v71;
      *v42 = 136446722;
      (*(**v30 + 184))(v96);
      v69[1] = v39;
      v69[0] = v27;
      (*(v22 + 8))(v30, a1);
      sub_1A3C2EF94();
    }

    (*(v72 + 8))(v87, v73);
    v43 = *(v22 + 8);
    v43(v86, a1);
    v43(v27, a1);
    v43(v30, a1);
    (*(v79 + 8))(v33, v80);
    v36 = v89;
    v37 = v74;
  }

  v44 = v95;
  sub_1A44EA488(a1, v16);
  v45 = v88;
  (*(v44 + 104))(v88, *MEMORY[0x1E69C2210], v12);
  sub_1A3C759B4(&qword_1EB129148, MEMORY[0x1E69C2218]);
  v46 = sub_1A524C594();
  v49 = *(v44 + 8);
  v48 = v44 + 8;
  v47 = v49;
  v49(v45, v12);
  v50 = (v49)(v16, v12);
  v51 = v93;
  if ((v46 & 1) != 0 || (v95 = v48, v89 = v69, MEMORY[0x1EEE9AC00](v50), v69[-2] = v84, v69[-1] = v37, sub_1A44EA488(a1, v16), v52 = v12, v53 = v36, v54 = v81, sub_1A44F02DC(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v81), v55 = sub_1A41875F0(sub_1A44F20F4, &v69[-4], v16, v54), v56 = v54, v36 = v53, v12 = v52, (*(v82 + 8))(v56, v83), v47(v16, v52), (v55 & 1) == 0))
  {
    sub_1A44EA488(a1, v16);
    sub_1A44EA6D0(a1, v96);
    v63 = v85;
    sub_1A44EB534(v16, v96, v85);
    v47(v16, v12);
    swift_getWitnessTable();
    sub_1A3C759B4(&qword_1EB1297F0, type metadata accessor for LemonadeCollectionBookmarkCell);
    sub_1A3DF4890(v63, v51, v92);
    sub_1A44F292C(v63, type metadata accessor for LemonadeCollectionBookmarkCell);
  }

  else
  {

    v58 = v77;
    sub_1A3F9387C(v57, v77);
    swift_getWitnessTable();
    v59 = v78;
    v60 = *(v78 + 16);
    v61 = v76;
    v60(v76, v58, v51);
    v62 = *(v59 + 8);
    v62(v58, v51);
    v60(v58, v61, v51);
    sub_1A3C759B4(&qword_1EB1297F0, type metadata accessor for LemonadeCollectionBookmarkCell);
    sub_1A3DF4798(v58, v51);
    v62(v58, v51);
    v62(v61, v51);
  }

  v64 = swift_getWitnessTable();
  v65 = sub_1A3C759B4(&qword_1EB1297F0, type metadata accessor for LemonadeCollectionBookmarkCell);
  v96[3] = v64;
  v96[4] = v65;
  v66 = v91;
  swift_getWitnessTable();
  v67 = v90;
  (*(v90 + 16))(v94, v36, v66);
  return (*(v67 + 8))(v36, v66);
}

uint64_t sub_1A44EB534@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1A52486A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(a2) = *a2;
  sub_1A44F02DC(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v10);
  v13[16] = a2;
  LOBYTE(a2) = sub_1A41875F0(sub_1A44F3244, v13, a1, v10);
  v11 = (*(v8 + 8))(v10, v7);
  (*(**v3 + 160))(v15, v11);
  sub_1A3C34460(v15, v14);
  return sub_1A453A314(v14, (a2 & 1) == 0, a3);
}

uint64_t sub_1A44EB6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = sub_1A52486A4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for LemonadeShelfDisclosureOptions(0);
  v13 = *(a1 + *(v12 + 24));
  v18[16] = *(a1 + *(v12 + 20));

  sub_1A3F2A5C4(v11);
  LOBYTE(a1) = sub_1A41875F0(sub_1A44F3244, v18, a1, v11);
  (*(v9 + 8))(v11, v8);
  if (a1)
  {
    v19 = a2;
    v20 = a3;
    v14 = sub_1A3C57168();
    sub_1A3C66934(&v19, &type metadata for LemonadeBookmarksFeature.ShelfProvider, v14);
    sub_1A40EE918();
    swift_allocObject();
    v15 = sub_1A5243184();

    *a4 = v15;
  }

  else
  {
    *a4 = v13;
    a4[1] = 0;
    a4[2] = 0xE000000000000000;
  }

  v16 = type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a4, 0, 1, v16);
}

uint64_t sub_1A44EB8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v47 = a4;
  v50 = a3;
  v48 = a2;
  v55 = a5;
  v54 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v46[-v8];
  v51 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v51);
  v10 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = a1;
  sub_1A3C341C8(a1, v61);
  v12 = v62;
  v11 = v63;
  __swift_project_boxed_opaque_existential_1(v61, v62);
  v13 = *(v11 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1A524DF24();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v46[-v18];
  v13(v12, v11, v17);
  v20 = *(AssociatedTypeWitness - 8);
  if ((*(v20 + 48))(v19, 1, AssociatedTypeWitness) != 1)
  {
    *(&v57 + 1) = AssociatedTypeWitness;
    *&v58 = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v56);
    (*(v20 + 32))();
    v21 = PhotosModel.photokitObject.getter(AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_0(&v56);
    if (!v21)
    {
      goto LABEL_5;
    }

    v22 = v62;
    v23 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    (*(v23 + 48))(v22, v23);
    v24 = v52;
    sub_1A44F27E0(&v10[*(v51 + 24)], v52, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    sub_1A44F292C(v10, type metadata accessor for LemonadeBookmark);
    v25 = v53;
    swift_storeEnumTagMultiPayload();
    sub_1A3C759B4(&qword_1EB12A590, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    LOBYTE(v22) = sub_1A524C594();
    sub_1A44F292C(v25, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    sub_1A44F292C(v24, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    if (v22)
    {
      goto LABEL_5;
    }

    v29 = v62;
    v30 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v31 = *(v30 + 96);
    v32 = swift_getAssociatedTypeWitness();
    v33 = sub_1A524DF24();
    v34 = *(v33 - 8);
    v35 = MEMORY[0x1EEE9AC00](v33);
    v37 = &v46[-v36];
    v31(v29, v30, v35);
    v38 = *(v32 - 8);
    if ((*(v38 + 48))(v37, 1, v32) == 1)
    {
      (*(v34 + 8))(v37, v33);
    }

    else
    {
      *(&v57 + 1) = v32;
      *&v58 = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v56);
      (*(v38 + 32))(boxed_opaque_existential_1, v37, v32);
      sub_1A3C34400(0, &qword_1EB128C70);
      sub_1A3CA2A44();
      if (swift_dynamicCast())
      {
        v40 = sub_1A52426F4();
        v41 = v50;
        if (v40)
        {
          v42 = v62;
          v43 = v63;
          __swift_project_boxed_opaque_existential_1(v61, v62);
          (*(v43 + 112))(v42, v43);

          return __swift_destroy_boxed_opaque_existential_0(v61);
        }

LABEL_13:
        v60 = MEMORY[0x1E69E7CC0];
        *&v56 = v41;
        BYTE8(v56) = v47;
        v44 = sub_1A3C57168();
        v45 = sub_1A3C66934(&v56, &type metadata for LemonadeBookmarksFeature.ShelfProvider, v44);
        (*(*v45 + 168))(v45);

        v59 = 0;
        v57 = 0u;
        v58 = 0u;
        v56 = 0u;
        sub_1A5245874();
      }
    }

    v41 = v50;
    goto LABEL_13;
  }

  (*(v16 + 8))(v19, v15);
LABEL_5:
  v26 = v62;
  v27 = v63;
  __swift_project_boxed_opaque_existential_1(v61, v62);
  (*(v27 + 112))(v26, v27);
  return __swift_destroy_boxed_opaque_existential_0(v61);
}

void sub_1A44EC180(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a3;
  v6 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v8 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = *a1;
  v10 = a1[1];
  v13 = a2;
  v16 = MEMORY[0x1E69E6158];
  v14 = v9;
  v15 = v10;
  sub_1A44F166C();
  sub_1A3C759B4(&qword_1EB128ED8, sub_1A44F166C);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A44EC878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A44EC90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = sub_1A5243834();
  v31 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C4C27C(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_1A5243EC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F0788(0, &qword_1EB13C950, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  sub_1A44F0788(0, &qword_1EB13D0B0, MEMORY[0x1E697F960]);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v29 - v17;
  (*(*a1 + 160))(v35, v16);
  sub_1A3C34460(v35, v37);
  v20 = v38;
  v19 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  if (sub_1A4838C84(v20, v19))
  {
    sub_1A3C341C8(v37, v34);
    sub_1A4541AD0(v34, v35);
    sub_1A44F08C4(v35, v14);
    swift_storeEnumTagMultiPayload();
    sub_1A44F07F0();
    sub_1A3C759B4(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    sub_1A5249744();
    sub_1A44F0920(v35);
  }

  else
  {
    v30 = v8;
    v21 = a2;
    v22 = v38;
    v23 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v24 = *(v23 + 72);
    v25 = v23;
    a2 = v21;
    v24(v22, v25);
    memset(v35, 0, sizeof(v35));
    v36 = 1;
    v26 = sub_1A52429A4();
    (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
    (*(v31 + 104))(v33, *MEMORY[0x1E69C2678], v32);
    sub_1A5243ED4();
    v27 = v30;
    (*(v9 + 16))(v14, v11, v30);
    swift_storeEnumTagMultiPayload();
    sub_1A44F07F0();
    sub_1A3C759B4(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    sub_1A5249744();
    (*(v9 + 8))(v11, v27);
  }

  sub_1A44F0844(v18, a2);
  return __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t sub_1A44ECE40()
{
  shouldUseNewCollectionsLayout()();
  v0 = sub_1A3C38BD4();

  return v0;
}

uint64_t sub_1A44ECF00@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  type metadata accessor for LemonadeShelfDisclosureOptions(0);
  v10 = v5;
  v11 = v6;
  v7 = sub_1A3C57168();
  sub_1A3C66934(&v10, a1, v7);
  sub_1A40EE918();
  swift_allocObject();
  *a2 = sub_1A5243184();
  v8 = type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t sub_1A44ED000@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  v3 = type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();
  (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
}

unint64_t sub_1A44ED0F0(uint64_t a1)
{
  v2 = sub_1A3C43144();

  return sub_1A42E6E80(a1, v2);
}

id sub_1A44ED12C(uint64_t a1)
{
  v1 = [*(a1 + 16) px_virtualCollections];
  v2 = [v1 bookmarksCollectionList];

  return v2;
}

uint64_t sub_1A44ED184@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  *a2 = v7;
  v24 = *(type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider(0) + 20);
  v8 = v7;
  v9 = sub_1A3C47918();
  v11 = v10;
  v12 = sub_1A3C47918();
  v14 = v13;
  v15 = sub_1A3C52D68();
  v17 = v16;
  v19 = v18;
  v20 = sub_1A3C4ED50();
  v25 = 1;
  *v6 = sub_1A44ED4DC;
  *(v6 + 1) = 0;
  v6[16] = 2;
  *(v6 + 3) = 4;
  v6[32] = 1;
  *(v6 + 5) = v9;
  *(v6 + 6) = v11;
  *(v6 + 7) = v12;
  *(v6 + 8) = v14;
  *(v6 + 9) = v15;
  *(v6 + 10) = v17;
  v6[88] = v19;
  v6[89] = v20;
  swift_storeEnumTagMultiPayload();
  v21 = sub_1A3DC1AF8();
  return sub_1A437C3B8(v6, 0, v21, v22 & 1, a2 + v24);
}

uint64_t sub_1A44ED2D8()
{
  sub_1A524EC94();
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A3C759B4(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A44ED388()
{
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A3C759B4(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  return sub_1A524C794();
}

uint64_t sub_1A44ED430()
{
  sub_1A524EC94();
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A3C759B4(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A44ED4DC(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = shouldUseNewCollectionsLayout()();
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69C21F0])
  {
    if (v6)
    {
      return 40;
    }

    else
    {
      return 14;
    }
  }

  else
  {
    if (v6)
    {
      v7 = 40;
    }

    else
    {
      v7 = 20;
    }

    (*(v3 + 8))(v5, v2);
  }

  return v7;
}

uint64_t sub_1A44ED624(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeCollectionBookmarkCell(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F2250(0, &qword_1EB13C960, sub_1A44F0994, type metadata accessor for LemonadeCollectionBookmarkCell, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v10 - v6;
  if (shouldUseNewCollectionsLayout()())
  {
    KeyPath = swift_getKeyPath();

    *v7 = a1;
    *(v7 + 1) = KeyPath;
    v7[16] = 1;
    swift_storeEnumTagMultiPayload();
    sub_1A44F0994();
    sub_1A44F0A18();
    sub_1A3C759B4(&qword_1EB1297F0, type metadata accessor for LemonadeCollectionBookmarkCell);
    return sub_1A5249744();
  }

  else
  {
    (*(*a1 + 160))(v11);
    sub_1A3C34460(v11, v10);
    sub_1A453A314(v10, 1, v4);
    sub_1A44F27E0(v4, v7, type metadata accessor for LemonadeCollectionBookmarkCell);
    swift_storeEnumTagMultiPayload();
    sub_1A44F0994();
    sub_1A44F0A18();
    sub_1A3C759B4(&qword_1EB1297F0, type metadata accessor for LemonadeCollectionBookmarkCell);
    sub_1A5249744();
    return sub_1A44F292C(v4, type metadata accessor for LemonadeCollectionBookmarkCell);
  }
}

uint64_t sub_1A44ED8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  sub_1A424ADF0();
  v47 = v3;
  v42 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424AE74();
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F0B14();
  v46 = v9;
  v43 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider.LemonadeBookmarkToolbarContent(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44F2250(0, &qword_1EB13C980, sub_1A44F0B14, sub_1A424ADF0, MEMORY[0x1E697F960]);
  v44 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  if (sub_1A4654080())
  {
    sub_1A44F24A0(0, &qword_1EB128070, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697C280]);
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    v22 = sub_1A424AEF8();
    v23 = v45;
    MEMORY[0x1A5904CD0](v8, v45, v22);
    v24 = sub_1A44F0BB8();
    v49 = v12;
    v50 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = v23;
    v50 = v22;
    v26 = swift_getOpaqueTypeConformance2();
    v27 = v47;
    MEMORY[0x1A5904CF0](v5, v46, v47, OpaqueTypeConformance2, v26);
    (*(v42 + 8))(v5, v27);
    v28 = sub_1A424AE74;
    v29 = v8;
  }

  else
  {
    v30 = type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider(0);
    v31 = sub_1A3C759B4(&qword_1EB13C988, type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider);
    sub_1A3C66934(v41, v30, v31);
    sub_1A40EE918();
    swift_allocObject();
    *v17 = sub_1A5243184();
    swift_storeEnumTagMultiPayload();
    sub_1A44F27E0(v17, v14 + *(v12 + 20), type metadata accessor for LemonadeNavigationDestination);
    *v14 = swift_getKeyPath();
    sub_1A3C4C27C(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    *(v14 + *(v12 + 24)) = a1;
    v32 = sub_1A44F0BB8();

    MEMORY[0x1A5904CD0](v14, v12, v32);
    v49 = v12;
    v50 = v32;
    v33 = swift_getOpaqueTypeConformance2();
    v34 = sub_1A424AEF8();
    v49 = v45;
    v50 = v34;
    v35 = swift_getOpaqueTypeConformance2();
    v36 = v46;
    MEMORY[0x1A5904CE0](v11, v46, v47, v33, v35);
    (*(v43 + 8))(v11, v36);
    sub_1A44F292C(v14, type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider.LemonadeBookmarkToolbarContent);
    v28 = type metadata accessor for LemonadeNavigationDestination;
    v29 = v17;
  }

  sub_1A44F292C(v29, v28);
  v37 = sub_1A44F0C10();
  v38 = v48;
  MEMORY[0x1A5904CD0](v20, v44, v37);
  sub_1A3D04A44(v20);
  sub_1A44F0D30();
  return (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
}

uint64_t sub_1A44EDF10@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = sub_1A5242D14();
  v2 = *(v1 - 8);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69C2218];
  sub_1A3C4C27C(0, &qword_1EB13CA20, MEMORY[0x1E69C2218], MEMORY[0x1E69E6F90]);
  v7 = *(v2 + 72);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A52FC9F0;
  v10 = v9 + v8;
  v11 = *(v3 + 104);
  v11(v10, *MEMORY[0x1E69C21F8], v1);
  v11(v10 + v7, *MEMORY[0x1E69C2210], v1);
  sub_1A44F02DC(&qword_1EB128AA0, v6, MEMORY[0x1E69C2218], v5);
  v12 = sub_1A44EE7D4(v5, v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v3 + 8))(v5, v1);
  if (v12)
  {
    return sub_1A5249834();
  }

  sub_1A3C52C70(0, &qword_1EB126A10);
  v13 = [swift_getObjCClassFromMetadata() sharedInstance];
  v14 = [v13 defaultPhoneFeedNavigationType];

  if (v14)
  {
    return sub_1A5249834();
  }

  else
  {
    return sub_1A5249824();
  }
}

uint64_t sub_1A44EE180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v3 = type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider.LemonadeBookmarkToolbarContent(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A44F2414();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44F22D4();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F27E0(a1, v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider.LemonadeBookmarkToolbarContent);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_1A3CA26F8(v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider.LemonadeBookmarkToolbarContent);
  sub_1A44F24A0(0, &unk_1EB122710, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
  sub_1A424D1BC();

  sub_1A472916C(v17, sub_1A44EE568, 0, 0, sub_1A44F2848, v16, v9);
  sub_1A44F24F4();
  v19 = v18;
  v20 = sub_1A3C759B4(&qword_1EB13CA08, sub_1A44F2414);
  v21 = sub_1A5243474();
  v22 = sub_1A3C759B4(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
  v26 = v7;
  v27 = v21;
  v28 = v20;
  v29 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A524A4C4();
  sub_1A44F292C(v9, sub_1A44F2414);
  v26 = v7;
  v27 = v19;
  v28 = v20;
  v29 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1A524AA94();
  return (*(v12 + 8))(v14, v11);
}

double sub_1A44EE568@<D0>(uint64_t a1@<X8>)
{
  MEMORY[0x1A590D320]();
  *&v4 = sub_1A3C38BD4();
  *(&v4 + 1) = v2;
  sub_1A3D5F9DC();
  sub_1A524A464();
  sub_1A5249744();
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_1A44EE668()
{
  v0 = sub_1A5243474();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247D74();
  sub_1A44F2414();
  sub_1A3C759B4(&qword_1EB13CA08, sub_1A44F2414);
  sub_1A3C759B4(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
  sub_1A524A944();
  return (*(v1 + 8))(v3, v0);
}

BOOL sub_1A44EE7D4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1A5242D14();
    ++v2;
    sub_1A3C759B4(&qword_1EB129148, MEMORY[0x1E69C2218]);
  }

  while ((sub_1A524C594() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_1A44EE8E0()
{
  v1 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A44F219C();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A44EDF10(v3);
  v12 = v0;
  sub_1A44F2250(0, &qword_1EB13C9E8, sub_1A44F22D4, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  sub_1A44F25F8();
  sub_1A5247F24();
  v9 = sub_1A3C759B4(&qword_1EB13CA18, sub_1A44F219C);
  MEMORY[0x1A5904CD0](v8, v5, v9);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A44EEAE0@<X0>(uint64_t a1@<X8>)
{
  sub_1A5243CD4();
  v2 = sub_1A5243CC4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1A44EEB80(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 120))(v1, v2) & 1;
}

uint64_t sub_1A44EEBD4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 144))(1, v1, v2);
}

uint64_t sub_1A44EEC28()
{
  sub_1A3C759B4(&qword_1EB13C9B8, type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider);

  return sub_1A3C47918();
}

uint64_t sub_1A44EEC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for LemonadeNavigationDestination();
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v35 - v7);
  v9 = sub_1A524C634();
  v10 = PXLemonadeLocalizedString(v9);

  v11 = sub_1A524C674();
  v39 = v12;
  v40 = v11;

  v13 = sub_1A524C634();
  v14 = PXLemonadeLocalizedString(v13);

  v15 = sub_1A524C674();
  v36 = v16;
  v37 = v15;

  v17 = 0;
  v18 = 0;
  if (!sub_1A4654080())
  {
    v19 = sub_1A524C634();
    v20 = PXLemonadeLocalizedString(v19);

    v17 = sub_1A524C674();
    v18 = v21;
  }

  v22 = *(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
  v23 = type metadata accessor for LemonadeBookmarksFeature.MacFeedProvider(0);
  v24 = sub_1A3C759B4(&qword_1EB13C9A0, type metadata accessor for LemonadeBookmarksFeature.MacFeedProvider);
  sub_1A3C66934(v35, v23, v24);
  sub_1A40EE918();
  swift_allocObject();
  *v8 = sub_1A5243184();
  swift_storeEnumTagMultiPayload();
  _s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v42);
  v25 = sub_1A4656D64(v8, &v42);
  v26 = *(v22 + 16);
  sub_1A44F27E0(v8, v5, type metadata accessor for LemonadeNavigationDestination);
  v27 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = v25;
  sub_1A3CA26F8(v5, v28 + v27, type metadata accessor for LemonadeNavigationDestination);
  v29 = v26;

  v30 = sub_1A3C5A374();
  LOBYTE(v27) = sub_1A3C5A374();
  v31 = sub_1A3C5A374();
  v32 = sub_1A3C5A374();
  v33 = sub_1A3C5A374();
  sub_1A425463C(v29, v30 & 1, v27 & 1, v31 & 1, v32 & 1, v33 & 1, 7235952, 0xE300000000000000, v41, v40, v39, v37, v36, 0, 0, 0, 0, 0, 0, v17, v18, sub_1A44F1388, v28, 0, 0);

  return sub_1A44F292C(v8, type metadata accessor for LemonadeNavigationDestination);
}

uint64_t sub_1A44EF070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for LemonadeNavigationDestination();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1A44F27E0(a3, &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeNavigationDestination);
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  sub_1A3CA26F8(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for LemonadeNavigationDestination);
  *(v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  sub_1A4138EC8();
  v15 = v14;
  v16 = sub_1A3C759B4(&qword_1EB129B28, sub_1A4138EC8);

  v17 = sub_1A3C5A374();
  sub_1A46562D0(v17 & 1, a5, v13, v15, v16);
}

uint64_t sub_1A44EF220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F27E0(a1, v8, type metadata accessor for LemonadeNavigationDestination);

  return sub_1A487864C(v8, a2, 0, a3);
}

uint64_t sub_1A44EF2D4()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  v2 = sub_1A524C674();
  return v2;
}

uint64_t sub_1A44EF38C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 112))(v1, v2);
}

uint64_t sub_1A44EF468(uint64_t a1)
{
  v3 = 0x6B72616D6B6F6F62;
  v4 = 0xEA00000000002D73;
  (*(*a1 + 184))(v2);
  MEMORY[0x1A5907B60](v2[0], v2[1]);

  return v3;
}

uint64_t sub_1A44EF4F0(uint64_t a1)
{
  (*(*a1 + 160))(v7);
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v3 = (*(v2 + 56))(v1, v2);
  if (!v4)
  {
    v3 = sub_1A3C38BD4();
  }

  v5 = v3;
  sub_1A3F9670C(v7);
  return v5;
}

uint64_t sub_1A44EF5B0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 136))(v1, v2);
}

uint64_t sub_1A44EF604(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 128))(v1, v2);
}

id sub_1A44EF654()
{
  v1 = [*v0 px_virtualCollections];
  v2 = [v1 bookmarksCollectionList];

  return v2;
}

uint64_t sub_1A44EF6B0()
{
  sub_1A3C759B4(&qword_1EB13C9C8, type metadata accessor for LemonadeBookmarksFeature.MacFeedProvider);

  return sub_1A3C47918();
}

void sub_1A44EF754(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    sub_1A3C4C27C(255, &qword_1EB129F58, sub_1A40EEA04, type metadata accessor for LemonadeBookmarksFeature.ShelfProvider.BookmarkView);
    v7 = a3(a1, &type metadata for LemonadeBookmarksFeature.BookmarkMaterialCell, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_OWORD *sub_1A44EF7EC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A3C2F0BC(a1, &v6);
  v4 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
    sub_1A44EF8C8(&v9);
    sub_1A3F9670C(v7);
    if (*(&v10 + 1))
    {
      return sub_1A3C57128(&v9, a2);
    }
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1A3C2C988(v7, &qword_1EB12A340, &type metadata for LemonadeBookmarkItem);
    v9 = 0u;
    v10 = 0u;
  }

  sub_1A3C2C988(&v9, &qword_1EB126130, v4 + 8);
  return sub_1A3C2F0BC(a1, a2);
}

uint64_t sub_1A44EF8C8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v4 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1A524DF24();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v5(v3, v4, v9);
  v12 = *(AssociatedTypeWitness - 8);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v8 + 8))(v11, v7);
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v19 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
    (*(v12 + 32))(boxed_opaque_existential_1, v11, AssociatedTypeWitness);
    sub_1A3C34460(&v18, v21);
    v15 = v22;
    v16 = __swift_project_boxed_opaque_existential_1(v21, v22);
    *(a1 + 24) = v15;
    v17 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v15 - 8) + 16))(v17, v16, v15);
    return __swift_destroy_boxed_opaque_existential_0(v21);
  }

  return result;
}

uint64_t sub_1A44EFB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  sub_1A4275F8C(0, &qword_1EB124D00, sub_1A3C3637C);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - v6;
  v8 = sub_1A5243B94();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  if (sub_1A483FB28())
  {
    v45 = a1;
    (*(*a1 + 160))(v41);
    v38 = v4;
    v13 = v42;
    v12 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v39 = (*(v12 + 56))(v13, v12);
    v15 = v14;
    sub_1A4244368();
    v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1A52F8E10;
    v18 = v17 + v16;
    (*(v9 + 104))(v11, *MEMORY[0x1E69C2800], v8);
    v19 = *(v9 + 32);
    v19(v7, v11, v8);
    v19(v18, v7, v8);
    v20 = (v18 + *(v38 + 48));
    *v20 = sub_1A44F00CC;
    v20[1] = 0;

    v21 = sub_1A42762E8(v17);
    swift_setDeallocating();
    sub_1A44F2020(v18);
    swift_deallocClassInstance();
    sub_1A40EEA04();
    v23 = v22;
    sub_1A3F9515C();
    sub_1A3C759B4(&qword_1EB1256B0, sub_1A40EEA04);
    v24 = sub_1A41F7694();
    v25 = sub_1A3C5A374();
    LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(&v45, 0, 0, v39, v15, 0, v25 & 1, sub_1A44F324C, v46, v24, a1, v21, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView, v23);
    sub_1A3F9670C(v41);
    sub_1A44F27E0(v46, v41, sub_1A44F1F00);
    v44 = 0;
  }

  else
  {
    v45 = a1;
    (*(*a1 + 160))(v41);
    v26 = v42;
    v27 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v28 = (*(v27 + 56))(v26, v27);
    v30 = v29;
    sub_1A40EEA04();
    v32 = v31;
    sub_1A3F9515C();
    sub_1A3C759B4(&qword_1EB1256B0, sub_1A40EEA04);

    v33 = sub_1A41F7694();
    v34 = sub_1A3C5A374();
    v35 = sub_1A43C9BD0();
    LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(&v45, 0, 0, v28, v30, 0, v34 & 1, sub_1A44F1EFC, v46, v33, a1, v35, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView, v32);
    sub_1A3F9670C(v41);
    sub_1A44F27E0(v46, v41, sub_1A44F1F00);
    v44 = 1;
  }

  sub_1A44F1F00();
  sub_1A3C759B4(&qword_1EB125730, sub_1A44F1F00);
  sub_1A5249744();
  return sub_1A44F292C(v46, sub_1A44F1F00);
}

uint64_t sub_1A44F00CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LemonadeImmutableFavoritedBadgeView();
  MEMORY[0x1EEE9AC00](v2);
  sub_1A43CFD18((&v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0)));
  sub_1A3C759B4(&qword_1EB125270, type metadata accessor for LemonadeImmutableFavoritedBadgeView);
  result = sub_1A524B8E4();
  *a1 = result;
  return result;
}

id sub_1A44F019C()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 bookmarksCollection];

  return v2;
}

unint64_t sub_1A44F01F4()
{
  result = qword_1EB168D78[0];
  if (!qword_1EB168D78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB168D78);
  }

  return result;
}

unint64_t sub_1A44F0248()
{
  result = qword_1EB184D10[0];
  if (!qword_1EB184D10[0])
  {
    sub_1A3C4C27C(255, &qword_1EB129F58, sub_1A40EEA04, type metadata accessor for LemonadeBookmarksFeature.ShelfProvider.BookmarkView);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB184D10);
  }

  return result;
}

uint64_t sub_1A44F02DC@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v21 = a4;
  v9 = sub_1A5249234();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E697DCB8];
  sub_1A3C4C27C(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1A44F2128(v8, &v20 - v15, a1, a2, v13, sub_1A3C4C27C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(v21, v16, v17);
  }

  else
  {
    sub_1A524D254();
    v19 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v10 + 8))(v12, v9);
  }
}

char *sub_1A44F0514(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A44F2A14(0, &qword_1EB1203B0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A44F0654(uint64_t a1)
{
  if (*(*(a1 + *(type metadata accessor for LemonadeShelfDisclosureOptions(0) + 24)) + 40))
  {
    return 0x1FFFFFFFELL;
  }

  if (shouldUseNewCollectionsLayout()())
  {
    sub_1A3C52C70(0, &qword_1EB126A10);
    v2 = [swift_getObjCClassFromMetadata() sharedInstance];
    v3 = [v2 enableHeaderTitleChevron];

    if ((v3 & 1) == 0)
    {
      return 0x4000000000000001;
    }
  }

  sub_1A3C38BD4();
  return 1;
}

void sub_1A44F0788(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A5243EC4();
    v7 = a3(a1, &type metadata for LemonadeCollectionBookmarkPrivacySensitiveView, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A44F07F0()
{
  result = qword_1EB13C958;
  if (!qword_1EB13C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C958);
  }

  return result;
}

uint64_t sub_1A44F0844(uint64_t a1, uint64_t a2)
{
  sub_1A44F0788(0, &qword_1EB13D0B0, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A44F0994()
{
  if (!qword_1EB13C968)
  {
    sub_1A44F2A14(255, &qword_1EB122138, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C968);
    }
  }
}

unint64_t sub_1A44F0A18()
{
  result = qword_1EB13C970;
  if (!qword_1EB13C970)
  {
    sub_1A44F0994();
    sub_1A44F01F4();
    sub_1A44F0A98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C970);
  }

  return result;
}

unint64_t sub_1A44F0A98()
{
  result = qword_1EB122140;
  if (!qword_1EB122140)
  {
    sub_1A44F2A14(255, &qword_1EB122138, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122140);
  }

  return result;
}

void sub_1A44F0B14()
{
  if (!qword_1EB13C978)
  {
    type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider.LemonadeBookmarkToolbarContent(255);
    sub_1A44F0BB8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C978);
    }
  }
}

unint64_t sub_1A44F0BB8()
{
  result = qword_1EB1C4FF0[0];
  if (!qword_1EB1C4FF0[0])
  {
    type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider.LemonadeBookmarkToolbarContent(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C4FF0);
  }

  return result;
}

unint64_t sub_1A44F0C10()
{
  result = qword_1EB13C990;
  if (!qword_1EB13C990)
  {
    sub_1A44F2250(255, &qword_1EB13C980, sub_1A44F0B14, sub_1A424ADF0, MEMORY[0x1E697F960]);
    type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider.LemonadeBookmarkToolbarContent(255);
    sub_1A44F0BB8();
    swift_getOpaqueTypeConformance2();
    sub_1A424AE74();
    sub_1A424AEF8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C990);
  }

  return result;
}

void sub_1A44F0D30()
{
  if (!qword_1EB13C998)
  {
    sub_1A44F2250(255, &qword_1EB13C980, sub_1A44F0B14, sub_1A424ADF0, MEMORY[0x1E697F960]);
    sub_1A44F0C10();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C998);
    }
  }
}

uint64_t objectdestroyTm_57()
{
  v1 = *(type metadata accessor for LemonadeNavigationDestination() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = (v0 + v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 0x23u:

      break;
    case 2u:
    case 3u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:

      break;
    case 4u:
    case 5u:

      break;
    case 6u:

      if (v3[8] != 1)
      {
      }

      break;
    case 0xBu:

      if (v3[5] != 1)
      {
      }

      break;
    case 0xCu:

      if (v3[2])
      {
      }

      if (v3[7])
      {
        __swift_destroy_boxed_opaque_existential_0((v3 + 4));
      }

      break;
    case 0xDu:

      if (v3[7])
      {
      }

      type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(0);
      sub_1A5245BA4();
    case 0xEu:

      if (v3[9])
      {
      }

      type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0);
      sub_1A5245BA4();
    case 0xFu:

      if (v3[9])
      {
      }

      type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration(0);
      goto LABEL_43;
    case 0x10u:

      if (v3[10])
      {
      }

      type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
      goto LABEL_43;
    case 0x11u:
    case 0x21u:
    case 0x24u:
    case 0x25u:

      break;
    case 0x12u:
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0((v3 + 2));

      break;
    case 0x13u:
    case 0x14u:

      break;
    case 0x15u:

      if (*(v3 + 16) != 255)
      {
      }

      break;
    case 0x16u:
      v7 = sub_1A52411C4();
      (*(*(v7 - 8) + 8))(v0 + v2, v7);

      swift_unknownObjectRelease();
LABEL_43:
      sub_1A5245BA4();
    case 0x17u:
      v6 = *(v3 + 16);
      if (v6 != 255)
      {
        sub_1A3EECFA4(*v3, v3[1], v6);
      }

      break;
    case 0x18u:
    case 0x1Bu:
    case 0x1Du:
    case 0x1Eu:
    case 0x20u:

      break;
    case 0x19u:

      if (v3[4])
      {
        __swift_destroy_boxed_opaque_existential_0((v3 + 1));
      }

      break;
    case 0x1Au:

      v4 = *(type metadata accessor for LemonadeGenerativeMemoriesConfiguration() + 36);
      v5 = sub_1A5244854();
      (*(*(v5 - 8) + 8))(v3 + v4, v5);
      break;
    case 0x1Cu:
    case 0x1Fu:
    case 0x22u:
      swift_unknownObjectRelease();
      break;
    case 0x26u:

      __swift_destroy_boxed_opaque_existential_0((v3 + 2));
      break;
    default:
      break;
  }

  return swift_deallocObject();
}

unint64_t sub_1A44F1514()
{
  result = qword_1EB13C9A8;
  if (!qword_1EB13C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C9A8);
  }

  return result;
}

unint64_t sub_1A44F156C()
{
  result = qword_1EB13C9B0;
  if (!qword_1EB13C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C9B0);
  }

  return result;
}

uint64_t sub_1A44F166C()
{
  result = qword_1EB128ED0;
  if (!qword_1EB128ED0)
  {
    sub_1A3C76188();
    sub_1A52458C4();
  }

  return result;
}

uint64_t sub_1A44F16C8(uint64_t a1)
{
  result = sub_1A3C759B4(&qword_1EB13C988, type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A44F18AC(uint64_t a1)
{
  result = sub_1A3C759B4(&qword_1EB13C9A0, type metadata accessor for LemonadeBookmarksFeature.MacFeedProvider);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A44F19BC()
{
  result = qword_1EB122938;
  if (!qword_1EB122938)
  {
    sub_1A44EF754(255, &qword_1EB122930, MEMORY[0x1E697F960]);
    sub_1A44F01F4();
    sub_1A44F0248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122938);
  }

  return result;
}

unint64_t sub_1A44F1A58()
{
  result = qword_1EB13D0C0;
  if (!qword_1EB13D0C0)
  {
    sub_1A44F0788(255, &qword_1EB13D0B0, MEMORY[0x1E697F960]);
    sub_1A44F07F0();
    sub_1A3C759B4(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D0C0);
  }

  return result;
}

unint64_t sub_1A44F1B24()
{
  result = qword_1EB13C9D0;
  if (!qword_1EB13C9D0)
  {
    sub_1A44F2250(255, &qword_1EB13C9D8, sub_1A44F0994, type metadata accessor for LemonadeCollectionBookmarkCell, MEMORY[0x1E697F960]);
    sub_1A44F0A18();
    sub_1A3C759B4(&qword_1EB1297F0, type metadata accessor for LemonadeCollectionBookmarkCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C9D0);
  }

  return result;
}

void sub_1A44F1C40()
{
  sub_1A3C4C27C(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationDestination();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LemonadeNavigationContext(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A44F1D1C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1A3C4C27C(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A44F2A14(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A3C4C27C(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A44F1F00()
{
  if (!qword_1EB125728)
  {
    sub_1A40EEA04();
    sub_1A3F9515C();
    sub_1A3C759B4(&qword_1EB1256B0, sub_1A40EEA04);
    v0 = type metadata accessor for LemonadeMaterialTitleCell();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125728);
    }
  }
}

uint64_t sub_1A44F1FB8@<X0>(uint64_t a1@<X8>)
{
  (*(*v1 + 160))(v5);
  sub_1A3C34460(v5, v4);
  return sub_1A3CA2CF0(v4, a1);
}

uint64_t sub_1A44F2020(uint64_t a1)
{
  sub_1A4275F8C(0, &qword_1EB124D00, sub_1A3C3637C);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A44F2098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1A3C4C27C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1A44F2128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1A44F219C()
{
  if (!qword_1EB13C9E0)
  {
    sub_1A44F2250(255, &qword_1EB13C9E8, sub_1A44F22D4, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1A44F25F8();
    v0 = sub_1A5247F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C9E0);
    }
  }
}

void sub_1A44F2250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A44F22D4()
{
  if (!qword_1EB13C9F0)
  {
    sub_1A44F2414();
    sub_1A44F24F4();
    sub_1A3C759B4(&qword_1EB13CA08, sub_1A44F2414);
    sub_1A5243474();
    sub_1A3C759B4(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C9F0);
    }
  }
}

void sub_1A44F2414()
{
  if (!qword_1EB13C9F8)
  {
    sub_1A44F24A0(255, &unk_1EB122710, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    sub_1A424D1BC();
    v0 = type metadata accessor for LemonadeDetailsNavigationButton();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C9F8);
    }
  }
}

void sub_1A44F24A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1A44F24F4()
{
  if (!qword_1EB13CA00)
  {
    sub_1A44F2414();
    sub_1A5243474();
    sub_1A3C759B4(&qword_1EB13CA08, sub_1A44F2414);
    sub_1A3C759B4(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CA00);
    }
  }
}

unint64_t sub_1A44F25F8()
{
  result = qword_1EB13CA10;
  if (!qword_1EB13CA10)
  {
    sub_1A44F2250(255, &qword_1EB13C9E8, sub_1A44F22D4, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1A44F2414();
    sub_1A44F24F4();
    sub_1A3C759B4(&qword_1EB13CA08, sub_1A44F2414);
    sub_1A5243474();
    sub_1A3C759B4(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3C759B4(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CA10);
  }

  return result;
}

uint64_t sub_1A44F27E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A44F2848@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider.LemonadeBookmarkToolbarContent(0);
  sub_1A44F27E0(v1 + *(v3 + 20) + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), a1, type metadata accessor for LemonadeNavigationDestination);
  v4 = type metadata accessor for LemonadeNavigationDestination();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t sub_1A44F292C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A44F298C(uint64_t a1, uint64_t a2)
{
  sub_1A44F2A14(0, &qword_1EB125FC0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1A44F2A14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroy_92Tm_0()
{
  v1 = *(type metadata accessor for LemonadeNavigationDestination() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = (v0 + v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 0x23u:

      break;
    case 2u:
    case 3u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:

      break;
    case 4u:
    case 5u:

      break;
    case 6u:

      if (v3[8] != 1)
      {
      }

      break;
    case 0xBu:

      if (v3[5] != 1)
      {
      }

      break;
    case 0xCu:

      if (v3[2])
      {
      }

      if (v3[7])
      {
        __swift_destroy_boxed_opaque_existential_0((v3 + 4));
      }

      break;
    case 0xDu:

      if (v3[7])
      {
      }

      type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(0);
      sub_1A5245BA4();
    case 0xEu:

      if (v3[9])
      {
      }

      type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0);
      sub_1A5245BA4();
    case 0xFu:

      if (v3[9])
      {
      }

      type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration(0);
      goto LABEL_43;
    case 0x10u:

      if (v3[10])
      {
      }

      type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
      goto LABEL_43;
    case 0x11u:
    case 0x21u:
    case 0x24u:
    case 0x25u:

      break;
    case 0x12u:
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0((v3 + 2));

      break;
    case 0x13u:
    case 0x14u:

      break;
    case 0x15u:

      if (*(v3 + 16) != 255)
      {
      }

      break;
    case 0x16u:
      v7 = sub_1A52411C4();
      (*(*(v7 - 8) + 8))(v0 + v2, v7);

      swift_unknownObjectRelease();
LABEL_43:
      sub_1A5245BA4();
    case 0x17u:
      v6 = *(v3 + 16);
      if (v6 != 255)
      {
        sub_1A3EECFA4(*v3, v3[1], v6);
      }

      break;
    case 0x18u:
    case 0x1Bu:
    case 0x1Du:
    case 0x1Eu:
    case 0x20u:

      break;
    case 0x19u:

      if (v3[4])
      {
        __swift_destroy_boxed_opaque_existential_0((v3 + 1));
      }

      break;
    case 0x1Au:

      v4 = *(type metadata accessor for LemonadeGenerativeMemoriesConfiguration() + 36);
      v5 = sub_1A5244854();
      (*(*(v5 - 8) + 8))(v3 + v4, v5);
      break;
    case 0x1Cu:
    case 0x1Fu:
    case 0x22u:
      swift_unknownObjectRelease();
      break;
    case 0x26u:

      __swift_destroy_boxed_opaque_existential_0((v3 + 2));
      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_1A44F2FF8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for LemonadeNavigationDestination();
  type metadata accessor for LemonadeNavigationDestinationView();
  sub_1A3C759B4(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView);

  return LemonadeNavigationContainer.init(navigationContext:content:)(v4, a1, a2);
}

unint64_t sub_1A44F3124()
{
  result = qword_1EB1228E8;
  if (!qword_1EB1228E8)
  {
    sub_1A44F31CC();
    sub_1A3C759B4(&qword_1EB125730, sub_1A44F1F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1228E8);
  }

  return result;
}

void sub_1A44F31CC()
{
  if (!qword_1EB1228E0)
  {
    sub_1A44F1F00();
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1228E0);
    }
  }
}

uint64_t sub_1A44F32CC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A44F3380()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A44F33E0(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  v6 = *((*v3 & *v1) + 0x68);
  result = swift_beginAccess();
  if (*(v1 + v6) != v5)
  {
    return sub_1A44F3920();
  }

  return result;
}

void (*sub_1A44F3498(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A44F3548;
}

void sub_1A44F3548(uint64_t a1)
{
  v1 = *a1;
  sub_1A44F33E0(*(*a1 + 24));

  free(v1);
}

void sub_1A44F3584(uint64_t a1)
{
  *&v2 = a1;
  (*((**(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x78)) & *MEMORY[0x1E69E7D40]) + 0xD8))(a1);
  sub_1A43F1AD4(v2, 0);
  sub_1A43F1AD4(0, 1);
}

uint64_t sub_1A44F3644@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result & 1;
  return result;
}

id sub_1A44F36FC()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x80));
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  swift_beginAccess();
  v3 = 0.0;
  if (*(v0 + v2))
  {
    v3 = 1.0;
  }

  return [v1 setAlpha_];
}

uint64_t sub_1A44F379C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A44F37FC(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1A44F36FC();
}

id (*sub_1A44F386C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A44F38EC;
}

id sub_1A44F38EC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A44F36FC();
  }

  return result;
}

uint64_t sub_1A44F3920()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0);
  v3 = v2();
  v4 = sub_1A43F1854(v3);
  v5 = *(v0 + *((*v1 & *v0) + 0x78));
  v6 = (v2)(v4);
  return (*((*v1 & *v5) + 0x120))(v6);
}

uint64_t CarouselLayout.__allocating_init(viewModel:contentLayout:initialPageIndex:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  sub_1A44F4328(a1, a2, a3);
  v10 = v9;

  (*(*(*(v4 + 10) - 8) + 8))(a1);
  return v10;
}

uint64_t CarouselLayout.init(viewModel:contentLayout:initialPageIndex:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *MEMORY[0x1E69E7D40];
  sub_1A44F4328(a1, a2, a3);
  v9 = v8;

  (*(*(*((v7 & v6) + 0x50) - 8) + 8))(a1);
  return v9;
}

id sub_1A44F3B94()
{
  result = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x98));
  if (result)
  {
    return [result setNeedsUpdateOf_];
  }

  __break(1u);
  return result;
}

id sub_1A44F3BD8()
{
  [v0 referenceSize];
  v2 = v1;
  v4 = v3;
  result = [v0 setContentSize_];
  v6 = MEMORY[0x1E69E7D40];
  v7 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  if (v7[8])
  {
    __break(1u);
    goto LABEL_11;
  }

  [v0 setZPosition:*v7 forSublayoutAtIndex:-0.1];
  result = [v0 referenceDepth];
  v9 = v0 + *((*v6 & *v0) + 0x88);
  if (v9[8])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = [v0 setReferenceDepth:*v9 forSublayoutAtIndex:v8 * 0.5];
  v10 = v0 + *((*v6 & *v0) + 0x88);
  if (v10[8])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v0 setFrame:*v10 forSublayoutAtIndex:{0.0, 0.0, v2, v4}];
  result = [v0 referenceDepth];
  v12 = v0 + *((*v6 & *v0) + 0x90);
  if (v12[8])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v0 setZPosition:*v12 forSublayoutAtIndex:v11 * -0.2];
  result = [v0 referenceDepth];
  v14 = v0 + *((*v6 & *v0) + 0x90);
  if (v14[8])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = [v0 setReferenceDepth:*v14 forSublayoutAtIndex:v13 * 0.5];
  v15 = v0 + *((*v6 & *v0) + 0x90);
  if (v15[8])
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v16 = *v15;

  return [v0 setFrame:v16 forSublayoutAtIndex:{0.0, 0.0, v2, v4}];
}

void sub_1A44F3E28(void *a1)
{
  v1 = a1;
  sub_1A44F3BD8();
}

id sub_1A44F3E70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselLayout();
  objc_msgSendSuper2(&v2, sel_referenceSizeDidChange);
  return sub_1A44F3B94();
}

void sub_1A44F3EE4(void *a1)
{
  v1 = a1;
  sub_1A44F3E70();
}

id sub_1A44F3F2C()
{
  result = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x98));
  if (result)
  {
    [result updateIfNeeded];
    v2.receiver = v0;
    v2.super_class = type metadata accessor for CarouselLayout();
    return objc_msgSendSuper2(&v2, sel_update);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A44F3FD4(void *a1)
{
  v1 = a1;
  sub_1A44F3F2C();
}

id CarouselLayout.__allocating_init(composition:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithComposition_];

  return v3;
}

void sub_1A44F409C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1A44F4840();
}

id CarouselLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarouselLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A44F422C(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);

  v3 = *&a1[*((*v2 & *a1) + 0x98)];
}

void sub_1A44F4328(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = MEMORY[0x1E69E7D40];
  v8 = *v4;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  *(v4 + *((v9 & v8) + 0x68)) = 0;
  *(v4 + *((*v7 & *v4) + 0x70)) = 1;
  v13 = v4 + *((*v7 & *v4) + 0x88);
  *v13 = 0;
  v13[8] = 1;
  v14 = v4 + *((*v7 & *v4) + 0x90);
  *v14 = 0;
  v14[8] = 1;
  *(v4 + *((*v7 & *v4) + 0x98)) = 0;
  (*(*(v10 - 8) + 16))(v4 + *((*v7 & *v4) + 0x60), a1, v10, v12);
  *(v4 + *((*v7 & *v4) + 0x78)) = a2;
  type metadata accessor for ValueDrivingScrollLayout();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v27 = a2;
  *(v4 + *((*v7 & *v4) + 0x80)) = sub_1A43F16C8(sub_1A44F4B94, v15);
  v29.receiver = v4;
  v29.super_class = type metadata accessor for CarouselLayout();
  v16 = objc_msgSendSuper2(&v29, sel_init);
  v17 = *((*v7 & *v16) + 0xB8);
  v18 = v16;
  v17(a3);
  v19 = [objc_allocWithZone(off_1E7721940) initWithTarget:sub_1A524EA94() needsUpdateSelector:sel_setNeedsUpdate];

  swift_unknownObjectRelease();
  v20 = *((*v7 & *v18) + 0x98);
  v21 = *(v18 + v20);
  *(v18 + v20) = v19;
  v22 = v19;

  if (v22)
  {
    [v22 addUpdateSelector_];

    v23 = [v18 addSublayout_];
    v24 = v18 + *((*v7 & *v18) + 0x90);
    *v24 = v23;
    v24[8] = 0;
    v25 = [v18 addSublayout_];
    v26 = v18 + *((*v7 & *v18) + 0x88);
    *v26 = v25;
    v26[8] = 0;
    sub_1A44F3B94();
    sub_1A524C354();
  }

  __break(1u);
}

uint64_t sub_1A44F48A0()
{
  result = swift_checkMetadataState();
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

void *sub_1A44F4BE8()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_1A524D254();
    v7 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1A44F4D38@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.collectionList.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A44F4D64(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return EnvironmentValues.collectionList.setter(v1);
}

unint64_t sub_1A44F4DB4()
{
  result = qword_1EB13CA28;
  if (!qword_1EB13CA28)
  {
    sub_1A44F6720(255, &qword_1EB1291D8, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], MEMORY[0x1E69C1FC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CA28);
  }

  return result;
}

uint64_t sub_1A44F4E38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  *(a2 + 32) = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = swift_getKeyPath();
  *(a2 + 56) = 0;
  v4 = type metadata accessor for LemonadePickerRootView(0);
  v5 = v4[8];
  *(a2 + v5) = swift_getKeyPath();
  sub_1A4137EE8(0);
  swift_storeEnumTagMultiPayload();
  v6 = v4[9];
  *(a2 + v6) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  sub_1A44F6720(0, &qword_1EB1291D8, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], MEMORY[0x1E69C1FC0]);
  swift_allocObject();
  sub_1A5242844();
  sub_1A44F4DB4();
  sub_1A524BAC4();
  *(a2 + v4[10]) = a1;
  type metadata accessor for LemonadeNavigationContext(0);
  sub_1A3C7A2E0(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  return sub_1A524BAC4();
}

void sub_1A44F4FF8()
{
  if (!qword_1EB13CA30)
  {
    type metadata accessor for LemonadePickerRootViewModel();
    sub_1A44F9BC0(255, &qword_1EB13CA38, sub_1A44F50B0, &qword_1EB1278A0, MEMORY[0x1E697DA60]);
    sub_1A44F68D4();
    v0 = type metadata accessor for LemonadeSpecsProviderView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CA30);
    }
  }
}

void sub_1A44F50B0()
{
  if (!qword_1EB13CA40)
  {
    sub_1A44F5164();
    sub_1A3C7A2E0(&qword_1EB13CB10, sub_1A44F5164);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CA40);
    }
  }
}

void sub_1A44F5164()
{
  if (!qword_1EB13CA48)
  {
    sub_1A44F54B0(255);
    sub_1A44F54E4();
    sub_1A44F5808();
    type metadata accessor for LemonadeNavigationDestination();
    sub_1A44F9BC0(255, &qword_1EB13CB00, type metadata accessor for LemonadeNavigationDestinationView, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass);
    sub_1A44F5A64();
    sub_1A44F65D0();
    sub_1A44F5C10();
    sub_1A44F5D8C();
    sub_1A44F5ED0();
    sub_1A44F5FE4();
    sub_1A44F60AC();
    sub_1A3C7A2E0(&qword_1EB13CAE0, sub_1A44F60AC);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A44F6684();
    sub_1A3C7A2E0(&qword_1EB13CAF8, sub_1A44F6684);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3C7A2E0(&qword_1EB1298A0, type metadata accessor for LemonadeNavigationDestination);
    sub_1A44F6774();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248834();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CA48);
    }
  }
}

void sub_1A44F54E4()
{
  if (!qword_1EB13CA50)
  {
    sub_1A44F5808();
    type metadata accessor for LemonadeNavigationDestination();
    sub_1A44F9BC0(255, &qword_1EB13CB00, type metadata accessor for LemonadeNavigationDestinationView, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass);
    sub_1A44F5A64();
    sub_1A44F65D0();
    sub_1A44F5C10();
    sub_1A44F5D8C();
    sub_1A44F5ED0();
    sub_1A44F5FE4();
    sub_1A44F60AC();
    sub_1A3C7A2E0(&qword_1EB13CAE0, sub_1A44F60AC);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A44F6684();
    sub_1A3C7A2E0(&qword_1EB13CAF8, sub_1A44F6684);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3C7A2E0(&qword_1EB1298A0, type metadata accessor for LemonadeNavigationDestination);
    sub_1A44F6774();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CA50);
    }
  }
}

void sub_1A44F5808()
{
  if (!qword_1EB13CA58)
  {
    sub_1A44F5A64();
    sub_1A44F65D0();
    sub_1A44F5C10();
    sub_1A44F5D8C();
    sub_1A44F5ED0();
    sub_1A44F5FE4();
    sub_1A44F60AC();
    sub_1A3C7A2E0(&qword_1EB13CAE0, sub_1A44F60AC);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A44F6684();
    sub_1A3C7A2E0(&qword_1EB13CAF8, sub_1A44F6684);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CA58);
    }
  }
}

void sub_1A44F5A64()
{
  if (!qword_1EB13CA60)
  {
    sub_1A44F5C10();
    sub_1A44F5D8C();
    sub_1A44F5ED0();
    sub_1A44F5FE4();
    sub_1A44F60AC();
    sub_1A3C7A2E0(&qword_1EB13CAE0, sub_1A44F60AC);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CA60);
    }
  }
}

void sub_1A44F5C10()
{
  if (!qword_1EB13CA68)
  {
    sub_1A44F5D8C();
    sub_1A44F5ED0();
    sub_1A44F5FE4();
    sub_1A44F60AC();
    sub_1A3C7A2E0(&qword_1EB13CAE0, sub_1A44F60AC);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CA68);
    }
  }
}

void sub_1A44F5D8C()
{
  if (!qword_1EB13CA70)
  {
    sub_1A44F5ED0();
    sub_1A44F5FE4();
    sub_1A44F60AC();
    sub_1A3C7A2E0(&qword_1EB13CAE0, sub_1A44F60AC);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CA70);
    }
  }
}

void sub_1A44F5ED0()
{
  if (!qword_1EB13CA78)
  {
    sub_1A44F5FE4();
    sub_1A44F60AC();
    sub_1A3C7A2E0(&qword_1EB13CAE0, sub_1A44F60AC);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CA78);
    }
  }
}

void sub_1A44F5FE4()
{
  if (!qword_1EB13CA80)
  {
    sub_1A44F60AC();
    sub_1A3C7A2E0(&qword_1EB13CAE0, sub_1A44F60AC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CA80);
    }
  }
}

void sub_1A44F60AC()
{
  if (!qword_1EB13CA88)
  {
    sub_1A44F6140();
    sub_1A3C7A2E0(&qword_1EB13CAD8, sub_1A44F6140);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CA88);
    }
  }
}

void sub_1A44F6140()
{
  if (!qword_1EB13CA90)
  {
    sub_1A44F61D4();
    sub_1A3C7A2E0(&qword_1EB13CAD0, sub_1A44F61D4);
    v0 = sub_1A5242CE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CA90);
    }
  }
}

void sub_1A44F61D4()
{
  if (!qword_1EB13CA98)
  {
    sub_1A44FDCE0(255, &qword_1EB13CAA0, MEMORY[0x1E697F960]);
    sub_1A44F6324();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CA98);
    }
  }
}

void sub_1A44F6254(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for CollectionsView(255);
    v7 = type metadata accessor for AlbumsFeedView(255);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A44F6324()
{
  result = qword_1EB13CAB8;
  if (!qword_1EB13CAB8)
  {
    sub_1A44FDCE0(255, &qword_1EB13CAA0, MEMORY[0x1E697F960]);
    sub_1A44F63C0();
    sub_1A44F6504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CAB8);
  }

  return result;
}

unint64_t sub_1A44F63C0()
{
  result = qword_1EB13CAC0;
  if (!qword_1EB13CAC0)
  {
    sub_1A44F6254(255, &qword_1EB13CAA8, MEMORY[0x1E697F960]);
    sub_1A44F64BC(&qword_1EB1C55E0, type metadata accessor for CollectionsView);
    sub_1A44F64BC(&qword_1EB1C55E8, type metadata accessor for AlbumsFeedView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CAC0);
  }

  return result;
}

uint64_t sub_1A44F64BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A44F6504()
{
  result = qword_1EB13CAC8;
  if (!qword_1EB13CAC8)
  {
    sub_1A44FDC78(255, &qword_1EB13CAB0, MEMORY[0x1E697F960]);
    sub_1A44F64BC(qword_1EB1C55F0, type metadata accessor for PeopleFeedView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CAC8);
  }

  return result;
}

void sub_1A44F65D0()
{
  if (!qword_1EB13CAE8)
  {
    sub_1A44F6684();
    sub_1A3C7A2E0(&qword_1EB13CAF8, sub_1A44F6684);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CAE8);
    }
  }
}

void sub_1A44F6684()
{
  if (!qword_1EB13CAF0)
  {
    sub_1A44F6720(255, &qword_1EB127450, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
    sub_1A425618C();
    v0 = sub_1A5247F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CAF0);
    }
  }
}

void sub_1A44F6720(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A44F6774()
{
  result = qword_1EB13CB08;
  if (!qword_1EB13CB08)
  {
    sub_1A44F9BC0(255, &qword_1EB13CB00, type metadata accessor for LemonadeNavigationDestinationView, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass);
    sub_1A3C7A2E0(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView);
    sub_1A44F6870(&qword_1EB127928, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CB08);
  }

  return result;
}

uint64_t sub_1A44F6870(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A44FA330(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A44F68D4()
{
  result = qword_1EB13CB18;
  if (!qword_1EB13CB18)
  {
    v1 = MEMORY[0x1E697DA60];
    sub_1A44F9BC0(255, &qword_1EB13CA38, sub_1A44F50B0, &qword_1EB1278A0, MEMORY[0x1E697DA60]);
    sub_1A44F5164();
    sub_1A3C7A2E0(&qword_1EB13CB10, sub_1A44F5164);
    swift_getOpaqueTypeConformance2();
    sub_1A44F6870(&qword_1EB1278A8, &qword_1EB1278A0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CB18);
  }

  return result;
}

void sub_1A44F6A00(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v85 = sub_1A5242D14();
  v3 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v83 = &v63 - v6;
  v82 = sub_1A52425F4();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v78 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v63 - v11;
  sub_1A44F5164();
  v76 = v13;
  v77 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F50B0();
  v80 = v16;
  v79 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for LemonadePickerRootView(0);
  v73 = *(v75 + 44);
  v72 = a1;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  (*(v10 + 8))(v12, v9);
  v94 = v96;
  v95 = v97;
  v87 = a1;
  sub_1A44F54B0(0);
  v71 = v18;
  sub_1A44F54E4();
  v70 = v19;
  v69 = sub_1A3C7A2E0(&qword_1EB126F10, sub_1A44F54B0);
  v68 = sub_1A3C7A2E0(&qword_1EB126F08, sub_1A44F54B0);
  v67 = sub_1A3C7A2E0(&qword_1EB126F00, sub_1A44F54B0);
  sub_1A44F5808();
  v66 = v20;
  v65 = type metadata accessor for LemonadeNavigationDestination();
  sub_1A44F9BC0(255, &qword_1EB13CB00, type metadata accessor for LemonadeNavigationDestinationView, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass);
  v64 = v21;
  sub_1A44F5A64();
  v23 = v22;
  sub_1A44F65D0();
  v25 = v24;
  sub_1A44F5C10();
  v27 = v26;
  sub_1A44F5D8C();
  v29 = v28;
  sub_1A44F5ED0();
  v31 = v30;
  sub_1A44F5FE4();
  v33 = v32;
  sub_1A44F60AC();
  v35 = v34;
  v36 = sub_1A3C7A2E0(&qword_1EB13CAE0, sub_1A44F60AC);
  v88 = v35;
  v89 = MEMORY[0x1E69E5FE0];
  v90 = v36;
  v91 = MEMORY[0x1E69E5FE8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_1A3D5F9DC();
  v88 = v33;
  v89 = MEMORY[0x1E69E6158];
  v90 = OpaqueTypeConformance2;
  v91 = v38;
  v39 = swift_getOpaqueTypeConformance2();
  v88 = v31;
  v89 = v39;
  v40 = swift_getOpaqueTypeConformance2();
  v88 = v29;
  v89 = v40;
  v41 = swift_getOpaqueTypeConformance2();
  v88 = v27;
  v89 = v41;
  v42 = swift_getOpaqueTypeConformance2();
  sub_1A44F6684();
  v44 = v43;
  v45 = sub_1A3C7A2E0(&qword_1EB13CAF8, sub_1A44F6684);
  v88 = v44;
  v89 = v45;
  v46 = swift_getOpaqueTypeConformance2();
  v88 = v23;
  v89 = v25;
  v90 = v42;
  v91 = v46;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = sub_1A3C7A2E0(&qword_1EB1298A0, type metadata accessor for LemonadeNavigationDestination);
  v49 = sub_1A44F6774();
  v88 = v66;
  v89 = v65;
  v90 = v64;
  v91 = v47;
  v92 = v48;
  v93 = v49;
  swift_getOpaqueTypeConformance2();
  sub_1A5248814();
  sub_1A524BAA4();
  v50 = v78;
  sub_1A46593C4(v78);

  v51 = sub_1A3C7A2E0(&qword_1EB13CB10, sub_1A44F5164);
  v52 = v74;
  v53 = v76;
  View.lemonadeInlinePlaybackEnvironment(allowedPlayState:)(v50, v76, v51);
  (*(v81 + 8))(v50, v82);
  (*(v77 + 8))(v15, v53);
  KeyPath = swift_getKeyPath();
  v55 = v83;
  sub_1A3D61808(v83);
  v57 = v84;
  v56 = v85;
  (*(v3 + 104))(v84, *MEMORY[0x1E69C2210], v85);
  LOBYTE(v48) = sub_1A5242D04();
  v58 = *(v3 + 8);
  v58(v57, v56);
  v58(v55, v56);
  if (v48)
  {
    v59 = 22.0;
  }

  else
  {
    v59 = 16.0;
  }

  v60 = v86;
  (*(v79 + 32))(v86, v52, v80);
  sub_1A44F9BC0(0, &qword_1EB13CA38, sub_1A44F50B0, &qword_1EB1278A0, MEMORY[0x1E697DA60]);
  v62 = v60 + *(v61 + 36);
  *v62 = KeyPath;
  *(v62 + 8) = 0x4030000000000000;
  *(v62 + 16) = v59;
  *(v62 + 24) = 0;
  *(v62 + 32) = v59;
}

uint64_t sub_1A44F73F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v90 = sub_1A5249284();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5249234();
  v94 = *(v4 - 8);
  v95 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadePickerRootView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1A44F60AC();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44F5FE4();
  v84 = v14;
  v82 = *(v14 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F5ED0();
  v86 = v17;
  v83 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F5D8C();
  v92 = v19;
  v87 = *(v19 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F5C10();
  v98 = v21;
  v93 = *(v21 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v91 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F5A64();
  v100 = *(v23 - 1);
  v101 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v99 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F5808();
  v103 = *(v25 - 8);
  v104 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v102 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = sub_1A524BC04();
  v13[1] = v27;
  sub_1A44FD6E8(0, &qword_1EB13CC00, sub_1A44F6140);
  sub_1A44FDD88(a1, &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePickerRootView);
  v28 = *(v8 + 80);
  v29 = (v28 + 16) & ~v28;
  v105 = v9;
  v96 = v28;
  v30 = swift_allocObject();
  v97 = v29;
  v106 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FD754(v106, v30 + v29, type metadata accessor for LemonadePickerRootView);
  sub_1A524A044();
  sub_1A44F61D4();
  sub_1A3C7A2E0(&qword_1EB13CAD0, sub_1A44F61D4);
  sub_1A5242CF4();
  sub_1A44F9F70();
  sub_1A524BAA4();
  v31 = sub_1A3C7A2E0(&qword_1EB13CAE0, sub_1A44F60AC);
  sub_1A524A664();

  sub_1A44FDEC0(v13, sub_1A44F60AC);
  v32 = *(a1 + 16);
  v107 = a1;
  v80 = *(a1 + 24);
  v79 = v6;
  if (v80 == 1)
  {
    v34 = v32;
    v35 = v32;
  }

  else
  {

    sub_1A524D254();
    v33 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v32, 0);
    v34 = (*(v94 + 8))(v6, v95);
    v35 = v109;
  }

  if (!v35 || (v36 = (*((*MEMORY[0x1E69E7D40] & *v35) + 0x3A8))(v34), v38 = v37, v35, !v38))
  {

    v36 = 0;
    v38 = 0xE000000000000000;
  }

  v113 = v36;
  v114 = v38;
  v109 = v11;
  v110 = MEMORY[0x1E69E5FE0];
  v111 = v31;
  v112 = MEMORY[0x1E69E5FE8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = sub_1A3D5F9DC();
  v41 = MEMORY[0x1E69E6158];
  v42 = v81;
  v43 = v84;
  sub_1A524ABB4();

  (*(v82 + 8))(v16, v43);
  v109 = v43;
  v110 = v41;
  v111 = OpaqueTypeConformance2;
  v112 = v40;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v85;
  v46 = v86;
  sub_1A425D400(0, v86, v44);
  (*(v83 + 8))(v42, v46);
  v47 = v89;
  v48 = v88;
  v49 = v90;
  (*(v89 + 104))(v88, *MEMORY[0x1E697C438], v90);
  v109 = v46;
  v110 = v44;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v91;
  v52 = v92;
  sub_1A524AF34();
  (*(v47 + 8))(v48, v49);
  (*(v87 + 8))(v45, v52);
  if (v80)
  {
    v53 = v32;
  }

  else
  {

    sub_1A524D254();
    v54 = sub_1A524A014();
    sub_1A5246DF4();

    v55 = v79;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v32, 0);
    v53 = (*(v94 + 8))(v55, v95);
    v32 = v109;
  }

  if (v32 && (v56 = (*((*MEMORY[0x1E69E7D40] & *v32) + 0x3C0))(v53), v32, (v56 & 1) != 0))
  {
    v57 = 0;
  }

  else
  {
    v57 = 2;
  }

  sub_1A44FD844(0, &qword_1EB126218, MEMORY[0x1E697C290], MEMORY[0x1E69E6F90]);
  sub_1A5248AB4();
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1A52F8E10;
  sub_1A5248A94();
  v109 = v52;
  v110 = v50;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v98;
  v61 = v99;
  MEMORY[0x1A5906470](v57, v58, v98, v59);

  v62 = (*(v93 + 8))(v51, v60);
  MEMORY[0x1EEE9AC00](v62);
  v63 = v107;
  sub_1A44F65D0();
  v65 = v64;
  v109 = v60;
  v110 = v59;
  v66 = swift_getOpaqueTypeConformance2();
  sub_1A44F6684();
  v68 = v67;
  v69 = sub_1A3C7A2E0(&qword_1EB13CAF8, sub_1A44F6684);
  v109 = v68;
  v110 = v69;
  v70 = swift_getOpaqueTypeConformance2();
  v72 = v101;
  v71 = v102;
  sub_1A524B0E4();
  (*(v100 + 8))(v61, v72);
  type metadata accessor for LemonadeNavigationDestination();
  v73 = v106;
  sub_1A44FDD88(v63, v106, type metadata accessor for LemonadePickerRootView);
  v74 = v97;
  v75 = swift_allocObject();
  sub_1A44FD754(v73, v75 + v74, type metadata accessor for LemonadePickerRootView);
  sub_1A44F9BC0(0, &qword_1EB13CB00, type metadata accessor for LemonadeNavigationDestinationView, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass);
  v109 = v72;
  v110 = v65;
  v111 = v66;
  v112 = v70;
  swift_getOpaqueTypeConformance2();
  sub_1A3C7A2E0(&qword_1EB1298A0, type metadata accessor for LemonadeNavigationDestination);
  sub_1A44F6774();
  v76 = v104;
  sub_1A524AE04();

  return (*(v103 + 8))(v71, v76);
}

uint64_t sub_1A44F8280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v3 = MEMORY[0x1E697F948];
  sub_1A44FDC78(0, &qword_1EB13CC10, MEMORY[0x1E697F948]);
  v83 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v84 = &v71 - v5;
  sub_1A44FDC78(0, &qword_1EB13CAB0, MEMORY[0x1E697F960]);
  v95 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v71 - v7;
  sub_1A44FA394(0);
  v81 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v71 - v11;
  v82 = type metadata accessor for PeopleFeedView(0);
  MEMORY[0x1EEE9AC00](v82);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44F9F70();
  v76 = v14;
  v75 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v91 = v16;
  v73 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v71 - v17;
  v89 = type metadata accessor for AlbumsFeedView(0);
  MEMORY[0x1EEE9AC00](v89);
  v78 = (&v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v77 = &v71 - v20;
  sub_1A44FDCE0(0, &qword_1EB13CC18, v3);
  v92 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v94 = &v71 - v22;
  sub_1A44F6254(0, &qword_1EB13CC20, MEMORY[0x1E697F948]);
  v86 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v88 = &v71 - v24;
  sub_1A44F6254(0, &qword_1EB13CAA8, MEMORY[0x1E697F960]);
  v93 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v90 = &v71 - v26;
  v87 = type metadata accessor for CollectionsView(0);
  MEMORY[0x1EEE9AC00](v87);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1A5249234();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a1 + 16);
  v34 = *(a1 + 24);
  if (v34 == 1)
  {
    v35 = v33;
    v36 = v33;
    if (!v33)
    {
      goto LABEL_8;
    }
  }

  else
  {

    sub_1A524D254();
    v37 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v33, 0);
    v35 = (*(v30 + 8))(v32, v29);
    v36 = v97;
    if (!v97)
    {
      goto LABEL_8;
    }
  }

  v38 = (*((*MEMORY[0x1E69E7D40] & *v36) + 0x1C8))(v35);

  if (v38 > 6)
  {
    swift_storeEnumTagMultiPayload();
    sub_1A44F64BC(qword_1EB1C55F0, type metadata accessor for PeopleFeedView);
    v51 = v85;
    sub_1A5249744();
    v52 = MEMORY[0x1E697F960];
    sub_1A44FDDF0(v51, v94, &qword_1EB13CAB0, MEMORY[0x1E697F960], sub_1A44FDC78);
    swift_storeEnumTagMultiPayload();
    sub_1A44F63C0();
    sub_1A44F6504();
    sub_1A5249744();
    return sub_1A44FDE60(v51, &qword_1EB13CAB0, v52, sub_1A44FDC78);
  }

  if (((1 << v38) & 0x1A) != 0)
  {
    type metadata accessor for LemonadePickerRootView(0);
    sub_1A524BAA4();
    *v13 = v97;
    *(v13 + 1) = swift_getKeyPath();
    v13[16] = 0;
    *(v13 + 3) = swift_getKeyPath();
    v13[32] = 0;
    v45 = type metadata accessor for LemonadePeopleSectionProvider(0);
    v46 = v80;
    (*(*(v45 - 8) + 56))(v80, 1, 1, v45);
    sub_1A44FDD88(v46, v79, sub_1A44FA394);
    sub_1A524B694();
    sub_1A44FDEC0(v46, sub_1A44FA394);
    sub_1A44FDD88(v13, v84, type metadata accessor for PeopleFeedView);
    swift_storeEnumTagMultiPayload();
    sub_1A44F64BC(qword_1EB1C55F0, type metadata accessor for PeopleFeedView);
    v47 = v85;
    sub_1A5249744();
    v48 = MEMORY[0x1E697F960];
    sub_1A44FDDF0(v47, v94, &qword_1EB13CAB0, MEMORY[0x1E697F960], sub_1A44FDC78);
    swift_storeEnumTagMultiPayload();
    sub_1A44F63C0();
    sub_1A44F6504();
    sub_1A5249744();
    sub_1A44FDE60(v47, &qword_1EB13CAB0, v48, sub_1A44FDC78);
    v43 = type metadata accessor for PeopleFeedView;
    v44 = v13;
    return sub_1A44FDEC0(v44, v43);
  }

  if (((1 << v38) & 0x21) == 0)
  {
    v49 = sub_1A44F4BE8();
    if (v34)
    {
      v50 = v33;
    }

    else
    {

      sub_1A524D254();
      v54 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3D35BAC(v33, 0);
      (*(v30 + 8))(v32, v29);
      v33 = v97;
    }

    v55 = *(a1 + *(type metadata accessor for LemonadePickerRootView(0) + 40));

    v56 = v72;
    v57 = v91;
    sub_1A524BAB4();
    v58 = v74;
    v59 = v76;
    sub_1A524BAB4();
    KeyPath = swift_getKeyPath();
    v61 = v78;
    *v78 = KeyPath;
    sub_1A3E71AC8(0);
    swift_storeEnumTagMultiPayload();
    v62 = v89;
    *(v61 + *(v89 + 24)) = v49;
    *(v61 + v62[7]) = v33;
    *(v61 + v62[5]) = v55;
    if (v33 && v49)
    {
      v63 = *((*MEMORY[0x1E69E7D40] & *v33) + 0x360);
      v64 = v33;
      v65 = v49;
      v66 = v63();
      if (v66)
      {
        if (*(v66 + 16))
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v67 = [v65 px:0 fetchObjectWithLocalIdentifier:?];
      }

      else
      {

        v67 = 0;
      }

      v61 = v78;
    }

    else
    {
      v67 = 0;
    }

    *(v61 + v62[8]) = v67;
    (*(v73 + 32))(v61 + v62[9], v56, v57);
    (*(v75 + 32))(v61 + v62[10], v58, v59);
    v68 = v77;
    sub_1A44FD754(v61, v77, type metadata accessor for AlbumsFeedView);
    sub_1A44FDD88(v68, v88, type metadata accessor for AlbumsFeedView);
    swift_storeEnumTagMultiPayload();
    sub_1A44F64BC(&qword_1EB1C55E0, type metadata accessor for CollectionsView);
    sub_1A44F64BC(&qword_1EB1C55E8, type metadata accessor for AlbumsFeedView);
    v69 = v90;
    sub_1A5249744();
    v70 = MEMORY[0x1E697F960];
    sub_1A44FDDF0(v69, v94, &qword_1EB13CAA8, MEMORY[0x1E697F960], sub_1A44F6254);
    swift_storeEnumTagMultiPayload();
    sub_1A44F63C0();
    sub_1A44F6504();
    sub_1A5249744();
    sub_1A44FDE60(v69, &qword_1EB13CAA8, v70, sub_1A44F6254);
    v43 = type metadata accessor for AlbumsFeedView;
    v44 = v68;
    return sub_1A44FDEC0(v44, v43);
  }

LABEL_8:
  v39 = *(a1 + *(type metadata accessor for LemonadePickerRootView(0) + 40));

  sub_1A524BAB4();
  v40 = v88;
  *&v28[*(v87 + 20)] = v39;
  sub_1A44FDD88(v28, v40, type metadata accessor for CollectionsView);
  swift_storeEnumTagMultiPayload();
  sub_1A44F64BC(&qword_1EB1C55E0, type metadata accessor for CollectionsView);
  sub_1A44F64BC(&qword_1EB1C55E8, type metadata accessor for AlbumsFeedView);
  v41 = v90;
  sub_1A5249744();
  v42 = MEMORY[0x1E697F960];
  sub_1A44FDDF0(v41, v94, &qword_1EB13CAA8, MEMORY[0x1E697F960], sub_1A44F6254);
  swift_storeEnumTagMultiPayload();
  sub_1A44F63C0();
  sub_1A44F6504();
  sub_1A5249744();
  sub_1A44FDE60(v41, &qword_1EB13CAA8, v42, sub_1A44F6254);
  v43 = type metadata accessor for CollectionsView;
  v44 = v28;
  return sub_1A44FDEC0(v44, v43);
}

uint64_t sub_1A44F91F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - v8;
  v10 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1A44F6684();
  v21[0] = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadePickerRootView(0);
  v15 = a1;
  sub_1A3D61808(v9);
  (*(v4 + 104))(v6, *MEMORY[0x1E69C2210], v3);
  LOBYTE(a1) = sub_1A5242D04();
  v16 = *(v4 + 8);
  v16(v6, v3);
  v16(v9, v3);
  if (a1)
  {
    v17 = sub_1A5249824();
  }

  else
  {
    v17 = sub_1A5249814();
  }

  MEMORY[0x1EEE9AC00](v17);
  v21[-2] = v15;
  sub_1A44F6720(0, &qword_1EB127450, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
  sub_1A425618C();
  sub_1A5247F24();
  v18 = sub_1A3C7A2E0(&qword_1EB13CAF8, sub_1A44F6684);
  v19 = v21[0];
  MEMORY[0x1A5904CD0](v14, v21[0], v18);
  return (*(v12 + 8))(v14, v19);
}

uint64_t sub_1A44F9520(uint64_t a1)
{
  v2 = type metadata accessor for LemonadePickerRootView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A44FDD88(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePickerRootView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1A44FD754(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for LemonadePickerRootView);
  return sub_1A524B704();
}

uint64_t sub_1A44F9674(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4137EE8(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5248284();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadePickerRootView(0);
  sub_1A44FDD88(a1 + *(v13 + 32), v8, sub_1A4137EE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A5248274();
  return (*(v10 + 8))(v12, v9);
}

void sub_1A44F98F4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FDD88(a1, v6, type metadata accessor for LemonadeNavigationDestination);
  type metadata accessor for LemonadePickerRootView(0);
  sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  sub_1A524BAA4();
  sub_1A487864C(v6, v14, 0, a2);
  KeyPath = swift_getKeyPath();
  v8 = type metadata accessor for LemonadePickerRootViewModel();
  v9 = sub_1A3C7A2E0(&qword_1EB1403D0, type metadata accessor for LemonadePickerRootViewModel);
  LemonadeMutableContainerSizeSpecsProviderModel.containerSize.getter(v8, v9);
  sub_1A4187540(&v13 + 7, v10);
  LOBYTE(a1) = HIBYTE(v13);
  sub_1A44F9BC0(0, &qword_1EB13CB00, type metadata accessor for LemonadeNavigationDestinationView, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass);
  v12 = a2 + *(v11 + 36);
  *v12 = KeyPath;
  v12[8] = a1;
}

void sub_1A44F9AB4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = *(**(*(a2 + *(type metadata accessor for LemonadePickerRootView(0) + 40)) + 32) + 736);

  v7(&v11, v8);

  LOBYTE(a2) = v11;
  sub_1A3D06804(a1, a3);
  sub_1A44F9BC0(0, &qword_1EB13CB20, sub_1A44F4FF8, &qword_1EB122138, &type metadata for LemonadeShelvesLayoutStyle);
  v10 = a3 + *(v9 + 36);
  *v10 = KeyPath;
  *(v10 + 8) = a2;
}

void sub_1A44F9BC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_1A44FA330(255, a4, a5, MEMORY[0x1E6980A08]);
    v8 = sub_1A5248804();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A44F9C58()
{
  result = qword_1EB13CB30;
  if (!qword_1EB13CB30)
  {
    sub_1A44F9BC0(255, &qword_1EB13CB20, sub_1A44F4FF8, &qword_1EB122138, &type metadata for LemonadeShelvesLayoutStyle);
    sub_1A3C7A2E0(&qword_1EB13CB28, sub_1A44F4FF8);
    sub_1A44F6870(&qword_1EB122140, &qword_1EB122138, &type metadata for LemonadeShelvesLayoutStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CB30);
  }

  return result;
}

uint64_t sub_1A44F9D70(uint64_t a1)
{
  sub_1A44F4FF8();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v1 + *(a1 + 40));
  v11 = 3;
  v10 = v1;
  v6 = type metadata accessor for LemonadePickerRootViewModel();
  sub_1A44F9BC0(0, &qword_1EB13CA38, sub_1A44F50B0, &qword_1EB1278A0, MEMORY[0x1E697DA60]);
  sub_1A44F68D4();

  LemonadeSpecsProviderView.init(model:presentationContext:content:)(&v12, &v11, sub_1A44FE050, v6, v5);
  v9 = v1;
  sub_1A44F9BC0(0, &qword_1EB13CB20, sub_1A44F4FF8, &qword_1EB122138, &type metadata for LemonadeShelvesLayoutStyle);
  sub_1A3C7A2E0(&qword_1EB13CB28, sub_1A44F4FF8);
  sub_1A44F9C58();
  sub_1A524A4B4();
  return sub_1A3D05B0C(v5);
}

void sub_1A44F9F70()
{
  if (!qword_1EB13CB38)
  {
    sub_1A44F6720(255, &qword_1EB1291D8, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], MEMORY[0x1E69C1FC0]);
    v0 = sub_1A524BAE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CB38);
    }
  }
}

void sub_1A44FA008()
{
  sub_1A44FA258(319, &qword_1EB1246A0, &qword_1EB126BE0, &qword_1EB126BF0, 0x1E69789A8);
  if (v0 <= 0x3F)
  {
    sub_1A44FD844(319, &qword_1EB1247F8, sub_1A3F17950, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A44FA258(319, &qword_1EB13CB40, &unk_1EB120A60, &qword_1EB120A70, 0x1E6978760);
      if (v2 <= 0x3F)
      {
        sub_1A44FA330(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A44FD844(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A44FD844(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for LemonadePickerRootViewModel();
              if (v6 <= 0x3F)
              {
                sub_1A44FD844(319, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
                if (v7 <= 0x3F)
                {
                  sub_1A44F9F70();
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

void sub_1A44FA258(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1A44FA2C8(255, a3, a4, a5, MEMORY[0x1E69E6720]);
    v6 = sub_1A5247E54();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A44FA2C8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A44FA330(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A44FA3DC()
{
  type metadata accessor for LemonadeNavigationContext(319);
  if (v0 <= 0x3F)
  {
    sub_1A44FA258(319, &qword_1EB1246A0, &qword_1EB126BE0, &qword_1EB126BF0, 0x1E69789A8);
    if (v1 <= 0x3F)
    {
      sub_1A44FD844(319, &qword_1EB1247F8, sub_1A3F17950, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A44FD844(319, &qword_1EB13CB48, sub_1A44FA394, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A44FA538()
{
  sub_1A44FD844(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadePickerRootViewModel();
    if (v1 <= 0x3F)
    {
      sub_1A44FA2C8(319, &qword_1EB126BE0, &qword_1EB126BF0, 0x1E69789A8, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A3F17950(319);
        if (v3 <= 0x3F)
        {
          sub_1A44FA2C8(319, &qword_1EB137A48, &qword_1EB1265D0, 0x1E6978958, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1A44FD844(319, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
            if (v5 <= 0x3F)
            {
              sub_1A44F9F70();
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

void sub_1A44FA714()
{
  sub_1A44FD844(319, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadePickerRootViewModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A44FA7E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = type metadata accessor for PeopleFeedView(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = v5;
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5249234();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FCFF8();
  v41 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FD19C();
  v38 = *(v14 - 8);
  v39 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = sub_1A5249314();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_1A44FD6E8(0, &qword_1EB13CBF8, sub_1A44FD0A0);
  sub_1A44FAE20(v2, &v13[*(v16 + 44)]);
  v17 = *(v2 + 8);
  v18 = *(v2 + 16);
  v35 = v8;
  v36 = v7;
  if (v18 == 1)
  {
    v19 = v17;
  }

  else
  {

    sub_1A524D254();
    v20 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v17, 0);
    (*(v8 + 8))(v10, v7);
    v19 = v44;
    v17 = v44;
  }

  v44 = v17;
  sub_1A44FDD88(v2, v6, type metadata accessor for PeopleFeedView);
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = swift_allocObject();
  v37 = v6;
  sub_1A44FD754(v6, v22 + v21, type metadata accessor for PeopleFeedView);
  sub_1A44FA2C8(0, &qword_1EB126BE0, &qword_1EB126BF0, 0x1E69789A8, MEMORY[0x1E69E6720]);
  v24 = v23;
  v25 = sub_1A3C7A2E0(&qword_1EB13CBF0, sub_1A44FCFF8);
  v26 = sub_1A44FD29C();
  sub_1A524B154();

  sub_1A44FDEC0(v13, sub_1A44FCFF8);
  v27 = *(v2 + 24);
  if (*(v2 + 32) == 1)
  {
    v28 = v27;
  }

  else
  {

    sub_1A524D254();
    v29 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v27, 0);
    (*(v35 + 8))(v10, v36);
    v28 = v44;
    v27 = v44;
  }

  v48 = v27;
  v30 = v37;
  sub_1A44FDD88(v2, v37, type metadata accessor for PeopleFeedView);
  v31 = swift_allocObject();
  sub_1A44FD754(v30, v31 + v21, type metadata accessor for PeopleFeedView);
  sub_1A3F17950(0);
  v44 = v41;
  v45 = v24;
  v46 = v25;
  v47 = v26;
  swift_getOpaqueTypeConformance2();
  sub_1A44FD63C(&qword_1EB125A10, sub_1A3F17950, sub_1A44FD6AC);
  v32 = v39;
  v33 = v43;
  sub_1A524B154();

  return (*(v38 + 8))(v33, v32);
}

uint64_t sub_1A44FAE20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  sub_1A44FD844(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - v4;
  sub_1A44FD0D4();
  v29 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FA394(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadePeopleSectionProvider(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  type metadata accessor for PeopleFeedView(0);
  sub_1A44FD844(0, &qword_1EB13CB48, sub_1A44FA394, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1A44FDEC0(v12, sub_1A44FA394);
    v20 = 1;
    v21 = v30;
  }

  else
  {
    sub_1A44FD754(v12, v19, type metadata accessor for LemonadePeopleSectionProvider);
    sub_1A44FDD88(v19, v16, type metadata accessor for LemonadePeopleSectionProvider);
    v22 = *a1;
    v23 = sub_1A52442E4();
    (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    v24 = sub_1A3C7A2E0(&qword_1EB136230, type metadata accessor for LemonadePeopleSectionProvider);

    v25 = sub_1A3C30368();
    v26 = sub_1A3C5A374();
    sub_1A437CBD4(v16, v22, v5, 0, v25 & 1, v31, 0, 0, v9, v26 & 1, v13, v24);
    sub_1A44FDEC0(v19, type metadata accessor for LemonadePeopleSectionProvider);
    v27 = v30;
    sub_1A44FD754(v9, v30, sub_1A44FD0D4);
    v20 = 0;
    v21 = v27;
  }

  return (*(v7 + 56))(v21, v20, 1, v29);
}

uint64_t sub_1A44FB254()
{
  v1 = v0;
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FA394(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
    v13 = v12;
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {

    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v12, 0);
    (*(v3 + 8))(v5, v2);
    v12 = v24;
    if (!v24)
    {
LABEL_13:
      v19 = 1;
      goto LABEL_14;
    }
  }

  v15 = *(v1 + 24);
  if (*(v1 + 32) != 1)
  {

    sub_1A524D254();
    v20 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v15, 0);
    v16 = (*(v3 + 8))(v5, v2);
    v15 = v24;
    if (v24)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v16 = v15;
  if (!v15)
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_7:
  v17 = (*((*MEMORY[0x1E69E7D40] & *v15) + 0x390))(v16);
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  sub_1A4251F54(v12, 1, 0, 0, 1, v18, v15, v11);
  v19 = 0;
LABEL_14:
  v21 = type metadata accessor for LemonadePeopleSectionProvider(0);
  (*(*(v21 - 8) + 56))(v11, v19, 1, v21);
  type metadata accessor for PeopleFeedView(0);
  sub_1A44FDD88(v11, v8, sub_1A44FA394);
  sub_1A44FD844(0, &qword_1EB13CB48, sub_1A44FA394, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  return sub_1A44FDEC0(v11, sub_1A44FA394);
}

uint64_t sub_1A44FB638@<X0>(uint64_t a1@<X8>)
{
  sub_1A44FCAE4();
  v4 = v3;
  v116 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v104 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider(0);
  MEMORY[0x1EEE9AC00](v102);
  v103 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v109 = (&v96 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v110 = &v96 - v10;
  sub_1A44FCAB0(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v115 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v117 = &v96 - v14;
  v15 = type metadata accessor for AlbumsFeedView(0);
  v106 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v107 = v16;
  v108 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FD844(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v111 = &v96 - v18;
  sub_1A44FCA1C();
  v113 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v101 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FCB9C(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = (&v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v105 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v96 - v29;
  sub_1A44FC9E8(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v114 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v118 = v1;
  v119 = &v96 - v35;
  v36 = *(v1 + v15[7]);
  if (!v36)
  {
    goto LABEL_10;
  }

  v37 = *(v118 + v15[6]);
  if (!v37)
  {
    goto LABEL_10;
  }

  v98 = v30;
  v99 = v15;
  v112 = v4;
  v100 = a1;
  v38 = *((*MEMORY[0x1E69E7D40] & *v36) + 0x1C8);
  v39 = v36;
  v40 = v37;
  v97 = v38;
  if (v38() != 2)
  {

    a1 = v100;
    v4 = v112;
    v15 = v99;
LABEL_10:
    (*(v26 + 56))(v24, 1, 1, v25, v34);
    sub_1A44FDEC0(v24, sub_1A44FCB9C);
    goto LABEL_11;
  }

  v41 = v40;
  v42 = MEMORY[0x1E69E7D40];
  v43 = (*((*MEMORY[0x1E69E7D40] & *v39) + 0x5E8))();
  v44 = (*((*v42 & *v39) + 0x640))(1, v43);
  v45 = *v42 & *v39;
  if (v44)
  {
    (*((*v42 & *v39) + 0x5F0))(1);
    v45 = *v42 & *v39;
  }

  v46 = (*(v45 + 1368))();
  sub_1A45F1810(v41, v46, v36, v24);
  (*(v26 + 56))(v24, 0, 1, v25);
  v47 = v24;
  v48 = v98;
  v49 = sub_1A44FD754(v47, v98, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider);
  v50 = (v97)(v49);
  v15 = v99;
  if (v50 == 2)
  {
    sub_1A44FDD88(v48, v105, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider);
    sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
    v51 = v118;
    sub_1A524BAA4();
    v97 = v120;
    v52 = sub_1A52442E4();
    v53 = 1;
    (*(*(v52 - 8) + 56))(v111, 1, 1, v52);
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
    v54 = *(v51 + v15[8]);
    v55 = v108;
    sub_1A44FDD88(v51, v108, type metadata accessor for AlbumsFeedView);
    v56 = (*(v106 + 80) + 24) & ~*(v106 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = v54;
    sub_1A44FD754(v55, v57 + v56, type metadata accessor for AlbumsFeedView);
    v58 = sub_1A3C7A2E0(&qword_1EB12A250, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider);
    v59 = v54;
    LOBYTE(v54) = sub_1A3C30368();
    v60 = sub_1A3C5A374();
    v94 = v58;
    v61 = v101;
    sub_1A437CBD4(v105, v97, v111, 0, v54 & 1, &v120, sub_1A44FCDE4, v57, v101, v60 & 1, v25, v94);
    sub_1A44FDEC0(v98, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider);
    v62 = v61;
    v63 = v119;
    sub_1A44FD754(v62, v119, sub_1A44FCA1C);
    (*(v20 + 56))(v63, 0, 1, v113);
    v64 = *(v118 + v15[6]);
    if (!v64)
    {
      a1 = v100;
      goto LABEL_20;
    }

    a1 = v100;
LABEL_14:
    v65 = MEMORY[0x1E69E7D40];
    v66 = *((*MEMORY[0x1E69E7D40] & *v39) + 0x1C8);
    v67 = v64;
    if (v66() == 6)
    {
      v68 = v39;
      v69 = v109;
      sub_1A4244F30(v67, v36, v109);
      v70 = v69;
      v71 = v110;
      v72 = sub_1A44FD754(v70, v110, type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider);
      if ((*((*v65 & *v68) + 0x1C8))(v72) == 6)
      {
        v73 = v103;
        sub_1A44FDD88(v71, v103, type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider);
        sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
        v74 = v118;
        sub_1A524BAA4();
        v75 = v120;
        v76 = sub_1A52442E4();
        v77 = v111;
        (*(*(v76 - 8) + 56))(v111, 1, 1, v76);
        v122 = 0;
        v120 = 0u;
        v121 = 0u;
        v78 = *(v74 + v15[8]);
        v79 = v74;
        v80 = v108;
        sub_1A44FDD88(v79, v108, type metadata accessor for AlbumsFeedView);
        v81 = (*(v106 + 80) + 24) & ~*(v106 + 80);
        v82 = swift_allocObject();
        *(v82 + 16) = v78;
        sub_1A44FD754(v80, v82 + v81, type metadata accessor for AlbumsFeedView);
        v83 = sub_1A3C7A2E0(&qword_1EB136130, type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider);
        v84 = v78;
        v85 = v102;
        LOBYTE(v78) = sub_1A3C30368();
        v86 = sub_1A3C5A374();
        v95 = v83;
        v87 = v104;
        sub_1A437CBD4(v73, v75, v77, 0, v78 & 1, &v120, sub_1A44FCBD0, v82, v104, v86 & 1, v85, v95);
        sub_1A44FDEC0(v71, type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider);
        sub_1A44FD754(v87, v117, sub_1A44FCAE4);
        v53 = 0;
LABEL_20:
        v4 = v112;
        goto LABEL_21;
      }

      sub_1A44FDEC0(v71, type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider);
    }

    else
    {
    }

    v53 = 1;
    goto LABEL_20;
  }

  sub_1A44FDEC0(v48, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider);
  a1 = v100;
  v4 = v112;
LABEL_11:
  v53 = 1;
  (*(v20 + 56))(v119, 1, 1, v113);
  if (v36)
  {
    v64 = *(v118 + v15[6]);
    if (v64)
    {
      v112 = v4;
      v39 = v36;
      goto LABEL_14;
    }
  }

LABEL_21:
  v88 = v117;
  (*(v116 + 56))(v117, v53, 1, v4);
  v89 = v119;
  v90 = v114;
  sub_1A44FDD88(v119, v114, sub_1A44FC9E8);
  v91 = v115;
  sub_1A44FDD88(v88, v115, sub_1A44FCAB0);
  sub_1A44FDD88(v90, a1, sub_1A44FC9E8);
  sub_1A44FC978();
  sub_1A44FDD88(v91, a1 + *(v92 + 48), sub_1A44FCAB0);
  sub_1A44FDEC0(v88, sub_1A44FCAB0);
  sub_1A44FDEC0(v89, sub_1A44FC9E8);
  sub_1A44FDEC0(v91, sub_1A44FCAB0);
  return sub_1A44FDEC0(v90, sub_1A44FC9E8);
}

uint64_t sub_1A44FC478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1A5249574();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1A44FD6E8(0, &qword_1EB13CB70, sub_1A44FC888);
  v6 = *(v5 + 44);
  v10 = *(v2 + *(a1 + 20));
  v9 = 3;
  v7 = type metadata accessor for LemonadePickerRootViewModel();
  sub_1A44FC944(0);
  sub_1A3C7A2E0(&qword_1EB13CBB0, sub_1A44FC944);

  return LemonadeSpecsProviderView.init(model:presentationContext:content:)(&v10, &v9, sub_1A44FCB78, v7, (a2 + v6));
}

uint64_t sub_1A44FC5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1A5249574();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1A44FD6E8(0, &qword_1EB13CB58, sub_1A44FC6BC);
  v6 = *(v5 + 44);
  v10 = *(v2 + *(a1 + 20));
  v9 = 3;
  v7 = type metadata accessor for LemonadePickerRootViewModel();
  sub_1A44FC73C();

  return LemonadeSpecsProviderView.init(model:presentationContext:content:)(&v10, &v9, sub_1A44FC790, v7, (a2 + v6));
}

void sub_1A44FC6BC()
{
  if (!qword_1EB13CB60)
  {
    type metadata accessor for LemonadePickerRootViewModel();
    sub_1A44FC73C();
    v0 = type metadata accessor for LemonadeSpecsProviderView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CB60);
    }
  }
}

unint64_t sub_1A44FC73C()
{
  result = qword_1EB13CB68;
  if (!qword_1EB13CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CB68);
  }

  return result;
}

double sub_1A44FC790@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(*(v3 + *(type metadata accessor for CollectionsView(0) + 20)) + 32);
  sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);

  sub_1A524BAA4();
  v5 = sub_1A40FA400();
  sub_1A40F9E0C(v4, *&v12[0], v5, v6 & 1, v12);
  v7 = v12[7];
  *(a1 + 96) = v12[6];
  *(a1 + 112) = v7;
  *(a1 + 128) = v12[8];
  *(a1 + 144) = v13;
  v8 = v12[3];
  *(a1 + 32) = v12[2];
  *(a1 + 48) = v8;
  v9 = v12[5];
  *(a1 + 64) = v12[4];
  *(a1 + 80) = v9;
  result = *v12;
  v11 = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = v11;
  return result;
}

void sub_1A44FC888()
{
  if (!qword_1EB13CB78)
  {
    type metadata accessor for LemonadePickerRootViewModel();
    sub_1A44FC944(255);
    sub_1A3C7A2E0(&qword_1EB13CBB0, sub_1A44FC944);
    v0 = type metadata accessor for LemonadeSpecsProviderView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CB78);
    }
  }
}

void sub_1A44FC978()
{
  if (!qword_1EB13CB88)
  {
    sub_1A44FC9E8(255);
    sub_1A44FCAB0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13CB88);
    }
  }
}

void sub_1A44FCA1C()
{
  if (!qword_1EB13CB98)
  {
    type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider(255);
    sub_1A3C7A2E0(&qword_1EB12A250, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider);
    v0 = type metadata accessor for LemonadeFeedContents();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CB98);
    }
  }
}

void sub_1A44FCAE4()
{
  if (!qword_1EB13CBA8)
  {
    type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider(255);
    sub_1A3C7A2E0(&qword_1EB136130, type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider);
    v0 = type metadata accessor for LemonadeFeedContents();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CBA8);
    }
  }
}

uint64_t objectdestroyTm_58()
{
  v1 = type metadata accessor for AlbumsFeedView(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[9];
  sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  v7 = v1[10];
  sub_1A44F9F70();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1A44FCE08(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  type metadata accessor for AlbumsFeedView(0);
  v10 = *(v5 + 16);
  if (v10)
  {
    v11 = v10;
    PHObject.itemID.getter();
    sub_1A44FA2C8(0, a2, a3, a4, type metadata accessor for PhotoKitItemListImplementation);
    sub_1A44FCF94(a5, a2, a3, a4);
    sub_1A5246424();
  }

  return 0;
}

uint64_t sub_1A44FCF94(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A44FA2C8(255, a2, a3, a4, type metadata accessor for PhotoKitItemListImplementation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A44FCFF8()
{
  if (!qword_1EB13CBC0)
  {
    sub_1A44FD0A0(255);
    sub_1A44FD63C(&qword_1EB13CBD8, sub_1A44FD0A0, sub_1A44FD168);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CBC0);
    }
  }
}

void sub_1A44FD0D4()
{
  if (!qword_1EB13CBD0)
  {
    type metadata accessor for LemonadePeopleSectionProvider(255);
    sub_1A3C7A2E0(&qword_1EB136230, type metadata accessor for LemonadePeopleSectionProvider);
    v0 = type metadata accessor for LemonadeFeedContents();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CBD0);
    }
  }
}

void sub_1A44FD19C()
{
  if (!qword_1EB13CBE8)
  {
    sub_1A44FCFF8();
    sub_1A44FA2C8(255, &qword_1EB126BE0, &qword_1EB126BF0, 0x1E69789A8, MEMORY[0x1E69E6720]);
    sub_1A3C7A2E0(&qword_1EB13CBF0, sub_1A44FCFF8);
    sub_1A44FD29C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CBE8);
    }
  }
}

unint64_t sub_1A44FD29C()
{
  result = qword_1EB126BD8;
  if (!qword_1EB126BD8)
  {
    sub_1A44FA2C8(255, &qword_1EB126BE0, &qword_1EB126BF0, 0x1E69789A8, MEMORY[0x1E69E6720]);
    sub_1A44FD340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126BD8);
  }

  return result;
}

unint64_t sub_1A44FD340()
{
  result = qword_1EB126BC8;
  if (!qword_1EB126BC8)
  {
    sub_1A3C52C70(255, &qword_1EB126BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126BC8);
  }

  return result;
}

uint64_t objectdestroy_55Tm()
{
  v1 = (type metadata accessor for PeopleFeedView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_1A3D35BAC(*(v2 + 8), *(v2 + 16));
  sub_1A3D35BAC(*(v2 + 24), *(v2 + 32));
  v3 = (v2 + v1[9]);
  v4 = type metadata accessor for LemonadePeopleSectionProvider(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {

    v5 = v3 + *(v4 + 40);
    type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1A3D6D890(*v5, *(v5 + 1), v5[16]);
    if (EnumCaseMultiPayload == 1)
    {
      sub_1A3C4208C(*(v5 + 3), *(v5 + 4), v5[40]);
      sub_1A3C47A98();
      v8 = *(v7 + 64);
      v9 = sub_1A5242C84();
      (*(*(v9 - 8) + 8))(&v5[v8], v9);
    }

    else
    {
      if (*(v5 + 5) >= 3uLL)
      {
      }

      if (*(v5 + 7) >= 3uLL)
      {
      }

      sub_1A3C4208C(*(v5 + 9), *(v5 + 10), v5[88]);
    }
  }

  sub_1A44FD844(0, &qword_1EB13CB48, sub_1A44FA394, MEMORY[0x1E6981790]);

  return swift_deallocObject();
}

uint64_t sub_1A44FD63C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A44FD6E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A44FD754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A44FD7BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadePickerRootView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A44FDBF4();
  return sub_1A44F8280(v1 + v4, a1 + *(v5 + 44));
}

void sub_1A44FD844(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A44FD8B0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for LemonadePickerRootView(0);

  sub_1A44F98F4(a1, a2);
}

uint64_t objectdestroy_69Tm()
{
  v1 = type metadata accessor for LemonadePickerRootView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1A3D35BAC(*v2, *(v2 + 8));
  sub_1A3D35BAC(*(v2 + 16), *(v2 + 24));
  sub_1A3D35BAC(*(v2 + 32), *(v2 + 40));
  sub_1A3DD15BC(*(v2 + 48), *(v2 + 56));
  v3 = v1[8];
  sub_1A4137EE8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5248284();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[9];
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5242D14();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[11];
  sub_1A44FD844(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  (*(*(v8 - 8) + 8))(v2 + v7, v8);
  v9 = v1[12];
  sub_1A44F9F70();
  (*(*(v10 - 8) + 8))(v2 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_1A44FDB94()
{
  v1 = *(type metadata accessor for LemonadePickerRootView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A44F9674(v2);
}

void sub_1A44FDBF4()
{
  if (!qword_1EB13CC08)
  {
    sub_1A44FDCE0(255, &qword_1EB13CAA0, MEMORY[0x1E697F960]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CC08);
    }
  }
}

void sub_1A44FDC78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for PeopleFeedView(255);
    v7 = a3(a1, v6, MEMORY[0x1E6981E70]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A44FDCE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A44F6254(255, &qword_1EB13CAA8, MEMORY[0x1E697F960]);
    v7 = v6;
    sub_1A44FDC78(255, &qword_1EB13CAB0, MEMORY[0x1E697F960]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A44FDD88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A44FDDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A44FDE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1A44FDEC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A44FDF20()
{
  if (!qword_1EB13CC30)
  {
    sub_1A44FC6BC();
    sub_1A3C7A2E0(&qword_1EB13CC38, sub_1A44FC6BC);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CC30);
    }
  }
}

void sub_1A44FDFB4()
{
  if (!qword_1EB13CC48)
  {
    sub_1A44FC888();
    sub_1A3C7A2E0(&qword_1EB13CC50, sub_1A44FC888);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CC48);
    }
  }
}

uint64_t PXStoryTimeline.enumerateClips(in:rect:using:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v16 = a1[3];
  v18 = a1[4];
  v17 = a1[5];
  v35 = 0;
  if (a1[6])
  {
    [v5 timeRange];
    v14 = aBlock;
    LODWORD(v13) = v30;
    v15 = v31;
    v16 = v32;
    LODWORD(v18) = v33;
    LODWORD(v26) = HIDWORD(v33);
    LODWORD(v27) = HIDWORD(v30);
    v17 = v34;
  }

  else
  {
    v26 = HIDWORD(v18);
    v27 = HIDWORD(v13);
  }

  v28 = v17;
  if (*(a2 + 32))
  {
    [v5 size];
    v11 = v19;
    v12 = v20;
    v9 = 0.0;
    v10 = 0.0;
  }

  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = &v35;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1A44FE290;
  *(v22 + 24) = v21;
  v33 = sub_1A44FE38C;
  v34 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1A44FE3B4;
  v32 = &block_descriptor_206;
  v23 = _Block_copy(&aBlock);

  aBlock = v14;
  v30 = __PAIR64__(v27, v13);
  v31 = v15;
  v32 = v16;
  v33 = __PAIR64__(v26, v18);
  v34 = v28;
  [v5 enumerateClipsInTimeRange:&aBlock rect:v23 usingBlock:{v9, v10, v11, v12}];
  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A44FE290(uint64_t result, _OWORD *a2, uint64_t a3, char *__src, _BYTE *a5)
{
  if (result < 0)
  {
LABEL_9:
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = 0;
    v11 = *(v5 + 16);
    v12 = (a3 + 16);
    v13 = *(v5 + 32);
    while (v9 != v10)
    {
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_9;
      }

      v14 = a2[1];
      v19[0] = *a2;
      v19[1] = v14;
      v19[2] = a2[2];
      v15 = *(v12 - 2);
      v16 = *(v12 - 1);
      v17 = *v12;
      v18 = v12[1];
      v12 += 4;
      memcpy(__dst, __src, sizeof(__dst));
      result = v11(v19, __dst, v13, v15, v16, v17, v18);
      __src += 768;
      a2 += 3;
      ++v10;
      if (*v13 == 1)
      {
        *a5 = 1;
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1A44FE3F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 768))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A44FE418(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 760) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 768) = v3;
  return result;
}

__n128 __swift_memcpy48_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1A44FE570(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 120))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A44FE590(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 120) = v3;
  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1A44FE630(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 216))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A44FE650(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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

  *(result + 216) = v3;
  return result;
}

uint64_t sub_1A44FE6D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A44FE6F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 112) = v3;
  return result;
}

uint64_t sub_1A44FE7F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A44FE814(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 96) = v3;
  return result;
}

uint64_t sub_1A44FE9AC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1A524C594() & 1;
}

uint64_t sub_1A44FEA48(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A524C4B4();
  if (*(v2 + *(a2 + 44)))
  {
    MEMORY[0x1A590A010]();
  }

  result = *(v2 + *(a2 + 48));
  if (result)
  {
    return MEMORY[0x1A590A010]();
  }

  return result;
}

uint64_t sub_1A44FEB14(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A44FEA48(v3, a1);
  return sub_1A524ECE4();
}

int *sub_1A44FEB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a6, a1, AssociatedTypeWitness);
  result = type metadata accessor for LemonadeConcatenatedUIFeedSectionProvider.AdapterListManagerOptions();
  *(a6 + result[11]) = a2;
  *(a6 + result[12]) = a3;
  v14 = (a6 + result[13]);
  *v14 = a4;
  v14[1] = a5;
  return result;
}

uint64_t sub_1A44FEC4C(uint64_t a1, uint64_t a2)
{
  sub_1A524EC94();
  sub_1A44FEA48(v4, a2);
  return sub_1A524ECE4();
}

uint64_t sub_1A44FEE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(*(*(a1 + 24) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v10 = &v16 - v9;
  (*(v6 + 88))(v5, v6, v8);
  v11 = *(v2 + *(a1 + 44));
  v12 = *(v2 + *(a1 + 48));
  v13 = (v2 + *(a1 + 52));
  v14 = *v13;
  sub_1A44FEB5C(v10, v11, v12, *v13, v13[1], a2);

  return sub_1A3C66EE8(v14);
}

void sub_1A44FEF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + *(type metadata accessor for LemonadeConcatenatedUIFeedSectionProvider.AdapterListManagerOptions() + 52));
  if (*v8)
  {
    (*v8)(a1, a2);
  }

  (*(*(*(a4 + 8) + 8) + 96))(a1, a2, a3, *(*(a4 + 8) + 8));
  swift_getAssociatedTypeWitness();
  sub_1A3C413B4(255);
  swift_getAssociatedConformanceWitness();
  sub_1A3C50E18(&qword_1EB128D30, sub_1A3C413B4);
  sub_1A5246004();
}

uint64_t sub_1A44FF258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(*(*(a2 + 24) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  (*(v6 + 224))(a1, v5, v6, v12);
  v15 = *(v8 + 16);
  v15(v14, v10, AssociatedTypeWitness);
  v16 = *(v8 + 8);
  v16(v10, AssociatedTypeWitness);
  v15(a3, v14, AssociatedTypeWitness);
  return (v16)(v14, AssociatedTypeWitness);
}

uint64_t sub_1A44FF3E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a3;
  v4 = *a1;
  sub_1A44FFE88();
  v6 = v5;
  v68 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(*(a2 + 24) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = v6;
  v10 = sub_1A5249754();
  v75 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v64 - v11;
  v66 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v64 - v16;
  v17 = *(v4 + *MEMORY[0x1E69C2290]);
  v71 = *(v17 + 16);
  v18 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v69 = &v64 - v23;
  v24 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v64 - v26;
  v70 = v28;
  v77 = sub_1A5249754();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v64 - v29;
  sub_1A5242E04();
  v30 = (*(v24 + 88))(v27, v17);
  if (v30 == *off_1E7720FE8)
  {
    (*(v24 + 96))(v27, v17);
    v31 = v69;
    v32 = v27;
    v33 = v71;
    (*(v18 + 32))(v69, v32, v71);
    swift_getAssociatedTypeWitness();
    (*(v18 + 16))(v21, v31, v33);
    swift_getAssociatedConformanceWitness();
    sub_1A5242614();
    (*(v8 + 104))();
    swift_unknownObjectRelease();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v35 = v66;
    v36 = *(v66 + 16);
    v37 = v65;
    v36(v65, v14, AssociatedTypeWitness);
    v38 = *(v35 + 8);
    v38(v14, AssociatedTypeWitness);
    v36(v14, v37, AssociatedTypeWitness);
    v88 = MEMORY[0x1E6981910];
    v89 = MEMORY[0x1E6981900];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = v72;
    sub_1A3DF4798(v14, AssociatedTypeWitness);
    v79 = AssociatedConformanceWitness;
    v80 = OpaqueTypeConformance2;
    v41 = v70;
    swift_getWitnessTable();
    v42 = v74;
    sub_1A3DF4798(v40, v41);
    (*(v75 + 8))(v40, v41);
    v38(v14, AssociatedTypeWitness);
    v38(v37, AssociatedTypeWitness);
    (*(v18 + 8))(v69, v71);
    v43 = MEMORY[0x1E6981910];
    v44 = MEMORY[0x1E6981900];
  }

  else
  {
    v71 = AssociatedTypeWitness;
    v44 = MEMORY[0x1E6981900];
    v45 = v70;
    if (v30 != *off_1E7720FF8 && v30 != *off_1E7720FF0)
    {
      result = sub_1A524E6E4();
      __break(1u);
      return result;
    }

    (*(v24 + 96))(v27, v17);
    v47 = *v27;
    v48 = *(*v27 + 64);
    sub_1A5242DF4();
    v48(&v88, v87[0]);
    v49 = __swift_project_boxed_opaque_existential_1(&v88, v90);
    v50 = MEMORY[0x1EEE9AC00](v49);
    (*(v52 + 16))(&v64 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0), v50);
    v87[5] = sub_1A524B8E4();
    v87[3] = type metadata accessor for PlaceholderUIItem();
    v87[4] = sub_1A3C50E18(&qword_1EB125A78, type metadata accessor for PlaceholderUIItem);
    v87[0] = v47;
    v53 = v67;
    v43 = MEMORY[0x1E6981910];
    sub_1A524A554();

    __swift_destroy_boxed_opaque_existential_0(v87);
    __swift_destroy_boxed_opaque_existential_0(&v88);
    v54 = v71;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v88 = v43;
    v89 = v44;
    v55 = swift_getOpaqueTypeConformance2();
    v56 = v72;
    v57 = v54;
    v58 = v73;
    sub_1A3DF4890(v53, v57, v73);
    v85 = AssociatedConformanceWitness;
    v86 = v55;
    swift_getWitnessTable();
    v42 = v74;
    sub_1A3DF4798(v56, v45);
    (*(v75 + 8))(v56, v45);
    (*(v68 + 8))(v53, v58);
  }

  v59 = MEMORY[0x1E6982070];
  v88 = v43;
  v89 = v44;
  v60 = swift_getOpaqueTypeConformance2();
  v83 = AssociatedConformanceWitness;
  v84 = v60;
  WitnessTable = swift_getWitnessTable();
  v82 = v59;
  v61 = v77;
  swift_getWitnessTable();
  v62 = v76;
  (*(v76 + 16))(v78, v42, v61);
  return (*(v62 + 8))(v42, v61);
}

void sub_1A44FFE88()
{
  if (!qword_1EB122000)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB122000);
    }
  }
}

void sub_1A44FFF08(uint64_t a1, void *a2)
{
  v10[7] = a1;
  v10[4] = *(*(*a2 + *off_1E77210A0) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10[2] = v10 - v2;
  v4 = *(v3 + 16);
  v5 = *(*(*(v3 + 24) + 8) + 8);
  swift_getAssociatedTypeWitness();
  v10[0] = v5;
  v10[1] = v4;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem);
  v10[13] = AssociatedTypeWitness;
  v10[14] = v7;
  v10[15] = v7;
  v10[16] = AssociatedConformanceWitness;
  v10[17] = v9;
  v10[18] = v9;
  sub_1A5245A24();
}

uint64_t sub_1A45004D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a5;
  v8 = *(a4 + 16);
  v9 = *(*(a4 + 24) + 8);
  swift_getAssociatedTypeWitness();
  v10 = sub_1A524DF24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - v16;
  (*(v9 + 136))(a1, a2, a3, v8, v9, v15);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  (*(v11 + 16))(v17, v13, v10);
  v19 = *(v11 + 8);
  v19(v13, v10);
  v20 = v24;
  MEMORY[0x1A5904CD0](v17, v10, WitnessTable);
  v19(v17, v10);
  v25 = v10;
  v26 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  return (*(*(OpaqueTypeMetadata2 - 8) + 56))(v20, 0, 1, OpaqueTypeMetadata2);
}

uint64_t sub_1A4500728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  (*(v6 + 152))(a1, v5, v6, v12);
  v15 = *(v8 + 16);
  v15(v14, v10, AssociatedTypeWitness);
  v16 = *(v8 + 8);
  v16(v10, AssociatedTypeWitness);
  v15(a3, v14, AssociatedTypeWitness);
  return (v16)(v14, AssociatedTypeWitness);
}

uint64_t sub_1A45008E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  (*(v6 + 168))(a1, v5, v6, v12);
  v15 = *(v8 + 16);
  v15(v14, v10, AssociatedTypeWitness);
  v16 = *(v8 + 8);
  v16(v10, AssociatedTypeWitness);
  v15(a3, v14, AssociatedTypeWitness);
  return (v16)(v14, AssociatedTypeWitness);
}

void sub_1A4500AA4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v1 = AssociatedTypeWitness;
  v2 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem);
  sub_1A5245A24();
}

void sub_1A4500DA4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v1 = AssociatedTypeWitness;
  v2 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem);
  sub_1A5245A24();
}

void sub_1A45010A4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v1 = AssociatedTypeWitness;
  v2 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem);
  sub_1A5245A24();
}

void sub_1A45013A4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v1 = AssociatedTypeWitness;
  v2 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem);
  sub_1A5245A24();
}

void sub_1A45016A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[7] = a2;
  v3 = *(a3 + 16);
  v4 = *(*(*(a3 + 24) + 8) + 8);
  swift_getAssociatedTypeWitness();
  v11[4] = v4;
  v11[5] = v3;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[10] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v6);
  v11[9] = v11 - v7;
  v8 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem);
  v11[11] = AssociatedTypeWitness;
  v11[12] = AssociatedTypeWitness;
  v11[13] = v8;
  v11[14] = v8;
  v11[15] = AssociatedConformanceWitness;
  v11[16] = v10;
  v11[17] = v10;
  sub_1A5245A24();
}

void sub_1A4501AC0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v1 = AssociatedTypeWitness;
  v2 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem);
  sub_1A5245A24();
}

void sub_1A4501DC4(uint64_t a1)
{
  v2 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = AssociatedTypeWitness;
  v4 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem);
  sub_1A5245A24();
}

void sub_1A45020C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8[4] = a2;
  v8[2] = a1;
  v8[3] = a3;
  v8[0] = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v8[0]);
  v8[1] = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem);
  v8[6] = AssociatedTypeWitness;
  v8[7] = v5;
  v8[8] = v5;
  v8[9] = AssociatedConformanceWitness;
  v8[10] = v7;
  v8[11] = v7;
  sub_1A5245A24();
}

void sub_1A4502554(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a3;
  v4 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = AssociatedTypeWitness;
  v7 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem);
  sub_1A5245A24();
}

uint64_t sub_1A45028C8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a1 + *MEMORY[0x1E69C2290]);
  v5 = *(v4 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  sub_1A5242E04();
  v16 = (*(v12 + 88))(v15, v4);
  if (v16 == *off_1E7720FE8)
  {
    (*(v12 + 96))(v15, v4);
    (*(v6 + 32))(v11, v15, v5);
    v17 = *(*(a3 + 8) + 8);
    swift_getAssociatedTypeWitness();
    (*(v6 + 16))(v8, v11, v5);
    swift_getAssociatedConformanceWitness();
    sub_1A5242614();
    v18 = (*(v17 + 168))();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v11, v5);
    return v18;
  }

  if (v16 == *off_1E7720FF8)
  {
    (*(v12 + 96))(v15, v4);
    if (!*(*v15 + 48))
    {

      return 0x646E6570657270;
    }

LABEL_8:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (v16 == *off_1E7720FF0)
  {
    (*(v12 + 96))(v15, v4);
    if (!*(*v15 + 48))
    {

      return 0x646E65707061;
    }

    goto LABEL_8;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A4502C8C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a1 + *MEMORY[0x1E69C2290]);
  v5 = *(v4 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_1A5242E04();
  v16 = (*(v12 + 88))(v15, v4);
  if (v16 == *off_1E7720FE8)
  {
    (*(v12 + 96))(v15, v4);
    (*(v6 + 32))(v11, v15, v5);
    v17 = *(*(a3 + 8) + 8);
    swift_getAssociatedTypeWitness();
    (*(v6 + 16))(v8, v11, v5);
    swift_getAssociatedConformanceWitness();
    sub_1A5242614();
    v18 = (*(v17 + 176))();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v11, v5);
    return v18;
  }

  else
  {
    if (v16 == *off_1E7720FF8 || v16 == *off_1E7720FF0)
    {
      (*(v12 + 96))(v15, v4);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A450301C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A44FECB4(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A45030C4()
{
  swift_getWitnessTable();

  return sub_1A3C47918();
}

void sub_1A4503118()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for PlaceholderUIItem();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem);
  sub_1A5245A24();
}

uint64_t sub_1A45033F0(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A4503498()
{
  swift_getAssociatedConformanceWitness();
  sub_1A3C50E18(&qword_1EB13CCF8, sub_1A3C64F68);
  return swift_getWitnessTable();
}

uint64_t sub_1A450354C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1A45035F0()
{
  swift_getAssociatedTypeWitness();
  if (v0 <= 0x3F)
  {
    sub_1A3C50D58(319, &qword_1EB124B08, sub_1A3C413B4);
    if (v1 <= 0x3F)
    {
      sub_1A3C50D58(319, &qword_1EB1201F0, sub_1A3C3637C);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A45036E0(_DWORD *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = a2 - v7 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if (v6 < 0x7FFFFFFE)
    {
      v18 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      if ((v18 + 1) >= 2)
      {
        return v18;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v17 = *(v5 + 48);

      return v17(a1);
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void sub_1A4503890(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v13 = 0;
    v14 = a2 - v9;
    if (a2 <= v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = a3 - v9 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v9;
    if (a2 <= v9)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(a1 + v10) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v10) = 0;
      }

      else if (v13)
      {
        *(a1 + v10) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v7 < 0x7FFFFFFE)
      {
        v18 = ((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v18 = 0;
          *v18 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v18 = a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17(a1, a2);
      }

      return;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v9 + a2;
    bzero(a1, v10);
    *a1 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(a1 + v10) = v15;
    }

    else
    {
      *(a1 + v10) = v15;
    }
  }

  else if (v13)
  {
    *(a1 + v10) = v15;
  }
}

uint64_t get_witness_table_12PhotosUICore36LemonadeSectionedFeedSectionProviderRzSO5Model_10IdentifierRTz0A12UIFoundation0aH0AC_4ItemRPzlxAaBHD1_AA0ceG0HI1_6FooterQz7SwiftUI4ViewHA3_Tm()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

void *LemonadePhotoLibraryContext.pickerConfiguration.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *LemonadePhotoLibraryContext.init(photoLibrary:pickerConfiguration:bookmarksManager:)(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_1A3C49C9C(a1, a2, a3);

  return v5;
}

id *LemonadePhotoLibraryContext.deinit()
{

  return v0;
}

uint64_t LemonadePhotoLibraryContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A4503CE4()
{
  sub_1A524EC94();
  (*(**v0 + 136))(v2);
  return sub_1A524ECE4();
}

uint64_t _s12PhotosUICore27LemonadePhotoLibraryContextC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v9 = 1;
  }

  else
  {
    sub_1A3C7B6A4();
    if ((sub_1A524DBF4() & 1) == 0)
    {
      goto LABEL_14;
    }

    if ((sub_1A524DBF4() & 1) == 0)
    {
      goto LABEL_14;
    }

    sub_1A5243204();
    if ((sub_1A52431E4() & 1) == 0)
    {
      goto LABEL_14;
    }

    v4 = *(a1 + 40);
    v5 = *(a2 + 40);
    if (v4)
    {
      if (!v5)
      {
        goto LABEL_14;
      }

      type metadata accessor for PickerConfiguration();
      v6 = v5;
      v7 = v4;
      v8 = sub_1A524DBF4();

      if ((v8 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (v5)
    {
LABEL_14:
      v9 = 0;
      return v9 & 1;
    }

    v10 = *(a2 + 56);
    if (!*(a1 + 56))
    {
      v9 = v10 == 0;
      return v9 & 1;
    }

    if (!v10)
    {
      goto LABEL_14;
    }

    type metadata accessor for LemonadeMemoriesCreationAvailabilityManager();
    sub_1A4503FA8(&qword_1EB13CD08, 255, type metadata accessor for LemonadeMemoriesCreationAvailabilityManager);

    v9 = sub_1A524C594();
  }

  return v9 & 1;
}

uint64_t sub_1A4503FA8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1A450401C()
{
  result = sub_1A524C634();
  qword_1EB15A0F8 = result;
  return result;
}

uint64_t *sub_1A4504054()
{
  if (qword_1EB15A0F0 != -1)
  {
    swift_once();
  }

  return &qword_1EB15A0F8;
}

uint64_t sub_1A45040C8()
{
  result = sub_1A524C634();
  qword_1EB1C58E8 = result;
  return result;
}

id sub_1A4504124(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t sub_1A4504184(uint64_t a1)
{
  v2 = sub_1A5244584();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 >= 5)
  {
    v12 = v4;
    v8 = v4;
    sub_1A3C34400(0, &qword_1EB126160);
    if (swift_dynamicCast())
    {
      v9 = (*(v3 + 88))(v6, v2);
      if (v9 == *MEMORY[0x1E69C0F08] || v9 == *MEMORY[0x1E69C0F18] || v9 == *MEMORY[0x1E69C0F28] || v9 == *MEMORY[0x1E69C0F20])
      {
        (*(v3 + 8))(v6, v2);
LABEL_9:

        LOBYTE(v7) = 0;
        return v7 & 1;
      }

      if (v9 == *MEMORY[0x1E69C0EF8])
      {
        goto LABEL_9;
      }

      (*(v3 + 8))(v6, v2);
    }

    LOBYTE(v7) = 1;
    return v7 & 1;
  }

  v7 = 0xDu >> v4;
  return v7 & 1;
}

uint64_t sub_1A4504350()
{
  v1 = (*(*v0 + 1304))();
  result = 0;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      if ((*(*v0 + 800))(0))
      {
        return 1;
      }

      if ((*(*v0 + 1376))())
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }

    if (v1 == 4)
    {
      return result;
    }

LABEL_6:
    sub_1A3DB9B78(v1);
    return 3;
  }

  if ((v1 - 1) < 2)
  {
    return 1;
  }

  if (v1)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1A4504450(uint64_t a1, uint64_t a2)
{
  v4 = (*v2 + 416);
  v5 = *v4;
  if ((*v4)() != a1 || v6 != a2)
  {
    v8 = sub_1A524EAB4();

    if (v8)
    {
      return result;
    }

    result = (*(*v2 + 488))(result);
    if (result)
    {
      v10 = result;
      v11 = v5();
      (*(*v10 + 400))(v11);

      result = (*(*v2 + 1624))(v12);
      if (result)
      {
        v13 = result;
        v14 = v5();
        (*(*v13 + 224))(v14);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }
}

void sub_1A450464C(void *a1)
{
  a1[2] = v1;
  v3 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A450469C(void *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = *a1;
  *(v2 + 24) = v3;
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4504450(v5, v4);
}

void sub_1A4504714()
{
  swift_getKeyPath();
  (*(*v0 + 2264))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4504788(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v6 == a1 && v5 == a2;
  if (v7 || (sub_1A524EAB4() & 1) != 0)
  {
    v2[2] = a1;
    v2[3] = a2;
    sub_1A4504450(v6, v5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    v13 = a2;
    (*(*v2 + 2272))(v10);
  }
}

void sub_1A45048D8()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4504930(uint64_t *a1)
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
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel);
  sub_1A52415F4();

  sub_1A450464C(v4);
}

uint64_t sub_1A4504AAC()
{
  v0 = sub_1A5244AD4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  sub_1A5244B54();
  sub_1A5244AE4();
  sub_1A524E624();
  (*(v1 + 8))(v3, v0);
  return v5[0];
}

uint64_t sub_1A4504BA8()
{
  v1 = v0;
  v2 = (*v0 + 416);
  v3 = *v2;
  v4 = (*v2)();
  v6 = v5;

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = (v3)(v7);
  v11 = sub_1A452B420(v9, v10);

  if (!v11)
  {
    goto LABEL_16;
  }

  result = (*(*v1 + 1184))(v12);
  if (result)
  {
    v14 = (*(*result + 712))(result);

    v16 = (v3)(v15);
    v18 = v17;
    KeyPath = swift_getKeyPath();
    (*(*v1 + 2264))(KeyPath);

    v20 = v1[6];
    if (v20)
    {
      if (v16 == v1[5] && v20 == v18)
      {
        v21 = 1;
      }

      else
      {
        v21 = sub_1A524EAB4();
      }
    }

    else
    {
      v21 = 0;
    }

    v23 = (*(*v1 + 1304))(v22);
    v24 = sub_1A4504184(v23);
    sub_1A3DB9B78(v23);
    if (v24)
    {
      if (v21)
      {
        v25 = v14 ^ 1;
        return v25 & 1;
      }

LABEL_17:
      v25 = 1;
      return v25 & 1;
    }

    if ((v21 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    v25 = 0;
    return v25 & 1;
  }

  __break(1u);
  return result;
}

BOOL sub_1A4504DDC()
{
  sub_1A3C52C70(0, &qword_1EB126860);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 intelligenceLightModeInPromptTextField];

  return v1 != 2;
}

uint64_t sub_1A4504E48(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000736E6FLL;
  v3 = 0x6974736567677553;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6C6F686563616C50;
    }

    else
    {
      v5 = 0x6974736567677553;
    }

    if (v4)
    {
      v6 = 0xEB00000000726564;
    }

    else
    {
      v6 = 0xEB00000000736E6FLL;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6F72702072657355;
    v6 = 0xEB0000000074706DLL;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6576656972746552;
    }

    else
    {
      v5 = 0x6465646E65747845;
    }

    if (v4 == 3)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  v7 = 0x6F72702072657355;
  v8 = 0xEB0000000074706DLL;
  v9 = 0x6576656972746552;
  v10 = 0xE900000000000064;
  if (a2 != 3)
  {
    v9 = 0x6465646E65747845;
    v10 = 0xE800000000000000;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v3 = 0x6C6F686563616C50;
    v2 = 0xEB00000000726564;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1A524EAB4();
  }

  return v13 & 1;
}

uint64_t sub_1A4505048()
{
  swift_getKeyPath();
  (*(*v0 + 2264))();

  swift_beginAccess();
}

uint64_t sub_1A45050CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 488))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4505120(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 496);

  return v2(v3);
}

uint64_t sub_1A450519C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
}

void (*sub_1A45051FC(uint64_t *a1))(void *a1)
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
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4504FF8();
  return sub_1A450534C;
}

void sub_1A4505358()
{
  swift_getKeyPath();
  (*(*v0 + 2264))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A45053CC(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 2264))();

  v4 = v3[6];
  *a2 = v3[5];
  a2[1] = v4;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A450546C(uint64_t a1, uint64_t a2)
{
  v5 = v2[6];
  if (v5)
  {
    if (a2)
    {
      v6 = v2[5] == a1 && v5 == a2;
      if (v6 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    v12 = a2;
    (*(*v2 + 2272))(v9);
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  v2[5] = a1;
  v2[6] = a2;
}

uint64_t sub_1A45055BC(char a1)
{
  v2 = a1 & 1;
  v3 = (*v1 + 584);
  v4 = *v3;
  result = (*v3)();
  if ((result & 1) != v2)
  {
    v6 = v4();
    v7 = *v1;
    if (v6)
    {
      v8 = (*(v7 + 608))();
      result = (*(*v1 + 1624))(v8);
      if (!result)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v9 = (*(v7 + 616))();
      result = (*(*v1 + 1624))(v9);
      if (!result)
      {
        __break(1u);
        return result;
      }
    }

    (*(*result + 472))(v6 & 1);
  }

  return result;
}

uint64_t (*sub_1A450573C(uint64_t a1))(_BYTE *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 56);
  return sub_1A4505768;
}

uint64_t sub_1A4505768(_BYTE *a1)
{
  v1 = *a1;
  v2 = a1[8];
  v3 = *(*a1 + 56);
  *(v1 + 56) = v2;
  return sub_1A45055BC(v3);
}

uint64_t sub_1A4505798()
{
  swift_getKeyPath();
  (*(*v0 + 2264))();

  return v0[56];
}

uint64_t sub_1A45057FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 584))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A45058A4(char a1)
{
  v2 = a1 & 1;
  v3 = v1[56];
  if (v3 == v2)
  {
    v1[56] = v2;

    return sub_1A45055BC(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v7 = v1;
    v8 = v2;
    (*(*v1 + 2272))(v5);
  }
}

void (*sub_1A45059AC(uint64_t *a1))(void *a1)
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
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A450573C(v4);
  return sub_1A4505AFC;
}

uint64_t sub_1A4505B08()
{
  v1 = (*(*v0 + 896))();
  (*(*v1 + 288))(1);

  result = (*(*v0 + 704))(v2);
  if (result)
  {
    (*(*result + 1872))(result);
  }

  return result;
}

uint64_t sub_1A4505C20()
{
  v1 = (*(*v0 + 896))();
  (*(*v1 + 288))(0);

  v3 = (*(*v0 + 704))(v2);
  if (v3)
  {
    (*(*v3 + 1880))(v3);
  }

  return sub_1A4505F68();
}

uint64_t sub_1A4505D90(uint64_t a1, uint64_t *a2)
{
  sub_1A452B8C0(0, &qword_1EB120BA0, sub_1A3F6D768, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10[-v5];
  sub_1A452FAF4(a1, &v10[-v5], &qword_1EB120BA0, sub_1A3F6D768);
  v7 = *a2;
  KeyPath = swift_getKeyPath();
  v11 = v7;
  v12 = v6;
  (*(*v7 + 2272))(KeyPath, sub_1A45303C0, v10, MEMORY[0x1E69E7CA8] + 8);

  return sub_1A452EFF0(v6, &qword_1EB120BA0, sub_1A3F6D768);
}

uint64_t sub_1A4505EE8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__blockGenerationCompletionContinuation;
  swift_beginAccess();
  sub_1A452FF28(a2, a1 + v4, &qword_1EB120BA0, sub_1A3F6D768);
  return swift_endAccess();
}

uint64_t sub_1A4505F68()
{
  v1 = v0;
  sub_1A3F6D768();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A452B8C0(0, &qword_1EB120BA0, sub_1A3F6D768, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  KeyPath = swift_getKeyPath();
  (*(*v0 + 2264))(KeyPath);

  v14 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__blockGenerationCompletionContinuation;
  swift_beginAccess();
  sub_1A452FAF4(v1 + v14, v12, &qword_1EB120BA0, sub_1A3F6D768);
  if ((*(v4 + 48))(v12, 1, v3))
  {
    sub_1A452EFF0(v12, &qword_1EB120BA0, sub_1A3F6D768);
  }

  else
  {
    (*(v4 + 16))(v6, v12, v3);
    sub_1A452EFF0(v12, &qword_1EB120BA0, sub_1A3F6D768);
    sub_1A524CBE4();
    (*(v4 + 8))(v6, v3);
  }

  (*(v4 + 56))(v9, 1, 1, v3);
  v15 = swift_getKeyPath();
  v16 = MEMORY[0x1EEE9AC00](v15);
  *(&v18 - 2) = v1;
  *(&v18 - 1) = v9;
  (*(*v1 + 2272))(v16);

  return sub_1A452EFF0(v9, &qword_1EB120BA0, sub_1A3F6D768);
}

uint64_t sub_1A4506358@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 704))();
  *a2 = result;
  return result;
}

uint64_t sub_1A45063AC(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 712);

  return v2(v3);
}

void (*sub_1A4506428(uint64_t *a1))(void *a1)
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
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A45062E4();
  return sub_1A4506578;
}

uint64_t sub_1A45065F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 752))();
  *a2 = result;
  return result;
}

uint64_t sub_1A450664C(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 760);

  return v2(v3);
}

void (*sub_1A45066D0(uint64_t *a1))(void *a1)
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
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4506584();
  return sub_1A4506820;
}

uint64_t sub_1A45068A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 800))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A4506970(uint64_t *a1))(void *a1)
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
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A450682C();
  return sub_1A4506AC0;
}

uint64_t sub_1A4506BBC()
{
  swift_getKeyPath();
  (*(*v0 + 2264))();

  swift_beginAccess();
}

uint64_t sub_1A4506C48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 896))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4506C9C(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 904);

  return v2(v3);
}

uint64_t sub_1A4506D20(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  if (*(v2 + v4) != a1)
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 2272))(v6);
  }
}

void (*sub_1A4506E20(uint64_t *a1))(void *a1)
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
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4506B48();
  return sub_1A4506F70;
}

uint64_t sub_1A4506FF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 944))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A45070DC(uint64_t *a1))(void *a1)
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
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4506F7C();
  return sub_1A450722C;
}

void sub_1A45072AC()
{
  swift_getKeyPath();
  (*(*v0 + 2264))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4507348@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 992))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A4507434(uint64_t a1, uint64_t a2, void *a3)
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
  (*(*v3 + 2272))(v11);
}

void (*sub_1A450757C(uint64_t *a1))(void *a1)
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
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4507238();
  return sub_1A45076CC;
}

uint64_t sub_1A450774C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*(*v2 + 2264))();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1A45077D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1040))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A45078A4(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 2272))(v7);
  }

  return result;
}

void (*sub_1A45079A0(uint64_t *a1))(void *a1)
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
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A45076D8();
  return sub_1A4507AF0;
}

uint64_t sub_1A4507B70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1088))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4507BC4(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 1096);

  return v2(v3);
}

void (*sub_1A4507C40(uint64_t *a1))(void *a1)
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
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4507AFC();
  return sub_1A4507D90;
}

uint64_t sub_1A4507E10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1136))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4507E64(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 1144);

  return v2(v3);
}

void (*sub_1A4507EE0(uint64_t *a1))(void *a1)
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
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4507D9C();
  return sub_1A4508030;
}

uint64_t sub_1A45080D0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__ambiguityManager;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void (*sub_1A4508138(uint64_t *a1))(void *a1)
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
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A450803C();
  return sub_1A4508288;
}

uint64_t sub_1A4508294(uint64_t a1)
{
  result = (*(*v1 + 1184))();
  if (result)
  {
    (*(*result + 696))(a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4508330()
{
  result = (*(*v0 + 1184))();
  if (result)
  {
    v2 = (*(*result + 688))(result);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1A45083C0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = (*v1 + 1184);
  v4 = *v3;
  a1[2] = *v3;
  a1[3] = v3 & 0xFFFFFFFFFFFFLL | 0x1A92000000000000;
  result = v4();
  if (result)
  {
    v6 = (*(*result + 688))(result);

    *a1 = v6;
    return sub_1A4508488;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4508488(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = (a1[2])();
  if (result)
  {
    (*(*result + 696))(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4508560(uint64_t a1)
{
  sub_1A452B8C0(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  result = (*(*v1 + 1184))(v4);
  if (result)
  {
    v8 = result;
    sub_1A452FAF4(a1, v6, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData);
    (*(*v8 + 304))(v6);

    return sub_1A452EFF0(a1, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A45086CC()
{
  result = (*(*v0 + 1184))();
  if (result)
  {
    (*(*result + 296))(result);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_1A4508768(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1A452B8C0(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v7);
    v5[2] = malloc(v7);
    v8 = malloc(v7);
  }

  v5[3] = v8;
  v9 = (*v1 + 1184);
  v10 = *v9;
  v5[4] = *v9;
  v5[5] = v9 & 0xFFFFFFFFFFFFLL | 0x1A92000000000000;
  result = v10();
  if (result)
  {
    (*(*result + 296))(result);

    return sub_1A4508900;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A4508900(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  if ((a2 & 1) == 0)
  {
    v10 = v3();
    if (v10)
    {
      v11 = v10;
      v8 = v2[2];
      v7 = v2[3];
      v9 = v2[1];
      sub_1A452FAF4(v7, v8, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData);
      (*(*v11 + 304))(v8);

      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  v4 = sub_1A452FAF4(v2[3], v2[1], &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData);
  v5 = (v3)(v4);
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v8 = v2[2];
  v7 = v2[3];
  v9 = v2[1];
  sub_1A452FAF4(v9, v8, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData);
  (*(*v6 + 304))(v8);

  sub_1A452EFF0(v9, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData);
LABEL_6:
  sub_1A452EFF0(v7, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData);
  free(v7);
  free(v8);
  free(v9);

  free(v2);
}

uint64_t sub_1A4508AE0()
{
  v1 = (*(*v0 + 1304))();
  if (v1 >= 5)
  {
    v5 = v1;
    sub_1A3C34400(0, &qword_1EB126160);
    if (swift_dynamicCast())
    {
      sub_1A440B338(v3, v4);
      if (v4 >= 4)
      {

        return 1;
      }
    }
  }

  else
  {
    sub_1A3DB9B78(v1);
  }

  return 0;
}

void *sub_1A4508BAC()
{
  swift_getKeyPath();
  (*(*v0 + 2264))();

  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__currentState);
  sub_1A452B924(v1);
  return v1;
}

uint64_t sub_1A4508C24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1304))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4508C98(void *a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 2272))();
  sub_1A3DB9B78(a1);
}

void sub_1A4508D40(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__currentState);
  *(a1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__currentState) = a2;
  sub_1A452B924(a2);
  sub_1A3DB9B78(v3);

  v4 = sub_1A5246F04();
  v5 = sub_1A524D264();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    swift_slowAlloc();
    *v6 = 136315138;
    (*(*a1 + 1304))();
    sub_1A524C714();
    sub_1A3C2EF94();
  }

  sub_1A4526154();
}

void sub_1A4508ED0(uint64_t a1)
{
  v3 = (*v1 + 1408);
  v4 = *v3;
  v5 = (*v3)();
  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  v7 = (*v1 + 1352);
  v8 = *v7;
  v9 = (*v7)();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  (*(*v6 + 416))(sub_1A45304DC, v10);

  v12 = *((v8)(v11) + 16);

  if (v12 || !*(a1 + 16))
  {
    goto LABEL_6;
  }

  v14 = (v4)(v13);
  if (!v14)
  {
LABEL_16:
    __break(1u);
    return;
  }

  (*(*v14 + 440))(v14, 0.5);

LABEL_6:
  v15 = *((v8)(v13) + 16);

  if (v15 >= 2)
  {

    v16 = sub_1A5246F04();
    v17 = sub_1A524D244();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      v19 = *(v8() + 16);

      *(v18 + 4) = v19;

      _os_log_impl(&dword_1A3C1C000, v16, v17, "Unexpected state for generatedStories to contain %ld stories", v18, 0xCu);
      MEMORY[0x1A590EEC0](v18, -1, -1);
    }

    else
    {
    }
  }

  oslog = sub_1A5246F04();
  v20 = sub_1A524D264();

  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    swift_slowAlloc();
    *v21 = 136642819;
    v22 = v8();
    v23 = sub_1A5244664();
    MEMORY[0x1A5907DB0](v22, v23);

    sub_1A3C2EF94();
  }
}

void sub_1A4509268()
{
  swift_getKeyPath();
  (*(*v0 + 2264))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45092E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1352))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4509358(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 2272))();
}

uint64_t sub_1A4509400()
{
  v1 = sub_1A5244664();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v0 + 1352))(v3);
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  while (1)
  {
    v10 = v8;
    if (v9 == v8)
    {
      goto LABEL_6;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    (*(v2 + 16))(v5, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8++, v1);
    sub_1A5244634();
    v12 = v11;
    result = (*(v2 + 8))(v5, v1);
    if (v12)
    {

LABEL_6:

      return v9 != v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A45095B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1408))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4509644()
{
  swift_getKeyPath();
  (*(*v0 + 2272))();
}

uint64_t sub_1A45096E4()
{
  result = (*(*v0 + 1408))();
  if (result)
  {
    (*(*result + 280))(result);

    sub_1A452B998(0, &qword_1EB125460, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListImplementation);
    sub_1A452BA00(&qword_1EB125468, &qword_1EB125460, type metadata accessor for PhotoKitItemListImplementation);
    sub_1A52463B4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A45098C0()
{
  result = (*(*v0 + 1408))();
  if (result)
  {
    (*(*result + 280))(result);

    sub_1A452B998(0, &qword_1EB125460, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListImplementation);
    sub_1A452BA00(&qword_1EB125468, &qword_1EB125460, type metadata accessor for PhotoKitItemListImplementation);
    sub_1A52463B4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4509A50(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = *a2;
  KeyPath = swift_getKeyPath();
  v11[2] = v8;
  v11[3] = v7;
  (*(*v8 + 2272))(KeyPath, a6, v11, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1A4509B6C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (!*(v2 + *a2))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 2272))(v7);
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C34400(0, &qword_1EB126160);

  v5 = sub_1A524CD74();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + v4) = a1;
}

uint64_t sub_1A4509D0C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  (*(*v5 + 2264))();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1A4509E00()
{
  swift_getKeyPath();
  (*(*v0 + 2264))();
}

uint64_t sub_1A4509E7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1624))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4509EFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__suggestionViewModel;
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__suggestionViewModel))
  {
    if (a1)
    {
      type metadata accessor for GenerativeStorySuggestionViewModel(0);
      sub_1A452FE78(&qword_1EB13CD18, type metadata accessor for GenerativeStorySuggestionViewModel);
      swift_retain_n();
      v4 = sub_1A524C594();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 2272))(v6);
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}