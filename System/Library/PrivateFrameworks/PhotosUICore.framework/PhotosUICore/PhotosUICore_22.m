id sub_1A3EF698C()
{
  v1 = sub_1A524BEE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater;
  result = *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater);
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if ([result hasAlreadyUpdatedSelector_])
  {
    sub_1A3C52C70(0, &qword_1EB12B180);
    v12 = sub_1A524D474();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1A3EF740C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_171;
    v14 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C29AEC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    sub_1A3C38394();
    sub_1A3C29AEC(&qword_1EB12B1B0, sub_1A3C38394);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v9, v4, v14);
    _Block_release(v14);

    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v9, v5);
  }

  result = *(v0 + v10);
  if (!result)
  {
    goto LABEL_9;
  }

  return [result setNeedsUpdateOf_];
}

void sub_1A3EF6D04()
{
  v1 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge;
  v2 = v0[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge];
  v0[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge] = 1;
  if ((v2 & 1) == 0)
  {
    v3 = v0;
    v4 = sub_1A46E0BEC();
    v5 = [v4 parentViewController];

    if (!v5 || (sub_1A3C52C70(0, &qword_1EB126B10), v6 = v5, v7 = v3, v8 = sub_1A524DBF4(), v7, v6, v6, (v8 & 1) != 0))
    {
      v9 = sub_1A46E0BEC();
      v10 = [v9 viewProvider];

      v12 = [v10 gridView];
      if ((v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded] & 1) != 0 || (v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAppearingFirstFrame] & 1) != 0 && sub_1A46DF490() > 0.0 || v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_hasAppearedOnce] != 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v3[v1];
      }

      [v12 setCanBlockMainThreadIfNeeded_];
    }
  }
}

unint64_t sub_1A3EF6EC0()
{
  result = qword_1EB129C90;
  if (!qword_1EB129C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129C90);
  }

  return result;
}

id sub_1A3EF6FE4(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  [a1 setSecondaryToolbarVisibility_];
  [a1 setIsExpanded_];

  return [a1 setIsExpandedAnimating_];
}

void sub_1A3EF7058(char a1)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a1)
    {
      v6 = sub_1A46E0BEC();
      v7 = [v6 viewProvider];

      v8 = [v7 gridView];
      v9 = [v8 scrollViewController];

      [v9 scrollToEdge:3 animated:0];
    }

    if (v3)
    {
      v10 = swift_allocObject();
      *(v10 + 16) = v3;
      aBlock[4] = sub_1A3EF71F8;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_129_0;
      _Block_copy(aBlock);
      v11 = v3;

      px_perform_on_main_runloop();
    }
  }
}

void sub_1A3EF71F8()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v13 = sub_1A3EF7388;
  v14 = v3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_1A3C2E0D0;
  v12 = &block_descriptor_135_1;
  v4 = _Block_copy(&v9);
  v5 = v1;

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = sub_1A3EF739C;
  v14 = v6;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_1A3E01E70;
  v12 = &block_descriptor_141;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [v2 animateWithDuration:0 delay:v4 options:v7 animations:0.25 completion:0.0];
  _Block_release(v7);
  _Block_release(v4);
}

unint64_t sub_1A3EF73B8()
{
  result = qword_1EB129C88;
  if (!qword_1EB129C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129C88);
  }

  return result;
}

void sub_1A3EF740C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater);
    if (v2)
    {
      [v2 setNeedsUpdateOf_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1A3EF7480()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A3EF481C();
  }
}

void sub_1A3EF7500(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a2);
  }
}

uint64_t sub_1A3EF756C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for PXCPLUIStatusChanged(0);
    sub_1A3C29AEC(&unk_1EB12E710, type metadata accessor for PXCPLUIStatusChanged);
    sub_1A524EE54();
  }

  return result;
}

id (*sub_1A3EF7684(void *a1))(void *a1)
{
  *a1 = *(v1 + 16);
  a1[1] = v1;
  return sub_1A3EF76AC;
}

id sub_1A3EF76AC(void *a1)
{
  v1 = a1[1];
  v2 = v1[2];
  v1[2] = *a1;
  result = (*(*v1 + 144))();
  if (result != v2)
  {
    v4 = v1[4];

    return [v4 signalChange_];
  }

  return result;
}

uint64_t sub_1A3EF772C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3EF77C0()
{
  swift_getKeyPath();
  (*(*v0 + 208))();

  return v0[2];
}

id sub_1A3EF781C(id a1)
{
  if (v1[2] == a1)
  {
    result = (*(*v1 + 144))();
    if (result != a1)
    {
      v4 = v1[4];

      return [v4 signalChange_];
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 216))(v6);
  }

  return result;
}

void (*sub_1A3EF7950(uint64_t *a1))(void *a1)
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
  (*(*v1 + 208))();

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryFilterViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3EF869C(&qword_1EB1298F0, type metadata accessor for SharedLibraryFilterViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3EF7684(v4);
  return sub_1A3EF7A8C;
}

void sub_1A3EF7A8C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t SharedLibraryFilterViewModel.__allocating_init(sharedLibraryStatusProvider:)(void *a1)
{
  v3 = (*(v1 + 168))([objc_allocWithZone(PXLibraryFilterState) initWithSharedLibraryStatusProvider_]);

  return v3;
}

void SharedLibraryFilterViewModel.init(libraryFilterState:)(void *a1)
{
  v2 = v1;
  v2[2] = 0;
  v4 = [objc_allocWithZone(off_1E77217D8) init];
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = v4;
  sub_1A5241604();
  v2[3] = a1;
  v5 = *(*v2 + 176);
  a1;
  v5();
  swift_allocObject();
  swift_weakInit();

  sub_1A524D1A4();
}

void sub_1A3EF7CD4()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  swift_weakInit();
  v4[4] = sub_1A3EF8210;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1A3DC72D4;
  v4[3] = &block_descriptor_44;
  v3 = _Block_copy(v4);

  [v1 performChanges_];
  _Block_release(v3);
}

uint64_t SharedLibraryFilterViewModel.deinit()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryFilterViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SharedLibraryFilterViewModel.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryFilterViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1A3EF8034@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 32);
  *a1 = v2;
  return v2;
}

void sub_1A3EF8044()
{
  type metadata accessor for SharedLibraryFilterViewModel();
  sub_1A3EF869C(&qword_1EB1298F8, type metadata accessor for SharedLibraryFilterViewModel);

  sub_1A5245C54();
}

id sub_1A3EF80D0()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  *(v2 + 16) = *(v1 + 24);
  result = (*(*v2 + 144))();
  if (result != v3)
  {
    return [*(v2 + 32) signalChange_];
  }

  return result;
}

uint64_t type metadata accessor for SharedLibraryFilterViewModel()
{
  result = qword_1EB17E6F0;
  if (!qword_1EB17E6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3EF819C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 176))(result);
  }

  return result;
}

id *sub_1A3EF8210()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 19))([result[3] viewMode]);
  }

  return result;
}

unint64_t sub_1A3EF8298()
{
  result = qword_1EB12E738;
  if (!qword_1EB12E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E738);
  }

  return result;
}

unint64_t sub_1A3EF82F0()
{
  result = qword_1EB12E740;
  if (!qword_1EB12E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E740);
  }

  return result;
}

unint64_t sub_1A3EF8348()
{
  result = qword_1EB12E748;
  if (!qword_1EB12E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E748);
  }

  return result;
}

unint64_t sub_1A3EF83A0()
{
  result = qword_1EB12E750;
  if (!qword_1EB12E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E750);
  }

  return result;
}

unint64_t sub_1A3EF83F8()
{
  result = qword_1EB12E758;
  if (!qword_1EB12E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E758);
  }

  return result;
}

unint64_t sub_1A3EF84E0()
{
  result = qword_1EB12E760;
  if (!qword_1EB12E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E760);
  }

  return result;
}

uint64_t sub_1A3EF853C()
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

uint64_t sub_1A3EF869C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LemonadeCurationKind.storyOverallDurationKind.getter()
{
  v1 = *v0;
  v2 = 3;
  v3 = 2;
  if ((v1 - 4) < 2)
  {
    v3 = 0;
  }

  v4 = 4;
  if (v1 != 1)
  {
    v4 = 5;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t LemonadeCurationKind.assetCollectionCurationLength.getter()
{
  v1 = *v0;
  v2 = 2;
  v3 = 1;
  v4 = 5;
  if (v1 != 4)
  {
    v4 = 0;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 3;
  if (v1 != 1)
  {
    v5 = 4;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t PFStoryOverallDurationKind.lemonadeCurationKind.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 6)
  {
    v8 = v3;
    v9 = v2;
    v10 = v4;
    v11 = v5;
    sub_1A524E404();

    strcpy(v7, "unknown value ");
    v7[15] = -18;
    type metadata accessor for PFStoryOverallDurationKind(0);
    v6 = sub_1A524C714();
    MEMORY[0x1A5907B60](v6);

    result = sub_1A524E6E4();
    __break(1u);
  }

  else
  {
    *a2 = 0x20100030606uLL >> (8 * result);
  }

  return result;
}

unint64_t PXDisplayAssetCollectionCurationLength.lemonadeCurationKind.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 6)
  {
    type metadata accessor for PXDisplayAssetCollectionCurationLength(0);
    result = sub_1A524EB44();
    __break(1u);
  }

  else
  {
    *a2 = 0x40201000306uLL >> (8 * result);
  }

  return result;
}

uint64_t LemonadeCurationKind.memoryCurationLength.getter()
{
  v1 = 1;
  v2 = 2;
  if (*v0 != 1)
  {
    v2 = 4;
  }

  if (*v0)
  {
    v1 = v2;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t PHMemoryCurationLength.lemonadeCurationKind.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result < 5 && ((0x17u >> result) & 1) != 0)
  {
    *a2 = 0x200010003uLL >> (8 * result);
  }

  else
  {
    v8 = v3;
    v9 = v2;
    v10 = v4;
    v11 = v5;
    sub_1A524E404();

    strcpy(v7, "unknown value ");
    v7[15] = -18;
    type metadata accessor for PHMemoryCurationLength(0);
    v6 = sub_1A524C714();
    MEMORY[0x1A5907B60](v6);

    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t Array<A>.memoryCurationLengths.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  result = 0;
  v5 = a1 + 32;
  while (2)
  {
    for (i = v3; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return result;
      }

      v3 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_23;
      }

      v7 = *(v5 + i);
      if (v7 <= 1)
      {
        break;
      }

      if (v7 == 2)
      {
        if ((result & 4) == 0)
        {
          v8 = 4;
          goto LABEL_18;
        }
      }

      else if (v7 != 3)
      {
        return 0;
      }

LABEL_5:
      if (v3 == v1)
      {
        return result;
      }
    }

    if (!*(v5 + i))
    {
      if ((result & 1) == 0)
      {
        v8 = 1;
        goto LABEL_18;
      }

      goto LABEL_5;
    }

    if ((result & 2) != 0)
    {
      goto LABEL_5;
    }

    v8 = 2;
LABEL_18:
    result |= v8;
    if (v3 != v1)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_1A3EF8B6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PHMemoryCurationLength(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3EF8C18(void *a1)
{
  v2 = v1;
  v4 = sub_1A5246914();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524C344();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v1 traitCollection];
  sub_1A524D614();

  if (sub_1A524C324())
  {
    v14 = a1;
    sub_1A5246924();
    sub_1A3EF8E34();
    sub_1A524C334();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v15 = [v2 navigationController];
    if (v15)
    {
      v16 = v15;
      [v15 pushViewController:a1 animated:1];
    }

    else
    {
      [v2 presentViewController:a1 animated:1 completion:0];
    }
  }

  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_1A3EF8E34()
{
  result = qword_1EB12E7A0;
  if (!qword_1EB12E7A0)
  {
    sub_1A5246914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E7A0);
  }

  return result;
}

void sub_1A3EF8E8C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1A3EF8C18(v4);
}

uint64_t type metadata accessor for TimelineEngine3DGeometry()
{
  result = qword_1EB1682E0;
  if (!qword_1EB1682E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3EF8F40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineEngineCell();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3EF8FA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineEngineCell();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1A3EF9008()
{
  v1 = *v0;
  (*(*v1 + 864))();
  type metadata accessor for TimelineEngine3DGeometry();
  (*(*v1 + 672))();
  v2 = *(*v1 + 816);
  v2();
  v3 = *(*v1 + 624);
  v3();
  v2();
  v3();
}

void sub_1A3EF91A4()
{
  v1 = (v0 + *(type metadata accessor for TimelineEngine3DGeometry() + 20));
  if ((*(v1 + *(type metadata accessor for TimelineEngineCell() + 28)) & 1) == 0 && __OFADD__(*v1, 3))
  {
    __break(1u);
  }

  else
  {
    v2 = *v0;
    (*(**v0 + 1008))();
    v3 = (*v2 + 960);
    v4 = *v3;
    (*v3)();
    sub_1A3EF9008();
    v4();
    sub_1A3EF9008();
    v4();
  }
}

uint64_t sub_1A3EF9390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a1;
  v9 = type metadata accessor for TimelineEngine3DGeometry();
  result = sub_1A3EF93FC(a2, a3 + v9[5]);
  *(a3 + v9[6]) = a4;
  *(a3 + v9[7]) = a5;
  return result;
}

uint64_t sub_1A3EF93FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineEngineCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3EF9468(uint64_t a1)
{

  *v1 = a1;
  return result;
}

double sub_1A3EF956C()
{
  v1 = (*(**v0 + 912))();
  sub_1A3EF9008();
  return v1 / v2;
}

double sub_1A3EF95D8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  v3 = *v1;
  v4 = (*(*v3 + 1056))();
  v5 = (fabs(v2 + -0.5) + v4 + -0.5) / v4 * 20.0;
  v6 = (*(*v3 + 912))();
  sub_1A3EF9008();
  return v5 * (v6 / v7);
}

double sub_1A3EF96A4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  v3 = (*(**v1 + 1104))();
  return 1.0 - (fabs(v2 + -0.5) + v3 + -0.5) / v3;
}

uint64_t sub_1A3EF9768()
{
  result = type metadata accessor for TimelineEngineSpec();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TimelineEngineCell();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A3EF97FC()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  if (*(v0 + 17) != 1)
  {
    v8 = *v0;
    v9 = v6;

    sub_1A524D254();
    v10 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3EF9960(v8, v9, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return result;
}

uint64_t sub_1A3EF9960(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1A3EF996C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lemonadeSheetSizeOverride.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

id LemonadeCollectionCustomizationPhotosPickerModifier.body(content:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a1;
  v140 = a3;
  v147 = sub_1A523FBA4();
  v154 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v138 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1A523FBD4();
  v153 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v145 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EFBFFC(0, &qword_1EB120E58, MEMORY[0x1E6979018], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v139 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v152 = &v107 - v9;
  v10 = *(a2 + 16);
  v158 = sub_1A524B974();
  v151 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v122 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v143 = &v107 - v13;
  swift_getWitnessTable();
  v14 = sub_1A52499C4();
  WitnessTable = swift_getWitnessTable();
  v159 = v14;
  v160 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v126 = *(OpaqueTypeMetadata2 - 1);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v144 = &v107 - v17;
  v112 = v14;
  v159 = v14;
  v160 = WitnessTable;
  v113 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v159 = OpaqueTypeMetadata2;
  v160 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeMetadata2();
  v123 = *(v19 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v119 = &v107 - v20;
  v130 = OpaqueTypeMetadata2;
  v159 = OpaqueTypeMetadata2;
  v160 = OpaqueTypeConformance2;
  v114 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  v159 = v19;
  v160 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v120 = *(v22 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v118 = &v107 - v23;
  v124 = v19;
  v159 = v19;
  v160 = v21;
  v116 = v21;
  v24 = swift_getOpaqueTypeConformance2();
  v159 = v22;
  v160 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v136 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v133 = &v107 - v26;
  v121 = v22;
  v159 = v22;
  v160 = v24;
  v115 = v24;
  v27 = swift_getOpaqueTypeConformance2();
  v159 = v25;
  v160 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v131 = *(v28 - 1);
  MEMORY[0x1EEE9AC00](v28);
  v128 = &v107 - v29;
  v137 = v25;
  v159 = v25;
  v160 = v27;
  v125 = v27;
  v30 = swift_getOpaqueTypeConformance2();
  v135 = v28;
  v159 = v28;
  v160 = v30;
  v127 = v30;
  v134 = swift_getOpaqueTypeMetadata2();
  v132 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v129 = &v107 - v31;
  v32 = sub_1A5240E64();
  v149 = *(v32 - 8);
  v150 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v110 = &v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v111 = (&v107 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v148 = &v107 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v107 - v43;
  v45 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = sub_1A524DF24();
  v48 = *(v47 - 8);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v51 = &v107 - v50;
  v157 = a2;
  v52 = v10;
  MEMORY[0x1A5906C60](v158, v49);
  v53 = *(v45 + 56);
  v156 = v45;
  v53(v10, v45);
  v54 = *(v35 + 8);
  v142 = v35 + 8;
  v54(v44, v52);
  v55 = (*(*(AssociatedTypeWitness - 8) + 48))(v51, 1, AssociatedTypeWitness);
  v155 = v54;
  if (v55 == 1)
  {
    (*(v48 + 8))(v51, v47);
LABEL_6:
    v58 = v148;
    v59 = v156;
    v61 = [objc_opt_self() systemPhotoLibraryURL];
    sub_1A5240DE4();

    v62 = objc_allocWithZone(MEMORY[0x1E69789A8]);
    v63 = sub_1A5240D44();
    v60 = [v62 initWithPhotoLibraryURL_];

    v149[1](v34, v150);
    goto LABEL_7;
  }

  sub_1A3C52C70(0, &qword_1EB1265D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v56 = v159;
  result = [v159 photoLibrary];
  v58 = v148;
  v59 = v156;
  if (!result)
  {
    __break(1u);
    return result;
  }

  v60 = result;

LABEL_7:
  v64 = v158;
  v149 = v60;
  MEMORY[0x1A5906C60](v64);
  v65 = *(v59 + 448);
  v66 = v65(v52, v59);
  v155(v58, v52);
  v67 = 20;
  if (v66)
  {
    v67 = 16;
  }

  v141 = v67;
  if (PHSensitiveContentAnalysisAvailable())
  {
    v150 = v59 + 448;
    MEMORY[0x1A5906C60](v64);
    sub_1A3EFBA3C(0, &qword_1EB12BF00, type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel);
    if (swift_dynamicCast() || (MEMORY[0x1A5906C60](v64), sub_1A3EFBA3C(0, &qword_1EB12E7A8, type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel), swift_dynamicCast()))
    {

      MEMORY[0x1A5906C60](v64);
      v68 = v65(v52, v59);
      v155(v58, v52);
      v69 = 20;
      if (v68)
      {
        v69 = 0;
      }

      v141 = v69;
    }
  }

  v70 = v143;
  v71 = sub_1A524B924();
  MEMORY[0x1EEE9AC00](v71);
  swift_getKeyPath();
  sub_1A524B914();

  v72 = v151 + 8;
  v73 = *(v151 + 8);
  v73(v70, v64);
  v151 = v72;
  v109 = v73;
  LODWORD(v108) = v163;
  v74 = v122;
  v75 = sub_1A524B924();
  MEMORY[0x1EEE9AC00](v75);
  swift_getKeyPath();
  sub_1A524B914();

  v73(v74, v158);
  v150 = v52;
  v110 = sub_1A524C1F4();
  v111 = *(v110 - 1);
  v76 = v152;
  v111[7](v152, 1, 1, v110);
  swift_checkMetadataState();
  v77 = v145;
  sub_1A523FBC4();
  v78 = v138;
  sub_1A523FB94();
  sub_1A524A794();

  v79 = *(v154 + 8);
  v154 += 8;
  v117 = v79;
  v79(v78, v147);
  v80 = *(v153 + 8);
  v153 += 8;
  v113 = v80;
  v80(v77, v146);
  sub_1A3EFB9B0(v76);
  v81 = v143;
  v82 = sub_1A524B924();
  MEMORY[0x1EEE9AC00](v82);
  swift_getKeyPath();
  sub_1A524B914();

  v83 = v109;
  v109(v81, v158);
  v112 = v161;
  v108 = v162;
  LODWORD(v143) = v163;
  v84 = sub_1A524B924();
  MEMORY[0x1EEE9AC00](v84);
  swift_getKeyPath();
  sub_1A524B914();

  v83(v74, v158);
  sub_1A3EFB1A8(v157, v152);
  sub_1A523FBC4();
  sub_1A523FB94();
  v85 = v130;
  v86 = v149;
  v87 = v119;
  v88 = v144;
  sub_1A524A794();

  v89 = v150;

  v90 = v157;

  v117(v78, v147);
  v113(v145, v146);
  sub_1A3EFB9B0(v152);
  (*(v126 + 8))(v88, v85);
  v91 = v118;
  v92 = v124;
  sub_1A524A804();
  v93 = v87;
  v94 = v156;
  (*(v123 + 8))(v93, v92);
  v95 = v148;
  MEMORY[0x1A5906C60](v158);
  (*(v94 + 568))(v89, v94);
  v155(v95, v89);
  v96 = v133;
  v97 = v121;
  sub_1A524A7B4();
  (*(v120 + 8))(v91, v97);
  v98 = v139;
  sub_1A3EFB1A8(v90, v139);
  LODWORD(v88) = (v111[6])(v98, 1, v110);
  sub_1A3EFB9B0(v98);
  if (v88 == 1)
  {
    v99 = v158;
    MEMORY[0x1A5906C60](v158);
    v100 = (*(v94 + 472))(v89, v94);
    v155(v95, v89);
    if (v100)
    {
      MEMORY[0x1A5906C60](v99);
      (*(v94 + 80))(v89, v94);
      v155(v95, v89);
    }
  }

  v101 = v128;
  v102 = v137;
  sub_1A524A7E4();

  (*(v136 + 8))(v96, v102);
  sub_1A3EF97FC();
  v103 = v129;
  v104 = v135;
  v105 = v127;
  sub_1A524A814();
  (*(v131 + 8))(v101, v104);
  sub_1A3EF97FC();
  v159 = v104;
  v160 = v105;
  swift_getOpaqueTypeConformance2();
  v106 = v134;
  sub_1A524A7D4();

  return (*(v132 + 8))(v103, v106);
}

uint64_t sub_1A3EFAF40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 448))(*(a1 + a2 - 16));
  *a3 = result & 1;
  return result;
}

uint64_t sub_1A3EFAFD0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 520))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_1A3EFB074@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 472))(*(a1 + a2 - 16));
  *a3 = result & 1;
  return result;
}

uint64_t sub_1A3EFB104@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 544))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_1A3EFB1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_1A523FBB4();
  v43 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_1A524B974();
  v42 = v2;
  v39 = v15;
  MEMORY[0x1A5906C60]();
  v41 = a1;
  v16 = *(a1 + 24);
  v17 = *(v16 + 520);
  v38 = v16 + 520;
  v18 = v17(v7, v16);
  v19 = *(v8 + 8);
  v19(v14, v7);
  v20 = *(v18 + 16);

  if (v20)
  {
    MEMORY[0x1A5906C60](v39);
    v21 = v17(v7, v16);
    v19(v11, v7);
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = *(v43 + 16);
      v24 = *(v43 + 80);
      v39 = v21;
      v25 = v21 + ((v24 + 32) & ~v24);
      v41 = *(v43 + 72);
      v42 = v23;
      v43 += 16;
      v26 = (v43 - 8);
      v27 = MEMORY[0x1E69E7CC0];
      v23(v6, v25, v4);
      while (1)
      {
        v29 = sub_1A523FB64();
        v31 = v30;
        (*v26)(v6, v4);
        if (v31)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_1A3D3D914(0, *(v27 + 2) + 1, 1, v27);
          }

          v33 = *(v27 + 2);
          v32 = *(v27 + 3);
          if (v33 >= v32 >> 1)
          {
            v27 = sub_1A3D3D914((v32 > 1), v33 + 1, 1, v27);
          }

          *(v27 + 2) = v33 + 1;
          v28 = &v27[16 * v33];
          *(v28 + 4) = v29;
          *(v28 + 5) = v31;
        }

        v25 += v41;
        if (!--v22)
        {
          break;
        }

        v42(v6, v25, v4);
      }
    }

    v35 = v40;
    sub_1A524C1E4();

    v34 = 0;
  }

  else
  {
    v34 = 1;
    v35 = v40;
  }

  v36 = sub_1A524C1F4();
  return (*(*(v36 - 8) + 56))(v35, v34, 1, v36);
}

uint64_t sub_1A3EFB57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 17) = HIBYTE(a3) & 1;
  v7 = *(type metadata accessor for LemonadeCollectionCustomizationPhotosPickerModifier() + 36);
  v8 = sub_1A524B974();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t sub_1A3EFB620@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a7;
  v42 = a6;
  v35 = a3;
  v36 = a2;
  v38 = a1;
  v37 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - v22;
  v40 = sub_1A5249754();
  v24 = *(v40 - 8);
  v25 = MEMORY[0x1EEE9AC00](v40);
  v27 = &v35 - v26;
  if (v38)
  {
    v36(v39, v25);
    v28 = *(v17 + 16);
    v28(v23, v20, a5);
    v39 = a8;
    v29 = *(v17 + 8);
    v29(v20, a5);
    v28(v20, v23, a5);
    sub_1A3DF4798(v20, a5);
    v29(v20, a5);
    v29(v23, a5);
    a8 = v39;
  }

  else
  {
    v30 = v37;
    v31 = *(v37 + 16);
    v31(v15, v39, a4, v25);
    (v31)(v12, v15, a4);
    sub_1A3DF4890(v12, a5, a4);
    v32 = *(v30 + 8);
    v32(v12, a4);
    v32(v15, a4);
  }

  v43 = v41;
  v44 = v42;
  v33 = v40;
  swift_getWitnessTable();
  (*(v24 + 16))(a8, v27, v33);
  return (*(v24 + 8))(v27, v33);
}

uint64_t sub_1A3EFB9B0(uint64_t a1)
{
  sub_1A3EFBFFC(0, &qword_1EB120E58, MEMORY[0x1E6979018], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3EFBA3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3C52C70(255, &qword_1EB126AC0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A3EFBB08()
{
  sub_1A3EFBFFC(319, &unk_1EB124680, sub_1A3E316EC, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A524B974();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A3EFBBC0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = v6 | 7;
  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = *(*(*(a3 + 16) - 8) + 64) - ((-17 - v6) | v6) - ((-19 - v8) | v8) - 2;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = ((((a1 + v8 + 18) & ~v8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v16 + v6 + 8) & ~v6);
      }

      v17 = *v16;
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void sub_1A3EFBD78(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) - ((-17 - v9) | v9) - ((-19 - (v9 | 7)) | v9 | 7) - 2;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) - ((-17 - v9) | v9) - ((-19 - (v9 | 7)) | v9 | 7) != 2)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  v19 = (((&a1[(v9 | 7) + 18] & ~(v9 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

void sub_1A3EFBFFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3EFC060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v50 = a7;
  LODWORD(v44) = a4;
  LODWORD(v43) = a3;
  sub_1A3EFC5C8();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v48 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(a6 - 8);
  v15 = v55;
  v54 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[0] = v18;
  v19 = type metadata accessor for LemonadeShelf();
  v47 = v19[16];
  sub_1A3E792C4(0, &qword_1EB129A90, &qword_1EB129A98);
  v46 = v20;
  sub_1A5247C74();
  v21 = v19[17];
  *(a8 + v21) = swift_getKeyPath();
  sub_1A3EFDB80(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v22 = a8 + v19[18];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = a8 + v19[19];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = v15 + 16;
  v25 = *(v15 + 16);
  v25(a8, a1, a6);
  *(a8 + v19[9]) = a2;
  *(a8 + v19[10]) = v43;
  *(a8 + v19[11]) = v44;
  *(a8 + v19[12]) = a5;
  v53 = a8;
  v51 = a1;
  v25(v18, a1, a6);
  v49 = v24;
  v52 = v25;
  v45 = a2;
  v26 = *(a2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
  v27 = v50;
  v43 = *(v50 + 8);
  v28 = v43;

  v29 = v42[0];
  sub_1A439777C(v42[0], v26, a6, v28);
  v25(v29, a1, a6);
  v30 = v55;
  v31 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = a6;
  *(v32 + 24) = v27;
  v33 = v27;
  v34 = *(v30 + 32);
  v42[1] = v30 + 32;
  v34(v32 + v31, v29, a6);
  v44 = v34;
  sub_1A52434D4();
  sub_1A5247C74();
  v52(v29, v51, a6);
  v35 = swift_allocObject();
  *(v35 + 16) = a6;
  *(v35 + 24) = v33;
  v34(v35 + v31, v29, a6);
  v42[2] = v19[15];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242854();
  v36 = v53;
  sub_1A5247C74();
  v37 = v51;
  v52(v29, v51, a6);
  v38 = swift_allocObject();
  v39 = v50;
  *(v38 + 16) = a6;
  *(v38 + 24) = v39;
  v44(v38 + v31, v29, a6);
  v40 = v48;
  sub_1A5247C74();

  (*(v55 + 8))(v37, a6);
  return sub_1A3EFCAF4(v40, v36 + v47);
}

void sub_1A3EFC5C8()
{
  if (!qword_1EB124950)
  {
    sub_1A3E792C4(255, &qword_1EB129A90, &qword_1EB129A98);
    v0 = sub_1A5247CB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124950);
    }
  }
}

uint64_t sub_1A3EFC650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3EFDB80(0, &unk_1EB129000, MEMORY[0x1E69C28B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1A3C41990(a2, a3);
  LemonadeShelfIdentifier.rawValue.getter();
  (*(a3 + 272))(a2, a3);
  return sub_1A52434C4();
}

double sub_1A3EFC768@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1A3EFC778()
{
  sub_1A3EFCB58();
  sub_1A5249244();
  return v1;
}

uint64_t sub_1A3EFC7B4@<X0>(_BYTE *a1@<X8>)
{
  sub_1A3EFCB58();
  result = sub_1A5249244();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3EFC88C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242854();
  v6 = sub_1A5242834();
  if (((*(v5 + 248))(v3, v5) & 1) == 0)
  {
    (*(v4 + 88))(v3, v4);
  }

  result = sub_1A52427F4();
  *a1 = v6;
  return result;
}

uint64_t objectdestroyTm_11()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1A3EFCAF4(uint64_t a1, uint64_t a2)
{
  sub_1A3EFC5C8();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A3EFCB58()
{
  result = qword_1EB17BE58[0];
  if (!qword_1EB17BE58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17BE58);
  }

  return result;
}

uint64_t sub_1A3EFCBAC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v84 = a2;
  v78 = sub_1A52434D4();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v89 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *(*(a1 + 16) - 8);
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 24);
  v86 = v9;
  v85 = v8;
  v10 = type metadata accessor for LemonadeShelfContents();
  v81 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v67 - v11;
  sub_1A3F1C93C(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
  v83 = sub_1A5248804();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v79 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v67 - v15;
  v16 = sub_1A5246E54();
  v74 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v76 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v67 - v22;
  sub_1A3EFDB80(0, &qword_1EB128C00, MEMORY[0x1E69E93D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v67 - v25;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1A5905890](a1);
  v27 = sub_1A5246E94();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_1A3F1B5F4(v26, &qword_1EB128C00, MEMORY[0x1E69E93D8], MEMORY[0x1E69E6720], sub_1A3EFDB80);
  }

  else
  {
    v71 = v27;
    v72 = v16;
    v29 = *(v18 + 16);
    v29(v23, v3, a1);
    v29(v75, v3, a1);
    sub_1A5246E44();
    v30 = sub_1A5246E84();
    v70 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v31 = swift_slowAlloc();
      v69 = v31;
      v68 = swift_slowAlloc();
      v97 = v68;
      *v31 = 136446466;
      sub_1A3C41990(v86, v85);
      v67 = *(v18 + 8);
      v67(v23, a1);
      sub_1A3C66768();
      sub_1A524EA44();
      sub_1A3C2EF94();
    }

    v32 = *(v18 + 8);
    v32(v23, a1);

    (*(v74 + 8))(v76, v72);
    v32(v75, a1);
    (*(v28 + 8))(v26, v71);
  }

  v33 = v86;
  (*(v88 + 16))(v87, v3, v86);
  v34 = *(a1 + 40);
  v75 = *(v3 + *(a1 + 36));
  LODWORD(v76) = *(v3 + v34);
  sub_1A3EFDB80(0, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);

  sub_1A5247C84();
  type metadata accessor for LemonadeModelFactory();
  v85 = sub_1A43979D0();
  LODWORD(v74) = sub_1A3EFDBE4(a1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242854();
  sub_1A5247CB4();
  sub_1A5247C84();
  WitnessTable = v97;
  sub_1A3EFC5C8();
  sub_1A5247C84();
  v35 = *(a1 + 48);
  LODWORD(v71) = *(v3 + *(a1 + 44));
  LODWORD(v72) = *(v3 + v35);
  v96 = 0;
  memset(v95, 0, sizeof(v95));
  v36 = MEMORY[0x1E69C2550];
  sub_1A3F1B4DC(v95, &v97, &qword_1EB129088, &qword_1EB129090);
  sub_1A3E792C4(0, &qword_1EB129088, &qword_1EB129090);
  sub_1A524B694();
  sub_1A3C2C598(v95, &qword_1EB129088, &qword_1EB129090, v36, sub_1A3E792C4);
  v37 = v10[19];
  *&v12[v37] = swift_getKeyPath();
  v38 = MEMORY[0x1E697DCB8];
  sub_1A3EFDB80(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v39 = &v12[v10[20]];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  v40 = &v12[v10[21]];
  *v40 = swift_getKeyPath();
  v40[8] = 0;
  v41 = &v12[v10[22]];
  *v41 = swift_getKeyPath();
  v41[8] = 0;
  v42 = &v12[v10[23]];
  *v42 = swift_getKeyPath();
  v42[8] = 0;
  v43 = &v12[v10[24]];
  *v43 = swift_getKeyPath();
  *(v43 + 1) = 0;
  *(v43 + 2) = 0;
  *(v43 + 3) = 0;
  v43[32] = 0;
  v44 = v10[25];
  *&v12[v44] = swift_getKeyPath();
  sub_1A3EFDB80(0, &qword_1EB128A50, MEMORY[0x1E697E730], v38);
  swift_storeEnumTagMultiPayload();
  v45 = v10[26];
  *&v12[v45] = swift_getKeyPath();
  sub_1A3EFDB80(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], v38);
  swift_storeEnumTagMultiPayload();
  v46 = &v12[v10[27]];
  *v46 = swift_getKeyPath();
  v46[8] = 0;
  v47 = &v12[v10[28]];
  *v47 = swift_getKeyPath();
  *(v47 + 1) = 0;
  *(v47 + 2) = 0;
  *(v47 + 3) = 0;
  v47[32] = 0;
  v48 = &v12[v10[29]];
  *v48 = swift_getKeyPath();
  v48[8] = 0;
  (*(v88 + 32))(v12, v87, v33);
  *&v12[v10[9]] = v75;
  v12[v10[10]] = v76;
  (*(v77 + 32))(&v12[v10[16]], v89, v78);
  *&v12[v10[17]] = v85;
  v12[v10[11]] = v74 & 1;
  *&v12[v10[12]] = WitnessTable;
  v49 = &v12[v10[13]];
  v50 = v93;
  *v49 = v92;
  *(v49 + 1) = v50;
  *(v49 + 4) = v94;
  v12[v10[14]] = v71;
  v12[v10[15]] = v72;
  sub_1A5247C84();
  v51 = v98;
  if (v98)
  {
    v52 = v99;
    v53 = __swift_project_boxed_opaque_existential_1(&v97, v98);
    v54 = *(v51 - 8);
    v55 = MEMORY[0x1EEE9AC00](v53);
    v57 = &v67 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v54 + 16))(v57, v55);
    sub_1A3C2C598(&v97, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel, sub_1A3E792C4);
    (*(v52 + 24))(v51, v52);
    (*(v54 + 8))(v57, v51);
  }

  else
  {
    sub_1A3C2C598(&v97, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel, sub_1A3E792C4);
  }

  v58 = swift_getWitnessTable();
  v59 = v79;
  sub_1A524B114();
  (*(v81 + 8))(v12, v10);
  v60 = sub_1A3F17CC4(&qword_1EB127700, &qword_1EB1276F0, MEMORY[0x1E6980B20]);
  v90 = v58;
  v91 = v60;
  v61 = v83;
  swift_getWitnessTable();
  v62 = v82;
  v63 = *(v82 + 16);
  v64 = v80;
  v63(v80, v59, v61);
  v65 = *(v62 + 8);
  v65(v59, v61);
  v63(v84, v64, v61);
  return (v65)(v64, v61);
}

void sub_1A3EFDB80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3EFDBE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = *(v9 + 8);
  if (((*(v11 + 256))(v10, v11, v6) & 1) == 0)
  {
    v13 = v1 + *(a1 + 76);
    v14 = *v13;
    if (*(v13 + 8) == 1)
    {
      if (v14)
      {
        goto LABEL_10;
      }
    }

    else
    {

      sub_1A524D254();
      v17 = v10;
      v15 = sub_1A524A014();
      v10 = v17;
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v14, 0);
      (*(v5 + 8))(v8, v4);
      if (v20)
      {
LABEL_10:
        v12 = 1;
        return v12 & 1;
      }
    }

    v19 = *(v2 + *(a1 + 40));
    v18 = 0;
    sub_1A3E760D0();
    if ((sub_1A524C594() & 1) != 0 && (!shouldUseNewCollectionsLayout()() || ((*(v9 + 88))(v10, v9) & 1) == 0))
    {
      v12 = (*(v11 + 248))(v10, v11);
      return v12 & 1;
    }

    goto LABEL_10;
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_1A3EFDE54(SEL *a1, SEL *a2, SEL *a3)
{
  sub_1A3C52C70(0, &unk_1EB120978);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v7 = [v6 *a1];
  v8 = [v6 *a2];
  if (v7 <= 1)
  {
    if (!v7)
    {
      sub_1A524BCE4();
      goto LABEL_11;
    }
  }

  else
  {
    if (v7 == 2)
    {
      sub_1A524BD44();
      goto LABEL_11;
    }

    if (v7 == 3 || v7 == 4)
    {
      MEMORY[0x1A5907080](v8);
      goto LABEL_11;
    }
  }

  sub_1A524BD34();
LABEL_11:
  [v6 *a3];
  v9 = sub_1A524BCD4();

  return v9;
}

uint64_t sub_1A3EFDF90@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.pickerConfiguration.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A3EFDFBC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return EnvironmentValues.pickerConfiguration.setter(v1);
}

uint64_t sub_1A3EFE030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E697E7E0];
  v9 = MEMORY[0x1E697DCB8];
  sub_1A3EFDB80(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  sub_1A3F1C850(v2 + *(a1 + 104), &v16 - v11, &qword_1EB1248A0, v8, v9, sub_1A3EFDB80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A5248714();
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

void sub_1A3EFE2C8(double (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  *a2 = a1();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t sub_1A3EFE2FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v286 = a1;
  v265 = a2;
  v210 = sub_1A5248714();
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v208 = &v204 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v207 = &v204 - v5;
  v283 = sub_1A5242D14();
  v271 = *(v283 - 8);
  MEMORY[0x1EEE9AC00](v283);
  v264 = &v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v228 = &v204 - v8;
  v9 = *(a1 + 16);
  v269 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v268 = &v204 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 24);
  v13 = type metadata accessor for LemonadeShelfContents.bottomPadding();
  v230 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v229 = &v204 - v14;
  v287 = v9;
  v285 = v12;
  type metadata accessor for LemonadeShelfHeader();
  sub_1A5248804();
  sub_1A3F17A98();
  sub_1A5249754();
  sub_1A3F18928(255, &qword_1EB1225A0, MEMORY[0x1E697F960]);
  sub_1A5249754();
  v15 = sub_1A5249754();
  type metadata accessor for LemonadeShelfBody();
  sub_1A3F17B44(255, &qword_1EB123108, sub_1A3F17B1C);
  swift_getTupleTypeMetadata2();
  v16 = sub_1A524BE24();
  WitnessTable = swift_getWitnessTable();
  v314 = MEMORY[0x1E697E5D8];
  v17 = MEMORY[0x1E697E858];
  v18 = swift_getWitnessTable();
  v19 = sub_1A3F1D360(&qword_1EB1292B0, sub_1A3F17A98);
  v311 = v18;
  v312 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_1A3F17BF8();
  v309 = v20;
  v310 = v21;
  v307 = swift_getWitnessTable();
  v308 = v18;
  v22 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v217 = v15;
  v303 = v15;
  v304 = v16;
  v216 = v16;
  v214 = v22;
  v305 = v22;
  v306 = v23;
  v213 = v23;
  v24 = sub_1A5243DD4();
  v219 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v266 = &v204 - v25;
  v26 = sub_1A5248804();
  v224 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v267 = &v204 - v27;
  v28 = MEMORY[0x1E6980A08];
  sub_1A3F1C93C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v29 = sub_1A5248804();
  v241 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v233 = &v204 - v30;
  sub_1A3F1C93C(255, &unk_1EB1277B0, MEMORY[0x1E69E6530], v28);
  v31 = sub_1A5248804();
  v237 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v232 = &v204 - v32;
  v33 = MEMORY[0x1E69C24E0];
  sub_1A3EFDB80(255, &qword_1EB1279F0, MEMORY[0x1E69C24E0], MEMORY[0x1E6980A08]);
  v34 = sub_1A5248804();
  v243 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v234 = &v204 - v35;
  v36 = sub_1A5248804();
  v254 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v252 = &v204 - v37;
  v220 = v24;
  v38 = swift_getWitnessTable();
  v231 = v13;
  v39 = swift_getWitnessTable();
  v215 = v38;
  v301 = v38;
  v302 = v39;
  v225 = v26;
  v40 = swift_getWitnessTable();
  v41 = sub_1A3F17CC4(&qword_1EB1277D0, &qword_1EB1277C8, v28);
  v218 = v40;
  v299 = v40;
  v300 = v41;
  v244 = v29;
  v42 = swift_getWitnessTable();
  v43 = sub_1A3F1B380(&qword_1EB1277C0, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
  v221 = v42;
  v297 = v42;
  v298 = v43;
  v240 = v31;
  v44 = swift_getWitnessTable();
  v45 = sub_1A3F1B31C(&qword_1EB1279F8, &qword_1EB1279F0, v33);
  v222 = v44;
  v295 = v44;
  v296 = v45;
  v282 = v17;
  v245 = v34;
  v223 = swift_getWitnessTable();
  v293 = v223;
  v294 = MEMORY[0x1E69805D0];
  v46 = swift_getWitnessTable();
  v47 = sub_1A3F1D360(&qword_1EB129148, MEMORY[0x1E69C2218]);
  v48 = v283;
  v303 = v36;
  v304 = v283;
  v305 = v46;
  v306 = v47;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v251 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v270 = &v204 - v50;
  v257 = v36;
  v303 = v36;
  v304 = v48;
  v227 = v46;
  v305 = v46;
  v306 = v47;
  v226 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = sub_1A3F17D14();
  v303 = OpaqueTypeMetadata2;
  v304 = &type metadata for LemonadeHorizontalSizeClass;
  v305 = OpaqueTypeConformance2;
  v306 = v52;
  v53 = swift_getOpaqueTypeMetadata2();
  v262 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v261 = &v204 - v54;
  type metadata accessor for LemonadeShelfContents.ScrollPhaseLoadHandler();
  v55 = sub_1A5248804();
  v253 = OpaqueTypeMetadata2;
  v303 = OpaqueTypeMetadata2;
  v304 = &type metadata for LemonadeHorizontalSizeClass;
  v238 = OpaqueTypeConformance2;
  v305 = OpaqueTypeConformance2;
  v306 = v52;
  v235 = v52;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = swift_getWitnessTable();
  v291 = v56;
  v292 = v57;
  v58 = swift_getWitnessTable();
  v303 = v53;
  v304 = v55;
  v305 = v56;
  v306 = v58;
  v59 = swift_getOpaqueTypeMetadata2();
  v259 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v258 = &v204 - v60;
  type metadata accessor for LemonadeShelfContents.VisibilityTracker();
  v61 = sub_1A5248804();
  v263 = v53;
  v303 = v53;
  v304 = v55;
  v255 = v55;
  v256 = v56;
  v305 = v56;
  v306 = v58;
  v250 = v58;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = swift_getWitnessTable();
  v289 = v62;
  v290 = v63;
  v64 = swift_getWitnessTable();
  v260 = v59;
  v303 = v59;
  v304 = v61;
  v247 = v61;
  v248 = v62;
  v305 = v62;
  v306 = v64;
  v242 = v64;
  v249 = swift_getOpaqueTypeMetadata2();
  v246 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249);
  v236 = &v204 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v239 = &v204 - v67;
  v281 = sub_1A5249234();
  v280 = *(v281 - 8);
  MEMORY[0x1EEE9AC00](v281);
  v278 = &v204 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1A5246E54();
  v276 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v275 = &v204 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v286;
  v72 = *(v286 - 1);
  MEMORY[0x1EEE9AC00](v73);
  v279 = &v204 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v204 - v76;
  v277 = v78;
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v204 - v80;
  sub_1A3EFDB80(0, &qword_1EB128C00, MEMORY[0x1E69E93D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v82 - 8);
  v84 = &v204 - v83;
  v85 = swift_getWitnessTable();
  v86 = v71;
  v87 = v284;
  MEMORY[0x1A5905890](v71, v85);
  v88 = sub_1A5246E94();
  v89 = *(v88 - 8);
  v90 = *(v89 + 48);
  v274 = v88;
  v91 = v90(v84, 1);
  v282 = v72;
  if (v91 == 1)
  {
    sub_1A3F1B5F4(v84, &qword_1EB128C00, MEMORY[0x1E69E93D8], MEMORY[0x1E69E6720], sub_1A3EFDB80);
  }

  else
  {
    v272 = v89;
    v273 = v69;
    v92 = *(v72 + 16);
    v92(v81, v87, v71);
    v92(v77, v87, v71);
    v93 = v275;
    sub_1A5246E44();
    v94 = sub_1A5246E84();
    v95 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v96 = swift_slowAlloc();
      v211 = v95;
      v97 = v96;
      v212 = swift_slowAlloc();
      v303 = v212;
      *v97 = 136446466;
      sub_1A3C41990(v287, v285);
      v98 = *(v72 + 8);
      v206 = v94;
      v98(v81, v86);
      sub_1A3C66768();
      sub_1A524EA44();
      sub_1A3C2EF94();
    }

    v99 = *(v72 + 8);
    v99(v81, v71);

    (*(v276 + 8))(v93, v273);
    v99(v77, v71);
    v272[1](v84, v274);
  }

  v100 = v286;
  v101 = v284 + v286[24];
  v102 = *v101;
  v103 = *(v101 + 8);
  v104 = *(v101 + 16);
  v105 = *(v101 + 24);
  v211 = *(v101 + 32);
  v206 = v102;
  v212 = v104;
  v205 = v103;
  v204 = v105;
  if (v211 != 1)
  {

    sub_1A524D254();
    v106 = sub_1A524A014();
    sub_1A5246DF4();

    v100 = v286;
    v107 = v278;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v102, v103, v104, v105, 0);
    (*(v280 + 8))(v107, v281);
  }

  v108 = v284;
  sub_1A43F25A0();
  v109 = v287;
  LODWORD(v273) = sub_1A3F00950(v108);
  v110 = v282;
  v112 = v282 + 16;
  v111 = *(v282 + 16);
  v113 = v279;
  v111(v279, v108, v100);
  v114 = *(v110 + 80);
  v115 = (v114 + 32) & ~v114;
  v116 = v115 + v277;
  v117 = swift_allocObject();
  v118 = v285;
  *(v117 + 16) = v109;
  *(v117 + 24) = v118;
  v119 = *(v110 + 32);
  (v119)(v117 + v115, v113, v286);
  v276 = v112;
  v275 = v111;
  v111(v113, v108, v286);
  v274 = v114;
  v120 = swift_allocObject();
  v121 = v287;
  v122 = v285;
  *(v120 + 16) = v287;
  *(v120 + 24) = v122;
  v277 = v115;
  v282 = v110 + 32;
  v272 = v119;
  (v119)(v120 + v115, v113, v286);
  v123 = v273 & 1;
  v273 = v116;
  *(v120 + v116) = v123;
  sub_1A5249584();
  v203 = v213;
  v124 = v286;
  sub_1A5243DC4();
  (*(v269 + 16))(v268, v108, v121);
  v125 = *(v108 + v124[14]);
  v126 = *(v108 + v124[15]);
  if (v211)
  {
    v127 = v212;
  }

  else
  {
    v128 = v206;

    sub_1A524D254();
    v129 = sub_1A524A014();
    sub_1A5246DF4();

    v124 = v286;
    v130 = v278;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v128, v205, v212, v204, 0);
    (*(v280 + 8))(v130, v281);
    v127 = v305;
  }

  v131 = v284;
  v132 = v228;
  v216 = v284 + v124[19];
  sub_1A3F15F50(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v228);
  v133 = v131 + v124[20];
  v134 = *v133;
  v217 = v133;
  if (*(v133 + 8) == 1)
  {
    v288 = v134;
  }

  else
  {

    sub_1A524D254();
    v135 = sub_1A524A014();
    sub_1A5246DF4();

    v136 = v278;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v134, 0);
    (*(v280 + 8))(v136, v281);
    LOBYTE(v134) = v288;
  }

  v137 = v229;
  (*(v269 + 32))(v229, v268, v287);
  v138 = v231;
  v137[v231[9]] = v125;
  v137[v138[10]] = v126;
  *&v137[v138[11]] = v127;
  (*(v271 + 32))(&v137[v138[12]], v132, v283);
  v137[v138[13]] = v134;
  v139 = v138[14];
  *&v137[v139] = swift_getKeyPath();
  sub_1A3EFDB80(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v303 = 0x3FF0000000000000;
  sub_1A3F185D4();
  sub_1A52480C4();
  v140 = v220;
  v141 = v266;
  MEMORY[0x1A5906490](v137, v220, v138, v215);
  (*(v230 + 8))(v137, v138);
  (*(v219 + 8))(v141, v140);
  swift_getKeyPath();
  v142 = v131 + v124[21];
  v143 = *v142;
  v144 = *(v142 + 8);
  if (v144 == 1)
  {
    v145 = v143;
    v146 = v143;
  }

  else
  {

    sub_1A524D254();
    v147 = sub_1A524A014();
    sub_1A5246DF4();

    v148 = v278;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v143, 0);
    v145 = (*(v280 + 8))(v148, v281);
    v146 = v303;
  }

  v149 = v233;
  v150 = MEMORY[0x1E69E7D40];
  if (v146)
  {
    v151 = (*((*MEMORY[0x1E69E7D40] & *v146) + 0x2A0))(v145);
  }

  else
  {
    v151 = 0;
  }

  LOBYTE(v303) = v151 & 1;
  v152 = v225;
  v153 = v267;
  sub_1A524A964();

  (*(v224 + 8))(v153, v152);
  swift_getKeyPath();
  if (v144)
  {
    v154 = v143;
  }

  else
  {

    sub_1A524D254();
    v155 = sub_1A524A014();
    sub_1A5246DF4();

    v156 = v278;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v143, 0);
    v154 = (*(v280 + 8))(v156, v281);
    v143 = v303;
  }

  v157 = v286;
  v158 = v285;
  if (v143)
  {
    v159 = (*((*v150 & *v143) + 0x2B8))(v154);
  }

  else
  {
    v159 = *sub_1A41D5618();
  }

  v303 = v159;
  v160 = v232;
  v161 = v244;
  sub_1A524A964();

  (*(v241 + 8))(v149, v161);
  swift_getKeyPath();
  v162 = v234;
  v163 = v240;
  sub_1A524A964();

  (*(v237 + 8))(v160, v163);
  v164 = v279;
  (v275)(v279, v131, v157);
  v165 = swift_allocObject();
  *(v165 + 16) = v287;
  *(v165 + 24) = v158;
  (v272)(v165 + v277, v164, v157);
  v166 = v252;
  v167 = v245;
  sub_1A524B134();

  (*(v243 + 8))(v162, v167);
  v168 = v264;
  sub_1A3F15F50(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v264);
  v169 = v131;
  v170 = v157;
  (v275)(v164, v169, v157);
  v171 = v158;
  v172 = swift_allocObject();
  *(v172 + 16) = v287;
  *(v172 + 24) = v158;
  (v272)(v172 + v277, v164, v170);
  v173 = v257;
  v174 = v283;
  sub_1A524B144();

  (*(v271 + 8))(v168, v174);
  (*(v254 + 8))(v166, v173);
  v175 = *v217;
  if (*(v217 + 8) == 1)
  {
    LOBYTE(v303) = *v217;
  }

  else
  {

    sub_1A524D254();
    v176 = sub_1A524A014();
    sub_1A5246DF4();

    v177 = v278;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v175, 0);
    (*(v280 + 8))(v177, v281);
    LOBYTE(v175) = v303;
  }

  v178 = v261;
  v288 = v175;
  v179 = v279;
  v180 = v284;
  (v275)(v279, v284, v170);
  v181 = swift_allocObject();
  v182 = v287;
  *(v181 + 16) = v287;
  *(v181 + 24) = v171;
  (v272)(v181 + v277, v179, v170);
  v183 = v253;
  v184 = v270;
  sub_1A524B144();

  (*(v251 + 8))(v184, v183);
  v185 = (*(v171 + 328))(v182, v171);
  if (v185)
  {
    v186 = v207;
    sub_1A3EFE030(v170, v207);
    v187 = v209;
    v188 = v208;
    v189 = v210;
    (*(v209 + 104))(v208, *MEMORY[0x1E697E7D8], v210);
    sub_1A3F1D360(&qword_1EB124378, MEMORY[0x1E697E7E0]);
    sub_1A524C594();
    v190 = *(v187 + 8);
    v190(v188, v189);
    v185 = (v190)(v186, v189);
  }

  MEMORY[0x1EEE9AC00](v185);
  v191 = v287;
  *(&v204 - 4) = v287;
  *(&v204 - 3) = v171;
  v203 = v180;
  swift_checkMetadataState();
  v192 = v258;
  v193 = v263;
  sub_1A524A584();
  (*(v262 + 8))(v178, v193);
  v194 = (*(v171 + 256))(v191, v171);
  MEMORY[0x1EEE9AC00](v194);
  *(&v204 - 4) = v191;
  *(&v204 - 3) = v171;
  v203 = v180;
  swift_checkMetadataState();
  v195 = v236;
  v196 = v260;
  sub_1A524A584();
  (*(v259 + 8))(v192, v196);
  v197 = v246;
  v198 = *(v246 + 16);
  v199 = v239;
  v200 = v249;
  v198(v239, v195, v249);
  v201 = *(v197 + 8);
  v201(v195, v200);
  v198(v265, v199, v200);
  return (v201)(v199, v200);
}

uint64_t sub_1A3F00950(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeShelfContents();
  v7 = a1 + *(v6 + 108);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v22 = v8 & 1;
  }

  else
  {

    sub_1A524D254();
    v9 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v8, 0);
    (*(v3 + 8))(v5, v2);
    LOBYTE(v8) = v22;
  }

  v21 = v8 & 1;
  v20 = 0;
  v10 = static LemonadeShelvesViewModelDisplayState.== infix(_:_:)(&v21, &v20);
  v11 = 0;
  if (v10)
  {
    v12 = (a1 + *(v6 + 116));
    v13 = *v12;
    v14 = *(v12 + 8);

    if ((v14 & 1) == 0)
    {
      sub_1A524D254();
      v16 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();

      v15 = (*(v3 + 8))(v5, v2);
      v13 = v19;
    }

    v17 = (*(*v13 + 136))(v15);

    v11 = v17 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_1A3F00BC8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v194 = a3;
  v195 = a1;
  v191 = a4;
  sub_1A3F18928(0, &qword_1EB122BA0, MEMORY[0x1E697F948]);
  v172 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v175 = &v162 - v6;
  sub_1A3F18928(0, &qword_1EB1225A0, MEMORY[0x1E697F960]);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v177 = &v162 - v9;
  v10 = sub_1A5243334();
  v170 = *(v10 - 8);
  v171 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v176 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F17A98();
  v13 = v12;
  v181 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v174 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v173 = &v162 - v16;
  v17 = type metadata accessor for LemonadeShelfHeader();
  v18 = sub_1A5248804();
  v192 = v13;
  v19 = sub_1A5249754();
  v180 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v179 = &v162 - v20;
  v190 = v21;
  v183 = v8;
  v22 = sub_1A5249754();
  v184 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v182 = &v162 - v23;
  v167 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v166 = &v162 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v168 = &v162 - v27;
  v193 = v17;
  v169 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v162 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v162 - v32;
  v178 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = (&v162 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v162 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v162 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v162 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v162 - v47;
  v188 = v18;
  v189 = v49;
  v50 = sub_1A5249754();
  v185 = *(v50 - 8);
  v186 = v50;
  v51 = MEMORY[0x1EEE9AC00](v50);
  v187 = &v162 - v52;
  v53 = (*(v194 + 40))(a2, v51);
  v54 = MEMORY[0x1E697E5D8];
  if (v53 <= 1)
  {
    v176 = v45;
    v177 = v30;
    v181 = v36;
    v162 = v39;
    v163 = v48;
    v164 = a2;
    v165 = v42;
    if (v53)
    {
      v87 = v166;
      v88 = v195;
      (*(v167 + 16))(v166, v195, a2);
      v89 = type metadata accessor for LemonadeShelfContents();
      v90 = v89[9];
      LODWORD(v192) = v88[v89[10]];
      v91 = *&v88[v90];
      sub_1A3F1B4DC(&v88[v89[13]], v234, &qword_1EB129A90, &qword_1EB129A98);
      v92 = v235;
      if (v235)
      {
        v93 = v236;
        __swift_project_boxed_opaque_existential_1(v234, v235);
        v94 = *(v93 + 16);
        v95 = v91;

        v96 = v94(v92, v93);
        v87 = v166;
        v97 = v96;
        v92 = v98;
        __swift_destroy_boxed_opaque_existential_0(v234);
      }

      else
      {
        v95 = v91;

        sub_1A3C2C598(v234, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel, sub_1A3E792C4);
        v97 = 0;
      }

      v137 = v162;
      v138 = v177;
      v139 = *&v195[v89[17]];

      sub_1A3E66D44(v87, v192, v95, v97, v92, v139, 0, v164, v138);
      sub_1A524A054();
      v140 = v193;
      WitnessTable = swift_getWitnessTable();
      v142 = v181;
      sub_1A524B0D4();
      (*(v169 + 8))(v138, v140);
      v232 = WitnessTable;
      v233 = MEMORY[0x1E697E5D8];
      v143 = v188;
      v144 = swift_getWitnessTable();
      v145 = v178;
      v146 = *(v178 + 16);
      v146(v137, v142, v143);
      v147 = *(v145 + 8);
      v147(v142, v143);
      v148 = v165;
      v146(v165, v137, v143);
      v149 = sub_1A3F1D360(&qword_1EB1292B0, sub_1A3F17A98);
      v230 = v144;
      v231 = v149;
      v150 = swift_getWitnessTable();
      v151 = sub_1A3F17BF8();
      v228 = v150;
      v229 = v151;
      v152 = v189;
      swift_getWitnessTable();
      v153 = v187;
      sub_1A3DF4890(v148, v152, v143);
      v147(v148, v143);
      v147(v162, v143);
      v78 = MEMORY[0x1E697E5D8];
      v86 = v153;
    }

    else
    {
      v61 = v195;
      (*(v167 + 16))(v168, v195, a2);
      v62 = type metadata accessor for LemonadeShelfContents();
      v63 = v62[9];
      LODWORD(v181) = v61[v62[10]];
      v64 = *&v61[v63];
      sub_1A3F1B4DC(&v61[v62[13]], v234, &qword_1EB129A90, &qword_1EB129A98);
      v65 = v235;
      v177 = v64;
      if (v235)
      {
        v66 = v236;
        __swift_project_boxed_opaque_existential_1(v234, v235);
        v67 = *(v66 + 16);

        v68 = v67(v65, v66);
        v65 = v69;
        __swift_destroy_boxed_opaque_existential_0(v234);
      }

      else
      {

        sub_1A3C2C598(v234, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel, sub_1A3E792C4);
        v68 = 0;
      }

      v116 = v165;
      v117 = *&v195[v62[17]];

      v118 = v164;
      v119 = sub_1A3C30368();
      sub_1A3E66D44(v168, v181, v177, v68, v65, v117, v119 & 1, v118, v33);
      sub_1A524A054();
      v120 = v193;
      v121 = swift_getWitnessTable();
      v122 = v176;
      sub_1A524B0D4();
      (*(v169 + 8))(v33, v120);
      v200 = v121;
      v201 = MEMORY[0x1E697E5D8];
      v123 = v188;
      v124 = swift_getWitnessTable();
      v125 = v178;
      v126 = *(v178 + 16);
      v127 = v163;
      v126(v163, v122, v123);
      v195 = *(v125 + 8);
      (v195)(v122, v123);
      v126(v116, v127, v123);
      v128 = sub_1A3F1D360(&qword_1EB1292B0, sub_1A3F17A98);
      v129 = v179;
      sub_1A3DF4798(v116, v123);
      v198 = v124;
      v199 = v128;
      v130 = v190;
      v131 = swift_getWitnessTable();
      v132 = sub_1A3F17BF8();
      v133 = v182;
      sub_1A3DF4798(v129, v130);
      (*(v180 + 8))(v129, v130);
      v196 = v131;
      v197 = v132;
      v134 = v189;
      swift_getWitnessTable();
      v86 = v187;
      sub_1A3DF4798(v133, v134);
      v135 = v133;
      v78 = MEMORY[0x1E697E5D8];
      (*(v184 + 8))(v135, v134);
      v136 = v195;
      (v195)(v165, v123);
      (v136)(v163, v123);
    }

    goto LABEL_26;
  }

  if (v53 == 2)
  {
    v70 = MEMORY[0x1E697E5D8];
    v71 = type metadata accessor for LemonadeShelfContents();
    sub_1A3F1B4DC(&v195[*(v71 + 52)], v234, &qword_1EB129A90, &qword_1EB129A98);
    v72 = v235;
    if (v235)
    {
      v73 = v236;
      __swift_project_boxed_opaque_existential_1(v234, v235);
      (*(v73 + 16))(v72, v73);
      v75 = v74;
      __swift_destroy_boxed_opaque_existential_0(v234);
      v77 = v188;
      v76 = v189;
      if (v75)
      {
LABEL_18:
        (*(v170 + 104))(v176, *MEMORY[0x1E69C2408], v171);
        sub_1A5247BA4();
        v99 = v173;
        sub_1A52423E4();
        v206 = swift_getWitnessTable();
        v207 = v70;
        v100 = swift_getWitnessTable();
        v101 = sub_1A3F1D360(&qword_1EB1292B0, sub_1A3F17A98);
        v102 = v179;
        sub_1A3DF4890(v99, v77, v192);
        v204 = v100;
        v205 = v101;
        v103 = v190;
        v104 = swift_getWitnessTable();
        v105 = sub_1A3F17BF8();
        v106 = v182;
        sub_1A3DF4798(v102, v103);
        (*(v180 + 8))(v102, v103);
        v202 = v104;
        v203 = v105;
        swift_getWitnessTable();
        v86 = v187;
        sub_1A3DF4798(v106, v76);
        v107 = v106;
        v78 = MEMORY[0x1E697E5D8];
        (*(v184 + 8))(v107, v76);
        v181[1](v173, v192);
        goto LABEL_26;
      }
    }

    else
    {
      sub_1A3C2C598(v234, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel, sub_1A3E792C4);
      v77 = v188;
      v76 = v189;
    }

    (*(v194 + 24))(a2);

    goto LABEL_18;
  }

  if (v53 == 3)
  {
    v55 = type metadata accessor for LemonadeShelfContents();
    sub_1A3F1B4DC(&v195[*(v55 + 52)], v234, &qword_1EB129A90, &qword_1EB129A98);
    v56 = v235;
    v57 = v189;
    if (v235)
    {
      v58 = v236;
      __swift_project_boxed_opaque_existential_1(v234, v235);
      (*(v58 + 16))(v56, v58);
      v60 = v59;
      __swift_destroy_boxed_opaque_existential_0(v234);
      if (v60)
      {
LABEL_21:
        (*(v170 + 104))(v176, *MEMORY[0x1E69C2410], v171);
        sub_1A5247BA4();
        v108 = v174;
        sub_1A52423E4();
        (v181[2])(v175, v108, v192);
        swift_storeEnumTagMultiPayload();
        v109 = sub_1A3F1D360(&qword_1EB1292B0, sub_1A3F17A98);
        v110 = v177;
        sub_1A5249744();
        v218 = swift_getWitnessTable();
        v219 = MEMORY[0x1E697E5D8];
        v216 = swift_getWitnessTable();
        v217 = v109;
        v111 = v190;
        v112 = swift_getWitnessTable();
        v113 = sub_1A3F17BF8();
        v114 = v182;
        sub_1A3DF4890(v110, v111, v183);
        sub_1A3F18990(v110);
        v214 = v112;
        v215 = v113;
        swift_getWitnessTable();
        v86 = v187;
        sub_1A3DF4798(v114, v57);
        v115 = v114;
        v78 = MEMORY[0x1E697E5D8];
        (*(v184 + 8))(v115, v57);
        v181[1](v174, v192);
        goto LABEL_26;
      }
    }

    else
    {
      sub_1A3C2C598(v234, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel, sub_1A3E792C4);
    }

    (*(v194 + 24))(a2);

    goto LABEL_21;
  }

  swift_storeEnumTagMultiPayload();
  v78 = v54;
  v79 = sub_1A3F1D360(&qword_1EB1292B0, sub_1A3F17A98);
  v80 = v177;
  sub_1A5249744();
  v212 = swift_getWitnessTable();
  v213 = v78;
  v210 = swift_getWitnessTable();
  v211 = v79;
  v81 = v190;
  v82 = swift_getWitnessTable();
  v83 = sub_1A3F17BF8();
  v84 = v182;
  sub_1A3DF4890(v80, v81, v183);
  sub_1A3F18990(v80);
  v208 = v82;
  v209 = v83;
  v85 = v189;
  swift_getWitnessTable();
  v86 = v187;
  sub_1A3DF4798(v84, v85);
  (*(v184 + 8))(v84, v85);
LABEL_26:
  v154 = v191;
  v226 = swift_getWitnessTable();
  v227 = v78;
  v155 = swift_getWitnessTable();
  v156 = sub_1A3F1D360(&qword_1EB1292B0, sub_1A3F17A98);
  v224 = v155;
  v225 = v156;
  v157 = swift_getWitnessTable();
  v158 = sub_1A3F17BF8();
  v222 = v157;
  v223 = v158;
  v220 = swift_getWitnessTable();
  v221 = v155;
  v159 = v186;
  swift_getWitnessTable();
  v160 = v185;
  (*(v185 + 16))(v154, v86, v159);
  return (*(v160 + 8))(v86, v159);
}

uint64_t sub_1A3F02228@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t (*a4)(_BYTE *, int *)@<X3>, uint64_t a5@<X8>)
{
  v116 = a2;
  v118 = a5;
  v109 = sub_1A5249234();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v98[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3F17BA8(0);
  v111 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v120 = &v98[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3F17B1C(0);
  v112 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v113 = &v98[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3F17B44(0, &qword_1EB123108, sub_1A3F17B1C);
  v114 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v117 = &v98[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v110 = &v98[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v98[-v18];
  v19 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v98[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v106 = a4;
  v23 = type metadata accessor for LemonadeShelfBody();
  v121 = *(v23 - 1);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v98[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x1EEE9AC00](v26);
  v119 = &v98[-v28];
  (*(v19 + 16))(v22, a1, a3, v27);
  WitnessTable = a3;
  v103 = type metadata accessor for LemonadeShelfContents();
  v29 = v103[14];
  v30 = a1;
  v105 = a1;
  v31 = *(a1 + v29);
  v32 = *(a1 + v103[9]);
  v33 = *(a1 + v103[10]);
  v34 = *(a1 + v103[12]);
  v35 = *(a1 + v103[17]);
  sub_1A3F1B4DC(v30 + v103[13], &v125, &qword_1EB129A90, &qword_1EB129A98);

  (*(v19 + 32))(v25, v22, a3);
  v25[v23[9]] = v31;
  *&v25[v23[10]] = v32;
  v25[v23[11]] = v33;
  *&v25[v23[12]] = v34;
  *&v25[v23[13]] = v35;
  v36 = &v25[v23[14]];
  v37 = v126;
  *v36 = v125;
  *(v36 + 1) = v37;
  *(v36 + 4) = v127;
  v38 = &v25[v23[15]];
  *v38 = swift_getKeyPath();
  v38[8] = 0;
  v39 = &v25[v23[16]];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  v40 = &v25[v23[17]];
  *v40 = swift_getKeyPath();
  v40[8] = 0;
  v41 = v23[18];
  *&v25[v41] = swift_getKeyPath();
  v56 = MEMORY[0x1E697DCB8];
  sub_1A3EFDB80(0, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v42 = &v25[v23[19]];
  *v42 = swift_getKeyPath();
  v42[8] = 0;
  v43 = &v25[v23[20]];
  *v43 = swift_getKeyPath();
  *(v43 + 1) = 0;
  *(v43 + 2) = 0;
  *(v43 + 3) = 0;
  v43[32] = 0;
  v44 = &v25[v23[21]];
  *v44 = swift_getKeyPath();
  v44[8] = 0;
  v45 = &v25[v23[22]];
  *v45 = swift_getKeyPath();
  v45[8] = 0;
  v46 = v23[23];
  *&v25[v46] = swift_getKeyPath();
  sub_1A3EFDB80(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v56);
  swift_storeEnumTagMultiPayload();
  v47 = &v25[v23[24]];
  *v47 = swift_getKeyPath();
  *(v47 + 4) = 0;
  v48 = v23[25];
  *&v25[v48] = swift_getKeyPath();
  sub_1A3EFDB80(0, &qword_1EB128A50, MEMORY[0x1E697E730], v56);
  swift_storeEnumTagMultiPayload();
  v49 = v23[26];
  *&v25[v49] = swift_getKeyPath();
  sub_1A3EFDB80(0, &unk_1EB128A40, sub_1A3DC7D88, v56);
  swift_storeEnumTagMultiPayload();
  v50 = &v25[v23[27]];
  *v50 = swift_getKeyPath();
  v50[8] = 0;
  v51 = &v25[v23[28]];
  *v51 = swift_getKeyPath();
  v51[8] = 0;
  v52 = &v25[v23[29]];
  *v52 = swift_getKeyPath();
  v52[8] = 0;
  v53 = v23[30];
  v124[0] = 0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5243794();
  sub_1A524DF24();
  sub_1A524B694();
  *&v25[v53] = v128;
  WitnessTable = swift_getWitnessTable();
  v54 = v121;
  v102 = *(v121 + 16);
  v101 = v121 + 16;
  v102(v119, v25, v23);
  v55 = *(v54 + 8);
  v121 = v54 + 8;
  v106 = v55;
  v55(v25, v23);
  sub_1A524B994();
  LODWORD(v56) = sub_1A524A094();
  v57 = v105 + v103[28];
  v59 = *v57;
  v58 = *(v57 + 8);
  v61 = *(v57 + 16);
  v60 = *(v57 + 24);
  v62 = *(v57 + 32);
  v103 = v58;
  v105 = v60;
  v100 = v61;
  if (v62 == 1)
  {
    v63 = v109;
    v64 = v108;
    v65 = v107;
  }

  else
  {
    v99 = v56;
    v56 = v58;

    sub_1A524D254();
    v66 = sub_1A524A014();
    sub_1A5246DF4();

    v65 = v107;
    sub_1A5249224();
    swift_getAtKeyPath();
    v67 = v56;
    LOBYTE(v56) = v99;
    sub_1A3D35A84(v59, v67, v61, v60, 0);
    v64 = v108;
    v63 = v109;
    (*(v108 + 8))(v65, v109);
  }

  sub_1A5247BC4();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  sub_1A3F17BD0(0);
  v77 = &v120[*(v76 + 36)];
  *v77 = v56;
  *(v77 + 1) = v69;
  *(v77 + 2) = v71;
  *(v77 + 3) = v73;
  *(v77 + 4) = v75;
  v77[40] = 0;
  v78 = sub_1A524A0B4();
  if (!v62)
  {

    sub_1A524D254();
    v79 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v59, v103, v100, v105, 0);
    (*(v64 + 8))(v65, v63);
  }

  sub_1A5247BC4();
  v80 = v120;
  v81 = &v120[*(v111 + 36)];
  *v81 = v78;
  *(v81 + 1) = v82;
  *(v81 + 2) = v83;
  *(v81 + 3) = v84;
  *(v81 + 4) = v85;
  v81[40] = 0;
  if (v116)
  {
    v86 = 0.0;
  }

  else
  {
    v86 = 1.0;
  }

  v87 = v113;
  sub_1A3F1C8C4(v80, v113, sub_1A3F17BA8);
  *&v87[*(v112 + 36)] = v86;
  sub_1A524BC74();
  sub_1A52481F4();
  v88 = v110;
  sub_1A3F1C8C4(v87, v110, sub_1A3F17B1C);
  v89 = v114;
  v90 = &v88[*(v114 + 36)];
  v91 = v126;
  *v90 = v125;
  v90[1] = v91;
  v90[2] = v127;
  v92 = v115;
  sub_1A3F18628(v88, v115);
  v93 = v119;
  v102(v25, v119, v23);
  *&v128 = v25;
  v94 = MEMORY[0x1E697E048];
  v95 = v117;
  sub_1A3F1C850(v92, v117, &qword_1EB123108, sub_1A3F17B1C, MEMORY[0x1E697E048], sub_1A3F17B44);
  *(&v128 + 1) = v95;
  v124[0] = v23;
  v124[1] = v89;
  v122 = WitnessTable;
  v123 = sub_1A3F186B0();
  sub_1A3DF4988(&v128, 2uLL, v124);
  sub_1A3F1B5F4(v92, &qword_1EB123108, sub_1A3F17B1C, v94, sub_1A3F17B44);
  v96 = v106;
  v106(v93, v23);
  sub_1A3F1B5F4(v95, &qword_1EB123108, sub_1A3F17B1C, v94, sub_1A3F17B44);
  return v96(v25, v23);
}

uint64_t sub_1A3F02E9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A5248D94();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A3F02EF4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.selectionLimit.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A3F02F48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A52486A4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5242D14();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadeShelfStyleOptions(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F15F50(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v12);
  v16 = v1 + *(a1 + 80);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    v29 = *v16;
  }

  else
  {

    sub_1A524D254();
    v18 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v17, 0);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v17) = v29;
  }

  v28 = v17;
  v19 = v2 + *(a1 + 92);
  v20 = *v19;
  if (*(v19 + 8) == 1)
  {
    v27 = *v19;
  }

  else
  {

    sub_1A524D254();
    v21 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v20, 0);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v20) = v27;
  }

  v26 = v20;
  v22 = v25;
  sub_1A3F15F50(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v25);
  sub_1A42E6EC8(v12, &v28, &v26, v22, v15);
  v23 = (*(*(a1 + 24) + 112))(v15, *(a1 + 16));
  sub_1A3F1C4BC(v15, type metadata accessor for LemonadeShelfStyleOptions);
  return v23;
}

uint64_t sub_1A3F03334(_BYTE *a1, char *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-v8];
  v10 = *a2;
  v15[15] = *a1;
  v15[14] = v10;
  sub_1A3F17D14();
  result = sub_1A524C594();
  if ((result & 1) == 0)
  {
    v12 = type metadata accessor for LemonadeShelfContents();
    v13 = sub_1A52427E4();
    v14 = *(a3 + *(v12 + 44));
    if ((v13 & 1) != v14)
    {
      sub_1A52427F4();
      if (v14)
      {
        (*(*(AssociatedTypeWitness - 8) + 56))(v9, 1, 1, AssociatedTypeWitness);
        sub_1A5242814();
      }
    }

    sub_1A3F02F48(v12);
    return sub_1A5242824();
  }

  return result;
}

uint64_t sub_1A3F0350C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a1;
  v51 = a4;
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Handler = type metadata accessor for LemonadeShelfContents.ScrollPhaseLoadHandler();
  v50 = *(Handler - 8);
  v10 = MEMORY[0x1EEE9AC00](Handler);
  v12 = &v47 - v11;
  (*(v6 + 16))(v8, a2, a3, v10);
  type metadata accessor for LemonadeShelfContents();
  v13 = sub_1A5243194();
  v14 = *(v6 + 32);
  v48 = v12;
  v14(v12, v8, a3);
  v49 = Handler;
  *&v12[*(Handler + 36)] = v13;
  v15 = &v12[*(Handler + 40)];
  v75 = 0;
  sub_1A524B694();
  v16 = v64;
  *v15 = v63;
  *(v15 + 1) = v16;
  type metadata accessor for LemonadeShelfHeader();
  sub_1A5248804();
  sub_1A3F17A98();
  sub_1A5249754();
  sub_1A3F18928(255, &qword_1EB1225A0, MEMORY[0x1E697F960]);
  sub_1A5249754();
  v17 = sub_1A5249754();
  type metadata accessor for LemonadeShelfBody();
  sub_1A3F17B44(255, &qword_1EB123108, sub_1A3F17B1C);
  swift_getTupleTypeMetadata2();
  v18 = sub_1A524BE24();
  WitnessTable = swift_getWitnessTable();
  v74 = MEMORY[0x1E697E5D8];
  v19 = swift_getWitnessTable();
  v20 = sub_1A3F1D360(&qword_1EB1292B0, sub_1A3F17A98);
  v71 = v19;
  v72 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_1A3F17BF8();
  v69 = v21;
  v70 = v22;
  v67 = swift_getWitnessTable();
  v68 = v19;
  v23 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v63 = v17;
  v64 = v18;
  v65 = v23;
  v66 = v24;
  sub_1A5243DD4();
  type metadata accessor for LemonadeShelfContents.bottomPadding();
  sub_1A5248804();
  v25 = MEMORY[0x1E6980A08];
  sub_1A3F1C93C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F1C93C(255, &unk_1EB1277B0, MEMORY[0x1E69E6530], v25);
  sub_1A5248804();
  v26 = MEMORY[0x1E69C24E0];
  sub_1A3EFDB80(255, &qword_1EB1279F0, MEMORY[0x1E69C24E0], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  v27 = sub_1A5248804();
  v47 = sub_1A5242D14();
  v28 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  v61 = v28;
  v62 = v29;
  v30 = swift_getWitnessTable();
  v31 = sub_1A3F17CC4(&qword_1EB1277D0, &qword_1EB1277C8, v25);
  v59 = v30;
  v60 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_1A3F1B380(&qword_1EB1277C0, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
  v57 = v32;
  v58 = v33;
  v34 = swift_getWitnessTable();
  v35 = sub_1A3F1B31C(&qword_1EB1279F8, &qword_1EB1279F0, v26);
  v55 = v34;
  v56 = v35;
  v53 = swift_getWitnessTable();
  v54 = MEMORY[0x1E69805D0];
  v36 = swift_getWitnessTable();
  v37 = sub_1A3F1D360(&qword_1EB129148, MEMORY[0x1E69C2218]);
  v38 = v47;
  v63 = v27;
  v64 = v47;
  v65 = v36;
  v66 = v37;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = v27;
  v64 = v38;
  v65 = v36;
  v66 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_1A3F17D14();
  v63 = OpaqueTypeMetadata2;
  v64 = &type metadata for LemonadeHorizontalSizeClass;
  v65 = OpaqueTypeConformance2;
  v66 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v63 = OpaqueTypeMetadata2;
  v64 = &type metadata for LemonadeHorizontalSizeClass;
  v65 = OpaqueTypeConformance2;
  v66 = v41;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v48;
  v45 = v49;
  MEMORY[0x1A5906490](v48, v42, v49, v43);
  return (*(v50 + 8))(v44, v45);
}

uint64_t sub_1A3F03C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a1;
  v62 = a5;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadeShelfContents.VisibilityTracker();
  v61 = *(v11 - 1);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v58 - v13;
  (*(v8 + 16))(v10, a2, a3, v12);
  v15 = a4;
  v16 = type metadata accessor for LemonadeShelfContents();
  v17 = sub_1A5243194();
  v18 = *(*(a2 + *(v16 + 36)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);

  (*(v8 + 32))(v14, v10, a3);
  v60 = v11;
  v19 = v11[9];
  v59 = v14;
  *&v14[v19] = v17;
  *&v14[v11[10]] = v18;
  v20 = &v14[v11[11]];
  v88 = 0;
  sub_1A524B694();
  v21 = v77;
  *v20 = v76;
  *(v20 + 1) = v21;
  v22 = v15;
  type metadata accessor for LemonadeShelfHeader();
  sub_1A5248804();
  sub_1A3F17A98();
  sub_1A5249754();
  sub_1A3F18928(255, &qword_1EB1225A0, MEMORY[0x1E697F960]);
  sub_1A5249754();
  v23 = sub_1A5249754();
  v58[1] = a3;
  v58[2] = v22;
  type metadata accessor for LemonadeShelfBody();
  sub_1A3F17B44(255, &qword_1EB123108, sub_1A3F17B1C);
  swift_getTupleTypeMetadata2();
  v24 = sub_1A524BE24();
  WitnessTable = swift_getWitnessTable();
  v87 = MEMORY[0x1E697E5D8];
  v25 = swift_getWitnessTable();
  v26 = sub_1A3F1D360(&qword_1EB1292B0, sub_1A3F17A98);
  v84 = v25;
  v85 = v26;
  v27 = swift_getWitnessTable();
  v28 = sub_1A3F17BF8();
  v82 = v27;
  v83 = v28;
  v80 = swift_getWitnessTable();
  v81 = v25;
  v29 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v76 = v23;
  v77 = v24;
  v78 = v29;
  v79 = v30;
  sub_1A5243DD4();
  type metadata accessor for LemonadeShelfContents.bottomPadding();
  sub_1A5248804();
  v31 = MEMORY[0x1E6980A08];
  sub_1A3F1C93C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F1C93C(255, &unk_1EB1277B0, MEMORY[0x1E69E6530], v31);
  sub_1A5248804();
  v32 = MEMORY[0x1E69C24E0];
  sub_1A3EFDB80(255, &qword_1EB1279F0, MEMORY[0x1E69C24E0], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  v33 = sub_1A5248804();
  v58[0] = sub_1A5242D14();
  v34 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v74 = v34;
  v75 = v35;
  v36 = swift_getWitnessTable();
  v37 = sub_1A3F17CC4(&qword_1EB1277D0, &qword_1EB1277C8, v31);
  v72 = v36;
  v73 = v37;
  v38 = swift_getWitnessTable();
  v39 = sub_1A3F1B380(&qword_1EB1277C0, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
  v70 = v38;
  v71 = v39;
  v40 = swift_getWitnessTable();
  v41 = sub_1A3F1B31C(&qword_1EB1279F8, &qword_1EB1279F0, v32);
  v68 = v40;
  v69 = v41;
  v66 = swift_getWitnessTable();
  v67 = MEMORY[0x1E69805D0];
  v42 = swift_getWitnessTable();
  v43 = sub_1A3F1D360(&qword_1EB129148, MEMORY[0x1E69C2218]);
  v44 = v58[0];
  v76 = v33;
  v77 = v58[0];
  v78 = v42;
  v79 = v43;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = v33;
  v77 = v44;
  v78 = v42;
  v79 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = sub_1A3F17D14();
  v76 = OpaqueTypeMetadata2;
  v77 = &type metadata for LemonadeHorizontalSizeClass;
  v78 = OpaqueTypeConformance2;
  v79 = v47;
  v48 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for LemonadeShelfContents.ScrollPhaseLoadHandler();
  v49 = sub_1A5248804();
  v76 = OpaqueTypeMetadata2;
  v77 = &type metadata for LemonadeHorizontalSizeClass;
  v78 = OpaqueTypeConformance2;
  v79 = v47;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = swift_getWitnessTable();
  v64 = v50;
  v65 = v51;
  v52 = swift_getWitnessTable();
  v76 = v48;
  v77 = v49;
  v78 = v50;
  v79 = v52;
  v53 = swift_getOpaqueTypeMetadata2();
  v76 = v48;
  v77 = v49;
  v78 = v50;
  v79 = v52;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v59;
  v56 = v60;
  MEMORY[0x1A5906490](v59, v53, v60, v54);
  return (*(v61 + 8))(v55, v56);
}

uint64_t sub_1A3F044D8()
{
  sub_1A3F1C93C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  return v1;
}

uint64_t sub_1A3F04550(uint64_t a1, uint64_t a2)
{
  sub_1A3F1C93C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A524B6B4();
  result = sub_1A3F044D8();
  if (v6 != (result & 1))
  {
    v5 = sub_1A3F044D8();
    return (*(*(a2 + 24) + 264))(v5 & 1, *(v2 + *(a2 + 36)), *(v2 + *(a2 + 40)), *(a2 + 16));
  }

  return result;
}

uint64_t sub_1A3F04658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v48 = a1;
  v49 = a3;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = v7;
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v9 = sub_1A52499C4();
  WitnessTable = swift_getWitnessTable();
  v53 = v9;
  v54 = WitnessTable;
  v44 = MEMORY[0x1E697D3A8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v50 = &v34 - v10;
  v11 = sub_1A5248804();
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v43 = &v34 - v15;
  v38 = *(v6 + 16);
  v34 = v8;
  v38(v8, v4, a2, v14);
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = swift_allocObject();
  v18 = *(a2 + 24);
  v36 = *(a2 + 16);
  *(v17 + 16) = v36;
  *(v17 + 24) = v18;
  v35 = *(v6 + 32);
  v35(v17 + v16, v8, a2);
  v19 = swift_checkMetadataState();
  v20 = WitnessTable;
  sub_1A524AEE4();

  v21 = v34;
  (v38)(v34, v39, a2);
  v22 = swift_allocObject();
  v23 = v35;
  *(v22 + 16) = v36;
  *(v22 + 24) = v18;
  v23(v22 + v16, v21, a2);
  v53 = v19;
  v54 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v40;
  v26 = OpaqueTypeMetadata2;
  v27 = v50;
  sub_1A524A994();

  (*(v47 + 8))(v27, v26);
  v51 = OpaqueTypeConformance2;
  v52 = MEMORY[0x1E69805D0];
  v28 = v46;
  swift_getWitnessTable();
  v29 = v45;
  v30 = *(v45 + 16);
  v31 = v43;
  v30(v43, v25, v28);
  v32 = *(v29 + 8);
  v32(v25, v28);
  v30(v49, v31, v28);
  return (v32)(v31, v28);
}

uint64_t sub_1A3F04ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v20[2] = a1;
  v21 = a3;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  swift_getWitnessTable();
  v6 = sub_1A52499C4();
  v20[0] = swift_getWitnessTable();
  v22 = v6;
  v23 = v20[0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - v13;
  (*(v4 + 16))(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20[1], a2, v12);
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = *(a2 + 16);
  (*(v4 + 32))(v16 + v15, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  swift_checkMetadataState();
  sub_1A524AD84();

  v17 = *(v8 + 16);
  v17(v14, v10, OpaqueTypeMetadata2);
  v18 = *(v8 + 8);
  v18(v10, OpaqueTypeMetadata2);
  v17(v21, v14, OpaqueTypeMetadata2);
  return (v18)(v14, OpaqueTypeMetadata2);
}

uint64_t sub_1A3F04DAC@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  swift_getWitnessTable();
  sub_1A52499C4();
  v4 = sub_1A5248804();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  sub_1A524A084();
  sub_1A3F04FB0(a1);
  WitnessTable = swift_getWitnessTable();
  sub_1A524B0D4();
  v15[0] = WitnessTable;
  v15[1] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v12 = *(v5 + 16);
  v12(v10, v7, v4);
  v13 = *(v5 + 8);
  v13(v7, v4);
  v12(a2, v10, v4);
  return (v13)(v10, v4);
}

double sub_1A3F04FB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A52486A4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1A5242D14();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for LemonadeShelfStyleOptions(0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = 0.0;
  if ((*(v1 + *(a1 + 40)) & 1) == 0)
  {
    v16 = *(v1 + *(a1 + 44));
    sub_1A3F1B044(0, &qword_1EB128978, sub_1A3F185D4, MEMORY[0x1E69E63B0], MEMORY[0x1E697DF08]);
    sub_1A52480D4();
    v12.n128_f64[0] = v26;
    v15 = v16 * v26;
  }

  (*(v8 + 16))(v10, v1 + *(a1 + 48), v7, v12);
  v25 = *(v1 + *(a1 + 52));
  v24 = 2;
  sub_1A3F15F50(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v6);
  sub_1A42E6EC8(v10, &v25, &v24, v6, v14);
  v17 = COERCE_DOUBLE((*(*(a1 + 24) + 296))(v14, *(a1 + 16)));
  v19 = v18;
  sub_1A3F1C4BC(v14, type metadata accessor for LemonadeShelfStyleOptions);
  v20 = v17;
  if (v15 < v17)
  {
    v20 = v15;
  }

  v21 = v15 - v20;
  if ((v19 & 1) == 0)
  {
    v15 = v21;
  }

  if (shouldUseNewCollectionsLayout()() && !*(v2 + *(a1 + 36)))
  {
    return 0.0;
  }

  return v15;
}

uint64_t sub_1A3F05278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  v5 = sub_1A52486A4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5249234();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5242D14();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LemonadeShelfStyleOptions(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F15F50(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v13);
  v17 = v2 + *(a1 + 68);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    v32 = *v17;
  }

  else
  {

    sub_1A524D254();
    v19 = v7;
    v20 = sub_1A524A014();
    sub_1A5246DF4();

    v7 = v19;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v18, 0);
    (*(v8 + 8))(v10, v19);
    LOBYTE(v18) = v32;
  }

  v31 = v18;
  v21 = v3 + *(a1 + 64);
  v22 = *v21;
  if (*(v21 + 8) == 1)
  {
    v30 = *v21;
  }

  else
  {

    sub_1A524D254();
    v23 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v22, 0);
    (*(v8 + 8))(v10, v7);
    LOBYTE(v22) = v30;
  }

  v29 = v22;
  v24 = v27;
  sub_1A3F15F50(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v27);
  sub_1A42E6EC8(v13, &v31, &v29, v24, v16);
  (*(*(a1 + 24) + 104))(v16, *(a1 + 16));
  return sub_1A3F1C4BC(v16, type metadata accessor for LemonadeShelfStyleOptions);
}

uint64_t sub_1A3F05654(int *a1)
{
  v2 = v1;
  v4 = sub_1A5242D14();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A52486A4();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5249234();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LemonadeShelfBodyStyle(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F16188(&qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, type metadata accessor for LemonadeItemsLayoutSpec, v21);
  sub_1A3F05278(a1, v18);
  v40 = v15;
  sub_1A3F1B45C(v18, v15, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  sub_1A3F1C4BC(v18, type metadata accessor for LemonadeShelfBodyStyle);
  v22 = v1 + a1[17];
  v23 = *v22;
  LODWORD(v22) = *(v22 + 8);
  v41 = v10;
  v42 = v9;
  if (v22 == 1)
  {
    v53 = v23;
  }

  else
  {

    sub_1A524D254();
    v24 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v23, 0);
    (*(v10 + 8))(v12, v9);
    LOBYTE(v23) = v53;
  }

  v52 = v23;
  v25 = *(v2 + a1[11]);
  v43 = v8;
  sub_1A3F15F50(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v8);
  sub_1A5243164();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v26 = sub_1A524CAF4();

  v27 = v46;
  sub_1A3F15F50(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v46);
  v28 = v2 + a1[19];
  v29 = *v28;
  if (*(v28 + 8) == 1)
  {
    v51 = *v28;
    v30 = v42;
  }

  else
  {

    sub_1A524D254();
    v31 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v29, 0);
    v30 = v42;
    (*(v41 + 8))(v12, v42);
    LOBYTE(v29) = v51;
  }

  v50 = v29;
  v32 = v2 + a1[28];
  v33 = *v32;
  if (*(v32 + 8) != 1)
  {

    sub_1A524D254();
    v34 = v30;
    v35 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v33, 0);
    (*(v41 + 8))(v12, v34);
    LOBYTE(v33) = v49;
  }

  v36 = v43;
  v37 = v40;
  v38 = sub_1A43A2588(v40, &v52, v25, v43, v26, v27, &v50, v33 & 1);
  (*(v47 + 8))(v27, v48);
  (*(v44 + 8))(v36, v45);
  sub_1A3F1C4BC(v37, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  sub_1A3F1C4BC(v21, type metadata accessor for LemonadeItemsLayoutSpec);
  return v38;
}

uint64_t sub_1A3F05D30@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  v42 = sub_1A52486A4();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for LemonadeShelfBodyStyle(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v36[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3F16188(&qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, type metadata accessor for LemonadeItemsLayoutSpec, v18);
  sub_1A3F05278(a1, v15);
  v38 = v12;
  sub_1A3F1B45C(v15, v12, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  sub_1A3F1C4BC(v15, type metadata accessor for LemonadeShelfBodyStyle);
  v19 = v2 + a1[17];
  v20 = *v19;
  v21 = v6;
  if (*(v19 + 8) == 1)
  {
    v22 = v7;
    v49 = *v19;
  }

  else
  {

    sub_1A524D254();
    v23 = sub_1A524A014();
    sub_1A5246DF4();

    v6 = v21;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v20, 0);
    v22 = v7;
    (*(v7 + 8))(v9, v21);
    LOBYTE(v20) = v49;
  }

  v37 = *(v3 + a1[11]);
  v48 = v20;
  v24 = v3 + a1[16];
  v25 = *v24;
  v26 = v39;
  if (*(v24 + 8) == 1)
  {
    v47 = *v24;
  }

  else
  {

    sub_1A524D254();
    v27 = sub_1A524A014();
    v6 = v21;
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v25, 0);
    (*(v22 + 8))(v9, v21);
    LOBYTE(v25) = v47;
  }

  v46 = v25;
  sub_1A3F15F50(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v26);
  v28 = v3 + a1[19];
  v29 = *v28;
  if (*(v28 + 8) == 1)
  {
    v45 = *v28;
  }

  else
  {

    sub_1A524D254();
    v30 = sub_1A524A014();
    v6 = v21;
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v29, 0);
    (*(v22 + 8))(v9, v21);
    LOBYTE(v29) = v45;
  }

  v44 = v29;
  v31 = v3 + a1[28];
  v32 = *v31;
  if (*(v31 + 8) != 1)
  {

    sub_1A524D254();
    v33 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v32, 0);
    (*(v22 + 8))(v9, v6);
    LOBYTE(v32) = v43;
  }

  v34 = v38;
  sub_1A43A22CC(v38, &v48, v37, &v46, v26, &v44, v32 & 1, v41);
  (*(v40 + 8))(v26, v42);
  sub_1A3F1C4BC(v34, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  return sub_1A3F1C4BC(v18, type metadata accessor for LemonadeItemsLayoutSpec);
}

uint64_t sub_1A3F06368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_1A3EFDB80(0, &qword_1EB128FD0, MEMORY[0x1E69C2948], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_1A5249234();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadeShelfBodyStyle(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F05278(a1, v14);
  v15 = v14[*(v12 + 28)];
  sub_1A3F1C4BC(v14, type metadata accessor for LemonadeShelfBodyStyle);
  v16 = shouldUseNewCollectionsLayout()();
  v28 = v7;
  if (v16)
  {
    v17 = v2 + *(a1 + 112);
    v18 = *v17;
    if (*(v17 + 8) != 1)
    {

      sub_1A524D254();
      v19 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v18, 0);
      (*(v8 + 8))(v10, v7);
      LOBYTE(v18) = v30;
    }

    v20 = v8;
    LOBYTE(v15) = sub_1A40B1BC0(v18 & 1, v15);
  }

  else
  {
    v20 = v8;
  }

  (*(*(a1 + 24) + 80))(*(a1 + 16));
  v21 = sub_1A5244084();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v6, 1, v21) != 1)
  {
    return (*(v22 + 32))(v29, v6, v21);
  }

  v24 = v2 + *(a1 + 60);
  v25 = *v24;
  if (*(v24 + 8) == 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A524D254();
  v27 = sub_1A524A014();
  sub_1A5246DF4();

  sub_1A5249224();
  swift_getAtKeyPath();
  sub_1A3F1B54C(v25, 0);
  (*(v20 + 8))(v10, v28);
  sub_1A40B1C00(v15, v31, v29);

  result = (v23)(v6, 1, v21);
  if (result != 1)
  {
    return sub_1A3F1B5F4(v6, &qword_1EB128FD0, MEMORY[0x1E69C2948], MEMORY[0x1E69E6720], sub_1A3EFDB80);
  }

  return result;
}

uint64_t sub_1A3F067A4(uint64_t a1)
{
  sub_1A3C41990(*(a1 + 16), *(a1 + 24));
  sub_1A3C66768();
  v2 = sub_1A524EA44();
  MEMORY[0x1A5907B60](0x566C6C6F7263732DLL, 0xEB00000000776569);
  return v2;
}

uint64_t static LemonadeShelfUtilities.scrollViewAccessibilityIdentifier(shelfIdentifier:)()
{
  sub_1A3C66768();
  v1 = sub_1A524EA44();
  MEMORY[0x1A5907B60](0x566C6C6F7263732DLL, 0xEB00000000776569);
  return v1;
}

uint64_t sub_1A3F0688C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v307 = a2;
  v306 = sub_1A5249234();
  v309 = *(v306 - 8);
  MEMORY[0x1EEE9AC00](v306);
  v308 = v244 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v320 = v244 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v318 = v244 - v7;
  v8 = type metadata accessor for LemonadeShelfBodyStyle(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v305 = v244 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v304 = v244 - v11;
  v12 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v319 = v244 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v317 = v244 - v15;
  v16 = sub_1A5244084();
  v302 = *(v16 - 8);
  v303 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v300 = v244 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v301 = v244 - v19;
  v321 = a1;
  v20 = *(a1 + 16);
  v299 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v297 = v22;
  v298 = v244 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = MEMORY[0x1E69E6720];
  sub_1A3EFDB80(0, &qword_1EB1292C0, MEMORY[0x1E69C1DE0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v296 = v244 - v24;
  sub_1A3F1AFEC();
  v323 = *(a1 + 24);
  v25 = *(v323 + 8);
  v325 = v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1A3F1D1FC(255, &qword_1EB128038, sub_1A3E73AC0, sub_1A3F1B0AC, MEMORY[0x1E697EC08]);
  v313 = v27;
  v28 = sub_1A5248804();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = sub_1A3F1B0E0();
  v344 = AssociatedConformanceWitness;
  v345 = v30;
  v31 = v30;
  v315 = v30;
  v324 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  *&v328 = AssociatedTypeWitness;
  *(&v328 + 1) = v28;
  v329 = AssociatedConformanceWitness;
  v330 = WitnessTable;
  v311 = MEMORY[0x1E69C3078];
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  v33 = sub_1A524B784();
  v34 = sub_1A5248804();
  v287 = MEMORY[0x1E69817F8];
  v291 = v33;
  v342 = swift_getWitnessTable();
  v343 = v31;
  v35 = v342;
  v290 = v342;
  v295 = v34;
  v289 = swift_getWitnessTable();
  *&v328 = v33;
  *(&v328 + 1) = v34;
  v329 = v35;
  v330 = v289;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v36 = v25;
  v37 = v325;
  v312 = swift_getAssociatedTypeWitness();
  v285 = swift_getAssociatedConformanceWitness();
  v294 = *(v285 + 16);
  v284 = swift_getAssociatedTypeWitness();
  v310 = sub_1A524CB74();
  v38 = swift_getAssociatedTypeWitness();
  v39 = swift_getAssociatedConformanceWitness();
  *&v328 = v38;
  *(&v328 + 1) = v37;
  v329 = v39;
  v330 = v36;
  v40 = swift_getOpaqueTypeMetadata2();
  *&v328 = v38;
  *(&v328 + 1) = v37;
  v41 = v37;
  v329 = v39;
  v330 = v36;
  v293 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v328 = v40;
  *(&v328 + 1) = OpaqueTypeConformance2;
  v43 = swift_getOpaqueTypeMetadata2();
  v44 = sub_1A52497A4();
  *&v328 = v40;
  *(&v328 + 1) = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688]);
  *&v328 = v43;
  *(&v328 + 1) = v44;
  v329 = v45;
  v330 = v46;
  swift_getOpaqueTypeMetadata2();
  v47 = sub_1A5249754();
  *&v328 = v43;
  *(&v328 + 1) = v44;
  v329 = v45;
  v330 = v46;
  v340 = swift_getOpaqueTypeConformance2();
  v341 = v45;
  v314 = MEMORY[0x1E697F968];
  v48 = swift_getWitnessTable();
  *&v328 = v47;
  *(&v328 + 1) = v48;
  v49 = swift_getOpaqueTypeMetadata2();
  *&v328 = v47;
  *(&v328 + 1) = v48;
  v50 = swift_getOpaqueTypeConformance2();
  *&v328 = v41;
  *(&v328 + 1) = v49;
  v329 = v36;
  v330 = v50;
  type metadata accessor for LemonadeItemDetailsNavigationButton();
  v51 = sub_1A5249754();
  v52 = swift_getWitnessTable();
  v53 = sub_1A3F18B84();
  v338 = v52;
  v339 = v53;
  v54 = swift_getWitnessTable();
  *&v328 = v51;
  *(&v328 + 1) = v54;
  v55 = v51;
  v282 = v51;
  v283 = v54;
  v56 = v54;
  v57 = swift_getOpaqueTypeMetadata2();
  v292 = v57;
  v58 = sub_1A5248804();
  *&v328 = v55;
  *(&v328 + 1) = v56;
  v59 = swift_getOpaqueTypeConformance2();
  v336 = v59;
  v337 = v315;
  v280 = swift_getWitnessTable();
  *&v328 = v57;
  *(&v328 + 1) = v58;
  v329 = v59;
  v330 = v280;
  swift_getOpaqueTypeMetadata2();
  v60 = MEMORY[0x1E6980A08];
  v286 = MEMORY[0x1E6980A08];
  sub_1A3F1C93C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v279 = sub_1A5248804();
  v61 = v310;
  v62 = swift_getWitnessTable();
  v63 = v284;
  v64 = swift_getAssociatedConformanceWitness();
  v281 = v64;
  *&v328 = v292;
  *(&v328 + 1) = v58;
  v329 = v59;
  v330 = v280;
  v65 = swift_getOpaqueTypeConformance2();
  v294 = MEMORY[0x1E6980A18];
  v66 = sub_1A3F17CC4(&qword_1EB1277D0, &qword_1EB1277C8, v60);
  v334 = v65;
  v335 = v66;
  v67 = v279;
  v68 = swift_getWitnessTable();
  *&v328 = v61;
  *(&v328 + 1) = v63;
  v329 = v63;
  v330 = v67;
  v69 = v63;
  v331 = v62;
  v332 = v64;
  v333 = v68;
  sub_1A5243E24();
  v70 = swift_getAssociatedTypeWitness();
  v292 = swift_getAssociatedConformanceWitness();
  v293 = v70;
  *&v328 = v70;
  *(&v328 + 1) = v312;
  v329 = v292;
  v330 = v285;
  type metadata accessor for LemonadeShelfItemLoadingStatusModifier();
  v71 = sub_1A5248804();
  v72 = sub_1A5248804();
  v73 = swift_getWitnessTable();
  v74 = swift_getWitnessTable();
  v327[28] = v73;
  v327[29] = v74;
  v312 = v71;
  v75 = swift_getWitnessTable();
  v76 = v315;
  v327[26] = v75;
  v327[27] = v315;
  v285 = v72;
  v280 = swift_getWitnessTable();
  *&v328 = v71;
  *(&v328 + 1) = v72;
  v329 = v75;
  v330 = v280;
  v279 = swift_getOpaqueTypeMetadata2();
  *&v328 = v310;
  *(&v328 + 1) = v69;
  v329 = v69;
  v330 = v282;
  v331 = v62;
  v332 = v281;
  v333 = v283;
  v77 = sub_1A52420C4();
  v78 = sub_1A5248804();
  v79 = swift_getWitnessTable();
  v327[24] = v79;
  v327[25] = v76;
  v80 = swift_getWitnessTable();
  *&v328 = v77;
  *(&v328 + 1) = v78;
  v329 = v79;
  v330 = v80;
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  *&v328 = v312;
  *(&v328 + 1) = v285;
  v329 = v75;
  v330 = v280;
  v81 = swift_getOpaqueTypeConformance2();
  *&v328 = v77;
  *(&v328 + 1) = v78;
  v329 = v79;
  v330 = v80;
  v82 = swift_getOpaqueTypeConformance2();
  v327[22] = v81;
  v327[23] = v82;
  swift_getWitnessTable();
  sub_1A524B784();
  v83 = sub_1A5248804();
  v327[20] = swift_getWitnessTable();
  v327[21] = MEMORY[0x1E697E5D8];
  v84 = swift_getWitnessTable();
  *&v328 = v83;
  *(&v328 + 1) = v84;
  v85 = swift_getOpaqueTypeMetadata2();
  sub_1A3EFDB80(255, &qword_1EB120960, type metadata accessor for PHCollectionSortKey, v316);
  v87 = v86;
  *&v328 = v83;
  *(&v328 + 1) = v84;
  v88 = swift_getOpaqueTypeConformance2();
  v89 = sub_1A3F1B1BC();
  *&v328 = v85;
  *(&v328 + 1) = v87;
  v329 = v88;
  v330 = v89;
  swift_getOpaqueTypeMetadata2();
  v90 = sub_1A5249754();
  *&v328 = v291;
  *(&v328 + 1) = v295;
  v329 = v290;
  v330 = v289;
  v91 = swift_getOpaqueTypeConformance2();
  *&v328 = v85;
  *(&v328 + 1) = v87;
  v329 = v88;
  v330 = v89;
  v92 = swift_getOpaqueTypeConformance2();
  v327[18] = v91;
  v327[19] = v92;
  v93 = swift_getWitnessTable();
  v260 = v90;
  v257 = v93;
  v94 = sub_1A524B8B4();
  v258 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v256 = v244 - v95;
  v96 = type metadata accessor for LemonadeShelfBody.ContentBackground();
  v97 = sub_1A5248804();
  v265 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v262 = v244 - v98;
  v259 = v94;
  v99 = swift_getWitnessTable();
  v254 = v96;
  v100 = swift_getWitnessTable();
  v253 = v99;
  v327[16] = v99;
  v327[17] = v100;
  v101 = swift_getWitnessTable();
  *&v328 = v97;
  *(&v328 + 1) = v101;
  v102 = swift_getOpaqueTypeMetadata2();
  v264 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v261 = v244 - v103;
  v268 = v97;
  *&v328 = v97;
  *(&v328 + 1) = v101;
  v255 = v101;
  v312 = swift_getOpaqueTypeConformance2();
  *&v328 = v102;
  *(&v328 + 1) = v312;
  v311 = MEMORY[0x1E69C3110];
  v104 = swift_getOpaqueTypeMetadata2();
  v266 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v263 = v244 - v105;
  v291 = MEMORY[0x1E69C2948];
  sub_1A3EFDB80(255, &qword_1EB1279C0, MEMORY[0x1E69C2948], MEMORY[0x1E6980A08]);
  v269 = v104;
  v106 = sub_1A5248804();
  v271 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v313 = v244 - v107;
  sub_1A3F1B2AC();
  v108 = sub_1A5248804();
  v274 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v314 = v244 - v109;
  sub_1A3F1C93C(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], v286);
  v110 = sub_1A5248804();
  v278 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v315 = v244 - v111;
  v112 = sub_1A5248804();
  v286 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v283 = v244 - v113;
  v114 = sub_1A5248804();
  v287 = *(v114 - 1);
  MEMORY[0x1EEE9AC00](v114);
  v284 = v244 - v115;
  v116 = sub_1A5248804();
  v310 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v295 = v244 - v117;
  v289 = sub_1A5249A34();
  v118 = sub_1A5248804();
  v267 = v102;
  *&v328 = v102;
  *(&v328 + 1) = v312;
  v119 = swift_getOpaqueTypeConformance2();
  v120 = sub_1A3F1B31C(&qword_1EB1279C8, &qword_1EB1279C0, v291);
  v251 = v119;
  v327[14] = v119;
  v327[15] = v120;
  v272 = v106;
  v121 = swift_getWitnessTable();
  v122 = sub_1A3F1D360(&qword_1EB1279E8, sub_1A3F1B2AC);
  v252 = v121;
  v327[12] = v121;
  v327[13] = v122;
  v275 = v108;
  v123 = swift_getWitnessTable();
  v124 = v322;
  v125 = sub_1A3F1B380(&qword_1EB1279B0, &qword_1EB1279A8, MEMORY[0x1E69E7DE0]);
  v270 = v123;
  v327[10] = v123;
  v327[11] = v125;
  v279 = v110;
  v273 = swift_getWitnessTable();
  v327[8] = v273;
  v327[9] = v125;
  v290 = v112;
  v126 = swift_getWitnessTable();
  v127 = MEMORY[0x1E697E040];
  v276 = v126;
  v327[6] = v126;
  v327[7] = MEMORY[0x1E697E040];
  v291 = v114;
  v277 = swift_getWitnessTable();
  v327[4] = v277;
  v327[5] = v127;
  v128 = swift_getWitnessTable();
  v327[2] = swift_getWitnessTable();
  v327[3] = MEMORY[0x1E697E5C0];
  v129 = swift_getWitnessTable();
  v311 = v116;
  *&v328 = v116;
  *(&v328 + 1) = v118;
  v294 = v118;
  v289 = v128;
  v329 = v128;
  v330 = v129;
  v282 = v129;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v285 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v280 = v244 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v131);
  v281 = v244 - v132;
  v133 = sub_1A5246E54();
  v324 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v250 = v244 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = v321;
  v136 = *(v321 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v139 = v244 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v140);
  v142 = v244 - v141;
  sub_1A3EFDB80(0, &qword_1EB128C00, MEMORY[0x1E69E93D8], v316);
  MEMORY[0x1EEE9AC00](v143 - 8);
  v145 = v244 - v144;
  v248 = swift_getWitnessTable();
  MEMORY[0x1A5905890](v135);
  v146 = sub_1A5246E94();
  v249 = *(v146 - 1);
  v147 = *(v249 + 48);
  v316 = v146;
  if (v147(v145, 1) == 1)
  {
    sub_1A3F1B5F4(v145, &qword_1EB128C00, MEMORY[0x1E69E93D8], MEMORY[0x1E69E6720], sub_1A3EFDB80);
    v148 = v124;
  }

  else
  {
    v247 = v133;
    v149 = *(v136 + 16);
    v149(v142, v124, v135);
    v149(v139, v124, v135);
    v150 = v250;
    sub_1A5246E44();
    v151 = sub_1A5246E84();
    v152 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v153 = swift_slowAlloc();
      v245 = v151;
      v154 = v153;
      v246 = swift_slowAlloc();
      *&v328 = v246;
      *v154 = 136446466;
      sub_1A3C41990(v325, v323);
      v155 = *(v136 + 8);
      v244[3] = v152;
      v155(v142, v135);
      sub_1A3C66768();
      sub_1A524EA44();
      sub_1A3C2EF94();
    }

    v156 = *(v136 + 8);
    v156(v142, v135);

    (*(v324 + 8))(v150, v247);
    v156(v139, v135);
    (*(v249 + 8))(v145, v316);
    v148 = v322;
  }

  v157 = v325;
  v158 = v323;
  v159 = sub_1A3F090AC(v148);
  LODWORD(v324) = v159;
  MEMORY[0x1EEE9AC00](v159);
  *&v244[-8] = v157;
  *&v244[-6] = v158;
  *&v244[-4] = v148;
  sub_1A524BC74();
  v160 = v256;
  sub_1A524B8A4();
  v161 = v321;
  LOBYTE(v328) = *(v148 + *(v321 + 36));
  v162 = v262;
  v163 = v259;
  MEMORY[0x1A5906490](&v328, v259, v254, v253);
  (*(v258 + 8))(v160, v163);
  v327[0] = 0xD000000000000011;
  v327[1] = 0x80000001A5307050;
  sub_1A524E384();
  v316 = *(v148 + *(v161 + 52));
  v164 = v296;
  sub_1A5243154();
  v165 = sub_1A5242394();
  (*(*(v165 - 8) + 56))(v164, 0, 1, v165);
  v166 = v261;
  v167 = v268;
  sub_1A524A614();
  sub_1A3F1B5F4(v164, &qword_1EB1292C0, MEMORY[0x1E69C1DE0], MEMORY[0x1E69E6720], sub_1A3EFDB80);
  sub_1A3D5FAFC(&v328);
  (*(v265 + 8))(v162, v167);
  v168 = *(v148 + *(v161 + 48));
  v170 = v298;
  v169 = v299;
  v171 = v325;
  (*(v299 + 16))(v298, v148, v325);
  v172 = (*(v169 + 80) + 40) & ~*(v169 + 80);
  v173 = (v297 + v172 + 7) & 0xFFFFFFFFFFFFFFF8;
  v174 = swift_allocObject();
  v175 = v323;
  v174[2] = v171;
  v174[3] = v175;
  v174[4] = v168;
  v176 = v174 + v172;
  v177 = v322;
  (*(v169 + 32))(v176, v170, v171);
  *(v174 + v173) = v316;

  v178 = v263;
  v179 = v267;
  sub_1A524A6C4();

  (*(v264 + 8))(v166, v179);
  swift_getKeyPath();
  v180 = v300;
  sub_1A3F06368(v161, v300);
  v181 = v301;
  sub_1A5243F94();
  v182 = *(v302 + 8);
  v183 = v180;
  v184 = v303;
  v182(v183, v303);
  v185 = v269;
  sub_1A524A964();

  v182(v181, v184);
  v186 = v178;
  v187 = v321;
  (*(v266 + 8))(v186, v185);
  swift_getKeyPath();
  v328 = *(v177 + *(v187 + 120));
  v188 = sub_1A5243794();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  v189 = v327[0];
  v190 = v306;
  if (v327[0])
  {
    v330 = v188;
    v191 = swift_getWitnessTable();
  }

  else
  {
    v191 = 0;
    *(&v328 + 1) = 0;
    v329 = 0;
    v330 = 0;
  }

  v192 = v283;
  *&v328 = v189;
  v331 = v191;
  v193 = v272;
  v194 = v313;
  sub_1A524A964();

  (*(v271 + 8))(v194, v193);
  sub_1A3C2C598(&v328, &qword_1EB129078, &qword_1EB129080, MEMORY[0x1E69C2558], sub_1A3E792C4);
  swift_getKeyPath();
  sub_1A3F16188(&qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, type metadata accessor for LemonadeItemsLayoutSpec, v317);
  v195 = v304;
  sub_1A3F05278(v187, v304);
  sub_1A3F1B45C(v195, v318, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  sub_1A3F1C4BC(v195, type metadata accessor for LemonadeShelfBodyStyle);
  v196 = v177 + *(v187 + 68);
  v197 = *v196;
  if (*(v196 + 8) == 1)
  {
    LOBYTE(v328) = *v196;
  }

  else
  {

    sub_1A524D254();
    v198 = sub_1A524A014();
    sub_1A5246DF4();

    v177 = v322;
    v199 = v308;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v197, 0);
    (*(v309 + 8))(v199, v190);
    LOBYTE(v197) = v328;
  }

  LOBYTE(v327[0]) = v197;
  v200 = v318;
  v201 = v317;
  v202 = sub_1A43A27C4(v318, v327);
  sub_1A3F1C4BC(v200, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  sub_1A3F1C4BC(v201, type metadata accessor for LemonadeItemsLayoutSpec);
  *&v328 = v202;
  v203 = v275;
  v204 = v314;
  sub_1A524A964();

  (*(v274 + 8))(v204, v203);
  swift_getKeyPath();
  sub_1A3F16188(&qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, type metadata accessor for LemonadeItemsLayoutSpec, v319);
  v205 = v305;
  v206 = v321;
  sub_1A3F05278(v321, v305);
  sub_1A3F1B45C(v205, v320, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  sub_1A3F1C4BC(v205, type metadata accessor for LemonadeShelfBodyStyle);
  v207 = *v196;
  if (*(v196 + 8) == 1)
  {
    LOBYTE(v328) = *v196;
  }

  else
  {

    sub_1A524D254();
    v208 = sub_1A524A014();
    sub_1A5246DF4();

    v177 = v322;
    v209 = v308;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v207, 0);
    (*(v309 + 8))(v209, v190);
    LOBYTE(v207) = v328;
  }

  v210 = v295;
  LOBYTE(v327[0]) = v207;
  v211 = v320;
  v212 = v319;
  sub_1A43A2984(v320, v327);
  v214 = v213;
  sub_1A3F1C4BC(v211, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  sub_1A3F1C4BC(v212, type metadata accessor for LemonadeItemsLayoutSpec);
  *&v328 = v214;
  v215 = v279;
  v216 = v315;
  sub_1A524A964();

  (*(v278 + 8))(v216, v215);
  v217 = v177 + *(v206 + 96);
  v218 = *v217;
  v219 = *(v217 + 8);
  if (*(v217 + 9) != 1)
  {

    sub_1A524D254();
    v220 = sub_1A524A014();
    sub_1A5246DF4();

    v177 = v322;
    v221 = v308;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3F1B4C4(v218, v219, 0);
    (*(v309 + 8))(v221, v190);
  }

  sub_1A524BC74();
  v222 = v284;
  v223 = v290;
  sub_1A524AFD4();
  v286[1](v192, v223);
  sub_1A524BC74();
  v224 = v324;
  v225 = v324 & 1;
  v226 = v291;
  sub_1A524AFD4();
  (*(v287 + 8))(v222, v226);
  if (v224)
  {
    v227 = &selRef_oneShelfExpandingOpacityAnimationType;
    v228 = &selRef_oneShelfExpandingOpacityAnimationDuration;
    v229 = &selRef_oneShelfExpandingOpacityAnimationDelay;
  }

  else
  {
    v230 = v177 + *(v206 + 116);
    v231 = *v230;
    if (*(v230 + 8) == 1)
    {
      LOBYTE(v328) = v231 & 1;
    }

    else
    {

      sub_1A524D254();
      v232 = sub_1A524A014();
      sub_1A5246DF4();

      v233 = v308;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v231, 0);
      (*(v309 + 8))(v233, v190);
      LOBYTE(v231) = v328;
    }

    LOBYTE(v327[0]) = v231 & 1;
    v326 = 1;
    if (static LemonadeShelvesViewModelDisplayState.== infix(_:_:)(v327, &v326))
    {
      v227 = &selRef_allShelvesCollapsingOpacityAnimationType;
      v228 = &selRef_allShelvesCollapsingOpacityAnimationDuration;
      v229 = &selRef_allShelvesCollapsingOpacityAnimationDelay;
    }

    else
    {
      v227 = &selRef_oneShelfCollapsingOpacityAnimationType;
      v228 = &selRef_oneShelfCollapsingOpacityAnimationDuration;
      v229 = &selRef_oneShelfCollapsingOpacityAnimationDelay;
    }
  }

  v234 = sub_1A3EFDE54(v227, v228, v229);
  MEMORY[0x1EEE9AC00](v234);
  v235 = v323;
  *&v244[-8] = v325;
  *&v244[-6] = v235;
  LOBYTE(v244[-4]) = v225;
  swift_checkMetadataState();
  v236 = v280;
  v237 = v311;
  sub_1A524B184();

  (*(v310 + 8))(v210, v237);
  v238 = v285;
  v239 = *(v285 + 16);
  v240 = v281;
  v241 = OpaqueTypeMetadata2;
  v239(v281, v236, OpaqueTypeMetadata2);
  v242 = *(v238 + 8);
  v242(v236, v241);
  v239(v307, v240, v241);
  return (v242)(v240, v241);
}

uint64_t sub_1A3F090AC(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for LemonadeShelfBody();
  v7 = (a1 + *(v6 + 108));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_1A524D254();
    v11 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    v10 = (*(v3 + 8))(v5, v2);
    v8 = v20;
  }

  v12 = (*(*v8 + 136))(v10);

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v14 = a1 + *(v6 + 116);
    v15 = *v14;
    if (*(v14 + 8) == 1)
    {
      v19 = v15 & 1;
    }

    else
    {

      sub_1A524D254();
      v16 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v15, 0);
      (*(v3 + 8))(v5, v2);
      LOBYTE(v15) = v19;
    }

    v18[6] = v15 & 1;
    v18[5] = 1;
    sub_1A3F1D008();
    v13 = sub_1A524C594() ^ 1;
  }

  return v13 & 1;
}

uint64_t sub_1A3F0933C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v198 = a1;
  v206 = a4;
  v204 = type metadata accessor for LemonadeShelfBody();
  v197 = *(v204 - 8);
  v196 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v204);
  v209 = v169 - v6;
  v210 = a3;
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v207 = *(AssociatedConformanceWitness + 16);
  v219 = swift_getAssociatedTypeWitness();
  v217 = sub_1A524CB74();
  v8 = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v237 = v8;
  v238 = a2;
  v10 = a2;
  v239 = v9;
  v240 = v7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v237 = v8;
  v238 = v10;
  v12 = v10;
  v220 = v10;
  v239 = v9;
  v240 = v7;
  v215 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v237 = OpaqueTypeMetadata2;
  v238 = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeMetadata2();
  v15 = sub_1A52497A4();
  v237 = OpaqueTypeMetadata2;
  v238 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v17 = sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688]);
  v237 = v14;
  v238 = v15;
  v239 = v16;
  v240 = v17;
  swift_getOpaqueTypeMetadata2();
  v18 = sub_1A5249754();
  v237 = v14;
  v238 = v15;
  v239 = v16;
  v240 = v17;
  v250 = swift_getOpaqueTypeConformance2();
  v251 = v16;
  v208 = MEMORY[0x1E697F968];
  WitnessTable = swift_getWitnessTable();
  v237 = v18;
  v238 = WitnessTable;
  v20 = swift_getOpaqueTypeMetadata2();
  v237 = v18;
  v238 = WitnessTable;
  v21 = swift_getOpaqueTypeConformance2();
  v237 = v12;
  v238 = v20;
  v239 = v7;
  v240 = v21;
  type metadata accessor for LemonadeItemDetailsNavigationButton();
  v22 = sub_1A5249754();
  v23 = swift_getWitnessTable();
  v24 = sub_1A3F18B84();
  v248 = v23;
  v249 = v24;
  v25 = swift_getWitnessTable();
  v237 = v22;
  v238 = v25;
  v203 = v22;
  v26 = v25;
  v205 = v25;
  v27 = swift_getOpaqueTypeMetadata2();
  sub_1A3F1D1FC(255, &qword_1EB128038, sub_1A3E73AC0, sub_1A3F1B0AC, MEMORY[0x1E697EC08]);
  v213 = v28;
  v29 = v27;
  v202 = v27;
  v30 = sub_1A5248804();
  v237 = v22;
  v238 = v26;
  v31 = swift_getOpaqueTypeConformance2();
  v214 = sub_1A3F1B0E0();
  v246 = v31;
  v247 = v214;
  v211 = MEMORY[0x1E697E858];
  v32 = swift_getWitnessTable();
  v237 = v29;
  v238 = v30;
  v239 = v31;
  v240 = v32;
  v212 = MEMORY[0x1E69C3078];
  swift_getOpaqueTypeMetadata2();
  v33 = MEMORY[0x1E6980A08];
  sub_1A3F1C93C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v34 = sub_1A5248804();
  v35 = v217;
  v36 = swift_getWitnessTable();
  v37 = v219;
  v38 = swift_getAssociatedConformanceWitness();
  v207 = v38;
  v237 = v202;
  v238 = v30;
  v239 = v31;
  v240 = v32;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_1A3F17CC4(&qword_1EB1277D0, &qword_1EB1277C8, v33);
  v244 = v39;
  v245 = v40;
  v41 = swift_getWitnessTable();
  v237 = v35;
  v238 = v37;
  v239 = v37;
  v240 = v34;
  v241 = v36;
  v242 = v38;
  v243 = v41;
  sub_1A5243E24();
  v42 = swift_getAssociatedTypeWitness();
  v43 = swift_getAssociatedConformanceWitness();
  v237 = v42;
  v238 = AssociatedTypeWitness;
  v239 = v43;
  v240 = AssociatedConformanceWitness;
  type metadata accessor for LemonadeShelfItemLoadingStatusModifier();
  v44 = sub_1A5248804();
  v45 = sub_1A5248804();
  v46 = swift_getWitnessTable();
  v47 = swift_getWitnessTable();
  v235 = v46;
  v236 = v47;
  v48 = swift_getWitnessTable();
  v233 = v48;
  v49 = v214;
  v234 = v214;
  AssociatedTypeWitness = v45;
  v50 = swift_getWitnessTable();
  v237 = v44;
  v238 = v45;
  v239 = v48;
  v240 = v50;
  AssociatedConformanceWitness = swift_getOpaqueTypeMetadata2();
  v237 = v217;
  v238 = v219;
  v239 = v219;
  v240 = v203;
  v241 = v36;
  v242 = v207;
  v243 = v205;
  v51 = sub_1A52420C4();
  v52 = sub_1A5248804();
  v53 = swift_getWitnessTable();
  v231 = v53;
  v232 = v49;
  v54 = swift_getWitnessTable();
  v237 = v51;
  v238 = v52;
  v239 = v53;
  v240 = v54;
  swift_getOpaqueTypeMetadata2();
  v55 = sub_1A5249754();
  v237 = v44;
  v238 = AssociatedTypeWitness;
  v239 = v48;
  v240 = v50;
  v56 = swift_getOpaqueTypeConformance2();
  v237 = v51;
  v238 = v52;
  v239 = v53;
  v240 = v54;
  v57 = swift_getOpaqueTypeConformance2();
  v229 = v56;
  v230 = v57;
  v58 = swift_getWitnessTable();
  v186 = v55;
  v182 = v58;
  v59 = sub_1A524B784();
  v183 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v181 = v169 - v60;
  v61 = sub_1A5248804();
  v187 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v185 = v169 - v62;
  v184 = v59;
  v179 = swift_getWitnessTable();
  v227 = v179;
  v228 = MEMORY[0x1E697E5D8];
  v63 = swift_getWitnessTable();
  v237 = v61;
  v238 = v63;
  v64 = swift_getOpaqueTypeMetadata2();
  v194 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v208 = v169 - v65;
  sub_1A3EFDB80(255, &qword_1EB120960, type metadata accessor for PHCollectionSortKey, MEMORY[0x1E69E6720]);
  v67 = v66;
  v188 = v61;
  v237 = v61;
  v238 = v63;
  v180 = v63;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = sub_1A3F1B1BC();
  v205 = v64;
  v237 = v64;
  v238 = v67;
  AssociatedTypeWitness = v67;
  v217 = v68;
  v239 = v68;
  v240 = v69;
  AssociatedConformanceWitness = v69;
  v70 = swift_getOpaqueTypeMetadata2();
  v195 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v193 = v169 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v189 = v169 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v191 = v169 - v75;
  v192 = sub_1A5243D54();
  v190 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v207 = v169 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F1AFEC();
  v77 = swift_getAssociatedTypeWitness();
  v78 = sub_1A5248804();
  v79 = swift_getAssociatedConformanceWitness();
  v225 = v79;
  v80 = v214;
  v226 = v214;
  v81 = swift_getWitnessTable();
  v237 = v77;
  v238 = v78;
  v239 = v79;
  v240 = v81;
  swift_getOpaqueTypeMetadata2();
  v82 = v204;
  swift_getTupleTypeMetadata3();
  v83 = sub_1A524BE24();
  v84 = swift_getWitnessTable();
  v174 = v83;
  v173 = v84;
  v85 = sub_1A524B784();
  v176 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v175 = v169 - v86;
  v87 = sub_1A5248804();
  v88 = swift_getWitnessTable();
  v223 = v88;
  v224 = v80;
  v89 = swift_getWitnessTable();
  v211 = v85;
  v237 = v85;
  v238 = v87;
  v213 = v87;
  v239 = v88;
  v240 = v89;
  v90 = swift_getOpaqueTypeMetadata2();
  v91 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v178 = v169 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v93);
  v177 = v169 - v94;
  v199 = v95;
  v212 = v70;
  v203 = sub_1A5249754();
  v202 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v200 = v169 - v96;
  v97 = sub_1A5249234();
  v98 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v100 = v169 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126A10);
  v214 = [swift_getObjCClassFromMetadata() sharedInstance];
  v101 = v198;
  v102 = *(v198 + v82[12]);
  v103 = sub_1A52427E4();
  if (!shouldUseNewCollectionsLayout()())
  {
    if (v103)
    {
      v201 = v91;
      v104 = v101 + v82[20];
      v106 = *v104;
      v105 = *(v104 + 8);
      v107 = *(v104 + 16);
      if (*(v104 + 32) != 1)
      {
        v172 = *(v104 + 24);
        v171 = v107;
        v170 = v105;

        v169[1] = sub_1A524D254();
        v108 = sub_1A524A014();
        sub_1A5246DF4();

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3D35A84(v106, v170, v171, v172, 0);
        (*(v98 + 8))(v100, v97);
      }

      v91 = v201;
    }

    else
    {
      sub_1A5247BA4();
    }
  }

  v201 = v89;
  v215 = v88;
  v109 = sub_1A5243164();
  swift_checkMetadataState();
  if (sub_1A524CAF4() <= 0)
  {

    MEMORY[0x1EEE9AC00](v129);
    v130 = v220;
    v131 = v91;
    v132 = v210;
    *&v169[-8] = v220;
    *&v169[-6] = v132;
    v133 = v214;
    *&v169[-4] = v101;
    *&v169[-2] = v133;
    sub_1A5249314();
    v134 = v175;
    sub_1A524B774();
    v135 = [v133 enableShelfDrawBorders];
    MEMORY[0x1EEE9AC00](v135);
    *&v169[-4] = v130;
    *&v169[-2] = v132;
    v136 = swift_checkMetadataState();
    v137 = v178;
    v138 = v211;
    v139 = v215;
    v140 = v201;
    sub_1A524A584();
    (*(v176 + 8))(v134, v138);
    v237 = v138;
    v238 = v136;
    v239 = v139;
    v240 = v140;
    v220 = swift_getOpaqueTypeConformance2();
    v141 = *(v131 + 16);
    v142 = v177;
    v143 = v199;
    v141(v177, v137, v199);
    v144 = *(v131 + 8);
    v144(v137, v143);
    v141(v137, v142, v143);
    v145 = v205;
    v237 = v205;
    v238 = AssociatedTypeWitness;
    v239 = v217;
    v240 = AssociatedConformanceWitness;
    swift_getOpaqueTypeConformance2();
    v146 = v200;
    sub_1A3DF4798(v137, v143);

    v147 = v137;
    v148 = v213;
    v149 = v138;
    v144(v147, v143);
    v144(v142, v143);
  }

  else
  {
    v110 = v207;
    sub_1A3F05D30(v82, v207);
    v111 = sub_1A3F05654(v82);
    MEMORY[0x1EEE9AC00](v111);
    v112 = v210;
    *&v169[-16] = v220;
    *&v169[-14] = v112;
    *&v169[-12] = v101;
    *&v169[-10] = v110;
    *&v169[-8] = v113;
    *&v169[-6] = v109;
    v114 = v214;
    *&v169[-4] = v102;
    *&v169[-2] = v114;
    sub_1A5249314();
    v115 = v181;
    sub_1A524B774();

    v116 = v185;
    v117 = v184;
    sub_1A524B0C4();
    (*(v183 + 8))(v115, v117);
    v118 = v197;
    v119 = v209;
    v186 = *(v197 + 16);
    v186(v209, v101, v82);
    v120 = (*(v118 + 80) + 32) & ~*(v118 + 80);
    v196 += v120;
    v121 = swift_allocObject();
    *(v121 + 16) = v220;
    *(v121 + 24) = v112;
    v122 = *(v118 + 32);
    v219 = v120;
    v122(v121 + v120, v119, v82);
    v123 = v188;
    sub_1A524A4D4();

    (*(v187 + 8))(v116, v123);
    sub_1A3F1B4DC(v101 + v82[14], &v237, &qword_1EB129A90, &qword_1EB129A98);
    v124 = v240;
    if (v240)
    {
      v125 = v241;
      __swift_project_boxed_opaque_existential_1(&v237, v240);
      v126 = (*(v125 + 32))(v124, v125);
      v127 = v126;
      v128 = HIDWORD(v126) & 1;
      __swift_destroy_boxed_opaque_existential_0(&v237);
    }

    else
    {
      sub_1A3C2C598(&v237, &qword_1EB129A90, &qword_1EB129A98, &protocol descriptor for LemonadeShelfContainerModel, sub_1A3E792C4);
      v127 = 0;
      LOBYTE(v128) = 1;
    }

    LODWORD(v237) = v127;
    BYTE4(v237) = v128;
    v150 = v209;
    v186(v209, v101, v82);
    v151 = swift_allocObject();
    v152 = v210;
    *(v151 + 16) = v220;
    *(v151 + 24) = v152;
    v122(v151 + v219, v150, v82);
    v153 = swift_checkMetadataState();
    v154 = v189;
    v145 = v205;
    v155 = v217;
    v156 = AssociatedConformanceWitness;
    v157 = v208;
    sub_1A524B144();

    (*(v194 + 8))(v157, v145);
    v237 = v145;
    v238 = v153;
    v239 = v155;
    v240 = v156;
    v220 = swift_getOpaqueTypeConformance2();
    v158 = v195;
    v159 = *(v195 + 16);
    v160 = v191;
    v161 = v212;
    v159(v191, v154, v212);
    v162 = *(v158 + 8);
    v162(v154, v161);
    v163 = v193;
    v159(v193, v160, v161);
    v149 = v211;
    v148 = v213;
    v237 = v211;
    v238 = v213;
    v140 = v201;
    v239 = v215;
    v240 = v201;
    swift_getOpaqueTypeConformance2();
    v146 = v200;
    sub_1A3DF4890(v163, v199, v161);

    v162(v163, v161);
    v162(v160, v161);
    (*(v190 + 8))(v207, v192);
  }

  v237 = v149;
  v238 = v148;
  v239 = v215;
  v240 = v140;
  v164 = swift_getOpaqueTypeConformance2();
  v237 = v145;
  v238 = AssociatedTypeWitness;
  v239 = v217;
  v240 = AssociatedConformanceWitness;
  v165 = swift_getOpaqueTypeConformance2();
  v221 = v164;
  v222 = v165;
  v166 = v203;
  swift_getWitnessTable();
  v167 = v202;
  (*(v202 + 16))(v206, v146, v166);
  return (*(v167 + 8))(v146, v166);
}

uint64_t sub_1A3F0AF5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a2;
  v79 = a5;
  v8 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v74 = &v57 - v10;
  sub_1A3F1D1FC(255, &qword_1EB128038, sub_1A3E73AC0, sub_1A3F1B0AC, MEMORY[0x1E697EC08]);
  v11 = sub_1A5248804();
  v75 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = sub_1A3F1B0E0();
  v130 = AssociatedConformanceWitness;
  v131 = v13;
  WitnessTable = swift_getWitnessTable();
  v100 = AssociatedTypeWitness;
  v101 = v11;
  v68 = WitnessTable;
  v69 = v11;
  v73 = AssociatedConformanceWitness;
  v102 = AssociatedConformanceWitness;
  v103 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v83 = OpaqueTypeMetadata2;
  v84 = v16;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v82 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v57 - v19;
  v20 = sub_1A5249234();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a3;
  OpaqueTypeConformance2 = a4;
  v24 = type metadata accessor for LemonadeShelfBody();
  v59 = v20;
  v60 = v24;
  v25 = *(v24 + 80);
  v72 = a1;
  v26 = a1 + v25;
  v27 = *v26;
  v28 = *(v26 + 8);
  v30 = *(v26 + 16);
  v29 = *(v26 + 24);
  v61 = *(v26 + 32);
  v57 = v23;
  v58 = v21;
  v71 = v29;
  v80 = v30;
  v66 = v27;
  v67 = v28;
  if (v61 == 1)
  {
    v126 = v27;
    v127 = v28;
    v128 = v30;
    v129 = v29;
  }

  else
  {

    sub_1A524D254();
    v31 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v27, v28, v80, v29, 0);
    (*(v21 + 8))(v23, v20);
  }

  sub_1A524BC74();
  sub_1A52481F4();
  v62 = v132;
  v63 = v134;
  v64 = v137;
  v65 = v136;
  v125 = 1;
  v123 = v133;
  v121 = v135;
  v32 = v74;
  v33 = v70;
  (*(v75 + 224))(*(v72 + *(v60 + 40)), v70);
  v34 = [v76 enableShelfDrawBorders];
  v35 = v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = OpaqueTypeConformance2;
  *(&v57 - 2) = v33;
  *(&v57 - 1) = v36;
  v37 = swift_checkMetadataState();
  v38 = v82;
  v39 = v73;
  v40 = v68;
  sub_1A524A584();
  (*(v78 + 1))(v35, AssociatedTypeWitness);
  v100 = AssociatedTypeWitness;
  v101 = v37;
  v102 = v39;
  v103 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v83;
  v42 = v84;
  v76 = *(v84 + 16);
  (v76)(v81, v38, v83);
  v43 = *(v42 + 8);
  v84 = v42 + 8;
  v78 = v43;
  v43(v38, v41);
  if (v61)
  {
    v116 = v66;
    v117 = v67;
    v118 = v80;
    v119 = v71;
  }

  else
  {
    v44 = v66;

    sub_1A524D254();
    v45 = sub_1A524A014();
    sub_1A5246DF4();

    v46 = v57;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v44, v67, v80, v71, 0);
    (*(v58 + 8))(v46, v59);
  }

  sub_1A524BC74();
  sub_1A52481F4();
  v47 = v138;
  v48 = v140;
  v49 = v142;
  v50 = v143;
  v115 = 1;
  v113 = v139;
  v111 = v141;
  v100 = 0;
  LOBYTE(v101) = v125;
  *(&v101 + 1) = *v124;
  HIDWORD(v101) = *&v124[3];
  v102 = v62;
  LOBYTE(v103) = v123;
  *(&v103 + 1) = *v122;
  HIDWORD(v103) = *&v122[3];
  v104 = v63;
  v105 = v121;
  *&v106[3] = *&v120[3];
  *v106 = *v120;
  v107 = v65;
  v108 = v64;
  v109[0] = &v100;
  v51 = v81;
  v52 = v82;
  v53 = v83;
  (v76)(v82, v81, v83);
  v89 = 0;
  v90 = v115;
  *v91 = *v114;
  *&v91[3] = *&v114[3];
  v92 = v47;
  v93 = v113;
  *v94 = *v112;
  *&v94[3] = *&v112[3];
  v95 = v48;
  v96 = v111;
  *v97 = *v110;
  *&v97[3] = *&v110[3];
  v98 = v49;
  v99 = v50;
  v109[1] = v52;
  v109[2] = &v89;
  sub_1A3F1AFEC();
  v88[0] = v54;
  v88[1] = v53;
  v88[2] = v54;
  v85 = sub_1A3F1CF90();
  v86 = OpaqueTypeConformance2;
  v87 = v85;
  sub_1A3DF4988(v109, 3uLL, v88);
  v55 = v78;
  v78(v51, v53);
  return v55(v52, v53);
}

uint64_t sub_1A3F0B748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v166 = a8;
  v140 = a6;
  v150 = a4;
  v155 = a3;
  v149 = a2;
  v164 = a1;
  v142 = a9;
  v151 = a5;
  v11 = (*a5 + *MEMORY[0x1E69C1FC8]);
  v12 = *v11;
  v167 = sub_1A524CB74();
  v13 = *(a8 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A52497A4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688]);
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  v178 = swift_getOpaqueTypeConformance2();
  v179 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v169 = a7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v163 = a7;
  v171 = v13;
  v172 = swift_getOpaqueTypeConformance2();
  type metadata accessor for LemonadeItemDetailsNavigationButton();
  v15 = sub_1A5249754();
  WitnessTable = swift_getWitnessTable();
  v165 = v11[1];
  v176 = swift_getWitnessTable();
  v177 = sub_1A3F18B84();
  v16 = swift_getWitnessTable();
  v169 = v167;
  OpaqueTypeMetadata2 = v12;
  v160 = v12;
  v171 = v12;
  v172 = v15;
  v173 = WitnessTable;
  v174 = v165;
  v175 = v16;
  v17 = sub_1A52420C4();
  v129 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v128 = v115 - v18;
  sub_1A3F1D1FC(255, &qword_1EB128038, sub_1A3E73AC0, sub_1A3F1B0AC, MEMORY[0x1E697EC08]);
  v158 = v19;
  v20 = sub_1A5248804();
  v21 = swift_getWitnessTable();
  v22 = sub_1A3F1B0E0();
  v168[9] = v21;
  v168[10] = v22;
  v23 = v22;
  v159 = v22;
  v24 = swift_getWitnessTable();
  v141 = v17;
  v169 = v17;
  OpaqueTypeMetadata2 = v20;
  v154 = v20;
  v153 = v21;
  v171 = v21;
  v172 = v24;
  v152 = v24;
  v156 = MEMORY[0x1E69C3078];
  v162 = swift_getOpaqueTypeMetadata2();
  v126 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v125 = v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v124 = v115 - v27;
  v147 = sub_1A5242C84();
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v122 = v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v145 = v115 - v30;
  v144 = type metadata accessor for LemonadeShelfBody();
  v148 = *(v144 - 1);
  v136 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v138 = v115 - v31;
  sub_1A3EFDB80(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v131 = v115 - v33;
  v34 = sub_1A5244094();
  MEMORY[0x1EEE9AC00](v34 - 8);
  v130 = v115 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1A5243D54();
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v157 = v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = v15;
  OpaqueTypeMetadata2 = v16;
  v37 = swift_getOpaqueTypeMetadata2();
  v38 = sub_1A5248804();
  v127 = v15;
  v169 = v15;
  OpaqueTypeMetadata2 = v16;
  v123 = v16;
  v39 = swift_getOpaqueTypeConformance2();
  v168[7] = v39;
  v168[8] = v23;
  v40 = swift_getWitnessTable();
  v169 = v37;
  OpaqueTypeMetadata2 = v38;
  v171 = v39;
  v172 = v40;
  swift_getOpaqueTypeMetadata2();
  v41 = MEMORY[0x1E6980A08];
  sub_1A3F1C93C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v42 = sub_1A5248804();
  v169 = v37;
  OpaqueTypeMetadata2 = v38;
  v171 = v39;
  v172 = v40;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = sub_1A3F17CC4(&qword_1EB1277D0, &qword_1EB1277C8, v41);
  v168[5] = v43;
  v168[6] = v44;
  v45 = swift_getWitnessTable();
  v169 = v167;
  OpaqueTypeMetadata2 = v160;
  v171 = v160;
  v172 = v42;
  v115[10] = v42;
  v173 = WitnessTable;
  v174 = v165;
  v115[5] = v45;
  v175 = v45;
  v46 = sub_1A5243E24();
  v115[11] = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v115[9] = v115 - v47;
  v48 = v163;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v115[12] = v13;
  v52 = swift_getAssociatedConformanceWitness();
  v169 = AssociatedTypeWitness;
  OpaqueTypeMetadata2 = v50;
  v171 = AssociatedConformanceWitness;
  v172 = v52;
  v53 = type metadata accessor for LemonadeShelfItemLoadingStatusModifier();
  v54 = sub_1A5248804();
  v115[8] = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v115[7] = v115 - v55;
  v56 = sub_1A5248804();
  v57 = swift_getWitnessTable();
  v115[2] = v53;
  v58 = swift_getWitnessTable();
  v115[1] = v57;
  v168[3] = v57;
  v168[4] = v58;
  v59 = swift_getWitnessTable();
  v168[1] = v59;
  v168[2] = v159;
  v60 = swift_getWitnessTable();
  v160 = v54;
  v169 = v54;
  OpaqueTypeMetadata2 = v56;
  v159 = v56;
  v139 = v59;
  v171 = v59;
  v172 = v60;
  v158 = v60;
  v61 = swift_getOpaqueTypeMetadata2();
  v115[6] = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v115[4] = v115 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v115[3] = v115 - v64;
  v116 = swift_getAssociatedTypeWitness();
  v121 = sub_1A524DF24();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  KeyPath = v115 - v65;
  v119 = sub_1A5249234();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v117 = v115 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v67);
  v69 = v115 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for LemonadeShelfBodyStyle(0);
  MEMORY[0x1EEE9AC00](v70);
  v115[0] = v115 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v74 = v115 - v73;
  v137 = v61;
  v135 = sub_1A5249754();
  v134 = *(v135 - 8);
  v75 = MEMORY[0x1EEE9AC00](v135);
  v156 = v115 - v76;
  v165 = (*(v166 + 304))(v48, v75);
  v77 = v144;
  sub_1A3F05278(v144, v74);
  sub_1A3F1B45C(v74, v69, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  sub_1A3F1C4BC(v74, type metadata accessor for LemonadeShelfBodyStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v79 = *v69;
  v80 = *(v69 + 1);
  v81 = v69[16];
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3D6D890(*v69, *(v69 + 1), v69[16]);
    sub_1A3C4208C(*(v69 + 3), *(v69 + 4), v69[40]);
    sub_1A3C47A98();
    v83 = v146;
    v84 = v145;
    v85 = v147;
    v86 = (*(v146 + 32))(v145, &v69[*(v82 + 64)], v147);
    v168[0] = v150;
    MEMORY[0x1EEE9AC00](v86);
    KeyPath = swift_getKeyPath();
    (*(v132 + 16))(v157, v149, v133);
    (*(v83 + 16))(v122, v84, v85);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v145 = v70;
  v146 = v46;
  v147 = *(v69 + 3);
  LODWORD(v127) = v69[32];
  v87 = *(v69 + 5);
  v88 = *(v69 + 7);
  v89 = *(v69 + 9);
  v90 = *(v69 + 10);
  LODWORD(v129) = v69[89];
  sub_1A3C4208C(v89, v90, v69[88]);
  sub_1A3F1BD68(v88);
  sub_1A3F1BD68(v87);
  sub_1A3D6D890(v79, v80, v81);
  v91 = v164;
  v92 = v164 + v77[24];
  v93 = *(v92 + 8);
  if (*(v92 + 9) != 1)
  {
    v94 = *v92;

    sub_1A524D254();
    v95 = sub_1A524A014();
    sub_1A5246DF4();

    v96 = v117;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3F1B4C4(v94, v93, 0);
    (*(v118 + 8))(v96, v119);
    LODWORD(v93) = OpaqueTypeMetadata2;
  }

  v97 = v166;
  v98 = v163;
  v99 = v147;
  if ((v93 & 1) == 0)
  {
    v99 = 0;
  }

  v128 = v99;
  v100 = KeyPath;
  v147 = *(v91 + v77[13]);
  sub_1A52431B4();
  (*(*(v116 - 8) + 56))(v100, 0, 1);
  v101 = v91 + v77[17];
  v102 = *v101;
  if (*(v101 + 8) == 1)
  {
    LOBYTE(v169) = *v101;
  }

  else
  {

    sub_1A524D254();
    v103 = sub_1A524A014();
    sub_1A5246DF4();

    v104 = v117;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v102, 0);
    (*(v118 + 8))(v104, v119);
    LOBYTE(v102) = v169;
  }

  v105 = v150;
  LOBYTE(v168[0]) = v102;
  v106 = KeyPath;
  v107 = (*(v97 + 280))(KeyPath, v168, *(v91 + v77[11]), v98, v97);
  (*(v120 + 8))(v106, v121);
  v108 = v149;
  result = sub_1A5243D24();
  v110 = result * v155;
  if ((result * v155) >> 64 != (result * v155) >> 63)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v155 + 0x4000000000000000 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v111 = 2 * v155 * v107;
  if ((2 * v155 * v107) >> 64 != v111 >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v112 = __OFSUB__(v110, v111);
  v113 = v110 - v111;
  if (v112)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v112 = __OFADD__(v113, v107);
  v114 = v113 + v107;
  if (!v112)
  {
    LODWORD(v127) = v93 ^ 1 | v127;
    v150 = v114 & ~(v114 >> 63);
    v168[0] = v105;
    MEMORY[0x1EEE9AC00](result);
    v148 = v107;
    KeyPath = swift_getKeyPath();
    (*(v132 + 16))(v157, v108, v133);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1A3F0D76C(uint64_t a1)
{
  v3 = sub_1A5249234();
  v14[0] = *(v3 - 8);
  v14[1] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A52486A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5242D14();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  v17 = v1;
  sub_1A3F15F50(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v11);
  sub_1A3F15F50(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v7);
  v12 = sub_1A41875F0(sub_1A3F1CEB4, v15, v11, v7);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_1A43A223C();
  }

  return 0;
}

uint64_t sub_1A3F0DADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LemonadeShelfBody();
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

double sub_1A3F0DC00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(*(a2 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  sub_1A52431B4();
  v9 = (*(v4 + 232))(a1, v8, v3, v4);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return v9;
}

uint64_t sub_1A3F0DD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v99 = a7;
  v94 = a3;
  v95 = a5;
  v93 = a4;
  v89 = a1;
  v97 = a8;
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v92 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1A5249234();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1A5242D14();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v98 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v109 = AssociatedTypeWitness;
  v110 = a6;
  v111 = AssociatedConformanceWitness;
  v112 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v109 = AssociatedTypeWitness;
  v110 = a6;
  v111 = AssociatedConformanceWitness;
  v112 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v109 = OpaqueTypeMetadata2;
  v110 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeMetadata2();
  v21 = sub_1A52497A4();
  v109 = OpaqueTypeMetadata2;
  v110 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688]);
  v109 = v20;
  v110 = v21;
  v111 = v22;
  v112 = v23;
  swift_getOpaqueTypeMetadata2();
  v24 = sub_1A5249754();
  v109 = v20;
  v110 = v21;
  v111 = v22;
  v112 = v23;
  v107 = swift_getOpaqueTypeConformance2();
  v108 = v22;
  WitnessTable = swift_getWitnessTable();
  v109 = v24;
  v110 = WitnessTable;
  v26 = swift_getOpaqueTypeMetadata2();
  v109 = v24;
  v110 = WitnessTable;
  v27 = swift_getOpaqueTypeConformance2();
  v109 = a6;
  v110 = v26;
  v111 = v15;
  v112 = v27;
  type metadata accessor for LemonadeItemDetailsNavigationButton();
  v28 = sub_1A5249754();
  v88 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v72 - v29;
  v31 = swift_getWitnessTable();
  v32 = sub_1A3F18B84();
  v105 = v31;
  v106 = v32;
  v33 = swift_getWitnessTable();
  v109 = v28;
  v110 = v33;
  v34 = swift_getOpaqueTypeMetadata2();
  v86 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v72 - v35;
  sub_1A3F1D1FC(255, &qword_1EB128038, sub_1A3E73AC0, sub_1A3F1B0AC, MEMORY[0x1E697EC08]);
  v37 = sub_1A5248804();
  v109 = v28;
  v110 = v33;
  v80 = v33;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_1A3F1B0E0();
  v103 = v38;
  v104 = v39;
  v40 = swift_getWitnessTable();
  v77 = v34;
  v109 = v34;
  v110 = v37;
  v85 = v38;
  v111 = v38;
  v112 = v40;
  v76 = v40;
  v41 = swift_getOpaqueTypeMetadata2();
  v82 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v72 - v42;
  sub_1A3F1C93C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v83 = v41;
  v78 = sub_1A5248804();
  v84 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v72 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v81 = &v72 - v46;
  v96 = a6;
  v47 = type metadata accessor for LemonadeShelfBody();
  v87 = v30;
  sub_1A3F0E964(v89, v47, v30);
  sub_1A3F15F50(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v98);
  v48 = a2 + v47[17];
  v49 = *v48;
  if (*(v48 + 8) == 1)
  {
    LOBYTE(v109) = *v48;
  }

  else
  {

    sub_1A524D254();
    v50 = sub_1A524A014();
    sub_1A5246DF4();

    v51 = v72;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v49, 0);
    (*(v73 + 8))(v51, v74);
    LOBYTE(v49) = v109;
  }

  v102 = v49;
  v75 = a2;
  v52 = v92;
  sub_1A3F16188(&unk_1EB128A40, sub_1A3DC7D88, sub_1A3DC7D88, v92);
  v53 = v98;
  v54 = v87;
  sub_1A43A3C04(v94, v93 & 1, v98, &v102, v28, v80, v36);
  sub_1A3F1C4BC(v52, sub_1A3DC7D88);
  (*(v90 + 8))(v53, v91);
  (*(v88 + 8))(v54, v28);
  v55 = [v95 enableShelfDrawBorders];
  MEMORY[0x1EEE9AC00](v55);
  v56 = v99;
  *(&v72 - 2) = v96;
  *(&v72 - 1) = v56;
  v57 = swift_checkMetadataState();
  v58 = v43;
  v59 = v77;
  v60 = v85;
  v61 = v76;
  sub_1A524A584();
  (*(v86 + 8))(v36, v59);
  swift_getKeyPath();
  v102 = sub_1A3F0F1C4(v47);
  v109 = v59;
  v110 = v57;
  v111 = v60;
  v112 = v61;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v79;
  v64 = v83;
  sub_1A524A964();

  (*(v82 + 8))(v58, v64);
  v65 = sub_1A3F17CC4(&qword_1EB1277D0, &qword_1EB1277C8, MEMORY[0x1E6980A08]);
  v100 = v62;
  v101 = v65;
  v66 = v78;
  swift_getWitnessTable();
  v67 = v84;
  v68 = *(v84 + 16);
  v69 = v81;
  v68(v81, v63, v66);
  v70 = *(v67 + 8);
  v70(v63, v66);
  v68(v97, v69, v66);
  return (v70)(v69, v66);
}

uint64_t sub_1A3F0E964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a1;
  v73 = a3;
  v4 = *(a2 + 16);
  v66 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v68 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(v6 + 24);
  v7 = *(v67 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v80 = AssociatedTypeWitness;
  v81 = v4;
  v82 = AssociatedConformanceWitness;
  v83 = v7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v80 = AssociatedTypeWitness;
  v81 = v4;
  v82 = AssociatedConformanceWitness;
  v83 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v80 = OpaqueTypeMetadata2;
  v81 = OpaqueTypeConformance2;
  v12 = swift_getOpaqueTypeMetadata2();
  v13 = sub_1A52497A4();
  v80 = OpaqueTypeMetadata2;
  v81 = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeConformance2();
  v15 = sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688]);
  v80 = v12;
  v81 = v13;
  v82 = v14;
  v83 = v15;
  swift_getOpaqueTypeMetadata2();
  v16 = sub_1A5249754();
  v80 = v12;
  v81 = v13;
  v17 = a2;
  v82 = v14;
  v83 = v15;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = v14;
  WitnessTable = swift_getWitnessTable();
  v80 = v16;
  v81 = WitnessTable;
  v19 = swift_getOpaqueTypeMetadata2();
  v80 = v16;
  v81 = WitnessTable;
  v20 = swift_getOpaqueTypeConformance2();
  v80 = v4;
  v81 = v19;
  v63 = v19;
  v82 = v7;
  v83 = v20;
  v61 = v20;
  v21 = type metadata accessor for LemonadeItemDetailsNavigationButton();
  v62 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v65 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v64 = &v57 - v24;
  swift_getAssociatedTypeWitness();
  v60 = v7;
  swift_getAssociatedConformanceWitness();
  v25 = swift_getAssociatedTypeWitness();
  v74 = *(v25 - 8);
  v75 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v57 - v29;
  v31 = sub_1A5249754();
  v70 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v69 = &v57 - v32;
  v33 = v17;
  v34 = v17;
  v35 = v72;
  if (sub_1A3F11758(v71, v34))
  {
    swift_checkMetadataState();
    sub_1A5242604();
    v36 = *(v74 + 16);
    v59 = v30;
    v36(v27, v30, v75);
    v37 = v66[2];
    v38 = v62;
    v71 = v31;
    v39 = v68;
    v40 = v37(v68, v35, v4);
    v66 = &v57;
    v41 = *(v33 + 40);
    v58 = v27;
    v42 = *(v35 + v41);
    MEMORY[0x1EEE9AC00](v40);
    v43 = v67;
    *(&v57 - 6) = v4;
    *(&v57 - 5) = v43;

    swift_unknownObjectRetain();
    v56 = v61;
    v55 = v60;
    v44 = v65;
    v45 = v39;
    v31 = v71;
    sub_1A472B100(v58, v45, v42, sub_1A3F1C92C, v4, v65, v63);
    swift_getWitnessTable();
    v46 = *(v38 + 16);
    v47 = v64;
    v46(v64, v44, v21);
    v48 = *(v38 + 8);
    v48(v44, v21);
    v46(v44, v47, v21);
    sub_1A3F18B84();
    v49 = v69;
    sub_1A3DF4798(v44, v21);
    swift_unknownObjectRelease();
    v48(v44, v21);
    v48(v47, v21);
    (*(v74 + 8))(v59, v75);
  }

  else
  {
    swift_getWitnessTable();
    v50 = sub_1A3F18B84();
    v49 = v69;
    sub_1A3DF4890(v50, v21, &type metadata for MissingModelPlaceholder);
  }

  v51 = swift_getWitnessTable();
  v52 = sub_1A3F18B84();
  v76 = v51;
  v77 = v52;
  swift_getWitnessTable();
  v53 = v70;
  (*(v70 + 16))(v73, v49, v31);
  return (*(v53 + 8))(v49, v31);
}

uint64_t sub_1A3F0F16C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A5248ED4();
  *a1 = result & 1;
  return result;
}

BOOL sub_1A3F0F1C4(int *a1)
{
  v3 = sub_1A5243D54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5249234();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1 + a1[17];
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    v13 = *v11;
  }

  else
  {

    sub_1A524D254();
    v14 = sub_1A524A014();
    v20 = v1;
    v15 = a1;
    v16 = v4;
    v17 = v14;
    sub_1A5246DF4();

    v4 = v16;
    a1 = v15;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v12, 0);
    (*(v8 + 8))(v10, v7);
    v13 = v21;
  }

  if ((v13 & 0xFE) != 2)
  {
    return 0;
  }

  sub_1A3F05D30(a1, v6);
  v18 = sub_1A5243D24();
  (*(v4 + 8))(v6, v3);
  return v18 > 1;
}

uint64_t sub_1A3F0F408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v22 = a2;
  v23 = a5;
  v7 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A52497A4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688]);
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  v26 = swift_getOpaqueTypeConformance2();
  v27 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v28 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = v7;
  v31 = swift_getOpaqueTypeConformance2();
  type metadata accessor for LemonadeItemDetailsNavigationButton();
  v9 = sub_1A5249754();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  v16 = type metadata accessor for LemonadeShelfBody();
  sub_1A3F0E964(a1, v16, v12);
  WitnessTable = swift_getWitnessTable();
  v18 = sub_1A3F18B84();
  v24 = WitnessTable;
  v25 = v18;
  swift_getWitnessTable();
  v19 = *(v10 + 16);
  v19(v15, v12, v9);
  v20 = *(v10 + 8);
  v20(v12, v9);
  v19(v23, v15, v9);
  return (v20)(v15, v9);
}

uint64_t sub_1A3F0F7C8()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v0 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  result = sub_1A52427E4();
  if ((result & 1) == 0)
  {
    sub_1A5243164();
    sub_1A524CB74();
    swift_getWitnessTable();
    sub_1A524D074();

    return sub_1A5242814();
  }

  return result;
}

uint64_t sub_1A3F0F934@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v65 = a7;
  v66 = a6;
  v59 = a3;
  v60 = a5;
  v8 = *a2;
  v57 = a2;
  v58 = a4;
  v9 = v8;
  v10 = *a4;
  v52 = sub_1A52423D4();
  v64 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v62 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1A5246F24();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[6] = *(*(v9 + *MEMORY[0x1E69C1FC8]) - 8);
  MEMORY[0x1EEE9AC00](v13);
  v51[1] = v51 - v14;
  v51[7] = v15;
  v16 = sub_1A524DF24();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51[3] = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v51[5] = v51 - v17;
  v67 = v16;
  v63 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v51[4] = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v51[2] = v51 - v21;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v61 = v51 - v24;
  v25 = v10 + *MEMORY[0x1E69C23B8];
  v26 = *(v25 + 24);
  v27 = *(v25 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = sub_1A524DF24();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = v51 - v31;
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v51 - v35;
  sub_1A52423B4();
  sub_1A3F11B48(v68, v59, v58, v60, v66, v32);
  __swift_destroy_boxed_opaque_existential_0(v68);
  v37 = *(v33 + 48);
  v66 = AssociatedTypeWitness;
  if (v37(v32, 1, AssociatedTypeWitness) != 1)
  {
    v64 = v33;
    (*(v33 + 32))(v36, v32, v66);
    sub_1A5242804();
    v54 = v26;
    v56 = v27;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v62 = v36;
    v58 = AssociatedConformanceWitness;
    sub_1A5246224();
  }

  (*(v30 + 8))(v32, v29);
  v38 = sub_1A3C645A4();
  v40 = v53;
  v39 = v54;
  v41 = v56;
  (*(v54 + 16))(v53, v38, v56);
  v42 = v52;
  (*(v64 + 16))(v62, a1, v52);
  v43 = sub_1A5246F04();
  v44 = sub_1A524D244();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v68[0] = swift_slowAlloc();
    *v45 = 136315394;
    sub_1A3F1D360(&qword_1EB12E7B8, MEMORY[0x1E69C1E10]);
    v46 = v62;
    sub_1A524EA44();
    (*(v64 + 8))(v46, v42);
    sub_1A3C2EF94();
  }

  (*(v64 + 8))(v62, v42);
  (*(v39 + 8))(v40, v41);
  v48 = *MEMORY[0x1E69C1DF8];
  v49 = sub_1A52423C4();
  (*(*(v49 - 8) + 104))(v65, v48, v49);
  sub_1A3F1B558();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A3F1052C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1A3F10670@<X0>(void *a1@<X8>)
{
  result = sub_1A5248E94();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3F106C4@<X0>(void *a1@<X8>)
{
  result = sub_1A5248E54();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3F10718@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v45 = a4;
  v46 = a2;
  v47 = a1;
  v48 = a5;
  sub_1A3F1AFEC();
  v7 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  sub_1A3F1D1FC(255, &qword_1EB128038, sub_1A3E73AC0, sub_1A3F1B0AC, MEMORY[0x1E697EC08]);
  v52 = v8;
  sub_1A5248804();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v89 = sub_1A3F1B0E0();
  v54 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  v53 = MEMORY[0x1E69C3078];
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  v9 = sub_1A524B784();
  v10 = sub_1A5248804();
  v39 = MEMORY[0x1E69817F8];
  v43 = v9;
  WitnessTable = swift_getWitnessTable();
  v87 = v89;
  v42 = WitnessTable;
  v30 = v89;
  v44 = v10;
  v41 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = sub_1A524CB74();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  v50 = a3;
  v31 = v7;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A52497A4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688]);
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  v84 = swift_getOpaqueTypeConformance2();
  v85 = OpaqueTypeConformance2;
  v36 = MEMORY[0x1E697F968];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for LemonadeItemDetailsNavigationButton();
  v12 = sub_1A5249754();
  v82 = swift_getWitnessTable();
  v83 = sub_1A3F18B84();
  v32 = v12;
  v33 = swift_getWitnessTable();
  v28[1] = swift_getOpaqueTypeMetadata2();
  sub_1A5248804();
  v80 = swift_getOpaqueTypeConformance2();
  v81 = v89;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v13 = MEMORY[0x1E6980A08];
  v38 = MEMORY[0x1E6980A08];
  sub_1A3F1C93C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v28[0] = sub_1A5248804();
  v29 = swift_getWitnessTable();
  v35 = swift_getAssociatedConformanceWitness();
  v78 = swift_getOpaqueTypeConformance2();
  v79 = sub_1A3F17CC4(&qword_1EB1277D0, &qword_1EB1277C8, v13);
  swift_getWitnessTable();
  sub_1A5243E24();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LemonadeShelfItemLoadingStatusModifier();
  sub_1A5248804();
  v14 = sub_1A5248804();
  v69 = swift_getWitnessTable();
  v70 = swift_getWitnessTable();
  v67 = swift_getWitnessTable();
  v68 = v89;
  v51 = v14;
  swift_getWitnessTable();
  v37 = swift_getOpaqueTypeMetadata2();
  v75 = v29;
  v76 = v35;
  v77 = v33;
  sub_1A52420C4();
  sub_1A5248804();
  v65 = swift_getWitnessTable();
  v66 = v89;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  v63 = swift_getOpaqueTypeConformance2();
  v64 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  v61 = swift_getWitnessTable();
  v62 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A3EFDB80(255, &qword_1EB120960, type metadata accessor for PHCollectionSortKey, MEMORY[0x1E69E6720]);
  v15 = swift_getOpaqueTypeConformance2();
  v16 = sub_1A3F1B1BC();
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  v73 = v15;
  v74 = v16;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A524B8B4();
  type metadata accessor for LemonadeShelfBody.ContentBackground();
  sub_1A5248804();
  v57 = swift_getWitnessTable();
  v58 = swift_getWitnessTable();
  swift_getWitnessTable();
  v71 = swift_getOpaqueTypeMetadata2();
  v72 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A3EFDB80(255, &qword_1EB1279C0, MEMORY[0x1E69C2948], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F1B2AC();
  sub_1A5248804();
  sub_1A3F1C93C(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], v38);
  sub_1A5248804();
  sub_1A5248804();
  sub_1A5248804();
  sub_1A5248804();
  sub_1A5249A34();
  v17 = sub_1A5248804();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v28 - v22;
  v24 = swift_getWitnessTable();
  sub_1A524B094();
  v55 = v24;
  v56 = MEMORY[0x1E697E5C0];
  swift_getWitnessTable();
  v25 = *(v18 + 16);
  v25(v23, v20, v17);
  v26 = *(v18 + 8);
  v26(v20, v17);
  v25(v48, v23, v17);
  return (v26)(v23, v17);
}

void sub_1A3F1152C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1A52431B4();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = swift_getAssociatedTypeWitness();
  v5[3] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, a1, v2);
  swift_getAssociatedConformanceWitness();
  sub_1A5246424();
}

uint64_t sub_1A3F11758(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = sub_1A5246F24();
  v29 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  result = sub_1A52431A4();
  if (!result)
  {
    v24 = v4;
    v25 = v3;
    v27 = 0;
    v16 = sub_1A3C645A4();
    v17 = *(v29 + 16);
    v26 = v11;
    v17(v13, v16, v11);
    v18 = *(v28 + 16);
    v18(v10, v14, AssociatedTypeWitness);
    v19 = sub_1A5246F04();
    v20 = sub_1A524D254();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v21 = 136446466;
      v18(v7, v10, AssociatedTypeWitness);
      sub_1A524C714();
      (*(v28 + 8))(v10, AssociatedTypeWitness);
      sub_1A3C2EF94();
    }

    (*(v28 + 8))(v10, AssociatedTypeWitness);
    (*(v29 + 8))(v13, v26);
    return v27;
  }

  return result;
}

uint64_t sub_1A3F11B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v45 = a5;
  v44 = a4;
  v43 = a2;
  v50 = a6;
  v48 = a3;
  v7 = (*a3 + *MEMORY[0x1E69C23B8]);
  v8 = *v7;
  v47 = v7[2];
  v46 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52 = v39 - v9;
  sub_1A3EFDB80(0, &unk_1EB129000, MEMORY[0x1E69C28B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v39 - v11;
  v13 = sub_1A5243CC4();
  v49 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v55 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v39 - v16;
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_1A524DF24();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v39 - v21;
  v23 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v51 = v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v39 - v27;
  sub_1A3C2F0BC(a1, v58);
  v29 = swift_dynamicCast();
  v30 = *(v23 + 56);
  if (v29)
  {
    v31 = *(v23 + 56);
    v30(v22, 0, 1, v18);
    v32 = *(v23 + 32);
    v32(v28, v22, v18);
    v33 = v50;
    v32(v50, v28, v18);
    return v31(v33, 0, 1, v18);
  }

  else
  {
    v39[3] = v23;
    v41 = v23 + 56;
    v40 = v30;
    v30(v22, 1, 1, v18);
    (*(v20 + 8))(v22, v19);
    sub_1A5243CA4();
    sub_1A5243CB4();
    v35 = v49;
    v36 = v49 + 8;
    v37 = *(v49 + 8);
    v37(v17, v13);
    v54 = sub_1A3C34400(0, &qword_1EB12B6A8);
    if (swift_dynamicCast())
    {
      v39[1] = v37;
      v39[2] = v36;
      sub_1A3C34460(v56, v58);
      (*(v45 + 272))(v44);
      v38 = *(v35 + 48);
      if (v38(v12, 1, v13) == 1)
      {
        sub_1A5243CA4();
        if (v38(v12, 1, v13) != 1)
        {
          sub_1A3F1B5F4(v12, &unk_1EB129000, MEMORY[0x1E69C28B0], MEMORY[0x1E69E6720], sub_1A3EFDB80);
        }
      }

      else
      {
        (*(v35 + 32))(v55, v12, v13);
      }

      sub_1A52431B4();
      swift_getAssociatedConformanceWitness();
      sub_1A5246344();
    }

    v57 = 0;
    memset(v56, 0, sizeof(v56));
    sub_1A3C2C598(v56, &unk_1EB132ED0, &qword_1EB12B6A8, MEMORY[0x1E69E6A30], sub_1A3E792C4);
    return v40(v50, 1, 1, v18);
  }
}

uint64_t sub_1A3F1274C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for LemonadeShelfBody();
  v9 = a1 + *(result + 68);
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
    sub_1A3C53AEC(v10, 0);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1A3F128C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v67 = a3;
  v68 = a5;
  v63 = a2;
  v69 = a6;
  v70 = a1;
  v7 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v50 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v73 = AssociatedTypeWitness;
  v74 = a4;
  v12 = AssociatedTypeWitness;
  v57 = AssociatedTypeWitness;
  v58 = AssociatedConformanceWitness;
  v75 = AssociatedConformanceWitness;
  v76 = v7;
  v13 = AssociatedConformanceWitness;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v66 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v56 = &v50 - v15;
  v73 = v12;
  v74 = a4;
  v75 = v13;
  v76 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = OpaqueTypeMetadata2;
  v74 = OpaqueTypeConformance2;
  v17 = OpaqueTypeMetadata2;
  v59 = OpaqueTypeMetadata2;
  v60 = OpaqueTypeConformance2;
  v18 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeMetadata2();
  v65 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v61 = &v50 - v20;
  v21 = sub_1A52497A4();
  v73 = v17;
  v74 = v18;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688]);
  v73 = v19;
  v74 = v21;
  v75 = v22;
  v76 = v23;
  swift_getOpaqueTypeMetadata2();
  v54 = v19;
  v24 = sub_1A5249754();
  v62 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v55 = &v50 - v25;
  v73 = v19;
  v74 = v21;
  v53 = v22;
  v75 = v22;
  v76 = v23;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = v22;
  v51 = v24;
  WitnessTable = swift_getWitnessTable();
  v73 = v24;
  v74 = WitnessTable;
  v26 = swift_getOpaqueTypeMetadata2();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v50 - v32;
  v34 = v10;
  v35 = v63;
  (*(v7 + 104))(v63, a4, v7, v31);
  v36 = v56;
  v37 = v35;
  v38 = v57;
  sub_1A3D7194C(v37, a4, v57, a4, v58);
  (*(v64 + 8))(v34, v38);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v39 = swift_getAssociatedTypeWitness();
  v76 = v39;
  v40 = __swift_allocate_boxed_opaque_existential_1(&v73);
  (*(*(v39 - 8) + 16))(v40, v67, v39);
  v41 = v61;
  v42 = v59;
  sub_1A524A534();
  (*(v66 + 8))(v36, v42);
  sub_1A3C2C598(&v73, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3F1C93C);
  v43 = (*(v68 + 152))(a4);
  v44 = v55;
  v45 = v54;
  sub_1A3F12FFC((v43 & 1) == 0, v54, v53, v55);
  (*(v65 + 8))(v41, v45);
  v46 = v51;
  sub_1A524A5F4();
  (*(v62 + 8))(v44, v46);
  v47 = *(v27 + 16);
  v47(v33, v29, v26);
  v48 = *(v27 + 8);
  v48(v29, v26);
  v47(v69, v33, v26);
  return (v48)(v33, v26);
}

uint64_t sub_1A3F12FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v45) = a1;
  v49 = a4;
  OpaqueTypeConformance2 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = sub_1A52497A4();
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688]);
  v53 = a2;
  v54 = v10;
  v55 = a3;
  v56 = v13;
  v50 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  v21 = sub_1A5249754();
  v47 = *(v21 - 8);
  v48 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v41 - v23;
  if (v45)
  {
    sub_1A5248B94();
    v45 = v24;
    v25 = a3;
    v26 = v50;
    sub_1A524A974();
    (*(v42 + 8))(v12, v10);
    v53 = a2;
    v54 = v10;
    v55 = v25;
    v56 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v27 = *(v15 + 16);
    v27(v20, v17, OpaqueTypeMetadata2);
    v46 = v10;
    v28 = v25;
    v24 = v45;
    v29 = *(v15 + 8);
    v29(v17, OpaqueTypeMetadata2);
    v27(v17, v20, OpaqueTypeMetadata2);
    sub_1A3DF4798(v17, OpaqueTypeMetadata2);
    v29(v17, OpaqueTypeMetadata2);
    v29(v20, OpaqueTypeMetadata2);
    v30 = v28;
    v31 = v46;
  }

  else
  {
    v32 = OpaqueTypeConformance2;
    v33 = v10;
    v34 = a3;
    v35 = *(OpaqueTypeConformance2 + 16);
    v35(v9, v46, a2, v22);
    v36 = v43;
    (v35)(v43, v9, a2);
    v30 = v34;
    v31 = v33;
    v53 = a2;
    v54 = v33;
    v55 = v30;
    v56 = v50;
    swift_getOpaqueTypeConformance2();
    sub_1A3DF4890(v36, OpaqueTypeMetadata2, a2);
    v37 = *(v32 + 8);
    v37(v36, a2);
    v37(v9, a2);
  }

  v53 = a2;
  v54 = v31;
  v55 = v30;
  v56 = v50;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v30;
  v38 = v48;
  swift_getWitnessTable();
  v39 = v47;
  (*(v47 + 16))(v49, v24, v38);
  return (*(v39 + 8))(v24, v38);
}

uint64_t sub_1A3F13550@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v56 = a1;
  v60 = a3;
  type metadata accessor for LemonadeShelfBody.ContentBackground();
  swift_getWitnessTable();
  v4 = sub_1A52499C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v51 - v9;
  v11 = sub_1A5248804();
  v55 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v51 - v12;
  sub_1A3F1D1FC(255, &qword_1EB12E7C0, sub_1A3F1D27C, sub_1A3F1D32C, MEMORY[0x1E697F930]);
  v61 = v11;
  v14 = sub_1A5248804();
  v53 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v52 = v51 - v15;
  v16 = sub_1A5248804();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v54 = v51 - v21;
  v59 = sub_1A5249754();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = v51 - v22;
  if (a2)
  {
    sub_1A524A074();
    v23 = v13;
    WitnessTable = swift_getWitnessTable();
    v51[2] = WitnessTable;
    sub_1A524B0D4();
    v51[1] = sub_1A524BC74();
    v51[0] = v25;
    sub_1A3F1D27C();
    v66 = WitnessTable;
    v67 = MEMORY[0x1E697E5D8];
    v26 = v17;
    v56 = v14;
    v27 = v61;
    v28 = swift_getWitnessTable();
    sub_1A3F1D32C();
    v29 = v52;
    sub_1A524A8C4();
    v30 = v27;
    v31 = v56;
    (*(v55 + 8))(v23, v30);
    sub_1A524A054();
    v32 = sub_1A3F1D3A8();
    v64 = v28;
    v65 = v32;
    v33 = swift_getWitnessTable();
    sub_1A524B0D4();
    (*(v53 + 8))(v29, v31);
    v62 = v33;
    v63 = MEMORY[0x1E697E5D8];
    swift_getWitnessTable();
    v34 = *(v26 + 16);
    v35 = v54;
    v34(v54, v19, v16);
    v36 = *(v26 + 8);
    v36(v19, v16);
    v34(v19, v35, v16);
    v37 = v57;
    sub_1A3DF4798(v19, v16);
    v36(v19, v16);
    v36(v35, v16);
  }

  else
  {
    v38 = swift_getWitnessTable();
    v39 = *(v5 + 16);
    v39(v10, v56, v4);
    v39(v7, v10, v4);
    v80 = v38;
    v40 = MEMORY[0x1E697E5D8];
    v81 = MEMORY[0x1E697E5D8];
    v41 = swift_getWitnessTable();
    v42 = sub_1A3F1D3A8();
    v78 = v41;
    v79 = v42;
    v76 = swift_getWitnessTable();
    v77 = v40;
    swift_getWitnessTable();
    v37 = v57;
    sub_1A3DF4890(v7, v16, v4);
    v43 = *(v5 + 8);
    v43(v7, v4);
    v43(v10, v4);
  }

  v44 = swift_getWitnessTable();
  v74 = v44;
  v45 = MEMORY[0x1E697E5D8];
  v75 = MEMORY[0x1E697E5D8];
  v46 = swift_getWitnessTable();
  v47 = sub_1A3F1D3A8();
  v72 = v46;
  v73 = v47;
  v70 = swift_getWitnessTable();
  v71 = v45;
  v68 = swift_getWitnessTable();
  v69 = v44;
  v48 = v59;
  swift_getWitnessTable();
  v49 = v58;
  (*(v58 + 16))(v60, v37, v48);
  return (*(v49 + 8))(v37, v48);
}

void sub_1A3F13D84(char *a1@<X8>)
{
  v2 = *(sub_1A5248A14() + 20);
  v3 = *MEMORY[0x1E697F468];
  v4 = sub_1A52494A4();
  (*(*(v4 - 8) + 104))(&a1[v2], v3, v4);
  __asm { FMOV            V0.2D, #25.0 }

  *a1 = _Q0;
  v10 = sub_1A524B364();
  sub_1A3F1D27C();
  *&a1[*(v11 + 52)] = v10;
  *&a1[*(v11 + 56)] = 256;
}

uint64_t sub_1A3F13E3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A40B23A0();
  *a1 = result;
  return result;
}

uint64_t sub_1A3F13EF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A46765A0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3F13F6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5248DF4();
  *a1 = result;
  return result;
}

uint64_t sub_1A3F13FC4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A5248D14();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1A3F14028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, char *), uint64_t (*a7)(char *))
{
  v10 = a5(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  a6(a1, &v14 - v11);
  return a7(v12);
}

uint64_t sub_1A3F140CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A467667C();
  *a1 = result & 1;
  return result;
}

void sub_1A3F14128(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v2 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v2);
  sub_1A3F1152C(a1);
}

void sub_1A3F142FC(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v2 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v2);
  sub_1A3F1152C(a1);
}

void sub_1A3F1449C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v2 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v2);
  sub_1A3F1152C(a1);
}

void sub_1A3F1466C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[6] = a2;
  v5 = *(a3 + 16);
  v6 = *(*(a3 + 24) + 8);
  swift_getAssociatedTypeWitness();
  v13[3] = v5;
  v13[4] = v6;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v7 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v7);
  v13[5] = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v13[2] = v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v3;
  sub_1A3F1152C(a1);
}

uint64_t sub_1A3F149B0(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  if (sub_1A3F11758(a1, a2))
  {
    (*(v4 + 104))();
    swift_getAssociatedConformanceWitness();
    v6 = sub_1A524B8E4();
    swift_unknownObjectRelease();
    return v6;
  }

  else
  {
    sub_1A3F18B84();

    return sub_1A524B8E4();
  }
}

uint64_t sub_1A3F14B08()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5243794();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (v5)
  {
    v0 = sub_1A5243774();
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v2 = sub_1A524CAB4();
    if (sub_1A524CAF4())
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v0 = sub_1A3F163C0(v2, AssociatedTypeWitness, AssociatedConformanceWitness);
    }

    else
    {

      return MEMORY[0x1E69E7CD0];
    }
  }

  return v0;
}

void sub_1A3F14CBC(uint64_t a1)
{
  v2 = sub_1A5242334();
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A3F1449C(a1);
}

void sub_1A3F14F64(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v2 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v2);
  sub_1A3F1152C(a1);
}

void sub_1A3F15148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(*(v4 + *(a4 + 40)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  sub_1A40B3388(a1, v8, a2, a3);
}

void sub_1A3F151CC(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v3 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v3);
  sub_1A3F1152C(a2);
}

uint64_t static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)()
{
  sub_1A524E404();
  sub_1A3C66768();
  v0 = sub_1A524EA44();

  MEMORY[0x1A5907B60](0xD000000000000013, 0x80000001A53BCB00);
  return v0;
}

uint64_t static LemonadeShelfUtilities.detailsDisclosureButtonAccessibilityIdentifier(shelfIdentifier:)()
{
  sub_1A524E404();
  sub_1A3C66768();
  v0 = sub_1A524EA44();

  MEMORY[0x1A5907B60](0xD000000000000013, 0x80000001A53BCB20);
  return v0;
}

uint64_t static LemonadeShelfUtilities.navigationURL(shelfIdentifier:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3EFDB80(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = *a1;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1A524E404();

  v13 = 0xD000000000000012;
  v14 = 0x80000001A53BCB40;
  v12[15] = v7;
  v8 = LemonadeShelfIdentifier.slug.getter();
  MEMORY[0x1A5907B60](v8);

  sub_1A5240E34();

  v9 = sub_1A5240E64();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v6, 1, v9);
  if (result != 1)
  {
    return (*(v10 + 32))(a2, v6, v9);
  }

  __break(1u);
  return result;
}

uint64_t static LemonadeShelfUtilities.navigationURLForDetailsOfShelf(withIdentifier:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3EFDB80(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = *a1;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1A524E404();

  v13 = 0xD00000000000001ALL;
  v14 = 0x80000001A53BCB60;
  v12[15] = v7;
  v8 = LemonadeShelfIdentifier.slug.getter();
  MEMORY[0x1A5907B60](v8);

  sub_1A5240E34();

  v9 = sub_1A5240E64();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v6, 1, v9);
  if (result != 1)
  {
    return (*(v10 + 32))(a2, v6, v9);
  }

  __break(1u);
  return result;
}

id PXLemonadeShelfUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PXLemonadeShelfUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXLemonadeShelfUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PXLemonadeShelfUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXLemonadeShelfUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A3F15A00(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a3;
  v8 = a2;
  v6 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1A5245EC4();
}

uint64_t sub_1A3F15F28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A524B414();
  *a1 = result;
  return result;
}

uint64_t sub_1A3F15F50@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v21 = a4;
  v9 = sub_1A5249234();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E697DCB8];
  sub_1A3EFDB80(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1A3F1C850(v8, &v20 - v15, a1, a2, v13, sub_1A3EFDB80);
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

uint64_t sub_1A3F16188@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v20 = a4;
  v9 = sub_1A5249234();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E697DCB8];
  sub_1A3EFDB80(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  sub_1A3F1C850(v8, &v19 - v15, a1, a2, v13, sub_1A3EFDB80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A3F1C8C4(v16, v20, a3);
  }

  sub_1A524D254();
  v18 = sub_1A524A014();
  sub_1A5246DF4();

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v10 + 8))(v12, v9);
}

_DWORD *sub_1A3F163A4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1A3F163C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v38 - v10;
  v39 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  if (sub_1A524CAF4())
  {
    sub_1A524E3E4();
    v15 = sub_1A524E3D4();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  v43 = sub_1A524CAF4();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_1A524CAD4();
    sub_1A524CA64();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1A524E474();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_1A524C4A4();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v8, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_1A524C594();
        v32 = *v47;
        (*v47)(v8, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_1A3F16888()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LemonadeModelFactory();
      if (v2 <= 0x3F)
      {
        sub_1A3EFDB80(319, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
        if (v3 <= 0x3F)
        {
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          sub_1A5242854();
          sub_1A5247CB4();
          if (v4 <= 0x3F)
          {
            sub_1A3EFC5C8();
            if (v5 <= 0x3F)
            {
              sub_1A3EFDB80(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1A3F1C93C(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1A3F1C93C(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
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

void sub_1A3F16B88()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v1 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_1A5242854();
      if (v2 <= 0x3F)
      {
        sub_1A3E792C4(319, &qword_1EB129A90, &qword_1EB129A98);
        if (v3 <= 0x3F)
        {
          sub_1A52434D4();
          if (v4 <= 0x3F)
          {
            swift_getAssociatedTypeWitness();
            swift_getAssociatedConformanceWitness();
            sub_1A52431C4();
            if (v5 <= 0x3F)
            {
              sub_1A3F178E0();
              if (v6 <= 0x3F)
              {
                sub_1A3EFDB80(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1A3F1C93C(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
                  {
                    sub_1A3EFDB80(319, &qword_1EB1247F8, sub_1A3F17950, MEMORY[0x1E697DCC0]);
                    if (v9 <= 0x3F)
                    {
                      sub_1A3F1C93C(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                      if (v10 <= 0x3F)
                      {
                        sub_1A3F1C93C(319, &qword_1EB1247F0, &type metadata for LemonadeFeedZoomLevel, MEMORY[0x1E697DCC0]);
                        if (v11 <= 0x3F)
                        {
                          sub_1A3F1C93C(319, &qword_1EB124800, &type metadata for LemonadeStackSpecs, MEMORY[0x1E697DCC0]);
                          if (v12 <= 0x3F)
                          {
                            sub_1A3EFDB80(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                            if (v13 <= 0x3F)
                            {
                              sub_1A3EFDB80(319, &qword_1EB124710, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
                              if (v14 <= 0x3F)
                              {
                                sub_1A3F1C93C(319, &qword_1EB124748, &type metadata for LemonadeShelvesViewModelDisplayState, MEMORY[0x1E697DCC0]);
                                if (v15 <= 0x3F)
                                {
                                  sub_1A3F1C93C(319, &qword_1EB124738, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1A3EFDB80(319, &qword_1EB1247D8, type metadata accessor for LemonadeShelfViewModel, MEMORY[0x1E697DCC0]);
                                    if (v17 <= 0x3F)
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
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A3F170A4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v38 = *(a3 + 16);
  v4 = *(v38 - 8);
  v5 = *(v4 + 84);
  v37 = sub_1A52434D4();
  v6 = *(v37 - 8);
  v36 = *(v6 + 84);
  if (v5 <= v36)
  {
    v7 = *(v6 + 84);
  }

  else
  {
    v7 = v5;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v41 = *(sub_1A5242D14() - 8);
  v9 = *(v41 + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v40 = v9;
  v10 = *(sub_1A52486A4() - 8);
  v11 = *(v10 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  v39 = v11;
  v12 = *(sub_1A5248714() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v4 + 64);
  v15 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  v16 = v15 + 42;
  v17 = a1;
  if (v8 >= a2)
  {
    goto LABEL_41;
  }

  v18 = *(v41 + 80) & 0xF8 | 7;
  v19 = (v40 + ((v18 + ((((*(v6 + 64) + ((v16 + ((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 48) & ~v18) + 72) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v10 + 80) & 0xF8 | 7;
  v21 = *(v12 + 80) & 0xF8 | 7;
  v22 = ((v13 + ((v39 + v21 + ((v20 + v19 + 33) & ~v20) + 1) & ~v21) + 64) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v22 <= 3)
  {
    v23 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v23 = 2;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 <= 1)
  {
    if (!v25)
    {
      goto LABEL_41;
    }

    v26 = a1[v22];
    if (!a1[v22])
    {
      goto LABEL_41;
    }

LABEL_34:
    v28 = v22 > 3;
    if (v22 <= 3)
    {
      v29 = (v26 - 1) << (8 * v22);
    }

    else
    {
      v29 = 0;
    }

    if (v28)
    {
      v35 = *a1;
    }

    else
    {
      v35 = *a1;
    }

    return v8 + (v35 | v29) + 1;
  }

  if (v25 == 2)
  {
    v26 = *&a1[v22];
    if (*&a1[v22])
    {
      goto LABEL_34;
    }
  }

  else
  {
    v26 = *&a1[v22];
    if (v26)
    {
      goto LABEL_34;
    }
  }

LABEL_41:
  if (v5 == v8)
  {
    v30 = v38;
    v31 = *(v4 + 48);
    v32 = v5;
LABEL_48:

    return v31(v17, v32, v30);
  }

  v33 = (&a1[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v31 = *(v6 + 48);
    v17 = (v16 + ((((v33 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
    v32 = v36;
    v30 = v37;
    goto LABEL_48;
  }

  v34 = *v33;
  if (v34 >= 0xFFFFFFFF)
  {
    LODWORD(v34) = -1;
  }

  return (v34 + 1);
}

void sub_1A3F174A4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(sub_1A52434D4() - 8);
  v33 = v6;
  v32 = v5;
  if (v5 <= *(v6 + 84))
  {
    v7 = *(v6 + 84);
  }

  else
  {
    v7 = v5;
  }

  v31 = v7;
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(sub_1A5242D14() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(sub_1A52486A4() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(sub_1A5248714() - 8);
  if (*(v13 + 64) <= 8uLL)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(v13 + 64);
  }

  v15 = *(v4 + 64);
  v16 = *(v6 + 80);
  v17 = *(v9 + 80) & 0xF8 | 7;
  v18 = (v10 + ((v17 + ((((*(v6 + 64) + ((v16 + 42 + ((((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 48) & ~v17) + 72) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v11 + 80) & 0xF8 | 7;
  v20 = *(v13 + 80) & 0xF8 | 7;
  v21 = ((v14 + ((v12 + v20 + ((v19 + v18 + 33) & ~v19) + 1) & ~v20) + 64) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v24 = 0;
  }

  else
  {
    if (v21 <= 3)
    {
      v22 = ((a3 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }
  }

  if (v8 < a2)
  {
    v25 = ~v8 + a2;
    bzero(a1, v21);
    if (v21 <= 3)
    {
      v26 = (v25 >> 8) + 1;
    }

    else
    {
      v26 = 1;
    }

    if (v21 <= 3)
    {
      *a1 = v25;
      if (v24 > 1)
      {
LABEL_35:
        if (v24 == 2)
        {
          *&a1[v21] = v26;
        }

        else
        {
          *&a1[v21] = v26;
        }

        return;
      }
    }

    else
    {
      *a1 = v25;
      if (v24 > 1)
      {
        goto LABEL_35;
      }
    }

    if (v24)
    {
      a1[v21] = v26;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    }

    *&a1[v21] = 0;
  }

  else if (v24)
  {
    a1[v21] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_47;
  }

  if (!a2)
  {
    return;
  }

LABEL_47:
  if (v32 == v8)
  {
    v27 = *(v4 + 56);
    v28 = a1;
  }

  else
  {
    v29 = (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((v31 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        v30 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v30 = a2 - 1;
      }

      *v29 = v30;
      return;
    }

    v27 = *(v33 + 56);
    v28 = (v16 + 42 + ((((v29 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16;
  }

  v27(v28);
}

void sub_1A3F178E0()
{
  if (!qword_1EB1274D8)
  {
    sub_1A3E792C4(255, &qword_1EB129088, &qword_1EB129090);
    v0 = sub_1A524B6D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1274D8);
    }
  }
}

uint64_t sub_1A3F17994()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

void sub_1A3F17A98()
{
  if (!qword_1EB1292A8)
  {
    v0 = sub_1A52423F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1292A8);
    }
  }
}

void sub_1A3F17B44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1A3F17BF8()
{
  result = qword_1EB1225A8;
  if (!qword_1EB1225A8)
  {
    sub_1A3F18928(255, &qword_1EB1225A0, MEMORY[0x1E697F960]);
    sub_1A3F1D360(&qword_1EB1292B0, sub_1A3F17A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1225A8);
  }

  return result;
}

uint64_t sub_1A3F17CC4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3F1C93C(255, a2, MEMORY[0x1E69E6370], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3F17D14()
{
  result = qword_1EB129B40;
  if (!qword_1EB129B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129B40);
  }

  return result;
}

uint64_t sub_1A3F17D98@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for LemonadeShelfContents() - 8);
  v6 = (v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));

  return sub_1A3F00BC8(v6, v3, v4, a1);
}

uint64_t sub_1A3F17E24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for LemonadeShelfContents() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_1A3F02228(v6, v7, v3, v4, a1);
}

uint64_t sub_1A3F17ED0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for LemonadeShelfContents();
  v4 = v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
  sub_1A3F178E0();
  sub_1A524B6A4();
  v5 = v9[3];
  result = sub_1A3C2C598(v9, &qword_1EB129088, &qword_1EB129090, MEMORY[0x1E69C2550], sub_1A3E792C4);
  if (!v5)
  {
    (*(*(v2 + 8) + 240))(v9, *(v4 + *(v3 + 48)), v1);
    v7 = MEMORY[0x1E69C2550];
    sub_1A3F1B4DC(v9, &v8, &qword_1EB129088, &qword_1EB129090);
    sub_1A524B6B4();
    return sub_1A3C2C598(v9, &qword_1EB129088, &qword_1EB129090, v7, sub_1A3E792C4);
  }

  return result;
}

uint64_t sub_1A3F18044()
{
  v0 = type metadata accessor for LemonadeShelfContents();
  sub_1A5242D14();
  sub_1A3F1D360(&qword_1EB129148, MEMORY[0x1E69C2218]);
  result = sub_1A524C594();
  if ((result & 1) == 0)
  {
    sub_1A52427F4();
    sub_1A3F02F48(v0);
    return sub_1A5242824();
  }

  return result;
}

uint64_t objectdestroy_30Tm()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LemonadeShelfContents();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);

  v4 = v3 + v2[13];
  if (*(v4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  v5 = v2[16];
  v6 = sub_1A52434D4();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  if (*(v3 + v2[18] + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + v2[18]);
  }

  v7 = v2[19];
  sub_1A3EFDB80(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A5242D14();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v3 + v2[20]), *(v3 + v2[20] + 8));
  sub_1A3D35BAC(*(v3 + v2[21]), *(v3 + v2[21] + 8));
  sub_1A3C53AEC(*(v3 + v2[22]), *(v3 + v2[22] + 8));
  sub_1A3C53AEC(*(v3 + v2[23]), *(v3 + v2[23] + 8));
  v9 = v3 + v2[24];
  sub_1A3D35A84(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32));
  v10 = v2[25];
  sub_1A3EFDB80(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A52486A4();
    (*(*(v11 - 8) + 8))(v3 + v10, v11);
  }

  else
  {
  }

  v12 = v2[26];
  sub_1A3EFDB80(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A5248714();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v3 + v2[27]), *(v3 + v2[27] + 8));
  v14 = v3 + v2[28];
  sub_1A3D35A84(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A3F18520(_BYTE *a1, char *a2)
{
  v5 = *(type metadata accessor for LemonadeShelfContents() - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1A3F03334(a1, a2, v6);
}

unint64_t sub_1A3F185D4()
{
  result = qword_1EB127050;
  if (!qword_1EB127050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127050);
  }

  return result;
}

uint64_t sub_1A3F18628(uint64_t a1, uint64_t a2)
{
  sub_1A3F17B44(0, &qword_1EB123108, sub_1A3F17B1C);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A3F186B0()
{
  result = qword_1EB123110;
  if (!qword_1EB123110)
  {
    sub_1A3F17B44(255, &qword_1EB123108, sub_1A3F17B1C);
    sub_1A3F187C8(&qword_1EB123240, sub_1A3F17B1C, sub_1A3F1878C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123110);
  }

  return result;
}

uint64_t sub_1A3F187C8(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A3F18848()
{
  result = qword_1EB1239B8;
  if (!qword_1EB1239B8)
  {
    sub_1A3F17BD0(255);
    sub_1A3F1D360(&qword_1EB1214B8, MEMORY[0x1E697D6D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1239B8);
  }

  return result;
}

void sub_1A3F18928(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    sub_1A3F17A98();
    v7 = a3(a1, MEMORY[0x1E6981E70], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A3F18990(uint64_t a1)
{
  sub_1A3F18928(0, &qword_1EB1225A0, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3F18A08@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(*(v2[3] + 8) + 328))(v2[5], a1, v2[2]);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3F18A68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*(*(v2 + 24) + 8) + 320))(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_1A3F18ABC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5242334();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_1A3F18B30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*(*(v2 + 24) + 8) + 288))(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

unint64_t sub_1A3F18B84()
{
  result = qword_1EB169340[0];
  if (!qword_1EB169340[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB169340);
  }

  return result;
}

uint64_t sub_1A3F18BD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*(*(v2 + 24) + 8) + 296))(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_1A3F18C2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(*(*(v2 + 24) + 8) + 280))(a1, *(v2 + 16));
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3F18C84@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(*(*(v2 + 24) + 8) + 272))(a1, *(v2 + 16));
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3F18CEC()
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      AssociatedTypeWitness = type metadata accessor for LemonadePhotoLibraryContext();
      if (v3 <= 0x3F)
      {
        sub_1A3F1C93C(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
        AssociatedTypeWitness = v4;
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1A3F18DF4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1A3F18F40(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
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
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_1A3F19110()
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      sub_1A3F1C93C(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      AssociatedTypeWitness = v3;
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1A3F191FC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1A3F19340(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}