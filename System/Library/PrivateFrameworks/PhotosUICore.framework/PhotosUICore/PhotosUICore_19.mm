uint64_t sub_1A3E92210@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3E9225C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v2;
  (*(*v3 + 416))(KeyPath, sub_1A3E5693C, v6, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1A3E9230C(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 416))();

  return swift_unknownObjectRelease();
}

void sub_1A3E923B4()
{
  swift_getKeyPath();
  (*(*v0 + 408))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E92428@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A3E924B4(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  if (v5)
  {
    if (a2)
    {
      v6 = v2[4] == a1 && v5 == a2;
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
    (*(*v2 + 416))(v9);
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  v2[4] = a1;
  v2[5] = a2;
}

void sub_1A3E92604()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E92644()
{
  swift_getKeyPath();
  (*(*v0 + 408))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E926B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3E92738(uint64_t a1)
{
  if (!v1[6])
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 416))(v4);
  }

  if (!a1 || (sub_1A3D3D27C(v1[6], a1) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v1[6] = a1;
}

void sub_1A3E928EC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  *(v1 + 16) = 0;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  sub_1A5241604();
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = v5;
  *(v1 + 88) = v6;
  *(v1 + 96) = v7;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E929C4(_OWORD *a1)
{
  v2 = a1[1];
  v8[0] = *a1;
  v8[1] = v2;
  v8[2] = a1[2];
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = v8;
  (*(*v1 + 416))(KeyPath, sub_1A3E936BC, &v5, MEMORY[0x1E69E7CA8] + 8);
  sub_1A3E937F8(v8);
}

uint64_t sub_1A3E92A88()
{
  (*(*v0 + 368))(&v2);
  sub_1A42C0AB4();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_1A3E92B38(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != *(v1 + 16))
  {
    KeyPath = swift_getKeyPath();
    v4 = &v4;
    MEMORY[0x1EEE9AC00](KeyPath);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *(v1 + 16) = v2;
  swift_unknownObjectRetain();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t (*sub_1A3E92D48(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A3E92D9C;
}

uint64_t sub_1A3E92D9C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    (*(**(a1 + 24) + 368))(&v5, result);
    v10 = v5;
    v11 = v6;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    sub_1A3E92B38(&v10);
  }

  return result;
}

void sub_1A3E92E5C(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 408))();

  swift_beginAccess();
  v3 = *(v1 + 64);
  v5 = *(v1 + 88);
  v4 = *(v1 + 96);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 72);
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A3E92F24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 368))(&v6);
  v3 = v7;
  *a2 = v6;
  *(a2 + 8) = v3;
  result = *&v8;
  v5 = v9;
  *(a2 + 16) = v8;
  *(a2 + 32) = v5;
  return result;
}

void sub_1A3E92F98(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = a1[4];
  v2 = a1[5];
  v4 = *a1;
  v5 = v1;
  v6 = *(a1 + 1);
  v7 = v3;
  v8 = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A3E93044(uint64_t *a1))(void *a1)
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

  v4[5] = OBJC_IVAR____TtC12PhotosUICore36LemonadeSharedLibrarySuggestionModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3E9398C(&qword_1EB129560);
  sub_1A52415F4();

  v4[7] = sub_1A3E92D48(v4);
  return sub_1A3E93180;
}

void sub_1A3E93180(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t sub_1A3E93244(uint64_t (*a1)(void *))
{
  v3 = (*(*v1 + 368))(&v6);
  v4 = a1(v3);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v4;
}

uint64_t sub_1A3E93428()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12PhotosUICore36LemonadeSharedLibrarySuggestionModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void (*sub_1A3E93578(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 384))();
  return sub_1A3D3D728;
}

uint64_t sub_1A3E93668@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 392))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1A3E936BC()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  v5 = v3[1];
  v4 = v3[2];
  *(v2 + 56) = *v3;
  *(v2 + 72) = v5;
  *(v2 + 88) = v4;
  sub_1A3E93A94(v3, &v12);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(*v2 + 368))(&v12, v6);
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  sub_1A3E92B38(&v7);
}

uint64_t type metadata accessor for LemonadeSharedLibrarySuggestionModel()
{
  result = qword_1EB179F30;
  if (!qword_1EB179F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A3E938D0()
{
  result = qword_1EB129A50;
  if (!qword_1EB129A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129A50);
  }

  return result;
}

uint64_t sub_1A3E9398C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadeSharedLibrarySuggestionModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3E939D8()
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

uint64_t StoryAsyncPlayer.addVisualDiagnostics(to:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A524CCB4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  v13 = a1;

  sub_1A3D4D930(0, 0, v10, &unk_1A53037E0, v12);
}

uint64_t sub_1A3E93C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A3E93C60, 0, 0);
}

uint64_t sub_1A3E93C60()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v4;
  *(v3 + 32) = v1;
  v5 = *(*v2 + 328);
  v6 = v4;

  v11 = (v5 + *v5);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_1A3E93E04;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return v11(v8, sub_1A3E94238, v3, v9);
}

uint64_t sub_1A3E93E04()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A3E93F14(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1A3CA8098;

  return sub_1A3E93C38(a1, v8, v9, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3E94178(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1A3D60150;

  return sub_1A3E93C38(a1, v8, v9, v4, v5, v7, v6);
}

void sub_1A3E94238(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = [objc_allocWithZone(PXStoryTimelineVisualDiagnosticsProvider) initWithModel:a1 screenScale:1.0];
  v7[4] = v3;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1A3D6084C;
  v7[3] = &block_descriptor_34;
  v6 = _Block_copy(v7);

  [v5 addVisualDiagnosticsToContext:v2 completionHandler:v6];
  _Block_release(v6);
}

uint64_t sub_1A3E94328(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  sub_1A3E985E8(a1, a2, a3);
  v9 = v8;

  return v9;
}

uint64_t sub_1A3E94388()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

uint64_t sub_1A3E943FC@<X0>(_WORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a1 = v3;
  return result;
}

uint64_t sub_1A3E9447C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1A52479F4();
}

uint64_t sub_1A3E94514(uint64_t a1, void **a2)
{
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1A3C5D948(a1, &v13 - v8, sub_1A3C41108);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3C5D948(v9, v6, sub_1A3C41108);
  v11 = v10;
  sub_1A52479F4();
  return sub_1A3C42B10(v9, sub_1A3C41108);
}

uint64_t sub_1A3E94650()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();
}

uint64_t sub_1A3E946D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();
}

uint64_t sub_1A3E9474C(uint64_t a1, void **a2)
{
  v4 = sub_1A5241534();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *(v5 + 16);
  v12(&v16 - v10, a1, v4, v9);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  (v12)(v7, v11, v4);
  v14 = v13;
  sub_1A52479F4();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_1A3E948B8()
{
  v0 = sub_1A446720C();
  v1 = [v0 canPerformEditOperation_];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1A4467CD8();
  v3 = [v2 unlockDeviceStatus];

  if (!v3)
  {
    return 1;
  }

  v4 = v3[2](v3);
  _Block_release(v3);
  return v4;
}

void sub_1A3E94958(void *a1)
{
  swift_getObjectType();
  if ([a1 object])
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    sub_1A3C52C70(0, &qword_1EB12D8E0);
    if (swift_dynamicCast())
    {
      v2 = v13;
      v3 = [v13 pasteboardTypes];
      v4 = sub_1A524CA34();

      *&v16[0] = 0xD000000000000024;
      *(&v16[0] + 1) = 0x80000001A53BA990;
      MEMORY[0x1EEE9AC00](v5);
      v12 = v16;
      v6 = sub_1A3D3E5DC(sub_1A3D3E688, v11, v4);

      if (v6 & 1) != 0 && (v7 = [v2 pasteboardTypes], v8 = sub_1A524CA34(), v7, *&v16[0] = 0xD000000000000024, *(&v16[0] + 1) = 0x80000001A53BA990, MEMORY[0x1EEE9AC00](v9), v12 = v16, v10 = sub_1A3D3E5DC(sub_1A3D3F194, v11, v8), , (v10))
      {
        sub_1A3C29AA4(&qword_1EB12AA58, type metadata accessor for PhotosDetailsTimeWidgetViewModel);
        sub_1A52478D4();
        sub_1A5247964();
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1A3C35B00(v16);
  }
}

void sub_1A3E94C40(void *a1)
{
  v2 = v1;
  v4 = sub_1A524BEE4();
  v58 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1A524BF64();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v53 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1A5241534();
  v52 = *(v54 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v46 - v10;
  sub_1A3C41108(0);
  v50 = *(v11 - 8);
  v12 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v46 - v18;
  sub_1A44681C8();
  v19 = sub_1A446720C();
  sub_1A3C52C70(0, &qword_1EB126660);
  v60 = sub_1A524DC34();

  if (v60)
  {
    v20 = [v60 objectAfterChanges];
    if (v20)
    {
      v21 = v20;
      v49 = v4;
      [v20 fetchPropertySetsIfNeeded];
      v22 = sub_1A446720C();
      [v22 fetchPropertySetsIfNeeded];

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1A52479E4();

      v23 = LOWORD(aBlock[0]);
      v24 = sub_1A446720C();
      v25 = [a1 assetCloudLocalStateChangedForAsset_];

      if (v25)
      {
        v23 = [v21 px_fetchCloudLocalState];
      }

      v26 = [v21 creationDate];
      v48 = v23;
      if (v26)
      {
        v27 = v26;
        sub_1A52410F4();

        v28 = 0;
      }

      else
      {
        v28 = 1;
      }

      v30 = sub_1A5241144();
      (*(*(v30 - 8) + 56))(v16, v28, 1, v30);
      v31 = v16;
      v32 = v59;
      sub_1A3E98DA0(v31, v59);
      v33 = [v21 px_timeZone];
      v34 = v51;
      sub_1A5241524();

      sub_1A3C52C70(0, &qword_1EB12B180);
      v47 = sub_1A524D474();
      sub_1A3C5D948(v32, v13, sub_1A3C41108);
      v35 = v52;
      v36 = v54;
      (*(v52 + 16))(v8, v34, v54);
      v37 = (*(v50 + 80) + 26) & ~*(v50 + 80);
      v38 = (v12 + *(v35 + 80) + v37) & ~*(v35 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = v2;
      *(v39 + 24) = v48;
      sub_1A3E98DA0(v13, v39 + v37);
      (*(v35 + 32))(v39 + v38, v8, v36);
      aBlock[4] = sub_1A3E98E04;
      aBlock[5] = v39;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_35;
      v40 = _Block_copy(aBlock);
      v41 = v2;

      v42 = v53;
      sub_1A524BF14();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1A3C29AA4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
      sub_1A3C38394();
      sub_1A3C29AA4(&qword_1EB12B1B0, sub_1A3C38394);
      v43 = v56;
      v44 = v49;
      sub_1A524E224();
      v45 = v47;
      MEMORY[0x1A5908800](0, v42, v43, v40);

      _Block_release(v40);
      (*(v58 + 8))(v43, v44);
      (*(v55 + 8))(v42, v57);
      (*(v35 + 8))(v34, v36);
      sub_1A3C42B10(v59, sub_1A3C41108);
    }

    else
    {
      v29 = v60;
    }
  }
}

uint64_t sub_1A3E9537C(void *a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v55 = a3;
  v6 = sub_1A5241534();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v47 - v9;
  v10 = sub_1A5241144();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E99834();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v50 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v49 = &v47 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v47 - v25;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (v57 != a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v56 = a2;
    v27 = a1;
    sub_1A52479F4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v28 = *(v14 + 48);
  sub_1A3C5D948(v26, v16, sub_1A3C41108);
  sub_1A3C5D948(v55, &v16[v28], sub_1A3C41108);
  v29 = *(v11 + 48);
  v30 = a1;
  if (v29(v16, 1, v10) == 1)
  {
    sub_1A3C42B10(v26, sub_1A3C41108);
    v31 = v29(&v16[v28], 1, v10);
    v32 = v53;
    if (v31 == 1)
    {
      v33 = v54;
LABEL_10:
      sub_1A3C42B10(v16, sub_1A3C41108);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  sub_1A3C5D948(v16, v23, sub_1A3C41108);
  v34 = v29(&v16[v28], 1, v10);
  v32 = v53;
  if (v34 == 1)
  {
    sub_1A3C42B10(v26, sub_1A3C41108);
    (*(v11 + 8))(v23, v10);
LABEL_8:
    sub_1A3C42B10(v16, sub_1A3E99834);
    v33 = v54;
LABEL_9:
    v16 = v49;
    sub_1A3C5D948(v55, v49, sub_1A3C41108);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A3C5D948(v16, v50, sub_1A3C41108);
    v35 = v30;
    sub_1A52479F4();
    goto LABEL_10;
  }

  v43 = &v16[v28];
  v44 = v47;
  (*(v11 + 32))(v47, v43, v10);
  sub_1A3C29AA4(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
  v45 = sub_1A524C594();
  v46 = *(v11 + 8);
  v46(v44, v10);
  sub_1A3C42B10(v26, sub_1A3C41108);
  v46(v23, v10);
  sub_1A3C42B10(v16, sub_1A3C41108);
  v33 = v54;
  if ((v45 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_11:
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v52;
  sub_1A52479E4();

  sub_1A3C29AA4(&qword_1EB12AF38, MEMORY[0x1E6969BC0]);
  v37 = v51;
  v38 = sub_1A524C594();
  v39 = *(v32 + 8);
  result = v39(v36, v33);
  if ((v38 & 1) == 0)
  {
    v41 = *(v32 + 16);
    v41(v36, v37, v33);
    swift_getKeyPath();
    swift_getKeyPath();
    v41(v48, v36, v33);
    v42 = v30;
    sub_1A52479F4();
    return v39(v36, v33);
  }

  return result;
}

uint64_t sub_1A3E95B00()
{
  v0 = sub_1A5241534();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5241144();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1A3C42B10(v6, sub_1A3C41108);
  }

  (*(v8 + 32))(v10, v6, v7);
  v17 = [objc_opt_self() generalPasteboard];
  sub_1A3E98ED8();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A52F8E10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v13 = sub_1A3E98F4C();
  (*(v1 + 8))(v3, v0);
  *(v12 + 32) = v13;
  sub_1A3C5D8DC(0, &qword_1EB12D8D8, MEMORY[0x1E69E5E28]);
  v14 = sub_1A524CA14();

  v15 = v17;
  [v17 setItems_];

  return (*(v8 + 8))(v10, v7);
}

void sub_1A3E95E58(uint64_t a1)
{
  v79 = a1;
  sub_1A3E9957C(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v80 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v69 - v5;
  v6 = sub_1A5241534();
  v7 = *(v6 - 8);
  v82 = v6;
  v83 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v69 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v69 - v14;
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v69 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v69 - v22;
  v24 = sub_1A5241144();
  v85 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v86 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = [objc_opt_self() generalPasteboard];
  v26 = sub_1A524C634();
  v27 = [v87 dataForPasteboardType_];

  if (v27)
  {
    v76 = v17;
    v77 = v20;
    v78 = v1;
    v28 = v24;
    v29 = sub_1A5240EA4();
    v31 = v30;

    v32 = sub_1A524C634();
    v33 = [v87 dataForPasteboardType_];

    if (v33)
    {
      v74 = v9;
      v75 = v12;
      v34 = sub_1A5240EA4();
      v36 = v35;

      sub_1A3E96994(v23);
      v37 = v85;
      if ((*(v85 + 48))(v23, 1, v28) == 1)
      {
        sub_1A3C59280(v29, v31);
        sub_1A3C59280(v34, v36);

        sub_1A3C42B10(v23, sub_1A3C41108);
      }

      else
      {
        v72 = v29;
        (*(v37 + 32))(v86, v23, v28);
        sub_1A3C52C70(0, &qword_1EB139B30);
        sub_1A3C52C70(0, &unk_1EB1265F0);
        v70 = v34;
        v71 = v36;
        v39 = sub_1A524D3B4();
        v73 = v31;
        v40 = v82;
        if (v39 && (aBlock = 0, v89 = 0, v41 = v39, sub_1A524C664(), v41, v89))
        {
          v42 = v81;
          sub_1A52414D4();

          v43 = v83;
        }

        else
        {
          sub_1A524D244();
          v44 = sub_1A475874C();
          swift_beginAccess();
          v45 = *v44;
          sub_1A5246DF4();

          v43 = v83;
          v42 = v81;
          (*(v83 + 56))(v81, 1, 1, v40);
        }

        v46 = *(v43 + 48);
        if (v46(v42, 1, v40) == 1)
        {
          (*(v37 + 8))(v86, v28);
          sub_1A3C59280(v72, v73);
          sub_1A3C59280(v70, v71);

          sub_1A3C42B10(v42, sub_1A3E9957C);
        }

        else
        {
          v47 = v84;
          (*(v43 + 32))(v84, v42, v40);
          v48 = v77;
          (*(v37 + 16))(v77, v86, v28);
          v49 = *(v37 + 56);
          v83 = v28;
          v49(v48, 0, 1, v28);
          swift_getKeyPath();
          v82 = v46;
          swift_getKeyPath();
          sub_1A3C5D948(v48, v76, sub_1A3C41108);
          v50 = v78;
          sub_1A52479F4();
          sub_1A3C42B10(v48, sub_1A3C41108);
          v51 = *(v43 + 16);
          v52 = v75;
          (v51)(v75, v47, v40);
          v81 = v51;
          swift_getKeyPath();
          swift_getKeyPath();
          (v51)(v74, v52, v40);
          v53 = v50;
          sub_1A52479F4();
          v54 = v52;
          v55 = v40;
          v56 = *(v43 + 8);
          v56(v54, v55);
          v57 = sub_1A446720C();
          v58 = [objc_opt_self() arrayWithObject_];

          v59 = v80;
          (v81)(v80, v84, v55);
          (*(v43 + 56))(v59, 0, 1, v55);
          v60 = sub_1A5241074();
          if (v82(v59, 1, v55) == 1)
          {
            v61 = 0;
          }

          else
          {
            v62 = sub_1A5241514();
            v63 = v59;
            v61 = v62;
            v56(v63, v55);
          }

          v64 = [objc_allocWithZone(PXChangeAssetDateAction) initWithAssets:v58 date:v60 timeZone:v61];

          v65 = v71;
          v66 = v70;
          v67 = v83;
          if (v64)
          {
            v92 = sub_1A3E96D70;
            v93 = 0;
            aBlock = MEMORY[0x1E69E9820];
            v89 = 1107296256;
            v90 = sub_1A3D6084C;
            v91 = &block_descriptor_14;
            v68 = _Block_copy(&aBlock);
            [v64 executeWithUndoManager:v79 completionHandler:v68];

            sub_1A3C59280(v72, v73);
            sub_1A3C59280(v66, v65);
            _Block_release(v68);
          }

          else
          {

            sub_1A3C59280(v72, v73);
            sub_1A3C59280(v66, v65);
          }

          v56(v84, v55);
          (*(v85 + 8))(v86, v67);
        }
      }
    }

    else
    {

      sub_1A3C59280(v29, v31);
    }
  }

  else
  {
    v38 = v87;
  }
}

uint64_t sub_1A3E96994@<X0>(char *a1@<X8>)
{
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5241144();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB139B30);
  sub_1A3C52C70(0, &qword_1EB1266C8);
  v9 = sub_1A524D3B4();
  if (v9 && (v10 = *(v6 + 56), v11 = v9, v10(v4, 1, 1, v5), sub_1A3C29AA4(&qword_1EB12D8E8, MEMORY[0x1E6969530]), sub_1A524E7F4(), v11, (*(v6 + 48))(v4, 1, v5) != 1))
  {
    v15 = *(v6 + 32);
    v15(v8, v4, v5);
    v15(a1, v8, v5);
    return v10(a1, 0, 1, v5);
  }

  else
  {
    sub_1A524D244();
    v12 = sub_1A475874C();
    swift_beginAccess();
    v13 = *v12;
    sub_1A5246DF4();

    return (*(v6 + 56))(a1, 1, 1, v5);
  }
}

BOOL sub_1A3E96D70(_BOOL8 result, uint64_t a2)
{
  if (!result)
  {
    v3 = sub_1A524D244();
    v4 = sub_1A475874C();
    swift_beginAccess();
    v5 = *v4;
    result = os_log_type_enabled(v5, v3);
    if (result)
    {
      v6 = v5;
      v7 = swift_slowAlloc();
      swift_slowAlloc();
      *v7 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        sub_1A524EBE4();
      }

      sub_1A3C2EF94();
    }
  }

  return result;
}

id sub_1A3E96EC8()
{
  v0 = [objc_opt_self() generalPasteboard];
  v1 = sub_1A524CA14();
  v2 = [v0 containsPasteboardTypes_];

  return v2;
}

uint64_t sub_1A3E96F4C(uint64_t a1)
{
  v69 = a1;
  v1 = sub_1A5241534();
  v67 = *(v1 - 8);
  v68 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v66 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1A52413D4();
  v3 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1A52412A4();
  v6 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v64 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v61 - v9;
  v10 = sub_1A5241264();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5241284();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E995B0(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5241234();
  sub_1A5241274();
  (*(v15 + 8))(v17, v14);
  sub_1A5241254();
  (*(v11 + 8))(v13, v10);
  v21 = sub_1A5241214();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1A3C42B10(v20, sub_1A3E995B0);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = sub_1A5241204();
    v24 = v25;
    (*(v22 + 8))(v20, v21);
  }

  sub_1A5241334();
  v26 = v70;
  sub_1A52412C4();
  (*(v3 + 8))(v5, v65);
  v27 = v66;
  if (!v24)
  {
    goto LABEL_17;
  }

  if (v23 == 28261 && v24 == 0xE200000000000000)
  {
  }

  else
  {
    v28 = sub_1A524EAB4();

    if ((v28 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v29 = v64;
  v30 = v71;
  (*(v6 + 104))(v64, *MEMORY[0x1E6969868], v71);
  v31 = sub_1A5241294();
  v32 = *(v6 + 8);
  v32(v29, v30);
  if (v31)
  {
    if (qword_1EB18F638 != -1)
    {
      swift_once();
    }

    v33 = qword_1EB1EB600;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A52479E4();

    v34 = sub_1A5241514();
    v35 = v68;
    v67 = *(v67 + 8);
    (v67)(v27, v68);
    [v33 setTimeZone_];

    v36 = sub_1A5241074();
    v37 = [v33 stringFromDate_];

    v38 = sub_1A524C674();
    v64 = v39;
    v65 = v38;

    if (qword_1EB18F630 != -1)
    {
      swift_once();
    }

    v40 = qword_1EB1EB5F8;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A52479E4();

    v41 = sub_1A5241514();
    (v67)(v27, v35);
    [v40 setTimeZone_];

    v42 = sub_1A5241074();
    v43 = [v40 stringFromDate_];

    v62 = sub_1A524C674();
    v63 = v44;

    if (qword_1EB18F658 != -1)
    {
      swift_once();
    }

    v45 = qword_1EB1EB618;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A52479E4();

    v46 = sub_1A5241514();
    (v67)(v27, v35);
    [v45 setTimeZone_];

    v47 = sub_1A5241074();
    v48 = [v45 stringFromDate_];

    v49 = sub_1A524C674();
    v51 = v50;

    v72 = 10649826;
    v52 = sub_1A524C784();
    v54 = v53;
    v72 = v65;
    v73 = v64;
    MEMORY[0x1A5907B60](32, 0xE100000000000000);
    MEMORY[0x1A5907B60](v52, v54);
    MEMORY[0x1A5907B60](32, 0xE100000000000000);
    MEMORY[0x1A5907B60](v62, v63);

    MEMORY[0x1A5907B60](32, 0xE100000000000000);
    MEMORY[0x1A5907B60](v52, v54);

    MEMORY[0x1A5907B60](32, 0xE100000000000000);
    MEMORY[0x1A5907B60](v49, v51);

    v55 = v72;
    v26 = v70;
    goto LABEL_20;
  }

LABEL_17:
  if (qword_1EB18F640 != -1)
  {
    swift_once();
  }

  v56 = qword_1EB1EB608;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v57 = sub_1A5241514();
  (*(v67 + 8))(v27, v68);
  [v56 setTimeZone_];

  v58 = sub_1A5241074();
  v59 = [v56 stringFromDate_];

  v55 = sub_1A524C674();
  v32 = *(v6 + 8);
LABEL_20:
  v32(v26, v71);
  return v55;
}

uint64_t sub_1A3E97904()
{
  v0 = sub_1A5241534();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB18F640 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB1EB608;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v5 = sub_1A5241514();
  (*(v1 + 8))(v3, v0);
  [v4 setTimeZone_];

  v6 = sub_1A5241074();
  v7 = [v4 stringFromDate_];

  v8 = sub_1A524C674();
  return v8;
}

void sub_1A3E97AC8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setFormattingContext_];
  v1 = sub_1A524C634();
  [v0 setLocalizedDateFormatFromTemplate_];

  qword_1EB1EB600 = v0;
}

void sub_1A3E97B80(uint64_t a1, SEL *a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v7 setFormattingContext_];
  [v7 *a2];

  *a4 = v7;
}

void sub_1A3E97C08(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v3 setFormattingContext_];
  [v3 setDateStyle_];
  [v3 setTimeStyle_];

  *a2 = v3;
}

uint64_t sub_1A3E97C8C()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsTimeWidgetViewModel__cloudLocalState;
  v2 = MEMORY[0x1E695C070];
  sub_1A3C7CDB8(0, &unk_1EB128B10, type metadata accessor for PHAssetCloudLocalState, MEMORY[0x1E695C070]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsTimeWidgetViewModel__date;
  sub_1A3C7CDB8(0, &unk_1EB128B50, sub_1A3C41108, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsTimeWidgetViewModel__timeZone;
  sub_1A3C7CDB8(0, &qword_1EB128B48, MEMORY[0x1E6969BC0], v2);
  v8 = *(*(v7 - 8) + 8);

  return v8(v0 + v6, v7);
}

_WORD *sub_1A3E97F94@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_1A3E97FB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3C5D8DC(0, &qword_1EB126420, MEMORY[0x1E69E6EC8]);
  v33 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if ((v33 & 1) == 0)
      {
        sub_1A3C2F0BC(v24, v34);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A3C57128(v24, v34);
      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1A3C57128(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_1A3E98278(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3C5DCA4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 < v16 || (a4 & 1) != 0)
  {
    sub_1A3E97FB0(v16, a4 & 1);
    v11 = sub_1A3C5DCA4(a2, a3);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_8;
    }

LABEL_16:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

  v19 = v11;
  sub_1A3E98434();
  v11 = v19;
LABEL_8:
  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    sub_1A3E983C8(v11, a2, a3, a1, v21);

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v22 = (v21[7] + 32 * v11);
  __swift_destroy_boxed_opaque_existential_0(v22);

  return sub_1A3C57128(a1, v22);
}

_OWORD *sub_1A3E983C8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1A3C57128(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_1A3E98434()
{
  v1 = v0;
  sub_1A3C5D8DC(0, &qword_1EB126420, MEMORY[0x1E69E6EC8]);
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

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = 16 * v16;
        v18 = (*(v2 + 48) + 16 * v16);
        v20 = *v18;
        v19 = v18[1];
        v21 = 32 * v16;
        sub_1A3C2F0BC(*(v2 + 56) + 32 * v16, v23);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        sub_1A3C57128(v23, (*(v4 + 56) + v21));
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

void sub_1A3E985E8(void *a1, void *a2, void *a3)
{
  v64 = a2;
  v65 = a3;
  v71 = a1;
  v4 = sub_1A5241534();
  v79 = *(v4 - 8);
  v80 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v64 - v7;
  v73 = sub_1A5240E64();
  v70 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - v11;
  sub_1A3C7CDB8(0, &unk_1EB128B50, sub_1A3C41108, MEMORY[0x1E695C070]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v64 - v16;
  sub_1A3C41108(0);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v69 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v64 - v25;
  v27 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsTimeWidgetViewModel__date;
  v28 = sub_1A5241144();
  v29 = *(v28 - 8);
  v67 = *(v29 + 56);
  v68 = v28;
  v66 = v29 + 56;
  v67(v26, 1, 1);
  sub_1A3C5D948(v26, v23, sub_1A3C41108);
  v74 = v19;
  sub_1A52479A4();
  sub_1A3C42B10(v26, sub_1A3C41108);
  v75 = v15;
  v76 = v14;
  v30 = *(v15 + 32);
  v72 = v27;
  v30(v3 + v27, v17, v14);
  v31 = v71;
  v32 = [v71 px_filename];
  sub_1A524C674();

  sub_1A5240D14();

  sub_1A5240D54();
  v33 = *(v70 + 8);
  v34 = v9;
  v35 = v73;
  v33(v34, v73);
  v36 = sub_1A5240D34();
  v38 = v37;
  v33(v12, v35);
  v39 = (v3 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsTimeWidgetViewModel_fileName);
  *v39 = v36;
  v39[1] = v38;
  v40 = [v31 creationDate];
  v41 = v69;
  if (v40)
  {
    v42 = v40;
    sub_1A52410F4();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  (v67)(v41, v43, 1, v68);
  v44 = v72;
  swift_beginAccess();
  (*(v75 + 8))(v3 + v44, v76);
  sub_1A3C5D948(v41, v26, sub_1A3C41108);
  sub_1A52479A4();
  sub_1A3C42B10(v41, sub_1A3C41108);
  swift_endAccess();
  v45 = [v31 px_timeZone];
  v46 = v77;
  sub_1A5241524();

  swift_beginAccess();
  v47 = v79;
  v48 = v80;
  (*(v79 + 16))(v78, v46, v80);
  sub_1A52479A4();
  (*(v47 + 8))(v46, v48);
  swift_endAccess();
  [v31 fetchPropertySetsIfNeeded];
  LOWORD(v45) = [v31 px_fetchCloudLocalState];
  swift_beginAccess();
  v81 = v45;
  type metadata accessor for PHAssetCloudLocalState(0);
  sub_1A52479A4();
  swift_endAccess();
  v49 = [v31 photoLibrary];
  if (!v49)
  {
    __break(1u);
    goto LABEL_10;
  }

  v50 = v49;
  v51 = [v49 isCloudPhotoLibraryEnabled];

  *(v3 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsTimeWidgetViewModel_isiCloudEnabled) = v51;
  v52 = [v31 px_isUnsavedSyndicatedAsset];
  *(v3 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsTimeWidgetViewModel_isSyndicatedGuestAsset) = v52;
  v53 = v31;
  v54 = v64;
  v55 = sub_1A4467460(v53, v54, v65);
  v56 = sub_1A446720C();
  v57 = [v56 photoLibrary];

  if (!v57)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v58 = v55;
  [v57 registerChangeObserver_];

  v59 = [objc_opt_self() defaultCenter];
  [v59 addObserver:v58 selector:sel_clipBoardChangedWithPasteboardNotification_ name:*MEMORY[0x1E69DE270] object:0];

  v60 = sub_1A44672B8();
  v62 = v61;

  if (v60)
  {
    ObjectType = swift_getObjectType();
    (*(v62 + 8))(ObjectType, v62);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1A3E98DA0(uint64_t a1, uint64_t a2)
{
  sub_1A3C41108(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3E98E04()
{
  sub_1A3C41108(0);
  v2 = (*(*(v1 - 8) + 80) + 26) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(sub_1A5241534() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1A3E9537C(v5, v6, v0 + v2, v7);
}

void sub_1A3E98ED8()
{
  if (!qword_1EB12D8D0)
  {
    sub_1A3C5D8DC(255, &qword_1EB12D8D8, MEMORY[0x1E69E5E28]);
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D8D0);
    }
  }
}

unint64_t sub_1A3E98F4C()
{
  v0 = sub_1A5246D14();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A3C5D7A8(MEMORY[0x1E69E7CC0]);
  if (qword_1EB172400 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB1EB908;
  v6 = sub_1A5241514();
  [v5 setTimeZone_];

  v7 = sub_1A5241074();
  v8 = [v5 stringForObjectValue_];

  if (v8)
  {
    v9 = sub_1A524C674();
    v11 = v10;

    sub_1A5246C14();
    v12 = v4;
    v13 = sub_1A5246BF4();
    v15 = v14;
    (*(v1 + 8))(v3, v0);
    v52 = MEMORY[0x1E69E6158];
    *&v51 = v9;
    *(&v51 + 1) = v11;
    sub_1A3C57128(&v51, &v50);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v12;
    sub_1A3E98278(&v50, v13, v15, isUniquelyReferenced_nonNull_native);

    v4 = v53;
  }

  v17 = objc_opt_self();
  v18 = sub_1A5241074();
  *&v51 = 0;
  v19 = [v17 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v51];

  v20 = v51;
  if (v19)
  {
    v21 = sub_1A5240EA4();
    v23 = v22;

    if (v23 >> 60 != 15)
    {
      sub_1A52414E4();
      v24 = objc_opt_self();
      v25 = sub_1A524C634();

      *&v51 = 0;
      v26 = [v24 archivedDataWithRootObject:v25 requiringSecureCoding:1 error:&v51];

      v27 = v51;
      if (v26)
      {
        v28 = sub_1A5240EA4();
        v30 = v29;

        if (v30 >> 60 != 15)
        {
          v31 = MEMORY[0x1E6969080];
          v52 = MEMORY[0x1E6969080];
          *&v51 = v21;
          *(&v51 + 1) = v23;
          sub_1A3C57128(&v51, &v50);
          sub_1A3D602A8(v21, v23);
          v32 = swift_isUniquelyReferenced_nonNull_native();
          v53 = v4;
          sub_1A3E98278(&v50, 0xD000000000000020, 0x80000001A53BA960, v32);
          v33 = v53;
          v52 = v31;
          *&v51 = v28;
          *(&v51 + 1) = v30;
          sub_1A3C57128(&v51, &v50);
          sub_1A3D602A8(v28, v30);
          v34 = swift_isUniquelyReferenced_nonNull_native();
          v53 = v33;
          sub_1A3E98278(&v50, 0xD000000000000024, 0x80000001A53BA990, v34);
          sub_1A3DB556C(v28, v30);
          sub_1A3DB556C(v21, v23);
          return v53;
        }
      }

      else
      {
        v42 = v27;
        v43 = sub_1A5240B84();

        swift_willThrow();
        v44 = sub_1A524D244();
        v45 = sub_1A475874C();
        swift_beginAccess();
        v46 = *v45;
        if (os_log_type_enabled(v46, v44))
        {
          v47 = v46;
          v48 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *v48 = 136315138;
          swift_getErrorValue();
          sub_1A524EBE4();
          sub_1A3C2EF94();
        }
      }

      sub_1A3DB556C(v21, v23);
    }
  }

  else
  {
    v35 = v20;
    v36 = sub_1A5240B84();

    swift_willThrow();
    v37 = sub_1A524D244();
    v38 = sub_1A475874C();
    swift_beginAccess();
    v39 = *v38;
    if (os_log_type_enabled(v39, v37))
    {
      v40 = v39;
      v41 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v41 = 136315138;
      swift_getErrorValue();
      sub_1A524EBE4();
      sub_1A3C2EF94();
    }
  }

  return v4;
}

uint64_t type metadata accessor for PhotosDetailsTimeWidgetViewModel()
{
  result = qword_1EB18F610;
  if (!qword_1EB18F610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3E99638()
{
  sub_1A3C7CDB8(319, &unk_1EB128B10, type metadata accessor for PHAssetCloudLocalState, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1A3C7CDB8(319, &unk_1EB128B50, sub_1A3C41108, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      sub_1A3C7CDB8(319, &qword_1EB128B48, MEMORY[0x1E6969BC0], MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1A3E997E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3E99834()
{
  if (!qword_1EB12AFD0)
  {
    sub_1A3C41108(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12AFD0);
    }
  }
}

void sub_1A3E999A8()
{
  v1 = objc_opt_self();
  v2 = [v0 viewModel];
  v3 = [v2 photoLibrary];

  v6 = [v1 defaultFilterStateForPhotoLibrary_];
  v4 = [v0 currentContentFilterState];
  v5 = [v4 includeScreenshots];

  [v6 setIncludeScreenshots_];
  [v0 updateToContentFilterStateAndFinishTask_];
}

id CuratedLibraryRemoveFiltersActionPerformer.__allocating_init(actionType:viewModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(v3);
  v6 = sub_1A524C634();

  v7 = [v5 initWithActionType:v6 viewModel:a3];

  return v7;
}

id CuratedLibraryRemoveFiltersActionPerformer.init(actionType:viewModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1A524C634();

  v8.receiver = v3;
  v8.super_class = type metadata accessor for CuratedLibraryRemoveFiltersActionPerformer();
  v6 = objc_msgSendSuper2(&v8, sel_initWithActionType_viewModel_, v5, a3);

  return v6;
}

id CuratedLibraryRemoveFiltersActionPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CuratedLibraryRemoveFiltersActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A3E99C70()
{
  v1 = [v0 currentContentFilterState];
  [v1 activeFilterCount];

  v2 = sub_1A524C634();
  v3 = PXLocalizedString(v2);

  v4 = sub_1A524C674();
  return v4;
}

id sub_1A3E99D50(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1A3E99DA0()
{
  v0 = type metadata accessor for GenerativeStoryInWatchNextControllerChangeDescriptor();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = 1;
  v4.receiver = v1;
  v4.super_class = v0;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  v3 = *&v2[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue];

  qword_1EB1EB910 = v3;
}

id sub_1A3E99E88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v4;
  v7.receiver = v5;
  v7.super_class = v2;
  result = objc_msgSendSuper2(&v7, sel_init);
  *a2 = result;
  return result;
}

id sub_1A3E99EE8@<X0>(void *a1@<X8>)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = 0;
  v5.receiver = v3;
  v5.super_class = v1;
  result = objc_msgSendSuper2(&v5, sel_init);
  *a1 = result;
  return result;
}

void sub_1A3E99F3C(Class a1@<X1>, void **a2@<X0>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = *&v7[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue];
  v9 = objc_allocWithZone(a1);
  *&v9[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v8;
  v16.receiver = v9;
  v16.super_class = a1;
  v10 = [(objc_class *)&v16 init];
  v11 = *&v10[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue];

  v12 = *&v6[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] | v11;
  v13 = objc_allocWithZone(a1);
  *&v13[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v12;
  v15.receiver = v13;
  v15.super_class = a1;
  v14 = [(objc_class *)&v15 init];

  *a3 = v14;
}

void sub_1A3E9A000(Class a1@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = *&v7[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue];
  v9 = objc_allocWithZone(a1);
  *&v9[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v8;
  v16.receiver = v9;
  v16.super_class = a1;
  v10 = [(objc_class *)&v16 init];
  v11 = *&v10[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue];

  v12 = *(v6 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue) & v11;
  v13 = objc_allocWithZone(a1);
  *&v13[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v12;
  v15.receiver = v13;
  v15.super_class = a1;
  v14 = [(objc_class *)&v15 init];

  *a3 = v14;
}

void sub_1A3E9A0C0(Class a1@<X1>, void **a2@<X0>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = *&v7[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue];
  v9 = objc_allocWithZone(a1);
  *&v9[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v8;
  v16.receiver = v9;
  v16.super_class = a1;
  v10 = [(objc_class *)&v16 init];
  v11 = *&v10[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue];

  v12 = *&v6[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] ^ v11;
  v13 = objc_allocWithZone(a1);
  *&v13[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v12;
  v15.receiver = v13;
  v15.super_class = a1;
  v14 = [(objc_class *)&v15 init];

  *a3 = v14;
}

BOOL sub_1A3E9A184(char **a1, char **a2)
{
  v2 = *a2;
  v3 = sub_1A3E9A1B8(a1, *a2);

  return v3;
}

BOOL sub_1A3E9A1B8(char **a1, char *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue;
  v7 = *(*v2 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue);
  v8 = type metadata accessor for GenerativeStoryInWatchNextControllerChangeDescriptor();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v7;
  v23.receiver = v9;
  v23.super_class = v8;
  v10 = objc_msgSendSuper2(&v23, sel_init);
  v11 = *&v10[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue];

  v12 = *&a2[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue];
  v13 = objc_allocWithZone(v8);
  *&v13[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v12 & v11;
  v22.receiver = v13;
  v22.super_class = v8;
  v14 = objc_msgSendSuper2(&v22, sel_init);
  v15 = sub_1A524DBF4();
  if ((v15 & 1) == 0)
  {

    v16 = *&v5[v6];
    v14 = a2;

    v17 = objc_allocWithZone(v8);
    *&v17[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v16 | v12;
    v21.receiver = v17;
    v21.super_class = v8;
    v18 = objc_msgSendSuper2(&v21, sel_init);

    *v3 = v18;
  }

  *a1 = v14;
  return (v15 & 1) == 0;
}

id sub_1A3E9A2E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A3E9A310(*a1);
  *a2 = result;
  return result;
}

id sub_1A3E9A310(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue;
  v6 = *(*v1 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue);
  v7 = type metadata accessor for GenerativeStoryInWatchNextControllerChangeDescriptor();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v6;
  v33.receiver = v8;
  v33.super_class = v7;
  v9 = objc_msgSendSuper2(&v33, sel_init);
  v10 = *&v9[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue];

  v11 = *(a1 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue);
  v12 = objc_allocWithZone(v7);
  *&v12[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v11 & v10;
  v32.receiver = v12;
  v32.super_class = v7;
  v13 = objc_msgSendSuper2(&v32, sel_init);
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = 0;
  v31.receiver = v14;
  v31.super_class = v7;
  v15 = objc_msgSendSuper2(&v31, sel_init);
  v16 = sub_1A524DBF4();

  if (v16)
  {

    return 0;
  }

  else
  {
    v17 = *&v4[v5];
    v18 = objc_allocWithZone(v7);
    *&v18[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v17;
    v30.receiver = v18;
    v30.super_class = v7;
    v19 = objc_msgSendSuper2(&v30, sel_init);
    v20 = *&v19[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue];

    v21 = objc_allocWithZone(v7);
    *&v21[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v20 ^ v11;
    v29.receiver = v21;
    v29.super_class = v7;
    v22 = objc_msgSendSuper2(&v29, sel_init);
    v23 = *&v4[v5];

    v24 = *(v22 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue) & v23;
    v25 = objc_allocWithZone(v7);
    *&v25[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v24;
    v28.receiver = v25;
    v28.super_class = v7;
    v26 = objc_msgSendSuper2(&v28, sel_init);

    *v2 = v26;
  }

  return v13;
}

void sub_1A3E9A4B4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1A3E9A4F4(*a1);

  *a2 = v4;
}

id sub_1A3E9A4F4(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue;
  v5 = *(*v1 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue);
  v6 = type metadata accessor for GenerativeStoryInWatchNextControllerChangeDescriptor();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v5;
  v21.receiver = v7;
  v21.super_class = v6;
  v8 = objc_msgSendSuper2(&v21, sel_init);
  v9 = *&v8[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue];

  v10 = *(a1 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue);
  v11 = objc_allocWithZone(v6);
  *&v11[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v10 & v9;
  v20.receiver = v11;
  v20.super_class = v6;
  v12 = objc_msgSendSuper2(&v20, sel_init);
  v13 = *&v3[v4];

  v14 = objc_allocWithZone(v6);
  *&v14[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v13 | v10;
  v19.receiver = v14;
  v19.super_class = v6;
  *v1 = objc_msgSendSuper2(&v19, sel_init);
  v15 = objc_allocWithZone(v6);
  *&v15[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = 0;
  v18.receiver = v15;
  v18.super_class = v6;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  LOBYTE(v6) = sub_1A524DBF4();

  if (v6)
  {

    return 0;
  }

  return v12;
}

void sub_1A3E9A62C(void **a1, objc_class *a2)
{
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue);

  v6 = *&v4[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] | v5;
  v7 = objc_allocWithZone(a2);
  *&v7[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v6;
  v9.receiver = v7;
  v9.super_class = a2;
  v8 = objc_msgSendSuper2(&v9, sel_init);

  *v2 = v8;
}

id sub_1A3E9A6B8(uint64_t *a1, objc_class *a2)
{
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue);

  v6 = *(v4 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue) & v5;
  v7 = objc_allocWithZone(a2);
  *&v7[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v6;
  v9.receiver = v7;
  v9.super_class = a2;
  result = objc_msgSendSuper2(&v9, sel_init);
  *v2 = result;
  return result;
}

void sub_1A3E9A73C(void **a1, objc_class *a2)
{
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue);

  v6 = *&v4[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] ^ v5;
  v7 = objc_allocWithZone(a2);
  *&v7[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v6;
  v9.receiver = v7;
  v9.super_class = a2;
  v8 = objc_msgSendSuper2(&v9, sel_init);

  *v2 = v8;
}

void sub_1A3E9A7C8(Class a1@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue;
  v9 = *(*v3 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue);
  v10 = objc_allocWithZone(a1);
  *&v10[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v9;
  v26.receiver = v10;
  v26.super_class = a1;
  v11 = [(objc_class *)&v26 init];
  v12 = *&v11[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue];

  v13 = *(v6 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue) ^ v12;
  v14 = objc_allocWithZone(a1);
  *&v14[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v13;
  v25.receiver = v14;
  v25.super_class = a1;
  v15 = [(objc_class *)&v25 init];
  v16 = *&v7[v8];
  v17 = objc_allocWithZone(a1);
  *&v17[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v16;
  v24.receiver = v17;
  v24.super_class = a1;
  v18 = [(objc_class *)&v24 init];
  v19 = *&v18[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue];

  v20 = *(v15 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue) & v19;
  v21 = objc_allocWithZone(a1);
  *&v21[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v20;
  v23.receiver = v21;
  v23.super_class = a1;
  v22 = [(objc_class *)&v23 init];

  *a3 = v22;
}

uint64_t sub_1A3E9A8EC(uint64_t *a1, Class a2)
{
  v3 = a2;
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue);
  v6 = objc_allocWithZone(a2);
  *&v6[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v5;
  v14.receiver = v6;
  v14.super_class = v3;
  v7 = objc_msgSendSuper2(&v14, sel_init);
  v8 = *&v7[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue];

  v9 = *(v4 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue) & v8;
  v10 = objc_allocWithZone(v3);
  *&v10[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v9;
  v13.receiver = v10;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  LOBYTE(v3) = sub_1A524DBF4();

  return v3 & 1;
}

uint64_t sub_1A3E9A9DC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue);
  v6 = objc_allocWithZone(ObjectType);
  *&v6[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v5;
  v17.receiver = v6;
  v17.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v17, sel_init);
  v8 = *&v7[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue];

  v9 = *(a1 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue) & v8;
  v10 = objc_allocWithZone(ObjectType);
  *&v10[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v9;
  v16.receiver = v10;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, sel_init);
  v12 = objc_allocWithZone(ObjectType);
  *&v12[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = 0;
  v15.receiver = v12;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  LOBYTE(ObjectType) = sub_1A524DBF4();

  return ObjectType & 1;
}

uint64_t sub_1A3E9AAD0(void *a1, Class a2)
{
  v3 = a2;
  v4 = *v2;
  v5 = *(*a1 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue);
  v6 = objc_allocWithZone(a2);
  *&v6[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v5;
  v14.receiver = v6;
  v14.super_class = v3;
  v7 = objc_msgSendSuper2(&v14, sel_init);
  v8 = *&v7[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue];

  v9 = *(v4 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue) & v8;
  v10 = objc_allocWithZone(v3);
  *&v10[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v9;
  v13.receiver = v10;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  LOBYTE(v3) = sub_1A524DBF4();

  return v3 & 1;
}

uint64_t sub_1A3E9AB94(objc_class *a1)
{
  v1 = a1;
  v2 = objc_allocWithZone(a1);
  *&v2[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = 0;
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = [(objc_class *)&v5 init];
  LOBYTE(v1) = sub_1A524DBF4();

  return v1 & 1;
}

void sub_1A3E9AC28(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue;
  v5 = *(*v1 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue);
  v6 = type metadata accessor for GenerativeStoryInWatchNextControllerChangeDescriptor();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v5;
  v19.receiver = v7;
  v19.super_class = v6;
  v8 = objc_msgSendSuper2(&v19, sel_init);
  v9 = *&v8[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue];

  v10 = *(a1 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue) ^ v9;
  v11 = objc_allocWithZone(v6);
  *&v11[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v10;
  v18.receiver = v11;
  v18.super_class = v6;
  v12 = objc_msgSendSuper2(&v18, sel_init);
  v13 = *&v3[v4];

  v14 = *(v12 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue) & v13;
  v15 = objc_allocWithZone(v6);
  *&v15[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v14;
  v17.receiver = v15;
  v17.super_class = v6;
  v16 = objc_msgSendSuper2(&v17, sel_init);

  *v1 = v16;
}

uint64_t sub_1A3E9AD34@<X0>(unint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = sub_1A3E9D5E8(a1);

  *a2 = v3;
  return result;
}

id sub_1A3E9ADB8()
{
  v1 = OBJC_IVAR___PXGenerativeStoryInWatchNextController____lazy_storage___layout;
  v2 = *(v0 + OBJC_IVAR___PXGenerativeStoryInWatchNextController____lazy_storage___layout);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PXGenerativeStoryInWatchNextController____lazy_storage___layout);
  }

  else
  {
    v4 = [objc_allocWithZone(off_1E77216B8) init];
    [v4 setDelegate_];
    [v4 setStyle_];
    v5 = sub_1A3E9AEBC();
    [v4 setContentView_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1A3E9AEBC()
{
  v1 = OBJC_IVAR___PXGenerativeStoryInWatchNextController____lazy_storage___memoryCardView;
  v2 = *(v0 + OBJC_IVAR___PXGenerativeStoryInWatchNextController____lazy_storage___memoryCardView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PXGenerativeStoryInWatchNextController____lazy_storage___memoryCardView);
  }

  else
  {
    ObjectType = swift_getObjectType();
    sub_1A524CC54();
    v10[2] = v0;
    v10[3] = ObjectType;
    v5 = v0;
    v6 = sub_1A3E9B0B8(sub_1A3E9DA2C, v10, "PhotosUICore/GenerativeStoryInWatchNextController.swift", 55);
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_1A3E9B0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A524CC44();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1A3C75D98(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000003FLL, 0x80000001A53B42C0);
  v12 = sub_1A524EEF4();
  MEMORY[0x1A5907B60](v12);

  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A3E9B270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A524CC44();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1A3C75D98(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000003FLL, 0x80000001A53B42C0);
  v12 = sub_1A524EEF4();
  MEMORY[0x1A5907B60](v12);

  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A3E9B5C0()
{
  v1 = OBJC_IVAR___PXGenerativeStoryInWatchNextController____lazy_storage___availabilityManager;
  if (*(v0 + OBJC_IVAR___PXGenerativeStoryInWatchNextController____lazy_storage___availabilityManager))
  {
    v2 = *(v0 + OBJC_IVAR___PXGenerativeStoryInWatchNextController____lazy_storage___availabilityManager);
  }

  else
  {
    type metadata accessor for LemonadeMemoriesCreationAvailabilityManager();
    v2 = sub_1A3C3A660(*(v0 + OBJC_IVAR___PXGenerativeStoryInWatchNextController_photoLibrary));
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1A3E9B640(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1A3E9DA58();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32[-v10];
  v12 = type metadata accessor for LemonadeFeedSpec();
  v13 = LemonadeFeedSpec.__allocating_init()();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v15 = Strong;
  v16 = [Strong presentingViewController];

  Strong = swift_unknownObjectRelease();
  if (!v16)
  {
    goto LABEL_5;
  }

  v17 = [v16 view];

  if (v17)
  {
    [v17 bounds];
    v19 = v18;
    v21 = v20;

    v22 = sub_1A3E9DE94(&qword_1EB13C680, 255, type metadata accessor for LemonadeFeedSpec);
    LemonadeMutableContainerSizeSpecsProviderModel.containerSafeAreaInsets.getter(v12, v22);
    v24 = v23;
    v26 = v25;
    v35.top = v27;
    v35.left = v28;
    v35.bottom = v24;
    v35.right = v26;
    LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v21, v19), v35);
LABEL_5:
    v34 = v13;
    MEMORY[0x1EEE9AC00](Strong);
    *&v32[-16] = a1;
    *&v32[-8] = a2;
    sub_1A3E9DB30(0, &qword_1EB12D960, sub_1A3E9DB08);
    sub_1A3E9DB94();

    _s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v33);
    LemonadeSpecsProviderView.init(model:presentationContext:content:)(&v34, &v33, sub_1A3E9DCEC, v12, v11);
    sub_1A3E9DD94(v11, v8, sub_1A3E9DA58);
    sub_1A3E9DDFC();
    v30 = objc_allocWithZone(v29);
    v31 = sub_1A52485F4();
    [v31 setUserInteractionEnabled_];

    sub_1A3E9D17C(v11, sub_1A3E9DA58);
    *a3 = v31;
    return;
  }

  __break(1u);
}

id sub_1A3E9B994(NSObject *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1A3C561C0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v39 - v5;
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = OBJC_IVAR___PXGenerativeStoryInWatchNextController____lazy_storage___layout;
  *&v1[OBJC_IVAR___PXGenerativeStoryInWatchNextController____lazy_storage___layout] = 0;
  v9 = &v1[OBJC_IVAR___PXGenerativeStoryInWatchNextController_size];
  *v9 = 0;
  v9[1] = 0;
  v1[OBJC_IVAR___PXGenerativeStoryInWatchNextController_wantsMemoryCreationCard] = 0;
  v1[OBJC_IVAR___PXGenerativeStoryInWatchNextController_wantsMemoryCreationButton] = 0;
  v10 = OBJC_IVAR___PXGenerativeStoryInWatchNextController_storyViewModel;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR___PXGenerativeStoryInWatchNextController_logger;
  v12 = sub_1A3C4A780();
  v45 = v6;
  v46 = v7;
  v42 = *(v7 + 16);
  v42(&v1[v11], v12, v6);
  v13 = OBJC_IVAR___PXGenerativeStoryInWatchNextController____lazy_storage___availabilityManager;
  *(v2 + OBJC_IVAR___PXGenerativeStoryInWatchNextController____lazy_storage___availabilityManager) = 0;
  v14 = OBJC_IVAR___PXGenerativeStoryInWatchNextController____lazy_storage___memoryCardView;
  *(v2 + OBJC_IVAR___PXGenerativeStoryInWatchNextController____lazy_storage___memoryCardView) = 0;
  v15 = a1;
  v16 = [a1 mainConfiguration];
  v17 = [v16 photoLibrary];

  if (v17)
  {
    *(v2 + OBJC_IVAR___PXGenerativeStoryInWatchNextController_photoLibrary) = v17;
    swift_unknownObjectWeakAssign();
    v49.receiver = v2;
    v49.super_class = ObjectType;
    v18 = v17;
    v19 = [&v49 init];
    [v15 registerChangeObserver:v19 context:0];
    v20 = sub_1A524CCB4();
    v21 = v47;
    (*(*(v20 - 8) + 56))(v47, 1, 1, v20);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v22;
    sub_1A3D4D930(0, 0, v21, &unk_1A5303A28, v23);
  }

  else
  {
    v39 = v13;
    v40 = v14;
    v41 = v11;
    v47 = v10;
    v24 = v15;
    v26 = v43;
    v25 = v44;
    v27 = v45;
    v42(v44, v12, v45);
    v28 = sub_1A5246F04();
    v29 = sub_1A524D244();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1A3C1C000, v28, v29, "PXStoryConfiguration must have a reference to photoLibrary", v30, 2u);
      MEMORY[0x1A590EEC0](v30, -1, -1);
      v31 = v24;
    }

    else
    {
      v31 = v28;
      v28 = v24;
    }

    v32 = v47;
    v33 = v26;
    v34 = v46;
    v36 = v40;
    v35 = v41;

    v37 = *(v34 + 8);
    v37(v25, v27);

    MEMORY[0x1A590F020](&v32[v2]);
    v37(v2 + v35, v27);

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v19;
}

uint64_t sub_1A3E9BE50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = sub_1A3E9B5C0();
    v0[7] = v2;
    v3 = *v2 + 632;
    v0[8] = *v3;
    v0[9] = v3 & 0xFFFFFFFFFFFFLL | 0x3AB8000000000000;
    sub_1A524CC54();
    v0[10] = sub_1A524CC44();
    v5 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A3E9BF6C, v5, v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1A3E9BF6C()
{
  v1 = *(v0 + 64);

  v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A3E9BFEC, 0, 0);
}

uint64_t sub_1A3E9BFEC()
{
  v1 = *(v0 + 48);
  *(swift_task_alloc() + 16) = v1;
  *(swift_task_alloc() + 16) = v1;
  sub_1A52415B4();

  v2 = *(v0 + 8);

  return v2();
}

void sub_1A3E9C0EC()
{
  v1 = v0;
  sub_1A3C561C0(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v51 - v3;
  v5 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = v51 - v9;
  v10 = sub_1A5244854();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v54 = (v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = OBJC_IVAR___PXGenerativeStoryInWatchNextController_logger;
  v17 = sub_1A5246F04();
  v18 = sub_1A524D224();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v52 = v13;
    v20 = v4;
    v21 = v1;
    v22 = v16;
    v23 = v7;
    v24 = v19;
    *v19 = 0;
    _os_log_impl(&dword_1A3C1C000, v17, v18, "Will present Generative Memories from Watch Next", v19, 2u);
    v25 = v24;
    v7 = v23;
    v16 = v22;
    v1 = v21;
    v4 = v20;
    v13 = v52;
    MEMORY[0x1A590EEC0](v25, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v27 = Strong, v28 = [Strong presentingViewController], v27, swift_unknownObjectRelease(), v28))
  {
    v51[1] = v16;
    v29 = *(v1 + OBJC_IVAR___PXGenerativeStoryInWatchNextController_photoLibrary);
    (*(v11 + 104))(v13, *MEMORY[0x1E69C1028], v10);
    v30 = v29;
    v31 = v7;
    v32 = sub_1A3C5A374();
    v33 = v30;
    v34 = v32 & 1;
    v35 = v54;
    LemonadeGenerativeMemoriesConfiguration.init(photoLibrary:memoryCreationAttributedText:startCreation:suggestionViewModel:transitionType:generationEntryPoint:)(v33, 0, v34, 0, 0, v13, v54);
    v36 = v53;
    sub_1A3E9DD94(v35, v53, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
    swift_storeEnumTagMultiPayload();
    v52 = v31;
    swift_storeEnumTagMultiPayload();
    v37 = [v28 presentingViewController];
    if (!v37)
    {
      v37 = v28;
    }

    type metadata accessor for LemonadeNavigationContext(0);
    v38 = type metadata accessor for LemonadeDetailsContext();
    v39 = *(*(v38 - 8) + 56);
    v39(v4, 1, 1, v38);
    type metadata accessor for LemonadePhotoLibraryContext();
    v40 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v33, 0, 0);
    j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v55);
    v41 = sub_1A3C799F0(v52, 0, 0, v37, v4, &v55, v40, 2);
    v39(v4, 1, 1, v38);
    LOBYTE(v40) = sub_1A3EE99E0(v36, v41, v4, 0, 1, 0, 0, 0, 0);
    sub_1A3E9D8F4(v4, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext);
    if (v40)
    {
      v42 = [v28 navigationController];
      if (v42)
      {
        v43 = v42;
        do
        {
          [v43 _setPreferredTransition_];
          v44 = [v43 navigationController];

          v43 = v44;
        }

        while (v44);
      }
    }

    else
    {
      v48 = sub_1A5246F04();
      v49 = sub_1A524D264();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1A3C1C000, v48, v49, "Can't open Memory Creation from Watch Next", v50, 2u);
        MEMORY[0x1A590EEC0](v50, -1, -1);
      }
    }

    sub_1A3E9D17C(v36, type metadata accessor for LemonadeNavigationDestination);
    sub_1A3E9D17C(v54, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
  }

  else
  {
    v54 = sub_1A5246F04();
    v45 = sub_1A524D264();
    if (os_log_type_enabled(v54, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1A3C1C000, v54, v45, "Generative Memories in Watch Next must have container controller.", v46, 2u);
      MEMORY[0x1A590EEC0](v46, -1, -1);
    }

    v47 = v54;
  }
}

void sub_1A3E9C7C4(char a1, char a2)
{
  v4 = sub_1A5246F04();
  v5 = sub_1A524D224();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109376;
    *(v6 + 4) = a1 & 1;
    *(v6 + 8) = 1024;
    *(v6 + 10) = a2 & 1;
    _os_log_impl(&dword_1A3C1C000, v4, v5, "Watch Next: set memory card visible: %{BOOL}d, animated: %{BOOL}d", v6, 0xEu);
    MEMORY[0x1A590EEC0](v6, -1, -1);
  }

  if (a2)
  {
    v7 = 0.2;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = objc_opt_self();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1 & 1;
  v12[4] = sub_1A3E9D1DC;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1A3C2E0D0;
  v12[3] = &block_descriptor_36;
  v11 = _Block_copy(v12);

  [v8 animateWithDuration:0 delay:v11 options:0 animations:v7 completion:0.0];
  _Block_release(v11);
}

void sub_1A3E9CA00()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong mainAssetCollection];
    if (v4)
    {
      v5 = [v4 px_isMemory];
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0;
    }

    v8 = [v3 mainConfiguration];
    v9 = [v8 parentConfiguration];

    if (v9)
    {
    }

    v10 = [v3 mainConfiguration];
    v11 = [v10 launchType];

    if (v11)
    {
      v12 = sub_1A524C674();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v15 = static PhotosNavigationSourceInfo.originatesFromWidget(launchType:)(v12, v14);

    v16 = *sub_1A3E9B5C0();
    (*(v16 + 312))(aBlock);

    v24 = 1;
    v17 = v5 & static LemonadeMemoriesCreationAvailabilityManager.CardVisibilityState.== infix(_:_:)(aBlock, &v24) & v15 & (v9 == 0);
    v18 = objc_opt_self();
    v7 = [v18 isMemoryCreationCardInWatchNextEnabled] & v17;
    v6 = [v18 isMemoryCreationButtonInWatchNextEnabled] & v17;
    v19 = sub_1A5246F04();
    v20 = sub_1A524D224();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v21 = 136316930;
      sub_1A3C2EF94();
    }
  }

  else
  {
    v6 = 0;
    LOBYTE(v7) = 0;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v7;
  *(v22 + 17) = v6;
  aBlock[4] = sub_1A3E9D7F0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3DC72D4;
  aBlock[3] = &block_descriptor_23_1;
  v23 = _Block_copy(aBlock);

  [v1 performChanges_];
  _Block_release(v23);
}

void sub_1A3E9CE88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A3E9CA00();
    MEMORY[0x1EEE9AC00](v2);
    MEMORY[0x1EEE9AC00](v3);
    sub_1A52415B4();
  }
}

uint64_t sub_1A3E9D0E8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A3E9BE30(v3, v4, v5, v2);
}

uint64_t sub_1A3E9D17C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A3E9D1DC()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1A3E9AEBC();
    v5 = v4;
    v6 = 0.0;
    if (v1)
    {
      v6 = 1.0;
    }

    [v4 setAlpha_];

    v7 = *&v3[OBJC_IVAR___PXGenerativeStoryInWatchNextController____lazy_storage___memoryCardView];
    v8 = v7;
    if (v1)
    {
      v9 = xmmword_1A5303A10;
      v10 = xmmword_1A53028A0;
      v11 = 0uLL;
    }

    else
    {
      [v7 bounds];
      v14.a = 1.0;
      v14.b = 0.0;
      v14.c = 0.0;
      v14.d = 1.0;
      v14.tx = 0.0;
      v14.ty = 0.0;
      CGAffineTransformTranslate(&v13, &v14, v12 * -0.5, 0.0);
      v14 = v13;
      CGAffineTransformScale(&v13, &v14, 0.9, 0.9);
      v10 = *&v13.a;
      v9 = *&v13.c;
      v11 = *&v13.tx;
    }

    *&v14.a = v10;
    *&v14.c = v9;
    *&v14.tx = v11;
    [v8 setTransform_];
  }
}

uint64_t type metadata accessor for GenerativeStoryInWatchNextController()
{
  result = qword_1EB160190;
  if (!qword_1EB160190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3E9D4B0()
{
  result = sub_1A5246F24();
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

uint64_t sub_1A3E9D57C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR___PXGenerativeStoryInWatchNextController_wantsMemoryCreationCard;
  result = swift_beginAccess();
  v6 = 1;
  if (!*(v3 + v4))
  {
    v6 = -1;
  }

  *a1 = v6;
  return result;
}

char *sub_1A3E9D5E8(unint64_t a1)
{
  v2 = type metadata accessor for GenerativeStoryInWatchNextControllerChangeDescriptor();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = 0;
  v29.receiver = v3;
  v29.super_class = v2;
  v25 = objc_msgSendSuper2(&v29, sel_init);
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v24 = a1 & 0xFFFFFFFFFFFFFF8;
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1A59097F0](v5, a1);
      }

      else
      {
        if (v5 >= *(v24 + 16))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue;
      v10 = *&v25[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue];
      v11 = objc_allocWithZone(v2);
      *&v11[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v10;
      v28.receiver = v11;
      v28.super_class = v2;
      v12 = objc_msgSendSuper2(&v28, sel_init);
      v13 = *&v12[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue];

      v14 = OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue;
      v15 = *(v7 + OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue) & v13;
      v16 = objc_allocWithZone(v2);
      *&v16[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v15;
      v27.receiver = v16;
      v27.super_class = v2;
      v17 = objc_msgSendSuper2(&v27, sel_init);
      v18 = sub_1A524DBF4();

      if (v18)
      {

        ++v5;
        if (v8 == i)
        {
          return v25;
        }
      }

      else
      {
        v19 = *&v25[v9];
        v20 = v7;

        v21 = *(v7 + v14) | v19;
        v22 = objc_allocWithZone(v2);
        *&v22[OBJC_IVAR___PXGenerativeStoryInWatchNextControllerChangeDescriptor_rawValue] = v21;
        v26.receiver = v22;
        v26.super_class = v2;
        v25 = objc_msgSendSuper2(&v26, sel_init);

        v5 = v8;
        if (v8 == i)
        {
          return v25;
        }
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  return v25;
}

void sub_1A3E9D7F0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  sub_1A3C2F0BC(a1, v8);
  type metadata accessor for GenerativeStoryInWatchNextController();
  if (swift_dynamicCast())
  {
    v4 = OBJC_IVAR___PXGenerativeStoryInWatchNextController_wantsMemoryCreationCard;
    swift_beginAccess();
    v7[v4] = v2;
    v5 = OBJC_IVAR___PXGenerativeStoryInWatchNextController_wantsMemoryCreationButton;
    swift_beginAccess();
    v6 = v7[v5];
    v7[v5] = v3;
    if (v3 != v6)
    {
      if (qword_1EB19A0D0 != -1)
      {
        swift_once();
      }

      [v7 signalChange_];
    }
  }
}

uint64_t sub_1A3E9D8F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A3C561C0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3E9D960()
{
  v0 = sub_1A3E9B5C0();
  (*(*v0 + 312))(v0);
}

void (*sub_1A3E9D9D0())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1A3E9D958;
}

void sub_1A3E9DA58()
{
  if (!qword_1EB12D958)
  {
    type metadata accessor for LemonadeFeedSpec();
    sub_1A3E9DB30(255, &qword_1EB12D960, sub_1A3E9DB08);
    sub_1A3E9DB94();
    v0 = type metadata accessor for LemonadeSpecsProviderView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D958);
    }
  }
}

void sub_1A3E9DB30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1A3E9DB94()
{
  result = qword_1EB12D970;
  if (!qword_1EB12D970)
  {
    sub_1A3E9DB30(255, &qword_1EB12D960, sub_1A3E9DB08);
    sub_1A3E9DC38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D970);
  }

  return result;
}

unint64_t sub_1A3E9DC38()
{
  result = qword_1EB12D978;
  if (!qword_1EB12D978)
  {
    sub_1A3E9DB08(255);
    sub_1A3E9DE94(&qword_1EB125350, 255, type metadata accessor for GenerativeStoryEntryCardCommonView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D978);
  }

  return result;
}

void sub_1A3E9DCEC(uint64_t a1@<X8>)
{
  sub_1A44883B4(*(*(v1 + 16) + OBJC_IVAR___PXGenerativeStoryInWatchNextController_photoLibrary), *(v1 + 24), 2, a1);
  v3 = sub_1A5248874();
  v4 = sub_1A524A064();
  sub_1A3E9DB08(0);
  v6 = a1 + *(v5 + 36);
  *v6 = v3;
  *(v6 + 8) = v4;
  sub_1A3E9DB30(0, &qword_1EB12D960, sub_1A3E9DB08);
  *(a1 + *(v7 + 36)) = 0;
}

uint64_t sub_1A3E9DD94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A3E9DDFC()
{
  if (!qword_1EB12D988)
  {
    sub_1A3E9DA58();
    sub_1A3E9DE94(&qword_1EB12D990, 255, sub_1A3E9DA58);
    v0 = sub_1A5248614();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D988);
    }
  }
}

uint64_t sub_1A3E9DE94(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t LemonadeSearchViewModel.searchIsActive.setter(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB12A068, type metadata accessor for LemonadeSearchViewModel);
  sub_1A52415D4();

  if (*(v1 + 32) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A52415C4();
  }

  return result;
}

uint64_t _s12PhotosUICore23LemonadeSearchViewModelC14searchIsActiveSbvg_0()
{
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB12A068, type metadata accessor for LemonadeSearchViewModel);
  sub_1A52415D4();

  return *(v0 + 32);
}

uint64_t sub_1A3E9E124(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C30828(&qword_1EB12A068, type metadata accessor for LemonadeSearchViewModel);
    sub_1A52415C4();
  }

  return result;
}

void (*LemonadeSearchViewModel.searchIsActive.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC12PhotosUICore23LemonadeSearchViewModel___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_1A3C30828(&qword_1EB12A068, type metadata accessor for LemonadeSearchViewModel);
  sub_1A52415D4();

  *(v4 + 32) = *(v1 + 32);
  return sub_1A3E9E32C;
}

void sub_1A3E9E32C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  swift_getKeyPath();
  v5 = v3[1];
  *v3 = v5;
  sub_1A52415D4();

  if (a2)
  {
    if ((v4 ^ *(v5 + 32)))
    {
      goto LABEL_5;
    }
  }

  else if ((v4 ^ *(v5 + 32)))
  {
LABEL_5:
    v6 = v3[1];
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *v3 = v6;
    sub_1A52415C4();
  }

  free(v3);
}

id LemonadeSearchViewModel.searchQueryManager.getter()
{
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB12A068, type metadata accessor for LemonadeSearchViewModel);
  sub_1A52415D4();

  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = sub_1A3C78890();
  }

  v2 = *(v1 + 32);

  v3 = v2;

  return v3;
}

uint64_t LemonadeSearchViewModel.suggestedQueryFetcher.getter()
{
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB12A068, type metadata accessor for LemonadeSearchViewModel);
  sub_1A52415D4();

  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = sub_1A3C78890();
  }

  return v1;
}

uint64_t sub_1A3E9E658()
{
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB12A068, type metadata accessor for LemonadeSearchViewModel);
  sub_1A52415D4();
}

uint64_t LemonadeSearchViewModel.init(photoLibrary:)(void *a1)
{
  type metadata accessor for LemonadeActiveSearchUpdater();
  *(v1 + 16) = LemonadeActiveSearchUpdater.__allocating_init()();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  sub_1A5241604();
  *(v1 + 24) = a1;
  v3 = a1;
  sub_1A3C78890();

  return v1;
}

uint64_t sub_1A3E9E770@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB12A068, type metadata accessor for LemonadeSearchViewModel);
  sub_1A52415D4();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1A3E9E840@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB12A068, type metadata accessor for LemonadeSearchViewModel);
  sub_1A52415D4();

  *a2 = *(v3 + 40);
}

uint64_t sub_1A3E9E8EC()
{
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB12A068, type metadata accessor for LemonadeSearchViewModel);
  sub_1A52415C4();
}

uint64_t LemonadeSearchViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore23LemonadeSearchViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LemonadeSearchViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore23LemonadeSearchViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t LemonadeActiveSearchViewModel.isEditing.getter()
{
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  return *(v0 + 16);
}

uint64_t sub_1A3E9EB98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  *a2 = *(v3 + 16);
  return result;
}

void LemonadeActiveSearchViewModel.isEditing.setter(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + 16);
  if (v3 == v2)
  {
    *(v1 + 16) = v2;

    sub_1A3C30DA0(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
    sub_1A52415C4();
  }
}

uint64_t (*LemonadeActiveSearchViewModel.isEditing.modify(void *a1))(char *a1)
{
  a1[1] = v1;
  swift_getKeyPath();
  a1[2] = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel___observationRegistrar;
  *a1 = v1;
  a1[3] = sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  *a1 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  *a1 = *(v1 + 16);
  return sub_1A3E9EEA8;
}

uint64_t sub_1A3E9EEA8(char *a1)
{
  v2 = *(a1 + 1);
  v3 = *a1;
  v4 = *(v2 + 16);
  *(v2 + 16) = v3;
  sub_1A3C30DA0(v4);
  *a1 = v2;
  swift_getKeyPath();
  sub_1A52415E4();
}

uint64_t sub_1A3E9EF2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  result = swift_beginAccess();
  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1A3E9F010()
{
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 18);
}

uint64_t sub_1A3E9F0C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  result = swift_beginAccess();
  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_1A3E9F1A8(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 18) == v2)
  {
    *(v1 + 18) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
    sub_1A52415C4();
  }

  return result;
}

char *sub_1A3E9F2CC()
{
  v1 = v0;
  swift_getKeyPath();
  v11 = v0;
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  swift_beginAccess();
  v2 = *(v0 + 64);
  v3 = sub_1A3C30BC0();
  v5 = v4;

  swift_getKeyPath();
  if (v5)
  {
    sub_1A52415D4();

    v6 = *(v1 + 64);

    return v6;
  }

  else
  {
    sub_1A52415D4();

    v8 = *(v1 + 64);
    swift_getKeyPath();
    v9 = v8;
    sub_1A52415D4();

    result = [*(v1 + 64) length];
    if (__OFSUB__(result, v3))
    {
      __break(1u);
    }

    else
    {
      v10 = [v9 attributedSubstringFromRange_];

      return v10;
    }
  }

  return result;
}

id sub_1A3E9F4B0(uint64_t a1, uint64_t a2)
{
  sub_1A3EA72B4(a1, &v15, &qword_1EB129AC0, sub_1A3C295A0);
  if (!v16)
  {
    sub_1A3C33120(&v15, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
    goto LABEL_5;
  }

  sub_1A3C34460(&v15, v12);
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  if ((*(v4 + 16))(v3, v4))
  {
    __swift_destroy_boxed_opaque_existential_0(v12);
LABEL_5:

    return v11;
  }

  v6 = v13;
  v7 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v7 + 32))(v6, v7);
  if (a2)
  {
    sub_1A3EA7AB4(0, &qword_1EB120260, sub_1A3C8BC40, MEMORY[0x1E69E6F90]);
    *(swift_initStackObject() + 16) = xmmword_1A52F8E10;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v8 = sub_1A524C634();
  v9 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithString:v8 attributes:0];

  [v9 appendAttributedString_];
  [v9 copy];
  sub_1A524E0B4();
  swift_unknownObjectRelease();

  sub_1A3C52C70(0, &qword_1EB126A40);
  swift_dynamicCast();
  v10 = v17;

  __swift_destroy_boxed_opaque_existential_0(v12);
  return v10;
}

void LemonadeActiveSearchViewModel.searchText.setter(id a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 64);
  sub_1A3C52C70(0, &qword_1EB126A40);
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = *(v2 + 64);
    *(v2 + 64) = a1;
    a1 = a1;

    sub_1A3EA0500();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
    sub_1A52415C4();
  }
}

uint64_t sub_1A3E9F9FC(uint64_t a1)
{
  v2 = v1;
  v17 = a1;
  v4 = sub_1A52429C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1A3EA7AB4(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18[-1] - v10;
  swift_beginAccess();
  sub_1A3C9B8B0(a1, v2 + 24, &qword_1EB129AC0, sub_1A3C295A0);
  swift_endAccess();
  v12 = type metadata accessor for PhotosSearchResults(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1A3C9B1B0(v11);
  v13 = sub_1A3E9F2CC();
  swift_getKeyPath();
  v18[0] = v2;
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  sub_1A3EA72B4(v2 + 24, v18, &qword_1EB129AC0, sub_1A3C295A0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69C2070], v4);
  v14 = sub_1A52429B4();
  (*(v5 + 8))(v7, v4);
  v15 = sub_1A3E9F4B0(v18, v14);

  sub_1A3C33120(v18, &qword_1EB129AC0, sub_1A3C295A0, v8, sub_1A3EA7AB4);
  LemonadeActiveSearchViewModel.searchText.setter(v15);
  return sub_1A3C33120(v17, &qword_1EB129AC0, sub_1A3C295A0, v8, sub_1A3EA7AB4);
}

void (*sub_1A3E9FD14(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = sub_1A52429C4();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[12] = v8;
  sub_1A3EA7AB4(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v5[13] = v11;
  swift_beginAccess();
  return sub_1A3E9FE60;
}

void sub_1A3E9FE60(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v5 = v3[12];
  v4 = v3[13];
  if ((a2 & 1) == 0)
  {
    v7 = v3[10];
    v6 = v3[11];
    v8 = v3[9];
    v9 = type metadata accessor for PhotosSearchResults(0);
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    sub_1A3C9B1B0(v4);
    v10 = sub_1A3E9F2CC();
    swift_getKeyPath();
    v3[8] = v8;
    sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
    sub_1A52415D4();

    sub_1A3EA72B4(v8 + 24, v3, &qword_1EB129AC0, sub_1A3C295A0);
    v11 = v7;
    (*(v6 + 104))(v5, *MEMORY[0x1E69C2070], v7);
    v12 = sub_1A52429B4();
    (*(v6 + 8))(v5, v11);
    v13 = sub_1A3E9F4B0(v3, v12);

    sub_1A3C33120(v3, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
    LemonadeActiveSearchViewModel.searchText.setter(v13);
  }

  free(v4);
  free(v5);

  free(v3);
}

uint64_t sub_1A3EA0090@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  swift_beginAccess();
  return sub_1A3EA72B4(v3 + 24, a2, &qword_1EB129AC0, sub_1A3C295A0);
}

uint64_t sub_1A3EA016C(uint64_t a1)
{
  sub_1A3EA72B4(a1, v2, &qword_1EB129AC0, sub_1A3C295A0);
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415C4();

  return sub_1A3C33120(v2, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
}

uint64_t LemonadeActiveSearchViewModel.container.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415C4();

  return sub_1A3C33120(a1, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
}

void (*LemonadeActiveSearchViewModel.container.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  v4[7] = sub_1A3E9FD14(v4);
  return sub_1A3EA04F4;
}

void sub_1A3EA0500()
{
  v1 = v0;
  swift_getKeyPath();
  v33[0] = v0;
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  swift_beginAccess();
  sub_1A3EA72B4(v0 + 24, &v30, &qword_1EB129AC0, sub_1A3C295A0);
  if (*(&v31 + 1))
  {
    sub_1A3C34460(&v30, v33);
    v2 = v34;
    v3 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    if (((*(v3 + 16))(v2, v3) & 1) == 0)
    {
      swift_getKeyPath();
      *&v30 = v0;
      sub_1A52415D4();

      swift_beginAccess();
      v4 = *(v0 + 64);
      sub_1A3C30BC0();
      v6 = v5;

      if (v6)
      {
        v32 = 0;
        v30 = 0u;
        v31 = 0u;
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v29 = v1;
        sub_1A52415C4();

        sub_1A3C33120(&v30, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  else
  {
    sub_1A3C33120(&v30, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
  }

  v8 = objc_opt_self();
  v9 = &selRef_setYearsHeadersFadeoutMinimumAlpha_;
  v10 = [v8 sharedSession];
  swift_getKeyPath();
  v33[0] = v1;
  sub_1A52415D4();

  swift_beginAccess();
  v11 = *(v1 + 64);
  swift_getKeyPath();
  v33[0] = v1;
  v12 = v11;
  sub_1A52415D4();

  sub_1A3EA72B4(v1 + 24, v33, &qword_1EB129AC0, sub_1A3C295A0);
  v13 = v34;
  sub_1A3C33120(v33, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
  if (v13)
  {
    swift_getKeyPath();
    v33[0] = v1;
    sub_1A52415D4();

    sub_1A3EA72B4(v1 + 24, v33, &qword_1EB129AC0, sub_1A3C295A0);
    v14 = v34;
    if (v34)
    {
      v28 = v8;
      v15 = v35;
      v16 = __swift_project_boxed_opaque_existential_1(v33, v34);
      v17 = *(v14 - 8);
      MEMORY[0x1EEE9AC00](v16);
      v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v19);
      sub_1A3C33120(v33, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
      LOBYTE(v15) = (*(v15 + 24))(v14, v15);
      (*(v17 + 8))(v19, v14);
      v9 = &selRef_setYearsHeadersFadeoutMinimumAlpha_;
      v20 = v15 ^ 1;
      v8 = v28;
    }

    else
    {
      sub_1A3C33120(v33, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  [v10 reportSearchFieldContentChanged:v12 isScoped:v20 & 1 isSemanticSearchEnabled:PLSearchSemanticSearchQueriesSupported()];

  swift_getKeyPath();
  v33[0] = v1;
  sub_1A52415D4();

  v21 = [*(v1 + 64) string];
  v22 = sub_1A524C674();
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    v26 = [v8 v9[150]];
    [v26 reportSearchFieldContentCleared];
  }
}

BOOL LemonadeActiveSearchViewModel.isScopedSearch.getter()
{
  swift_getKeyPath();
  v3[0] = v0;
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  swift_beginAccess();
  sub_1A3EA72B4(v0 + 24, v3, &qword_1EB129AC0, sub_1A3C295A0);
  v1 = v3[3] != 0;
  sub_1A3C33120(v3, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
  return v1;
}

uint64_t (*sub_1A3EA0CCC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A3EA0D20;
}

id sub_1A3EA0D38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = v4;

  return v4;
}

void (*LemonadeActiveSearchViewModel.searchText.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  v4[7] = sub_1A3EA0CCC(v4);
  return sub_1A3EA0F68;
}

uint64_t sub_1A3EA0F74()
{
  v1 = v0;
  v2 = sub_1A5242054();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A52429C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v9 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel___observationRegistrar;
  v47[0] = v0;
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  result = swift_beginAccess();
  if (*(v0 + 88))
  {
    return result;
  }

  v34 = v4;
  v11 = v9;
  v13 = *(v1 + 72);
  v12 = *(v1 + 80);
  swift_getKeyPath();
  v42 = v1;
  v35 = v11;
  sub_1A52415D4();

  v14 = *(v1 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchSuggestionGroups);
  if (!v14)
  {
    return result;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v13 >= *(v14 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = *(v14 + 80 * v13 + 32);
  if (v12 >= *(v15 + 16))
  {
LABEL_22:
    __break(1u);
    return result;
  }

  sub_1A3DA1FC8(v15 + 144 * v12 + 32, v47);
  v16 = PhotosSearchSuggestion.action.getter(&v42);
  v17 = v42;
  if (v46)
  {
    if (v46 == 1)
    {
      v40[0] = v43;
      v40[1] = v44;
      v41 = v45;
      (*(v6 + 104))(v8, *MEMORY[0x1E69C2070], v5);
      v18 = sub_1A52429B4();
      (*(v6 + 8))(v8, v5);
      v19 = sub_1A3E9F4B0(v40, v18);

      LemonadeActiveSearchViewModel.searchText.setter(v19);
      sub_1A3EA72B4(v40, &v37, &qword_1EB129AC0, sub_1A3C295A0);
      if (v38)
      {
        sub_1A3C34460(&v37, v39);
        sub_1A3C341C8(v39, &v37);
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v29 - 2) = v1;
        *(&v29 - 1) = &v37;
        v36 = v1;
        sub_1A52415C4();

        __swift_destroy_boxed_opaque_existential_0(v39);
      }

      sub_1A3C33120(&v37, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
      v26 = v34;
      if (*(v1 + 16))
      {
        v27 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v27);
        *(&v29 - 2) = v1;
        *(&v29 - 8) = 0;
        v39[0] = v1;
        sub_1A52415C4();
      }

      else
      {
        *(v1 + 16) = 0;
        sub_1A3C30DA0(0);
      }

      sub_1A3C33120(v40, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
    }

    else
    {
      v42(v16);

      v26 = v34;
    }
  }

  else
  {
    v30 = v42;
    v33 = v43;
    v21 = *MEMORY[0x1E69C2068];
    v32 = *(v6 + 104);
    v32(v8, v21, v5);
    v22 = sub_1A52429B4();
    v31 = *(v6 + 8);
    v31(v8, v5);
    v23 = v30(v22);

    swift_getKeyPath();
    *&v40[0] = v1;
    sub_1A52415D4();

    swift_beginAccess();
    sub_1A3EA72B4(v1 + 24, v40, &qword_1EB129AC0, sub_1A3C295A0);
    v32(v8, *MEMORY[0x1E69C2070], v5);
    v24 = sub_1A52429B4();
    v31(v8, v5);
    v25 = sub_1A3E9F4B0(v40, v24);

    sub_1A3C33120(v40, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
    LemonadeActiveSearchViewModel.searchText.setter(v25);

    v26 = v34;
  }

  v28 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v28);
  *(&v29 - 2) = v1;
  *(&v29 - 1) = 0;
  v42 = v1;
  sub_1A52415C4();

  sub_1A5242034();
  sub_1A3C9C5D4(v26);
  sub_1A3DA25C0();
  return sub_1A3EA7630(v47);
}

uint64_t sub_1A3EA1788()
{
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 72);
}

uint64_t sub_1A3EA1854(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

__n128 sub_1A3EA1898@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  swift_beginAccess();
  v4 = *(v3 + 88);
  result = *(v3 + 72);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1A3EA195C()
{
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415C4();
}

uint64_t sub_1A3EA1A3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__selectedRange;
  swift_beginAccess();
  v5 = sub_1A5242054();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1A3EA1B34(uint64_t a1)
{
  v2 = sub_1A5242054();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1A3C9C5D4(v5);
}

void sub_1A3EA1C14()
{
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3EA1CF8(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__parsecAssetRetrievalTypeMap))
  {
    if (a1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
    sub_1A52415C4();
  }

  *(v1 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__parsecAssetRetrievalTypeMap) = 0;
}

uint64_t sub_1A3EA1E68()
{
  swift_beginAccess();
  if (*(v0 + 17) == 1)
  {
    *(v0 + 17) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
    sub_1A52415C4();
  }

  v2 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v2);
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415C4();
}

void sub_1A3EA2060(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  *a3 = *(v5 + *a2);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3EA2138()
{
  v1 = v0;
  sub_1A3EA7AB4(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v14 - v3;
  v5 = type metadata accessor for PhotosSearchResults(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v15 = v0;
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  if ((*(v0 + 16) & 1) == 0)
  {
    swift_getKeyPath();
    v15 = v0;
    sub_1A52415D4();

    swift_beginAccess();
    v9 = *(v0 + 64);
    sub_1A3C30BC0();
    v11 = v10;

    if (v11)
    {
      swift_getKeyPath();
      v14[0] = v1;
      sub_1A52415D4();

      if (*(v1 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchManager))
      {
        swift_getKeyPath();
        v14[0] = v1;

        sub_1A52415D4();

        v12 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchResults;
        swift_beginAccess();
        sub_1A3EA72B4(v1 + v12, v4, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {

          sub_1A3C33120(v4, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
        }

        else
        {
          sub_1A3DAF754(v4, v8);
          v13 = sub_1A3DA6C44();
          sub_1A3DA6000(v13);

          sub_1A3EA74BC(v8, type metadata accessor for PhotosSearchResults);
        }
      }
    }
  }
}

uint64_t sub_1A3EA24C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchResults;
  swift_beginAccess();
  return sub_1A3EA72B4(v3 + v4, a2, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
}

uint64_t sub_1A3EA25A4(uint64_t a1)
{
  sub_1A3EA7AB4(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1A3EA72B4(a1, &v6 - v3, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  return sub_1A3C9B1B0(v4);
}

uint64_t sub_1A3EA2674(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1A3EA7AB4(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1A3EA72B4(a2, &v10 - v6, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  v8 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchResults;
  swift_beginAccess();
  sub_1A3C9B8B0(v7, a1 + v8, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  swift_endAccess();
  sub_1A3C9B930();
  return sub_1A3C33120(v7, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v4, sub_1A3EA7AB4);
}

uint64_t sub_1A3EA27D8()
{
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415C4();
}

uint64_t sub_1A3EA28A8()
{
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();
}

uint64_t sub_1A3EA2960@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1A3EA2A38()
{
  v1 = v0;
  swift_getKeyPath();
  v11[0] = v0;
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  swift_beginAccess();
  v2 = [*(v0 + 64) string];
  v3 = sub_1A524C674();
  v5 = v4;

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    swift_getKeyPath();
    v11[0] = v1;
    sub_1A52415D4();

    swift_beginAccess();
    sub_1A3EA72B4(v1 + 24, v11, &qword_1EB129AC0, sub_1A3C295A0);
    v8 = v11[3] == 0;
    v10 = sub_1A3C33120(v11, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
    if (!MEMORY[0x1A590D320](v10))
    {
      return v8 & 1;
    }

    goto LABEL_5;
  }

  v8 = 0;
  if (MEMORY[0x1A590D320](v6))
  {
LABEL_5:
    swift_getKeyPath();
    v11[0] = v1;
    sub_1A52415D4();

    v8 &= *(v1 + 16);
  }

  return v8 & 1;
}

uint64_t LemonadeActiveSearchViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  LemonadeActiveSearchViewModel.init()();
  return v0;
}

uint64_t LemonadeActiveSearchViewModel.init()()
{
  v1 = sub_1A5242054();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v0 + 16) = 256;
  *(v0 + 18) = 0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  v5 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 64) = v5;
  *(v0 + 88) = 1;
  sub_1A5242034();
  (*(v2 + 32))(v0 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__selectedRange, v4, v1);
  *(v0 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__parsecAssetRetrievalTypeMap) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchSuggestionGroups[0]) = 0;
  v6 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchResults;
  v7 = type metadata accessor for PhotosSearchResults(0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchManager) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__initialSuggestionFetcher) = 0;
  sub_1A5241604();
  sub_1A3C3157C();
  v12 = v0;
  v13 = v8;
  v14 = v9 & 1;
  sub_1A52415B4();
  sub_1A52415B4();
  return v0;
}

uint64_t LemonadeActiveSearchViewModel.__allocating_init(manager:initialSuggestionFetcher:initialContainer:initialSearchText:includesInitialSuggestionsInSearchSuggestions:activatesSearchWhenEmpty:allowsCollectionResults:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, char a8)
{
  v58 = a7;
  v57 = a6;
  v55 = a5;
  v50 = a4;
  v56 = a3;
  v53 = sub_1A52429C4();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5242054();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = 256;
  *(v16 + 18) = 0;
  v17 = (v16 + 18);
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0;
  v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v19 = [v18 init];
  *(v16 + 72) = 0;
  *(v16 + 80) = 0;
  *(v16 + 64) = v19;
  *(v16 + 88) = 1;
  sub_1A5242034();
  (*(v13 + 32))(v16 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__selectedRange, v15, v12);
  *(v16 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__parsecAssetRetrievalTypeMap) = 0;
  *(v16 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchSuggestionGroups) = 0;
  v20 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchResults;
  v21 = type metadata accessor for PhotosSearchResults(0);
  (*(*(v21 - 8) + 56))(v16 + v20, 1, 1, v21);
  *(v16 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchManager) = 0;
  *(v16 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__initialSuggestionFetcher) = 0;
  sub_1A5241604();
  type metadata accessor for PhotosSearchManager(0);
  v59 = a1;
  v22 = sub_1A3C305C4(v59, a8);
  swift_getKeyPath();
  v63 = v16;
  v64 = v22;
  v68[0] = v16;
  v23 = sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415C4();

  swift_getKeyPath();
  v61 = v16;
  v62 = a2;
  v68[0] = v16;

  v54 = v23;
  sub_1A52415C4();

  v60 = a2;
  v24 = v55;

  if (v24)
  {
    v25 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v26 = sub_1A524C634();

    v27 = [v25 initWithString_];

    v28 = v52;
    v29 = v51;
    v30 = v53;
    (*(v52 + 104))(v51, *MEMORY[0x1E69C2070], v53);
    v31 = sub_1A52429B4();
    (*(v28 + 8))(v29, v30);
    v32 = v56;
    v33 = sub_1A3E9F4B0(v56, v31);

    LemonadeActiveSearchViewModel.searchText.setter(v33);
  }

  else
  {
    v32 = v56;
    sub_1A3EA72B4(v56, &v66, &qword_1EB129AC0, sub_1A3C295A0);
    if (v67)
    {
      sub_1A3C34460(&v66, v68);
      sub_1A3C341C8(v68, &v66);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v50 - 2) = v16;
      *(&v50 - 1) = &v66;
      v65 = v16;
      sub_1A52415C4();

      __swift_destroy_boxed_opaque_existential_0(v68);
    }

    sub_1A3C33120(&v66, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
  }

  swift_beginAccess();
  v35 = v57 & 1;
  if (*v17 == (v57 & 1))
  {
    *v17 = v35;
  }

  else
  {
    v36 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v36);
    *(&v50 - 2) = v16;
    *(&v50 - 8) = v35;
    *&v66 = v16;
    sub_1A52415C4();
  }

  if (v58)
  {
    v37 = sub_1A3E9F2CC();
    v38 = [v37 string];

    v39 = sub_1A524C674();
    v41 = v40;

    v42 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v42 = v39 & 0xFFFFFFFFFFFFLL;
    }

    v43 = *(v16 + 16);
    if ((v43 ^ (v42 == 0)))
    {
      v44 = v42 == 0;
      v45 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v45);
      *(&v50 - 2) = v16;
      *(&v50 - 8) = v44;
      *&v66 = v16;
      sub_1A52415C4();
    }

    else
    {
      *(v16 + 16) = v42 == 0;
      sub_1A3C30DA0(v43);
    }
  }

  sub_1A3C3157C();
  v47 = MEMORY[0x1EEE9AC00](v46);
  *(&v50 - 4) = v16;
  *(&v50 - 3) = v47;
  *(&v50 - 16) = v48 & 1;
  sub_1A52415B4();
  sub_1A52415B4();

  sub_1A3C33120(v32, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
  return v16;
}

uint64_t LemonadeActiveSearchViewModel.init(manager:initialSuggestionFetcher:initialContainer:initialSearchText:includesInitialSuggestionsInSearchSuggestions:activatesSearchWhenEmpty:allowsCollectionResults:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, char a8)
{
  v9 = v8;
  v59 = a7;
  v58 = a6;
  v55 = a5;
  v51 = a4;
  v56 = a3;
  v53 = sub_1A52429C4();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5242054();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 16) = 256;
  *(v9 + 18) = 0;
  v57 = (v9 + 18);
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0;
  v19 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v20 = [v19 init];
  *(v9 + 72) = 0;
  *(v9 + 80) = 0;
  *(v9 + 64) = v20;
  *(v9 + 88) = 1;
  sub_1A5242034();
  (*(v16 + 32))(v9 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__selectedRange, v18, v15);
  *(v9 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__parsecAssetRetrievalTypeMap) = 0;
  *(v9 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchSuggestionGroups[0]) = 0;
  v21 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchResults;
  v22 = type metadata accessor for PhotosSearchResults(0);
  (*(*(v22 - 8) + 56))(v9 + v21, 1, 1, v22);
  *(v9 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchManager) = 0;
  *(v9 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__initialSuggestionFetcher) = 0;
  sub_1A5241604();
  type metadata accessor for PhotosSearchManager(0);
  v60 = a1;
  v23 = sub_1A3C305C4(v60, a8);
  swift_getKeyPath();
  v64 = v9;
  v65 = v23;
  v69[0] = v9;
  v24 = sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415C4();

  swift_getKeyPath();
  v62 = v9;
  v63 = a2;
  v69[0] = v9;

  v54 = v24;
  sub_1A52415C4();

  v61 = a2;
  v25 = v55;

  if (v25)
  {
    v26 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v27 = sub_1A524C634();

    v28 = [v26 initWithString_];

    v29 = v52;
    v30 = v53;
    (*(v52 + 104))(v14, *MEMORY[0x1E69C2070], v53);
    v31 = sub_1A52429B4();
    (*(v29 + 8))(v14, v30);
    v32 = v56;
    v33 = sub_1A3E9F4B0(v56, v31);

    LemonadeActiveSearchViewModel.searchText.setter(v33);
  }

  else
  {
    v32 = v56;
    sub_1A3EA72B4(v56, &v67, &qword_1EB129AC0, sub_1A3C295A0);
    if (v68)
    {
      sub_1A3C34460(&v67, v69);
      sub_1A3C341C8(v69, &v67);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v51 - 2) = v9;
      *(&v51 - 1) = &v67;
      v66 = v9;
      sub_1A52415C4();

      __swift_destroy_boxed_opaque_existential_0(v69);
    }

    sub_1A3C33120(&v67, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
  }

  v35 = v57;
  swift_beginAccess();
  v36 = v58 & 1;
  if (*v35 == (v58 & 1))
  {
    *v35 = v36;
  }

  else
  {
    v37 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v37);
    *(&v51 - 2) = v9;
    *(&v51 - 8) = v36;
    *&v67 = v9;
    sub_1A52415C4();
  }

  if (v59)
  {
    v38 = sub_1A3E9F2CC();
    v39 = [v38 string];

    v40 = sub_1A524C674();
    v42 = v41;

    v43 = HIBYTE(v42) & 0xF;
    if ((v42 & 0x2000000000000000) == 0)
    {
      v43 = v40 & 0xFFFFFFFFFFFFLL;
    }

    v44 = *(v9 + 16);
    if ((v44 ^ (v43 == 0)))
    {
      v45 = v43 == 0;
      v46 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v46);
      *(&v51 - 2) = v9;
      *(&v51 - 8) = v45;
      *&v67 = v9;
      sub_1A52415C4();
    }

    else
    {
      *(v9 + 16) = v43 == 0;
      sub_1A3C30DA0(v44);
    }
  }

  sub_1A3C3157C();
  MEMORY[0x1EEE9AC00](v47);
  *(&v51 - 4) = v9;
  *(&v51 - 3) = v48;
  *(&v51 - 16) = v49 & 1;
  sub_1A52415B4();
  sub_1A52415B4();

  sub_1A3C33120(v32, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
  return v9;
}

uint64_t LemonadeActiveSearchViewModel.deinit()
{
  v1 = [objc_opt_self() sharedSession];
  [v1 reportSearchFieldContentCleared];

  v2 = MEMORY[0x1E69E6720];
  sub_1A3C33120(v0 + 24, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);

  v3 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__selectedRange;
  v4 = sub_1A5242054();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1A3C33120(v0 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchResults, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v2, sub_1A3EA7AB4);

  v5 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel___observationRegistrar;
  v6 = sub_1A5241614();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t LemonadeActiveSearchViewModel.__deallocating_deinit()
{
  LemonadeActiveSearchViewModel.deinit();

  return swift_deallocClassInstance();
}

void sub_1A3EA41E4(void *a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  swift_getKeyPath();
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  if (!*(v4 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchManager))
  {
    if (a2)
    {
      sub_1A47D0768(v4, &off_1F16E5798);
    }

    type metadata accessor for PhotosSearchManager(0);
    sub_1A3C305C4(a1, a4 & 1);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A52415C4();

    if (a3)
    {
      v11 = sub_1A3E9F2CC();
      v12 = [v11 string];

      v13 = sub_1A524C674();
      v15 = v14;

      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v13 & 0xFFFFFFFFFFFFLL;
      }

      v17 = *(v5 + 16);
      if ((v17 ^ (v16 == 0)))
      {
        v18 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v18);
        sub_1A52415C4();
      }

      else
      {
        *(v5 + 16) = v16 == 0;
        sub_1A3C30DA0(v17);
      }
    }
  }
}

uint64_t sub_1A3EA4478(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_1A5242054();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1A52429C4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v13 = a1;
  }

  else
  {
    swift_getKeyPath();
    v18[0] = v3;
    sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
    sub_1A52415D4();

    swift_beginAccess();
    sub_1A3EA72B4(v3 + 24, v18, &qword_1EB129AC0, sub_1A3C295A0);
    (*(v10 + 104))(v12, *MEMORY[0x1E69C2070], v9);
    v14 = sub_1A52429B4();
    (*(v10 + 8))(v12, v9);
    v15 = sub_1A3E9F4B0(v18, v14);

    sub_1A3C33120(v18, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
    v13 = v15;
  }

  LemonadeActiveSearchViewModel.searchText.setter(v13);
  sub_1A5242034();
  return sub_1A3C9C5D4(v8);
}

uint64_t sub_1A3EA46FC(uint64_t a1)
{
  v3 = sub_1A5242054();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3EA72B4(a1, v14, &qword_1EB129AC0, sub_1A3C295A0);
  swift_getKeyPath();
  v10 = v1;
  v11 = v14;
  *&v12 = v1;
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415C4();

  sub_1A3C33120(v14, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
  sub_1A3EA72B4(a1, &v12, &qword_1EB129AC0, sub_1A3C295A0);
  if (!v13)
  {
    return sub_1A3C33120(&v12, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
  }

  sub_1A3C34460(&v12, v14);
  v6 = v15;
  v7 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  if (((*(v7 + 16))(v6, v7) & 1) == 0)
  {
    sub_1A5242034();
    sub_1A3C9C5D4(v5);
  }

  return __swift_destroy_boxed_opaque_existential_0(v14);
}

void sub_1A3EA4950(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + 16);
  if (v3 == v2)
  {
    *(v1 + 16) = v2;

    sub_1A3C30DA0(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
    sub_1A52415C4();
  }
}

uint64_t sub_1A3EA4A90(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  v30 = a1;
  sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A52415D4();

  if (!*(a1 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__initialSuggestionFetcher))
  {
    goto LABEL_16;
  }

  swift_getKeyPath();
  v30 = a1;

  sub_1A52415D4();

  swift_beginAccess();
  if (*(a1 + 18) != 1 || (sub_1A3EA2A38() & 1) == 0)
  {

LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  LemonadeSuggestedSearchQueryFetcher.topRecentSuggestionGroup.getter(v41);
  LemonadeSuggestedSearchQueryFetcher.initialSuggestionGroup.getter(v42);
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = &v41[5 * v6++] + 8;
    while (1)
    {
      v9 = *(v8 - 1);
      v10 = *(v8 + 3);
      v38 = *(v8 + 2);
      v39 = v10;
      v40 = *(v8 + 8);
      v11 = *(v8 + 1);
      v36 = *v8;
      v37 = v11;
      if (v9)
      {
        break;
      }

      v8 += 80;
      if (++v6 == 3)
      {
        goto LABEL_20;
      }
    }

    v30 = v9;
    v12 = *v8;
    v32 = *(v8 + 1);
    v13 = *(v8 + 3);
    v33 = *(v8 + 2);
    v34 = v13;
    v35 = *(v8 + 8);
    v31 = v12;
    sub_1A3EA7E10(&v30, &v25);
    v24 = a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1A3EA66A8(0, *(v7 + 2) + 1, 1, v7);
    }

    v15 = *(v7 + 2);
    v14 = *(v7 + 3);
    if (v15 >= v14 >> 1)
    {
      v7 = sub_1A3EA66A8((v14 > 1), v15 + 1, 1, v7);
    }

    v29 = v40;
    v27 = v38;
    v28 = v39;
    v25 = v36;
    v26 = v37;
    *(v7 + 2) = v15 + 1;
    v16 = &v7[80 * v15];
    *(v16 + 4) = v9;
    *(v16 + 40) = v25;
    v17 = v26;
    v18 = v27;
    v19 = v28;
    *(v16 + 13) = v29;
    *(v16 + 88) = v19;
    *(v16 + 72) = v18;
    *(v16 + 56) = v17;
    a2 = v24;
  }

  while (v6 != 2);
LABEL_20:

  sub_1A3C37100(0, &qword_1EB12D9B0, &type metadata for PhotosSearchSuggestionGroup, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
LABEL_17:
  swift_getKeyPath();
  v30 = a1;
  sub_1A52415D4();

  if (!*(a1 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchManager))
  {
  }

  v20 = sub_1A3E9F2CC();
  swift_getKeyPath();
  v30 = a1;
  sub_1A52415D4();

  swift_beginAccess();
  sub_1A3EA72B4(a1 + 24, &v30, &qword_1EB129AC0, sub_1A3C295A0);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v7;

  sub_1A3DA8860(v20, &v30, a2, a3 & 1, sub_1A3EA7E08, v22);

  sub_1A3C33120(&v30, &qword_1EB129AC0, sub_1A3C295A0, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
}

uint64_t sub_1A3EA4F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A3EA7AB4(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v12 - v7;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A3EA72B4(a1, v8, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
    sub_1A3C9B1B0(v8);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if (!a4)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12[-2] = v10;
    v12[-1] = a4;
    v12[1] = v10;
    sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A3EA514C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3EA51E4, v6, v5);
}

uint64_t sub_1A3EA51E4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1A3C3157C();
    v3 = v2;
    v5 = v4;
    v6 = swift_task_alloc();
    *(v6 + 16) = Strong;
    *(v6 + 24) = v3;
    *(v6 + 32) = v5 & 1;
    sub_1A52415B4();
  }

  **(v0 + 40) = Strong == 0;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1A3EA52F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  sub_1A3EA7AB4(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v25 - v11;
  sub_1A3EA72B4(a3, v25 - v11, &qword_1EB12B270, v9);
  v13 = sub_1A524CCB4();
  v14 = *(v13 - 8);
  LODWORD(v9) = (*(v14 + 48))(v12, 1, v13);

  if (v9 == 1)
  {
    sub_1A3C33120(v12, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1A3EA7AB4);
  }

  else
  {
    sub_1A524CCA4();
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A524CBC4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_1A524C744() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1A3C37100(0, &qword_1EB126120, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1A3C33120(v25[0], &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1A3EA7AB4);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A3C33120(a3, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1A3EA7AB4);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_1A3C37100(0, &qword_1EB126120, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1A3EA5710()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A3EA5838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3EA7AB4(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
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

  sub_1A3EA52F4(0, 0, v6, a3, v10);
}

uint64_t sub_1A3EA59D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3EA5A70, v6, v5);
}

uint64_t sub_1A3EA5A70()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1A52415B4();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A3EA5B4C()
{
  result = sub_1A524C634();
  qword_1EB1599E8 = result;
  return result;
}

uint64_t sub_1A3EA5B84()
{
  v1 = v0;
  v19 = *MEMORY[0x1E69E9840];
  v2 = sub_1A5242EB4();
  MEMORY[0x1EEE9AC00](v2);
  sub_1A3EA7AB4(0, &qword_1EB124DE8, MEMORY[0x1E69C2300], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v11 - v4;
  v12 = sub_1A5242EE4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  swift_getKeyPath();
  v6 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel___observationRegistrar;
  v18 = v1;
  v7 = sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  v15 = v6;
  v14 = v7;
  sub_1A52415D4();

  v16 = v1;
  v8 = *(v1 + OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchSuggestionGroups);
  if (!v8)
  {
    return 0;
  }

  if (*(v8 + 16))
  {
    v11[4] = v5;
    v17 = MEMORY[0x1E69E7CC0];
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC0];
}

char *sub_1A3EA66A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C37100(0, &qword_1EB12C280, &type metadata for PhotosSearchSuggestionGroup, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_1A3EA67E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_1A3C2F0BC((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

uint64_t sub_1A3EA6830(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3C8BDD0();
  v35 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_1A3C57128(v22, v36);
      }

      else
      {
        sub_1A3C2F0BC(v22, v36);
        v23 = v21;
      }

      sub_1A524C674();
      sub_1A524EC94();
      sub_1A524C794();
      v24 = sub_1A524ECE4();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_1A3C57128(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

id sub_1A3EA6AF4()
{
  v1 = v0;
  sub_1A3C8BDD0();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1A3C2F0BC(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1A3C57128(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

size_t sub_1A3EA6C68(size_t a1, int64_t a2, char a3)
{
  result = sub_1A3EA6D08(a1, a2, a3, *v3, &qword_1EB12D9A0, MEMORY[0x1E69C2308], MEMORY[0x1E69C2308]);
  *v3 = result;
  return result;
}

size_t sub_1A3EA6CB8(size_t a1, int64_t a2, char a3)
{
  result = sub_1A3EA6D08(a1, a2, a3, *v3, &qword_1EB12D998, MEMORY[0x1E69C22F8], MEMORY[0x1E69C22F8]);
  *v3 = result;
  return result;
}

size_t sub_1A3EA6D08(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A3EA7AB4(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

id sub_1A3EA6EFC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_1A3C2F0BC(*(v3 + 56) + 32 * v13, &v18);
    *&v21[0] = v14;
    sub_1A3C57128(&v18, (v21 + 8));
    result = v14;
    v16 = *&v21[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18 = v16;
      v19 = *(v21 + 8);
      v20 = *(&v21[1] + 8);
      v17(&v18);
      return sub_1A3EA74BC(&v18, sub_1A3EA7A0C);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v21, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A3EA7050(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1A3EA7144;

  return v5(v2 + 32);
}

uint64_t sub_1A3EA7144()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1A3EA72B4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3EA7AB4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A3EA7334()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 64);
  *(v2 + 64) = v1;
  v4 = v1;

  sub_1A3EA0500();
}

uint64_t sub_1A3EA73C8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__selectedRange;
  swift_beginAccess();
  v4 = sub_1A5242054();
  (*(*(v4 - 8) + 24))(v2 + v3, v1, v4);
  return swift_endAccess();
}

uint64_t sub_1A3EA74BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3EA751C(uint64_t a1, uint64_t a2)
{
  sub_1A3EA7AB4(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3EA75DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 18) = v2;
  return result;
}

void sub_1A3EA7700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = -1 << *(a1 + 32);
  v4 = ~v3;
  v5 = *(a1 + 64);
  v6 = -v3;
  v8 = a1;
  v9 = a1 + 64;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v10 = v4;
  v11 = 0;
  v12 = v7 & v5;
  v13 = a2;
  v14 = a3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3EA7A0C()
{
  if (!qword_1EB12D9A8)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12D9A8);
    }
  }
}

void sub_1A3EA7AB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3EA7B18(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3CA8098;

  return sub_1A3EA59D8(a1, v5, v6, v4);
}

uint64_t sub_1A3EA7BB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3CA8098;

  return sub_1A3EA7050(a1, v4);
}

uint64_t sub_1A3EA7C70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return sub_1A3EA7050(a1, v4);
}

uint64_t sub_1A3EA7D68(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A3EA514C(a1, v5, v6, v4);
}

uint64_t sub_1A3EA7E6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 17) = v2;
  return result;
}

uint64_t sub_1A3EA7F14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  swift_beginAccess();
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  *(v1 + 88) = v4;
  return sub_1A3EA0F74();
}

uint64_t sub_1A3EA80D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  result = swift_allocObject();
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 56) = a6 & 1;
  *(result + 64) = a7;
  return result;
}

uint64_t sub_1A3EA87D8()
{
  swift_unknownObjectRelease();

  sub_1A3C33378(*(v0 + 40));

  return v0;
}

uint64_t sub_1A3EA8810()
{
  sub_1A3EA87D8();

  return swift_deallocClassInstance();
}

void sub_1A3EA884C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB176A18);
  __swift_project_value_buffer(v0, qword_1EB176A18);
  sub_1A5246EF4();
}

id sub_1A3EA88D8(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v8 = *(v3 + 16);
  v8(&v18 - v9, a1, AssociatedTypeWitness, v7);
  sub_1A3C34400(0, &qword_1EB12AD10);
  if (swift_dynamicCast())
  {
    v10 = *(&v19 + 1);
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
    v12 = (*(v11 + 8))(v10, v11);
    __swift_destroy_boxed_opaque_existential_0(&v18);
    if (v12)
    {
      return 0;
    }
  }

  else
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_1A3EA8D18(&v18, &unk_1EB12D9E8, &qword_1EB12AD10);
  }

  (v8)(v5, a1, AssociatedTypeWitness);
  sub_1A3C34400(0, &unk_1EB12A960);
  if (swift_dynamicCast())
  {
    v13 = *(&v19 + 1);
    v14 = v20;
    __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
    LOBYTE(v13) = (*(v14 + 8))(v13, v14);
    __swift_destroy_boxed_opaque_existential_0(&v18);
    if (v13)
    {
      return 0;
    }
  }

  else
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_1A3EA8D18(&v18, &qword_1EB12D9F8, &unk_1EB12A960);
  }

  v16 = [objc_opt_self() sharedInstance];
  v17 = [v16 enablePreviewKeyAssetFetching];

  return v17;
}

void sub_1A3EA8BD0()
{
  if (!qword_1EB126BC0)
  {
    sub_1A3D435C4();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126BC0);
    }
  }
}

unint64_t sub_1A3EA8C2C()
{
  result = qword_1EB12D9E0;
  if (!qword_1EB12D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D9E0);
  }

  return result;
}

uint64_t sub_1A3EA8D18(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1A3E792C4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A3EA8D74(uint64_t a1)
{
  v3 = qword_1EB12DB58;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A3EA8E40@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A8))();
  *a2 = result;
  return result;
}

void sub_1A3EA8F10(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = qword_1EB12DB58;
  swift_beginAccess();
  v6 = *(v1 + v5);
  swift_getWitnessTable();
  LOBYTE(v5) = sub_1A524C594();

  if (v5)
  {
    v8 = qword_1EB12DB58;
    swift_beginAccess();
    v9 = *(v2 + v8);
    *(v2 + v8) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    KeyPath = swift_getKeyPath();
    v11 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x8D0))(v11);
  }
}

void (*sub_1A3EA90E4(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EA8DCC();
  return sub_1A3EA929C;
}

void sub_1A3EA92A8(uint64_t a1)
{
  v3 = qword_1EB12DB60;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A3EA9374@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D8))();
  *a2 = result;
  return result;
}

void sub_1A3EA9444(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = qword_1EB12DB60;
  swift_beginAccess();
  v6 = *(v1 + v5);
  sub_1A3C52C70(0, &qword_1EB126BF0);
  sub_1A3EBA020(&qword_1EB126BC8, &qword_1EB126BF0);
  v13 = v6;
  v7 = sub_1A524C594();

  if (v7)
  {
    v9 = qword_1EB12DB60;
    swift_beginAccess();
    v10 = *(v2 + v9);
    *(v2 + v9) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v2) + 0x8D0))(v12);
  }
}

void (*sub_1A3EA9644(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EA9300();
  return sub_1A3EA97FC;
}

void sub_1A3EA9808(uint64_t a1)
{
  v3 = qword_1EB12DB68;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1A3EA98D4(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x8C8))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  v7 = *(v2 + v6);

  return v7;
}

uint64_t sub_1A3EA99AC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x208))();
  *a2 = result;
  return result;
}

void sub_1A3EA9A7C(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = qword_1EB12DB68;
  swift_beginAccess();
  v6 = *(v1 + v5);
  sub_1A3C52C70(0, &qword_1EB126B30);
  sub_1A3EBA020(&qword_1EB126B18, &qword_1EB126B30);
  v13 = v6;
  v7 = sub_1A524C594();

  if (v7)
  {
    v9 = qword_1EB12DB68;
    swift_beginAccess();
    v10 = *(v2 + v9);
    *(v2 + v9) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v2) + 0x8D0))(v12);
  }
}

void (*sub_1A3EA9C7C(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EA9860();
  return sub_1A3EA9E34;
}

void sub_1A3EA9E40(uint64_t a1)
{
  v3 = qword_1EB12DA40;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A3EA9F0C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x238))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3EA9F70(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x240);
  v4 = *a1;
  return v3(v2);
}

void sub_1A3EA9FE0(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3EBA6DC(0, &qword_1EB12DA08, type metadata accessor for StoryAssetPicker, MEMORY[0x1E69E6720]);
  sub_1A3EBA0F4();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB12DA40;
    swift_beginAccess();
    v7 = *(v2 + v6);
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x8D0))(v9);
  }
}

void (*sub_1A3EAA1CC(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EA9E98();
  return sub_1A3EAA384;
}

id sub_1A3EAA390()
{
  sub_1A3EBA1EC();
  v0 = swift_unknownObjectRetain();

  return v0;
}

uint64_t sub_1A3EAA3C8()
{
  sub_1A3EBA1EC();

  return swift_unknownObjectRetain();
}

void sub_1A3EAA3F0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_1A3EAA450(a3);
}

uint64_t sub_1A3EAA450(uint64_t a1)
{
  v3 = qword_1EB12DA20;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1A3EAA530()
{
  v1 = qword_1EB12DA28;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3EAA59C(char a1)
{
  v3 = qword_1EB12DA28;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A3EAA674()
{
  v1 = qword_1EB12DA30;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3EAA6E0(char a1)
{
  v3 = qword_1EB12DA30;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A3EAA790@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A3EAA7C8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_1A3EAA7C8()
{
  v1 = v0 + qword_1EB12DA38;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1A3EAA840(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = v3 + qword_1EB12DA38;
  result = swift_beginAccess();
  *v8 = a1;
  *(v8 + 8) = v5;
  *(v8 + 12) = v7;
  *(v8 + 16) = a3;
  return result;
}

id sub_1A3EAA910()
{
  *&v0[qword_1EB12DA20] = 0;
  v0[qword_1EB12DA28] = 0;
  v0[qword_1EB12DA30] = 0;
  v1 = &v0[qword_1EB12DA38];
  *v1 = 0;
  v1[1] = 0x100000001;
  v1[2] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for LemonadeCollectionCustomizationMemoriesModel.NullTimeSource();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1A3EAAA4C(void *a1, void *a2)
{
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  *(v2 + qword_1EB12DA40) = 0;
  v6 = (v2 + qword_1EB12DA48);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v2 + qword_1EB12DA50);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(v2 + qword_1EB12DA58) = 1;
  *(v2 + qword_1EB12DA60) = 1;
  v8 = (v2 + qword_1EB12DA68);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v2 + qword_1EB12DA70) = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *(v2 + qword_1EB12DA78) = MEMORY[0x1E69E7CC0];
  v10 = (v2 + qword_1EB12DA80);
  *v10 = 0;
  v10[1] = 0;
  *(v2 + qword_1EB12DA88) = 0;
  v11 = (v2 + qword_1EB12DA90);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *(v2 + qword_1EB12DA98) = 1;
  *(v2 + qword_1EB12DAA0) = 1;
  *(v2 + qword_1EB12DAA8) = 0;
  *(v2 + qword_1EB12DAB0) = 0;
  v12 = v2 + qword_1EB12DAB8;
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  *(v2 + qword_1EB12DAC0) = 0;
  *(v2 + qword_1EB12DAC8) = 0;
  *(v2 + qword_1EB12DAD0) = 1;
  v13 = (v2 + qword_1EB12DAD8);
  *v13 = PXDisplayCollectionDetailedCountsMake;
  v13[1] = 0;
  v14 = sub_1A3C38BD4();
  v15 = (v2 + qword_1EB12DAE0);
  *v15 = v14;
  v15[1] = v16;
  *(v2 + qword_1EB12DAE8) = 0;
  *(v2 + qword_1EB12DAF0) = 0;
  *(v2 + qword_1EB12DAF8) = v9;
  *(v2 + qword_1EB12DB00) = v9;
  *(v2 + qword_1EB12DB08) = 1;
  v17 = (v2 + qword_1EB12DB10);
  *v17 = 0;
  v17[1] = 0;
  v18 = sub_1A3C38BD4();
  v19 = (v2 + qword_1EB12DB18);
  *v19 = v18;
  v19[1] = v20;
  *(v2 + qword_1EB12DB20) = v9;
  *(v2 + qword_1EB12DB28) = 0;
  *(v2 + qword_1EB12DB30) = 1;
  *(v2 + qword_1EB12DB38) = 0;
  v21 = (v2 + qword_1EB12DB40);
  *v21 = 0;
  v21[1] = 0;
  *(v2 + qword_1EB12DB48) = 0;
  sub_1A5241604();
  result = [a1 photoLibrary];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v23 = result;
  sub_1A3C52C70(0, &qword_1EB1269B0);
  v24 = *(v5 + 80);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = a1;
  v27 = [objc_allocWithZone(ObjCClassFromMetadata) initWithAssetCollection_];
  v65 = v26;

  v28 = [a2 presentingViewController];
  [v27 setPresentingViewController_];

  result = [a2 presentingViewController];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v29 = result;
  v30 = a2;
  v31 = [result px_extendedTraitCollection];

  v32 = [objc_opt_self() mediaProviderWithLibrary_];
  sub_1A3C52C70(0, &qword_1EB126B30);
  v33 = v24;
  v34 = type metadata accessor for LemonadeCollectionCustomizationMemoriesModel.NullTimeSource();
  v35 = v27;
  v36 = v31;
  v37 = [objc_allocWithZone(v34) init];
  v38 = swift_getObjCClassFromMetadata();
  v39 = v32;
  v40 = [objc_allocWithZone(v38) initWithConfiguration:v35 extendedTraitCollection:v36 timeSource:v37 mediaProvider:v39];
  v63 = v35;

  v41 = v36;
  *(v2 + qword_1EB12DB58) = v65;
  *(v2 + qword_1EB12DB60) = v23;
  *(v2 + qword_1EB12DB68) = v40;
  *(v2 + qword_1EB12DA00) = v30;
  v64 = v33;
  v66.receiver = v2;
  v66.super_class = type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  v42 = v65;
  v43 = v40;
  swift_unknownObjectRetain();
  v44 = v23;
  v45 = objc_msgSendSuper2(&v66, sel_init);
  v46 = [v42 localizedTitle];
  if (v46)
  {
    v47 = v46;
    v48 = sub_1A524C674();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0xE000000000000000;
  }

  sub_1A3EAB61C(v48, v50);
  v51 = [v42 localizedSubtitle];
  if (v51)
  {
    v52 = v51;
    v53 = sub_1A524C674();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0xE000000000000000;
  }

  sub_1A3EAB114(v53, v55);
  v56 = sub_1A3EACDC8(v42);
  sub_1A3EAC048(v56);
  v57 = sub_1A3EAD1D0(v44, v42);
  sub_1A3EAC00C(v57);
  sub_1A3EABFE4(0);
  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = swift_allocObject();
  *(v59 + 16) = v64;
  *(v59 + 24) = v58;
  v60 = v45;

  sub_1A3EABCC8(sub_1A3EBA248, v59);

  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v62 = swift_allocObject();
  *(v62 + 16) = v64;
  *(v62 + 24) = v61;

  sub_1A3EAC280(sub_1A3EBA304, v62);

  swift_unknownObjectRelease();

  return v60;
}

uint64_t sub_1A3EAB1DC(char *a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *a1;
  swift_beginAccess();
  sub_1A3EBA3F8();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB12DA70;
    result = swift_beginAccess();
    *(v2 + v6) = v4;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v3 & *v1) + 0x8D0))(v9);
  }

  return result;
}

uint64_t sub_1A3EAB3B4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB12DA80);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3C7146C;
LABEL_6:
  sub_1A3C66EE8(v6);
  sub_1A3C66EE8(a1);
  sub_1A3C33378(v11);
  v12 = sub_1A3C33378(v9);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14 = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x8D0))(v14);
  sub_1A3C33378(a1);
}

uint64_t sub_1A3EAB694(char *a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *a1;
  swift_beginAccess();
  sub_1A3EBA5E8();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB12DAA8;
    result = swift_beginAccess();
    *(v2 + v6) = v4;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v3 & *v1) + 0x8D0))(v9);
  }

  return result;
}

void sub_1A3EAB86C(void *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3C4B7E8(0, &qword_1EB126620, &qword_1EB126630);
  sub_1A3EBA4B8();
  v7 = sub_1A524C594();
  if (v7)
  {
    v8 = *a2;
    swift_beginAccess();
    v9 = *(v4 + v8);
    *(v4 + v8) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    KeyPath = swift_getKeyPath();
    v11 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v6 & *v2) + 0x8D0))(v11);
  }
}

uint64_t sub_1A3EABA3C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3EBA6DC(0, &unk_1EB1266F0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
  sub_1A3EBA740();
  v9 = sub_1A524C594();
  if (v9)
  {
    v10 = v4 + qword_1EB12DAB8;
    result = swift_beginAccess();
    *v10 = a1;
    *(v10 + 1) = a2;
    v10[16] = a3 & 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    KeyPath = swift_getKeyPath();
    v13 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v8 & *v4) + 0x8D0))(v13);
  }

  return result;
}

uint64_t sub_1A3EABCC8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v14 = *((v7 & v5) + 0x50);
  KeyPath = swift_getKeyPath();
  v11 = v2;
  v12 = a1;
  v13 = a2;
  (*((*v6 & *v2) + 0x8D0))(KeyPath, sub_1A3EBA8E8, &v10, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1A3EABE04(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  type metadata accessor for _PHPickerSourceType(0);
  sub_1A3EBB234(&qword_1EB12DB98, type metadata accessor for _PHPickerSourceType);
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB12DAE8;
    result = swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x8D0))(v9);
  }

  return result;
}

uint64_t sub_1A3EAC084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3EBA6DC(0, &qword_1EB120D40, MEMORY[0x1E6985D18], MEMORY[0x1E69E62F8]);
  sub_1A3EBA9E0();
  v9 = sub_1A524C594();
  if (v9)
  {
    return a5(a1);
  }

  MEMORY[0x1EEE9AC00](v9);
  KeyPath = swift_getKeyPath();
  v12 = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*v8 & *v5) + 0x8D0))(v12);
}

uint64_t sub_1A3EAC280(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB12DB10);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3DDBE10;
LABEL_6:
  sub_1A3C66EE8(v6);
  sub_1A3C66EE8(a1);
  sub_1A3C33378(v11);
  v12 = sub_1A3C33378(v9);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14 = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x8D0))(v14);
  sub_1A3C33378(a1);
}

uint64_t sub_1A3EAC4E8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v8 = sub_1A524C594();
  if (v8)
  {
    v9 = (v3 + *a3);
    swift_beginAccess();
    *v9 = a1;
    v9[1] = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v7 & *v3) + 0x8D0))(v12);
  }
}

uint64_t sub_1A3EAC6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v15 = *((v9 & v7) + 0x50);
  KeyPath = swift_getKeyPath();
  v13 = v4;
  v14 = a1;
  (*((*v8 & *v4) + 0x8D0))(KeyPath, a4, &v12, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1A3EAC7DC(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB12DB28;
    result = swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x8D0))(v9);
  }

  return result;
}

uint64_t sub_1A3EAC9D8(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v7 = a1 & 1;
  v8 = sub_1A524C594();
  if (v8)
  {
    v9 = *a2;
    result = swift_beginAccess();
    *(v4 + v9) = v7;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v6 & *v4) + 0x8D0))(v12);
  }

  return result;
}

uint64_t sub_1A3EACB88(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB12DB40);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3DDBE10;
LABEL_6:
  sub_1A3C66EE8(v6);
  sub_1A3C66EE8(a1);
  sub_1A3C33378(v11);
  v12 = sub_1A3C33378(v9);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14 = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x8D0))(v14);
  sub_1A3C33378(a1);
}

id sub_1A3EACDC8(void *a1)
{
  v32 = sub_1A523FBB4();
  v2 = *(v32 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v32).n128_u64[0];
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 photoLibrary];
  if (!result)
  {
    goto LABEL_26;
  }

  v7 = result;
  v8 = [objc_opt_self() sharedFetcherForPhotoLibrary_];

  v9 = [objc_allocWithZone(PXPhotosAssetsFetcherConfiguration) init];
  [v9 setCurationKind_];
  [v9 setCurationType_];
  [v9 setOptions_];
  v10 = [v8 fetchAssetsInContainer:a1 configuration:v9];
  if (!v10)
  {
    goto LABEL_20;
  }

  v31 = v5;
  v11 = v10;
  if ([v11 count])
  {
  }

  else
  {
    [v9 setOptions_];
    v12 = [v8 fetchAssetsInContainer:a1 configuration:v9];

    v11 = v12;
    if (!v12)
    {
      v13 = 0;
      goto LABEL_19;
    }
  }

  v13 = v11;
  v14 = [v13 fetchedObjects];

  if (!v14)
  {
LABEL_19:

LABEL_20:
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A3C52C70(0, &qword_1EB126660);
  v15 = sub_1A524CA34();

  if (v15 >> 62)
  {
    v16 = sub_1A524E2B4();
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_24:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_9:
  v27 = v13;
  v28 = v9;
  v29 = v8;
  v33 = MEMORY[0x1E69E7CC0];
  result = sub_1A3EB9DAC(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    v18 = v33;
    v19 = v15;
    v30 = v15 & 0xC000000000000001;
    do
    {
      if (v30)
      {
        v20 = MEMORY[0x1A59097F0](v17, v19);
      }

      else
      {
        v20 = *(v19 + 8 * v17 + 32);
      }

      v21 = v20;
      v22 = [v20 localIdentifier];
      sub_1A524C674();

      v23 = v31;
      sub_1A523FB54();

      v33 = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1A3EB9DAC(v24 > 1, v25 + 1, 1);
        v18 = v33;
      }

      ++v17;
      *(v18 + 16) = v25 + 1;
      (*(v2 + 32))(v18 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v25, v23, v32);
      v19 = v15;
    }

    while (v16 != v17);

    return v18;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

size_t sub_1A3EAD1D0(void *a1, uint64_t a2)
{
  v30 = sub_1A523FBB4();
  v4 = *(v30 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v30).n128_u64[0];
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 librarySpecificFetchOptions];
  v9 = [objc_opt_self() fetchKeyCuratedAssetInAssetCollection:a2 referenceAsset:0 options:v8];
  v10 = v9;
  if (!v9 || (v11 = v9, v12 = [v11 fetchedObjects], v11, !v12))
  {

    return MEMORY[0x1E69E7CC0];
  }

  sub_1A3C52C70(0, &qword_1EB126660);
  v13 = sub_1A524CA34();

  v14 = v13;
  if (!(v13 >> 62))
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

  v15 = sub_1A524E2B4();
  if (!v15)
  {
LABEL_18:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_5:
  v26 = v11;
  v27 = v8;
  v31 = MEMORY[0x1E69E7CC0];
  result = sub_1A3EB9DAC(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    v18 = v31;
    v19 = v14;
    v28 = v4 + 32;
    v29 = v14 & 0xC000000000000001;
    v20 = v14;
    do
    {
      if (v29)
      {
        v21 = MEMORY[0x1A59097F0](v17, v19);
      }

      else
      {
        v21 = *(v19 + 8 * v17 + 32);
      }

      v22 = v21;
      v23 = [v21 localIdentifier];
      sub_1A524C674();

      sub_1A523FB54();
      v31 = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1A3EB9DAC(v24 > 1, v25 + 1, 1);
        v18 = v31;
      }

      ++v17;
      *(v18 + 16) = v25 + 1;
      (*(v4 + 32))(v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25, v7, v30);
      v19 = v20;
    }

    while (v15 != v17);

    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3EAD4D8()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40];
  type metadata accessor for StoryAssetPicker();
  v4 = (*((v3 & v1) + 0x208))();
  v5 = StoryAssetPicker.__allocating_init(withViewModel:)(v4);
  v6 = *((*v2 & *v0) + 0x240);
  v7 = v5;
  v6(v5);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = *((v3 & v1) + 0x50);
  *(v9 + 24) = v8;
  v10 = *((*v2 & *v7) + 0xB8);

  v10(sub_1A3EBB5F8, v9);
}

uint64_t sub_1A3EAD714@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x278))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A3EAD7F8(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EAD6A0();
  return sub_1A3EAD9B0;
}

void sub_1A3EADA34(void *a1)
{
  sub_1A3EBADF0(a1);
}

void (*sub_1A3EADA6C(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1A8))();
  return sub_1A3EADAEC;
}

void sub_1A3EADAEC(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    sub_1A3EBADF0(v4);

    v3 = v2;
  }

  else
  {
    sub_1A3EBADF0(*a1);
    v3 = v4;
  }
}

uint64_t sub_1A3EADB58()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x298))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 localIdentifier];

  v4 = sub_1A524C674();
  return v4;
}

uint64_t sub_1A3EADCB0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2D8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A3EADD94(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EADC3C();
  return sub_1A3EADF4C;
}

uint64_t sub_1A3EADF58()
{
  v1 = qword_1EB12DA58;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3EADF9C(char a1)
{
  v3 = qword_1EB12DA58;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A3EAE060@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x308))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A3EAE128(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EADFEC();
  return sub_1A3EAE2E0;
}

uint64_t sub_1A3EAE2EC()
{
  v1 = qword_1EB12DA60;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3EAE330(char a1)
{
  v3 = qword_1EB12DA60;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A3EAE3F4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x338))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A3EAE4BC(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EAE380();
  return sub_1A3EAE674;
}

uint64_t sub_1A3EAE714@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x368))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A3EAE7F8(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EAE6A0();
  return sub_1A3EAE9B0;
}

uint64_t sub_1A3EAE9BC@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_1EB12DA70;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1A3EAEA10(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB12DA70;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void *sub_1A3EAEAD4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x398))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A3EAEB48(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x3A0))(&v4);
}

void (*sub_1A3EAEBB8(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EAEA60();
  return sub_1A3EAED70;
}

uint64_t sub_1A3EAEDFC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3C8))();
  *a2 = result;
  return result;
}

void (*sub_1A3EAEECC(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EAED88();
  return sub_1A3EAF084;
}

uint64_t sub_1A3EAF110@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3F8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A3EAF1B8(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3E30F88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x400);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

void (*sub_1A3EAF288(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EAF09C();
  return sub_1A3EAF440;
}

void sub_1A3EAF44C(uint64_t a1)
{
  v3 = qword_1EB12DA88;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A3EAF518@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x428))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3EAF57C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x430);
  v4 = *a1;
  return v3(v2);
}

void (*sub_1A3EAF5EC(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EAF4A4();
  return sub_1A3EAF7A4;
}

uint64_t sub_1A3EAF844@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x458))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A3EAF928(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EAF7D0();
  return sub_1A3EAFAE0;
}

uint64_t sub_1A3EAFAEC()
{
  v1 = qword_1EB12DA98;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3EAFB30(char a1)
{
  v3 = qword_1EB12DA98;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A3EAFBF4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x488))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A3EAFCBC(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EAFB80();
  return sub_1A3EAFE74;
}

void sub_1A3EAFE80()
{
  v13 = type metadata accessor for LemonadeCollectionCustomizationTitleField(0);
  MEMORY[0x1EEE9AC00](v13);
  sub_1A524CC54();
  v1 = v0;
  v2 = sub_1A524CC44();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E85E0];
  v3[2] = v2;
  v3[3] = v4;
  v3[4] = v1;
  v5 = v1;
  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v5;
  sub_1A524B934();
  v8 = sub_1A524CC44();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v4;
  v10 = sub_1A524CC44();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v4;
  sub_1A3C489AC(0, &qword_1EB141C90, &type metadata for LemonadeCollectionCustomizationActionItem, MEMORY[0x1E69E62F8]);
  v12 = sub_1A524B934();
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0x398))(&v14, v12);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3EB0208()
{
  v1 = qword_1EB12DAA0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3EB024C(char a1)
{
  v3 = qword_1EB12DAA0;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A3EB0310@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4C0))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A3EB03D8(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB029C();
  return sub_1A3EB0590;
}

uint64_t sub_1A3EB059C@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_1EB12DAA8;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1A3EB05F0(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB12DAA8;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1A3EB06B4@<X0>(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  v5 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v2) + 0x8C8))(KeyPath);

  v7 = *a1;
  result = swift_beginAccess();
  *a2 = *(v2 + v7);
  return result;
}

void *sub_1A3EB078C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4F0))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A3EB0800(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x4F8))(&v4);
}

void (*sub_1A3EB0870(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB0640();
  return sub_1A3EB0A28;
}

uint64_t sub_1A3EB0A34()
{
  v1 = sub_1A523FBB4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1D8))(v3);
  v8 = [v7 librarySpecificFetchOptions];

  v9 = (*((*v6 & *v0) + 0x6D8))([v8 setFetchLimit_]);
  v10 = *(v9 + 16);
  if (v10)
  {
    v28[1] = v9;
    v29 = v8;
    v12 = *(v2 + 16);
    v11 = v2 + 16;
    v13 = v9 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v31 = *(v11 + 56);
    v32 = v12;
    v14 = MEMORY[0x1E69E7CC0];
    v30 = v11;
    v12(v5, v13, v1);
    while (1)
    {
      v16 = sub_1A523FB64();
      v18 = v17;
      (*(v11 - 8))(v5, v1);
      if (v18)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1A3D3D914(0, *(v14 + 2) + 1, 1, v14);
        }

        v20 = *(v14 + 2);
        v19 = *(v14 + 3);
        if (v20 >= v19 >> 1)
        {
          v14 = sub_1A3D3D914((v19 > 1), v20 + 1, 1, v14);
        }

        *(v14 + 2) = v20 + 1;
        v15 = &v14[16 * v20];
        *(v15 + 4) = v16;
        *(v15 + 5) = v18;
      }

      v13 += v31;
      if (!--v10)
      {
        break;
      }

      v32(v5, v13, v1);
    }

    v8 = v29;
  }

  else
  {
  }

  v21 = objc_opt_self();
  v22 = sub_1A524CA14();

  v23 = [v21 fetchAssetsWithLocalIdentifiers:v22 options:v8];

  v24 = [v23 fetchedObjects];
  if (v24)
  {
    v25 = v24;
    sub_1A3C52C70(0, &qword_1EB126660);
    v26 = sub_1A524CA34();
  }

  else
  {

    return 0;
  }

  return v26;
}

void sub_1A3EB0D84(uint64_t a1)
{
  v3 = qword_1EB12DAB0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1A3EB0E50(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x8C8))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = v7;
  return v7;
}

uint64_t sub_1A3EB0F20@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x528))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3EB0F84(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x530);
  v4 = *a1;
  return v3(v2);
}

void (*sub_1A3EB0FF4(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB0DDC();
  return sub_1A3EB11AC;
}

uint64_t sub_1A3EB11B8()
{
  v1 = v0 + qword_1EB12DAB8;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1A3EB1204(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + qword_1EB12DAB8;
  result = swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

uint64_t sub_1A3EB12C8()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x8C8))(KeyPath);

  v3 = v0 + qword_1EB12DAB8;
  swift_beginAccess();
  return *v3;
}

uint64_t sub_1A3EB13A0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x558))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

void (*sub_1A3EB1478(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB1268();
  return sub_1A3EB1630;
}

uint64_t sub_1A3EB163C()
{
  v1 = qword_1EB12DAC0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3EB1680(char a1)
{
  v3 = qword_1EB12DAC0;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A3EB1744@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x588))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A3EB180C(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB16D0();
  return sub_1A3EB19C4;
}

uint64_t sub_1A3EB19D0()
{
  v1 = qword_1EB12DAC8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3EB1A14(char a1)
{
  v3 = qword_1EB12DAC8;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A3EB1AD8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5B8))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A3EB1BA0(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB1A64();
  return sub_1A3EB1D58;
}

uint64_t sub_1A3EB1D64()
{
  v1 = qword_1EB12DAD0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3EB1DA8(char a1)
{
  v3 = qword_1EB12DAD0;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A3EB1E6C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5E8))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A3EB1F34(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB1DF8();
  return sub_1A3EB20EC;
}

uint64_t sub_1A3EB2178()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x8C8))(KeyPath);

  v3 = (v0 + qword_1EB12DAD8);
  swift_beginAccess();
  v4 = *v3;

  return v4;
}

uint64_t sub_1A3EB225C@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x618))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = sub_1A3DDBE10;
  a2[1] = result;
  return result;
}

uint64_t sub_1A3EB22F8(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x620);

  return v6(sub_1A3E30F88, v5);
}

void (*sub_1A3EB23B8(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB2118();
  return sub_1A3EB2570;
}

uint64_t sub_1A3EB2610@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x648))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A3EB26F4(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB259C();
  return sub_1A3EB28AC;
}

uint64_t sub_1A3EB28B8()
{
  v1 = qword_1EB12DAE8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3EB28FC(uint64_t a1)
{
  v3 = qword_1EB12DAE8;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A3EB29C0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x678))();
  *a2 = result;
  return result;
}

void (*sub_1A3EB2A84(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB294C();
  return sub_1A3EB2C3C;
}

uint64_t sub_1A3EB2C48()
{
  v1 = qword_1EB12DAF0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3EB2C8C(char a1)
{
  v3 = qword_1EB12DAF0;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A3EB2D50@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x6A8))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A3EB2E18(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB2CDC();
  return sub_1A3EB2FD0;
}

uint64_t sub_1A3EB2FDC(uint64_t a1)
{
  v3 = qword_1EB12DAF8;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6B0))(1);
}

uint64_t (*sub_1A3EB3080(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A3EB30E4;
}

uint64_t sub_1A3EB30E4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x6B0))(1);
  }

  return result;
}

uint64_t sub_1A3EB3168@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x6D8))();
  *a2 = result;
  return result;
}

void (*sub_1A3EB3238(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB3080(v4);
  return sub_1A3EB33F0;
}

uint64_t sub_1A3EB33FC()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*((*MEMORY[0x1E69E7D40] & *v0) + 0x708))() + 16);

  v3 = *((*v1 & *v0) + 0x800);

  return v3(v2);
}

uint64_t sub_1A3EB34B4(uint64_t a1)
{
  v3 = qword_1EB12DB00;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_1A3EB33FC();
}

uint64_t (*sub_1A3EB3510(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A3EB3574;
}

uint64_t sub_1A3EB3574(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A3EB33FC();
  }

  return result;
}

uint64_t sub_1A3EB35BC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x708))();
  *a2 = result;
  return result;
}

void (*sub_1A3EB368C(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB3510(v4);
  return sub_1A3EB3844;
}

uint64_t sub_1A3EB3850()
{
  v1 = qword_1EB12DB08;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3EB3894(char a1)
{
  v3 = qword_1EB12DB08;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A3EB3958@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x738))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A3EB3A20(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB38E4();
  return sub_1A3EB3BD8;
}

uint64_t sub_1A3EB3C64@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x768))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A3EB3D0C(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3E30F88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x770);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

void (*sub_1A3EB3DDC(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB3BF0();
  return sub_1A3EB3F94;
}

uint64_t sub_1A3EB3FC0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9);
}

void sub_1A3EB4098()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x8C8))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3EB4174@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x798))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A3EB4258(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB4024();
  return sub_1A3EB4410;
}

uint64_t sub_1A3EB4428(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

void sub_1A3EB44F0()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x8C8))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3EB45BC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x7C8))();
  *a2 = result;
  return result;
}

void (*sub_1A3EB468C(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB447C();
  return sub_1A3EB4844;
}

uint64_t sub_1A3EB4850()
{
  v1 = qword_1EB12DB28;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3EB4894(uint64_t a1)
{
  v3 = qword_1EB12DB28;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A3EB4958(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x8C8))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  return *(v2 + v6);
}

uint64_t sub_1A3EB4A20@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x7F8))();
  *a2 = result;
  return result;
}

void (*sub_1A3EB4AE4(uint64_t *a1))(void *a1)
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
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB48E4();
  return sub_1A3EB4C9C;
}