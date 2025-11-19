id sub_1A3F5DB90()
{
  v1 = v0;
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC12PhotosUICore49LemonadeExpandableCuratedLibraryGestureController_panGestureRecognizer];
  if (v5)
  {
    v6 = sub_1A524CCB4();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    sub_1A524CC54();
    v7 = v5;
    v8 = sub_1A524CC44();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    sub_1A3EA52F4(0, 0, v4, &unk_1A5309ED8, v9);
  }

  v11 = type metadata accessor for LemonadeExpandableCuratedLibraryGestureController();
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

uint64_t sub_1A3F5DCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_1A524CC54();
  v4[4] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3F5DD78, v6, v5);
}

uint64_t sub_1A3F5DD78()
{
  v1 = *(v0 + 24);

  v2 = [v1 view];
  v3 = v2;
  if (v2)
  {
    [v2 removeGestureRecognizer_];
  }

  **(v0 + 16) = v3 == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A3F5DE20(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A3F5DCE0(a1, v5, v6, v4);
}

uint64_t sub_1A3F5DF54()
{
  if (*(v0 + OBJC_IVAR____TtC12PhotosUICore49LemonadeExpandableCuratedLibraryGestureController_viewModel) && *(v0 + OBJC_IVAR____TtC12PhotosUICore49LemonadeExpandableCuratedLibraryGestureController_navigationContext))
  {

    if ((sub_1A4659564() & 1) == 0)
    {
      sub_1A4654E9C();
    }
  }

  return 0;
}

void sub_1A3F5E0B0(void *a1)
{
  v13 = [a1 view];
  [a1 translationInView_];
  v4 = v3;
  v6 = v5;
  [a1 velocityInView_];
  v8 = v7;
  v10 = v9;
  v11 = [a1 state];
  if ((v11 - 1) < 2)
  {
    if (!*(v1 + OBJC_IVAR____TtC12PhotosUICore49LemonadeExpandableCuratedLibraryGestureController_viewModel))
    {
      goto LABEL_9;
    }

    v12 = 0;
  }

  else
  {
    if (v11 != 3 && v11 != 4 || !*(v1 + OBJC_IVAR____TtC12PhotosUICore49LemonadeExpandableCuratedLibraryGestureController_viewModel))
    {
      goto LABEL_9;
    }

    v12 = 1;
  }

  sub_1A46E3070(v12, v4, v6, v8, v10);

LABEL_9:
}

id sub_1A3F5E238(int a1, id a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  return [a2 px:v3 isPanGestureRecognizerOfScrollView:?];
}

id sub_1A3F5E2F8(void *a1)
{
  if ((sub_1A3F5DF54() & 1) == 0)
  {
    return 0;
  }

  result = [a1 view];
  if (result)
  {
    v3 = result;
    sub_1A3C52C70(0, &qword_1EB126C18);
    v4 = [swift_getObjCClassFromMetadata() sharedInstance];
    objc_opt_self();
    v5 = [swift_dynamicCastObjCClassUnconditional() velocityInView_];
    MEMORY[0x1A590C810](v5, v7, v6);
    PXRadiansToDegrees();
  }

  return result;
}

void sub_1A3F5E528()
{
  if (!qword_1EB126120)
  {
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126120);
    }
  }
}

uint64_t sub_1A3F5E5F4(uint64_t a1)
{
  sub_1A3F5E978(0, &qword_1EB126078, MEMORY[0x1E6968660]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v19 - v5;
  sub_1A3F5E978(0, &qword_1EB126080, MEMORY[0x1E6968640]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - v10;
  sub_1A3F5EA6C(0);
  v19[0] = v12;
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = a1;
  (*(v9 + 104))(v11, *MEMORY[0x1E6968638], v8, v14);
  (*(v4 + 104))(v6, *MEMORY[0x1E6968648], v3);
  sub_1A3F5E928();
  sub_1A3F5EA8C(&qword_1EB120C80, sub_1A3F5E928);
  sub_1A52403E4();
  (*(v4 + 8))(v6, v3);
  (*(v9 + 8))(v11, v8);
  sub_1A3F5EA8C(&qword_1EB126070, sub_1A3F5EA6C);
  v17 = v19[0];
  sub_1A524C904();
  (*(v13 + 8))(v16, v17);
  return v19[2];
}

void sub_1A3F5E928()
{
  if (!qword_1EB126ED0)
  {
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126ED0);
    }
  }
}

void sub_1A3F5E978(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_1A5240464();
    sub_1A3F5E928();
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = sub_1A3F5EA8C(&qword_1EB1260A8, MEMORY[0x1E69680B0]);
    v10[3] = sub_1A3F5EA8C(&qword_1EB120C80, sub_1A3F5E928);
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A3F5EA8C(unint64_t *a1, void (*a2)(uint64_t))
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

void PhotosViewCurationModel.init(photosViewModel:)(void *a1)
{
  v2 = v1;
  v4 = sub_1A3F5F080();
  v11[4] = *(v4 - 8);
  v11[5] = v4;
  MEMORY[0x1EEE9AC00](v4);
  v11[3] = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A3F5F13C();
  v11[0] = *(v6 - 8);
  v11[1] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1A3F5F204();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OBJC_IVAR____TtC12PhotosUICore23PhotosViewCurationModel_observable;
  *(v2 + v8) = [objc_allocWithZone(off_1E77217D8) init];
  v9 = (v2 + OBJC_IVAR____TtC12PhotosUICore23PhotosViewCurationModel_photosViewModelObservation);
  *v9 = 0;
  v9[1] = 0;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore23PhotosViewCurationModel_needsUpdateAvailableCurations) = 0;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore23PhotosViewCurationModel_hasUpdatedAvailableCurations) = 0;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore23PhotosViewCurationModel_photosViewModel) = a1;
  LOBYTE(v12) = 6;
  v11[2] = a1;
  v13 = *sub_1A486B8B4();
  type metadata accessor for PhotosViewCurationModel(0);
  v10 = MEMORY[0x1E69E6720];
  sub_1A3F5F2CC(0, &qword_1EB12A328, MEMORY[0x1E69E6720]);
  sub_1A3F61B28(&unk_1EB12AC88, type metadata accessor for PhotosViewCurationModel);
  sub_1A3F5F374(&qword_1EB12A320, &qword_1EB12A328, v10);
  sub_1A5245754();
}

uint64_t sub_1A3F5F080()
{
  result = qword_1EB128F20;
  if (!qword_1EB128F20)
  {
    type metadata accessor for PhotosViewCurationModel(255);
    sub_1A3F61B28(&unk_1EB12AC88, type metadata accessor for PhotosViewCurationModel);
    sub_1A5245764();
  }

  return result;
}

uint64_t sub_1A3F5F13C()
{
  result = qword_1EB128F30;
  if (!qword_1EB128F30)
  {
    type metadata accessor for PhotosViewCurationModel(255);
    sub_1A3F5F2CC(255, &qword_1EB126F38, MEMORY[0x1E69E62F8]);
    sub_1A3F61B28(&unk_1EB12AC88, type metadata accessor for PhotosViewCurationModel);
    sub_1A5245764();
  }

  return result;
}

uint64_t sub_1A3F5F204()
{
  result = qword_1EB128F40;
  if (!qword_1EB128F40)
  {
    type metadata accessor for PhotosViewCurationModel(255);
    sub_1A3F5F2CC(255, &qword_1EB12A328, MEMORY[0x1E69E6720]);
    sub_1A3F61B28(&unk_1EB12AC88, type metadata accessor for PhotosViewCurationModel);
    sub_1A5245764();
  }

  return result;
}

void sub_1A3F5F2CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for LemonadeCurationKind);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A3F5F320()
{
  result = qword_1EB12A330;
  if (!qword_1EB12A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A330);
  }

  return result;
}

uint64_t sub_1A3F5F374(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  result = *a1;
  if (!result)
  {
    sub_1A3F5F2CC(255, a2, a3);
    sub_1A3F5F320();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1A3F5F3D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 168))(&v4);
  *a2 = v4;
  return result;
}

void sub_1A3F5F480()
{
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v0;
  sub_1A3F61B28(&unk_1EB12AC88, type metadata accessor for PhotosViewCurationModel);

  sub_1A5245714();
}

void *sub_1A3F5F6E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))(&v4);
  *a2 = v4;
  return result;
}

void sub_1A3F5F790()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3F61B28(&unk_1EB12AC88, type metadata accessor for PhotosViewCurationModel);

  sub_1A5245714();
}

void sub_1A3F5F854()
{
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v0;
  sub_1A3F61B28(&unk_1EB12AC88, type metadata accessor for PhotosViewCurationModel);

  sub_1A5245714();
}

uint64_t sub_1A3F5FABC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

void sub_1A3F5FB48()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_1A3F61B28(&unk_1EB12AC88, type metadata accessor for PhotosViewCurationModel);

  sub_1A5245714();
}

uint64_t sub_1A3F5FD6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  return result;
}

void sub_1A3F5FDB8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3F61B28(&unk_1EB12AC88, type metadata accessor for PhotosViewCurationModel);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F5FE8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3F61B28(&unk_1EB12AC88, type metadata accessor for PhotosViewCurationModel);

  sub_1A5245714();
}

void sub_1A3F5FF48()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3F61B28(&unk_1EB12AC88, type metadata accessor for PhotosViewCurationModel);

  sub_1A5245724();
}

void sub_1A3F600E8()
{
  type metadata accessor for PhotosViewCurationModel.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A3F61B28(&qword_1EB12ACA8, type metadata accessor for PhotosViewCurationModel.Mutator);
  sub_1A52456D4();
}

void sub_1A3F60210()
{
  swift_allocObject();
  swift_getKeyPath();
  sub_1A3F61B28(&qword_1EB12ACA8, type metadata accessor for PhotosViewCurationModel.Mutator);
  sub_1A52456D4();
}

void *sub_1A3F60334@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A3F60390(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 136))(&v4);
}

void sub_1A3F60410(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  sub_1A5245694();
}

void *sub_1A3F604B4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A3F60510(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 160))(&v4);
}

void sub_1A3F6057C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A3F60600()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void sub_1A3F6066C(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  sub_1A5245694();
}

void sub_1A3F6073C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

uint64_t PhotosViewCurationModel.Mutator.deinit()
{

  v1 = OBJC_IVAR____TtCC12PhotosUICore23PhotosViewCurationModel7Mutator__defaultCurationKind;
  v2 = sub_1A3F61B70();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC12PhotosUICore23PhotosViewCurationModel7Mutator__currentCurationKind, v2);
  v4 = OBJC_IVAR____TtCC12PhotosUICore23PhotosViewCurationModel7Mutator__availableCurationKinds;
  v5 = sub_1A3F61C38();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtCC12PhotosUICore23PhotosViewCurationModel7Mutator__allCurationKinds, v5);
  return v0;
}

uint64_t PhotosViewCurationModel.Mutator.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC12PhotosUICore23PhotosViewCurationModel7Mutator__defaultCurationKind;
  v2 = sub_1A3F61B70();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC12PhotosUICore23PhotosViewCurationModel7Mutator__currentCurationKind, v2);
  v4 = OBJC_IVAR____TtCC12PhotosUICore23PhotosViewCurationModel7Mutator__availableCurationKinds;
  v5 = sub_1A3F61C38();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtCC12PhotosUICore23PhotosViewCurationModel7Mutator__allCurationKinds, v5);

  return swift_deallocClassInstance();
}

void (*sub_1A3F60A44(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*(*v1 + 168))();
  return sub_1A3D3D728;
}

void sub_1A3F60AD4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3F61B28(&unk_1EB12AC88, type metadata accessor for PhotosViewCurationModel);

  sub_1A5245714();
}

void sub_1A3F60B98()
{
  if (*(v0 + OBJC_IVAR____TtC12PhotosUICore23PhotosViewCurationModel_needsUpdateAvailableCurations) == 1 && (*(v0 + OBJC_IVAR____TtC12PhotosUICore23PhotosViewCurationModel_hasUpdatedAvailableCurations) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore23PhotosViewCurationModel_photosViewModel);
    v2 = [v1 currentDataSource];
    v3 = [v1 gridStyle];
    if ([v1 allowsLensControl])
    {
      v4 = v3 == 4;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = &unk_1F16E9BD0;
      *(v9 + 24) = &unk_1F16E9BD0;
      *(v9 + 32) = 5;
      v10 = swift_allocObject();
      v10[2] = v0;
      v10[3] = sub_1A3F62500;
      v10[4] = v9;
      type metadata accessor for PhotosViewCurationModel(0);
      sub_1A3F61B28(qword_1EB12AC70, type metadata accessor for PhotosViewCurationModel);

      sub_1A5245F44();
    }

    if ([v2 container])
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v6 = swift_dynamicCastObjCProtocolConditional();
        if (v6)
        {
          [v6 px_wantsCurationByDefault];
          swift_unknownObjectRelease();
        }

        else
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            objc_opt_self();
            if (!swift_dynamicCastObjCClass())
            {
LABEL_31:
              sub_1A524E6E4();
              __break(1u);
              return;
            }
          }

          swift_unknownObjectRelease();
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    if (![v2 container])
    {
      goto LABEL_29;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
LABEL_23:
      swift_unknownObjectRelease();
LABEL_29:
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v7 = swift_dynamicCastObjCProtocolConditional();
    if (v7)
    {
      v8 = v7;
      swift_unknownObjectRetain();
      if (([v8 px_isPanoramasSmartAlbum] & 1) == 0)
      {
        [v8 px_isFeaturedPhotosCollection];
        swift_unknownObjectRelease_n();
        goto LABEL_29;
      }

      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      swift_unknownObjectRelease();
      goto LABEL_29;
    }

    goto LABEL_31;
  }
}

uint64_t sub_1A3F60F8C(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      type metadata accessor for PhotosViewCurationModel(0);
      sub_1A3F61B28(qword_1EB12AC70, type metadata accessor for PhotosViewCurationModel);

      sub_1A5245F44();
    }
  }

  return result;
}

uint64_t PhotosViewCurationModel.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore23PhotosViewCurationModel__defaultCurationKind;
  v2 = sub_1A3F5F204();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12PhotosUICore23PhotosViewCurationModel__currentCurationKind, v2);
  v4 = OBJC_IVAR____TtC12PhotosUICore23PhotosViewCurationModel__availableCurationKinds;
  v5 = sub_1A3F5F13C();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC12PhotosUICore23PhotosViewCurationModel__allCurationKinds, v5);

  swift_unknownObjectRelease();
  v7 = OBJC_IVAR____TtC12PhotosUICore23PhotosViewCurationModel__photosDataSourceIdentifier;
  v8 = sub_1A3F5F080();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t PhotosViewCurationModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore23PhotosViewCurationModel__defaultCurationKind;
  v2 = sub_1A3F5F204();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12PhotosUICore23PhotosViewCurationModel__currentCurationKind, v2);
  v4 = OBJC_IVAR____TtC12PhotosUICore23PhotosViewCurationModel__availableCurationKinds;
  v5 = sub_1A3F5F13C();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC12PhotosUICore23PhotosViewCurationModel__allCurationKinds, v5);

  swift_unknownObjectRelease();
  v7 = OBJC_IVAR____TtC12PhotosUICore23PhotosViewCurationModel__photosDataSourceIdentifier;
  v8 = sub_1A3F5F080();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t sub_1A3F6136C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 272))();
  *a1 = result;
  return result;
}

void sub_1A3F614DC()
{
  type metadata accessor for PhotosViewCurationModel(0);
  sub_1A3F61B28(qword_1EB12AC70, type metadata accessor for PhotosViewCurationModel);

  sub_1A5245F44();
}

id sub_1A3F61568@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore23PhotosViewCurationModel_observable);
  *a1 = v2;
  return v2;
}

void sub_1A3F61580()
{
  type metadata accessor for PhotosViewCurationModel(0);
  sub_1A3F61B28(&unk_1EB12AC88, type metadata accessor for PhotosViewCurationModel);

  sub_1A5245C54();
}

uint64_t sub_1A3F6160C()
{
  v1 = swift_dynamicCastObjCProtocolConditional();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    if ([v2 px_isPanoramasSmartAlbum] & 1) != 0 || (objc_msgSend(v2, sel_px_isImportHistoryCollection))
    {

      return 0;
    }

    else
    {
      v5 = [v2 px_isAllLibraryDuplicatesSmartAlbum];

      return v5 ^ 1;
    }
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 1;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 1;
    }

    else
    {
      result = sub_1A524E6E4();
      __break(1u);
    }
  }

  return result;
}

void sub_1A3F6177C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A3F6180C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F61884()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3F61B28(&unk_1EB12AC88, type metadata accessor for PhotosViewCurationModel);

  sub_1A5245714();
}

void sub_1A3F6195C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3F61B28(&unk_1EB12AC88, type metadata accessor for PhotosViewCurationModel);

  sub_1A5245724();
}

uint64_t sub_1A3F61A0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      sub_1A3F5F320();
      do
      {
        ++v3;
        ++v4;
        v5 = sub_1A524C594();
        --v2;
      }

      while ((v5 & 1) != 0 && v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1A3F61B28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3F61B70()
{
  result = qword_1EB128F80;
  if (!qword_1EB128F80)
  {
    type metadata accessor for PhotosViewCurationModel.Mutator(255);
    sub_1A3F5F2CC(255, &qword_1EB12A328, MEMORY[0x1E69E6720]);
    sub_1A3F61B28(&qword_1EB12ACA8, type metadata accessor for PhotosViewCurationModel.Mutator);
    sub_1A52456C4();
  }

  return result;
}

uint64_t sub_1A3F61C38()
{
  result = qword_1EB128F78;
  if (!qword_1EB128F78)
  {
    type metadata accessor for PhotosViewCurationModel.Mutator(255);
    sub_1A3F5F2CC(255, &qword_1EB126F38, MEMORY[0x1E69E62F8]);
    sub_1A3F61B28(&qword_1EB12ACA8, type metadata accessor for PhotosViewCurationModel.Mutator);
    sub_1A52456C4();
  }

  return result;
}

uint64_t sub_1A3F61D0C(uint64_t a1)
{
  *(a1 + 8) = sub_1A3F61B28(&qword_1EB12AC60, type metadata accessor for PhotosViewCurationModel);
  result = sub_1A3F61B28(&qword_1EB12AC98, type metadata accessor for PhotosViewCurationModel);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A3F61E20(uint64_t a1)
{
  result = sub_1A3F61B28(&qword_1EB12ACA0, type metadata accessor for PhotosViewCurationModel);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A3F61F0C()
{
  result = qword_1EB129B78;
  if (!qword_1EB129B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129B78);
  }

  return result;
}

uint64_t sub_1A3F61F68()
{
  result = sub_1A3F5F204();
  if (v1 <= 0x3F)
  {
    result = sub_1A3F5F13C();
    if (v2 <= 0x3F)
    {
      result = sub_1A3F5F080();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1A3F621D0()
{
  result = sub_1A3F61B70();
  if (v1 <= 0x3F)
  {
    result = sub_1A3F61C38();
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

uint64_t sub_1A3F623CC(uint64_t a1, uint64_t (*a2)(char *, uint64_t))
{
  v4 = *(v2 + 16);
  ObjectType = swift_getObjectType();
  v7 = v4;
  return a2(&v7, ObjectType);
}

void sub_1A3F62420()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12PhotosUICore23PhotosViewCurationModel_photosViewModel) currentDataSource];
  [v1 identifier];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3F61B28(&unk_1EB12AC88, type metadata accessor for PhotosViewCurationModel);

  sub_1A5245724();
}

void sub_1A3F62500(uint64_t a1)
{
  v3 = *(v1 + 16);
  LOBYTE(v5) = *(v1 + 32);
  v4 = v5;
  (*(*a1 + 136))(&v5);
  LOBYTE(v5) = v4;
  (*(*a1 + 160))(&v5);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v3;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F6262C(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *a1;
  v6 = *(v2 + OBJC_IVAR____TtC12PhotosUICore23PhotosViewCurationModel_photosViewModel);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v5;
  v9[4] = sub_1A3F37E68;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1A3D7692C;
  v9[3] = &block_descriptor_94_1;
  v8 = _Block_copy(v9);

  [v6 performChanges_];
  _Block_release(v8);
}

uint64_t sub_1A3F62750()
{
  result = sub_1A524C634();
  qword_1EB19BD98 = result;
  return result;
}

uint64_t *sub_1A3F62788()
{
  if (qword_1EB19BD90 != -1)
  {
    swift_once();
  }

  return &qword_1EB19BD98;
}

id static NSNotificationName.interactiveMemoryPlaybackDidFinish.getter()
{
  if (qword_1EB19BD90 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB19BD98;

  return v1;
}

id PhotoKitItem.value.getter()
{
  v0 = sub_1A3F636E4();

  return v0;
}

uint64_t PhotoKitItem.options.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 88);
  v10 = *(v1 + 72);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 104);
  v6 = *(v1 + 40);
  v9[0] = *(v1 + 24);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1A3C6DB58(v9, v8);
}

void *sub_1A3F628EC(unsigned __int8 a1)
{
  v2 = *(v1 + 112);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_1A3E4BF44(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

void *PhotoKitItem.subcontents.getter()
{
  v1 = *(v0 + 112);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1A3E4BF44(1u);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(v1 + 56) + 8 * v2);
  v5 = v4;
  return v4;
}

uint64_t PhotoKitItem.init(value:options:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 48);
  *(v3 + 56) = *(a2 + 32);
  *(v3 + 72) = v4;
  *(v3 + 88) = *(a2 + 64);
  v5 = *(a2 + 16);
  *(v3 + 24) = *a2;
  *(v3 + 16) = a1;
  v6 = *(a2 + 80);
  *(v3 + 40) = v5;
  *(v3 + 104) = v6;
  *(v3 + 112) = a3;
  return v3;
}

id PhotoKitItem.id.getter()
{
  v1 = [*(v0 + 16) px_opaqueIdentifier];

  return v1;
}

uint64_t PhotoKitItem.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C7CE1C(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v16 = PhotoKitItem.keyAssets.getter();
  if (v16 && (v17 = v16, v18 = [v16 firstObject], v17, v18))
  {
    v19 = [v18 creationDate];

    if (v19)
    {
      sub_1A52410F4();

      v20 = sub_1A5241144();
      (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
    }

    else
    {
      v20 = sub_1A5241144();
      (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
    }

    sub_1A3E98DA0(v12, v15);
    sub_1A5241144();
    v22 = *(v20 - 8);
    if ((*(v22 + 48))(v15, 1, v20) != 1)
    {
      (*(v22 + 32))(a1, v15, v20);
      return (*(v22 + 56))(a1, 0, 1, v20);
    }
  }

  else
  {
    v21 = sub_1A5241144();
    (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  v42 = v4;
  if (!v23)
  {
    v25 = a1;
    v28 = sub_1A5241144();
    v29 = v43;
    (*(*(v28 - 8) + 56))(v43, 1, 1, v28);
    goto LABEL_15;
  }

  v24 = [v23 creationDate];
  v25 = a1;
  if (v24)
  {
    v26 = v24;
    sub_1A52410F4();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v31 = sub_1A5241144();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v33(v7, v27, 1, v31);
  v34 = v7;
  v29 = v43;
  sub_1A3E98DA0(v34, v43);
  if ((*(v32 + 48))(v29, 1, v31) == 1)
  {
LABEL_15:
    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    if (v35)
    {
      v36 = [v35 startDate];
      if (v36)
      {
        v37 = v42;
        v38 = v36;
        sub_1A52410F4();

        v39 = 0;
      }

      else
      {
        v39 = 1;
        v37 = v42;
      }

      v41 = sub_1A5241144();
      (*(*(v41 - 8) + 56))(v37, v39, 1, v41);
      sub_1A3E98DA0(v37, v25);
    }

    else
    {
      v40 = sub_1A5241144();
      (*(*(v40 - 8) + 56))(v25, 1, 1, v40);
    }

    v31 = sub_1A5241144();
    if ((*(*(v31 - 8) + 48))(v29, 1, v31) != 1)
    {
      sub_1A3F637D4(v29);
    }

    goto LABEL_24;
  }

  (*(v32 + 32))(v25, v29, v31);
  v33(v25, 0, 1, v31);
LABEL_24:
  sub_1A5241144();
  result = (*(*(v31 - 8) + 48))(v15, 1, v31);
  if (result != 1)
  {
    return sub_1A3F637D4(v15);
  }

  return result;
}

uint64_t PhotoKitItem.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5241144();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v36 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  v21 = *(v1 + 16);
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    v38 = v6;
    v24 = v4;
    v25 = v21;
    v26 = [v23 startDate];
    if (v26)
    {
      v27 = v26;
      v36 = v25;
      v37 = a1;
      sub_1A52410F4();

      v28 = v24[4];
      v28(v20, v17, v3);
      v29 = [v23 endDate];
      if (v29)
      {
        v30 = v29;
        sub_1A52410F4();

        v28(v14, v11, v3);
        v31 = v24[2];
        v31(v39, v20, v3);
        v31(v38, v14, v3);
        a1 = v37;
        sub_1A5240504();

        v32 = v24[1];
        v32(v14, v3);
        v32(v20, v3);
        v33 = 0;
      }

      else
      {

        (v24[1])(v20, v3);
        v33 = 1;
        a1 = v37;
      }
    }

    else
    {

      v33 = 1;
    }
  }

  else
  {
    v33 = 1;
  }

  v34 = sub_1A5240524();
  return (*(*(v34 - 8) + 56))(a1, v33, 1, v34);
}

uint64_t PhotoKitItem.diagnosticDescription.getter()
{
  v1 = [*(v0 + 16) px_opaqueIdentifier];
  v2 = [v1 description];

  v3 = sub_1A524C674();
  return v3;
}

uint64_t PhotoKitItem.debugDescription.getter()
{
  v1 = *v0;
  swift_getMetatypeMetadata();
  v2 = sub_1A524C714();
  v4 = v3;
  sub_1A3C7CE1C(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52FF950;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1A3D710E8();
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
  v7 = MEMORY[0x1E69E65A8];
  *(v5 + 96) = MEMORY[0x1E69E6530];
  *(v5 + 104) = v7;
  *(v5 + 64) = v6;
  *(v5 + 72) = v0;
  v8 = v0[2];
  *(v5 + 136) = *(v1 + 80);
  *(v5 + 144) = swift_getWitnessTable();
  *(v5 + 112) = v8;
  v9 = v8;
  return sub_1A524C6C4();
}

uint64_t PhotoKitItem.deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 104);

  return v0;
}

uint64_t PhotoKitItem.__deallocating_deinit()
{
  PhotoKitItem.deinit();

  return swift_deallocClassInstance();
}

id sub_1A3F635A8@<X0>(void *a1@<X8>)
{
  v2 = sub_1A3F636E4();
  *a1 = v2;

  return v2;
}

id sub_1A3F635E4@<X0>(void *a1@<X8>)
{
  result = PhotoKitItem.id.getter();
  *a1 = result;
  return result;
}

id sub_1A3F63610()
{
  v0 = sub_1A3F636E4();

  return v0;
}

void sub_1A3F63690()
{
  swift_getWitnessTable();

    ;
  }
}

unint64_t sub_1A3F636EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A3F638AC();
    v3 = sub_1A524E794();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1A3E4BF44(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A3F637D4(uint64_t a1)
{
  sub_1A3C7CE1C(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3F638AC()
{
  if (!qword_1EB126470)
  {
    sub_1A3F63918();
    sub_1A3C6C300();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126470);
    }
  }
}

unint64_t sub_1A3F63918()
{
  result = qword_1EB126C40;
  if (!qword_1EB126C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126C40);
  }

  return result;
}

id InvitationsItem.invitationSharedAlbum.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

id InvitationsItem.sharedLibraryStatusProvider.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t sub_1A3F639E8@<X0>(void *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v38 = a2;
  v37 = type metadata accessor for InvitationsItem.InvitationType.SharedAlbumDisplayInfo(0);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1A5241144();
  v7 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 contributorDisplayName];
  v11 = sub_1A524C674();
  v34 = v12;
  v35 = v11;

  v13 = [a1 albumName];
  v14 = sub_1A524C674();
  v32 = v15;
  v33 = v14;

  v16 = [a1 contributor];
  v17 = [v16 email];

  if (v17)
  {
    v18 = sub_1A524C674();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  v21 = [a1 albumGUID];
  v22 = sub_1A524C674();
  v24 = v23;

  v25 = [a1 date];
  sub_1A52410F4();

  v26 = [a1 cloudOwnerIsAllowlisted];
  v27 = v34;
  *v6 = v35;
  *(v6 + 1) = v27;
  *(v6 + 2) = v18;
  *(v6 + 3) = v20;
  v28 = v32;
  *(v6 + 4) = v33;
  *(v6 + 5) = v28;
  *(v6 + 6) = v22;
  *(v6 + 7) = v24;
  v6[64] = v26;
  (*(v7 + 32))(&v6[*(v37 + 36)], v9, v36);
  v29 = type metadata accessor for InvitationsItem(0);
  sub_1A3F652D0(v6, a3 + *(v29 + 28), type metadata accessor for InvitationsItem.InvitationType.SharedAlbumDisplayInfo);
  type metadata accessor for InvitationsItem.InvitationType(0);
  result = swift_storeEnumTagMultiPayload();
  a3[1] = 0;
  a3[2] = 0;
  *a3 = a1;
  *(a3 + *(v29 + 32)) = v38 & 1;
  return result;
}

uint64_t sub_1A3F63CC8@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v60 = type metadata accessor for InvitationsItem.InvitationType.SharedLibraryDisplayInfo(0);
  MEMORY[0x1EEE9AC00](v60);
  v7 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1A5246F24();
  v62 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5241144();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v53 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v50 - v14;
  v15 = *a1;
  v59 = *a2;
  v16 = [swift_unknownObjectRetain() owner];
  v17 = PXSharedLibraryFullNameForParticipant(v16);
  swift_unknownObjectRelease();
  v18 = sub_1A524C674();
  v56 = v19;
  v57 = v18;

  v20 = [objc_msgSend(v15 owner)];
  swift_unknownObjectRelease();
  v61 = v10;
  if (v20 || (v20 = [objc_msgSend(v15 owner)], swift_unknownObjectRelease(), v20))
  {
    v21 = v62;
    v22 = sub_1A524C674();
    v54 = v23;
    v55 = v22;
  }

  else
  {
    v54 = 0xE000000000000000;
    v55 = 0;
    v21 = v62;
  }

  v24 = v8;
  v58 = v11;
  v25 = [v15 identifier];
  v26 = v25;
  v27 = v25;
  if (!v25)
  {
    sub_1A524C674();
    v27 = sub_1A524C634();

    sub_1A524C674();
    v26 = sub_1A524C634();
    v21 = v62;
  }

  v28 = sub_1A524C674();
  v62 = v29;
  v30 = v25;
  v31 = PXPreferencesSharedLibraryInvitationReceivedDate(v27);

  if (v31)
  {
    v32 = v63;
    sub_1A52410F4();
  }

  else
  {
    v51 = v28;
    sub_1A5241104();
    sub_1A45350E8();
    v33 = v24;
    v34 = v52;
    (*(v21 + 16))();
    v35 = sub_1A5246F04();
    v36 = sub_1A524D244();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1A3C1C000, v35, v36, "Unable to get date for shared library invitation. Falling back to now", v37, 2u);
      MEMORY[0x1A590EEC0](v37, -1, -1);
    }

    (*(v21 + 8))(v34, v33);
    v32 = v63;
    v28 = v51;
  }

  v38 = v61;
  v39 = v58;
  (*(v58 + 16))(v7 + *(v60 + 28), v32, v61);
  v40 = v56;
  *v7 = v57;
  v7[1] = v40;
  v41 = v54;
  v7[2] = v55;
  v7[3] = v41;
  v42 = v62;
  v7[4] = v28;
  v7[5] = v42;
  v43 = type metadata accessor for InvitationsItem(0);
  v44 = v32;
  sub_1A3F64290(v7, a3 + *(v43 + 28), type metadata accessor for InvitationsItem.InvitationType.SharedLibraryDisplayInfo);
  type metadata accessor for InvitationsItem.InvitationType(0);
  swift_storeEnumTagMultiPayload();
  *a3 = 0;
  a3[1] = v15;
  a3[2] = v59;
  v45 = PXPreferencesSharedLibraryInvitationLastSeenDate(v26);

  if (v45)
  {
    v46 = v53;
    sub_1A52410F4();

    v47 = sub_1A5241114();
    swift_unknownObjectRelease();
    v48 = *(v39 + 8);
    v48(v46, v38);
    sub_1A3F65338(v7, type metadata accessor for InvitationsItem.InvitationType.SharedLibraryDisplayInfo);
    result = (v48)(v44, v38);
    *(a3 + *(v43 + 32)) = v47 == 1;
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1A3F65338(v7, type metadata accessor for InvitationsItem.InvitationType.SharedLibraryDisplayInfo);
    result = (*(v39 + 8))(v44, v38);
    *(a3 + *(v43 + 32)) = 1;
  }

  return result;
}

uint64_t sub_1A3F64290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t InvitationsItem.id.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = &selRef_uuid;
  }

  else
  {
    v1 = *(v0 + 8);
    if (!v1)
    {
      return 0x6974617469766E69;
    }

    v2 = &selRef_identifier;
  }

  v3 = [v1 *v2];
  v4 = sub_1A524C674();

  return v4;
}

id InvitationsItem.value.getter@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    v7 = *v1;
    v9 = sub_1A3C52C70(0, &qword_1EB126820);
    *&v8 = v7;
    sub_1A3C57128(&v8, a1);
    v3 = v7;
  }

  else
  {
    v4 = v1[1];
    sub_1A3F65208(0, &qword_1EB125AF0, sub_1A3F651D4, MEMORY[0x1E69E6720]);
    *(a1 + 24) = v5;
    *a1 = v4;
    swift_unknownObjectRetain();
    v3 = 0;
  }

  return v3;
}

unint64_t InvitationsItem.diagnosticDescription.getter()
{
  if (!*v0)
  {
    return 0xD000000000000019;
  }

  v1 = [*v0 debugDescription];
  v2 = sub_1A524C674();

  return v2;
}

void sub_1A3F644C8()
{
  v1 = type metadata accessor for InvitationsItem.InvitationType.SharedLibraryDisplayInfo(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InvitationsItem.InvitationType.SharedAlbumDisplayInfo(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InvitationsItem.InvitationType(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InvitationsItem(0);
  sub_1A3F64290(v0 + *(v10 + 28), v9, type metadata accessor for InvitationsItem.InvitationType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3F652D0(v9, v3, type metadata accessor for InvitationsItem.InvitationType.SharedLibraryDisplayInfo);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3F652D0(v9, v6, type metadata accessor for InvitationsItem.InvitationType.SharedAlbumDisplayInfo);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3F646E0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for InvitationsItem.InvitationType.SharedLibraryDisplayInfo(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InvitationsItem.InvitationType.SharedAlbumDisplayInfo(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InvitationsItem.InvitationType(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InvitationsItem(0);
  sub_1A3F64290(v1 + *(v12 + 28), v11, type metadata accessor for InvitationsItem.InvitationType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3F652D0(v11, v5, type metadata accessor for InvitationsItem.InvitationType.SharedLibraryDisplayInfo);
    v13 = *(v3 + 28);
    v14 = sub_1A5241144();
    (*(*(v14 - 8) + 16))(a1, &v5[v13], v14);
    v15 = type metadata accessor for InvitationsItem.InvitationType.SharedLibraryDisplayInfo;
    v16 = v5;
  }

  else
  {
    sub_1A3F652D0(v11, v8, type metadata accessor for InvitationsItem.InvitationType.SharedAlbumDisplayInfo);
    v17 = *(v6 + 36);
    v18 = sub_1A5241144();
    (*(*(v18 - 8) + 16))(a1, &v8[v17], v18);
    v15 = type metadata accessor for InvitationsItem.InvitationType.SharedAlbumDisplayInfo;
    v16 = v8;
  }

  return sub_1A3F65338(v16, v15);
}

uint64_t sub_1A3F64938()
{
  v1 = type metadata accessor for InvitationsItem.InvitationType.SharedAlbumDisplayInfo(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InvitationsItem.InvitationType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InvitationsItem(0);
  sub_1A3F64290(v0 + *(v7 + 28), v6, type metadata accessor for InvitationsItem.InvitationType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3F65338(v6, type metadata accessor for InvitationsItem.InvitationType);
    return 1;
  }

  else
  {
    sub_1A3F652D0(v6, v3, type metadata accessor for InvitationsItem.InvitationType.SharedAlbumDisplayInfo);
    v8 = v3[64];
    sub_1A3F65338(v3, type metadata accessor for InvitationsItem.InvitationType.SharedAlbumDisplayInfo);
  }

  return v8;
}

uint64_t sub_1A3F64A98()
{
  v1 = v0;
  v2 = type metadata accessor for InvitationsItem.InvitationType.SharedAlbumDisplayInfo(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InvitationsItem.InvitationType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F64290(v1, v7, type metadata accessor for InvitationsItem.InvitationType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A3F652D0(v7, v4, type metadata accessor for InvitationsItem.InvitationType.SharedAlbumDisplayInfo);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3F65338(v7, type metadata accessor for InvitationsItem.InvitationType);
  return 0;
}

void sub_1A3F64C00()
{
  v1 = v0;
  v2 = type metadata accessor for InvitationsItem.InvitationType.SharedLibraryDisplayInfo(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InvitationsItem.InvitationType.SharedAlbumDisplayInfo(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InvitationsItem.InvitationType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F64290(v1, v10, type metadata accessor for InvitationsItem.InvitationType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3F652D0(v10, v4, type metadata accessor for InvitationsItem.InvitationType.SharedLibraryDisplayInfo);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3F652D0(v10, v7, type metadata accessor for InvitationsItem.InvitationType.SharedAlbumDisplayInfo);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F64DD4()
{
  v1 = v0;
  v2 = type metadata accessor for InvitationsItem.InvitationType.SharedLibraryDisplayInfo(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InvitationsItem.InvitationType.SharedAlbumDisplayInfo(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InvitationsItem.InvitationType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F64290(v1, v10, type metadata accessor for InvitationsItem.InvitationType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3F652D0(v10, v4, type metadata accessor for InvitationsItem.InvitationType.SharedLibraryDisplayInfo);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3F652D0(v10, v7, type metadata accessor for InvitationsItem.InvitationType.SharedAlbumDisplayInfo);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A3F64FAC@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    v7 = *v1;
    v9 = sub_1A3C52C70(0, &qword_1EB126820);
    *&v8 = v7;
    sub_1A3C57128(&v8, a1);
    v3 = v7;
  }

  else
  {
    v4 = v1[1];
    sub_1A3F65208(0, &qword_1EB125AF0, sub_1A3F651D4, MEMORY[0x1E69E6720]);
    *(a1 + 24) = v5;
    *a1 = v4;
    swift_unknownObjectRetain();
    v3 = 0;
  }

  return v3;
}

void sub_1A3F65074(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*v1)
  {
    v4 = &selRef_uuid;
  }

  else
  {
    v3 = *(v1 + 8);
    if (!v3)
    {
      v8 = 0xEA00000000006E6FLL;
      v6 = 0x6974617469766E69;
      goto LABEL_6;
    }

    v4 = &selRef_identifier;
  }

  v5 = [v3 *v4];
  v6 = sub_1A524C674();
  v8 = v7;

LABEL_6:
  *a1 = v6;
  a1[1] = v8;
}

unint64_t sub_1A3F65104()
{
  if (!*v0)
  {
    return 0xD000000000000019;
  }

  v1 = [*v0 debugDescription];
  v2 = sub_1A524C674();

  return v2;
}

void sub_1A3F6517C()
{
  sub_1A3F65400(&qword_1EB12F088);

    ;
  }
}

void sub_1A3F65208(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A3F6526C()
{
  result = qword_1EB120AA0;
  if (!qword_1EB120AA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB120AA0);
  }

  return result;
}

uint64_t sub_1A3F652D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3F65338(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3F65400(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InvitationsItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3F654A0()
{
  sub_1A3F655B8(319, &qword_1EB120710, &qword_1EB126820, off_1E771F6B0, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A3F65208(319, &qword_1EB125AF0, sub_1A3F651D4, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A3F65620();
      if (v2 <= 0x3F)
      {
        type metadata accessor for InvitationsItem.InvitationType(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A3F655B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A3F65620()
{
  if (!qword_1EB125AD8)
  {
    sub_1A3F655B8(255, &unk_1EB125AE0, &qword_1EB1206D0, off_1E771F918, type metadata accessor for SendableTransfer);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125AD8);
    }
  }
}

uint64_t sub_1A3F656F4()
{
  result = type metadata accessor for InvitationsItem.InvitationType.SharedAlbumDisplayInfo(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for InvitationsItem.InvitationType.SharedLibraryDisplayInfo(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A3F65790()
{
  result = sub_1A5241144();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A3F65848()
{
  result = sub_1A5241144();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A3F658D0()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1EB9A8);
  __swift_project_value_buffer(v6, qword_1EB1EB9A8);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

unint64_t sub_1A3F65ABC()
{
  result = qword_1EB12F098;
  if (!qword_1EB12F098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F098);
  }

  return result;
}

void sub_1A3F65B10()
{
  if (!qword_1EB12F0A8)
  {
    sub_1A3F677A4(255, &qword_1EB12F0B0, sub_1A3F57FA8, &type metadata for AssetEntity, MEMORY[0x1E695A1A0]);
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F0A8);
    }
  }
}

uint64_t sub_1A3F65BA8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3F65C40, v4, v3);
}

uint64_t sub_1A3F65C40()
{
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[8] = v1;
  sub_1A3F65ABC();
  *v1 = v0;
  v1[1] = sub_1A3DEB8E8;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A530A798);
}

uint64_t sub_1A3F65D2C(uint64_t a1, uint64_t a2)
{
  v2[54] = a1;
  v2[55] = a2;
  sub_1A524CC54();
  v2[56] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[57] = v4;
  v2[58] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3F65DC4, v4, v3);
}

uint64_t sub_1A3F65DC4()
{
  sub_1A523FF44();
  v1 = *(v0 + 48);
  *(v0 + 168) = *(v0 + 64);
  v2 = *(v0 + 96);
  *(v0 + 184) = *(v0 + 80);
  *(v0 + 200) = v2;
  v3 = *(v0 + 32);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = v3;
  *(v0 + 216) = *(v0 + 112);
  *(v0 + 152) = v1;
  v4 = swift_task_alloc();
  *(v0 + 472) = v4;
  *v4 = v0;
  v4[1] = sub_1A3F65E90;

  return sub_1A3F660E4(v0 + 120);
}

uint64_t sub_1A3F65E90()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 152);
    *(v2 + 224) = *(v2 + 120);
    *(v2 + 240) = v3;
    v5 = *(v2 + 168);
    v6 = *(v2 + 184);
    v7 = *(v2 + 200);
    *(v2 + 320) = *(v2 + 216);
    *(v2 + 288) = v6;
    *(v2 + 304) = v7;
    *(v2 + 256) = v4;
    *(v2 + 272) = v5;
    sub_1A3F678A8(v2 + 224);
    v8 = *(v2 + 456);
    v9 = *(v2 + 464);
    v10 = sub_1A3F66080;
  }

  else
  {
    v11 = *(v2 + 120);
    v12 = *(v2 + 152);
    *(v2 + 344) = *(v2 + 136);
    *(v2 + 360) = v12;
    *(v2 + 328) = v11;
    v13 = *(v2 + 168);
    v14 = *(v2 + 184);
    v15 = *(v2 + 200);
    *(v2 + 424) = *(v2 + 216);
    *(v2 + 392) = v14;
    *(v2 + 408) = v15;
    *(v2 + 376) = v13;
    sub_1A3F678A8(v2 + 328);
    v8 = *(v2 + 456);
    v9 = *(v2 + 464);
    v10 = sub_1A3F66010;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1A3F66010()
{

  sub_1A523FDD4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3F66080()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3F660E4(uint64_t a1)
{
  v3 = sub_1A5240E64();
  *(v1 + 328) = v3;
  *(v1 + 336) = *(v3 - 8);
  *(v1 + 344) = swift_task_alloc();
  v4 = sub_1A5246F24();
  *(v1 + 352) = v4;
  *(v1 + 360) = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *(a1 + 32);
  *(v1 + 168) = *(a1 + 48);
  v7 = *(a1 + 80);
  *(v1 + 184) = *(a1 + 64);
  *(v1 + 200) = v7;
  v8 = *(a1 + 16);
  *(v1 + 120) = *a1;
  *(v1 + 136) = v8;
  *(v1 + 368) = v5;
  *(v1 + 216) = *(a1 + 96);
  *(v1 + 152) = v6;
  sub_1A524CC54();
  *(v1 + 376) = sub_1A524CC44();
  v10 = sub_1A524CBC4();
  *(v1 + 384) = v10;
  *(v1 + 392) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1A3F66260, v10, v9);
}

void sub_1A3F66260()
{
  v18 = v0;
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 352);
  v4 = *(v0 + 168);
  v5 = *(v0 + 200);
  v15 = *(v0 + 184);
  v16 = v5;
  v17 = *(v0 + 216);
  v6 = *(v0 + 136);
  v11 = *(v0 + 120);
  v12 = v6;
  v13 = *(v0 + 152);
  v14 = v4;
  sub_1A3F67450(v0 + 120, v0 + 224);
  PXAppIntentsDebugDescription(for:)(&v11);
  v7 = v16;
  *(v0 + 80) = v15;
  *(v0 + 96) = v7;
  *(v0 + 112) = v17;
  v8 = v12;
  *(v0 + 16) = v11;
  *(v0 + 32) = v8;
  v9 = v14;
  *(v0 + 48) = v13;
  *(v0 + 64) = v9;
  sub_1A3F674AC(v0 + 16);
  v10 = sub_1A3CB648C();
  (*(v2 + 16))(v1, v10, v3);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3F664E4()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  v3 = *(v2 + 392);
  v4 = *(v2 + 384);
  if (v0)
  {
    v5 = sub_1A3F666BC;
  }

  else
  {
    v5 = sub_1A3F66620;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A3F66620()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A3F666BC()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A3F66758@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3DB7B48(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - v5;
  v7 = *a1;
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_1A524E404();

  v8 = [v7 localIdentifier];
  v9 = sub_1A524C674();
  v11 = v10;

  MEMORY[0x1A5907B60](v9, v11);

  sub_1A5240E34();

  v12 = sub_1A5240E64();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v6, 1, v12);
  if (result != 1)
  {
    return (*(v13 + 32))(a2, v6, v12);
  }

  __break(1u);
  return result;
}

void (*sub_1A3F66954(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB6E78;
}

uint64_t sub_1A3F669CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB19BFA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1EB9A8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A3F66A8C()
{
  sub_1A3F677A4(0, &qword_1EB12F090, sub_1A3F65ABC, &type metadata for OpenAssetIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3F677A4(0, &qword_1EB12F0A0, sub_1A3F65ABC, &type metadata for OpenAssetIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A3F65B10();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A3F66C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = a2;
  v5 = *v3;
  v4[5] = a3;
  v4[6] = v5;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v4[8] = v7;
  v4[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A3F66D14, v7, v6);
}

uint64_t sub_1A3F66D14()
{
  v0[2] = v0[6];
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1A3DED2C4;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A530A998);
}

uint64_t sub_1A3F66DF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3F66E58();
  *a1 = result;
  return result;
}

uint64_t sub_1A3F66E1C(uint64_t a1)
{
  v2 = sub_1A3F65ABC();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A3F66E58()
{
  v0 = sub_1A5240334();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v26 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB7B48(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v25 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v24 = v22 - v5;
  sub_1A3DB7B48(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v23 = v22 - v7;
  v8 = sub_1A5240BA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v22[0] = sub_1A5240BB4();
  v14 = *(v22[0] - 8);
  MEMORY[0x1EEE9AC00](v22[0]);
  sub_1A3F677A4(0, &qword_1EB12F0B0, sub_1A3F57FA8, &type metadata for AssetEntity, MEMORY[0x1E695A1A0]);
  v22[1] = v15;
  sub_1A524C5B4();
  sub_1A5241244();
  v16 = *MEMORY[0x1E6968DF0];
  v17 = *(v9 + 104);
  v17(v11, v16, v8);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v17(v11, v16, v8);
  v18 = v23;
  sub_1A5240BC4();
  (*(v14 + 56))(v18, 0, 1, v22[0]);
  v19 = sub_1A523FDB4();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, *MEMORY[0x1E695A500], v28);
  sub_1A3F58824();
  return sub_1A523FFB4();
}

uint64_t sub_1A3F673B4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3CA8098;

  return sub_1A3F65D2C(a1, v1);
}

uint64_t sub_1A3F674AC(uint64_t a1)
{
  sub_1A3C37060(0, &qword_1EB12F0B8, &type metadata for AssetEntity, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A3F67530()
{
  result = qword_1EB12F0C0;
  if (!qword_1EB12F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F0C0);
  }

  return result;
}

unint64_t sub_1A3F67588()
{
  result = qword_1EB125CD8;
  if (!qword_1EB125CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125CD8);
  }

  return result;
}

unint64_t sub_1A3F675E4()
{
  result = qword_1EB12F0C8;
  if (!qword_1EB12F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F0C8);
  }

  return result;
}

unint64_t sub_1A3F6763C()
{
  result = qword_1EB12F0D0;
  if (!qword_1EB12F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F0D0);
  }

  return result;
}

unint64_t sub_1A3F67694()
{
  result = qword_1EB12F0D8;
  if (!qword_1EB12F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F0D8);
  }

  return result;
}

unint64_t sub_1A3F67714()
{
  result = qword_1EB12F0E0;
  if (!qword_1EB12F0E0)
  {
    sub_1A3F677A4(255, &qword_1EB12F0E8, sub_1A3F65ABC, &type metadata for OpenAssetIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F0E0);
  }

  return result;
}

void sub_1A3F677A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A3F6780C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A3F65D2C(a1, v1);
}

uint64_t sub_1A3F67900()
{
  if (qword_1EB19C360 != -1)
  {
    result = swift_once();
  }

  qword_1EB19C338 = qword_1EB16A688;
  return result;
}

uint64_t *sub_1A3F67960()
{
  if (qword_1EB19C330 != -1)
  {
    swift_once();
  }

  return &qword_1EB19C338;
}

uint64_t static OneUpSharePlayVersion.current.getter@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB19C330 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = HIDWORD(qword_1EB19C338);
  *a1 = qword_1EB19C338;
  a1[1] = v1;
  return result;
}

uint64_t OneUpSharePlayVersion.init(major:minor:patch:)@<X0>(uint64_t result@<X0>, __int16 a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 2) = a2;
  *(a4 + 4) = a3;
  return result;
}

uint64_t *sub_1A3F67A3C()
{
  if (qword_1EB19C340 != -1)
  {
    swift_once();
  }

  return &qword_1EB19C348;
}

uint64_t static OneUpSharePlayVersion.v2_0_0.getter@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB19C340 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = HIDWORD(qword_1EB19C348);
  *a1 = qword_1EB19C348;
  a1[1] = v1;
  return result;
}

uint64_t *sub_1A3F67B0C()
{
  if (qword_1EB19C350 != -1)
  {
    swift_once();
  }

  return &qword_1EB19C358;
}

uint64_t static OneUpSharePlayVersion.v2_3_0.getter@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB19C350 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = HIDWORD(qword_1EB19C358);
  *a1 = qword_1EB19C358;
  a1[1] = v1;
  return result;
}

uint64_t static OneUpSharePlayVersion.v26_0_0.getter@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB19C360 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = HIDWORD(qword_1EB16A688);
  *a1 = qword_1EB16A688;
  a1[1] = v1;
  return result;
}

uint64_t OneUpSharePlayVersion.description.getter()
{
  v3 = sub_1A524EA44();
  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  v0 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v0);

  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  v1 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v1);

  return v3;
}

BOOL static OneUpSharePlayVersion.< infix(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 == v5)
  {
    v6 = *(a1 + 1) < *(a2 + 1);
  }

  else
  {
    v6 = v3 < v5;
  }

  if (v2 == v4)
  {
    return v6;
  }

  else
  {
    return v2 < v4;
  }
}

uint64_t OneUpSharePlayVersion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A524ED04();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v5 = sub_1A524EAD4();
    v6 = HIWORD(v5);
    v7 = HIDWORD(v5);
    v8 = v5;
    __swift_destroy_boxed_opaque_existential_0(v10);
    *a2 = v6;
    *(a2 + 2) = v7;
    *(a2 + 4) = v8;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t OneUpSharePlayVersion.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A524ED24();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1A524EAE4();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1A3F67FF0()
{
  result = qword_1EB12F0F0;
  if (!qword_1EB12F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F0F0);
  }

  return result;
}

BOOL sub_1A3F68044(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = v3 == v5;
  v7 = v3 < v5;
  if (v6)
  {
    v7 = *(a1 + 1) < *(a2 + 1);
  }

  if (v2 == v4)
  {
    return v7;
  }

  else
  {
    return v2 < v4;
  }
}

BOOL sub_1A3F68084(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 == v3;
  v7 = v5 < v3;
  if (v6)
  {
    v7 = *(a2 + 1) < *(a1 + 1);
  }

  if (v4 == v2)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4 < v2;
  }

  return !v8;
}

BOOL sub_1A3F680C8(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = v3 == v5;
  v7 = v3 < v5;
  if (v6)
  {
    v7 = *(a1 + 1) < *(a2 + 1);
  }

  if (v2 == v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = v2 < v4;
  }

  return !v8;
}

BOOL sub_1A3F6810C(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 == v3;
  v7 = v5 < v3;
  if (v6)
  {
    v7 = *(a2 + 1) < *(a1 + 1);
  }

  if (v4 == v2)
  {
    return v7;
  }

  else
  {
    return v4 < v2;
  }
}

uint64_t sub_1A3F68170(uint64_t a1)
{
  sub_1A3F683AC(a1, v4);
  if (v6)
  {
    v2[0] = v4[0];
    v2[1] = v4[1];
    v3 = v5;
    sub_1A52488A4();
    return sub_1A3D5FAFC(v2);
  }

  else
  {
    sub_1A3C3DEB4();
    return sub_1A52488A4();
  }
}

uint64_t sub_1A3F68224(uint64_t a1, uint64_t a2)
{
  sub_1A3F683AC(a1, v10);
  sub_1A3F683AC(a2, v11);
  if ((v10[40] & 1) == 0)
  {
    sub_1A3F683AC(v10, v9);
    if ((v13 & 1) == 0)
    {
      sub_1A3C5F5F8();
      sub_1A524C9C4();
      sub_1A524C9C4();
      if (v7[0] == v6)
      {
      }

      else
      {
        v4 = sub_1A524EAB4();

        if ((v4 & 1) == 0)
        {
          sub_1A3F6857C(v10);
          goto LABEL_9;
        }
      }

      sub_1A3F6857C(v10);
      v3 = 1;
      return v3 & 1;
    }

LABEL_8:
    sub_1A3F684C4(v10);
LABEL_9:
    v3 = 0;
    return v3 & 1;
  }

  sub_1A3F683AC(v10, v9);
  if (v13 != 1)
  {
    sub_1A3D5FAFC(v9);
    goto LABEL_8;
  }

  v7[0] = v11[0];
  v7[1] = v11[1];
  v8 = v12;
  v3 = MEMORY[0x1A59096D0](v9, v7);
  sub_1A3D5FAFC(v7);
  sub_1A3D5FAFC(v9);
  sub_1A3F6857C(v10);
  return v3 & 1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A3F68404(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A3F68440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A3F6848C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1A3F684C4(uint64_t a1)
{
  sub_1A3F68520();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3F68520()
{
  if (!qword_1EB12F0F8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12F0F8);
    }
  }
}

uint64_t sub_1A3F685AC()
{
  sub_1A3C52C70(0, &qword_1EB12B140);
  sub_1A524C814();
  result = sub_1A524DEE4();
  qword_1EB1EB9C0 = result;
  return result;
}

uint64_t sub_1A3F68618()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EB9C8);
  __swift_project_value_buffer(v0, qword_1EB1EB9C8);
  if (qword_1EB15E238 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB1EB9C0;
  return sub_1A5246F34();
}

void *sub_1A3F686A4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[7] = 2000;
  v6[2] = a1;
  v7 = [a1 photoLibrary];
  v6[3] = v7;
  v6[5] = a2;
  v6[6] = a3;
  v6[4] = [objc_opt_self() mediaProviderWithLibrary_];
  return v6;
}

uint64_t sub_1A3F68744(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A3F68768, 0, 0);
}

uint64_t sub_1A3F68768()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = [v1 librarySpecificFetchOptions];
  sub_1A3C52C70(0, &qword_1EB126D20);
  sub_1A3C710D4(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52FC9F0;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1A3D710E8();
  *(v5 + 32) = 1684632949;
  *(v5 + 40) = 0xE400000000000000;
  v7 = sub_1A5244F84();
  sub_1A3C2DD74(0, &qword_1EB126ED0, v6, MEMORY[0x1E69E62F8]);
  *(v5 + 96) = v8;
  *(v5 + 104) = sub_1A3F6D374(&qword_1EB140610);
  *(v5 + 72) = v7;
  v9 = sub_1A524D134();
  [v4 setPredicate_];

  sub_1A3C2DD74(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A52F9790;
  v11 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v12 = sub_1A524C634();
  v13 = [v11 initWithKey:v12 ascending:1];

  *(v10 + 32) = v13;
  sub_1A3C52C70(0, &qword_1EB126B60);
  v14 = sub_1A524CA14();

  [v4 setSortDescriptors_];

  v15 = [objc_opt_self() fetchAssetsWithOptions_];
  v16 = sub_1A5244F94();
  v18 = (*(v2 + 120))(v15, v16, v17);

  v19 = sub_1A5244FA4();
  (*(*(v19 - 8) + 8))(v3, v19);
  v20 = v0[1];

  return v20(v18);
}

uint64_t sub_1A3F68ABC(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v3[17] = *v2;
  v4 = sub_1A5240CB4();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v5 = sub_1A52404F4();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v6 = sub_1A5240E64();
  v3[24] = v6;
  v3[25] = *(v6 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A3F68C6C, 0, 0);
}

void sub_1A3F68C6C()
{
  if (qword_1EB15E238 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB1EB9C0;
  sub_1A5244BC4();
  swift_allocObject();
  v2 = v1;
  v0[28] = sub_1A5244BB4();
  if (qword_1EB15E230 != -1)
  {
    swift_once();
  }

  v3 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[15];
  v7 = sub_1A5246F24();
  __swift_project_value_buffer(v7, qword_1EB1EB9C8);
  v8 = *(v5 + 16);
  v0[29] = v8;
  v0[30] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v6, v4);

  v9 = sub_1A5246F04();
  v10 = sub_1A524D224();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[27];
  v14 = v0[24];
  v13 = v0[25];
  if (v11)
  {
    v15 = swift_slowAlloc();
    swift_slowAlloc();
    *v15 = 136315650;
    sub_1A3C2EF94();
  }

  v16 = *(v13 + 8);
  v16(v12, v14);
  v0[31] = v16;
  v17 = v0[16];
  v18 = [objc_allocWithZone(off_1E7721970) initWithRootProvider_];
  v0[32] = v18;
  [v18 setIsPrivateDataAllowed_];
  v0[33] = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v19 = *(v17 + 48);
  v0[9] = *(v17 + 40);
  v0[10] = v19;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3F6939C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A3F694B4, 0, 0);
}

uint64_t sub_1A3F694B4()
{
  v1 = v0[34];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v0[33];
  v4 = v0[32];
  v14 = v0[31];
  if (v2)
  {
    v5 = v0[26];
    v6 = v0[24];
    swift_willThrow();
    v7 = v2;

    v14(v5, v6);
  }

  else
  {
    v9 = v0[29];
    v10 = v0[26];
    v11 = v0[24];
    v12 = v0[14];

    v9(v12, v10, v11);

    v14(v10, v11);
  }

  sub_1A5244BA4();

  v8 = v0[1];

  return v8();
}

void sub_1A3F69680(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v30 = a7;
  v28 = a5;
  v31 = a2;
  v32 = a3;
  sub_1A3F6D768();
  v10 = v9;
  v25 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v26 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5240E64();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = objc_opt_self();
  (*(v14 + 16))(v16, a4, v13);
  (*(v11 + 16))(&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v11 + 80) + v19 + 8) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v32;
  (*(v14 + 32))(v21 + v17, v16, v13);
  v22 = v29;
  *(v21 + v18) = v28;
  *(v21 + v19) = v22;
  (*(v11 + 32))(v21 + v20, v26, v25);
  *(v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
  aBlock[4] = sub_1A3F6D7CC;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3F69F3C;
  aBlock[3] = &block_descriptor_46_3;
  v23 = _Block_copy(aBlock);
  v24 = v32;

  [v27 requestVisualDiagnosticsPDFDocumentURLWithConfiguration:v31 resultHandler:v23];
  _Block_release(v23);
}

uint64_t sub_1A3F69970(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v45 = a5;
  v46 = a6;
  v44 = a4;
  v47[3] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E6968FB0];
  sub_1A3C710D4(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44 - v11;
  v13 = sub_1A5240E64();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  sub_1A3F6D938(a1, v12, &unk_1EB12B250, v9);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1A3F6D8C8(v12, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    v20 = sub_1A5240D44();
    v21 = sub_1A5240D44();
    v47[0] = 0;
    v22 = [a2 moveItemAtURL:v20 toURL:v21 error:{v47, v44}];

    if (v22)
    {
      v23 = qword_1EB15E230;
      v24 = v47[0];
      if (v23 != -1)
      {
        swift_once();
      }

      v25 = sub_1A5246F24();
      __swift_project_value_buffer(v25, qword_1EB1EB9C8);
      (*(v14 + 16))(v16, a3, v13);

      v26 = sub_1A5246F04();
      v27 = sub_1A524D224();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v45 = v19;
        v47[0] = v29;
        *v28 = 136315394;
        sub_1A3C2EF94();
      }

      v42 = *(v14 + 8);
      v42(v16, v13);
      v42(v19, v13);
    }

    else
    {
      v30 = v47[0];
      v31 = sub_1A5240B84();

      swift_willThrow();
      if (qword_1EB15E230 != -1)
      {
        swift_once();
      }

      v32 = sub_1A5246F24();
      __swift_project_value_buffer(v32, qword_1EB1EB9C8);
      v33 = v31;
      v34 = sub_1A5246F04();
      v35 = sub_1A524D244();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        v38 = v31;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 4) = v39;
        *v37 = v39;
        _os_log_impl(&dword_1A3C1C000, v34, v35, "Failed writing visual diagnostics files: %@", v36, 0xCu);
        sub_1A3CB65E4(v37);
        MEMORY[0x1A590EEC0](v37, -1, -1);
        MEMORY[0x1A590EEC0](v36, -1, -1);
      }

      (*(v14 + 8))(v19, v13);
      v40 = v45;
      swift_beginAccess();
      v41 = *(v40 + 2);
      *(v40 + 2) = v31;
    }
  }

  sub_1A3F6D768();
  return sub_1A524CBE4();
}

uint64_t sub_1A3F69F3C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1A3C710D4(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1A5240DE4();
    v10 = sub_1A5240E64();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_1A5240E64();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_1A3F6D8C8(v8, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
}

uint64_t sub_1A3F6A0C0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  sub_1A3C710D4(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_1A524CCB4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = v8;

  v14 = a1;

  sub_1A3D4D930(0, 0, v11, &unk_1A530AB98, v13);
}

uint64_t sub_1A3F6A248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A3F6A26C, 0, 0);
}

void sub_1A3F6A26C()
{
  if (qword_1EB15E238 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = qword_1EB1EB9C0;
  sub_1A5244BC4();
  swift_allocObject();
  v3 = v2;
  *(v0 + 72) = sub_1A5244BB4();
  v4 = *(v1 + 16);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3F6A65C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A3F6A758, 0, 0);
}

uint64_t sub_1A3F6A758()
{
  v1 = v0[10];
  v2 = v0[7];
  sub_1A5244BA4();
  v2(1, 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A3F6A99C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A3F6A9C0, 0, 0);
}

uint64_t sub_1A3F6A9C0()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  [v1 beginPage];
  v3 = [v2 count];
  *(v0 + 88) = v3;
  [v1 currentPageBounds];
  v34 = CGRectInset(v33, 10.0, 10.0);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  *(v0 + 96) = v34.size.width;
  result = [v2 count];
  if (result)
  {
    if (height <= -9.22337204e18)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (height >= 9.22337204e18)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v9 = width / 10.0;
    v10 = COERCE__INT64(fabs(width / 10.0)) > 0x7FEFFFFFFFFFFFFFLL;
    if ((*&height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v10)
    {
      goto LABEL_36;
    }

    if (v9 <= -9.22337204e18)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v9 >= 9.22337204e18)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v11 = v9;
    if (!v9)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (height == 0x8000000000000000 && v11 == -1)
    {
      goto LABEL_47;
    }

    v12 = height / v11;
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    *(v0 + 104) = v14;
    if (v13)
    {
      goto LABEL_40;
    }

    v15 = 10 * v14;
    if ((v14 * 10) >> 64 != (10 * v14) >> 63)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (!v15)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v16 = v3 / v15;
    v13 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    *(v0 + 112) = v17;
    if (v13)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v17 < 0)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v17)
    {
      if (v14 < 0)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      *(v0 + 120) = 1;
      if (v14)
      {
LABEL_19:
        *(v0 + 128) = 0;
        *(v0 + 136) = 0;
        v18 = *(v0 + 96) / 10.0;
        *(v0 + 152) = 0;
        *(v0 + 160) = 0;
        *(v0 + 144) = 1;
        v19 = *(v0 + 80);
        v20 = [*(v0 + 64) objectAtIndex_];
        *(v0 + 168) = v20;
        v31 = (*(*v19 + 152) + **(*v19 + 152));
        v21 = swift_task_alloc();
        *(v0 + 176) = v21;
        *v21 = v0;
        v21[1] = sub_1A3F6AE5C;
        v24.n128_f64[0] = v18;
        v25.n128_f64[0] = v18;

        v22.n128_f64[0] = v18 * 0.0 + 10.0;
        v23.n128_f64[0] = v22.n128_f64[0];
        return v31(v20, v22, v23, v24, v25);
      }

      v29 = *(v0 + 120);
      if (v29 != *(v0 + 112))
      {
        while (1)
        {
          *(v0 + 120) = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v29)
          {
            v30 = *(v0 + 72);
            [v30 endPage];
            result = [v30 beginPage];
            if (*(v0 + 104))
            {
              goto LABEL_19;
            }
          }

          v29 = *(v0 + 120);
          if (v29 == *(v0 + 112))
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_34;
      }
    }
  }

  else
  {
    v26 = *(v0 + 72);
    *(v0 + 48) = sub_1A3F6B23C;
    *(v0 + 56) = 0;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1A3D77CC4;
    *(v0 + 40) = &block_descriptor_57;
    v27 = _Block_copy((v0 + 16));

    [v26 drawTextInRect:v27 configuration:{x, y, width, height}];
    _Block_release(v27);
    result = swift_isEscapingClosureAtFileLocation();
    if (result)
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }
  }

LABEL_23:
  [*(v0 + 72) endPage];
  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1A3F6AE5C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A3F6AF58, 0, 0);
}

void sub_1A3F6AF58()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);

  if (v1 == (v2 ^ 0x7FFFFFFFFFFFFFFFLL))
  {
LABEL_26:
    __break(1u);
    return;
  }

  v3 = *(v0 + 152) + 1;
  if (v3 >= *(v0 + 88))
  {
    goto LABEL_18;
  }

  v4 = *(v0 + 160) + 1;
  while (1)
  {
    *(v0 + 152) = v3;
    *(v0 + 160) = v4;
    if (v4 != 10)
    {
      v11 = *(v0 + 80);
      v12 = *(v0 + 136);
      v13 = *(v0 + 96) / 10.0;
      v14 = [*(v0 + 64) objectAtIndex_];
      *(v0 + 168) = v14;
      v20 = (*(*v11 + 152) + **(*v11 + 152));
      v15 = swift_task_alloc();
      *(v0 + 176) = v15;
      *v15 = v0;
      v15[1] = sub_1A3F6AE5C;
      v18.n128_f64[0] = v13;
      v19.n128_f64[0] = v13;

      v16.n128_f64[0] = v13 * v4 + 10.0;
      v17.n128_f64[0] = v13 * v12 + 10.0;
      v20(v14, v16, v17, v18, v19);
      return;
    }

    v5 = *(v0 + 144);
    if (v5 == *(v0 + 104))
    {
      break;
    }

LABEL_5:
    v4 = 0;
    *(v0 + 128) = v3;
    *(v0 + 136) = v5;
    *(v0 + 144) = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_25;
    }
  }

  v6 = *(v0 + 120);
  if (v6 == *(v0 + 112))
  {
    goto LABEL_18;
  }

  *(v0 + 120) = v6 + 1;
  if (__OFADD__(v6, 1))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6)
  {
    v7 = *(v0 + 72);
    [v7 endPage];
    [v7 beginPage];
    v5 = *(v0 + 104);
  }

  if (v5)
  {
LABEL_4:
    v5 = 0;
    goto LABEL_5;
  }

  while (1)
  {
    v8 = *(v0 + 120);
    if (v8 == *(v0 + 112))
    {
      break;
    }

    *(v0 + 120) = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_24;
    }

    if (v8)
    {
      v9 = *(v0 + 72);
      [v9 endPage];
      [v9 beginPage];
      if (*(v0 + 104))
      {
        goto LABEL_4;
      }
    }
  }

LABEL_18:
  [*(v0 + 72) endPage];
  v10 = *(v0 + 8);

  v10();
}

id sub_1A3F6B23C(void *a1)
{
  v2 = sub_1A524C634();
  [a1 setText_];

  v3 = [objc_opt_self() blackColor];
  [a1 setTextColor_];

  return [a1 setFontSize_];
}

uint64_t sub_1A3F6B2F0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *(v6 + 104) = v5;
  *(v6 + 88) = a4;
  *(v6 + 96) = a5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  *(v6 + 64) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A3F6B31C, 0, 0);
}

uint64_t sub_1A3F6B31C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);
  v10 = *(v0 + 88);
  v11 = *(v0 + 72);
  v3 = [objc_allocWithZone(off_1E7721750) init];
  [v3 setDeliveryMode_];
  [v3 setSynchronous_];
  [v3 setResizeMode_];
  v4 = *(v1 + 32);
  v5 = swift_allocObject();
  *(v5 + 16) = v11;
  *(v5 + 32) = v10;
  *(v0 + 48) = sub_1A3F6D4F0;
  *(v0 + 56) = v5;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1A3DD5B38;
  *(v0 + 40) = &block_descriptor_13_0;
  v6 = _Block_copy((v0 + 16));
  v7 = v3;

  [v4 requestImageForAsset:v2 targetSize:1 contentMode:v7 options:v6 resultHandler:{120.0, 120.0}];
  _Block_release(v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1A3F6B4C0(void *a1, uint64_t a2)
{
  v3 = [a1 fetchedObjectIDs];
  if (!v3)
  {

    return a1;
  }

  v4 = v3;
  sub_1A3C52C70(0, &qword_1EB126AF0);
  v5 = sub_1A524CA34();

  v48 = 0;
  MEMORY[0x1A590EEE0](&v48, 8);
  v6 = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
  sub_1A3F6BAA8(v5);
  v7 = sub_1A524CA14();

  v8 = PFShuffledArrayWithRandomNumberGenerator();

  v9 = sub_1A524CA34();
  v10 = sub_1A3F6BCA4(v9);

  if (!v10)
  {
    v15 = a1;

    return v15;
  }

  if (a2 < 0)
  {
    goto LABEL_41;
  }

  if (v10 >> 62)
  {
LABEL_42:
    v28 = v5;
    v29 = v6;
    v30 = sub_1A524E2B4();
    result = sub_1A524E2B4();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    if (v30 >= a2)
    {
      v31 = a2;
    }

    else
    {
      v31 = v30;
    }

    if (v30 < 0)
    {
      v31 = a2;
    }

    if (a2)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v6 = v29;
    v5 = v28;
    if (sub_1A524E2B4() >= v32)
    {
LABEL_12:
      if ((v10 & 0xC000000000000001) != 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (a2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v11 >= v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  a2 = sub_1A524E2B4();
  if (a2)
  {
    v41 = v6;
    v42 = v5;
    v6 = 0;
    v46 = v5 & 0xFFFFFFFFFFFFFF8;
    v47 = v5 & 0xC000000000000001;
    v44 = a2;
    v45 = v5 + 32;
    v5 = v10 + 56;
    while (1)
    {
      while (1)
      {
        if (v47)
        {
          v16 = MEMORY[0x1A59097F0](v6, v42);
        }

        else
        {
          if (v6 >= *(v46 + 16))
          {
            goto LABEL_40;
          }

          v16 = *(v45 + 8 * v6);
        }

        v17 = v16;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if ((v10 & 0xC000000000000001) == 0)
        {
          break;
        }

        v19 = v16;
        v20 = sub_1A524E314();

        if ((v20 & 1) == 0)
        {

          goto LABEL_21;
        }

LABEL_20:
        sub_1A524E514();
        sub_1A524E564();
        sub_1A524E574();
        sub_1A524E524();
LABEL_21:
        a2 = v44;
        if (v6 == v44)
        {
          goto LABEL_38;
        }
      }

      if (*(v10 + 16))
      {
        v21 = sub_1A524DBE4();
        v22 = -1 << *(v10 + 32);
        v23 = v21 & ~v22;
        if (((*(v5 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
LABEL_34:

          goto LABEL_21;
        }

        v24 = ~v22;
        while (1)
        {
          v25 = *(*(v10 + 48) + 8 * v23);
          v26 = sub_1A524DBF4();

          if (v26)
          {
            goto LABEL_20;
          }

          v23 = (v23 + 1) & v24;
          if (((*(v5 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      if (v6 == a2)
      {
LABEL_38:
        v27 = v48;
        v6 = v41;
        goto LABEL_54;
      }
    }
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_54:

  sub_1A3F6BAA8(v27);

  v33 = [a1 photoLibrary];
  v34 = *MEMORY[0x1E6978D98];
  v35 = [a1 fetchPropertySets];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1A524CF44();
  }

  else
  {
    v37 = 0;
  }

  v38 = sub_1A524CA14();

  if (v37)
  {
    v39 = sub_1A524CF34();
  }

  else
  {
    v39 = 0;
  }

  v40 = [objc_allocWithZone(MEMORY[0x1E69788E0]) initWithOids:v38 photoLibrary:v33 fetchType:v34 fetchPropertySets:v39 identifier:0 registerIfNeeded:0];

  return v40;
}

char *sub_1A3F6BAA8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1A524E2B4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1A3D3E490(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1A59097F0](i, a1);
        sub_1A3C52C70(0, &qword_1EB126AF0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1A3D3E490((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1A3C57128(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1A3C52C70(0, &qword_1EB126AF0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1A3D3E490((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1A3C57128(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3F6BCA4(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1A524E554();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1A3C2F0BC(i, v5);
    sub_1A3C52C70(0, &qword_1EB126AF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1A524E514();
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_1A3F6BDB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1A5240E64();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1A5244FA4();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A3F6BED0, 0, 0);
}

void sub_1A3F6BED0()
{
  if (qword_1EB15E238 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB1EB9C0;
  sub_1A5244BC4();
  swift_allocObject();
  v2 = v1;
  *(v0 + 88) = sub_1A5244BB4();
  if (qword_1EB15E230 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5246F24();
  __swift_project_value_buffer(v3, qword_1EB1EB9C8);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3F6C208(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v3[16] = a1;

  v9 = (*(*a1 + 128) + **(*a1 + 128));
  v5 = swift_task_alloc();
  v3[17] = v5;
  *v5 = v4;
  v5[1] = sub_1A3F6C3F4;
  v6 = v3[7];
  v7 = v3[3];

  return v9(v6, v7);
}

uint64_t sub_1A3F6C3F4()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1A3F6C6A4;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    v3 = sub_1A3F6C520;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A3F6C520()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);

  if (v1 + 1 == v2)
  {
    sub_1A5244BA4();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 112) + 1;
    *(v0 + 112) = v6;
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v9 = *(v0 + 64);
    v10 = *(v0 + 32);
    v11 = *(v0 + 16) + ((*(v0 + 152) + 32) & ~*(v0 + 152)) + v5 * v6;
    type metadata accessor for GenerativeStoryVisualDiagnosticsProvider();
    (*(v8 + 16))(v7, v11, v9);
    v12 = v10;
    v13 = swift_task_alloc();
    *(v0 + 120) = v13;
    *v13 = v0;
    v13[1] = sub_1A3F6C208;
    v14 = *(v0 + 80);
    v15 = *(v0 + 32);

    return sub_1A3F68744(v14, v15);
  }
}

uint64_t sub_1A3F6C6A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3F6C730()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A3F6C780(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v7 = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB126AF0);
  v8 = sub_1A524DBE4();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v17 = *(*(v6 + 48) + 8 * v10);
    *a1 = v17;
    v18 = v17;
    return 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    v15 = a2;
    sub_1A3F6CDB4(v15, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    *a1 = v15;
    return 1;
  }
}

uint64_t sub_1A3F6C9B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A3F6D6F4();
    v2 = sub_1A524E3C4();
    v14 = v2;
    sub_1A524E274();
    if (sub_1A524E304())
    {
      sub_1A3C52C70(0, &qword_1EB126AF0);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1A3F6CB98();
        }

        v2 = v14;
        result = sub_1A524DBE4();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1A524E304());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1A3F6CB98()
{
  v1 = v0;
  v2 = *v0;
  sub_1A3F6D6F4();
  result = sub_1A524E3B4();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1A524DBE4();
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

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void sub_1A3F6CDB4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A3F6CB98();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1A3F6CF24();
      goto LABEL_12;
    }

    sub_1A3F6D068();
  }

  v8 = *v3;
  v9 = sub_1A524DBE4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1A3C52C70(0, &qword_1EB126AF0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A524EB74();
  __break(1u);
}

id sub_1A3F6CF24()
{
  v1 = v0;
  sub_1A3F6D6F4();
  v2 = *v0;
  v3 = sub_1A524E3A4();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

uint64_t sub_1A3F6D068()
{
  v1 = v0;
  v2 = *v0;
  sub_1A3F6D6F4();
  result = sub_1A524E3B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
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
      result = sub_1A524DBE4();
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

        goto LABEL_28;
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

        v1 = v23;
        goto LABEL_26;
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

unint64_t sub_1A3F6D270(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1A524C7C4();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1A524C8E4();
}

unint64_t sub_1A3F6D320()
{
  result = qword_1EB12F100;
  if (!qword_1EB12F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F100);
  }

  return result;
}

uint64_t sub_1A3F6D374(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A3C2DD74(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3F6D3EC()
{
  result = qword_1EB12B000;
  if (!qword_1EB12B000)
  {
    sub_1A5240E64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B000);
  }

  return result;
}

uint64_t sub_1A3F6D444()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A3F6A248(v6, v7, v8, v2, v3, v5, v4);
}

void sub_1A3F6D504(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v7 = sub_1A3C52C70(0, &qword_1EB126AF0);
  v8 = sub_1A3DD77FC();
  v14[1] = MEMORY[0x1A59082D0](v4, v7, v8);
  v9 = v3 - a2;
  if (v3 != a2)
  {
    if (a2 <= v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = a2;
    }

    v11 = v10 - a2;
    v12 = (a1 + 8 * a2);
    while (v11)
    {
      v13 = *v12++;
      sub_1A3F6C780(v14, v13);

      --v11;
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t objectdestroy_4Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3F6D648()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3D60150;

  return sub_1A3F6A248(v6, v7, v8, v2, v3, v5, v4);
}

void sub_1A3F6D6F4()
{
  if (!qword_1EB136770)
  {
    sub_1A3C52C70(255, &qword_1EB126AF0);
    sub_1A3DD77FC();
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136770);
    }
  }
}

void sub_1A3F6D768()
{
  if (!qword_1EB126DB8)
  {
    v0 = sub_1A524CBF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126DB8);
    }
  }
}

uint64_t sub_1A3F6D7CC(uint64_t a1)
{
  v3 = *(sub_1A5240E64() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1A3F6D768();
  v8 = *(v1 + 16);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = v1 + ((v6 + *(*(v7 - 8) + 80) + 8) & ~*(*(v7 - 8) + 80));

  return sub_1A3F69970(a1, v8, v1 + v4, v9, v10, v11);
}

uint64_t sub_1A3F6D8C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C710D4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3F6D938(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C710D4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A3F6DAEC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_1A3F6DBAC()
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_1A3F6DB30();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_1A3F6E014()
{
  sub_1A3F6F6B4(0, &qword_1EB12F110, sub_1A3F6F4A0);
  sub_1A3F6F0EC(sub_1A3F6F468, v0, &v2);
  if (v2 == 1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

id sub_1A3F6E0BC()
{

  v0 = sub_1A3F6E014();

  return v0;
}

uint64_t sub_1A3F6E17C(void *a1, uint64_t a2)
{
  sub_1A3EBECA4(a2, v11);
  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_1A524EA94();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v9 = 0;
  }

  [a1 presentSharingViewWithSender_];
  return swift_unknownObjectRelease();
}

uint64_t sub_1A3F6E2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    swift_unknownObjectRetain();
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  sub_1A3F6E104();

  return sub_1A3C35B00(v4);
}

uint64_t sub_1A3F6E408(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1A3F6E388();
}

uint64_t sub_1A3F6E830()
{
  swift_unknownObjectRetain();

  sub_1A3F6E7B8();
  swift_unknownObjectRelease();
}

uint64_t sub_1A3F6E900()
{
  sub_1A524CF44();

  sub_1A3F6E888();
}

uint64_t sub_1A3F6EA08()
{
  sub_1A3F6F6B4(0, &qword_1EB126600, sub_1A3F6F708);
  sub_1A3F6F0EC(sub_1A3F6F5E0, v0, &v2);
  if (v2 == 1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

id sub_1A3F6EAB4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_1A3F6EB04(int a1, int a2, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v3;

  v4 = sub_1A3F6EA08();

  return v4;
}

uint64_t sub_1A3F6EC20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A3EBECA4(a4, v17);
  v9 = v18;
  if (v18)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v11 = *(v9 - 8);
    v12 = MEMORY[0x1EEE9AC00](v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = sub_1A524EA94();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v15 = 0;
  }

  [a1 performActionForChromeActionMenuItem:a2 withValue:a3 sender:v15 presentationSource:a5];
  return swift_unknownObjectRelease();
}

uint64_t sub_1A3F6ED88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    swift_unknownObjectRetain();
  }

  sub_1A3F6EBA0();
  swift_unknownObjectRelease();

  return sub_1A3C35B00(v6);
}

uint64_t PXStoryActionPerformerProxy.__allocating_init(performer:)()
{
  swift_allocObject();
  v0 = sub_1A3F6F808();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PXStoryActionPerformerProxy.init(performer:)()
{
  v0 = sub_1A3F6F808();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1A3F6EF8C()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A3F6EFDC(uint64_t *a1))(void **a1, char a2)
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
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3F6F06C;
}

void sub_1A3F6F06C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1A3F6F0EC@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v7 = sub_1A5246F24();
  v8 = MEMORY[0x1EEE9AC00](v7);
  if (!(*(*v3 + 320))(v8))
  {
    sub_1A5246EF4();
  }

  a1();
  swift_unknownObjectRelease();
  v9 = *(*(a2 - 8) + 56);

  return v9(a3, 0, 1, a2);
}

id sub_1A3F6F468@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 dismissStoryViewControllerInteractively];
  *a2 = result;
  return result;
}

unint64_t sub_1A3F6F4A0()
{
  result = qword_1EB12F118;
  if (!qword_1EB12F118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB12F118);
  }

  return result;
}

void sub_1A3F6F568(void *a1)
{
  v2 = sub_1A524CF34();
  [a1 removeAssetsFromCuration_];
}

void sub_1A3F6F5E0(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v9[4] = v5;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1A3F6EAB4;
  v9[3] = &block_descriptor_58;
  v7 = _Block_copy(v9);

  v8 = [a1 musicFeedbackContextMenuDelegateWithAudioAssetProvidingBlock_];
  _Block_release(v7);
  *a2 = v8;
}

void sub_1A3F6F6B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1A3F6F708()
{
  result = qword_1EB126608;
  if (!qword_1EB126608)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB126608);
  }

  return result;
}

uint64_t PXStoryActionPerformerProxy.deinit()
{
  MEMORY[0x1A590F020](v0 + 16);

  return v0;
}

uint64_t PXStoryActionPerformerProxy.__deallocating_deinit()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1A3F6F808()
{
  swift_unknownObjectWeakInit();
  v4 = sub_1A524EEF4();
  v5 = v1;
  MEMORY[0x1A5907B60](91, 0xE100000000000000);
  v2 = sub_1A524EE24();
  MEMORY[0x1A5907B60](v2);

  MEMORY[0x1A5907B60](93, 0xE100000000000000);
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v0;
}

id sub_1A3F6FD58()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

void InvitationsItemListManager.itemList.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3F72094(&unk_1EB129CB0, type metadata accessor for InvitationsItemListManager);

  sub_1A5245714();
}

void sub_1A3F6FE54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3F72094(&unk_1EB129CB0, type metadata accessor for InvitationsItemListManager);

  sub_1A5245714();
}

void sub_1A3F6FF2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3F72094(&unk_1EB129CB0, type metadata accessor for InvitationsItemListManager);

  sub_1A5245724();
}

uint64_t type metadata accessor for InvitationsItemListManager()
{
  result = qword_1EB181F78;
  if (!qword_1EB181F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3F70100()
{
  v4 = sub_1A5246F24();
  v0 = MEMORY[0x1EEE9AC00](v4);
  v3[2] = v3 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v0);
  v3[1] = v3 - v2;
  sub_1A5245EC4();
}

uint64_t InvitationsItemListManager.changeDetailsRepository.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore26InvitationsItemListManager_changeDetailsRepository;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A3F70B9C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*(*a1 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_type) != 5)
  {
    v15 = sub_1A45350E8();
    (*(v5 + 16))(v7, v15, v4);
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD00000000000003FLL, 0x80000001A53BF100);
    v16 = [v8 description];
    v17 = sub_1A524C674();
    v19 = v18;

    MEMORY[0x1A5907B60](v17, v19);

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v9 = sub_1A5241074();
  v10 = sub_1A5241074();
  IsUnread = PXSharedAlbumsActivityDateIsUnread(v9, v10);

  sub_1A3F639E8(*&v8[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_activityEntry], IsUnread, a2);
  v12 = type metadata accessor for InvitationsItem(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a2, 0, 1, v12);
}

void *sub_1A3F70F14(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v31 = a1;
  sub_1A3F724C4(0, &unk_1EB12A618, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v30 = type metadata accessor for InvitationsItem(0);
  v25 = *(v30 - 8);
  v8 = MEMORY[0x1EEE9AC00](v30);
  v29 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v22 - v10;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v12 = 0;
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v28 = a3 & 0xC000000000000001;
    v13 = (v25 + 48);
    v14 = MEMORY[0x1E69E7CC0];
    v23 = a3;
    v26 = i;
    while (1)
    {
      if (v28)
      {
        v15 = MEMORY[0x1A59097F0](v12, a3);
      }

      else
      {
        if (v12 >= *(v27 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a3 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v32 = v15;
      v31(&v32);
      if (v3)
      {

        return v14;
      }

      if ((*v13)(v7, 1, v30) == 1)
      {
        sub_1A3F72524(v7);
      }

      else
      {
        v18 = v24;
        sub_1A3F72460(v7, v24);
        sub_1A3F72460(v18, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1A3F71540(0, v14[2] + 1, 1, v14);
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          v14 = sub_1A3F71540(v19 > 1, v20 + 1, 1, v14);
        }

        v14[2] = v20 + 1;
        sub_1A3F72460(v29, v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20);
        a3 = v23;
      }

      ++v12;
      if (v17 == v26)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t InvitationsItemListManager.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore26InvitationsItemListManager__itemList;
  v2 = sub_1A3F71FA0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1A3C33378(*(v0 + OBJC_IVAR____TtC12PhotosUICore26InvitationsItemListManager_initialSharedAlbumsLoadCallback));

  return v0;
}

uint64_t InvitationsItemListManager.__deallocating_deinit()
{
  InvitationsItemListManager.deinit();

  return swift_deallocClassInstance();
}

id sub_1A3F71388@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore26InvitationsItemListManager_observable);
  *a1 = v2;
  return v2;
}

void sub_1A3F713A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3F72094(&unk_1EB129CB0, type metadata accessor for InvitationsItemListManager);

  sub_1A5245714();
}

void sub_1A3F714BC()
{
  sub_1A3F72094(&unk_1EB129CB0, type metadata accessor for InvitationsItemListManager);

  sub_1A5245C54();
}

size_t sub_1A3F71540(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A3F724C4(0, &unk_1EB12F260, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for InvitationsItem(0) - 8);
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
  v15 = *(type metadata accessor for InvitationsItem(0) - 8);
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

uint64_t sub_1A3F71728(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1A3F71540(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for InvitationsItem(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A3F71FA0()
{
  result = qword_1EB128F18;
  if (!qword_1EB128F18)
  {
    type metadata accessor for InvitationsItemListManager();
    type metadata accessor for InvitationsItemList();
    sub_1A3F72094(&unk_1EB129CB0, type metadata accessor for InvitationsItemListManager);
    sub_1A5245764();
  }

  return result;
}

uint64_t sub_1A3F72094(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3F721BC()
{
  result = sub_1A3F71FA0();
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

void sub_1A3F722BC(uint64_t a1, char a2)
{
  if ((a2 & 4) != 0)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1A3F70100();
    }
  }
}

uint64_t sub_1A3F72324()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A3F70100();
  }

  return result;
}

void sub_1A3F723A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3F72094(&unk_1EB129CB0, type metadata accessor for InvitationsItemListManager);

  sub_1A5245724();
}

uint64_t sub_1A3F72460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvitationsItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A3F724C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for InvitationsItem(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A3F72524(uint64_t a1)
{
  sub_1A3F724C4(0, &unk_1EB12A618, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id PXStoryConfiguration.init(previewFor:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAssetCollection_];
  sub_1A3F72610();

  swift_unknownObjectRelease();
  return v1;
}

{
  v1 = *a1;
  if (*(a1 + 8) > 1u)
  {
    if (*(a1 + 8) == 2)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (!v4)
      {
LABEL_20:
        *&v25 = 0;
        *(&v25 + 1) = 0xE000000000000000;
        sub_1A524E404();
        MEMORY[0x1A5907B60](0xD000000000000023, 0x80000001A53BF180);
        *&v21 = v1;
        sub_1A3C5D0E8(0, &qword_1EB126B98);
        sub_1A524E624();
LABEL_23:
        result = sub_1A524E6E4();
        __break(1u);
        return result;
      }

      v5 = v4;
      swift_unknownObjectRetain();
      v6 = [v5 photoLibrary];
      if (v6)
      {
        v7 = v6;
        PHPhotoLibrary.fetcher.getter();

        v29 = 3;
        v30 = 0;
        v8 = sub_1A3C6E9EC();
        v9 = sub_1A3C6E9EC();
        PhotoKitFetcher.Options.init(fetchLimit:libraryFilter:referencePersons:curationContext:assetFilterPredicate:)(v8, v9, 0, 1, 0, &v25);
        v21 = v25;
        v22 = v26;
        v23 = v27;
        v24 = v28;
        v10 = PhotoKitFetcher.fetch(_:for:options:)(&v29, v5, &v21);

        v11 = v24;

        if (v10)
        {
          goto LABEL_15;
        }

        goto LABEL_19;
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      swift_unknownObjectRelease();
      goto LABEL_20;
    }

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      swift_unknownObjectRetain();
      v15 = [v14 photoLibrary];
      if (!v15)
      {
        goto LABEL_18;
      }

      v16 = v15;
      PHPhotoLibrary.fetcher.getter();

      v29 = 3;
      v30 = 0;
      v17 = sub_1A3C6E9EC();
      v18 = sub_1A3C6E9EC();
      PhotoKitFetcher.Options.init(fetchLimit:libraryFilter:referencePersons:curationContext:assetFilterPredicate:)(v17, v18, 0, 1, 0, &v25);
      v21 = v25;
      v22 = v26;
      v23 = v27;
      v24 = v28;
      v10 = PhotoKitFetcher.fetch(_:for:options:)(&v29, v14, &v21);

      v19 = v24;

      if (v10)
      {
LABEL_15:
        v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAssets_];
        v20 = [v10 firstObject];
        swift_unknownObjectRelease();

        sub_1A3F72610();
        swift_unknownObjectRelease_n();

        return v3;
      }

      swift_unknownObjectRelease();
    }

    *&v25 = 0;
    *(&v25 + 1) = 0xE000000000000000;
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD000000000000023, 0x80000001A53BF180);
    *&v21 = v1;
    sub_1A3C5D0E8(0, &unk_1EB1269E0);
    sub_1A524E624();
    goto LABEL_23;
  }

  if (!*(a1 + 8))
  {
    v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    swift_unknownObjectRetain();
    v3 = [v2 initWithAssetCollection_];
    sub_1A3F72610();

    swift_unknownObjectRelease_n();
    return v3;
  }

  swift_getObjectType();

  return sub_1A3F733A0(v1);
}

void sub_1A3F72610()
{
  sub_1A3C7E8B0();
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v0 setCurationKind_];
  v1 = 1;
  [v0 setDisableNUp_];
  [v0 setIsLetterboxingAllowed_];
  sub_1A3F73574();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A52F8E10;
  v3 = [v6 collectionPreviewTransition];
  if (v3)
  {
    if (v3 != 1)
    {
LABEL_11:
      sub_1A524E6E4();
      __break(1u);
      return;
    }

    v1 = 2;
  }

  *(v2 + 32) = v1;
  PXStoryConfiguration.allowedTransitions.setter(v2);
  [v0 setIsAllowedToPlayAnyMusicOrSound_];
  [v0 setAllowedInlineTitles_];
  if ([v6 enableKenBurnsInCollectionPreview])
  {
    v4 = 5;
  }

  else
  {
    v4 = 7;
  }

  [v0 setDisabledClipMotionStyles_];
  v5 = [v6 collectionPreviewKenBurnsScaleDirection];
  if (v5 >= 3)
  {
    goto LABEL_11;
  }

  [v0 setForcedKenBurnsScaleDirection_];
  [v0 setOptions_];
}

id PXStoryConfiguration.init(previewFor:)(void *a1)
{
  swift_getObjectType();

  return sub_1A3F733A0(a1);
}

void PXStoryConfiguration.init<A>(_:titleModel:environmentValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = a4;
  sub_1A5245BA4();
}

id sub_1A3F733A0(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAssets_];
  v3 = [a1 firstObject];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1A3F72610();

  return v2;
}

void sub_1A3F73574()
{
  if (!qword_1EB1261C8)
  {
    type metadata accessor for PXStoryTransitionKind();
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1261C8);
    }
  }
}

void type metadata accessor for PXStoryTransitionKind()
{
  if (!qword_1EB126940)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB126940);
    }
  }
}

id sub_1A3F7361C()
{
  if (*v0)
  {
    v1 = [*v0 photosDetailsPeopleView];

    return v1;
  }

  else
  {
    v3 = objc_allocWithZone(MEMORY[0x1E69DD250]);

    return [v3 init];
  }
}

uint64_t sub_1A3F73684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3F74570();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A3F736E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3F74570();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A3F7374C()
{
  sub_1A3F74570();
  sub_1A52496F4();
  __break(1u);
}

uint64_t sub_1A3F73774@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F742D0(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1A3E755F0(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A52486A4();
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

uint64_t type metadata accessor for PhotosDetailsPeopleWidgetView()
{
  result = qword_1EB19C590;
  if (!qword_1EB19C590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3F739CC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1A3F742D0(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v2 = (a1 + *(type metadata accessor for PhotosDetailsPeopleWidgetView() + 20));
  type metadata accessor for PhotosDetailsPeopleWidgetViewModel();
  sub_1A3F73F80(&qword_1EB12F2D8, type metadata accessor for PhotosDetailsPeopleWidgetViewModel);
  result = sub_1A5248494();
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t sub_1A3F73AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A52486A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhotosDetailsPeopleWidgetView();
  v9 = *(a1 + *(v8 + 20) + 8);
  v10 = OBJC_IVAR___PXPhotosDetailsPeopleWidgetViewModel_peopleTileViewControllerProvider;
  result = swift_beginAccess();
  v12 = *(v9 + v10);
  if (v12)
  {
    swift_unknownObjectRetain();
    sub_1A3F73774(v7);
    sub_1A4394B64(v7, v8, &off_1EE6D74B0);
    v13 = *(v5 + 8);
    v13(v7, v4);
    sub_1A3F73774(v7);
    v14 = sub_1A4394B64(v7, v8, &off_1EE6D74B0);
    (v13)(v7, v4, v14);
    sub_1A524BC74();
    result = sub_1A52481F4();
    v15 = v20[4];
    v16 = v21;
    v17 = v22;
    v18 = v23;
    v19 = v24;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0uLL;
    v12 = 1;
  }

  *a2 = v12;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  *(a2 + 32) = v18;
  *(a2 + 40) = v19;
  return result;
}

void sub_1A3F73CB0()
{
  if (!qword_1EB12F2E0)
  {
    sub_1A3F73D18();
    sub_1A3E42C88();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F2E0);
    }
  }
}

void sub_1A3F73D18()
{
  if (!qword_1EB12F2E8)
  {
    sub_1A3F742D0(255, &qword_1EB12F2F0, sub_1A3F73DAC, MEMORY[0x1E69E6720]);
    sub_1A3F73E04();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F2E8);
    }
  }
}

void sub_1A3F73DAC()
{
  if (!qword_1EB12F2F8)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F2F8);
    }
  }
}

unint64_t sub_1A3F73E04()
{
  result = qword_1EB12F300;
  if (!qword_1EB12F300)
  {
    sub_1A3F742D0(255, &qword_1EB12F2F0, sub_1A3F73DAC, MEMORY[0x1E69E6720]);
    sub_1A3F73EAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F300);
  }

  return result;
}

unint64_t sub_1A3F73EAC()
{
  result = qword_1EB12F308;
  if (!qword_1EB12F308)
  {
    sub_1A3F73DAC();
    sub_1A3F73F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F308);
  }

  return result;
}

unint64_t sub_1A3F73F2C()
{
  result = qword_1EB12F310;
  if (!qword_1EB12F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F310);
  }

  return result;
}

uint64_t sub_1A3F73F80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3F73FCC@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_1A3F742D0(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v4 = (a2 + *(a1 + 20));
  type metadata accessor for PhotosDetailsPeopleWidgetViewModel();
  sub_1A3F73F80(&qword_1EB12F2D8, type metadata accessor for PhotosDetailsPeopleWidgetViewModel);
  result = sub_1A5248494();
  *v4 = result;
  v4[1] = v6;
  return result;
}

uint64_t sub_1A3F740B0(uint64_t a1)
{
  result = sub_1A3F73F80(&qword_1EB12F360, type metadata accessor for PhotosDetailsPeopleWidgetView);
  *(a1 + 8) = result;
  return result;
}

__n128 sub_1A3F74140@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249314();
  v23 = 1;
  sub_1A3F73AB4(v1, v21);
  v20 = v21[2];
  v4 = v22;
  sub_1A3F73CB0();
  v6 = v5;
  v7 = sub_1A5248A14();
  v8 = sub_1A52494A4();
  v18 = v21[1];
  v19 = v21[0];
  v9 = v23;
  v10 = (a1 + *(v6 + 36));
  (*(*(v8 - 8) + 104))(&v10[*(v7 + 20)], *MEMORY[0x1E697F468], v8);
  __asm { FMOV            V0.2D, #2.0 }

  *v10 = _Q0;
  sub_1A3E42C88();
  *&v10[*(v16 + 36)] = 256;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 40) = v18;
  *(a1 + 24) = v19;
  result = v20;
  *(a1 + 56) = v20;
  *(a1 + 72) = v4;
  return result;
}

uint64_t sub_1A3F74250(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void sub_1A3F742D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3F74348()
{
  sub_1A3F742D0(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A3F743FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A3F743FC()
{
  if (!qword_1EB12F318)
  {
    type metadata accessor for PhotosDetailsPeopleWidgetViewModel();
    sub_1A3F73F80(&qword_1EB12F2D8, type metadata accessor for PhotosDetailsPeopleWidgetViewModel);
    v0 = sub_1A52484C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F318);
    }
  }
}

unint64_t sub_1A3F74490()
{
  result = qword_1EB12F328;
  if (!qword_1EB12F328)
  {
    sub_1A3F73CB0();
    sub_1A3F73F80(&unk_1EB12F330, sub_1A3F73D18);
    sub_1A3F73F80(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F328);
  }

  return result;
}

unint64_t sub_1A3F74570()
{
  result = qword_1EB12F340;
  if (!qword_1EB12F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F340);
  }

  return result;
}

char *sub_1A3F745C4(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___PXPhotosDetailsPeopleWidgetViewModel_peopleTileViewControllerProvider] = 0;
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = sub_1A4467460(v8, v9, v10);
  if (sub_1A44672B8())
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(ObjectType, v13);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return v11;
}

id sub_1A3F7469C(void *a1)
{
  result = [a1 people];
  if (result)
  {
    v2 = result;
    v3 = [result count];

    return (v3 > 0);
  }

  return result;
}

uint64_t type metadata accessor for PhotosDetailsPeopleWidgetViewModel()
{
  result = qword_1EB172120;
  if (!qword_1EB172120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1A3F7481C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___PXPhotosDetailsPeopleWidget_peopleTileViewControllerProvider] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1A3F748EC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosDetailsPeopleWidgetView();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PhotosDetailsPeopleWidgetViewModel();
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x108);
  v9 = a1;
  v10 = v8();
  v11 = (*((*v7 & *v2) + 0xA8))();
  v12 = sub_1A3F745C4(v9, v10, v11);
  v13 = *(v2 + OBJC_IVAR___PXPhotosDetailsPeopleWidget_peopleTileViewControllerProvider);
  v14 = OBJC_IVAR___PXPhotosDetailsPeopleWidgetViewModel_peopleTileViewControllerProvider;
  swift_beginAccess();
  *&v12[v14] = v13;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v15 = *((*v7 & *v2) + 0xE0);
  v16 = v12;
  v15(v12);
  sub_1A3F74ACC();
  v17 = v16;
  sub_1A3F739CC(v6);
  v18 = PXSecureLockscreenSwiftUIHostingController.__allocating_init(rootView:)(v6);

  return v18;
}

void sub_1A3F74ACC()
{
  if (!qword_1EB12F358)
  {
    type metadata accessor for PhotosDetailsPeopleWidgetView();
    sub_1A3F74B30();
    v0 = type metadata accessor for PXSecureLockscreenSwiftUIHostingController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F358);
    }
  }
}

unint64_t sub_1A3F74B30()
{
  result = qword_1EB12F360;
  if (!qword_1EB12F360)
  {
    type metadata accessor for PhotosDetailsPeopleWidgetView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F360);
  }

  return result;
}

double sub_1A3F74B88()
{
  v1 = sub_1A52486A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosDetailsPeopleWidgetView();
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))();
  v7 = [v6 contentSizeCategory];

  sub_1A412028C(v7, v4);
  v8 = sub_1A4394B64(v4, v5, &off_1EE6D74B0);
  (*(v2 + 8))(v4, v1);
  return v8;
}

id sub_1A3F74EAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsPeopleWidget();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A3F74EF0@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = sub_1A5241FC4();
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1E69C27E0];
  v4 = MEMORY[0x1E69E6720];
  sub_1A3C6B4E8(0, &unk_1EB129020, MEMORY[0x1E69C27E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v41 - v6;
  v51 = MEMORY[0x1E69C27A0];
  sub_1A3C6B4E8(0, &unk_1EB129030, MEMORY[0x1E69C27A0], v4);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = &v41 - v8;
  v9 = sub_1A5241F84();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5244084();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for GenerativeStoryEntryCardCommonView(0);
  MEMORY[0x1EEE9AC00](v41);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F7558C();
  v19 = *(v18 - 8);
  v44 = v18;
  v45 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F7565C();
  v23 = *(v22 - 8);
  v47 = v22;
  v48 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for GenerativeStoryInlineCellView();
  sub_1A44883B4(*(v1 + v26[5]), *(v1 + v26[6]), *(v1 + v26[7]), v17);
  sub_1A3F75AC0(v15);
  sub_1A5243F44();
  (*(v13 + 8))(v15, v12);
  v27 = sub_1A3C6B8D0(&qword_1EB125350, type metadata accessor for GenerativeStoryEntryCardCommonView);
  v28 = sub_1A3D6F4A4();
  v29 = MEMORY[0x1E6981EF8];
  v30 = v41;
  sub_1A524A504();
  (*(v42 + 8))(v11, v43);
  sub_1A3F75D3C(v17, type metadata accessor for GenerativeStoryEntryCardCommonView);
  v31 = sub_1A5243A44();
  v32 = v46;
  (*(*(v31 - 8) + 56))(v46, 1, 1, v31);
  v33 = sub_1A5243B34();
  v34 = v49;
  (*(*(v33 - 8) + 56))(v49, 1, 1, v33);
  v35 = v50;
  sub_1A5241FB4();
  v58[0] = v30;
  v58[1] = v29;
  v58[2] = v27;
  v59 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v44;
  sub_1A524A6A4();
  (*(v53 + 8))(v35, v54);
  sub_1A3F75CCC(v34, &unk_1EB129020, v52);
  sub_1A3F75CCC(v32, &unk_1EB129030, v51);
  v38 = (*(v45 + 8))(v21, v37);
  PXDisplayCollectionDetailedCountsMake(v38);
  v59 = &type metadata for GenerativeStoryTransitionIdentifier;
  v56 = v37;
  v57 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v39 = v47;
  sub_1A524A534();
  (*(v48 + 8))(v25, v39);
  return sub_1A3F75D3C(v58, sub_1A3C35B84);
}

void sub_1A3F7558C()
{
  if (!qword_1EB12F3D0)
  {
    type metadata accessor for GenerativeStoryEntryCardCommonView(255);
    sub_1A3C6B8D0(&qword_1EB125350, type metadata accessor for GenerativeStoryEntryCardCommonView);
    sub_1A3D6F4A4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12F3D0);
    }
  }
}

void sub_1A3F7565C()
{
  if (!qword_1EB12F3D8)
  {
    sub_1A3F7558C();
    type metadata accessor for GenerativeStoryEntryCardCommonView(255);
    sub_1A3C6B8D0(&qword_1EB125350, type metadata accessor for GenerativeStoryEntryCardCommonView);
    sub_1A3D6F4A4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12F3D8);
    }
  }
}

void sub_1A3F75760(uint64_t a1, char a2)
{
  type metadata accessor for PlaceholderUIItem();
  sub_1A3C38BD4();
  sub_1A4406104();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for GenerativeStoryInlineCellView();
  sub_1A3C6B8D0(&qword_1EB125570, type metadata accessor for GenerativeStoryInlineCellView);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F758A4()
{
  v0 = sub_1A5244854();
  MEMORY[0x1EEE9AC00](v0);
  objc_opt_self();
  sub_1A4036574();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3F75AC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C6B4E8(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1A3F75EB4(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5244084();
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

uint64_t sub_1A3F75CCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C6B4E8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3F75D3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1A3F75D9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = *(v2 + 16);
  if (*(v2 + 24) == 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 24);
  }

  *a2 = swift_getKeyPath();
  sub_1A3C6B4E8(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for GenerativeStoryInlineCellView();
  *(a2 + v6[5]) = v8;
  *(a2 + v6[6]) = a1;
  *(a2 + v6[7]) = v5;

  return v8;
}

uint64_t sub_1A3F75EB4(uint64_t a1, uint64_t a2)
{
  sub_1A3C6B4E8(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3F75F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a4;
  v28 = a5;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadeSectionedFeedView();
  v14 = (a6 + v13[13]);
  v29 = 0;
  sub_1A524B694();
  v15 = v31;
  *v14 = v30;
  v14[1] = v15;
  v16 = a6 + v13[14];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  v17 = a6 + v13[15];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = a6 + v13[16];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = *(v10 + 16);
  v26 = a1;
  v19(a6, a1, a3);
  *(a6 + v13[11]) = a2;
  v19(v12, a1, a3);
  v20 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v24 = v27;
  v23 = v28;
  *(v22 + 2) = a3;
  *(v22 + 3) = v24;
  *(v22 + 4) = v23;
  (*(v10 + 32))(&v22[v20], v12, a3);
  *&v22[v21] = a2;
  type metadata accessor for LemonadeSectionedFeedViewModel();

  sub_1A5247C74();
  return (*(v10 + 8))(v26, a3);
}

void sub_1A3F761C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeSectionedFeedViewModel();
  (*(v5 + 16))(v7, a1, a3);

  sub_1A4463BC0(v7);
}

uint64_t sub_1A3F762D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5248BD4();
  *a1 = result;
  return result;
}

uint64_t sub_1A3F7632C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A3FD378C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1A3F763F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v102 = a2;
  v114 = *(a1 - 8);
  v110 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v101 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = v3;
  v100 = v3;
  swift_getAssociatedTypeWitness();
  sub_1A524DF24();
  sub_1A5248804();
  swift_getTupleTypeMetadata2();
  v109 = sub_1A524BE24();
  v7 = *(v6 + 32);
  v113 = v5;
  v8 = type metadata accessor for LemonadeSectionedStackedFeed();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1A3D5F9DC();
  v129 = v8;
  v130 = MEMORY[0x1E69E6158];
  v11 = MEMORY[0x1E69E6158];
  v131 = WitnessTable;
  v132 = v10;
  swift_getOpaqueTypeMetadata2();
  v112 = v7;
  type metadata accessor for LemonadeSectionedTabbedFeed();
  sub_1A5249754();
  v12 = sub_1A524B514();
  v129 = v8;
  v130 = v11;
  v131 = WitnessTable;
  v132 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = swift_getWitnessTable();
  v127 = OpaqueTypeConformance2;
  v128 = v14;
  v107 = MEMORY[0x1E697F968];
  v126 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v129 = v12;
  v130 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v129 = v12;
  v130 = v15;
  v17 = swift_getOpaqueTypeConformance2();
  v129 = OpaqueTypeMetadata2;
  v130 = v17;
  swift_getOpaqueTypeMetadata2();
  v129 = OpaqueTypeMetadata2;
  v130 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = sub_1A5242CE4();
  v19 = swift_getWitnessTable();
  v129 = v18;
  v130 = v19;
  v106 = swift_getOpaqueTypeMetadata2();
  v108 = v4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v129 = v18;
  v130 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = v106;
  v129 = v106;
  v130 = AssociatedTypeWitness;
  v131 = v21;
  v132 = AssociatedConformanceWitness;
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  v24 = swift_getWitnessTable();
  v129 = v23;
  v130 = AssociatedTypeWitness;
  v131 = v21;
  v132 = AssociatedConformanceWitness;
  v25 = swift_getOpaqueTypeConformance2();
  v124 = v24;
  v125 = v25;
  v105 = swift_getWitnessTable();
  v26 = sub_1A524B894();
  v106 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v85 - v27;
  v29 = swift_getWitnessTable();
  v129 = v26;
  v130 = v29;
  v30 = v26;
  v103 = v26;
  v31 = v29;
  v104 = v29;
  v88 = swift_getOpaqueTypeMetadata2();
  v91 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v85 - v32;
  v33 = sub_1A5248804();
  v98 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v109 = &v85 - v34;
  v129 = v30;
  v130 = v31;
  v87 = swift_getOpaqueTypeConformance2();
  v122 = v87;
  v123 = MEMORY[0x1E69805D0];
  v35 = swift_getWitnessTable();
  v129 = v33;
  v36 = v33;
  v89 = v33;
  v37 = MEMORY[0x1E69E6158];
  v130 = MEMORY[0x1E69E6158];
  v131 = v35;
  v132 = MEMORY[0x1E69E6180];
  v38 = v35;
  v90 = v35;
  v39 = MEMORY[0x1E69E6180];
  v40 = swift_getOpaqueTypeMetadata2();
  v96 = v40;
  v99 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v107 = &v85 - v41;
  v129 = v36;
  v130 = v37;
  v131 = v38;
  v132 = v39;
  v95 = swift_getOpaqueTypeConformance2();
  v129 = v40;
  v130 = MEMORY[0x1E69E6370];
  v131 = v95;
  v132 = MEMORY[0x1E69E6388];
  v97 = swift_getOpaqueTypeMetadata2();
  v94 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v92 = &v85 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v93 = &v85 - v44;
  v115 = v108;
  v116 = v113;
  v45 = v111;
  v117 = v112;
  v118 = v111;
  sub_1A5249574();
  sub_1A524B884();
  v46 = v100;
  v47 = (v45 + *(v100 + 52));
  v48 = *v47;
  v49 = v47[1];
  v119 = v48;
  v120 = v49;
  v50 = MEMORY[0x1E69E7DE0];
  sub_1A3F8C838(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v119 = v129;
  v120 = v130;
  v121 = v131;
  sub_1A524BD24();
  sub_1A3F8C838(0, &qword_1EB12F3E0, v50, MEMORY[0x1E6981948]);
  sub_1A524B964();

  v51 = v86;
  v52 = v103;
  sub_1A524A684();

  (*(v106 + 8))(v28, v52);
  v53 = v114;
  v103 = *(v114 + 16);
  v106 = v114 + 16;
  v54 = v101;
  v103(v101, v111, v46);
  v105 = *(v53 + 80);
  v55 = (v105 + 40) & ~v105;
  v56 = swift_allocObject();
  v57 = v108;
  v58 = v113;
  *(v56 + 2) = v108;
  *(v56 + 3) = v58;
  *(v56 + 4) = v112;
  v59 = *(v53 + 32);
  v114 = v53 + 32;
  v104 = v59;
  v60 = v46;
  v59(&v56[v55], v54, v46);
  v61 = v88;
  sub_1A524B134();

  (*(v91 + 8))(v51, v61);
  v62 = v60;
  v91 = *(v60 + 48);
  v63 = v57;
  v64 = v58;
  type metadata accessor for LemonadeSectionedFeedViewModel();
  v88 = sub_1A5247CB4();
  v65 = v111;
  v66 = sub_1A5247C84();
  v67 = (*(*v129 + 232))(v66);
  v69 = v68;

  v129 = v67;
  v130 = v69;
  v103(v54, v65, v62);
  v70 = swift_allocObject();
  *(v70 + 2) = v63;
  *(v70 + 3) = v64;
  *(v70 + 4) = v112;
  v104(&v70[v55], v54, v62);
  v71 = v89;
  v72 = v109;
  sub_1A524B144();

  (*(v98 + 8))(v72, v71);
  v73 = sub_1A5247C84();
  LOBYTE(v64) = (*(*v129 + 336))(v73);

  LOBYTE(v129) = v64 & 1;
  v103(v54, v65, v62);
  v74 = swift_allocObject();
  v75 = v113;
  *(v74 + 2) = v63;
  *(v74 + 3) = v75;
  *(v74 + 4) = v112;
  v104(&v74[v55], v54, v62);
  v76 = v92;
  v77 = v96;
  v78 = v107;
  sub_1A524B144();

  (*(v99 + 8))(v78, v77);
  v79 = v94;
  v80 = *(v94 + 16);
  v81 = v93;
  v82 = v97;
  v80(v93, v76, v97);
  v83 = *(v79 + 8);
  v83(v76, v82);
  v80(v102, v81, v82);
  return (v83)(v81, v82);
}

uint64_t sub_1A3F77444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v132 = a1;
  v131 = a5;
  v123 = sub_1A5249284();
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v121 = v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for LemonadeSectionedFeedView();
  v119 = *(v135 - 8);
  v117 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v118 = v100 - v9;
  v136 = a2;
  v137 = a3;
  v10 = type metadata accessor for LemonadeSectionedStackedFeed();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1A3D5F9DC();
  v13 = MEMORY[0x1E69E6158];
  v144 = v10;
  v145 = MEMORY[0x1E69E6158];
  v146 = WitnessTable;
  v147 = v12;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for LemonadeSectionedTabbedFeed();
  sub_1A5249754();
  v14 = sub_1A524B514();
  v144 = v10;
  v145 = v13;
  v146 = WitnessTable;
  v147 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = swift_getWitnessTable();
  v143[8] = OpaqueTypeConformance2;
  v143[9] = v16;
  v143[7] = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v144 = v14;
  v145 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v144 = v14;
  v145 = v17;
  v19 = swift_getOpaqueTypeConformance2();
  v144 = OpaqueTypeMetadata2;
  v145 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v144 = OpaqueTypeMetadata2;
  v145 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v114 = v20;
  v111 = v21;
  v22 = sub_1A5242CE4();
  v115 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v113 = v100 - v23;
  v24 = swift_getWitnessTable();
  v144 = v22;
  v145 = v24;
  v134 = MEMORY[0x1E697D448];
  v25 = swift_getOpaqueTypeMetadata2();
  v112 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v110 = v100 - v26;
  v120 = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v116 = v22;
  v144 = v22;
  v145 = v24;
  v109 = v24;
  v28 = swift_getOpaqueTypeConformance2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v130 = v25;
  v144 = v25;
  v145 = AssociatedTypeWitness;
  v134 = AssociatedTypeWitness;
  v129 = v28;
  v146 = v28;
  v147 = AssociatedConformanceWitness;
  v133 = AssociatedConformanceWitness;
  v30 = swift_getOpaqueTypeMetadata2();
  v108 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v107 = v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v106 = v100 - v33;
  v34 = v136;
  v100[1] = swift_getAssociatedTypeWitness();
  v35 = sub_1A524DF24();
  v36 = sub_1A5248804();
  swift_getTupleTypeMetadata2();
  v37 = sub_1A524BE24();
  v105 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v104 = v100 - v38;
  v39 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = v100 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v35;
  v100[0] = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v45 = v100 - v44;
  v103 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v48 = v100 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v102 = v100 - v50;
  v127 = v51;
  v128 = v30;
  v126 = sub_1A5249754();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = v100 - v52;
  type metadata accessor for LemonadeSectionedFeedViewModel();
  sub_1A5247CB4();
  v53 = sub_1A5247C84();
  LOBYTE(v30) = (*(*v144 + 280))(v53);

  if (v30)
  {
    sub_1A5247C84();
    v54 = v136;
    (*(v39 + 16))(v42, v144 + *(*v144 + 96), v136);

    v55 = v132;
    (*(v137 + 80))(*(v132 + *(v135 + 44)), v54, v137);
    (*(v39 + 8))(v42, v54);
    sub_1A524BC74();
    v143[4] = swift_getAssociatedConformanceWitness();
    v98 = v101;
    v99 = swift_getWitnessTable();
    sub_1A524AFE4();
    (*(v100[0] + 8))(v45, v98);
    v143[2] = v99;
    v143[3] = MEMORY[0x1E697EBF8];
    v56 = swift_getWitnessTable();
    v57 = v103;
    v58 = v55;
    v59 = *(v103 + 16);
    v60 = v102;
    v59(v102, v48, v36);
    v61 = *(v57 + 8);
    v61(v48, v36);
    v62 = (v58 + *(v135 + 52));
    v63 = *v62;
    v64 = v62[1];
    v144 = v63;
    v145 = v64;
    sub_1A3F8C838(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    v65 = v143[0];
    v59(v48, v60, v36);
    v141 = v65;
    v142 = 0;
    v143[0] = v48;
    v143[1] = &v141;
    v140[0] = v36;
    v140[1] = MEMORY[0x1E6981840];
    v138 = v56;
    v139 = MEMORY[0x1E6981838];
    v66 = v104;
    sub_1A3DF4988(v143, 2uLL, v140);
    v61(v48, v36);
    v67 = v127;
    swift_getWitnessTable();
    v68 = v130;
    v144 = v130;
    v145 = v134;
    v69 = v129;
    v146 = v129;
    v147 = v133;
    swift_getOpaqueTypeConformance2();
    v70 = v124;
    sub_1A3DF4798(v66, v67);
    (*(v105 + 8))(v66, v67);
    v61(v60, v36);
  }

  else
  {
    v71 = sub_1A5247C84();
    (*(*v144 + 264))(v71);

    v72 = v119;
    v73 = v118;
    v74 = v135;
    (*(v119 + 16))(v118, v132, v135);
    v75 = (*(v72 + 80) + 40) & ~*(v72 + 80);
    v76 = swift_allocObject();
    v77 = v137;
    *(v76 + 2) = v136;
    *(v76 + 3) = v77;
    *(v76 + 4) = v120;
    (*(v72 + 32))(&v76[v75], v73, v74);
    sub_1A524A044();
    v78 = v113;
    sub_1A5242CF4();
    v79 = v122;
    v80 = v121;
    v81 = v123;
    (*(v122 + 104))(v121, *MEMORY[0x1E697C438], v123);
    v82 = v110;
    v83 = v116;
    sub_1A524AF34();
    (*(v79 + 8))(v80, v81);
    (*(v115 + 8))(v78, v83);
    v84 = swift_checkMetadataState();
    v85 = v133;
    v86 = v107;
    v68 = v130;
    v69 = v129;
    sub_1A524A494();
    (*(v112 + 8))(v82, v68);
    v144 = v68;
    v145 = v84;
    v146 = v69;
    v147 = v85;
    v137 = swift_getOpaqueTypeConformance2();
    v87 = v108;
    v88 = *(v108 + 16);
    v89 = v106;
    v90 = v128;
    v88(v106, v86, v128);
    v91 = *(v87 + 8);
    v91(v86, v90);
    v88(v86, v89, v90);
    v92 = v127;
    swift_getWitnessTable();
    v70 = v124;
    sub_1A3DF4890(v86, v92, v90);
    v91(v86, v90);
    v91(v89, v90);
  }

  v93 = swift_getWitnessTable();
  v144 = v68;
  v145 = v134;
  v146 = v69;
  v147 = v133;
  v94 = swift_getOpaqueTypeConformance2();
  v143[5] = v93;
  v143[6] = v94;
  v95 = v126;
  swift_getWitnessTable();
  v96 = v125;
  (*(v125 + 16))(v131, v70, v95);
  return (*(v96 + 8))(v70, v95);
}

uint64_t sub_1A3F786D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v47 = a2;
  v48 = a1;
  v49 = a6;
  v44 = a4;
  v45 = a5;
  v7 = type metadata accessor for LemonadeSectionedStackedFeed();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1A3D5F9DC();
  v10 = MEMORY[0x1E69E6158];
  v54 = v7;
  v55 = MEMORY[0x1E69E6158];
  v56 = WitnessTable;
  v57 = v9;
  swift_getOpaqueTypeMetadata2();
  v11 = a3;
  type metadata accessor for LemonadeSectionedTabbedFeed();
  v39 = sub_1A5249754();
  v12 = sub_1A524B514();
  v46 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v36 - v13;
  v54 = v7;
  v55 = v10;
  v56 = WitnessTable;
  v57 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = swift_getWitnessTable();
  v60 = OpaqueTypeConformance2;
  v61 = v15;
  v38 = swift_getWitnessTable();
  v59 = v38;
  v16 = swift_getWitnessTable();
  v54 = v12;
  v55 = v16;
  v36 = v12;
  v17 = v16;
  v37 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = OpaqueTypeMetadata2;
  v42 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v20 = &v36 - v19;
  v54 = v12;
  v55 = v17;
  v41 = swift_getOpaqueTypeConformance2();
  v54 = OpaqueTypeMetadata2;
  v55 = v41;
  v21 = swift_getOpaqueTypeMetadata2();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v36 - v26;
  v50 = v11;
  v51 = v44;
  v52 = v45;
  v28 = v47;
  v53 = v47;
  v29 = v43;
  sub_1A524B504();
  v30 = *(v28 + *(type metadata accessor for LemonadeSectionedFeedView() + 44));
  v57 = type metadata accessor for LemonadeNavigationContext(0);
  v58 = sub_1A3F87E74(&qword_1EB125720, type metadata accessor for LemonadeNavigationContext);
  v54 = v30;

  v31 = v36;
  sub_1A458C30C(v48, &v54, v36, v37);
  (*(v46 + 8))(v29, v31);
  __swift_destroy_boxed_opaque_existential_0(&v54);
  v32 = v40;
  sub_1A524A5E4();
  (*(v42 + 8))(v20, v32);
  v33 = *(v22 + 16);
  v33(v27, v24, v21);
  v34 = *(v22 + 8);
  v34(v24, v21);
  v33(v49, v27, v21);
  return (v34)(v27, v21);
}

uint64_t sub_1A3F78C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v80 = a3;
  v5 = type metadata accessor for LemonadeSectionedTabbedFeed();
  v71 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v65 - v9;
  v10 = type metadata accessor for LemonadeSectionedStackedFeed();
  v68 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v65 - v11;
  WitnessTable = swift_getWitnessTable();
  v77 = sub_1A3D5F9DC();
  v78 = v10;
  v84 = v10;
  v85 = MEMORY[0x1E69E6158];
  v81 = WitnessTable;
  v86 = WitnessTable;
  v87 = v77;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v67 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v65 - v17;
  v73 = v18;
  v79 = v5;
  v19 = sub_1A5249754();
  v75 = *(v19 - 8);
  v76 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v65 - v20;
  OpaqueTypeConformance2 = a2;
  v21 = type metadata accessor for LemonadeSectionedFeedView();
  type metadata accessor for LemonadeSectionedFeedViewModel();
  sub_1A5247CB4();
  v22 = sub_1A5247C84();
  v23 = (*(*v84 + 272))(v22);
  v25 = v24;

  if (v25 == 1)
  {
    v26 = *(a1 + *(v21 + 44));

    sub_1A5247C84();
    v27 = v84;
    *v12 = v26;
    *(v12 + 1) = v27;
    *(v12 + 2) = swift_getKeyPath();
    *(v12 + 3) = 0;
    *(v12 + 4) = 0;
    *(v12 + 5) = 0;
    v12[48] = 0;
    v28 = type metadata accessor for LemonadeSectionedStackedFeed();
    v29 = *(v28 + 52);
    *&v12[v29] = swift_getKeyPath();
    sub_1A3F88738(0);
    swift_storeEnumTagMultiPayload();
    v30 = &v12[*(v28 + 56)];
    *v30 = swift_getKeyPath();
    v30[8] = 0;
    v31 = sub_1A5247C84();
    v32 = (*(*v84 + 232))(v31);
    v34 = v33;

    v84 = v32;
    v85 = v34;
    v35 = v67;
    v36 = v77;
    v37 = v78;
    v38 = MEMORY[0x1E69E6158];
    v39 = v81;
    sub_1A524ABB4();

    v40 = v12;
    v41 = v36;
    (*(v68 + 8))(v40, v37);
    v84 = v37;
    v85 = v38;
    v86 = v39;
    v87 = v36;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v42 = v69;
    v43 = *(v69 + 16);
    v44 = v66;
    v45 = v73;
    v43(v66, v35, v73);
    v46 = *(v42 + 8);
    v46(v35, v45);
    v43(v35, v44, v45);
    swift_getWitnessTable();
    v47 = v74;
    sub_1A3DF4798(v35, v45);
    v46(v35, v45);
    v46(v44, v45);
    v48 = v81;
  }

  else
  {
    sub_1A3F894D8(v23, v25);
    v49 = *(a1 + *(v21 + 44));

    sub_1A5247C84();
    v50 = v84;
    *v7 = v49;
    *(v7 + 1) = v50;
    *(v7 + 2) = swift_getKeyPath();
    *(v7 + 3) = 0;
    *(v7 + 4) = 0;
    *(v7 + 5) = 0;
    v7[48] = 0;
    v51 = type metadata accessor for LemonadeSectionedTabbedFeed();
    v52 = v51[13];
    *&v7[v52] = swift_getKeyPath();
    sub_1A3E71AC8(0);
    swift_storeEnumTagMultiPayload();
    v53 = &v7[v51[14]];
    *v53 = swift_getKeyPath();
    *(v53 + 1) = 0;
    *(v53 + 2) = 0;
    *(v53 + 3) = 0;
    v53[32] = 0;
    v54 = v51[15];
    *&v7[v54] = swift_getKeyPath();
    sub_1A3F88738(0);
    swift_storeEnumTagMultiPayload();
    v55 = v79;
    swift_getWitnessTable();
    v56 = v70;
    v57 = v71;
    v58 = *(v71 + 16);
    v58(v70, v7, v55);
    v59 = *(v57 + 8);
    v59(v7, v55);
    v58(v7, v56, v55);
    v41 = v77;
    v37 = v78;
    v84 = v78;
    v48 = v81;
    v85 = MEMORY[0x1E69E6158];
    v86 = v81;
    v87 = v77;
    swift_getOpaqueTypeConformance2();
    v47 = v74;
    sub_1A3DF4890(v7, v73, v55);
    v59(v7, v55);
    v59(v56, v55);
  }

  v84 = v37;
  v85 = MEMORY[0x1E69E6158];
  v86 = v48;
  v87 = v41;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = swift_getWitnessTable();
  v82 = v60;
  v83 = v61;
  v62 = v76;
  swift_getWitnessTable();
  v63 = v75;
  (*(v75 + 16))(v80, v47, v62);
  return (*(v63 + 8))(v47, v62);
}

uint64_t sub_1A3F79548(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + *(a1 + 60) + 8);

  if ((v8 & 1) == 0)
  {
    sub_1A524D254();
    v9 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  v15 = v5;
  v16 = v4;
  type metadata accessor for LemonadeSectionedFeedViewModel();
  sub_1A5247CB4();
  v10 = sub_1A5247C84();
  (*(*v17 + 232))(v10);

  sub_1A5243DE4();

  if ((v8 & 1) == 0)
  {
    sub_1A524D254();
    v11 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v15 + 8))(v7, v16);
  }

  v12 = sub_1A5247C84();
  (*(*v17 + 336))(v12);

  sub_1A5243DF4();
}

uint64_t sub_1A3F79820(uint64_t *a1, void *a2)
{
  v4 = type metadata accessor for LemonadeSectionedFeedView();
  result = *a1;
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    result = sub_1A524EAB4();
    if ((result & 1) == 0)
    {
      return sub_1A3F79548(v4);
    }
  }

  return result;
}

uint64_t sub_1A3F798BC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = type metadata accessor for LemonadeSectionedFeedView();
  if (*a1 != *a2)
  {
    return sub_1A3F79548(result);
  }

  return result;
}

uint64_t sub_1A3F79944@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  sub_1A3F88488();
  v23 = v3;
  v5 = a1[2];
  v4 = a1[3];
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  v21[1] = sub_1A524DF24();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1A524CB74();
  v22 = a1[4];
  type metadata accessor for LemonadeSectionedStackedFeed.SectionView();
  sub_1A5249F54();
  v36 = v7;
  v37 = AssociatedTypeWitness;
  v38 = sub_1A5248804();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = sub_1A524B9D4();
  v34 = swift_getWitnessTable();
  v35 = sub_1A3F87E74(&qword_1EB127710, MEMORY[0x1E697CBE8]);
  v33 = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  v32 = *(AssociatedConformanceWitness + 8);
  v10 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A5248804();
  v36 = v8;
  v37 = v7;
  v38 = v9;
  WitnessTable = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = MEMORY[0x1E69805D0];
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  v11 = sub_1A524B894();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v21 - v16;
  v26 = v5;
  v27 = v4;
  v28 = v22;
  v29 = v24;
  sub_1A5249574();
  sub_1A524B884();
  swift_getWitnessTable();
  v18 = *(v12 + 16);
  v18(v17, v14, v11);
  v19 = *(v12 + 8);
  v19(v14, v11);
  v18(v25, v17, v11);
  return (v19)(v17, v11);
}

uint64_t sub_1A3F79E10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v101 = a1;
  v97 = a5;
  v8 = sub_1A5249234();
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1A524CB74();
  v96 = a4;
  type metadata accessor for LemonadeSectionedStackedFeed.SectionView();
  sub_1A5249F54();
  v12 = sub_1A5248804();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v108 = v11;
  v109 = AssociatedTypeWitness;
  v110 = v12;
  v111 = WitnessTable;
  v112 = AssociatedConformanceWitness;
  v15 = sub_1A524B9D4();
  v16 = a2;
  v17 = swift_getWitnessTable();
  v18 = sub_1A3F87E74(&qword_1EB127710, MEMORY[0x1E697CBE8]);
  v117[10] = v17;
  v117[11] = v18;
  v117[9] = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v117[8] = *(AssociatedConformanceWitness + 8);
  v20 = swift_getWitnessTable();
  v108 = v15;
  v109 = v11;
  v110 = v19;
  v111 = v20;
  swift_getOpaqueTypeMetadata2();
  v21 = sub_1A5248804();
  v108 = v15;
  v109 = v11;
  v110 = v19;
  v111 = v20;
  v117[6] = swift_getOpaqueTypeConformance2();
  v117[7] = MEMORY[0x1E69805D0];
  v90 = swift_getWitnessTable();
  v91 = v21;
  v22 = sub_1A524B894();
  v94 = *(v22 - 8);
  v95 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v93 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v89 = &v73 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v92 = &v73 - v27;
  v28 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = swift_getAssociatedTypeWitness();
  v78 = sub_1A524DF24();
  v74 = *(v78 - 1);
  MEMORY[0x1EEE9AC00](v78);
  v34 = &v73 - v33;
  v79 = sub_1A5248804();
  v100 = sub_1A524DF24();
  v102 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v88 = &v73 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v98 = &v73 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v99 = &v73 - v39;
  v40 = v101;
  v41 = *v101;
  if (sub_1A4655004())
  {
    goto LABEL_6;
  }

  v42 = (*(*v40[1] + 232))();
  v44 = v43;

  v45 = HIBYTE(v44) & 0xF;
  v46 = (v44 & 0x2000000000000000) == 0;
  v40 = v101;
  if (v46)
  {
    v45 = v42 & 0xFFFFFFFFFFFFLL;
  }

  if (!v45)
  {
LABEL_6:
    v87 = 0;
    v84 = 0;
    v85 = 0;
    v82 = 0;
    v83 = 0;
    v80 = 0;
    v81 = 0;
    v86 = 1;
  }

  else
  {
    sub_1A524BC74();
    sub_1A52481F4();
    v86 = 0;
    v87 = v117[12];
    v84 = v121;
    v85 = v119;
    LOBYTE(v117[0]) = 1;
    LOBYTE(v107[0]) = v118;
    LOBYTE(v104) = v120;
    v80 = 1;
    v81 = v118;
    v82 = v120;
    v83 = v122;
    LOBYTE(v108) = 0;
  }

  (*(v28 + 16))(v31, v40[1] + *(*v40[1] + 96), v16);
  (*(v103 + 88))(v41, v16, v103);
  (*(v28 + 8))(v31, v16);
  v47 = *(v32 - 8);
  if ((*(v47 + 48))(v34, 1, v32) == 1)
  {
    (*(v74 + 8))(v34, v78);
    v48 = v98;
    (*(*(v79 - 1) + 56))(v98, 1, 1, v79);
    v49 = swift_getAssociatedConformanceWitness();
  }

  else
  {
    sub_1A524BC74();
    v49 = swift_getAssociatedConformanceWitness();
    v40 = v101;
    v48 = v98;
    sub_1A524AFE4();
    (*(v47 + 8))(v34, v32);
    (*(*(v79 - 1) + 56))(v48, 0, 1, v79);
  }

  v117[4] = v49;
  v117[5] = MEMORY[0x1E697EBF8];
  v117[3] = swift_getWitnessTable();
  v50 = v100;
  v98 = swift_getWitnessTable();
  v51 = v102;
  v78 = *(v102 + 16);
  v78(v99, v48, v50);
  v52 = *(v51 + 8);
  v102 = v51 + 8;
  v79 = v52;
  v53 = v52(v48, v50);
  v54 = v40[3];
  if ((v40[6] & 1) == 0)
  {
    v55 = v40[2];
    v56 = v40[4];
    v57 = v40[5];

    sub_1A524D254();
    v58 = sub_1A524A014();
    sub_1A5246DF4();

    v59 = v75;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v55, v54, v56, v57, 0);
    v53 = (*(v76 + 8))(v59, v77);
  }

  MEMORY[0x1EEE9AC00](v53);
  sub_1A5249574();
  v60 = v89;
  sub_1A524B884();
  v61 = v95;
  v101 = swift_getWitnessTable();
  v62 = v94;
  v63 = *(v94 + 16);
  v64 = v92;
  v63(v92, v60, v61);
  v103 = *(v62 + 8);
  (v103)(v60, v61);
  v108 = 0;
  v109 = v80;
  v65 = v88;
  v110 = v87;
  v111 = v81;
  v112 = v85;
  v113 = v82;
  v114 = v84;
  v115 = v83;
  v116 = v86;
  v117[0] = &v108;
  v66 = v99;
  v67 = v100;
  v78(v88, v99, v100);
  v117[1] = v65;
  v68 = v93;
  v63(v93, v64, v61);
  v117[2] = v68;
  sub_1A3F88488();
  v107[0] = v69;
  v107[1] = v67;
  v107[2] = v61;
  v104 = sub_1A3F8A8C0(&qword_1EB123B50, sub_1A3F88488, sub_1A3F1CF90);
  v105 = v98;
  v106 = v101;
  sub_1A3DF4988(v117, 3uLL, v107);
  v70 = v103;
  (v103)(v64, v61);
  v71 = v79;
  v79(v66, v67);
  v70(v68, v61);
  return v71(v65, v67);
}

uint64_t sub_1A3F7AAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v89 = a1;
  v79 = a5;
  v87 = type metadata accessor for LemonadeSectionedStackedFeed();
  v90 = *(v87 - 8);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &KeyPath - v8;
  swift_getAssociatedTypeWitness();
  v88 = a2;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1A524CB74();
  type metadata accessor for LemonadeSectionedStackedFeed.SectionView();
  sub_1A5249F54();
  v11 = sub_1A5248804();
  WitnessTable = swift_getWitnessTable();
  v75 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v101 = v10;
  v102 = AssociatedTypeWitness;
  v103 = v11;
  v104 = WitnessTable;
  v64 = v11;
  v105 = AssociatedConformanceWitness;
  v14 = AssociatedConformanceWitness;
  v63 = AssociatedConformanceWitness;
  v15 = sub_1A524B9D4();
  v77 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v69 = &KeyPath - v16;
  v17 = swift_getWitnessTable();
  v18 = sub_1A3F87E74(&qword_1EB127710, MEMORY[0x1E697CBE8]);
  v99 = v17;
  v100 = v18;
  v78 = MEMORY[0x1E697E858];
  v61 = swift_getWitnessTable();
  v98 = v61;
  v65 = v15;
  v19 = swift_getWitnessTable();
  v67 = v19;
  v97 = *(v14 + 8);
  v62 = v10;
  v66 = swift_getWitnessTable();
  v101 = v15;
  v102 = v10;
  v103 = v19;
  v104 = v66;
  v72 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v85 = &KeyPath - v20;
  v74 = sub_1A5248804();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v68 = &KeyPath - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v71 = &KeyPath - v24;
  v25 = v89;
  v26 = (**(v89 + 8) + 216);
  v59 = *v26;
  v60 = v26;
  v101 = v59(v23);
  v27 = v88;
  v92 = v88;
  v93 = a3;
  v28 = a3;
  v81 = a3;
  v29 = a4;
  v82 = a4;
  v94 = a4;
  KeyPath = swift_getKeyPath();
  v30 = v90;
  v31 = *(v90 + 16);
  v83 = v90 + 16;
  v84 = v31;
  v33 = v86;
  v32 = v87;
  v31(v86, v25, v87);
  v34 = (*(v30 + 80) + 40) & ~*(v30 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = v27;
  *(v35 + 3) = v28;
  *(v35 + 4) = v29;
  v80 = *(v30 + 32);
  v80(&v35[v34], v33, v32);
  v90 = v30 + 32;
  v36 = v69;
  v37 = v62;
  v38 = sub_1A524B9B4();
  v101 = (v59)(v38);
  v84(v33, v89, v32);
  v39 = swift_allocObject();
  v40 = v81;
  *(v39 + 2) = v88;
  *(v39 + 3) = v40;
  *(v39 + 4) = v82;
  v80(&v39[v34], v33, v32);
  v41 = v65;
  v42 = v67;
  v43 = v66;
  sub_1A524B144();

  (*(v77 + 8))(v36, v41);
  v44 = v86;
  v45 = v87;
  v84(v86, v89, v87);
  v46 = swift_allocObject();
  v47 = v81;
  *(v46 + 2) = v88;
  *(v46 + 3) = v47;
  *(v46 + 4) = v82;
  v80(&v46[v34], v44, v45);
  v101 = v41;
  v102 = v37;
  v103 = v42;
  v104 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v68;
  v50 = OpaqueTypeMetadata2;
  v51 = v85;
  sub_1A524A994();

  (*(v76 + 8))(v51, v50);
  v95 = OpaqueTypeConformance2;
  v96 = MEMORY[0x1E69805D0];
  v52 = v74;
  swift_getWitnessTable();
  v53 = v73;
  v54 = *(v73 + 16);
  v55 = v71;
  v54(v71, v49, v52);
  v56 = *(v53 + 8);
  v56(v49, v52);
  v54(v79, v55, v52);
  return (v56)(v55, v52);
}

uint64_t sub_1A3F7B3F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, char *a4@<X8>)
{
  v35 = a3;
  v41 = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v35 - v8;
  v36 = type metadata accessor for LemonadeSectionedStackedFeed.SectionView();
  v39 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v35 - v10;
  sub_1A5249F54();
  v12 = sub_1A5248804();
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v38 = &v35 - v16;
  (*(v7 + 16))(v9, a1, AssociatedTypeWitness, v15);
  v17 = *a2;
  v18 = a2[1];

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedTypeWitness();
  (*(*(v19 - 8) + 32))(v11, v9, v19);
  v20 = type metadata accessor for LemonadeSectionedStackedFeed.SectionView();
  *&v11[v20[11]] = v17;
  *&v11[v20[12]] = v18;
  v21 = &v11[v20[13]];
  *v21 = swift_getKeyPath();
  *(v21 + 1) = 0;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v21[32] = 0;
  v22 = &v11[v20[14]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v20[15];
  *&v11[v23] = swift_getKeyPath();
  sub_1A3F88AE4(0);
  swift_storeEnumTagMultiPayload();
  v24 = &v11[v20[16]];
  v44 = 1;
  sub_1A524B694();
  v25 = v46;
  *v24 = v45;
  *(v24 + 1) = v25;
  v26 = v36;
  WitnessTable = swift_getWitnessTable();
  v28 = v37;
  sub_1A524AA94();
  (*(v39 + 8))(v11, v26);
  v29 = sub_1A3F87E74(&qword_1EB127710, MEMORY[0x1E697CBE8]);
  v42 = WitnessTable;
  v43 = v29;
  swift_getWitnessTable();
  v30 = v40;
  v31 = *(v40 + 16);
  v32 = v38;
  v31(v38, v28, v12);
  v33 = *(v30 + 8);
  v33(v28, v12);
  v31(v41, v32, v12);
  return (v33)(v32, v12);
}

uint64_t sub_1A3F7B940(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *(a2 + *(type metadata accessor for LemonadeSectionedStackedFeed() + 56) + 8);

  if ((a2 & 1) == 0)
  {
    sub_1A524D254();
    v7 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1A524E614();
  sub_1A5242FA4();
}

uint64_t sub_1A3F7BB4C(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + *(type metadata accessor for LemonadeSectionedStackedFeed() + 56) + 8);

  if ((v6 & 1) == 0)
  {
    sub_1A524D254();
    v7 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A5242FA4();
}

uint64_t sub_1A3F7BCD0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v29 = a2;
  sub_1A3F8A394();
  v24[2] = v3;
  v27 = a1;
  v4 = *(a1 + 16);
  v26 = *(a1 + 24);
  v25 = v4;
  swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1E69E6530];
  v6 = MEMORY[0x1E6980A08];
  sub_1A3F880A8(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  v7 = MEMORY[0x1E69E69B8];
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], v6);
  sub_1A5248804();
  sub_1A3E73A2C();
  v24[1] = v8;
  sub_1A5248804();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = sub_1A3F8AB08(&qword_1EB1277A0, &qword_1EB127790, &qword_1EB126D60, v5);
  WitnessTable = swift_getWitnessTable();
  v46 = sub_1A3F8AB08(&qword_1EB1220A8, &qword_1EB1220A0, &qword_1EB126538, v7);
  v43 = swift_getWitnessTable();
  v44 = sub_1A3F87E74(&qword_1EB128040, sub_1A3E73A2C);
  swift_getWitnessTable();
  v24[0] = v43;
  swift_getOpaqueTypeMetadata2();
  sub_1A3F8A464();
  sub_1A3F87E74(&qword_1EB12F478, sub_1A3F8A464);
  sub_1A3D5F9DC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  v9 = sub_1A5243DD4();
  v10 = sub_1A5248804();
  v11 = swift_getWitnessTable();
  v37 = v11;
  v38 = v44;
  v12 = swift_getWitnessTable();
  v39 = v9;
  v40 = v10;
  v41 = v11;
  v42 = v12;
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  v13 = sub_1A524B514();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v24 - v18;
  v30 = v25;
  v31 = v26;
  v32 = *(v27 + 32);
  v33 = v28;
  v39 = v9;
  v40 = v10;
  v41 = v11;
  v42 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v24[0];
  v20 = swift_getWitnessTable();
  sub_1A524B504();
  v34 = v20;
  swift_getWitnessTable();
  v21 = *(v14 + 16);
  v21(v19, v16, v13);
  v22 = *(v14 + 8);
  v22(v16, v13);
  v21(v29, v19, v13);
  return (v22)(v19, v13);
}

void sub_1A3F7C25C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v87 = a1;
  v99 = a5;
  v105 = a4;
  v114 = type metadata accessor for LemonadeSectionedStackedFeed.SectionView();
  v78 = *(v114 - 8);
  v76 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v77 = v62 - v7;
  sub_1A3F8A394();
  v104 = v8;
  v96 = a3;
  v106 = *(a3 + 8);
  v113 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x1E69E6530];
  v11 = MEMORY[0x1E6980A08];
  sub_1A3F880A8(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
  v109 = AssociatedTypeWitness;
  v12 = sub_1A5248804();
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], v11);
  v110 = v12;
  v13 = sub_1A5248804();
  sub_1A3E73A2C();
  v112 = v14;
  v15 = sub_1A5248804();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = sub_1A3F8AB08(&qword_1EB1277A0, &qword_1EB127790, &qword_1EB126D60, v10);
  v89 = AssociatedConformanceWitness;
  v125 = AssociatedConformanceWitness;
  v126 = v17;
  WitnessTable = swift_getWitnessTable();
  v19 = sub_1A3F8AB08(&qword_1EB1220A8, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8]);
  v90 = WitnessTable;
  v123 = WitnessTable;
  v124 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_1A3F87E74(&qword_1EB128040, sub_1A3E73A2C);
  v121 = v20;
  v122 = v21;
  v22 = swift_getWitnessTable();
  v115 = v13;
  v116 = v15;
  v117 = v20;
  v118 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_1A3F8A464();
  v25 = v24;
  v26 = sub_1A3F87E74(&qword_1EB12F478, sub_1A3F8A464);
  v27 = sub_1A3D5F9DC();
  v115 = v25;
  v116 = MEMORY[0x1E69E6158];
  v117 = v26;
  v118 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v115 = v13;
  v116 = v15;
  v97 = v20;
  v117 = v20;
  v118 = v22;
  v29 = swift_getOpaqueTypeConformance2();
  v115 = v104;
  v116 = OpaqueTypeMetadata2;
  v73 = OpaqueTypeMetadata2;
  v69 = OpaqueTypeConformance2;
  v117 = OpaqueTypeConformance2;
  v118 = v29;
  v68 = v29;
  v30 = sub_1A5243DD4();
  v74 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v72 = v62 - v31;
  v32 = sub_1A5248804();
  v33 = swift_getWitnessTable();
  v119 = v33;
  v120 = v21;
  v34 = swift_getWitnessTable();
  v95 = v30;
  v115 = v30;
  v116 = v32;
  v103 = v32;
  v111 = v34;
  v112 = v33;
  v117 = v33;
  v118 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v75 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v71 = v62 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v70 = v62 - v38;
  v91 = v39;
  v94 = sub_1A5249754();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = v62 - v40;
  v63 = sub_1A5249234();
  v62[1] = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62[0] = v62 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v80 = v62 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v79 = v62 - v45;
  v85 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v84 = v62 - v47;
  v98 = v13;
  v102 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v66 = v62 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v86 = v62 - v51;
  v67 = v52;
  MEMORY[0x1EEE9AC00](v53);
  v101 = v62 - v54;
  swift_getAssociatedTypeWitness();
  v55 = swift_getAssociatedConformanceWitness();
  v56 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v56);
  v88 = swift_getAssociatedConformanceWitness();
  v108 = swift_getAssociatedTypeWitness();
  v100 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v65 = v62 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v57;
  v59 = MEMORY[0x1EEE9AC00](v58);
  v61 = v62 - v60;
  (*(**(v87 + *(v114 + 48)) + 352))(v87, v59);
  swift_checkMetadataState();
  v82 = v55;
  sub_1A5242604();
  v107 = v61;
  sub_1A5246234();
}

uint64_t sub_1A3F7D768@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A5248C34();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1A3F7D828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v70 = a6;
  v71 = a2;
  v58 = a1;
  v66 = a4;
  swift_getAssociatedTypeWitness();
  v65 = a3;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  v67 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v61 = &v51 - v8;
  v9 = a5;
  v52 = a5;
  v53 = type metadata accessor for LemonadeSectionedStackedFeed.SectionView();
  v56 = *(v53 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v51 - v10;
  v11 = sub_1A52440D4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  v18 = sub_1A5243334();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v21;
  sub_1A3F8A464();
  v23 = *(v22 - 8);
  v68 = v22;
  v69 = v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v62 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v58;
  v27 = AssociatedTypeWitness;
  v60 = (*(*(v9 + 8) + 72))(AssociatedTypeWitness, v24);
  v64 = v28;
  v29 = shouldUseNewCollectionsLayout()();
  v30 = MEMORY[0x1E69C2410];
  if (!v29)
  {
    v30 = MEMORY[0x1E69C2418];
  }

  (*(v19 + 104))(v21, *v30, v18);
  v31 = v53;
  v32 = v71;
  sub_1A3F8853C(sub_1A3F88AE4, sub_1A3F88AE4, MEMORY[0x1E69C2998], v17);
  (*(v12 + 104))(v14, *MEMORY[0x1E69C2988], v11);
  sub_1A52440C4();
  v33 = *(v12 + 8);
  v33(v14, v11);
  v33(v17, v11);
  v34 = v56;
  v35 = v55;
  v36 = v31;
  (*(v56 + 16))(v55, v32, v31);
  v37 = v63;
  v38 = v61;
  (*(v63 + 16))(v61, v26, v27);
  v39 = v34;
  v40 = (*(v34 + 80) + 40) & ~*(v34 + 80);
  v41 = v37;
  v42 = (v57 + v40 + *(v37 + 80)) & ~*(v37 + 80);
  v43 = swift_allocObject();
  v44 = v66;
  *(v43 + 2) = v65;
  *(v43 + 3) = v44;
  *(v43 + 4) = v52;
  (*(v39 + 32))(&v43[v40], v35, v36);
  (*(v41 + 32))(&v43[v42], v38, v27);
  sub_1A5247BA4();
  v45 = swift_allocObject();
  *(v45 + 16) = PXDisplayCollectionDetailedCountsMake;
  *(v45 + 24) = 0;
  sub_1A3F8A528(0);
  sub_1A3F8A8C0(&qword_1EB12F468, sub_1A3F8A528, sub_1A3F8A930);
  v46 = v62;
  v47 = sub_1A52423E4();
  v72 = (*(**(v71 + *(v36 + 48)) + 232))(v47);
  v73 = v48;
  sub_1A3F87E74(&qword_1EB12F478, sub_1A3F8A464);
  sub_1A3D5F9DC();
  v49 = v68;
  sub_1A524ABB4();

  return (*(v69 + 8))(v46, v49);
}

uint64_t sub_1A3F7DFE4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v109 = a3;
  v99 = sub_1A5243474();
  v92 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v90 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F8A668();
  v98 = v6;
  v86 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F8A564();
  v100 = v8;
  v93 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1A5249234();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v95 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F8B570(0, &qword_1EB12F480, MEMORY[0x1E697F948]);
  v102 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v85 - v12;
  v108 = a2;
  v13 = *--a2;
  v107 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v15;
  v16 = a2[3];
  v97 = a2[4];
  swift_getAssociatedTypeWitness();
  v106 = v16;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v85 - v20;
  sub_1A3F8A7EC(0, &qword_1EB129710, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for LemonadeDetailsNavigationButton);
  v101 = v22;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v96 = (&v85 - v24);
  v25 = a2[5];
  v26 = a1;
  v27 = (*(v25 + 32))(AssociatedTypeWitness, v25, v23);
  v29 = v28;
  v30 = sub_1A437CA3C(v27, v28);
  v32 = v31;
  v33 = sub_1A3F8B60C(v27, v29);
  if (v32)
  {
    v95 = &v85;
    v34 = v108;
    v35 = *(v108 + 11);
    v94 = v32;
    v36 = v110;
    v92 = *(v110 + v35);
    v37 = MEMORY[0x1EEE9AC00](v33);
    v93 = &v85 - 4;
    v83 = v30;
    v84 = v38;
    (*(v18 + 16))(v21, v26, AssociatedTypeWitness, v37);
    v39 = v107;
    v40 = v104;
    (*(v107 + 16))(v104, v36, v34);
    v41 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v42 = (v19 + *(v39 + 80) + v41) & ~*(v39 + 80);
    v43 = swift_allocObject();
    v44 = v97;
    *(v43 + 2) = v106;
    *(v43 + 3) = v44;
    *(v43 + 4) = v25;
    (*(v18 + 32))(&v43[v41], v21, AssociatedTypeWitness);
    (*(v39 + 32))(&v43[v42], v40, v34);

    v83 = MEMORY[0x1E6981138];
    v46 = v96;
    sub_1A472916C(v45, sub_1A3F8B798, 0, 0, sub_1A3F8BB14, v43, v96);

    sub_1A3F8BD04(v46, v103);
    swift_storeEnumTagMultiPayload();
    sub_1A3F8AA84();
    v47 = sub_1A3F87E74(&qword_1EB121A80, sub_1A3F8A668);
    v48 = sub_1A3F87E74(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    v111 = v98;
    v112 = v99;
    v113 = v47;
    v114 = v48;
    swift_getOpaqueTypeConformance2();
    v49 = v109;
    sub_1A5249744();
    sub_1A3F8BD94(v46);
LABEL_9:
    v61 = 0;
    goto LABEL_10;
  }

  v94 = v25;
  v50 = v95;
  v96 = v26;
  v51 = v104;
  v52 = v108;
  v53 = v110 + *(v108 + 14);
  v54 = *v53;
  if (*(v53 + 8) == 1)
  {
    LOBYTE(v111) = *v53;
  }

  else
  {

    sub_1A524D254();
    v55 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3DD15BC(v54, 0);
    (*(v87 + 8))(v50, v88);
    LOBYTE(v54) = v111;
  }

  v56 = v106;
  v57 = AssociatedTypeWitness;
  v115[0] = v54;
  v58 = v94;
  v59 = v96;
  (*(v94 + 40))(v115, v57, v94);
  if ((v60 & 1) == 0)
  {
    v62 = v51;
    v63 = v107;
    v64 = v110;
    (*(v107 + 16))(v51, v110, v52);
    v65 = v52;
    v66 = (*(v63 + 80) + 40) & ~*(v63 + 80);
    v67 = swift_allocObject();
    *(v67 + 2) = v56;
    v68 = v56;
    v69 = v97;
    *(v67 + 3) = v97;
    *(v67 + 4) = v58;
    v70 = (*(v63 + 32))(&v67[v66], v62, v65);
    MEMORY[0x1EEE9AC00](v70);
    *(&v85 - 6) = v68;
    *(&v85 - 5) = v69;
    *(&v85 - 4) = v58;
    *(&v85 - 3) = v64;
    v83 = v59;
    sub_1A3F8A6FC();
    sub_1A3F87E74(&qword_1EB121A20, sub_1A3F8A6FC);
    v71 = v89;
    sub_1A524B704();
    v72 = v90;
    sub_1A5247D74();
    v73 = sub_1A3F87E74(&qword_1EB121A80, sub_1A3F8A668);
    v74 = sub_1A3F87E74(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    v75 = v91;
    v77 = v98;
    v76 = v99;
    sub_1A524A944();
    v78 = v76;
    (*(v92 + 8))(v72, v76);
    (*(v86 + 8))(v71, v77);
    v79 = v93;
    v80 = v100;
    (v93[2])(v103, v75, v100);
    swift_storeEnumTagMultiPayload();
    sub_1A3F8AA84();
    v111 = v77;
    v112 = v78;
    v113 = v73;
    v114 = v74;
    swift_getOpaqueTypeConformance2();
    v49 = v109;
    sub_1A5249744();
    (v79[1])(v75, v80);
    goto LABEL_9;
  }

  v61 = 1;
  v49 = v109;
LABEL_10:
  sub_1A3F8B570(0, &qword_1EB12F458, MEMORY[0x1E697F960]);
  return (*(*(v81 - 8) + 56))(v49, v61, 1, v81);
}

uint64_t sub_1A3F7EBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v23 = a3;
  v24 = a4;
  v25 = a1;
  v26 = a5;
  v22 = a2;
  swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1E69E6530];
  v6 = MEMORY[0x1E6980A08];
  sub_1A3F880A8(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  v7 = MEMORY[0x1E69E69B8];
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], v6);
  v8 = sub_1A5248804();
  sub_1A3E73A2C();
  v9 = sub_1A5248804();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = sub_1A3F8AB08(&qword_1EB1277A0, &qword_1EB127790, &qword_1EB126D60, v5);
  WitnessTable = swift_getWitnessTable();
  v37 = sub_1A3F8AB08(&qword_1EB1220A8, &qword_1EB1220A0, &qword_1EB126538, v7);
  v34 = swift_getWitnessTable();
  v35 = sub_1A3F87E74(&qword_1EB128040, sub_1A3E73A2C);
  v30 = v8;
  v31 = v9;
  v32 = v34;
  v33 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_1A3C7E8B0();
  v17 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v17 enableShelfDrawBorders];

  v27 = v22;
  v28 = v23;
  v29 = v24;
  swift_checkMetadataState();
  swift_checkMetadataState();
  sub_1A524A584();
  v18 = *(v11 + 16);
  v18(v16, v13, OpaqueTypeMetadata2);
  v19 = *(v11 + 8);
  v19(v13, OpaqueTypeMetadata2);
  v18(v26, v16, OpaqueTypeMetadata2);
  return (v19)(v16, OpaqueTypeMetadata2);
}

uint64_t sub_1A3F7EFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v6 = sub_1A5248B74();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + *(type metadata accessor for LemonadeSectionedStackedFeed.SectionView() + 64));
  v10 = *v9;
  v11 = *(v9 + 1);
  v48 = v10;
  LOBYTE(v53) = v10;
  v49 = v11;
  v54 = v11;
  sub_1A3F8C838(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  v47 = v12;
  sub_1A524B6A4();
  if (v52 == 1)
  {
    v13 = sub_1A524C634();
    v14 = PXLocalizedString(v13);

    v15 = sub_1A524C674();
    v45 = v16;
    v46 = v15;

    sub_1A3F8C454(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1A52F8E10;
    v44 = *(a2 + 80);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v19 = v44(AssociatedTypeWitness, a2);
    v20 = MEMORY[0x1E69E65A8];
    *(v17 + 56) = MEMORY[0x1E69E6530];
    *(v17 + 64) = v20;
    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = v19;
    }

    *(v17 + 32) = v22;
    v23 = sub_1A524C644();
    v25 = v24;
  }

  else
  {
    v26 = sub_1A524C634();
    v27 = PXLocalizedString(v26);

    v23 = sub_1A524C674();
    v25 = v28;
  }

  v53 = v23;
  v54 = v25;
  sub_1A3D5F9DC();
  v29 = sub_1A524A464();
  v31 = v30;
  v33 = v32;
  sub_1A5248B64();
  v34 = sub_1A524A384();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_1A3E04DF4(v29, v31, v33 & 1);

  (*(v50 + 8))(v8, v51);
  LOBYTE(v53) = v48;
  v54 = v49;
  result = sub_1A524B6A4();
  v42 = v52;
  *a3 = v34;
  *(a3 + 8) = v36;
  *(a3 + 16) = v38 & 1;
  *(a3 + 24) = v40;
  *(a3 + 32) = 0;
  *(a3 + 40) = v42;
  return result;
}

BOOL sub_1A3F7F430()
{
  (*(**(v0 + 8) + 216))();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v1 = sub_1A524CAF4();

  return v1 > 1;
}

uint64_t sub_1A3F7F518(uint64_t a1)
{
  v19[0] = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19[5] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19[4] = v19 - v4;
  v19[3] = swift_getAssociatedConformanceWitness();
  v5 = swift_getAssociatedTypeWitness();
  v19[6] = *(v5 - 8);
  v19[7] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v19[1] = AssociatedConformanceWitness;
  v19[2] = v19 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v8 = sub_1A524DF24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - v10;
  v12 = *(v7 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v19 - v15;
  v17 = *(v1 + 8);
  (*(*v17 + 192))(v14);
  if ((*(v12 + 48))(v11, 1, v7) != 1)
  {
    (*(v12 + 32))(v16, v11, v7);
    (*(*v17 + 352))(v16);
    swift_checkMetadataState();
    sub_1A5242604();
    sub_1A5246234();
  }

  (*(v9 + 8))(v11, v8);
  return 1;
}

uint64_t sub_1A3F7F9F4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v82 = a2;
  v61 = sub_1A5249234();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = a1;
  v4 = *(a1 + 16);
  v84 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  sub_1A524DF24();
  v83 = v4;
  swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1E69E69B8];
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], MEMORY[0x1E6980A08]);
  v6 = sub_1A5248804();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = sub_1A3F8AB08(&qword_1EB1220A8, &qword_1EB1220A0, &qword_1EB126538, v5);
  v96 = AssociatedConformanceWitness;
  v97 = v8;
  v78 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1A3D5F9DC();
  v11 = MEMORY[0x1E69E6158];
  v92 = v6;
  v93 = MEMORY[0x1E69E6158];
  v94 = WitnessTable;
  v95 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = v6;
  v93 = v11;
  v94 = WitnessTable;
  v95 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v92 = OpaqueTypeMetadata2;
  v93 = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeMetadata2();
  v92 = OpaqueTypeMetadata2;
  v93 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeConformance2();
  v92 = v14;
  v93 = v15;
  swift_getOpaqueTypeMetadata2();
  sub_1A524DF24();
  swift_getTupleTypeMetadata2();
  v16 = sub_1A524BE24();
  v17 = swift_getWitnessTable();
  v77 = v16;
  v73 = v17;
  v18 = sub_1A524B894();
  v80 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v74 = &v59 - v19;
  v20 = swift_getWitnessTable();
  v92 = v18;
  v93 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v92 = v18;
  v93 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v92 = v18;
  v93 = v21;
  v94 = v20;
  v95 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v76 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v72 = &v59 - v24;
  sub_1A3F88B18();
  v69 = *(v85 + 32);
  type metadata accessor for LemonadeSectionedFeedTabBar();
  sub_1A5249754();
  sub_1A5249754();
  v25 = sub_1A5248804();
  v79 = v18;
  v92 = v18;
  v93 = v21;
  v70 = v21;
  v75 = v20;
  v94 = v20;
  v95 = v22;
  v71 = v22;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_1A3F88C24();
  v28 = swift_getWitnessTable();
  v90 = v27;
  v91 = v28;
  v88 = swift_getWitnessTable();
  v89 = MEMORY[0x1E6981E60];
  v86 = swift_getWitnessTable();
  v87 = MEMORY[0x1E697E5D8];
  v29 = swift_getWitnessTable();
  v92 = v23;
  v93 = v25;
  v94 = v26;
  v95 = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  v92 = v23;
  v93 = v25;
  v94 = v26;
  v95 = v29;
  v31 = swift_getOpaqueTypeConformance2();
  v78 = v23;
  v92 = v23;
  v93 = v30;
  v64 = v30;
  v68 = v26;
  v94 = v26;
  v95 = v31;
  v65 = v31;
  v67 = swift_getOpaqueTypeMetadata2();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v62 = &v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = v81;
  v63 = &v59 - v36;
  v37 = *(v81 + 16);
  if ((*(v81 + 48) & 1) == 0)
  {
    v38 = *(v81 + 24);
    v39 = *(v81 + 32);
    v40 = *(v81 + 40);

    sub_1A524D254();
    v41 = sub_1A524A014();
    sub_1A5246DF4();

    v42 = v59;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v37, v38, v39, v40, 0);
    v34 = (*(v60 + 8))(v42, v61);
  }

  MEMORY[0x1EEE9AC00](v34);
  v43 = v83;
  v44 = v84;
  *(&v59 - 4) = v83;
  *(&v59 - 3) = v44;
  v45 = v69;
  *(&v59 - 2) = v69;
  *(&v59 - 1) = v35;
  sub_1A5249574();
  v46 = v74;
  sub_1A524B884();
  v47 = sub_1A3F81B7C();
  MEMORY[0x1EEE9AC00](v47);
  *(&v59 - 4) = v43;
  *(&v59 - 3) = v44;
  *(&v59 - 2) = v45;
  *(&v59 - 1) = v35;
  swift_checkMetadataState();
  v48 = v72;
  v49 = v79;
  sub_1A524A584();
  (*(v80 + 8))(v46, v49);
  v50 = sub_1A3F81B7C();
  MEMORY[0x1EEE9AC00](v50);
  *(&v59 - 4) = v43;
  *(&v59 - 3) = v44;
  *(&v59 - 2) = v45;
  *(&v59 - 1) = v35;
  swift_checkMetadataState();
  v51 = v62;
  v52 = v78;
  sub_1A524A584();
  (*(v76 + 8))(v48, v52);
  v53 = v66;
  v54 = *(v66 + 16);
  v55 = v63;
  v56 = v67;
  v54(v63, v51, v67);
  v57 = *(v53 + 8);
  v57(v51, v56);
  v54(v82, v55, v56);
  return (v57)(v55, v56);
}

uint64_t sub_1A3F8044C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v158 = a3;
  v152 = a1;
  v147 = a5;
  v126 = a4;
  v6 = *(a4 + 8);
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v157 = swift_getAssociatedTypeWitness();
  v109 = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v127 = v6;
  v92 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v91 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v120 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v118 = &v91 - v11;
  v12 = MEMORY[0x1E69E69B8];
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], MEMORY[0x1E6980A08]);
  v13 = sub_1A5248804();
  v122 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v144 = &v91 - v14;
  v124 = v7;
  v121 = v10;
  v15 = swift_getAssociatedConformanceWitness();
  v16 = sub_1A3F8AB08(&qword_1EB1220A8, &qword_1EB1220A0, &qword_1EB126538, v12);
  v105 = v15;
  v168[5] = v15;
  v168[6] = v16;
  WitnessTable = swift_getWitnessTable();
  v18 = sub_1A3D5F9DC();
  v19 = MEMORY[0x1E69E6158];
  v159 = v13;
  v160 = MEMORY[0x1E69E6158];
  v161 = WitnessTable;
  v162 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v112 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v107 = &v91 - v21;
  v123 = v13;
  v159 = v13;
  v160 = v19;
  v113 = WitnessTable;
  v161 = WitnessTable;
  v162 = v18;
  v111 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v159 = OpaqueTypeMetadata2;
  v160 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeMetadata2();
  v119 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v116 = &v91 - v24;
  v114 = OpaqueTypeMetadata2;
  v159 = OpaqueTypeMetadata2;
  v160 = OpaqueTypeConformance2;
  v106 = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeConformance2();
  v151 = v23;
  v159 = v23;
  v160 = v25;
  v150 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v145 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v117 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v108 = &v91 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v110 = &v91 - v31;
  v102 = swift_checkMetadataState();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v91 - v32;
  v137 = swift_checkMetadataState();
  v104 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v91 - v33;
  v103 = *(AssociatedConformanceWitness + 16);
  v115 = AssociatedTypeWitness;
  v34 = swift_getAssociatedTypeWitness();
  v156 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v135 = &v91 - v35;
  v146 = v26;
  v143 = sub_1A524DF24();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v140 = &v91 - v38;
  v39 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v91 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2;
  v44 = swift_getAssociatedTypeWitness();
  v133 = sub_1A524DF24();
  v132 = *(v133 - 1);
  MEMORY[0x1EEE9AC00](v133);
  v46 = &v91 - v45;
  v134 = sub_1A5248804();
  v157 = sub_1A524DF24();
  v47 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v138 = &v91 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v139 = &v91 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v155 = &v91 - v52;
  v148 = v34;
  v154 = sub_1A524DF24();
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v129 = &v91 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v54);
  v57 = &v91 - v56;
  v58 = v152;
  v59 = v152[1];
  (*(*v59 + 192))(v55);
  v60 = *(v39 + 16);
  v96 = v59 + *(*v59 + 96);
  v97 = v39 + 16;
  v95 = v60;
  v60(v42);
  v61 = *(v158 + 88);
  v128 = *v58;
  v61();
  v62 = *(v39 + 8);
  v98 = v42;
  v99 = v39 + 8;
  v94 = v62;
  v62(v42, v43);
  v63 = *(v44 - 8);
  v64 = (*(v63 + 48))(v46, 1, v44);
  v125 = v43;
  if (v64 == 1)
  {
    (*(v132 + 8))(v46, v133);
    v65 = v139;
    (*(*(v134 - 8) + 56))(v139, 1, 1, v134);
    v66 = swift_getAssociatedConformanceWitness();
    v67 = v148;
  }

  else
  {
    v67 = v148;
    v68 = (*(v156 + 48))(v57, 1, v148);
    LODWORD(v133) = v68 != 1;
    v69 = 0x7FF0000000000000;
    if (v68 != 1)
    {
      v69 = 0;
    }

    v132 = v69;
    sub_1A524BC74();
    v66 = swift_getAssociatedConformanceWitness();
    v70 = v139;
    sub_1A524AFE4();
    v65 = v70;
    (*(v63 + 8))(v46, v44);
    (*(*(v134 - 8) + 56))(v70, 0, 1, v134);
  }

  v168[3] = v66;
  v168[4] = MEMORY[0x1E697EBF8];
  v168[2] = swift_getWitnessTable();
  v71 = v157;
  v132 = swift_getWitnessTable();
  v72 = *(v47 + 16);
  v131 = v47 + 16;
  v130 = v72;
  v72(v155, v65, v71);
  v73 = *(v47 + 8);
  v139 = (v47 + 8);
  v133 = v73;
  v73(v65, v71);
  v74 = v153;
  v75 = *(v153 + 16);
  v76 = v129;
  v134 = v57;
  v77 = v154;
  v75(v129, v57, v154);
  v78 = v156;
  if ((*(v156 + 48))(v76, 1, v67) != 1)
  {
    v80 = v135;
    (*(v78 + 32))(v135, v76, v67);
    (*(*v59 + 352))(v80);
    swift_checkMetadataState();
    sub_1A5242604();
    sub_1A5246234();
  }

  (*(v74 + 8))(v76, v77);
  v79 = v141;
  (*(v145 + 56))(v141, 1, 1, v146);
  v81 = v142;
  v82 = *(v142 + 16);
  v83 = v140;
  v84 = v143;
  v82(v140, v79, v143);
  v85 = *(v81 + 8);
  v85(v79, v84);
  v86 = v138;
  v87 = v155;
  v88 = v157;
  v130(v138, v155, v157);
  v159 = v86;
  v82(v79, v83, v84);
  v160 = v79;
  v168[0] = v88;
  v168[1] = v84;
  v164 = v151;
  v165 = v150;
  v166 = v132;
  v163 = swift_getOpaqueTypeConformance2();
  v167 = swift_getWitnessTable();
  sub_1A3DF4988(&v159, 2uLL, v168);
  v85(v83, v84);
  v89 = v133;
  v133(v87, v88);
  (*(v153 + 8))(v134, v154);
  v85(v79, v84);
  return v89(v86, v88);
}

uint64_t sub_1A3F81B7C()
{
  v0 = sub_1A5242D14();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_1A3F8853C(sub_1A3E71AC8, sub_1A3E71AC8, MEMORY[0x1E69C2218], &v10 - v5);
  (*(v1 + 104))(v3, *MEMORY[0x1E69C21F0], v0);
  v7 = sub_1A5242D04();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

void sub_1A3F81CFC(void *a1, uint64_t a2)
{
  v4 = *a1;
  sub_1A3F894A4(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v18 = (*(v4 + 216))(v7);
  v16 = a2;
  v17 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v8 = sub_1A524CB74();
  v9 = sub_1A5242F44();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1A3F3DF4C(sub_1A3F8961C, v15, v8, v9, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);

  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = v12;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = a1;
  swift_retain_n();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3F81FC0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = sub_1A5249234();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F88B18();
  v36 = type metadata accessor for LemonadeSectionedFeedTabBar();
  v37 = sub_1A5249754();
  v5 = sub_1A5249754();
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v8 = sub_1A5248804();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for LemonadeSectionedTabbedFeed();
  v16 = sub_1A3F82458(v15, v7);
  v17 = 0.0;
  if (MEMORY[0x1A590D320](v16))
  {
    v18 = a1 + *(v15 + 56);
    v19 = *(v18 + 8);
    if (*(v18 + 32) == 1)
    {
      v17 = *(v18 + 8);
    }

    else
    {
      v20 = *v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      v32 = v22;
      v31 = v21;

      sub_1A524D254();
      v23 = sub_1A524A014();
      sub_1A5246DF4();

      v24 = v33;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3D35A84(v20, v19, v32, v31, 0);
      (*(v34 + 8))(v24, v35);
      v17 = v40;
    }
  }

  static EdgeInsets.symmetric(horizontal:vertical:)(v17, 12.0);
  v25 = sub_1A3F88C24();
  WitnessTable = swift_getWitnessTable();
  v45 = v25;
  v46 = WitnessTable;
  v43 = swift_getWitnessTable();
  v44 = MEMORY[0x1E6981E60];
  v27 = swift_getWitnessTable();
  sub_1A524B0C4();
  (*(v38 + 8))(v7, v5);
  v41 = v27;
  v42 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v28 = *(v9 + 16);
  v28(v14, v11, v8);
  v29 = *(v9 + 8);
  v29(v11, v8);
  v28(v39, v14, v8);
  return (v29)(v14, v8);
}