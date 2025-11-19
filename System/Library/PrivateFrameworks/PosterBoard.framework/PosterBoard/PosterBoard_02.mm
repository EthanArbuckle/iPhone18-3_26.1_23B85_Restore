unint64_t sub_21B632BC4(double MinX)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_21B6C8A04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B62DC48(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21B62AA8C(v6, &qword_27CD93500);
    return sub_21B632ED0(0, MinX);
  }

  (*(v8 + 32))(v10, v6, v7);
  v11 = v10;
  v12 = sub_21B6C89F4();
  if (v12 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v12;
  v13 = sub_21B6C89D4();
  v11 = v13 + 2 * v6;
  if (__OFADD__(v13, 2 * v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedAttributes;
  swift_beginAccess();
  v14 = *(v2 + v6);
  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_7;
  }

LABEL_16:
  result = sub_21B6C9454();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_18:

    v16 = MEMORY[0x21CEF66E0](v11, v6);

    goto LABEL_11;
  }

LABEL_7:
  if (v11 >= result)
  {
    (*(v8 + 8))(v10, v7);
    return sub_21B632ED0(0, MinX);
  }

  v6 = *(v2 + v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_18;
  }

  if (v11 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v6 + 8 * v11 + 32);
LABEL_11:
    [v16 frame];
    MinX = CGRectGetMinX(v18);

    (*(v8 + 8))(v10, v7);
    return sub_21B632ED0(0, MinX);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B632ED0(uint64_t result, double a2)
{
  if (a2 != 0.0)
  {
    v4 = *(v2 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_itemSize);
    v5 = *(v2 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionInset + 8);
    v6 = *(v2 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionInset + 24);
    v7 = *(v2 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_contentBounds + 16);
    v8 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedAttributes;
    swift_beginAccess();
    v9 = *(v2 + v8);
    if (v9 >> 62)
    {
      goto LABEL_18;
    }

    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = result >> 1;
    while ((result + 1) >= 3)
    {
      v11 = v10 & ~(v10 >> 63);
      v12 = 0.0;
      while (v11)
      {
        if (v10 == 1)
        {
          v13 = (v5 + v6) * 0.5;
        }

        else
        {
          v13 = v5 + v6;
        }

        v14 = v12 + v4 + v13;
        if (v14 <= a2 || v14 >= v7)
        {
          --v11;
          v12 = v14;
          if (--v10)
          {
            continue;
          }
        }

        return result;
      }

      __break(1u);
LABEL_18:
      result = sub_21B6C9454();
      if (result < -1)
      {
        __break(1u);
      }

      v10 = result / 2;
    }
  }

  return result;
}

uint64_t sub_21B633078(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a2 < a1)
  {
    return 0;
  }

  v15 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v9 = a1;
  v8 = a2;
  v6 = v15 / 2;
  v16 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedAttributes;
  result = swift_beginAccess();
  v10 = *(v7 + v16);
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_16:

    v18 = MEMORY[0x21CEF66E0](v6, v10);

LABEL_8:
    [v18 frame];
    v29.origin.x = v14;
    v29.origin.y = v13;
    v29.size.width = v12;
    v29.size.height = v11;
    if (CGRectIntersectsRect(v26, v29))
    {
    }

    else
    {
      [v18 frame];
      MaxX = CGRectGetMaxX(v27);
      v28.origin.x = v14;
      v28.origin.y = v13;
      v28.size.width = v12;
      v28.size.height = v11;
      if (MaxX <= CGRectGetMinX(v28))
      {
        v25 = v6 + 1;
        v20.n128_f64[0] = v14;
        v21.n128_f64[0] = v13;
        v22.n128_f64[0] = v12;
        v24 = v8;
        v23.n128_f64[0] = v11;
      }

      else
      {
        v24 = v6 - 1;
        v20.n128_f64[0] = v14;
        v21.n128_f64[0] = v13;
        v22.n128_f64[0] = v12;
        v23.n128_f64[0] = v11;
        v25 = v9;
      }

      v6 = sub_21B633078(v25, v24, v20, v21, v22, v23);
    }

    return v6;
  }

  if (v15 < -1)
  {
    __break(1u);
  }

  else if (v6 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v10 + 8 * v6 + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_21B633260()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterRackStackedLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PosterRackStackedLayout()
{
  result = qword_28120B9A8;
  if (!qword_28120B9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B6333A0()
{
  sub_21B6334B4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21B6334B4()
{
  if (!qword_28120BB28)
  {
    sub_21B6C8A04();
    v0 = sub_21B6C93B4();
    if (!v1)
    {
      atomic_store(v0, &qword_28120BB28);
    }
  }
}

uint64_t sub_21B633524(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B633594(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21B6335DC()
{
  result = qword_28120B1B8;
  if (!qword_28120B1B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28120B1B8);
  }

  return result;
}

uint64_t sub_21B633628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_21B633698()
{
  v1 = v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_selectedSectionIndex;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = (v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionRevealProgressProvider);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_hidesHomeCardsInAlongsideLayout) = 1;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCompactLayoutShouldScaleFurtherBack) = 0;
  v3 = v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_layoutModeTransitioningTo;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_itemSize);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_minimumLineSpacing) = 0;
  v5 = (v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionInset);
  v6 = *(MEMORY[0x277D768C8] + 16);
  *v5 = *MEMORY[0x277D768C8];
  v5[1] = v6;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_scrollDirection) = 1;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_zoomCardSizeMultiplier) = 0x3FE70A3D70A3D70ALL;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cardSizeMultiplier) = 0x3FE6666666666666;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_peekingCardSizeMultiplier) = 0x3FE47AE147AE147BLL;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCardUpscale) = 0x3FF428F5C28F5C29;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCardLesserUpscale) = 0x3FF35C28F5C28F5CLL;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_maximumVerticalRevealFraction) = 0x3FD0000000000000;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_overhangMultiplier) = 0x3FAEB851EB851EB8;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_zoomCardSizeOverlapMultiplier) = 0x3FD0000000000000;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_selectedFrontBaseOffset) = 0x3FE599999999999ALL;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_unselectedFrontBaseOffset) = 0xBFA2B020C49BA5E3;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_unselectedFrontShovedMultiplier) = 0xBFC999999999999ALL;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_unselectedFrontShovedMultiplierPad) = 0xBFCEB851EB851EB8;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_unselectedFrontParallaxLeadingMultiplier) = 0xBF826E978D4FDF3BLL;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_unselectedFrontParallaxTrailingMultiplier) = 0xBFBBC6A7EF9DB22DLL;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_backBaseOffset) = 0x3FB147AE147AE148;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_backParallaxMultiplier) = 0xBFCB126E978D4FDFLL;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_backParallaxMultiplierPad) = 0xBFCEE147AE147AE1;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_coupledContentEdgeMargin) = 0x4000000000000000;
  v7 = (v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_contentBounds);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedAttributes) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryHeaderAttributes) = v8;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryFooterAttributes) = v8;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryDecorationAttributes) = v8;
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionRevealProgresses) = MEMORY[0x277D84F98];
  *(v0 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionIndexPathsToDelete) = v8;
  v9 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_indexPathToMaintainForTransition;
  v10 = sub_21B6C8A04();
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  sub_21B6C95D4();
  __break(1u);
}

id sub_21B633BA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InlineComplicationSnapshotSceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21B633C08(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = objc_allocWithZone(MEMORY[0x277D75DA0]);
    v6 = a1;
    v7 = [v5 initWithWindowScene_];
    v8 = [objc_opt_self() sharedInstance];
    v9 = [v8 dataStore];

    v10 = [v9 currentGalleryConfiguration];
    type metadata accessor for SnapshotComplicationLayoutProvider();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v12 = v10;
    v13 = [v4 _FBSScene];
    v14 = [objc_allocWithZone(MEMORY[0x277D3ECE8]) initWithScene:v13 complicationLayoutProvider:v11];

    [v7 setRootViewController_];
    [v7 makeKeyAndVisible];

    v15 = *(v1 + OBJC_IVAR____TtC11PosterBoard39InlineComplicationSnapshotSceneDelegate_window);
    *(v1 + OBJC_IVAR____TtC11PosterBoard39InlineComplicationSnapshotSceneDelegate_window) = v7;
  }
}

void sub_21B633DC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard39InlineComplicationSnapshotSceneDelegate_window);
  if (v1)
  {
    v2 = [v1 rootViewController];
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      v5 = v4;
      if (!v4)
      {

        v4 = 0;
      }

      [v4 invalidate];
    }
  }
}

uint64_t sub_21B633E70(uint64_t result)
{
  v2 = OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair;
  v3 = *&v1[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair];
  if (!v3)
  {
    if (!result)
    {
      return result;
    }

LABEL_6:
    [*(result + OBJC_IVAR___PBFPosterPair_observers) removeObject_];
    v3 = *&v1[v2];
    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v3 == result)
  {
    return result;
  }

  if (result)
  {
    goto LABEL_6;
  }

LABEL_7:
  [*(v3 + OBJC_IVAR___PBFPosterPair_observers) addObject_];
LABEL_8:
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21B63712C;
  *(v6 + 24) = v5;
  v10[4] = sub_21B637134;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_21B647820;
  v10[3] = &block_descriptor_2;
  v7 = _Block_copy(v10);
  v8 = v1;

  [v4 performWithoutAnimation_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_21B634034(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair);
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration];
    if (v2)
    {
      v8 = *&v1[OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration];
    }

    else
    {
      v4 = *&v1[OBJC_IVAR___PBFPosterPair_configuredProperties];
      v5 = v1;
      v6 = [v4 homeScreenConfiguration];
      if (!v6)
      {
        v6 = [objc_allocWithZone(MEMORY[0x277D3EDB0]) init];
      }

      v8 = v6;
    }

    v7 = v2;
    v3 = v8;
  }

  else
  {
    v3 = 0;
  }

  v9 = v3;
  sub_21B634F04(v3);
}

id sub_21B634110(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_controls] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_lockPosterPreviewView] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_gradientPreviewView] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_solidColorPreviewView] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_homePosterPreviewView] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_blurButton] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_stackView] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_homeScreenConfiguration] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for HomeScreenConfigurationView();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setEdgesInsettingLayoutMarginsFromSafeArea_];
  sub_21B61785C(0, &qword_28120B2E0);
  sub_21B6C90A4();
  MEMORY[0x21CEF6310]();

  swift_unknownObjectRelease();

  return v9;
}

void sub_21B6342D4(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration);
  if (v2)
  {
    v3 = *(a1 + OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration);
  }

  else
  {
    v3 = [*(a1 + OBJC_IVAR___PBFPosterPair_configuredProperties) homeScreenConfiguration];
    if (!v3)
    {
      v3 = [objc_allocWithZone(MEMORY[0x277D3EDB0]) init];
    }
  }

  v4 = *(v1 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_homeScreenConfiguration);
  *(v1 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_homeScreenConfiguration) = v3;
  if (!v4)
  {
    v8 = v2;
    v9 = v3;
    v10 = 0;
    goto LABEL_9;
  }

  sub_21B61785C(0, &unk_28120B1D0);
  v5 = v2;
  v6 = v3;
  v10 = v4;
  v7 = sub_21B6C91A4();

  if ((v7 & 1) == 0)
  {
LABEL_9:
    sub_21B636270();
    v6 = v3;
  }
}

uint64_t sub_21B6344B4()
{
  v1 = &v0[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *&v0[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair];
    if (v3 && *&v0[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_lockPosterPreviewView])
    {
      v4 = *(v1 + 1);
      v5 = v3;
      v6 = [v0 pbf_displayContext];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93400);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21B6D86F0;
      v8 = PRPosterSnapshotDefinitionIdentifierSwitcher;
      *(inited + 32) = PRPosterSnapshotDefinitionIdentifierSwitcher;
      v9 = PRPosterSnapshotDefinitionIdentifierSwitcherFloatingLayer;
      *(inited + 40) = PRPosterSnapshotDefinitionIdentifierSwitcherFloatingLayer;
      v10 = v8;
      v11 = v9;
      v20 = sub_21B645CE0(inited);
      swift_setDeallocating();
      type metadata accessor for Identifier(0);
      swift_arrayDestroy();
      ObjectType = swift_getObjectType();
      v12 = *&v5[OBJC_IVAR___PBFPosterPair_configuration];
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = v5;
      v14[4] = v6;
      v15 = *(v4 + 8);
      v16 = *(v15 + 8);
      v17 = v5;
      v18 = v12;

      swift_unknownObjectRetain();
      v16(v18, v20, v6, 0, sub_21B636E8C, v14, ObjectType, v15);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_21B634710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_lockPosterPreviewView);
    if (v9)
    {
      v10 = *(Strong + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair);
      if (v10)
      {
        v11 = (v10 + OBJC_IVAR___PBFPosterPair_id);
        v12 = *v11 == *(a3 + OBJC_IVAR___PBFPosterPair_id) && v11[1] == *(a3 + OBJC_IVAR___PBFPosterPair_id + 8);
        if (v12 || (sub_21B6C96E4() & 1) != 0)
        {
          v13 = v9;
          v14 = [objc_msgSend(v8 pbf_displayContext)];
          swift_unknownObjectRelease();
          if (v14 && *(a1 + 16))
          {
            v15 = sub_21B695E60(PRPosterSnapshotDefinitionIdentifierSwitcher);
            if (v16)
            {
              v17 = *(*(a1 + 56) + 8 * v15);
              sub_21B62BF50([v17 backgroundSnapshot]);
              v18 = [v17 floatingSnapshot];
              [*&v13[OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_floatingImageView] setImage_];

              v13 = v18;
            }
          }

          v8 = v13;
        }
      }
    }
  }
}

uint64_t sub_21B6348F0()
{
  v1 = &v0[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *&v0[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair];
    if (v3 && (v4 = *&v3[OBJC_IVAR___PBFPosterPair_associatedConfiguration]) != 0 && *&v0[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_homePosterPreviewView])
    {
      v5 = *(v1 + 1);
      v19 = v3;
      v6 = v4;
      v7 = [v0 pbf_displayContext];
      v8 = PRPosterSnapshotDefinitionIdentifierSwitcherUnlocked;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93400);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21B6D7FE0;
      *(inited + 32) = v8;
      v10 = v8;
      v11 = sub_21B645CE0(inited);
      swift_setDeallocating();
      sub_21B636E24(inited + 32);
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = v10;
      v13[4] = v6;
      v13[5] = v7;
      v14 = *(v5 + 8);
      v15 = *(v14 + 8);
      v16 = v6;
      v17 = v10;

      swift_unknownObjectRetain();
      v15(v16, v11, v7, 0, sub_21B636E80, v13, ObjectType, v14);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_21B634B34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = sub_21B6C88C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (*(a1 + 16))
    {
      v15 = sub_21B695E60(a3);
      if (v16)
      {
        v17 = *&v14[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_homePosterPreviewView];
        if (v17)
        {
          v18 = *(*(a1 + 56) + 8 * v15);
          v19 = *&v14[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair];
          v44 = *&v14[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_homePosterPreviewView];
          v45 = v18;
          if (v19 && (v20 = *(v19 + OBJC_IVAR___PBFPosterPair_associatedConfiguration)) != 0)
          {
            v21 = v18;
            v22 = v20;
            v23 = v17;
            v43 = v22;
            v24 = [v22 _path];
            v25 = [v24 serverIdentity];

            if (v25)
            {
              v26 = [v25 posterUUID];

              sub_21B6C88A4();
              v27 = sub_21B6C8874();
              v29 = v28;

              (*(v10 + 8))(v12, v9);
              goto LABEL_13;
            }
          }

          else
          {
            v30 = v18;
            v31 = v17;
          }

          v27 = 0;
          v29 = 0;
LABEL_13:
          v32 = [a4 _path];
          v33 = [v32 &selRef_setSectionIdentifierToSectionType_ + 7];

          if (v33)
          {
            v34 = v27;
            v35 = [v33 posterUUID];

            sub_21B6C88A4();
            v36 = sub_21B6C8874();
            v38 = v37;
            (*(v10 + 8))(v12, v9);
            v39 = v44;
            if (!v29)
            {
              if (!v38)
              {
                goto LABEL_25;
              }

              goto LABEL_27;
            }

            if (v38)
            {
              if (v34 == v36 && v29 == v38)
              {

                goto LABEL_25;
              }

              v40 = sub_21B6C96E4();

              if (v40)
              {
LABEL_25:
                v41 = [objc_msgSend(v14 pbf_displayContext)];
                swift_unknownObjectRelease();
                if (v41)
                {
                  v42 = v45;
                  sub_21B62BF50([v45 compositeSnapshot]);

                  return;
                }
              }

LABEL_27:

              return;
            }
          }

          else
          {
            v39 = v44;
            if (!v29)
            {
              goto LABEL_25;
            }
          }

          return;
        }
      }
    }
  }
}

void sub_21B634F04(char *a1)
{
  v4 = v1;
  v136 = OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_stackView;
  v6 = *&v1[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_stackView];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  v8 = [v7 arrangedSubviews];
  sub_21B61785C(0, &unk_28120B170);
  v9 = sub_21B6C8E84();

  if (v9 >> 62)
  {
    v10 = sub_21B6C9454();
    if (v10)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_4:
      if (v10 < 1)
      {
        __break(1u);
        goto LABEL_86;
      }

      for (i = 0; i != v10; ++i)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x21CEF66E0](i, v9);
        }

        else
        {
          v12 = *(v9 + 8 * i + 32);
        }

        v13 = v12;
        [v12 removeFromSuperview];
      }
    }
  }

LABEL_12:
  v14 = OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_controls;
  swift_beginAccess();
  v15 = MEMORY[0x277D84F90];
  *&v4[v14] = MEMORY[0x277D84F90];

  v16 = *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_lockPosterPreviewView];
  v135 = OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_lockPosterPreviewView;
  *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_lockPosterPreviewView] = 0;

  v17 = *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_gradientPreviewView];
  v134 = OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_gradientPreviewView;
  *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_gradientPreviewView] = 0;

  v18 = *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_solidColorPreviewView];
  v133 = OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_solidColorPreviewView;
  *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_solidColorPreviewView] = 0;

  v19 = *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_homePosterPreviewView];
  v132 = OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_homePosterPreviewView;
  *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_homePosterPreviewView] = 0;

  v20 = OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_blurButton;
  v21 = *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_blurButton];
  *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_blurButton] = 0;

  if (!a1)
  {
    return;
  }

  v129 = v20;
  v131 = a1;
  if (*&v4[v136])
  {
    v22 = a1;
  }

  else
  {
    v23 = objc_allocWithZone(MEMORY[0x277D75A68]);
    v24 = a1;
    v25 = [v23 init];
    [v25 setAxis_];
    [v25 setSpacing_];
    v26 = v25;
    [v26 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 addSubview_];
    v27 = *&v4[v136];
    *&v4[v136] = v26;
    v28 = v26;

    if (qword_28120B3A8 != -1)
    {
      swift_once();
    }

    [qword_28120B3B0 lineHeight];
    v30 = v29 * 0.5 + 12.0;
    v31 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_21B6D7FF0;
    v33 = [v28 centerXAnchor];
    v34 = [v4 centerXAnchor];
    v35 = [v33 constraintEqualToAnchor_];

    *(v32 + 32) = v35;
    v36 = [v28 centerYAnchor];
    v37 = [v4 centerYAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:-2.0 - v30 * 0.5];

    *(v32 + 40) = v38;
    v39 = [v4 leadingAnchor];
    v40 = [v28 leadingAnchor];
    v41 = [v39 constraintLessThanOrEqualToSystemSpacingAfterAnchor:v40 multiplier:0.0];

    *(v32 + 48) = v41;
    v42 = [v28 trailingAnchor];

    v43 = [v4 trailingAnchor];
    v44 = [v42 constraintLessThanOrEqualToSystemSpacingAfterAnchor:v43 multiplier:0.0];

    *(v32 + 56) = v44;
    sub_21B61785C(0, &qword_28120B2D0);
    v45 = sub_21B6C8E74();

    [v31 activateConstraints_];
  }

  v138 = v15;
  v130 = a1;
  v46 = 0;
  v137 = 0;
  do
  {
    v47 = *(&unk_282CCEFA0 + v46 + 32);
    if (v47 > 1)
    {
      if (v47 == 2)
      {
        v54 = [objc_allocWithZone(MEMORY[0x277D3EF50]) initWithFrame_];
        v55 = *&v4[v134];
        *&v4[v134] = v54;
        v51 = v54;
      }

      else
      {
        if (v47 != 3)
        {
LABEL_87:
          sub_21B6C95D4();
          __break(1u);
          return;
        }

        v58 = objc_allocWithZone(type metadata accessor for HomeScreenConfigurationPosterControlContentView());
        v59 = sub_21B62C020(0xD000000000000012, 0x800000021B6EF030);
        v60 = *&v4[v132];
        *&v4[v132] = v59;
        v51 = v59;

        sub_21B6348F0();
      }

      goto LABEL_28;
    }

    if (v47)
    {
      if (v47 != 1)
      {
        goto LABEL_87;
      }

      v56 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
      v57 = *&v4[v133];
      *&v4[v133] = v56;
      v51 = v56;

LABEL_28:
      v52 = sub_21B6C8D74();
      v53 = 1;
      goto LABEL_29;
    }

    v48 = objc_allocWithZone(type metadata accessor for HomeScreenConfigurationPosterControlContentView());
    v49 = sub_21B62C020(0, 0);
    v50 = *&v4[v135];
    *&v4[v135] = v49;
    v51 = v49;

    sub_21B6344B4();
    v52 = sub_21B6C8D74();
    v53 = 0;
LABEL_29:
    v61 = PBFLocalizedString(v52);

    v62 = sub_21B6C8DA4();
    v64 = v63;

    v2 = type metadata accessor for HomeScreenConfigurationControl();
    v65 = objc_allocWithZone(v2);
    v66 = sub_21B62ADFC(v51);
    [v66 addTarget:v4 action:sel_didSelectControl_ forControlEvents:64];
    v67 = v66;
    [v67 setOverrideUserInterfaceStyle_];
    sub_21B62ACF0(v62, v64);
    v68 = OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_showsSymbolWhenSelected;
    v67[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_showsSymbolWhenSelected] = v53;
    if ([v67 isSelected] && (v67[v68] & 1) == 0)
    {
      [*&v67[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_symbolImageView] setAlpha_];
    }

    v69 = *&v67[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_maximumHorizontalTitleOutset];
    *&v67[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_maximumHorizontalTitleOutset] = 0x4020000000000000;
    if (v69 != 8.0)
    {
      [v67 setNeedsLayout];
    }

    [v67 setTranslatesAutoresizingMaskIntoConstraints_];
    swift_beginAccess();
    v70 = v67;
    MEMORY[0x21CEF6000]();
    if (*((*&v4[v14] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v4[v14] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21B6C8E94();
    }

    sub_21B6C8EA4();
    swift_endAccess();
    [*&v4[v136] addArrangedSubview_];
    if (v137)
    {
      v71 = v137;

      v72 = [v70 widthAnchor];
      v73 = [v71 widthAnchor];
      v74 = [v72 constraintEqualToAnchor_];

      MEMORY[0x21CEF6000]();
      if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B6C8E94();
      }

      sub_21B6C8EA4();
    }

    else
    {
      v75 = [v70 widthAnchor];
      v76 = [v4 widthAnchor];
      v77 = [v75 constraintEqualToAnchor:v76 multiplier:dbl_21B6D8700[PFCurrentDeviceClass() == 1]];

      MEMORY[0x21CEF6000]();
      if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B6C8E94();
      }

      sub_21B6C8EA4();
      v137 = v70;
    }

    v78 = [v70 heightAnchor];
    v79 = [v70 widthAnchor];

    v80 = [v78 constraintEqualToAnchor_];
    MEMORY[0x21CEF6000]();
    if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21B6C8E94();
    }

    v46 += 8;
    sub_21B6C8EA4();
  }

  while (v46 != 32);
  a1 = v136;
  v81 = *&v4[v136];
  v3 = v131;
  if (!v81)
  {
    goto LABEL_62;
  }

  v10 = v81;
  v82 = [v10 arrangedSubviews];
  sub_21B61785C(0, &unk_28120B170);
  v83 = sub_21B6C8E84();

  if (!(v83 >> 62))
  {
    v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_49;
  }

LABEL_86:
  v84 = sub_21B6C9454();
LABEL_49:

  if (v84)
  {
    v85 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v86 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.5];
    [v85 setBackgroundColor_];

    [v85 _setCornerRadius_];
    [v85 setTranslatesAutoresizingMaskIntoConstraints_];
    if (v137)
    {
      v87 = v137;
      v88 = [v85 heightAnchor];
      v89 = [v87 widthAnchor];
      v90 = [v88 constraintEqualToAnchor_];

      MEMORY[0x21CEF6000]();
      if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B6C8E94();
      }

      sub_21B6C8EA4();
    }

    else
    {
      v91 = [v85 heightAnchor];
      v92 = [v4 widthAnchor];
      v93 = [v91 constraintEqualToAnchor:v92 multiplier:0.1];

      MEMORY[0x21CEF6000]();
      if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B6C8E94();
      }

      sub_21B6C8EA4();
    }

    v94 = [v85 widthAnchor];
    v95 = [v94 constraintEqualToConstant_];

    MEMORY[0x21CEF6000]();
    if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21B6C8E94();
    }

    sub_21B6C8EA4();
    [v10 addArrangedSubview_];
  }

  else
  {
    v85 = v10;
  }

LABEL_62:
  v96 = [objc_allocWithZone(type metadata accessor for HomeScreenConfigurationBlurControlContentView()) init];
  v97 = objc_allocWithZone(v2);
  v98 = sub_21B62ADFC(v96);
  [v98 addTarget:v4 action:sel_toggleLegibilityBlur_ forControlEvents:64];
  v99 = v98;
  [v99 setOverrideUserInterfaceStyle_];
  v100 = sub_21B6C8D74();
  v101 = PBFLocalizedString(v100);

  v102 = sub_21B6C8DA4();
  v104 = v103;

  sub_21B62ACF0(v102, v104);
  v105 = OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_showsSymbolWhenSelected;
  v99[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_showsSymbolWhenSelected] = 0;
  if ([v99 isSelected] && (v99[v105] & 1) == 0)
  {
    [*&v99[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_symbolImageView] setAlpha_];
  }

  v106 = *&v99[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_maximumHorizontalTitleOutset];
  *&v99[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_maximumHorizontalTitleOutset] = 0x4020000000000000;
  if (v106 != 8.0)
  {
    [v99 setNeedsLayout];
  }

  [v99 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&a1[v4] addArrangedSubview_];
  v107 = *&v4[v129];
  *&v4[v129] = v99;
  v108 = v99;

  if (v137)
  {
    v109 = v137;
    v110 = [v108 widthAnchor];
    v111 = [v109 widthAnchor];
    v112 = [v110 constraintEqualToAnchor_];

    MEMORY[0x21CEF6000]();
    v113 = v130;
    if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21B6C8E94();
    }

    sub_21B6C8EA4();
  }

  else
  {
    v114 = [v108 widthAnchor];
    v115 = [v4 widthAnchor];
    v116 = [v114 constraintEqualToAnchor:v115 multiplier:0.1];

    MEMORY[0x21CEF6000]();
    v113 = v130;
    if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21B6C8E94();
    }

    sub_21B6C8EA4();
  }

  v117 = [v108 heightAnchor];
  v118 = [v108 widthAnchor];

  v119 = [v117 constraintEqualToAnchor_];
  MEMORY[0x21CEF6000]();
  if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21B6C8E94();
  }

  sub_21B6C8EA4();
  v120 = objc_opt_self();
  sub_21B61785C(0, &qword_28120B2D0);
  v121 = sub_21B6C8E74();

  [v120 activateConstraints_];

  v122 = OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_homeScreenConfiguration;
  v123 = *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_homeScreenConfiguration];
  *&v4[OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_homeScreenConfiguration] = 0;
  if (!v123)
  {
    *&v4[v122] = v3;
    goto LABEL_81;
  }

  sub_21B636270();

  v124 = *&v4[v122];
  *&v4[v122] = v3;
  if (!v124)
  {
LABEL_81:
    v128 = v113;
    v124 = 0;
    goto LABEL_82;
  }

  sub_21B61785C(0, &unk_28120B1D0);
  v125 = v113;
  v126 = v124;
  v127 = sub_21B6C91A4();

  if (v127)
  {

    v124 = v126;
    goto LABEL_83;
  }

LABEL_82:
  sub_21B636270();

LABEL_83:
  [v4 setNeedsLayout];
  [v4 setNeedsUpdateConstraints];
}

void sub_21B636270()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_homeScreenConfiguration);
  if (!v1)
  {
    return;
  }

  v2 = OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_solidColorPreviewView;
  v3 = *(v0 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_solidColorPreviewView);
  if (v3)
  {
    v4 = v3;
    v5 = [v1 solidColorAppearance];
    v6 = [v5 effectiveColor];

    v7 = [v6 color];
    if (!v7)
    {
      v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.984313725 green:0.921568627 blue:0.48627451 alpha:1.0];
    }

    [v4 setBackgroundColor_];
  }

  else
  {
    v8 = v1;
  }

  v9 = [v1 gradientAppearance];
  v10 = [v9 gradientColors];

  if (!v10)
  {
    sub_21B61785C(0, &qword_28120B168);
    sub_21B6C8E84();
    v10 = sub_21B6C8E74();
  }

  v11 = OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_gradientPreviewView;
  v12 = *(v0 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_gradientPreviewView);
  if (v12)
  {
    v13 = v12;
    [v13 setColors_];
  }

  v14 = [v1 selectedAppearanceType];
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(v0 + v11);
      if (v15)
      {
        goto LABEL_20;
      }

LABEL_25:
      v17 = 0;
      v18 = 0;
      goto LABEL_26;
    }

    if (v14 != 3)
    {
LABEL_19:
      v15 = *(v0 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_lockPosterPreviewView);
      if (v15)
      {
LABEL_20:
        v22 = v15;
        v17 = 0;
        v18 = 0;
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    v15 = *(v0 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_homePosterPreviewView);
    v19 = v15;
    v20 = [v1 homePosterAppearance];
    v18 = [v20 isLegibilityBlurEnabled];

    v21 = [v1 homePosterAppearance];
  }

  else
  {
    if (v14)
    {
      if (v14 == 1)
      {
        v15 = *(v0 + v2);
        v16 = v15;
        v17 = 0;
        v18 = 0;
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_23:

        goto LABEL_27;
      }

      goto LABEL_19;
    }

    v15 = *(v0 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_lockPosterPreviewView);
    v23 = v15;
    v24 = [v1 lockPosterAppearance];
    v18 = [v24 isLegibilityBlurEnabled];

    v21 = [v1 lockPosterAppearance];
  }

  v25 = v21;
  v17 = [v25 allowsModifyingLegibilityBlur];

  if (v15)
  {
    goto LABEL_23;
  }

LABEL_26:
  v15 = *(v0 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_lockPosterPreviewView);
  v26 = v15;
LABEL_27:
  v27 = OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_controls;
  swift_beginAccess();
  v28 = *(v0 + v27);
  if (v28 >> 62)
  {
    v29 = sub_21B6C9454();
    v30 = &off_2782CA000;
    if (!v29)
    {
LABEL_39:
      v37 = OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_blurButton;
      v38 = *(v0 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_blurButton);
      if (v38)
      {
        [v38 v30[463]];
        v39 = *(v0 + v37);
        if (v39)
        {
          v40 = v39;
          [v40 setEnabled_];

          v1 = v40;
        }
      }

      return;
    }
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v30 = &off_2782CA000;
    if (!v29)
    {
      goto LABEL_39;
    }
  }

  if (v29 >= 1)
  {
    v41 = __PAIR64__(v18, v17);
    v42 = v0;
    v43 = v1;

    v31 = 0;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x21CEF66E0](v31, v28);
        if (!v15)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v36 = *(v28 + 8 * v31 + 32);
        if (!v15)
        {
LABEL_37:
          v35 = 0;
          goto LABEL_32;
        }
      }

      v32 = *&v36[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView];
      sub_21B61785C(0, &unk_28120B170);
      v33 = v32;
      v34 = v15;
      v35 = sub_21B6C91A4();

LABEL_32:
      ++v31;
      [v36 v30[463]];

      if (v29 == v31)
      {

        v0 = v42;
        v1 = v43;
        v17 = v41;
        v18 = HIDWORD(v41);
        goto LABEL_39;
      }
    }
  }

  __break(1u);
}

void sub_21B636734(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_homeScreenConfiguration);
  if (v3)
  {
    v4 = v1;
    [v3 mutableCopy];
    sub_21B6C93E4();
    swift_unknownObjectRelease();
    sub_21B61785C(0, &unk_28120B188);
    if (swift_dynamicCast())
    {
      v5 = OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView;
      v6 = *(v1 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_gradientPreviewView);
      if (v6 && (v7 = *(a1 + OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView), sub_21B61785C(0, &unk_28120B170), v8 = v7, v9 = v6, v10 = sub_21B6C91A4(), v9, v8, (v10 & 1) != 0))
      {
        v11 = 2;
      }

      else
      {
        v12 = *(v4 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_solidColorPreviewView);
        if (v12 && (v13 = *(a1 + v5), sub_21B61785C(0, &unk_28120B170), v14 = v13, v15 = v12, v16 = sub_21B6C91A4(), v15, v14, (v16 & 1) != 0))
        {
          v11 = 1;
        }

        else
        {
          v17 = *(v4 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_homePosterPreviewView);
          if (v17 && (v18 = *(a1 + v5), sub_21B61785C(0, &unk_28120B170), v19 = v18, v20 = v17, v21 = sub_21B6C91A4(), v20, v19, (v21 & 1) != 0))
          {
            v11 = 3;
          }

          else
          {
            v11 = 0;
          }
        }
      }

      v22 = [v36 selectedAppearanceType];
      if (v22 != v11)
      {
        [v36 setSelectedAppearanceType_];
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_21B6865B8(v4, v36);
          swift_unknownObjectRelease();
        }
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          if (v22 == 2 && swift_unknownObjectWeakLoadStrong())
          {
            v31 = [v36 gradientAppearance];
            v24 = [v31 effectiveColor];

            v32 = [v36 gradientAppearance];
            v26 = [v32 colorPickerConfiguration];

            v33 = *(v4 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair);
            if (v33)
            {
              v28 = v33;
              v29 = v28;
              v30 = 1;
              goto LABEL_27;
            }

LABEL_28:

LABEL_34:
            swift_unknownObjectRelease();
            return;
          }
        }

        else if (swift_unknownObjectWeakLoadStrong())
        {
          v34 = *(v4 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair);
          if (v34)
          {
            v35 = v34;
            sub_21B6867A0(v35, v22 != 3, v22, 0);
          }

          goto LABEL_34;
        }
      }

      else if (v11 && v22 == v11 && swift_unknownObjectWeakLoadStrong())
      {
        v23 = [v36 solidColorAppearance];
        v24 = [v23 effectiveColor];

        v25 = [v36 solidColorAppearance];
        v26 = [v25 colorPickerConfiguration];

        v27 = *(v4 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair);
        if (v27)
        {
          v28 = v27;
          v29 = v28;
          v30 = 0;
LABEL_27:
          sub_21B686F2C(v28, v30, v24, v26);

          goto LABEL_28;
        }

        goto LABEL_28;
      }
    }
  }
}

id sub_21B636D00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeScreenConfigurationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21B636E24(uint64_t a1)
{
  type metadata accessor for Identifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21B636E98()
{
  *(v0 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_posterPair) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_controls) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_lockPosterPreviewView) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_gradientPreviewView) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_solidColorPreviewView) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_homePosterPreviewView) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_blurButton) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_stackView) = 0;
  *(v0 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_homeScreenConfiguration) = 0;
  sub_21B6C95D4();
  __break(1u);
}

void sub_21B636F80()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard27HomeScreenConfigurationView_homeScreenConfiguration);
  if (v1)
  {
    [v1 mutableCopy];
    sub_21B6C93E4();
    swift_unknownObjectRelease();
    sub_21B61785C(0, &unk_28120B188);
    if (swift_dynamicCast())
    {
      v2 = [v7 selectedAppearanceType];
      if (v2)
      {
        if (v2 != 3)
        {
          sub_21B6C95D4();
          __break(1u);
          return;
        }

        v3 = &selRef_setHomePosterAppearance_;
        v4 = &selRef_homePosterAppearance;
      }

      else
      {
        v3 = &selRef_setLockPosterAppearance_;
        v4 = &selRef_lockPosterAppearance;
      }

      v5 = [v7 *v4];
      v6 = [v5 copyByTogglingLegibilityBlurEnabled];

      [v7 *v3];
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_21B6865B8(v0, v7);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21B63715C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_displayDate;
  swift_beginAccess();
  sub_21B6385CC(a1, v1 + v6);
  result = swift_endAccess();
  v8 = *(v1 + OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_prominentDisplayController);
  if (v8)
  {
    sub_21B638554(v1 + v6, v5);
    v9 = sub_21B6C8854();
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v5, 1, v9);
    v12 = v8;
    v13 = 0;
    if (v11 != 1)
    {
      v13 = sub_21B6C87F4();
      (*(v10 + 8))(v5, v9);
    }

    [v12 setDisplayDate_];

    return sub_21B6384EC(a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21B6372EC(double a1)
{
  v2 = OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_posterCornerRadius;
  *&v1[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_posterCornerRadius] = a1;
  v3 = [v1 layer];
  [v3 setCornerRadius_];

  v4 = *&v1[OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_glassBackgroundView];
  if (v4)
  {
    v5 = [v4 layer];
    [v5 setCornerRadius_];
  }
}

void sub_21B6373BC()
{
  v1 = v0;
  v2 = sub_21B6C9204();
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x28223BE20](v2);
  v54 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21B6C9364();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v52 - v10;
  [v1 setClipsToBounds_];
  v12 = [v1 layer];
  v13 = *MEMORY[0x277CDA138];
  [v12 setCornerCurve_];

  [v1 setOverrideUserInterfaceStyle_];
  [v1 setClipsToBounds_];
  v14 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v15 = objc_opt_self();
  v16 = [v15 blackColor];
  [v14 setBackgroundColor_];

  v60 = v14;
  [v1 setBackgroundView_];
  if (PUIFeatureEnabled())
  {
    v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v17 setTranslatesAutoresizingMaskIntoConstraints_];
    [v17 pui_setLockscreenControlGlassBackground];
    [v17 setClipsToBounds_];
    v18 = [v17 layer];
    [v18 setCornerCurve_];

    [v60 addSubview_];
    v19 = *&v1[OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_glassBackgroundView];
    *&v1[OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_glassBackgroundView] = v17;
  }

  v20 = [objc_opt_self() pr:*MEMORY[0x277D3EF08] fontWithTimeFontIdentifier:?];
  v21 = OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_displayDate;
  swift_beginAccess();
  sub_21B638554(&v1[v21], v11);
  v22 = v20;
  v23 = v15;
  v24 = [v15 whiteColor];
  v25 = sub_21B6C8854();
  v26 = *(v25 - 8);
  v27 = 0;
  if ((*(v26 + 48))(v11, 1, v25) != 1)
  {
    v27 = sub_21B6C87F4();
    (*(v26 + 8))(v11, v25);
  }

  v28 = [objc_allocWithZone(MEMORY[0x277D02CE0]) initWithElements:-1 baseFont:v22 date:v27 textColor:v24];
  v53 = v22;

  v29 = PUIFeatureEnabled();
  v30 = v58;
  if (v29)
  {
    v31 = [objc_allocWithZone(MEMORY[0x277D3ED78]) initWithPreferredMaterialType_];
    [v28 setTitleContentStyle_];
  }

  v32 = [v1 contentView];
  v33 = [v28 view];
  v34 = v59;
  if (v33)
  {
    v35 = v33;
    [v32 addSubview_];

    v36 = *&v1[OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_prominentDisplayController];
    *&v1[OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_prominentDisplayController] = v28;
    v52 = v28;

    if (PUIFeatureEnabled())
    {
      sub_21B6C9344();
    }

    else
    {
      sub_21B6C9354();
    }

    v37 = sub_21B6C8D74();
    v38 = [objc_opt_self() systemImageNamed_];

    sub_21B6C9304();
    v39 = [objc_opt_self() configurationWithPointSize:6 weight:2 scale:40.0];
    sub_21B6C91C4();
    (*(v55 + 104))(v54, *MEMORY[0x277D74FD8], v56);
    sub_21B6C9224();
    if (PUIFeatureEnabled())
    {
      v40 = [v23 whiteColor];
      sub_21B6C92C4();
    }

    else
    {
      v41 = [v23 blackColor];
      sub_21B6C92C4();
      v42 = [v23 whiteColor];
      sub_21B6C92B4();
    }

    sub_21B6C9254();
    sub_21B61785C(0, &unk_28120B100);
    (*(v30 + 16))(v57, v8, v34);
    sub_21B61785C(0, &unk_28120B110);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21B6C91B4();
    v43 = sub_21B6C9374();
    v44 = sub_21B6C8D74();
    [v43 setAccessibilityIdentifier_];

    [v43 setTintAdjustmentMode_];
    v45 = [v1 contentView];
    [v45 addSubview_];

    v46 = *&v1[OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_addButton];
    *&v1[OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_addButton] = v43;
    v47 = v43;

    if (PUIFeatureEnabled())
    {
      (*(v30 + 8))(v8, v34);
    }

    else
    {
      v48 = [v1 layer];
      [v48 setBorderWidth_];
      v49 = [v23 whiteColor];
      v50 = [v49 colorWithAlphaComponent_];

      v51 = [v50 CGColor];
      [v48 setBorderColor_];

      (*(v30 + 8))(v8, v34);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21B637CD4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *&v1[OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_addButton];
      v3 = v2;
      sub_21B67AF40(v2, 0, 0);

      swift_unknownObjectRelease();
      v1 = v3;
    }
  }
}

void sub_21B637D78()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for PosterGalleryAffordanceCollectionViewCell();
  objc_msgSendSuper2(&v26, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_glassBackgroundView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 backgroundView];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 pui:v2 constraintsPinningSubview:15 toEdges:?];
      if (!v5)
      {
        sub_21B61785C(0, &qword_28120B2D0);
        sub_21B6C8E84();
        v5 = sub_21B6C8E74();
      }

      [objc_opt_self() activateConstraints_];

      v2 = v5;
    }
  }

  [v0 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v0 traitCollection];
  [v14 displayScale];

  v15 = *&v0[OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_prominentDisplayController];
  if (!v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = [v15 view];
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16;
  [v16 setFrame_];

  v18 = OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_addButton;
  v19 = *&v0[OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_addButton];
  if (!v19)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v19 intrinsicContentSize];
  v20 = *&v0[v18];
  if (v20)
  {
    v21 = v20;
    BSRectWithSize();
    v27.origin.x = v7;
    v27.origin.y = v9;
    v27.size.width = v11;
    v27.size.height = v13;
    MidX = CGRectGetMidX(v27);
    v23 = v7;
    v24 = MidX;
    v28.origin.x = v23;
    v28.origin.y = v9;
    v28.size.width = v11;
    v28.size.height = v13;
    MidY = CGRectGetMidY(v28);
    CGPointMake(v24, MidY);
    UIRectCenteredAboutPointScale();
    [v21 setFrame_];

    return;
  }

LABEL_15:
  __break(1u);
}

id sub_21B638158(void *a1)
{
  *&v1[OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_displayDate;
  v4 = sub_21B6C8854();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_prominentDisplayController] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_addButton] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_glassBackgroundView] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PosterGalleryAffordanceCollectionViewCell();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

void sub_21B638270()
{
  sub_21B6178E4(v0 + OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_delegate);
  sub_21B6384EC(v0 + OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_displayDate);

  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_glassBackgroundView);
}

id sub_21B6382E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterGalleryAffordanceCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PosterGalleryAffordanceCollectionViewCell()
{
  result = qword_28120B5D8;
  if (!qword_28120B5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B6383E8()
{
  sub_21B638490();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21B638490()
{
  if (!qword_28120BB40)
  {
    sub_21B6C8854();
    v0 = sub_21B6C93B4();
    if (!v1)
    {
      atomic_store(v0, &qword_28120BB40);
    }
  }
}

uint64_t sub_21B6384EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B638554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B6385CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B63863C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void UIViewController.dismissPresentedViewControllers(animated:dismissHandler:completion:)(char a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  v12 = [v6 presentedViewController];
  if (v12)
  {
    v13 = v12;
    if (a2)
    {
      v24 = a2;
      v25 = a3;
      v20 = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = sub_21B6388A0;
      v23 = &block_descriptor_3;
      v14 = _Block_copy(&v20);
    }

    else
    {
      v14 = 0;
    }

    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    v17 = a1 & 1;
    *(v16 + 24) = v17;
    *(v16 + 32) = a4;
    *(v16 + 40) = a5;
    *(v16 + 48) = a2;
    *(v16 + 56) = a3;
    v24 = sub_21B6389FC;
    v25 = v16;
    v20 = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_21B63863C;
    v23 = &block_descriptor_3;
    v18 = _Block_copy(&v20);
    sub_21B529CD0(a2);
    v19 = v13;
    sub_21B529CD0(a4);

    [v19 dismissPresentedViewControllersAnimated:v17 dismissHandler:v14 completion:v18];
    _Block_release(v18);
    _Block_release(v14);
  }

  else if (a4)
  {

    a4(v15);

    sub_21B52B410(a4);
  }
}

void sub_21B6388A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_21B638908(void *a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  if (a3)
  {
    v9[4] = a3;
    v9[5] = a4;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_21B63863C;
    v9[3] = &block_descriptor_12;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [a1 dismissViewControllerAnimated:a2 & 1 completion:v8];
  _Block_release(v8);
  if (a5)
  {
    a5(a1);
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_21B638A28(void *a1, int a2, char a3, void *aBlock, const void *a5)
{
  v8 = _Block_copy(aBlock);
  v9 = _Block_copy(a5);
  v10 = v9;
  if (v8)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v8 = sub_21B638B54;
    if (v10)
    {
LABEL_3:
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      v10 = sub_21B638B4C;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v13 = a1;
  UIViewController.dismissPresentedViewControllers(animated:dismissHandler:completion:)(a3, v8, v11, v10, v12);
  sub_21B52B410(v10);
  sub_21B52B410(v8);
}

void sub_21B638B74()
{
  v1 = v0;
  v65[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21B6C8794();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterConfiguration;
  v7 = [*&v0[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterConfiguration] _path];
  v8 = OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterPath;
  v9 = *&v0[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterPath];
  *&v0[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterPath] = v7;

  v10 = *&v0[v6];
  v11 = [v10 _path];
  v12 = [v11 serverIdentity];

  if (!v12)
  {
LABEL_8:

    goto LABEL_9;
  }

  v13 = [v12 provider];

  sub_21B6C8DA4();
  v14 = objc_allocWithZone(MEMORY[0x277CC1E50]);
  v43 = sub_21B667EDC();
  v44 = *&v1[v6];
  v65[0] = 0;
  v45 = [v44 loadOtherMetadataWithError_];
  if (!v45)
  {
    v61 = v65[0];
    v62 = sub_21B6C8764();

    swift_willThrow();
    v63 = v62;

    if (qword_27CD925A8 != -1)
    {
      swift_once();
    }

    v15 = sub_21B6C8AB4();
    __swift_project_value_buffer(v15, qword_27CD94D60);
    v16 = sub_21B6C9024();
    v17 = v1;
    v10 = sub_21B6C8A94();

    if (os_log_type_enabled(v10, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = *&v1[v8];
      *(v18 + 4) = v20;
      *v19 = v20;
      v21 = v20;
      _os_log_impl(&dword_21B526000, v10, v16, "Error fetching localized name for poster: %@", v18, 0xCu);
      sub_21B619CD8(v19);
      MEMORY[0x21CEF8150](v19, -1, -1);
      MEMORY[0x21CEF8150](v18, -1, -1);
    }

    goto LABEL_8;
  }

  v46 = v45;
  v47 = v65[0];
  v48 = [v46 displayNameLocalizationKey];

  if (v48)
  {
    v49 = objc_opt_self();
    v50 = [v43 URL];
    sub_21B6C8784();

    v51 = sub_21B6C8774();
    v52 = v3;
    v53 = v51;
    (*(v52 + 8))(v5, v2);
    v54 = [v49 pf:v53 uniqueBundleWithURL:?];

    if (v54)
    {
      v55 = [v54 localizedStringForKey:v48 value:0 table:0];

      v56 = sub_21B6C8DA4();
      v58 = v57;

      v59 = &v1[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_localizedTitle];
      *v59 = v56;
      v59[1] = v58;
    }

    else
    {
    }
  }

  else
  {
  }

LABEL_9:
  v22 = *&v1[v6];
  v65[0] = 0;
  v23 = [v22 loadAmbientConfigurationWithError_];
  v24 = v65[0];
  if (v23)
  {
    v25 = *&v1[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_ambientConfiguration];
    *&v1[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_ambientConfiguration] = v23;
    v26 = v23;
    v27 = v24;

    v28 = [v26 displayNameSystemSymbolName];
    if (v28)
    {
      v29 = v28;
      v30 = sub_21B6C8DA4();
      v32 = v31;
    }

    else
    {

      v30 = 0;
      v32 = 0;
    }

    v60 = &v1[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_symbolName];
    *v60 = v30;
    v60[1] = v32;
  }

  else
  {
    v33 = v65[0];
    v34 = sub_21B6C8764();

    swift_willThrow();
    if (qword_27CD925A8 != -1)
    {
      swift_once();
    }

    v35 = sub_21B6C8AB4();
    __swift_project_value_buffer(v35, qword_27CD94D60);
    v36 = sub_21B6C9024();
    v37 = v1;
    v38 = sub_21B6C8A94();

    if (os_log_type_enabled(v38, v36))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      v41 = *&v1[v8];
      *(v39 + 4) = v41;
      *v40 = v41;
      v42 = v41;
      _os_log_impl(&dword_21B526000, v38, v36, "Error fetching ambient configuration for poster: %@", v39, 0xCu);
      sub_21B619CD8(v40);
      MEMORY[0x21CEF8150](v40, -1, -1);
      MEMORY[0x21CEF8150](v39, -1, -1);
    }
  }
}

id sub_21B6391BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientPosterModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21B639298(void *a1)
{
  v2 = type metadata accessor for AmbientPosterModel();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_ambientConfiguration] = 0;
  *&v3[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterPath] = 0;
  v4 = &v3[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_symbolName];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v3[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_localizedTitle];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v3[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterConfiguration] = a1;
  v9.receiver = v3;
  v9.super_class = v2;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_21B638B74();

  return v7;
}

uint64_t static PBFDebugViewFactoryUtilities.setupFactory(galleryControllerState:)(void *a1)
{
  sub_21B6C90C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD931C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21B6D7FE0;
  *(v2 + 56) = type metadata accessor for PBFGalleryControllerState();
  *(v2 + 64) = sub_21B6393E8();
  *(v2 + 32) = a1;
  v3 = a1;
  sub_21B6C90B4();
}

unint64_t sub_21B6393E8()
{
  result = qword_28120B3D0;
  if (!qword_28120B3D0)
  {
    type metadata accessor for PBFGalleryControllerState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120B3D0);
  }

  return result;
}

id PBFDebugViewFactoryUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PBFDebugViewFactoryUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PBFDebugViewFactoryUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PBFDebugViewFactoryUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PBFDebugViewFactoryUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21B6395F4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21B63D734(&qword_28120B3C8, type metadata accessor for PBFGalleryControllerState);
  sub_21B6C8A24();

  v3 = OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState__lock_lastUsefulGalleryConfigurationPersistDate;
  swift_beginAccess();
  return sub_21B63D2BC(v5 + v3, a1, &qword_27CD93190);
}

uint64_t sub_21B6396CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21B63D734(&qword_28120B3C8, type metadata accessor for PBFGalleryControllerState);
  sub_21B6C8A24();

  v4 = OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState__lock_lastUsefulGalleryConfigurationPersistDate;
  swift_beginAccess();
  return sub_21B63D2BC(v3 + v4, a2, &qword_27CD93190);
}

uint64_t sub_21B6397A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21B63D2BC(a1, &v6 - v3, &qword_27CD93190);
  return sub_21B639850(v4);
}

uint64_t sub_21B639850(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState__lock_lastUsefulGalleryConfigurationPersistDate;
  swift_beginAccess();
  sub_21B63D2BC(v1 + v6, v5, &qword_27CD93190);
  v7 = sub_21B63D388(v5, a1);
  sub_21B62AA8C(v5, &qword_27CD93190);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_21B63D734(&qword_28120B3C8, type metadata accessor for PBFGalleryControllerState);
    sub_21B6C8A14();
  }

  else
  {
    sub_21B63D2BC(a1, v5, &qword_27CD93190);
    swift_beginAccess();
    sub_21B63D6A8(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_21B62AA8C(a1, &qword_27CD93190);
}

uint64_t sub_21B639A58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_21B63D2BC(a2, &v9 - v5, &qword_27CD93190);
  v7 = OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState__lock_lastUsefulGalleryConfigurationPersistDate;
  swift_beginAccess();
  sub_21B63D6A8(v6, a1 + v7);
  return swift_endAccess();
}

double sub_21B639B84(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21B63D734(&qword_28120B3C8, type metadata accessor for PBFGalleryControllerState);
  sub_21B6C8A24();

  return *(v2 + *a2);
}

double sub_21B639C24@<D0>(uint64_t *a1@<X0>, void *a2@<X4>, double *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21B63D734(&qword_28120B3C8, type metadata accessor for PBFGalleryControllerState);
  sub_21B6C8A24();

  result = *(v5 + *a2);
  *a3 = result;
  return result;
}

void *sub_21B639D00(void *result, double a2)
{
  if (*(v2 + *result) == a2)
  {
    *(v2 + *result) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21B63D734(&qword_28120B3C8, type metadata accessor for PBFGalleryControllerState);
    sub_21B6C8A14();
  }

  return result;
}

uint64_t sub_21B639E0C()
{
  swift_getKeyPath();
  sub_21B63D734(&qword_28120B3C8, type metadata accessor for PBFGalleryControllerState);
  sub_21B6C8A24();

  return *(v0 + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState__lock_proactiveInfractionCount);
}

uint64_t sub_21B639EB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21B63D734(&qword_28120B3C8, type metadata accessor for PBFGalleryControllerState);
  sub_21B6C8A24();

  *a2 = *(v3 + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState__lock_proactiveInfractionCount);
  return result;
}

uint64_t sub_21B639F64(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState__lock_proactiveInfractionCount) != result)
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21B63D734(&qword_28120B3C8, type metadata accessor for PBFGalleryControllerState);
    sub_21B6C8A14();
  }

  return result;
}

id PBFGalleryControllerState.__allocating_init(lastUsefulGalleryConfigurationPersistDate:minimumIntervalBetweenProactivePush:maximumIntervalBetweenProactivePush:proactiveInfractionCount:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v20 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = objc_allocWithZone(v4);
  v12 = OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD925E8);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *&v11[v12] = v13;
  v14 = OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState__lock_lastUsefulGalleryConfigurationPersistDate;
  v15 = sub_21B6C8854();
  v16 = *(*(v15 - 8) + 56);
  v16(&v11[v14], 1, 1, v15);
  v16(&v11[v14], 1, 1, v15);
  _s11PosterBoard25PBFGalleryControllerStateC22__observationRegistrar33_3674D5DDA3051C4CEE5CAC5BB9AB0E4111Observation0pG0Vvpfi_0();
  sub_21B63D2BC(a1, v10, &qword_27CD93190);
  sub_21B62AA8C(&v11[v14], &qword_27CD93190);
  sub_21B63A43C(v10, &v11[v14]);
  *&v11[OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState__lock_minimumIntervalBetweenProactivePush] = a3;
  *&v11[OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState__lock_maximumIntervalBetweenProactivePush] = a4;
  *&v11[OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState__lock_proactiveInfractionCount] = v20;
  v21.receiver = v11;
  v21.super_class = v4;
  v17 = objc_msgSendSuper2(&v21, sel_init);
  sub_21B62AA8C(a1, &qword_27CD93190);
  return v17;
}

id PBFGalleryControllerState.init(lastUsefulGalleryConfigurationPersistDate:minimumIntervalBetweenProactivePush:maximumIntervalBetweenProactivePush:proactiveInfractionCount:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD925E8);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *&v4[v12] = v13;
  v14 = OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState__lock_lastUsefulGalleryConfigurationPersistDate;
  v15 = sub_21B6C8854();
  v16 = *(*(v15 - 8) + 56);
  v16(&v4[v14], 1, 1, v15);
  v16(&v4[v14], 1, 1, v15);
  _s11PosterBoard25PBFGalleryControllerStateC22__observationRegistrar33_3674D5DDA3051C4CEE5CAC5BB9AB0E4111Observation0pG0Vvpfi_0();
  sub_21B63D2BC(a1, v11, &qword_27CD93190);
  sub_21B62AA8C(&v4[v14], &qword_27CD93190);
  sub_21B63A43C(v11, &v4[v14]);
  *&v4[OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState__lock_minimumIntervalBetweenProactivePush] = a3;
  *&v4[OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState__lock_maximumIntervalBetweenProactivePush] = a4;
  *&v4[OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState__lock_proactiveInfractionCount] = a2;
  v17 = type metadata accessor for PBFGalleryControllerState();
  v20.receiver = v4;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  sub_21B62AA8C(a1, &qword_27CD93190);
  return v18;
}

uint64_t sub_21B63A43C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PBFGalleryControllerState()
{
  result = qword_28120B3B8;
  if (!qword_28120B3B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void PBFGalleryControllerState.lastUsefulGalleryConfigurationPersistDate.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_21B63CFBC();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t PBFGalleryControllerState.lastUsefulGalleryConfigurationPersistDate.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock);
  os_unfair_lock_lock(v3 + 4);
  sub_21B63CFBC();
  os_unfair_lock_unlock(v3 + 4);
  return sub_21B62AA8C(a1, &qword_27CD93190);
}

uint64_t sub_21B63AA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_21B63D734(&qword_28120B3C8, type metadata accessor for PBFGalleryControllerState);
  sub_21B6C8A24();

  v4 = OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState__lock_lastUsefulGalleryConfigurationPersistDate;
  swift_beginAccess();
  return sub_21B63D2BC(a1 + v4, a2, &qword_27CD93190);
}

uint64_t sub_21B63AB50(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  sub_21B63D2BC(a2, &v7 - v4, &qword_27CD93190);
  return sub_21B639850(v5);
}

void (*PBFGalleryControllerState.lastUsefulGalleryConfigurationPersistDate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[2] = v7;
  v8 = *(v1 + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock);
  v5[3] = v8;
  v9 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  os_unfair_lock_lock(v8 + 4);
  sub_21B63DA2C();
  v5[4] = 0;
  os_unfair_lock_unlock(v8 + 4);
  return sub_21B63AD70;
}

void sub_21B63AD70(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (a2)
  {
    v6 = sub_21B63D2BC(*(*a1 + 16), v4, &qword_27CD93190);
    v7 = MEMORY[0x28223BE20](v6);
    MEMORY[0x28223BE20](v7);
    os_unfair_lock_lock(v3 + 4);
    sub_21B63DA2C();
    os_unfair_lock_unlock(v3 + 4);
    sub_21B62AA8C(v4, &qword_27CD93190);
  }

  else
  {
    v8 = MEMORY[0x28223BE20](a1);
    MEMORY[0x28223BE20](v8);
    os_unfair_lock_lock(v3 + 4);
    sub_21B63DA2C();
    os_unfair_lock_unlock(v3 + 4);
  }

  sub_21B62AA8C(v5, &qword_27CD93190);
  free(v5);
  free(v4);
  free(v2);
}

double PBFGalleryControllerState.minimumIntervalBetweenProactivePush.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_21B63D02C(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void PBFGalleryControllerState.minimumIntervalBetweenProactivePush.setter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_21B63DA2C();
  os_unfair_lock_unlock(v1 + 4);
}

void (*PBFGalleryControllerState.minimumIntervalBetweenProactivePush.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock);
  a1[1] = v1;
  a1[2] = v3;
  os_unfair_lock_lock(v3 + 4);
  sub_21B63D99C(v5);
  a1[3] = 0;
  os_unfair_lock_unlock(v3 + 4);
  *a1 = *&v5[0];
  return sub_21B63B1C8;
}

void sub_21B63B1C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_21B63DA2C();
  os_unfair_lock_unlock(v1 + 4);
}

double PBFGalleryControllerState.maximumIntervalBetweenProactivePush.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_21B63D99C(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void PBFGalleryControllerState.maximumIntervalBetweenProactivePush.setter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_21B63DA2C();
  os_unfair_lock_unlock(v1 + 4);
}

double sub_21B63B47C@<D0>(uint64_t a1@<X0>, void *a2@<X2>, double *a3@<X8>)
{
  swift_getKeyPath();
  sub_21B63D734(&qword_28120B3C8, type metadata accessor for PBFGalleryControllerState);
  sub_21B6C8A24();

  result = *(a1 + *a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B63B538(uint64_t result, void *a2, double a3)
{
  if (*(result + *a2) == a3)
  {
    *(result + *a2) = a3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21B63D734(&qword_28120B3C8, type metadata accessor for PBFGalleryControllerState);
    sub_21B6C8A14();
  }

  return result;
}

void (*PBFGalleryControllerState.maximumIntervalBetweenProactivePush.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock);
  a1[1] = v1;
  a1[2] = v3;
  os_unfair_lock_lock(v3 + 4);
  sub_21B63D99C(v5);
  a1[3] = 0;
  os_unfair_lock_unlock(v3 + 4);
  *a1 = *&v5[0];
  return sub_21B63B700;
}

void sub_21B63B700(uint64_t a1)
{
  v1 = *(a1 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_21B63DA2C();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t PBFGalleryControllerState.proactiveInfractionCount.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_21B63D114(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void PBFGalleryControllerState.proactiveInfractionCount.setter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_21B63DA2C();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_21B63B9A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_getKeyPath();
  sub_21B63D734(&qword_28120B3C8, type metadata accessor for PBFGalleryControllerState);
  sub_21B6C8A24();

  *a2 = *(a1 + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState__lock_proactiveInfractionCount);
  return result;
}

uint64_t sub_21B63BA5C(uint64_t result, uint64_t a2)
{
  if (*(result + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState__lock_proactiveInfractionCount) != a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21B63D734(&qword_28120B3C8, type metadata accessor for PBFGalleryControllerState);
    sub_21B6C8A14();
  }

  return result;
}

void (*PBFGalleryControllerState.proactiveInfractionCount.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock);
  a1[1] = v1;
  a1[2] = v3;
  os_unfair_lock_lock(v3 + 4);
  sub_21B63D9B4(&v5);
  a1[3] = 0;
  os_unfair_lock_unlock(v3 + 4);
  *a1 = v5;
  return sub_21B63BC20;
}

void sub_21B63BC20(uint64_t a1)
{
  v1 = *(a1 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_21B63DA2C();
  os_unfair_lock_unlock(v1 + 4);
}

id PBFGalleryControllerState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PBFGalleryControllerState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PBFGalleryControllerState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id PBFGalleryControllerState.view.getter@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for GalleryControllerDebugView;
  a1[4] = sub_21B63D148();
  *a1 = v3;

  return v3;
}

uint64_t PBFGalleryControllerState.component.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D3EF38];
  v3 = sub_21B6C8A84();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id sub_21B63BF04@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  a1[3] = &type metadata for GalleryControllerDebugView;
  a1[4] = sub_21B63D148();
  *a1 = v4;

  return v4;
}

uint64_t sub_21B63BF60@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D3EF38];
  v3 = sub_21B6C8A84();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double sub_21B63BFD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21B6C8BA4();
  v26 = 1;
  sub_21B63C1E0(a1, &v13);
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
  sub_21B63D2BC(&v27, v12, &qword_27CD931D8);
  sub_21B62AA8C(v39, &qword_27CD931D8);
  *&v25[135] = v35;
  *&v25[151] = v36;
  *&v25[167] = v37;
  *&v25[71] = v31;
  *&v25[87] = v32;
  *&v25[103] = v33;
  *&v25[119] = v34;
  *&v25[7] = v27;
  *&v25[23] = v28;
  *&v25[39] = v29;
  v25[183] = v38;
  *&v25[55] = v30;
  LOBYTE(a1) = v26;
  v5 = sub_21B6C8C24();
  v6 = *&v25[144];
  *(a2 + 145) = *&v25[128];
  *(a2 + 161) = v6;
  *(a2 + 177) = *&v25[160];
  v7 = *&v25[80];
  *(a2 + 81) = *&v25[64];
  *(a2 + 97) = v7;
  v8 = *&v25[112];
  *(a2 + 113) = *&v25[96];
  *(a2 + 129) = v8;
  v9 = *&v25[16];
  *(a2 + 17) = *v25;
  *(a2 + 33) = v9;
  v10 = *&v25[48];
  *(a2 + 49) = *&v25[32];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = a1;
  *(a2 + 193) = *&v25[176];
  *(a2 + 65) = v10;
  *(a2 + 208) = v5;
  result = 0.0;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 248) = 1;
  return result;
}

uint64_t sub_21B63C1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD931E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27[-v5 - 8];
  v7 = sub_21B6C8C14();
  v27[0] = 1;
  sub_21B63C548(a1, &v41);
  v33 = *&v42[48];
  v34 = *&v42[64];
  v35 = *&v42[80];
  v36 = *&v42[96];
  v29 = v41;
  v30 = *v42;
  v31 = *&v42[16];
  v32 = *&v42[32];
  v37[0] = v41;
  v37[1] = *v42;
  v37[2] = *&v42[16];
  v37[3] = *&v42[32];
  v37[4] = *&v42[48];
  v37[5] = *&v42[64];
  v37[6] = *&v42[80];
  v37[7] = *&v42[96];
  sub_21B63D2BC(&v29, &v38, &qword_27CD931E8);
  sub_21B62AA8C(v37, &qword_27CD931E8);
  *&v28[71] = v33;
  *&v28[87] = v34;
  *&v28[103] = v35;
  *&v28[119] = v36;
  *&v28[7] = v29;
  *&v28[23] = v30;
  *&v28[39] = v31;
  *&v28[55] = v32;
  v8 = v27[0];
  v9 = sub_21B6C8C34();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = sub_21B6C8C44();
  sub_21B62AA8C(v6, &qword_27CD931E0);
  KeyPath = swift_getKeyPath();
  v38 = v7;
  LOBYTE(v39[0]) = v8;
  v12 = *&v28[96];
  *(&v39[6] + 1) = *&v28[96];
  v13 = *&v28[80];
  *(&v39[5] + 1) = *&v28[80];
  v14 = *&v28[112];
  *(&v39[7] + 1) = *&v28[112];
  v15 = *&v28[16];
  *(&v39[1] + 1) = *&v28[16];
  v16 = *&v28[32];
  *(&v39[2] + 1) = *&v28[32];
  v17 = *&v28[48];
  *(&v39[3] + 1) = *&v28[48];
  v18 = *&v28[64];
  *(&v39[4] + 1) = *&v28[64];
  v19 = *v28;
  *(v39 + 1) = *v28;
  *&v39[8] = *&v28[127];
  *(&v39[8] + 1) = KeyPath;
  v20 = v39[4];
  *(a2 + 64) = v39[3];
  *(a2 + 80) = v20;
  v21 = v39[6];
  *(a2 + 96) = v39[5];
  *(a2 + 112) = v21;
  v22 = v39[0];
  *a2 = v38;
  *(a2 + 16) = v22;
  v23 = v39[2];
  *(a2 + 32) = v39[1];
  *(a2 + 48) = v23;
  v24 = v39[8];
  *(a2 + 128) = v39[7];
  *(a2 + 144) = v24;
  *&v42[81] = v13;
  *&v42[97] = v12;
  *v43 = v14;
  *&v42[17] = v15;
  *&v42[33] = v16;
  *&v42[49] = v17;
  *&v42[65] = v18;
  v40 = v10;
  v27[168] = 1;
  *(a2 + 160) = v10;
  *(a2 + 168) = 0;
  *(a2 + 176) = 1;
  v41 = v7;
  v42[0] = v8;
  *&v42[1] = v19;
  *&v43[15] = *&v28[127];
  v44 = KeyPath;
  v45 = v10;
  sub_21B63D2BC(&v38, v27, &qword_27CD931F0);
  return sub_21B62AA8C(&v41, &qword_27CD931F0);
}

void sub_21B63C548(uint64_t a1@<X0>, void *a2@<X8>)
{
  v64 = a2;
  v3 = sub_21B6C87B4();
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x28223BE20](v3);
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_21B6C87D4();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v65 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21B6C8854();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v63 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v60 - v10;
  v12 = sub_21B6C8BF4();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v67 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  sub_21B6C8BE4();
  sub_21B6C8BD4();
  v17 = *(a1 + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock);
  v68 = a1;
  v77 = a1;
  v74 = sub_21B63D9CC;
  v75 = &v76;
  os_unfair_lock_lock(v17 + 4);
  sub_21B63DA2C();
  v70 = 0;
  os_unfair_lock_unlock(v17 + 4);
  v18 = v7;
  v19 = v6;
  if ((*(v7 + 48))(v11, 1, v6))
  {
    sub_21B62AA8C(v11, &qword_27CD93190);
  }

  else
  {
    v20 = v63;
    (*(v7 + 16))(v63, v11, v6);
    sub_21B62AA8C(v11, &qword_27CD93190);
    v21 = v65;
    sub_21B6C87C4();
    v22 = v66;
    sub_21B6C87A4();
    v62 = sub_21B6C8834();
    (*(v72 + 8))(v22, v73);
    (*(v69 + 8))(v21, v71);
    (*(v18 + 8))(v20, v19);
  }

  sub_21B6C8BC4();

  sub_21B6C8BD4();
  sub_21B6C8C04();
  v72 = sub_21B6C8C54();
  v71 = v23;
  LODWORD(v66) = v24;
  v73 = v25;
  sub_21B6C8BE4();
  v26 = sub_21B6C8BD4();
  v27 = MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v27);
  os_unfair_lock_lock(v17 + 4);
  v28 = v70;
  sub_21B63D99C(v85);
  os_unfair_lock_unlock(v17 + 4);
  sub_21B6C8BB4();
  sub_21B6C8BD4();
  sub_21B6C8C04();
  v69 = sub_21B6C8C54();
  v65 = v29;
  v31 = v30;
  v70 = v32;
  sub_21B6C8BE4();
  v33 = sub_21B6C8BD4();
  v34 = MEMORY[0x28223BE20](v33);
  MEMORY[0x28223BE20](v34);
  os_unfair_lock_lock(v17 + 4);
  sub_21B63D99C(v85);
  os_unfair_lock_unlock(v17 + 4);
  sub_21B6C8BB4();
  sub_21B6C8BD4();
  sub_21B6C8C04();
  v35 = sub_21B6C8C54();
  v61 = v36;
  v38 = v37;
  v62 = v39;
  sub_21B6C8BE4();
  v40 = sub_21B6C8BD4();
  v63 = &v60;
  v41 = MEMORY[0x28223BE20](v40);
  MEMORY[0x28223BE20](v41);
  os_unfair_lock_lock(v17 + 4);
  sub_21B63D9B4(v85);
  os_unfair_lock_unlock(v17 + 4);
  if (v28)
  {
    __break(1u);
  }

  else
  {
    v84 = v85[0];
    sub_21B6C8BB4();
    sub_21B6C8BD4();
    sub_21B6C8C04();
    v42 = sub_21B6C8C54();
    v67 = v42;
    v44 = v43;
    v68 = v45;
    v46 = v66 & 1;
    LOBYTE(v84) = v66 & 1;
    v47 = v31 & 1;
    v83 = v31 & 1;
    v48 = v38 & 1;
    v82 = v38 & 1;
    v81 = v66 & 1;
    v80 = v31 & 1;
    v79 = v38 & 1;
    v50 = v49 & 1;
    v78 = v49 & 1;
    v51 = v72;
    v52 = v73;
    v53 = v64;
    *v64 = v72;
    v54 = v51;
    v55 = v71;
    v53[1] = v71;
    *(v53 + 16) = v46;
    v56 = v69;
    v53[3] = v52;
    v53[4] = v56;
    v57 = v65;
    v53[5] = v65;
    *(v53 + 48) = v31 & 1;
    v53[7] = v70;
    v53[8] = v35;
    v58 = v61;
    v53[9] = v61;
    *(v53 + 80) = v48;
    v53[11] = v62;
    v53[12] = v42;
    v53[13] = v43;
    *(v53 + 112) = v49 & 1;
    v53[15] = v45;
    sub_21B63D324(v54, v55, v46);

    sub_21B63D324(v56, v57, v47);

    sub_21B63D324(v35, v58, v48);

    v59 = v67;
    sub_21B63D324(v67, v44, v50);

    sub_21B63D334(v59, v44, v50);

    sub_21B63D334(v35, v58, v82);

    sub_21B63D334(v69, v57, v83);

    sub_21B63D334(v72, v71, SLOBYTE(v84));
  }
}

unint64_t sub_21B63D148()
{
  result = qword_27CD931D0;
  if (!qword_27CD931D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD931D0);
  }

  return result;
}

void sub_21B63D1A4()
{
  sub_21B638490();
  if (v0 <= 0x3F)
  {
    sub_21B6C8A44();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_21B63D2BC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B63D324(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21B63D334(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_21B63D358()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState__lock_maximumIntervalBetweenProactivePush) = result;
  return result;
}

double sub_21B63D370()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState__lock_minimumIntervalBetweenProactivePush) = result;
  return result;
}

uint64_t sub_21B63D388(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B6C8854();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD931F8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_21B63D2BC(a1, &v21 - v13, &qword_27CD93190);
  sub_21B63D2BC(a2, &v14[v15], &qword_27CD93190);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_21B63D2BC(v14, v10, &qword_27CD93190);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_21B63D734(&qword_28120BB48, MEMORY[0x277CC9578]);
      v18 = sub_21B6C8D64();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_21B62AA8C(v14, &qword_27CD93190);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21B62AA8C(v14, &qword_27CD931F8);
    v17 = 1;
    return v17 & 1;
  }

  sub_21B62AA8C(v14, &qword_27CD93190);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21B63D6A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B63D734(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_21B63D77C@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

double sub_21B63D7C0@<D0>(double *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = v5;
    *a1 = v5;
  }

  return result;
}

unint64_t sub_21B63D804()
{
  result = qword_27CD93200;
  if (!qword_27CD93200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD93208);
    sub_21B63D890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD93200);
  }

  return result;
}

unint64_t sub_21B63D890()
{
  result = qword_27CD93210;
  if (!qword_27CD93210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD93218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD93210);
  }

  return result;
}

id sub_21B63DBD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SidebarComplicationsSnapshotSceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21B63DC40(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = objc_allocWithZone(MEMORY[0x277D75DA0]);
    v6 = a1;
    v7 = [v5 initWithWindowScene_];
    v8 = [objc_opt_self() sharedInstance];
    v9 = [v8 dataStore];

    v10 = [v9 currentGalleryConfiguration];
    type metadata accessor for SnapshotComplicationLayoutProvider();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v12 = v10;
    v13 = [v4 _FBSScene];
    v14 = [objc_allocWithZone(MEMORY[0x277D3EE78]) initWithScene:v13 complicationLayoutProvider:v11 gridType:1];

    [v7 setRootViewController_];
    [v7 makeKeyAndVisible];

    v15 = *(v1 + OBJC_IVAR____TtC11PosterBoard41SidebarComplicationsSnapshotSceneDelegate_window);
    *(v1 + OBJC_IVAR____TtC11PosterBoard41SidebarComplicationsSnapshotSceneDelegate_window) = v7;
  }
}

void sub_21B63DE04()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard41SidebarComplicationsSnapshotSceneDelegate_window);
  if (v1)
  {
    v2 = [v1 rootViewController];
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      v5 = v4;
      if (!v4)
      {

        v4 = 0;
      }

      [v4 invalidate];
    }
  }
}

Swift::Void __swiftcall UIView.fade(withDuration:timingFunctionName:)(Swift::Double withDuration, CAMediaTimingFunctionName timingFunctionName)
{
  if (withDuration > 0.0 && [objc_opt_self() areAnimationsEnabled])
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CDA000]) init];
    [v5 setDuration_];
    v6 = [objc_opt_self() functionWithName_];
    [v5 setTimingFunction_];

    [v5 setType_];
    v7 = [v2 layer];
    [v7 addAnimation:v5 forKey:0];
  }
}

void UIView.fadeWithCurrentAnimationContext(speed:)(double a1)
{
  v2 = objc_opt_self();
  if ([v2 _isInAnimationBlockWithAnimationsEnabled])
  {
    [v2 _currentAnimationDuration];
    v4 = 1.0 / a1 * v3;
    v5 = [v2 _currentAnimationCurve];
    if (v5 > 3)
    {
      v6 = MEMORY[0x277CDA7A8];
    }

    else
    {
      v6 = qword_2782C9F00[v5];
    }

    v7 = *v6;
    UIView.fade(withDuration:timingFunctionName:)(v4, v7);
  }
}

id UIViewAnimationCurve.mediaTimingFunctionName.getter(unint64_t a1)
{
  if (a1 > 3)
  {
    return *MEMORY[0x277CDA7A8];
  }

  else
  {
    return *qword_2782C9F00[a1];
  }
}

void sub_21B63E104(char *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair;
  v5 = *(v2 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair);
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_6;
  }

  v6 = a1;
  if (v5 == a1)
  {
LABEL_9:
    type metadata accessor for PosterPair();
    v8 = v6;
    v9 = a1;
    v10 = sub_21B6C91A4();

    if (v10)
    {
      return;
    }

    goto LABEL_12;
  }

  if (a1)
  {
LABEL_6:
    v7 = [*&a1[OBJC_IVAR___PBFPosterPair_observers] removeObject_];
    v5 = *(v2 + v4);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  v7 = [*&v5[OBJC_IVAR___PBFPosterPair_observers] addObject_];
  v6 = *(v2 + v4);
  if (!v6)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_12;
  }

  if (a1)
  {
    goto LABEL_9;
  }

LABEL_12:
  (*((*MEMORY[0x277D85000] & *v2) + 0x1B0))(v7);

  sub_21B63EF0C(0, 0);
}

void sub_21B63E274(double a1)
{
  v2 = OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_posterCornerRadius;
  *(v1 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_posterCornerRadius) = a1;
  v3 = [v1 layer];
  [v3 setCornerRadius_];

  v4 = *(v1 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_keyLineView);
  if (v4)
  {
    v5 = *((*MEMORY[0x277D85000] & *v1) + 0x90);
    v6 = v4;
    v5();
    [v6 _setContinuousCornerRadius_];
  }

  else
  {
    __break(1u);
  }
}

void sub_21B63E354()
{
  sub_21B65AEF4();
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_keyLineView);
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v0) + 0xC0);
    v5 = v1;
    v3 = v2();
    v4 = 1.0;
    if (v3)
    {
      v4 = 0.0;
    }

    [v5 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

id sub_21B63E41C()
{
  v1 = v0;
  [v0 setClipsToBounds_];
  v2 = [v0 layer];
  [v2 setCornerCurve_];

  [v1 bounds];
  v7 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  [v7 setOverrideUserInterfaceStyle_];
  v8 = [objc_opt_self() secondarySystemBackgroundColor];
  [v7 setBackgroundColor_];

  v9 = OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotView;
  v10 = *(v1 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotView);
  *(v1 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotView) = v7;

  result = [v1 contentView];
  if (*(v1 + v9))
  {
    v12 = result;
    [result addSubview_];

    [v1 bounds];
    v17 = [objc_allocWithZone(type metadata accessor for AdaptiveKeyLineView()) initWithFrame_];
    v18 = *((*MEMORY[0x277D85000] & *v1) + 0x90);
    v19 = v17;
    v18();
    [v19 _setContinuousCornerRadius_];
    v20 = [v1 contentView];
    [v20 addSubview_];

    v21 = *(v1 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_keyLineView);
    *(v1 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_keyLineView) = v19;

    sub_21B63F818();
    sub_21B6C90A4();
    type metadata accessor for PosterPairCollectionViewCell();
    sub_21B6C9184();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B63E6D0(void *a1)
{
  v1 = 2 * ((*((*MEMORY[0x277D85000] & *a1) + 0xA8))() != 0);
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v1;
  }

  return sub_21B63EF0C(2, v3);
}

void sub_21B63E750()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for PosterPairCollectionViewCell();
  objc_msgSendSuper2(&v30, sel_layoutSubviews);
  [v0 bounds];
  v5 = *(v0 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotView);
  if (!v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  [v5 setFrame_];
  v10 = OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_keyLineView;
  v11 = *(v0 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_keyLineView);
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = [v11 superview];
  v13 = [v0 contentView];

  if (!v12)
  {
    goto LABEL_7;
  }

  if (v12 != v13)
  {
    goto LABEL_7;
  }

  v15 = *(v0 + v10);
  if (!v15)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v14 = [v15 setFrame_];
LABEL_7:
  v16 = (*((*MEMORY[0x277D85000] & *v0) + 0x1A8))(v14);
  if (v16)
  {
    v17 = v16;
    v18 = [v0 traitCollection];
    [v18 displayScale];

    v19 = v17;
    v31.origin.x = v6;
    v31.origin.y = v7;
    v31.size.width = v8;
    v31.size.height = v9;
    v32 = CGRectInset(v31, 8.0, 0.0);
    [v19 sizeThatFits_];
    BSSizeCeilForScale();
    v33.origin.x = v6;
    v33.origin.y = v7;
    v33.size.width = v8;
    v33.size.height = v9;
    CGRectGetMidX(v33);
    v34.origin.x = v6;
    v34.origin.y = v7;
    v34.size.width = v8;
    v34.size.height = v9;
    CGRectGetHeight(v34);
    BSRectWithSize();
    UIRectCenteredAboutPointScale();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    BSRectWithSize();
    [v19 setBounds_];
    v35.origin.x = v21;
    v35.origin.y = v23;
    v35.size.width = v25;
    v35.size.height = v27;
    MidX = CGRectGetMidX(v35);
    v36.origin.x = v21;
    v36.origin.y = v23;
    v36.size.width = v25;
    v36.size.height = v27;
    MidY = CGRectGetMidY(v36);
    [v19 setCenter_];
  }
}

void *sub_21B63EA60()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for PosterPairCollectionViewCell();
  objc_msgSendSuper2(&v7, sel_prepareForReuse);
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair);
  *(v0 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair) = 0;
  sub_21B63E104(v1);

  v2 = OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotImage;
  v3 = *(v0 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotImage);
  *(v0 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotImage) = 0;

  BSDispatchQueueAssertMain();
  v4 = 0;
  if (!*(v0 + v2))
  {
    v4 = [objc_opt_self() secondarySystemBackgroundColor];
  }

  v5 = OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotView;
  result = *(v0 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotView);
  if (result)
  {
    [result setBackgroundColor_];
    result = *(v0 + v5);
    if (result)
    {
      [result setImage_];

      return (*((*MEMORY[0x277D85000] & *v0) + 0x1F0))(0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21B63ED44(void *a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = MEMORY[0x277CDA7B8];
      v5 = 0.33;
    }

    else
    {
      v6 = [v2 traitCollection];
      v7 = [v6 userInterfaceStyle];

      v4 = MEMORY[0x277CDA7C0];
      if (v7 == 1)
      {
        v4 = MEMORY[0x277CDA7B0];
      }

      v5 = 0.5;
    }

    v11 = *v4;
    if ([objc_opt_self() areAnimationsEnabled])
    {
      v8 = [objc_allocWithZone(MEMORY[0x277CDA000]) init];
      [v8 setDuration_];
      v9 = [objc_opt_self() functionWithName_];
      [v8 setTimingFunction_];

      [v8 setType_];
      v10 = [a1 layer];
      [v10 addAnimation:v8 forKey:0];
    }
  }
}

uint64_t sub_21B63EF0C(char a1, char a2)
{
  v3 = v2;
  result = swift_getObjectType();
  v7 = *(v2 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair);
  if (v7)
  {
    v8 = result;
    v9 = v2 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_snapshotProvider;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v25 = *(v9 + 1);
      v10 = *((*MEMORY[0x277D85000] & *v3) + 0x1F0);
      v11 = v7;
      v10(1);
      v12 = [v3 pbf_displayContext];
      v13 = (*(v8 + 480))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93400);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21B6D7FE0;
      *(inited + 32) = v13;
      v15 = v13;
      v24 = sub_21B645CE0(inited);
      swift_setDeallocating();
      sub_21B636E24(inited + 32);
      ObjectType = swift_getObjectType();
      v22 = *&v11[OBJC_IVAR___PBFPosterPair_configuration];
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v17 + 24) = v11;
      *(v17 + 32) = v12;
      *(v17 + 40) = a2;
      *(v17 + 48) = v15;
      *(v17 + 56) = a1;
      v18 = *(v25 + 8);
      v19 = v11;
      v21 = v15;
      v20 = v22;

      swift_unknownObjectRetain();
      v18(v20, v24, v12, 0, sub_21B63F864, v17, ObjectType, v25);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_21B63F198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = *(Strong + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair);
    if (v15)
    {
      v16 = (v15 + OBJC_IVAR___PBFPosterPair_id);
      v17 = *v16 == *(a3 + OBJC_IVAR___PBFPosterPair_id) && v16[1] == *(a3 + OBJC_IVAR___PBFPosterPair_id + 8);
      if (v17 || (sub_21B6C96E4() & 1) != 0)
      {
        v18 = [objc_msgSend(v14 pbf_displayContext)];
        swift_unknownObjectRelease();
        if (v18)
        {
          v19 = MEMORY[0x277D85000];
          v20 = (*((*MEMORY[0x277D85000] & *v14) + 0x200))(a5);
          (*((*v19 & *v14) + 0x1F0))(0);
          if (v20)
          {
            a5 = a5;
          }

          else
          {
            a5 = 0;
          }

          if (*(a1 + 16) && (v21 = sub_21B695E60(a6), (v22 & 1) != 0))
          {
            v23 = *(*(a1 + 56) + 8 * v21);
            v24 = v23;
          }

          else
          {
            v23 = 0;
          }

          (*((*v19 & *v14) + 0x208))(v23, a7, a5);

          v14 = v23;
        }
      }
    }
  }
}

id sub_21B63F3A4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_snapshotProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotView] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_keyLineView] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_snapshotBundle] = 0;
  v4[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_isReloadingLockPosterSnapshot] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotImage] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PosterPairCollectionViewCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_21B63F48C(void *a1)
{
  *&v1[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_snapshotProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotView] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_keyLineView] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_snapshotBundle] = 0;
  v1[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_isReloadingLockPosterSnapshot] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotImage] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PosterPairCollectionViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void sub_21B63F574()
{
  sub_21B6178E4(v0 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_snapshotProvider);

  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotImage);
}

id sub_21B63F5F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterPairCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21B63F6D8(void *a1, char a2)
{
  v5 = [a1 allLevelsExceptFloatingSnapshot];
  v6 = OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotImage;
  v7 = *(v2 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotImage);
  *(v2 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotImage) = v5;
  v8 = v5;

  BSDispatchQueueAssertMain();
  if (*(v2 + v6))
  {
    v9 = 0;
  }

  else
  {
    v9 = [objc_opt_self() secondarySystemBackgroundColor];
  }

  v10 = OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotView;
  v11 = *(v2 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotView);
  if (!v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  [v11 setBackgroundColor_];
  v12 = *(v2 + v10);
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v12 setImage_];

  v13 = *(v2 + v10);
  if (!v13)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v14 = v13;
  sub_21B63ED44(v14, a2);

  v16 = *(v2 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_snapshotBundle);
  *(v2 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_snapshotBundle) = a1;
  v15 = a1;
}

unint64_t sub_21B63F818()
{
  result = qword_28120B2E0;
  if (!qword_28120B2E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28120B2E0);
  }

  return result;
}

id sub_21B63F87C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_alphaForHiddenPoster] = 0x3FD47AE147AE147BLL;
  *&v4[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_hideOrDeleteButtonSize] = 0x4042000000000000;
  *&v4[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_buttonDistanceFromCellTop] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_buttonDistanceFromCellEdge] = 0x4018000000000000;
  *&v4[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_editingButtonOffset] = 0x4047000000000000;
  *&v4[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_shadowOffset] = 0x4044000000000000;
  *&v4[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_shadowRadius] = 0x4046800000000000;
  *&v4[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_shadowOpacity] = 1046562734;
  *&v4[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_posterModel] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_scaleInLayout] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_editingButton] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_hideOrDeleteButton] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_editingViewController] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_ambientPosterViewController] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_posterCornerRadius] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_shadowView] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for AmbientCollectionViewCell();
  v9 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = [v9 layer];
  [v10 setCornerCurve_];

  sub_21B641120();
  return v9;
}

id sub_21B63FA64(void *a1)
{
  *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_alphaForHiddenPoster] = 0x3FD47AE147AE147BLL;
  *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_hideOrDeleteButtonSize] = 0x4042000000000000;
  *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_buttonDistanceFromCellTop] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_buttonDistanceFromCellEdge] = 0x4018000000000000;
  *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_editingButtonOffset] = 0x4047000000000000;
  *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_shadowOffset] = 0x4044000000000000;
  *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_shadowRadius] = 0x4046800000000000;
  *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_shadowOpacity] = 1046562734;
  *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_posterModel] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_scaleInLayout] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_editingButton] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_hideOrDeleteButton] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_editingViewController] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_ambientPosterViewController] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_posterCornerRadius] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_shadowView] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AmbientCollectionViewCell();
  v3 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = [v5 layer];
    [v6 setCornerCurve_];

    sub_21B641120();
  }

  return v4;
}

void sub_21B63FC38(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_editingButton;
  v5 = *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_editingButton];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a1)
  {
LABEL_7:
    v8 = v5;
    [v2 addSubview_];
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    [v2 transform];
    CGAffineTransformInvert(&v18, &v19);
    v19 = v18;
    [v8 setTransform_];
    v9 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21B6D7FC0;
    v11 = [v8 trailingAnchor];
    v12 = [v2 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:-46.0];

    *(v10 + 32) = v13;
    v14 = [v8 bottomAnchor];

    v15 = [v2 bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:-46.0];

    *(v10 + 40) = v16;
    sub_21B61785C(0, &qword_28120B2D0);
    v17 = sub_21B6C8E74();

    [v9 activateConstraints_];

    return;
  }

  sub_21B61785C(0, &unk_28120B100);
  v6 = v5;
  v3 = v3;
  v7 = sub_21B6C91A4();

  if ((v7 & 1) == 0)
  {
LABEL_6:
    [v3 removeFromSuperview];
    v5 = *&v2[v4];
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }
}

void sub_21B63FEEC(void *a1)
{
  v2 = OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_hideOrDeleteButton;
  v3 = *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_hideOrDeleteButton];
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    [a1 removeFromSuperview];
    v3 = *&v1[v2];
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v3 == a1)
  {
    return;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v4 = v3;
  [v1 addSubview_];
  [v4 setTintAdjustmentMode_];
  [v4 sizeToFit];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 transform];
  CGAffineTransformInvert(&v18, &v19);
  v19 = v18;
  [v4 setTransform_];
  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21B6D7FF0;
  v7 = [v4 topAnchor];
  v8 = [v1 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:-1.0];

  *(v6 + 32) = v9;
  v10 = [v4 leadingAnchor];

  v11 = [v1 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:6.0];

  *(v6 + 40) = v12;
  v13 = [v4 widthAnchor];

  v14 = [v13 constraintEqualToConstant_];
  *(v6 + 48) = v14;
  v15 = [v4 heightAnchor];

  v16 = [v15 constraintEqualToConstant_];
  *(v6 + 56) = v16;
  sub_21B61785C(0, &qword_28120B2D0);
  v17 = sub_21B6C8E74();

  [v5 activateConstraints_];
}

void sub_21B64020C(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_editingViewController;
  v5 = *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_editingViewController];
  if (v5)
  {
    if (!a1)
    {
      goto LABEL_9;
    }

    sub_21B61785C(0, &unk_28120B310);
    v6 = v5;
    v3 = v3;
    v7 = sub_21B6C91A4();

    if (v7)
    {
      v5 = *&v2[v4];
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = [v3 view];
  if (!v8)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 removeFromSuperview];

  v5 = *&v2[v4];
  if (!v5)
  {
    return;
  }

LABEL_9:
  v10 = v5;
  v11 = [v10 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_20;
  }

  v12 = v11;
  v13 = [v11 layer];

  v14 = [v2 layer];
  [v14 cornerRadius];
  v16 = v15;

  [v13 setCornerRadius_];
  v17 = [v10 view];
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  v19 = [v17 layer];

  v20 = [v2 layer];
  v21 = [v20 cornerCurve];

  [v19 setCornerCurve_];
  v22 = [v10 view];
  if (!v22)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v23 = v22;
  [v22 setClipsToBounds_];

  v24 = [v10 view];
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = v24;
  v26 = *&v2[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_ambientPosterViewController];
  if (!v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = [v26 view];
  if (!v27)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = v27;
  [v2 insertSubview:v25 aboveSubview:?];
}

void sub_21B6404D8(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D3EA60]) init];
  [v3 setDisplayConfiguration_];
  [v3 setDelegate_];
  [v3 setVisibility_];
  v4 = *(v1 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_posterModel);
  if (!v4)
  {
    goto LABEL_22;
  }

  v5 = *(v4 + OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterPath);
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = objc_allocWithZone(MEMORY[0x277D3E968]);
  v7 = v5;
  v8 = [v6 initWithPath_];
  v9 = [v8 providerBundleIdentifier];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = sub_21B6C8DA4();
  v13 = v12;

  if (v11 == 0xD000000000000035 && 0x800000021B6EF880 == v13)
  {

    goto LABEL_11;
  }

  v15 = sub_21B6C96E4();

  if (v15)
  {
LABEL_11:
    [v3 setOpacity:2 forLayers:0.0];
    [v3 setPresentationMode_];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = sub_21B64AA7C();
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0;
    }

    [v3 setSnapshotController_];

    goto LABEL_15;
  }

LABEL_9:
  [v3 setPresentationMode_];
  [v3 setSnapshotController_];
LABEL_15:
  if (([v3 updateConfiguration_] & 1) == 0)
  {
    v17 = v1;
    if (qword_27CD925E0 != -1)
    {
      swift_once();
    }

    v18 = sub_21B6C8AB4();
    __swift_project_value_buffer(v18, qword_27CD94DD8);
    v19 = v8;
    v8 = sub_21B6C8A94();
    v20 = sub_21B6C9024();

    if (os_log_type_enabled(v8, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v19;
      *v22 = v19;
      v23 = v19;
      _os_log_impl(&dword_21B526000, v8, v20, "Error updating posterConfiguration: %@", v21, 0xCu);
      sub_21B62AA8C(v22, &qword_27CD92EF0);
      MEMORY[0x21CEF8150](v22, -1, -1);
      MEMORY[0x21CEF8150](v21, -1, -1);
      v19 = v8;
      v8 = v23;
    }

    v1 = v17;
  }

LABEL_22:
  v24 = *(v1 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_hideOrDeleteButton);
  if (v24)
  {
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v26 = v25;
      v27 = v24;
      v28 = [v3 view];
      if (!v28)
      {
        __break(1u);
        return;
      }

      v29 = v28;
      v30 = [v26 isSelected];
      v31 = 0.32;
      if (!v30)
      {
        v31 = 1.0;
      }

      [v29 setAlpha_];
    }
  }

  v33 = *(v1 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_ambientPosterViewController);
  *(v1 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_ambientPosterViewController) = v3;
  v32 = v3;
  sub_21B640910(v33);
}

void sub_21B640910(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_ambientPosterViewController;
  v5 = *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_ambientPosterViewController];
  if (v5)
  {
    if (!a1)
    {
      goto LABEL_8;
    }

    sub_21B61785C(0, &unk_27CD93360);
    v6 = v5;
    v3 = v3;
    v7 = sub_21B6C91A4();

    if (v7)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = v3;
  v9 = [v8 view];
  if (!v9)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 removeFromSuperview];

  [v8 invalidate];
  v5 = *&v2[v4];
  if (!v5)
  {
    return;
  }

LABEL_8:
  v11 = v5;
  v12 = [v11 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = v12;
  v14 = [v12 layer];

  v15 = [v2 layer];
  [v15 cornerRadius];
  v17 = v16;

  [v14 setCornerRadius_];
  v18 = [v11 view];
  if (!v18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = v18;
  v20 = [v18 layer];

  v21 = [v2 layer];
  v22 = [v21 cornerCurve];

  [v20 setCornerCurve_];
  v23 = [v11 view];
  if (!v23)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = v23;
  [v23 setClipsToBounds_];

  v25 = [v11 view];
  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = v25;
  [v2 bounds];
  [v26 setFrame_];

  v27 = [v11 view];
  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v27;
  [v2 addSubview_];

  v29 = [v11 view];
  if (!v29)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!*&v2[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_shadowView])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v2 insertSubview:v29 aboveSubview:?];
}

void sub_21B640C54(void *a1, double a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v15 = sub_21B6424DC;
  v16 = v5;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_21B63863C;
  v14 = &block_descriptor_4;
  v6 = _Block_copy(&v11);
  v7 = a1;

  [v4 addKeyframeWithRelativeStartTime:v6 relativeDuration:0.0 animations:0.85];
  _Block_release(v6);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v15 = sub_21B642500;
  v16 = v8;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_21B63863C;
  v14 = &block_descriptor_43;
  v9 = _Block_copy(&v11);
  v10 = v7;

  [v4 addKeyframeWithRelativeStartTime:v9 relativeDuration:0.8 animations:0.2];
  _Block_release(v9);
}

void sub_21B640E14(void *a1, double a2)
{
  v5[0] = 0x3FF0000000000000;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0x3FF0000000000000;
  v5[4] = 0;
  v5[5] = 0;
  [a1 setTransform_];
  v4 = [a1 layer];
  [v4 setCornerRadius_];
}

void sub_21B640E98(void *a1, _OWORD *a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  v6 = a2[1];
  *(v5 + 24) = *a2;
  *(v5 + 16) = a1;
  *(v5 + 40) = v6;
  *(v5 + 56) = a2[2];
  v16 = sub_21B642D88;
  v17 = v5;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_21B63863C;
  v15 = &block_descriptor_60;
  v7 = _Block_copy(&v12);
  v8 = a1;

  [v4 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.0 animations:0.85];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v16 = sub_21B642D94;
  v17 = v9;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_21B63863C;
  v15 = &block_descriptor_66;
  v10 = _Block_copy(&v12);
  v11 = v8;

  [v4 addKeyframeWithRelativeStartTime:v10 relativeDuration:0.2 animations:0.2];
  _Block_release(v10);
}

void sub_21B641064(void *a1, _OWORD *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = a2[2];
  [a1 setTransform_];
  v4 = [a1 layer];
  [v4 setCornerRadius_];
}

id sub_21B6410E0(int a1, id a2, uint64_t (*a3)(id))
{
  result = [a2 removeFromSuperview];
  if (a3)
  {
    return a3(result);
  }

  return result;
}

void sub_21B641120()
{
  [v0 bounds];
  v5 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v5 _setContinuousCornerRadius_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [v5 layer];
  v6 = [objc_opt_self() blackColor];
  v7 = [v6 CGColor];

  [v11 setShadowColor_];
  [v11 setShadowOffset_];
  [v11 setShadowRadius_];
  LODWORD(v8) = 1046562734;
  [v11 setShadowOpacity_];
  [v11 setShadowPathIsBounds_];
  v9 = *&v0[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_shadowView];
  *&v0[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_shadowView] = v5;
  v10 = v5;

  [v0 addSubview_];
  [v0 sendSubviewToBack_];
}

void sub_21B64130C()
{
  v1 = sub_21B6C9364();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  v8 = OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_posterModel;
  v9 = *(v0 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_posterModel);
  if (v9 && (v10 = *(v9 + OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_ambientConfiguration)) != 0 && ![v10 editingBehavior])
  {
    sub_21B61785C(0, &unk_28120B110);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = sub_21B6C91B4();
    v14 = v0;
    v15 = *(v0 + v8);
    if (v15 && (v16 = *(v15 + OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_ambientConfiguration)) != 0 && (v17 = [v16 editingSystemSymbolName]) != 0)
    {
      v18 = v17;
      static UIButton.Configuration.ambientEdit()();
      v19 = [objc_opt_self() systemImageNamed_];

      sub_21B6C9304();
      sub_21B61785C(0, &unk_28120B100);
      (*(v2 + 16))(v5, v7, v1);
      v20 = v13;
      v21 = sub_21B6C9374();
      (*(v2 + 8))(v7, v1);
      v0 = v14;
    }

    else
    {
      type metadata accessor for AmbientEditButton();
      v22 = v13;
      v21 = sub_21B6C93A4();
      v23 = *(v0 + v8);
      if (v23)
      {
        v24 = *(v23 + OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_ambientConfiguration);
        if (v24)
        {
          v25 = [v24 editingContentStyle];
          if (v25)
          {
            *&v21[OBJC_IVAR____TtC11PosterBoard17AmbientEditButton_contentStyle] = v25;
            swift_unknownObjectRetain_n();
            swift_unknownObjectRelease();
            sub_21B6A148C();
            swift_unknownObjectRelease_n();
          }
        }
      }
    }

    v26 = *(v0 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_editingButton);
    *(v0 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_editingButton) = v21;
    v27 = v21;
    sub_21B63FC38(v26);
  }

  else
  {
    v29 = *(v0 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_editingButton);
    v11 = v29;
    *(v0 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_editingButton) = 0;
    sub_21B63FC38(v11);
    v12 = v29;
  }
}

void sub_21B64169C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_21B64E548(v1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_21B64171C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_posterModel;
  v3 = *(v0 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_posterModel);
  if (v3 && (v4 = *(v3 + OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_ambientConfiguration)) != 0)
  {
    v5 = [v4 deletionBehavior];
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = [objc_allocWithZone(MEMORY[0x277D3EC88]) init];
  v8 = (v7 + 16);
  if (v6)
  {
    goto LABEL_64;
  }

  if (!v5)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v13 = *(v1 + v2);
    if (!v13 || (v14 = *(v13 + OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterPath)) == 0)
    {
      swift_unknownObjectRelease();
LABEL_53:
      sub_21B61785C(0, &unk_27CD93380);
      sub_21B61785C(0, &unk_28120B110);
      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_21B6C91B4();
      v39 = sub_21B6C93A4();
      v40 = *v8;
      *v8 = v39;
      v41 = v39;

      v42 = sub_21B6C8D74();
      [v41 setAccessibilityIdentifier_];

      goto LABEL_60;
    }

    v15 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_posters;
    v16 = Strong;
    swift_beginAccess();
    v17 = *(v16 + v15);
    v57 = v7;
    v58 = v1;
    v56 = (v7 + 16);
    if (v17 >> 62)
    {
      goto LABEL_72;
    }

    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_17;
    }

LABEL_63:
    v1 = v58;
    swift_unknownObjectRelease();
LABEL_64:
    v54 = *(v1 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_hideOrDeleteButton);
    *(v1 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_hideOrDeleteButton) = 0;
    sub_21B63FEEC(v54);

    goto LABEL_65;
  }

  if (v5 != 1)
  {
    goto LABEL_64;
  }

  v9 = *(v1 + v2);
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_ambientConfiguration);
    if (v10)
    {
      if ([v10 hidden])
      {
        v11 = 1;
        goto LABEL_55;
      }
    }
  }

  v27 = swift_unknownObjectWeakLoadStrong();
  if (!v27)
  {
    goto LABEL_77;
  }

  v28 = *(v1 + v2);
  if (v28)
  {
    v14 = *(v28 + OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterPath);
    if (v14)
    {
      v29 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_posters;
      v30 = v27;
      swift_beginAccess();
      v17 = *(v30 + v29);
      v57 = v7;
      v58 = v1;
      v56 = (v7 + 16);
      if (v17 >> 62)
      {
        v31 = sub_21B6C9454();
        if (!v31)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v31 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v31)
        {
          goto LABEL_63;
        }
      }

      v19 = v14;

      while (1)
      {
        v20 = __OFSUB__(v31--, 1);
        if (v20)
        {
          goto LABEL_67;
        }

        if ((v17 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x21CEF66E0](v31, v17);
        }

        else
        {
          if ((v31 & 0x8000000000000000) != 0)
          {
            goto LABEL_70;
          }

          if (v31 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            while (2)
            {
              __break(1u);
LABEL_72:
              v18 = sub_21B6C9454();
              if (!v18)
              {
                goto LABEL_63;
              }

LABEL_17:
              v19 = v14;

LABEL_21:
              v20 = __OFSUB__(v18--, 1);
              if (v20)
              {
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
                continue;
              }

              break;
            }

            if ((v17 & 0xC000000000000001) != 0)
            {
              v21 = MEMORY[0x21CEF66E0](v18, v17);
            }

            else
            {
              if ((v18 & 0x8000000000000000) != 0)
              {
                goto LABEL_68;
              }

              if (v18 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_69;
              }

              v21 = *(v17 + 32 + 8 * v18);
            }

            v22 = v21;
            v23 = *&v21[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterPath];
            if (v23)
            {
              v14 = sub_21B61785C(0, &qword_27CD93390);
              v24 = v23;
              if ((sub_21B6C91A4() & 1) == 0)
              {
                v25 = *&v22[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_ambientConfiguration];
                if (v25)
                {
                  v14 = v25;
                  v26 = [v14 hidden];

                  if ((v26 & 1) == 0)
                  {
                    swift_unknownObjectRelease();

                    v7 = v57;
                    v1 = v58;
                    v8 = v56;
                    goto LABEL_53;
                  }

                  goto LABEL_20;
                }
              }
            }

LABEL_20:
            if (!v18)
            {
              goto LABEL_62;
            }

            goto LABEL_21;
          }

          v32 = *(v17 + 32 + 8 * v31);
        }

        v33 = v32;
        v34 = *&v32[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterPath];
        if (!v34)
        {
          goto LABEL_39;
        }

        v14 = sub_21B61785C(0, &qword_27CD93390);
        v35 = v34;
        if (sub_21B6C91A4())
        {
          break;
        }

        v36 = *&v33[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_ambientConfiguration];
        if (!v36)
        {
          break;
        }

        v14 = v36;
        v37 = [v14 hidden];

        if ((v37 & 1) == 0)
        {
          swift_unknownObjectRelease();

          v11 = 0;
          v7 = v57;
          v1 = v58;
          v8 = v56;
          goto LABEL_55;
        }

LABEL_40:
        if (!v31)
        {
LABEL_62:

          goto LABEL_63;
        }
      }

LABEL_39:
      goto LABEL_40;
    }
  }

  swift_unknownObjectRelease();
  v11 = 0;
LABEL_55:
  sub_21B61785C(0, &qword_27CD93398);
  sub_21B61785C(0, &unk_28120B110);
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  *(v44 + 24) = v7;

  sub_21B6C91B4();
  v45 = sub_21B6C93A4();
  swift_beginAccess();
  v46 = *(v7 + 16);
  *(v7 + 16) = v45;

  v47 = v45;
  v48 = sub_21B6C8D74();
  [v47 setAccessibilityIdentifier_];

  [*(v7 + 16) setSelected_];
  v49 = *(v1 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_ambientPosterViewController);
  if (!v49)
  {
    goto LABEL_61;
  }

  v50 = [v49 view];
  if (v50)
  {
    v42 = v50;
    v51 = [*v8 isSelected];
    v52 = 0.32;
    if (!v51)
    {
      v52 = 1.0;
    }

    [v42 setAlpha_];
LABEL_60:

LABEL_61:
    swift_beginAccess();
    v53 = *(v7 + 16);
    v54 = *(v1 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_hideOrDeleteButton);
    *(v1 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_hideOrDeleteButton) = v53;
    v55 = v53;
    sub_21B63FEEC(v54);

LABEL_65:
    return;
  }

LABEL_78:
  __break(1u);
}

void sub_21B641EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_ambientPosterViewController);
    if (v6)
    {
      v7 = [v6 view];
      if (!v7)
      {
        __break(1u);
        return;
      }

      v8 = v7;
      swift_beginAccess();
      v9 = [*(a3 + 16) isSelected];
      v10 = 0.32;
      if (!v9)
      {
        v10 = 1.0;
      }

      [v8 setAlpha_];
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *&v5[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_posterModel];
      if (v11)
      {
        v12 = *(v11 + OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterPath);
        if (v12)
        {
          v13 = v12;
          sub_21B64F97C(v13);
        }
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_21B641FEC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *&v1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_posterModel];
      if (v2)
      {
        v3 = *(v2 + OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterPath);
        if (v3)
        {
          v4 = v3;
          sub_21B64F420(v4);
        }
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_21B6423E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21B642514(void *a1)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD93370);
  MEMORY[0x28223BE20](v48);
  v4 = &v44 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EE8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v44 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - v11;
  v13 = sub_21B6C88C4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v44 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - v17;
  v45 = a1;
  v19 = [a1 pr_posterUUID];
  sub_21B6C88A4();

  v20 = *(v14 + 16);
  v49 = v18;
  v20(v12, v18, v13);
  v21 = *(v14 + 56);
  v22 = 1;
  v21(v12, 0, 1, v13);
  v47 = v1;
  v23 = *(v1 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_posterModel);
  if (v23)
  {
    v24 = *(v23 + OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterPath);
    if (v24)
    {
      v25 = [v24 serverIdentity];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 posterUUID];

        sub_21B6C88A4();
        v22 = 0;
      }
    }
  }

  v21(v10, v22, 1, v13);
  v28 = *(v48 + 48);
  sub_21B62A994(v12, v4);
  sub_21B62A994(v10, &v4[v28]);
  v29 = *(v14 + 48);
  if (v29(v4, 1, v13) != 1)
  {
    v30 = v46;
    sub_21B62A994(v4, v46);
    if (v29(&v4[v28], 1, v13) != 1)
    {
      v31 = v44;
      (*(v14 + 32))(v44, &v4[v28], v13);
      sub_21B642D18();
      LODWORD(v48) = sub_21B6C8D64();
      v32 = *(v14 + 8);
      v32(v31, v13);
      sub_21B62AA8C(v10, &qword_27CD92EE8);
      sub_21B62AA8C(v12, &qword_27CD92EE8);
      v32(v30, v13);
      sub_21B62AA8C(v4, &qword_27CD92EE8);
      if ((v48 & 1) == 0)
      {
        return (*(v14 + 8))(v49, v13);
      }

      goto LABEL_12;
    }

    sub_21B62AA8C(v10, &qword_27CD92EE8);
    sub_21B62AA8C(v12, &qword_27CD92EE8);
    (*(v14 + 8))(v30, v13);
LABEL_10:
    sub_21B62AA8C(v4, &unk_27CD93370);
    return (*(v14 + 8))(v49, v13);
  }

  sub_21B62AA8C(v10, &qword_27CD92EE8);
  sub_21B62AA8C(v12, &qword_27CD92EE8);
  if (v29(&v4[v28], 1, v13) != 1)
  {
    goto LABEL_10;
  }

  sub_21B62AA8C(v4, &qword_27CD92EE8);
LABEL_12:
  v33 = *(v47 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_ambientPosterViewController);
  if (v33)
  {
    v34 = [v33 updateConfiguration_];
    v35 = *(v47 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_editingViewController);
    *(v47 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_editingViewController) = 0;
    sub_21B64020C(v35);

    if ((v34 & 1) == 0)
    {
      if (qword_27CD925E0 != -1)
      {
        swift_once();
      }

      v36 = sub_21B6C8AB4();
      __swift_project_value_buffer(v36, qword_27CD94DD8);
      v37 = v45;
      v38 = sub_21B6C8A94();
      v39 = sub_21B6C9024();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        *(v40 + 4) = v37;
        *v41 = v37;
        v42 = v37;
        _os_log_impl(&dword_21B526000, v38, v39, "Error updating posterConfiguration: %@", v40, 0xCu);
        sub_21B62AA8C(v41, &qword_27CD92EF0);
        MEMORY[0x21CEF8150](v41, -1, -1);
        MEMORY[0x21CEF8150](v40, -1, -1);
      }
    }
  }

  return (*(v14 + 8))(v49, v13);
}

uint64_t sub_21B642B64(uint64_t a1)
{
  v2 = sub_21B6C88C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    (*(v3 + 16))(v5, a1, v2);
    v8 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_availableInstanceIdentifiers;
    swift_beginAccess();
    v9 = *(v7 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + v8) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_21B6A31A4(0, v9[2] + 1, 1, v9);
      *(v7 + v8) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_21B6A31A4(v11 > 1, v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    (*(v3 + 32))(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v5, v2);
    *(v7 + v8) = v9;
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_21B642D18()
{
  result = qword_27CD92F20;
  if (!qword_27CD92F20)
  {
    sub_21B6C88C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD92F20);
  }

  return result;
}

uint64_t sub_21B642DC4(void *a1)
{
  v1 = a1;
  v2 = PRPosterConfiguration.isLegacy.getter();

  return v2 & 1;
}

uint64_t PRPosterConfiguration.isLegacy.getter()
{
  v1 = [v0 _path];
  v2 = [v1 serverIdentity];

  if (v2)
  {
    v3 = [v2 provider];

    v4 = sub_21B6C8DA4();
    v6 = v5;

    if (v4 == 0xD000000000000021 && 0x800000021B6EF940 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_21B6C96E4();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_21B642EE8()
{
  result = sub_21B6C8D74();
  qword_28120CD68 = result;
  return result;
}

id sub_21B6430B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComplicationsSceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21B64311C(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = objc_allocWithZone(MEMORY[0x277D75DA0]);
    v6 = a1;
    v7 = [v5 initWithWindowScene_];
    v8 = [objc_opt_self() defaultCenter];
    if (qword_28120B2C0 != -1)
    {
      swift_once();
    }

    v9 = qword_28120CD68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD933B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B6D7FE0;
    sub_21B6C94B4();
    *(inited + 96) = sub_21B6433AC();
    *(inited + 72) = v7;
    v11 = v7;
    sub_21B698C14(inited);
    swift_setDeallocating();
    sub_21B6433F8(inited + 32);
    v12 = sub_21B6C8D14();

    [v8 postNotificationName:v9 object:v1 userInfo:v12];

    v13 = *(v1 + OBJC_IVAR____TtC11PosterBoard26ComplicationsSceneDelegate_window);
    *(v1 + OBJC_IVAR____TtC11PosterBoard26ComplicationsSceneDelegate_window) = v11;
  }
}

void sub_21B643304()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard26ComplicationsSceneDelegate_window);
  if (v1)
  {
    v2 = [v1 rootViewController];
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      v5 = v4;
      if (!v4)
      {

        v4 = 0;
      }

      [v4 invalidate];
    }
  }
}

unint64_t sub_21B6433AC()
{
  result = qword_28120B0F8;
  if (!qword_28120B0F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28120B0F8);
  }

  return result;
}

uint64_t sub_21B6433F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD933C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B643460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_21B645694(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_21B695DE8(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_21B697684();
        v14 = v16;
      }

      swift_unknownObjectRelease();
      result = sub_21B6454E4(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t PosterEditingIngestionManager.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PosterEditingIngestionManager.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PBFPosterEditingIngestionManager_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21B643674;
}

void sub_21B643674(void **a1, char a2)
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

void PosterEditingIngestionManager.ingestConfiguration(_:updatedConfiguredProperties:editingViewController:galleryViewController:showEditingConfirmation:)(void *a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v6 = v5;
  v12 = sub_21B6C88C4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a3 contentsIdentity];
  if (v16)
  {
    v17 = v16;
    v83 = a4;
    LODWORD(v86) = a5;
    v85 = v13;
    v18 = [a3 destination];
    v19 = [a1 _path];
    v87 = v17;
    if (v18 == 2)
    {
      v20 = [v17 posterUUID];
      sub_21B6C88A4();

      v21 = objc_allocWithZone(MEMORY[0x277D3ECE0]);
      v22 = v17;
      v23 = sub_21B6C8884();
      v88 = [v21 initWithUpdatedPath:v19 updatedPosterUUID:v23 sourceIdentity:v22 configuredProperties:a2 attributes:0];

      (*(v85 + 8))(v15, v12);
    }

    else
    {
      v88 = [objc_allocWithZone(MEMORY[0x277D3ECE0]) initWithNewPath:v19 destinationPosterUUID:0 sourceIdentity:v17 configuredProperties:a2 attributes:0];
    }

    type metadata accessor for LegacyMigrationEditingSceneViewController();
    v28 = swift_dynamicCastClass();
    v82 = v12;
    if (v28)
    {
      v29 = *(v28 + OBJC_IVAR___PBFLegacyMigrationEditingSceneViewController_posterPairToReplace);
      if (v29)
      {
        v30 = qword_27CD925B8;
        v31 = a3;
        v32 = v29;
        if (v30 != -1)
        {
          swift_once();
        }

        v33 = sub_21B6C8AB4();
        __swift_project_value_buffer(v33, qword_27CD94D90);
        v34 = sub_21B6C9044();
        v35 = v32;
        v36 = v88;
        v37 = sub_21B6C8A94();

        if (os_log_type_enabled(v37, v34))
        {
          v81 = v31;
          v84 = v29;
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *v38 = 138412546;
          v40 = [v36 sourceIdentity];
          *(v38 + 4) = v40;
          *v39 = v40;
          *(v38 + 12) = 2112;
          v41 = [*&v35[OBJC_IVAR___PBFPosterPair_configuration] _path];
          v42 = [v41 serverIdentity];

          if (!v42)
          {
            __break(1u);
            return;
          }

          *(v38 + 14) = v42;
          v39[1] = v42;
          _os_log_impl(&dword_21B526000, v37, v34, "persisted %@ wants to replace legacy %@", v38, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EF0);
          swift_arrayDestroy();
          MEMORY[0x21CEF8150](v39, -1, -1);
          MEMORY[0x21CEF8150](v38, -1, -1);
          v29 = v84;
          v43 = v86;
          v31 = v81;
        }

        else
        {

          v43 = v86;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v29 = 0;
    }

    v43 = v86;
LABEL_21:
    v44 = [a3 pbf_displayContext];
    if (v43)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93400);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21B6D7FE0;
      v46 = PRPosterSnapshotDefinitionIdentifierEditingConfirmation;
      *(inited + 32) = PRPosterSnapshotDefinitionIdentifierEditingConfirmation;
      v47 = v46;
      v48 = sub_21B645CE0(inited);
      swift_setDeallocating();
      sub_21B636E24(inited + 32);
    }

    else
    {
      v48 = MEMORY[0x277D84FA0];
    }

    v49 = sub_21B620CB8(v88, v29, v48, v44, 0);

    if (v49)
    {
      v84 = v29;
      v50 = OBJC_IVAR___PBFPosterPair_configuration;
      v51 = *&v49[OBJC_IVAR___PBFPosterPair_configuration];
      v52 = *(v6 + OBJC_IVAR___PBFPosterEditingIngestionManager_ingestedConfiguration);
      *(v6 + OBJC_IVAR___PBFPosterEditingIngestionManager_ingestedConfiguration) = v51;
      v53 = v51;

      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      if (v43)
      {
        v86 = v53;
        sub_21B644334();
        v54 = OBJC_IVAR___PBFPosterEditingIngestionManager_editingConfirmationViewController;
        v55 = *(v6 + OBJC_IVAR___PBFPosterEditingIngestionManager_editingConfirmationViewController);
        if (v55)
        {
          v56 = *&v49[OBJC_IVAR___PBFPosterPair_id + 8];
          v57 = &v55[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_posterID];
          *v57 = *&v49[OBJC_IVAR___PBFPosterPair_id];
          *(v57 + 1) = v56;
          v58 = v55;
        }

        v59 = [*&v49[v50] pbf_posterUUID];
        sub_21B6C88A4();

        v60 = sub_21B6C8874();
        v62 = v61;
        (*(v85 + 8))(v15, v82);
        v90 = 0xD000000000000019;
        v91 = 0x800000021B6EF9E0;
        MEMORY[0x21CEF5FA0](v60, v62);

        v63 = objc_allocWithZone(PBFApplicationStateNode);
        v64 = sub_21B6C8D74();

        v65 = [v63 initWithDescription_];

        v66 = [objc_allocWithZone(PBFApplicationStateComponent) initWithPRPosterConfiguration_];
        [v65 updateByAddingComponent_];

        v67 = *(v6 + v54);
        if (v67)
        {
          v68 = OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_userInfo;
          swift_beginAccess();
          v69 = v67;
          v70 = v65;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v89 = *&v67[v68];
          *&v67[v68] = 0x8000000000000000;
          sub_21B645694(v70, 0x6574617473, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
          *&v67[v68] = v89;
          swift_endAccess();
        }

        v72 = [objc_opt_self() sharedInstance];
        v73 = [v72 applicationStateMonitor];

        [v73 pushState_];
        v74 = sub_21B645ED4(v49, v44);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong editingIngestionManager:v6 didAccept:v53 userChoice:0];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v75 = v87;
      if (qword_27CD925B8 != -1)
      {
        swift_once();
      }

      v76 = sub_21B6C8AB4();
      __swift_project_value_buffer(v76, qword_27CD94D90);
      v77 = sub_21B6C9024();
      v78 = sub_21B6C8A94();
      if (os_log_type_enabled(v78, v77))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_21B526000, v78, v77, "Not showing editing confirmation since the poster failed to get ingested", v79, 2u);
        MEMORY[0x21CEF8150](v79, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    return;
  }

  if (qword_27CD925B8 != -1)
  {
    swift_once();
  }

  v24 = sub_21B6C8AB4();
  __swift_project_value_buffer(v24, qword_27CD94D90);
  v25 = sub_21B6C9024();
  v26 = sub_21B6C8A94();
  if (os_log_type_enabled(v26, v25))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_21B526000, v26, v25, "Not ingesting, not a server path", v27, 2u);
    MEMORY[0x21CEF8150](v27, -1, -1);
  }
}

id sub_21B6441CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

Swift::Void __swiftcall PosterEditingIngestionManager.dismissViewController()()
{
  v1 = *(v0 + OBJC_IVAR___PBFPosterEditingIngestionManager_editingConfirmationViewController);
  if (v1)
  {
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_21B644334()
{
  type metadata accessor for PosterEditingConfirmationViewController();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v1 setModalInPresentation_];
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_delegate + 8] = &off_282CD0418;
  swift_unknownObjectWeakAssign();
  v2 = OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_userInfo;
  swift_beginAccess();
  v3 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *&v1[v2];
  *&v1[v2] = 0x8000000000000000;
  sub_21B645694(v3, 0xD000000000000010, 0x800000021B6EFB90, isUniquelyReferenced_nonNull_native);
  *&v1[v2] = v18;
  swift_endAccess();
  v5 = [v1 sheetPresentationController];
  if (v5)
  {
    v6 = v5;
    sub_21B61785C(0, &qword_27CD93438);
    v7 = sub_21B6C8D74();
    *(swift_allocObject() + 16) = v1;
    v8 = v1;
    v9 = sub_21B6C90F4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21B6D81D0;
    *(v10 + 32) = v9;
    v11 = v9;
    v12 = sub_21B6C8E74();

    [v6 setDetents_];

    [v6 setPrefersGrabberVisible_];
  }

  v13 = [v1 view];

  if (v13)
  {
    [v13 pui_setGlassGroupBackground];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong setControlsHidden:1 animated:1];

    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      [v15 presentViewController:v1 animated:1 completion:0];
    }

    v17 = *&v3[OBJC_IVAR___PBFPosterEditingIngestionManager_editingConfirmationViewController];
    *&v3[OBJC_IVAR___PBFPosterEditingIngestionManager_editingConfirmationViewController] = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_21B644628(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [objc_allocWithZone(PBFHomeScreenPreviewViewBuilder) init];
    [v7 setDisplayContext_];
    swift_unknownObjectRelease();
    v8 = [a1 compositeSnapshot];
    [v7 setUnlockedPosterSnapshot_];

    v9 = *(a3 + OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration);
    if (v9)
    {
      v10 = *(a3 + OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration);
    }

    else
    {
      v10 = [*(a3 + OBJC_IVAR___PBFPosterPair_configuredProperties) homeScreenConfiguration];
      if (!v10)
      {
        v10 = [objc_allocWithZone(MEMORY[0x277D3EDB0]) init];
      }
    }

    v11 = v9;
    [v7 setHomeScreenConfiguration_];

    v12 = [v6 traitCollection];
    v13 = [v12 userInterfaceIdiom];

    v14 = 0.2;
    if (v13 != 1)
    {
      v14 = 0.25;
    }

    [v7 setViewScreenSizeScale_];
    v15 = [v7 buildView];
    v16 = *&v6[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewView];
    *&v6[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewView] = v15;
    v17 = v15;

    sub_21B617070();
  }
}

void sub_21B64482C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (*(a1 + 16))
    {
      v9 = sub_21B695E60(PRPosterSnapshotDefinitionIdentifierEditingConfirmation);
      if (v10)
      {
        v11 = *(*(a1 + 56) + 8 * v9);
        v12 = [v11 compositeSnapshot];
        v13 = *&v8[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewImage];
        *&v8[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewImage] = v12;
        v14 = v12;

        sub_21B617070();
      }

      if (*(a1 + 16))
      {
        v15 = sub_21B695E60(PRPosterSnapshotDefinitionIdentifierSwitcherUnlocked);
        if ((v16 & 1) != 0 && !a3)
        {
          v17 = *(*(a1 + 56) + 8 * v15);
          v18 = v17;
          a4(v17);
        }
      }
    }
  }
}

void sub_21B644968(uint64_t a1, void (*a2)(void))
{
  if (*(a1 + 16) && (v4 = sub_21B695E60(PRPosterSnapshotDefinitionIdentifierSwitcherUnlocked), (v5 & 1) != 0))
  {
    v8 = *(*(a1 + 56) + 8 * v4);
    v6 = v8;
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = v7;
  a2();
}

id PosterEditingIngestionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PosterEditingIngestionManager.init()()
{
  v1 = OBJC_IVAR___PBFPosterEditingIngestionManager_posterStore;
  if (qword_28120B5D0 != -1)
  {
    swift_once();
  }

  v2 = &v0[v1];
  v3 = qword_28120CDA8;
  *v2 = qword_28120CDA8;
  *(v2 + 1) = &off_282CCF668;
  *&v0[OBJC_IVAR___PBFPosterEditingIngestionManager_editingConfirmationViewController] = 0;
  *&v0[OBJC_IVAR___PBFPosterEditingIngestionManager_ingestedConfiguration] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for PosterEditingIngestionManager();
  v4 = v3;
  return objc_msgSendSuper2(&v6, sel_init);
}

id PosterEditingIngestionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterEditingIngestionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21B644C04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_userInfo;
  swift_beginAccess();
  if (*(*(a1 + v6) + 16))
  {

    sub_21B695DE8(0x6574617473, 0xE500000000000000);
    if (v7)
    {
      swift_unknownObjectRetain();

      v8 = swift_dynamicCastObjCProtocolConditional();
      if (v8)
      {
        [v8 cancel];
        swift_beginAccess();
        sub_21B643460(0, 0x6574617473, 0xE500000000000000);
        swift_endAccess();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v9 = *(v2 + OBJC_IVAR___PBFPosterEditingIngestionManager_ingestedConfiguration);
  if (v9)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = v9;
      [v11 editingIngestionManager:v3 didAccept:v12 userChoice:a2];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_27CD925B8 != -1)
    {
      swift_once();
    }

    v13 = sub_21B6C8AB4();
    __swift_project_value_buffer(v13, qword_27CD94D90);
    v14 = sub_21B6C8A94();
    v15 = sub_21B6C9034();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21B526000, v14, v15, "Editing confirmation was shown even though the poster failed to get ingested", v16, 2u);
      MEMORY[0x21CEF8150](v16, -1, -1);
    }
  }
}

void sub_21B644E48(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_userInfo;
  swift_beginAccess();
  if (*(*(a1 + v4) + 16))
  {

    sub_21B695DE8(0x6574617473, 0xE500000000000000);
    if (v5)
    {
      swift_unknownObjectRetain();

      v6 = swift_dynamicCastObjCProtocolConditional();
      if (v6)
      {
        [v6 cancel];
        swift_beginAccess();
        sub_21B643460(0, 0x6574617473, 0xE500000000000000);
        swift_endAccess();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_21B6466E8;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B66FF38;
  aBlock[3] = &block_descriptor_5;
  v8 = _Block_copy(aBlock);

  [a2 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

void sub_21B645018()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR___PBFPosterEditingIngestionManager_editingConfirmationViewController);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      v4 = *&v3[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_posterID];
      v1 = *&v3[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_posterID + 8];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v1 = 0;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5 && (v6 = *(v5 + OBJC_IVAR___PBFPosterEditingIngestionManager_editingConfirmationViewController), v7 = v5, v8 = v6, v7, v6))
  {
    v9 = swift_allocObject();
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v4;
    v11[4] = v1;
    aBlock[4] = sub_21B646708;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21B63863C;
    aBlock[3] = &block_descriptor_22;
    v12 = _Block_copy(aBlock);

    [v8 dismissViewControllerAnimated:1 completion:v12];
    _Block_release(v12);
  }

  else
  {
  }
}

void sub_21B645200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_21B644334();
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR___PBFPosterEditingIngestionManager_editingConfirmationViewController);
    v9 = v7;
    v10 = v8;

    if (v8)
    {
      v11 = &v10[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_posterID];
      *v11 = a2;
      v11[1] = a3;
    }
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();

    if (v14)
    {
      v15 = [v14 pbf_displayContext];

      if (v15)
      {
        if (a3)
        {
          swift_beginAccess();
          v16 = swift_unknownObjectWeakLoadStrong();
          if (v16)
          {
            v17 = v16;
            swift_unknownObjectRetain();

            v18 = sub_21B61F5F8(a2, a3);
            swift_unknownObjectRelease();
            if (v18)
            {
              swift_beginAccess();
              v19 = swift_unknownObjectWeakLoadStrong();
              if (v19)
              {
                v20 = v19;
                sub_21B645ED4(v18, v15);
              }
            }
          }
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_21B6453EC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_21B645438(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_21B645448(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_21B6454E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21B6C9424() + 1) & ~v5;
    do
    {
      sub_21B6C97A4();

      sub_21B6C8DD4();
      v9 = sub_21B6C97C4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21B645694(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21B695DE8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21B69698C(v16, a4 & 1);
      v11 = sub_21B695DE8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_21B6C9734();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_21B697684();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void sub_21B645810(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_21B695E60(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_21B696C34(v13, a3 & 1);
      v8 = sub_21B695E60(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for Identifier(0);
        sub_21B6C9734();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_21B6977F4();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

void sub_21B645978(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21B695DE8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21B696EF8(v16, a4 & 1);
      v11 = sub_21B695DE8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_21B6C9734();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_21B697954();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

id sub_21B645AF0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_21B695F7C(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_21B69719C(v15, a4 & 1);
      v10 = sub_21B695F7C(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_21B61785C(0, &qword_27CD93418);
        result = sub_21B6C9734();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v10;
      sub_21B697AC0();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v10);
    *v21 = a1;
    v21[1] = a2;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  *(v20[6] + 8 * v10) = a3;
  v23 = (v20[7] + 16 * v10);
  *v23 = a1;
  v23[1] = a2;
  v24 = v20[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;

  return a3;
}

unint64_t sub_21B645C74(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_21B645CE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93430);
    v3 = sub_21B6C9504();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_21B6C8DA4();
      sub_21B6C97A4();
      v27 = v7;
      sub_21B6C8DD4();
      v8 = sub_21B6C97C4();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_21B6C8DA4();
        v18 = v17;
        if (v16 == sub_21B6C8DA4() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_21B6C96E4();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21B645ED4(char *a1, uint64_t a2)
{
  v3 = v2;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v7 = v5;
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;
  v41 = v6;
  v8 = *&a1[OBJC_IVAR___PBFPosterPair_provisionalHomeScreenConfiguration];
  v37 = v7;
  if (v8)
  {

    v9 = a1;
    v10 = v8;
  }

  else
  {
    v11 = *&a1[OBJC_IVAR___PBFPosterPair_configuredProperties];

    v12 = a1;
    v10 = [v11 homeScreenConfiguration];
    if (!v10)
    {
      v10 = [objc_allocWithZone(MEMORY[0x277D3EDB0]) init];
    }
  }

  v13 = v8;
  v14 = [v10 selectedAppearanceType];

  v35 = *(v3 + OBJC_IVAR___PBFPosterEditingIngestionManager_posterStore + 8);
  ObjectType = swift_getObjectType();
  v38 = a1;
  v15 = *&a1[OBJC_IVAR___PBFPosterPair_configuration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B6D86F0;
  v17 = PRPosterSnapshotDefinitionIdentifierEditingConfirmation;
  *(inited + 32) = PRPosterSnapshotDefinitionIdentifierEditingConfirmation;
  v18 = PRPosterSnapshotDefinitionIdentifierSwitcherUnlocked;
  *(inited + 40) = PRPosterSnapshotDefinitionIdentifierSwitcherUnlocked;
  v19 = v15;
  v20 = v17;
  v34 = v18;
  v21 = sub_21B645CE0(inited);
  swift_setDeallocating();
  type metadata accessor for Identifier(0);
  swift_arrayDestroy();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = v14;
  v23[4] = sub_21B646714;
  v23[5] = v41;
  v24 = *(v35 + 8);
  v25 = *(v24 + 8);

  v36 = v25;
  v25(v19, v21, a2, 0, sub_21B64671C, v23, ObjectType, v24);

  if (v14)
  {
    v26 = v38;
    if (v14 == 3 && (v27 = *(v38 + OBJC_IVAR___PBFPosterPair_associatedConfiguration)) != 0)
    {
      v28 = v27;

      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_21B6D7FE0;
      *(v29 + 32) = v34;
      v30 = v34;
      v31 = sub_21B645CE0(v29);
      swift_setDeallocating();
      sub_21B636E24(v29 + 32);
      v32 = swift_allocObject();
      *(v32 + 16) = sub_21B646714;
      *(v32 + 24) = v41;

      v36(v28, v31, a2, 0, sub_21B646728, v32, ObjectType, v24);
    }

    else
    {
      sub_21B644628(0, v37, v38);
    }
  }

  else
  {

    return v38;
  }

  return v26;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_21B6463FC(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = sub_21B6C9454();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2);
      v6 = sub_21B6C9504();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_21B6C9454();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x277D84FA0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = v6 + 56;
  v43 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    v40 = v4;
    while (1)
    {
      v13 = MEMORY[0x21CEF66E0](v12, v4);
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = sub_21B6C9194();
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *(v11 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        sub_21B61785C(0, a4);
        while (1)
        {
          v23 = *(*(v6 + 48) + 8 * v18);
          v24 = sub_21B6C91A4();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *(v11 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            v4 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        v4 = v40;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v11 + 8 * v19) = v21 | v20;
        *(*(v6 + 48) + 8 * v18) = v15;
        v25 = *(v6 + 16);
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v41 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v41)
    {
      v28 = *(v4 + 32 + 8 * v27);
      v29 = sub_21B6C9194();
      v30 = -1 << *(v6 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      v33 = *(v11 + 8 * (v31 >> 6));
      v34 = 1 << v31;
      if (((1 << v31) & v33) != 0)
      {
        v35 = ~v30;
        sub_21B61785C(0, a4);
        while (1)
        {
          v36 = *(*(v6 + 48) + 8 * v31);
          v37 = sub_21B6C91A4();

          if (v37)
          {
            break;
          }

          v31 = (v31 + 1) & v35;
          v32 = v31 >> 6;
          v33 = *(v11 + 8 * (v31 >> 6));
          v34 = 1 << v31;
          if (((1 << v31) & v33) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v11 + 8 * v32) = v34 | v33;
        *(*(v6 + 48) + 8 * v31) = v28;
        v38 = *(v6 + 16);
        v14 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v39;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_21B646764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = &v4[OBJC_IVAR____TtC11PosterBoard23PosterSectionFooterView_symbol];
  v10 = *&v4[OBJC_IVAR____TtC11PosterBoard23PosterSectionFooterView_symbol + 8];
  if (a2)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    v11 = *v9 == a1 && v10 == a2;
    if (!v11 && (sub_21B6C96E4() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v10)
  {
    goto LABEL_19;
  }

  v12 = *&v4[OBJC_IVAR____TtC11PosterBoard23PosterSectionFooterView_text + 8];
  if (!a4)
  {
    if (!v12)
    {
      return;
    }

LABEL_19:
    *v9 = a1;
    *(v9 + 1) = a2;

    v14 = &v4[OBJC_IVAR____TtC11PosterBoard23PosterSectionFooterView_text];
    *v14 = a3;
    *(v14 + 1) = a4;

    v28 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
    if (a2)
    {
      v15 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x277D76938] scale:2];
      v16 = sub_21B6C8D74();
      v17 = [objc_opt_self() systemImageNamed:v16 withConfiguration:v15];

      if (v17)
      {
        v18 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
        v19 = [objc_opt_self() whiteColor];
        v20 = [v17 imageWithTintColor_];

        [v18 setImage_];
        v21 = [objc_opt_self() attributedStringWithAttachment_];
        [v28 &selRef:v21 ambientEditingCollectionViewControllerDidPressDone:? + 3];
      }

      if (!a4)
      {
        goto LABEL_26;
      }

      v22 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v23 = sub_21B6C8D74();
      v24 = [v22 initWithString_];

      [v28 appendAttributedString_];
    }

    else if (!a4)
    {
      goto LABEL_27;
    }

    v25 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v26 = sub_21B6C8D74();
    v15 = [v25 initWithString_];

    [v28 appendAttributedString_];
LABEL_26:

LABEL_27:
    v27 = *&v4[OBJC_IVAR____TtC11PosterBoard23PosterSectionFooterView_titleLabel];
    if (v27)
    {
      [v27 setAttributedText_];
      [v4 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }

    return;
  }

  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = *&v4[OBJC_IVAR____TtC11PosterBoard23PosterSectionFooterView_text] == a3 && v12 == a4;
  if (!v13 && (sub_21B6C96E4() & 1) == 0)
  {
    goto LABEL_19;
  }
}

char *sub_21B646B7C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11PosterBoard23PosterSectionFooterView_titleLabel] = 0;
  v9 = &v4[OBJC_IVAR____TtC11PosterBoard23PosterSectionFooterView_symbol];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR____TtC11PosterBoard23PosterSectionFooterView_text];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard23PosterSectionFooterView_titleLabelSpacingFromBottomEdge] = 0x4024000000000000;
  v24.receiver = v4;
  v24.super_class = type metadata accessor for PosterSectionFooterView();
  v11 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = objc_allocWithZone(MEMORY[0x277D756B8]);
  v13 = v11;
  v14 = [v12 initWithFrame_];
  [v14 setMaximumContentSizeCategory_];
  [v14 setAdjustsFontForContentSizeCategory_];
  [v14 setAdjustsFontSizeToFitWidth_];
  [v14 setMinimumScaleFactor_];
  [v14 setTextAlignment_];
  v15 = [objc_opt_self() labelColor];
  [v14 setTextColor_];

  [v14 setNumberOfLines_];
  result = [objc_opt_self() _preferredFontDescriptorWithTextStyle_weight_];
  if (result)
  {
    v17 = result;
    v18 = [objc_opt_self() fontWithDescriptor:result size:0.0];
    [v14 setFont_];
    [v13 addSubview_];
    v19 = *&v13[OBJC_IVAR____TtC11PosterBoard23PosterSectionFooterView_titleLabel];
    *&v13[OBJC_IVAR____TtC11PosterBoard23PosterSectionFooterView_titleLabel] = v14;
    v20 = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92C88);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_21B6D7FE0;
    v22 = sub_21B6C8B54();
    v23 = MEMORY[0x277D74DB8];
    *(v21 + 32) = v22;
    *(v21 + 40) = v23;
    MEMORY[0x21CEF6310](v21, sel_setNeedsLayout);

    swift_unknownObjectRelease();

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21B646F14()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for PosterSectionFooterView();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC11PosterBoard23PosterSectionFooterView_titleLabel;
  v2 = *&v0[OBJC_IVAR____TtC11PosterBoard23PosterSectionFooterView_titleLabel];
  if (!v2)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = [v2 text];
  if (!v3)
  {
    return;
  }

  [v0 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v0 traitCollection];
  [v12 displayScale];

  v13 = *&v0[v1];
  if (!v13)
  {
    goto LABEL_8;
  }

  [v13 sizeThatFits_];
  BSSizeCeilForScale();
  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  CGRectGetMidX(v17);
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  CGRectGetMinY(v18);
  v14 = *&v0[v1];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v15 = v14;
  BSPointRoundForScale();
  [v15 setFrame_];
}

id sub_21B6470F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterSectionFooterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21B6471AC()
{
  result = sub_21B6C8D74();
  qword_28120CD70 = result;
  return result;
}

id sub_21B6473EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickActionsSceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21B647454(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = objc_allocWithZone(MEMORY[0x277D75DA0]);
    v6 = a1;
    v7 = [v5 initWithWindowScene_];
    v8 = [objc_opt_self() defaultCenter];
    if (qword_28120B2C8 != -1)
    {
      swift_once();
    }

    v9 = qword_28120CD70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD933B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B6D7FE0;
    sub_21B6C94B4();
    *(inited + 96) = sub_21B6433AC();
    *(inited + 72) = v7;
    v11 = v7;
    sub_21B698C14(inited);
    swift_setDeallocating();
    sub_21B6433F8(inited + 32);
    v12 = sub_21B6C8D14();

    [v8 postNotificationName:v9 object:v1 userInfo:v12];

    v13 = *(v1 + OBJC_IVAR____TtC11PosterBoard25QuickActionsSceneDelegate_window);
    *(v1 + OBJC_IVAR____TtC11PosterBoard25QuickActionsSceneDelegate_window) = v11;
  }
}

void sub_21B647654(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_21B6C9454();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x21CEF66E0](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_21B647768(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_21B69F91C(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_21B647848(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id AmbientEditingCollectionViewController.displayConfiguration.getter()
{
  v1 = *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController__displayConfiguration);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController__displayConfiguration);
  }

  else
  {
    v3 = [objc_opt_self() pui_sharedDisplayMonitor];
    v2 = [v3 mainConfiguration];

    v1 = 0;
  }

  v4 = v1;
  return v2;
}

void AmbientEditingCollectionViewController.displayConfiguration.setter(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___PBFAmbientEditingCollectionViewController__displayConfiguration;
  v4 = *(v1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController__displayConfiguration);
  if (v4)
  {
    sub_21B61785C(0, &qword_28120B270);
    v5 = a1;
    v6 = v4;
    v7 = sub_21B6C91A4();

    if (v7)
    {
      goto LABEL_10;
    }

    v8 = *(v2 + v3);
    v9 = a1;
  }

  else
  {
    v10 = a1;
    v9 = a1;
    v8 = 0;
  }

  *(v2 + v3) = v9;

  v11 = *(v2 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_editingSceneViewController);
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = *(v2 + v3);
  if (v12)
  {
    v13 = v11;
    v5 = v12;
  }

  else
  {
    v14 = objc_opt_self();
    v13 = v11;
    v15 = [v14 pui_sharedDisplayMonitor];
    v5 = [v15 mainConfiguration];

    v12 = 0;
  }

  v16 = v12;
  [v13 setDisplayConfiguration_];

LABEL_10:
LABEL_11:
}

void (*AmbientEditingCollectionViewController.displayConfiguration.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController__displayConfiguration);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController__displayConfiguration);
  }

  else
  {
    v5 = [objc_opt_self() pui_sharedDisplayMonitor];
    v4 = [v5 mainConfiguration];

    v3 = 0;
  }

  *a1 = v4;
  v6 = v3;
  return sub_21B647C3C;
}

void sub_21B647C3C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    AmbientEditingCollectionViewController.displayConfiguration.setter(v3);
  }

  else
  {
    AmbientEditingCollectionViewController.displayConfiguration.setter(v2);
  }
}

id AmbientEditingCollectionViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *AmbientEditingCollectionViewController.init()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 dataStore];

  v2 = objc_allocWithZone(type metadata accessor for AmbientEditingCollectionViewController());
  v3 = sub_21B647E3C(v1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

char *sub_21B647E3C(void *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController__displayConfiguration] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_transitionOverlayView] = 0;
  v3 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_layout;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for AmbientCollectionViewLayout()) init];
  v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_hasScrolledToActivePosterForInitialViewLayout] = 0;
  *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_desiredSpacingFromCardToPageControl] = 0x4038000000000000;
  *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_buttonDistanceFromScreenTop] = 0x4030000000000000;
  *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_buttonDistanceFromScreenEdge] = 0x4044000000000000;
  *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_buttonWidth] = 0x4050800000000000;
  *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_buttonHeight] = 0x403C000000000000;
  *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_posters] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_activePosterConfiguration] = 0;
  v4 = &v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_activePosterProvider];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_doneButton] = 0;
  *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_addButton] = 0;
  v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_finishDismiss] = 0;
  *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControl] = 0;
  *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControlPreferredNumberOfVisibleIndicators] = 7;
  v5 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_availableInstanceIdentifiers;
  v6 = [objc_opt_self() suggestedInstanceIdentifiers];
  sub_21B6C88C4();
  v7 = sub_21B6C8E84();

  *&v1[v5] = v7;
  *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController____lazy_storage___snapshotController] = 0;
  *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_editingSceneHiddenWindow] = 0;
  *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_editingSceneViewController] = 0;
  *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_presentedEditingRemoteViewController] = 0;
  v8 = &v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_presentedEditingRemoteViewContentScreenRect];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_isScrollingOrSettling] = 0;
  v9 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_observers;
  *&v1[v9] = [objc_opt_self() weakObjectsHashTable];
  *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_dataStore] = a1;
  v10 = *&v1[v3];
  v35.receiver = v1;
  v35.super_class = type metadata accessor for AmbientEditingCollectionViewController();
  v11 = a1;
  v12 = objc_msgSendSuper2(&v35, sel_initWithCollectionViewLayout_, v10);
  v13 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_dataStore;
  v14 = *&v12[OBJC_IVAR___PBFAmbientEditingCollectionViewController_dataStore];
  v15 = *MEMORY[0x277D3EE98];
  v34 = 0;
  v16 = v12;
  v17 = [v14 activePosterForRole:v15 assocPoster:0 error:&v34];
  v18 = v34;
  if (v17)
  {
    v19 = *&v16[OBJC_IVAR___PBFAmbientEditingCollectionViewController_activePosterConfiguration];
    *&v16[OBJC_IVAR___PBFAmbientEditingCollectionViewController_activePosterConfiguration] = v17;
    v20 = v17;
    v21 = v18;

    v22 = [v20 pbf_posterProvider];
    v23 = sub_21B6C8DA4();
    v25 = v24;

    v26 = &v16[OBJC_IVAR___PBFAmbientEditingCollectionViewController_activePosterProvider];
    *v26 = v23;
    v26[1] = v25;
  }

  else
  {
    v27 = v34;
    v28 = sub_21B6C8764();

    swift_willThrow();
    if (qword_27CD925A8 != -1)
    {
      swift_once();
    }

    v29 = sub_21B6C8AB4();
    __swift_project_value_buffer(v29, qword_27CD94D60);
    v30 = sub_21B6C9024();
    v31 = sub_21B6C8A94();
    if (os_log_type_enabled(v31, v30))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_21B526000, v31, v30, "Error fetching active poster configuration", v32, 2u);
      MEMORY[0x21CEF8150](v32, -1, -1);
    }
  }

  [*&v12[v13] addObserver_];
  sub_21B64BFAC();

  return v16;
}

char *AmbientEditingCollectionViewController.__allocating_init(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 dataStore];

  v6 = objc_allocWithZone(type metadata accessor for AmbientEditingCollectionViewController());
  v7 = sub_21B6484A0(v5, a1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

char *AmbientEditingCollectionViewController.init(_:)(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 dataStore];

  v4 = objc_allocWithZone(type metadata accessor for AmbientEditingCollectionViewController());
  v5 = sub_21B6484A0(v3, a1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

char *sub_21B6484A0(void *a1, void *a2)
{
  *&v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController__displayConfiguration] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_transitionOverlayView] = 0;
  v5 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_layout;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for AmbientCollectionViewLayout()) init];
  v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_hasScrolledToActivePosterForInitialViewLayout] = 0;
  *&v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_desiredSpacingFromCardToPageControl] = 0x4038000000000000;
  *&v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_buttonDistanceFromScreenTop] = 0x4030000000000000;
  *&v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_buttonDistanceFromScreenEdge] = 0x4044000000000000;
  *&v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_buttonWidth] = 0x4050800000000000;
  *&v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_buttonHeight] = 0x403C000000000000;
  *&v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_posters] = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_activePosterConfiguration;
  *&v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_activePosterConfiguration] = 0;
  v7 = &v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_activePosterProvider];
  *v7 = 0;
  v7[1] = 0;
  *&v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_doneButton] = 0;
  *&v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_addButton] = 0;
  v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_finishDismiss] = 0;
  *&v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControl] = 0;
  *&v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControlPreferredNumberOfVisibleIndicators] = 7;
  v8 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_availableInstanceIdentifiers;
  v9 = [objc_opt_self() suggestedInstanceIdentifiers];
  sub_21B6C88C4();
  v10 = sub_21B6C8E84();

  *&v2[v8] = v10;
  *&v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController____lazy_storage___snapshotController] = 0;
  *&v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_editingSceneHiddenWindow] = 0;
  *&v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_editingSceneViewController] = 0;
  *&v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_presentedEditingRemoteViewController] = 0;
  v11 = &v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_presentedEditingRemoteViewContentScreenRect];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = 1;
  v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_isScrollingOrSettling] = 0;
  v12 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_observers;
  *&v2[v12] = [objc_opt_self() weakObjectsHashTable];
  *&v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_dataStore] = a1;
  v13 = *&v2[v6];
  *&v2[v6] = a2;
  v14 = a1;
  v15 = a2;

  v16 = *&v2[v5];
  v25.receiver = v2;
  v25.super_class = type metadata accessor for AmbientEditingCollectionViewController();
  result = objc_msgSendSuper2(&v25, sel_initWithCollectionViewLayout_, v16);
  v18 = *&result[OBJC_IVAR___PBFAmbientEditingCollectionViewController_activePosterConfiguration];
  if (v18)
  {
    v19 = result;
    v20 = [v18 pbf_posterProvider];
    v21 = sub_21B6C8DA4();
    v23 = v22;

    v24 = &v19[OBJC_IVAR___PBFAmbientEditingCollectionViewController_activePosterProvider];
    *v24 = v21;
    v24[1] = v23;

    [*&v19[OBJC_IVAR___PBFAmbientEditingCollectionViewController_dataStore] addObserver_];
    sub_21B64BFAC();

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall AmbientEditingCollectionViewController.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AmbientEditingCollectionViewController();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() secondarySystemBackgroundColor];
    [v2 setBackgroundColor_];

    sub_21B64AEC0();
    sub_21B64B098();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall AmbientEditingCollectionViewController.viewWillLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for AmbientEditingCollectionViewController();
  objc_msgSendSuper2(&v1, sel_viewWillLayoutSubviews);
  sub_21B64BBD4();
}

Swift::Void __swiftcall AmbientEditingCollectionViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v2 = sub_21B6C8C94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21B6C8CC4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21B6C8CE4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AmbientEditingCollectionViewController();
  v38.receiver = v1;
  v38.super_class = v14;
  objc_msgSendSuper2(&v38, sel_viewDidLayoutSubviews);
  if ((v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_hasScrolledToActivePosterForInitialViewLayout] & 1) == 0)
  {
    v34 = v7;
    v35 = v6;
    v36 = v3;
    v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_hasScrolledToActivePosterForInitialViewLayout] = 1;
    sub_21B64C794();
    v15 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_transitionOverlayView;
    swift_beginAccess();
    v16 = *&v1[v15];
    if (v16)
    {
      v17 = v16;
      v18 = [v1 view];
      if (v18)
      {
        v19 = v18;
        [v18 bounds];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        [v17 setFrame_];
        v28 = [v1 view];
        if (v28)
        {
          v29 = v28;
          [v28 addSubview_];

          goto LABEL_6;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

LABEL_6:
    sub_21B61785C(0, &unk_28120B2F0);
    v30 = sub_21B6C9074();
    sub_21B6C8CD4();
    v31 = swift_allocObject();
    *(v31 + 16) = v1;
    aBlock[4] = sub_21B64CC8C;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21B63863C;
    aBlock[3] = &block_descriptor_6;
    v32 = _Block_copy(aBlock);
    v33 = v1;

    sub_21B6C8CB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21B6578DC(&qword_28120B380, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD93B10);
    sub_21B64CCC8();
    sub_21B6C9404();
    MEMORY[0x21CEF6200](v13, v9, v5, v32);
    _Block_release(v32);

    (*(v36 + 8))(v5, v2);
    (*(v34 + 8))(v9, v35);
    (*(v11 + 8))(v13, v10);
  }
}

uint64_t AmbientEditingCollectionViewController.ambientEditingDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AmbientEditingCollectionViewController.ambientEditingDelegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_ambientEditingDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21B643674;
}

void *AmbientEditingCollectionViewController.transitionOverlayView.getter()
{
  v1 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_transitionOverlayView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void AmbientEditingCollectionViewController.transitionOverlayView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_transitionOverlayView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall AmbientEditingCollectionViewController.dismiss()()
{
  v190[3] = *MEMORY[0x277D85DE8];
  v1 = sub_21B6C8C94();
  v183 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v149 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21B6C8CC4();
  v179 = *(v4 - 8);
  v180 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD93370);
  MEMORY[0x28223BE20](v184);
  v8 = &v149 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EE8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v182 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v186 = &v149 - v13;
  MEMORY[0x28223BE20](v12);
  v188 = &v149 - v14;
  v187 = sub_21B6C88C4();
  v176 = *(v187 - 8);
  v15 = MEMORY[0x28223BE20](v187);
  v178 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v177 = &v149 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v181 = &v149 - v20;
  MEMORY[0x28223BE20](v19);
  v185 = &v149 - v21;
  v22 = sub_21B6C8A04();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v149 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v149 - v27;
  sub_21B650404(&v149 - v27);
  if ((*(v23 + 48))(v28, 1, v22) != 1)
  {
    v171 = v8;
    v33 = sub_21B6C89F4();
    v34 = *(v23 + 8);
    v174 = v23 + 8;
    v175 = v22;
    v173 = v34;
    v34(v28, v22);
    MEMORY[0x21CEF5B60](0, v33);
    v35 = v0;
    v36 = [v0 collectionView];
    if (!v36)
    {
      __break(1u);
      return;
    }

    v37 = v36;
    v172 = v25;
    v38 = sub_21B6C8974();
    v39 = [v37 cellForItemAtIndexPath_];

    if (v39)
    {
      type metadata accessor for AmbientCollectionViewCell();
      v40 = swift_dynamicCastClass();
      if (v40)
      {
        v41 = *(v40 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_hideOrDeleteButton);
        if (v41 && [v41 isSelected])
        {
          v157 = v35;
          v37 = *&v35[OBJC_IVAR___PBFAmbientEditingCollectionViewController_dataStore];
          v42 = [v37 fetchPosterConfigurationsSortedByUseForRole_];
          sub_21B61785C(0, &qword_27CD93518);
          v33 = sub_21B6C8E84();

          if (!(v33 >> 62))
          {
            v43 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v45 = v186;
            v44 = v187;
            if (v43)
            {
LABEL_13:
              v150 = v39;
              v183 = &v157[OBJC_IVAR___PBFAmbientEditingCollectionViewController_activePosterProvider];
              v180 = v33 & 0xC000000000000001;
              v149 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_posters;
              swift_beginAccess();
              v39 = 0;
              v152 = 0;
              v165 = v33 & 0xFFFFFFFFFFFFFF8;
              v164 = v33 + 32;
              v159 = v176 + 32;
              v179 = (v176 + 56);
              v166 = v176 + 48;
              v161 = v176 + 8;
              v153 = (v176 + 16);
              *&v46 = 136315138;
              v151 = v46;
              v167 = v37;
              v168 = v33;
              v169 = v43;
              while (1)
              {
                if (v180)
                {
                  v47 = MEMORY[0x21CEF66E0](v39, v33);
                }

                else
                {
                  if (v39 >= *(v165 + 16))
                  {
                    __break(1u);
LABEL_94:
                    __break(1u);
LABEL_95:
                    swift_once();
LABEL_85:
                    v135 = sub_21B6C8AB4();
                    __swift_project_value_buffer(v135, qword_27CD94D60);
                    v136 = sub_21B6C9024();
                    v137 = sub_21B6C8A94();
                    v138 = os_log_type_enabled(v137, v136);
                    v139 = v175;
                    if (v138)
                    {
                      v140 = swift_slowAlloc();
                      *v140 = 0;
                      _os_log_impl(&dword_21B526000, v137, v136, "Cannot dismiss; couldn't unwrap AmbientCollectionViewCell", v140, 2u);
                      MEMORY[0x21CEF8150](v140, -1, -1);
                    }

                    goto LABEL_88;
                  }

                  v47 = *(v164 + 8 * v39);
                }

                v48 = v47;
                if (__OFADD__(v39++, 1))
                {
                  __break(1u);
                  goto LABEL_92;
                }

                v50 = [v37 providerForPath_];
                if (!v50)
                {
                  goto LABEL_14;
                }

                v51 = v50;
                v52 = [v50 posterExtensionBundleIdentifier];

                v53 = sub_21B6C8DA4();
                v55 = v54;

                v56 = v183[1];
                if (v55)
                {
                  if (!v56)
                  {

LABEL_14:

                    goto LABEL_15;
                  }

                  if (v53 == *v183 && v56 == v55)
                  {
                  }

                  else
                  {
                    v58 = sub_21B6C96E4();

                    if ((v58 & 1) == 0)
                    {
                      goto LABEL_14;
                    }
                  }
                }

                else if (v56)
                {
                  goto LABEL_14;
                }

                v59 = v48;
                v60 = [v59 serverIdentity];
                if (v60)
                {
                  v61 = v60;
                  v62 = [v60 posterUUID];

                  v63 = v181;
                  sub_21B6C88A4();

                  v158 = *v159;
                  v158(v185, v63, v44);
                  v64 = sub_21B6C8884();
                  v190[0] = 0;
                  v65 = [v37 posterWithUUID:v64 error:v190];

                  v66 = v190[0];
                  v170 = v59;
                  if (!v65)
                  {
                    v72 = v190[0];
                    v73 = sub_21B6C8764();

                    v176 = v73;
                    swift_willThrow();
LABEL_43:
                    v152 = 0;
                    v76 = v178;
                    if (qword_27CD925A8 != -1)
                    {
                      swift_once();
                    }

                    v77 = sub_21B6C8AB4();
                    __swift_project_value_buffer(v77, qword_27CD94D60);
                    v78 = sub_21B6C9024();
                    v79 = v185;
                    (*v153)(v76, v185, v44);
                    v80 = sub_21B6C8A94();
                    if (os_log_type_enabled(v80, v78))
                    {
                      v81 = swift_slowAlloc();
                      v82 = swift_slowAlloc();
                      v190[0] = v82;
                      *v81 = v151;
                      sub_21B6578DC(&unk_27CD93530, MEMORY[0x277CC95F0]);
                      v83 = sub_21B6C9654();
                      v85 = v84;
                      v86 = *v161;
                      (*v161)(v76, v187);
                      v87 = sub_21B656178(v83, v85, v190);

                      *(v81 + 4) = v87;
                      _os_log_impl(&dword_21B526000, v80, v78, "Error getting poster configuration with UUID: %s", v81, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v82);
                      v88 = v82;
                      v33 = v168;
                      v37 = v167;
                      MEMORY[0x21CEF8150](v88, -1, -1);
                      v89 = v81;
                      v44 = v187;
                      MEMORY[0x21CEF8150](v89, -1, -1);

                      v86(v185, v44);
                    }

                    else
                    {

                      v90 = v76;
                      v91 = *v161;
                      (*v161)(v90, v44);
                      v91(v79, v44);
                    }

                    v43 = v169;
                    goto LABEL_15;
                  }

                  v190[0] = 0;
                  v67 = v66;
                  v68 = [v65 loadAmbientConfigurationWithError_];
                  if (!v68)
                  {
                    v74 = v190[0];
                    v75 = sub_21B6C8764();

                    v176 = v75;
                    swift_willThrow();

                    goto LABEL_43;
                  }

                  v69 = v68;
                  v154 = v65;
                  v70 = v190[0];
                  v71 = [v69 hidden];

                  if ((v71 & 1) == 0)
                  {
                    v92 = *&v157[v149];
                    if (v92 >> 62)
                    {
                      v125 = *&v157[v149];
                      v126 = sub_21B6C9454();
                      v92 = v125;
                      v93 = v126;
                    }

                    else
                    {
                      v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    v94 = v185;
                    v95 = v154;
                    if (!v93)
                    {

LABEL_76:
                      v44 = v187;
                      (*v161)(v94, v187);
                      goto LABEL_15;
                    }

                    v163 = v92 & 0xC000000000000001;
                    v155 = v92 & 0xFFFFFFFFFFFFFF8;
                    v96 = v92;

                    v97 = v96;
                    v98 = 0;
                    v162 = v96;
                    v160 = v93;
                    while (2)
                    {
                      if (v163)
                      {
                        v99 = MEMORY[0x21CEF66E0](v98, v97);
                      }

                      else
                      {
                        if (v98 >= *(v155 + 16))
                        {
                          goto LABEL_99;
                        }

                        v99 = *(v97 + 8 * v98 + 32);
                      }

                      v100 = v99;
                      v101 = *&v99[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterPath];
                      if (v101)
                      {
                        v102 = v101;
                        v103 = [v102 serverIdentity];
                        if (v103)
                        {
                          v104 = v103;
                          v105 = [v103 posterUUID];

                          sub_21B6C88A4();
                          v106 = 0;
                        }

                        else
                        {
                          v106 = 1;
                        }
                      }

                      else
                      {
                        v106 = 1;
                      }

                      v107 = *v179;
                      v108 = 1;
                      (*v179)(v188, v106, 1, v187);
                      v109 = [v59 serverIdentity];
                      v176 = v100;
                      if (v109)
                      {
                        v110 = v109;
                        v111 = [v109 posterUUID];

                        sub_21B6C88A4();
                        v108 = 0;
                      }

                      v112 = v45;
                      v113 = v45;
                      v114 = v187;
                      (v107)(v112, v108, 1, v187);
                      v115 = *(v184 + 48);
                      v116 = v188;
                      v117 = v171;
                      sub_21B63D2BC(v188, v171, &qword_27CD92EE8);
                      sub_21B63D2BC(v113, v117 + v115, &qword_27CD92EE8);
                      v118 = *v166;
                      if ((*v166)(v117, 1, v114) == 1)
                      {

                        sub_21B62AA8C(v113, &qword_27CD92EE8);
                        sub_21B62AA8C(v116, &qword_27CD92EE8);
                        v119 = v118(v117 + v115, 1, v114);
                        v43 = v169;
                        if (v119 == 1)
                        {
                          sub_21B62AA8C(v117, &qword_27CD92EE8);
                          v59 = v170;
LABEL_90:

                          v141 = v157;
                          sub_21B6500A4(v98, 1);

                          (*v161)(v185, v187);
                          v141[OBJC_IVAR___PBFAmbientEditingCollectionViewController_finishDismiss] = 1;
                          v39 = v150;
LABEL_102:
                          v139 = v175;
                          if (v157[OBJC_IVAR___PBFAmbientEditingCollectionViewController_finishDismiss])
                          {
                            v173(v172, v175);

                            return;
                          }

                          if (qword_27CD925A8 != -1)
                          {
                            swift_once();
                          }

                          v142 = sub_21B6C8AB4();
                          __swift_project_value_buffer(v142, qword_27CD94D60);
                          v143 = sub_21B6C9024();
                          v144 = sub_21B6C8A94();
                          if (os_log_type_enabled(v144, v143))
                          {
                            v145 = swift_slowAlloc();
                            *v145 = 0;
                            _os_log_impl(&dword_21B526000, v144, v143, "Error finding an unhidden poster to switch to before dismissing editing switcher", v145, 2u);
                            MEMORY[0x21CEF8150](v145, -1, -1);
                          }

                          v146 = swift_allocObject();
                          v147 = v157;
                          *(v146 + 16) = v157;
                          v148 = v147;
                          sub_21B651D18(sub_21B657CF4, v146);

LABEL_88:
                          v173(v172, v139);
                          return;
                        }

LABEL_70:
                        sub_21B62AA8C(v117, &unk_27CD93370);
                        v59 = v170;
                        v97 = v162;
                      }

                      else
                      {
                        v120 = v182;
                        sub_21B63D2BC(v117, v182, &qword_27CD92EE8);
                        v121 = v118(v117 + v115, 1, v114);
                        v43 = v169;
                        if (v121 == 1)
                        {

                          sub_21B62AA8C(v186, &qword_27CD92EE8);
                          sub_21B62AA8C(v188, &qword_27CD92EE8);
                          (*v161)(v120, v114);
                          goto LABEL_70;
                        }

                        v122 = v177;
                        v158(v177, (v117 + v115), v114);
                        sub_21B6578DC(&qword_27CD92F20, MEMORY[0x277CC95F0]);
                        v156 = sub_21B6C8D64();

                        v123 = *v161;
                        (*v161)(v122, v114);
                        sub_21B62AA8C(v186, &qword_27CD92EE8);
                        sub_21B62AA8C(v188, &qword_27CD92EE8);
                        v123(v120, v114);
                        sub_21B62AA8C(v117, &qword_27CD92EE8);
                        v59 = v170;
                        v97 = v162;
                        if (v156)
                        {
                          goto LABEL_90;
                        }
                      }

                      v124 = v98 + 1;
                      v33 = v168;
                      if (__OFADD__(v98, 1))
                      {
                        goto LABEL_94;
                      }

                      ++v98;
                      v45 = v186;
                      v37 = v167;
                      if (v124 == v160)
                      {

                        v94 = v185;
                        goto LABEL_76;
                      }

                      continue;
                    }
                  }

                  (*v161)(v185, v44);
                }

                else
                {
                }

LABEL_15:
                if (v39 == v43)
                {

                  v39 = v150;
                  goto LABEL_102;
                }
              }
            }

LABEL_101:

            goto LABEL_102;
          }

LABEL_100:
          v43 = sub_21B6C9454();
          v45 = v186;
          v44 = v187;
          if (v43)
          {
            goto LABEL_13;
          }

          goto LABEL_101;
        }

        v127 = v39;
        v128 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_posters;
        swift_beginAccess();
        v129 = *&v35[v128];
        if ((v129 & 0xC000000000000001) == 0)
        {
          v39 = v175;
          if ((v33 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v33 < *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v130 = *(v129 + 8 * v33 + 32);
LABEL_82:
            sub_21B650C10(v130);

            sub_21B61785C(0, &unk_28120B2F0);
            v131 = sub_21B6C9074();
            v132 = swift_allocObject();
            *(v132 + 16) = v35;
            aBlock[4] = sub_21B6560EC;
            aBlock[5] = v132;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_21B63863C;
            aBlock[3] = &block_descriptor_6;
            v133 = _Block_copy(aBlock);
            v134 = v35;

            sub_21B6C8CB4();
            aBlock[0] = MEMORY[0x277D84F90];
            sub_21B6578DC(&qword_28120B380, MEMORY[0x277D85198]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD93B10);
            sub_21B64CCC8();
            sub_21B6C9404();
            MEMORY[0x21CEF6220](0, v6, v3, v133);
            _Block_release(v133);

            (v183[1])(v3, v1);
            v179[1](v6, v180);
            v173(v172, v39);
            return;
          }

          __break(1u);
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        v130 = MEMORY[0x21CEF66E0](v33, v129);

        v39 = v175;
        goto LABEL_82;
      }
    }

    if (qword_27CD925A8 != -1)
    {
      goto LABEL_95;
    }

    goto LABEL_85;
  }

  sub_21B62AA8C(v28, &qword_27CD93500);
  if (qword_27CD925A8 != -1)
  {
LABEL_92:
    swift_once();
  }

  v29 = sub_21B6C8AB4();
  __swift_project_value_buffer(v29, qword_27CD94D60);
  v30 = sub_21B6C9024();
  v31 = sub_21B6C8A94();
  if (os_log_type_enabled(v31, v30))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_21B526000, v31, v30, "Cannot dismiss; couldn't unwrap initial centeredPosterIndexPath", v32, 2u);
    MEMORY[0x21CEF8150](v32, -1, -1);
  }
}

uint64_t sub_21B64A94C(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  sub_21B651D18(sub_21B657BB8, v2);
}

void *sub_21B64A9C8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result ambientEditingCollectionViewControllerDidPressDone_];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21B64AA7C()
{
  v1 = OBJC_IVAR___PBFAmbientEditingCollectionViewController____lazy_storage___snapshotController;
  v2 = *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController____lazy_storage___snapshotController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController____lazy_storage___snapshotController);
  }

  else
  {
    v4 = sub_21B64AADC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_21B64AADC()
{
  v29[1] = *MEMORY[0x277D85DE8];
  v0 = sub_21B6C8794();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v28 - v5;
  v7 = [objc_opt_self() defaultSnapshotCacheURLInCurrentContainer_];
  sub_21B6C8784();

  v8 = [objc_opt_self() defaultManager];
  v9 = sub_21B6C8774();
  v29[0] = 0;
  v10 = [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:v29];

  if (v10)
  {
    v11 = v29[0];
  }

  else
  {
    v12 = v29[0];
    v13 = sub_21B6C8764();

    swift_willThrow();
    if (qword_27CD925A8 != -1)
    {
      swift_once();
    }

    v14 = sub_21B6C8AB4();
    __swift_project_value_buffer(v14, qword_27CD94D60);
    v15 = sub_21B6C9024();
    (*(v1 + 16))(v4, v6, v0);
    v16 = sub_21B6C8A94();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v28[0] = v13;
      v18 = v17;
      v19 = swift_slowAlloc();
      v29[0] = v19;
      *v18 = 136315138;
      sub_21B6578DC(&qword_27CD936C8, MEMORY[0x277CC9260]);
      v20 = sub_21B6C9654();
      v22 = v21;
      (*(v1 + 8))(v4, v0);
      v23 = sub_21B656178(v20, v22, v29);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_21B526000, v16, v15, "Error creating snapshot directory at: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x21CEF8150](v19, -1, -1);
      MEMORY[0x21CEF8150](v18, -1, -1);
    }

    else
    {

      (*(v1 + 8))(v4, v0);
    }
  }

  v24 = objc_allocWithZone(MEMORY[0x277D3EB18]);
  v25 = sub_21B6C8774();
  v26 = [v24 initWithCacheURL_];

  (*(v1 + 8))(v6, v0);
  return v26;
}

void sub_21B64AEC0()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for AmbientCollectionViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = sub_21B6C8D74();
    [v2 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v4];

    v5 = objc_opt_self();
    v6 = v2;
    v7 = [v5 clearColor];
    [v6 setBackgroundColor_];

    v8 = *MEMORY[0x277D76EB8];
    v9 = v6;
    [v9 setDecelerationRate_];
    [v9 setCollectionViewLayout_];
    [v9 setShowsVerticalScrollIndicator_];

    type metadata accessor for PosterSectionFooterView();
    v10 = swift_getObjCClassFromMetadata();
    v11 = *MEMORY[0x277D767D0];
    v12 = sub_21B6C8D74();
    [v9 registerClass:v10 forSupplementaryViewOfKind:v11 withReuseIdentifier:v12];
  }
}

void sub_21B64B098()
{
  v1 = v0;
  sub_21B61785C(0, &qword_28120B2B8);
  sub_21B61785C(0, &unk_28120B110);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v89 = v2;
  sub_21B6C91B4();
  v3 = sub_21B6C93A4();
  v4 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_doneButton;
  v5 = *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_doneButton];
  *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_doneButton] = v3;
  v6 = v3;

  v7 = sub_21B6C8D74();
  [v6 setAccessibilityIdentifier_];

  v8 = *&v1[v4];
  if (!v8)
  {
    __break(1u);
    goto LABEL_47;
  }

  [v8 setTintAdjustmentMode_];
  v9 = *&v1[v4];
  if (!v9)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  [v9 sizeToFit];
  v10 = *&v1[v4];
  if (!v10)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [v1 view];
  if (!v11)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (!*&v1[v4])
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v12 = v11;
  [v11 addSubview_];

  v13 = [v1 view];
  if (!v13)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!*&v1[v4])
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v14 = v13;
  [v13 bringSubviewToFront_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21B6D7FF0;
  v16 = *&v1[v4];
  if (!v16)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v17 = [v16 topAnchor];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v19 = v18;
  v20 = [v18 topAnchor];

  v21 = [v17 constraintEqualToAnchor:v20 constant:16.0];
  *(v15 + 32) = v21;
  v22 = *&v1[v4];
  if (!v22)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v23 = [v22 trailingAnchor];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v25 = v24;
  v26 = [v24 trailingAnchor];

  v27 = [v23 constraintEqualToAnchor:v26 constant:-40.0];
  *(v15 + 40) = v27;
  v28 = *&v1[v4];
  if (!v28)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v29 = [v28 widthAnchor];
  v30 = [v29 constraintEqualToConstant_];

  *(v15 + 48) = v30;
  v31 = *&v1[v4];
  if (!v31)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v32 = objc_opt_self();
  v33 = [v31 heightAnchor];
  v34 = [v33 constraintEqualToConstant_];

  *(v15 + 56) = v34;
  sub_21B61785C(0, &qword_28120B2D0);
  v35 = sub_21B6C8E74();

  [v32 activateConstraints_];

  sub_21B61785C(0, &qword_27CD936D8);
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v90 = v36;
  sub_21B6C91B4();
  v37 = sub_21B6C93A4();
  v38 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_addButton;
  v39 = *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_addButton];
  *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_addButton] = v37;
  v40 = v37;

  v41 = sub_21B6C8D74();
  [v40 setAccessibilityIdentifier_];

  v42 = *&v1[v38];
  if (!v42)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  [v42 sizeToFit];
  v43 = *&v1[v38];
  if (!v43)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v44 = v43;
  v45 = sub_21B64D25C();
  v46 = v45;
  if (v45)
  {
  }

  [v44 setHidden_];

  v47 = *&v1[v38];
  if (!v47)
  {
    goto LABEL_61;
  }

  [v47 setTranslatesAutoresizingMaskIntoConstraints_];
  v48 = [v1 view];
  if (!v48)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (!*&v1[v38])
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v49 = v48;
  [v48 addSubview_];

  v50 = [v1 view];
  if (!v50)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (!*&v1[v38])
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v51 = v50;
  [v50 bringSubviewToFront_];

  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_21B6D7FF0;
  v53 = *&v1[v38];
  if (!v53)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v54 = [v53 topAnchor];
  v55 = *&v1[v4];
  if (!v55)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v56 = [v55 topAnchor];
  v57 = [v54 constraintEqualToAnchor_];

  *(v52 + 32) = v57;
  v58 = *&v1[v38];
  if (!v58)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v59 = [v58 leadingAnchor];
  v60 = [v1 view];
  if (!v60)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v61 = v60;
  v62 = [v60 leadingAnchor];

  v63 = [v59 constraintEqualToAnchor:v62 constant:40.0];
  *(v52 + 40) = v63;
  v64 = *&v1[v38];
  if (!v64)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v65 = [v64 widthAnchor];
  v66 = *&v1[v4];
  if (!v66)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v67 = [v66 widthAnchor];
  v68 = [v65 constraintEqualToAnchor_];

  *(v52 + 48) = v68;
  v69 = *&v1[v38];
  if (!v69)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v70 = [v69 heightAnchor];
  v71 = *&v1[v4];
  if (!v71)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v72 = [v71 heightAnchor];
  v73 = [v70 constraintEqualToAnchor_];

  *(v52 + 56) = v73;
  v74 = sub_21B6C8E74();

  [v32 activateConstraints_];

  v75 = [objc_allocWithZone(MEMORY[0x277D757E0]) initWithFrame_];
  v76 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControl;
  v77 = *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControl];
  *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControl] = v75;
  v78 = v75;

  if (!v78)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  [v78 setHidesForSinglePage_];

  v79 = *&v1[v76];
  if (!v79)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  [v79 setAllowsContinuousInteraction_];
  v80 = *&v1[v76];
  if (!v80)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  [v80 _setPreferredNumberOfVisibleIndicators_];
  v81 = *&v1[v76];
  if (!v81)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  [v81 addTarget:v1 action:sel_pageControlDidChangePage_ forControlEvents:4096];
  v82 = *&v1[v76];
  if (!v82)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  [v82 setDirection_];
  v83 = [v1 collectionView];
  if (!v83)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v84 = v83;
  v85 = [v83 numberOfSections];

  v86 = *&v1[v76];
  if (!v86)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if ([v86 numberOfPages] != v85)
  {
    v87 = *&v1[v76];
    if (!v87)
    {
LABEL_83:
      __break(1u);
      return;
    }

    [v87 setNumberOfPages_];
    sub_21B65028C(0, 1);
  }

  v88 = [v1 view];
  if (!v88)
  {
    goto LABEL_81;
  }

  if (!*&v1[v76])
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v91 = v88;
  [v88 addSubview_];
}

void sub_21B64BABC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___PBFAmbientEditingCollectionViewController_editingSceneViewController);
    if (v2)
    {
      v3 = swift_allocObject();
      *(v3 + 16) = v2;
      *(v3 + 24) = 1;
      v4 = v2;
      sub_21B64F06C(sub_21B657C04, v3);
    }

    else
    {
      AmbientEditingCollectionViewController.dismiss()();
    }
  }
}