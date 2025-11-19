uint64_t sub_1A4555FAC()
{
  v0 = sub_1A5246B74();
  MEMORY[0x1EEE9AC00](v0 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v2 = result;
      sub_1A52469E4();
      sub_1A5246B64();
      sub_1A5246B84();
    }
  }

  return result;
}

void sub_1A45560DC(uint64_t a1)
{
  v1 = *(*a1 + 80);
  MEMORY[0x1EEE9AC00](a1);
  v3[3] = v3 - v2;
  sub_1A4557778();
  v3[8] = v1;
  type metadata accessor for SpatialPresentation.AnimatedView();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A455653C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524CCB4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v10 = sub_1A524CC44();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = v9;

  sub_1A3D4D930(0, 0, v7, &unk_1A5347200, v11);
}

uint64_t sub_1A45566C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1A524CC54();
  *(v4 + 48) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4556760, v6, v5);
}

uint64_t sub_1A4556760()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A52415B4();
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A455682C()
{
  sub_1A4557778();
  type metadata accessor for SpatialPresentation.AnimatedView();
  sub_1A524CB74();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4556B68(uint64_t a1)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_1A52415B4();
}

void sub_1A4556C0C()
{
  sub_1A4557778();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4556C34(uint64_t *a1@<X8>)
{
  *a1 = sub_1A4557778();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4556C9C()
{
  swift_getKeyPath();
  type metadata accessor for SpatialPresentation();
  swift_getWitnessTable();
  sub_1A52415E4();
}

uint64_t sub_1A4556D7C(void *a1)
{
  v1 = [a1 layer];
  [v1 setCompositingFilter_];

  sub_1A5246AF4();
  swift_allocObject();
  sub_1A5246AE4();

  sub_1A5246AA4();
  sub_1A5246AD4();
}

uint64_t sub_1A4556FB0()
{
  result = sub_1A5246A94();
  if (result)
  {
    sub_1A5246AC4();
  }

  return result;
}

void sub_1A4557158(void *a1, void *a2, uint64_t a3)
{
  v7 = *v3;
  if (sub_1A45552C8() != 2)
  {
    [a1 setAlpha_];

    sub_1A5246A04();
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    v10 = *(v7 + 80);
    v9[2] = v10;
    v11 = *(v7 + 88);
    v9[3] = v11;
    v9[4] = a1;
    v9[5] = a2;
    v9[6] = a3;
    v23 = sub_1A4557AA8;
    v24 = v9;
    v19 = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_1A3C2E0D0;
    v22 = &block_descriptor_210;
    v12 = _Block_copy(&v19);
    v13 = a1;
    v14 = a2;

    v15 = swift_allocObject();
    v15[2] = v10;
    v15[3] = v11;
    v15[4] = v13;
    v15[5] = v14;
    v15[6] = a3;
    v15[7] = 0x3FD3333333333333;
    v23 = sub_1A4557ABC;
    v24 = v15;
    v19 = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_1A3E01E70;
    v22 = &block_descriptor_19_5;
    v16 = _Block_copy(&v19);
    v17 = v13;
    v18 = v14;

    [v8 animateWithDuration:v12 animations:v16 completion:0.3];
    _Block_release(v16);
    _Block_release(v12);
  }
}

uint64_t sub_1A4557394()
{
  sub_1A5244384();
  sub_1A5244374();
  v0 = sub_1A5244314();

  if (v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1A5245084() ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1A45575A8()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 112);
  v2 = sub_1A5245104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 128);
  v4 = sub_1A5246F24();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 136);
  v6 = sub_1A5241614();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_1A4557720()
{
  sub_1A45575A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1A4557778()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 304))(KeyPath);

  v2 = *(*v0 + 120);
  swift_beginAccess();
  return *(v0 + v2);
}

uint64_t sub_1A45578AC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1A5245104();
    if (v2 <= 0x3F)
    {
      result = sub_1A5246F24();
      if (v3 <= 0x3F)
      {
        result = sub_1A5241614();
        if (v4 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A4557A14()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1A4557A54()
{
  result = qword_1EB1C62E0[0];
  if (!qword_1EB1C62E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C62E0);
  }

  return result;
}

void sub_1A4557ABC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v11 = *(v0 + 16);
  [v2 setHidden_];
  v5 = [v1 layer];
  [v5 setCompositingFilter_];

  sub_1A5246A84();
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v11;
  *(v7 + 32) = v1;
  *(v7 + 40) = v2;
  *(v7 + 48) = v3;
  aBlock[4] = sub_1A4557C88;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_25_2;
  v8 = _Block_copy(aBlock);
  v9 = v1;
  v10 = v2;

  [v6 animateWithDuration:v8 animations:v4];
  _Block_release(v8);
}

uint64_t objectdestroy_12Tm()
{

  return swift_deallocObject();
}

uint64_t (*sub_1A4557CD8())()
{
  v1 = *v0;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  v3[2] = *(v1 + 80);
  v3[3] = *(v1 + 88);
  v3[4] = v2;
  return sub_1A4557D80;
}

uint64_t sub_1A4557D8C()
{
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A45566C8(v3, v4, v5, v2);
}

void sub_1A4557E54(void (*a1)(uint64_t a1), uint64_t a2)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_1A4557FA8;
  v13 = v5;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1A3D7692C;
  v11 = &block_descriptor_211;
  v6 = _Block_copy(&v8);

  v12 = a1;
  v13 = a2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1A3D6084C;
  v11 = &block_descriptor_3_5;
  v7 = _Block_copy(&v8);

  [v2 performAssetChanges:v6 completionHandler:v7];
  _Block_release(v7);
  _Block_release(v6);
}

void sub_1A4557FA8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x50))(a1);
  }
}

id sub_1A4558330(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithAssets_];
  swift_unknownObjectRelease();
  return v2;
}

id sub_1A4558390(uint64_t a1, uint64_t (*a2)(void))
{
  v6.receiver = v2;
  v6.super_class = a2();
  v4 = objc_msgSendSuper2(&v6, sel_initWithAssets_, a1);
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

id sub_1A4558414(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7.receiver = a1;
  v7.super_class = a4();
  swift_unknownObjectRetain();
  v5 = objc_msgSendSuper2(&v7, sel_initWithAssets_, a3);
  swift_unknownObjectRelease();
  if (v5)
  {
  }

  return v5;
}

id sub_1A45584A0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1A455855C(uint64_t a1)
{
  v2 = *off_1E7721FC0;
  sub_1A4076128();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v4;
  *(inited + 48) = 0xD000000000000023;
  *(inited + 56) = 0x80000001A53DBD50;
  v5 = v2;
  sub_1A3C5D7A8(inited);
  swift_setDeallocating();
  sub_1A3C5DDD4(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v7 = sub_1A524C3D4();

  v8 = [v6 initWithDomain:v5 code:-1 userInfo:v7];

  v9 = sub_1A5240B74();
  (*(a1 + 16))(a1, 0, v9);
}

void sub_1A45586C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for LemonadePeopleHomePeopleSection()
{
  result = qword_1EB1C6490;
  if (!qword_1EB1C6490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4558778()
{
  if (!qword_1EB13D450)
  {
    sub_1A4558864();
    sub_1A4559F84(255, &qword_1EB13D488, sub_1A4558A88, sub_1A4558B3C);
    sub_1A455A60C(&qword_1EB13D498, sub_1A4558864);
    sub_1A4558BB8();
    v0 = sub_1A5243DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D450);
    }
  }
}

void sub_1A4558864()
{
  if (!qword_1EB13D458)
  {
    sub_1A45588E4();
    sub_1A45589D8();
    v0 = sub_1A52423F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D458);
    }
  }
}

void sub_1A45588E4()
{
  if (!qword_1EB13D460)
  {
    sub_1A4558944();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D460);
    }
  }
}

void sub_1A4558944()
{
  if (!qword_1EB13D468)
  {
    type metadata accessor for LemonadePeopleHomeSortMenu();
    sub_1A455A60C(&qword_1EB13D470, type metadata accessor for LemonadePeopleHomeSortMenu);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D468);
    }
  }
}

unint64_t sub_1A45589D8()
{
  result = qword_1EB13D478;
  if (!qword_1EB13D478)
  {
    sub_1A45588E4();
    sub_1A455A60C(&qword_1EB13D480, sub_1A4558944);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D478);
  }

  return result;
}

void sub_1A4558A88()
{
  if (!qword_1EB13D490)
  {
    sub_1A44FD0D4();
    sub_1A455A60C(&qword_1EB13CBE0, sub_1A44FD0D4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13D490);
    }
  }
}

void sub_1A4558B3C()
{
  if (!qword_1EB1220A0)
  {
    sub_1A44B38BC(255, &qword_1EB126538, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
    v0 = sub_1A5249F44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1220A0);
    }
  }
}

unint64_t sub_1A4558BB8()
{
  result = qword_1EB13D4A0;
  if (!qword_1EB13D4A0)
  {
    sub_1A4559F84(255, &qword_1EB13D488, sub_1A4558A88, sub_1A4558B3C);
    sub_1A44FD0D4();
    sub_1A455A60C(&qword_1EB13CBE0, sub_1A44FD0D4);
    swift_getOpaqueTypeConformance2();
    sub_1A455A60C(&qword_1EB1220A8, sub_1A4558B3C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D4A0);
  }

  return result;
}

uint64_t sub_1A4558CF8@<X0>(PHPhotoLibrary *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_1A5243334();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LemonadePeopleHomePeopleSection();
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v28 = v6;
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5242D14();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = sub_1A52486A4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18._object = 0x80000001A53DBF40;
  v18._countAndFlagsBits = 0xD00000000000001ALL;
  v19 = LemonadeLocalizedPeopleAndPetsTitle(for:key:)(a1[1], v18);
  object = v19._object;
  countAndFlagsBits = v19._countAndFlagsBits;
  sub_1A455A3D4(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v17);
  v20 = sub_1A5248684();
  (*(v15 + 8))(v17, v14);
  if (v20)
  {
    sub_1A455A3D4(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v13);
    (*(v8 + 104))(v10, *MEMORY[0x1E69C2210], v7);
    sub_1A455A60C(&qword_1EB129148, MEMORY[0x1E69C2218]);
    sub_1A524C594();
    v21 = *(v8 + 8);
    v21(v10, v7);
    v21(v13, v7);
  }

  v22 = v31;
  sub_1A455A068(a1, v31, type metadata accessor for LemonadePeopleHomePeopleSection);
  v23 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v24 = swift_allocObject();
  sub_1A455A6BC(v22, v24 + v23, type metadata accessor for LemonadePeopleHomePeopleSection);
  (*(v32 + 104))(v34, *MEMORY[0x1E69C2410], v33);
  sub_1A5247BA4();
  sub_1A45588E4();
  sub_1A45589D8();
  return sub_1A52423E4();
}

void sub_1A455921C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A4558944();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = sub_1A5249314();
  *(v6 + 1) = 0;
  v6[16] = 0;
  sub_1A455A654();
  sub_1A484CB04(*(a1 + 8), &v6[*(v7 + 44)]);
  if (*a1)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  sub_1A455A6BC(v6, a2, sub_1A4558944);
  sub_1A45588E4();
  *(a2 + *(v9 + 36)) = v8;
}

void sub_1A4559304(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_1A5249234();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45586C8(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - v6;
  sub_1A44FD0D4();
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadePeopleSectionProvider(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v17 = *(a1 + 1);
  v18 = a1[1];
  v19 = *a1;
  v20 = *(a1 + 3);
  v21 = v20;
  v22 = v17;
  v23 = sub_1A42011B0();
  sub_1A4251F54(v22, v18, v19 ^ 1, v19 ^ 1, v19, v23, v20, v16);
  sub_1A455A068(v16, v13, type metadata accessor for LemonadePeopleSectionProvider);
  v24 = *(a1 + 2);
  v25 = sub_1A52442E4();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  v26 = sub_1A455A60C(&qword_1EB136230, type metadata accessor for LemonadePeopleSectionProvider);

  v27 = sub_1A3C5A374();
  sub_1A437CBD4(v13, v24, v7, 0, v19 ^ 1, v44, 0, 0, v10, v27 & 1, v11, v26);
  v28 = &a1[*(type metadata accessor for LemonadePeopleHomePeopleSection() + 44)];
  v30 = *v28;
  v29 = *(v28 + 1);
  v32 = *(v28 + 2);
  v31 = *(v28 + 3);
  if (v28[32] != 1)
  {

    sub_1A524D254();
    v33 = sub_1A524A014();
    sub_1A5246DF4();

    v34 = v39;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v30, v29, v32, v31, 0);
    (*(v40 + 8))(v34, v41);
  }

  sub_1A5247B84();
  sub_1A455A60C(&qword_1EB13CBE0, sub_1A44FD0D4);
  sub_1A524A604();
  sub_1A455A0D0(v10, sub_1A44FD0D4);
  swift_getKeyPath();
  sub_1A4559F84(0, &qword_1EB13D488, sub_1A4558A88, sub_1A4558B3C);
  v35 = sub_1A49A67AC();
  v37 = *v35;
  v36 = *(v35 + 1);
  *&v44[0] = v37;
  *(&v44[0] + 1) = v36;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A455984C@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5;
  v7 = type metadata accessor for LemonadePeopleHomePeopleSection();
  v8 = v7[9];
  *(a6 + v8) = swift_getKeyPath();
  v9 = MEMORY[0x1E697DCB8];
  sub_1A45586C8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v10 = v7[10];
  *(a6 + v10) = swift_getKeyPath();
  sub_1A45586C8(0, &qword_1EB128A50, MEMORY[0x1E697E730], v9);
  swift_storeEnumTagMultiPayload();
  v11 = a6 + v7[11];
  result = swift_getKeyPath();
  *v11 = result;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  return result;
}

uint64_t sub_1A4559978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v15[1] = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1A4558778();
  v15[0] = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A455A068(v3, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleHomePeopleSection);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1A455A6BC(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for LemonadePeopleHomePeopleSection);
  sub_1A455A068(v3, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleHomePeopleSection);
  v12 = swift_allocObject();
  sub_1A455A6BC(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10, type metadata accessor for LemonadePeopleHomePeopleSection);
  sub_1A5249584();
  sub_1A4558864();
  sub_1A4559F84(0, &qword_1EB13D488, sub_1A4558A88, sub_1A4558B3C);
  sub_1A455A60C(&qword_1EB13D498, sub_1A4558864);
  sub_1A4558BB8();
  sub_1A5243DC4();
  sub_1A455A60C(&qword_1EB13D4A8, sub_1A4558778);
  v13 = v15[0];
  sub_1A524AA94();
  return (*(v7 + 8))(v9, v13);
}

void sub_1A4559CCC()
{
  sub_1A3C4B4AC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v1 <= 0x3F)
    {
      sub_1A45586C8(319, &qword_1EB125A20, type metadata accessor for PickerConfiguration, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A45586C8(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A45586C8(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A44B38BC(319, &qword_1EB124738, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1A4559E74()
{
  result = qword_1EB13D4B0;
  if (!qword_1EB13D4B0)
  {
    sub_1A4559F84(255, &qword_1EB13D4B8, sub_1A4558778, MEMORY[0x1E697CBE8]);
    sub_1A455A60C(&qword_1EB13D4A8, sub_1A4558778);
    sub_1A455A60C(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D4B0);
  }

  return result;
}

void sub_1A4559F84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

uint64_t sub_1A4559FF8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadePeopleHomePeopleSection() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1A4558CF8(v4, a1);
}

uint64_t sub_1A455A068(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A455A0D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_60()
{
  v1 = type metadata accessor for LemonadePeopleHomePeopleSection();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[9];
  sub_1A45586C8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[10];
  sub_1A45586C8(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A52486A4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v2 + v1[11];
  sub_1A3D35A84(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A455A350(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LemonadePeopleHomePeopleSection() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1A455A3D4@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v21 = a4;
  v9 = sub_1A5249234();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E697DCB8];
  sub_1A45586C8(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1A455A724(v8, &v20 - v15, a1, a2, v13, sub_1A45586C8);
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

uint64_t sub_1A455A60C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A455A654()
{
  if (!qword_1EB13D4C0)
  {
    type metadata accessor for LemonadePeopleHomeSortMenu();
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D4C0);
    }
  }
}

uint64_t sub_1A455A6BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A455A724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A455BCD4()
{
  v0 = sub_1A3D3D8F8();
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = (v0 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      v6 = [v2 px_deprecated_appPhotoLibrary];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 px_localDefaults];

        sub_1A3D39474(v4);
        v9 = sub_1A524C634();

        [v8 setValue:0 forKey:v9];
      }

      --v1;
    }

    while (v1);
  }
}

id sub_1A455BDD4()
{
  result = [objc_opt_self() px_deprecated_appPhotoLibrary];
  if (result)
  {
    v1 = result;
    v2 = PHPhotoLibrary.lemonadeBookmarksManager.getter();

    (*(*v2 + 384))();
  }

  return result;
}

id sub_1A455BE74@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enablePhototypes];
  *a2 = result;
  return result;
}

id sub_1A455BEBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneUpSettings];
  *a2 = result;
  return result;
}

id sub_1A455BF0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 profileButtonShapeOutset];
  *a2 = v4;
  return result;
}

id sub_1A455BF54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 searchButtonShapeOutset];
  *a2 = v4;
  return result;
}

id sub_1A455BF9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 selectButtonShapeOutset];
  *a2 = v4;
  return result;
}

id sub_1A455BFE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationBarLegibilityEDRBoost];
  *a2 = v4;
  return result;
}

id sub_1A455C02C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableNavigationBarBlur];
  *a2 = result;
  return result;
}

id sub_1A455C074@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allowProfileIcon];
  *a2 = result;
  return result;
}

id sub_1A455C0BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationBarAnimationDuration];
  *a2 = v4;
  return result;
}

id sub_1A455C104@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationBarTitleAppearDelay];
  *a2 = v4;
  return result;
}

id sub_1A455C14C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationBarTitleAppearDuration];
  *a2 = v4;
  return result;
}

id sub_1A455C194@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationBarTitleDisappearDuration];
  *a2 = v4;
  return result;
}

id sub_1A455C1DC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableTabs];
  *a2 = result;
  return result;
}

id sub_1A455C224@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 defaultPhoneFeedNavigationType];
  *a2 = result;
  return result;
}

id sub_1A455C26C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableNavigationBarBlurInCollections];
  *a2 = result;
  return result;
}

id sub_1A455C2B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationBarBlurLegibilityEDRBoost];
  *a2 = v4;
  return result;
}

id sub_1A455C2FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationBarBlurRadius];
  *a2 = v4;
  return result;
}

id sub_1A455C344@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationBarBlurDistanceToBaseline];
  *a2 = v4;
  return result;
}

id sub_1A455C38C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationBarTintCurve];
  *a2 = result;
  return result;
}

id sub_1A455C3D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationBarTintOpacity];
  *a2 = v4;
  return result;
}

id sub_1A455C41C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 hideInlinePlayerOnFirstSegment];
  *a2 = result;
  return result;
}

id sub_1A455C464@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 opacityOfPlayerOnFirstSegment];
  *a2 = v4;
  return result;
}

id sub_1A455C4AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inlinePlayerFirstSegmentPlaceholderDuration];
  *a2 = v4;
  return result;
}

id sub_1A455C4F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inlinePlayerFrameLatencyApproximation];
  *a2 = v4;
  return result;
}

id sub_1A455C53C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableInlinePlaybackOnHover];
  *a2 = result;
  return result;
}

id sub_1A455C584@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inlinePlaybackOnHoverPlaybackDelay];
  *a2 = v4;
  return result;
}

id sub_1A455C5CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inlinePlayerPlaceholderKenBurnsScale];
  *a2 = v4;
  return result;
}

id sub_1A455C614@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inlinePlayerPlaceholderKenBurnsExtraDuration];
  *a2 = v4;
  return result;
}

id sub_1A455C65C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 alwaysFilterPlaceholder];
  *a2 = result;
  return result;
}

id sub_1A455C6A4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 iOSPlaceholderActionForMacOS];
  *a2 = result;
  return result;
}

id sub_1A455C6EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inlinePlaybackMaxConcurrentPlayers];
  *a2 = result;
  return result;
}

id sub_1A455C734@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inlinePlaybackMaxPreloadPlayers];
  *a2 = result;
  return result;
}

id sub_1A455C77C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inlinePlaybackMaxSupportedVisiblePlayers];
  *a2 = result;
  return result;
}

id sub_1A455C7C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inlinePlaybackVisibilityThreshold];
  *a2 = v4;
  return result;
}

id sub_1A455C80C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inlinePlayerCoveredDurationForPause];
  *a2 = v4;
  return result;
}

id sub_1A455C854@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 preferNewPlayerForFeeds];
  *a2 = result;
  return result;
}

id sub_1A455C89C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableInlinePlaybackDebugHUD];
  *a2 = result;
  return result;
}

id sub_1A455C8E4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 inlinePlaybackSimulateMainPresenterDisappearanceOnDismissal];
  *a2 = result;
  return result;
}

id sub_1A455C92C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableInlinePlaybackMemories];
  *a2 = result;
  return result;
}

id sub_1A455C974@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableInlinePlaybackTripsShelf];
  *a2 = result;
  return result;
}

id sub_1A455C9BC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableInlinePlaybackTrips];
  *a2 = result;
  return result;
}

id sub_1A455CA04@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableInlinePlaybackEvents];
  *a2 = result;
  return result;
}

id sub_1A455CA4C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableInlinePlaybackSocialGroupShelf];
  *a2 = result;
  return result;
}

id sub_1A455CA94@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableInlinePlaybackSocialGroupFeed];
  *a2 = result;
  return result;
}

id sub_1A455CADC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableCuratedLibrary];
  *a2 = result;
  return result;
}

id sub_1A455CB24@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 resetAllPhotosOnDismiss];
  *a2 = result;
  return result;
}

id sub_1A455CB6C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableCubeMode];
  *a2 = result;
  return result;
}

id sub_1A455CBB4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableRadarButton];
  *a2 = result;
  return result;
}

id sub_1A455CBFC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableMonthLocationTitles];
  *a2 = result;
  return result;
}

id sub_1A455CC44@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableMonthHeroPromotion];
  *a2 = result;
  return result;
}

id sub_1A455CC8C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showSharedLibraryPill];
  *a2 = result;
  return result;
}

id sub_1A455CCD4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 sharedWithYouOnlyFilterIncludesUnsaved];
  *a2 = result;
  return result;
}

id sub_1A455CD1C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 minimumCuratedLibraryVisibleFractionForExpansion];
  *a2 = v4;
  return result;
}

id sub_1A455CD64@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableEventsCellCollageStyle];
  *a2 = result;
  return result;
}

id sub_1A455CDAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 eventsCellItemAspectRatio];
  *a2 = v4;
  return result;
}

id sub_1A455CDF4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 eventFilterType];
  *a2 = result;
  return result;
}

id sub_1A455CE3C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 eventsPromotionScoreThreshold];
  *a2 = v4;
  return result;
}

id sub_1A455CE84@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 eventsExtendedCountThreshold];
  *a2 = result;
  return result;
}

id sub_1A455CECC@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 eventsSummaryCountThreshold];
  *a2 = result;
  return result;
}

id sub_1A455CF14@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableEventsDebugOverlay];
  *a2 = result;
  return result;
}

id sub_1A455CF5C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableSavedToday];
  *a2 = result;
  return result;
}

id sub_1A455CFA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 savedTodayToleranceInHours];
  *a2 = v4;
  return result;
}

id sub_1A455CFEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 tripsSource];
  *a2 = result;
  return result;
}

id sub_1A455D034@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 ignoreSharedLibraryFilterForFeaturedPhotos];
  *a2 = result;
  return result;
}

id sub_1A455D07C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryExpansionGestureSpringStiffness];
  *a2 = v4;
  return result;
}

id sub_1A455D0C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryExpansionToggleSpringStiffness];
  *a2 = v4;
  return result;
}

id sub_1A455D10C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryExpansionFastToggleSpringStiffness];
  *a2 = v4;
  return result;
}

id sub_1A455D154@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryChromeAutoAnimateSpringStiffness];
  *a2 = v4;
  return result;
}

id sub_1A455D19C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryExpansionMinScrollDistance];
  *a2 = v4;
  return result;
}

id sub_1A455D1E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryCollapseMinScrollDistance];
  *a2 = v4;
  return result;
}

id sub_1A455D22C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryBottomPadding];
  *a2 = v4;
  return result;
}

id sub_1A455D274@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryTransitionToolbarBlurRadius];
  *a2 = v4;
  return result;
}

id sub_1A455D2BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryTransitionShelfHeaderBlurRadius];
  *a2 = v4;
  return result;
}

id sub_1A455D304@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryTransitionChromeExpandPercentage];
  *a2 = v4;
  return result;
}

id sub_1A455D34C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryTransitionChromeCollapsePercentage];
  *a2 = v4;
  return result;
}

void sub_1A455D394()
{
  v0 = [objc_opt_self() px_deprecated_appPhotoLibrary];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 px_localDefaults];

    v3 = sub_1A524C634();
    [v2 setDate:0 forKey:v3];
  }
}

id sub_1A455D45C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxNumberOfSharedAlbumActivityItemsToShow];
  *a2 = result;
  return result;
}

id sub_1A455D4A4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableCollectionsSortButton];
  *a2 = result;
  return result;
}

id sub_1A455D4EC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableUserSmartAlbums];
  *a2 = result;
  return result;
}

id sub_1A455D534@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableLiveBlurForAllAssets];
  *a2 = result;
  return result;
}

id sub_1A455D57C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 eventsAlgorithm];
  *a2 = result;
  return result;
}

uint64_t sub_1A455D5C8(uint64_t *a1)
{
  v1 = PXHomeEventsAlgorithmDescription(*a1);
  v2 = sub_1A524C674();

  return v2;
}

id sub_1A455D618@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableNewDetailsView];
  *a2 = result;
  return result;
}

id sub_1A455D660@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableSolariumDetailsView];
  *a2 = result;
  return result;
}

id sub_1A455D6A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 detailsViewHeaderImplementation];
  *a2 = result;
  return result;
}

id sub_1A455D6F0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 solariumDetailsViewPreviewHeaderKind];
  *a2 = result;
  return result;
}

id sub_1A455D738@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 solariumDetailsViewPreviewHeaderAssetDisplayDuration];
  *a2 = v4;
  return result;
}

id sub_1A455D780@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 solariumDetailsViewPreviewHeaderCrossFadeDuration];
  *a2 = v4;
  return result;
}

id sub_1A455D7C8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enablePreviewSharing];
  *a2 = result;
  return result;
}

id sub_1A455D810@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enablePreviewCaching];
  *a2 = result;
  return result;
}

id sub_1A455D858@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enablePreviewKeyAsset];
  *a2 = result;
  return result;
}

id sub_1A455D8A0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 simulateDetailsViewLeaking];
  *a2 = result;
  return result;
}

id sub_1A455D8E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 simulatedDetailsViewLoadingDelay];
  *a2 = v4;
  return result;
}

id sub_1A455D930@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 simulatedPreviewPlayerDelay];
  *a2 = v4;
  return result;
}

id sub_1A455D978@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 scrubberKind];
  *a2 = result;
  return result;
}

id sub_1A455D9C0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableDetailsViewHorizontalPaging];
  *a2 = result;
  return result;
}

id sub_1A455DA08@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableDetailsViewHorizontalKeyboardScrolling];
  *a2 = result;
  return result;
}

id sub_1A455DA50@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 horizontalPagingTechnique];
  *a2 = result;
  return result;
}

id sub_1A455DA98@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableHorizontalPagingHint];
  *a2 = result;
  return result;
}

id sub_1A455DAE0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 horizontalPagingHintMaximumScale];
  *a2 = v4;
  return result;
}

id sub_1A455DB28@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableAggregatedHighlightGridInEditorial];
  *a2 = result;
  return result;
}

id sub_1A455DB70@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aggregatedHighlightColumns];
  *a2 = result;
  return result;
}

id sub_1A455DBB8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lowQualityAggregationPromotionScoreThreshold];
  *a2 = v4;
  return result;
}

id sub_1A455DC00@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 detailsViewHeaderAspectRatio];
  *a2 = v4;
  return result;
}

id sub_1A455DC48@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableFocusMapLensOnAnchors];
  *a2 = result;
  return result;
}

id sub_1A455DC90@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mapLensAnchorFocusKilometerRadius];
  *a2 = v4;
  return result;
}

id sub_1A455DCD8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableDetailsViewPrototype];
  *a2 = result;
  return result;
}

id sub_1A455DD20@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dynamicHeaderChromeHidingDelay];
  *a2 = v4;
  return result;
}

id sub_1A455DD68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dynamicHeaderDebugOverlay];
  *a2 = result;
  return result;
}

id sub_1A455DDB0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dynamicHeaderDebugBehavior];
  *a2 = result;
  return result;
}

id sub_1A455DDF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dynamicHeaderMaximumDelayFromPreview];
  *a2 = v4;
  return result;
}

id sub_1A455DE40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dynamicHeaderMaximumDelayFromMovie];
  *a2 = v4;
  return result;
}

id sub_1A455DE88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dynamicHeaderDismissAreaBottomInset];
  *a2 = v4;
  return result;
}

id sub_1A455DED0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 detailsDismissArea];
  *a2 = result;
  return result;
}

id sub_1A455DF18@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableProtoBanner];
  *a2 = result;
  return result;
}

id sub_1A455DF60@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 movieCurationAffordance];
  *a2 = result;
  return result;
}

id sub_1A455DFA8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 alwaysShowCurationToggleButton];
  *a2 = result;
  return result;
}

id sub_1A455DFF0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 scrollThresholdForTopCenteredTitle];
  *a2 = v4;
  return result;
}

id sub_1A455E038@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 topTitleVerticalSpace];
  *a2 = v4;
  return result;
}

id sub_1A455E080@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 titleOverlayScaleAtTop];
  *a2 = v4;
  return result;
}

id sub_1A455E0C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 bannerTopMargin];
  *a2 = v4;
  return result;
}

id sub_1A455E110@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 titleOverlayScaleDistance];
  *a2 = v4;
  return result;
}

id sub_1A455E158@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 titleOverlayTopDetentTolerance];
  *a2 = v4;
  return result;
}

id sub_1A455E1A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 titleOverlaySingleLineTopDetentTolerance];
  *a2 = v4;
  return result;
}

id sub_1A455E1E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maximumBlurRadius];
  *a2 = v4;
  return result;
}

id sub_1A455E230@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mapTabInitialKilometerRadius];
  *a2 = v4;
  return result;
}

id sub_1A455E278@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableUtilityPrototypeCollections];
  *a2 = result;
  return result;
}

id sub_1A455E2C0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableRecentlyViewedCollection];
  *a2 = result;
  return result;
}

id sub_1A455E308@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableRecentlyEditedCollection];
  *a2 = result;
  return result;
}

id sub_1A455E350@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableRecentlySharedCollection];
  *a2 = result;
  return result;
}

id sub_1A455E398@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableDocumentsSection];
  *a2 = result;
  return result;
}

id sub_1A455E3E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 minimumNumberOfAssetsForPlaybackAsMemory];
  *a2 = result;
  return result;
}

id sub_1A455E428@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 yearsAndMonthsMode];
  *a2 = result;
  return result;
}

id sub_1A455E470@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 collectionPreviewTransition];
  *a2 = result;
  return result;
}

id sub_1A455E4B8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableKenBurnsInCollectionPreview];
  *a2 = result;
  return result;
}

id sub_1A455E500@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 collectionPreviewKenBurnsScaleDirection];
  *a2 = result;
  return result;
}

id sub_1A455E548@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxSearchResults];
  *a2 = result;
  return result;
}

id sub_1A455E590@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxRankedAssetSearchResults];
  *a2 = result;
  return result;
}

id sub_1A455E5D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxSearchSuggestions];
  *a2 = result;
  return result;
}

id sub_1A455E620@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableNextTokenSuggestions];
  *a2 = result;
  return result;
}

id sub_1A455E668@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxCuratedCollectionsPerType];
  *a2 = result;
  return result;
}

id sub_1A455E6B0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableSearchResultDiffAnimation];
  *a2 = result;
  return result;
}

id sub_1A455E6F8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableMetadataSearch];
  *a2 = result;
  return result;
}

id sub_1A455E740@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableEmbeddingSearch];
  *a2 = result;
  return result;
}

id sub_1A455E788@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableExactMatchResults];
  *a2 = result;
  return result;
}

id sub_1A455E7D0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableHybridMatchResults];
  *a2 = result;
  return result;
}

id sub_1A455E818@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableEmbeddingOnlyResultsInExactMatches];
  *a2 = result;
  return result;
}

id sub_1A455E860@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 overrideSuggestionPills];
  *a2 = result;
  return result;
}

id sub_1A455E8A8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableZKWForPad];
  *a2 = result;
  return result;
}

id sub_1A455E8F0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showSearchDebugBadges];
  *a2 = result;
  return result;
}

id sub_1A455E938@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 implicitSearchScopeForPickerSuggestionScopeSearch];
  *a2 = result;
  return result;
}

id sub_1A455E980@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 minNumberOfResultsForNextTokenGeneration];
  *a2 = result;
  return result;
}

id sub_1A455E9C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 searchQueryTimeout];
  *a2 = v4;
  return result;
}

id sub_1A455EA10@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableFullPageScreenshots];
  *a2 = result;
  return result;
}

id sub_1A455EA58@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableFullPageScreenshotDebuggingOverlays];
  *a2 = result;
  return result;
}

id sub_1A455EAA0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 limitFullPageScreenshotScale];
  *a2 = result;
  return result;
}

id sub_1A455EAE8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 limitFullPageScreenshotSize];
  *a2 = result;
  return result;
}

id sub_1A455EB30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maximumFullPageScreenshotDimension];
  *a2 = v4;
  return result;
}

id sub_1A455EB78@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableStackCounting];
  *a2 = result;
  return result;
}

id sub_1A455EBC0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enablePhotosChallenge];
  *a2 = result;
  return result;
}

id sub_1A455EC08@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableShelfIPadLayout];
  *a2 = result;
  return result;
}

id sub_1A455EC50@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableShelfDrawBorders];
  *a2 = result;
  return result;
}

id sub_1A455EC98@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableHeaderTitleChevron];
  *a2 = result;
  return result;
}

id sub_1A455ECE0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 shelfSpacing];
  *a2 = v4;
  return result;
}

id sub_1A455ED28@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableSidebarHeaderSelection];
  *a2 = result;
  return result;
}

id sub_1A455ED70@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableDismissPersistence];
  *a2 = result;
  return result;
}

id sub_1A455EDB8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 onlyDismissedInProfile];
  *a2 = result;
  return result;
}

id sub_1A455EE00@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 includeSharedAlbumsActivityInProfileNotifications];
  *a2 = result;
  return result;
}

id sub_1A455EE48@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 hideNotifications];
  *a2 = result;
  return result;
}

id sub_1A455EE90@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxNumberOfMainViewUnreadSharedAlbumsActivityNotifications];
  *a2 = result;
  return result;
}

id sub_1A455EED8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxNumberOfAccountViewUnreadSharedAlbumsActivityNotifications];
  *a2 = result;
  return result;
}

id sub_1A455EF20@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 wallpaperLoadingTimeout];
  *a2 = v4;
  return result;
}

id sub_1A455EF68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 wallpaperLoadingArtificialDelay];
  *a2 = v4;
  return result;
}

id sub_1A455EFB0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 useFeatureAvailabilityReporter];
  *a2 = result;
  return result;
}

id sub_1A455EFF8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 forceShowProcessingUI];
  *a2 = result;
  return result;
}

id sub_1A455F040@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 forceHideProcessingUI];
  *a2 = result;
  return result;
}

id sub_1A455F088@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 forceRenderingStatus];
  *a2 = result;
  return result;
}

id sub_1A455F0D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sectionedFeedTabBarItemSpacing];
  *a2 = v4;
  return result;
}

id sub_1A455F118@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 defaultFloatingToolbarBottomInset];
  *a2 = v4;
  return result;
}

id sub_1A455F160@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableShelves];
  *a2 = result;
  return result;
}

id sub_1A455F1A8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableShelvesLoader];
  *a2 = result;
  return result;
}

id sub_1A455F1F0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableShelvesLoaderGradualDelivery];
  *a2 = result;
  return result;
}

id sub_1A455F238@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enabledShelvesLazyVStack];
  *a2 = result;
  return result;
}

id sub_1A455F280@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableResponsiveScrolling];
  *a2 = result;
  return result;
}

id sub_1A455F2C8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableLoadingStatusHUD];
  *a2 = result;
  return result;
}

id sub_1A455F310@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 simulateEmptyShelves];
  *a2 = result;
  return result;
}

id sub_1A455F358@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 simulateFromMyMacAlbums];
  *a2 = result;
  return result;
}

id sub_1A455F3A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 samplePhototypeVisibility];
  *a2 = result;
  return result;
}

char *sub_1A455F420@<X0>(char **a1@<X8>)
{
  result = _sSo21PXHomeEventsAlgorithmV12PhotosUICoreE8allCasesSayABGvgZ_0();
  *a1 = result;
  return result;
}

char *sub_1A455F5A0(char *a1, int64_t a2, char a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D670, type metadata accessor for PXLemonadeFeedNavigationType);
  *v3 = result;
  return result;
}

char *sub_1A455F5DC(char *a1, int64_t a2, char a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D658, type metadata accessor for PXValueAnimationCurve);
  *v3 = result;
  return result;
}

char *sub_1A455F618(char *a1, int64_t a2, char a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D640, type metadata accessor for PXLemonadeEventsFilterType);
  *v3 = result;
  return result;
}

char *sub_1A455F654(char *a1, int64_t a2, char a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D620, type metadata accessor for PXLemonadeTripsSource);
  *v3 = result;
  return result;
}

char *sub_1A455F690(char *a1, int64_t a2, char a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D4E0, type metadata accessor for PXHomeEventsAlgorithm);
  *v3 = result;
  return result;
}

char *sub_1A455F6CC(char *a1, int64_t a2, char a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D5C8, type metadata accessor for PXLemonadeMovieCurationAffordance);
  *v3 = result;
  return result;
}

char *sub_1A455F708(char *a1, int64_t a2, char a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D5D0, type metadata accessor for PXLemonadeDetailsDismissArea);
  *v3 = result;
  return result;
}

char *sub_1A455F744(char *a1, int64_t a2, char a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D5D8, type metadata accessor for PXLemonadeDynamicHeaderDebugBehavior);
  *v3 = result;
  return result;
}

char *sub_1A455F780(char *a1, int64_t a2, char a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D5E0, type metadata accessor for PXLemonadeDynamicHeaderDebugOverlay);
  *v3 = result;
  return result;
}

char *sub_1A455F7BC(char *a1, int64_t a2, char a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D5E8, type metadata accessor for PXLemonadeHorizontalPagingTechnique);
  *v3 = result;
  return result;
}

char *sub_1A455F7F8(char *a1, int64_t a2, char a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D5F0, type metadata accessor for PXLemonadeStoryScrubberKind);
  *v3 = result;
  return result;
}

char *sub_1A455F834(char *a1, int64_t a2, char a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D5F8, type metadata accessor for PXSolariumDetailsViewPreviewHeaderKind);
  *v3 = result;
  return result;
}

char *sub_1A455F870(char *a1, int64_t a2, char a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D600, type metadata accessor for PXDetailsViewHeaderImplementation);
  *v3 = result;
  return result;
}

char *sub_1A455F8AC(char *a1, int64_t a2, char a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D540, type metadata accessor for PXLemonadeYearsAndMonthsMode);
  *v3 = result;
  return result;
}

char *sub_1A455F8E8(char *a1, int64_t a2, char a3)
{
  result = sub_1A455F980(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A455F908(char *a1, int64_t a2, char a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D528, type metadata accessor for PXLemonadePreviewTransitionKind);
  *v3 = result;
  return result;
}

char *sub_1A455F944(char *a1, int64_t a2, char a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D4F8, type metadata accessor for PXLemonadePhototypeVisibility);
  *v3 = result;
  return result;
}

char *sub_1A455F980(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A456A47C(0, &qword_1EB13D520, type metadata accessor for PXStoryScaleDirection, MEMORY[0x1E69E6F90]);
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

char *sub_1A455FA98(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1A456A47C(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void sub_1A455FE10()
{
  swift_getKeyPath();
  sub_1A3F93828();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0xD000000000000014);
}

void sub_1A45603B8()
{
  swift_getKeyPath();
  sub_1A3F93828();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0x6E6F697461727544);
}

void sub_1A45616C4()
{
  KeyPath = swift_getKeyPath();
  *&v4 = 0;
  v3[0] = 10;
  *&v2 = 1;
  sub_1A3DA24EC();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0xD000000000000016, 0x80000001A53DD020, KeyPath, &v4, v3, &v2, &v1);
}

void sub_1A4563120()
{
  swift_getKeyPath();
  sub_1A456A730(qword_1F1715CC0, sub_1A455F654);
  sub_1A456AB9C(0, &qword_1EB13D610, type metadata accessor for PXLemonadeTripsSource);
  swift_arrayDestroy();
  sub_1A456B458(&qword_1EB13D618, type metadata accessor for PXLemonadeTripsSource);
  sub_1A3F3E83C(0x756F532061746144, 0xEB00000000656372, &v0);
}

void sub_1A4563420()
{
  swift_getKeyPath();
  sub_1A3F93828();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0xD000000000000018);
}

void sub_1A4563DFC()
{
  KeyPath = swift_getKeyPath();
  *&v4 = 1;
  v3[0] = 50;
  *&v2 = 1;
  sub_1A3DA24EC();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0xD00000000000001DLL, 0x80000001A53DCC80, KeyPath, &v4, v3, &v2, &v1);
}

void sub_1A4564198()
{
  KeyPath = swift_getKeyPath();
  v1 = _sSo21PXHomeEventsAlgorithmV12PhotosUICoreE8allCasesSayABGvgZ_0();
  v2 = sub_1A456B458(&qword_1EB13D608, type metadata accessor for PXHomeEventsAlgorithm);
  *&v3 = &off_1EE6E3BC8;
  *(&v3 + 1) = &protocol witness table for Int;
  static SettingsUIProvider.ChoiceRow<A, B>(_:_:choiceValues:titleFormatter:)(0xD000000000000010, 0x80000001A53DCC40, KeyPath, v1, sub_1A455D5C8, 0, &type metadata for LemonadeSettingsUI, MEMORY[0x1E69E6530], v3, v2);
}

void sub_1A4564320(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  swift_getKeyPath();
  static SettingsUIProvider.SwitchRow(_:_:)();
}

void sub_1A4566534()
{
  swift_getKeyPath();
  sub_1A3F93828();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0x6361705320706F54);
}

void sub_1A4566A40()
{
  swift_getKeyPath();
  sub_1A3F93828();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0x696461522078614DLL);
}

void sub_1A4566B90()
{
  swift_getKeyPath();
  sub_1A3F93828();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0x696461522070614DLL);
}

void sub_1A4567054()
{
  KeyPath = swift_getKeyPath();
  *&v4 = 1;
  v3[0] = 10;
  *&v2 = 1;
  sub_1A3DA24EC();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0xD000000000000016, 0x80000001A53DC780, KeyPath, &v4, v3, &v2, &v1);
}

void sub_1A4567278()
{
  swift_getKeyPath();
  sub_1A456A730(qword_1F1716038, sub_1A455F8AC);
  sub_1A456AB9C(0, &qword_1EB13D530, type metadata accessor for PXLemonadeYearsAndMonthsMode);
  swift_arrayDestroy();
  sub_1A456B458(&qword_1EB13D538, type metadata accessor for PXLemonadeYearsAndMonthsMode);
  sub_1A3F3E83C(0x202F207372616559, 0xEE007368746E6F4DLL, &v0);
}

void sub_1A456746C()
{
  swift_getKeyPath();
  sub_1A456A730(qword_1F17160A0, sub_1A455F908);
  sub_1A456AB9C(0, &qword_1EB13D500, type metadata accessor for PXLemonadePreviewTransitionKind);
  swift_arrayDestroy();
  sub_1A456B458(&qword_1EB13D508, type metadata accessor for PXLemonadePreviewTransitionKind);
  sub_1A3F3E83C(0x697469736E617254, 0xEA00000000006E6FLL, &v0);
}

void sub_1A456784C()
{
  KeyPath = swift_getKeyPath();
  *&v4 = 0;
  v3[0] = 10000;
  *&v2 = 100;
  sub_1A3DA24EC();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0x4C20746C75736552, 0xEC00000074696D69, KeyPath, &v4, v3, &v2, &v1);
}

void sub_1A45689A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  a4(&v8, a2, a3, KeyPath);

  sub_1A5246624();
}

void sub_1A45692EC()
{
  swift_getKeyPath();
  sub_1A3F185D4();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0x20676E6964616F4CLL);
}

void sub_1A45697E8()
{
  swift_getKeyPath();
  sub_1A3F93828();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0x617053206D657449);
}

void sub_1A456993C()
{
  swift_getKeyPath();
  sub_1A3F93828();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0xD000000000000014);
}

char *_sSo21PXHomeEventsAlgorithmV12PhotosUICoreE8allCasesSayABGvgZ_0()
{
  v0 = PXHomeAllEventsAlgorithms();
  sub_1A3C52C70(0, &qword_1EB126610);
  v1 = sub_1A524CA34();

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1A524E2B4();
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v11 = MEMORY[0x1E69E7CC0];
  result = sub_1A455F690(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v11;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1A59097F0](v4, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 integerValue];

      v10 = *(v11 + 16);
      v9 = *(v11 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1A455F690((v9 > 1), v10 + 1, 1);
      }

      ++v4;
      *(v11 + 16) = v10 + 1;
      *(v11 + 8 * v10 + 32) = v8;
    }

    while (v2 != v4);

    return v5;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A456A3BC()
{
  result = qword_1EB13D4C8;
  if (!qword_1EB13D4C8)
  {
    sub_1A456A47C(255, &qword_1EB13D4D0, type metadata accessor for PXHomeEventsAlgorithm, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D4C8);
  }

  return result;
}

void sub_1A456A47C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A456A4EC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A456B408(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1A524EA54();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A456A570(void *a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  v2 = a1[2];
  sub_1A3F41E2C(v2, 0);
  sub_1A455F8E8(0, v2, 0);
  if (v2)
  {
    v4 = a1[4];
    v3 = a1[5];
    v5 = *(v9 + 16);
    if (v5)
    {
      v6 = (v9 + 40);
      do
      {
        v7 = *(v6 - 1) == v4 && *v6 == v3;
        if (v7 || (sub_1A524EAB4() & 1) != 0)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v6 += 2;
        --v5;
      }

      while (v5);
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

uint64_t sub_1A456A730(void *a1, void (*a2)(void, uint64_t, void))
{
  v11 = MEMORY[0x1E69E7CC0];
  v4 = a1[2];
  sub_1A3F41E2C(v4, 0);
  a2(0, v4, 0);
  if (v4)
  {
    v6 = a1[4];
    v5 = a1[5];
    v7 = *(v11 + 16);
    if (v7)
    {
      v8 = (v11 + 40);
      do
      {
        v9 = *(v8 - 1) == v6 && *v8 == v5;
        if (v9 || (sub_1A524EAB4() & 1) != 0)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v8 += 2;
        --v7;
      }

      while (v7);
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

void sub_1A456AB9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1A456B160()
{
  result = qword_1EB13D638;
  if (!qword_1EB13D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D638);
  }

  return result;
}

void sub_1A456B408(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A456B458(unint64_t *a1, void (*a2)(uint64_t))
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

void *StoryViewCurationBarButtonItem.init(storyViewModel:)(void *a1)
{
  v2 = v1;
  *(v2 + qword_1EB13D6E0) = 0;
  *(v2 + qword_1EB13D6E8) = a1;
  type metadata accessor for StoryViewCurationModel(0);
  v4 = a1;
  v8 = StoryViewCurationModel.__allocating_init(storyViewModel:)(v4);

  v5 = LemonadeCurationBarButtonItem.init(model:)(&v8);
  v6 = sub_1A456B700();
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0x88))(v6, &off_1F17163C0);

  return v5;
}

uint64_t (*sub_1A456B638(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1A42DC6CC();
  a1[1] = v3;
  return sub_1A456B680;
}

void sub_1A456B698(uint64_t a1)
{
  *(a1 + qword_1EB13D6E0) = 0;
  sub_1A524E6E4();
  __break(1u);
}

uint64_t sub_1A456B744()
{
}

uint64_t sub_1A456B7BC(uint64_t a1)
{
}

void *StoryViewCurationButton.init(storyViewModel:)(void *a1)
{
  v2 = v1;
  *(v2 + qword_1EB13D6F0) = 0;
  *(v2 + qword_1EB13D6F8) = a1;
  type metadata accessor for StoryViewCurationModel(0);
  v4 = a1;
  v8 = StoryViewCurationModel.__allocating_init(storyViewModel:)(v4);

  v5 = LemonadeCurationButton.init(model:)(&v8);
  v6 = sub_1A456BA84();
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0xA8))(v6, &off_1F17163C0);

  return v5;
}

uint64_t (*sub_1A456B940(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1A42DA320();
  a1[1] = v3;
  return sub_1A456B988;
}

uint64_t sub_1A456B9A0(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  v5 = swift_unknownObjectRetain();
  a3(v5, v4);

  return swift_unknownObjectRelease();
}

void sub_1A456BA1C(uint64_t a1)
{
  *(a1 + qword_1EB13D6F0) = 0;
  sub_1A524E6E4();
  __break(1u);
}

uint64_t sub_1A456BA98(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    type metadata accessor for StoryViewCurationProxy();
    v4 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    *(v1 + v2) = v4;
  }

  return v4;
}

uint64_t sub_1A456BB4C()
{
}

id sub_1A456BBA4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A456BC04(uint64_t a1)
{
}

void sub_1A456BD6C()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1A456BDB4()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

void sub_1A456BE10(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v6[4] = sub_1A456BEF0;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1A3D59380;
  v6[3] = &block_descriptor_212;
  v5 = _Block_copy(v6);

  [Strong performChanges_];
  _Block_release(v5);
}

void sub_1A456BEF0(void *a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1A524C634();
  [a1 setMenuIsOpen:v3 withIdentifier:v4];
}

uint64_t sub_1A456BF88()
{
  swift_getKeyPath();
  (*(*v0 + 408))();

  swift_beginAccess();
  return v0[16];
}

uint64_t sub_1A456C008@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A456C0A0(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[16] == v2)
  {
    v1[16] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 416))(v5);
  }

  return result;
}

void (*sub_1A456C19C(uint64_t *a1))(void *a1)
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
  (*(*v1 + 408))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore19TimelineEngineModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A456D100(&qword_1EB13D700, type metadata accessor for TimelineEngineModel);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030();
  return sub_1A456C2EC;
}

uint64_t type metadata accessor for TimelineEngineModel()
{
  result = qword_1EB16BEA0;
  if (!qword_1EB16BEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A456C394()
{
  swift_getKeyPath();
  (*(*v0 + 408))();

  swift_beginAccess();
  return v0[17];
}

uint64_t sub_1A456C414@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A456C4AC(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[17] == v2)
  {
    v1[17] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 416))(v5);
  }

  return result;
}

void (*sub_1A456C5A8(uint64_t *a1))(void *a1)
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
  (*(*v1 + 408))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore19TimelineEngineModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A456D100(&qword_1EB13D700, type metadata accessor for TimelineEngineModel);
  sub_1A52415F4();

  v4[7] = sub_1A456C344();
  return sub_1A456C6F8;
}

uint64_t sub_1A456C738(double a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1A456C7AC(double a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1A456C7EC(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t sub_1A456C878(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t sub_1A456C8CC()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  sub_1A3D607F0(v1);
  return v1;
}

uint64_t sub_1A456C91C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return sub_1A3C784D4(v5, v6);
}

uint64_t sub_1A456C970()
{
  (*(*v0 + 176))(1);
  (*(*v0 + 224))(0);
  v1 = sub_1A5240EE4();
  (*(*v0 + 248))(v1);
  v2 = sub_1A5240EE4();
  (*(*v0 + 272))(v2);
  (*(*v0 + 296))(0, 1);
  v3 = *(*v0 + 320);

  return v3(0, 1);
}

uint64_t sub_1A456CAC4()
{
  (*(*v0 + 360))();
  v1 = *(*v0 + 376);

  return v1();
}

uint64_t sub_1A456CB3C()
{
  result = (*(*v0 + 168))();
  if (result)
  {
    (*(*v0 + 176))(0);
    (*(*v0 + 224))(0);
    sub_1A5240EE4();
    v2 = *(*v0 + 272);

    return v2();
  }

  return result;
}

uint64_t sub_1A456CC18(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v31 = a1;
  v32 = a2;
  v6 = sub_1A524BEE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524BF64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A524BFC4();
  v33 = *(v14 - 8);
  v34 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v19;
  result = (*(*v3 + 288))(v18);
  if (v22)
  {
    sub_1A5240EE4();
    (*(*v3 + 296))(v23, 0);
    (*(*v3 + 320))(*&a3, 0);
    v24 = *v3;
    v29 = v11;
    v30 = v10;
    v25 = *(v24 + 344);
    v26 = v32;

    v25(v31, v26);
    sub_1A3C29A58();
    v27 = sub_1A524D474();
    sub_1A524BFA4();
    sub_1A524C014();
    v33 = *(v33 + 8);
    (v33)(v16, v34);
    aBlock[4] = sub_1A456D0D4;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_213;
    v28 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A456D100(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    sub_1A3C38394();
    sub_1A456D100(&qword_1EB12B1B0, sub_1A3C38394);
    sub_1A524E224();
    MEMORY[0x1A5908790](v20, v13, v9, v28);
    _Block_release(v28);

    (*(v7 + 8))(v9, v6);
    (*(v29 + 8))(v13, v30);
    return (v33)(v20, v34);
  }

  return result;
}

uint64_t sub_1A456D100(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A456D148()
{
  v1 = v0;
  result = (*(*v0 + 216))();
  if ((result & 1) == 0)
  {
    result = (*(*v0 + 288))();
    if ((v3 & 1) == 0)
    {
      v4 = (*(*v0 + 336))(result);
      if (v4)
      {
        v6 = v5;
        v7 = v4;
        v4();
        sub_1A3C784D4(v7, v6);
      }

      (*(*v1 + 224))(1);
      v8 = *(*v1 + 176);

      return v8(1);
    }
  }

  return result;
}

uint64_t sub_1A456D28C()
{
  v1 = (*(*v0 + 168))();
  v2 = sub_1A5240EE4();
  v4 = *v0;
  if (v1)
  {
    v5 = v3 - (*(v4 + 240))(v2);
    v6.n128_f64[0] = v5 + (*(*v0 + 264))();
    v7 = (*(*v0 + 272))(v6);
    v8 = COERCE_DOUBLE((*(*v0 + 288))(v7));
    if ((v9 & 1) == 0)
    {
      (*(*v0 + 296))(v5 + v8, 0);
    }
  }

  else
  {
    (*(v4 + 248))(v2);
  }

  v10 = (*(*v0 + 184))(v13);
  *v11 = !*v11;
  return v10(v13, 0);
}

uint64_t sub_1A456D5B0()
{
  sub_1A3C784D4(*(v0 + 72), *(v0 + 80));
  v1 = OBJC_IVAR____TtC12PhotosUICore19TimelineEngineModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A456D654()
{
  v0 = swift_allocObject();
  sub_1A456D68C();
  return v0;
}

uint64_t sub_1A456D68C()
{
  *(v0 + 16) = 0;
  sub_1A5240EE4();
  *(v0 + 24) = v1;
  sub_1A5240EE4();
  *(v0 + 32) = v2;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  sub_1A5241604();
  return v0;
}

uint64_t sub_1A456D6E8()
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

uint64_t sub_1A456D7AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E31270(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  sub_1A4575674(v1 + *(v10 + 28), v9, sub_1A3E31270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A52486A4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_1A456D9C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A456DA2C@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1A534B4C0;
  *(a1 + 16) = 0x4028000000000000;
  v2 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  v3 = v2[7];
  *(a1 + v3) = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v4 = v2[8];
  *(a1 + v4) = swift_getKeyPath();
  sub_1A3FA5378(0);
  swift_storeEnumTagMultiPayload();
  v5 = a1 + v2[9];
  sub_1A524B694();
  *v5 = v9;
  *(v5 + 8) = v10;
  v6 = (a1 + v2[10]);
  type metadata accessor for PhotosDetailsAlbumAttributionWidgetViewModel();
  sub_1A4575088(&unk_1EB125E30, type metadata accessor for PhotosDetailsAlbumAttributionWidgetViewModel);
  result = sub_1A5248494();
  *v6 = result;
  v6[1] = v8;
  return result;
}

void sub_1A456DB64(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v38 = v6;
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A456E0A8();
  v39 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A456E5F0();
  v12 = *(v11 - 8);
  v43 = v11;
  v44 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A456EB44(v1, v10);
  v47 = (*((*MEMORY[0x1E69E7D40] & **(v1 + *(v4 + 48) + 8)) + 0x180))(v14);
  v36 = v7;
  v41 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView;
  sub_1A4575674(v1, v7, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);
  v46 = *(v5 + 80);
  v15 = (v46 + 16) & ~v46;
  v16 = swift_allocObject();
  sub_1A457560C(v7, v16 + v15, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);
  v17 = sub_1A456E688();
  v18 = v39;
  sub_1A524B144();

  sub_1A45752D4(v10, sub_1A456E0A8);
  v19 = *(v4 + 44);
  v40 = v1;
  v20 = (v1 + v19);
  v21 = *v20;
  v22 = *(v20 + 1);
  v51 = v21;
  v52 = v22;
  sub_1A457552C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v37 = v49;
  v23 = v36;
  sub_1A4575674(v2, v36, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);
  v24 = swift_allocObject();
  v25 = v23;
  sub_1A457560C(v23, v24 + v15, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);
  sub_1A4570BF4();
  v47 = v18;
  v48 = MEMORY[0x1E69E6530];
  v49 = v17;
  v50 = MEMORY[0x1E69E6550];
  swift_getOpaqueTypeConformance2();
  sub_1A4570CA8();
  v27 = v26;
  v28 = sub_1A4575088(&qword_1EB13D810, sub_1A4570CA8);
  v47 = v27;
  v48 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v45;
  v30 = v42;
  v31 = v43;
  sub_1A524AFF4();

  (*(v44 + 8))(v30, v31);
  sub_1A4575674(v40, v25, v41);
  v32 = swift_allocObject();
  sub_1A457560C(v25, v32 + v15, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);
  sub_1A456E4D8(0, &qword_1EB13D818, sub_1A4570DF4);
  v34 = (v29 + *(v33 + 36));
  *v34 = 0;
  v34[1] = 0;
  v34[2] = sub_1A4570D3C;
  v34[3] = v32;
}

void sub_1A456E0A8()
{
  if (!qword_1EB13D708)
  {
    sub_1A4575140(255, &qword_1EB13D710, sub_1A456E144, sub_1A456E338, MEMORY[0x1E697F960]);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D708);
    }
  }
}

void sub_1A456E1B4()
{
  if (!qword_1EB13D728)
  {
    sub_1A4574E18(255, &qword_1EB13D730, MEMORY[0x1E6981910], MEMORY[0x1E6981900], MEMORY[0x1E697D670]);
    sub_1A52489A4();
    sub_1A456E2B4();
    sub_1A4575088(&qword_1EB122F70, MEMORY[0x1E697C248]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13D728);
    }
  }
}

unint64_t sub_1A456E2B4()
{
  result = qword_1EB13D738;
  if (!qword_1EB13D738)
  {
    sub_1A4574E18(255, &qword_1EB13D730, MEMORY[0x1E6981910], MEMORY[0x1E6981900], MEMORY[0x1E697D670]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D738);
  }

  return result;
}

void sub_1A456E338()
{
  if (!qword_1EB13D748)
  {
    sub_1A4575140(255, &qword_1EB13D750, sub_1A456E3DC, sub_1A3FA9268, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D748);
    }
  }
}

void sub_1A456E3DC()
{
  if (!qword_1EB13D758)
  {
    sub_1A456E470(255);
    sub_1A4575088(&qword_1EB13D798, sub_1A456E470);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D758);
    }
  }
}

void sub_1A456E4D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A456E564()
{
  if (!qword_1EB13D788)
  {
    sub_1A4574E18(255, &qword_1EB13D790, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PhotosDetailsDiscoverableView);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D788);
    }
  }
}

void sub_1A456E5F0()
{
  if (!qword_1EB13D7B0)
  {
    sub_1A456E0A8();
    sub_1A456E688();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13D7B0);
    }
  }
}

unint64_t sub_1A456E688()
{
  result = qword_1EB13D7B8;
  if (!qword_1EB13D7B8)
  {
    sub_1A456E0A8();
    sub_1A456E700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D7B8);
  }

  return result;
}

unint64_t sub_1A456E700()
{
  result = qword_1EB13D7C0;
  if (!qword_1EB13D7C0)
  {
    sub_1A4575140(255, &qword_1EB13D710, sub_1A456E144, sub_1A456E338, MEMORY[0x1E697F960]);
    sub_1A456E7C4();
    sub_1A456E9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D7C0);
  }

  return result;
}

unint64_t sub_1A456E7C4()
{
  result = qword_1EB13D7C8;
  if (!qword_1EB13D7C8)
  {
    sub_1A456E144(255);
    sub_1A456E874();
    sub_1A4575088(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D7C8);
  }

  return result;
}

unint64_t sub_1A456E874()
{
  result = qword_1EB13D7D0;
  if (!qword_1EB13D7D0)
  {
    sub_1A456E18C(255);
    sub_1A4574E18(255, &qword_1EB13D730, MEMORY[0x1E6981910], MEMORY[0x1E6981900], MEMORY[0x1E697D670]);
    sub_1A52489A4();
    sub_1A456E2B4();
    sub_1A4575088(&qword_1EB122F70, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D7D0);
  }

  return result;
}

unint64_t sub_1A456E9A0()
{
  result = qword_1EB13D7E0;
  if (!qword_1EB13D7E0)
  {
    sub_1A456E338();
    sub_1A456EA20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D7E0);
  }

  return result;
}

unint64_t sub_1A456EA20()
{
  result = qword_1EB13D7E8;
  if (!qword_1EB13D7E8)
  {
    sub_1A4575140(255, &qword_1EB13D750, sub_1A456E3DC, sub_1A3FA9268, MEMORY[0x1E697E830]);
    sub_1A4575088(&qword_1EB13D7F0, sub_1A456E3DC);
    sub_1A4575088(&qword_1EB12F910, sub_1A3FA9268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D7E8);
  }

  return result;
}

uint64_t sub_1A456EB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  sub_1A456E338();
  v87 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4575140(0, &qword_1EB13DA48, sub_1A456E144, sub_1A456E338, MEMORY[0x1E697F948]);
  v84 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v72 - v7;
  v80 = sub_1A52486A4();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1A52489A4();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  v73 = *(v12 - 8);
  v13 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1A4574E18(0, &qword_1EB13D730, MEMORY[0x1E6981910], MEMORY[0x1E6981900], MEMORY[0x1E697D670]);
  v75 = v14;
  v74 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v72 - v15;
  sub_1A456E18C(0);
  v78 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A456E144(0);
  v83 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v81 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v23 = *(a1 + *(v12 + 40) + 8);
  if ((*((*MEMORY[0x1E69E7D40] & *v23) + 0x140))(v20) == 5)
  {
    sub_1A4575674(v22, &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);
    v24 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v25 = swift_allocObject();
    v26 = sub_1A457560C(&v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);
    MEMORY[0x1EEE9AC00](v26);
    *(&v72 - 2) = v22;
    sub_1A524B704();
    sub_1A5248994();
    sub_1A456E2B4();
    sub_1A4575088(&qword_1EB122F70, MEMORY[0x1E697C248]);
    v27 = v75;
    v28 = v77;
    sub_1A524A934();
    (*(v76 + 8))(v11, v28);
    (*(v74 + 8))(v16, v27);
    sub_1A456D7AC(v9);
    sub_1A4394B64(v9, v12, &off_1EE6E41F0);
    v29 = *(v79 + 8);
    v30 = v80;
    v29(v9, v80);
    sub_1A456D7AC(v9);
    v31 = sub_1A4394B64(v9, v12, &off_1EE6E41F0);
    (v29)(v9, v30, v31);
    sub_1A524BC74();
    v32 = sub_1A52481F4();
    v33 = v82;
    v34 = &v82[*(v78 + 36)];
    v35 = v91;
    *v34 = v90;
    *(v34 + 1) = v35;
    *(v34 + 2) = v92;
    v88 = (*((*MEMORY[0x1E69E7D40] & *v23) + 0x198))(v32);
    v89 = v36;
    sub_1A3D5F9DC();
    v37 = sub_1A524A464();
    v39 = v38;
    v41 = v40;
    sub_1A456E874();
    v42 = v81;
    sub_1A524AAB4();
    sub_1A3E04DF4(v37, v39, v41 & 1);

    sub_1A45752D4(v33, sub_1A456E18C);
    sub_1A4575230(v42, v85, sub_1A456E144);
    swift_storeEnumTagMultiPayload();
    sub_1A456E7C4();
    sub_1A456E9A0();
    sub_1A5249744();
    v43 = sub_1A456E144;
    v44 = v42;
  }

  else
  {
    *v5 = sub_1A5249574();
    *(v5 + 1) = 0;
    v5[16] = 0;
    sub_1A45751C4(0, &qword_1EB13DA50, sub_1A456E470);
    sub_1A456FEC0(v22, &v5[*(v45 + 44)]);
    sub_1A4575140(0, &qword_1EB13D750, sub_1A456E3DC, sub_1A3FA9268, MEMORY[0x1E697E830]);
    v47 = &v5[*(v46 + 36)];
    sub_1A4110614(v23);
    v48 = sub_1A524BC74();
    v50 = v49;
    sub_1A3FA9268();
    v52 = &v47[*(v51 + 36)];
    *v52 = v48;
    v52[1] = v50;
    v53 = (*((*MEMORY[0x1E69E7D40] & *v23) + 0xC0))();
    [v53 contentGuideInsets];
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;

    v62 = EdgeInsets.init(_:)(v55, v57, v59, v61);
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v69 = sub_1A524A064();
    v70 = &v5[*(v87 + 36)];
    *v70 = v69;
    *(v70 + 1) = v62;
    *(v70 + 2) = v64;
    *(v70 + 3) = v66;
    *(v70 + 4) = v68;
    v70[40] = 0;
    sub_1A4575230(v5, v85, sub_1A456E338);
    swift_storeEnumTagMultiPayload();
    sub_1A456E7C4();
    sub_1A456E9A0();
    sub_1A5249744();
    v43 = sub_1A456E338;
    v44 = v5;
  }

  return sub_1A45752D4(v44, v43);
}

uint64_t sub_1A456F544()
{
  v1 = sub_1A5248334();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1A5240E64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  (*((*MEMORY[0x1E69E7D40] & **(v0 + *(v12 + 40) + 8)) + 0x1B0))();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1A45756DC(v7, sub_1A3EE53E0);
    v13 = (v0 + *(v12 + 36));
    v14 = *v13;
    v15 = *(v13 + 1);
    v17[16] = v14;
    v18 = v15;
    v17[15] = 1;
    sub_1A457552C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    return sub_1A524B6B4();
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_1A3EE4C48(v4);
    sub_1A5248304();
    (*(v2 + 8))(v4, v1);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1A456F834@<X0>(uint64_t *a1@<X8>)
{
  sub_1A4570F44();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A52486A4();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1A52407E4();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView.StackedShapeView(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  v12 = *(v33 + 40);
  v40 = v1;
  v13 = *(v1 + v12 + 8);
  v14 = MEMORY[0x1E69E7D40];
  v15 = (*((*MEMORY[0x1E69E7D40] & *v13) + 0x188))();
  v16 = v15;
  if (v15 >> 62)
  {
    v17 = sub_1A524E2B4();
  }

  else
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = a1;
  if (v17 < 1)
  {
    v18 = 0;
  }

  else if ((v16 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x1A59097F0](0, v16);
    if (v17 != 1)
    {
      v17 = MEMORY[0x1A59097F0](1, v16);
LABEL_9:

      goto LABEL_12;
    }
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_26;
    }

    v18 = *(v16 + 32);

    if (v17 != 1)
    {
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
        goto LABEL_41;
      }

      v17 = *(v16 + 40);

      goto LABEL_9;
    }
  }

  v17 = 0;
LABEL_12:
  if ((*((*v14 & *v13) + 0x140))(v19) != 5)
  {
    *v5 = sub_1A5249314();
    *(v5 + 1) = 0xC037553F7CED9168;
    v5[16] = 0;
    sub_1A45751C4(0, &qword_1EB13D8A0, sub_1A4570FD8);
    sub_1A45718B0(v17, v40, v18, &v5[*(v23 + 44)]);
    sub_1A4575088(&unk_1EB13D8A8, sub_1A4570F44);
    v24 = sub_1A524B8E4();
LABEL_39:

    *v41 = v24;
    return result;
  }

  (*((*v14 & *v13) + 0x1A0))(5);
  if (v18)
  {

    v13 = sub_1A5242704();

    if (!(v13 >> 62))
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_16;
      }

LABEL_27:

      goto LABEL_28;
    }

LABEL_26:
    result = sub_1A524E2B4();
    if (result)
    {
LABEL_16:
      if ((v13 & 0xC000000000000001) == 0)
      {
        if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_44;
        }

        v21 = *(v13 + 32);
        goto LABEL_19;
      }

LABEL_41:
      v21 = MEMORY[0x1A59097F0](0, v13);
LABEL_19:
      v22 = v21;

      if (!v17)
      {
        goto LABEL_37;
      }

      goto LABEL_29;
    }

    goto LABEL_27;
  }

LABEL_28:
  v22 = 0;
  if (!v17)
  {
LABEL_37:
    v27 = 0;
    goto LABEL_38;
  }

LABEL_29:

  v25 = sub_1A5242704();

  if (v25 >> 62)
  {
    result = sub_1A524E2B4();
    if (result)
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }

  result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_36:

    goto LABEL_37;
  }

LABEL_31:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1A59097F0](0, v25);
    goto LABEL_34;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v25 + 32);
LABEL_34:
    v27 = v26;

LABEL_38:
    v28 = v35;
    sub_1A456D7AC(v35);
    v29 = sub_1A4394B64(v28, v33, &off_1EE6E41F0);
    v31 = v30;
    (*(v37 + 8))(v28, v38);
    (*(v34 + 32))(v11, v39, v36);
    *&v11[v9[5]] = v22;
    *&v11[v9[6]] = v27;
    v32 = &v11[v9[7]];
    *v32 = v29;
    *(v32 + 1) = v31;
    v42 = 0x4059000000000000;
    sub_1A3F93828();
    sub_1A52480C4();
    *&v11[v9[9]] = 0x4030000000000000;
    *&v11[v9[10]] = 0x3FEE666666666666;
    sub_1A4575088(&qword_1EB13D8B8, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView.StackedShapeView);
    v24 = sub_1A524B8E4();
    goto LABEL_39;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1A456FEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  v4 = v3 - 8;
  v82 = *(v3 - 8);
  v81 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v80 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A456D9C8(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v79 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v75 - v9;
  sub_1A4574E18(0, &qword_1EB13D790, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PhotosDetailsDiscoverableView);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v77 = &v75 - v11;
  sub_1A456E564();
  v87 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A456E53C(0);
  v85 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v75 - v19;
  v76 = sub_1A524B9A4();
  v20 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE16E8(0);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA8D64(0);
  v28 = v27 - 8;
  MEMORY[0x1EEE9AC00](v27);
  v83 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v75 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v75 - v34;
  v36 = sub_1A524B994();
  v37 = *(a1 + *(v4 + 48) + 8);
  if ((*((*MEMORY[0x1E69E7D40] & *v37) + 0x108))(v36))
  {
    v38 = 0.8;
  }

  else
  {
    v38 = 0.0;
  }

  (*(v20 + 32))(v26, v22, v76);
  *&v26[*(v24 + 44)] = v38;
  v39 = sub_1A524A094();
  v40 = *(a1 + 8);
  sub_1A5247BC4();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_1A457560C(v26, v32, sub_1A3EE16E8);
  v49 = &v32[*(v28 + 44)];
  *v49 = v39;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  sub_1A457560C(v32, v35, sub_1A3FA8D64);
  v50 = sub_1A456F834(&v92);
  v91 = v92;
  v51 = v78;
  (*((*MEMORY[0x1E69E7D40] & *v37) + 0x1A0))(v50);
  v52 = sub_1A52407E4();
  v53 = *(*(v52 - 8) + 56);
  v53(v51, 0, 1, v52);
  v54 = v79;
  v53(v79, 1, 1, v52);
  v55 = v80;
  sub_1A4575674(a1, v80, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);
  v56 = (*(v82 + 80) + 16) & ~*(v82 + 80);
  v57 = swift_allocObject();
  sub_1A457560C(v55, v57 + v56, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);
  v58 = sub_1A3C30368();
  v59 = v77;
  sub_1A42F9768(&v91, v51, 0, 0, 0, v54, 0, 0, v77, sub_1A45754CC, v57, v58);
  sub_1A457552C(0, &unk_1EB1202B0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  LOBYTE(v54) = sub_1A524A094();
  *(inited + 32) = v54;
  v61 = sub_1A524A0B4();
  *(inited + 33) = v61;
  v62 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v54)
  {
    v62 = sub_1A524A0A4();
  }

  sub_1A524A0A4();
  if (sub_1A524A0A4() != v61)
  {
    v62 = sub_1A524A0A4();
  }

  v63 = v86;
  sub_1A457557C(v59, v86);
  *(v63 + *(v87 + 36)) = v62;
  v64 = *(a1 + 16);
  v65 = sub_1A524A064();
  v66 = v63;
  v67 = v84;
  sub_1A457560C(v66, v84, sub_1A456E564);
  v68 = v67 + *(v85 + 36);
  *v68 = v65;
  *(v68 + 8) = v64;
  *(v68 + 16) = v40;
  *(v68 + 24) = v64;
  *(v68 + 32) = v40;
  *(v68 + 40) = 0;
  v69 = v88;
  sub_1A457560C(v67, v88, sub_1A456E53C);
  v70 = v83;
  sub_1A4575674(v35, v83, sub_1A3FA8D64);
  v71 = v89;
  sub_1A4575674(v69, v89, sub_1A456E53C);
  v72 = v90;
  sub_1A4575674(v70, v90, sub_1A3FA8D64);
  sub_1A456E4A4(0);
  sub_1A4575674(v71, v72 + *(v73 + 48), sub_1A456E53C);
  sub_1A45756DC(v69, sub_1A456E53C);
  sub_1A45756DC(v35, sub_1A3FA8D64);
  sub_1A45756DC(v71, sub_1A456E53C);
  return sub_1A45756DC(v70, sub_1A3FA8D64);
}

uint64_t sub_1A45707FC()
{
  type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  sub_1A457552C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  return sub_1A524B6B4();
}

uint64_t sub_1A45708F0(uint64_t a1)
{
  sub_1A4570CA8();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1;
  type metadata accessor for PhotosDetailsAlbumAttributionListView();
  sub_1A4575088(&qword_1EB13D808, type metadata accessor for PhotosDetailsAlbumAttributionListView);
  sub_1A5248474();
  sub_1A456D9C8(0, &unk_1EB13DA30, MEMORY[0x1E697C4F8], MEMORY[0x1E69E6F90]);
  sub_1A5249484();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A52FC9F0;
  sub_1A5249474();
  sub_1A5249454();
  sub_1A44A1F10(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1A4575088(&qword_1EB13D810, sub_1A4570CA8);
  sub_1A524AD94();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A4570B84()
{
  v1 = *(type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A45708F0(v2);
}

void sub_1A4570BF4()
{
  if (!qword_1EB13D7F8)
  {
    sub_1A4570CA8();
    sub_1A4575088(&qword_1EB13D810, sub_1A4570CA8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13D7F8);
    }
  }
}

void sub_1A4570CA8()
{
  if (!qword_1EB13D800)
  {
    type metadata accessor for PhotosDetailsAlbumAttributionListView();
    sub_1A4575088(&qword_1EB13D808, type metadata accessor for PhotosDetailsAlbumAttributionListView);
    v0 = sub_1A5248484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D800);
    }
  }
}

uint64_t sub_1A4570D3C()
{
  type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  sub_1A457552C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

void sub_1A4570DF4()
{
  if (!qword_1EB13D820)
  {
    sub_1A456E5F0();
    sub_1A4570BF4();
    sub_1A456E0A8();
    sub_1A456E688();
    swift_getOpaqueTypeConformance2();
    sub_1A4570CA8();
    sub_1A4575088(&qword_1EB13D810, sub_1A4570CA8);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13D820);
    }
  }
}

void sub_1A4570F44()
{
  if (!qword_1EB13D828)
  {
    sub_1A4570FD8(255);
    sub_1A4575088(&qword_1EB13D898, sub_1A4570FD8);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D828);
    }
  }
}

void sub_1A4571040()
{
  if (!qword_1EB13D840)
  {
    sub_1A4575140(255, &qword_1EB13D848, sub_1A41EC744, sub_1A45710DC, MEMORY[0x1E697E830]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D840);
    }
  }
}

void sub_1A45710DC()
{
  if (!qword_1EB13D858)
  {
    sub_1A4571170();
    sub_1A4575088(&qword_1EB13D888, sub_1A4571170);
    v0 = sub_1A5247FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D858);
    }
  }
}

void sub_1A4571170()
{
  if (!qword_1EB13D860)
  {
    sub_1A5248A14();
    sub_1A457125C();
    sub_1A4575088(&qword_1EB128080, MEMORY[0x1E697EAF0]);
    sub_1A4575088(&qword_1EB13D880, sub_1A457125C);
    v0 = sub_1A5249324();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D860);
    }
  }
}

void sub_1A457125C()
{
  if (!qword_1EB13D868)
  {
    sub_1A5248A04();
    sub_1A4575088(&unk_1EB13D870, MEMORY[0x1E697EAB8]);
    v0 = sub_1A5247E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D868);
    }
  }
}

uint64_t sub_1A4571358@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = sub_1A52407E4();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + *(v5 + 48) + 8);
  v13 = MEMORY[0x1E69E7D40];
  v14 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x1A8))(v9);
  LOBYTE(v13) = (*((*v13 & *v12) + 0x140))(v14) == 5;
  v15 = *(v12 + OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAlbumAttributionWidgetViewModel_modelFactory);
  sub_1A4575674(a1, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_1A457560C(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);

  return sub_1A43A0DDC(v11, v13, v15, sub_1A45750D0, v17, a2);
}

uint64_t sub_1A4571598(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A5248334();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5240E64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  v14 = *(a2 + *(v13 + 40) + 8);
  sub_1A52426D4();
  v15 = *(v24 + 16);

  (*((*MEMORY[0x1E69E7D40] & *v14) + 0x1B8))(v15);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1A45756DC(v8, sub_1A3EE53E0);
  }

  (*(v10 + 32))(v12, v8, v9);
  v17 = (a2 + *(v13 + 36));
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v24) = v18;
  v25 = v19;
  v23 = 0;
  sub_1A457552C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  sub_1A3EE4C48(v5);
  sub_1A5248304();
  (*(v21 + 8))(v5, v22);
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_1A45718B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v119 = a2;
  v112 = a4;
  sub_1A439D384(0);
  v110 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v95 - v9;
  sub_1A4575140(0, &qword_1EB13DA08, sub_1A439D384, sub_1A3E3527C, MEMORY[0x1E697F948]);
  v109 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v95 - v11);
  sub_1A45712F0(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v95 - v17;
  v118 = sub_1A5243834();
  v116 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A456D9C8(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v114 = &v95 - v22;
  v117 = sub_1A5243EC4();
  v115 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v102 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v95 - v25;
  sub_1A41EC744(0);
  v113 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v103 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v95 - v30;
  sub_1A4575140(0, &qword_1EB13D848, sub_1A41EC744, sub_1A45710DC, MEMORY[0x1E697E830]);
  v33 = v32;
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v107 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v106 = &v95 - v37;
  sub_1A4571040();
  MEMORY[0x1EEE9AC00](v38 - 8);
  v111 = &v95 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  __asm { FMOV            V0.2D, #6.0 }

  v121 = _Q0;
  v120 = &v95 - v46;
  v108 = v20;
  if (!a1)
  {
    (*(v34 + 56))();
    if (a3)
    {
      goto LABEL_11;
    }

LABEL_9:
    v51 = sub_1A524B544();
    v52 = sub_1A524A0E4();
    KeyPath = swift_getKeyPath();
    v54 = sub_1A524B484();
    v55 = swift_getKeyPath();
    *v12 = v51;
    v12[1] = KeyPath;
    v12[2] = v52;
    v12[3] = v55;
    v12[4] = v54;
    swift_storeEnumTagMultiPayload();
    sub_1A3E3527C();
    sub_1A45741A4(&unk_1EB13DA10, sub_1A439D384, sub_1A41EC900);
    sub_1A44C8CB4();
    sub_1A5249744();
LABEL_18:
    v90 = v120;
    v91 = v111;
    sub_1A4575674(v120, v111, sub_1A4571040);
    sub_1A4575674(v18, v15, sub_1A45712F0);
    v92 = v112;
    sub_1A4575674(v91, v112, sub_1A4571040);
    sub_1A457100C(0);
    sub_1A4575674(v15, v92 + *(v93 + 48), sub_1A45712F0);
    sub_1A45756DC(v18, sub_1A45712F0);
    sub_1A45756DC(v90, sub_1A4571040);
    sub_1A45756DC(v15, sub_1A45712F0);
    return sub_1A45756DC(v91, sub_1A4571040);
  }

  v97 = v34;
  v98 = v12;

  v47 = sub_1A5242704();
  v48 = v47;
  if (v47 >> 62)
  {
    result = sub_1A524E2B4();
  }

  else
  {
    result = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v101 = v15;
  v100 = v18;
  v99 = a3;
  if (result)
  {
    if ((v48 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1A59097F0](0, v48);
    }

    else
    {
      if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_24;
      }

      v50 = *(v48 + 32);
    }
  }

  v131 = 0u;
  v132 = 0u;
  v133 = 1;
  v56 = sub_1A52429A4();
  (*(*(v56 - 8) + 56))(v114, 1, 1, v56);
  (*(v116 + 104))(v20, *MEMORY[0x1E69C2678], v118);
  sub_1A5243ED4();
  sub_1A524BC74();
  sub_1A52481F4();

  (*(v115 + 32))(v31, v26, v117);
  v57 = &v31[*(v113 + 36)];
  v58 = v123;
  *v57 = v122;
  *(v57 + 1) = v58;
  *(v57 + 2) = v124;
  v96 = v33;
  v59 = *(v33 + 36);
  v60 = v107;
  v61 = &v107[v59];
  v62 = sub_1A5248A14();
  v63 = *(v62 + 20);
  v64 = *MEMORY[0x1E697F468];
  v65 = sub_1A52494A4();
  v66 = *(*(v65 - 8) + 104);
  v66(&v61[v63], v64, v65);
  *v61 = v121;
  sub_1A4571170();
  v68 = v67;
  v69 = &v61[*(v67 + 52)];
  v66(&v69[*(v62 + 20)], v64, v65);
  *v69 = v121;
  *&v69[*(sub_1A5248A04() + 20)] = 0xBFF0000000000000;
  sub_1A457125C();
  *&v69[*(v70 + 36)] = xmmword_1A534B4D0;
  v61[*(v68 + 56)] = 0;
  sub_1A45710DC();
  *&v61[*(v71 + 36)] = 256;
  sub_1A457560C(v31, v60, sub_1A41EC744);
  v72 = v106;
  sub_1A4574FD8(v60, v106);
  v73 = v72;
  v74 = v120;
  sub_1A4574FD8(v73, v120);
  (*(v97 + 56))(v74, 0, 1, v96);
  v15 = v101;
  v18 = v100;
  v12 = v98;
  if (!v99)
  {
    goto LABEL_9;
  }

LABEL_11:

  result = sub_1A5242704();
  if (result >> 62)
  {
    v94 = result;
    v75 = sub_1A524E2B4();
    result = v94;
  }

  else
  {
    v75 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v76 = v108;
  if (!v75)
  {
    goto LABEL_17;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0);
    goto LABEL_17;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v77 = *(result + 32);
LABEL_17:

    v128 = 0u;
    v129 = 0u;
    v130 = 1;
    v78 = sub_1A52429A4();
    (*(*(v78 - 8) + 56))(v114, 1, 1, v78);
    (*(v116 + 104))(v76, *MEMORY[0x1E69C2678], v118);
    v79 = v102;
    sub_1A5243ED4();
    sub_1A524BC74();
    sub_1A52481F4();
    v80 = v103;
    (*(v115 + 32))(v103, v79, v117);
    v81 = (v80 + *(v113 + 36));
    v82 = v126;
    *v81 = v125;
    v81[1] = v82;
    v81[2] = v127;
    v83 = v104;
    v84 = &v104[*(v110 + 36)];
    v85 = *(sub_1A5248A14() + 20);
    v86 = *MEMORY[0x1E697F468];
    v87 = sub_1A52494A4();
    (*(*(v87 - 8) + 104))(&v84[v85], v86, v87);
    *v84 = v121;
    sub_1A3E42C88();
    *&v84[*(v88 + 36)] = 256;
    sub_1A457560C(v80, v83, sub_1A41EC744);
    v89 = v105;
    sub_1A457560C(v83, v105, sub_1A439D384);
    sub_1A4575674(v89, v12, sub_1A439D384);
    swift_storeEnumTagMultiPayload();
    sub_1A3E3527C();
    sub_1A45741A4(&unk_1EB13DA10, sub_1A439D384, sub_1A41EC900);
    sub_1A44C8CB4();
    sub_1A5249744();

    sub_1A45756DC(v89, sub_1A439D384);
    goto LABEL_18;
  }

LABEL_24:
  __break(1u);
  return result;
}

double sub_1A4572708@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524B414();
  sub_1A457552C(0, &qword_1EB126210, MEMORY[0x1E6981AA8], MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A52FF950;
  sub_1A524B404();
  sub_1A524B474();

  *(v3 + 32) = sub_1A524BB34();
  *(v3 + 40) = v4;
  sub_1A524B404();
  sub_1A524B474();

  *(v3 + 48) = sub_1A524BB34();
  *(v3 + 56) = v5;
  sub_1A524B404();
  sub_1A524B474();

  *(v3 + 64) = sub_1A524BB34();
  *(v3 + 72) = v6;
  sub_1A524BB44();
  sub_1A524BE74();
  sub_1A524BE84();
  sub_1A5248434();
  v7 = sub_1A524A064();
  *a1 = v2;
  *(a1 + 8) = v9;
  result = *&v10;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_1A457289C()
{
  v1 = sub_1A5249764();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4573D18(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = sub_1A524BC64();
  v8[1] = v9;
  sub_1A45751C4(0, &qword_1EB13D9B8, sub_1A4573E1C);
  sub_1A4572B70(v0, v8 + *(v10 + 44));
  v11 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView.StackedShapeView(0);
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A4573D60(0);
  v13 = (v8 + *(v12 + 36));
  v14 = v22[1];
  *v13 = v22[0];
  v13[1] = v14;
  v13[2] = v22[2];
  v15 = *(v0 + *(v11 + 36));
  v16 = v8 + *(v6 + 36);
  v17 = *(sub_1A5248A14() + 20);
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_1A52494A4();
  (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
  *v16 = v15;
  *(v16 + 1) = v15;
  sub_1A3EC447C();
  v16[*(v20 + 36)] = 0;
  sub_1A5248B84();
  sub_1A4574660();
  sub_1A4575088(&qword_1EB122360, MEMORY[0x1E697C658]);
  sub_1A524A974();
  (*(v2 + 8))(v4, v1);
  return sub_1A45752D4(v8, sub_1A4573D18);
}

uint64_t sub_1A4572B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v3 = sub_1A5243EC4();
  v113 = *(v3 - 8);
  v114 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v110 = v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4575140(0, &qword_1EB13D948, sub_1A4574398, sub_1A3E42C88, MEMORY[0x1E697E830]);
  v111 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v116 = v104 - v6;
  sub_1A45742F4();
  v115 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v118 = v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45742AC(0);
  v117 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v122 = v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v120 = v104 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v121 = v104 - v14;
  v15 = sub_1A5243834();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v124 = v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A456D9C8(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v123 = v104 - v19;
  sub_1A4573F34(0);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4573F00(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v119 = v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v125 = v104 - v28;
  v29 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView.StackedShapeView(0);
  v30 = v29;
  v31 = a1;
  v32 = *(a1 + *(v29 + 24));
  if (v32)
  {
    v33 = v29;
    v34 = (v31 + *(v29 + 28));
    v108 = *v34;
    v104[0] = v24;
    v104[2] = v34[1];
    v160 = 0u;
    v161 = 0u;
    v106 = v22;
    v162 = 1;
    v35 = sub_1A52429A4();
    (*(*(v35 - 8) + 56))(v123, 1, 1, v35);
    v36 = *MEMORY[0x1E69C2678];
    v37 = *(v16 + 104);
    v105 = v21;
    v30 = v33;
    v37(v124, v36, v15);
    swift_unknownObjectRetain_n();
    v38 = v104[0];
    sub_1A5243ED4();
    v39 = *(v31 + *(v33 + 36));
    sub_1A4574000(0);
    v41 = *(v40 + 36);
    v107 = v31;
    v42 = (v38 + v41);
    v43 = sub_1A5248A14();
    v44 = *(v43 + 20);
    v45 = *MEMORY[0x1E697F468];
    v46 = sub_1A52494A4();
    v47 = *(*(v46 - 8) + 104);
    v104[1] = v32;
    v47(&v42[v44], v45, v46);
    *v42 = v39;
    *(v42 + 1) = v39;
    sub_1A3E42C88();
    v49 = v48;
    *&v42[*(v48 + 36)] = 256;
    sub_1A4575140(0, &unk_1EB13D900, sub_1A4574000, sub_1A4574048, MEMORY[0x1E697E830]);
    v51 = (v38 + *(v50 + 36));
    v52 = v51 + *(v43 + 20);
    v109 = v45;
    v47(v52, v45, v46);
    *v51 = v39;
    v51[1] = v39;
    *(v51 + *(v49 + 36)) = 256;
    v53 = sub_1A524BC74();
    v55 = v54;
    sub_1A4574048(0);
    v57 = (v51 + *(v56 + 36));
    v58 = v107;
    *v57 = v53;
    v57[1] = v55;
    v31 = v58;
    v59 = *(v58 + *(v30 + 40));
    sub_1A524BE74();
    v61 = v60;
    v63 = v62;
    sub_1A4573F5C();
    v65 = (v38 + *(v64 + 36));
    *v65 = v59;
    v65[1] = v59;
    v65[2] = v61;
    v65[3] = v63;
    sub_1A524BC54();
    sub_1A52481F4();
    swift_unknownObjectRelease();
    v66 = v105;
    v67 = (v38 + *(v105 + 36));
    v68 = v152;
    *v67 = v151;
    v67[1] = v68;
    v67[2] = v153;
    v69 = v125;
    sub_1A457560C(v38, v125, sub_1A4573F34);
    (*(v106 + 56))(v69, 0, 1, v66);
  }

  else
  {
    (*(v22 + 56))(v125, 1, 1, v21);
    v109 = *MEMORY[0x1E697F468];
  }

  v70 = v31;
  v157 = 0u;
  v158 = 0u;
  v159 = 1;
  v71 = sub_1A52429A4();
  (*(*(v71 - 8) + 56))(v123, 1, 1, v71);
  swift_unknownObjectRetain();
  sub_1A5243824();
  v72 = v110;
  sub_1A5243ED4();
  v73 = v70;
  sub_1A4074924();
  sub_1A52480D4();
  sub_1A4575088(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
  v74 = v116;
  v75 = v114;
  sub_1A524A644();
  (*(v113 + 8))(v72, v75);
  v76 = *(v70 + *(v30 + 36));
  v77 = (v74 + *(v111 + 36));
  v78 = *(sub_1A5248A14() + 20);
  v79 = sub_1A52494A4();
  (*(*(v79 - 8) + 104))(&v77[v78], v109, v79);
  *v77 = v76;
  *(v77 + 1) = v76;
  sub_1A3E42C88();
  *&v77[*(v80 + 36)] = 256;
  sub_1A524BC74();
  sub_1A52481F4();
  v81 = v118;
  sub_1A3D092F8(v74, v118);
  v82 = (v81 + *(v115 + 36));
  v83 = v155;
  *v82 = v154;
  v82[1] = v83;
  v82[2] = v156;
  v84 = sub_1A5249574();
  v128 = 1;
  sub_1A4573910(v73, &v146);
  v137 = *&v147[112];
  v138 = *&v147[128];
  v139 = *&v147[144];
  v133 = *&v147[48];
  v134 = *&v147[64];
  v135 = *&v147[80];
  v136 = *&v147[96];
  v129 = v146;
  v130 = *v147;
  v131 = *&v147[16];
  v132 = *&v147[32];
  v141[8] = *&v147[112];
  v141[9] = *&v147[128];
  v141[10] = *&v147[144];
  v141[4] = *&v147[48];
  v141[5] = *&v147[64];
  v141[6] = *&v147[80];
  v141[7] = *&v147[96];
  v141[0] = v146;
  v141[1] = *v147;
  v140 = v147[160];
  v142 = v147[160];
  v141[2] = *&v147[16];
  v141[3] = *&v147[32];
  sub_1A4575674(&v129, &v143, sub_1A4574574);
  sub_1A45756DC(v141, sub_1A4574574);
  *&v127[135] = v137;
  *&v127[151] = v138;
  *&v127[167] = v139;
  *&v127[71] = v133;
  *&v127[87] = v134;
  *&v127[103] = v135;
  *&v127[119] = v136;
  *&v127[7] = v129;
  *&v127[23] = v130;
  *&v127[39] = v131;
  v127[183] = v140;
  *&v127[55] = v132;
  LOBYTE(v73) = v128;
  v85 = sub_1A524BC74();
  v87 = v86;
  *(&v144[8] + 1) = *&v127[128];
  *(&v144[9] + 1) = *&v127[144];
  *(&v144[10] + 1) = *&v127[160];
  *(&v144[4] + 1) = *&v127[64];
  *(&v144[5] + 1) = *&v127[80];
  *(&v144[6] + 1) = *&v127[96];
  *(&v144[7] + 1) = *&v127[112];
  *(v144 + 1) = *v127;
  *(&v144[1] + 1) = *&v127[16];
  *(&v144[2] + 1) = *&v127[32];
  v143 = v84;
  LOBYTE(v144[0]) = v73;
  *(&v144[11] + 1) = *&v127[176];
  *(&v144[3] + 1) = *&v127[48];
  *&v145 = v85;
  *(&v145 + 1) = v86;
  v88 = v120;
  sub_1A4574F70(v81, v120, sub_1A45742F4);
  v89 = (v88 + *(v117 + 36));
  v90 = v144[10];
  v89[10] = v144[9];
  v89[11] = v90;
  v91 = v145;
  v89[12] = v144[11];
  v89[13] = v91;
  v92 = v144[6];
  v89[6] = v144[5];
  v89[7] = v92;
  v93 = v144[8];
  v89[8] = v144[7];
  v89[9] = v93;
  v94 = v144[2];
  v89[2] = v144[1];
  v89[3] = v94;
  v95 = v144[4];
  v89[4] = v144[3];
  v89[5] = v95;
  v96 = v144[0];
  *v89 = v143;
  v89[1] = v96;
  *&v147[129] = *&v127[128];
  *&v147[145] = *&v127[144];
  *&v147[161] = *&v127[160];
  *&v147[65] = *&v127[64];
  *&v147[81] = *&v127[80];
  *&v147[97] = *&v127[96];
  *&v147[113] = *&v127[112];
  *&v147[1] = *v127;
  *&v147[17] = *&v127[16];
  *&v147[33] = *&v127[32];
  v146 = v84;
  v147[0] = v73;
  v148 = *&v127[176];
  *&v147[49] = *&v127[48];
  v149 = v85;
  v150 = v87;
  sub_1A4575674(&v143, &v126, sub_1A457444C);
  sub_1A45756DC(&v146, sub_1A457444C);
  v97 = v121;
  sub_1A4574F70(v88, v121, sub_1A45742AC);
  v98 = v125;
  v99 = v119;
  sub_1A4575674(v125, v119, sub_1A4573F00);
  v100 = v122;
  sub_1A4575230(v97, v122, sub_1A45742AC);
  v101 = v112;
  sub_1A4575674(v99, v112, sub_1A4573F00);
  sub_1A4573E50(0);
  sub_1A4575230(v100, v101 + *(v102 + 48), sub_1A45742AC);
  sub_1A45752D4(v97, sub_1A45742AC);
  sub_1A45756DC(v98, sub_1A4573F00);
  sub_1A45752D4(v100, sub_1A45742AC);
  return sub_1A45756DC(v99, sub_1A4573F00);
}

uint64_t sub_1A4573910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A52407E4();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v8 = sub_1A524A454();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  KeyPath = swift_getKeyPath();
  v41 = swift_getKeyPath();
  LOBYTE(a1) = v12 & 1;
  LOBYTE(v51) = v12 & 1;
  v42[0] = 0;
  v16 = sub_1A524A084();
  sub_1A5247BC4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  LOBYTE(v62[0]) = 0;
  v40 = sub_1A524A054();
  sub_1A5247BC4();
  v44 = 1;
  *&v51 = v8;
  *(&v51 + 1) = v10;
  LOBYTE(v52) = a1;
  *(&v52 + 1) = *v46;
  DWORD1(v52) = *&v46[3];
  *(&v52 + 1) = v14;
  *&v53 = KeyPath;
  BYTE8(v53) = 1;
  HIDWORD(v53) = *&v45[3];
  v25 = *v45;
  *(&v53 + 9) = *v45;
  v26 = v41;
  *&v54 = v41;
  *(&v54 + 1) = 2;
  LOBYTE(v55) = 0;
  DWORD1(v55) = *(v48 + 3);
  *(&v55 + 1) = v48[0];
  v27 = v16;
  BYTE8(v55) = v16;
  HIDWORD(v55) = *&v47[3];
  *(&v55 + 9) = *v47;
  *&v56 = v18;
  *(&v56 + 1) = v20;
  *&v57 = v22;
  *(&v57 + 1) = v24;
  LOBYTE(v58) = 0;
  DWORD1(v58) = *&v50[3];
  *(&v58 + 1) = *v50;
  v28 = v40;
  BYTE8(v58) = v40;
  HIDWORD(v58) = *&v49[3];
  *(&v58 + 9) = *v49;
  *&v59 = v29;
  *(&v59 + 1) = v30;
  *&v60 = v31;
  *(&v60 + 1) = v32;
  v61 = 0;
  v43[167] = 0;
  *&v43[151] = v60;
  *&v43[135] = v59;
  *&v43[119] = v58;
  *&v43[39] = v53;
  *&v43[23] = v52;
  *&v43[7] = v51;
  *&v43[103] = v57;
  *&v43[87] = v56;
  *&v43[71] = v55;
  *&v43[55] = v54;
  *a2 = 0;
  *(a2 + 8) = 1;
  v33 = *&v43[96];
  *(a2 + 121) = *&v43[112];
  v34 = *&v43[144];
  *(a2 + 137) = *&v43[128];
  *(a2 + 153) = v34;
  *(a2 + 169) = *&v43[160];
  v35 = *&v43[32];
  *(a2 + 57) = *&v43[48];
  v36 = *&v43[80];
  *(a2 + 73) = *&v43[64];
  *(a2 + 89) = v36;
  *(a2 + 105) = v33;
  v37 = *&v43[16];
  *(a2 + 9) = *v43;
  *(a2 + 25) = v37;
  *(a2 + 41) = v35;
  v62[0] = v8;
  v62[1] = v10;
  v63 = a1;
  *v64 = *v46;
  *&v64[3] = *&v46[3];
  v65 = v14;
  v66 = KeyPath;
  v67 = 1;
  *v68 = v25;
  *&v68[3] = *&v45[3];
  v69 = v26;
  v70 = 2;
  v71 = 0;
  *&v72[3] = *(v48 + 3);
  *v72 = v48[0];
  v73 = v27;
  *&v74[3] = *&v47[3];
  *v74 = *v47;
  v75 = v18;
  v76 = v20;
  v77 = v22;
  v78 = v24;
  v79 = 0;
  *v80 = *v50;
  *&v80[3] = *&v50[3];
  v81 = v28;
  *&v82[3] = *&v49[3];
  *v82 = *v49;
  v83 = v29;
  v84 = v30;
  v85 = v31;
  v86 = v32;
  v87 = 0;
  sub_1A4575674(&v51, v42, sub_1A4574610);
  return sub_1A45756DC(v62, sub_1A4574610);
}

void sub_1A4573D88()
{
  if (!qword_1EB13D8D0)
  {
    sub_1A4573E1C(255);
    sub_1A4575088(&unk_1EB13D9A8, sub_1A4573E1C);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D8D0);
    }
  }
}

void sub_1A4573E84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A4573F5C()
{
  if (!qword_1EB13D8F8)
  {
    sub_1A4575140(255, &unk_1EB13D900, sub_1A4574000, sub_1A4574048, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D8F8);
    }
  }
}

void sub_1A4574090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A4574110()
{
  if (!qword_1EB13D918)
  {
    sub_1A3E42C88();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D918);
    }
  }
}

uint64_t sub_1A45741A4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A4575088(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4574258()
{
  result = qword_1EB13D928;
  if (!qword_1EB13D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D928);
  }

  return result;
}

void sub_1A45742F4()
{
  if (!qword_1EB13D940)
  {
    sub_1A4575140(255, &qword_1EB13D948, sub_1A4574398, sub_1A3E42C88, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D940);
    }
  }
}

void sub_1A4574398()
{
  if (!qword_1EB13D950)
  {
    sub_1A5243EC4();
    sub_1A4575088(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13D950);
    }
  }
}

void sub_1A457444C()
{
  if (!qword_1EB13D960)
  {
    sub_1A45744E0();
    sub_1A4575088(&qword_1EB13D9A0, sub_1A45744E0);
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D960);
    }
  }
}

void sub_1A45744E0()
{
  if (!qword_1EB13D968)
  {
    sub_1A4574574(255);
    sub_1A4575088(&qword_1EB13D998, sub_1A4574574);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D968);
    }
  }
}

void sub_1A45745A8()
{
  if (!qword_1EB13D978)
  {
    sub_1A4574610(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13D978);
    }
  }
}

unint64_t sub_1A4574660()
{
  result = qword_1EB13D9C0;
  if (!qword_1EB13D9C0)
  {
    sub_1A4573D18(255);
    sub_1A4574710();
    sub_1A4575088(&qword_1EB122308, sub_1A3EC447C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D9C0);
  }

  return result;
}

unint64_t sub_1A4574710()
{
  result = qword_1EB13D9C8;
  if (!qword_1EB13D9C8)
  {
    sub_1A4573D60(255);
    sub_1A4575088(&qword_1EB13D9D0, sub_1A4573D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D9C8);
  }

  return result;
}

uint64_t sub_1A45747F8(uint64_t a1)
{
  result = sub_1A4575088(&qword_1EB13B368, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);
  *(a1 + 8) = result;
  return result;
}

void sub_1A4574894()
{
  sub_1A456D9C8(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A456D9C8(319, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A457552C(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1A45749E4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A45749E4()
{
  if (!qword_1EB124390)
  {
    type metadata accessor for PhotosDetailsAlbumAttributionWidgetViewModel();
    sub_1A4575088(&unk_1EB125E30, type metadata accessor for PhotosDetailsAlbumAttributionWidgetViewModel);
    v0 = sub_1A52484C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124390);
    }
  }
}

void sub_1A4574AB0()
{
  sub_1A52407E4();
  if (v0 <= 0x3F)
  {
    sub_1A456D9C8(319, &qword_1EB126BC0, sub_1A3D435C4, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        sub_1A4074924();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A4574BA4()
{
  result = qword_1EB13D9D8;
  if (!qword_1EB13D9D8)
  {
    sub_1A456E4D8(255, &qword_1EB13D818, sub_1A4570DF4);
    sub_1A456E5F0();
    sub_1A4570BF4();
    sub_1A456E0A8();
    sub_1A456E688();
    swift_getOpaqueTypeConformance2();
    sub_1A4570CA8();
    sub_1A4575088(&qword_1EB13D810, sub_1A4570CA8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D9D8);
  }

  return result;
}

void sub_1A4574D8C()
{
  if (!qword_1EB13D9F0)
  {
    sub_1A4574E18(255, &unk_1EB1221F8, MEMORY[0x1E697E3F0], MEMORY[0x1E697E3E0], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D9F0);
    }
  }
}

void sub_1A4574E18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A4574E6C()
{
  result = qword_1EB13DA00;
  if (!qword_1EB13DA00)
  {
    sub_1A4574D8C();
    sub_1A4574EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DA00);
  }

  return result;
}

unint64_t sub_1A4574EEC()
{
  result = qword_1EB122208;
  if (!qword_1EB122208)
  {
    sub_1A4574E18(255, &unk_1EB1221F8, MEMORY[0x1E697E3F0], MEMORY[0x1E697E3E0], MEMORY[0x1E6980460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122208);
  }

  return result;
}

uint64_t sub_1A4574F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4574FD8(uint64_t a1, uint64_t a2)
{
  sub_1A4575140(0, &qword_1EB13D848, sub_1A41EC744, sub_1A45710DC, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4575088(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A45750D0(uint64_t a1)
{
  v3 = *(type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A4571598(a1, v4);
}

void sub_1A4575140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A45751C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A4575230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4575298@<X0>(void *a1@<X8>)
{
  result = sub_1A456F834(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1A45752D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_61()
{
  v1 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v1[7];
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A52486A4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[8];
  sub_1A3FA5378(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5248334();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A457552C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A457557C(uint64_t a1, uint64_t a2)
{
  sub_1A4574E18(0, &qword_1EB13D790, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PhotosDetailsDiscoverableView);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A457560C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4575674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45756DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for LemonadeAccountView()
{
  result = qword_1EB189880;
  if (!qword_1EB189880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A457578C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v48 = a1;
  v50 = a3;
  v51 = sub_1A52488B4();
  v5 = *(v51 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v45 = v6;
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LemonadeAccountView();
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45789E0();
  v39 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4578898();
  v46 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v37 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for LemonadeAccountView;
  sub_1A457A6B8(a2, v10, type metadata accessor for LemonadeAccountView);
  v47 = *(v5 + 16);
  v38 = v7;
  v17 = a1;
  v18 = v51;
  v47(v7, v17, v51);
  v19 = *(v44 + 80);
  v20 = *(v5 + 80);
  v21 = v9 + v20 + ((v19 + 16) & ~v19);
  v22 = (v19 + 16) & ~v19;
  v23 = v21 & ~v20;
  v43 = v22;
  v44 = v19 | v20;
  v24 = swift_allocObject();
  v42 = type metadata accessor for LemonadeAccountView;
  sub_1A4579BF0(v10, v24 + v22, type metadata accessor for LemonadeAccountView);
  v40 = *(v5 + 32);
  v40(v24 + v23, v7, v18);
  sub_1A524A044();
  sub_1A4579424(0, &qword_1EB13DA88, sub_1A4578A7C, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
  sub_1A4579490();
  sub_1A5241F44();
  sub_1A457A2D4(&qword_1EB13DB48, sub_1A45789E0);
  v25 = v37;
  v26 = v39;
  sub_1A524A734();
  (*(v12 + 8))(v14, v26);
  v27 = [objc_opt_self() systemGroupedBackgroundColor];
  v28 = sub_1A524B284();
  v29 = sub_1A524A064();
  v30 = &v25[*(v46 + 36)];
  v31 = v25;
  *v30 = v28;
  v30[8] = v29;
  v32 = v41;
  (*(**v41 + 352))(v52);
  sub_1A457A6B8(v32, v10, v49);
  v33 = v38;
  v34 = v51;
  v47(v38, v48, v51);
  v35 = swift_allocObject();
  sub_1A4579BF0(v10, v35 + v43, v42);
  v40(v35 + v23, v33, v34);
  sub_1A45795CC(0, &qword_1EB129778, &type metadata for LemonadeScrollTargetIdentifier, MEMORY[0x1E69E6720]);
  sub_1A457961C();
  sub_1A45796FC();
  sub_1A524B144();

  sub_1A4579A80(v52);
  return sub_1A457A31C(v31, sub_1A4578898);
}

void sub_1A4575CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4575D64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v205[2] = a2;
  v245 = a3;
  v4 = type metadata accessor for LemonadeGeneralSettingsView(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v260 = v205 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v267 = v205 - v7;
  v206 = sub_1A52488B4();
  v205[3] = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v205[0] = v8;
  v205[1] = v205 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5247D34();
  v207 = *(v9 - 8);
  v208 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v205[5] = v205 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C3634(0);
  v210 = *(v11 - 8);
  v211 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v209 = v205 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4579374();
  v231 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v232 = (v205 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4579270();
  v243 = *(v15 - 1);
  v244 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v205[4] = v205 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A457923C(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v259 = v205 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v257 = v205 - v20;
  v21 = type metadata accessor for LemonadeInAppNotificationsSettingsView(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v258 = v205 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v266 = v205 - v24;
  sub_1A4579200(0);
  v225 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v226 = v205 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4579424(0, &qword_1EB13DAF8, sub_1A4579200, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v252 = v27;
  v242 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v224 = v205 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v223 = v205 - v30;
  sub_1A4579170();
  MEMORY[0x1EEE9AC00](v31 - 8);
  v256 = v205 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v269 = v205 - v34;
  v35 = sub_1A5242D14();
  v249 = *(v35 - 1);
  v250 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v248 = (v205 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v37);
  v247 = (v205 - v38);
  v39 = type metadata accessor for LemonadeShelvesStack();
  MEMORY[0x1EEE9AC00](v39 - 8);
  v241 = v205 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v230 = v205 - v42;
  sub_1A45790E4();
  v246 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v222 = v205 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v229 = v205 - v46;
  sub_1A4578DAC(0, &qword_1EB13DAE0, sub_1A45790E4, sub_1A41EF370);
  v239 = *(v47 - 8);
  v240 = v47;
  MEMORY[0x1EEE9AC00](v47);
  v228 = v205 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v227 = v205 - v50;
  sub_1A457905C();
  MEMORY[0x1EEE9AC00](v51 - 8);
  v255 = v205 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v265 = v205 - v54;
  v55 = type metadata accessor for LemonadeAccountView();
  v233 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v234 = v56;
  v235 = v205 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1A5249524();
  v218 = *(v57 - 8);
  v219 = v57;
  MEMORY[0x1EEE9AC00](v57);
  v217 = v205 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1A5249D74();
  v212 = *(v59 - 8);
  v213 = v59;
  MEMORY[0x1EEE9AC00](v59);
  v61 = v205 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for LemonadeStatusView();
  MEMORY[0x1EEE9AC00](v62);
  v64 = (v205 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4578E20();
  v215 = *(v65 - 8);
  v216 = v65;
  MEMORY[0x1EEE9AC00](v65);
  sub_1A4578D78(0);
  v251 = v66;
  MEMORY[0x1EEE9AC00](v66);
  v214 = v205 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v220 = v205 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v236 = v205 - v71;
  sub_1A4578C74();
  v237 = *(v72 - 1);
  v238 = v72;
  MEMORY[0x1EEE9AC00](v72);
  v221 = v205 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4578C40(0);
  MEMORY[0x1EEE9AC00](v74 - 8);
  v264 = v205 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x1EEE9AC00](v76);
  v263 = v205 - v78;
  v79 = *a1;
  v261 = (*(**a1 + 184))(v77);
  v80 = *(v261 + 40);
  v254 = v55;
  sub_1A4575CFC(0, &qword_1EB124958, type metadata accessor for LemonadeUserInfoViewModel, MEMORY[0x1E697DA80]);
  v262 = v80;

  v268 = a1;
  sub_1A5247C84();
  sub_1A43D4180(*&v273[0], &v275);
  v81 = *(**(v79 + 48) + 144);

  LOBYTE(v81) = v81(v82);

  v253 = v79;
  if (v81)
  {
    sub_1A46A786C(*(v79 + 32), v64);
    sub_1A5249D44();
    sub_1A457A2D4(&qword_1EB13DAC8, type metadata accessor for LemonadeStatusView);
    sub_1A524ADB4();
    (*(v212 + 8))(v61, v213);
    sub_1A457A274(v64, type metadata accessor for LemonadeStatusView);
    v83 = *(v79 + 32);
    sub_1A524D4F4();
  }

  v84 = 1;
  v85 = (*(v237 + 56))(v263, 1, 1, v238);
  v86 = v253;
  v87 = (*(*v253 + 208))(v85);
  v88 = MEMORY[0x1E69C2210];
  if (v87)
  {
    v89 = v268[1];
    v90 = v87;

    v91 = sub_1A3C5A374();
    v92 = v86;
    v93 = v230;
    sub_1A409485C(v90, v89, v91 & 1, v230);
    KeyPath = swift_getKeyPath();
    v95 = v247;
    sub_1A3D61808(v247);
    v96 = *v88;
    v98 = v248;
    v97 = v249;
    v99 = v250;
    (*(v249 + 13))(v248, v96, v250);
    LOBYTE(v89) = sub_1A5242D04();

    v100 = *(v97 + 1);
    v100(v98, v99);
    v100(v95, v99);
    if (v89)
    {
      v101 = 32.0;
    }

    else
    {
      v101 = 16.0;
    }

    v102 = v93;
    v86 = v92;
    v103 = v229;
    sub_1A4579BF0(v102, v229, type metadata accessor for LemonadeShelvesStack);
    v104 = v103 + *(v246 + 9);
    *v104 = KeyPath;
    *(v104 + 8) = 0;
    *(v104 + 16) = v101;
    *(v104 + 24) = 0;
    *(v104 + 32) = v101;
    v105 = v103;
    v106 = v228;
    sub_1A4579BF0(v105, v228, sub_1A45790E4);
    v107 = v240;
    *(v106 + *(v240 + 36)) = 0x3FF0000000000000;
    v108 = v106;
    v109 = v227;
    sub_1A457A1E0(v108, v227);
    v110 = v109;
    v111 = v265;
    sub_1A457A1E0(v110, v265);
    v84 = 0;
  }

  else
  {
    v111 = v265;
    v107 = v240;
  }

  v112 = 1;
  v113 = (*(v239 + 56))(v111, v84, 1, v107);
  v114 = *(*v86 + 232);
  v115 = *v114(v113);
  v116 = (*(v115 + 840))();

  if ((v116 & 1) == 0)
  {
    v240 = v114(v117);
    v118 = v268[1];
    v251 = *(v254 + 24);

    v119 = v247;
    sub_1A3D61808(v247);
    LODWORD(v239) = *MEMORY[0x1E69C2210];
    v121 = v248;
    v120 = v249;
    v238 = *(v249 + 13);
    v122 = v250;
    v238(v248);
    v123 = sub_1A5242D04();
    v124 = *(v120 + 1);
    v124(v121, v122);
    v124(v119, v122);
    sub_1A409485C(v240, v118, v123 & 1, v241);
    v125 = swift_getKeyPath();
    v126 = v253;
    sub_1A3D61808(v119);
    (v238)(v121, v239, v122);
    v86 = v126;
    v127 = sub_1A5242D04();
    v124(v121, v122);
    v124(v119, v122);
    if (v127)
    {
      v128 = 32.0;
    }

    else
    {
      v128 = 16.0;
    }

    v129 = v222;
    sub_1A4579BF0(v241, v222, type metadata accessor for LemonadeShelvesStack);
    v130 = v129 + *(v246 + 9);
    *v130 = v125;
    *(v130 + 8) = 0;
    *(v130 + 16) = v128;
    *(v130 + 24) = 0;
    *(v130 + 32) = v128;
    v131 = sub_1A524A074();
    sub_1A5247BC4();
    v133 = v132;
    v135 = v134;
    v137 = v136;
    v139 = v138;
    v140 = v129;
    v141 = v226;
    sub_1A4579BF0(v140, v226, sub_1A45790E4);
    v142 = v141 + *(v225 + 36);
    *v142 = v131;
    *(v142 + 8) = v133;
    *(v142 + 16) = v135;
    *(v142 + 24) = v137;
    *(v142 + 32) = v139;
    *(v142 + 40) = 0;
    v143 = sub_1A524A084();
    sub_1A5247BC4();
    v145 = v144;
    v147 = v146;
    v149 = v148;
    v151 = v150;
    v152 = v141;
    v153 = v224;
    sub_1A4579BF0(v152, v224, sub_1A4579200);
    v154 = v153 + *(v252 + 36);
    *v154 = v143;
    *(v154 + 8) = v145;
    *(v154 + 16) = v147;
    *(v154 + 24) = v149;
    *(v154 + 32) = v151;
    *(v154 + 40) = 0;
    v155 = v223;
    sub_1A4579C58(v153, v223);
    sub_1A4579C58(v155, v269);
    v112 = 0;
  }

  (*(v242 + 56))(v269, v112, 1, v252);

  v156 = sub_1A458BFAC();
  v158 = sub_1A4582CE8(v156, v157 & 1, v266);
  v159 = v262;
  if ((*(*v262 + 200))(v158) & 1) != 0 || ((*(*v159 + 248))())
  {
    v160 = (*(*v159 + 296))();
    v161 = v257;
    if ((v160 & 1) == 0)
    {
      v162 = (*(*v159 + 584))();
      v163 = v232;
      sub_1A429B29C(v162, v232);
      v164 = (v268 + *(v254 + 36));
      v166 = *v164;
      v165 = v164[1];
      v167 = (v163 + *(v231 + 52));
      *v167 = v166;
      v167[1] = v165;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    v161 = v257;
  }

  (*(v243 + 56))(v161, 1, 1, v244);

  v168 = sub_1A458BFAC();
  sub_1A4583A54(v168, v169 & 1, v267);
  v170 = [objc_opt_self() standardUserDefaults];
  v171 = sub_1A524C634();
  v172 = [v170 BOOLForKey_];

  if (v172)
  {
    v173 = (*(*v86 + 256))();
    PXDisplayCollectionDetailedCountsMake(v173);
    v268 = v174;
  }

  else
  {
    v268 = 0;
  }

  v176 = sub_1A426E758(v175);
  v253 = v177;
  v254 = v176;

  v178 = sub_1A45856E8();
  v250 = sub_1A458570C(v178);
  v251 = v179;
  v181 = v180;
  v252 = v182;
  v249 = sub_1A4578C40;
  sub_1A4579CF4(v263, v264, sub_1A4578C40);
  v248 = sub_1A457905C;
  v183 = v255;
  sub_1A457A6B8(v265, v255, sub_1A457905C);
  v247 = sub_1A4579170;
  v184 = v256;
  sub_1A457A6B8(v269, v256, sub_1A4579170);
  v246 = type metadata accessor for LemonadeInAppNotificationsSettingsView;
  v185 = v258;
  sub_1A457A6B8(v266, v258, type metadata accessor for LemonadeInAppNotificationsSettingsView);
  v244 = sub_1A457923C;
  v186 = v259;
  sub_1A4579CF4(v161, v259, sub_1A457923C);
  v187 = v260;
  sub_1A457A6B8(v267, v260, type metadata accessor for LemonadeGeneralSettingsView);
  v181 &= 1u;
  v270 = v181;
  v188 = v278;
  v271[2] = v277;
  v271[3] = v278;
  v189 = v279;
  v271[4] = v279;
  v190 = v280;
  v272 = v280;
  v192 = v276;
  v271[0] = v275;
  v191 = v275;
  v271[1] = v276;
  v193 = v245;
  *(v245 + 32) = v277;
  *(v193 + 48) = v188;
  *(v193 + 64) = v189;
  *(v193 + 80) = v190;
  *v193 = v191;
  *(v193 + 16) = v192;
  sub_1A4578B44();
  v195 = v194;
  sub_1A4579CF4(v264, v193 + v194[12], v249);
  sub_1A457A6B8(v183, v193 + v195[16], v248);
  sub_1A457A6B8(v184, v193 + v195[20], v247);
  sub_1A457A6B8(v185, v193 + v195[24], v246);
  sub_1A4579CF4(v186, v193 + v195[28], v244);
  sub_1A457A6B8(v187, v193 + v195[32], type metadata accessor for LemonadeGeneralSettingsView);
  v196 = v268;
  *(v193 + v195[36]) = v268;
  v197 = v196;
  v198 = (v193 + v195[40]);
  v199 = v253;
  *v198 = v254;
  v198[1] = v199;
  v200 = v193 + v195[44];

  v201 = v250;
  sub_1A4579D5C(v250, v181);
  v202 = v251;

  v203 = v252;

  sub_1A4579D68(v271, v273);
  v268 = v197;

  sub_1A4579D5C(v201, v181);

  sub_1A3D35BAC(v201, v181);

  *v200 = v201;
  *(v200 + 8) = v181;
  *(v200 + 16) = v203;
  *(v200 + 24) = v202;

  sub_1A457A274(v267, type metadata accessor for LemonadeGeneralSettingsView);
  sub_1A457A31C(v257, sub_1A457923C);
  sub_1A457A274(v266, type metadata accessor for LemonadeInAppNotificationsSettingsView);
  sub_1A457A274(v269, sub_1A4579170);
  sub_1A457A274(v265, sub_1A457905C);
  sub_1A457A31C(v263, sub_1A4578C40);
  sub_1A3D35BAC(v201, v270);

  sub_1A457A274(v260, type metadata accessor for LemonadeGeneralSettingsView);
  sub_1A457A31C(v259, sub_1A457923C);
  sub_1A457A274(v258, type metadata accessor for LemonadeInAppNotificationsSettingsView);
  sub_1A457A274(v256, sub_1A4579170);
  sub_1A457A274(v255, sub_1A457905C);
  sub_1A457A31C(v264, sub_1A4578C40);
  v273[2] = v277;
  v273[3] = v278;
  v273[4] = v279;
  v274 = v280;
  v273[0] = v275;
  v273[1] = v276;
  return sub_1A4579DC4(v273);
}

uint64_t sub_1A4577DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LemonadeAccountView();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1A4579578(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v7 = v6;
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  sub_1A3D938FC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v30 - v15;
  v17 = *a1;
  v18 = [*(*a1 + 32) actionConfirmationAlertButtonTitle];
  if (v18)
  {
    v19 = v18;
    v30 = a1;
    v31 = a2;
    v20 = sub_1A524C674();
    v22 = v21;

    if ([*(v17 + 32) actionStyle] == 2)
    {
      sub_1A5247B14();
      v23 = sub_1A5247B54();
      (*(*(v23 - 8) + 56))(v16, 0, 1, v23);
    }

    else
    {
      v26 = sub_1A5247B54();
      (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
    }

    v34 = v20;
    v35 = v22;
    sub_1A457A6B8(v16, v12, sub_1A3D938FC);
    sub_1A457A6B8(v30, &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeAccountView);
    v27 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v28 = swift_allocObject();
    sub_1A4579BF0(&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for LemonadeAccountView);
    sub_1A3D5F9DC();
    sub_1A524B734();
    sub_1A457A274(v16, sub_1A3D938FC);
    v29 = v31;
    (*(v33 + 32))(v31, v9, v7);
    return (*(v33 + 56))(v29, 0, 1, v7);
  }

  else
  {
    v24 = *(v33 + 56);

    return v24(a2, 1, 1, v7);
  }
}

id sub_1A45781C0()
{
  v0 = objc_opt_self();

  return [v0 loadAsyncUpdatesImmediately];
}

uint64_t sub_1A45781F8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1A4579B00(a1, &v9);
  if (v10[24] == 255)
  {
    return sub_1A4579A80(&v9);
  }

  v11 = v9;
  v12[0] = *v10;
  *(v12 + 9) = *&v10[9];
  v4 = *a2;
  v5 = (*(*v4 + 400))(v3);
  v6 = MEMORY[0x1A5907080](v5, 1.0, 0.0);
  MEMORY[0x1EEE9AC00](v6);
  sub_1A52483D4();

  (*(*v4 + 320))(v7);
  return sub_1A3F6857C(&v11);
}

uint64_t sub_1A4578344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v4 = type metadata accessor for LemonadeAccountView();
  v5 = v4[6];
  *(a3 + v5) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LemonadeUserInfoViewModel();
  sub_1A5247C74();
  v6 = a3 + v4[8];
  result = sub_1A524B694();
  *v6 = v9;
  *(v6 + 1) = v10;
  v8 = (a3 + v4[9]);
  *v8 = 0xD00000000000001FLL;
  v8[1] = 0x80000001A53DD500;
  return result;
}

uint64_t sub_1A4578454@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1A457A6B8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeAccountView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1A4579BF0(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for LemonadeAccountView);
  *a2 = sub_1A457A720;
  a2[1] = v7;
  return result;
}

void sub_1A4578590()
{
  type metadata accessor for LemonadeAccountViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v1 <= 0x3F)
    {
      sub_1A4575CFC(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A4575CFC(319, &qword_1EB124958, type metadata accessor for LemonadeUserInfoViewModel, MEMORY[0x1E697DA80]);
        if (v3 <= 0x3F)
        {
          sub_1A45795CC(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A45786E8()
{
  if (!qword_1EB13DA60)
  {
    sub_1A45787D0();
    sub_1A4578898();
    sub_1A45795CC(255, &qword_1EB129778, &type metadata for LemonadeScrollTargetIdentifier, MEMORY[0x1E69E6720]);
    sub_1A457961C();
    sub_1A45796FC();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248A24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DA60);
    }
  }
}

void sub_1A45787D0()
{
  if (!qword_1EB13DA68)
  {
    sub_1A4578898();
    sub_1A45795CC(255, &qword_1EB129778, &type metadata for LemonadeScrollTargetIdentifier, MEMORY[0x1E69E6720]);
    sub_1A457961C();
    sub_1A45796FC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DA68);
    }
  }
}

void sub_1A4578898()
{
  if (!qword_1EB13DA70)
  {
    sub_1A457892C();
    sub_1A4579578(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DA70);
    }
  }
}

void sub_1A457892C()
{
  if (!qword_1EB13DA78)
  {
    sub_1A45789E0();
    sub_1A457A2D4(&qword_1EB13DB48, sub_1A45789E0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DA78);
    }
  }
}

void sub_1A45789E0()
{
  if (!qword_1EB13DA80)
  {
    sub_1A4579424(255, &qword_1EB13DA88, sub_1A4578A7C, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    sub_1A4579490();
    v0 = sub_1A5241F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DA80);
    }
  }
}

void sub_1A4578A7C()
{
  if (!qword_1EB13DA90)
  {
    sub_1A4578B10(255);
    sub_1A457A2D4(&qword_1EB13DB30, sub_1A4578B10);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DA90);
    }
  }
}

void sub_1A4578B44()
{
  if (!qword_1EB13DAA0)
  {
    sub_1A4578C40(255);
    sub_1A457905C();
    sub_1A4579170();
    type metadata accessor for LemonadeInAppNotificationsSettingsView(255);
    sub_1A457923C(255);
    type metadata accessor for LemonadeGeneralSettingsView(255);
    sub_1A45795CC(255, &qword_1EB13DB28, &type metadata for LemonadeStorageManagementSettingsView, MEMORY[0x1E69E6720]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB13DAA0);
    }
  }
}

void sub_1A4578C74()
{
  if (!qword_1EB13DAB0)
  {
    sub_1A4578D78(255);
    sub_1A41C3F80();
    sub_1A45795CC(255, &qword_1EB127690, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    sub_1A4578ED4();
    sub_1A3D5F9DC();
    sub_1A4578FE4();
    sub_1A4283548();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DAB0);
    }
  }
}

void sub_1A4578DAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A4578E20()
{
  if (!qword_1EB13DAC0)
  {
    type metadata accessor for LemonadeStatusView();
    sub_1A457A2D4(&qword_1EB13DAC8, type metadata accessor for LemonadeStatusView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DAC0);
    }
  }
}

unint64_t sub_1A4578ED4()
{
  result = qword_1EB13DAD0;
  if (!qword_1EB13DAD0)
  {
    sub_1A4578D78(255);
    type metadata accessor for LemonadeStatusView();
    sub_1A457A2D4(&qword_1EB13DAC8, type metadata accessor for LemonadeStatusView);
    swift_getOpaqueTypeConformance2();
    sub_1A457A2D4(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DAD0);
  }

  return result;
}

unint64_t sub_1A4578FE4()
{
  result = qword_1EB121AA8;
  if (!qword_1EB121AA8)
  {
    sub_1A41C3F80();
    sub_1A3D6E520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB121AA8);
  }

  return result;
}

void sub_1A457905C()
{
  if (!qword_1EB13DAD8)
  {
    sub_1A4578DAC(255, &qword_1EB13DAE0, sub_1A45790E4, sub_1A41EF370);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DAD8);
    }
  }
}

void sub_1A45790E4()
{
  if (!qword_1EB13DAE8)
  {
    type metadata accessor for LemonadeShelvesStack();
    sub_1A45795CC(255, &qword_1EB1278A0, MEMORY[0x1E697DA60], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DAE8);
    }
  }
}

void sub_1A4579170()
{
  if (!qword_1EB13DAF0)
  {
    sub_1A4579424(255, &qword_1EB13DAF8, sub_1A4579200, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DAF0);
    }
  }
}

void sub_1A4579270()
{
  if (!qword_1EB13DB10)
  {
    sub_1A4579374();
    sub_1A43C3634(255);
    sub_1A457A2D4(&qword_1EB13DB20, sub_1A4579374);
    sub_1A457A2D4(&qword_1EB124578, sub_1A43C3634);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DB10);
    }
  }
}

void sub_1A4579374()
{
  if (!qword_1EB13DB18)
  {
    type metadata accessor for LemonadeSharedLibraryFilterView();
    sub_1A457A2D4(&qword_1EB136DB8, type metadata accessor for LemonadeSharedLibraryFilterView);
    v0 = sub_1A524B794();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DB18);
    }
  }
}

void sub_1A4579424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A4579490()
{
  result = qword_1EB13DB38;
  if (!qword_1EB13DB38)
  {
    sub_1A4579424(255, &qword_1EB13DA88, sub_1A4578A7C, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    sub_1A457A2D4(&qword_1EB13DB40, sub_1A4578A7C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DB38);
  }

  return result;
}

void sub_1A4579578(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1A45795CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A457961C()
{
  result = qword_1EB13DB50;
  if (!qword_1EB13DB50)
  {
    sub_1A4578898();
    sub_1A45789E0();
    sub_1A457A2D4(&qword_1EB13DB48, sub_1A45789E0);
    swift_getOpaqueTypeConformance2();
    sub_1A3D6D4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DB50);
  }

  return result;
}

unint64_t sub_1A45796FC()
{
  result = qword_1EB129770;
  if (!qword_1EB129770)
  {
    sub_1A45795CC(255, &qword_1EB129778, &type metadata for LemonadeScrollTargetIdentifier, MEMORY[0x1E69E6720]);
    sub_1A4579798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129770);
  }

  return result;
}

unint64_t sub_1A4579798()
{
  result = qword_1EB129780;
  if (!qword_1EB129780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129780);
  }

  return result;
}

uint64_t sub_1A45797EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LemonadeAccountView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A457578C(a1, v6, a2);
}

void sub_1A457986C(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadeAccountView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1A52488B4() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1A4579B88();
  sub_1A4575D64((v1 + v4), v1 + v7, a1 + *(v8 + 44));
  sub_1A4579424(0, &qword_1EB13DA88, sub_1A4578A7C, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
  v10 = (a1 + *(v9 + 36));
  *v10 = sub_1A45781C0;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0;
}

uint64_t sub_1A45799AC(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for LemonadeAccountView() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  sub_1A52488B4();

  return sub_1A45781F8(a2, (v2 + v5));
}

uint64_t sub_1A4579A80(uint64_t a1)
{
  sub_1A45795CC(0, &qword_1EB129778, &type metadata for LemonadeScrollTargetIdentifier, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4579B00(uint64_t a1, uint64_t a2)
{
  sub_1A45795CC(0, &qword_1EB129778, &type metadata for LemonadeScrollTargetIdentifier, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A4579B88()
{
  if (!qword_1EB13DB58)
  {
    sub_1A4578B10(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DB58);
    }
  }
}

uint64_t sub_1A4579BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4579C58(uint64_t a1, uint64_t a2)
{
  sub_1A4579424(0, &qword_1EB13DAF8, sub_1A4579200, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4579CF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1A4579D5C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t objectdestroy_16Tm()
{
  v1 = type metadata accessor for LemonadeAccountView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_1A52488B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v0 + v3;

  v9 = *(v1 + 24);
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A5242D14();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = v8 + *(v1 + 28);
  sub_1A4575CFC(0, &qword_1EB1272C0, type metadata accessor for LemonadeUserInfoViewModel, MEMORY[0x1E6981E90]);
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_1A4575CFC(0, &qword_1EB127248, type metadata accessor for LemonadeUserInfoViewModel, MEMORY[0x1E6981E98]);

  (*(v6 + 8))(v0 + ((v3 + v4 + v7) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_1A457A098()
{
  v1 = *(type metadata accessor for LemonadeAccountView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_1A52488B4();
  v3 = (*(**(v0 + v2) + 400))();
  MEMORY[0x1A5907080](v3, 1.0, 0.0);
  sub_1A52483D4();
}

uint64_t sub_1A457A1E0(uint64_t a1, uint64_t a2)
{
  sub_1A4578DAC(0, &qword_1EB13DAE0, sub_1A45790E4, sub_1A41EF370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A457A274(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A457A2D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A457A31C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A457A37C()
{
  v1 = type metadata accessor for LemonadeAccountView();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  v3 = *v2;
  v4 = [*(*v2 + 32) actionConfirmationAlertTitle];
  if (v4 && (v4, (v5 = [*(v3 + 32) actionConfirmationAlertButtonTitle]) != 0))
  {

    sub_1A45795CC(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6B4();
  }

  else
  {
    v6 = [*(v3 + 32) action];
    if (v6)
    {
      v7 = v6;
      (*(v6 + 2))();

      _Block_release(v7);
    }
  }
}

id sub_1A457A4E8@<X0>(void *a1@<X8>)
{
  result = [*(**(v1 + 16) + 32) actionConfirmationAlertTitle];
  if (result)
  {
    v4 = result;
    sub_1A524C674();

    sub_1A3D5F9DC();
    result = sub_1A524A464();
    v8 = v7 & 1;
  }

  else
  {
    v5 = 0;
    v8 = 0;
    v6 = 0;
  }

  *a1 = result;
  a1[1] = v5;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

void sub_1A457A588()
{
  v1 = *(type metadata accessor for LemonadeAccountView() - 8);
  v2 = [*(*(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80))) + 32) action];
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))();

    _Block_release(v3);
  }
}

uint64_t sub_1A457A6B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A457A75C@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v3 = a2 + *(type metadata accessor for LemonadeNavigationStack() + 40);
  *v3 = swift_getKeyPath();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  sub_1A3C29B34(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);

  v4 = sub_1A524BAC4();
  a1(v4);
}

uint64_t sub_1A457A884@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v104 = a2;
  sub_1A457EF6C(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v105 = v3;
  v114 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v112 = *(a1 + 16);
  v4 = v112;
  v113 = &v78 - v5;
  v6 = type metadata accessor for LemonadeNavigationDestination();
  sub_1A457F5CC(255, &qword_1EB1241B0, type metadata accessor for LemonadeNavigationDestinationView, type metadata accessor for NavigationVisibilityModifier, MEMORY[0x1E697E830]);
  v8 = v7;
  v9 = *(a1 + 24);
  v10 = sub_1A3C29B34(&qword_1EB1298A0, type metadata accessor for LemonadeNavigationDestination);
  v11 = sub_1A457B6BC();
  v122 = v4;
  v123 = v6;
  v124 = v8;
  v125 = v9;
  v111 = v9;
  v126 = v10;
  v127 = v11;
  swift_getOpaqueTypeMetadata2();
  v122 = v4;
  v123 = v6;
  v124 = v8;
  v125 = v9;
  v126 = v10;
  v127 = v11;
  swift_getOpaqueTypeConformance2();
  v12 = type metadata accessor for NavigationStackOrVStack();
  v92 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v78 - v13;
  sub_1A3D639BC(255);
  v80 = v12;
  v14 = sub_1A5248804();
  v101 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v108 = &v78 - v15;
  v16 = type metadata accessor for LemonadeNavigationContext(255);
  sub_1A457ECB4(255, &qword_1EB128468, sub_1A457B820);
  v18 = v17;
  WitnessTable = swift_getWitnessTable();
  v81 = WitnessTable;
  v20 = sub_1A3C29B34(&qword_1EB127950, sub_1A3D639BC);
  v129 = WitnessTable;
  v130 = v20;
  v21 = swift_getWitnessTable();
  v79 = type metadata accessor for LemonadeNavigationContext;
  v22 = sub_1A3C29B34(&qword_1EB129D48, type metadata accessor for LemonadeNavigationContext);
  v23 = sub_1A457B848();
  v122 = v14;
  v123 = v16;
  v24 = v14;
  v85 = v14;
  v124 = v18;
  v125 = v21;
  v25 = v18;
  v82 = v18;
  v84 = v21;
  v126 = v22;
  v127 = v23;
  v26 = v22;
  v27 = v23;
  v83 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v102 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v109 = &v78 - v29;
  sub_1A457ECB4(255, &qword_1EB1288B0, sub_1A457B99C);
  v31 = v30;
  v122 = v24;
  v123 = v16;
  v78 = v16;
  v124 = v25;
  v125 = v21;
  v126 = v22;
  v127 = v27;
  v107 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_1A457B9F4();
  v34 = sub_1A457BA48();
  v122 = OpaqueTypeMetadata2;
  v123 = &type metadata for LemonadeNavigationContext.SheetContent;
  v35 = OpaqueTypeMetadata2;
  v91 = OpaqueTypeMetadata2;
  v124 = v31;
  v125 = OpaqueTypeConformance2;
  v36 = v31;
  v87 = v31;
  v90 = OpaqueTypeConformance2;
  v126 = v33;
  v127 = v34;
  v89 = v33;
  v88 = v34;
  v37 = swift_getOpaqueTypeMetadata2();
  v98 = v37;
  v103 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v110 = &v78 - v38;
  sub_1A457B820(255);
  v40 = v39;
  v94 = v39;
  v122 = v35;
  v123 = &type metadata for LemonadeNavigationContext.SheetContent;
  v124 = v36;
  v125 = OpaqueTypeConformance2;
  v126 = v33;
  v127 = v34;
  v41 = swift_getOpaqueTypeConformance2();
  v96 = v41;
  v95 = sub_1A457B8EC();
  v122 = v37;
  v123 = v16;
  v124 = v40;
  v125 = v41;
  v126 = v26;
  v127 = v95;
  v100 = swift_getOpaqueTypeMetadata2();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v93 = &v78 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v97 = &v78 - v44;
  v45 = v105;
  v46 = v106;
  sub_1A524BAA4();
  sub_1A3C29B34(&qword_1EB129D50, v79);

  v47 = v86;
  sub_1A524BAC4();
  v48 = v80;
  v50 = v111;
  v49 = v112;
  sub_1A457BB1C(v46, v112, v111, &v47[*(v80 + 36)]);

  swift_getKeyPath();
  sub_1A524BAA4();
  sub_1A524A964();

  (*(v92 + 8))(v47, v48);
  v51 = v113;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  v52 = *(v114 + 8);
  v114 += 8;
  v52(v51, v45);
  v86 = v52;
  v115 = v122;
  v116 = v123;
  v117 = v124;
  v53 = sub_1A457C87C(v46, v49, v50);
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1A457F340;
  *(v54 + 24) = v53;
  v92 = swift_checkMetadataState();
  swift_checkMetadataState();
  v55 = v85;
  v56 = v108;
  sub_1A524B004();

  (*(v101 + 8))(v56, v55);
  v57 = v113;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  v52(v57, v45);
  v58 = v124;
  v59 = v125;
  v115 = v122;
  v116 = v123;
  v117 = v124;
  v118 = v125;
  v119 = v126;
  v120 = v127;
  v121 = v128;
  v60 = sub_1A457C87C(v46, v112, v111);
  v61 = swift_allocObject();
  *(v61 + 16) = sub_1A457F234;
  *(v61 + 24) = v60;
  swift_checkMetadataState();
  v62 = v91;
  v63 = v109;
  sub_1A524B004();

  sub_1A3DD2224(v58, v59);
  (*(v102 + 8))(v63, v62);
  v64 = v113;
  v65 = v105;
  v66 = v106;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  (v86)(v64, v65);
  v115 = v122;
  v116 = v123;
  v117 = v124;
  v67 = sub_1A457C87C(v66, v112, v111);
  v68 = swift_allocObject();
  *(v68 + 16) = sub_1A457EFF0;
  *(v68 + 24) = v67;
  swift_checkMetadataState();
  v69 = v93;
  v70 = v98;
  v71 = v110;
  sub_1A524AB94();

  (*(v103 + 8))(v71, v70);
  v72 = v99;
  v73 = *(v99 + 16);
  v74 = v97;
  v75 = v100;
  v73(v97, v69, v100);
  v76 = *(v72 + 8);
  v76(v69, v75);
  v73(v104, v74, v75);
  return (v76)(v74, v75);
}

uint64_t type metadata accessor for NavigationVisibilityModifier()
{
  result = qword_1EB165530;
  if (!qword_1EB165530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A457B6BC()
{
  result = qword_1EB1241B8;
  if (!qword_1EB1241B8)
  {
    sub_1A457F5CC(255, &qword_1EB1241B0, type metadata accessor for LemonadeNavigationDestinationView, type metadata accessor for NavigationVisibilityModifier, MEMORY[0x1E697E830]);
    sub_1A3C29B34(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView);
    sub_1A457B7B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1241B8);
  }

  return result;
}

unint64_t sub_1A457B7B0()
{
  result = qword_1EB165548[0];
  if (!qword_1EB165548[0])
  {
    type metadata accessor for NavigationVisibilityModifier();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB165548);
  }

  return result;
}

unint64_t sub_1A457B848()
{
  result = qword_1EB128470;
  if (!qword_1EB128470)
  {
    sub_1A457ECB4(255, &qword_1EB128468, sub_1A457B820);
    sub_1A457B8EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128470);
  }

  return result;
}

unint64_t sub_1A457B8EC()
{
  result = qword_1EB128830;
  if (!qword_1EB128830)
  {
    sub_1A457B820(255);
    sub_1A3C29B34(&qword_1EB129B28, sub_1A4138EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128830);
  }

  return result;
}

void sub_1A457B99C()
{
  if (!qword_1EB12A308)
  {
    v0 = type metadata accessor for LemonadeSheetContent();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A308);
    }
  }
}

unint64_t sub_1A457B9F4()
{
  result = qword_1EB129D60;
  if (!qword_1EB129D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129D60);
  }

  return result;
}

unint64_t sub_1A457BA48()
{
  result = qword_1EB1288B8;
  if (!qword_1EB1288B8)
  {
    sub_1A457ECB4(255, &qword_1EB1288B0, sub_1A457B99C);
    sub_1A3C29B34(&unk_1EB12A310, sub_1A457B99C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1288B8);
  }

  return result;
}

uint64_t sub_1A457BB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v33 = a1;
  v34 = a4;
  v27 = a2;
  v6 = type metadata accessor for LemonadeNavigationStack();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - v8;
  v10 = type metadata accessor for LemonadeNavigationDestination();
  sub_1A457F5CC(255, &qword_1EB1241B0, type metadata accessor for LemonadeNavigationDestinationView, type metadata accessor for NavigationVisibilityModifier, MEMORY[0x1E697E830]);
  v12 = v11;
  v29 = v11;
  v13 = sub_1A3C29B34(&qword_1EB1298A0, type metadata accessor for LemonadeNavigationDestination);
  v32 = v13;
  v30 = sub_1A457B6BC();
  v35 = a2;
  v36 = v10;
  v37 = v12;
  v38 = a3;
  v39 = v13;
  v40 = v30;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v28 = v26 - v18;
  v26[1] = *(v6 + 36);
  v26[0] = swift_checkMetadataState();
  (*(v7 + 16))(v9, v33, v6);
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v27;
  *(v20 + 24) = a3;
  (*(v7 + 32))(v20 + v19, v9, v6);
  swift_checkMetadataState();
  sub_1A524AE04();

  v21 = *(v14 + 16);
  v22 = v28;
  v23 = OpaqueTypeMetadata2;
  v21(v28, v16, OpaqueTypeMetadata2);
  v24 = *(v14 + 8);
  v24(v16, v23);
  v21(v34, v22, v23);
  return (v24)(v22, v23);
}

uint64_t sub_1A457BEA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A418E1E0(a1, v6);
  sub_1A457EF6C(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  sub_1A524BAA4();
  sub_1A487864C(v6, v12, 0, a2);
  sub_1A524BAA4();
  v7 = v12;
  sub_1A457F5CC(0, &qword_1EB1241B0, type metadata accessor for LemonadeNavigationDestinationView, type metadata accessor for NavigationVisibilityModifier, MEMORY[0x1E697E830]);
  v9 = a2 + *(v8 + 36);
  sub_1A418E1E0(a1, v9);
  result = type metadata accessor for NavigationVisibilityModifier();
  *(v9 + *(result + 20)) = v7;
  return result;
}

uint64_t sub_1A457C00C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A46554F0();
  *a1 = result;
  return result;
}

double sub_1A457C064@<D0>(uint64_t (*a1)()@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A457B820(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for LemonadeNavigationDestinationView();
  sub_1A3C29B34(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView);

  LemonadeNavigationContainer.init(navigationContext:content:)(v14, sub_1A457F3BC, v13);
  v15 = (v13 + *(v11 + 44));
  *v15 = sub_1A457F3D8;
  v15[1] = a1;
  v15[2] = 0;
  v15[3] = 0;
  v16 = v3 + *(a2 + 40);
  v18 = *v16;
  v17 = *(v16 + 8);
  v19 = *(v16 + 16);
  v20 = *(v16 + 17);

  if (v20 != 1)
  {
    sub_1A457F3E0(v18, v17, v19, 0);
    sub_1A524D254();
    v21 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3EF9960(v18, v17, v19, 0);
    v29 = *(v7 + 8);
    v29(v9, v6);
    v30 = v32;

    sub_1A524D254();
    v22 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3EF9960(v18, v17, v19, 0);
    v29(v9, v6);
  }

  sub_1A524BC74();
  sub_1A52481F4();
  v23 = v31;
  sub_1A457F3EC(v13, v31, sub_1A457B820);
  sub_1A457ECB4(0, &qword_1EB128468, sub_1A457B820);
  v25 = (v23 + *(v24 + 36));
  v26 = v33;
  *v25 = v32;
  v25[1] = v26;
  result = *&v34;
  v25[2] = v34;
  return result;
}

double sub_1A457C410@<D0>(uint64_t a1@<X8>)
{
  sub_1A4655F04(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1A457C458(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = *(a1 + 32);
  sub_1A457F2B8(v4, v3);
  return sub_1A4655FFC(v4);
}

double sub_1A457C4A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1A5249234();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A457B99C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a1 + 32);
  v31 = a1;
  sub_1A4546738(0, 0, v14, sub_1A457F2B0, v13);
  v15 = v3 + *(a2 + 40);
  v17 = *v15;
  v16 = *(v15 + 8);
  v18 = *(v15 + 16);
  if (*(v15 + 17) != 1)
  {

    sub_1A524D254();
    v19 = sub_1A524A014();
    v30 = a3;
    v20 = v19;
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3EF9960(v17, v16, v18, 0);
    v21 = *(v8 + 8);
    v21(v10, v7);
    v28 = v7;
    v29 = v32;

    sub_1A524D254();
    v22 = sub_1A524A014();
    sub_1A5246DF4();

    a3 = v30;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3EF9960(v17, v16, v18, 0);
    v21(v10, v28);
  }

  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A457F3EC(v13, a3, sub_1A457B99C);
  sub_1A457ECB4(0, &qword_1EB1288B0, sub_1A457B99C);
  v24 = (a3 + *(v23 + 36));
  v25 = v33;
  *v24 = v32;
  v24[1] = v25;
  result = *&v34;
  v24[2] = v34;
  return result;
}

uint64_t sub_1A457C7E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return v2(v5);
}

uint64_t sub_1A457C824@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A4656874();
  *a1 = result;
  return result;
}

uint64_t sub_1A457C87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LemonadeNavigationStack();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return v12;
}

uint64_t sub_1A457C9A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(a1 + 16))(v10);
  v3 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v7 = sub_1A524B8E4();
  result = __swift_destroy_boxed_opaque_existential_0(v10);
  *a2 = v7;
  return result;
}

uint64_t sub_1A457CA98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A418E1E0(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootDestination, v6);

  return sub_1A487864C(v6, a1, 0, a2);
}

uint64_t sub_1A457CB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = sub_1A524B894();
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v46 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v45 - v8;
  sub_1A457EF6C(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v45 - v12;
  sub_1A44F54B0(255);
  v48 = v14;
  v50 = v4;
  v51 = v3;
  v15 = sub_1A5248834();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v49 = &v45 - v20;
  v21 = sub_1A5249754();
  v53 = *(v21 - 8);
  v54 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v52 = &v45 - v22;
  sub_1A524BAA4();
  v23 = sub_1A4655004();

  if (v23)
  {
    goto LABEL_5;
  }

  if (qword_1EB181430 != -1)
  {
    v24 = swift_once();
  }

  if (byte_1EB181438 == 1)
  {
LABEL_5:
    sub_1A524BAB4();
    swift_getKeyPath();
    sub_1A524BAD4();

    v25 = (*(v11 + 8))(v13, v10);
    v46 = &v45;
    v56 = v58;
    v57 = v59;
    MEMORY[0x1EEE9AC00](v25);
    v47 = v5;
    v26 = v50;
    *(&v45 - 4) = v51;
    *(&v45 - 3) = v26;
    sub_1A3C29B34(&qword_1EB126F10, sub_1A44F54B0);
    sub_1A3C29B34(&qword_1EB126F08, sub_1A44F54B0);
    sub_1A3C29B34(&qword_1EB126F00, sub_1A44F54B0);
    v27 = sub_1A3C29B34(&qword_1EB1298A0, type metadata accessor for LemonadeNavigationDestination);
    v43 = v26;
    v44 = v27;
    sub_1A5248814();
    swift_getWitnessTable();
    v28 = *(v16 + 16);
    v29 = v49;
    v28(v49, v18, v15);
    v30 = *(v16 + 8);
    v30(v18, v15);
    v28(v18, v29, v15);
    swift_getWitnessTable();
    v31 = v52;
    sub_1A3DF4798(v18, v15);
    v30(v18, v15);
    v30(v29, v15);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v24);
    v32 = v50;
    *(&v45 - 4) = v51;
    *(&v45 - 3) = v32;
    v43 = v2;
    sub_1A5249574();
    v33 = v46;
    sub_1A524B884();
    swift_getWitnessTable();
    v34 = v47;
    v35 = *(v47 + 16);
    v36 = v45;
    v35(v45, v33, v5);
    v37 = *(v34 + 8);
    v37(v33, v5);
    v35(v33, v36, v5);
    swift_getWitnessTable();
    v31 = v52;
    sub_1A3DF4890(v33, v15, v5);
    v37(v33, v5);
    v37(v36, v5);
  }

  WitnessTable = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v60 = WitnessTable;
  v61 = v39;
  v40 = v54;
  swift_getWitnessTable();
  v41 = v53;
  (*(v53 + 16))(v55, v31, v40);
  return (*(v41 + 8))(v31, v40);
}

uint64_t sub_1A457D2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NavigationStackOrVStack();
  v10 = *(v6 + 16);
  v10(v8, a1 + *(v9 + 36), a2);
  v10(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

id sub_1A457D3F0()
{
  result = sub_1A457D414();
  byte_1EB181438 = result & 1;
  return result;
}

id sub_1A457D414()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_1A524C634();
  v6 = [v4 BOOLForKey_];

  if (v6)
  {
    v7 = sub_1A3C38A40();
    (*(v1 + 16))(v3, v7, v0);
    v8 = sub_1A5246F04();
    v9 = sub_1A524D264();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v8, v9, "LemonadeUseNavigationStack is enabled", v10, 2u);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }

  return v6;
}

uint64_t sub_1A457D5D8(uint64_t a1)
{
  sub_1A457F5CC(0, &qword_1EB13DB70, sub_1A457EC8C, sub_1A457EDCC, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - v4;
  sub_1A457EC8C(0);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A418E1E0(v1, v12);
  if (swift_getEnumCaseMultiPayload() - 12 > 8)
  {
    sub_1A457EDCC();
    (*(*(v17 - 8) + 16))(v5, a1, v17);
    swift_storeEnumTagMultiPayload();
    sub_1A457EE30();
    sub_1A3C29B34(&qword_1EB13DB90, sub_1A457EDCC);
    sub_1A5249744();
    return sub_1A457EF10(v12);
  }

  else
  {
    sub_1A457EF10(v12);
    type metadata accessor for NavigationVisibilityModifier();
    sub_1A4654080();
    sub_1A457EDCC();
    sub_1A3C29B34(&qword_1EB13DB90, sub_1A457EDCC);
    sub_1A524AD74();
    v13 = sub_1A5248874();
    v14 = sub_1A524A064();
    v15 = &v9[*(v7 + 36)];
    *v15 = v13;
    v15[8] = v14;
    sub_1A3D09C54(v9, v5);
    swift_storeEnumTagMultiPayload();
    sub_1A457EE30();
    sub_1A5249744();
    return sub_1A3D09CB8(v9);
  }
}

uint64_t (*EnvironmentValues.customAssetSelectionHandler.getter())(uint64_t, uint64_t)
{
  sub_1A457D984();
  sub_1A5249244();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1A423CCD0;
}

unint64_t sub_1A457D984()
{
  result = qword_1EB15DBD0[0];
  if (!qword_1EB15DBD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15DBD0);
  }

  return result;
}

uint64_t EnvironmentValues.customAssetSelectionHandler.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_1A457D984();
  return sub_1A5249254();
}

void (*EnvironmentValues.customAssetSelectionHandler.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_1A457D984();
  sub_1A5249244();
  v5 = v4[2];
  if (v5)
  {
    v6 = v4[3];
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_1A457F664;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *v4 = v8;
  v4[1] = v7;
  return sub_1A457DB38;
}

void sub_1A457DB38(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if (a2)
  {
    if (v3)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      v6 = sub_1A457F650;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v2[2] = v6;
    v2[3] = v5;
    sub_1A3C66EE8(v3);
    sub_1A5249254();
    sub_1A3C33378(*v2);
  }

  else
  {
    if (v3)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v3;
      *(v7 + 24) = v4;
      v8 = sub_1A457F650;
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    v2[2] = v8;
    v2[3] = v7;
    sub_1A5249254();
  }

  free(v2);
}

uint64_t static SegmentedControlOpacityPreferenceKey.defaultValue.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  qword_1EB13DB60 = a1;
  byte_1EB13DB68 = a2 & 1;
  return result;
}

uint64_t sub_1A457DD44@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v3 = byte_1EB13DB68;
  *a1 = qword_1EB13DB60;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1A457DD98(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  result = swift_beginAccess();
  qword_1EB13DB60 = v1;
  byte_1EB13DB68 = v2;
  return result;
}

uint64_t static SegmentedControlOpacityPreferenceKey.reduce(value:nextValue:)(uint64_t a1, uint64_t (*a2)(void))
{
  if (*(a1 + 8) == 1)
  {
    result = a2();
  }

  else
  {
    v4 = 0;
    result = *a1;
  }

  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

void *sub_1A457DE84(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*(result + 8) == 1)
  {
    result = a2(&v5);
    v3 = v5;
    v4 = v6;
  }

  else
  {
    v4 = 0;
    v3 = *result;
  }

  *v2 = v3;
  *(v2 + 8) = v4;
  return result;
}

void sub_1A457DEEC()
{
  sub_1A457EF6C(319, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1A457EF6C(319, &unk_1EB124680, sub_1A3E316EC, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A457DFEC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  sub_1A457EF6C(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  v14 = *(v9 + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v15 <= 3)
  {
    v16 = ((a2 - v12 + 0xFFFF) >> 16) + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *(a1 + v15);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v21 = (v19 - 1) << (8 * v15);
    if (v15 <= 3)
    {
      v22 = *a1;
    }

    else
    {
      v21 = 0;
      v22 = *a1;
    }

    return v12 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v15);
    if (*(a1 + v15))
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  if (v8 == v12)
  {
    v23 = *(v7 + 48);

    return v23(a1);
  }

  else
  {
    v24 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v25 = *(v9 + 48);

      return v25(v24, v10);
    }

    else
    {
      v26 = *(((v14 + v24) & 0xFFFFFFFFFFFFFFF8) + 17);
      if (v26 > 1)
      {
        return (v26 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_1A457E260(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  sub_1A457EF6C(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 64);
  v14 = *(v11 + 80);
  v15 = *(v11 + 64);
  if (v12 <= v10)
  {
    v16 = *(v9 + 84);
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= 0xFE)
  {
    v16 = 254;
  }

  v17 = v13 + v14;
  v18 = (v13 + v14) & ~v14;
  v19 = v15 + 7;
  v20 = ((v15 + 7 + v18) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v16 >= a3)
  {
    v23 = 0;
    if (v16 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v20 <= 3)
    {
      v21 = ((a3 - v16 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v16 >= a2)
    {
LABEL_19:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *(a1 + v20) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *(a1 + v20) = 0;
      }

      else if (v23)
      {
        *(a1 + v20) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v10 == v16)
      {
        v26 = *(v9 + 56);

        v26(a1, a2);
      }

      else
      {
        v27 = (a1 + v17) & ~v14;
        if (v12 == v16)
        {
          v28 = *(v11 + 56);

          v28(v27, a2, v12);
        }

        else
        {
          v29 = (v19 + v27) & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            *(v29 + 16) = 0;
            *v29 = (a2 - 255);
            *(v29 + 8) = 0;
          }

          else
          {
            *(v29 + 17) = -a2;
          }
        }
      }

      return;
    }
  }

  v24 = ~v16 + a2;
  bzero(a1, v20);
  if (v20 <= 3)
  {
    v25 = HIWORD(v24) + 1;
  }

  else
  {
    v25 = 1;
  }

  if (v20 <= 3)
  {
    *a1 = v24;
    if (v23 > 1)
    {
LABEL_29:
      if (v23 == 2)
      {
        *(a1 + v20) = v25;
      }

      else
      {
        *(a1 + v20) = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v23 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v23)
  {
    *(a1 + v20) = v25;
  }
}

void sub_1A457E55C()
{
  sub_1A457EF6C(319, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A457E614(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  sub_1A457EF6C(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1A457E884(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  sub_1A457EF6C(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 64);
  v14 = *(v11 + 80);
  if (v12 <= v10)
  {
    v15 = *(v9 + 84);
  }

  else
  {
    v15 = *(v11 + 84);
  }

  v16 = v13 + v14;
  v17 = ((v13 + v14) & ~v14) + *(v11 + 64);
  if (a3 <= v15)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v15 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v15 < a2)
  {
    v19 = ~v15 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_46:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v10 >= v12)
  {
    v25 = *(v9 + 56);

    v25(a1, a2);
  }

  else
  {
    v24 = *(v11 + 56);

    v24(&a1[v16] & ~v14, a2, v12);
  }
}

uint64_t sub_1A457EBA8()
{
  result = type metadata accessor for LemonadeNavigationDestination();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LemonadeNavigationContext(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1A457ECB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A457ED18()
{
  if (!qword_1EB13DB80)
  {
    sub_1A457EDCC();
    sub_1A3C29B34(&qword_1EB13DB90, sub_1A457EDCC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DB80);
    }
  }
}

void sub_1A457EDCC()
{
  if (!qword_1EB13DB88)
  {
    type metadata accessor for NavigationVisibilityModifier();
    sub_1A457B7B0();
    v0 = sub_1A52499C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DB88);
    }
  }
}

unint64_t sub_1A457EE30()
{
  result = qword_1EB13DB98;
  if (!qword_1EB13DB98)
  {
    sub_1A457EC8C(255);
    sub_1A457EDCC();
    sub_1A3C29B34(&qword_1EB13DB90, sub_1A457EDCC);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DB98);
  }

  return result;
}

uint64_t sub_1A457EF10(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeNavigationDestination();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A457EF6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A457EFF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for LemonadeNavigationDestinationView();
  sub_1A3C29B34(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView);

  LemonadeNavigationContainer.init(navigationContext:content:)(v4, sub_1A457F660, a2);
  sub_1A457B820(0);
  v6 = (a2 + *(v5 + 36));
  *v6 = sub_1A457F654;
  v6[1] = a1;
  v6[2] = 0;
  v6[3] = 0;
}

uint64_t objectdestroy_71Tm_0()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for LemonadeNavigationStack() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  sub_1A457EF6C(0, &qword_1EB1272F0, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E6981AA0]);
  (*(*(v4 - 8) + 8))(v3, v4);
  (*(*(v1 - 8) + 8))(v3 + v2[11], v1);
  sub_1A3EF9960(*(v3 + v2[12]), *(v3 + v2[12] + 8), *(v3 + v2[12] + 16), *(v3 + v2[12] + 17));

  return swift_deallocObject();
}

uint64_t sub_1A457F2B8(uint64_t a1, uint64_t a2)
{
  sub_1A3C4881C(0, &qword_1EB129D58, &type metadata for LemonadeNavigationContext.SheetContent, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A457F3E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1A457F3EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A457F454@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for LemonadeNavigationStack();

  return sub_1A457BEA4(a1, a2);
}

unint64_t sub_1A457F4D8()
{
  result = qword_1EB13DBA0;
  if (!qword_1EB13DBA0)
  {
    sub_1A457F5CC(255, &qword_1EB13DBA8, sub_1A457EC8C, sub_1A457EDCC, MEMORY[0x1E697F960]);
    sub_1A457EE30();
    sub_1A3C29B34(&qword_1EB13DB90, sub_1A457EDCC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DBA0);
  }

  return result;
}

void sub_1A457F5CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A457F66C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1A524EC94();
  v5 = 0;
  if (a2 != 1)
  {
    MEMORY[0x1A590A010](1);
    sub_1A524ECB4();
    if (a2)
    {
      sub_1A524C794();
    }

    v5 = a3 & 1;
  }

  MEMORY[0x1A590A010](v5);
  return sub_1A524ECE4();
}

uint64_t sub_1A457F714()
{
  v1 = *(v0 + 8);
  if (v1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v3 = *(v0 + 16);
    MEMORY[0x1A590A010](1);
    sub_1A524ECB4();
    if (v1)
    {
      sub_1A524C794();
    }

    v2 = v3 & 1;
  }

  return MEMORY[0x1A590A010](v2);
}

uint64_t sub_1A457F794()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1A524EC94();
  if (v1 == 1)
  {
    v3 = 0;
  }

  else
  {
    MEMORY[0x1A590A010](1);
    sub_1A524ECB4();
    if (v1)
    {
      sub_1A524C794();
    }

    v3 = v2 & 1;
  }

  MEMORY[0x1A590A010](v3);
  return sub_1A524ECE4();
}

BOOL sub_1A457F860(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2 == 1)
  {
    return a5 == 1;
  }

  if (a5 == 1)
  {
    return 0;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {
      v7 = a3;
      v8 = a6;
      v9 = sub_1A524EAB4();
      a3 = v7;
      a6 = v8;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a5)
  {
    return 0;
  }

  return ((a6 ^ a3) & 1) == 0;
}

unint64_t sub_1A457F8FC()
{
  result = qword_1EB13DBB0;
  if (!qword_1EB13DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DBB0);
  }

  return result;
}

unint64_t sub_1A457F954()
{
  result = qword_1EB13DBB8;
  if (!qword_1EB13DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DBB8);
  }

  return result;
}

uint64_t sub_1A457F9A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 17))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A457FA04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1A457FA64(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

char *sub_1A457FAB4()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_1A524E2B4();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  v3 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_13;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v4 = *(v1 + 8 * v3 + 32);

  return v4;
}

uint64_t sub_1A457FB98(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1A4581248(a1, a2, a3);
  sub_1A3C33378(a2);
  return v6;
}

void sub_1A457FC00(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    swift_beginAccess();
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A457FDFC(a2);
}

void sub_1A457FDFC(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v9 = v1[4];
  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v9 + 56 * v10;
  v12 = *(v11 - 24);
  v13 = *(v11 - 16);
  swift_beginAccess();
  v14 = v1[11];
  v17 = *(v14 + 16);
  v15 = v14 + 16;
  v16 = v17;
  if (!v17)
  {
    __break(1u);
    goto LABEL_29;
  }

  v18 = (v15 + 16 * v16);
  v19 = *v18 == v12 && v18[1] == v13;
  if (v19 || (sub_1A524EAB4() & 1) != 0)
  {
LABEL_8:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_16:
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      return;
    }

    v12 = Strong;
    v13 = v1[8];
    swift_beginAccess();
    v2 = v1[12];
    if (!(v2 >> 62))
    {
      v21 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }

LABEL_29:
    v21 = sub_1A524E2B4();
    if (v21)
    {
LABEL_11:
      v3 = v21 - 1;
      if (!__OFSUB__(v21, 1))
      {
        if ((v2 & 0xC000000000000001) == 0)
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v3 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v22 = *(v2 + 8 * v3 + 32);
            ObjectType = swift_getObjectType();
            swift_beginAccess();
            v24 = v1[5];
            v25 = v1[6];
            v26 = *(v13 + 8);
            sub_1A3C66EE8(v24);
            v26(v22, v24, v25, ObjectType, v13);
            swift_unknownObjectRelease();
            sub_1A3C33378(v24);

            goto LABEL_16;
          }

          __break(1u);
LABEL_35:
          v27 = sub_1A524E2B4();
          if (!v27)
          {
            goto LABEL_36;
          }

          goto LABEL_19;
        }

LABEL_32:
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  swift_beginAccess();
  v12 = v1[12];
  if (v12 >> 62)
  {
    goto LABEL_35;
  }

  v27 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_19:
  v28 = v27 - 1;
  if (__OFSUB__(v27, 1))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    goto LABEL_38;
  }

  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_40:
    sub_1A524CA74();
LABEL_24:
    sub_1A524CAE4();
    swift_endAccess();
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (v28 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v12 + 8 * v28 + 32);
    [v29 copy];

    sub_1A524E0B4();
    swift_unknownObjectRelease();
    type metadata accessor for TTRRadarObject();
    swift_dynamicCast();
    swift_beginAccess();
    v30 = v39;
    MEMORY[0x1A5907D70]();
    if (*((v1[12] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v1[12] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_24;
    }

    goto LABEL_40;
  }

  __break(1u);
  __break(1u);
  v36 = sub_1A3D3D914(0, *(v4 + 16) + 1, 1, v4);
  *(v5 + 88) = v36;
  v32 = *(v36 + 2);
  v31 = *(v36 + 3);
  v33 = v32 + 1;
  if (v32 >= v31 >> 1)
  {
    v35 = sub_1A3D3D914((v31 > 1), v32 + 1, 1, v36);
    v33 = v32 + 1;
    v36 = v35;
  }

  *(v36 + 2) = v33;
  v34 = &v36[16 * v32];
  *(v34 + 4) = v6;
  *(v34 + 5) = v1;
  *(v5 + 88) = v36;
  swift_endAccess();

  *a1 = v6;
  *(a1 + 8) = v1;
  *(a1 + 16) = v37;
  *(a1 + 24) = v28;
  *(a1 + 32) = v7;
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;
}

void sub_1A4580344()
{
  swift_beginAccess();
  sub_1A45806F8();
  v2 = v1;
  swift_endAccess();
  swift_beginAccess();
  v3 = v0[12];
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!sub_1A524E2B4())
  {
    goto LABEL_15;
  }

LABEL_3:
  v4 = sub_1A45810B8();
  if (!v4)
  {
    v5 = v0[12];
    if (!(v5 >> 62))
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v7 = __OFSUB__(v6, 1);
      v8 = v6 - 1;
      if (!v7)
      {
LABEL_6:
        v4 = sub_1A3EC9710(v8);
        goto LABEL_7;
      }

LABEL_18:
      __break(1u);
      swift_once();
      v9 = qword_1EB1C7658;
      sub_1A5246DF4();

      return;
    }

LABEL_16:
    v10 = sub_1A524E2B4();
    v7 = __OFSUB__(v10, 1);
    v8 = v10 - 1;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_7:

  swift_endAccess();
  swift_beginAccess();
  if (*(v0[4] + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (v2)
  {
  }

  else
  {
    swift_beginAccess();
    if (*(v0[10] + 16))
    {
      swift_beginAccess();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }
}

uint64_t sub_1A45806F8()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
LABEL_4:
      v4 = v3 - 1;
      result = *(v1 + 16 * v4 + 32);
      *(v1 + 16) = v4;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = sub_1A458111C(v1);
    v1 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}