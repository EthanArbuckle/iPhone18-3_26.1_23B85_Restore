uint64_t sub_1A3C784D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  sub_1A3C66EE8(a1);
  sub_1A3C784D4(v5, v6);
  sub_1A3C785A8();
  return sub_1A3C784D4(a1, a2);
}

uint64_t sub_1A3C78558()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  sub_1A3C66EE8(v1);
  return v1;
}

uint64_t sub_1A3C785A8()
{
  result = (*(*v0 + 368))();
  if (result)
  {
    v3 = result;
    v4 = v2;
    if ((*(*v0 + 336))())
    {
      v5 = (*(*v0 + 376))(0, 0);
      v3(v5);
    }

    return sub_1A3C784D4(v3, v4);
  }

  return result;
}

uint64_t sub_1A3C786C0()
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

uint64_t LemonadeSearchViewModel.__allocating_init(photoLibrary:)(void *a1)
{
  v2 = swift_allocObject();
  type metadata accessor for LemonadeActiveSearchUpdater();
  *(v2 + 16) = LemonadeActiveSearchUpdater.__allocating_init()();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  sub_1A5241604();
  *(v2 + 24) = a1;
  v3 = a1;
  sub_1A3C78890();

  return v2;
}

uint64_t LemonadeActiveSearchUpdater.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0;
  *(v0 + 56) = xmmword_1A5317AF0;
  *(v0 + 72) = 2;
  *(v0 + 88) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_1A3C78890()
{
  swift_getKeyPath();
  *&v3[0] = v0;
  sub_1A3C30828(&qword_1EB12A068, type metadata accessor for LemonadeSearchViewModel);
  sub_1A52415D4();

  if (!*(v0 + 40))
  {
LABEL_4:
    type metadata accessor for LemonadeSuggestedSearchQueryFetcher(0);
    v2 = [objc_allocWithZone(MEMORY[0x1E6978A68]) initWithPhotoLibrary_];
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    LemonadeSuggestedSearchQueryFetcher.__allocating_init(searchQueryManager:container:)(v2, v3);
  }

  swift_getKeyPath();
  *&v3[0] = v0;
  sub_1A52415D4();

  result = *(v0 + 40);
  if (!result)
  {
    __break(1u);
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_1A3C78AAC()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

uint64_t type metadata accessor for LemonadeCuratedLibraryViewModel()
{
  result = qword_1EB17C6F0;
  if (!qword_1EB17C6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3C78B34()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1A3C78CE0(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_1A3C56940(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v14[1] = v14 - v7;
  *(v2 + 65) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 81) = 257;
  *(v2 + 83) = 1;
  *(v2 + 88) = 0;
  *(v2 + 96) = 1;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 1;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0;
  *(v2 + 168) = 1;
  *(v2 + 176) = xmmword_1A5317AF0;
  *(v2 + 192) = 4;
  *(v2 + 200) = 0;
  *(v2 + 208) = 0;
  *(v2 + 216) = 1;
  *(v2 + 224) = 0;
  *(v2 + 232) = 0;
  *(v2 + 240) = 1;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 0u;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0;
  *(v2 + 328) = 0x3FF0000000000000;
  *(v2 + 352) = 0;
  *(v2 + 336) = 0;
  *(v2 + 343) = 0;
  *(v2 + 360) = 1;
  *(v2 + 368) = 0x3FF0000000000000;
  *(v2 + 376) = 0;
  *(v2 + 384) = 0;
  *(v2 + 392) = 0x3FF0000000000000;
  type metadata accessor for PhotosCustomScrollAnimationTracker();
  *(v2 + 400) = 0u;
  *(v2 + 416) = 0u;
  *(v2 + 432) = 0u;
  *(v2 + 448) = 0;
  v8 = sub_1A3C792B8();
  *(v2 + 456) = sub_1A3C792C0(0xD000000000000013, 0x80000001A53E6150, v8);
  *(v2 + 464) = 0;
  sub_1A5241604();
  *(v2 + 16) = a1;
  *(v2 + 264) = a2;
  v9 = objc_allocWithZone(off_1E77217D0);
  v14[0] = a1;

  v10 = [v9 init];
  *(v3 + 248) = v10;
  [v10 setHighFrameRateReason_];
  v11 = [objc_allocWithZone(off_1E77217D0) init];
  *(v3 + 256) = v11;
  [v11 setHighFrameRateReason_];
  v12 = *(v3 + 248);
  swift_allocObject();
  swift_weakInit();
  v13 = v12;

  sub_1A524D1A4();
}

uint64_t sub_1A3C7921C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3C79254()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3C792C0(uint64_t a1, uint64_t a2, double a3)
{
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

unint64_t sub_1A3C79318()
{
  result = qword_1EB129728;
  if (!qword_1EB129728)
  {
    type metadata accessor for LemonadeCuratedLibraryViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129728);
  }

  return result;
}

uint64_t sub_1A3C79388()
{
  *(*(v0 + 16) + 272) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A3C793E4()
{
  *(*(v0 + 16) + 288) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A3C79428(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1A3C784D4(v5, v6);
}

uint64_t sub_1A3C794A0(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1A3C794D4(uint64_t a1, uint64_t a2)
{
  sub_1A3C39450();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3C79538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

int *sub_1A3C795A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1A3C79630(a1, a8);
  result = type metadata accessor for LemonadeDetailsContext();
  v16 = (a8 + result[5]);
  *v16 = a2;
  v16[1] = a3;
  v17 = (a8 + result[6]);
  *v17 = a4;
  v17[1] = a5;
  *(a8 + result[7]) = a6;
  *(a8 + result[8]) = a7;
  return result;
}

uint64_t sub_1A3C79630(uint64_t a1, uint64_t a2)
{
  sub_1A3C36260(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A3C796E4()
{
  type metadata accessor for LemonadeNavigationDestination();
  if (v0 <= 0x3F)
  {
    sub_1A3C377C8(319, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A5241614();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1A3C798A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A3C7991C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A3C362C4(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }
}

uint64_t sub_1A3C799F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, _BYTE *a6, uint64_t a7, char a8)
{
  v14 = swift_allocObject();
  LOBYTE(a6) = *a6;
  v15 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__detailsContext;
  v16 = type metadata accessor for LemonadeDetailsContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  *(v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__dismissSignal) = 0;
  swift_weakInit();
  *(v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isPresentationScheduled) = 0;
  *(v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled) = 0;
  v17 = MEMORY[0x1E69E7CC0];
  *(v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__navigationPath) = MEMORY[0x1E69E7CC0];
  *(v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedSheet) = 0;
  *(v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedPopover) = 0;
  *(v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__sidebarAvailable) = 0;
  *(v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__sidebarVisible) = 0;
  v18 = v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedSheetContent;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  *(v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedFullScreenCover) = 0;
  v19 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__hostViewController;
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollToTopSignal) = 0;
  *(v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration) = 0x3FE0000000000000;
  *(v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_isCoveredTimer) = 0;
  *(v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___isCovered) = 0;
  *(v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___isCoveredForSomeTime) = 0;
  *(v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__navigationRequests) = v17;
  sub_1A5241604();
  sub_1A3CA27C8(a1, v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootDestination, type metadata accessor for LemonadeNavigationDestination);
  v20 = (v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant);
  *v20 = a2;
  v20[1] = a3;
  MEMORY[0x1A590F020](v14 + v19);
  swift_unknownObjectWeakInit();

  *(v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) = a7;
  sub_1A3C79D60(v14 + v15, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C377C8);
  sub_1A3C79EB8(a5, v14 + v15, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext);
  *(v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext) = a6;
  *(v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_overrideEnableNavigationStack) = a8;
  return v14;
}

void *sub_1A3C79CBC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A5244854();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3C79D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C79DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3C362C4(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1A3C79EB8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C377C8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A3C79F58(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  *(v1 + *(v3 + 16)) = 1;
  (*(v4 + 16))(&v6 - v2);
  return sub_1A5249624();
}

uint64_t sub_1A3C7A050(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v6 = *MEMORY[0x1E69E7D40] & *v3;
  v7 = a2();
  (*(*(*(v6 + *a3) - 8) + 8))(a1);
  return v7;
}

unint64_t sub_1A3C7A0F8()
{
  result = qword_1EB181998[0];
  if (!qword_1EB181998[0])
  {
    type metadata accessor for LemonadeRootViewController();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB181998);
  }

  return result;
}

void sub_1A3C7A150(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      sub_1A3C52C70(0, &qword_1EB126B10);
      v4 = v3;
      v5 = sub_1A524DBF4();

      if ((v5 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      swift_unknownObjectWeakAssign();

      return;
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext);
  sub_1A52415C4();
}

uint64_t sub_1A3C7A2E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C7A328(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C7A370(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C7A418(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1A3C7A49C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = sub_1A3C7A568(a3);

  return v5;
}

uint64_t sub_1A3C7A4E8()
{
  if ((sub_1A3C7A634() & 1) == 0)
  {
    return 0;
  }

  result = MEMORY[0x1A590D320]();
  if (result)
  {
    sub_1A3C52C70(0, &unk_1EB120978);
    v1 = [swift_getObjCClassFromMetadata() sharedInstance];
    v2 = [v1 pinCollectionsTabTitle];

    return v2;
  }

  return result;
}

id sub_1A3C7A568(uint64_t a1)
{
  if (((*((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PXPinnedTitleHostingController + 24))() & 1) != 0 && a1 == 1)
  {
    return 0;
  }

  v4.receiver = v1;
  v4.super_class = type metadata accessor for PXPinnedTitleHostingController();
  return objc_msgSendSuper2(&v4, sel_contentScrollViewForEdge_, a1);
}

uint64_t sub_1A3C7A634()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for PXPinnedTitleHostingController + 16);
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A3C7A6B4()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[2];
  }

  else
  {
    v3 = *v0;
    type metadata accessor for PhotosSearchHomeController();
    v4 = v0;
    v5 = (*(v3 + 232))();
    v6 = v0[6];
    v7 = *(*v0 + 208);

    v9 = v7(v8);
    v10 = *(*v4 + 144);
    v11 = *(v4 + v10);
    v12 = *(v4 + v10 + 8);
    v13 = (v4 + *(*v4 + 168));
    v14 = *v13;
    v15 = v13[1];

    sub_1A3C66EE8(v14);
    v16 = sub_1A4213024(v5, v6, v9, v11, v12, v14, v15);
    v17 = v4[2];
    v4[2] = v16;
    v2 = v16;

    v1 = 0;
  }

  v18 = v1;
  return v2;
}

void sub_1A3C7A92C()
{
  sub_1A3C7A9FC(319, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeSuggestedSearchQueryFetcher(319);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A3C7A9FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3C7AA60@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1A3C7AB78(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A524BAC4();
  v8 = type metadata accessor for _PhotosSearchHomeViewControllerHostedView();
  *(a4 + *(v8 + 36)) = a1;
  v9 = *(*(a3 - 8) + 32);
  v10 = a4 + *(v8 + 40);

  return v9(v10, a2, a3);
}

uint64_t sub_1A3C7AB78(unint64_t *a1, void (*a2)(uint64_t))
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

id _LastSeenDateValueAccessor()
{
  if (_LastSeenDateValueAccessor_predicate != -1)
  {
    dispatch_once(&_LastSeenDateValueAccessor_predicate, &__block_literal_global_7_133014);
  }

  v1 = _LastSeenDateValueAccessor_lastSeenDateAccessor;

  return v1;
}

id PXSharedAlbumsActivityLastSeenDate()
{
  v0 = _LastSeenDateValueAccessor();
  v1 = [v0 currentValue];

  return v1;
}

void PhotoKitItemListImplementation.replacing(rawInputFetchResult:libraryFilter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  sub_1A5245EC4();
}

char *sub_1A3C7B478()
{
  v1 = [v0 px_opaqueIdentifiers];
  sub_1A3C7B6A4();
  v2 = sub_1A524CA34();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1A524E2B4();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v11 = MEMORY[0x1E69E7CC0];
  result = sub_1A3C7B80C(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v11;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1A59097F0](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;

      v10 = *(v11 + 16);
      v9 = *(v11 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1A3C7B80C((v9 > 1), v10 + 1, 1);
      }

      ++v5;
      *(v11 + 16) = v10 + 1;
      *(v11 + 8 * v10 + 32) = v8;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A3C7B6A4()
{
  result = qword_1EB12B160;
  if (!qword_1EB12B160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB12B160);
  }

  return result;
}

char *sub_1A3C7B6F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C2E3D0(0, &qword_1EB126208, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1A3C7B80C(char *a1, int64_t a2, char a3)
{
  result = sub_1A3C7B6F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1A3C7B82C(uint64_t a1, uint64_t a2)
{
  v12 = MEMORY[0x1E69E7CC0];
  sub_1A3C7B80C(0, a2 & ~(a2 >> 63), 0);
  result = v12;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      for (i = 0; ; ++i)
      {
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v7 = 0;
        v8 = *(a1 + 8 * i);
        v9 = *(result + 16);
        while (v9 != v7)
        {
          v10 = result + 8 * v7++;
          if (v8 == *(v10 + 32))
          {

            return i;
          }
        }

        v13 = result;
        v11 = *(result + 24);
        if (v9 >= v11 >> 1)
        {
          sub_1A3C7B80C((v11 > 1), v9 + 1, 1);
          result = v13;
        }

        *(result + 16) = v9 + 1;
        *(result + 8 * v9 + 32) = v8;
        if (v6 == a2)
        {

          return a2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

id sub_1A3C7B954(void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      sub_1A3C52C70(0, &qword_1EB126848);
      v4 = a1;
      v5 = a2;
      v6 = v4;
      v7 = v5;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v8 = a1;
    v9 = [objc_opt_self() changeDetailsWithRemovedIndexRange_];
    goto LABEL_7;
  }

  if (a2)
  {
    v8 = a2;
    v9 = [objc_opt_self() changeDetailsWithInsertedIndexRange_];
LABEL_7:
    v10 = v9;

    return v10;
  }

  v12 = *sub_1A41DEF28();

  return v12;
}

uint64_t sub_1A3C7BCC4(uint64_t result)
{
  if (*(result + 8) == *(v1 + 24))
  {
    type metadata accessor for PhotoKitItemListManager.FetchState();
    type metadata accessor for PhotoKitItemListImplementation();
    sub_1A5245E94();
  }

  return result;
}

uint64_t sub_1A3C7BE04@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = (MEMORY[0x1EEE9AC00])();
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t sub_1A3C7C0AC@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  [*a1 count];
  result = sub_1A524EA44();
  *a2 = result;
  a2[1] = v4;
  return result;
}

id PXDiagnosticsServiceRegisteredClasses()
{
  v2[19] = *MEMORY[0x1E69E9840];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v2[4] = objc_opt_class();
  v2[5] = objc_opt_class();
  v2[6] = objc_opt_class();
  v2[7] = objc_opt_class();
  v2[8] = objc_opt_class();
  v2[9] = objc_opt_class();
  v2[10] = objc_opt_class();
  v2[11] = objc_opt_class();
  v2[12] = objc_opt_class();
  v2[13] = objc_opt_class();
  v2[14] = objc_opt_class();
  v2[15] = objc_opt_class();
  v2[16] = objc_opt_class();
  v2[17] = objc_opt_class();
  v2[18] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:19];

  return v0;
}

void PXPPTWillStartTest()
{
  v0 = +[PXKitSettings sharedInstance];
  if ([v0 simulateDroppedFramesDuringPPT])
  {
    [v0 simulatedDroppedFramesDurationInMilliseconds];
    [v0 simulatedDroppedFramesPeriod];
    PXGStartSimulatingLayoutGlitches();
  }
}

uint64_t sub_1A3C7C848(uint64_t a1)
{
  v2 = sub_1A5240564();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1A5240534();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A3C7C93C()
{
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v21[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_1A5241144();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    swift_getKeyPath();
    v22[0] = v11;
    sub_1A3C6A020(&unk_1EB1250B8, type metadata accessor for LemonadeMemoriesEntryCardPositionManager);
    sub_1A52415D4();

    v12 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager__enterBackgroundDate;
    swift_beginAccess();
    sub_1A3C7CD54(v11 + v12, v2);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {

      return sub_1A3C42ED0(v2, sub_1A3C41108);
    }

    else
    {
      (*(v4 + 32))(v9, v2, v3);
      sub_1A5241134();
      sub_1A5241054();
      v14 = v13;
      v15 = *(v4 + 8);
      v15(v7, v3);
      if (*(v11 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_reloadTimeoutAfterAppWentToBackground) >= v14)
      {
        v18 = sub_1A5246F04();
        v19 = sub_1A524D264();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_1A3C1C000, v18, v19, "The MC Card position won’t be reloaded because the appropriate time interval between app sessions hasn’t elapsed", v20, 2u);
          MEMORY[0x1A590EEC0](v20, -1, -1);
        }
      }

      else
      {
        swift_getKeyPath();
        v22[0] = v11;
        sub_1A52415D4();

        v16 = sub_1A3C6A068();
        os_unfair_lock_lock((v16 + 20));
        v17 = *(v16 + 16);
        os_unfair_lock_unlock((v16 + 20));

        LOBYTE(v22[0]) = v17;
        sub_1A3C6A0FC(v22, &v25);
        LOBYTE(v16) = v25;
        swift_getKeyPath();
        v22[2] = v11;
        v23 = v16;
        v24 = v11;
        sub_1A52415C4();
      }

      return (v15)(v9, v3);
    }
  }

  return result;
}

uint64_t sub_1A3C7CD54(uint64_t a1, uint64_t a2)
{
  sub_1A3C41108(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A3C7CDB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C7CE1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C7CE80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C7CEE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C7CF48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C7CFAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C7D010(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C7D074(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C7D0D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A3C7D12C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C7D190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C7D1F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C7D258(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C7D2BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C7DEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak(&a37);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A3C7E11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

unint64_t sub_1A3C7E704()
{
  result = qword_1EB178FA0[0];
  if (!qword_1EB178FA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB178FA0);
  }

  return result;
}

void type metadata accessor for PXCuratedLibraryLayoutStyle()
{
  if (!qword_1EB126828)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB126828);
    }
  }
}

void sub_1A3C7E7F0(unint64_t a1, double a2)
{
  if (a1 >= 2)
  {
    if (a1 != 2)
    {
      type metadata accessor for PXUserInterfaceSizeClass();
      sub_1A524EB44();
      __break(1u);
    }
  }

  else if (a2 == 0.0)
  {
    sub_1A3C7E8B0();
    v2 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v2 defaultFloatingToolbarBottomInset];
  }
}

unint64_t sub_1A3C7E8B0()
{
  result = qword_1EB126A10;
  if (!qword_1EB126A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126A10);
  }

  return result;
}

BOOL PXPreferencesIsVideoAutoplayEnabled()
{
  IsVideoAutoplayEnabled = UIAccessibilityIsVideoAutoplayEnabled();
  keyExistsAndHasValidFormat = 0;
  v1 = CFPreferencesGetAppBooleanValue(@"VideoAutoplayEnabled", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat) != 0;
  if (keyExistsAndHasValidFormat)
  {
    return v1;
  }

  else
  {
    return IsVideoAutoplayEnabled;
  }
}

id _CuratedLibraryAnalysisStatusLocalizedTitleForState(unint64_t a1, int a2, uint64_t a3)
{
  if (a1 < 2)
  {
    v3 = @"PXCuratedLibraryFooterCuratedLibraryCurationCompleteTitle";
LABEL_3:
    v4 = PXLocalizedStringFromTable(v3, @"PhotosUICore");
    goto LABEL_9;
  }

  if (a1 == 2)
  {
    if (a2)
    {
      v3 = @"PXCuratedLibraryFooterCuratedLibraryIdleTitle";
      goto LABEL_3;
    }

    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PXCuratedLibraryFooterCuratedLibraryAnalyzingTitle_Step%li", a3 % 5 + 1];
    v4 = PXLocalizedStringFromTable(v5, @"PhotosUICore");
  }

  else
  {
    v4 = 0;
  }

LABEL_9:

  return v4;
}

id _CuratedLibraryAnalysisStatusLocalizedDescriptionForState(unint64_t a1, int a2, int a3)
{
  if (a3)
  {
    v5 = @"PXCuratedLibraryFooterCuratedLibraryAnalyzingUnpluggedDescription";
    if (a1 < 2)
    {
LABEL_6:
      v6 = PXLocalizedStringFromTable(v5, @"PhotosUICore");

      return v6;
    }

    if (a1 == 2)
    {
      if (!a2)
      {
        v5 = @"PXCuratedLibraryFooterCuratedLibraryAnalyzingPluggedDescription_iOS";
      }

      goto LABEL_6;
    }
  }

  v6 = 0;

  return v6;
}

id PXFetchSortOrderStandardAssetSortDescriptors(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1 == 2)
  {
    v1 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
    v5 = v1;
    v2 = &v5;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v1 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
    v6[0] = v1;
    v2 = v6;
LABEL_5:
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];

    goto LABEL_7;
  }

  v3 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v3;
}

void PXUnregisterPreferencesObserver(void *a1)
{
  observer = a1;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, observer, @"com.apple.mobileslideshow.PreferenceChanged", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, observer, *MEMORY[0x1E69E4EB0], 0);
}

uint64_t _curationAlgorithmForOptions(char a1)
{
  v2 = +[PXPhotosDetailsSettings sharedInstance];
  v3 = v2;
  if ((a1 & 0x20) != 0)
  {
    v4 = [v2 detailsViewCurationAlgorithm];
  }

  else
  {
    v4 = [v2 defaultCurationAlgorithm];
  }

  v5 = v4;

  return v5;
}

unint64_t _sharingFilterForLibraryFilterInContainer(unint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if (([v4 px_isSharedAlbum] & 1) != 0 || (objc_msgSend(v4, "px_isSharedLibrarySharingSuggestion") & 1) != 0 || objc_msgSend(v4, "px_isSharedLibrarySharingSuggestionsSmartAlbum"))
    {
      a1 = 0;
    }
  }

  v5 = PXSharingFilterFromLibraryFilterViewMode(a1);

  return v5;
}

uint64_t PXCuratedLibraryStateIsEmptyLibrary(char a1)
{
  v2 = +[PXCuratedLibrarySettings sharedInstance];
  v3 = [v2 emulatesEmptyLibrary];

  if ((a1 & 3) != 0)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

uint64_t PXCuratedLibraryHeaderWantsTitleForZoomLevel(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 < 2)
  {
    v5 = 0;
  }

  else
  {
    if (a1 - 3 < 2)
    {
      goto LABEL_3;
    }

    if (a1 != 2)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PXCuratedLibraryHeaderWantsTitleForZoomLevel(PXCuratedLibraryZoomLevel, PXFeatureSpec *__strong _Nonnull)"}];
      [v10 handleFailureInFunction:v11 file:@"PXTitleSubtitleLabelSpec+CuratedLibrary.m" lineNumber:32 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v7 = [v3 extendedTraitCollection];
    v8 = [v7 curatedLibraryLayoutStyle];

    if (v8 == 1)
    {
      v9 = +[PXLemonadeSettings sharedInstance];
      v5 = [v9 enableMonthLocationTitles] ^ 1;
    }

    else
    {
LABEL_3:
      v5 = 1;
    }
  }

  return v5;
}

void PXCuratedLibraryHeaderTitleFontForZoomLevel(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 extendedTraitCollection];
  [v4 curatedLibraryLayoutStyle];

  if (a1 <= 2)
  {
    switch(a1)
    {
      case 1:
        [v3 sizeClass];
        [v3 contentSizeCategory];
        goto LABEL_13;
      case 2:
        if ([v3 sizeClass] == 1 && objc_msgSend(v3, "layoutOrientation") == 2)
        {
          [v3 options];
        }

        else if (([v3 options] & 0x400) == 0)
        {
          [v3 userInterfaceIdiom];
        }

        break;
      case 0:
        v5 = [MEMORY[0x1E696AAA8] currentHandler];
        v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIFont * _Nonnull PXCuratedLibraryHeaderTitleFontForZoomLevel(PXCuratedLibraryZoomLevel, PXFeatureSpec *__strong _Nonnull)"}];
        [v5 handleFailureInFunction:v6 file:@"PXFont+CuratedLibrary.m" lineNumber:85 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }

  [v3 contentSizeCategory];
LABEL_13:
  PXPreferredContentSizeCategoryIsAccessibility();
}

uint64_t _PXHeaderTitleNumberOfLinesForZoomLevel(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1 < 2)
  {
    goto LABEL_9;
  }

  if (a1 - 3 < 2)
  {
    v7 = a2 == 4;
    goto LABEL_4;
  }

  if (a1 != 2)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _PXHeaderTitleNumberOfLinesForZoomLevel(PXCuratedLibraryZoomLevel, PXUserInterfaceIdiom, PXExtendedTraitCollection *__strong)"}];
    [v10 handleFailureInFunction:v11 file:@"PXLabelSpec+CuratedLibrary.m" lineNumber:27 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (a2 == 4)
  {
LABEL_9:
    v8 = 1;
    goto LABEL_10;
  }

  v7 = [v5 curatedLibraryLayoutStyle] == 1;
LABEL_4:
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

LABEL_10:

  return v8;
}

uint64_t PXCuratedLibraryHeaderWantsSubtitleForZoomLevel(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 < 2)
  {
    v5 = 0;
  }

  else
  {
    if (a1 - 3 < 2)
    {
      goto LABEL_3;
    }

    if (a1 != 2)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PXCuratedLibraryHeaderWantsSubtitleForZoomLevel(PXCuratedLibraryZoomLevel, PXFeatureSpec *__strong _Nonnull)"}];
      [v10 handleFailureInFunction:v11 file:@"PXTitleSubtitleLabelSpec+CuratedLibrary.m" lineNumber:50 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v7 = [v3 extendedTraitCollection];
    v8 = [v7 curatedLibraryLayoutStyle];

    if (v8 == 1)
    {
      v9 = +[PXLemonadeSettings sharedInstance];
      v5 = [v9 enableMonthLocationTitles];
    }

    else
    {
LABEL_3:
      v5 = 1;
    }
  }

  return v5;
}

void PXCuratedLibraryHeaderSubtitleFontForZoomLevel(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 > 2)
  {
    if ((a1 - 3) < 2)
    {
LABEL_10:
      [v4 contentSizeCategory];
      goto LABEL_13;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        [v3 sizeClass];
        [v4 contentSizeCategory];
        goto LABEL_13;
      case 2:
        if ([v3 sizeClass] == 1)
        {
          [v4 layoutOrientation];
        }

        [v4 options];
        goto LABEL_10;
      case 0:
        v5 = [MEMORY[0x1E696AAA8] currentHandler];
        v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIFont * _Nonnull PXCuratedLibraryHeaderSubtitleFontForZoomLevel(PXCuratedLibraryZoomLevel, PXFeatureSpec *__strong _Nonnull)"}];
        [v5 handleFailureInFunction:v6 file:@"PXFont+CuratedLibrary.m" lineNumber:161 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }

  [v3 contentSizeCategory];
LABEL_13:
  PXPreferredContentSizeCategoryIsAccessibility();
}

uint64_t _PXHeaderSubtitleNumberOfLinesForZoomLevel(unint64_t a1, uint64_t a2)
{
  if (a1 < 4)
  {
    return 3;
  }

  if (a1 != 4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _PXHeaderSubtitleNumberOfLinesForZoomLevel(PXCuratedLibraryZoomLevel, PXUserInterfaceIdiom)"}];
    [v7 handleFailureInFunction:v8 file:@"PXLabelSpec+CuratedLibrary.m" lineNumber:40 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (a2 == 4)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

double _DistanceBetweenTitleAndSubtitleForZoomLevelFeatureSpec(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 < 2)
  {
    v5 = 0.0;
  }

  else if (a1 - 3 >= 2)
  {
    if (a1 != 2)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat _DistanceBetweenTitleAndSubtitleForZoomLevelFeatureSpec(PXCuratedLibraryZoomLevel, PXFeatureSpec *__strong)"}];
      [v7 handleFailureInFunction:v8 file:@"PXTitleSubtitleLabelSpec+CuratedLibrary.m" lineNumber:67 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v5 = 23.0;
  }

  else
  {
    v5 = 26.0;
    if ([v3 sizeClass] == 1)
    {
      if ([v4 sizeSubclass] == 1)
      {
        v5 = 24.0;
      }

      else
      {
        v5 = 26.0;
      }
    }
  }

  return v5;
}

void sub_1A3C86618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PXPreferencesFirstCheckDateForCameraSharingPreferences()
{
  v0 = PXPreferencesGetValue(@"FirstCheckDateForCameraSharingPreferences");
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id PXPreferencesGetValue(const __CFString *a1)
{
  v1 = CFPreferencesCopyAppValue(a1, @"com.apple.mobileslideshow");

  return v1;
}

void *sub_1A3C88D38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A4038B7C();
  v3 = sub_1A524E794();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1A4038330(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;

    v8 = sub_1A4038330(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

PXCuratedLibraryEventTracker *PXCuratedLibraryEventTrackerCreate(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[PXCuratedLibraryEventTracker alloc] initWithViewModel:v4 layout:v3];

  return v5;
}

void sub_1A3C8AB44(void *a1, void *a2)
{
  v3 = v2;
  sub_1A3C52C70(0, &qword_1EB126A10);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v7 = [v6 enableTabs];

  if (v7)
  {
    v8 = [a1 navigationItem];
    [v8 setStyle_];

    v9 = [a1 navigationItem];
    [v9 setLargeTitleDisplayMode_];

    v10 = [a1 navigationItem];
    type metadata accessor for LemonadeRootTitleSubtitleView();
    LOBYTE(v28.receiver) = 0;
    v11 = LemonadeRootTitleSubtitleView.__allocating_init(tabIdentifier:)(&v28);
    [v10 setTitleView_];

    v12 = [a2 photoLibrary];
    v13 = sub_1A3C8B330();
    if (v13)
    {
      v14 = v13;

      v21 = *(v14 + OBJC_IVAR____TtCE12PhotosUICoreCSo30PXCuratedLibraryBarsControllerP33_04793EA4CCDB9CADD5EFC766B5CE4AAD14AssociatedData_subtitleModel);
      v22 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x120);
      v23 = v21;
      v3;
      v22(v3, &off_1F170C600);

      v25 = MEMORY[0x1EEE9AC00](v24);
      MEMORY[0x1EEE9AC00](v25);
      sub_1A52415B4();
      sub_1A4405284();
      v26 = [a1 photoLibrary];
      v31 = 0;
      v30 = 0;
      v28 = 0;
      v29 = 0u;
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      PhotosSearchHomeCoordinator<>.init(photoLibrary:placement:initialContainer:initialSearchText:closeAction:customAssetSelectionHandler:)(v26, &v31, &v28, 0, 0, sub_1A3CBA8F4, v27);
    }

    v15 = objc_allocWithZone(_s14AssociatedDataCMa_5());
    v16 = v12;
    *&v15[OBJC_IVAR____TtCE12PhotosUICoreCSo30PXCuratedLibraryBarsControllerP33_04793EA4CCDB9CADD5EFC766B5CE4AAD14AssociatedData_searchHomeCoordinator] = 0;
    v17 = &v15[OBJC_IVAR____TtCE12PhotosUICoreCSo30PXCuratedLibraryBarsControllerP33_04793EA4CCDB9CADD5EFC766B5CE4AAD14AssociatedData_viewModelObservation];
    *v17 = 0;
    *(v17 + 1) = 0;
    v18 = &v15[OBJC_IVAR____TtCE12PhotosUICoreCSo30PXCuratedLibraryBarsControllerP33_04793EA4CCDB9CADD5EFC766B5CE4AAD14AssociatedData_zoomableViewModelObservation];
    *v18 = 0;
    *(v18 + 1) = 0;
    v19 = &v15[OBJC_IVAR____TtCE12PhotosUICoreCSo30PXCuratedLibraryBarsControllerP33_04793EA4CCDB9CADD5EFC766B5CE4AAD14AssociatedData_assetCountsObservation];
    *v19 = 0;
    *(v19 + 1) = 0;
    v20 = OBJC_IVAR____TtCE12PhotosUICoreCSo30PXCuratedLibraryBarsControllerP33_04793EA4CCDB9CADD5EFC766B5CE4AAD14AssociatedData_librarySummaryPresenter;
    *&v15[v20] = [objc_allocWithZone(_s29LibrarySummaryOutputPresenterCMa()) init];
    type metadata accessor for LemonadeRootSubtitleModel();
    LOBYTE(v28.receiver) = 0;
    LemonadeRootSubtitleModel.__allocating_init(photoLibrary:tabIdentifier:)(v16, &v28);
  }
}

uint64_t sub_1A3C8B240()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

void sub_1A3C8B280(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A3FBE0B8(255, a3, a4);
    v5 = sub_1A524EA54();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A3C8B2D8()
{
  result = qword_1EB124A18;
  if (!qword_1EB124A18)
  {
    sub_1A3C34400(255, &qword_1EB124A20);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EB124A18);
  }

  return result;
}

uint64_t sub_1A3C8B330()
{
  if (qword_1EB1582E0 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1EB1582E8))
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    _s14AssociatedDataCMa_5();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1A3C35B00(v5);
    return 0;
  }
}

uint64_t sub_1A3C8B410()
{
  result = swift_slowAlloc();
  qword_1EB1582E8 = result;
  return result;
}

void sub_1A3C8B438(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3C8B488(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3C8B4D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3C8B878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getICQInAppMessagingClass_block_invoke(uint64_t a1)
{
  iCloudQuotaUILibrary_112138();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ICQInAppMessaging");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getICQInAppMessagingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getICQInAppMessagingClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PXCPLCloudQuotaSourceUtilities.h" lineNumber:24 description:{@"Unable to find class %s", "ICQInAppMessaging"}];

    __break(1u);
  }
}

void sub_1A3C8B9A4()
{
  v1 = v0;
  v2 = [v0 viewController];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = [swift_dynamicCastObjCClassUnconditional() viewProvider];

    v5 = [v4 viewModel];
    v6 = [v5 zoomLevel];

    v7 = [v1 viewController];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 navigationItem];

      v10 = [v9 titleView];
      if (v10)
      {
        type metadata accessor for LemonadeRootTitleSubtitleView();
        if (swift_dynamicCastClass())
        {
          if (v6 == 4)
          {
            v11 = sub_1A524C634();
            v12 = PXLemonadeLocalizedString(v11);

            v13 = sub_1A524C674();
            v15 = v14;

            v16 = v13;
          }

          else
          {
            v16 = 0;
            v15 = 0;
          }

          sub_1A40903B4(v16, v15);
        }

        else
        {
        }
      }
    }

    v17 = [v1 viewController];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 navigationController];

      if (v19)
      {
        v20 = [v19 navigationBar];

        [v20 setNeedsLayout];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A3C8BC40()
{
  if (!qword_1EB120880)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB120880);
    }
  }
}

unint64_t sub_1A3C8BCC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A3C8BDD0();
    v3 = sub_1A524E794();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A3C8BEA4(v4, &v11, sub_1A3C8BC40);
      v5 = v11;
      result = sub_1A3C8BF74(v11);
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

void sub_1A3C8BDD0()
{
  if (!qword_1EB1203E0)
  {
    type metadata accessor for Key(255);
    sub_1A3C30828(&unk_1EB1208B0, type metadata accessor for Key);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1203E0);
    }
  }
}

uint64_t sub_1A3C8BEA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3C8BF0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A3C8BF74(uint64_t a1)
{
  sub_1A524C674();
  sub_1A524EC94();
  sub_1A524C794();
  v2 = sub_1A524ECE4();

  return sub_1A3C8C008(a1, v2);
}

unint64_t sub_1A3C8C008(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1A524C674();
      v8 = v7;
      if (v6 == sub_1A524C674() && v8 == v9)
      {
        break;
      }

      v11 = sub_1A524EAB4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1A3C8C10C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C8C150(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C8C198(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C8C1E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A3C8C270()
{
  v1 = v0;
  sub_1A3C52C70(0, &qword_1EB126A10);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 enableTabs];

  if (!v3)
  {
    return;
  }

  v4 = [v1 viewController];
  if (!v4)
  {
    __break(1u);
    goto LABEL_38;
  }

  v5 = v4;
  objc_opt_self();
  v6 = [swift_dynamicCastObjCClassUnconditional() viewProvider];

  v7 = [v6 viewModel];
  v8 = [v7 librarySummaryPresenter];
  v43 = 0;
  if (([v7 libraryState] & 2) == 0 || objc_msgSend(v7, sel_zoomLevel) != 4 || (v9 = objc_msgSend(v7, sel_zoomablePhotosViewModel), v10 = objc_msgSend(v9, sel_isDisplayingIndividualItems), v9, !v10))
  {
    v19 = 0;
    v21 = 0;
    v18 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
LABEL_10:
    v41 = 0;
    goto LABEL_11;
  }

  v37 = v8;
  v11 = sub_1A3C8B330();
  if (!v11)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = *(v11 + OBJC_IVAR____TtCE12PhotosUICoreCSo30PXCuratedLibraryBarsControllerP33_04793EA4CCDB9CADD5EFC766B5CE4AAD14AssociatedData_subtitleModel);

  v14 = MEMORY[0x1E69E7D40];
  v39 = (*((*MEMORY[0x1E69E7D40] & *v13) + 0x178))();
  v16 = v15;
  v38 = (*((*v14 & *v13) + 0x1A8))();
  v40 = v17;
  v18 = (*((*v14 & *v13) + 0x1D8))();
  v19 = (*((*v14 & *v13) + 0x208))();
  v21 = v20;
  v41 = v16;
  if (v16)
  {

    goto LABEL_11;
  }

  if ([v7 isScrolledToBottom])
  {
    v36 = v21;
    v30 = sub_1A3C9312C(&v43, v6);
    [v30 counts];

    if (v42[0] == 0x7FFFFFFFFFFFFFFFLL || v42[1] == 0x7FFFFFFFFFFFFFFFLL || v42[2] == 0x7FFFFFFFFFFFFFFFLL)
    {

      v41 = 0;
    }

    else
    {
      [v43 counts];
      v31 = PXLocalizedStringForDetailedCountsWithUsage(v42, 3);
      v39 = sub_1A524C674();
      v41 = v32;
    }

    v21 = v36;
    goto LABEL_11;
  }

  if (!v37)
  {

    goto LABEL_10;
  }

  v36 = v21;
  if ([v37 respondsToSelector_])
  {
    v33 = [v37 title];
    if (v33)
    {
      v34 = v33;
      v39 = sub_1A524C674();
      v41 = v35;

      goto LABEL_11;
    }

    v39 = 0;
  }

  else
  {
  }

  v41 = 0;
LABEL_11:
  v22 = [v1 viewController];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 navigationItem];

    v25 = [v24 titleView];
    if (v25)
    {
      type metadata accessor for LemonadeRootTitleSubtitleView();
      if (swift_dynamicCastClass())
      {
        sub_1A409043C(v39, v41, v38, v40, v18, v19, v21);
      }
    }
  }

  v26 = [v1 viewController];
  if (v26 && (v27 = v26, v28 = [v26 navigationController], v27, v28))
  {
    v29 = [v28 navigationBar];

    [v29 setNeedsLayout];
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  sub_1A3C784D4(v19, v21);
}

void sub_1A3C8E100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v43 - 208), 8);
  _Unwind_Resume(a1);
}

void PXProgrammaticNavigationRequestExecute(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1;
  v5 = [v4 destination];
  v6 = [v4 options];
  v7 = [v4 completionHandler];

  if (([v3 routingOptionsForDestination:v5] & 1) == 0)
  {
    PXAssertGetLog();
  }

  [v3 navigateToDestination:v5 options:v6 completionHandler:v7];
}

void sub_1A3C8F034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1A3C8F19C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for PXCuratedLibraryViewModelChanged(0);
    sub_1A4405460(&qword_1EB126780, type metadata accessor for PXCuratedLibraryViewModelChanged);
    sub_1A524EE54();
  }

  return result;
}

void sub_1A3C91280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A3C91834(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A3C91E88()
{
  sub_1A3C56408(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3C92168();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3C9207C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1A3C920BC()
{
  swift_beginAccess();
  if (!qword_1EB1EB7A0)
  {
    qword_1EB1EB7A0 = MEMORY[0x1E69E7CC8];
  }

  swift_beginAccess();
  swift_unknownObjectRetain();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A3C92174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1A3C9226C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1A3C5DCA4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1A45C27E4();
        v14 = v16;
      }

      swift_unknownObjectRelease();
      result = sub_1A3D74B38(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1A3C9226C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3C5DCA4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A3C923E8(v16, a4 & 1);
      v11 = sub_1A3C5DCA4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1A45C27E4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v23 = (v21[6] + 16 * v11);
    *v23 = a2;
    v23[1] = a3;
    *(v21[7] + 8 * v11) = a1;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  *(v21[7] + 8 * v11) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_1A3C923E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3C926A0(0, &unk_1EB12B130, sub_1A3C92704);
  v34 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1A3C926A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524E7A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A3C92704()
{
  result = qword_1EB12B1F0;
  if (!qword_1EB12B1F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB12B1F0);
  }

  return result;
}

id sub_1A3C92774()
{
  result = [objc_allocWithZone(type metadata accessor for PXGridTipsHelper()) init];
  qword_1EB18B138 = result;
  return result;
}

id sub_1A3C9312C(void **a1, id a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *a1;
  }

  else
  {
    v5 = [a2 itemCountsController];
    [v5 prepareCountsIfNeeded];
    swift_beginAccess();
    v6 = *a1;
    *a1 = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id PXCuratedLibraryZoomLevelLocalizedTitle(uint64_t a1, uint64_t a2)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v2 = @"PXCuratedLibraryDaysZoomLevelButtonTitle";
      v3 = @"PXCuratedLibraryDaysZoomLevelButtonShortTitle";
    }

    else
    {
      if (a1 != 4)
      {
        goto LABEL_16;
      }

      v2 = @"PXCuratedLibraryAllPhotosZoomLevelButtonTitle";
      v3 = @"PXCuratedLibraryAllPhotosZoomLevelButtonShortTitle";
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        v2 = @"PXCuratedLibraryMonthsZoomLevelButtonTitle";
        v3 = @"PXCuratedLibraryMonthsZoomLevelButtonShortTitle";
        goto LABEL_10;
      }

LABEL_16:
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull PXCuratedLibraryZoomLevelLocalizedTitle(PXCuratedLibraryZoomLevel, PXLocalizedVariant)"}];
      [v7 handleFailureInFunction:v8 file:@"PXCuratedLibraryUtilities.m" lineNumber:140 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v2 = @"PXCuratedLibraryYearsZoomLevelButtonTitle";
    v3 = @"PXCuratedLibraryYearsZoomLevelButtonShortTitle";
  }

LABEL_10:
  if (a2 == 1)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  v5 = PXLocalizedStringFromTable(v4, @"PhotosUICore");

  return v5;
}

void sub_1A3C95BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A3C9807C(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtCE12PhotosUICoreCSo30PXCuratedLibraryBarsControllerP33_04793EA4CCDB9CADD5EFC766B5CE4AAD29LibrarySummaryOutputPresenter_title);
  result = *(v2 + OBJC_IVAR____TtCE12PhotosUICoreCSo30PXCuratedLibraryBarsControllerP33_04793EA4CCDB9CADD5EFC766B5CE4AAD29LibrarySummaryOutputPresenter_title);
  v6 = *(v2 + OBJC_IVAR____TtCE12PhotosUICoreCSo30PXCuratedLibraryBarsControllerP33_04793EA4CCDB9CADD5EFC766B5CE4AAD29LibrarySummaryOutputPresenter_title + 8);
  *v4 = a1;
  v4[1] = a2;
  if (v6)
  {
    if (a2)
    {
      v7 = result == a1 && v6 == a2;
      if (v7 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_14;
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  v8 = *(v2 + OBJC_IVAR____TtCE12PhotosUICoreCSo30PXCuratedLibraryBarsControllerP33_04793EA4CCDB9CADD5EFC766B5CE4AAD29LibrarySummaryOutputPresenter_onChange);
  if (!v8)
  {
LABEL_14:
  }

  v9 = *(v2 + OBJC_IVAR____TtCE12PhotosUICoreCSo30PXCuratedLibraryBarsControllerP33_04793EA4CCDB9CADD5EFC766B5CE4AAD29LibrarySummaryOutputPresenter_onChange + 8);

  v8(v10);

  return sub_1A3C784D4(v8, v9);
}

void sub_1A3C998CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_1A3C99D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

uint64_t PXDisplayAssetIsSyndicatedAndUnsaved(void *a1)
{
  v1 = a1;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 px_isUnsavedSyndicatedAsset];
  return v3;
}

uint64_t sub_1A3C9A3E8(void (*a1)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a1();
  }

  return result;
}

uint64_t sub_1A3C9A450()
{
  v0 = sub_1A524BEE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v14 = v5;
    v15 = v4;
    v16 = v1;
    sub_1A3FB0B40(sub_1A3FB8494, &block_descriptor_89_0);
    LemonadeSuggestedSearchQueryFetcher.updateRecentSearches()();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11 = MEMORY[0x1E69E7CC0];
    *(&v14 - 2) = v9;
    *(&v14 - 1) = v11;
    aBlock[0] = v9;
    sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
    sub_1A52415C4();

    sub_1A3FB1504(sub_1A3FB8AC0, v9);

    if (qword_1EB17A860 != -1)
    {
      swift_once();
    }

    aBlock[4] = sub_1A3CA96A0;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_85_0;
    v12 = _Block_copy(aBlock);
    sub_1A524BF14();
    v17 = v11;
    sub_1A3C45350(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    v13 = MEMORY[0x1E69E7F60];
    sub_1A3FB8118(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
    sub_1A3C9AC88(&qword_1EB12B1B0, &qword_1EB12B1C0, v13);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v7, v3, v12);
    _Block_release(v12);

    (*(v16 + 8))(v3, v0);
    return (*(v14 + 8))(v7, v15);
  }

  return result;
}

uint64_t sub_1A3C9A888()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF54();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A3C45350(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A3FB8118(0, &qword_1EB126E40, MEMORY[0x1E69E8030]);
  sub_1A3C9AC88(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB17A868 = result;
  return result;
}

uint64_t sub_1A3C9AB0C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3D75CE8(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C9AB70(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3DC59A0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C9ABC0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C2A108(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C9AC24(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3F56F44(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C9AC88(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3FB8118(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C9ACCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C9AD14(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C68B88(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C9AD6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C9ADB4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C7D074(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C9AE18(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A43F5C40(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C9AE7C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A46600E8(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C9AEE0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A46A1D84(255, a2, 255, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C9AF4C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A48217D8(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C9AFB0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A48921B4(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C9B014(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A48D4B40(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C9B078(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A49E9578(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C9B11C(uint64_t a1, uint64_t a2)
{
  sub_1A3C30560(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3C9B1B0(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6720];
  sub_1A3EA7AB4(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchResults;
  swift_beginAccess();
  sub_1A3EA72B4(v1 + v7, v6, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  v8 = sub_1A3C9B47C(v6, a1);
  sub_1A3C33120(v6, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v3, sub_1A3EA7AB4);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
    sub_1A52415C4();
  }

  else
  {
    sub_1A3EA72B4(a1, v6, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
    swift_beginAccess();
    sub_1A3C9B8B0(v6, v1 + v7, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
    swift_endAccess();
    sub_1A3C9B930();
    sub_1A3C33120(v6, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
  }

  return sub_1A3C33120(a1, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
}

uint64_t sub_1A3C9B47C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchResults(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EA7AB4(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  sub_1A3C9B81C();
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 56);
  sub_1A3EA72B4(a1, v14, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  sub_1A3EA72B4(a2, &v14[v15], &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1A3EA72B4(v14, v10, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1A3DAF754(&v14[v15], v7);
      sub_1A3C30828(&unk_1EB12D9B8, type metadata accessor for PhotosSearchResults);
      v18 = sub_1A524C594();
      sub_1A3EA74BC(v7, type metadata accessor for PhotosSearchResults);
      sub_1A3EA74BC(v10, type metadata accessor for PhotosSearchResults);
      sub_1A3C33120(v14, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1A3EA74BC(v10, type metadata accessor for PhotosSearchResults);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1A3EA74BC(v14, sub_1A3C9B81C);
    v17 = 1;
    return v17 & 1;
  }

  sub_1A3C33120(v14, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
  v17 = 0;
  return v17 & 1;
}

void sub_1A3C9B81C()
{
  if (!qword_1EB125F78)
  {
    sub_1A3EA7AB4(255, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB125F78);
    }
  }
}

uint64_t sub_1A3C9B8B0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3EA7AB4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A3C9B930()
{
  v1 = v0;
  v2 = type metadata accessor for PhotosSearchResults(0);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v26[0] = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EA7AB4(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v29 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v28 = v26 - v7;
  v8 = sub_1A5242054();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v27 = v26 - v13;
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel___observationRegistrar;
  v34 = v1;
  v15 = sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  v26[1] = v14;
  sub_1A52415D4();

  v16 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__selectedRange;
  swift_beginAccess();
  v17 = *(v9 + 16);
  v17(v12, v1 + v16, v8);
  LOBYTE(v14) = sub_1A5242024();
  (*(v9 + 8))(v12, v8);
  if (v14)
  {
    v18 = v27;
    sub_1A5242034();
  }

  else
  {
    swift_getKeyPath();
    v33 = v1;
    sub_1A52415D4();

    v18 = v27;
    v17(v27, v1 + v16, v8);
  }

  sub_1A3C9C5D4(v18);
  swift_getKeyPath();
  v33 = v1;
  v27 = v15;
  sub_1A52415D4();

  v19 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__searchResults;
  swift_beginAccess();
  v20 = v28;
  sub_1A3EA72B4(v1 + v19, v28, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  v21 = v31;
  v22 = *(v30 + 48);
  v23 = v22(v20, 1, v31);
  sub_1A3C33120(v20, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
  if (v23 != 1)
  {
    sub_1A3EA2138();
  }

  swift_getKeyPath();
  v32 = v1;
  sub_1A52415D4();

  v24 = v29;
  sub_1A3EA72B4(v1 + v19, v29, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  if (v22(v24, 1, v21) != 1)
  {
    sub_1A3DAF754(v24, v26[0]);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return sub_1A3C33120(v24, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A3EA7AB4);
}

uint64_t sub_1A3C9BE6C()
{
  v50 = sub_1A5246EA4();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v48 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1A5246E54();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v56 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v48 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v48 - v7;
  if (qword_1EB17A8F0 != -1)
  {
    swift_once();
  }

  v9 = sub_1A5246E94();
  v10 = __swift_project_value_buffer(v9, qword_1EB17A8F8);
  sub_1A5246E84();
  sub_1A5246E24();
  v54 = v10;
  v11 = sub_1A5246E84();
  v12 = sub_1A524D654();
  if (sub_1A524DEC4())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, v12, v14, "FetchRecentAssetCollections", "", v13, 2u);
    MEMORY[0x1A590EEC0](v13, -1, -1);
  }

  (*(v57 + 16))(v6, v8, v58);
  sub_1A5246ED4();
  swift_allocObject();
  v55 = sub_1A5246EC4();
  v15 = [*(v60 + 80) px_virtualCollections];
  sub_1A3C8B438(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FF960;
  *(inited + 32) = [v15 recentlyViewedCollection];
  *(inited + 40) = [v15 recentlyEditedCollection];
  *(inited + 48) = [v15 recentlySharedCollection];
  v62 = MEMORY[0x1E69E7CC0];
  result = sub_1A524E554();
  v59 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) == 0 && *((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
    __break(1u);
    return result;
  }

  v51 = inited + 32;
  v52 = v15;
  v53 = v8;
  v18 = 0;
  do
  {
    if (v59)
    {
      v20 = MEMORY[0x1A59097F0](v18, inited);
    }

    else
    {
      v20 = *(inited + 8 * v18 + 32);
    }

    v21 = v20;
    type metadata accessor for LemonadeSuggestedSearchCollection(0);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 1;
    v23 = v21;
    sub_1A5241604();
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 32) = v21;
    *(v22 + 56) = 0;
    v24 = PHObject.id.getter();
    v25 = v60;
    swift_beginAccess();
    v26 = *(v25 + 120);
    if (*(v26 + 16) && (v27 = sub_1A3CAB9BC(v24), (v28 & 1) != 0))
    {
      v29 = *(*(v26 + 56) + 8 * v27);
      v30 = v29;
    }

    else
    {
      v29 = 0;
    }

    swift_endAccess();
    v31 = *(v22 + 16);
    if (v31)
    {
      if (!v29 || (sub_1A3C52C70(0, &qword_1EB126660), v32 = v31, v33 = v29, v34 = sub_1A524DBF4(), v32, v33, (v34 & 1) == 0))
      {
LABEL_9:
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v48 - 2) = v22;
        *(&v48 - 1) = v29;
        v61 = v22;
        sub_1A3C45350(&qword_1EB129630, type metadata accessor for LemonadeSuggestedSearchCollection);
        sub_1A52415C4();

        goto LABEL_10;
      }

      v35 = *(v22 + 16);
    }

    else
    {
      if (v29)
      {
        goto LABEL_9;
      }

      v35 = 0;
    }

    *(v22 + 16) = v29;

LABEL_10:
    ++v18;
    sub_1A524E514();
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();
  }

  while (v18 != 3);
  swift_setDeallocating();
  swift_arrayDestroy();
  v36 = v62;
  v37 = sub_1A5246E84();
  v38 = v56;
  sub_1A5246EB4();
  v39 = sub_1A524D644();
  if (sub_1A524DEC4())
  {

    v40 = v48;
    sub_1A5246EE4();

    v41 = v49;
    v42 = v50;
    if ((*(v49 + 88))(v40, v50) == *MEMORY[0x1E69E93E8])
    {
      v43 = "[Error] Interval already ended";
    }

    else
    {
      (*(v41 + 8))(v40, v42);
      v43 = "";
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v37, v39, v45, "FetchRecentAssetCollections", v43, v44, 2u);
    MEMORY[0x1A590EEC0](v44, -1, -1);
  }

  v46 = v58;
  v47 = *(v57 + 8);
  v47(v38, v58);
  v47(v53, v46);
  return v36;
}

uint64_t sub_1A3C9C5D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A5242054();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12PhotosUICore29LemonadeActiveSearchViewModel__selectedRange;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1A3C30828(&qword_1EB124F90, MEMORY[0x1E69C1CD0]);
  v9 = sub_1A524C594();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_1A3C30828(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
    sub_1A52415C4();
  }

  return (v10)(a1, v4);
}

uint64_t objectdestroy_11Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_11Tm_0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_11Tm_1()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_11Tm_2()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_11Tm_3()
{
  v1 = type metadata accessor for GenerativeStoryEntryCardCommonView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v3 = v1[7];
  sub_1A44809C0(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v5 = v4;
    v6 = *(v4 - 8);
    if (!(*(v6 + 48))(v2 + v3, 1, v4))
    {
      (*(v6 + 8))(v2 + v3, v5);
    }
  }

  else
  {
  }

  j__swift_release(*(v2 + v1[8]), *(v2 + v1[8] + 8));
  v7 = v1[9];
  sub_1A4488380(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A52434D4();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v1[10];
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A5242D14();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  v11 = v2 + v1[11];
  sub_1A449A4FC(0, &qword_1EB13B8A0, type metadata accessor for GenerativeStorySuggestionViewModel, MEMORY[0x1E6981E90]);
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_1A449A4FC(0, &qword_1EB1213D8, type metadata accessor for GenerativeStorySuggestionViewModel, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

uint64_t objectdestroy_11Tm_4()
{
  v1 = (type metadata accessor for DiagnosticsRootView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[10];
  sub_1A4137EE8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5248284();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3C9CE08(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 17) == v2)
  {
    *(v1 + 17) = v2;
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

uint64_t sub_1A3C9CF3C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC12PhotosUICore24LemonadeBookmarksManager_pendingBookmarksResult);
    os_unfair_lock_lock((v1 + 24));
    v2 = *(v1 + 16);
    *(v1 + 16) = 0;
    os_unfair_lock_unlock((v1 + 24));
    if (v2)
    {
      v3 = sub_1A42E0830(v2);

      *(swift_allocObject() + 16) = v3;
      type metadata accessor for LemonadeBookmarksManager(0);
      sub_1A3C49B90(&qword_1EB129F10, type metadata accessor for LemonadeBookmarksManager);
      sub_1A5245F44();
    }

    sub_1A42DEDE0();
  }

  return result;
}

uint64_t sub_1A3C9D06C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3C9D1F4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_1A3C9D24C(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeBookmark(0) - 8;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = *(v6 + 72);
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = a1 + v18;
  v12 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1A3C5820C(v11, v8, type metadata accessor for LemonadeBookmark);
    v20 = v8[16];
    v19 = 8;
    sub_1A3C9D4C8();
    if (sub_1A524C594())
    {
      sub_1A3C58334(v8, type metadata accessor for LemonadeBookmark);
    }

    else
    {
      sub_1A3C5921C(v8, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A3C58754(0, *(v12 + 16) + 1, 1);
        v12 = v21;
      }

      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1A3C58754(v14 > 1, v15 + 1, 1);
        v12 = v21;
      }

      *(v12 + 16) = v15 + 1;
      sub_1A3C5921C(v4, v12 + v18 + v15 * v10);
    }

    v11 += v10;
    --v9;
  }

  while (v9);
  return v12;
}

uint64_t sub_1A3C9D464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeBookmark(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A3C9D4C8()
{
  result = qword_1EB125B38;
  if (!qword_1EB125B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125B38);
  }

  return result;
}

uint64_t sub_1A3C9D51C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1A3C9D5A4(*a1);
  v5 = v4;
  if (v3 == sub_1A3C9D5A4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A524EAB4();
  }

  return v8 & 1;
}

uint64_t sub_1A3C9D5A4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6D75626C61;
    v7 = 0x79726F6D656DLL;
    v8 = 0x746E657665;
    if (a1 != 3)
    {
      v8 = 0x656C706F6570;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 1885958772;
    }

    if (a1 <= 1u)
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
    v1 = 0x6C41646572616873;
    v2 = 0x6465727574616566;
    if (a1 != 9)
    {
      v2 = 7364973;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x72476C6169636F73;
    v4 = 0x707954616964656DLL;
    if (a1 != 6)
    {
      v4 = 0x656974696C697475;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A3C9D808@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 416))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A3C9D85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A524CC44();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1A3C77098(v13);
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

void sub_1A3C9DA38()
{
  type metadata accessor for LemonadeBookmarksManager.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A3C9DC84();
  sub_1A52456D4();
}

uint64_t sub_1A3C9DAFC()
{
  result = qword_1EB128F68;
  if (!qword_1EB128F68)
  {
    type metadata accessor for LemonadeBookmarksManager.Mutator(255);
    sub_1A3C2A340(255, &qword_1EB126F50, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E62F8]);
    sub_1A3C9DC84();
    sub_1A52456C4();
  }

  return result;
}

uint64_t sub_1A3C9DBA8()
{
  result = sub_1A3C9DAFC();
  if (v1 <= 0x3F)
  {
    result = sub_1A3C9DCDC();
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

unint64_t sub_1A3C9DC84()
{
  result = qword_1EB1846F0[0];
  if (!qword_1EB1846F0[0])
  {
    type metadata accessor for LemonadeBookmarksManager.Mutator(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1846F0);
  }

  return result;
}

uint64_t sub_1A3C9DCDC()
{
  result = qword_1EB128F70;
  if (!qword_1EB128F70)
  {
    type metadata accessor for LemonadeBookmarksManager.Mutator(255);
    sub_1A5245EC4();
  }

  return result;
}

void sub_1A3C9DD58()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

uint64_t sub_1A3C9DDD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3C9DF9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeBookmark(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A3C5820C(v13, v10, type metadata accessor for LemonadeBookmark);
        sub_1A3C5820C(v14, v7, type metadata accessor for LemonadeBookmark);
        sub_1A3C49B90(&unk_1EB125B20, type metadata accessor for LemonadeBookmark);
        v16 = sub_1A524C594();
        sub_1A3C58334(v7, type metadata accessor for LemonadeBookmark);
        sub_1A3C58334(v10, type metadata accessor for LemonadeBookmark);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void sub_1A3C9E1EC(uint64_t a1)
{
  v54 = sub_1A524BEE4();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1A524BF64();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for LemonadeBookmark(0);
  v5 = *(v65 - 8);
  v6 = MEMORY[0x1EEE9AC00](v65 - 8);
  v58 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - v8;
  sub_1A3C9EB18();
  v62 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C2A340(0, &qword_1EB12A538, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E6720]);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v64 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v46 - v16;
  v18 = *v1;
  v19 = *(*v1 + 328);
  v55 = v1;
  v48 = v18 + 328;
  v47 = v19;
  v20 = 0;
  i = 0;
  v57 = (v19)(v15);
  v22 = *(v57 + 16);
  v56 = a1;
  v63 = *(a1 + 16);
  v23 = (v5 + 56);
  v59 = v5;
  v61 = (v5 + 48);
  if (v22)
  {
    goto LABEL_6;
  }

LABEL_5:
  v25 = 1;
  for (i = v22; ; ++i)
  {
    v26 = *v23;
    v27 = 1;
    v28 = v65;
    (*v23)(v17, v25, 1, v65);
    v29 = v63;
    if (v20 != v63)
    {
      if (v20 >= v63)
      {
        goto LABEL_27;
      }

      sub_1A3C5820C(v56 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v20, v64, type metadata accessor for LemonadeBookmark);
      v29 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_29;
      }

      v27 = 0;
      v28 = v65;
    }

    v66 = v29;
    v30 = v9;
    v31 = v64;
    v26(v64, v27, 1, v28);
    v32 = *(v62 + 48);
    v33 = v60;
    sub_1A3C9EBAC(v17, v60);
    sub_1A3C9EBAC(v31, v33 + v32);
    v34 = *v61;
    if ((*v61)(v33, 1, v28) == 1)
    {
      break;
    }

    if (v34(v33 + v32, 1, v28) == 1)
    {

      sub_1A3C58334(v33, type metadata accessor for LemonadeBookmark);
      goto LABEL_23;
    }

    v9 = v30;
    sub_1A3C5921C(v33, v30);
    v35 = v58;
    sub_1A3C5921C(v33 + v32, v58);
    if (*v30 == *v35 && *(v30 + 1) == v35[1])
    {
      sub_1A3C58334(v35, type metadata accessor for LemonadeBookmark);
      sub_1A3C58334(v30, type metadata accessor for LemonadeBookmark);
      v20 = v66;
      if (i == v22)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v24 = sub_1A524EAB4();
      sub_1A3C58334(v35, type metadata accessor for LemonadeBookmark);
      sub_1A3C58334(v30, type metadata accessor for LemonadeBookmark);
      v20 = v66;
      if ((v24 & 1) == 0)
      {

        goto LABEL_23;
      }

      if (i == v22)
      {
        goto LABEL_5;
      }
    }

LABEL_6:
    if ((i & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (i >= *(v57 + 16))
    {
      goto LABEL_28;
    }

    sub_1A3C5820C(v57 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * i, v17, type metadata accessor for LemonadeBookmark);
    v25 = 0;
  }

  if (v34(v33 + v32, 1, v28) == 1)
  {
    return;
  }

  sub_1A42E36DC(v33 + v32, &qword_1EB12A538, type metadata accessor for LemonadeBookmark);
LABEL_23:
  if (qword_1EB1847C0 == -1)
  {
    goto LABEL_24;
  }

LABEL_30:
  swift_once();
LABEL_24:
  v36 = v55;
  v37 = v47();
  sub_1A3C341C8((v36 + 2), v69);
  v38 = swift_allocObject();
  sub_1A3C34460(v69, v38 + 16);
  *(v38 + 56) = v37;
  aBlock[4] = sub_1A42E536C;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_121_0;
  v39 = _Block_copy(aBlock);
  v40 = v49;
  sub_1A524BF14();
  v67 = MEMORY[0x1E69E7CC0];
  sub_1A3C49B90(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v41 = MEMORY[0x1E69E7F60];
  sub_1A3C2A340(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2A908(&qword_1EB12B1B0, &qword_1EB12B1C0, v41);
  v42 = v52;
  v43 = v54;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v40, v42, v39);
  _Block_release(v39);
  (*(v53 + 8))(v42, v43);
  (*(v50 + 8))(v40, v51);

  v45 = (*(*v36 + 424))(v44);
  [v45 signalChange_];
}

uint64_t sub_1A3C9EAD8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

void sub_1A3C9EB18()
{
  if (!qword_1EB12A530)
  {
    sub_1A3C2A340(255, &qword_1EB12A538, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12A530);
    }
  }
}

uint64_t sub_1A3C9EBAC(uint64_t a1, uint64_t a2)
{
  sub_1A3C2A340(0, &qword_1EB12A538, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3C9EC54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3C9ECF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3C9ED58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3C9EDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

id sub_1A3C9EE78()
{
  result = sub_1A3C9EE98();
  qword_1EB1847C8 = result;
  return result;
}

id sub_1A3C9EE98()
{
  v14 = sub_1A524D464();
  v0 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v13[1] = sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF54();
  v5 = MEMORY[0x1E69E8030];
  sub_1A3C2A340(0, &unk_1EB1261D0, MEMORY[0x1E69E8030], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A52F8E10;
  sub_1A524D404();
  v15 = v6;
  sub_1A3C49B90(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  sub_1A3C2A340(0, &qword_1EB126E40, v5, MEMORY[0x1E69E62F8]);
  sub_1A3C2A908(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v14);
  v7 = sub_1A524D4B4();
  v8 = *sub_1A3C29A08();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = *(*v8 + 120);

  v11 = v7;
  v10(3, sub_1A3CB40AC, v9);

  return v11;
}

uint64_t sub_1A3C9F244()
{

  return swift_deallocObject();
}

uint64_t sub_1A3C9FAF4()
{

  v1 = OBJC_IVAR____TtCC12PhotosUICore24LemonadeBookmarksManagerP33_FDAC33CF05DBB5895C6FE33727641D867Mutator__bookmarks;
  v2 = sub_1A3C9DAFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC12PhotosUICore24LemonadeBookmarksManagerP33_FDAC33CF05DBB5895C6FE33727641D867Mutator__loadingStatus;
  v4 = sub_1A3C9DCDC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

unint64_t sub_1A3C9FBEC()
{
  result = qword_1EB129468;
  if (!qword_1EB129468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129468);
  }

  return result;
}

unint64_t sub_1A3C9FC44()
{
  result = qword_1EB129440;
  if (!qword_1EB129440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129440);
  }

  return result;
}

unint64_t sub_1A3C9FC9C()
{
  result = qword_1EB129458;
  if (!qword_1EB129458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129458);
  }

  return result;
}

unint64_t sub_1A3C9FCF4()
{
  result = qword_1EB129450;
  if (!qword_1EB129450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129450);
  }

  return result;
}

unint64_t sub_1A3C9FD4C()
{
  result = qword_1EB129460;
  if (!qword_1EB129460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129460);
  }

  return result;
}

unint64_t sub_1A3C9FDA4()
{
  result = qword_1EB129448;
  if (!qword_1EB129448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129448);
  }

  return result;
}

uint64_t sub_1A3C9FDF8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A3C762E8();
  }

  return result;
}

char *sub_1A3C9FE4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C9FFCC(0, &qword_1EB126278, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A3C9FF7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3C9FFCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for LemonadeBookmarkItem);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *sub_1A3CA0020(char *a1, int64_t a2, char a3)
{
  result = sub_1A3C9FE4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1A3CA0040(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A3CA0088(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1A3CA00DC(uint64_t a1)
{
  sub_1A3C9FF7C(0, &qword_1EB12A340, &type metadata for LemonadeBookmarkItem, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3CA015C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  result = MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 48);
  if (v10)
  {
    v11 = type metadata accessor for LemonadeBookmark(0);
    sub_1A3C5820C(a1 + *(v11 + 24), v9, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    if (swift_getEnumCaseMultiPayload() == 4)
    {

      sub_1A469B638(a1);
    }

    sub_1A3CA02F0(v9);
    sub_1A3CA034C(*(a2 + 16), v15);
    v12 = v16;
    v13 = __swift_project_boxed_opaque_existential_1(v15, v16);
    sub_1A3CA0BB4(v13, a2, a1, v10, v12, a3);

    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A3CA02F0(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_1A3CA034C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LemonadeMapFeature(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 16);
  if (v9 > 5)
  {
    if (*(v2 + 16) <= 7u)
    {
      if (v9 == 6)
      {
        sub_1A3C41D34(a1, &v31);
        v37 = v33;
        LOBYTE(v38) = BYTE8(v33);
        v30[0] = v31;
        v20 = v33;
        sub_1A3C651B8(v30);

        sub_1A3CA5918(&v37);
        *(a2 + 24) = &type metadata for LemonadeMediaTypesFeature.ShelfProvider;
        result = sub_1A3CA596C();
      }

      else
      {
        sub_1A3C5125C(a1, &v31);
        v37 = v33;
        LOBYTE(v38) = BYTE8(v33);
        v30[0] = v31;
        v28 = v33;
        sub_1A3C651B8(v30);

        sub_1A3CA2D54(&v37);
        *(a2 + 24) = &type metadata for LemonadeUtilitiesFeature.ShelfProvider;
        result = sub_1A3CA2DA8();
      }
    }

    else
    {
      if (v9 == 8)
      {
        sub_1A3C512E0(a1, &v31);
        v21 = BYTE8(v33);
        v22 = v33;
        sub_1A3FA0F6C(&v31);
        *(a2 + 24) = &type metadata for LemonadeSharedAlbumsFeature.ShelfProvider;
        result = sub_1A3FA0FC0();
        *(a2 + 32) = result;
        *a2 = v22;
        *(a2 + 8) = v21;
        return result;
      }

      if (v9 != 9)
      {
        v25 = v6;
        sub_1A3CA3D0C(a1, v8);
        v26 = *(v25 + 24);
        *(a2 + 24) = type metadata accessor for LemonadeMapFeature.ShelfProvider(0);
        *(a2 + 32) = sub_1A3C4BBC8(&qword_1EB12A3D8, type metadata accessor for LemonadeMapFeature.ShelfProvider);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
        sub_1A3C581A4(v8 + v26, boxed_opaque_existential_1, type metadata accessor for LemonadeMapFeature.ShelfProvider);
        return sub_1A3C582D4(v8, type metadata accessor for LemonadeMapFeature);
      }

      sub_1A3C41864(a1, &v31);
      v37 = v33;
      LOBYTE(v38) = BYTE8(v33);
      v30[0] = v31;
      v15 = v33;
      sub_1A3C651B8(v30);

      sub_1A3FA0EC4(&v37);
      *(a2 + 24) = &type metadata for LemonadeFeaturedPhotosFeature.ShelfProvider;
      result = sub_1A3FA0F18();
    }

    goto LABEL_19;
  }

  if (*(v2 + 16) > 2u)
  {
    if (v9 - 4 < 2)
    {
      LOBYTE(v31) = 0;
      v16 = a1;
      sub_1A3C56CDC(v16, &v31, v30);
      v37 = *&v30[0];
      v38 = WORD4(v30[0]);
      v17 = sub_1A3C36888();
      sub_1A3C41894(&v37, v16, &type metadata for LemonadePeopleShelfProvider, v17, &v31);
      v18 = v33;
      v19 = WORD4(v33);

      *(a2 + 24) = &type metadata for LemonadePeopleShelfProvider;
      result = sub_1A3FA1014();
      *(a2 + 32) = result;
      *a2 = v18;
      *(a2 + 8) = v19;
      return result;
    }

    sub_1A3C56CF0(a1, &v31);
    v37 = v33;
    LOBYTE(v38) = BYTE8(v33);
    v30[0] = v31;
    v24 = v33;
    sub_1A3C651B8(v30);

    sub_1A3FA1128(&v37);
    *(a2 + 24) = &type metadata for LemonadeEventsFeature.ShelfProvider;
    result = sub_1A3FA117C();
LABEL_19:
    *(a2 + 32) = result;
    *a2 = v37;
    *(a2 + 8) = v38;
    return result;
  }

  if (*(v2 + 16))
  {
    if (v9 != 1)
    {
      v29 = a1;
      sub_1A3C559F4();
    }

    sub_1A3C51238(a1, 0, &v31);
    v10 = *(&v33 + 1);
    v11 = v34;
    v37 = *(&v33 + 1);
    v30[0] = v31;
    v12 = v33;
    sub_1A3CA08E0(&v37, v36);
    sub_1A3C651B8(v30);
    v13 = v32;

    sub_1A3C2C658(&v37, &qword_1EB125A20, type metadata accessor for PickerConfiguration, MEMORY[0x1E69E6720], sub_1A3CA0974);
    *(a2 + 24) = &type metadata for LemonadeTripsFeature.ShelfProvider;
    result = sub_1A3FA11D0();
    *(a2 + 32) = result;
    *a2 = v12;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
  }

  else
  {
    sub_1A3C41748(a1, 0, 0, &v31);
    sub_1A3FA1224(&v33, v30);
    sub_1A3FA1280(&v31);
    *(a2 + 24) = &type metadata for LemonadeAlbumsFeature.ShelfProvider;
    *(a2 + 32) = sub_1A3CA0B38();
    result = swift_allocObject();
    *a2 = result;
    v23 = v34;
    result[1] = v33;
    result[2] = v23;
    result[3] = v35[0];
    *(result + 57) = *(v35 + 9);
  }

  return result;
}

uint64_t sub_1A3CA0880()
{

  sub_1A3C53AEC(*(v0 + 48), *(v0 + 56));
  sub_1A3C53AEC(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_1A3CA08E0(uint64_t a1, uint64_t a2)
{
  sub_1A3CA0974(0, &qword_1EB125A20, type metadata accessor for PickerConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A3CA0974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3CA09D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A3CA0A2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A3CA0A80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A3CA09D8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3CA0ADC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A3CA0A2C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1A3CA0B38()
{
  result = qword_1EB12A268;
  if (!qword_1EB12A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A268);
  }

  return result;
}

unint64_t sub_1A3CA0B8C(uint64_t a1)
{
  result = sub_1A3C51EF8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3CA0BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = type metadata accessor for LemonadeBookmark(0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LemonadeObservableCollectionBookmark();
  (*(v16 + 16))(v18, a1, a5);
  sub_1A3C5820C(a3, v15, type metadata accessor for LemonadeBookmark);

  v20 = sub_1A3CA1624(v18, a2, v15, a4);
  a6[3] = v19;
  result = swift_getWitnessTable();
  a6[4] = result;
  *a6 = v20;
  return result;
}

uint64_t sub_1A3CA0D7C()
{
  result = type metadata accessor for LemonadeBookmark(319);
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_1A5241614();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

char *sub_1A3CA0EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55 = *v5;
  v10 = v55;
  v11 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v48 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v48 - v17;
  v19 = &v5[*(v10 + 136)];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = *(*v5 + 144);
  sub_1A3CA168C();
  v21 = swift_allocObject();
  *(v21 + 20) = 0;
  *(v21 + 16) = 0;
  *&v5[v20] = v21;
  sub_1A5241604();
  v22 = *(v10 + 80);
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v5[*(*v5 + 112)], a1, v22);
  v24 = *(*v5 + 120);
  v56 = a2;
  *&v5[v24] = a2;
  sub_1A3C58EB8(a3, &v5[qword_1EB1EB160], type metadata accessor for LemonadeBookmark);
  v57 = a4;
  *(v5 + 2) = a4;
  v25 = *(type metadata accessor for LemonadeBookmark(0) + 24);
  sub_1A3C58EB8(a3 + v25, v18, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  v54 = v11;
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_1A3C9ED58(a3, type metadata accessor for LemonadeBookmark);
    (*(v23 + 8))(a1, v22);
    sub_1A3C9ED58(v18, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    *&v5[*(*v5 + 128)] = 0;
  }

  else
  {
    v51 = v23;
    v52 = a1;
    v26 = v56;

    v49 = type metadata accessor for LemonadeBookmark.CollectionIdentifier;
    sub_1A3C9ED58(v18, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    v27 = *(v55 + 88);
    v28 = (*(v27 + 24))(a3 + v25, v26, v22, v27);
    v50 = v27;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v30 = a3;
    v31 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v33 = v22;
    v34 = v16;
    v35 = AssociatedConformanceWitness;
    v55 = v33;
    v36 = swift_getAssociatedConformanceWitness();
    v58 = AssociatedTypeWitness;
    v59 = v31;
    v60 = v35;
    v61 = v36;
    sub_1A52431C4();
    swift_unknownObjectRetain();
    *&v5[*(*v5 + 128)] = sub_1A5243174();
    sub_1A3C58EB8(v30 + v25, v34, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    LODWORD(v26) = swift_getEnumCaseMultiPayload();
    sub_1A3C9ED58(v34, v49);
    if (!v26)
    {
      v58 = v28;
      v44 = swift_allocObject();
      swift_weakInit();
      v45 = swift_allocObject();
      v46 = v50;
      v45[2] = v55;
      v45[3] = v46;
      v45[4] = v44;
      v45[5] = v28;
      swift_unknownObjectRetain();
      sub_1A52457C4();
    }

    v37 = v55;
    v49 = v35;
    v38 = v50;
    v39 = v53;
    sub_1A3C58EB8(v30 + v25, v53, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v41 = v52;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1A3C9ED58(v39, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      v58 = v28;
      v42 = swift_allocObject();
      swift_weakInit();
      v43 = swift_allocObject();
      v43[2] = v37;
      v43[3] = v38;
      v43[4] = v42;
      v43[5] = v28;
      swift_unknownObjectRetain();
      sub_1A52457C4();
    }

    swift_unknownObjectRelease();
    sub_1A3C9ED58(v30, type metadata accessor for LemonadeBookmark);
    (*(v51 + 8))(v41, v37);
    sub_1A3C9ED58(v39, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  }

  return v5;
}

uint64_t sub_1A3CA15E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CA1624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_1A3CA0EB0(a1, a2, a3, a4);
  return v8;
}

void sub_1A3CA168C()
{
  if (!qword_1EB126500)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1A524E4E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126500);
    }
  }
}

void sub_1A3CA16EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = objc_opt_self();
  v8 = sub_1A524CA14();
  v9 = *(a2 + 16);
  v10 = [v7 transientCollectionListWithCollections:v8 title:0 identifier:0 photoLibrary:v9];

  v11 = *(a2 + 24);
  swift_storeEnumTagMultiPayload();
  v12 = sub_1A3CA1BC0(a1, v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A45F9520(v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if (v12)
  {
    v13 = [v9 px_rootAlbumCollectionList];
    type metadata accessor for LemonadeAlbumItemListManager();

    sub_1A43FD8F4(v14, v13, 0, 0, 1, 0, 0);
  }

  sub_1A3CA2488(0, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
  v25[1] = v15;
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = 2;
  v16 = v10;
  v17 = v11;
  sub_1A3C6C180(&v26);
  v34 = v26;
  v35 = v27;
  sub_1A3C6C18C(&v32);
  v30 = v32;
  v31 = v33;
  v18 = sub_1A3C5A374();
  v19 = sub_1A3C30368();
  v20 = sub_1A3C5A374();
  v21 = sub_1A3C5A374();
  v22 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v34, 0, &unk_1F1718FC8, 0, 1, &v30, v18 & 1, &v36, v29, v19, v20 & 1, v21 & 1, v22 & 1, 0);
  v27 = 0;
  v26 = 0;
  v28 = 0;
  sub_1A45F94B8(a1, v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v24 = swift_allocObject();
  sub_1A3CA2760(v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v16, v11, v37, v29, &v26, sub_1A3CA31B4, v24);
}

uint64_t sub_1A3CA1A70()
{
  v1 = *(type metadata accessor for LemonadeBookmark.CollectionIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        goto LABEL_11;
      }

      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_14;
      }

      v4 = sub_1A5241144();
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_14;
        }

LABEL_11:

        goto LABEL_14;
      }

      v4 = sub_1A5244EB4();
    }

    (*(*(v4 - 8) + 8))(v0 + v2, v4);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    goto LABEL_11;
  }

LABEL_14:

  return swift_deallocObject();
}

uint64_t sub_1A3CA1BC4(uint64_t a1, uint64_t a2)
{
  v75 = a1;
  v3 = sub_1A5241144();
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5244EB4();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v74 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v66 - v11);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v72 = (&v66 - v14);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v66 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v73 = &v66 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v66 - v21);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = (&v66 - v24);
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v66 - v26);
  sub_1A3CA23BC();
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = &v31[*(v29 + 56)];
  sub_1A3C581A4(v75, v31, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  v33 = a2;
  v34 = v32;
  sub_1A3C581A4(v33, v32, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v36 = v32;
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v37 = v73;
          sub_1A3C581A4(v31, v73, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            v38 = v68;
            v39 = v66;
            v40 = v69;
            (*(v68 + 32))(v66, v32, v69);
            v41 = sub_1A5244EA4();
LABEL_26:
            LOBYTE(v51) = v41;
            v52 = *(v38 + 8);
            v52(v39, v40);
            v52(v37, v40);
            v43 = type metadata accessor for LemonadeBookmark.CollectionIdentifier;
            goto LABEL_47;
          }

          v62 = v68;
          v61 = v69;
LABEL_45:
          (*(v62 + 8))(v37, v61);
          goto LABEL_46;
        }

        sub_1A3C581A4(v31, v17, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
        v54 = *v17;
        v53 = *(v17 + 1);
        v55 = *(v17 + 2);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v56 = *(v32 + 16);
          if (v54 == *v32 && v53 == *(v32 + 8))
          {
          }

          else
          {
            v64 = sub_1A524EAB4();

            v43 = type metadata accessor for LemonadeBookmark.CollectionIdentifier;
            if ((v64 & 1) == 0)
            {
              LOBYTE(v51) = 0;
              goto LABEL_47;
            }
          }

          v48 = v55 == v56;
          goto LABEL_51;
        }

        goto LABEL_37;
      }

      sub_1A3C581A4(v31, v22, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      v50 = *v22;
      v49 = v22[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
LABEL_37:

        goto LABEL_46;
      }

LABEL_34:
      if (v50 == *v36 && v49 == v36[1])
      {
        goto LABEL_41;
      }

LABEL_55:
      v65 = sub_1A524EAB4();

      v51 = v65 << 31 >> 31;
      v43 = type metadata accessor for LemonadeBookmark.CollectionIdentifier;
      goto LABEL_47;
    }

    v36 = v32;
    if (EnumCaseMultiPayload)
    {
      sub_1A3C581A4(v31, v25, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      v50 = *v25;
      v49 = v25[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    sub_1A3C581A4(v31, v27, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    v45 = *v27;
    v44 = v27[1];
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_37;
    }

    if (v45 != *v32 || v44 != *(v32 + 8))
    {
      goto LABEL_55;
    }

LABEL_41:

    LOBYTE(v51) = 1;
    v43 = type metadata accessor for LemonadeBookmark.CollectionIdentifier;
    goto LABEL_47;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v37 = v74;
      sub_1A3C581A4(v31, v74, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v38 = v70;
        v40 = v71;
        v39 = v67;
        (*(v70 + 32))(v67, v32, v71);
        v41 = sub_1A52410E4();
        goto LABEL_26;
      }

      v62 = v70;
      v61 = v71;
      goto LABEL_45;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v42 = swift_getEnumCaseMultiPayload();
      v43 = type metadata accessor for LemonadeBookmark.CollectionIdentifier;
      if (v42 == 8)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v57 = swift_getEnumCaseMultiPayload();
      v43 = type metadata accessor for LemonadeBookmark.CollectionIdentifier;
      if (v57 == 9)
      {
LABEL_32:
        LOBYTE(v51) = 1;
        goto LABEL_47;
      }
    }

LABEL_46:
    LOBYTE(v51) = 0;
    v43 = sub_1A3CA23BC;
    goto LABEL_47;
  }

  if (EnumCaseMultiPayload != 5)
  {
    sub_1A3C581A4(v31, v12, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    v58 = *v12;
    v59 = v12[1];
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      goto LABEL_37;
    }

    v60 = *(v32 + 8);
    if (v58 != *v34 || v59 != v60)
    {
      goto LABEL_55;
    }

    goto LABEL_41;
  }

  v47 = v72;
  sub_1A3C581A4(v31, v72, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_46;
  }

  v48 = *v47 == *v32;
LABEL_51:
  LOBYTE(v51) = v48;
  v43 = type metadata accessor for LemonadeBookmark.CollectionIdentifier;
LABEL_47:
  sub_1A3C582D4(v31, v43);
  return v51 & 1;
}

void sub_1A3CA23BC()
{
  if (!qword_1EB12A580)
  {
    type metadata accessor for LemonadeBookmark.CollectionIdentifier(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12A580);
    }
  }
}

void sub_1A3CA2420(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A3CA2488(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1A3CA24F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3CA2558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3CA25C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3CA2628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3CA2690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3CA26F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3CA2760(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3CA27C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3CA2830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3CA2898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3CA2900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A3CA296C()
{
  result = qword_1EB129FE0;
  if (!qword_1EB129FE0)
  {
    sub_1A4338F3C(255, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129FE0);
  }

  return result;
}

void sub_1A3CA2A44()
{
  if (!qword_1EB129210)
  {
    sub_1A3C379F4(255, &unk_1EB12A880, &qword_1EB126CD0);
    sub_1A3CA2AE4();
    sub_1A3CA2B54();
    sub_1A3CA2BC4();
    v0 = sub_1A5242734();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB129210);
    }
  }
}

unint64_t sub_1A3CA2AE4()
{
  result = qword_1EB12A8B0;
  if (!qword_1EB12A8B0)
  {
    sub_1A3C379F4(255, &unk_1EB12A880, &qword_1EB126CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A8B0);
  }

  return result;
}

unint64_t sub_1A3CA2B54()
{
  result = qword_1EB12A8A0;
  if (!qword_1EB12A8A0)
  {
    sub_1A3C379F4(255, &unk_1EB12A880, &qword_1EB126CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A8A0);
  }

  return result;
}

unint64_t sub_1A3CA2BC4()
{
  result = qword_1EB12A8C0;
  if (!qword_1EB12A8C0)
  {
    sub_1A3C379F4(255, &unk_1EB12A880, &qword_1EB126CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A8C0);
  }

  return result;
}

uint64_t sub_1A3CA2C40(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3CA2C7C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3CA2CF8(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeBookmark(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A3CA2DA8()
{
  result = qword_1EB129EE8;
  if (!qword_1EB129EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129EE8);
  }

  return result;
}

unint64_t sub_1A3CA2DFC(uint64_t a1)
{
  result = sub_1A3C52114();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3CA2E24(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3CA2488(0, &qword_1EB12A020, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v6 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  [v6 setIncludeUserSmartAlbums_];
  sub_1A45F94B8(a2, v5, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v9 = *v5;
    v8 = v5[1];
    objc_opt_self();
    sub_1A45FE3B8(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v16 = xmmword_1A52F8E10;
    *(v10 + 16) = xmmword_1A52F8E10;
    *(v10 + 32) = v9;
    *(v10 + 40) = v8;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (EnumCaseMultiPayload == 5)
  {
    v11 = *v5;
    v12 = objc_opt_self();
    v13 = [v12 fetchAssetCollectionsWithType:2 subtype:PXDisplayCollectionDetailedCountsMake(v11) options:v6];

    return v13;
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1A524E404();

    v17 = 0xD00000000000001BLL;
    v18 = 0x80000001A53B42A0;
    sub_1A3C57458(&unk_1EB139AE0, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    v15 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v15);

    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A3CA31B4(uint64_t a1)
{
  v3 = *(type metadata accessor for LemonadeBookmark.CollectionIdentifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A3CA2E24(a1, v4);
}

uint64_t sub_1A3CA3224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  swift_storeEnumTagMultiPayload();
  v7 = sub_1A3CA1BC0(a1, v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C58274(v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if ((v7 & 1) == 0)
  {
    v9 = objc_opt_self();
    v10 = sub_1A524CA14();
    v11 = [v9 transientCollectionListWithCollections:v10 title:0 identifier:0 photoLibrary:*(a2 + 16)];

    v12 = *(a2 + 24);
    sub_1A3C3798C(0, &qword_1EB129FB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager);
    v22[1] = v13;
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    v33 = 2;
    v14 = v11;
    v15 = v12;
    sub_1A3C6C180(&v23);
    v31 = v23;
    v32 = v24;
    sub_1A3C6C18C(&v29);
    v27 = v29;
    v28 = v30;
    LOBYTE(v11) = sub_1A3C5A374();
    v16 = sub_1A3C30368();
    v17 = sub_1A3C5A374();
    LOBYTE(v9) = sub_1A3C5A374();
    v18 = sub_1A3C5A374();
    PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v31, 0, &unk_1F16DCB08, 0, 1, &v27, v11 & 1, &v33, v26, v16, v17 & 1, v9 & 1, v18 & 1, 0);
    v24 = 0;
    v23 = 0;
    v25 = 0;
    sub_1A3C5813C(a1, v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v20 = swift_allocObject();
    sub_1A3C58004(v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v14, v12, v34, v26, &v23, sub_1A3CA809C, v20);
  }

  *(v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0)) = PXDisplayCollectionDetailedCountsMake(1000000218);
  swift_storeEnumTagMultiPayload();
  v8 = sub_1A3CA3224(v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_1A3C58274(v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  return v8;
}

uint64_t sub_1A3CA35A4()
{
  v1 = *(type metadata accessor for LemonadeBookmark.CollectionIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        goto LABEL_11;
      }

      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_14;
      }

      v4 = sub_1A5241144();
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_14;
        }

LABEL_11:

        goto LABEL_14;
      }

      v4 = sub_1A5244EB4();
    }

    (*(*(v4 - 8) + 8))(v0 + v2, v4);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    goto LABEL_11;
  }

LABEL_14:

  return swift_deallocObject();
}

unint64_t sub_1A3CA36F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A3C6D46C(0, &qword_1EB126470, MEMORY[0x1E69E6EC8]);
  v3 = sub_1A524E794();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_1A3E4BF44(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_1A3E4BF44(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

__n128 PhotoKitItem.__allocating_init(value:options:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *(a2 + 48);
  *(v6 + 56) = *(a2 + 32);
  *(v6 + 72) = v7;
  *(v6 + 88) = *(a2 + 64);
  result = *a2;
  v9 = *(a2 + 16);
  *(v6 + 24) = *a2;
  *(v6 + 16) = a1;
  v10 = *(a2 + 80);
  *(v6 + 40) = v9;
  *(v6 + 104) = v10;
  *(v6 + 112) = a3;
  return result;
}

uint64_t sub_1A3CA38CC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C3798C(255, a2, &qword_1EB126AC0, 0x1E6978650, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3CA3924(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C37A4C(255, a2, &qword_1EB126AC0, 0x1E6978650, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3CA397C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A3CA3A74(255, &qword_1EB1290B8, &qword_1EB12A840, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C2470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3CA39F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A3CA3BA4(255, &qword_1EB1290B8, &qword_1EB12A840, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C2470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3CA3A74(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1A3C3798C(255, &qword_1EB12A800, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItem);
    v12[0] = v9;
    v12[1] = sub_1A3CA38CC(a3, &qword_1EB12A800, type metadata accessor for PhotoKitItem);
    v12[2] = sub_1A3CA38CC(&qword_1EB12A820, &qword_1EB12A800, type metadata accessor for PhotoKitItem);
    v12[3] = sub_1A3CA38CC(&qword_1EB12A850, &qword_1EB12A800, type metadata accessor for PhotoKitItem);
    v10 = a5(a1, v12);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A3CA3BA4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1A3C37A4C(255, &qword_1EB12A800, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItem);
    v12[0] = v9;
    v12[1] = sub_1A3CA3924(a3, &qword_1EB12A800, type metadata accessor for PhotoKitItem);
    v12[2] = sub_1A3CA3924(&qword_1EB12A820, &qword_1EB12A800, type metadata accessor for PhotoKitItem);
    v12[3] = sub_1A3CA3924(&qword_1EB12A850, &qword_1EB12A800, type metadata accessor for PhotoKitItem);
    v10 = a5(a1, v12);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A3CA3D0C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0x736563616C70;
  a2[1] = 0xE600000000000000;
  a2[2] = a1;
  v4 = *(type metadata accessor for LemonadeMapFeature(0) + 24);
  return sub_1A3CA3D68(a1, a2 + v4);
}

uint64_t sub_1A3CA3D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3C4C2E0(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v26 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  *a2 = a1;
  *(a2 + 8) = 0;
  v25 = type metadata accessor for LemonadeMapFeature.ShelfProvider(0);
  v23 = *(v25 + 24);
  v9 = sub_1A3C47918();
  v11 = v10;
  v12 = sub_1A3C47918();
  v14 = v13;
  v15 = sub_1A3C52D68();
  v17 = v16;
  LOBYTE(a2) = v18;
  v19 = sub_1A3C4ED50();
  v27 = 1;
  *v8 = xmmword_1A534D4F0;
  v8[16] = 1;
  *(v8 + 3) = 10;
  v8[32] = 1;
  *(v8 + 5) = v9;
  *(v8 + 6) = v11;
  *(v8 + 7) = v12;
  *(v8 + 8) = v14;
  *(v8 + 9) = v15;
  *(v8 + 10) = v17;
  v8[88] = a2;
  v8[89] = v19;
  swift_storeEnumTagMultiPayload();
  sub_1A3C4ED54(v6);
  v20 = v24;
  result = sub_1A3C52D78(v8, 1, v6, v24 + v23);
  *(v20 + *(v25 + 28)) = 1;
  return result;
}

uint64_t sub_1A3CA3F30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3CA3F78(uint64_t a1)
{
  result = sub_1A3CA3F30(&qword_1EB12A3D0, type metadata accessor for LemonadeMapFeature.ShelfProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3CA3FD0(uint64_t a1)
{
  result = sub_1A3CA3F30(&qword_1EB12A3E0, type metadata accessor for LemonadeMapFeature.ShelfProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3CA4028(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A3CA41E0(a1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    v6 = *(a2 + 16);
    type metadata accessor for MapDataProvider();
    static MapDataProvider.sharedProvider(for:)(v6);
  }

  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1A524E404();

  v9 = 0xD00000000000001BLL;
  v10 = 0x80000001A53B42A0;
  sub_1A3CA3F30(&unk_1EB139AE0, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  v7 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v7);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A3CA41E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void static MapDataProvider.sharedProvider(for:)(uint64_t a1)
{
  if (qword_1EB16E050 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_1EB16E058;
  MEMORY[0x1EEE9AC00](a1);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  os_unfair_lock_lock((v1 + ((*(*v1 + 48) + 3) & 0x1FFFFFFFCLL)));
  sub_1A3CA4590(v1 + v2, v3, v4);
}

void sub_1A3CA4368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3C2A46C(0, &qword_1EB124A98, a3, type metadata accessor for MapDataProvider, off_1E7721228);
  MEMORY[0x1EEE9AC00](v3);
  type metadata accessor for MapDataProvider();
  sub_1A52464E4();
}

void sub_1A3CA44F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_1EB1204F0)
  {
    sub_1A3C2A46C(255, &qword_1EB124A98, a3, type metadata accessor for MapDataProvider, off_1E7721228);
    type metadata accessor for os_unfair_lock_s(255);
    v3 = sub_1A524E4E4();
    if (!v4)
    {
      atomic_store(v3, &qword_1EB1204F0);
    }
  }
}

uint64_t sub_1A3CA475C()
{

  return swift_deallocObject();
}

void *MapDataProvider.init(photoLibraryObjectIdentifier:locationManager:mostRecentCoordinateFetcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a3;
  v4[4] = a4;
  v4[5] = 0;
  if (a2)
  {
    v4[5] = a2;
  }

  else
  {
    v5 = objc_opt_self();

    v6 = [v5 sharedScheduler];
    v7 = swift_allocObject();
    swift_weakInit();
    v10[4] = sub_1A46B1CAC;
    v10[5] = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1A3C2E0D0;
    v10[3] = &block_descriptor_5_1;
    v8 = _Block_copy(v10);

    [v6 scheduleTaskWithQoS:1 block:v8];

    _Block_release(v8);
  }

  return v4;
}

uint64_t sub_1A3CA48CC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1A3CA4BA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MapItem();
    v7 = sub_1A3CA4C68(&qword_1EB124FF8, 255, type metadata accessor for MapItem);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A3CA4C68(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1A3CA4CB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MapItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id PHObject.id.getter()
{
  v1 = [v0 px_opaqueIdentifier];

  return v1;
}

uint64_t sub_1A3CA4E7C()
{
  v0 = sub_1A524BEE4();
  v12 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A524BF64();
  v3 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB16C750 != -1)
  {
    swift_once();
  }

  v10 = qword_1EB16C758;
  v6 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1A3CA6124;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_203;
  v7 = _Block_copy(aBlock);

  sub_1A524BF14();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1A3CA4C68(&qword_1EB12B1E0, 255, MEMORY[0x1E69E7F60]);
  v8 = MEMORY[0x1E69E7F60];
  sub_1A3C29F88(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
  sub_1A3C2A728(&qword_1EB12B1B0, &qword_1EB12B1C0, v8);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v5, v2, v7);
  _Block_release(v7);
  (*(v12 + 8))(v2, v0);
  (*(v3 + 8))(v5, v11);
}

uint64_t sub_1A3CA5198()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3CA51D0()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C29A58();
  sub_1A524BF04();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A3CA4C68(&qword_1EB126AD0, 255, MEMORY[0x1E69E8030]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A3C29F88(0, &qword_1EB126E40, MEMORY[0x1E69E8030]);
  sub_1A3C2A728(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB16C758 = result;
  return result;
}

uint64_t type metadata accessor for LemonadeMapModel()
{
  result = qword_1EB18B260;
  if (!qword_1EB18B260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3CA54A8()
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

uint64_t sub_1A3CA56A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A3CA5850()
{
  sub_1A3CA4D98(0);
  sub_1A3CA4C68(&qword_1EB124B20, 255, sub_1A3CA4D98);

  sub_1A5245C54();
}

unint64_t sub_1A3CA596C()
{
  result = qword_1EB129DA0;
  if (!qword_1EB129DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129DA0);
  }

  return result;
}

unint64_t sub_1A3CA59C0(uint64_t a1)
{
  result = sub_1A3C442E8();
  *(a1 + 8) = result;
  return result;
}

void sub_1A3CA59E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = objc_opt_self();
  v8 = sub_1A524CA14();
  v9 = *(a2 + 16);
  v10 = [v7 transientCollectionListWithCollections:v8 title:0 identifier:0 photoLibrary:v9];

  v11 = *(a2 + 24);
  swift_storeEnumTagMultiPayload();
  v12 = sub_1A3CA1BC0(a1, v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3CA5F04(v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if (v12)
  {
    type metadata accessor for LemonadeMediaTypesItemListManager();
    v13 = v9;

    sub_1A4A19AF0(v13, a2, 1, 0);
  }

  sub_1A3C37A4C(0, &qword_1EB129FB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager);
  v24[1] = v14;
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v35 = 2;
  v15 = v10;
  v16 = v11;
  sub_1A3C6C180(&v25);
  v33 = v25;
  v34 = v26;
  sub_1A3C6C18C(&v31);
  v29 = v31;
  v30 = v32;
  v17 = sub_1A3C5A374();
  v18 = sub_1A3C30368();
  v19 = sub_1A3C5A374();
  v20 = sub_1A3C5A374();
  v21 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v33, 0, &unk_1F16FC9D0, 0, 1, &v29, v17 & 1, &v35, v28, v18, v19 & 1, v20 & 1, v21 & 1, 0);
  v26 = 0;
  v25 = 0;
  v27 = 0;
  sub_1A3CA5F64(a1, v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v23 = swift_allocObject();
  sub_1A3CA2558(v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v15, v11, v36, v28, &v25, sub_1A3CB0A08, v23);
}

uint64_t sub_1A3CA5D54()
{
  v1 = *(type metadata accessor for LemonadeBookmark.CollectionIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        goto LABEL_11;
      }

      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_14;
      }

      v4 = sub_1A5241144();
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_14;
        }

LABEL_11:

        goto LABEL_14;
      }

      v4 = sub_1A5244EB4();
    }

    (*(*(v4 - 8) + 8))(v0 + v2, v4);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    goto LABEL_11;
  }

LABEL_14:

  return swift_deallocObject();
}

uint64_t sub_1A3CA5EA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3CA5F04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3CA5F64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3CA5FCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3CA6034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__C::MKCoordinateRegion __swiftcall MapDataProvider.fetchBoundingRegion()()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v68 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v68 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v68 - v15;
  sub_1A3C52C70(0, &qword_1EB126A10);
  v17 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v17 mapTileInitialKilometerDiameter];
  v19 = v18;

  v20 = *(v0 + 40);
  if (v20)
  {
    v21 = [v20 location];
    if (v21)
    {
      v22 = v21;
      v23 = MEMORY[0x1A590B350]([v21 coordinate]);
      v27 = fabs(v23);
      v28 = fabs(v24) > 180.0 || v27 > 90.0;
      if (!v28 && v25 >= 0.0 && v25 <= 180.0 && v26 >= 0.0 && v26 <= 360.0)
      {
        v56 = v26;
        v57 = v25;
        v58 = v24;
        v59 = v23;
        v60 = sub_1A3CB8D34();
        (*(v2 + 16))(v16, v60, v1);
        v61 = sub_1A5246F04();
        v62 = sub_1A524D224();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_1A3C1C000, v61, v62, "Using current location for bounding region", v63, 2u);
          MEMORY[0x1A590EEC0](v63, -1, -1);
        }

        (*(v2 + 8))(v16, v1);
LABEL_38:
        v52 = v59;
        v53 = v58;
        v54 = v57;
        v55 = v56;
        goto LABEL_39;
      }

      v69 = v0;
      v29 = sub_1A3CB8D34();
      (*(v2 + 16))(v14, v29, v1);
      v30 = sub_1A5246F04();
      v31 = sub_1A524D224();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1A3C1C000, v30, v31, "Invalid current location while fetching bounding region", v32, 2u);
        MEMORY[0x1A590EEC0](v32, -1, -1);
      }

      (*(v2 + 8))(v14, v1);
      v0 = v69;
    }
  }

  v33 = COERCE_DOUBLE((*(v0 + 24))());
  if ((v35 & 1) == 0)
  {
    v36 = v33;
    v37 = v34;
    v70.latitude = v33;
    v70.longitude = v34;
    if (CLLocationCoordinate2DIsValid(v70))
    {
      v38 = MEMORY[0x1A590B350](v36, v37, v19, v19);
      v42 = fabs(v38);
      v43 = fabs(v39) > 180.0 || v42 > 90.0;
      if (!v43 && v40 >= 0.0 && v40 <= 180.0 && v41 >= 0.0 && v41 <= 360.0)
      {
        v56 = v41;
        v57 = v40;
        v58 = v39;
        v59 = v38;
        v64 = sub_1A3CB8D34();
        (*(v2 + 16))(v11, v64, v1);
        v65 = sub_1A5246F04();
        v66 = sub_1A524D224();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_1A3C1C000, v65, v66, "Using most recent asset for bounding region", v67, 2u);
          MEMORY[0x1A590EEC0](v67, -1, -1);
        }

        (*(v2 + 8))(v11, v1);
        goto LABEL_38;
      }

      v44 = sub_1A3CB8D34();
      (*(v2 + 16))(v8, v44, v1);
      v45 = sub_1A5246F04();
      v46 = sub_1A524D224();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_1A3C1C000, v45, v46, "Invalid most recent asset location while fetching bounding region", v47, 2u);
        MEMORY[0x1A590EEC0](v47, -1, -1);
      }

      (*(v2 + 8))(v8, v1);
    }
  }

  v48 = sub_1A3CB8D34();
  (*(v2 + 16))(v5, v48, v1);
  v49 = sub_1A5246F04();
  v50 = sub_1A524D224();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_1A3C1C000, v49, v50, "Using default region for bounding region", v51, 2u);
    MEMORY[0x1A590EEC0](v51, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  MEMORY[0x1A590B350](37.3349, -122.0113, v19, v19);
LABEL_39:
  result.span.longitudeDelta = v55;
  result.span.latitudeDelta = v54;
  result.center.longitude = v53;
  result.center.latitude = v52;
  return result;
}

uint64_t sub_1A3CA69D4()
{
  v1 = [*(v0 + 16) px_standardLibrarySpecificFetchOptions];
  sub_1A3CA6C04(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A52F9790;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v4 = sub_1A524C634();
  v5 = [v3 initWithKey:v4 ascending:0];

  *(v2 + 32) = v5;
  sub_1A3C52C70(0, &qword_1EB126B60);
  v6 = sub_1A524CA14();

  [v1 setSortDescriptors_];

  [v1 setFetchLimit_];
  v7 = [objc_opt_self() px:0 fetchPlacesAssetsInAssetCollection:v1 options:?];
  v8 = [v7 firstObject];
  v9 = v8;
  if (v8)
  {
    [v8 locationCoordinate];
    v11 = v10;

    return v11;
  }

  else
  {

    return 0;
  }
}

void sub_1A3CA6BB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3CA6C04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A3CA6C9C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  result = (*(v4 + 40))(v3, v4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

void sub_1A3CA6F6C()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x1E69E7D40];
    if (v1 != ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0xA0))() & 1))
    {
      (*((*v4 & *v3) + 0xA8))(v1);
      v5 = [objc_opt_self() defaultCenter];
      if (qword_1EB168588 != -1)
      {
        swift_once();
      }

      [v5 postNotificationName:qword_1EB168590 object:0];
    }
  }
}

void sub_1A3CA70B8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v23 = 0;
  v24 = sub_1A3CA7400(MEMORY[0x1E69E7CC0], sub_1A3FB7788);
  sub_1A3CA7400(v2, sub_1A3CB3820);
  v3 = *(a1 + 16);
  sub_1A3CA749C(v3, 0);
  sub_1A524E554();
  v22 = v3;
  if (!v3)
  {
    return;
  }

  v4 = 0;
  v21 = a1 + 32;
  while (1)
  {
    v8 = *(v21 + 16 * v4);
    v9 = (v24 + 32);
    v10 = *(v24 + 16);
    if (!v23)
    {
      break;
    }

    v11 = v8;

    sub_1A3FB62B0(v11, v9, v10, (v23 + 16));
    LOBYTE(v11) = v12;

    if ((v11 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_15:
    v16 = v8;
    sub_1A524E514();
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();
    v17 = *(v24 + 16);
    if (v23)
    {
      swift_beginAccess();
      if (MEMORY[0x1A5901C00](*(v23 + 16) & 0x3FLL) >= v17)
      {
        v19 = v23;
        if ((swift_isUniquelyReferenced_native() & 1) == 0)
        {
          v20 = sub_1A52468B4();

          v23 = v20;
          v19 = v20;
        }

        if (!v19)
        {
          goto LABEL_28;
        }

        sub_1A5246854();
      }

      else
      {
        v18 = *(v23 + 24) & 0x3FLL;
        if (v17 > 0xF || v18)
        {
          goto LABEL_3;
        }

        v23 = 0;
      }
    }

    else if (v17 > 0xF)
    {
      v18 = 0;
LABEL_3:
      v5 = MEMORY[0x1A5901C30](v17);
      if (v18 <= v5)
      {
        v6 = v5;
      }

      else
      {
        v6 = v18;
      }

      v7 = sub_1A3FB60D4(v24, v6, 0, v18);

      v23 = v7;
    }

    ++v4;

    sub_1A524E514();
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();

    if (v4 == v22)
    {
      return;
    }
  }

  v13 = v8;

  if (!v10)
  {
    goto LABEL_15;
  }

  sub_1A3C52C70(0, &qword_1EB126A40);
  while (1)
  {
    v14 = *v9;
    v15 = sub_1A524DBF4();

    if (v15)
    {
      break;
    }

    ++v9;
    if (!--v10)
    {
      goto LABEL_15;
    }
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  __break(1u);
}

uint64_t sub_1A3CA7400(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_1A524E2B4();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v6 = v5;
  v7 = sub_1A3FB5C8C(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A3CA749C(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3 = v2;
  v5 = result;
  sub_1A524E554();
  v6 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v7 = *(v6 + 16) & 0x3FLL;
    v8 = MEMORY[0x1A5901C30](v5);
    v9 = v8;
    if ((a2 & 1) == 0)
    {
      swift_beginAccess();
      v8 = v9;
      v9 = *(v6 + 24) & 0x3FLL;
    }
  }

  else
  {
    v8 = MEMORY[0x1A5901C30](v5);
    v7 = 0;
    if (a2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  v10 = v3[1];
  if (v7 < v8)
  {
    if (v9 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v9;
    }

LABEL_23:
    v14 = sub_1A3FB60D4(v10, v11, 0, v9);

    *v3 = v14;
    return result;
  }

  if (v9 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  result = MEMORY[0x1A5901C30](*(v10 + 16));
  if (result <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = result;
  }

  if (v13 < v7)
  {
    if (v9 <= v13)
    {
      v11 = v13;
    }

    else
    {
      v11 = v9;
    }

    goto LABEL_23;
  }

  if (!v6 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v15 = *v3;
    if (*v3)
    {
      goto LABEL_28;
    }

LABEL_32:
    if (!v9)
    {
      return result;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (!*v3)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v15 = sub_1A52468B4();

  *v3 = v15;
  if (!v15)
  {
    goto LABEL_32;
  }

LABEL_28:
  result = swift_beginAccess();
  if ((*(v15 + 24) & 0x3FLL) != v9)
  {
    *(v15 + 24) = *(v15 + 24) & 0xFFFFFFFFFFFFFFC0 | v9 & 0x3F;
  }

  return result;
}

uint64_t sub_1A3CA7664(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3CA8098;

  return sub_1A3C68D48(a1, v4);
}

uint64_t sub_1A3CA771C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return sub_1A3C68D48(a1, v4);
}

uint64_t sub_1A3CA77D4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A3CA7868(v3, v4, v5, v2);
}

uint64_t sub_1A3CA7868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1A524CC54();
  *(v4 + 48) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3CA7900, v6, v5);
}

uint64_t sub_1A3CA7900()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A3CA7B08();
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A3CA7B08()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  swift_getKeyPath();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3CA7C30()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3CA7CB4()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3CA7D34(char a1)
{
  v2 = v1;
  sub_1A3C52C70(0, &qword_1EB126A10);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [ObjCClassFromMetadata sharedInstance];
  if (([v5 enableNavigationBarBlurInCollections] & 1) != 0 || (swift_getKeyPath(), sub_1A3C79318(), sub_1A52415D4(), , v6 = 0.0, *(v1 + 81) == 1))
  {
    v7 = [ObjCClassFromMetadata sharedInstance];
    [v7 navigationBarBlurRadius];
    v6 = v8;
  }

  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  if (*(v2 + 88) != v6)
  {
    MEMORY[0x1EEE9AC00](v9);
    if (a1)
    {
      v10 = sub_1A47ED860();
      MEMORY[0x1EEE9AC00](v10);
      sub_1A5248914();

      return;
    }

    if (*(v2 + 88) != v6)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A52415C4();
    }
  }
}

double sub_1A3CA8000()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 88);
}

double sub_1A3CA8088()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 88) = result;
  return result;
}

uint64_t sub_1A3CA809C(uint64_t a1)
{
  v3 = *(type metadata accessor for LemonadeBookmark.CollectionIdentifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A3CA810C(a1, v4);
}

uint64_t sub_1A3CA810C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A52455E4();
  v60 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1A5245154();
  v63 = *(v61 - 8);
  v7 = MEMORY[0x1EEE9AC00](v61);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v60 - v10;
  v11 = sub_1A5244EB4();
  v65 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v60 - v15;
  v16 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C3798C(0, &qword_1EB12A000, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  ResultProvider = PhotoKitItemListManager.FetchResultProviderInput.photoLibrary.getter();
  v19 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  [v19 setIncludeRecentlyEditedSmartAlbum_];
  [v19 setIncludeTrashBinAlbum_];
  [v19 setIncludeAllPhotosSmartAlbum_];
  [v19 setIncludeDuplicatesAlbums_];
  sub_1A3C5813C(a2, v18, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v29 = v64;
      v28 = v65;
      (*(v65 + 32))(v64, v18, v11);
      (*(v28 + 16))(v14, v29, v11);
      if ((*(v28 + 88))(v14, v11) == *MEMORY[0x1E69C1270])
      {
        (*(v28 + 96))(v14, v11);
        v31 = v62;
        v30 = v63;
        v32 = v61;
        (*(v63 + 32))(v62, v14, v61);
        (*(v30 + 16))(v9, v31, v32);
        v33 = (*(v30 + 88))(v9, v32);
        if (v33 == *MEMORY[0x1E69C1420])
        {
          v34 = 1;
          v35 = ResultProvider;
        }

        else
        {
          v35 = ResultProvider;
          if (v33 == *MEMORY[0x1E69C1438])
          {
            v34 = 2;
          }

          else if (v33 == *MEMORY[0x1E69C1418])
          {
            v34 = 3;
          }

          else if (v33 == *MEMORY[0x1E69C1410])
          {
            v34 = 4;
          }

          else if (v33 == *MEMORY[0x1E69C1428])
          {
            v34 = 6;
          }

          else if (v33 == *MEMORY[0x1E69C1430])
          {
            v34 = 5;
          }

          else
          {
            (*(v63 + 8))(v9, v32);
            v34 = 0;
          }
        }

        v52 = [v35 px:v34 utilityCollectionWithType:v60];
        if (v52)
        {
          v53 = v52;
          sub_1A3C36FC0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v54 = swift_allocObject();
          *(v54 + 16) = xmmword_1A52F9790;
          *(v54 + 32) = v53;
        }

        else
        {
          v54 = MEMORY[0x1E69E7CC0];
        }

        sub_1A3D64B88(v54, &qword_1EB126CD0);

        sub_1A524C674();
        v55 = objc_allocWithZone(MEMORY[0x1E69788E0]);
        v56 = sub_1A524CA14();

        v57 = sub_1A524C634();

        v27 = [v55 initWithObjects:v56 photoLibrary:v35 fetchType:v57 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

        (*(v63 + 8))(v62, v32);
        (*(v65 + 8))(v64, v11);
      }

      else
      {
        PXSharingFilterFromLibraryFilterViewMode(*(a1 + 8));
        sub_1A52455D4();
        v63 = v11;
        v45 = ResultProvider;
        sub_1A5245584();
        v46 = v28;
        __swift_project_boxed_opaque_existential_1(&v67, v69);
        v27 = sub_1A5245164();

        (*(v60 + 8))(v6, v4);
        v47 = *(v46 + 8);
        v48 = v63;
        v47(v29, v63);
        __swift_destroy_boxed_opaque_existential_0(&v67);
        v47(v14, v48);
      }

      return v27;
    }

    v40 = ResultProvider;
    if (EnumCaseMultiPayload == 5)
    {
      v41 = *v18;
      v42 = objc_opt_self();
      v43 = PXDisplayCollectionDetailedCountsMake(v41);
      v44 = v19;
      v27 = [v42 fetchAssetCollectionsWithType:2 subtype:v43 options:v44];

      return v27;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v22 = *v18;
      v21 = v18[1];
      v23 = objc_opt_self();
      sub_1A3C36FC0(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1A52F8E10;
      *(v24 + 32) = v22;
      *(v24 + 40) = v21;
      v25 = sub_1A524CA14();

      v26 = v19;
      v27 = [v23 fetchAssetCollectionsWithLocalIdentifiers:v25 options:v26];

      return v27;
    }

    v36 = ResultProvider;
    if (EnumCaseMultiPayload == 2)
    {
      v37 = sub_1A524C634();

      v38 = [v36 px:v37 assetCollectionWithTransientIdentifier:?];

      if (v38)
      {
        sub_1A3C36FC0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1A52F9790;
        *(v39 + 32) = v38;
      }

      else
      {
        v39 = MEMORY[0x1E69E7CC0];
      }

      sub_1A3D64B88(v39, &qword_1EB126AC0);

      sub_1A524C674();
      v49 = objc_allocWithZone(MEMORY[0x1E69788E0]);
      v50 = sub_1A524CA14();

      v51 = sub_1A524C634();

      v27 = [v49 initWithObjects:v50 photoLibrary:v36 fetchType:v51 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

      return v27;
    }
  }

  v67 = 0;
  v68 = 0xE000000000000000;
  sub_1A524E404();

  v67 = 0xD00000000000001BLL;
  v68 = 0x80000001A53B42A0;
  sub_1A3D6CF80(&unk_1EB139AE0, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  v59 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v59);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A3CA8B84()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A3CA8C7C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A3CA8CD4();
  }

  return result;
}

void sub_1A3CA94F0()
{
  type metadata accessor for PhotoKitItemListManager.FetchState();
  type metadata accessor for PhotoKitItemListImplementation();
  sub_1A5245E94();
}

uint64_t sub_1A3CA96A0()
{
  v0 = *(**sub_1A3C29A08() + 128);

  v0(2);
}

id sub_1A3CA973C@<X0>(void *a1@<X8>)
{
  v2 = sub_1A3CA9778();
  *a1 = v2;

  return v2;
}

void sub_1A3CA97B8()
{
  type metadata accessor for PhotoKitItemListManager();
  type metadata accessor for PhotoKitItemListManager.Mutator();

  sub_1A3CA9988();
}

uint64_t sub_1A3CA9848@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 992))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1A3CA98B4()
{
  type metadata accessor for PhotoKitItemListImplementation();
  swift_getWitnessTable();
  sub_1A52456C4();
}

void sub_1A3CA9988()
{
  swift_allocObject();
  swift_getKeyPath();
  type metadata accessor for PhotoKitItemListManager.Mutator();
  swift_getWitnessTable();
  sub_1A52456D4();
}

__n128 sub_1A3CA9A7C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3CA9D88()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t *sub_1A3CAA3FC()
{
  if (qword_1EB18EA70 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EB558;
}

id sub_1A3CAA44C()
{
  result = PLLemonadeGetLog();
  if (result)
  {
    qword_1EB1EB558 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A3CAA490()
{
  *(*(v0 + 16) + 264) = *(v0 + 24);
}

uint64_t sub_1A3CAA4CC(int a1)
{
  v3 = *v1;
  sub_1A3CAAB2C(0, &qword_1EB124B58, &type metadata for PhotoKitFetcher.Options, off_1E7721028);
  v34 = v4;
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v24 - v5;
  sub_1A3C720F0(0, &qword_1EB124B50, type metadata accessor for PhotoKitFetcher, off_1E7721028);
  v32 = v7;
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10 && [v10 canContainCollections])
  {
    v11 = *(v1 + 169);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*v1 + 280))();
  v13 = 24;
  if (v11)
  {
    v13 = 32;
  }

  v14 = *(v12 + v13);
  if (v14)
  {
    v15 = v1[17];
    v16 = v15[2];
    v35 = a1;
    v30 = v14;
    if (v16)
    {
      v24[1] = v11;
      v25 = v12;
      v26 = v3;
      v27 = v9;
      v28 = v6;
      v17 = v15;
      v18 = v14;
      v19 = sub_1A3CAABB0(v16, 0, &qword_1EB126258, &type metadata for PhotoKitItemListMetadata);
      v29 = sub_1A3CAAC34(&v36, v19 + 32, v16, v17);
      v20 = v18;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v21 = v14;
    v22 = *(MEMORY[0x1E69E7CC0] + 16);

    if (v22)
    {
      v29 = v15;
      if (a1)
      {
        sub_1A43FABE8();
      }

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }
}

void sub_1A3CAAB2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id PhotoKitItemListManager.FetchResultProviderInput.photoLibrary.getter()
{
  result = [*v0 photoLibrary];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1A3CAABB0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A3CAAB2C(0, a3, a4, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v6[2] = a1;
  v6[3] = 2 * v7 - 64;
  return result;
}

void *sub_1A3CAAC34(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1A3CAAD44()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 1016))(KeyPath);

  return v0[50];
}

void sub_1A3CAADE8(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14[21] = a8;
  v14[20] = a7;
  v14[19] = a6;
  v14[18] = a5;
  v17 = a3;
  v9 = *a4;
  sub_1A3CAAB2C(0, &qword_1EB124B58, &type metadata for PhotoKitFetcher.Options, off_1E7721028);
  v21 = v10;
  v16 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v20 = v14 - v11;
  sub_1A3C720F0(0, &qword_1EB124B50, type metadata accessor for PhotoKitFetcher, off_1E7721028);
  v19 = v12;
  v15 = *(v12 - 8);
  v14[17] = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = v14 - v13;
  v14[1] = a4;
  v22 = *(v9 + 80);
  v14[16] = type metadata accessor for PhotoKitItemListManager();
  sub_1A5245E14();
}

uint64_t sub_1A3CAB668()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t PhotoKitItemListImplementation.hasMetadata(for:)(uint64_t a1)
{
  if (*(*(v1 + 152) + 16))
  {
    sub_1A3CAB9BC(a1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t sub_1A3CAB9BC(uint64_t a1)
{
  v2 = sub_1A524EC84();

  return sub_1A3CABD80(a1, v2);
}

uint64_t sub_1A3CABA00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3C6D3EC(0, &qword_1EB126450, MEMORY[0x1E69E6EC8]);
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = sub_1A524EC84();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1A3CABC78()
{
  v1 = *(v0 + 16);
  sub_1A3C593BC(*(v0 + 24));
  sub_1A3CABE50();

  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    result = swift_beginAccess();
    if (!*(v3 + 16))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = v4 - 1;
    while (1)
    {
      v7 = *(v1 + 32);
      if (!*(v7 + 16))
      {
        goto LABEL_5;
      }

      result = sub_1A3C2F228(*(v3 + 32 + v5));
      if ((v8 & 1) == 0)
      {
        goto LABEL_5;
      }

      v9 = *(*(v7 + 56) + 8 * result);
      if (v9[33] != 1)
      {
        break;
      }

      if (v6 == v5 || (v9[34] & 1) == 0)
      {
        return result;
      }

LABEL_6:
      if (++v5 >= *(v3 + 16))
      {
        goto LABEL_15;
      }
    }

    if (v9[32] == 1)
    {

      sub_1A3C2F3D4();
    }

LABEL_5:
    if (v6 == v5)
    {
      return result;
    }

    goto LABEL_6;
  }

  return result;
}

unint64_t sub_1A3CABD80(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

id sub_1A3CABDEC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  [v0 setQualityOfService_];
  result = [v0 setMaxConcurrentOperationCount_];
  qword_1EB17AC98 = v0;
  return result;
}

uint64_t sub_1A3CABE50()
{
  v1 = v0;
  v2 = sub_1A5246EA4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - v6;
  v8 = sub_1A5246E54();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v35 - v14;
  if ((*(v1 + 34) & 1) == 0)
  {
    v40 = v3;
    *(v1 + 34) = 1;
    if (qword_1EB18EAE8 != -1)
    {
      swift_once();
    }

    v16 = sub_1A5246E94();
    v17 = __swift_project_value_buffer(v16, qword_1EB18EAF0);

    v38 = v17;
    v18 = sub_1A5246E84();
    sub_1A5246EB4();
    v37 = sub_1A524D644();
    if (sub_1A524DEC4())
    {

      sub_1A5246EE4();

      v19 = v40;
      v20 = (*(v40 + 88))(v7, v2);
      v21 = *MEMORY[0x1E69E93E8];
      v36 = v8;
      if (v20 == v21)
      {
        v22 = "[Error] Interval already ended";
      }

      else
      {
        (*(v19 + 8))(v7, v2);
        v22 = "";
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v18, v37, v24, "FeatureLoaded", v22, v23, 2u);
      MEMORY[0x1A590EEC0](v23, -1, -1);
      v8 = v36;
    }

    v25 = *(v9 + 8);
    result = v25(v15, v8);
    v26 = v40;
    if (*(v1 + 48))
    {

      v27 = sub_1A5246E84();
      sub_1A5246EB4();
      v28 = sub_1A524D644();
      if (sub_1A524DEC4())
      {

        v29 = v39;
        sub_1A5246EE4();

        if ((*(v26 + 88))(v29, v2) == *MEMORY[0x1E69E93E8])
        {
          v30 = v8;
          v31 = "[Error] Interval already ended";
        }

        else
        {
          v32 = v26;
          v30 = v8;
          (*(v32 + 8))(v29, v2);
          v31 = "";
        }

        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = sub_1A5246E34();
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v27, v28, v34, "FeatureActive", v31, v33, 2u);
        MEMORY[0x1A590EEC0](v33, -1, -1);
        v8 = v30;
      }

      return v25(v12, v8);
    }
  }

  return result;
}

void sub_1A3CAC2D4()
{

  type metadata accessor for PhotoKitItemListManager.Mutator();
  type metadata accessor for PhotoKitItemListImplementation();
  swift_getWitnessTable();
  sub_1A52456C4();
}

uint64_t sub_1A3CAC524()
{
  sub_1A3CAC54C();
}

void sub_1A3CAC87C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v18 = sub_1A5246EA4();
  v17 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v19 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A524BEE4();
  v15 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v13[4] = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A524BF64();
  v13[3] = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v13[2] = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A5246E54();
  v8 = MEMORY[0x1EEE9AC00](v21);
  v20 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v10);
  v11 = a4[1];
  v22 = *a4;
  v23 = v11;
  v24 = a4[2];
  if (qword_1EB18EAC0 != -1)
  {
    swift_once();
  }

  v12 = sub_1A5246E94();
  __swift_project_value_buffer(v12, qword_1EB18EAC8);
  sub_1A5246E84();
  sub_1A5246E24();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3CAD46C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CAD4A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1A3C57108(0, v1, 0);
  v2 = v24;
  v4 = a1 + 56;
  result = sub_1A524E234();
  v6 = result;
  v7 = 0;
  v20 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v21 = v7;
    v22 = *(a1 + 36);
    v23[8] = 0;
    *v23 = *(*(a1 + 48) + v6);
    result = sub_1A524E624();
    v11 = *(v24 + 16);
    v10 = *(v24 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_1A3C57108((v10 > 1), v11 + 1, 1);
    }

    *(v24 + 16) = v11 + 1;
    v12 = v24 + 16 * v11;
    *(v12 + 32) = *&v23[1];
    *(v12 + 40) = 0xE000000000000000;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v13 = *(a1 + 56 + 8 * v9);
    if ((v13 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v22 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v14 = v13 & (-2 << (v6 & 0x3F));
    if (v14)
    {
      v8 = __clz(__rbit64(v14)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v15 = v9 << 6;
      v16 = v9 + 1;
      v17 = (a1 + 64 + 8 * v9);
      while (v16 < (v8 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = sub_1A3CAD6E8(v6, v22, 0);
          v8 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = sub_1A3CAD6E8(v6, v22, 0);
    }

LABEL_4:
    v7 = v21 + 1;
    v6 = v8;
    if (v21 + 1 == v20)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1A3CAD6E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void PhotoKitItemListImplementation.deinit()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 136);

  sub_1A3C6EC48(*(v0 + 160), *(v0 + 168));

  sub_1A5245EC4();
}

unint64_t sub_1A3CAD85C()
{
  result = qword_1EB126EC0;
  if (!qword_1EB126EC0)
  {
    sub_1A3C2DD24(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126EC0);
  }

  return result;
}

void sub_1A3CAD980(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3C6C300();
    v7 = a3(a1, &type metadata for PhotoKitItemListMetadata, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A3CAD9E4()
{
  result = qword_1EB126D70;
  if (!qword_1EB126D70)
  {
    sub_1A3CAD980(255, &qword_1EB126D78, MEMORY[0x1E69E64E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126D70);
  }

  return result;
}

uint64_t sub_1A3CADE4C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A3CADEE0(v3, v4, v5, v2);
}

uint64_t sub_1A3CADEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_1A524BEE4();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_1A524BF64();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  sub_1A524CC54();
  v4[16] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3CAE030, v8, v7);
}

uint64_t sub_1A3CAE030()
{
  v1 = v0[15];
  v2 = v0[14];
  v11 = v0[13];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];

  type metadata accessor for PXTipsHelper();
  static PXTipsHelper.setup()();
  sub_1A3C29A58();
  v10 = sub_1A524D474();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_1A3CB40FC;
  v0[7] = v6;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A3C2E0D0;
  v0[5] = &block_descriptor_187;
  v7 = _Block_copy(v0 + 2);

  sub_1A524BF14();
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1A3CB0AC0(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C56408(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v1, v3, v7);
  _Block_release(v7);

  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A3CAE288()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t storeEnumTagSinglePayload for PhotoKitItemListMetadata(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PhotoKitItemListMetadata(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1A3CAEA00(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *a2;
  v8 = *v5;
  v7 = v5[1];
  v10 = v5[2];
  v9 = v5[3];
  LOBYTE(a2) = *(v5 + 32);
  v11 = v5[5];
  v12 = a2 & 1;
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 == 4)
      {
        v13 = 3;
      }

      else
      {
        v13 = 4;
      }

      goto LABEL_12;
    }

    v18 = 1;
    v19 = 1;
  }

  else
  {
    if (v6)
    {
      if (v6 != 1)
      {
        v18 = 0;
LABEL_13:
        v19 = 1;
        goto LABEL_14;
      }

      v13 = 2;
LABEL_12:
      v18 = v13;
      goto LABEL_13;
    }

    v18 = 4;
    v19 = 0;
  }

LABEL_14:
  v15[0] = v8;
  v15[1] = v7;
  v15[2] = v10;
  v15[3] = v9;
  v16 = v12;
  v17 = v11;
  v15[0] = PhotoKitFetcher.fetch(_:for:options:)(&v18, v4, v15);
  LOBYTE(v18) = v6;
  sub_1A3C6D4F0(0, &qword_1EB126FE0, MEMORY[0x1E69E5E28]);
  return sub_1A524C494();
}

void *PhotoKitFetcher.fetch(_:for:options:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *a3;
  v6 = *(a3 + 8);
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  v10 = *(a3 + 32);
  v11 = *(a3 + 40);
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v52 = v11;
    v53 = v4;
    v54 = v5;
    v47 = v7;
    v48 = v6;
    v49 = v8;
    v50 = v9;
    v51 = v10;
    return sub_1A414665C(&v53, v12, &v47);
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v52 = v11;
    v53 = v4;
    v54 = v5;
    v47 = v7;
    v48 = v6;
    v49 = v8;
    v50 = v9;
    v51 = v10;
    return sub_1A3CAF200(&v53, v14, &v47);
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v22 = v21;
      if ((v5 & 1) == 0)
      {
        v33 = objc_allocWithZone(PXPhotosAssetsFetcherConfiguration);
        v34 = v11;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v53 = v4;
      v54 = 1;
    }

    else
    {
      objc_opt_self();
      v32 = swift_dynamicCastObjCClass();
      if (!v32)
      {
        objc_opt_self();
        v35 = swift_dynamicCastObjCClass();
        if (v35)
        {
          v52 = v11;
          v53 = v4;
          v54 = v5;
          v47 = v7;
          v48 = v6;
          v49 = v8;
          v50 = v9;
          v51 = v10;
          return sub_1A4146CF0(&v53, v35, &v47);
        }

        else
        {
          objc_opt_self();
          v38 = swift_dynamicCastObjCClass();
          if (v38)
          {
            v52 = v11;
            v53 = v4;
            v54 = v5;
            v47 = v7;
            v48 = v6;
            v49 = v8;
            v50 = v9;
            v51 = v10;
            return sub_1A4147644(&v53, v38, &v47);
          }

          else
          {
            objc_opt_self();
            result = swift_dynamicCastObjCClass();
            if (result)
            {
              v52 = v11;
              v53 = v4;
              v54 = v5;
              v47 = v7;
              v48 = v6;
              v49 = v8;
              v50 = v9;
              v51 = v10;
              return sub_1A41478EC(&v53, result, &v47);
            }
          }
        }

        return result;
      }

      v22 = v32;
      v53 = v4;
      v54 = v5;
    }

    v47 = v7;
    v48 = v6;
    v49 = v8;
    v50 = v9;
    v51 = v10;
    v52 = v11;
    return sub_1A3CB2F0C(&v53, v22, &v47);
  }

  v16 = v15;
  if (v5)
  {
    if (v4 == 2)
    {
      v17 = v15;
      v18 = [v15 type];
      v16 = v17;
      if (v18 == 10)
      {
        sub_1A3C52C70(0, &unk_1EB12B198);
        v19 = [*(v3 + 16) px_standardLibrarySpecificFetchOptions];
        [v19 setFetchLimit_];
        [v19 setSharingFilter_];
        v20 = sub_1A524D194();

        return v20;
      }
    }

    goto LABEL_18;
  }

  v23 = v15;
  v24 = [v15 type];
  v16 = v23;
  if (v24 != 10)
  {
LABEL_18:
    v52 = v11;
    v53 = v4;
    v54 = v5;
    v47 = v7;
    v48 = v6;
    v49 = v8;
    v50 = v9;
    v51 = v10;
    return sub_1A3CB2F0C(&v53, v16, &v47);
  }

  sub_1A3C52C70(0, &unk_1EB12B198);
  v25 = [*(v3 + 16) px_standardLibrarySpecificFetchOptions];
  [v25 setFetchLimit_];
  [v25 setSharingFilter_];
  v26 = sub_1A524D194();

  v27 = &selRef_faceClusteringProperties;
  v28 = [v26 firstObject];
  if (v28)
  {
    v29 = v28;
    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (v30)
    {
      v52 = v11;
      v53 = v4;
      v54 = 0;
      v47 = v7;
      v48 = v6;
      v49 = v8;
      v50 = v9;
      v51 = v10;
      v31 = sub_1A4147644(&v53, v30, &v47);
LABEL_27:
      v37 = v31;

      return v37;
    }

    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();
    if (v36)
    {
      v52 = v11;
      v53 = v4;
      v54 = 0;
      v47 = v7;
      v48 = v6;
      v49 = v8;
      v50 = v9;
      v51 = v10;
      v31 = sub_1A41478EC(&v53, v36, &v47);
      goto LABEL_27;
    }

    v27 = 0x1FB10B000;
  }

  v39 = v27;
  v40 = sub_1A524D244();
  v41 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v41, v40))
  {
    v42 = v41;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412290;
    if (v26)
    {
      v45 = [v26 v39 + 1144];
      v46 = v45;
    }

    else
    {
      v45 = 0;
      v46 = 0;
    }

    *(v43 + 4) = v45;
    *v44 = v46;
    _os_log_impl(&dword_1A3C1C000, v42, v40, "Invalid object type for magic suggestion: %@", v43, 0xCu);
    sub_1A3CB65E4(v44);
    MEMORY[0x1A590EEC0](v44, -1, -1);
    MEMORY[0x1A590EEC0](v43, -1, -1);

    return 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1A3CAF200(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v7 = *a3;
  v6 = a3[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = *(a3 + 32);
  v11 = a3[5];
  if (*(a1 + 8) == 1)
  {
    if (v5 >= 2)
    {
      v22 = a3[5];
      v23 = 0;
      v24 = 0;
      v20[0] = v7;
      v20[1] = v6;
      v20[2] = v8;
      v20[3] = v9;
      v21 = v10;
      return sub_1A3CAF200(&v23, a2, v20);
    }

    return 0;
  }

  if (v5 > 5)
  {
    MEMORY[0x1A5907B60](0x7463657078656E55, 0xEB00000000206465);
    type metadata accessor for PXDisplayAssetCollectionCurationKind(0);
    sub_1A524E624();
    result = sub_1A524E6E4();
    __break(1u);
    return result;
  }

  if (((1 << v5) & 0xE) == 0)
  {
    if (v5 == 4)
    {
      v5 = 5;
    }

    v13 = [objc_allocWithZone(PXPhotosAssetsFetcherConfiguration) init];
    [v13 setCurationKind_];
    [v13 setFetchLimit_];
    v18 = PXPhotosDataSourceOptionsAdjustedForCurationContext(0, v9);
    [v13 setOptions_];
    if (v8)
    {
      sub_1A3C52C70(0, &qword_1EB1265C0);
      v8 = sub_1A524CA14();
    }

    [v13 setReferencePersons_];

    [v13 setReverseSortOrder_];
    [v13 setLibraryFilter_];
    [v13 setFilterPredicate_];
    v19 = [*(v3 + 24) fetchAssetsInContainer:a2 configuration:v13];
LABEL_16:

    return v19;
  }

  v13 = [objc_allocWithZone(PXPhotosAssetsFetcherConfiguration) init];
  [v13 setCurationKind_];
  [v13 setFetchLimit_];
  v14 = PXPhotosDataSourceOptionsAdjustedForCurationContext(0, v9);
  [v13 setOptions_];
  if (v8)
  {
    sub_1A3C52C70(0, &qword_1EB1265C0);
    v8 = sub_1A524CA14();
  }

  [v13 setReferencePersons_];

  [v13 setReverseSortOrder_];
  [v13 setLibraryFilter_];
  [v13 setFilterPredicate_];
  [v13 setOptions_];
  v15 = *(v3 + 24);
  v16 = [v15 fetchAssetsInContainer:a2 configuration:v13];
  if (v16)
  {
    v17 = v16;
    if ([v16 count])
    {

      return v17;
    }

    [v13 setOptions_];
    v19 = [v15 fetchAssetsInContainer:a2 configuration:v13];

    goto LABEL_16;
  }

  return 0;
}

unint64_t PXPhotosDataSourceOptionsAdjustedForCurationContext(unint64_t a1, uint64_t a2)
{
  v2 = a1 | 0x400000;
  v3 = a1 & 0xFFFFFFFFFFFFFFEFLL;
  if (a2 != 3)
  {
    v3 = a1;
  }

  if (a2 != 2)
  {
    v2 = v3;
  }

  v4 = a1 & 0xFFFFFFFFFFEFFFFFLL;
  v5 = a1 | 0x100000;
  if (a2 != 1)
  {
    v5 = a1;
  }

  if (a2)
  {
    v4 = v5;
  }

  if (a2 <= 1)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1A3CAF660()
{
  result = qword_1EB120E28;
  if (!qword_1EB120E28)
  {
    sub_1A3C6D4F0(255, &qword_1EB126FF8, MEMORY[0x1E69E5DE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120E28);
  }

  return result;
}

void sub_1A3CAF6D4()
{
  if (!qword_1EB126E68)
  {
    sub_1A3C52C70(255, &qword_1EB126C40);
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126E68);
    }
  }
}

id sub_1A3CAF73C()
{
  result = sub_1A3CAF75C();
  qword_1EB17AC88 = result;
  return result;
}

id sub_1A3CAF75C()
{
  v0 = sub_1A524BEE4();
  v1 = *(v0 - 8);
  v28 = v0;
  v29 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v27 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D464();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1A524BF64();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180);
  v22 = "PerformFetchMetadata";
  sub_1A524BF04();
  v10 = MEMORY[0x1E69E8030];
  sub_1A3C720F0(0, &unk_1EB1261D0, MEMORY[0x1E69E8030], MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A52F8E10;
  sub_1A524D404();
  aBlock[0] = v11;
  sub_1A3C72154(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v12 = MEMORY[0x1E69E62F8];
  sub_1A3C720F0(0, &qword_1EB126E40, v10, MEMORY[0x1E69E62F8]);
  sub_1A3C2A960(&qword_1EB126E30, &qword_1EB126E40, v10);
  sub_1A524E224();
  (*(v23 + 104))(v5, *MEMORY[0x1E69E8090], v24);
  v13 = sub_1A524D4B4();
  v14 = sub_1A524D474();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  aBlock[4] = sub_1A3CB40AC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_101_0;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C72154(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v18 = MEMORY[0x1E69E7F60];
  sub_1A3C720F0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], v12);
  sub_1A3C2A960(&qword_1EB12B1B0, &qword_1EB12B1C0, v18);
  v20 = v27;
  v19 = v28;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v20, v16);
  _Block_release(v16);

  (*(v29 + 8))(v20, v19);
  (*(v25 + 8))(v9, v26);
  return v17;
}

uint64_t sub_1A3CAFCC8()
{

  return swift_deallocObject();
}

uint64_t sub_1A3CAFD18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3CAFF98(0, &qword_1EB126458, MEMORY[0x1E69E6EC8]);
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      result = sub_1A524EC84();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1A3CAFF98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_1A3C6D46C(255, &qword_1EB126FE0, MEMORY[0x1E69E5E28]);
    v7 = a3(a1, MEMORY[0x1E69E5FE0], v6, MEMORY[0x1E69E5FE8]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}