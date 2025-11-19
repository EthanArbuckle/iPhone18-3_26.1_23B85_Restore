void *sub_1A466A350()
{
  v1 = v0;
  sub_1A466B290();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1A466A484()
{
  v1 = v0;
  v2 = *v0;
  sub_1A466B290();
  result = sub_1A524E3B4();
  v4 = result;
  if (*(v2 + 16))
  {
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
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1A524EC94();
      MEMORY[0x1A590A010](v15);
      result = sub_1A524ECE4();
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
      *(*(v4 + 48) + v11) = v15;
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

        v1 = v0;
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

void sub_1A466A698()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0033AssetResultsScrollPositionManager_shouldResetAgainAfterDataSourceChange;
  if (*(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0033AssetResultsScrollPositionManager_shouldResetAgainAfterDataSourceChange) == 1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0033AssetResultsScrollPositionManager_resetScrollPosition);
    if (v2)
    {

      v2(v3);
      sub_1A3C33378(v2);
    }

    *(v0 + v1) = 0;
  }
}

uint64_t sub_1A466A71C(void *a1)
{
  v3 = (*(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0031AssetResultsViewDelegateManager_resignSearchBarFirstResponder))();
  (*(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0031AssetResultsViewDelegateManager_saveSearchResults))(v3);
  [a1 asset];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    if ([a1 sectionObject])
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6 && (v7 = [v6 transientIdentifier]) != 0)
      {
        v8 = v7;
        v9 = sub_1A524C674();
        v11 = v10;

        if (v9 == sub_1A524C674() && v11 == v12)
        {
          v13 = 1;
        }

        else
        {
          v13 = sub_1A524EAB4();
        }
      }

      else
      {
        v13 = 0;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0031AssetResultsViewDelegateManager_reportAssetResultSelectedAnalytics);
    swift_unknownObjectRetain();
    v14(v5, v13 & 1);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1A466A904(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_1A4666354();
    *(v4 + OBJC_IVAR____TtC12PhotosUICore30PhotosSearchResultsCoordinator____lazy_storage___status) = a2;
    sub_1A46660E0(v5);
  }

  return result;
}

void sub_1A466A97C(char a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = sub_1A4666400();

    [v2 setHidden_];
  }
}

uint64_t sub_1A466A9F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 344))();
    v3 = v2;

    if (v1)
    {
      ObjectType = swift_getObjectType();
      (*(v3 + 16))(ObjectType, v3);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1A466AAB4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A4665818();
  }

  return result;
}

void sub_1A466AB08(void *a1, char a2)
{
  sub_1A46600E8(0, &qword_1EB126200, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v5;
  sub_1A3C52C70(0, &unk_1EB1265F0);
  *(inited + 48) = sub_1A524DC24();
  sub_1A452D80C(inited, &qword_1EB126430, &qword_1EB12B160);
  swift_setDeallocating();
  sub_1A466B4E4(inited + 32, sub_1A3F24E98);
  v6 = sub_1A524C674();
  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    swift_unknownObjectRetain();
    v9 = v10;
  }

  sub_1A454F230(v9, v6, v8);
  v11 = sub_1A524C674();
  v13 = v12;
  v14 = [objc_opt_self() mainBundle];
  v15 = [v14 bundleIdentifier];

  sub_1A454F230(v15, v11, v13);
  v16 = objc_opt_self();
  v17 = *MEMORY[0x1E6991CB0];
  sub_1A3C52C70(0, &qword_1EB12B160);
  v18 = v17;
  v19 = sub_1A524C3D4();
  [v16 sendEvent:v18 withPayload:v19];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = (*(*Strong + 344))(Strong);
    v23 = v22;

    if (v21)
    {
      ObjectType = swift_getObjectType();
      v25 = (*(v23 + 32))(ObjectType, v23);
      swift_unknownObjectRelease();
      if (v25)
      {
        v26 = [a1 uuid];
        if (v26)
        {
          v27 = v26;
          v28 = sub_1A524C674();
          if (*(v25 + 16))
          {
            v30 = sub_1A3C5DCA4(v28, v29);
            v32 = v31;

            if (v32)
            {
              v33 = *(*(v25 + 56) + 8 * v30);

              v34 = [v33 unsignedIntegerValue];

LABEL_15:

              v35 = [objc_opt_self() sharedSession];
              [v35 reportSearchAssetResultSelected:v27 isTopResult:a2 & 1 retrievalType:v34];

              return;
            }
          }

          else
          {
          }

          v34 = 0;
          goto LABEL_15;
        }
      }
    }
  }
}

uint64_t sub_1A466AF08()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 2;
  }

  v1 = (*(*Strong + 344))();
  v3 = v2;

  if (!v1)
  {
    return 2;
  }

  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 16))(ObjectType, v3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

void sub_1A466AFD4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1A466B03C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 544))(sub_1A4664DA0, 0);
  }

  return result;
}

uint64_t sub_1A466B0D0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 1016))(result);
  }

  return result;
}

id sub_1A466B14C(void *a1)
{
  sub_1A46600E8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  v4 = v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_1A4667698(a1, v4);
}

id sub_1A466B1EC(void *a1)
{
  sub_1A3C451FC(v1 + 16, v7);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(v4 + 24))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    sub_1A3C2CE9C(v7);
    v5 = 0;
  }

  return [a1 setHidesSortOrderMenu_];
}

void sub_1A466B290()
{
  if (!qword_1EB13FA60)
  {
    sub_1A466B2EC();
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FA60);
    }
  }
}

unint64_t sub_1A466B2EC()
{
  result = qword_1EB172740;
  if (!qword_1EB172740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB172740);
  }

  return result;
}

uint64_t sub_1A466B39C()
{
  result = sub_1A5247EA4();
  if (result)
  {
    result = (*(*v0 + 344))();
    if (result)
    {
      v3 = v2;
      ObjectType = swift_getObjectType();
      (*(v3 + 16))(ObjectType, v3);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1A466B438()
{
  if (!qword_1EB13FA68)
  {
    sub_1A4669BE4();
    sub_1A4669918(&qword_1EB1294F8, sub_1A4669BE4);
    v0 = type metadata accessor for PhotosSearchCollectionResultsController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FA68);
    }
  }
}

uint64_t sub_1A466B4E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A466B54C(void *a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = [a1 viewModel];
    aBlock[4] = sub_1A4660DA4;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D7692C;
    aBlock[3] = &block_descriptor_191_0;
    v3 = _Block_copy(aBlock);
    [v2 performChanges_];
    _Block_release(v3);

    v4 = sub_1A46659FC();
    v5 = [a1 viewModel];
    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x90))();

    v6 = sub_1A4665560();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = &v6[OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0033AssetResultsScrollPositionManager_resetScrollPosition];
    v9 = *&v6[OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0033AssetResultsScrollPositionManager_resetScrollPosition];
    *v8 = sub_1A466B900;
    v8[1] = v7;

    sub_1A3C33378(v9);

    v10 = [a1 viewModel];
    v11 = [v10 gridActionManager];

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      v14 = sub_1A46655D0();
      [v13 setUserInfoDelegate_];
    }

    else
    {
    }
  }
}

uint64_t sub_1A466B7D0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 464))();
    TTRWorkflow.init(stepsBuilder:)(sub_1A466938C, &v1);
    swift_allocObject();
    swift_weakInit();

    TTRWorkflow.present(in:completion:)();
  }

  return result;
}

void sub_1A466B900()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong resetScrollPositionAnimated_];
  }
}

uint64_t sub_1A466B95C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 1024))(result);
  }

  return result;
}

void *sub_1A466BAAC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 304))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A466BB10(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 312))(&v4);
}

uint64_t sub_1A466BB70(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__zoomLevel;
  swift_beginAccess();
  sub_1A4188660();
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 936))(v6);
  }

  return result;
}

void (*sub_1A466BCC8(uint64_t *a1))(void *a1)
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

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C3DA2C(&qword_1EB12A1E0, type metadata accessor for LemonadeRootViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A466BA38();
  return sub_1A466BE18;
}

uint64_t sub_1A466BE84()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  v1 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__wantsSidebarToggleButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A466BF0C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A466BFB4(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__wantsSidebarToggleButton;
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
    (*(*v1 + 936))(v6);
  }

  return result;
}

uint64_t sub_1A466C0B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__wantsSidebarToggleButton;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void (*sub_1A466C114(uint64_t *a1))(void *a1)
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

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C3DA2C(&qword_1EB12A1E0, type metadata accessor for LemonadeRootViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A466BE24();
  return sub_1A466C264;
}

uint64_t sub_1A466C2AC()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopSignal);
}

uint64_t sub_1A466C318@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  return result;
}

uint64_t sub_1A466C394(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopSignal) != result)
  {
    v2 = result;
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    v5 = v1;
    v6 = v2;
    (*(*v1 + 936))(v4);
  }

  return result;
}

double sub_1A466C494()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopAnimationDuration);
}

void sub_1A466C57C(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopAnimationDuration) == a1)
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopAnimationDuration) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 936))(v3);
  }
}

double sub_1A466C674()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopAnimationDuration) = result;
  return result;
}

uint64_t sub_1A466C68C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 928))();

  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollRequest;
  swift_beginAccess();
  return sub_1A466C7B0(v1 + v3, a1);
}

uint64_t sub_1A466C7B0(uint64_t a1, uint64_t a2)
{
  sub_1A46717CC(0, &qword_1EB125930, &type metadata for LemonadeRootViewModel.ScrollRequest, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A466C838(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollRequest;
  swift_beginAccess();
  sub_1A466C7B0(v1 + v3, v9);
  sub_1A466C7B0(v9, v13);
  sub_1A466C7B0(a1, &v14);
  if (v13[40] != 0xFF)
  {
    sub_1A466C7B0(v13, v12);
    if (v15[24] != 0xFF)
    {
      v10 = v14;
      v11[0] = *v15;
      *(v11 + 10) = *&v15[10];
      if (sub_1A3F6816C(v12, &v10))
      {
        v7 = v12[41];
        v8 = BYTE9(v11[1]);
        sub_1A44839F4(&v10);
        sub_1A44839F4(v12);
        sub_1A467043C(v13);
        sub_1A467043C(v9);
        if (v7 == v8)
        {
          goto LABEL_4;
        }

LABEL_9:
        KeyPath = swift_getKeyPath();
        v5 = MEMORY[0x1EEE9AC00](KeyPath);
        (*(*v1 + 936))(v5);

        return sub_1A467043C(a1);
      }

      sub_1A44839F4(&v10);
      sub_1A44839F4(v12);
      sub_1A467043C(v13);
LABEL_8:
      sub_1A467043C(v9);
      goto LABEL_9;
    }

    sub_1A44839F4(v12);
LABEL_7:
    sub_1A3C79538(v13, sub_1A46718A4);
    goto LABEL_8;
  }

  if (v15[24] != 0xFF)
  {
    goto LABEL_7;
  }

  sub_1A467043C(v13);
  sub_1A467043C(v9);
LABEL_4:
  sub_1A466C7B0(a1, v13);
  swift_beginAccess();
  sub_1A46704BC(v13, v1 + v3);
  swift_endAccess();
  return sub_1A467043C(a1);
}

float64_t sub_1A466CAF4(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5 = (v4 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___containerSafeAreaInsets);
  swift_beginAccess();
  v6.f64[0] = a1;
  v6.f64[1] = a2;
  v7.f64[0] = a3;
  v7.f64[1] = a4;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v5, v6), vceqq_f64(v5[1], v7)))))
  {
    v5->f64[0] = a1;
    v5->f64[1] = a2;
    result = a4;
    v5[1].f64[0] = a3;
    v5[1].f64[1] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v4 + 936))();
  }

  return result;
}

void sub_1A466CC3C(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___containerSize);
  v6 = swift_beginAccess();
  v7.n128_f64[0] = *v5;
  v8.n128_f64[0] = v5[1];
  if (*v5 == a1 && v8.n128_f64[0] == a2)
  {
    *v5 = a1;
    v5[1] = a2;
    v12 = (*(*v2 + 632))(v6, v7, v8);
    sub_1A46E1E74(v12, v13);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v11 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 936))(v11);
  }
}

uint64_t sub_1A466CD8C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___horizontalSizeClass;
  swift_beginAccess();
  sub_1A3F17D14();
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 936))(v6);
  }

  return result;
}

uint64_t sub_1A466CEC4(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___verticalSizeClass;
  swift_beginAccess();
  sub_1A4188350();
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 936))(v6);
  }

  return result;
}

uint64_t sub_1A466CFFC(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___orientation;
  swift_beginAccess();
  sub_1A41883A8();
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 936))(v6);
  }

  return result;
}

uint64_t sub_1A466D134(uint64_t a1, void *a2)
{
  v33 = a2;
  v3 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*a1 + 560))(v5);
  v9 = *(v8 + 16);
  v34 = a1;
  if (v9)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1A3C4ED58(0, v9, 0);
    v10 = v36;
    v11 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_1A4671764(v11, v7, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      sub_1A3C5322C();
      sub_1A3C79538(v7, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      v13 = v35;
      v36 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1A3C4ED58((v14 > 1), v15 + 1, 1);
        v10 = v36;
      }

      *(v10 + 16) = v15 + 1;
      *(v10 + v15 + 32) = v13;
      v11 += v12;
      --v9;
    }

    while (v9);

    a1 = v34;
    v16 = *(v10 + 16);
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_16:
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v10 = MEMORY[0x1E69E7CC0];
  v16 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v16)
  {
    goto LABEL_16;
  }

LABEL_7:
  v17 = *(*a1 + 432);
  v18 = (v10 + 32);
  v19 = MEMORY[0x1E69E7CC0];
  do
  {
    v23 = *v18++;
    v22 = v23;
    v35 = v23;
    if ((v17(&v35) & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A3C4ED58(0, *(v19 + 16) + 1, 1);
        v19 = v36;
      }

      v21 = *(v19 + 16);
      v20 = *(v19 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1A3C4ED58((v20 > 1), v21 + 1, 1);
        v19 = v36;
      }

      *(v19 + 16) = v21 + 1;
      *(v19 + v21 + 32) = v22;
      a1 = v34;
    }

    --v16;
  }

  while (v16);
LABEL_17:

  type metadata accessor for LemonadeAnalyticsCustomization();
  v25 = sub_1A47E502C();
  type metadata accessor for LemonadeLibraryDefaultsShelvesDataSource();
  v26 = *static LemonadeLibraryDefaultsShelvesDataSource.defaultsShelvesDataSource(for:)(v33);
  v27 = (*(v26 + 576))();

  v29 = (*(*a1 + 1104))(v28);
  PHPhotoLibrary.lemonadeBookmarksManager.getter();
  v30 = sub_1A42E12AC();

  v31 = *(v19 + 16);

  (*(*v25 + 120))(v27 & 1, v29, v30, v31);
}

uint64_t sub_1A466D540(uint64_t a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*a1 + 536))(v4);
  v8 = sub_1A4531AA8();
  (*(v3 + 16))(v6, v8, v2);
  v9 = sub_1A5246F04();
  v10 = sub_1A524D264();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v7 & 1;
    _os_log_impl(&dword_1A3C1C000, v9, v10, "PXPhotosResetViewNotification success:%{BOOL}d", v11, 8u);
    MEMORY[0x1A590EEC0](v11, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1A466D6EC(char a1)
{
  v3 = (*(*v1 + 448))();
  if (a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopAnimationDuration;
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopAnimationDuration) == v4)
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopAnimationDuration) = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 936))(v7);
  }

  swift_getKeyPath();
  (*(*v1 + 928))();

  swift_getKeyPath();
  sub_1A3C3DA2C(&qword_1EB12A1E0, type metadata accessor for LemonadeRootViewModel);
  sub_1A52415F4();

  ++*(v1 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopSignal);
  swift_getKeyPath();
  sub_1A52415E4();

  if (*(v1 + v5) == v3)
  {
    *(v1 + v5) = v3;
  }

  else
  {
    v9 = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](v9);
    (*(*v1 + 936))(v10);
  }

  return result;
}

uint64_t sub_1A466D9E8()
{
  v1 = sub_1A46E59CC();
  if (v1)
  {
    (*(*v0 + 528))(0);
    sub_1A5243B04();
  }

  return v1 & 1;
}

uint64_t sub_1A466DA88()
{
  if (sub_1A4630760()[2] == 1)
  {
    return (*(**(v0 + 40) + 144))() & 1;
  }

  else
  {
    return 0;
  }
}

double sub_1A466DB48()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___containerSafeAreaInsets;
  swift_beginAccess();
  return *v1;
}

void sub_1A466DBD8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 584))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void (*sub_1A466DC84(uint64_t *a1))(void *a1)
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

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C3DA2C(&qword_1EB12A1E0, type metadata accessor for LemonadeRootViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A466DAE8();
  return sub_1A466DDD4;
}

void (*sub_1A466DDE0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A466DE44;
}

void sub_1A466DE44(uint64_t a1, char a2)
{
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = (*(**(a1 + 24) + 632))(v4);
    sub_1A46E1E74(v5, v6);
  }
}

double sub_1A466DEAC()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___containerSize;
  swift_beginAccess();
  return *v1;
}

void (*sub_1A466DFDC(uint64_t *a1))(void *a1)
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

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C3DA2C(&qword_1EB12A1E0, type metadata accessor for LemonadeRootViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A466DDE0(v4);
  return sub_1A466E12C;
}

uint64_t sub_1A466E198@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 928))();

  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___horizontalSizeClass;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void *sub_1A466E230@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 680))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A466E294(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 688))(&v4);
}

void (*sub_1A466E2F4(uint64_t *a1))(void *a1)
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

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C3DA2C(&qword_1EB12A1E0, type metadata accessor for LemonadeRootViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A466E138();
  return sub_1A466E444;
}

uint64_t sub_1A466E4C4@<X0>(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  (*(*v2 + 928))();

  v5 = *a1;
  result = swift_beginAccess();
  *a2 = *(v2 + v5);
  return result;
}

void *sub_1A466E554@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 728))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A466E5B8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 736))(&v4);
}

void (*sub_1A466E618(uint64_t *a1))(void *a1)
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

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C3DA2C(&qword_1EB12A1E0, type metadata accessor for LemonadeRootViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A466E450();
  return sub_1A466E768;
}

uint64_t sub_1A466E7D4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 928))();

  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___orientation;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void *sub_1A466E86C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 776))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A466E8D0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 784))(&v4);
}

void (*sub_1A466E930(uint64_t *a1))(void *a1)
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

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C3DA2C(&qword_1EB12A1E0, type metadata accessor for LemonadeRootViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A466E774();
  return sub_1A466EA80;
}

uint64_t sub_1A466EA8C(uint64_t a1, char a2)
{
  sub_1A3F683AC(a1, v4);
  v4[41] = a2;
  return sub_1A466C838(v4);
}

uint64_t sub_1A466EAC8()
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  v3 = 255;
  return sub_1A466C838(v1);
}

uint64_t sub_1A466EB4C(char *a1)
{
  v2 = *(v1 + 64);
  v4 = *a1;
  return (*(*v2 + 744))(&v4);
}

uint64_t (*sub_1A466EBAC(void *a1))(uint64_t *a1, char a2)
{
  v2 = *(v1 + 64);
  *a1 = v2;
  (*(*v2 + 736))();
  return sub_1A466EC2C;
}

uint64_t sub_1A466EC2C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(a1 + 8);
    return (*(*v2 + 744))(&v4);
  }

  else
  {
    v5 = *(a1 + 8);
    return (*(*v2 + 744))(&v5);
  }
}

void (*sub_1A466EDA0(char *a1))(void)
{
  v2 = v1;
  v3 = *(v1 + 64);
  v9 = *a1;
  v4 = (*(*v3 + 640))(&v9);
  result = (*(*v2 + 904))(v4);
  if (result)
  {
    v7 = v6;
    v8 = result;
    result();

    return sub_1A3C784D4(v8, v7);
  }

  return result;
}

void (*(*sub_1A466EE7C(void *a1))(uint64_t *a1, char a2))(void)
{
  v2 = *(v1 + 64);
  *a1 = v1;
  a1[1] = v2;
  (*(*v2 + 632))();
  return sub_1A466EEF4;
}

void (*sub_1A466EEF4(uint64_t *a1, char a2))(void)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v9 = *(a1 + 16);
    v4 = (*(*v3 + 640))(&v9);
  }

  else
  {
    v10 = *(a1 + 16);
    v4 = (*(*v3 + 640))(&v10);
  }

  result = (*(*v2 + 904))(v4);
  if (result)
  {
    v7 = v6;
    v8 = result;
    result();

    return sub_1A3C784D4(v8, v7);
  }

  return result;
}

uint64_t sub_1A466F05C()
{
  swift_getKeyPath();
  (*(*v0 + 928))();

  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__displayStateChangedHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1);
  return v2;
}

uint64_t sub_1A466F0FC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 904))();
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

uint64_t sub_1A466F194(uint64_t *a1, uint64_t a2)
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

  v7 = *(**a2 + 912);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

uint64_t sub_1A466F254(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v6 = v2;
  v7 = a1;
  v8 = a2;
  (*(*v2 + 936))();
  sub_1A3C784D4(a1, a2);
}

void (*sub_1A466F310(uint64_t *a1))(void *a1)
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

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C3DA2C(&qword_1EB12A1E0, type metadata accessor for LemonadeRootViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A466EFFC();
  return sub_1A466F460;
}

uint64_t sub_1A466F5AC()
{
  swift_unknownObjectRelease();

  sub_1A3C79538(v0 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel_cellSpecs, sub_1A3C39450);
  sub_1A467043C(v0 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollRequest);
  sub_1A3C784D4(*(v0 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__displayStateChangedHandler), *(v0 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__displayStateChangedHandler + 8));
  v1 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A466F6AC()
{
  sub_1A466F5AC();

  return swift_deallocClassInstance();
}

void (*sub_1A466F75C(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*(*v1 + 648))();
  return sub_1A3E62A10;
}

void (*sub_1A466F84C(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*(*v1 + 600))();
  return sub_1A3E658B0;
}

void (*sub_1A466F964(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*(*v1 + 696))();
  return sub_1A3E658B0;
}

void (*sub_1A466FA7C(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*(*v1 + 744))();
  return sub_1A3E658B0;
}

void (*sub_1A466FB94(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*(*v1 + 792))();
  return sub_1A3E658B0;
}

void (*sub_1A466FCAC(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*(*v1 + 832))();
  return sub_1A3E658B0;
}

void (*sub_1A466FE1C(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*(*v1 + 872))();
  return sub_1A3E658B0;
}

void (*sub_1A466FF0C(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*(*v1 + 920))();
  return sub_1A3E658B0;
}

void (*sub_1A4670024(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*(*v1 + 320))();
  return sub_1A3E658B0;
}

uint64_t sub_1A46702F4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LemonadeRootViewModel();
  result = sub_1A52478D4();
  *a1 = result;
  return result;
}

uint64_t sub_1A4670334(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1A524CC54();
  swift_unknownObjectRetain();
  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = v2;
  swift_unknownObjectRetain();
  v9 = sub_1A524CC44();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v8;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v3;

  return sub_1A524B944();
}

uint64_t sub_1A467043C(uint64_t a1)
{
  sub_1A46717CC(0, &qword_1EB125930, &type metadata for LemonadeRootViewModel.ScrollRequest, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A46704BC(uint64_t a1, uint64_t a2)
{
  sub_1A46717CC(0, &qword_1EB125930, &type metadata for LemonadeRootViewModel.ScrollRequest, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4670544()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollRequest;
  swift_beginAccess();
  sub_1A467181C(v1, v2 + v3);
  return swift_endAccess();
}

void sub_1A46705AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A5243B24();
  swift_allocObject();
  v5[11] = sub_1A5243B14();
  *(v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__zoomLevel) = *sub_1A44DAFD8();
  *(v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__wantsSidebarToggleButton) = 0;
  *(v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopSignal) = 0;
  *(v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollToTopAnimationDuration) = 0x3FE0000000000000;
  v9 = v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__scrollRequest;
  *(v9 + 4) = 0;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 20) = 255;
  *(v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel_verticalMargin) = 0;
  v10 = (v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___containerSafeAreaInsets);
  *v10 = 0u;
  v10[1] = 0u;
  v11 = (v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___containerSize);
  *v11 = 0;
  v11[1] = 0;
  *(v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___horizontalSizeClass) = 2;
  *(v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___verticalSizeClass) = 0;
  *(v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___orientation) = 1;
  v12 = (v5 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__displayStateChangedHandler);
  *v12 = 0;
  v12[1] = 0;
  sub_1A5241604();
  v5[2] = a1;
  v5[3] = a2;
  type metadata accessor for LemonadePhotoLibraryContext();
  v13 = a1;
  swift_unknownObjectRetain();
  v14 = PHPhotoLibrary.lemonadeBookmarksManager.getter();
  LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v13, 0, v14);
  sub_1A3C3B2D4();

  sub_1A3C3DD04(v15, a5);
  type metadata accessor for PhotosXCPTestUtilities();
  sub_1A3C4CE7C(&aBlock);
  v16 = v30;
  if (v30 == 255)
  {
    v25 = type metadata accessor for LemonadeLibraryDefaultsShelvesDataSource();
    v22 = static LemonadeLibraryDefaultsShelvesDataSource.defaultsShelvesDataSource(for:)(v13);
    v32 = v25;
    v23 = &unk_1EB1250C8;
    v24 = type metadata accessor for LemonadeLibraryDefaultsShelvesDataSource;
  }

  else
  {
    v17 = aBlock;
    v18 = v28;
    v19 = v29;
    v20 = type metadata accessor for LemonadeTestShelvesDataSource();
    aBlock = v17;
    v28 = v18;
    v29 = v19;
    LOBYTE(v30) = v16 & 1;
    v21 = v13;
    sub_1A4396980(v17, v18, v19, v16);
    v22 = sub_1A4688E40(v21, &aBlock);
    sub_1A439690C(v17, v18, v19, v16);
    v32 = v20;
    v23 = &unk_1EB13FA88;
    v24 = type metadata accessor for LemonadeTestShelvesDataSource;
  }

  v33 = sub_1A3C3DA2C(v23, v24);
  v31 = v22;
  v26 = *(**sub_1A3C29A08() + 112);

  v26(0);
  v26(1);
  sub_1A5242164();
  sub_1A5242144();
  sub_1A5242154();
  [objc_msgSend(objc_opt_self() sharedScheduler)];
  type metadata accessor for LemonadeRootSubtitleModel();
  LOBYTE(aBlock) = 1;
  LemonadeRootSubtitleModel.__allocating_init(photoLibrary:tabIdentifier:)(v13, &aBlock);
}

__n128 sub_1A4670DC4()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___containerSafeAreaInsets);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_beginAccess();
  result = v4;
  *v1 = v4;
  v1[1] = v3;
  return result;
}

void sub_1A4670E28()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___containerSize);
  v5 = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  v6 = (*(*v1 + 632))(v5);
  sub_1A46E1E74(v6, v7);
}

uint64_t sub_1A4670F18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel___orientation;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1A4670F74()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + OBJC_IVAR____TtC12PhotosUICore21LemonadeRootViewModel__displayStateChangedHandler);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_1A3C66EE8(v2);
  return sub_1A3C784D4(v5, v6);
}

uint64_t objectdestroyTm_70()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1A4671070(_BYTE *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  LOBYTE(v8[0]) = *a1;
  (*(v3 + 32))(v8, v2);
  v4 = objc_opt_self();
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000038, 0x80000001A53E2C90);
  v5 = LemonadeShelvesLayoutStyle.rawValue.getter();
  MEMORY[0x1A5907B60](v5);

  v7 = sub_1A524C634();

  sub_1A3E75770(MEMORY[0x1E69E7CC0]);
  sub_1A3C7B6A4();
  v6 = sub_1A524C3D4();

  [v4 sendEvent:v7 withPayload:v6];
}

uint64_t sub_1A46711B8(uint64_t a1)
{
  result = sub_1A3C3DA2C(&qword_1EB12A1E0, type metadata accessor for LemonadeRootViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4671210(uint64_t a1)
{
  result = sub_1A3C3DA2C(&qword_1EB125908, type metadata accessor for LemonadeRootViewModel);
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A4671284(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A46712CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

void sub_1A4671458()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = [objc_opt_self() px_sharedApplication];
  v3 = [v4 _launchTestName];
  [v4 finishedTest_];

  sub_1A5242134();
  (*(*v1 + 128))(0);
  [v2 applicationDidFinishExtendedLaunch];
}

void sub_1A4671558()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  sub_1A5242134();
  sub_1A5242124();
  (*(*v1 + 128))(1);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v7[4] = sub_1A467175C;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1A3C2E0D0;
  v7[3] = &block_descriptor_98_2;
  v5 = _Block_copy(v7);

  v6 = v3;

  px_perform_after_ca_commit(v5);
  _Block_release(v5);
}

uint64_t sub_1A4671698()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1A524CC54();
    sub_1A3C67884(sub_1A4671730, v1);
  }

  return result;
}

uint64_t sub_1A4671764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A46717CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A467181C(uint64_t a1, uint64_t a2)
{
  sub_1A46717CC(0, &qword_1EB125930, &type metadata for LemonadeRootViewModel.ScrollRequest, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1A46718A4()
{
  if (!qword_1EB125920)
  {
    sub_1A46717CC(255, &qword_1EB125930, &type metadata for LemonadeRootViewModel.ScrollRequest, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB125920);
    }
  }
}

id sub_1A467194C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosDetailsAssetProvenanceWidgetView();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosDetailsAssetProvenanceViewModel();
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v9 = v8();
  v10 = sub_1A3FBD1E0(v9);

  result = 0;
  if (v10)
  {
    v12 = *((*v7 & *v2) + 0x108);
    v13 = a1;
    v14 = v12();
    v15 = v8();
    v16 = sub_1A3FBBCFC(v13, v14, v15);
    v17 = sub_1A4671BAC();
    v18 = *((*v7 & *v16) + 0x110);
    v19 = v16;
    v18(v17 & 1);
    v20 = sub_1A4671BD0();
    (*((*v7 & *v19) + 0x128))(v20 & 1);
    (*((*v7 & *v2) + 0xE0))(v16);
    sub_1A4671BF4();
    v21 = v19;
    sub_1A49DBE00(v6);
    v22 = PXSecureLockscreenSwiftUIHostingController.__allocating_init(rootView:)(v6);

    return v22;
  }

  return result;
}

uint64_t sub_1A4671BAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore34PhotosDetailsAssetProvenanceWidget____lazy_storage___hasSiblingWidgetAbove);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + OBJC_IVAR____TtC12PhotosUICore34PhotosDetailsAssetProvenanceWidget____lazy_storage___hasSiblingWidgetAbove) = 0;
  }

  return v1 & 1;
}

uint64_t sub_1A4671BD0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore34PhotosDetailsAssetProvenanceWidget____lazy_storage___hasSiblingWidgetBelow);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + OBJC_IVAR____TtC12PhotosUICore34PhotosDetailsAssetProvenanceWidget____lazy_storage___hasSiblingWidgetBelow) = 0;
  }

  return v1 & 1;
}

void sub_1A4671BF4()
{
  if (!qword_1EB13FA90)
  {
    type metadata accessor for PhotosDetailsAssetProvenanceWidgetView();
    sub_1A4671C58();
    v0 = type metadata accessor for PXSecureLockscreenSwiftUIHostingController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FA90);
    }
  }
}

unint64_t sub_1A4671C58()
{
  result = qword_1EB13FA98;
  if (!qword_1EB13FA98)
  {
    type metadata accessor for PhotosDetailsAssetProvenanceWidgetView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FA98);
  }

  return result;
}

uint64_t sub_1A4671D9C()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x168))())
  {
    return 2;
  }

  if (sub_1A4671BAC())
  {
    return 2;
  }

  return 0;
}

double sub_1A4671E0C()
{
  v1 = sub_1A52486A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosDetailsAssetProvenanceWidgetView();
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))();
  v7 = [v6 contentSizeCategory];

  sub_1A412028C(v7, v4);
  v8 = sub_1A4394B64(v4, v5, &off_1EE6EE860);
  (*(v2 + 8))(v4, v1);
  return v8;
}

id sub_1A4672168()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsAssetProvenanceWidget();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MemoryEntity.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1A4675CDC(0, &qword_1EB1260C0, sub_1A40D7C08, MEMORY[0x1E69E6370], MEMORY[0x1E695A088]);
  swift_getKeyPath();
  sub_1A4105350();
  result = sub_1A523FE54();
  *a2 = a1;
  a2[1] = result;
  return result;
}

uint64_t MemoryEntity.id.getter()
{
  v1 = [*v0 uuid];
  v2 = sub_1A524C674();

  return v2;
}

uint64_t sub_1A46722CC(void *a1)
{
  v1 = [a1 uuid];
  v2 = sub_1A524C674();

  return v2;
}

uint64_t MemoryEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v19 = sub_1A5240214();
  v2 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5246E54();
  v17 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524D654();
  v18 = sub_1A4895DCC();
  v9 = *v18;
  sub_1A5246E44();
  sub_1A5246E04();

  v10 = *(v6 + 8);
  v16 = *v1;
  v10(v8, v5);
  v22 = v16;
  v11 = MEMORY[0x1E695A3C0];
  sub_1A4676010(0, &qword_1EB131A00, MEMORY[0x1E695A3C0], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A52FC9F0;
  sub_1A52401F4();
  sub_1A5240204();
  v21 = v12;
  sub_1A40D8D28();
  sub_1A4676010(0, &qword_1EB131A08, v11, MEMORY[0x1E69E62F8]);
  sub_1A40D8DE4();
  v13 = v19;
  sub_1A524E224();
  sub_1A4672650(v4, v20);
  (*(v2 + 8))(v4, v13);
  sub_1A524D644();
  v14 = *v18;
  sub_1A5246E44();
  sub_1A5246E04();

  return (v10)(v8, v17);
}

uint64_t sub_1A4672650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  v5 = sub_1A5240BB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5240214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E6720];
  sub_1A4676010(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v68 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - v16;
  sub_1A4676010(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v12);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v66 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v72 = &v56 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = *v3;
  v71 = v6;
  v28 = *(v6 + 56);
  v73 = &v56 - v29;
  v28(v26);
  v70 = v24;
  v62 = v28;
  (v28)(v24, 1, 1, v5);
  v30 = sub_1A5240244();
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v67 = v17;
  v60 = v32;
  v61 = v30;
  v59 = v31 + 56;
  v32(v17, 1, 1);
  sub_1A52401F4();
  sub_1A40D8D28();
  v65 = a1;
  LOBYTE(v24) = sub_1A524E114();
  v33 = *(v9 + 8);
  v63 = v9 + 8;
  v33(v11, v8);
  if (v24)
  {
    v34 = [v27 localizedTitle];
    v58 = v27;
    if (v34)
    {
      v35 = v34;
      sub_1A524C674();

      v57 = v8;
      v36 = v72;
      sub_1A5240B94();
      v37 = MEMORY[0x1E6968E10];
      v38 = v73;
      sub_1A4676074(v73, &qword_1EB12B008, MEMORY[0x1E6968E10]);
      (v62)(v36, 0, 1, v5);
      v39 = v36;
      v8 = v57;
      v27 = v58;
      sub_1A4676164(v39, v38, &qword_1EB12B008, v37);
    }

    v40 = [v27 subtitle];
    if (v40)
    {
      v41 = v40;
      sub_1A524C674();

      v42 = v8;
      v43 = v72;
      sub_1A5240B94();
      v44 = MEMORY[0x1E6968E10];
      v45 = v70;
      sub_1A4676074(v70, &qword_1EB12B008, MEMORY[0x1E6968E10]);
      (v62)(v43, 0, 1, v5);
      v46 = v43;
      v8 = v42;
      v27 = v58;
      sub_1A4676164(v46, v45, &qword_1EB12B008, v44);
    }
  }

  sub_1A5240204();
  v47 = sub_1A524E114();
  v33(v11, v8);
  v49 = v67;
  v48 = v68;
  if (v47)
  {
    sub_1A4896E90(v27);
  }

  v50 = v66;
  sub_1A46760E4(v73, v66, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  v51 = *(v71 + 48);
  if (v51(v50, 1, v5) == 1)
  {
    sub_1A5240B94();
    if (v51(v50, 1, v5) != 1)
    {
      sub_1A4676074(v50, &qword_1EB12B008, MEMORY[0x1E6968E10]);
    }
  }

  else
  {
    (*(v71 + 32))(v69, v50, v5);
  }

  v52 = MEMORY[0x1E6968E10];
  v53 = v70;
  sub_1A46760E4(v70, v72, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  v54 = MEMORY[0x1E695A3E8];
  sub_1A46760E4(v49, v48, &qword_1EB12B0F0, MEMORY[0x1E695A3E8]);
  sub_1A5240264();
  sub_1A4676074(v49, &qword_1EB12B0F0, v54);
  sub_1A4676074(v53, &qword_1EB12B008, v52);
  return sub_1A4676074(v73, &qword_1EB12B008, v52);
}

uint64_t MemoryEntity.displayRepresentation(with:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = sub_1A5246E54();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = *v2;

  return MEMORY[0x1EEE6DFA0](sub_1A4672E4C, 0, 0);
}

uint64_t sub_1A4672E4C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  sub_1A524D654();
  v6 = sub_1A4895DCC();
  v7 = *v6;
  sub_1A5246E44();
  sub_1A5246E04();

  v8 = *(v2 + 8);
  v8(v1, v3);
  sub_1A4672650(v4, v5);
  sub_1A524D644();
  v9 = *v6;
  sub_1A5246E44();
  sub_1A5246E04();

  v8(v1, v3);

  v10 = v0[1];

  return v10();
}

void sub_1A4672FE8(uint64_t *a1@<X8>)
{
  v3 = [*v1 uuid];
  v4 = sub_1A524C674();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_1A4673040(uint64_t a1)
{
  v2 = sub_1A4675FBC();

  return MEMORY[0x1EEDB39B0](a1, v2);
}

uint64_t sub_1A467308C(uint64_t a1)
{
  v2 = sub_1A4105350();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1A46730DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return MemoryEntity.displayRepresentation(with:)(a1, a2);
}

uint64_t sub_1A4673184(uint64_t a1)
{
  v2 = sub_1A4675BF4();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t MemoryEntityQuery.entities(for:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1A5246F24();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_1A5246E54();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A46732FC, 0, 0);
}

uint64_t sub_1A46732FC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v0[10] = *(v0[2] + 16);
  sub_1A524D654();
  v4 = sub_1A4895DCC();
  v0[11] = v4;
  v5 = *v4;
  sub_1A5246E44();
  sub_1A5246E04();

  v6 = *(v2 + 8);
  v0[12] = v6;
  v0[13] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  type metadata accessor for PXAppDependencyManager();
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1A4673458;

  return sub_1A4896234();
}

uint64_t sub_1A4673458(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A46735B4, 0, 0);
  }
}

id sub_1A46735B4()
{
  v1 = [*(v0 + 120) librarySpecificFetchOptions];
  [v1 setIncludeLocalMemories_];
  [v1 setIncludePendingMemories_];
  [v1 setIncludeStoryMemories_];
  v2 = objc_opt_self();
  v3 = sub_1A524CA14();
  v4 = [v2 fetchMemoriesWithLocalIdentifiers:v3 options:v1];

  if ([v4 count] < 1)
  {
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = *(v0 + 24);
    v11 = sub_1A3CB648C();
    (*(v9 + 16))(v8, v11, v10);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = [v4 fetchedObjects];
  if (result)
  {
    v6 = result;
    sub_1A3C52C70(0, &qword_1EB1265E0);
    v7 = sub_1A524CA34();

    if (!(v7 >> 62))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C52C70(0, &qword_1EB1265D0);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

uint64_t MemoryEntityQuery.displayRepresentations(for:requestedComponents:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = sub_1A5246E54();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_1A4673C80;

  return MemoryEntityQuery.entities(for:)(a1);
}

uint64_t sub_1A4673C80(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1A413F4AC;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1A4673DA8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A4673DA8()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v14 = v4;
  v13 = v0[2];
  sub_1A524D654();
  v5 = sub_1A4895DCC();
  v6 = *v5;
  sub_1A5246E44();
  sub_1A5246E04();

  v7 = *(v2 + 8);
  v7(v3, v4);
  v8 = swift_task_alloc();
  *(v8 + 16) = v13;
  v9 = sub_1A4674168(MEMORY[0x1E69E7CC8], sub_1A4675A00, v8, v1);

  sub_1A524D644();
  v10 = *v5;
  sub_1A5246E44();
  sub_1A5246E04();

  v7(v3, v14);

  v11 = v0[1];

  return v11(v9);
}

uint64_t sub_1A4673F80(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  sub_1A4676010(0, &qword_1EB1260B0, MEMORY[0x1E695A3F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v17 - v6;
  v8 = sub_1A5240274();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = *a2;
  v17[1] = v17[0];
  sub_1A4672650(a3, v11);
  v12 = [*&v17[0] uuid];
  v13 = sub_1A524C674();
  v15 = v14;

  (*(v9 + 16))(v7, v11, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_1A40DA2B0(v7, v13, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1A4674168(uint64_t result, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v11 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 32); ; ++i)
    {
      v10 = *i;
      v8 = v10;

      a2(&v11, &v10);
      v9 = v10;

      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v11;
      }
    }
  }

  return result;
}

uint64_t MemoryEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1A5246F24();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A467430C, 0, 0);
}

uint64_t sub_1A467430C()
{
  if ((sub_1A3DEFE6C() & 1) == 0)
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];
    v6 = sub_1A3CB648C();
    (*(v4 + 16))(v3, v6, v5);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  type metadata accessor for PXAppDependencyManager();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1A4674580;

  return sub_1A4896234();
}

uint64_t sub_1A4674580(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A46746FC, 0, 0);
  }
}

void sub_1A46746FC()
{
  v1 = *(v0 + 96);
  v4 = v0 + 16;
  v3 = *(v0 + 16);
  v2 = *(v4 + 8);
  v5 = [v1 librarySpecificFetchOptions];
  [v5 setIncludeLocalMemories_];
  [v5 setIncludePendingMemories_];
  [v5 setIncludeStoryMemories_];
  sub_1A3C4D5E4(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1A52F9DE0;
  sub_1A3C52C70(0, &qword_1EB126D20);
  sub_1A4676010(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A52FC9F0;
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1A3D710E8();
  strcpy((v6 + 32), "localizedTitle");
  *(v6 + 47) = -18;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 64) = v8;
  *(v6 + 72) = v3;
  *(v6 + 80) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46754B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1A40DB798;

  return MemoryEntityQuery.entities(matching:)(a2, a3);
}

uint64_t sub_1A4675558(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3FBBB04;

  return MemoryEntityQuery.entities(for:)(a1);
}

uint64_t sub_1A46755EC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3FBB594;

  return MemoryEntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2);
}

uint64_t sub_1A4675688(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1A4675AE4();
  *v5 = v2;
  v5[1] = sub_1A3CA8098;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

char *sub_1A4675740(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C4D5E4(0, &qword_1EB13FB28, &type metadata for MemoryEntity, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1A4675864(void *a1)
{
  result = [a1 count];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    sub_1A4675CDC(0, &qword_1EB1260C0, sub_1A40D7C08, MEMORY[0x1E69E6370], MEMORY[0x1E695A088]);
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = [a1 objectAtIndexedSubscript_];
      swift_getKeyPath();
      sub_1A4105350();
      v7 = v6;
      v8 = sub_1A523FE54();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1A4675740(0, *(v5 + 2) + 1, 1, v5);
      }

      v10 = *(v5 + 2);
      v9 = *(v5 + 3);
      if (v10 >= v9 >> 1)
      {
        v5 = sub_1A4675740((v9 > 1), v10 + 1, 1, v5);
      }

      ++v4;

      *(v5 + 2) = v10 + 1;
      v11 = &v5[16 * v10];
      *(v11 + 4) = v7;
      *(v11 + 5) = v8;
    }

    while (v3 != v4);
    return v5;
  }

  return result;
}

unint64_t sub_1A4675A34()
{
  result = qword_1EB13FAB0;
  if (!qword_1EB13FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FAB0);
  }

  return result;
}

unint64_t sub_1A4675A8C()
{
  result = qword_1EB13FAB8;
  if (!qword_1EB13FAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FAB8);
  }

  return result;
}

unint64_t sub_1A4675AE4()
{
  result = qword_1EB13FAC0;
  if (!qword_1EB13FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FAC0);
  }

  return result;
}

unint64_t sub_1A4675B40()
{
  result = qword_1EB13FAC8;
  if (!qword_1EB13FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FAC8);
  }

  return result;
}

unint64_t sub_1A4675B98()
{
  result = qword_1EB13FAD0;
  if (!qword_1EB13FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FAD0);
  }

  return result;
}

unint64_t sub_1A4675BF4()
{
  result = qword_1EB13FAD8;
  if (!qword_1EB13FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FAD8);
  }

  return result;
}

unint64_t sub_1A4675C4C()
{
  result = qword_1EB13FAE0;
  if (!qword_1EB13FAE0)
  {
    sub_1A4675CDC(255, &qword_1EB13FAE8, sub_1A4104288, &type metadata for MemoryEntity, MEMORY[0x1E695A570]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FAE0);
  }

  return result;
}

void sub_1A4675CDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1A4675D48()
{
  result = qword_1EB13FAF0;
  if (!qword_1EB13FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FAF0);
  }

  return result;
}

unint64_t sub_1A4675DA0()
{
  result = qword_1EB13FAF8;
  if (!qword_1EB13FAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FAF8);
  }

  return result;
}

unint64_t sub_1A4675DF8()
{
  result = qword_1EB13FB00;
  if (!qword_1EB13FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FB00);
  }

  return result;
}

unint64_t sub_1A4675E50()
{
  result = qword_1EB13FB08;
  if (!qword_1EB13FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FB08);
  }

  return result;
}

unint64_t sub_1A4675EA8()
{
  result = qword_1EB13FB10;
  if (!qword_1EB13FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FB10);
  }

  return result;
}

unint64_t sub_1A4675F00()
{
  result = qword_1EB13FB18;
  if (!qword_1EB13FB18)
  {
    sub_1A3C4D5E4(255, &qword_1EB1325B8, &type metadata for MemoryEntity, MEMORY[0x1E69E62F8]);
    sub_1A4104288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FB18);
  }

  return result;
}

unint64_t sub_1A4675FBC()
{
  result = qword_1EB13FB20;
  if (!qword_1EB13FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FB20);
  }

  return result;
}

void sub_1A4676010(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4676074(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A4676010(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A46760E4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A4676010(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4676164(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A4676010(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A46761F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x746361706D6F63;
  v5 = 0x80000001A53E2F00;
  if (v2 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001A53E2F00;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x72616C75676572;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x746361706D6F63;
  if (*a2 == 1)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x72616C75676572;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A524EAB4();
  }

  return v11 & 1;
}

uint64_t sub_1A46762EC()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A4676394()
{
  sub_1A524C794();
}

uint64_t sub_1A4676428()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

void sub_1A46764D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746361706D6F63;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001A53E2F00;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x72616C75676572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1A467653C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A40A3BDC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A46765A0()
{
  sub_1A46765E8();

  return sub_1A5249244();
}

unint64_t sub_1A46765E8()
{
  result = qword_1EB15AB00[0];
  if (!qword_1EB15AB00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15AB00);
  }

  return result;
}

uint64_t sub_1A467667C()
{
  sub_1A46766B8();
  sub_1A5249244();
  return v1;
}

unint64_t sub_1A46766B8()
{
  result = qword_1EB15ACB8[0];
  if (!qword_1EB15ACB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15ACB8);
  }

  return result;
}

uint64_t View.largeNavigationTitleConfiguration(horizontalInsets:multiline:)()
{
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A524BC74();
  sub_1A4676878();
  sub_1A46768D0();
  return sub_1A524A8E4();
}

void sub_1A4676878()
{
  if (!qword_1EB13FB30)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FB30);
    }
  }
}

unint64_t sub_1A46768D0()
{
  result = qword_1EB13FB38;
  if (!qword_1EB13FB38)
  {
    sub_1A4676878();
    sub_1A4676950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FB38);
  }

  return result;
}

unint64_t sub_1A4676950()
{
  result = qword_1EB1CC410[0];
  if (!qword_1EB1CC410[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CC410);
  }

  return result;
}

void sub_1A4676AC4(uint64_t a1, unsigned int a2, void *a3)
{
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v3;
  }

  v7 = [v6 navigationController];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = [v7 topViewController];
  if (v9)
  {
    v10 = v9;
    v20 = [v9 navigationItem];

    if (v20)
    {
      if ((a2 & 1) != 0 || (([v20 largeTitleInsets], v14 == 0.0) ? (v15 = v11 == *&a1) : (v15 = 0), v15 && (v12 == 0.0 ? (v16 = v13 == *&a1) : (v16 = 0), v16)))
      {
        v17 = 0;
        if (BYTE1(a2) == 2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        [v20 setLargeTitleInsets_];
        v17 = 1;
        if (BYTE1(a2) == 2)
        {
          goto LABEL_24;
        }
      }

      if ([v20 _largeTitleTwoLineMode] != ((a2 >> 8) & 1))
      {
        [v20 _setLargeTitleTwoLineMode_];
LABEL_27:
        v19 = [v8 navigationBar];
        [v19 setNeedsLayout];

LABEL_28:
        v18 = v20;
        goto LABEL_29;
      }

LABEL_24:
      if (!v17)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  v18 = v8;
LABEL_29:
}

id sub_1A4676C9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXLargeNavigationTitleIntrospectionView.IntrospectionUIViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4676CF4()
{
  if (!qword_1EB13FB48)
  {
    sub_1A4676878();
    sub_1A46768D0();
    v0 = sub_1A5249724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FB48);
    }
  }
}

unint64_t sub_1A4676D58()
{
  result = qword_1EB13FB50;
  if (!qword_1EB13FB50)
  {
    sub_1A4676CF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FB50);
  }

  return result;
}

uint64_t _s12PhotosUICore39PXLargeNavigationTitleIntrospectionViewV29IntrospectionUIViewControllerC22MultiLineConfigurationVwet_0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 10))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t _s12PhotosUICore39PXLargeNavigationTitleIntrospectionViewV29IntrospectionUIViewControllerC22MultiLineConfigurationVwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

id sub_1A4676E80()
{
  v0 = type metadata accessor for PXLargeNavigationTitleIntrospectionView.IntrospectionUIViewController();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtCV12PhotosUICoreP33_B710F56EBF55D875B7CD9A668821701039PXLargeNavigationTitleIntrospectionView29IntrospectionUIViewController_configuration];
  *v2 = 0;
  *(v2 + 4) = 513;
  v4.receiver = v1;
  v4.super_class = v0;
  return objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1A4676EE4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = a1 + OBJC_IVAR____TtCV12PhotosUICoreP33_B710F56EBF55D875B7CD9A668821701039PXLargeNavigationTitleIntrospectionView29IntrospectionUIViewController_configuration;
  *v5 = *v1;
  *(v5 + 8) = v4;
  v6 = *(v1 + 9);
  *(v5 + 9) = v6;
  sub_1A4676AC4(v3, v4 | (v6 << 8), 0);
}

uint64_t sub_1A4676F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4677030();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A4676FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4677030();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A4677008()
{
  sub_1A4677030();
  sub_1A5249ED4();
  __break(1u);
}

unint64_t sub_1A4677030()
{
  result = qword_1EB1CC520;
  if (!qword_1EB1CC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CC520);
  }

  return result;
}

void sub_1A4677490()
{
  v1 = v0;
  v2 = [v0 people];
  if (v2)
  {
    v3 = v2;
    if ([v2 count] == 1)
    {
      v4 = [v3 firstObject];
      if (v4)
      {
        v5 = v4;
        sub_1A467853C();
        sub_1A46785D0();
        v6 = v5;
        v13 = sub_1A4044134(v6, [v1 presentationEnvironment]);
        sub_1A4678638(&qword_1EB13FB78, sub_1A46785D0);
        j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v12);
        v11 = v12;
        v7 = sub_1A4407D6C(&v13, &v11, 0, 0);
        v10 = 1;
        sub_1A44078B8(&v10);
        v8 = sub_1A49FC410(v7);
        [v8 setModalPresentationStyle_];
        [v1 presentViewController_];
        [v1 completeUserInteractionTaskWithSuccess:1 error:0];

        return;
      }
    }
  }

  [v0 completeUserInteractionTaskWithSuccess:0 error:0];
  sub_1A524D244();
  v9 = *sub_1A3CAA3FC();
  sub_1A5246DF4();
}

uint64_t sub_1A4677828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1A5243AC4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_1A467789C()
{
  if (v0[6])
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_1A5245D74();
}

void sub_1A467790C()
{
  if (v0[8])
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_1A5245D84();
}

uint64_t sub_1A467797C()
{
  if (!v0[8])
  {
    __swift_project_boxed_opaque_existential_1(v0, v0[3]);
    sub_1A5245D54();
  }

  return 0;
}

uint64_t sub_1A46779D4()
{
  if (!v0[8])
  {
    __swift_project_boxed_opaque_existential_1(v0, v0[3]);
    sub_1A5245D44();
  }

  return 0;
}

void sub_1A4677A7C()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = sub_1A5243AC4();
  v11 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v9[10] = v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s12PhotosUICore24CustomizeMenuHeaderModelVMa_1();
  MEMORY[0x1EEE9AC00](v10);
  v9[9] = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A5243624();
  v9[7] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A46786F0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9[8] = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v12 = v9 - v8;
  sub_1A5245BA4();
}

void sub_1A467853C()
{
  if (!qword_1EB13FB60)
  {
    sub_1A46785D0();
    sub_1A4678638(&qword_1EB13FB78, sub_1A46785D0);
    v0 = type metadata accessor for LemonadeCollectionCustomizationViewModel();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FB60);
    }
  }
}

void sub_1A46785D0()
{
  if (!qword_1EB13FB68)
  {
    sub_1A3C52C70(255, &qword_1EB1265C0);
    v0 = type metadata accessor for LemonadeCollectionCustomizationPeopleModel();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FB68);
    }
  }
}

uint64_t sub_1A4678638(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s12PhotosUICore24CustomizeMenuHeaderModelVMa_1()
{
  result = qword_1EB1CC540;
  if (!qword_1EB1CC540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A46786F0()
{
  if (!qword_1EB13FB88)
  {
    sub_1A5243AC4();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FB88);
    }
  }
}

unint64_t sub_1A4678748()
{
  result = qword_1EB1CC530;
  if (!qword_1EB1CC530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CC530);
  }

  return result;
}

uint64_t sub_1A467879C(uint64_t a1, uint64_t a2)
{
  v4 = _s12PhotosUICore24CustomizeMenuHeaderModelVMa_1();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A4678800()
{
  result = qword_1EB1CC538;
  if (!qword_1EB1CC538)
  {
    _s12PhotosUICore24CustomizeMenuHeaderModelVMa_1();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CC538);
  }

  return result;
}

uint64_t sub_1A4678858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A46788C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4678920(uint64_t a1, int a2)
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

uint64_t sub_1A4678968(uint64_t result, int a2, int a3)
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

void sub_1A46789F0()
{
  sub_1A3C34400(319, &qword_1EB128D20);
  if (v0 <= 0x3F)
  {
    sub_1A3E792C4(319, &qword_1EB13FB90, &qword_1EB13FCC0);
    if (v1 <= 0x3F)
    {
      sub_1A5243AC4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A4678B00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4678B4C(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 136);

  return v2(v3);
}

uint64_t sub_1A4678BD8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_1A4678C70()
{
  swift_beginAccess();
  type metadata accessor for SharedLibraryInvitationViewModel(0);
  sub_1A4679D84(&qword_1EB134310, type metadata accessor for SharedLibraryInvitationViewModel);

  v0 = sub_1A52484A4();

  return v0;
}

uint64_t sub_1A4678D24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4678D70(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 168);

  return v2(v3);
}

uint64_t sub_1A4678DFC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t sub_1A4678E94()
{
  swift_beginAccess();
  type metadata accessor for SharedAlbumsInvitationsViewModel(0);
  sub_1A4679D84(&qword_1EB134318, type metadata accessor for SharedAlbumsInvitationsViewModel);

  v0 = sub_1A52484A4();

  return v0;
}

uint64_t type metadata accessor for LemonadeProfileBadgingStatusProvider()
{
  result = qword_1EB1CCA80;
  if (!qword_1EB1CCA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4678F94@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result & 1;
  return result;
}

void sub_1A4678FE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4679D84(&qword_1EB13FB98, type metadata accessor for LemonadeProfileBadgingStatusProvider);

  sub_1A5245724();
}

void sub_1A4679098()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4679D84(&qword_1EB13FB98, type metadata accessor for LemonadeProfileBadgingStatusProvider);

  sub_1A5245714();
}

void sub_1A467915C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4679D84(&qword_1EB13FB98, type metadata accessor for LemonadeProfileBadgingStatusProvider);

  sub_1A5245724();
}

void LemonadeProfileBadgingStatusProvider.init(photoLibrary:)()
{
  v0 = sub_1A46796DC();
  MEMORY[0x1EEE9AC00](v0);
  type metadata accessor for LemonadeProfileBadgingStatusProvider();
  sub_1A4679D84(&qword_1EB13FB98, type metadata accessor for LemonadeProfileBadgingStatusProvider);
  sub_1A5245754();
}

uint64_t sub_1A46796DC()
{
  result = qword_1EB13FBA0;
  if (!qword_1EB13FBA0)
  {
    type metadata accessor for LemonadeProfileBadgingStatusProvider();
    sub_1A4679D84(&qword_1EB13FB98, type metadata accessor for LemonadeProfileBadgingStatusProvider);
    sub_1A5245764();
  }

  return result;
}

uint64_t sub_1A467977C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 272))(result);
  }

  return result;
}

void sub_1A46797F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore36LemonadeProfileBadgingStatusProvider_observable);
  v2 = swift_allocObject();
  swift_weakInit();
  v4[4] = sub_1A46798DC;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1A3DC72D4;
  v4[3] = &block_descriptor_239;
  v3 = _Block_copy(v4);

  [v1 performChanges_];
  _Block_release(v3);
}

uint64_t sub_1A46798DC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A4679D84(&qword_1EB13FB98, type metadata accessor for LemonadeProfileBadgingStatusProvider);
    sub_1A5245724();
  }

  return result;
}

uint64_t LemonadeProfileBadgingStatusProvider.deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore36LemonadeProfileBadgingStatusProvider__shouldBadge;
  v2 = sub_1A46796DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t LemonadeProfileBadgingStatusProvider.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore36LemonadeProfileBadgingStatusProvider__shouldBadge;
  v2 = sub_1A46796DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1A4679B40()
{
  result = qword_1EB13FBA8;
  if (!qword_1EB13FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FBA8);
  }

  return result;
}

unint64_t sub_1A4679B98()
{
  result = qword_1EB13FBB0;
  if (!qword_1EB13FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FBB0);
  }

  return result;
}

unint64_t sub_1A4679BF0()
{
  result = qword_1EB13FBB8;
  if (!qword_1EB13FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FBB8);
  }

  return result;
}

unint64_t sub_1A4679C48()
{
  result = qword_1EB13FBC0;
  if (!qword_1EB13FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FBC0);
  }

  return result;
}

unint64_t sub_1A4679CA0()
{
  result = qword_1EB13FBC8;
  if (!qword_1EB13FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FBC8);
  }

  return result;
}

uint64_t sub_1A4679D84(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1A4679DCC@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore36LemonadeProfileBadgingStatusProvider_observable);
  *a1 = v2;
  return v2;
}

unint64_t sub_1A4679DE8()
{
  result = qword_1EB13FBD8;
  if (!qword_1EB13FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FBD8);
  }

  return result;
}

void sub_1A4679E3C()
{
  type metadata accessor for LemonadeProfileBadgingStatusProvider();
  sub_1A4679D84(&qword_1EB13FB98, type metadata accessor for LemonadeProfileBadgingStatusProvider);

  sub_1A5245C54();
}

uint64_t sub_1A4679ED0()
{
  result = sub_1A46796DC();
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

uint64_t sub_1A467A134(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1A467BA18(a1, a2);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1A467A188()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_model + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 40))(ObjectType, v1);
}

id sub_1A467A1D4(void *a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))();
  v4 = a1;
  v5 = v3;
  if (v3 == a1)
  {

    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  if (!a1 || !v3)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v10 = [v4 isContentEqualTo:v5];
  if (!v10)
  {
    v10 = [v5 isContentEqualTo:v4];
  }

  swift_unknownObjectRelease();
  if (v10 != 2)
  {
    return 0;
  }

LABEL_3:
  v6 = *(v1 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_stackedAssetViews);
  if (v6 >> 62)
  {
    result = sub_1A524E2B4();
    if (result)
    {
      goto LABEL_5;
    }

LABEL_17:
    [v1 bounds];
    return [objc_allocWithZone(off_1E7721860) initWithRect:v1 inCoordinateSpace:{v11, v12, v13, v14}];
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);
    v9 = [v8 contentRegionOfInterest];

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A467A3C4()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_isActive;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A467A408(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_isActive;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = *(v1 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_model + 8);
    v8 = ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))(result) & 1) != 0 && *(*(v1 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_reasonsForHidingContent) + 16) == 0;
    ObjectType = swift_getObjectType();
    return (*(v7 + 24))(v8, ObjectType, v7);
  }

  return result;
}

void (*sub_1A467A4FC(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_isActive;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A467A590;
}

void sub_1A467A590(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if ((v4 ^ v5))
  {
    v6 = v1[3];
    v7 = *(v6 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_model + 8);
    v8 = ((*((*MEMORY[0x1E69E7D40] & *v6) + 0x98))() & 1) != 0 && *(*(v1[3] + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_reasonsForHidingContent) + 16) == 0;
    ObjectType = swift_getObjectType();
    (*(v7 + 24))(v8, ObjectType, v7);
  }

  free(v1);
}

void sub_1A467A680(char a1)
{
  if (a1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A467A860(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_model + 8);
  ObjectType = swift_getObjectType();
  v10[4] = (*(v1 + 40))(ObjectType, v1);
  v3 = 0;
  v10[5] = (*(v1 + 48))(ObjectType, v1);
  v4 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 != 2)
  {
    if (v10[v3++ + 4])
    {
      v7 = swift_unknownObjectRetain();
      MEMORY[0x1A5907D70](v7);
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      v5 = v11;
    }
  }

  sub_1A3C568EC(0, &qword_1EB126BC0, sub_1A3D435C4);
  swift_arrayDestroy();
  *(a1 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_stackedAssets) = v5;

  v8 = *(a1 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_stackedAssetViews);
  v10[6] = v4;
  v10[7] = v8;
  if (*(a1 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_stackedAssets) >> 62)
  {
    sub_1A524E2B4();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A467ADFC()
{
  sub_1A3C568EC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1A524CCB4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1A524CC54();

  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;

  sub_1A3EA52F4(0, 0, v2, &unk_1A5354B50, v7);
}

uint64_t sub_1A467AF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A467B020, v6, v5);
}

uint64_t sub_1A467B020()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(swift_task_alloc() + 16) = Strong;
    *(swift_task_alloc() + 16) = Strong;
    sub_1A52415B4();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_1A467B130(uint64_t a1)
{
  v5 = *(v2 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_stackedAssetViews);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v6 = sub_1A524E2B4();
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v6 >= 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  v19 = MEMORY[0x1A59097F0](0, a1);
  v7 = v19;
  aBlock = v19;
  MEMORY[0x1EEE9AC00](v19);
  v20[2] = &aBlock;
  if ((sub_1A40C23C4(sub_1A467BF1C, v20, v5) & 1) == 0)
  {

    v10 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v7;
    v25 = sub_1A3EF7388;
    v26 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_1A3C2E0D0;
    v24 = &block_descriptor_240;
    v12 = _Block_copy(&aBlock);
    v13 = v7;

    v17 = swift_allocObject();
    *(v17 + 16) = sub_1A467BF14;
    *(v17 + 24) = v1;
    v25 = sub_1A3C7146C;
    v26 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v15 = &block_descriptor_40_2;
    goto LABEL_13;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1A59097F0](0, v5);
    goto LABEL_11;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v5 + 32);
LABEL_11:
    v9 = v8;

    [v9 setAlpha_];
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    v25 = sub_1A467BF38;
    v26 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_1A3C2E0D0;
    v24 = &block_descriptor_46_8;
    v12 = _Block_copy(&aBlock);
    v13 = v9;

    v14 = swift_allocObject();
    *(v14 + 16) = sub_1A467BF14;
    *(v14 + 24) = v1;
    v25 = sub_1A3DDBE10;
    v26 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v15 = &block_descriptor_52_1;
LABEL_13:
    v23 = sub_1A3E01E70;
    v24 = v15;
    v18 = _Block_copy(&aBlock);

    [v10 animateWithDuration:v12 animations:v18 completion:v3];

    _Block_release(v18);
    _Block_release(v12);

    return;
  }

  __break(1u);
}

void sub_1A467B680(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1A524E2B4();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1A59097F0](i, a1);
      }

      else
      {
        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      v9 = v6;
      MEMORY[0x1EEE9AC00](v6);
      v8[2] = &v9;
      if ((sub_1A40C23C4(sub_1A467BFC8, v8, a2) & 1) == 0)
      {
        [v7 removeFromSuperview];
      }
    }
  }
}

uint64_t sub_1A467B7B0()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PhotosPreviewHeaderContentView();
  result = objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_stackedAssetViews];
  if (v2 >> 62)
  {
    result = sub_1A524E2B4();
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return result;
    }
  }

  if (v3 >= 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

id sub_1A467B968()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosPreviewHeaderContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A467BA18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v3[OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_isActive] = 0;
  v7 = OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_settings;
  sub_1A3C52C70(0, &qword_1EB126A10);
  v8 = [swift_getObjCClassFromMetadata() sharedInstance];
  *&v3[v7] = v8;
  *&v3[OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_reasonsForHidingContent] = MEMORY[0x1E69E7CD0];
  v9 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_stackedAssets] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_stackedAssetViews] = v9;
  v10 = [v8 solariumDetailsViewPreviewHeaderKind];
  if (v10 == 1)
  {
    type metadata accessor for PhotosPreviewHeaderSlideshowContentViewModel();
    v21 = v5;
    v22 = v6;
    v11 = *&v3[v7];
    swift_unknownObjectRetain();
    [v11 solariumDetailsViewPreviewHeaderAssetDisplayDuration];
    PhotosPreviewHeaderSlideshowContentViewModel.__allocating_init(collection:initialAsset:assetChangeTimeInterval:)();
  }

  if (v10)
  {
    type metadata accessor for PXSolariumDetailsViewPreviewHeaderKind(0);
    result = sub_1A524EB44();
    __break(1u);
  }

  else
  {
    type metadata accessor for PhotosPreviewableCollectionKeyAssetModel();
    v21 = v5;
    v22 = v6;
    swift_unknownObjectRetain();
    v12 = PhotosPreviewableCollectionKeyAssetModel.__allocating_init(collection:initialKeyAsset:)(&v21, a2);
    v13 = sub_1A467BDC8(&unk_1EB13FC20, type metadata accessor for PhotosPreviewableCollectionKeyAssetModel);
    v14 = &v3[OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_model];
    *v14 = v12;
    v14[1] = v13;
    v20.receiver = v3;
    v20.super_class = type metadata accessor for PhotosPreviewHeaderContentView();
    v15 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    MEMORY[0x1EEE9AC00](v15);
    MEMORY[0x1EEE9AC00](v16);
    v18 = v17;
    sub_1A52415B4();

    return v18;
  }

  return result;
}

void sub_1A467BCBC()
{
  *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_isActive) = 0;
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_settings;
  sub_1A3C52C70(0, &qword_1EB126A10);
  *(v0 + v1) = [swift_getObjCClassFromMetadata() sharedInstance];
  *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_reasonsForHidingContent) = MEMORY[0x1E69E7CD0];
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_stackedAssets) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC12PhotosUICore30PhotosPreviewHeaderContentView_stackedAssetViews) = v2;
  sub_1A524E6E4();
  __break(1u);
}

uint64_t sub_1A467BDC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A467BE18(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A467AF88(a1, v5, v6, v4);
}

uint64_t (*sub_1A467BEB8())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1A467BE10;
}

void sub_1A467C0A0()
{
  if (qword_1EB176110 != -1)
  {
    swift_once();
  }

  sub_1A5246664();
}

uint64_t sub_1A467D77C()
{
  sub_1A3C52C70(0, &qword_1EB13FCA0);
  sub_1A486D7B0(v0, &v6);
  if (v7)
  {
    sub_1A3C34460(&v6, v8);
    v1 = MEMORY[0x1E69E7CC0];
    v2 = v9;
    v3 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v4 = sub_1A408EE40(1, 0, v2, v3);
    if (*(v4 + 2))
    {
      if (*(v4 + 8) < 3uLL)
      {
        LOBYTE(v6) = v4[80];
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      *&v6 = 0;
      *(&v6 + 1) = 0xE000000000000000;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_1A3C2CAB8(&v6, &qword_1EB13FCA8, &qword_1EB13FCB0, &protocol descriptor for LemonadeMutableCurationModel, sub_1A3E792C4);
    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

void sub_1A467DAC0()
{
  sub_1A3C52C70(0, &qword_1EB126BB0);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 canShowInternalUI];

  if (v1)
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = xmmword_1A5354BC0;
    *(v3 + 40) = 1;
    v4 = objc_allocWithZone(sub_1A4680220());
    sub_1A52466B4();
  }

  sub_1A4680220();
  sub_1A5246614();
}

void sub_1A467E79C(uint64_t a1@<X8>)
{
  v2 = sub_1A5243834();
  MEMORY[0x1EEE9AC00](v2);
  sub_1A4680304(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 1;
  _s12PhotosUICore24CustomizeMenuHeaderModelVMa_2();
  sub_1A5245FB4();
}

void __swiftcall PXStoryViewModel.makeDefaultActionsMenu()(UIMenu *__return_ptr retstr)
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_1A467FF8C;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1A3D7692C;
  v4[3] = &block_descriptor_241;
  v3 = _Block_copy(v4);

  [v1 menuWithDeferredConfiguration_];
  _Block_release(v3);
}

uint64_t sub_1A467F2EC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1A467C2A4();
  }

  return result;
}

void sub_1A467F7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong actionPerformer];

    if (v13)
    {
      if (a6)
      {
        a5 = 0;
      }

      sub_1A46807E4(a1, v22, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C37420);
      v14 = v23;
      if (v23)
      {
        v15 = __swift_project_boxed_opaque_existential_1(v22, v23);
        v16 = *(v14 - 8);
        v17 = MEMORY[0x1EEE9AC00](v15);
        v19 = &v22[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v16 + 16))(v19, v17);
        v20 = sub_1A524EA94();
        (*(v16 + 8))(v19, v14);
        __swift_destroy_boxed_opaque_existential_0(v22);
      }

      else
      {
        v20 = 0;
      }

      [v13 performActionForChromeActionMenuItem:a4 withValue:a5 sender:v20 presentationSource:a2];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

id sub_1A467FA00()
{
  v2.receiver = v0;
  v2.super_class = _s14AssociatedDataCMa_9();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void PXStoryMutableViewModel.actionContext.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();
  sub_1A467C0A0();
}

void PXStoryMutableViewModel.actionContext.setter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();
  sub_1A467C0A0();
}

void PXStoryMutableViewModel.actionContext.modify(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = v2;
  PXStoryMutableViewModel.actionContext.getter();
}

uint64_t StoryViewActionContext.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A467FD08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  a2[4] = sub_1A4680858(qword_1EB1CCCD0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);

  return sub_1A468089C(v2, boxed_opaque_existential_1);
}

void sub_1A467FE38()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1CCA98);
  __swift_project_value_buffer(v0, qword_1EB1CCA98);
  sub_1A5246EF4();
}

uint64_t sub_1A467FE9C(unint64_t a1)
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
  sub_1A467FF94(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_1A467FF94(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_1A46802D0(0);
          sub_1A4680600(&qword_1EB13FC98, sub_1A46802D0);
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
        sub_1A4680220();
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

unint64_t sub_1A4680134()
{
  result = qword_1EB13FC50;
  if (!qword_1EB13FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FC50);
  }

  return result;
}

unint64_t sub_1A46801BC()
{
  result = qword_1EB13FC60;
  if (!qword_1EB13FC60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB13FC60);
  }

  return result;
}

uint64_t sub_1A4680220()
{
  result = qword_1EB13FC70;
  if (!qword_1EB13FC70)
  {
    sub_1A468027C();
    sub_1A52466D4();
  }

  return result;
}

unint64_t sub_1A468027C()
{
  result = qword_1EB13FC78;
  if (!qword_1EB13FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FC78);
  }

  return result;
}

void sub_1A4680304(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A468036C()
{
  v1 = *(v0 + 16);
  sub_1A3C52C70(0, &qword_1EB126C10);
  v4[3] = _s12PhotosUICore24CustomizeMenuHeaderModelVMa_2();
  v4[4] = sub_1A4680858(&qword_1EB1CCBB0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  v3 = v1;
  sub_1A467E79C(boxed_opaque_existential_1);
}

uint64_t _s12PhotosUICore24CustomizeMenuHeaderModelVMa_2()
{
  result = qword_1EB1CCBB8;
  if (!qword_1EB1CCBB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A46804C8(void *a1)
{
  v3 = *(v1 + 16);
  v6[3] = sub_1A3C52C70(0, &qword_1EB126C10);
  v6[0] = a1;
  v4 = a1;
  v3(v6, 0);
  return sub_1A3C2CAB8(v6, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C37420);
}

uint64_t sub_1A4680574(uint64_t a1)
{
  sub_1A4680304(0, &qword_1EB124AC0, off_1E7721130, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4680600(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A4680670()
{
  sub_1A3E792C4(319, &qword_1EB13FB90, &qword_1EB13FCC0);
  if (v0 <= 0x3F)
  {
    sub_1A3C37420(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A3C37420(319, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A4680304(319, &qword_1EB124AC0, off_1E7721130, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A46807E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A4680858(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s12PhotosUICore24CustomizeMenuHeaderModelVMa_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A468089C(uint64_t a1, uint64_t a2)
{
  v4 = _s12PhotosUICore24CustomizeMenuHeaderModelVMa_2();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1A4680978(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___PXPhotoKitSocialGroupActionManager_socialGroups] = a1;
  *&v5[OBJC_IVAR___PXPhotoKitSocialGroupActionManager_photoLibrary] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_1A4680B60()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_1A3C52C70(0, &qword_1EB126660);
  v3 = sub_1A524CA14();
  v4 = [v2 transientAssetCollectionWithAssets:v3 title:0 identifier:0 photoLibrary:*(v1 + OBJC_IVAR___PXPhotoKitSocialGroupActionManager_photoLibrary)];

  v5 = v4;
  sub_1A524D5F4();
}

uint64_t sub_1A4681620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 != 0xD000000000000029 || 0x80000001A53E39B0 != a2) && (sub_1A524EAB4() & 1) == 0)
  {

    sub_1A4680B60();
  }

  if (!*(a3 + 16))
  {
    goto LABEL_34;
  }

  v4 = sub_1A3FBDC38(*off_1E77219C8);
  if ((v5 & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1A3C2F0BC(*(a3 + 56) + 32 * v4, v25);
  sub_1A3C5D0E8(0, &qword_1EB13F988);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_34;
  }

  if ([v23[0] firstObject])
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    *v23 = 0u;
    v24 = 0u;
  }

  v25[0] = *v23;
  v25[1] = v24;
  if (!*(&v24 + 1))
  {
    swift_unknownObjectRelease();
    sub_1A3C35B00(v25);
    goto LABEL_30;
  }

  sub_1A3C52C70(0, &qword_1EB126C28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_30;
  }

  if (!*(a3 + 16) || (v6 = sub_1A3FBDC38(*off_1E77219D0), (v7 & 1) == 0))
  {
LABEL_18:
    sub_1A4680B60();
  }

  sub_1A3C2F0BC(*(a3 + 56) + 32 * v6, v25);
  if (!swift_dynamicCast())
  {
LABEL_34:
    while (1)
    {
LABEL_30:
      sub_1A524E6E4();
      __break(1u);
    }
  }

  v8 = [v23[0] localIdentifier];
  v9 = sub_1A524C674();
  v11 = v10;

  v12 = [v22 localIdentifier];
  v13 = sub_1A524C674();
  v15 = v14;

  if (v13 == v9 && v15 == v11)
  {

    goto LABEL_23;
  }

  v16 = sub_1A524EAB4();

  if ((v16 & 1) == 0)
  {

    goto LABEL_18;
  }

LABEL_23:
  v17 = sub_1A524D224();
  v18 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = v18;
    v20 = swift_slowAlloc();
    *&v25[0] = swift_slowAlloc();
    *v20 = 136315138;
    sub_1A3C2EF94();
  }

  swift_unknownObjectRelease();

  return 0;
}

void sub_1A46821A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1A524CA14();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A4682640;
  aBlock[3] = &block_descriptor_242;
  v7 = _Block_copy(aBlock);

  v8 = [v3 actionItemsForActionTypes:v6 handler:v7];
  _Block_release(v7);

  sub_1A3C52C70(0, &qword_1EB13FD10);
  v9 = sub_1A524CA34();

  if (!(v9 >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C5D0E8(0, &qword_1EB120AE0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4682640(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1A524C674();
  v4 = v3;

  v1(v2, v4);
}

char *sub_1A46826AC(unint64_t a1)
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
        sub_1A3C52C70(0, &qword_1EB126C28);
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
      sub_1A3C52C70(0, &qword_1EB126C28);
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

void sub_1A46829EC()
{
  if (!qword_1EB13FCF0)
  {
    sub_1A4682A44();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FCF0);
    }
  }
}

unint64_t sub_1A4682A44()
{
  result = qword_1EB13FCF8;
  if (!qword_1EB13FCF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB13FCF8);
  }

  return result;
}

uint64_t sub_1A4682AA8(uint64_t a1)
{
  sub_1A46829EC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A4682B04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A44DADDC();
    v3 = sub_1A524E794();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A4682FB0(v4, &v11, sub_1A44D9E98);
      v5 = v11;
      result = sub_1A3FBDC38(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A3C57128(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_1A4682C14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000026 && 0x80000001A53E38C0 == a2;
  if (v3 || (sub_1A524EAB4() & 1) != 0)
  {
    return type metadata accessor for SocialGroupCustomizeAlbumActionPerformer();
  }

  if (a1 == 0xD000000000000026 && 0x80000001A53E38F0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {
    return type metadata accessor for SocialGroupAddPeopleActionPerformer();
  }

  if (a1 == 0xD000000000000028 && 0x80000001A53E3920 == a2 || (sub_1A524EAB4() & 1) != 0)
  {
    return type metadata accessor for SocialGroupCreateGroupActionPerformer();
  }

  if (a1 == 0xD000000000000028 && 0x80000001A53E3950 == a2 || (sub_1A524EAB4() & 1) != 0)
  {
    return type metadata accessor for SocialGroupModifyGroupActionPerformer();
  }

  if (a1 == 0xD000000000000028 && 0x80000001A53E3980 == a2 || (sub_1A524EAB4() & 1) != 0)
  {
    return type metadata accessor for SocialGroupRejectGroupActionPerformer();
  }

  if (a1 == 0xD000000000000029 && 0x80000001A53E39B0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {
    return type metadata accessor for SocialGroupReorderGroupActionPerformer();
  }

  if (a1 == 0xD00000000000002CLL && 0x80000001A53E39E0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {
    return type metadata accessor for SocialGroupCopyInternalURLActionPerformer();
  }

  if (a1 == 0xD000000000000022 && 0x80000001A53E3A10 == a2 || (sub_1A524EAB4() & 1) != 0)
  {
    return type metadata accessor for PeoplePromoteAsMagicInternalActionPerformer();
  }

  sub_1A524E404();

  MEMORY[0x1A5907B60](a1, a2);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A4682F58()
{
  v1 = *(v0 + 16);
  v2 = sub_1A524C634();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_1A4682FB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A468301C(uint64_t a1)
{
  sub_1A3C4C460(0, &qword_1EB124AC0, off_1E7721130, MEMORY[0x1E69E6720]);
  v3 = [*(a1 + 16) px_virtualCollections];
  v4 = [v3 featuredPhotosCollection];

  v5 = [v4 localizedTitle];
  if (v5)
  {
    v6 = v5;
    sub_1A524C674();
  }

  sub_1A5245FB4();
}

uint64_t sub_1A46831DC()
{
  v0 = sub_1A5243F74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241F84();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A5241FC4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5244084();
  __swift_allocate_value_buffer(v6, qword_1EB193E18);
  __swift_project_value_buffer(v6, qword_1EB193E18);
  sub_1A5241F74();
  sub_1A5241FA4();
  sub_1A5247B94();
  sub_1A5241F54();
  (*(v1 + 104))(v3, *MEMORY[0x1E69C2930], v0);
  return sub_1A5244034();
}

uint64_t sub_1A46834F0@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C4C460(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
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
    *v7 = sub_1A46836E8;
    *(v7 + 1) = 0;
    v7[16] = 2;
    *(v7 + 3) = 0;
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

uint64_t sub_1A46836E8(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C21F8] || v7 == *MEMORY[0x1E69C2210])
  {
    return 4;
  }

  (*(v3 + 8))(v6, v2);
  return 1;
}

void sub_1A4683814(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = sub_1A524CA14();
  v8 = sub_1A524C634();
  v9 = [v6 transientCollectionListWithCollections:v7 title:v8 identifier:0 photoLibrary:a1];

  sub_1A3C52C70(0, &qword_1EB126A10);
  v10 = [swift_getObjCClassFromMetadata() sharedInstance];
  LODWORD(v7) = [v10 ignoreSharedLibraryFilterForFeaturedPhotos];

  if (v7)
  {
    v11 = [objc_allocWithZone(PXLibraryFilterState) init];
    [v11 setViewMode_];
  }

  else
  {
    v11 = *(a2 + 24);
  }

  sub_1A46848EC(0, &qword_1EB129FC8, &unk_1EB12B198, 0x1E6978AE8, type metadata accessor for PhotoKitItemListManager);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v30 = 2;
  v12 = v9;
  v13 = v11;
  sub_1A3C6C180(&v20);
  v28 = v20;
  v29 = v21;
  sub_1A3C6C18C(&v26);
  v24 = v26;
  v25 = v27;
  v14 = sub_1A3C5A374();
  v15 = sub_1A3C30368();
  v16 = sub_1A3C5A374();
  v17 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v28, 0, &unk_1F171D660, a3, 0, &v24, v14 & 1, &v30, v23, v15, v16 & 1, v17 & 1, 1, 0);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v19 = a1;
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v12, v11, v31, v23, &v20, sub_1A4688494, v18);
}

uint64_t sub_1A4683AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  sub_1A4684660();
  v68 = v3;
  v64 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4684954();
  v69 = v6;
  v65 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46880E4(0, &qword_1EB13FD18, MEMORY[0x1E697F948]);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v63 - v10;
  sub_1A4275F8C(0, &qword_1EB124D00, sub_1A3C3637C);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v63 - v14;
  v16 = sub_1A5243B94();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()())
  {
    sub_1A52433D4();
    if (v90)
    {
      v82 = a1;
      v64 = v90;

      sub_1A52433B4();
      v65 = v74;
      sub_1A4244368();
      v20 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1A52F8E10;
      v63 = v21 + v20;
      (*(v17 + 104))(v19, *MEMORY[0x1E69C2808], v16);
      v22 = swift_allocObject();
      v23 = v64;
      *(v22 + 16) = v64;
      v24 = *(v17 + 32);
      v24(v15, v19, v16);
      v25 = v63;
      v24(v63, v15, v16);
      v26 = (v25 + *(v12 + 48));
      v27 = swift_allocObject();
      *(v27 + 16) = sub_1A4684E80;
      *(v27 + 24) = v22;
      *v26 = sub_1A4244548;
      v26[1] = v27;
      v28 = v23;
      v29 = sub_1A42762E8(v21);
      swift_setDeallocating();
      sub_1A44F2020(v25);
      swift_deallocClassInstance();
      sub_1A46847BC();
      v31 = v30;
      sub_1A4688340(&unk_1EB1290F0, sub_1A46847BC);
      v32 = MEMORY[0x1E6981E70];
      v33 = sub_1A41F7694();
      v34 = sub_1A3C5A374();
      v35 = sub_1A43C9BB4();
      v37 = v36;
      v38 = swift_allocObject();
      *(v38 + 16) = v35;
      *(v38 + 24) = v37;
      LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(&v82, 0, 0, 0, 0, v65, v34 & 1, sub_1A4276878, &v83, v33, v38, v29, v32, v31);
      v71[4] = v87;
      v71[5] = v88;
      v72 = v89;
      v71[0] = v83;
      v71[1] = v84;
      v71[2] = v85;
      v71[3] = v86;
      v94 = v87;
      v95 = v88;
      v96 = v89;
      v90 = v83;
      v91 = v84;
      v92 = v85;
      v93 = v86;
      v73 = 0;
      sub_1A468842C(v71, &v75, sub_1A4684A64);
      sub_1A4684A64();
      sub_1A4688340(&qword_1EB125740, sub_1A4684A64);
      sub_1A5249744();

      sub_1A46878AC(v71, sub_1A4684A64);
      v94 = v79;
      v95 = v80;
      v96 = v81;
      v90 = v75;
      v91 = v76;
      v92 = v77;
      v93 = v78;
    }

    else
    {
      *&v71[0] = a1;

      sub_1A52433B4();
      v42 = v82;
      sub_1A46847BC();
      v44 = v43;
      sub_1A4688340(&unk_1EB1290F0, sub_1A46847BC);
      v45 = MEMORY[0x1E6981E70];
      v46 = sub_1A41F7694();
      v47 = sub_1A3C5A374();
      v48 = sub_1A43C9BB4();
      v50 = v49;
      v51 = swift_allocObject();
      *(v51 + 16) = v48;
      *(v51 + 24) = v50;
      v52 = sub_1A43C9BD0();
      LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(v71, 0, 0, 0, 0, v42, v47 & 1, sub_1A3F8B548, &v83, v46, v51, v52, v45, v44);
      v79 = v87;
      v80 = v88;
      LOBYTE(v81) = v89;
      v75 = v83;
      v76 = v84;
      v77 = v85;
      v78 = v86;
      LOBYTE(v74) = 1;
      HIBYTE(v81) = 1;
      sub_1A4684A64();
      sub_1A4688340(&qword_1EB125740, sub_1A4684A64);
      sub_1A5249744();
    }

    v53 = v95;
    v54 = v67;
    *(v67 + 4) = v94;
    *(v54 + 5) = v53;
    *(v54 + 48) = v96;
    v55 = v91;
    *v54 = v90;
    *(v54 + 1) = v55;
    v56 = v93;
    *(v54 + 2) = v92;
    *(v54 + 3) = v56;
    swift_storeEnumTagMultiPayload();
    sub_1A4684A08();
    sub_1A4684DD8();
    v57 = sub_1A4688340(&unk_1EB128FC0, sub_1A4684660);
    *&v75 = v68;
    *(&v75 + 1) = v57;
    swift_getOpaqueTypeConformance2();
    return sub_1A5249744();
  }

  else
  {
    *&v90 = a1;
    sub_1A46847BC();
    v63 = v39;
    sub_1A3C52C70(0, &qword_1EB126D00);
    sub_1A5243EC4();
    sub_1A4688340(&qword_1EB1290E0, sub_1A46847BC);
    sub_1A4688340(&unk_1EB1290F0, sub_1A46847BC);
    sub_1A4688340(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    sub_1A405ECC8();
    swift_retain_n();
    sub_1A5244264();
    sub_1A52433B4();
    v40 = v90;
    if (v90)
    {
      v41 = sub_1A3C52C70(0, &qword_1EB126660);
    }

    else
    {
      v90 = 0uLL;
      v41 = 0;
      *&v91 = 0;
    }

    *&v90 = v40;
    *(&v91 + 1) = v41;
    v59 = sub_1A4688340(&unk_1EB128FC0, sub_1A4684660);
    v60 = v68;
    sub_1A524A534();
    v64[1](v5, v60);
    sub_1A3C2CB18(&v90, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A46886C8);
    v61 = v65;
    v62 = v69;
    (*(v65 + 16))(v67, v8, v69);
    swift_storeEnumTagMultiPayload();
    sub_1A4684A08();
    sub_1A4684DD8();
    *&v90 = v60;
    *(&v90 + 1) = v59;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    return (*(v61 + 8))(v8, v62);
  }
}

void sub_1A4684660()
{
  if (!qword_1EB128FB8)
  {
    sub_1A46847BC();
    sub_1A3C52C70(255, &qword_1EB126D00);
    sub_1A5243EC4();
    sub_1A4688340(&qword_1EB1290E0, sub_1A46847BC);
    sub_1A4688340(&unk_1EB1290F0, sub_1A46847BC);
    sub_1A4688340(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    sub_1A405ECC8();
    v0 = sub_1A5244254();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128FB8);
    }
  }
}

void sub_1A46847BC()
{
  if (!qword_1EB1290D8)
  {
    sub_1A46848EC(255, &qword_1EB12A858, &unk_1EB12B198, 0x1E6978AE8, type metadata accessor for PhotoKitItem);
    sub_1A4688154(&qword_1EB12A860, &qword_1EB12A858, type metadata accessor for PhotoKitItem);
    sub_1A4688154(&qword_1EB12A868, &qword_1EB12A858, type metadata accessor for PhotoKitItem);
    sub_1A4688154(&unk_1EB12A870, &qword_1EB12A858, type metadata accessor for PhotoKitItem);
    v0 = sub_1A52433E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1290D8);
    }
  }
}

void sub_1A46848EC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A4684954()
{
  if (!qword_1EB127678)
  {
    sub_1A4684660();
    sub_1A4688340(&unk_1EB128FC0, sub_1A4684660);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127678);
    }
  }
}

void sub_1A4684A08()
{
  if (!qword_1EB1228F0)
  {
    sub_1A4684A64();
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1228F0);
    }
  }
}

void sub_1A4684A64()
{
  if (!qword_1EB125738)
  {
    sub_1A46847BC();
    sub_1A4688340(&unk_1EB1290F0, sub_1A46847BC);
    v0 = type metadata accessor for LemonadeMaterialTitleCell();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125738);
    }
  }
}

uint64_t sub_1A4684B14(void *a1)
{
  v2 = type metadata accessor for LemonadeSLHighlightView();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = a1;
  v6 = *(v5 + 20);
  *(v4 + v6) = swift_getKeyPath();
  sub_1A3C4C460(0, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v7 = v4 + *(v2 + 24);
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = v4 + *(v2 + 28);
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  sub_1A46883D4();
  v9 = a1;
  return sub_1A524B8E4();
}

uint64_t sub_1A4684C40()
{
  v0 = sub_1A5243834();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3C4C460(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v6 - v2;
  sub_1A52433B4();
  memset(v6, 0, sizeof(v6));
  v7 = 1;
  v4 = sub_1A52429A4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_1A5243824();
  return sub_1A5243ED4();
}

unint64_t sub_1A4684DD8()
{
  result = qword_1EB1228F8;
  if (!qword_1EB1228F8)
  {
    sub_1A4684A08();
    sub_1A4688340(&qword_1EB125740, sub_1A4684A64);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1228F8);
  }

  return result;
}

void sub_1A4684E88(uint64_t a1)
{
  v1 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  sub_1A3C38BD4();
  sub_1A3C38BD4();
  sub_1A3C38BD4();
  sub_1A3C38BD4();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A468510C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A3C4C460(0, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v12 - v7;
  sub_1A4685350(a1, a2, v12 - v7);
  v9 = type metadata accessor for LemonadeNavigationDestination();
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) != 1)
  {
    return sub_1A3CA2830(v8, a3, type metadata accessor for LemonadeNavigationDestination);
  }

  sub_1A3C2CB18(v8, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720], sub_1A3C4C460);
  v12[2] = 0;
  v12[3] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000032, 0x80000001A53E3E20);
  v12[1] = a1;
  sub_1A46848EC(0, &qword_1EB12A858, &unk_1EB12B198, 0x1E6978AE8, type metadata accessor for PhotoKitItem);

  v11 = sub_1A524C714();
  MEMORY[0x1A5907B60](v11);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A4685350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = PhotoKitItem.keyAssets.getter();
  if (v10 && (v11 = v10, v12 = [v10 firstObject], v11, v12))
  {
    sub_1A4685DB8(v12, a2, a3);

    v13 = type metadata accessor for LemonadeNavigationDestination();
    v14 = *(*(v13 - 8) + 56);

    return v14(a3, 0, 1, v13);
  }

  else
  {
    v16 = sub_1A3C38A40();
    (*(v7 + 16))(v9, v16, v6);

    v17 = sub_1A5246F04();
    v18 = sub_1A524D244();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22[0] = a1;
      v22[1] = v20;
      *v19 = 136315138;
      sub_1A46848EC(0, &qword_1EB12A858, &unk_1EB12B198, 0x1E6978AE8, type metadata accessor for PhotoKitItem);

      sub_1A524C714();
      sub_1A3C2EF94();
    }

    (*(v7 + 8))(v9, v6);
    v21 = type metadata accessor for LemonadeNavigationDestination();
    return (*(*(v21 - 8) + 56))(a3, 1, 1, v21);
  }
}

uint64_t sub_1A4685660(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = a1;
    PHPhotoLibrary.fetcher.getter();
    v29 = 4;
    v30 = 0;
    v4 = sub_1A3C6E9EC();
    v5 = sub_1A3C6E9EC();
    PhotoKitFetcher.Options.init(fetchLimit:libraryFilter:referencePersons:curationContext:assetFilterPredicate:)(v4, v5, 0, 0, 0, v18);
    v26[0] = v18[0];
    v26[1] = v18[1];
    v27 = v19;
    v28 = v20;
    v6 = PhotoKitFetcher.fetch(_:for:options:)(&v29, v2, v26);

    v7 = v28;

    v25 = 2;
    sub_1A3C6C180(v26);
    v29 = *&v26[0];
    v30 = BYTE8(v26[0]);
    v8 = sub_1A42011B0();
    sub_1A3C6C18C(&v23);
    v21 = v23;
    v22 = v24;
    v9 = sub_1A3C5A374();
    v10 = sub_1A3C30368();
    v11 = sub_1A3C5A374();
    v12 = sub_1A3C5A374();
    PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v29, 0, v8, 0, 1, &v21, v9 & 1, &v25, v18, v10, v11 & 1, 1, v12 & 1, 0);
    if (v6)
    {
      sub_1A3C4C460(0, &qword_1EB13FD20, sub_1A4687834, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A52F8E10;
      *(inited + 32) = 0;
      *(inited + 40) = v6;
      v14 = v6;
      v15 = sub_1A3CA36F4(inited);
      swift_setDeallocating();
      sub_1A46878AC(inited + 32, sub_1A4687834);
    }

    else
    {
      v15 = sub_1A3CA36F4(MEMORY[0x1E69E7CC0]);
      v14 = 0;
    }

    sub_1A46848EC(0, &qword_1EB12A858, &unk_1EB12B198, 0x1E6978AE8, type metadata accessor for PhotoKitItem);
    PhotoKitItem.__allocating_init(value:options:metadata:)(v2, v18, v15);
    v2 = v16;
  }

  return v2;
}

void *sub_1A46858F8(uint64_t a1, char a2, uint64_t a3)
{
  v23 = a1;
  sub_1A3C4C460(0, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for LemonadeNavigationDestination();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  if (sub_1A3DBEE68(a2 & 1, 0))
  {
    sub_1A4684FE8(a3);
  }

  v18 = MEMORY[0x1E69E7CC0];
  sub_1A4685350(v23, a3, v7);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_1A3C2CB18(v7, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720], sub_1A3C4C460);
  }

  else
  {
    sub_1A3CA2830(v7, v15, type metadata accessor for LemonadeNavigationDestination);
    sub_1A468842C(v15, v12, type metadata accessor for LemonadeNavigationDestination);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1A4249320(0, v18[2] + 1, 1, v18);
    }

    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1A4249320(v19 > 1, v20 + 1, 1, v18);
    }

    sub_1A46878AC(v15, type metadata accessor for LemonadeNavigationDestination);
    v18[2] = v20 + 1;
    sub_1A3CA2830(v12, v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v20, type metadata accessor for LemonadeNavigationDestination);
  }

  return v18;
}

uint64_t sub_1A4685DB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A3C4C460(0, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = v40 - v7;
  v8 = type metadata accessor for LemonadeNavigationDestination();
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v41 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  sub_1A3C52C70(0, &qword_1EB126A10);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [ObjCClassFromMetadata sharedInstance];
  v13 = [v12 ignoreSharedLibraryFilterForFeaturedPhotos];

  if (v13)
  {
    v14 = [objc_allocWithZone(PXLibraryFilterState) init];
    [v14 setViewMode_];
  }

  else
  {
    v14 = *(a2 + 24);
  }

  v15 = [v14 sharingFilter];

  type metadata accessor for PhotosIntelligenceFetcher();
  v16 = sub_1A4554E5C(v10, v15);
  v17 = objc_opt_self();
  v18 = @"PXFeaturedPhotosVirtualCollection";
  v19 = [v17 transientAssetCollectionWithAssetFetchResult:v16 title:0 identifier:v18];

  if (sub_1A486DC48())
  {
    v40[3] = ObjCClassFromMetadata;
    v40[5] = v8;
    v40[6] = a3;
    v20 = objc_opt_self();
    v40[2] = v19;
    v21 = [v20 fetchAssetsInAssetCollection:v19 options:0];
    LOBYTE(v44) = 1;
    v22 = [v21 photoLibrary];
    v40[4] = a1;
    PXDisplayAssetFetchResultFromAsset();
  }

  v23 = v42;
  v24 = v43;
  (*(v42 + 56))(v43, 1, 1, v8);
  if ((*(v23 + 48))(v24, 1, v8) == 1)
  {
    sub_1A3C2CB18(v24, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720], sub_1A3C4C460);
    v25 = [objc_allocWithZone(off_1E7721760) init];
    v26 = qword_1EB193E10;
    v27 = v25;
    if (v26 != -1)
    {
      swift_once();
    }

    v28 = sub_1A5244084();
    __swift_project_value_buffer(v28, qword_1EB193E18);
    swift_beginAccess();
    sub_1A5243F04();
    v30 = v29;
    swift_endAccess();
    [v27 setCornerRadius_];
    v44 = v19;
    LOBYTE(v45) = 0;
    v31 = a1;
    v32 = v19;
    v33 = [ObjCClassFromMetadata sharedInstance];
    v34 = [v33 ignoreSharedLibraryFilterForFeaturedPhotos];

    v35 = sub_1A3C5A374();
    sub_1A41DF298(v31, &v44, 1, v35 & 1, v34, v27, 0, v46);

    v36 = v46[1];
    *a3 = v46[0];
    *(a3 + 16) = v36;
    *(a3 + 32) = v47;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {

    v38 = v24;
    v39 = v41;
    sub_1A3CA2830(v38, v41, type metadata accessor for LemonadeNavigationDestination);
    return sub_1A3CA2830(v39, a3, type metadata accessor for LemonadeNavigationDestination);
  }
}

uint64_t sub_1A46864F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1A3C2F0BC(a1, v6);
  sub_1A46848EC(0, &qword_1EB12A858, &unk_1EB12B198, 0x1E6978AE8, type metadata accessor for PhotoKitItem);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_1A3C2F0BC(a1, a2);
  }

  v4 = PhotoKitItem.keyAsset.getter();

  if (!v4)
  {
    return sub_1A3C2F0BC(a1, a2);
  }

  result = sub_1A3C52C70(0, &qword_1EB126660);
  a2[3] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_1A46865F8()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_1A524E2B4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1A46866B4;

  return sub_1A46867A8(v2);
}

uint64_t sub_1A46866B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A46867A8(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_1A5241144();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4686894, 0, 0);
}

uint64_t sub_1A4686894()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  sub_1A3C52C70(0, &qword_1EB126610);
  v5 = sub_1A524DBD4();
  v6 = objc_opt_self();
  v7 = sub_1A524CFB4();
  sub_1A5241104();
  v8 = sub_1A5241074();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v0[2] = 0;
    v9 = (v0 + 2);
    v10 = [v6 reportFeatureCheckpoint:60 forFeature:v7 atDate:v8 error:v0 + 2];
  }

  else
  {
    v0[3] = 0;
    v9 = (v0 + 3);
    v10 = [v6 reportFeatureCheckpoint:10 forFeature:v7 atDate:v8 error:v0 + 3];
  }

  v11 = v10;

  v12 = *v9;
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v14 = v12;
    v15 = sub_1A5240B84();

    swift_willThrow();
    if (qword_1EB15B5C0 != -1)
    {
      swift_once();
    }

    v16 = sub_1A5246F24();
    __swift_project_value_buffer(v16, qword_1EB15B5C8);
    v17 = v5;
    v18 = v15;
    v19 = sub_1A5246F04();
    v20 = sub_1A524D244();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412546;
      *(v21 + 4) = v17;
      *v22 = v17;
      *(v21 + 12) = 2112;
      v23 = v17;
      v24 = v15;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v25;
      v22[1] = v25;
      _os_log_impl(&dword_1A3C1C000, v19, v20, "Error: Unable to report background system task checkpoint %@: %@", v21, 0x16u);
      sub_1A46848EC(0, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      MEMORY[0x1A590EEC0](v22, -1, -1);
      MEMORY[0x1A590EEC0](v21, -1, -1);
    }

    else
    {
    }
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_1A4686BE4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB193E10 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5244084();
  v3 = __swift_project_value_buffer(v2, qword_1EB193E18);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 16))(a1, v3, v2);
  return (*(v4 + 56))(a1, 0, 1, v2);
}

void sub_1A4686CDC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer;
  *a2 = swift_allocObject();
  sub_1A468301C(a1);
}

uint64_t sub_1A4686D34@<X0>(uint64_t a1@<X8>)
{
  sub_1A5243CD4();
  v2 = sub_1A5243CC4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1A4686DFC()
{
  result = sub_1A52433A4();
  if (!v1)
  {
    result = sub_1A52433C4();
    if (!v2)
    {
      return sub_1A3C38BD4();
    }
  }

  return result;
}

uint64_t sub_1A4686E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4688154(&qword_1EB13FD38, &qword_1EB12A858, type metadata accessor for PhotoKitItem);

  return sub_1A4201830(a1, a2, a3, v6);
}

uint64_t sub_1A4686EF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A4685660(a1);
  *a2 = result;
  return result;
}

id sub_1A4686F34()
{
  v0 = PhotoKitItem.keyAssets.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 firstObject];

  return v2;
}

unint64_t sub_1A4686F88(uint64_t a1)
{
  v2 = sub_1A3C43F6C();

  return sub_1A42E6E80(a1, v2);
}

id sub_1A4686FC4()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 featuredPhotosCollection];

  return v2;
}

double sub_1A468701C@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeSLHighlightView();
  v11 = v1 + *(v10 + 24);
  v12 = *v11;
  v13 = v11[8] == 1;
  v45 = v7;
  if (v13)
  {
    v74 = v12;
  }

  else
  {

    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v12, 0);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v12) = v74;
  }

  v46 = v6;
  v73 = v12;
  v72 = 0;
  sub_1A40A51C0();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v70 == v68 && v71 == v69)
  {
  }

  else
  {
    v15 = sub_1A524EAB4();

    if ((v15 & 1) == 0)
    {
      v35 = *v11;
      if (v11[8] == 1)
      {
        v63 = *v11;
      }

      else
      {

        sub_1A524D254();
        v36 = sub_1A524A014();
        sub_1A5246DF4();

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v35, 0);
        (*(v45 + 8))(v9, v46);
        LOBYTE(v35) = v63;
      }

      v62 = v35;
      v61 = 2;
      sub_1A524C9C4();
      sub_1A524C9C4();
      if (v57 == v48 && *(&v57 + 1) == v49)
      {
      }

      else
      {
        v37 = sub_1A524EAB4();

        if ((v37 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v38 = v2 + *(v10 + 28);
      v39 = *v38;
      if (v38[8] == 1)
      {
        if ((v39 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {

        sub_1A524D254();
        v40 = sub_1A524A014();
        sub_1A5246DF4();

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v39, 0);
        (*(v45 + 8))(v9, v46);
        if (v57 != 1)
        {
          goto LABEL_27;
        }
      }
    }
  }

  if (!*v2)
  {
LABEL_27:
    LOBYTE(v48) = 1;
    HIBYTE(v60) = 1;
    sub_1A4688734();
    sub_1A468878C();
    sub_1A5249744();
    goto LABEL_28;
  }

  v16 = *v2;
  PXDisplayCollectionDetailedCountsMake(v16);
  v18 = v17;
  sub_1A421D420(v5);
  v19 = *v11;
  if (v11[8] == 1)
  {
    v63 = *v11;
    v20 = v46;
  }

  else
  {

    sub_1A524D254();
    v21 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v19, 0);
    v20 = v46;
    (*(v45 + 8))(v9, v46);
    LOBYTE(v19) = v63;
  }

  v62 = v19;
  v22 = v2 + *(v10 + 28);
  v23 = *v22;
  if (v22[8] == 1)
  {
    v61 = v23 & 1;
  }

  else
  {

    sub_1A524D254();
    v24 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v23, 0);
    (*(v45 + 8))(v9, v20);
  }

  sub_1A43A2D48();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_1A46878AC(v5, type metadata accessor for LemonadeItemsLayoutSpec);
  v33 = sub_1A524A064();
  v56 = 0;
  v55 = 0;
  v48 = v18;
  LOBYTE(v49) = v33;
  v50 = v26;
  v51 = v28;
  v52 = v30;
  v53 = v32;
  v54 = 0;
  sub_1A4688734();
  sub_1A468878C();
  v34 = v18;
  sub_1A5249744();

  v64 = v57;
  v65 = v58;
  v66 = v59;
  v67 = v60;
LABEL_28:
  result = *&v64;
  v42 = v65;
  v43 = v66;
  v44 = v47;
  *v47 = v64;
  v44[1] = v42;
  v44[2] = v43;
  *(v44 + 24) = v67;
  return result;
}

uint64_t sub_1A46877B0()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B5C8);
  __swift_project_value_buffer(v0, qword_1EB15B5C8);
  return sub_1A5246F14();
}

void sub_1A4687834()
{
  if (!qword_1EB13FD28)
  {
    sub_1A3C52C70(255, &qword_1EB126C40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13FD28);
    }
  }
}

uint64_t sub_1A46878AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A468790C(char a1, uint64_t a2, unint64_t a3)
{
  sub_1A3C4C460(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - v8;
  if (a1)
  {
    if (a2)
    {
      v10 = *((*(*a2 + 280))(v7) + 24);
      v27 = v10;

      if (v10)
      {
        v11 = [v27 fetchedObjects];
        if (v11)
        {
          v12 = v11;
          sub_1A3C52C70(0, &unk_1EB12B198);
          v13 = sub_1A524CA34();

          aBlock[0] = MEMORY[0x1E69E7CC0];
          if (v13 >> 62)
          {
            goto LABEL_23;
          }

          for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
          {
            v25 = v9;
            v26 = a3;
            v9 = 0;
            while (1)
            {
              if ((v13 & 0xC000000000000001) != 0)
              {
                v15 = MEMORY[0x1A59097F0](v9, v13);
              }

              else
              {
                if (v9 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_22;
                }

                v15 = *(v13 + 8 * v9 + 32);
              }

              v16 = v15;
              a3 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if ([v15 state])
              {
              }

              else
              {
                sub_1A524E514();
                sub_1A524E564();
                sub_1A524E574();
                sub_1A524E524();
              }

              ++v9;
              if (a3 == i)
              {
                v17 = aBlock[0];
                v9 = v25;
                a3 = v26;
                goto LABEL_25;
              }
            }

            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            ;
          }

          v17 = MEMORY[0x1E69E7CC0];
LABEL_25:
          v19 = sub_1A524CCB4();
          (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
          v20 = swift_allocObject();
          v20[2] = 0;
          v20[3] = 0;
          v20[4] = v13;
          sub_1A3D4D930(0, 0, v9, &unk_1A5354F88, v20);

          if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
          {
            if (sub_1A524E2B4() > 0)
            {
              goto LABEL_28;
            }
          }

          else if (*(v17 + 16) > 0)
          {
LABEL_28:
            v21 = *(a3 + 16);
            v22 = swift_allocObject();
            *(v22 + 16) = v17;
            aBlock[4] = sub_1A4688240;
            aBlock[5] = v22;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1A3C2E0D0;
            aBlock[3] = &block_descriptor_243;
            v23 = _Block_copy(aBlock);

            [v21 performChanges:v23 completionHandler:0];

            _Block_release(v23);
            return;
          }
        }

        else
        {
          v18 = v27;
        }
      }
    }
  }
}

uint64_t sub_1A4687CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A468842C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_1A4683814(*(a2 + 16), a2, 1);
  }

  v8 = 0;
  v9 = 0xE000000000000000;
  sub_1A524E404();

  v8 = 0xD00000000000001BLL;
  v9 = 0x80000001A53B42A0;
  sub_1A4688340(&unk_1EB139AE0, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  v6 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v6);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

unint64_t sub_1A4687ED8(uint64_t a1)
{
  result = sub_1A3C43F6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A4687FE0()
{
  result = qword_1EB1224B8;
  if (!qword_1EB1224B8)
  {
    sub_1A46880E4(255, &qword_1EB1224B0, MEMORY[0x1E697F960]);
    sub_1A4684DD8();
    sub_1A4684660();
    sub_1A4688340(&unk_1EB128FC0, sub_1A4684660);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1224B8);
  }

  return result;
}

void sub_1A46880E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4684A08();
    v7 = v6;
    sub_1A4684954();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A4688154(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A46848EC(255, a2, &unk_1EB12B198, 0x1E6978AE8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A46881AC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A46865D8(v3, v4, v5, v2);
}

void sub_1A4688240()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_1A524E2B4();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  v3 = objc_opt_self();
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = v3;
    v5 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1A59097F0](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v4 changeRequestForSuggestion_];
      [v8 markActive];
    }

    while (v2 != v5);
  }
}

uint64_t sub_1A4688340(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for LemonadeSLHighlightView()
{
  result = qword_1EB1CCD80;
  if (!qword_1EB1CCD80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A46883D4()
{
  result = qword_1EB1CCD78;
  if (!qword_1EB1CCD78)
  {
    type metadata accessor for LemonadeSLHighlightView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CCD78);
  }

  return result;
}

uint64_t sub_1A468842C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4688494(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1A3C52C70(0, &qword_1EB126A10);
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  v5 = [v4 ignoreSharedLibraryFilterForFeaturedPhotos];

  v6 = 0;
  if ((v5 & 1) == 0)
  {
    v6 = *(a1 + 8);
  }

  type metadata accessor for PhotosIntelligenceFetcher();
  v7 = PXSharingFilterFromLibraryFilterViewMode(v6);
  v8 = sub_1A3C6E9EC();
  return sub_1A4554DFC(v3, v7, v8);
}

void sub_1A4688570()
{
  sub_1A46848EC(319, &unk_1EB138740, &qword_1EB126D00, 0x1E69D3810, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A3C4C460(319, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A46886C8(319, &unk_1EB1247B0, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A46886C8(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A46886C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A4688734()
{
  if (!qword_1EB13FD40)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FD40);
    }
  }
}

unint64_t sub_1A468878C()
{
  result = qword_1EB13FD48;
  if (!qword_1EB13FD48)
  {
    sub_1A4688734();
    sub_1A405ECC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FD48);
  }

  return result;
}

unint64_t sub_1A468880C()
{
  result = qword_1EB13FD50;
  if (!qword_1EB13FD50)
  {
    sub_1A468888C();
    sub_1A468878C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FD50);
  }

  return result;
}

void sub_1A468888C()
{
  if (!qword_1EB13FD58)
  {
    sub_1A4688734();
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FD58);
    }
  }
}

void static CuratedLibraryGeometryHelper.carouselHeight(for:)(double a1, double a2)
{
  v3 = a1;
  if (a1 == 0.0 || a2 == 0.0 || (*MEMORY[0x1E69BDDB0] == a1 ? (v4 = *(MEMORY[0x1E69BDDB0] + 8) == a2) : (v4 = 0), v4))
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v12, *&v3, *&a2, 0x3FF0000000000000);
      _os_log_fault_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", v12, 0x20u);
    }

    if (a2 >= v3)
    {
      a1 = v3;
    }

    else
    {
      a1 = a2;
    }

    v8 = 0.6;
    v7 = 0.67;
  }

  else
  {
    v5 = fabs(a1 / a2);
    if (a2 < a1)
    {
      a1 = a2;
    }

    v6 = v5 <= 1.0;
    v7 = 0.67;
    if (!v6)
    {
      v7 = 0.7;
    }

    v8 = 0.6;
    if (!v6)
    {
      v8 = 0.55;
    }
  }

  if (a1 <= 460.0)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  CGRound(v11 * a2);
}

void static CuratedLibraryGeometryHelper.carouselAspectRatio()()
{
  PFDeviceScreenSize();
  v1 = v0;
  v3 = v2;
  PFDeviceScreenScale();
  v5 = 1.0 / v4;
  v6 = v1 * v5;
  v7 = v3 * v5;
  if (v7 >= v6)
  {
    *&v8 = v6;
  }

  else
  {
    *&v8 = v7;
  }

  if (v6 > v7)
  {
    *&v9 = v6;
  }

  else
  {
    *&v9 = v7;
  }

  if (*&v8 >= *&v9)
  {
    v10 = *&v9;
  }

  else
  {
    v10 = *&v8;
  }

  v11 = *&v8 == 0.0 || *&v9 == 0.0;
  v12 = MEMORY[0x1E69BDDB0];
  if (v11 || (*&v9 == *MEMORY[0x1E69BDDB0] ? (v13 = *&v8 == *(MEMORY[0x1E69BDDB0] + 8)) : (v13 = 0), v13))
  {
    v17 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v34, v9, v8, 0x3FF0000000000000);
      _os_log_fault_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", v34, 0x20u);
    }

    v16 = 0.6;
    v15 = 0.67;
  }

  else
  {
    v14 = fabs(*&v9 / *&v8) <= 1.0;
    v15 = 0.67;
    if (!v14)
    {
      v15 = 0.7;
    }

    v16 = 0.6;
    if (!v14)
    {
      v16 = 0.55;
    }
  }

  if (v10 > 460.0)
  {
    v15 = v16;
  }

  v19 = CGRound(*&v8 * v15);
  v20 = *&v19;
  if (*&v9 == 0.0 || v19 == 0.0 || *&v9 == *v12 && v19 == v12[1])
  {
    v21 = MEMORY[0x1E69E9C10];
    v22 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v34, v9, v20, 0x3FF0000000000000);
      _os_log_fault_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", v34, 0x20u);
    }
  }

  if (*&v9 >= *&v8)
  {
    v23 = *&v8;
  }

  else
  {
    v23 = *&v9;
  }

  if (v11 || (*&v8 == *v12 ? (v24 = *&v9 == v12[1]) : (v24 = 0), v24))
  {
    v28 = MEMORY[0x1E69E9C10];
    v29 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v34, v8, v9, 0x3FF0000000000000);
      _os_log_fault_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", v34, 0x20u);
    }

    v27 = 0.6;
    v26 = 0.67;
  }

  else
  {
    v25 = fabs(*&v8 / *&v9) <= 1.0;
    v26 = 0.67;
    if (!v25)
    {
      v26 = 0.7;
    }

    v27 = 0.6;
    if (!v25)
    {
      v27 = 0.55;
    }
  }

  if (v23 > 460.0)
  {
    v26 = v27;
  }

  v30 = CGRound(*&v9 * v26);
  v31 = *&v30;
  if (*&v8 == 0.0 || v30 == 0.0 || *&v8 == *v12 && v30 == v12[1])
  {
    v32 = MEMORY[0x1E69E9C10];
    v33 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v34, v8, v31, 0x3FF0000000000000);
      _os_log_fault_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", v34, 0x20u);
    }
  }
}

uint64_t sub_1A4688E40(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1A4688E98(a1, a2);
  return v4;
}

uint64_t sub_1A4688E98(void *a1, uint64_t a2)
{
  v6 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v10 = *(a2 + 8);
  v12 = *(a2 + 16);
  LOBYTE(v8) = *(a2 + 24);
  *(v2 + 16) = a1;
  if ((v8 & 1) == 0)
  {
    sub_1A3C540A4();
    v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1A52F8E10;
    v16 = a1;
    sub_1A4689094(v11, v10, v16, v15 + v14);
    if (v3)
    {
      sub_1A4396924();

      *(v15 + 16) = 0;

      goto LABEL_6;
    }

LABEL_9:
    sub_1A4396924();
    *(v2 + 24) = v15;
    return v2;
  }

  v13 = a1;
  sub_1A4689094(v11, v10, v13, v9);
  if (!v3)
  {
    v15 = sub_1A46892E8(v9, v12);

    goto LABEL_9;
  }

  sub_1A4396924();
LABEL_6:

  type metadata accessor for LemonadeTestShelvesDataSource();
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t sub_1A4689094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  v7 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeFeatureLibrary(0);
  v11 = sub_1A3C4E89C(a3);
  v12 = *(*v11 + 240);
  v22 = v11;
  result = v12();
  v14 = result;
  v15 = *(result + 16);
  if (!v15)
  {
LABEL_8:

    sub_1A4689680();
    swift_allocError();
    *v19 = a1;
    v19[1] = a2;
    swift_willThrow();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v16 = 0;
  while (v16 < *(v14 + 16))
  {
    sub_1A3C531C8(v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, v10);
    sub_1A3C5322C();
    if (LemonadeShelfIdentifier.rawValue.getter() == a1 && v17 == a2)
    {

      return sub_1A3C59944(v10, v21);
    }

    v18 = sub_1A524EAB4();

    if (v18)
    {

      return sub_1A3C59944(v10, v21);
    }

    ++v16;
    result = sub_1A3C53E7C(v10);
    if (v15 == v16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A46892E8(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
      v5 = sub_1A524CAC4();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      sub_1A3C531C8(v3, v5 + v7);
      v8 = a2 - 1;
      if (a2 != 1)
      {
        v9 = *(v6 + 72);
        v10 = v5 + v9 + v7;
        do
        {
          sub_1A3C531C8(v3, v10);
          v10 += v9;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    sub_1A3C53E7C(v3);
    return v5;
  }

  return result;
}

void (*sub_1A46894BC(uint64_t *a1))(void *a1)
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

uint64_t sub_1A4689544(uint64_t a1)
{
  result = sub_1A4689640(&qword_1EB13FD60);
  *(a1 + 8) = result;
  return result;
}

void sub_1A46895BC()
{
  type metadata accessor for LemonadeTestShelvesDataSource();
  sub_1A4689640(&qword_1EB13FD68);

    ;
  }
}

uint64_t sub_1A4689640(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadeTestShelvesDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4689680()
{
  result = qword_1EB13FD70;
  if (!qword_1EB13FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FD70);
  }

  return result;
}

void sub_1A46896D4()
{
  sub_1A4689B98(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A4689A00(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A4689D80();
}

void sub_1A46898D0()
{
  if (!qword_1EB124410)
  {
    sub_1A4689938();
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124410);
    }
  }
}

void sub_1A4689938()
{
  if (!qword_1EB121108)
  {
    sub_1A4689990();
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121108);
    }
  }
}

void sub_1A4689990()
{
  if (!qword_1EB123188)
  {
    sub_1A4689A00(255);
    sub_1A4689B98(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB123188);
    }
  }
}

void sub_1A4689A78()
{
  if (!qword_1EB123F08)
  {
    sub_1A4689B18();
    sub_1A468A988(255, &unk_1EB122350, sub_1A3DF20B4, MEMORY[0x1E697E3F0], MEMORY[0x1E697FB30]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123F08);
    }
  }
}

void sub_1A4689B18()
{
  if (!qword_1EB121E88)
  {
    sub_1A3DF20B4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E88);
    }
  }
}

void sub_1A4689BE8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A4689C4C()
{
  if (!qword_1EB123F10)
  {
    sub_1A4689B18();
    sub_1A4689CB4();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123F10);
    }
  }
}

void sub_1A4689CB4()
{
  if (!qword_1EB1245D8)
  {
    sub_1A468A988(255, &qword_1EB1222C0, sub_1A444E958, &type metadata for TimelineTextEngineCellViewModifier, MEMORY[0x1E697FDE8]);
    sub_1A468AF48(&qword_1EB1222C8, &qword_1EB1222C0, sub_1A444E958, &type metadata for TimelineTextEngineCellViewModifier);
    v0 = sub_1A5247FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1245D8);
    }
  }
}

void sub_1A4689D80()
{
  v0 = sub_1A5249354();
  MEMORY[0x1EEE9AC00](v0);
  sub_1A4689A28(0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A47F3348();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A468A0FC()
{
  v0 = sub_1A5249354();
  MEMORY[0x1EEE9AC00](v0);
  sub_1A4689C4C();
  MEMORY[0x1EEE9AC00](v1);
  sub_1A4689BC0(0);
  MEMORY[0x1EEE9AC00](v2);
  sub_1A47F3348();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A468A4E4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_14;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1A4300D10();
    }

    *(v1 + 8 * i) = v8;

    if (v4 - 4 >= *(v1 + 16))
    {
      goto LABEL_15;
    }

    *(v1 + 8 * v4) = v7;

LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

double sub_1A468A5D8(double a1)
{
  v2 = *sub_1A47F33BC();
  v3 = *sub_1A47F33C8();
  v4 = *sub_1A47F33A4();
  v5 = v4 - *sub_1A47F3398();
  v6 = sub_1A47F33B0();
  v7 = (a1 - v2) / (v3 - v2);
  if (v7 <= 1.0)
  {
    v8 = (a1 - v2) / (v3 - v2);
  }

  else
  {
    v8 = 1.0;
  }

  v9 = v7 > 0.0;
  v10 = 0.0;
  if (v9)
  {
    v10 = v8;
  }

  return v5 * (1.0 - v10) + v10 * *v6;
}

double sub_1A468A664(double a1)
{
  v2 = *sub_1A47F33BC();
  v3 = *sub_1A47F33C8();
  v4 = *sub_1A47F33A4();
  v5 = *sub_1A47F33B0();
  v6 = sub_1A47F3398();
  v7 = (a1 - v2) / (v3 - v2);
  if (v7 <= 1.0)
  {
    v8 = (a1 - v2) / (v3 - v2);
  }

  else
  {
    v8 = 1.0;
  }

  v9 = v7 > 0.0;
  v10 = 0.0;
  if (v9)
  {
    v10 = v8;
  }

  return v4 * (1.0 - v10) + v10 * (v5 + *v6);
}

void sub_1A468A74C()
{
  if (!qword_1EB1202A0)
  {
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1202A0);
    }
  }
}

uint64_t sub_1A468A79C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A468A804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1A468C5A0();

  return MEMORY[0x1EEDDDD18](a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_1A468A888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1A468C5A0();

  return MEMORY[0x1EEDDDD20](a1, a2, a3, a4, a5, v12, a6);
}

void sub_1A468A90C(uint64_t *a1@<X8>)
{
  *a1 = sub_1A524BC74();
  a1[1] = v2;
  sub_1A46898D0();
  sub_1A46896D4();
}

double sub_1A468A968(uint64_t a1)
{
  result = *a1 / 1000.0;
  **(a1 + 8) = result;
  return result;
}

void sub_1A468A988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A468A9F0()
{
  if (!qword_1EB1240E8)
  {
    sub_1A468A988(255, &qword_1EB122280, sub_1A444EAF8, &type metadata for WriteOutEffect, MEMORY[0x1E697FDE8]);
    sub_1A468AA90();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1240E8);
    }
  }
}

void sub_1A468AA90()
{
  if (!qword_1EB1221D0)
  {
    sub_1A468AAEC();
    v0 = sub_1A5249D34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1221D0);
    }
  }
}

unint64_t sub_1A468AAEC()
{
  result = qword_1EB16CEC0[0];
  if (!qword_1EB16CEC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB16CEC0);
  }

  return result;
}

uint64_t sub_1A468AB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1A468C54C();

  return MEMORY[0x1EEDDDD18](a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_1A468ABFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1A468C54C();

  return MEMORY[0x1EEDDDD20](a1, a2, a3, a4, a5, v12, a6);
}

void sub_1A468AC80(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_1A468A988(0, &qword_1EB122280, sub_1A444EAF8, &type metadata for WriteOutEffect, MEMORY[0x1E697FDE8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  sub_1A468A9F0();
  *(a2 + *(v7 + 36)) = v5;
}

double sub_1A468AD40@<D0>(double *a1@<X8>)
{
  result = *v1 * 1000.0;
  *a1 = result;
  return result;
}

double sub_1A468AD5C(double *a1)
{
  result = *a1 / 1000.0;
  *v1 = result;
  return result;
}

double (*sub_1A468AD78(uint64_t a1))(uint64_t)
{
  *(a1 + 8) = v1;
  *a1 = *v1 * 1000.0;
  return sub_1A468C6C0;
}

void sub_1A468ADD8()
{
  if (!qword_1EB121520)
  {
    sub_1A4689938();
    sub_1A468C37C(&qword_1EB121110, sub_1A4689938);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121520);
    }
  }
}

unint64_t sub_1A468AE6C()
{
  result = qword_1EB1240F0;
  if (!qword_1EB1240F0)
  {
    sub_1A468A9F0();
    sub_1A468AF48(&qword_1EB122288, &qword_1EB122280, sub_1A444EAF8, &type metadata for WriteOutEffect);
    sub_1A468C37C(&qword_1EB1221D8, sub_1A468AA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1240F0);
  }

  return result;
}

uint64_t sub_1A468AF48(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A468A988(255, a2, a3, a4, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A468AFBC(uint64_t a1, uint64_t *a2, double a3)
{
  v147 = a3;
  v146 = a2;
  v142 = sub_1A52486E4();
  v149 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v141 = v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1A524A404();
  v5 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v139 = v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v138 = v103 - v8;
  sub_1A468C1A0(0, &qword_1EB120B20, MEMORY[0x1E6981060]);
  v137 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v136 = v103 - v10;
  v11 = MEMORY[0x1E69E6AA0];
  sub_1A468C0DC(0, &qword_1EB120508, MEMORY[0x1E69E6AA0]);
  v116 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v115 = v103 - v13;
  sub_1A468C0BC(0);
  v122 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v148 = (v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143 = sub_1A524A3D4();
  v145 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v114 = v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v119 = v103 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v125 = v103 - v20;
  sub_1A468C1A0(0, &qword_1EB120B28, MEMORY[0x1E6981028]);
  v124 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v123 = v103 - v22;
  sub_1A468C224(0, &qword_1EB120500, v11);
  v110 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v109 = v103 - v24;
  sub_1A468C204(0);
  v113 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v127 = (v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_1A524A3E4();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v108 = v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v103 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v111 = v103 - v34;
  sub_1A468C2E8();
  v36 = v35 - 8;
  MEMORY[0x1EEE9AC00](v35);
  v38 = v103 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1A524A414();
  (*(*(v39 - 8) + 16))(v38, a1, v39);
  v40 = *(v36 + 44);
  v41 = sub_1A468C37C(&qword_1EB122048, MEMORY[0x1E6981090]);
  sub_1A524CFD4();
  v42 = v38;
  sub_1A524D034();
  if (*&v38[v40] == *&v153.m11)
  {
    return sub_1A468C4EC(v42, sub_1A468C2E8);
  }

  v112 = (v28 + 16);
  v107 = (v28 + 32);
  v128 = (v145 + 32);
  v129 = (v145 + 16);
  v120 = (v145 + 8);
  v134 = (v5 + 32);
  v135 = (v5 + 16);
  v132 = (v5 + 8);
  v133 = (v149 + 8);
  v103[0] = v28 + 8;
  v121 = v27;
  v118 = v32;
  v105 = v39;
  v106 = v38;
  v103[1] = v41;
  v104 = v40;
  while (1)
  {
    v45 = sub_1A524D0C4();
    v46 = v111;
    v149 = *v112;
    v149(v111);
    v45(&v153, 0);
    sub_1A524D044();
    v47 = *v107;
    (*v107)(v32, v46, v27);
    v48 = sub_1A468C37C(&qword_1EB122050, MEMORY[0x1E6981048]);
    sub_1A524CFD4();
    v49 = v32;
    result = sub_1A524D034();
    m11 = v153.m11;
    v51 = v152.m11;
    if (*&v152.m11 < *&v153.m11)
    {
      break;
    }

    v52 = v109;
    v53 = *(v110 + 52);
    (v149)(&v109[v53], v49, v27);
    v54 = v127;
    *v127 = m11;
    v54[1] = v51;
    v54[2] = m11;
    v47(v108, &v52[v53], v27);
    v55 = v54 + *(v113 + 52);
    sub_1A468C37C(&qword_1EB122058, MEMORY[0x1E6981048]);
    v131 = v55;
    result = sub_1A524C914();
    v56 = v143;
    v57 = v119;
    if (*&m11 != *&v51)
    {
      v117 = v48;
      v126 = v51;
      while (*&m11 < *&v51)
      {
        v58 = *&m11 + 1;
        v127[2] = *&v58;
        sub_1A468C3C4();
        v60 = *(v59 + 36);
        v61 = v131;
        sub_1A524D034();
        if (*&v61[v60] == *&v153.m11)
        {
          goto LABEL_4;
        }

        v130 = *&v58;
        v62 = sub_1A524D0C4();
        v63 = *v129;
        v64 = v125;
        (*v129)(v125);
        v62(&v153, 0);
        sub_1A524D044();
        v65 = v123;
        v66 = *(v124 + 48);
        v67 = *v128;
        (*v128)(&v123[v66], v64, v56);
        v67(v57, &v65[v66], v56);
        if (v147 >= 1.0)
        {
          sub_1A52486B4();
          result = (*v120)(v57, v56);
        }

        else
        {
          sub_1A468C37C(&qword_1EB122060, MEMORY[0x1E6981028]);
          sub_1A524CFD4();
          sub_1A524D034();
          v68 = sub_1A524D024();
          if (v68 > 1.0)
          {
            v69 = v68;
          }

          else
          {
            v69 = 1.0;
          }

          sub_1A524CFD4();
          result = sub_1A524D034();
          v70 = v153.m11;
          v71 = v152.m11;
          if (*&v152.m11 < *&v153.m11)
          {
            goto LABEL_29;
          }

          v72 = v115;
          v73 = *(v116 + 52);
          (v63)(&v115[v73], v57, v56);
          v74 = v148;
          *v148 = v70;
          v74[1] = v71;
          v74[2] = v70;
          v67(v114, &v72[v73], v56);
          v75 = v74 + *(v122 + 52);
          sub_1A468C37C(&qword_1EB122068, MEMORY[0x1E6981028]);
          sub_1A524C914();
          if (*&v70 != *&v71)
          {
            v76 = 1.0 / v69;
            sub_1A468C458();
            v144 = v71;
            v145 = v77;
            do
            {
              *(v148 + 2) = *&v70 + 1;
              v78 = &v75[*(v145 + 36)];
              sub_1A524D034();
              if (*v78 == *&v153.m11)
              {
                break;
              }

              v79 = sub_1A524D0C4();
              v80 = *v135;
              v149 = (*&v70 + 1);
              v81 = v138;
              v82 = v140;
              v80(v138);
              v79(&v153, 0);
              sub_1A524D044();
              v83 = v136;
              v84 = *(v137 + 48);
              v85 = *v134;
              (*v134)(&v136[v84], v81, v82);
              v86 = &v83[v84];
              v56 = v143;
              v87 = v139;
              v85(v139, v86, v82);
              v154 = *v146;
              v88 = (v147 - v76 * *&v70 * 0.6) / (v76 * *&v70 * 0.6 + 0.4 - v76 * *&v70 * 0.6);
              v89 = v88 <= 1.0 ? (v147 - v76 * *&v70 * 0.6) / (v76 * *&v70 * 0.6 + 0.4 - v76 * *&v70 * 0.6) : 1.0;
              v90 = v89 + -1.0;
              v91 = v88 > 0.0 ? v90 : -1.0;
              v92 = v91 * v91 * 3.4 + pow(v91, 3.0) * 4.4 + 1.0;
              v93 = v92 + (1.0 - v92) * 0.0;

              sub_1A524A3F4();
              v167.origin.x = v155;
              v167.size.width = v157;
              v167.origin.y = v156 - v158;
              v167.size.height = v158 + v159;
              MidX = CGRectGetMidX(v167);
              sub_1A524A3F4();
              v95 = v160;
              v96 = *(MEMORY[0x1E69792E8] + 80);
              *&v153.m31 = *(MEMORY[0x1E69792E8] + 64);
              *&v153.m33 = v96;
              v97 = *(MEMORY[0x1E69792E8] + 112);
              *&v153.m41 = *(MEMORY[0x1E69792E8] + 96);
              *&v153.m43 = v97;
              v98 = *(MEMORY[0x1E69792E8] + 16);
              *&v153.m11 = *MEMORY[0x1E69792E8];
              *&v153.m13 = v98;
              v99 = *(MEMORY[0x1E69792E8] + 48);
              *&v153.m21 = *(MEMORY[0x1E69792E8] + 32);
              *&v153.m23 = v99;
              CATransform3DTranslate(&v152, &v153, MidX, v160, 0.0);
              v151 = v152;
              CATransform3DScale(&v153, &v151, v93, v93, 1.0);
              v151 = v153;
              CATransform3DTranslate(&v150, &v151, -MidX, -v95, 0.0);
              v161 = *&v150.m11;
              v162 = *&v150.m14;
              m22 = v150.m22;
              m24 = v150.m24;
              v165 = *&v150.m41;
              m44 = v150.m44;
              v100 = v141;
              sub_1A52486D4();
              sub_1A52486F4();
              (*v133)(v100, v142);
              sub_1A52486C4();
              v101 = v144;
              (*v132)(v87, v82);

              v70 = *&v149;
            }

            while (*&v101 != v149);
          }

          v57 = v119;
          (*v120)(v119, v56);
          v102 = v148;
          *(v148 + *(v122 + 56)) = 1;
          result = sub_1A468C4EC(v102, sub_1A468C0BC);
        }

        m11 = v130;
        v51 = v126;
        v27 = v121;
        if (*&v130 == *&v126)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      break;
    }

LABEL_4:
    v32 = v118;
    (*v103[0])(v118, v27);
    v44 = v127;
    *(v127 + *(v113 + 56)) = 1;
    sub_1A468C4EC(v44, sub_1A468C204);
    v42 = v106;
    sub_1A524D034();
    if (*(v42 + v104) == *&v153.m11)
    {
      return sub_1A468C4EC(v42, sub_1A468C2E8);
    }
  }

  __break(1u);
  return result;
}

void (*sub_1A468BF5C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A5247AC4();
  return sub_1A3D3D728;
}

unint64_t sub_1A468BFE8()
{
  result = qword_1EB16CEB0;
  if (!qword_1EB16CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB16CEB0);
  }

  return result;
}

unint64_t sub_1A468C03C()
{
  result = qword_1EB120B08;
  if (!qword_1EB120B08)
  {
    sub_1A3D868AC();
    sub_1A3DE7848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120B08);
  }

  return result;
}

void sub_1A468C0DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1A3D868AC();
    v9[0] = v6;
    v9[1] = sub_1A524A3D4();
    v9[2] = sub_1A468C03C();
    v9[3] = sub_1A468C37C(&qword_1EB122068, MEMORY[0x1E6981028]);
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A468C1A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A468C224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1A3D868AC();
    v9[0] = v6;
    v9[1] = sub_1A524A3E4();
    v9[2] = sub_1A468C03C();
    v9[3] = sub_1A468C37C(&qword_1EB122058, MEMORY[0x1E6981048]);
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A468C2E8()
{
  if (!qword_1EB1204B0)
  {
    sub_1A524A414();
    sub_1A468C37C(&qword_1EB122048, MEMORY[0x1E6981090]);
    v0 = sub_1A524E684();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1204B0);
    }
  }
}

uint64_t sub_1A468C37C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A468C3C4()
{
  if (!qword_1EB1204B8)
  {
    sub_1A524A3E4();
    sub_1A468C37C(&qword_1EB122050, MEMORY[0x1E6981048]);
    v0 = sub_1A524E684();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1204B8);
    }
  }
}

void sub_1A468C458()
{
  if (!qword_1EB1204C0)
  {
    sub_1A524A3D4();
    sub_1A468C37C(&qword_1EB122060, MEMORY[0x1E6981028]);
    v0 = sub_1A524E684();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1204C0);
    }
  }
}

uint64_t sub_1A468C4EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A468C54C()
{
  result = qword_1EB125BB0;
  if (!qword_1EB125BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125BB0);
  }

  return result;
}

unint64_t sub_1A468C5A0()
{
  result = qword_1EB1252C0;
  if (!qword_1EB1252C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1252C0);
  }

  return result;
}

uint64_t sub_1A468C5F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A468C65C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A468C6C8()
{
  swift_getKeyPath();
  (*(*v0 + 1080))();

  swift_beginAccess();
  return v0[32];
}

uint64_t sub_1A468C748@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A468C7E8(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[32] == v2)
  {
    v1[32] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 1088))(v5);
  }

  return result;
}

uint64_t sub_1A468C8E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

void (*sub_1A468C938(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  v4[7] = sub_1A4504FF8();
  return sub_1A468CA88;
}

uint64_t type metadata accessor for GenerativeStoryAmbiguityManager()
{
  result = qword_1EB163370;
  if (!qword_1EB163370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A468CB40@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 1080))();

  v3 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__currentlyResolvingAmbiguity;
  swift_beginAccess();
  return sub_1A469B324(v1 + v3, a1, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720], sub_1A4699E4C);
}

uint64_t sub_1A468CC6C(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1A4699E4C(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  sub_1A469B324(a1, &v9 - v6, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, v4, sub_1A4699E4C);
  return (*(**a2 + 304))(v7);
}

uint64_t sub_1A468CD8C(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6720];
  sub_1A4699E4C(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__currentlyResolvingAmbiguity;
  swift_beginAccess();
  sub_1A469B324(v1 + v7, v6, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, v3, sub_1A4699E4C);
  v8 = sub_1A4699430(v6, a1);
  sub_1A3C2CB78(v6, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, v3, sub_1A4699E4C);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v12[-16] = v1;
    *&v12[-8] = a1;
    (*(*v1 + 1088))(v10);
  }

  else
  {
    sub_1A469B324(a1, v6, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720], sub_1A4699E4C);
    swift_beginAccess();
    sub_1A4699840(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_1A3C2CB78(a1, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720], sub_1A4699E4C);
}

uint64_t sub_1A468D034(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1A4699E4C(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1A469B324(a2, &v10 - v6, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, v4, sub_1A4699E4C);
  v8 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__currentlyResolvingAmbiguity;
  swift_beginAccess();
  sub_1A4699840(v7, a1 + v8);
  return swift_endAccess();
}

void (*sub_1A468D148(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  v4[7] = sub_1A468CAE0();
  return sub_1A468D298;
}

uint64_t sub_1A468D2A4(uint64_t a1)
{
  v3 = (*v1 + 344);
  v4 = *v3;
  v5 = (*v3)();
  LOBYTE(a1) = sub_1A4696ECC(v5, a1);

  if ((a1 & 1) == 0)
  {
    swift_retain_n();
    v7 = sub_1A5246F04();
    v8 = sub_1A524D264();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      swift_slowAlloc();
      *v9 = 136643075;
      v4();
      sub_1A3C52C70(0, &qword_1EB13CD38);
      sub_1A524C3F4();

      sub_1A3C2EF94();
    }
  }

  return result;
}

void sub_1A468D4B8(void *a1)
{
  v2 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__forceDisambiguatedTexts;
  a1[2] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__forceDisambiguatedTexts;
  *a1 = *(v1 + v2);
  a1[1] = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A468D510(void *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *(v3 + v2);
  *(v3 + v2) = *a1;
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A468D2A4(v4);
}

uint64_t sub_1A468D580@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  return result;
}

void sub_1A468D78C(uint64_t *a1)
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
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  sub_1A468D4B8(v4);
}

void (*sub_1A468D998(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  v4[7] = sub_1A468D8E8();
  return sub_1A468DAE8;
}

uint64_t sub_1A468DB54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result;
  return result;
}

void (*sub_1A468DD84(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  v4[7] = sub_1A468DAF4();
  return sub_1A468DED4;
}

void sub_1A468DF40()
{
  swift_getKeyPath();
  (*(*v0 + 1080))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A468DFCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 488))();
  *a2 = result;
  return result;
}

uint64_t sub_1A468E07C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__selectedLocationAssetsUUIDs;
  swift_beginAccess();
  if (*(v1 + v3))
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
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v7 = v1;
    v8 = a1;
    (*(*v1 + 1088))(v5);
  }

  *(v1 + v3) = 0;
}

void (*sub_1A468E1C0(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  v4[7] = sub_1A468DEE0();
  return sub_1A468E310;
}

void (*sub_1A468E3B8(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  v4[7] = sub_1A468E31C();
  return sub_1A468E508;
}

void (*sub_1A468E5B0(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  v4[7] = sub_1A468E514();
  return sub_1A468E700;
}

uint64_t sub_1A468E780(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*(*v2 + 1080))();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1A468E830(char a1, uint64_t *a2)
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
    (*(*v2 + 1088))(v7);
  }

  return result;
}

void (*sub_1A468E92C(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  v4[7] = sub_1A468E70C();
  return sub_1A468EA7C;
}

uint64_t sub_1A468EA88()
{
  if ((*(*v0 + 536))() & 1) != 0 || ((*(*v0 + 584))())
  {
    return 1;
  }

  v2 = *(*v0 + 632);

  return v2();
}

void sub_1A468EB40(void *a1)
{
  v2 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__unresolvedAmbiguityData;
  a1[2] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__unresolvedAmbiguityData;
  *a1 = *(v1 + v2);
  a1[1] = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A468EB98(void *a1, char a2)
{
  v3 = a1[1];
  *(v3 + a1[2]) = *a1;
  swift_unknownObjectUnownedLoadStrong();
  v4 = v3[3];
  swift_getObjectType();
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  (*(*v3 + 688))();
  (*(v4 + 8))();

  swift_unknownObjectRelease();
}

uint64_t sub_1A468ECD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 688))();
  *a2 = result;
  return result;
}

void sub_1A468ED94()
{
  swift_getKeyPath();
  (*(*v0 + 1080))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A468EFD8(uint64_t *a1)
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
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  sub_1A468EB40(v4);
}

uint64_t sub_1A468F134()
{
  v1 = sub_1A5244FE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v41 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - v5;
  v7 = sub_1A52444C4();
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v13 = *(v36 - 8);
  v14 = MEMORY[0x1EEE9AC00](v36);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v0 + 688))(v14);
  v18 = result;
  v40 = *(result + 16);
  if (v40)
  {
    v19 = v2;
    v20 = 0;
    v38 = result + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v33 = (v34 + 4);
    v32 = *MEMORY[0x1E69C1300];
    v30 = v10;
    v31 = (v19 + 104);
    v39 = (v19 + 8);
    ++v34;
    v35 = v7;
    v29 = v13;
    v37 = result;
    while (v20 < *(v18 + 16))
    {
      sub_1A469B0D8(v38 + *(v13 + 72) * v20, v16, type metadata accessor for GenerativeStoryAmbiguityData);
      sub_1A469B0D8(v16, v12, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1A469B580(v16, type metadata accessor for GenerativeStoryAmbiguityData);
        result = sub_1A469B580(v12, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
      }

      else
      {
        (*v33)(v9, v12, v7);
        v21 = v9;
        sub_1A5244484();
        (*v31)(v41, v32, v1);
        sub_1A469B4A4(&qword_1EB12EE28, MEMORY[0x1E69C1388]);
        v22 = v6;
        sub_1A524C9C4();
        sub_1A524C9C4();
        if (v44 == v42 && v45 == v43)
        {
          v23 = 1;
        }

        else
        {
          v23 = sub_1A524EAB4();
        }

        v24 = *v39;
        (*v39)(v41, v1);

        if ((v23 & 1) != 0 && (v16[*(v36 + 40)] & 1) == 0)
        {

          v24(v6, v1);
          (*v34)(v21, v35);
          sub_1A469B580(v16, type metadata accessor for GenerativeStoryAmbiguityData);
          return 1;
        }

        if (sub_1A47C04C0())
        {
          v24(v6, v1);
          v7 = v35;
          v9 = v21;
          (*v34)(v21, v35);
          result = sub_1A469B580(v16, type metadata accessor for GenerativeStoryAmbiguityData);
          v13 = v29;
          v18 = v37;
        }

        else
        {
          v9 = v21;
          if ([objc_opt_self() isMemoryCreationTimeEventDisambiguationEnabled])
          {
            v25 = sub_1A47C0BC8();
          }

          else
          {
            v25 = 0;
          }

          v18 = v37;
          if (*&v16[*(v36 + 32)])
          {
            v6 = v22;
            v24(v22, v1);
            v7 = v35;
            (*v34)(v21, v35);
            result = sub_1A469B580(v16, type metadata accessor for GenerativeStoryAmbiguityData);
            v13 = v29;
          }

          else
          {
            v26 = sub_1A47C0724();
            v24(v22, v1);
            v7 = v35;
            (*v34)(v21, v35);
            result = sub_1A469B580(v16, type metadata accessor for GenerativeStoryAmbiguityData);
            v27 = v26 | v25;
            v18 = v37;
            v6 = v22;
            v13 = v29;
            if (v27)
            {

              return 1;
            }
          }
        }
      }

      if (v40 == ++v20)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:

    return 0;
  }

  return result;
}

uint64_t sub_1A468F82C()
{
  swift_getKeyPath();
  (*(*v0 + 1080))();

  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__disambiguationSession);
  swift_beginAccess();
  v2 = *v1;
  sub_1A40C7F38(*v1, v1[1]);
  return v2;
}

uint64_t sub_1A468F8E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 744))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_1A468F940(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v7[2] = v3;
  v5 = *a1;
  v9 = a1[1];
  v8 = v5;
  (*(*v3 + 1088))(KeyPath, sub_1A469B620, v7, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1A468F9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  v10 = v4;
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  (*(*v4 + 1088))();
  sub_1A3DAECB8(a1, a2);
}