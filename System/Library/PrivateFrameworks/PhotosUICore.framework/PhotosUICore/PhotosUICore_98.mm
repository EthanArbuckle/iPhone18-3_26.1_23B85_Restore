void (*sub_1A48D6108(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC12PhotosUICore22PXStoryAsyncPlayerView_player;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A48D6190;
}

void sub_1A48D6190(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC12PhotosUICore22PXStoryAsyncPlayerView_hostingView);
    v6 = *(v4 + v3[4]);
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_hostingController);
    }

    else
    {
      v7 = 0;
    }

    [v5 setHostingController_];
  }

  free(v3);
}

id PXStoryAsyncPlayerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXStoryAsyncPlayerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void static PXStoryUIFactory.viewController(configuration:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() viewControllerWithConfiguration:a1 contentViewController:0];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_dynamicCastObjCProtocolUnconditional();
    v9 = v1;
    return;
  }

  v3 = v2;
  v4 = v1;
  v5 = [v3 viewControllers];
  sub_1A3D63AC0();
  v6 = sub_1A524CA34();
  v7 = v6;
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_10:

    __break(1u);
    goto LABEL_11;
  }

  if (!sub_1A524E2B4())
  {
    goto LABEL_10;
  }

LABEL_4:

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_11:
    MEMORY[0x1A59097F0](0, v7);
    goto LABEL_7;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 32);
LABEL_7:

    swift_dynamicCastObjCProtocolUnconditional();
    return;
  }

  __break(1u);
}

void *StoryPassthroughMusicCurationProvider.__allocating_init(appleMusicCuration:)(uint64_t a1)
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = a1;
  return result;
}

void *StoryPassthroughMusicCurationProvider.init(appleMusicCuration:)(uint64_t a1)
{
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = a1;
  return v1;
}

uint64_t sub_1A48D65AC(uint64_t a1, void *a2, void (*a3)(void))
{
  v6 = [objc_opt_self() bestLocallyAvailableAudioAssetForAssetContainer_];
  v7 = *(v3 + 16);
  if (a2)
  {
    v8 = v7;
    v9 = [a2 categories];
    if (v9)
    {
      v10 = v9;
      type metadata accessor for PXMusicCurationCategory();
      sub_1A48D6F78(&qword_1EB1448F0);
      sub_1A524CF44();
    }
  }

  else
  {
    v11 = v7;
  }

  v12 = objc_allocWithZone(PXMusicCurationConcreteResult);
  type metadata accessor for PXMusicCurationCategory();
  sub_1A48D6F78(&qword_1EB1448F0);
  swift_unknownObjectRetain();
  v13 = sub_1A524CF34();

  v14 = [v12 initWithAppleMusicCuration:v7 flexMusicCuration:0 fallbackAsset:v6 requestedCategories:v13 error:0];

  swift_unknownObjectRelease();
  v15 = v14;
  a3();
  swift_unknownObjectRelease();

  return 0;
}

void type metadata accessor for PXMusicCurationCategory()
{
  if (!qword_1EB144958)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB144958);
    }
  }
}

uint64_t sub_1A48D6980(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_1A48D69C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_1A48D6B50(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_1A48D6B98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t StoryPassthroughMusicCurationProvider.deinit()
{

  return v0;
}

uint64_t StoryPassthroughMusicCurationProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A48D6E44()
{
  sub_1A48D6F78(&qword_1EB1448F0);
  sub_1A48D6F78(&qword_1EB144978);

  return sub_1A524E7E4();
}

uint64_t sub_1A48D6F78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PXMusicCurationCategory();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A48D6FBC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_opt_self() bestLocallyAvailableAudioAssetForAssetContainer_];
  v8 = *(a3 + 16);
  if (a2)
  {
    v9 = v8;
    v10 = [a2 categories];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for PXMusicCurationCategory();
      sub_1A48D6F78(&qword_1EB1448F0);
      sub_1A524CF44();
    }
  }

  else
  {
    v12 = v8;
  }

  v13 = objc_allocWithZone(PXMusicCurationConcreteResult);
  type metadata accessor for PXMusicCurationCategory();
  sub_1A48D6F78(&qword_1EB1448F0);
  swift_unknownObjectRetain();
  v14 = sub_1A524CF34();

  v15 = [v13 initWithAppleMusicCuration:v8 flexMusicCuration:0 fallbackAsset:v7 requestedCategories:v14 error:0];

  swift_unknownObjectRelease();
  (*(a4 + 16))(a4, v15);
  swift_unknownObjectRelease();

  return 0;
}

uint64_t PhotosDynamicHeaderMockGeometryModel.__allocating_init()()
{
  v0 = swift_allocObject();
  PhotosDynamicHeaderMockGeometryModel.init()();
  return v0;
}

uint64_t PhotosDynamicHeaderMockGeometryModel.init()()
{
  v1 = sub_1A43ACA40();
  v2 = *(v1 + 2);
  *(v0 + 176) = *v1;
  *(v0 + 192) = v2;
  *(v0 + 200) = 257;
  sub_1A5241604();
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  *(v0 + 80) = *MEMORY[0x1E69DDCE0];
  *(v0 + 88) = v4;
  *(v0 + 96) = v5;
  *(v0 + 104) = v6;
  *(v0 + 112) = v3;
  *(v0 + 120) = v4;
  *(v0 + 128) = v5;
  *(v0 + 136) = v6;
  *(v0 + 144) = v3;
  *(v0 + 152) = v4;
  *(v0 + 160) = v5;
  *(v0 + 168) = v6;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_1A5247B94();
  *(v0 + 32) = v7;
  *(v0 + 40) = v8;
  *(v0 + 48) = v9;
  *(v0 + 56) = v10;
  *(v0 + 64) = xmmword_1A53714E0;
  return v0;
}

float64_t sub_1A48D722C(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  swift_beginAccess();
  v5.f64[0] = a1;
  v5.f64[1] = a2;
  v6.f64[0] = a3;
  v6.f64[1] = a4;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4[5], v5), vceqq_f64(v4[6], v6)))))
  {
    v4[5].f64[0] = a1;
    v4[5].f64[1] = a2;
    result = a4;
    v4[6].f64[0] = a3;
    v4[6].f64[1] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    (*(*&v4->f64[0] + 528))();
  }

  return result;
}

float64_t sub_1A48D7368(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  swift_beginAccess();
  v5.f64[0] = a1;
  v5.f64[1] = a2;
  v6.f64[0] = a3;
  v6.f64[1] = a4;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4[7], v5), vceqq_f64(v4[8], v6)))))
  {
    v4[7].f64[0] = a1;
    v4[7].f64[1] = a2;
    result = a4;
    v4[8].f64[0] = a3;
    v4[8].f64[1] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    (*(*&v4->f64[0] + 528))();
  }

  return result;
}

float64_t sub_1A48D74A4(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  swift_beginAccess();
  v5.f64[0] = a1;
  v5.f64[1] = a2;
  v6.f64[0] = a3;
  v6.f64[1] = a4;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4[9], v5), vceqq_f64(v4[10], v6)))))
  {
    v4[9].f64[0] = a1;
    v4[9].f64[1] = a2;
    result = a4;
    v4[10].f64[0] = a3;
    v4[10].f64[1] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    (*(*&v4->f64[0] + 528))();
  }

  return result;
}

void sub_1A48D75E0(double a1, double a2)
{
  swift_beginAccess();
  if (v2[2] == a1 && v2[3] == a2)
  {
    v2[2] = a1;
    v2[3] = a2;
    sub_1A48D821C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 528))(v7);
  }
}

void sub_1A48D76F0(double a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  if (sub_1A5247BB4())
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[6] = a3;
    v4[7] = a4;
    sub_1A48D821C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v4 + 528))(v10);
  }
}

void sub_1A48D7828(double a1)
{
  swift_beginAccess();
  if (v1[8] == a1)
  {
    v1[8] = a1;
    sub_1A48D821C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 528))(v4);
  }
}

uint64_t sub_1A48D7930(double a1)
{
  result = swift_beginAccess();
  if (v1[9] == a1)
  {
    v1[9] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 528))(v5);
  }

  return result;
}

uint64_t (*sub_1A48D7A34(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A48D7A88;
}

double sub_1A48D7A8C()
{
  swift_getKeyPath();
  (*(*v0 + 520))();

  swift_beginAccess();
  return v0[2];
}

void (*sub_1A48D7B0C(uint64_t *a1))(void *a1)
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
  (*(*v1 + 520))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderMockGeometryModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A48D8DE4();
  sub_1A52415F4();

  v4[7] = sub_1A48D7A34(v4);
  return sub_1A48D7C2C;
}

uint64_t (*sub_1A48D7C38(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A48D9774;
}

double sub_1A48D7C8C()
{
  swift_getKeyPath();
  (*(*v0 + 520))();

  swift_beginAccess();
  return v0[4];
}

void (*sub_1A48D7D10(uint64_t *a1))(void *a1)
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
  (*(*v1 + 520))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderMockGeometryModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A48D8DE4();
  sub_1A52415F4();

  v4[7] = sub_1A48D7C38(v4);
  return sub_1A48D7E30;
}

uint64_t (*sub_1A48D7E3C(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A48D9774;
}

void sub_1A48D7E90(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A48D821C();
  }
}

double sub_1A48D7EC4()
{
  swift_getKeyPath();
  (*(*v0 + 520))();

  swift_beginAccess();
  return v0[8];
}

void (*sub_1A48D7F44(uint64_t *a1))(void *a1)
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
  (*(*v1 + 520))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderMockGeometryModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A48D8DE4();
  sub_1A52415F4();

  v4[7] = sub_1A48D7E3C(v4);
  return sub_1A48D8064;
}

double sub_1A48D8070()
{
  swift_getKeyPath();
  (*(*v0 + 520))();

  swift_beginAccess();
  return v0[9];
}

void (*sub_1A48D80F0(uint64_t *a1))(void *a1)
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
  (*(*v1 + 520))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderMockGeometryModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A48D8DE4();
  sub_1A52415F4();

  v4[7] = sub_1A43E1604();
  return sub_1A48D8210;
}

void sub_1A48D821C()
{
  v1 = (*v0 + 296);
  v2 = *v1;
  v3 = (*v1)();
  if (v3 > 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = *(*v0 + 200);
  v5();
  v7 = v6;
  v8 = type metadata accessor for PhotosDynamicHeaderMockGeometryModel();
  PhotosDynamicHeaderGeometryModel.headerMinimumHeight.getter(v8, &protocol witness table for PhotosDynamicHeaderMockGeometryModel);
  v10 = v7 - v9;
  if (v10 >= v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(*v0 + 248);
  v13 = v12();
  v14 = v2();
  v15 = (v12)();
  if (v14 > v16)
  {
    v17 = v14;
  }

  else
  {
    v17 = v16;
  }

  v18 = (v5)(v15);
  v20 = v19 - (v12)(v18) + -100.0;
  if (v20 < v17)
  {
    v17 = v20;
  }

  v21 = v12();
  v22 = (v5)();
  v24 = v23;
  v25 = (v12)(v22);
  if ((*(*v0 + 400))() != 0.0 || (v27 == 0.0 ? (v30 = v11 == v28) : (v30 = 0), !v30 || v29 != 0.0))
  {
    v26 = (*(*v0 + 408))(0.0, 0.0, v11, 0.0);
  }

  if (v13 != (*(*v0 + 448))(v26) || v32 != 0.0 || v17 != v33 || v34 != 0.0)
  {
    v31 = (*(*v0 + 456))(v13, 0.0, v17, 0.0);
  }

  if (v21 != (*(*v0 + 496))(v31) || v35 != 0.0 || v24 - v25 + -100.0 != v36 || v37 != 0.0)
  {
    (*(*v0 + 504))(v21, 0.0, v24 - v25 + -100.0, 0.0);
  }
}

void sub_1A48D8574(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 400))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

double sub_1A48D8620()
{
  swift_getKeyPath();
  (*(*v0 + 520))();

  swift_beginAccess();
  return v0[10];
}

__n128 sub_1A48D86A4()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_beginAccess();
  result = v4;
  *(v1 + 80) = v4;
  *(v1 + 96) = v3;
  return result;
}

void (*sub_1A48D86FC(uint64_t *a1))(void *a1)
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
  (*(*v1 + 520))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderMockGeometryModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A48D8DE4();
  sub_1A52415F4();

  v4[7] = sub_1A4587924();
  return sub_1A48D881C;
}

void sub_1A48D8878(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 448))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

double sub_1A48D8924()
{
  swift_getKeyPath();
  (*(*v0 + 520))();

  swift_beginAccess();
  return v0[14];
}

__n128 sub_1A48D89A8()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_beginAccess();
  result = v4;
  *(v1 + 112) = v4;
  *(v1 + 128) = v3;
  return result;
}

void (*sub_1A48D8A00(uint64_t *a1))(void *a1)
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
  (*(*v1 + 520))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderMockGeometryModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A48D8DE4();
  sub_1A52415F4();

  v4[7] = sub_1A48D8828();
  return sub_1A48D8B20;
}

void sub_1A48D8B2C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 496))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

double sub_1A48D8BD8()
{
  swift_getKeyPath();
  (*(*v0 + 520))();

  swift_beginAccess();
  return v0[18];
}

__n128 sub_1A48D8C5C()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_beginAccess();
  result = v4;
  *(v1 + 144) = v4;
  *(v1 + 160) = v3;
  return result;
}

void sub_1A48D8CB4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  sub_1A48D821C();
}

__n128 sub_1A48D8D18()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 32) = v4;
  *(v1 + 48) = v3;
  sub_1A48D821C();
  return result;
}

void sub_1A48D8D80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 64) = v2;
  sub_1A48D821C();
}

unint64_t sub_1A48D8DE4()
{
  result = qword_1EB144980;
  if (!qword_1EB144980)
  {
    type metadata accessor for PhotosDynamicHeaderMockGeometryModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144980);
  }

  return result;
}

uint64_t type metadata accessor for PhotosDynamicHeaderMockGeometryModel()
{
  result = qword_1EB1DE370;
  if (!qword_1EB1DE370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_1A48D8E88(uint64_t *a1))(void *a1)
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
  (*(*v1 + 520))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderMockGeometryModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A48D8DE4();
  sub_1A52415F4();

  v4[7] = sub_1A3E0C604();
  return sub_1A48D8FA8;
}

double PhotosDynamicHeaderMockGeometryModel.spec.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 192);
  *a1 = *(v1 + 176);
  *(a1 + 16) = result;
  return result;
}

uint64_t PhotosDynamicHeaderMockGeometryModel.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderMockGeometryModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosDynamicHeaderMockGeometryModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderMockGeometryModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_1A48D92DC@<D0>(uint64_t a1@<X8>)
{
  result = *(*v1 + 192);
  *a1 = *(*v1 + 176);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A48D92FC()
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

void sub_1A48D9778()
{
  if (!qword_1EB13A730)
  {
    v0 = sub_1A524B974();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A730);
    }
  }
}

uint64_t sub_1A48D97C8()
{
  v2 = *(v0 + OBJC_IVAR____TtCV12PhotosUICore22PhotosDetailsSearchBar11Coordinator__text + 16);
  v1 = *(v0 + OBJC_IVAR____TtCV12PhotosUICore22PhotosDetailsSearchBar11Coordinator__text + 24);
  v5 = *(v0 + OBJC_IVAR____TtCV12PhotosUICore22PhotosDetailsSearchBar11Coordinator__text);
  v6 = v2;
  v7 = v1;
  sub_1A48D9778();
  MEMORY[0x1A5906C60](&v4);
  return v4;
}

void sub_1A48D987C(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + OBJC_IVAR____TtCV12PhotosUICore22PhotosDetailsSearchBar11Coordinator__text);
  v6 = *(v1 + OBJC_IVAR____TtCV12PhotosUICore22PhotosDetailsSearchBar11Coordinator__text);
  v3[12] = v6;
  v7 = v5[1];
  v3[13] = v7;
  v8 = v5[2];
  v3[14] = v8;
  v9 = v5[3];
  v3[15] = v9;
  *v3 = v6;
  v3[1] = v7;
  v3[2] = v8;
  v3[3] = v9;
  sub_1A48D9778();
  v4[16] = v10;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A48D995C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v2[4] = *(*a1 + 96);
  v2[10] = v2[8];
  v4 = v2[9];
  v5 = v2[15];
  v6 = v2[14];
  v2[5] = v3;
  v2[6] = v6;
  v2[7] = v5;
  v2[11] = v4;
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A524B904();

  free(v2);
}

uint64_t sub_1A48D9A34()
{
  sub_1A48D9778();
  sub_1A524B924();
  return v1;
}

uint64_t sub_1A48D9AE8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV12PhotosUICore22PhotosDetailsSearchBar11Coordinator_placeholderText);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id sub_1A48D9BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtCV12PhotosUICore22PhotosDetailsSearchBar11Coordinator__text];
  *v14 = a1;
  *(v14 + 1) = a2;
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  v15 = &v13[OBJC_IVAR____TtCV12PhotosUICore22PhotosDetailsSearchBar11Coordinator_placeholderText];
  *v15 = a5;
  *(v15 + 1) = a6;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_1A48D9DDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsSearchBar.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A48D9E80()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCF08]) initWithFrame_];
  sub_1A48D9F5C();
  sub_1A5249DA4();
  [v1 setDelegate_];

  v2 = v0[1];
  v6 = *v0;
  v7 = v2;
  sub_1A48D9778();
  MEMORY[0x1A5906C60](&v5);
  v3 = sub_1A524C634();

  [v1 setText_];

  return v1;
}

void sub_1A48D9F5C()
{
  if (!qword_1EB144998)
  {
    sub_1A48D9FB8();
    v0 = sub_1A5249DB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB144998);
    }
  }
}

unint64_t sub_1A48D9FB8()
{
  result = qword_1EB1449A0;
  if (!qword_1EB1449A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1449A0);
  }

  return result;
}

unint64_t sub_1A48DA010()
{
  result = qword_1EB1449A8;
  if (!qword_1EB1449A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1449A8);
  }

  return result;
}

void sub_1A48DA068(void *a1)
{
  v3 = *(v1 + 48);
  v4 = sub_1A524C634();
  [a1 setPlaceholder_];

  if (v3 == 1)
  {

    [a1 becomeFirstResponder];
  }
}

void sub_1A48DA0EC()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  v15 = *v0;
  v16 = v1;
  v17 = v2;
  sub_1A48D9778();
  sub_1A524B924();
  v5 = v13;
  v6 = v14;
  v7 = type metadata accessor for PhotosDetailsSearchBar.Coordinator();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCV12PhotosUICore22PhotosDetailsSearchBar11Coordinator__text];
  *v9 = v12;
  *(v9 + 2) = v5;
  *(v9 + 3) = v6;
  v10 = &v8[OBJC_IVAR____TtCV12PhotosUICore22PhotosDetailsSearchBar11Coordinator_placeholderText];
  *v10 = v4;
  *(v10 + 1) = v3;
  v11.receiver = v8;
  v11.super_class = v7;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A48DA1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A48D9FB8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A48DA214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A48D9FB8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A48DA278()
{
  sub_1A48D9FB8();
  sub_1A52496F4();
  __break(1u);
}

uint64_t sub_1A48DA2B0(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _s12PhotosUICore17TTRWorkflowActionO13BasicMenuItemV12submenuItemsSayAC0fG0_pGvs_0(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1A48DA31C(uint64_t a1)
{
  v2 = sub_1A48DC178();

  return TTRWorkflowAction.MenuItem.description.getter(a1, v2);
}

uint64_t sub_1A48DA358(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_1A48DA3A4(uint64_t a1)
{
  v2 = sub_1A48DBDC8();

  return TTRWorkflowAction.MenuItem.description.getter(a1, v2);
}

uint64_t sub_1A48DA3E0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = MEMORY[0x1E69E7CC0];
  if (a1 == 1)
  {
    v5 = &unk_1F172C400;
  }

  if (a1 == 2)
  {
    v6 = &unk_1F172C3D8;
  }

  else
  {
    v6 = v5;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1A48DB738(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  v9 = v8 + 1;
  if (v8 >= v7 >> 1)
  {
    v28 = sub_1A48DB738((v7 > 1), v9, 1, v6);
    v9 = v8 + 1;
    v6 = v28;
  }

  *(v6 + 2) = v9;
  v6[v8 + 32] = 0;
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        v10 = &unk_1F172C428;
        goto LABEL_23;
      case 1:
        v10 = &unk_1F172C478;
        goto LABEL_23;
      case 2:
        v10 = &unk_1F172C450;
        goto LABEL_23;
    }

LABEL_21:
    v10 = &unk_1F172C4A0;
    goto LABEL_23;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if ((a1 - 4) < 2)
  {
    goto LABEL_23;
  }

  if (a1 != 3)
  {
    goto LABEL_21;
  }

  v10 = &unk_1F172C4F0;
  if ((a2 & 1) == 0)
  {
    v10 = &unk_1F172C4C8;
  }

LABEL_23:
  v30 = v10;
  *&v33[0] = MEMORY[0x1E69E7CC0];
  sub_1A48DB844(0, v9, 0);
  v11 = *&v33[0];
  v12 = v8 + 1;
  v13 = 32;
  do
  {
    sub_1A48DB9B0(v6[v13], v32);
    *&v33[0] = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1A48DB844((v14 > 1), v15 + 1, 1);
      v11 = *&v33[0];
    }

    v36 = &type metadata for GenerativeStoryTTRWorkflowBuilder.GenerativeStoryMenuItem;
    v16 = sub_1A48DBDC8();
    v37 = v16;
    v17 = swift_allocObject();
    *&v34 = v17;
    v18 = v32[1];
    v17[1] = v32[0];
    v17[2] = v18;
    v17[3] = v32[2];
    *(v11 + 16) = v15 + 1;
    sub_1A3C34460(&v34, v11 + 40 * v15 + 32);
    ++v13;
    --v12;
  }

  while (v12);

  v19 = v30;
  v20 = v30[2];
  if (v20)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1A48DB844(0, v20, 0);
    v21 = 32;
    do
    {
      sub_1A48DB9B0(*(v19 + v21), v33);
      v23 = *(v31 + 16);
      v22 = *(v31 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1A48DB844((v22 > 1), v23 + 1, 1);
      }

      v36 = &type metadata for GenerativeStoryTTRWorkflowBuilder.GenerativeStoryMenuItem;
      v37 = v16;
      v24 = swift_allocObject();
      *&v34 = v24;
      v25 = v33[1];
      v24[1] = v33[0];
      v24[2] = v25;
      v24[3] = v33[2];
      *(v31 + 16) = v23 + 1;
      sub_1A3C34460(&v34, v31 + 40 * v23 + 32);
      ++v21;
      --v20;
      v19 = v30;
    }

    while (v20);
  }

  strcpy(&v34, "Something else");
  HIBYTE(v34) = -18;
  v35 = 0;
  v36 = 0xE000000000000000;
  v37 = 23;
  v38 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v26);
  TTRWorkflow.init(stepsBuilder:)(sub_1A48DBE1C, a3);
}

void sub_1A48DA870()
{
  v0._object = 0x80000001A53D5C30;
  v0._countAndFlagsBits = 0xD000000000000016;
  TTRWorkflowStep.init(title:description:)(&v1, v0, 0);
  v6 = v1;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v5 = 4;
  TTRWorkflowStep.add(action:)(v3, &v2);
}

uint64_t sub_1A48DAE60(uint64_t a1, uint64_t a2)
{
  sub_1A3C341C8(a2, v3);
  sub_1A44A3FC8();
  result = swift_dynamicCast();
  if (result)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

void static GenerativeStoryTTRWorkflowBuilder.presentWorkflow(in:memory:attachmentFileURLs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1A48DB738(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1A48DB738((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v7;
  v4[v6 + 32] = 0;
  v17 = v3;
  sub_1A48DB844(0, v6 + 1, 0);
  for (i = 32; ; ++i)
  {
    sub_1A48DB9B0(v4[i], v18);
    v17 = v3;
    v10 = *(v3 + 16);
    v9 = *(v3 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_1A48DB844((v9 > 1), v10 + 1, 1);
      v3 = v17;
    }

    v21 = &type metadata for GenerativeStoryTTRWorkflowBuilder.GenerativeStoryMenuItem;
    v22 = sub_1A48DBDC8();
    v11 = swift_allocObject();
    *&v19 = v11;
    v12 = v18[1];
    v11[1] = v18[0];
    v11[2] = v12;
    v11[3] = v18[2];
    *(v3 + 16) = v10 + 1;
    sub_1A3C34460(&v19, v3 + 40 * v10 + 32);
    if (!--v7)
    {

      strcpy(&v19, "Something else");
      HIBYTE(v19) = -18;
      v20 = 0;
      v21 = 0xE000000000000000;
      v22 = 23;
      v23 = MEMORY[0x1E69E7CC0];
      MEMORY[0x1EEE9AC00](v13);
      TTRWorkflow.init(stepsBuilder:)(sub_1A48DC654, &v17);

      v14 = swift_allocObject();
      *(v14 + 16) = a2;
      *(v14 + 24) = a3;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }
}

uint64_t sub_1A48DB268(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1A5240E64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GenerativeStoryTTRVisualDiagnosticsProvider();
  v10 = GenerativeStoryTTRVisualDiagnosticsProvider.__allocating_init(memory:)(a2);
  v11 = a1;
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x1F0))(v10);

  if (a3)
  {
    v12 = *(a3 + 16);
    if (v12)
    {
      v23 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x1E8);
      v13 = v7 + 16;
      v14 = *(v7 + 16);
      v15 = a3 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v16 = *(v13 + 56);
      v17 = (v13 - 8);
      do
      {
        v14(v9, v15, v6);
        v23(v9);
        (*v17)(v9, v6);
        v15 += v16;
        --v12;
      }

      while (v12);
    }
  }

  sub_1A3C4D6D4(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1A52F8E10;
  *(v18 + 32) = sub_1A524C674();
  *(v18 + 40) = v19;
  v20 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v11) + 0x1F8))(v18);

  return (*((*v20 & *v11) + 0x200))(0);
}

id GenerativeStoryTTRWorkflowBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GenerativeStoryTTRWorkflowBuilder.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeStoryTTRWorkflowBuilder();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GenerativeStoryTTRWorkflowBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeStoryTTRWorkflowBuilder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A48DB6C8(uint64_t a1, char a2)
{
  sub_1A3C56110();
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v3 setUploadVisualDiagnostics_];
}

char *sub_1A48DB738(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C4D6D4(0, &qword_1EB144A88, &type metadata for GenerativeStoryTTRWorkflowBuilder.RadarOption, MEMORY[0x1E69E6F90]);
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

void *sub_1A48DB844(void *a1, int64_t a2, char a3)
{
  result = sub_1A48DB864(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A48DB864(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A48DC24C(0, &qword_1EB144A90, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A44A3FC8();
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A48DB9B0@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v2 = 0xE000000000000000;
  v3 = 0xEE0065736C652067;
  v4 = 0x6E696874656D6F53;
  v5 = 23;
  v6 = 0;
  switch(result)
  {
    case 1:
      break;
    case 2:
      v3 = 0x80000001A53F15A0;
      v2 = 0x80000001A53F15C0;
      v4 = 0xD000000000000017;
      v6 = 0xD00000000000001ELL;
      v5 = 30;
      break;
    case 3:
      v4 = 0xD000000000000011;
      v3 = 0x80000001A53F1560;
      v2 = 0x80000001A53F1580;
      v6 = 0xD000000000000010;
      v5 = 29;
      break;
    case 4:
      v3 = 0x80000001A53F1540;
      v4 = 0xD00000000000001BLL;
      v2 = 0xEB000000005D7974;
      v6 = 0x69756769626D415BLL;
      v5 = 28;
      break;
    case 5:
      v2 = 0xE800000000000000;
      v6 = 0x5D7974656661535BLL;
      v3 = 0xED000074706D6F72;
      v4 = 0x7020656661736E55;
      goto LABEL_16;
    case 6:
      v3 = 0x80000001A53F1520;
      v4 = 0xD000000000000019;
      v2 = 0xE600000000000000;
      v6 = 0x5D776F6C535BLL;
      goto LABEL_16;
    case 7:
      v3 = 0x80000001A53F14F0;
      v4 = 0xD000000000000022;
      v2 = 0xEC0000005D746E61;
      v6 = 0x76656C657272495BLL;
      v5 = 25;
      break;
    case 8:
      v3 = 0x80000001A53F14D0;
      v4 = 0xD00000000000001BLL;
      v6 = 0x766569727465525BLL;
      v2 = 0xEB000000005D6C61;
      v5 = 25;
      break;
    case 9:
      v2 = 0xEB000000005D7374;
      v6 = 0x65737341206F4E5BLL;
      v3 = 0xEF646E756F662073;
      v4 = 0x7465737361206F4ELL;
      v5 = 25;
      break;
    case 10:
      v3 = 0x80000001A53F14B0;
      v4 = 0xD000000000000012;
      v2 = 0xEB000000005D6E6FLL;
      v6 = 0x6974616D696E415BLL;
      v5 = 29;
      break;
    case 11:
      v3 = 0x80000001A53F1490;
      v4 = 0xD00000000000001CLL;
      v2 = 0xE800000000000000;
      v6 = 0x5D7374696172545BLL;
      v5 = 26;
      break;
    case 12:
      v4 = 0xD000000000000011;
      v3 = 0x80000001A53F1470;
      v2 = 0xE800000000000000;
      v6 = 0x5D64656C6961465BLL;
      goto LABEL_16;
    case 13:
      v3 = 0x80000001A53F1450;
      v4 = 0xD000000000000017;
      v2 = 0xEB000000005D7465;
      v6 = 0x7373412079654B5BLL;
      v5 = 24;
      break;
    case 14:
      v3 = 0x80000001A53F1430;
      v4 = 0xD000000000000013;
      v2 = 0xE700000000000000;
      v6 = 0x5D656C7469545BLL;
      v5 = 26;
      break;
    case 15:
      v3 = 0x80000001A53F13E0;
      v2 = 0x80000001A53F1410;
      v6 = 0xD000000000000014;
      v4 = 0xD000000000000020;
      v5 = 26;
      break;
    case 16:
      v3 = 0x80000001A53F13C0;
      v4 = 0xD000000000000016;
      v2 = 0xEF5D657461745320;
      v6 = 0x64696C61766E495BLL;
LABEL_16:
      v5 = 23;
      break;
    default:
      v6 = 0;
      v4 = 0xD000000000000011;
      v3 = 0x80000001A53F15E0;
      v5 = 29;
      break;
  }

  *a2 = v4;
  a2[1] = v3;
  a2[2] = v6;
  a2[3] = v2;
  v7 = MEMORY[0x1E69E7CC0];
  a2[4] = v5;
  a2[5] = v7;
  return result;
}

unint64_t sub_1A48DBDC8()
{
  result = qword_1EB1DE480[0];
  if (!qword_1EB1DE480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1DE480);
  }

  return result;
}

void _s12PhotosUICore33GenerativeStoryTTRWorkflowBuilderC17deviceBuildPrefixSSyFZ_0()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_hwModelStr_obj();

    if (!v2)
    {
      __break(1u);
      return;
    }

    sub_1A524C674();

    sub_1A3D5F9DC();
    sub_1A524DFD4();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_opt_self() currentBuildVersionString];
  if (v5)
  {
    v6 = v5;
    sub_1A524C674();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v4 | v8)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

unint64_t sub_1A48DC088()
{
  result = qword_1EB144A80;
  if (!qword_1EB144A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144A80);
  }

  return result;
}

unint64_t sub_1A48DC0FC(uint64_t a1)
{
  result = sub_1A48DC124();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A48DC124()
{
  result = qword_1EB1DE610[0];
  if (!qword_1EB1DE610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1DE610);
  }

  return result;
}

unint64_t sub_1A48DC178()
{
  result = qword_1EB1DE6A0[0];
  if (!qword_1EB1DE6A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1DE6A0);
  }

  return result;
}

uint64_t sub_1A48DC1CC(uint64_t a1, uint64_t a2)
{
  sub_1A48DC24C(0, &qword_1EB13BE18, MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A48DC24C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A44A3FC8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A48DC2AC(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  _s12PhotosUICore33GenerativeStoryTTRWorkflowBuilderC17deviceBuildPrefixSSyFZ_0();
  MEMORY[0x1A5907B60](0x5B5D434D5BLL, 0xE500000000000000);
  MEMORY[0x1A5907B60](v3, v4);
  v5 = MEMORY[0x1A5907B60](93, 0xE100000000000000);
  v6 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xB0))(v5);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  MEMORY[0x1A5907B60](v6, v8);

  if (sub_1A524C7A4() >= 31)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A48DC5D8(uint64_t a1)
{
  result = sub_1A48DC600();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A48DC600()
{
  result = qword_1EB1DE730[0];
  if (!qword_1EB1DE730[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1DE730);
  }

  return result;
}

uint64_t sub_1A48DC678@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0xD000000000000028;
  *(a2 + 1) = 0x80000001A53F1600;
  v4 = sub_1A524C634();
  v5 = PXLocalizedSharedLibraryString(v4);

  v6 = sub_1A524C674();
  v8 = v7;

  *(a2 + 2) = v6;
  *(a2 + 3) = v8;
  v9 = sub_1A524C634();
  v10 = PXLocalizedSharedLibraryString(v9);

  v11 = sub_1A524C674();
  v13 = v12;

  *(a2 + 4) = v11;
  *(a2 + 5) = v13;
  v14 = *(type metadata accessor for LemonadeSharedLibraryCameraSharingItem(0) + 28);
  v15 = sub_1A5241144();
  v16 = *(*(v15 - 8) + 32);

  return v16(&a2[v14], a1, v15);
}

void sub_1A48DC7B4(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A48DC7CC()
{
  sub_1A48DD674(&qword_1EB144AD8, type metadata accessor for LemonadeSharedLibraryCameraSharingItem);

    ;
  }
}

void sub_1A48DC838()
{
  sub_1A48DD674(&qword_1EB144AD8, type metadata accessor for LemonadeSharedLibraryCameraSharingItem);

    ;
  }
}

uint64_t sub_1A48DC8A4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A48DD674(&qword_1EB144AA0, type metadata accessor for LemonadeSharedLibraryCameraSharingModel);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore39LemonadeSharedLibraryCameraSharingModel__item;
  swift_beginAccess();
  return sub_1A48DDE70(v5 + v3, a1, type metadata accessor for LemonadeSharedLibraryCameraSharingItem);
}

uint64_t sub_1A48DC980@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A48DD674(&qword_1EB144AA0, type metadata accessor for LemonadeSharedLibraryCameraSharingModel);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore39LemonadeSharedLibraryCameraSharingModel__item;
  swift_beginAccess();
  return sub_1A48DDE70(v3 + v4, a2, type metadata accessor for LemonadeSharedLibraryCameraSharingItem);
}

uint64_t sub_1A48DCA5C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for LemonadeSharedLibraryCameraSharingItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A48DDE70(a1, v6, type metadata accessor for LemonadeSharedLibraryCameraSharingItem);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1A48DD674(&qword_1EB144AA0, type metadata accessor for LemonadeSharedLibraryCameraSharingModel);
  sub_1A52415C4();

  return sub_1A48DE770(v6, type metadata accessor for LemonadeSharedLibraryCameraSharingItem);
}

uint64_t sub_1A48DCBCC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore39LemonadeSharedLibraryCameraSharingModel__item;
  swift_beginAccess();
  sub_1A48DE89C(a2, a1 + v4);
  return swift_endAccess();
}

void (*sub_1A48DCC5C(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12PhotosUICore39LemonadeSharedLibraryCameraSharingModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1A48DD674(&qword_1EB144AA0, type metadata accessor for LemonadeSharedLibraryCameraSharingModel);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A48DCDA4;
}

void sub_1A48DCDA4(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t sub_1A48DCE28(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A5241604();
  sub_1A48DE7D0(a1, v2 + OBJC_IVAR____TtC12PhotosUICore39LemonadeSharedLibraryCameraSharingModel__item, type metadata accessor for LemonadeSharedLibraryCameraSharingItem);
  return v2;
}

uint64_t sub_1A48DCE98()
{
  sub_1A48DE770(v0 + OBJC_IVAR____TtC12PhotosUICore39LemonadeSharedLibraryCameraSharingModel__item, type metadata accessor for LemonadeSharedLibraryCameraSharingItem);
  v1 = OBJC_IVAR____TtC12PhotosUICore39LemonadeSharedLibraryCameraSharingModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A48DCF58(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A48DD674(&qword_1EB144AA0, type metadata accessor for LemonadeSharedLibraryCameraSharingModel);
  sub_1A52415C4();

  return sub_1A48DE770(a1, type metadata accessor for LemonadeSharedLibraryCameraSharingItem);
}

void (*sub_1A48DD03C(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1A48DCC5C(v2);
  return sub_1A3D3D728;
}

void sub_1A48DD0B0(void *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1A48DD674(&qword_1EB144AA0, type metadata accessor for LemonadeSharedLibraryCameraSharingModel);
  sub_1A52415D4();

  v4 = (v3 + OBJC_IVAR____TtC12PhotosUICore39LemonadeSharedLibraryCameraSharingModel__item);
  swift_beginAccess();
  v5 = v4[1];
  *a1 = *v4;
  a1[1] = v5;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A48DD17C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_1A48DE838(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for LemonadeSharedLibraryCameraSharingNotificationCell(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1A48DD228@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = type metadata accessor for LemonadeSharedLibraryCameraSharingNotificationCell(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v18 = v4;
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5243934();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1A48DD5C0();
  v8 = *(v7 - 8);
  v21 = v7;
  v22 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5243914();
  v19 = type metadata accessor for LemonadeSharedLibraryCameraSharingNotificationCell;
  sub_1A48DDE70(v1, v5, type metadata accessor for LemonadeSharedLibraryCameraSharingNotificationCell);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v17 = type metadata accessor for LemonadeSharedLibraryCameraSharingNotificationCell;
  sub_1A48DE7D0(v5, v12 + v11, type metadata accessor for LemonadeSharedLibraryCameraSharingNotificationCell);
  v24 = 1;
  sub_1A524B954();
  sub_1A5243544();
  sub_1A48DD674(&qword_1EB12EAA8, MEMORY[0x1E69C2510]);
  sub_1A5242914();
  sub_1A48DDE70(v20, v5, v19);
  v13 = swift_allocObject();
  sub_1A48DE7D0(v5, v13 + v11, v17);
  sub_1A48DD674(&qword_1EB144AB0, sub_1A48DD5C0);
  v14 = v21;
  sub_1A524A714();

  return (*(v22 + 8))(v10, v14);
}

void sub_1A48DD5C0()
{
  if (!qword_1EB144AA8)
  {
    sub_1A5243544();
    sub_1A48DD674(&qword_1EB12EAA8, MEMORY[0x1E69C2510]);
    v0 = sub_1A5242904();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB144AA8);
    }
  }
}

uint64_t sub_1A48DD674(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A48DD6BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v24[1] = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1A5240744();
  v27 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v28 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1A5240754();
  v6 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5240774();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = MEMORY[0x1E69E6720];
  sub_1A48DE838(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v24 - v12;
  sub_1A48DE838(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], v10);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v35 = sub_1A52407E4();
  v29 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v32 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v26 = v24 - v17;
  v37 = sub_1A5243C24();
  v31 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v30 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v36 = v24 - v20;
  sub_1A5243C14();
  v21 = *(a1 + *(type metadata accessor for LemonadeSharedLibraryCameraSharingNotificationCell(0) + 20));
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtC12PhotosUICore39LemonadeSharedLibraryCameraSharingModel___observationRegistrar;
  v38 = v21;
  v24[3] = sub_1A48DD674(&qword_1EB144AA0, type metadata accessor for LemonadeSharedLibraryCameraSharingModel);
  v24[4] = v22;
  sub_1A52415D4();

  swift_beginAccess();
  v23 = sub_1A5240E64();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  (*(v6 + 104))(v8, *MEMORY[0x1E6968750], v25);
  (*(v27 + 104))(v28, *MEMORY[0x1E6968728], v34);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A48DDE70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A48DDED8(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadeSharedLibraryCameraSharingNotificationCell(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1A48DD6BC(v4, a1);
}

uint64_t objectdestroyTm_85()
{
  v1 = *(type metadata accessor for LemonadeSharedLibraryCameraSharingNotificationCell(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_1A48DE838(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    v4 = v3;
    v5 = *(v3 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v3))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A48DE368()
{
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FF29A0(v2);
  sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    sub_1A48DE770(v2, sub_1A3D63A58);
    PXPresentationEnvironmentForSender();
  }

  sub_1A5245C94();
}

uint64_t sub_1A48DE5C8()
{
  result = type metadata accessor for LemonadeSharedLibraryCameraSharingItem(319);
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1A48DE6BC()
{
  sub_1A48DE838(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeSharedLibraryCameraSharingModel(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A48DE770(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A48DE7D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A48DE838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A48DE89C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSharedLibraryCameraSharingItem(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void static LemonadeViewControllerFactory.viewController(with:destination:)(void *a1, void *a2)
{
  type metadata accessor for RootViewControllerFactory();
  v4 = [objc_opt_self() defaultManager];
  sub_1A3C467C8(a1, v4, a2);
}

id LemonadeViewControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadeViewControllerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LemonadeViewControllerFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12PhotosUICore29LemonadeViewControllerFactoryC21sidebarRoutingOptions3forSo024PXProgrammaticNavigationhI0VSo0kL11DestinationC_tFZ_0(void *a1)
{
  if (([a1 isLemonadeHome] & 1) != 0 || objc_msgSend(a1, sel_isTargetingAsset) && !objc_msgSend(a1, sel_isTargetingAlbum))
  {
    LODWORD(result) = 1;
  }

  else
  {
    [a1 type];
    LODWORD(result) = 0;
  }

  return result;
}

char *_s12PhotosUICore29LemonadeViewControllerFactoryC04rootdE031forSidebarNavigationDestination12photoLibrary22actionProviderDelegate09selectionP019pickerConfigurationSo06UIViewE0CSo014PXProgrammaticjK0C_So07PHPhotoM0CSo08PXActionoP0_pSgAA0c6Pickera9SelectionP0_pSgAA0xS0CSgtFZ_0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v141 = a5;
  v142 = a6;
  v139 = a3;
  sub_1A40730A4(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v136 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v134);
  v140 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v125 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v125 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v125 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v125 - v25;
  v27 = type metadata accessor for LemonadeDetailsContext();
  v137 = *(v27 - 8);
  v138 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v135 = &v125 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30 = MEMORY[0x1EEE9AC00](v29).n128_u64[0];
  v32 = &v125 - v31;
  if (([a1 isCollectionsHome] & 1) != 0 || objc_msgSend(a1, sel_isInCollectionsHome))
  {
    v33 = v142;
    if (v142)
    {
      if (a4)
      {
        type metadata accessor for PickerRootViewControllerFactory();
        v34 = objc_opt_self();
        v35 = v33;
        swift_unknownObjectRetain();
        sub_1A46C32A4(a2, v35, [v34 defaultManager]);
      }
    }

    type metadata accessor for RootViewControllerFactory();
    v36 = [objc_opt_self() defaultManager];
    sub_1A3C467C8(a2, v36, a1);
  }

  v131 = v26;
  v129 = a4;
  v132 = [a1 assetCollection];
  type metadata accessor for LemonadePhotoLibraryContext();
  v133 = v32;
  v37 = v142;
  v126 = v142;
  v127 = a2;
  v130 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v127, v37, 0);
  if (v37)
  {
    v38 = 3;
  }

  else
  {
    v38 = 1;
  }

  v128 = v38;
  sub_1A486B6E8(v133);
  v39 = &selRef_trashedState;
  v40 = [a1 type];
  v41 = v131;
  switch(v40)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 0xDuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
      *&v143 = 0;
      *(&v143 + 1) = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](0xD00000000000001CLL, 0x80000001A53F1780);
      *v146 = [a1 &selRef_twoUpTwoThirdsTopOneThirdBottomAssetSplitComposition];
      type metadata accessor for PXProgrammaticNavigationDestinationType();
      sub_1A524E624();
      goto LABEL_130;
    case 7uLL:
      if (![a1 isTargetingAlbum])
      {
        goto LABEL_131;
      }

      if (!v132)
      {
        goto LABEL_131;
      }

      objc_opt_self();
      v66 = swift_dynamicCastObjCClass();
      if (!v66)
      {
        goto LABEL_131;
      }

      v67 = v66;
      v145 = 0;
      v143 = 0u;
      v144 = 0u;
      if (v142)
      {
        v68 = *((*MEMORY[0x1E69E7D40] & *v126) + 0x2D0);
        v69 = swift_unknownObjectRetain();
        v70 = v68(v69);
      }

      else
      {
        swift_unknownObjectRetain();
        v70 = 0;
      }

      v54 = v129;
      v39 = v130;
      v51 = v139;
      v52 = v128;
      sub_1A47A9538(v67, 0, 0, 0, &v143, v70, 0, v17);
      swift_storeEnumTagMultiPayload();
      sub_1A3CA2898(v17, v41, type metadata accessor for LemonadeNavigationDestination);
      v53 = a1;
      goto LABEL_97;
    case 8uLL:
      v55 = [a1 &selRef_alreadyCollected];
      if (!v55)
      {
        goto LABEL_130;
      }

      v56 = v55;
      v57 = [v55 px_isCollectionsVirtualCollection];
      v54 = v129;
      v51 = v139;
      if (v57)
      {
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v53 = a1;
LABEL_35:
        v39 = v130;
LABEL_36:
        v62 = v136;
        v52 = v128;
        goto LABEL_98;
      }

      v73 = [v56 px_isEventsVirtualCollection];
      v39 = v130;
      if (v73)
      {
        sub_1A47D46B8(v130, v41);
LABEL_54:
        swift_unknownObjectRelease();
LABEL_74:
        v53 = a1;
        goto LABEL_36;
      }

      if ([v56 px_isPeopleVirtualCollection])
      {
        v146[0] = 0;
        sub_1A3C36888();

        sub_1A414D2C8(v82, 0, 0xE000000000000000, v146, &v143);
        swift_unknownObjectRelease();
        v83 = v144;
        v84 = BYTE8(v144);
        *v41 = v143;
        *(v41 + 16) = v83;
        *(v41 + 24) = v84;
LABEL_73:
        swift_storeEnumTagMultiPayload();
        goto LABEL_74;
      }

      if ([v56 px_isMemoriesVirtualCollection])
      {
        sub_1A45A2EA0(v39, v41);
        goto LABEL_54;
      }

      if ([v56 px_isTripsVirtualCollection])
      {
        sub_1A4331940(v39, v41);
        goto LABEL_54;
      }

      if ([v56 px_isWallpaperSuggestionsVirtualCollection] || objc_msgSend(v56, sel_px_isBookmarksVirtualCollection))
      {

        PXDisplayCollectionDetailedCountsMake(v113);
        v115 = v114;
        v117 = v116;
        v119 = v118;
        swift_unknownObjectRelease();
        *v41 = v115;
        *(v41 + 8) = v117;
        *(v41 + 16) = v119;
        goto LABEL_73;
      }

      if ([v56 px_isFeaturedPhotosCollection])
      {
        sub_1A46833FC(v39);
      }

      if ([v56 px_isMapVirtualCollection])
      {
        v39 = v130;
        v41 = v131;
        sub_1A45AFE7C(v130, v131);
        swift_unknownObjectRelease();
        v53 = a1;
        v54 = v129;
        v51 = v139;
        goto LABEL_36;
      }

      objc_opt_self();
      v120 = swift_dynamicCastObjCClass();
      if (!v120)
      {
        goto LABEL_130;
      }

      v121 = v120;
      v145 = 0;
      v143 = 0u;
      v144 = 0u;
      if (v142)
      {
        v122 = *((*MEMORY[0x1E69E7D40] & *v126) + 0x2D0);
        v123 = swift_unknownObjectRetain();
        v124 = v122(v123);
      }

      else
      {
        swift_unknownObjectRetain();
        v124 = 0;
      }

      sub_1A47A9538(v121, 0, 0, 0, &v143, v124, 0, v23);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v41 = v131;
      sub_1A3CA2898(v23, v131, type metadata accessor for LemonadeNavigationDestination);
      goto LABEL_34;
    case 9uLL:
    case 0xAuLL:
      if (!v132)
      {
        v53 = a1;
        v54 = v129;
        v39 = v130;
        v52 = v128;
LABEL_60:
        sub_1A45A2EA0(v39, v41);
        v51 = v139;
        goto LABEL_97;
      }

      v42 = v142;
      if (v142)
      {
        v43 = a1;
      }

      else
      {
        v43 = [objc_allocWithZone(PXProgrammaticNavigationDestination) initWithType:10 revealMode:1];
      }

      v53 = v43;
      objc_opt_self();
      v74 = swift_dynamicCastObjCClass();
      v54 = v129;
      v39 = v130;
      v52 = v128;
      if (!v74)
      {
        goto LABEL_60;
      }

      v75 = v74;
      swift_unknownObjectRetain();
      if ([a1 routingType] != 2 && !v42)
      {
        swift_unknownObjectRelease();
        goto LABEL_60;
      }

      v146[0] = 3;
      *&v143 = 0;
      swift_unknownObjectRetain();
      sub_1A3C6E9EC();
      LemonadePhotosPagingMemoryGridConfiguration.init(memory:initialPositionDetent:disallowedBehaviors:navigationSourceInfo:)(v75);
      v76 = [a1 source];
      if (v76)
      {
        v77 = v76;
        v78 = sub_1A524C674();
        v80 = v79;

        *v146 = 0;
        v147.value.sourceIdentifiers._rawValue = v146;
        v81._countAndFlagsBits = v78;
        v81._object = v80;
        PhotosNavigationSourceInfo.init(sourceIdentifier:previousSourceInfo:)(v81, v147);
        *v146 = v143;
        sub_1A4A04DA4();
      }

      swift_unknownObjectRelease();
      v51 = v139;
      v62 = v136;
      sub_1A3CA2898(v13, v41, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration);
      swift_storeEnumTagMultiPayload();
LABEL_98:
      type metadata accessor for LemonadeNavigationContext(0);
      v97 = v140;
      sub_1A47800D8(v41, v140, type metadata accessor for LemonadeNavigationDestination);
      (*(v137 + 56))(v62, 1, 1, v138);
      LOBYTE(v143) = v52;

      v98 = sub_1A3C799F0(v97, 0, 0, 0, v62, &v143, v39, 2);
      sub_1A4655D24(1);

      v99 = sub_1A418E244();

      if (v99 && (v100 = sub_1A3EEB3C0(v98, v51)) != 0)
      {
        v101 = v100;

        swift_unknownObjectRelease();
        sub_1A48E0580(v41, type metadata accessor for LemonadeNavigationDestination);
        v102 = v133;
      }

      else
      {
        type metadata accessor for LemonadeFeedNavigationParticipant();
        v103 = v127;
        v139 = v53;
        v104 = sub_1A3DC4DE4(v139, v103);
        type metadata accessor for LemonadeDestinationRootViewController();
        v105 = v140;
        sub_1A47800D8(v41, v140, type metadata accessor for LemonadeNavigationDestination);
        LOBYTE(v143) = v52;
        v106 = v133;
        v107 = v135;
        sub_1A47800D8(v133, v135, type metadata accessor for LemonadeDetailsContext);
        swift_unknownObjectRetain();
        v108 = v103;

        v109 = v126;
        v101 = sub_1A44D648C(v105, v104, &v143, v107, v108, v54, v141, v142, 0, 1u);
        v110 = *((*MEMORY[0x1E69E7D40] & *v101) + qword_1EB1EADB0 + 264);
        v111 = swift_unknownObjectRetain();
        v110(v111);

        swift_unknownObjectRelease();
        sub_1A48E0580(v131, type metadata accessor for LemonadeNavigationDestination);
        v102 = v106;
      }

      sub_1A48E0580(v102, type metadata accessor for LemonadeDetailsContext);
      return v101;
    case 0xBuLL:
      if ([a1 person])
      {
        swift_unknownObjectRelease();
        v64 = v142;
        if (v142)
        {
          v65 = a1;
        }

        else
        {
          v65 = [objc_allocWithZone(PXProgrammaticNavigationDestination) initWithType:11 revealMode:1];
        }

        v53 = v65;
        v51 = v139;
      }

      else
      {
        v53 = a1;
        v51 = v139;
        v64 = v142;
      }

      v39 = v130;
      v52 = v128;
      v91 = [a1 person];
      v54 = v129;
      if (!v91)
      {
        goto LABEL_95;
      }

      objc_opt_self();
      v92 = swift_dynamicCastObjCClass();
      if (!v92)
      {
        goto LABEL_94;
      }

      v93 = v92;
      if ([a1 routingType] != 2 && !v64)
      {
        goto LABEL_94;
      }

      sub_1A3C5A374();
      sub_1A4270424(v93);
      goto LABEL_96;
    case 0xCuLL:
      if ([a1 socialGroup])
      {
        swift_unknownObjectRelease();
        v58 = v142;
        if (v142)
        {
          v59 = a1;
        }

        else
        {
          v59 = [objc_allocWithZone(PXProgrammaticNavigationDestination) initWithType:11 revealMode:1];
        }

        v53 = v59;
        v51 = v139;
      }

      else
      {
        v53 = a1;
        v51 = v139;
        v58 = v142;
      }

      v39 = v130;
      v52 = v128;
      v88 = [a1 socialGroup];
      v54 = v129;
      if (!v88)
      {
        goto LABEL_95;
      }

      objc_opt_self();
      v89 = swift_dynamicCastObjCClass();
      if (v89 && ((v90 = v89, [a1 routingType] == 2) || v58))
      {

        sub_1A3C5A374();
        sub_1A4270930(v90);
      }

      else
      {
LABEL_94:
        swift_unknownObjectRelease();
LABEL_95:
        v146[0] = 0;
        sub_1A3C36888();

        sub_1A414D2C8(v94, 0, 0xE000000000000000, v146, &v143);
        v95 = v144;
        v96 = BYTE8(v144);
        *v41 = v143;
        *(v41 + 16) = v95;
        *(v41 + 24) = v96;
      }

LABEL_96:
      swift_storeEnumTagMultiPayload();
      goto LABEL_97;
    case 0xEuLL:
      type metadata accessor for RootViewControllerFactory();
      v60 = [objc_opt_self() defaultManager];
      sub_1A3C467C8(v127, v60, 0);
    case 0x12uLL:
      if (![a1 collectionList])
      {
        goto LABEL_130;
      }

      objc_opt_self();
      v50 = swift_dynamicCastObjCClass();
      v51 = v139;
      v39 = v130;
      v52 = v128;
      if (!v50)
      {
        swift_unknownObjectRelease();
        while (1)
        {
LABEL_130:
          sub_1A524E6E4();
          __break(1u);
LABEL_131:
          *&v143 = 0;
          *(&v143 + 1) = 0xE000000000000000;
          sub_1A524E404();
          MEMORY[0x1A5907B60](0xD00000000000001CLL, 0x80000001A53F1780);
          *v146 = [a1 v39[65]];
          type metadata accessor for PXProgrammaticNavigationDestinationType();
          sub_1A524E624();
          MEMORY[0x1A5907B60](0xD00000000000001BLL, 0x80000001A53F17F0);
        }
      }

      sub_1A41903FC(v41);
      swift_unknownObjectRelease();
      v53 = a1;
      v54 = v129;
LABEL_97:
      v62 = v136;
      goto LABEL_98;
    case 0x13uLL:
      if (v142)
      {
        v63 = a1;
      }

      else
      {
        [objc_allocWithZone(PXProgrammaticNavigationDestination) initWithType:19 revealMode:1];
      }

      sub_1A46833FC(v130);
    case 0x14uLL:
      sub_1A4030F64(&v143);
      v49 = v144;
      *v41 = v143;
      *(v41 + 16) = v49;
      goto LABEL_33;
    case 0x15uLL:
      v61 = [a1 importSource];
      if (v61)
      {
        *v41 = v61;
LABEL_33:
        swift_storeEnumTagMultiPayload();
LABEL_34:
        v53 = a1;
        v54 = v129;
        v51 = v139;
        goto LABEL_35;
      }

      *&v143 = 0;
      *(&v143 + 1) = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](0xD000000000000023, 0x80000001A53F17A0);
      *v146 = [a1 &selRef_twoUpTwoThirdsTopOneThirdBottomAssetSplitComposition];
      type metadata accessor for PXProgrammaticNavigationDestinationType();
      sub_1A524E624();
      MEMORY[0x1A5907B60](0xD000000000000016, 0x80000001A53F17D0);
      goto LABEL_130;
    case 0x16uLL:
    case 0x17uLL:
      if (v142 && v129)
      {
        type metadata accessor for PickerRootViewControllerFactory();
        v44 = objc_opt_self();
        v45 = v126;
        swift_unknownObjectRetain();
        v46 = [v44 defaultManager];
        sub_1A46C32A4(v127, v45, v46);
      }

      type metadata accessor for RootViewControllerFactory();
      v72 = [objc_opt_self() defaultManager];
      sub_1A3C467C8(v127, v72, a1);
    case 0x1CuLL:
      if (v132 && !v142)
      {
        v71 = [objc_allocWithZone(PXProgrammaticNavigationDestination) initWithType:28 revealMode:1];
      }

      else
      {
        v71 = a1;
      }

      v53 = v71;
      v54 = v129;
      v39 = v130;
      v51 = v139;
      v62 = v136;
      v52 = v128;
      sub_1A47D46B8(v130, v41);
      goto LABEL_98;
    case 0x1DuLL:
      if (v132)
      {
        v47 = v142;
        if (v142)
        {
          v48 = a1;
        }

        else
        {
          v48 = [objc_allocWithZone(PXProgrammaticNavigationDestination) initWithType:29 revealMode:1];
        }

        v125 = v48;
        objc_opt_self();
        v85 = swift_dynamicCastObjCClass();
        v86 = v129;
        v39 = v130;
        v87 = v139;
        v52 = v128;
        if (v85)
        {
          swift_unknownObjectRetain();
          if ([a1 routingType] == 2)
          {
            if (!v47)
            {
LABEL_107:
              LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(v20);
            }

LABEL_106:
            (*((*MEMORY[0x1E69E7D40] & *v126) + 0x2D0))();
            goto LABEL_107;
          }

          v62 = v136;
          if (v47)
          {
            goto LABEL_106;
          }

          swift_unknownObjectRelease();
        }

        else
        {
          v62 = v136;
        }

        v54 = v86;
        v51 = v87;
        v53 = v125;
      }

      else
      {
        v53 = a1;
        v54 = v129;
        v39 = v130;
        v51 = v139;
        v62 = v136;
        v52 = v128;
      }

      sub_1A4331940(v39, v41);
      goto LABEL_98;
    default:
      *&v143 = 0;
      *(&v143 + 1) = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](0xD00000000000001CLL, 0x80000001A53F1780);
      *v146 = [a1 type];
      type metadata accessor for PXProgrammaticNavigationDestinationType();
      sub_1A524E624();
      goto LABEL_130;
  }
}

void type metadata accessor for PXProgrammaticNavigationDestinationType()
{
  if (!qword_1EB144B48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB144B48);
    }
  }
}

uint64_t sub_1A48E0580(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1A48E0700()
{
  v1 = v0;
  v2 = [v0 assets];
  sub_1A3C52C70(0, &qword_1EB126660);
  v3 = sub_1A524CA34();

  if (v3 >> 62)
  {
    result = sub_1A524E2B4();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1A59097F0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

LABEL_9:
  sub_1A48E0A3C(v6);

  return [v1 completeUserInteractionTaskWithSuccess:1 error:0];
}

void sub_1A48E0A3C(void *a1)
{
  v38[2] = *MEMORY[0x1E69E9840];
  sub_1A3C5D6E0(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v32 = &v27 - v5;
  v6 = sub_1A5240E64();
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_9;
  }

  v8 = a1;
  v9 = [v8 uuid];
  if (!v9)
  {

LABEL_9:
    sub_1A48E14D8();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    return;
  }

  v10 = v9;
  v11 = PXSoftLinkedProtoSearchContextualVideoThumbnailPathForAsset(v8);
  if (!v11)
  {

    sub_1A48E14D8();
    swift_allocError();
    *v20 = 1;
LABEL_12:
    swift_willThrow();

    return;
  }

  v29 = v1;
  v30 = v10;
  v12 = v11;
  v35 = sub_1A524C674();
  v13 = [objc_opt_self() defaultManager];
  v38[0] = 0;
  v14 = [v13 contentsOfDirectoryAtPath:v12 error:v38];

  v15 = v38[0];
  if (!v14)
  {
    v21 = v38[0];

    sub_1A5240B84();
    goto LABEL_12;
  }

  v27 = v2;
  v28 = v8;
  v16 = sub_1A524CA34();
  v17 = v15;

  v18 = *(v16 + 16);
  v37 = v6;
  v34 = v18;
  if (v18)
  {
    v33 = v16;
    if (*(v16 + 16))
    {
      v38[0] = 0x2F2F3A656C6966;
      v38[1] = 0xE700000000000000;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
    goto LABEL_20;
  }

  v22 = MEMORY[0x1E69E7CC0];

  v35 = *(v22 + 16);
  if (v35)
  {
    if (*(v22 + 16))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_20:
    __break(1u);
  }

  v23 = sub_1A524CA14();

  v24 = v30;
  v25 = PXSoftLinkedProtoSearchContextualVideoThumbnailDebugView(v30, v23);

  if (v25)
  {
    [v29 presentViewController_];
  }

  else
  {
    sub_1A48E14D8();
    swift_allocError();
    *v26 = 2;
    swift_willThrow();
  }
}

uint64_t sub_1A48E10C0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000018;
  v3 = *a1;
  v4 = 0x80000001A53F1820;
  if (v3 == 1)
  {
    v5 = 0xD000000000000031;
  }

  else
  {
    v5 = 0xD000000000000018;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001A53F1820;
  }

  else
  {
    v6 = 0x80000001A53F1860;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7465737361206F4ELL;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEE00646E756F6620;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000031;
  }

  else
  {
    v4 = 0x80000001A53F1860;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x7465737361206F4ELL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEE00646E756F6620;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A524EAB4();
  }

  return v11 & 1;
}

uint64_t sub_1A48E11A8()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A48E1264()
{
  sub_1A524C794();
}

uint64_t sub_1A48E130C()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A48E13C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A48E1594();
  *a1 = result;
  return result;
}

void sub_1A48E13F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00646E756F6620;
  v4 = 0x80000001A53F1820;
  v5 = 0xD000000000000031;
  if (v2 != 1)
  {
    v5 = 0xD000000000000018;
    v4 = 0x80000001A53F1860;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7465737361206F4ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1A48E14D8()
{
  result = qword_1EB1DEC80[0];
  if (!qword_1EB1DEC80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1DEC80);
  }

  return result;
}

unint64_t sub_1A48E1540()
{
  result = qword_1EB1DED10[0];
  if (!qword_1EB1DED10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1DED10);
  }

  return result;
}

uint64_t sub_1A48E1594()
{
  v0 = sub_1A524E824();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

BOOL sub_1A48E15E0(void *a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))();
  if (v3)
  {
    v4 = swift_unknownObjectWeakInit();
    sub_1A48E1C28(v4, v13);
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    sub_1A48E1C60(v13, v5 + 24);
    v12[4] = sub_1A48E1C98;
    v12[5] = v5;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1A3D7692C;
    v12[3] = &block_descriptor_297;
    v6 = _Block_copy(v12);
    swift_unknownObjectRetain();

    [a1 performChanges_];
    _Block_release(v6);
    swift_unknownObjectRelease();
    sub_1A48E1D2C(v14);
  }

  else
  {
    if (qword_1EB1DEEA0 != -1)
    {
      swift_once();
    }

    v7 = sub_1A5246F24();
    __swift_project_value_buffer(v7, qword_1EB1DEEA8);
    v8 = sub_1A5246F04();
    v9 = sub_1A524D244();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v8, v9, "can't navigate to 1-up because header isn't displaying any asset", v10, 2u);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }
  }

  return v3 != 0;
}

void sub_1A48E17EC(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  v17 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x88))();
  if ((a1 & 0xC000000000000001) == 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_unknownObjectRetain();
  sub_1A524E274();
  sub_1A48E1D6C();
  sub_1A41E3384();
  sub_1A524CF84();
  v3 = v22;
  v4 = v23;
  v15 = v21;
  while (v19 < 0)
  {
    if (!sub_1A524E304() || (sub_1A48E1D6C(), swift_dynamicCast(), v8 = v18, v7 = v4, !v18))
    {
LABEL_25:
      v14 = 0;
      goto LABEL_26;
    }

LABEL_15:
    v9 = [v8 asset];
    v10 = v9;
    v11 = v17;
    if (v9 == v17)
    {

      swift_unknownObjectRelease();
      v14 = 1;
      goto LABEL_26;
    }

    if (v10)
    {
      v12 = v17 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {

      swift_unknownObjectRelease();
      v4 = v7;
    }

    else
    {
      v13 = [v10 isContentEqualTo:v11];
      if (!v13)
      {
        v13 = [v11 isContentEqualTo:v10];
      }

      swift_unknownObjectRelease();
      v12 = v13 == 2;
      v4 = v7;
      if (v12)
      {
        v14 = 1;
LABEL_26:
        sub_1A3C42540();
        (*((*MEMORY[0x1E69E7D40] & *v16) + 0xB0))(v14, 0xD000000000000011, 0x80000001A53F1940);

        swift_unknownObjectRelease();
        return;
      }
    }
  }

  v5 = v3;
  v6 = v4;
  if (v4)
  {
LABEL_11:
    v7 = (v6 - 1) & v6;
    v8 = *(*(v19 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v6)))));
    if (!v8)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  while (1)
  {
    v3 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v3 >= ((v21 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v6 = *(v20 + 8 * v3);
    ++v5;
    if (v6)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1A48E1B24(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = [a1 asset];
    v5 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x90))();

    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

void sub_1A48E1BC4()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1DEEA8);
  __swift_project_value_buffer(v0, qword_1EB1DEEA8);
  sub_1A5246EF4();
}

void sub_1A48E1C98()
{
  swift_getObjectType();
  sub_1A48E1DB8();
  v1 = swift_allocObject();
  sub_1A48E1C28(v0 + 24, v1 + 16);
  sub_1A524D7D4();
}

unint64_t sub_1A48E1D6C()
{
  result = qword_1EB126B50;
  if (!qword_1EB126B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126B50);
  }

  return result;
}

unint64_t sub_1A48E1DB8()
{
  result = qword_1EB1DEF40;
  if (!qword_1EB1DEF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1DEF40);
  }

  return result;
}

uint64_t AppIntent.px_intentName.getter()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_1A524C714();
}

uint64_t AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 296) = v15;
  *(v9 + 304) = v8;
  *(v9 + 280) = v14;
  *(v9 + 264) = a6;
  *(v9 + 272) = a8;
  *(v9 + 480) = a7;
  *(v9 + 248) = a4;
  *(v9 + 256) = a5;
  *(v9 + 232) = a2;
  *(v9 + 240) = a3;
  *(v9 + 224) = a1;
  sub_1A48E363C(0, &qword_1EB12C820, MEMORY[0x1E695A340], MEMORY[0x1E69E6720]);
  *(v9 + 312) = swift_task_alloc();
  *(v9 + 320) = swift_task_alloc();
  v10 = sub_1A5240164();
  *(v9 + 328) = v10;
  *(v9 + 336) = *(v10 - 8);
  *(v9 + 344) = swift_task_alloc();
  *(v9 + 352) = swift_task_alloc();
  v11 = sub_1A5246F24();
  *(v9 + 360) = v11;
  *(v9 + 368) = *(v11 - 8);
  *(v9 + 376) = swift_task_alloc();
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A48E202C, 0, 0);
}

void sub_1A48E202C()
{
  v1 = v0[30];
  if (v1)
  {
    v2 = v0[29];
  }

  else
  {
    v2 = AppIntent.px_intentName.getter();
    v1 = v3;
  }

  v0[50] = v2;
  v0[51] = v1;
  v4 = v0[32];
  if (v4)
  {
    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = v0[31] & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A48E233C()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_1A48E2984;
  }

  else
  {
    v2 = sub_1A48E2450;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A48E300C(uint64_t a1)
{
  sub_1A48E363C(0, &qword_1EB12C820, MEMORY[0x1E695A340], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v17 - v3;
  v5 = sub_1A5240144();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  sub_1A3DEC7D8(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1A48E35CC(v4, &qword_1EB12C820, MEMORY[0x1E695A340]);
    return 0x6E776F6E6B6E75;
  }

  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 16))(v8, v11, v5);
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 == *MEMORY[0x1E695A308])
  {
    (*(v6 + 8))(v11, v5);
    return 7368769;
  }

  if (v13 == *MEMORY[0x1E695A300])
  {
    (*(v6 + 8))(v11, v5);
    return 0x696C636B6E696CLL;
  }

  if (v13 == *MEMORY[0x1E695A310])
  {
    goto LABEL_8;
  }

  if (v13 == *MEMORY[0x1E695A330])
  {
    (*(v6 + 8))(v11, v5);
    return 0x74756374726F6853;
  }

  else if (v13 == *MEMORY[0x1E695A320])
  {
    (*(v6 + 8))(v11, v5);
    return 0x676E6974736554;
  }

  else if (v13 == *MEMORY[0x1E695A2F0])
  {
    (*(v6 + 8))(v11, v5);
    return 0x75426E6F69746341;
  }

  else if (v13 == *MEMORY[0x1E695A338])
  {
    (*(v6 + 8))(v11, v5);
    return 0x6867696C746F7053;
  }

  else if (v13 == *MEMORY[0x1E695A2F8])
  {
    (*(v6 + 8))(v11, v5);
    return 0x206C6F72746E6F43;
  }

  else if (v13 == *MEMORY[0x1E695A318])
  {
    (*(v6 + 8))(v11, v5);
    return 0x746567646957;
  }

  else
  {
    if (v13 == *MEMORY[0x1E695A328])
    {
LABEL_8:
      (*(v6 + 8))(v11, v5);
      return 1769105747;
    }

    v18 = 0;
    v19 = 0xE000000000000000;
    sub_1A524E404();

    v18 = 0xD00000000000001BLL;
    v19 = 0x80000001A53F1BC0;
    v17[1] = sub_1A5240134();
    v14 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v14);

    MEMORY[0x1A5907B60](41, 0xE100000000000000);
    v15 = v18;
    v16 = *(v6 + 8);
    v16(v11, v5);
    v16(v8, v5);
    return v15;
  }
}

id sub_1A48E3598()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleLookupClass();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A48E35CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A48E363C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A48E363C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A48E36D4(char a1)
{
  v3 = a1 & 1;
  result = swift_beginAccess();
  v5 = *(v1 + 56);
  *(v1 + 56) = a1;
  if (v5 != v3)
  {
    if (a1)
    {
      sub_1A48E38A0();
    }

    return sub_1A48E3D5C();
  }

  return result;
}

void (*sub_1A48E373C(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 56);
  return sub_1A48E37C8;
}

void sub_1A48E37C8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(v3 + 56);
  *(v3 + 56) = v4;
  if (a2)
  {
    if (((v4 ^ v5) & 1) == 0)
    {
      goto LABEL_8;
    }

    if ((v4 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if ((v4 ^ v5))
  {
    if (!v4)
    {
LABEL_4:
      sub_1A48E3D5C();
      goto LABEL_8;
    }

LABEL_7:
    sub_1A48E38A0();
  }

LABEL_8:

  free(v2);
}

uint64_t sub_1A48E3838()
{
  swift_beginAccess();
  if (*(v0 + 56) == 1)
  {
    sub_1A48E3D5C();
  }

  return swift_deallocClassInstance();
}

void sub_1A48E38A0()
{
  v1 = v0;
  v2 = sub_1A5246E54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  if (qword_1EB1DEF48 != -1)
  {
    swift_once();
  }

  v9 = sub_1A5246F24();
  __swift_project_value_buffer(v9, qword_1EB1DEF50);

  v10 = sub_1A5246F04();
  v11 = sub_1A524D264();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v12 = 136446466;
    sub_1A3C2EF94();
  }

  if (qword_1EB1DEF68 != -1)
  {
    swift_once();
  }

  v13 = sub_1A5246E94();
  __swift_project_value_buffer(v13, qword_1EB1DEF70);
  sub_1A5246E84();

  sub_1A5246E14();

  v14 = sub_1A5246E84();
  sub_1A524D654();

  if (sub_1A524DEC4())
  {
    v15 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v15 = 136315138;
    sub_1A3C2EF94();
  }

  (*(v3 + 16))(v5, v8, v2);
  sub_1A5246ED4();
  swift_allocObject();
  v16 = sub_1A5246EC4();
  (*(v3 + 8))(v8, v2);
  *(v1 + 48) = v16;

  GSEventPushRunLoopMode();
  swift_beginAccess();
  _UIUpdateRequestActivate();
  swift_endAccess();
  sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524D474();
  swift_allocObject();
  swift_weakInit();
  sub_1A52458E4();
}

uint64_t sub_1A48E3D5C()
{
  v1 = v0;
  v2 = sub_1A5246EA4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1A5246E54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + 48))
  {
    v10 = qword_1EB1DEF68;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_1A5246E94();
    __swift_project_value_buffer(v11, qword_1EB1DEF70);
    v12 = sub_1A5246E84();
    sub_1A5246EB4();
    v22 = sub_1A524D644();
    if (sub_1A524DEC4())
    {

      sub_1A5246EE4();

      if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
      {
        v13 = "[Error] Interval already ended";
      }

      else
      {
        (*(v3 + 8))(v5, v2);
        v13 = "";
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, v22, v15, "PhotosCustomScrollAnimationTracker.tracking", v13, v14, 2u);
      MEMORY[0x1A590EEC0](v14, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }

  *(v1 + 40) = 0;

  *(v1 + 48) = 0;

  if (qword_1EB1DEF48 != -1)
  {
    swift_once();
  }

  v16 = sub_1A5246F24();
  __swift_project_value_buffer(v16, qword_1EB1DEF50);

  v17 = sub_1A5246F04();
  v18 = sub_1A524D264();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v19 = 136446466;
    sub_1A3C2EF94();
  }

  GSEventPopRunLoopMode();
  swift_beginAccess();
  _UIUpdateRequestDeactivate();
  return swift_endAccess();
}

void sub_1A48E41C4()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1DEF50);
  __swift_project_value_buffer(v0, qword_1EB1DEF50);
  sub_1A5246EF4();
}

uint64_t sub_1A48E4228()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E94();
  __swift_allocate_value_buffer(v4, qword_1EB1DEF70);
  __swift_project_value_buffer(v4, qword_1EB1DEF70);
  if (qword_1EB1DEF48 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB1DEF50);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1A5246E64();
}

uint64_t sub_1A48E4364()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 40))
    {
      sub_1A52458E4();
    }
  }

  return result;
}

uint64_t sub_1A48E4570()
{
  result = qword_1EB128E60;
  if (!qword_1EB128E60)
  {
    sub_1A52458E4();
  }

  return result;
}

uint64_t sub_1A48E4988(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1A48E49C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = a1;
  sub_1A48E4A20(a1);
  *a6 = v10;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = v12 & 1;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
}

void sub_1A48E4A20(uint64_t a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        PXPreferencesShowSharedLibrarySuggestionsInAppNotifications();
      }

      else
      {
        PXPreferencesShowSharedAlbumsActivityInAppNotifications();
      }
    }

    else if (a1 == 4)
    {
      PXUserAllowFullHDR();
    }

    else
    {
      PXPreferencesShouldIncludeSharedAlbumsActivityInMainViewInAppNotifications();
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      PXPreferencesIsFeaturedContentAllowed(a1);
    }

    else
    {
      v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v2 = sub_1A524C634();
      v3 = [v1 initWithSuiteName_];

      if (v3)
      {
        v4 = sub_1A524C634();
        v5 = [v3 objectForKey_];

        if (v5)
        {
          sub_1A524E0B4();
          swift_unknownObjectRelease();
          sub_1A3C35B00(v7);
          v6 = sub_1A524C634();
          [v3 BOOLForKey_];
        }

        else
        {

          memset(v7, 0, sizeof(v7));
          sub_1A3C35B00(v7);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else if (a1)
  {
    PXPreferencesIsVideoLoopingEnabled();
  }

  else
  {
    PXPreferencesIsVideoAutoplayEnabled();
  }
}

void sub_1A48E4BCC(int a1, void *a2, int a3)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A4531A04();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_1A5246F04();
  v12 = sub_1A524D264();
  if (os_log_type_enabled(v11, v12))
  {
    v29 = a1;
    v13 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v13 = 136446466;
    v28 = a2;
    v27[1] = a3;
    sub_1A3C2EF94();
  }

  (*(v7 + 8))(v9, v6);
  if (a3 > 3u)
  {
    v15 = a1 & 1;
    if (a3 > 5u)
    {
      if (a3 == 6)
      {
        PXPreferencesSetShowSharedLibrarySuggestionsInAppNotifications(v15);
      }

      else
      {
        PXPreferencesSetShowSharedAlbumsActivityInAppNotifications(v15);
      }
    }

    else if (a3 == 4)
    {
      PXPreferencesSetAllowFullHDR(v15);
    }

    else
    {
      PXPreferencesSetShouldIncludeSharedAlbumsActivityInMainViewInAppNotifications(v15);
    }
  }

  else
  {
    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        PXPreferencesSetIsFeaturedContentAllowed();
        return;
      }

      if (!a2)
      {
        sub_1A524D244();
        v23 = *sub_1A3CAA3FC();
        sub_1A5246DF4();

        return;
      }

      v16 = a2;
      v17 = [v16 photoAnalysisClient];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1A524CBB4();
        v20 = sub_1A524C634();
        v30[0] = 0;
        v21 = [v18 requestSetDefaultsObject:v19 forKey:v20 withError:v30];

        if (!v21)
        {
          v24 = v30[0];
          v25 = sub_1A5240B84();

          swift_willThrow();
          sub_1A524D244();
          v26 = *sub_1A3CAA3FC();
          sub_1A5246DF4();

          return;
        }

        v22 = v30[0];
      }

      return;
    }

    v14 = a1 & 1;
    if (a3)
    {
      PXPreferencesSetIsVideoLoopingEnabled(v14);
    }

    else
    {
      PXPreferencesSetVideoAutoplayEnabled(v14);
    }
  }
}

uint64_t sub_1A48E5148(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    v4 = 0xD00000000000002ELL;
    if (a1 != 6)
    {
      v4 = 0xD000000000000029;
    }

    v5 = 0xD000000000000031;
    if (a1 == 4)
    {
      v5 = 0x6C6C754677656976;
    }

    if (a1 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x79616C706F747561;
    v2 = 0xD000000000000013;
    if (a1 != 2)
    {
      v2 = 0xD000000000000011;
    }

    if (a1)
    {
      v1 = 0x706F6F6C6F747561;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1A48E527C()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  sub_1A524C794();
  v2 = *(v0 + 5);
  sub_1A524ECB4();
  sub_1A524ECB4();
  if (v2)
  {
    sub_1A524C794();
  }

  return sub_1A524ECE4();
}

uint64_t sub_1A48E5330()
{
  v1 = *(v0 + 5);
  MEMORY[0x1A590A010](*v0);
  sub_1A524C794();
  sub_1A524ECB4();
  if (!v1)
  {
    return sub_1A524ECB4();
  }

  sub_1A524ECB4();

  return sub_1A524C794();
}

uint64_t sub_1A48E53D4()
{
  v1 = *v0;
  v2 = *(v0 + 5);
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  sub_1A524C794();
  sub_1A524ECB4();
  sub_1A524ECB4();
  if (v2)
  {
    sub_1A524C794();
  }

  return sub_1A524ECE4();
}

uint64_t sub_1A48E5484(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1A48E54CC(v7, v8) & 1;
}

uint64_t sub_1A48E54CC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    v3 = a1;
    v4 = a2;
    v5 = sub_1A524EAB4();
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  if ((a1[24] ^ a2[24]))
  {
    return 0;
  }

  v8 = *(a1 + 5);
  v9 = *(a2 + 5);
  if (v8)
  {
    if (v9 && (*(a1 + 4) == *(a2 + 4) && v8 == v9 || (sub_1A524EAB4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v9)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1A48E55A0()
{
  result = qword_1EB144B70;
  if (!qword_1EB144B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144B70);
  }

  return result;
}

unint64_t sub_1A48E55F8()
{
  result = qword_1EB144B78;
  if (!qword_1EB144B78)
  {
    sub_1A3C371F0(255, &qword_1EB144B80, &type metadata for LemonadePhotosSetting.Kind, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144B78);
  }

  return result;
}

uint64_t sub_1A48E569C()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  swift_beginAccess();
}

uint64_t sub_1A48E5720@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t sub_1A48E576C(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 240);

  return v2(v3);
}

uint64_t sub_1A48E57C0(uint64_t a1)
{
  swift_beginAccess();
  if (v1[2] == a1)
  {
  }

  KeyPath = swift_getKeyPath();
  v4 = MEMORY[0x1EEE9AC00](KeyPath);
  v6 = v1;
  v7 = a1;
  (*(*v1 + 936))(v4);
}

void (*sub_1A48E58C8(uint64_t *a1))(void *a1)
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
  (*(*v1 + 928))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore23TimelineTextEngineModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A48EB9C4(&qword_1EB125848, type metadata accessor for TimelineTextEngineModel);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030();
  return sub_1A48E5A18;
}

uint64_t sub_1A48E5A44()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  swift_beginAccess();
  return v0[24];
}

uint64_t sub_1A48E5AC4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A48E5B6C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[24] == v2)
  {
    v1[24] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 936))(v5);
  }

  return result;
}

void (*sub_1A48E5C68(uint64_t *a1))(void *a1)
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
  (*(*v1 + 928))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore23TimelineTextEngineModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A48EB9C4(&qword_1EB125848, type metadata accessor for TimelineTextEngineModel);
  sub_1A52415F4();

  v4[7] = sub_1A3DE36A4();
  return sub_1A48E5DB8;
}

uint64_t sub_1A48E5DC4()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  swift_beginAccess();
  return v0[25];
}

uint64_t sub_1A48E5E44@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A48E5EEC(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[25] == v2)
  {
    v1[25] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 936))(v5);
  }

  return result;
}

void (*sub_1A48E5FE8(uint64_t *a1))(void *a1)
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
  (*(*v1 + 928))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore23TimelineTextEngineModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A48EB9C4(&qword_1EB125848, type metadata accessor for TimelineTextEngineModel);
  sub_1A52415F4();

  v4[7] = sub_1A4197328();
  return sub_1A48E6138;
}

uint64_t sub_1A48E6144()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  swift_beginAccess();
  return v0[26];
}

uint64_t sub_1A48E61C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 376))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A48E626C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[26] == v2)
  {
    v1[26] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 936))(v5);
  }

  return result;
}

void (*sub_1A48E6368(uint64_t *a1))(void *a1)
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
  (*(*v1 + 928))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore23TimelineTextEngineModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A48EB9C4(&qword_1EB125848, type metadata accessor for TimelineTextEngineModel);
  sub_1A52415F4();

  v4[7] = sub_1A41976F8();
  return sub_1A48E64B8;
}

uint64_t sub_1A48E64C4()
{
  if ((*(*v0 + 328))())
  {
    return 1;
  }

  v2 = *(*v0 + 376);

  return v2();
}

void sub_1A48E654C()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A48E65D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 432))();
  *a2 = result;
  return result;
}

uint64_t sub_1A48E6680(uint64_t a1)
{
  swift_beginAccess();
  if (sub_1A3D3D27C(v1[4], a1))
  {
    v1[4] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 936))(v5);
  }
}

void (*sub_1A48E6798(uint64_t *a1))(void *a1)
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
  (*(*v1 + 928))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore23TimelineTextEngineModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A48EB9C4(&qword_1EB125848, type metadata accessor for TimelineTextEngineModel);
  sub_1A52415F4();

  v4[7] = sub_1A4504FF8();
  return sub_1A48E68E8;
}

uint64_t sub_1A48E68F4()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  swift_beginAccess();
  return v0[5];
}

uint64_t sub_1A48E6974@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 480))();
  *a2 = result;
  return result;
}

uint64_t sub_1A48E6A18(uint64_t a1)
{
  result = swift_beginAccess();
  if (v1[5] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 936))(v5);
  }

  return result;
}

void (*sub_1A48E6B10(uint64_t *a1))(void *a1)
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
  (*(*v1 + 928))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore23TimelineTextEngineModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A48EB9C4(&qword_1EB125848, type metadata accessor for TimelineTextEngineModel);
  sub_1A52415F4();

  v4[7] = sub_1A3DE3B2C();
  return sub_1A48E6C60;
}

uint64_t sub_1A48E6C6C()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  swift_beginAccess();
  return v0[6];
}

uint64_t sub_1A48E6CEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 528))();
  *a2 = result;
  return result;
}

uint64_t sub_1A48E6D90(uint64_t a1)
{
  result = swift_beginAccess();
  if (v1[6] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 936))(v5);
  }

  return result;
}

void (*sub_1A48E6E88(uint64_t *a1))(void *a1)
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
  (*(*v1 + 928))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore23TimelineTextEngineModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A48EB9C4(&qword_1EB125848, type metadata accessor for TimelineTextEngineModel);
  sub_1A52415F4();

  v4[7] = sub_1A47ADC18();
  return sub_1A48E6FD8;
}

void *sub_1A48E6FE4()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  swift_beginAccess();
  v1 = v0[7];
  v2 = v1;
  return v1;
}

uint64_t sub_1A48E706C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 576))();
  *a2 = result;
  return result;
}

uint64_t sub_1A48E70C0(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 584);
  v4 = *a1;
  return v3(v2);
}

void sub_1A48E7120(void *a1)
{
  swift_beginAccess();
  v3 = v1[7];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 936))(v9);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &unk_1EB126680);
  v4 = v3;
  v5 = a1;
  v6 = sub_1A524DBF4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[7];
LABEL_8:
  v1[7] = a1;
}

void (*sub_1A48E728C(uint64_t *a1))(void *a1)
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
  (*(*v1 + 928))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore23TimelineTextEngineModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A48EB9C4(&qword_1EB125848, type metadata accessor for TimelineTextEngineModel);
  sub_1A52415F4();

  v4[7] = sub_1A3DE3FB4();
  return sub_1A48E73DC;
}

void sub_1A48E7438()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A48E74BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 624))();
  *a2 = result;
  return result;
}

void (*sub_1A48E7694(uint64_t *a1))(void *a1)
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
  (*(*v1 + 928))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore23TimelineTextEngineModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A48EB9C4(&qword_1EB125848, type metadata accessor for TimelineTextEngineModel);
  sub_1A52415F4();

  v4[7] = sub_1A48E73E8();
  return sub_1A48E77E4;
}

void sub_1A48E77F0()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A48E7874@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 672))();
  *a2 = result;
  return result;
}

void (*sub_1A48E7A4C(uint64_t *a1))(void *a1)
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
  (*(*v1 + 928))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore23TimelineTextEngineModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A48EB9C4(&qword_1EB125848, type metadata accessor for TimelineTextEngineModel);
  sub_1A52415F4();

  v4[7] = sub_1A43E1604();
  return sub_1A48E7B9C;
}

void sub_1A48E7BA8()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A48E7C2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 720))();
  *a2 = result;
  return result;
}

void (*sub_1A48E7E04(uint64_t *a1))(void *a1)
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
  (*(*v1 + 928))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore23TimelineTextEngineModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A48EB9C4(&qword_1EB125848, type metadata accessor for TimelineTextEngineModel);
  sub_1A52415F4();

  v4[7] = sub_1A4587924();
  return sub_1A48E7F54;
}

void sub_1A48E7F60()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A48E7FE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 768))();
  *a2 = result;
  return result;
}

void (*sub_1A48E81BC(uint64_t *a1))(void *a1)
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
  (*(*v1 + 928))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore23TimelineTextEngineModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A48EB9C4(&qword_1EB125848, type metadata accessor for TimelineTextEngineModel);
  sub_1A52415F4();

  v4[7] = sub_1A47AEDFC();
  return sub_1A48E830C;
}

uint64_t (*sub_1A48E8318(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A48E836C;
}

uint64_t sub_1A48E836C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*(**(a1 + 24) + 920))(result);
  }

  return result;
}

uint64_t sub_1A48E83C8()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  swift_beginAccess();
  return v0[96];
}

uint64_t sub_1A48E8448@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 816))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A48E84F0(char a1)
{
  v2 = a1 & 1;
  v3 = swift_beginAccess();
  if (v1[96] == v2)
  {
    v1[96] = v2;
    return (*(*v1 + 920))(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v7 = v1;
    v8 = v2;
    (*(*v1 + 936))(v5);
  }
}

void (*sub_1A48E8618(uint64_t *a1))(void *a1)
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
  (*(*v1 + 928))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore23TimelineTextEngineModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A48EB9C4(&qword_1EB125848, type metadata accessor for TimelineTextEngineModel);
  sub_1A52415F4();

  v4[7] = sub_1A48E8318(v4);
  return sub_1A48E8768;
}

void sub_1A48E87B4()
{
  *(v0 + 24) = 256;
  *(v0 + 26) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = v1;
  *(v0 + 72) = v1;
  *(v0 + 80) = v1;
  *(v0 + 88) = v1;
  *(v0 + 96) = 0;
  if (qword_1EB1579D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB1579D8;
  sub_1A5246E74();
  sub_1A5246EF4();
}

id *sub_1A48E8890()
{
  v1 = (*(*v0 + 72))();
  [v1 invalidate];

  v2 = OBJC_IVAR____TtC12PhotosUICore23TimelineTextEngineModel_signposter;
  v3 = sub_1A5246E94();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC12PhotosUICore23TimelineTextEngineModel_logger;
  v5 = sub_1A5246F24();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC12PhotosUICore23TimelineTextEngineModel___observationRegistrar;
  v7 = sub_1A5241614();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t sub_1A48E89E8()
{
  sub_1A48E8890();

  return swift_deallocClassInstance();
}

uint64_t sub_1A48E8A40()
{
  v1 = v0;
  v2 = type metadata accessor for TimelineTextEngineText(0);
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v40 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 432);
  v6 = *(v5(v3) + 16);

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = (v5)(v7);
  v9 = result;
  v10 = *(result + 16);
  if (v10)
  {
    v39 = v10 - 1;
    v41 = result + 40;
    v42 = MEMORY[0x1E69E7CC0];
    v11 = (result + 40);
    v12 = 0;
    while (v12 < *(v9 + 16))
    {
      if (*(v11 - 1))
      {
        v13 = 0;
      }

      else
      {
        v13 = *v11 == 0xE000000000000000;
      }

      if (!v13)
      {
        result = sub_1A524EAB4();
        if ((result & 1) == 0)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      ++v12;
      v11 += 2;
      if (v10 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_13:

  v14 = *(v42 + 16);

  if (v14 < 3)
  {
    v16 = sub_1A5246F04();
    v17 = sub_1A524D264();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134218240;
      *(v18 + 4) = v14;
      *(v18 + 12) = 2048;
      *(v18 + 14) = 3;
      _os_log_impl(&dword_1A3C1C000, v16, v17, "Not displaying text in animation as number of text %ld < threshold %ld", v18, 0x16u);
      MEMORY[0x1A590EEC0](v18, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v19 = (*v1 + 480);
  v20 = *v19;
  v21 = v19;
  v39 = (*v19)(v15);
  v22 = (*(*v1 + 816))();
  v23 = *(*(*v1 + 232))();
  if (v22)
  {
    v24 = (*(v23 + 352))();
  }

  else
  {
    v24 = (*(v23 + 208))();
  }

  v25 = v24;

  if (v25 < 0)
  {
    goto LABEL_37;
  }

  v33[1] = v21;
  v34 = v20;
  if (!v25)
  {
    v41 = MEMORY[0x1E69E7CC0];
    result = v34(result);
    if (!__OFADD__(result, *(v41 + 16)))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_38;
  }

  v42 = 0;
  v26 = *(*v1 + 232);
  v37 = *v1 + 232;
  v38 = v26;
  v41 = MEMORY[0x1E69E7CC0];
  v27 = *((v5)(result) + 16);

  v29 = v27 - 1;
  if (v27 - 1 >= v39)
  {
    v29 = v39;
  }

  v30 = v29 & ~(v29 >> 63);
  v31 = *((v5)(v28) + 16);

  if (!v31)
  {
    goto LABEL_34;
  }

  v32 = v30 % v31;
  result = (v5)(result);
  if ((v32 & 0x8000000000000000) == 0)
  {
    if (v32 < *(result + 16))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  __break(1u);
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  __break(1u);
  return result;
}

void sub_1A48E9138(uint64_t a1)
{
  v3 = sub_1A5246E54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  if (*(a1 + 16))
  {
    v11 = *((*(*v1 + 432))(v8) + 16);

    sub_1A48E93EC(a1);
    sub_1A5246E84();
    if (v11)
    {
      sub_1A5246E24();
      v12 = sub_1A5246E84();
      v13 = sub_1A524D664();
      if (sub_1A524DEC4())
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_1A5246E34();
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, v13, v15, "Updated Animation", "", v14, 2u);
        MEMORY[0x1A590EEC0](v14, -1, -1);
      }

      (*(v4 + 8))(v6, v3);
    }

    else
    {
      sub_1A5246E24();
      v16 = sub_1A5246E84();
      v17 = sub_1A524D664();
      if (sub_1A524DEC4())
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = sub_1A5246E34();
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v16, v17, v19, "Start Animation", "", v18, 2u);
        MEMORY[0x1A590EEC0](v18, -1, -1);
      }

      v20 = (*(v4 + 8))(v10, v3);
      (*(*v1 + 872))(v20);
    }
  }
}

uint64_t sub_1A48E93EC(uint64_t a1)
{
  v2 = v1;
  v4 = (*v1 + 432);
  v5 = *v4;
  v6 = v4;
  v7 = (*v4)();
  v8 = *(v5() + 16);

  v10 = *v1 + 480;
  v11 = (*v10)(v9);
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
  }

  else if (((v8 - v11) & 0x8000000000000000) == 0)
  {
    v33[0] = a1;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  swift_unknownObjectRelease();
  sub_1A3ECD684(v7, v7 + 32, 0, v1);
  v33[0] = v31;
  sub_1A48EAFF4();
  swift_unknownObjectRelease();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v12 = *(v7 + 16);
    if (v12 >= v8)
    {
      v13 = v12 - v8;
    }

    else
    {
      v13 = 0;
    }

    sub_1A48EBD50(v7, v7 + 32, v13, (2 * v12) | 1);
    swift_unknownObjectRelease();
    swift_unknownObjectRetain_n();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  swift_unknownObjectRelease();
  sub_1A3ECD684(v7, v7 + 32, v33, v6 | (2 * v10));
  v33[0] = v32;
  sub_1A48EAFF4();
  result = swift_unknownObjectRelease();
  v15 = v33[0];
  v16 = *(v33[0] + 16);
  v17 = __OFADD__(v16, v8 >> 1);
  v18 = v16 + (v8 >> 1);
  if (v17)
  {
    __break(1u);
    goto LABEL_26;
  }

  v19 = MEMORY[0x1E69E7CC0];
  v33[0] = sub_1A3D3D914(0, v18 & ~(v18 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v20 = swift_unknownObjectRetain();
  sub_1A48EBD50(v20, v7 + 32, 0, v8);
  swift_unknownObjectRelease();
  sub_1A3D3A048(v15);
  swift_unknownObjectRelease();
  v34 = v33[0];
  v21 = *(v33[0] + 16);
  v22 = v5 - v21;
  if (v5 - v21 >= 1)
  {
    v23 = sub_1A48EAF6C(v5 - v21, 0);
    result = sub_1A48EBCA0(v33, (v23 + 4), v22, 0, v22);
    if (result == v22)
    {
      v24 = v23[2];
      if (!v24)
      {
        goto LABEL_19;
      }

LABEL_15:
      v33[0] = v19;
      sub_1A3C57108(0, v24, 0);
      v19 = v33[0];
      v25 = *(v33[0] + 16);
      v26 = 16 * v25;
      do
      {
        v33[0] = v19;
        v27 = *(v19 + 24);
        v28 = v25 + 1;
        if (v25 >= v27 >> 1)
        {
          sub_1A3C57108((v27 > 1), v25 + 1, 1);
          v19 = v33[0];
        }

        *(v19 + 16) = v28;
        v29 = v19 + v26;
        *(v29 + 32) = 0;
        *(v29 + 40) = 0xE000000000000000;
        v26 += 16;
        v25 = v28;
        --v24;
      }

      while (v24);
      goto LABEL_19;
    }

LABEL_26:
    __break(1u);
    return result;
  }

  v24 = *(v19 + 16);
  if (v24)
  {
    goto LABEL_15;
  }

LABEL_19:

  sub_1A3D3A048(v19);
  (*(*v2 + 440))(v34);
  v30 = *(*v2 + 488);

  return v30(0);
}

uint64_t sub_1A48E9AA4()
{
  v1 = v0;
  v2 = (*(*v0 + 848))();
  v3 = (*(*v0 + 632))(v2);
  v4 = (*(*v0 + 816))(v3);
  v5 = *(*(*v0 + 232))();
  if (v4)
  {
    (*(v5 + 400))();
  }

  else
  {
    v6 = (*(v5 + 256))();
  }

  v7 = v6;

  v8 = objc_opt_self();
  v9 = swift_allocObject();
  swift_weakInit();
  v13[4] = sub_1A48EB5E8;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1A3D7692C;
  v13[3] = &block_descriptor_298;
  v10 = _Block_copy(v13);

  v11 = [v8 scheduledTimerWithTimeInterval:1 repeats:v10 block:v7 * 0.5];
  _Block_release(v10);
  (*(*v1 + 584))(v11);
  return (*(*v1 + 336))(0);
}

uint64_t sub_1A48E9D4C()
{
  v1 = (*(*v0 + 576))();
  [v1 invalidate];

  (*(*v0 + 584))(0);
  v2 = *(*v0 + 336);

  return v2(1);
}

uint64_t sub_1A48E9E2C()
{
  v1 = (*(*v0 + 328))();
  v2 = *v0;
  if (v1)
  {
    (*(v2 + 904))();
    v3 = *(*v0 + 872);

    return v3();
  }

  else
  {
    v5 = *(v2 + 880);

    return v5();
  }
}

uint64_t sub_1A48E9F08()
{
  v1 = v0;
  v23 = sub_1A524BEE4();
  v26 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BFC4();
  v22 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v15 = (*(*v0 + 576))(v12);
  [v15 invalidate];

  (*(*v1 + 584))(0);
  sub_1A3C52C70(0, &qword_1EB12B180);
  v16 = sub_1A524D474();
  sub_1A524BFA4();
  sub_1A524C014();
  v17 = *(v8 + 8);
  v17(v10, v7);
  aBlock[4] = sub_1A48EB900;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_34_6;
  v18 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A48EB9C4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C2A598(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  v19 = v23;
  sub_1A524E224();
  MEMORY[0x1A5908790](v14, v6, v3, v18);
  _Block_release(v18);

  (*(v26 + 8))(v3, v19);
  (*(v24 + 8))(v6, v25);
  return (v17)(v14, v22);
}

uint64_t sub_1A48EA34C()
{
  v1 = MEMORY[0x1E69E7CC0];
  (*(*v0 + 632))(MEMORY[0x1E69E7CC0]);
  (*(*v0 + 680))(v1);
  (*(*v0 + 728))(v1);
  (*(*v0 + 776))(v1);
  v2 = *(*v0 + 536);

  return v2(0);
}

uint64_t sub_1A48EA49C()
{
  v1 = v0;
  v2 = sub_1A5246E54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5246E84();
  sub_1A5246E24();
  v6 = sub_1A5246E84();
  v7 = sub_1A524D664();
  if (sub_1A524DEC4())
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, v7, v9, "Clear Animation", "", v8, 2u);
    MEMORY[0x1A590EEC0](v8, -1, -1);
  }

  v10 = (*(v3 + 8))(v5, v2);
  v11 = (*(*v0 + 576))(v10);
  [v11 invalidate];

  (*(*v1 + 584))(0);
  (*(*v1 + 336))(1);
  v12 = (*(*v1 + 288))(0);
  (*(*v1 + 904))(v12);
  (*(*v1 + 440))(MEMORY[0x1E69E7CC0]);
  return (*(*v1 + 488))(0);
}

void *sub_1A48EA7BC()
{
  v1 = (*v0 + 432);
  v2 = *v1;
  v3 = *((*v1)() + 16);

  if (v3)
  {
    result = (*(*v0 + 576))(result);
    if (result)
    {

      v5 = (*(*v0 + 328))();
      v6 = v2();
      (*(*v0 + 912))();
      (*(*v0 + 856))(v6);

      if (v5)
      {
        v7 = *(*v0 + 880);

        return v7();
      }
    }
  }

  return result;
}

uint64_t sub_1A48EAA94()
{
  sub_1A524EC94();
  sub_1A52411C4();
  sub_1A48EB9C4(&unk_1EB12AFC0, MEMORY[0x1E69695A8]);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A48EAB3C()
{
  sub_1A52411C4();
  sub_1A48EB9C4(&unk_1EB12AFC0, MEMORY[0x1E69695A8]);
  sub_1A524C4B4();

  return sub_1A524C794();
}

uint64_t sub_1A48EABD8()
{
  sub_1A524EC94();
  sub_1A52411C4();
  sub_1A48EB9C4(&unk_1EB12AFC0, MEMORY[0x1E69695A8]);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A48EAC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s12PhotosUICore33LemonadeMemoryPlayerConfigurationV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1A524EAB4();
}

uint64_t sub_1A48EAD04()
{
  sub_1A3C52C70(0, &qword_1EB12B140);
  sub_1A524C814();
  result = sub_1A524DEE4();
  qword_1EB1579D8 = result;
  return result;
}

size_t sub_1A48EAD70(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A3C2A598(0, &qword_1EB1203B8, type metadata accessor for TimelineTextEngineText, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for TimelineTextEngineText(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for TimelineTextEngineText(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1A48EAF6C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A3C4D548(0, &qword_1EB1261E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void sub_1A48EAFF4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 < 2)
  {
    return;
  }

  v4 = 0;
  while (1)
  {
    v10 = 0;
    MEMORY[0x1A590EEE0](&v10, 8);
    v6 = (v10 * v2) >> 64;
    if (v2 > v10 * v2)
    {
      v7 = -v2 % v2;
      if (v7 > v10 * v2)
      {
        do
        {
          v10 = 0;
          MEMORY[0x1A590EEE0](&v10, 8);
        }

        while (v7 > v10 * v2);
        v6 = (v10 * v2) >> 64;
      }
    }

    v8 = v4 + v6;
    if (__OFADD__(v4, v6))
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v4 != v8)
    {
      break;
    }

    --v2;
    if (v4++ == v3)
    {
      return;
    }
  }

  v9 = *(v1 + 16);
  if (v4 >= v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < v9)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_16:
  __break(1u);
  __break(1u);
  __break(1u);
}

uint64_t sub_1A48EB180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineTextEngineText(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    sub_1A48EBE50(v13, v10);
    sub_1A48EBE50(v14, v6);
    if ((_s12PhotosUICore33LemonadeMemoryPlayerConfigurationV2eeoiySbAC_ACtFZ_0() & 1) == 0)
    {
      break;
    }

    v16 = *(v4 + 20);
    v17 = *&v10[v16];
    v18 = *&v10[v16 + 8];
    v19 = &v6[v16];
    if (v17 == *v19 && v18 == *(v19 + 1))
    {
      sub_1A48EBEB4(v6);
      sub_1A48EBEB4(v10);
    }

    else
    {
      v21 = sub_1A524EAB4();
      sub_1A48EBEB4(v6);
      sub_1A48EBEB4(v10);
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    v14 += v15;
    v13 += v15;
    if (!--v11)
    {
      return 1;
    }
  }

  sub_1A48EBEB4(v6);
  sub_1A48EBEB4(v10);
  return 0;
}

void sub_1A48EB344()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 64) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A48EB3A8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 72) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A48EB40C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 80) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A48EB470()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 88) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A48EB4D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_beginAccess();
  v1[96] = v2;
  return (*(*v1 + 920))(v3);
}

uint64_t sub_1A48EB584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineTextEngineText(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A48EB5E8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (((*(*result + 328))(result) & 1) == 0 && ((*(*v1 + 280))() & 1) == 0)
    {
      result = (*(*v1 + 528))();
      v2 = result + 1;
      if (__OFADD__(result, 1))
      {
        __break(1u);
        return result;
      }

      v3 = -v2 < 0;
      v4 = -v2 & 3;
      v5 = v2 & 3;
      if (v3)
      {
        v6 = v5;
      }

      else
      {
        v6 = -v4;
      }

      if (v6 > 1)
      {
        if (v6 == 2)
        {
          if (((*(*v1 + 816))() & 1) == 0)
          {
            v10 = (*(*v1 + 848))();
            (*(*v1 + 680))(v10);
          }
        }

        else if (v6 == 3 && ((*(*v1 + 816))() & 1) == 0)
        {
          v8 = (*(*v1 + 848))();
          (*(*v1 + 776))(v8);
        }
      }

      else if (v6)
      {
        if (v6 == 1)
        {
          v7 = (*(*v1 + 848))();
          (*(*v1 + 728))(v7);
        }
      }

      else
      {
        v9 = (*(*v1 + 848))();
        (*(*v1 + 632))(v9);
      }

      (*(*v1 + 536))(v6);
    }
  }

  return result;
}

uint64_t sub_1A48EB900()
{
  sub_1A524BD44();
  sub_1A52483D4();
}

uint64_t sub_1A48EB9C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A48EBA5C()
{
  result = sub_1A5246E94();
  if (v1 <= 0x3F)
  {
    result = sub_1A5246F24();
    if (v2 <= 0x3F)
    {
      result = sub_1A5241614();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1A48EBBD8()
{
  result = sub_1A52411C4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t *sub_1A48EBCA0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1A48EBD50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 2);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v7 + 3) >> 1)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v12 = v8 + v6;
      }

      else
      {
        v12 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_1A3D3D914(isUniquelyReferenced_nonNull_native, v12, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v7 + 3) >> 1) - *(v7 + 2) < v6)
  {
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
LABEL_16:
    *v4 = v7;
    return;
  }

  v13 = *(v7 + 2);
  v14 = __OFADD__(v13, v6);
  v15 = v13 + v6;
  if (!v14)
  {
    *(v7 + 2) = v15;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1A48EBE50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineTextEngineText(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A48EBEB4(uint64_t a1)
{
  v2 = type metadata accessor for TimelineTextEngineText(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A48EBF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1A5241534();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for PhotosDetailsTimeZoneSearchDataSource(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

void sub_1A48EBFDC(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t a4)
{
  v6 = type metadata accessor for PhotosDetailsTimeZoneSearchResult(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  sub_1A48EC69C(0, &qword_1EB125FF8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v51 - v14;
  v66 = sub_1A5241534();
  v16 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v62 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_opt_self() sharedALCityManager];
  if (v18)
  {
    v63 = v18;
    v19 = sub_1A524C634();
    v20 = [v63 px:v19 typedCitiesMatchingName:?];

    if (v20)
    {
      v59 = v12;
      v60 = v9;
      sub_1A3C52C70(0, &qword_1EB144B88);
      v21 = sub_1A524CA34();

      if (v21 >> 62)
      {
        goto LABEL_27;
      }

      for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
      {
        v54 = v7;
        v55 = v6;
        v56 = a4;
        v57 = a3;
        v64 = v21 & 0xFFFFFFFFFFFFFF8;
        v65 = v21 & 0xC000000000000001;
        a3 = (v16 + 48);
        v58 = (v16 + 32);
        v52 = (v16 + 8);
        v53 = (v16 + 16);
        v61 = MEMORY[0x1E69E7CC0];
        a4 = 0;
        while (1)
        {
          if (v65)
          {
            v23 = MEMORY[0x1A59097F0](a4, v21);
          }

          else
          {
            if (a4 >= *(v64 + 16))
            {
              goto LABEL_26;
            }

            v23 = *(v21 + 8 * a4 + 32);
          }

          v24 = v23;
          v7 = a4 + 1;
          if (__OFADD__(a4, 1))
          {
            break;
          }

          v25 = [v23 timeZone];
          if (!v25)
          {
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
            return;
          }

          v16 = v25;
          sub_1A524C674();
          v6 = v26;

          sub_1A52414D4();

          if ((*a3)(v15, 1, v66) == 1)
          {

            sub_1A48ED468(v15, &qword_1EB125FF8, MEMORY[0x1E6969BC0]);
            ++a4;
            if (v7 == i)
            {
              goto LABEL_23;
            }
          }

          else
          {
            (*v58)(v62, v15, v66);
            v27 = [v24 classicIdentifier];
            if (!v27)
            {
              goto LABEL_34;
            }

            v28 = v27;
            v29 = sub_1A524C674();
            v31 = v30;

            v32 = [v24 displayNameIncludingCountry_];
            if (!v32)
            {
              goto LABEL_33;
            }

            v33 = v32;
            v6 = sub_1A524C674();
            v51 = v34;

            v35 = v59;
            (*v53)(&v59[*(v55 + 36)], v62, v66);
            *v35 = v29;
            *(v35 + 8) = v31;
            v36 = v51;
            *(v35 + 16) = v6;
            *(v35 + 24) = v36;
            *(v35 + 32) = 0u;
            *(v35 + 48) = 0u;
            sub_1A48ED3A0(v35, v60, type metadata accessor for PhotosDetailsTimeZoneSearchResult);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v61 = sub_1A48ECB50(0, v61[2] + 1, 1, v61);
            }

            v38 = v61[2];
            v37 = v61[3];
            v16 = (v38 + 1);
            if (v38 >= v37 >> 1)
            {
              v61 = sub_1A48ECB50(v37 > 1, v38 + 1, 1, v61);
            }

            (*v52)(v62, v66);
            v39 = v60;
            v40 = v61;
            v61[2] = v16;
            sub_1A48ECD4C(v39, v40 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v38);
            sub_1A48ED408(v59, type metadata accessor for PhotosDetailsTimeZoneSearchResult);
            if (v7 == i)
            {
LABEL_23:

              v41 = sub_1A524C634();
              v42 = PXLocalizedString(v41);

              v43 = sub_1A524C674();
              v45 = v44;

              v46 = sub_1A48EC700(v61);

              sub_1A49CC3A4(v43, v45, v46, v67);
              sub_1A48ED2A4(0, &qword_1EB12DFB0, &type metadata for PhotosDetailsSearchViewResultSection, MEMORY[0x1E69E6F90]);
              v47 = swift_allocObject();
              v48 = v67[0];
              v49 = v67[1];
              *(v47 + 16) = xmmword_1A52F8E10;
              *(v47 + 32) = v48;
              *(v47 + 48) = v49;
              *(v47 + 64) = v68;
              v57();

              return;
            }

            a4 = v7;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        ;
      }

      (a3)(MEMORY[0x1E69E7CC0]);
    }

    v50 = v63;
  }
}

void sub_1A48EC69C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A48EC700(uint64_t a1)
{
  v2 = type metadata accessor for PhotosDetailsTimeZoneSearchResult(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1A3EBE6BC(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1A48ED3A0(v8, v5, type metadata accessor for PhotosDetailsTimeZoneSearchResult);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1A3EBE6BC((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_1F172CC08;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_1A48ED3A0(v5, boxed_opaque_existential_1, type metadata accessor for PhotosDetailsTimeZoneSearchResult);
      *(v7 + 16) = v11 + 1;
      sub_1A3C34460(&v14, v7 + 40 * v11 + 32);
      sub_1A48ED408(v5, type metadata accessor for PhotosDetailsTimeZoneSearchResult);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1A48EC8D0()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  v2 = sub_1A524C674();
  return v2;
}

uint64_t sub_1A48EC944()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  v2 = sub_1A524C674();
  return v2;
}

uint64_t sub_1A48EC9B8()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  v2 = sub_1A524C674();
  return v2;
}

void sub_1A48ECA2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A524C634();
  v5 = PXLocalizedString(v4);

  sub_1A524C674();
  sub_1A3C71018(0, &qword_1EB12B110, &qword_1EB12B100);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A52F8E10;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1A3D710E8();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

size_t sub_1A48ECB50(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A48EC69C(0, &unk_1EB144B98, type metadata accessor for PhotosDetailsTimeZoneSearchResult, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for PhotosDetailsTimeZoneSearchResult(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PhotosDetailsTimeZoneSearchResult(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1A48ECD4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosDetailsTimeZoneSearchResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A48ECDB0(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  sub_1A48EC69C(0, &qword_1EB144B90, type metadata accessor for PhotosDetailsTimeZoneSearchResult, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for PhotosDetailsTimeZoneSearchResult(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_opt_self();
  v10 = sub_1A524C634();
  sub_1A48EC69C(0, &qword_1EB126200, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v12;
  v13 = type metadata accessor for PhotosDetailsTimeZoneSearchDataSource(0);
  v24[3] = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  v21 = v2;
  sub_1A48ED3A0(v2, boxed_opaque_existential_1, type metadata accessor for PhotosDetailsTimeZoneSearchDataSource);
  String.init(forType:)(v24);
  v15 = sub_1A524C634();

  *(inited + 48) = v15;
  sub_1A3E75770(inited);
  swift_setDeallocating();
  sub_1A48ED408(inited + 32, sub_1A3F24E98);
  sub_1A3C52C70(0, &qword_1EB12B160);
  v16 = sub_1A524C3D4();

  [v22 sendEvent:v10 withPayload:v16];

  sub_1A3C341C8(v23, v24);
  sub_1A3C34400(0, &qword_1EB12DDB8);
  v17 = swift_dynamicCast();
  v18 = *(v7 + 56);
  if (v17)
  {
    v18(v5, 0, 1, v6);
    sub_1A48ECD4C(v5, v9);
    (*(v21 + *(v13 + 20)))(&v9[*(v6 + 36)]);
    return sub_1A48ED408(v9, type metadata accessor for PhotosDetailsTimeZoneSearchResult);
  }

  else
  {
    v18(v5, 1, 1, v6);
    return sub_1A48ED468(v5, &qword_1EB144B90, type metadata accessor for PhotosDetailsTimeZoneSearchResult);
  }
}

void sub_1A48ED17C()
{
  sub_1A48ED2A4(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A48ED2A4(319, &qword_1EB121CC0, MEMORY[0x1E6981748], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A48ED2A4(319, &qword_1EB127560, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A5241534();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A48ED2A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A48ED31C()
{
  result = sub_1A5241534();
  if (v1 <= 0x3F)
  {
    result = sub_1A3C3637C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A48ED3A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A48ED408(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A48ED468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A48EC69C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for LemonadeSearchCollectionResultCell()
{
  result = qword_1EB1611C0;
  if (!qword_1EB1611C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A48ED558(uint64_t a1@<X8>)
{
  sub_1A48EE1C4(a1);
  sub_1A48EF9CC();
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A48ED640(0);
  v3 = (a1 + *(v2 + 36));
  *v3 = v7;
  v3[1] = v8;
  v3[2] = v9;
  v4 = sub_1A48EEF8C();
  sub_1A48F1728(0, &qword_1EB144BB8, sub_1A48ED640, MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
  v6 = a1 + *(v5 + 36);
  *v6 = v4;
  *(v6 + 8) = 0;
}

void sub_1A48ED67C()
{
  if (!qword_1EB144BC8)
  {
    sub_1A48F1728(255, &qword_1EB144BD0, sub_1A48ED70C, MEMORY[0x1E69E73E0], MEMORY[0x1E697F960]);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB144BC8);
    }
  }
}

void sub_1A48ED79C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A48ED868()
{
  if (!qword_1EB124E10)
  {
    v0 = sub_1A5242D24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124E10);
    }
  }
}

void sub_1A48ED980()
{
  if (!qword_1EB144C10)
  {
    sub_1A48ED79C(255, &qword_1EB144C18, MEMORY[0x1E69C2928], sub_1A40C6344, MEMORY[0x1E697F960]);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB144C10);
    }
  }
}

unint64_t sub_1A48EDA1C()
{
  result = qword_1EB144C28;
  if (!qword_1EB144C28)
  {
    sub_1A48F1728(255, &qword_1EB144BB8, sub_1A48ED640, MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    sub_1A48EDAD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144C28);
  }

  return result;
}

unint64_t sub_1A48EDAD4()
{
  result = qword_1EB144C30;
  if (!qword_1EB144C30)
  {
    sub_1A48ED640(255);
    sub_1A48EE028(&qword_1EB144C38, sub_1A48ED67C, sub_1A48EDB84);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144C30);
  }

  return result;
}

unint64_t sub_1A48EDB84()
{
  result = qword_1EB144C40;
  if (!qword_1EB144C40)
  {
    sub_1A48F1728(255, &qword_1EB144BD0, sub_1A48ED70C, MEMORY[0x1E69E73E0], MEMORY[0x1E697F960]);
    sub_1A48EDC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144C40);
  }

  return result;
}

unint64_t sub_1A48EDC3C()
{
  result = qword_1EB144C48;
  if (!qword_1EB144C48)
  {
    sub_1A48ED70C(255);
    sub_1A48EDCBC();
    sub_1A48EDF78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144C48);
  }

  return result;
}

unint64_t sub_1A48EDCBC()
{
  result = qword_1EB144C50;
  if (!qword_1EB144C50)
  {
    sub_1A48ED754(255);
    sub_1A48EDD6C();
    sub_1A48F1678(&qword_1EB124E20, sub_1A48ED868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144C50);
  }

  return result;
}

unint64_t sub_1A48EDD6C()
{
  result = qword_1EB144C58;
  if (!qword_1EB144C58)
  {
    sub_1A48ED820(255);
    sub_1A48F1678(&qword_1EB124E20, sub_1A48ED868);
    sub_1A48EDE1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144C58);
  }

  return result;
}

unint64_t sub_1A48EDE1C()
{
  result = qword_1EB144C68;
  if (!qword_1EB144C68)
  {
    sub_1A48ED8C0(255);
    sub_1A48EDECC();
    sub_1A48F1678(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144C68);
  }

  return result;
}

unint64_t sub_1A48EDECC()
{
  result = qword_1EB144C70;
  if (!qword_1EB144C70)
  {
    sub_1A48ED908(255);
    sub_1A3C36888();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144C70);
  }

  return result;
}

unint64_t sub_1A48EDF78()
{
  result = qword_1EB144C80;
  if (!qword_1EB144C80)
  {
    sub_1A48ED944(255);
    sub_1A48EE028(&qword_1EB144C88, sub_1A48ED980, sub_1A48EE0A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144C80);
  }

  return result;
}

uint64_t sub_1A48EE028(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A48EE0A4()
{
  result = qword_1EB144C90;
  if (!qword_1EB144C90)
  {
    sub_1A48ED79C(255, &qword_1EB144C18, MEMORY[0x1E69C2928], sub_1A40C6344, MEMORY[0x1E697F960]);
    sub_1A48F1678(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    sub_1A3C36888();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144C90);
  }

  return result;
}

uint64_t sub_1A48EE1C4@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  sub_1A48ED944(0);
  v91 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48F1728(0, &qword_1EB144CC8, sub_1A48ED70C, MEMORY[0x1E69E73E0], MEMORY[0x1E697F948]);
  v92 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v93 = &v72 - v5;
  v6 = MEMORY[0x1E697F948];
  sub_1A48ED79C(0, &qword_1EB144CD0, sub_1A48ED754, sub_1A48ED944, MEMORY[0x1E697F948]);
  v88 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v89 = &v72 - v8;
  sub_1A48ED70C(0);
  v85 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1A5243624();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48ED8C0(0);
  v79 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v75 = (&v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A48ED79C(0, &qword_1EB144CD8, sub_1A48ED820, sub_1A48ED868, v6);
  v81 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v72 - v15;
  sub_1A48ED79C(0, &unk_1EB144CE0, sub_1A48ED868, sub_1A48ED8C0, v6);
  v76 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v72 - v17;
  sub_1A48ED820(0);
  v80 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v78 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48ED868();
  v82 = v21;
  v77 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v72 - v25;
  sub_1A48ED754(0);
  v87 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v84 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1A5243A24();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeSearchCollectionResultCell();
  sub_1A48F13BC(v32);
  v33 = (*(v30 + 88))(v32, v29);
  if (v33 == *MEMORY[0x1E69C2778])
  {
    sub_1A52432C4();
    v34 = *(v94 + 16);
    v35 = *(v94 + 24);
    sub_1A46B1CB4(v34, *(v94 + 24));

    if (v35)
    {
      if (v35 != 1)
      {
        sub_1A4267BB4(v34, 2);
        if (!(sub_1A52432E4() >> 62))
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        sub_1A3D435C4();
        sub_1A524E6F4();

        v65 = v93;
        v66 = v90;
        sub_1A48EEF8C();
        sub_1A5242D34();
        v67 = v77;
        v68 = v82;
        (*(v77 + 16))(v83, v23, v82);
        swift_storeEnumTagMultiPayload();
        sub_1A48EDD6C();
        sub_1A48F1678(&qword_1EB124E20, sub_1A48ED868);
        v69 = v84;
        sub_1A5249744();
        v70 = v23;
        v56 = v69;
        (*(v67 + 8))(v70, v68);
        goto LABEL_11;
      }

      v36 = v73;
      v37 = v72;
      v38 = v74;
      (*(v73 + 104))(v72, *MEMORY[0x1E69C2530], v74);
      sub_1A3C36888();
      v39 = sub_1A3C30368();
      v40 = sub_1A3C5A374();
      v41 = v75;
      sub_1A414D324(v34, v37, v39 & 1, v40 & 1, v75);
      (*(v36 + 8))(v37, v38);
      v42 = sub_1A48EEF8C();
      sub_1A48ED908(0);
      v44 = v41 + *(v43 + 36);
      *v44 = v42;
      *(v44 + 4) = 0;
      v45 = v41 + *(v79 + 36);
      v46 = *(sub_1A5248A14() + 20);
      v47 = *MEMORY[0x1E697F468];
      v48 = sub_1A52494A4();
      (*(*(v48 - 8) + 104))(&v45[v46], v47, v48);
      __asm { FMOV            V0.2D, #8.0 }

      *v45 = _Q0;
      sub_1A3E42C88();
      *&v45[*(v54 + 36)] = 256;
      sub_1A48F17F4(v41, v18, sub_1A48ED8C0);
      swift_storeEnumTagMultiPayload();
      sub_1A48F1678(&qword_1EB124E20, sub_1A48ED868);
      sub_1A48EDE1C();
      v55 = v78;
      sub_1A5249744();
      sub_1A48F17F4(v55, v83, sub_1A48ED820);
      swift_storeEnumTagMultiPayload();
      sub_1A48EDD6C();
      v56 = v84;
      sub_1A5249744();
      sub_1A4267BB4(v34, 1);
      sub_1A48F1794(v55, sub_1A48ED820);
      sub_1A48F1794(v41, sub_1A48ED8C0);
    }

    else
    {
      sub_1A4267BB4(v34, 0);
      sub_1A48EEF8C();
      sub_1A5242D34();
      v62 = v77;
      v63 = v82;
      (*(v77 + 16))(v18, v26, v82);
      swift_storeEnumTagMultiPayload();
      sub_1A48F1678(&qword_1EB124E20, sub_1A48ED868);
      sub_1A48EDE1C();
      v64 = v78;
      sub_1A5249744();
      sub_1A48F17F4(v64, v83, sub_1A48ED820);
      swift_storeEnumTagMultiPayload();
      sub_1A48EDD6C();
      v56 = v84;
      sub_1A5249744();
      sub_1A48F1794(v64, sub_1A48ED820);
      (*(v62 + 8))(v26, v63);
    }

    v65 = v93;
    v66 = v90;
LABEL_11:
    sub_1A48F17F4(v56, v89, sub_1A48ED754);
    swift_storeEnumTagMultiPayload();
    sub_1A48EDCBC();
    sub_1A48EDF78();
    sub_1A5249744();
    sub_1A48F17F4(v66, v65, sub_1A48ED70C);
    swift_storeEnumTagMultiPayload();
    sub_1A48EDC3C();
    sub_1A5249744();
    sub_1A48F1794(v66, sub_1A48ED70C);
    v60 = sub_1A48ED754;
    v61 = v56;
    return sub_1A48F1794(v61, v60);
  }

  if (v33 == *MEMORY[0x1E69C2780])
  {
    sub_1A48EF2C0(v3);
    v57 = sub_1A48EEF8C();
    v58 = &v3[*(v91 + 36)];
    *v58 = v57;
    *(v58 + 4) = 256;
    sub_1A48F17F4(v3, v89, sub_1A48ED944);
    swift_storeEnumTagMultiPayload();
    sub_1A48EDCBC();
    sub_1A48EDF78();
    v59 = v90;
    sub_1A5249744();
    sub_1A48F17F4(v59, v93, sub_1A48ED70C);
    swift_storeEnumTagMultiPayload();
    sub_1A48EDC3C();
    sub_1A5249744();
    sub_1A48F1794(v59, sub_1A48ED70C);
    v60 = sub_1A48ED944;
    v61 = v3;
    return sub_1A48F1794(v61, v60);
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

double sub_1A48EEF8C()
{
  v1 = sub_1A5243C94();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5243A24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  type metadata accessor for LemonadeSearchCollectionResultCell();
  v20 = v0;
  sub_1A48F13BC(v11);
  (*(v6 + 104))(v8, *MEMORY[0x1E69C2780], v5);
  v12 = sub_1A5243A14();
  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v11, v5);
  result = 1.0;
  if ((v12 & 1) == 0)
  {
    (*(v2 + 104))(v4, *MEMORY[0x1E69C2898], v1, 1.0);
    sub_1A48F1678(&qword_1EB144CC0, MEMORY[0x1E69C28A0]);
    v15 = sub_1A524C594();
    (*(v2 + 8))(v4, v1);
    if (v15)
    {
      sub_1A52432C4();
      v16 = *(v21 + 16);
      v17 = *(v21 + 24);
      sub_1A46B1CB4(v16, *(v21 + 24));

      if (!v17)
      {
        sub_1A4267BB4(v16, 0);
        return 1.518;
      }

      if (v17 == 1)
      {
        sub_1A4267BB4(v16, 1);
        return 1.518;
      }

      sub_1A4267BB4(v16, 2);
      v18 = sub_1A52432E4();
      if (v18 >> 62)
      {
        v19 = sub_1A524E2B4();
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19 < 2)
      {
        return 1.518;
      }
    }

    sub_1A5243944();
  }

  return result;
}

unint64_t sub_1A48EF2C0@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_1A5243624();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40C6344();
  v41 = v5;
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v38 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A48ED79C(0, &qword_1EB144CF0, MEMORY[0x1E69C2928], sub_1A40C6344, MEMORY[0x1E697F948]);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = sub_1A5243834();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48F185C(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v33 - v13;
  v15 = sub_1A5243EC4();
  v37 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v36 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeSearchCollectionResultCell();
  sub_1A52432C4();
  Kind = v43[1].Kind;
  Description_low = LOBYTE(v43[1].Description);
  sub_1A46B1CB4(Kind, v43[1].Description);

  if (Description_low == 1)
  {
    (*(v2 + 104))(v4, *MEMORY[0x1E69C2530], v1);
    v19 = sub_1A3C36888();
    v20 = sub_1A3C30368();
    v21 = sub_1A3C5A374();
    v22 = v38;
    sub_1A414D324(Kind, v4, v20 & 1, v21 & 1, v38);
    (*(v2 + 8))(v4, v1);
    v23 = v39;
    v24 = v41;
    (*(v39 + 16))(v9, v22, v41);
    swift_storeEnumTagMultiPayload();
    sub_1A48F1678(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    *&v45 = &type metadata for LemonadePeopleShelfProvider;
    *(&v45 + 1) = v19;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    sub_1A4267BB4(Kind, 1);
    return (*(v23 + 8))(v22, v24);
  }

  sub_1A4267BB4(Kind, Description_low);
  result = sub_1A52432E4();
  if (result >> 62)
  {
    v27 = result;
    v28 = sub_1A524E2B4();
    result = v27;
    if (!v28)
    {
      goto LABEL_9;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

    v45 = 0u;
    v46 = 0u;
    v47 = 1;
    v29 = sub_1A52429A4();
    (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
    (*(v33 + 104))(v35, *MEMORY[0x1E69C2678], v34);
    v30 = v36;
    sub_1A5243ED4();
    v31 = v37;
    (*(v37 + 16))(v9, v30, v15);
    swift_storeEnumTagMultiPayload();
    sub_1A48F1678(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    v32 = sub_1A3C36888();
    v43 = &type metadata for LemonadePeopleShelfProvider;
    v44 = v32;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    return (*(v31 + 8))(v30, v15);
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0);
    goto LABEL_9;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(result + 32);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A48EF9CC()
{
  v1 = sub_1A5249234();
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v41 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A5243C94();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5249A94();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DD0DCC();
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - v20;
  v47 = type metadata accessor for LemonadeSearchCollectionResultCell();
  v48 = v0;
  sub_1A3DC7F98(v21);
  (*(v6 + 104))(v18, *MEMORY[0x1E697FF38], v5);
  (*(v6 + 56))(v18, 0, 1, v5);
  v22 = *(v10 + 56);
  sub_1A48F15B0(v21, v12, sub_1A3DC7D88);
  sub_1A48F15B0(v18, &v12[v22], sub_1A3DC7D88);
  v23 = *(v6 + 48);
  if (v23(v12, 1, v5) != 1)
  {
    sub_1A48F15B0(v12, v15, sub_1A3DC7D88);
    if (v23(&v12[v22], 1, v5) != 1)
    {
      (*(v6 + 32))(v8, &v12[v22], v5);
      sub_1A48F1678(&qword_1EB127B70, MEMORY[0x1E697FF50]);
      sub_1A524C594();
      v24 = *(v6 + 8);
      v24(v8, v5);
      sub_1A48F1618(v18, sub_1A3DC7D88);
      sub_1A48F1618(v21, sub_1A3DC7D88);
      v24(v15, v5);
      sub_1A48F1618(v12, sub_1A3DC7D88);
      goto LABEL_8;
    }

    sub_1A48F1618(v18, sub_1A3DC7D88);
    sub_1A48F1618(v21, sub_1A3DC7D88);
    (*(v6 + 8))(v15, v5);
    goto LABEL_6;
  }

  sub_1A48F1618(v18, sub_1A3DC7D88);
  sub_1A48F1618(v21, sub_1A3DC7D88);
  if (v23(&v12[v22], 1, v5) != 1)
  {
LABEL_6:
    sub_1A48F1618(v12, sub_1A3DD0DCC);
    goto LABEL_8;
  }

  sub_1A48F1618(v12, sub_1A3DC7D88);
LABEL_8:
  v26 = v47;
  v25 = v48;
  v28 = v45;
  v27 = v46;
  v29 = v44;
  (*(v45 + 16))(v44, v48 + *(v47 + 48), v46);
  result = (*(v28 + 88))(v29, v27);
  if (result != *MEMORY[0x1E69C2888] && result != *MEMORY[0x1E69C2890])
  {
    if (result == *MEMORY[0x1E69C2898])
    {
      v31 = *v25;
      if (*(v25 + 16) != 1)
      {
        v32 = *(v25 + 8);

        sub_1A524D254();
        v33 = sub_1A524A014();
        sub_1A5246DF4();

        v34 = v41;
        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3F1B4C4(v31, v32, 0);
        (*(v42 + 8))(v34, v43);
      }

      sub_1A48F01B0();
      v35 = [objc_opt_self() sharedInstance];
      [v35 interitemSpacing];

      sub_1A48F01B0();
      v36 = v25 + *(v26 + 40);
      v37 = *v36;
      if (*(v36 + 8) == 1)
      {
        LOBYTE(v51) = *v36;
      }

      else
      {

        sub_1A524D254();
        v38 = sub_1A524A014();
        sub_1A5246DF4();

        v39 = v41;
        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v37, 0);
        (*(v42 + 8))(v39, v43);
        LOBYTE(v37) = v51;
      }

      v50 = v37;
      v49 = 6;
      return static LemonadeHorizontalSizeClass.== infix(_:_:)(&v50, &v49);
    }

    else
    {
      return (*(v28 + 8))(v29, v27, INFINITY);
    }
  }

  return result;
}

uint64_t sub_1A48F01B0()
{
  v0 = sub_1A5249A94();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DD0DCC();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  type metadata accessor for LemonadeSearchCollectionResultCell();
  sub_1A3DC7F98(v15);
  (*(v1 + 104))(v12, *MEMORY[0x1E697FF40], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_1A48F15B0(v15, v6, sub_1A3DC7D88);
  sub_1A48F15B0(v12, &v6[v16], sub_1A3DC7D88);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_1A48F15B0(v6, v9, sub_1A3DC7D88);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = v23;
      (*(v1 + 32))(v23, &v6[v16], v0);
      sub_1A48F1678(&qword_1EB127B70, MEMORY[0x1E697FF50]);
      v20 = sub_1A524C594();
      v21 = *(v1 + 8);
      v21(v19, v0);
      sub_1A48F1618(v12, sub_1A3DC7D88);
      sub_1A48F1618(v15, sub_1A3DC7D88);
      v21(v9, v0);
      sub_1A48F1618(v6, sub_1A3DC7D88);
      if (v20)
      {
        return 13;
      }

      return 5;
    }

    sub_1A48F1618(v12, sub_1A3DC7D88);
    sub_1A48F1618(v15, sub_1A3DC7D88);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_1A48F1618(v6, sub_1A3DD0DCC);
    return 5;
  }

  sub_1A48F1618(v12, sub_1A3DC7D88);
  sub_1A48F1618(v15, sub_1A3DC7D88);
  if (v17(&v6[v16], 1, v0) != 1)
  {
    goto LABEL_6;
  }

  sub_1A48F1618(v6, sub_1A3DC7D88);
  return 13;
}

uint64_t sub_1A48F05F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v10 = type metadata accessor for LemonadeSearchCollectionResultCell();
  v11 = v10[5];
  *(a5 + v11) = swift_getKeyPath();
  sub_1A3F88738(0);
  swift_storeEnumTagMultiPayload();
  v12 = a5 + v10[6];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = v10[7];
  *(a5 + v13) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v14 = v10[8];
  *(a5 + v14) = swift_getKeyPath();
  sub_1A3F31578(0);
  swift_storeEnumTagMultiPayload();
  v15 = v10[9];
  *(a5 + v15) = swift_getKeyPath();
  sub_1A48ED4D8(0);
  swift_storeEnumTagMultiPayload();
  v16 = a5 + v10[10];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *(a5 + v10[11]) = a1;
  v17 = v10[12];
  v18 = sub_1A5243C94();
  (*(*(v18 - 8) + 32))(a5 + v17, a2, v18);
  v19 = v10[13];
  v20 = sub_1A5243C84();
  (*(*(v20 - 8) + 32))(a5 + v19, a3, v20);
  v21 = v10[14];
  v22 = sub_1A5243CE4();
  v23 = *(*(v22 - 8) + 32);

  return v23(a5 + v21, a4, v22);
}

uint64_t sub_1A48F0838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  v4 = (a1 - 8);
  v24 = *(a1 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = sub_1A5243CE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v22 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5243C84();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5243C94();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v4[14];
  v23 = *(v3 + v4[13]);
  v26 = v23;
  (*(v17 + 16))(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + v16, v14);
  (*(v10 + 16))(v12, v3 + v4[15], v9);
  (*(v7 + 16))(v22, v3 + v4[16], v6);
  sub_1A48F15B0(v3, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeSearchCollectionResultCell);
  v18 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v19 = swift_allocObject();
  sub_1A48F16C0(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for LemonadeSearchCollectionResultCell);
  sub_1A4268040();
  sub_1A48F1728(0, &qword_1EB144BB8, sub_1A48ED640, MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
  sub_1A48F1678(&qword_1EB144C20, sub_1A4268040);
  sub_1A48EDA1C();

  return sub_1A5243694();
}

void sub_1A48F0C30()
{
  sub_1A48F185C(319, &qword_1EB124690, type metadata accessor for CGSize, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A48F185C(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A3C48CCC(319, &unk_1EB124790, &type metadata for LemonadeRootViewOrientation, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A48F185C(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A48F185C(319, &qword_1EB144CA0, MEMORY[0x1E69C2788], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A3C48CCC(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1A4268040();
              if (v6 <= 0x3F)
              {
                sub_1A5243C94();
                if (v7 <= 0x3F)
                {
                  sub_1A5243C84();
                  if (v8 <= 0x3F)
                  {
                    sub_1A5243CE4();
                    if (v9 <= 0x3F)
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
}

void sub_1A48F0E80()
{
  if (!qword_1EB144CB0)
  {
    sub_1A4268040();
    sub_1A48F1728(255, &qword_1EB144BB8, sub_1A48ED640, MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    sub_1A48F1678(&qword_1EB144C20, sub_1A4268040);
    sub_1A48EDA1C();
    v0 = sub_1A5243684();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB144CB0);
    }
  }
}

uint64_t objectdestroyTm_86()
{
  v1 = type metadata accessor for LemonadeSearchCollectionResultCell();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1A3F1B4C4(*v2, *(v2 + 8), *(v2 + 16));
  v3 = v1[5];
  sub_1A3F88738(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5249A94();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[6]), *(v2 + v1[6] + 8));
  v6 = v1[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1A5249A94();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v2 + v6, 1, v7))
    {
      (*(v8 + 8))(v2 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[8];
  sub_1A3F31578(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A5247E04();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  v11 = v1[9];
  sub_1A48ED4D8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5243A24();
    (*(*(v12 - 8) + 8))(v2 + v11, v12);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[10]), *(v2 + v1[10] + 8));

  v13 = v1[12];
  v14 = sub_1A5243C94();
  (*(*(v14 - 8) + 8))(v2 + v13, v14);
  v15 = v1[13];
  v16 = sub_1A5243C84();
  (*(*(v16 - 8) + 8))(v2 + v15, v16);
  v17 = v1[14];
  v18 = sub_1A5243CE4();
  (*(*(v18 - 8) + 8))(v2 + v17, v18);

  return swift_deallocObject();
}

void sub_1A48F134C(uint64_t a1@<X8>)
{
  type metadata accessor for LemonadeSearchCollectionResultCell();

  sub_1A48ED558(a1);
}

uint64_t sub_1A48F13BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48ED4D8(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48F15B0(v2, v10, sub_1A48ED4D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5243A24();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1A48F15B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A48F1618(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A48F1678(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A48F16C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A48F1728(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A48F1794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A48F17F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A48F185C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A48F18C4()
{
  if (*(v0 + 8))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A40E9154();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FF950;
  v2 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 whiteColor];
  v6 = sub_1A3C52C70(0, &qword_1EB1205C0);
  *(inited + 40) = v5;
  v7 = *MEMORY[0x1E69DB688];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v9 = v7;
  v10 = [v8 init];
  [v10 setAlignment_];
  v11 = sub_1A3C52C70(0, &qword_1EB12FEF0);
  *(inited + 80) = v10;
  v12 = *MEMORY[0x1E69DB648];
  *(inited + 104) = v11;
  *(inited + 112) = v12;
  v13 = v12;
  PXSystemFontOfSizeAndWeight();
}

void sub_1A48F1A8C()
{
  if (*(v0 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A40E9154();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FF950;
  v2 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 whiteColor];
  v6 = [v5 colorWithAlphaComponent_];

  v7 = sub_1A3C52C70(0, &qword_1EB1205C0);
  *(inited + 40) = v6;
  v8 = *MEMORY[0x1E69DB688];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v10 = v8;
  v11 = [v9 init];
  [v11 setAlignment_];
  v12 = sub_1A3C52C70(0, &qword_1EB12FEF0);
  *(inited + 80) = v11;
  v13 = *MEMORY[0x1E69DB648];
  *(inited + 104) = v12;
  *(inited + 112) = v13;
  v14 = v13;
  PXSystemFontOfSizeAndWeight();
}

uint64_t sub_1A48F1C78(char a1)
{
  if (sub_1A3DBEE68(a1 & 1, 0))
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1A48F1CA4(char a1)
{
  if (sub_1A3DBEE68(a1 & 1, 0))
  {
    return 8;
  }

  else
  {
    return 14;
  }
}

uint64_t sub_1A48F1CD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x58) - 8) + 16))(a1, &v1[v5]);
}

uint64_t sub_1A48F1D88(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x58);
  v7 = *(v6 - 8);
  (*(v7 + 24))(&v1[v5], a1, v6);
  swift_endAccess();
  return (*(v7 + 8))(a1, v6);
}

void sub_1A48F1EF4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  sub_1A48F21D8(a1, a2 & 1, a3);
}

id sub_1A48F2018()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HighlightsSectionLayout();
  return objc_msgSendSuper2(&v4, sel_dealloc, v2, v3);
}

uint64_t sub_1A48F2090(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x58) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x70)]);
  swift_unknownObjectRelease();
  (*(*(*((v4 & v3) + 0x60) - 8) + 8))(&a1[*((*v2 & *a1) + 0x80)]);
}

void sub_1A48F21D8(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v40 = a3;
  v6 = *v3;
  v7 = MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40];
  *&v32 = *MEMORY[0x1E69E7D40] & v6;
  v9 = a2 & 1;
  v10 = *((v8 & v6) + 0x60);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v35 = v30 - v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v34 = v30 - v15;
  v16 = *((v8 & v6) + 0x70);
  v33 = *(v17 + 16);
  v39 = v17 + 16;
  v36 = a1;
  v19 = v18;
  v33(&v4[v16], a1, v14);
  v20 = *((v8 & v6) + 0x68);
  v21 = *(v20 + 56);
  v38 = v9;
  v22 = v40;
  *&v4[*((*v7 & *v4) + 0x78)] = v21(a1, v9, v10, v20);
  v23 = *((*v7 & *v4) + 0x80);
  v24 = *(v11 + 16);
  v37 = v11 + 16;
  v24(&v4[v23], v22, v10);
  v30[0] = v24;
  v25 = &v4[*((*v7 & *v4) + 0x88)];
  *v25 = v9;
  *(v25 + 1) = 0;
  *(v25 + 2) = 0;
  *(v25 + 3) = 0x4034000000000000;
  *&v26 = *(v32 + 80);
  v30[1] = v19;
  *(&v26 + 1) = v19;
  *&v27 = v10;
  *(&v27 + 1) = v20;
  v31 = v27;
  v32 = v26;
  v42 = v27;
  v41 = v26;
  v28 = type metadata accessor for HighlightsSectionLayout();
  v43.receiver = v4;
  v43.super_class = v28;
  v29 = objc_msgSendSuper2(&v43, sel_init);
  [v29 setMode_];
  [v29 setObjectReferenceLookup_];
  type metadata accessor for HighlightsHeaderLayout();
  (v33)(v34, v36, v19);
  v24(v35, v40, v10);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A48F2730()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t LemonadeNotificationsTabBadgeSource.__allocating_init(photoLibrary:libraryFilterState:)(void *a1, void *a2)
{
  swift_allocObject();
  v4 = sub_1A3C33B34(a1, a2);

  return v4;
}

uint64_t sub_1A48F2870(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = a2;
    sub_1A3DBEE78();
    v7 = v6;
    sub_1A3DBEE90(v6, v8 & 1);

    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v4 + 176))(v10, sub_1A48F307C);
  }

  return result;
}

uint64_t LemonadeNotificationsTabBadgeSource.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore35LemonadeNotificationsTabBadgeSource_id;
  v4 = sub_1A52411C4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A48F2A18()
{
  swift_getKeyPath();
  (*(*v0 + 168))();
}

uint64_t sub_1A48F2A8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 168))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore35LemonadeNotificationsTabBadgeSource__itemListManager);
}

uint64_t sub_1A48F2B14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  v5 = v3;
  v6 = v2;
  (*(*v3 + 176))();
}

uint64_t LemonadeNotificationsTabBadgeSource.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore35LemonadeNotificationsTabBadgeSource_id;
  v2 = sub_1A52411C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12PhotosUICore35LemonadeNotificationsTabBadgeSource___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t LemonadeNotificationsTabBadgeSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore35LemonadeNotificationsTabBadgeSource_id;
  v2 = sub_1A52411C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12PhotosUICore35LemonadeNotificationsTabBadgeSource___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1A48F2E08@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12PhotosUICore35LemonadeNotificationsTabBadgeSource_id;
  v5 = sub_1A52411C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1A48F2F3C()
{
  sub_1A524CC54();
  v1 = swift_allocObject();
  v3 = *(v0 + 24);
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v5 = v1;
  v6 = v3;
  sub_1A3C67884(sub_1A48F3018, v4);
}

uint64_t sub_1A48F3038()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore35LemonadeNotificationsTabBadgeSource__itemListManager) = *(v0 + 24);
}

void sub_1A48F3098()
{
  sub_1A3C4D2E4(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3C4D2E4(0, &qword_1EB144CF8, off_1E7721290);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A524C074();
}

uint64_t sub_1A48F3484()
{
  result = qword_1EB144D00;
  if (!qword_1EB144D00)
  {
    sub_1A524C074();
  }

  return result;
}

uint64_t sub_1A48F3518(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A48F3678()
{
  v1 = [v0 viewModel];
  v2 = [v1 dataSourceManager];

  v3 = [v2 dataSource];
  v4 = [v3 containerCollection];

  v5 = objc_opt_self();
  v6 = [v0 currentContentFilterState];
  v7 = [v6 photoLibrary];

  v10 = [v5 defaultFilterStateForContainerCollection:v4 photoLibrary:v7];
  v8 = [v0 currentContentFilterState];
  v9 = [v8 includeScreenshots];

  [v10 setIncludeScreenshots_];
  [v0 updateToContentFilterStateAndFinishTask_];
  swift_unknownObjectRelease();
}

id PhotosGridRemoveFiltersActionPerformer.__allocating_init(viewModel:actionType:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A524C634();

  v5 = [v3 initWithViewModel:a1 actionType:v4];

  return v5;
}

id PhotosGridRemoveFiltersActionPerformer.init(viewModel:actionType:)(void *a1)
{
  v3 = sub_1A524C634();

  v6.receiver = v1;
  v6.super_class = type metadata accessor for PhotosGridRemoveFiltersActionPerformer();
  v4 = objc_msgSendSuper2(&v6, sel_initWithViewModel_actionType_, a1, v3);

  return v4;
}

id PhotosGridRemoveFiltersActionPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosGridRemoveFiltersActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A48F39D0()
{
  v1 = [v0 viewModel];
  v2 = [v1 contentFilterState];

  if (v2)
  {
    [v2 activeFilterCount];
  }

  v3 = sub_1A524C634();
  v4 = PXLocalizedString(v3);

  v5 = sub_1A524C674();
  return v5;
}

uint64_t PhotosPreference.init(_:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  *(v6 + 32) = *a1;
  *(v6 + 48) = v7;
  type metadata accessor for PhotosPreferenceObserver();

  return sub_1A5247C74();
}

char *sub_1A48F3B7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  type metadata accessor for PhotosPreferenceObserver();
  v7 = v3;
  v8 = *(v1 + 40);
  v9 = v4;
  v5 = swift_allocObject();

  result = sub_1A48F4E6C(&v7);
  *a1 = v5;
  return result;
}

uint64_t sub_1A48F3C1C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A48F4E6C(a1);
  return v2;
}

uint64_t sub_1A48F3C5C()
{
  type metadata accessor for PhotosPreferenceObserver();
  sub_1A5247CB4();
  sub_1A5247C84();
  return v1;
}

uint64_t PhotosPreference.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1A48F3C5C();
  sub_1A48F4FDC(a1);
}

uint64_t PhotosPreference.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1A48F58E8(a1);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*PhotosPreference.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v7[5] = v11;
  sub_1A48F3C5C();
  sub_1A48F4FDC(v12);

  return sub_1A48F3EE4;
}

void sub_1A48F3EE4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    sub_1A48F3C5C();
    sub_1A48F57A4(v3);

    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1A48F3C5C();
    sub_1A48F57A4(v4);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_1A48F3FF8()
{
  qword_1EB1DF4D8 = sub_1A48F402C;
  unk_1EB1DF4E0 = 0;
  qword_1EB1DF4E8 = sub_1A48F4054;
  qword_1EB1DF4F0 = 0;
}

BOOL sub_1A48F402C@<W0>(_BYTE *a1@<X8>)
{
  result = PXPreferencesIsHiddenAlbumVisible();
  *a1 = result;
  return result;
}

uint64_t static PhotosPreference.Accessor<>.isHiddenAlbumVisible.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF4D0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF4F0;
  *a1 = qword_1EB1DF4D8;
  *(a1 + 8) = unk_1EB1DF4E0;
  *(a1 + 24) = v1;
}

void sub_1A48F40EC()
{
  qword_1EB1DF500 = sub_1A48F4120;
  *algn_1EB1DF508 = 0;
  qword_1EB1DF510 = sub_1A48F4148;
  qword_1EB1DF518 = 0;
}

BOOL sub_1A48F4120@<W0>(_BYTE *a1@<X8>)
{
  result = PXPreferencesIsRecentlyViewedAndSharedAlbumVisible();
  *a1 = result;
  return result;
}

uint64_t static PhotosPreference.Accessor<>.isRecentlyViewedAndSharedAlbumVisible.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF4F8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF518;
  *a1 = qword_1EB1DF500;
  *(a1 + 8) = *algn_1EB1DF508;
  *(a1 + 24) = v1;
}

void sub_1A48F41E0()
{
  qword_1EB1741F8 = sub_1A48F4214;
  unk_1EB174200 = 0;
  qword_1EB174208 = sub_1A48F423C;
  qword_1EB174210 = 0;
}

BOOL sub_1A48F4214@<W0>(_BYTE *a1@<X8>)
{
  result = PXPreferencesIsVideoAutoplayEnabled();
  *a1 = result;
  return result;
}

uint64_t *sub_1A48F4244()
{
  if (qword_1EB1741F0 != -1)
  {
    swift_once();
  }

  return &qword_1EB1741F8;
}

uint64_t static PhotosPreference.Accessor<>.isVideoAutoplayEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1741F0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB174210;
  *a1 = qword_1EB1741F8;
  *(a1 + 8) = unk_1EB174200;
  *(a1 + 24) = v1;
}

void sub_1A48F4324()
{
  qword_1EB1DF530 = sub_1A48F4358;
  *algn_1EB1DF538 = 0;
  qword_1EB1DF540 = sub_1A48F4380;
  qword_1EB1DF548 = 0;
}

BOOL sub_1A48F4358@<W0>(_BYTE *a1@<X8>)
{
  result = PXPreferencesIsMergeDuplicatesEnabled();
  *a1 = result;
  return result;
}

uint64_t static PhotosPreference.Accessor<>.isMergeDuplicatesEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF528 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF548;
  *a1 = qword_1EB1DF530;
  *(a1 + 8) = *algn_1EB1DF538;
  *(a1 + 24) = v1;
}

void sub_1A48F4418()
{
  qword_1EB1DF558 = sub_1A48F444C;
  unk_1EB1DF560 = 0;
  qword_1EB1DF568 = sub_1A48F4474;
  qword_1EB1DF570 = 0;
}

BOOL sub_1A48F444C@<W0>(_BYTE *a1@<X8>)
{
  result = PXPreferencesIsStacksEnabled();
  *a1 = result;
  return result;
}

uint64_t static PhotosPreference.Accessor<>.isStacksEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF550 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF570;
  *a1 = qword_1EB1DF558;
  *(a1 + 8) = unk_1EB1DF560;
  *(a1 + 24) = v1;
}

void sub_1A48F450C()
{
  qword_1EB1741D0 = sub_1A48F4540;
  *algn_1EB1741D8 = 0;
  qword_1EB1741E0 = sub_1A48F4568;
  qword_1EB1741E8 = 0;
}

uint64_t sub_1A48F4540@<X0>(_BYTE *a1@<X8>)
{
  result = PXPreferencesIsFeaturedContentAllowed();
  *a1 = result;
  return result;
}

uint64_t *sub_1A48F4570()
{
  if (qword_1EB1741C8 != -1)
  {
    swift_once();
  }

  return &qword_1EB1741D0;
}

uint64_t static PhotosPreference.Accessor<>.isFeaturedContentAllowed.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1741C8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1741E8;
  *a1 = qword_1EB1741D0;
  *(a1 + 8) = *algn_1EB1741D8;
  *(a1 + 24) = v1;
}

void sub_1A48F4650()
{
  qword_1EB1DF588 = sub_1A48F4684;
  unk_1EB1DF590 = 0;
  qword_1EB1DF598 = sub_1A48F46AC;
  qword_1EB1DF5A0 = 0;
}

uint64_t sub_1A48F4684@<X0>(_BYTE *a1@<X8>)
{
  result = PXPreferencesIsSharedLibrarySuggestionsEnabled();
  *a1 = result;
  return result;
}

uint64_t static PhotosPreference.Accessor<>.isSharedLibrarySuggestionsEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF580 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF5A0;
  *a1 = qword_1EB1DF588;
  *(a1 + 8) = unk_1EB1DF590;
  *(a1 + 24) = v1;
}

void sub_1A48F4744()
{
  qword_1EB1DF5B0 = sub_1A48F4778;
  *algn_1EB1DF5B8 = 0;
  qword_1EB1DF5C0 = sub_1A48F47A0;
  qword_1EB1DF5C8 = 0;
}

BOOL sub_1A48F4778@<W0>(_BYTE *a1@<X8>)
{
  result = PXPreferencesIsSharedLibraryBadgingEnabled();
  *a1 = result;
  return result;
}

uint64_t static PhotosPreference.Accessor<>.isSharedLibraryBadgingEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF5A8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF5C8;
  *a1 = qword_1EB1DF5B0;
  *(a1 + 8) = *algn_1EB1DF5B8;
  *(a1 + 24) = v1;
}

void sub_1A48F4838()
{
  qword_1EB1DF5D8 = sub_1A48F486C;
  unk_1EB1DF5E0 = 0;
  qword_1EB1DF5E8 = sub_1A48F4894;
  qword_1EB1DF5F0 = 0;
}

uint64_t sub_1A48F486C@<X0>(_BYTE *a1@<X8>)
{
  result = PXPreferencesIsSharedLibraryDeletionNotificationEnabled();
  *a1 = result;
  return result;
}

uint64_t static PhotosPreference.Accessor<>.isSharedLibraryDeletionNotificationEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF5D0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF5F0;
  *a1 = qword_1EB1DF5D8;
  *(a1 + 8) = unk_1EB1DF5E0;
  *(a1 + 24) = v1;
}

void sub_1A48F492C()
{
  qword_1EB1DF600 = sub_1A48F4960;
  *algn_1EB1DF608 = 0;
  qword_1EB1DF610 = sub_1A48F4988;
  qword_1EB1DF618 = 0;
}

BOOL sub_1A48F4960@<W0>(_BYTE *a1@<X8>)
{
  result = PXPreferencesIsCameraSharingEnabled();
  *a1 = result;
  return result;
}

uint64_t static PhotosPreference.Accessor<>.isCameraSharingEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF5F8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF618;
  *a1 = qword_1EB1DF600;
  *(a1 + 8) = *algn_1EB1DF608;
  *(a1 + 24) = v1;
}

void sub_1A48F4A20()
{
  qword_1EB1DF628 = sub_1A48F4A54;
  unk_1EB1DF630 = 0;
  qword_1EB1DF638 = sub_1A48F4A7C;
  qword_1EB1DF640 = 0;
}

BOOL sub_1A48F4A54@<W0>(_BYTE *a1@<X8>)
{
  result = PXPreferencesIsCameraAutoShareEnabled();
  *a1 = result;
  return result;
}

uint64_t static PhotosPreference.Accessor<>.isCameraAutoShareEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF620 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF640;
  *a1 = qword_1EB1DF628;
  *(a1 + 8) = unk_1EB1DF630;
  *(a1 + 24) = v1;
}

void sub_1A48F4B14()
{
  qword_1EB1DF650 = sub_1A48F4B48;
  *algn_1EB1DF658 = 0;
  qword_1EB1DF660 = sub_1A48F4B70;
  qword_1EB1DF668 = 0;
}

unint64_t sub_1A48F4B48@<X0>(unint64_t *a1@<X8>)
{
  result = PXPreferencesCameraSharingPreferencesState();
  *a1 = result;
  return result;
}

uint64_t static PhotosPreference.Accessor<>.cameraSharingPreferencesState.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF648 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF668;
  *a1 = qword_1EB1DF650;
  *(a1 + 8) = *algn_1EB1DF658;
  *(a1 + 24) = v1;
}

void sub_1A48F4C08()
{
  qword_1EB1DF678 = sub_1A48F4C3C;
  unk_1EB1DF680 = 0;
  qword_1EB1DF688 = sub_1A48F4CD4;
  qword_1EB1DF690 = 0;
}

uint64_t sub_1A48F4C3C@<X0>(uint64_t a1@<X8>)
{
  v2 = PXPreferencesWelcomeViewLastPresentationDate();
  if (v2)
  {
    v3 = v2;
    sub_1A52410F4();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_1A5241144();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

void sub_1A48F4CD4(uint64_t a1)
{
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7CD54(a1, v4);
  v5 = sub_1A5241144();
  v6 = *(v5 - 8);
  v7 = 0;
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    v7 = sub_1A5241074();
    (*(v6 + 8))(v4, v5);
  }

  PXPreferencesSetWelcomeViewLastPresentationDate(v7);
}

uint64_t static PhotosPreference.Accessor<>.welcomeViewLastPresentationDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DF670 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB1DF690;
  *a1 = qword_1EB1DF678;
  *(a1 + 8) = unk_1EB1DF680;
  *(a1 + 24) = v1;
}

char *sub_1A48F4E6C(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v12 - v4;
  v7 = *v6;
  v8 = *(v6 + 24);
  sub_1A5241604();
  v9 = &v2[*(*v2 + 104)];
  *v9 = v7;
  *(v9 + 8) = *(a1 + 8);
  *(v9 + 3) = v8;

  v7(v10);

  (*(*(*(*v2 + 80) - 8) + 32))(&v2[*(*v2 + 96)], v5);
  PXRegisterPreferencesObserver(v2);
  return v2;
}

uint64_t sub_1A48F4FDC@<X0>(uint64_t a1@<X8>)
{
  v5 = *(*v1 + 80);
  swift_getKeyPath();
  sub_1A48F52B8();

  v3 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a1, v1 + v3);
}

uint64_t sub_1A48F5100(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v1 + *(v2 + 104)))(v8);
  sub_1A48F4FDC(v6);
  v11 = sub_1A524C594();
  v12 = *(v4 + 8);
  v12(v6, v3);
  if ((v11 & 1) == 0)
  {
    sub_1A48F5574(v10);
  }

  return (v12)(v10, v3);
}

uint64_t sub_1A48F527C()
{

  sub_1A48F5100(v0);
}

uint64_t sub_1A48F5448()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  v1 = *(*v0 + 112);
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A48F5574(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15[-v7];
  v9 = *(v4 + 96);
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  v10 = *(v4 + 88);
  v11 = sub_1A524C594();
  v12 = (*(v6 + 8))(v8, v5);
  if (v11)
  {
    swift_beginAccess();
    (*(v6 + 24))(v2 + v9, a1, v5);
    return swift_endAccess();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v12);
    *&v15[-16] = v5;
    *&v15[-8] = v10;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v15[-16] = v2;
    *&v15[-8] = a1;
    sub_1A48F5364();
  }
}

uint64_t sub_1A48F57A4(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  sub_1A48F4FDC(&v10 - v6);
  v8 = sub_1A524C594();
  result = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    sub_1A48F5574(a1);
    return (*(v2 + *(*v2 + 104) + 16))(a1);
  }

  return result;
}

uint64_t sub_1A48F58E8(uint64_t a1)
{
  sub_1A48F3C5C();
  sub_1A48F57A4(a1);
}

uint64_t sub_1A48F5930()
{
  type metadata accessor for PhotosPreferenceObserver();
  result = sub_1A5247CB4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A48F59EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A48F5A40()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A48F5B18()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *v2;
  v4 = *(*v2 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v2 + v4, v1);
  return swift_endAccess();
}

id TransparentHostingController.__allocating_init(allowUserInteraction:canShowWhileLocked:hitTestConditions:safeAreaRegions:rootView:)(char a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = sub_1A48F67E4(a1, a2, a3, a4, a5);
  (*(*(*(v6 + 10) - 8) + 8))(a5);
  return v13;
}

id TransparentHostingController.init(allowUserInteraction:canShowWhileLocked:hitTestConditions:safeAreaRegions:rootView:)(char a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = sub_1A48F67E4(a1, a2, a3, a4, a5);
  (*(*(*((v8 & v7) + 0x50) - 8) + 8))(a5);
  return v9;
}

uint64_t TransparentHostingController.__allocating_init(allowUserInteraction:canShowWhileLocked:hitTestConditions:safeAreaRegions:rootView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v11;
  v12(v8);
  return (*(v4 + 152))(a1, a2, &v15, a4, v10);
}

void sub_1A48F5E4C(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_1A48F5E7C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    type metadata accessor for DelegateProxy();
    type metadata accessor for DelegateProxy();
    v2 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1A48F5F44()
{
  v1 = [objc_allocWithZone(PXHitTestTransparentView) init];
  [v1 setDelegate_];

  [v0 setView_];
}

void sub_1A48F5FD0(void *a1)
{
  v1 = a1;
  sub_1A48F5F44();
}

void sub_1A48F6018(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v21 - v6;
  v8 = type metadata accessor for TransparentHostingController();
  v21.receiver = v2;
  v21.super_class = v8;
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  v9 = *v3 & *v2;
  v10 = (v5 + 16);
  if (*(v2 + *(v9 + 0x70)) == 1)
  {
    type metadata accessor for PXSecureLockscreenSwiftUIHostingController();
    (*v10)(v7, v2 + *(v9 + 96), v4);
    v11 = PXSecureLockscreenSwiftUIHostingController.__allocating_init(rootView:)(v7);
  }

  else
  {
    sub_1A5249654();
    (*v10)(v7, v2 + *(v9 + 96), v4);
    v11 = sub_1A5249614();
  }

  v12 = v11;
  sub_1A52495F4();
  v13 = [v12 view];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_opt_self() clearColor];
    [v14 setBackgroundColor_];

    v16 = *((*v3 & *v2) + 0x78);
    v17 = *(v2 + v16);
    *(v2 + v16) = v14;
    v18 = v14;

    [v2 addChildViewController_];
    v19 = [v2 view];
    if (v19)
    {
      v20 = v19;
      [v19 addSubview_];

      [v12 didMoveToParentViewController_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}