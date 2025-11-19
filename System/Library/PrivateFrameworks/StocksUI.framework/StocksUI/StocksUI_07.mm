uint64_t sub_22051212C(void *a1)
{
  sub_220489FD0(0, &qword_281297380, MEMORY[0x277D6E8E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = (v17 - v4);
  v6 = sub_22088D3AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_22088D3DC();
  result = sub_22088848C();
  if (result)
  {
    v17[4] = v11;
    v17[5] = MEMORY[0x277D6E680];
    v17[1] = result;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_220899360;
    *v10 = sub_220531408;
    v10[1] = v13;
    (*(v7 + 104))(v10, *MEMORY[0x277D6E668], v6);
    *v5 = 10;
    v14 = *MEMORY[0x277D6E8D8];
    v15 = sub_22088D8AC();
    v16 = *(v15 - 8);
    (*(v16 + 104))(v5, v14, v15);
    (*(v16 + 56))(v5, 0, 1, v15);
    sub_22088D3BC();
    swift_allocObject();
    return sub_22088D39C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2205123CC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220489FD0(0, &qword_2812972E0, type metadata accessor for ForYouFeedModel, MEMORY[0x277D6E9F0]);
  result = sub_2208884CC();
  if (result)
  {
    sub_220489FD0(0, &qword_281297328, type metadata accessor for ForYouFeedModel, MEMORY[0x277D6E9B8]);
    swift_allocObject();
    return sub_22088DA6C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2205124A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2205124F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22051255C()
{
  result = qword_281297330;
  if (!qword_281297330)
  {
    sub_220489FD0(255, &qword_281297328, type metadata accessor for ForYouFeedModel, MEMORY[0x277D6E9B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281297330);
  }

  return result;
}

id sub_2205125E4(char a1)
{
  v2 = v1;
  if (a1 == 2)
  {
    v4 = v1[5];
    v3 = v1[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    v5 = (*(*(v3 + 16) + 40))(v4);
  }

  else
  {
    v7 = v2[5];
    v8 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v7);
    if (a1)
    {
      v5 = (*(v8 + 32))(v7, v8);
    }

    else
    {
      v5 = (*(v8 + 24))(v7, v8);
    }
  }

  v9 = v5;
  v10 = v2[10];
  v11 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v10);
  v12 = *(v11 + 16);
  v13 = v9;
  v14 = v12(v10, v11);
  v15 = [v13 stocksAccessibilityAdjustedForIncreaseContrastAgainstWithBackgroundColor_];

  return v15;
}

uint64_t sub_220512728(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22088C9AC();
  result = sub_22088848C();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  sub_22088839C();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22044D56C(0, &qword_28127E820);
  result = sub_22088848C();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  sub_22044D56C(0, &unk_28127E890);
  sub_22089147C();
  sub_22088838C();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220487E40(0, &qword_28128F198, type metadata accessor for ForYouFeedBlueprintModifierFactory, sub_220487EE4, type metadata accessor for ForYouFeedInteractor);
  result = sub_2208884CC();
  if (result)
  {
    sub_220509088(qword_28128F1B8);
    sub_220446A58(0, &unk_281296A60);
    sub_22088837C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2205129B0()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 16) + 96))(v2);
}

id sub_2205129FC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  [v5 relativeLuminance];
  v7 = v6;
  [v4 relativeLuminance];
  v9 = [v5 stocksAccessibilityAdjustedForIncreaseContrastAdjustingDarker_];

  return v9;
}

double sub_220512A98(void *a1)
{
  v1 = a1;
  v2 = sub_220512AD4();

  return v2;
}

double sub_220512AD4()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = 0.0;
  v8[0] = 0.0;
  v5 = 0;
  v6 = 0.0;
  [v0 getRed:v8 green:&v7 blue:&v6 alpha:&v5];
  if (v8[0] >= 0.03928)
  {
    v1 = pow((v8[0] + 0.055) / 1.055, 2.4);
  }

  else
  {
    v1 = v8[0] / 12.92;
  }

  if (v7 >= 0.03928)
  {
    v2 = pow((v7 + 0.055) / 1.055, 2.4);
  }

  else
  {
    v2 = v7 / 12.92;
  }

  if (v6 >= 0.03928)
  {
    v3 = pow((v6 + 0.055) / 1.055, 2.4);
  }

  else
  {
    v3 = v6 / 12.92;
  }

  return v1 * 0.2126 + v2 * 0.7152 + v3 * 0.0722;
}

Class sub_220512C54(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  v5.super.isa = UIColor.stocksAccessibilityAdjustedForIncreaseContrast(darker:)(a3).super.isa;

  return v5.super.isa;
}

UIColor __swiftcall UIColor.stocksAccessibilityAdjustedForIncreaseContrast(darker:)(Swift::Bool darker)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = [v2 currentTraitCollection];
  v4 = [v3 accessibilityContrast];

  if (v4 == 1)
  {
    sub_22048BC00();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_22089B120;
    *(v5 + 32) = [v2 traitCollectionWithAccessibilityContrast_];
    if (darker)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    *(v5 + 40) = [v2 traitCollectionWithUserInterfaceStyle_];
    sub_220496148();
    v7 = sub_2208916DC();

    v8 = [v2 traitCollectionWithTraitsFromCollections_];

    v9 = [v13 resolvedColorWithTraitCollection_];
    v20 = 0.0;
    v21[0] = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    [v13 getHue:v21 saturation:&v20 brightness:&v19 alpha:&v18];
    [v9 getHue:&v17 saturation:&v16 brightness:&v15 alpha:&v14];
    if (v19 == v15 && v20 == v16 && v21[0] == v17 && v18 == v14)
    {
      [v13 defaultBrightnessAdjustment];
      if (darker)
      {
        v10 = -v10;
      }

      v11 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:v21[0] saturation:v20 brightness:(v10 + 1.0) * v19 alpha:v18];

      return v11;
    }

    return v9;
  }

  else
  {

    return v13;
  }
}

uint64_t sub_220512F60(uint64_t a1, uint64_t a2)
{
  sub_2205124F8(0, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22051300C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208854FC();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220513078(uint64_t a1)
{
  sub_2205124F8(0, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220513104(uint64_t a1, uint64_t a2)
{
  sub_220510C84();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_3Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_6Tm()
{
  v1 = type metadata accessor for StockViewModel();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  v4 = sub_22088685C();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = v1[5];
  v6 = sub_22088676C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = v3 + v1[6];
  v9 = type metadata accessor for StockSparklineViewModel(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = sub_220890D8C();
    (*(*(v10 - 8) + 8))(v8, v10);
    v11 = *(v9 + 32);
    v12 = sub_22088665C();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  v13 = v3 + v1[7];

  v14 = type metadata accessor for PriceViewModel();
  v15 = v14[9];
  v16 = sub_2208857EC();
  (*(*(v16 - 8) + 8))(v13 + v15, v16);
  v17 = v14[10];
  v18 = sub_22088699C();
  (*(*(v18 - 8) + 8))(v13 + v17, v18);
  v19 = v14[11];
  v20 = sub_2208852DC();
  (*(*(v20 - 8) + 8))(v13 + v19, v20);
  v21 = v1[8];
  v22 = sub_220885D4C();
  (*(*(v22 - 8) + 8))(v3 + v21, v22);

  return swift_deallocObject();
}

uint64_t objectdestroy_6Tm_0()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_6Tm_1()
{
  v1 = sub_22088516C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_220513634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PriceViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_220885D4C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_220454E0C(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

void sub_220513780(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [v8 addChildViewController_];
    v9 = [v8 view];
    if (v9)
    {
      v10 = v9;
      v11 = [v6 view];
      if (v11)
      {
        v12 = v11;
        [v10 addSubview_];

        [v6 didMoveToParentViewController_];
        v13 = [v6 view];
        if (v13)
        {
          v14 = v13;
          v15 = [v8 view];

          if (v15)
          {
            [v15 bounds];
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v23 = v22;

            [v14 setFrame_];
            v24 = [v8 view];

            if (v24)
            {
              [v24 setNeedsLayout];

              type metadata accessor for ForYouFeedContainerViewController();
              swift_getWitnessTable();
              sub_22088D93C();
              swift_getWitnessTable();
              sub_22088CC4C();
              v25 = [v6 view];
              if (v25)
              {
                v26 = v25;
                [v25 setAlpha_];

                v27 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v28 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v29 = swift_allocObject();
                v29[2] = a3;
                v29[3] = a4;
                v29[4] = v27;
                v29[5] = v28;
                v30 = *(a4 + 8);

                v30(sub_2205DF1EC, v29, a3, a4);

                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_220513ACC()
{

  return swift_deallocObject();
}

uint64_t sub_220513B10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220513B70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_220513C18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089288C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_220513C6C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v44[0] = type metadata accessor for AttributionSource();
  MEMORY[0x28223BE20](v44[0], v3);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220885ACC();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x28223BE20](v6, v8).n128_u64[0];
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46.receiver = v1;
  v46.super_class = ObjectType;
  v44[1] = ObjectType;
  objc_msgSendSuper2(&v46, sel_viewDidLoad, v9);
  v12 = *&v1[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_blueprintViewController];
  sub_22088C71C();
  v13 = sub_22088BFCC();

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v16 = sub_22089132C();

  [v13 setAccessibilityLabel_];

  [v1 addChildViewController_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = result;
  result = [v12 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v19 = result;
  [v18 addSubview_];

  [v12 didMoveToParentViewController_];
  result = [v12 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = result;
  [result bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [v20 setFrame_];
  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v30 = result;
  v31 = sub_22058B190();
  [v30 addSubview_];

  v32 = [v1 traitCollection];
  sub_220518D38(v32);

  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_appConfigurationManager], *&v1[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_appConfigurationManager + 24]);
  sub_22088641C();
  LOBYTE(v31) = sub_22088591C();
  (*(v7 + 8))(v11, v6);
  if (v31)
  {
    v33 = *&v1[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_quoteAttributionProvider + 24];
    v34 = *&v1[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_quoteAttributionProvider + 32];
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_quoteAttributionProvider], v33);
    AttributionProviderType.source.getter(v33, v34);
    v35 = *&v5[*(v44[0] + 24)];
    v36 = v35;
    sub_2204C0A60(v5, type metadata accessor for AttributionSource);
    if (v35)
    {
      sub_22044D56C(0, &qword_28127E450);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = sub_2208920BC();
      v38 = &v1[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_cardToolbarViewModel];
      v40 = *&v1[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_cardToolbarViewModel];
      v39 = *&v1[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_cardToolbarViewModel + 8];
      *v38 = v35;
      *(v38 + 1) = v37;
      *(v38 + 2) = 0;
      *(v38 + 3) = 0;
      sub_2205CD028(v40, v39);
    }
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22044E3AC(&qword_28128A3C8, v41, type metadata accessor for ForYouFeedViewController);
  sub_22044E3AC(&unk_28128A3B8, v42, type metadata accessor for ForYouFeedViewController);

  sub_22088F85C();

  v43 = [v1 traitCollection];
  sub_22051DD68(v43);

  sub_22088C73C();
  sub_22088B70C();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22088868C();

  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t sub_2205142F4()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_22051432C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22051438C()
{
  swift_getObjectType();
  sub_22088F8DC();
  sub_2205144F4();
  return sub_220891C3C();
}

void sub_2205143F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_220514460()
{
  if (!qword_281297990)
  {
    type metadata accessor for ForYouTitleView();
    sub_22044E244(&qword_281293230, type metadata accessor for ForYouTitleView);
    v0 = sub_22088C3BC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297990);
    }
  }
}

void sub_2205144F4()
{
  if (!qword_281297B60)
  {
    type metadata accessor for PlacardView();
    sub_220514614(&qword_281294CB0, type metadata accessor for PlacardView);
    v0 = sub_22088B9FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297B60);
    }
  }
}

uint64_t sub_2205145D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StockFeedLayoutModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220514614(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_22051465C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8StocksUI15ForYouTitleView_headingLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8StocksUI15ForYouTitleView_subheadingLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12 = OBJC_IVAR____TtC8StocksUI15ForYouTitleView_separatorLayer;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D6ED40]) init];
  v13 = OBJC_IVAR____TtC8StocksUI15ForYouTitleView_premiumSealView;
  *&v4[v13] = [objc_allocWithZone(sub_22088A26C()) initWithFrame_];
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = *&v14[OBJC_IVAR____TtC8StocksUI15ForYouTitleView_headingLabel];
  v16 = v14;
  [v16 addSubview_];
  [v16 addSubview_];
  [v16 addSubview_];
  v17 = [v16 layer];
  [v17 addSublayer_];

  return v16;
}

void sub_22051481C(uint64_t a1, double *a2, char *a3)
{
  v4 = v3;
  [a3 setFrame_];
  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  sub_220514B70(a3);
  v8 = *&a3[OBJC_IVAR____TtC8StocksUI15ForYouTitleView_headingLabel];
  [v8 setFrame_];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  v9 = sub_22051511C();
  [v8 setAttributedText_];

  v10 = [v8 accessibilityTraits];
  v11 = v10;
  v12 = *MEMORY[0x277D76558];
  if (v10)
  {
    if ((v12 & ~v10) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v12)
  {
    v11 = 0;
    goto LABEL_7;
  }

  v11 = v12 | v10;
LABEL_7:
  [v8 setAccessibilityTraits_];
  v13 = *&a3[OBJC_IVAR____TtC8StocksUI15ForYouTitleView_subheadingLabel];
  [v13 setFrame_];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  v14 = sub_2205154D4(*(a1 + 16), *(a1 + 24), *(a1 + 32));
  [v13 setAttributedText_];

  v15 = *&a3[OBJC_IVAR____TtC8StocksUI15ForYouTitleView_premiumSealView];
  v16 = type metadata accessor for ForYouTitleViewLayoutAttributes();
  [v15 setFrame_];
  if ((sub_220515954() & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_220886BCC();
  sub_220886BAC();
  if (qword_281299530 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  if (v23 == 1)
  {
    [v15 setHidden_];
    sub_22088A22C();
    *(v4[7] + 16) = 0;
  }

  else
  {
LABEL_12:
    [v15 setHidden_];
  }

  v17 = *&a3[OBJC_IVAR____TtC8StocksUI15ForYouTitleView_separatorLayer];
  [v17 setFrame_];
  v18 = __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  v19 = *(*v18 + 40);
  v20 = *(*v18 + 48);
  __swift_project_boxed_opaque_existential_1((*v18 + 16), v19);
  v21 = (*(*(v20 + 16) + 168))(v19);
  v22 = [v21 CGColor];

  [v17 setBackgroundColor_];
}

uint64_t sub_220514B70(char *a1)
{
  v2 = v1;
  v4 = v1[10];
  v5 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v4);
  v6 = (*(v5 + 16))(v4, v5);
  [a1 setBackgroundColor_];

  v7 = *&a1[OBJC_IVAR____TtC8StocksUI15ForYouTitleView_headingLabel];
  [v7 setNumberOfLines_];
  [v7 setLineBreakMode_];
  v8 = *&a1[OBJC_IVAR____TtC8StocksUI15ForYouTitleView_subheadingLabel];
  [v8 setNumberOfLines_];
  [v8 setLineBreakMode_];
  v10 = v2[5];
  v9 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v10);
  (*(*(v9 + 16) + 536))(v10);
  sub_22088A24C();
  v12 = v2[5];
  v11 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v12);
  (*(*(v11 + 16) + 544))(v12);
  return sub_22088A25C();
}

uint64_t sub_220514CD8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PlacardView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220514D40()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 536))(v2, v3);
}

uint64_t sub_220514DA0()
{
  v1 = sub_22088D61C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  sub_22088FECC();
  sub_220514460();
  v6 = *MEMORY[0x277D6E758];
  v7 = *(v2 + 104);
  v7(v5, v6, v1);
  sub_220891C2C();
  v8 = *(v2 + 8);
  v8(v5, v1);
  sub_220515440();
  v7(v5, v6, v1);
  sub_220891C2C();
  v8(v5, v1);
  sub_22050D104();
  v7(v5, v6, v1);
  sub_220891C2C();
  v8(v5, v1);
  sub_220515E30();
  v9 = *MEMORY[0x277D6E750];
  v7(v5, v9, v1);
  sub_220891C2C();
  v8(v5, v1);
  sub_22051611C();
  v7(v5, v9, v1);
  sub_220891C2C();
  return (v8)(v5, v1);
}

uint64_t sub_220515050()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 544))(v2, v3);
}

uint64_t sub_2205150DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ForYouTitleView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_22051511C()
{
  v1 = v0;
  sub_2204A5DF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v3 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v3;
  v7 = v5(v4);
  v8 = sub_22044D56C(0, &qword_28127E570);
  v9 = MEMORY[0x277D740C0];
  *(inited + 40) = v7;
  v10 = *v9;
  *(inited + 64) = v8;
  *(inited + 72) = v10;
  v11 = v1[5];
  v12 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v11);
  v13 = *(v12 + 16);
  v14 = *(v13 + 256);
  v15 = v10;
  v16 = v14(v11, v13);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v16;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v18 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v19 = sub_22089125C();

  v20 = [v17 initWithString:v18 attributes:v19];

  return v20;
}

uint64_t sub_220515324(void *a1)
{
  if (a1 && [a1 horizontalSizeClass] >= 3)
  {
    result = sub_22089267C();
    __break(1u);
  }

  else
  {
    sub_22044D56C(0, &qword_28127E570);
    v1 = sub_220891F2C();
    v2 = sub_220891F4C();

    return v2;
  }

  return result;
}

void sub_220515440()
{
  if (!qword_281297980)
  {
    type metadata accessor for SectionHeaderView();
    sub_22044E244(&qword_281291728, type metadata accessor for SectionHeaderView);
    v0 = sub_22088C3BC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297980);
    }
  }
}

id sub_2205154D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v7 = sub_22089132C();
  v8 = [v6 initWithString_];

  if (a3)
  {
    v9 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v10 = a3;
    v11 = sub_22089132C();
    v12 = [v9 initWithString_];

    [v8 appendAttributedString_];
    type metadata accessor for IconTextAttachment();
    v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v13 setImage_];
    v14 = &v13[OBJC_IVAR____TtC8StocksUI18IconTextAttachment_baselineAdjustment];
    *v14 = 0x3FF0000000000000;
    v14[8] = 0;
    v15 = &v13[OBJC_IVAR____TtC8StocksUI18IconTextAttachment_imageHeightOverride];
    *v15 = 0x402A000000000000;
    v15[8] = 0;
    v16 = [objc_opt_self() attributedStringWithAttachment_];
    [v8 appendAttributedString_];
  }

  sub_2204A5DF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v18 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v19 = v4[5];
  v20 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v19);
  v21 = *(v20 + 16);
  v22 = *(v21 + 264);
  v23 = v18;
  v24 = v22(v19, v21);
  v25 = sub_22044D56C(0, &qword_28127E530);
  *(inited + 40) = v24;
  v26 = *MEMORY[0x277D740A8];
  *(inited + 64) = v25;
  *(inited + 72) = v26;
  v27 = v4[12];
  v28 = v4[15];
  v29 = v26;
  v30 = v28(v27);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E570);
  *(inited + 80) = v30;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v31 = sub_22089125C();

  v32 = v8;
  [v32 addAttributes:v31 range:{0, objc_msgSend(v32, sel_length)}];

  return v32;
}

uint64_t sub_220515804(void *a1)
{
  if (a1 && [a1 horizontalSizeClass] >= 3)
  {
    result = sub_22089267C();
    __break(1u);
  }

  else
  {
    sub_22044D56C(0, &qword_28127E570);
    v1 = sub_220891F2C();
    v2 = sub_220891F4C();

    return v2;
  }

  return result;
}

uint64_t sub_220515954()
{
  v1 = [*(v0 + 40) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    sub_22056D130(&v12);
    goto LABEL_9;
  }

  sub_2204DD8BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v4 = 0;
    goto LABEL_10;
  }

  v2 = v9;
  v3 = [v9 integerValue];
  if (v3 == -1)
  {

    goto LABEL_21;
  }

  v4 = v3;
LABEL_10:
  if (objc_getAssociatedObject(v1, ~v4))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    sub_22056D130(&v12);
LABEL_18:

    if ((v4 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
    v7 = sub_22088613C();
    return v7 & 1;
  }

  sub_2204DD8BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v5 = v9;
  v6 = [v5 integerValue];

  if ((v6 ^ v4))
  {
    goto LABEL_21;
  }

LABEL_19:
  v7 = 0;
  return v7 & 1;
}

uint64_t sub_220515B34()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 168))(v2, v3);
}

uint64_t sub_220515B94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SectionHeaderView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220515C54()
{
  v1 = v0;
  v2 = sub_22088FD8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220505FF8(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220706928(v10);
    v11 = 0;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v11 = sub_22088FD1C();
    (*(v3 + 8))(v6, v2);
  }

  return v11 & 1;
}

uint64_t sub_220515DEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StockTitleView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_220515E30()
{
  if (!qword_281297970)
  {
    type metadata accessor for StockSectionFooterView();
    sub_22044E244(&qword_28128C1E8, type metadata accessor for StockSectionFooterView);
    v0 = sub_22088C3BC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297970);
    }
  }
}

void sub_220515F28()
{
  v0 = sub_22088C32C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_22088C76C();
    swift_getObjectType();
    sub_22088D92C();
    swift_unknownObjectRelease();
    sub_22088C71C();
    v7 = sub_22088BFCC();

    [v7 adjustedContentInset];
    v9 = v8;

    sub_22058B43C(v4, v9);
    (*(v1 + 8))(v4, v0);
  }
}

uint64_t sub_2205160DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StockSectionFooterView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22051611C()
{
  if (!qword_281297968)
  {
    sub_220890C0C();
    sub_22044E244(&unk_281296740, MEMORY[0x277D34710]);
    v0 = sub_22088C3BC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297968);
    }
  }
}

uint64_t sub_2205161B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_22046DA2C(v2 + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(v5 + 8);
  v7 = *(v6 + 8);
  v10 = v4;
  v11 = v5;
  __swift_allocate_boxed_opaque_existential_1(&v9);
  v7(a2, v4, v6);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v2 + 32);
  sub_220457328(&v9, v2 + 32);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v12);
  swift_getObjectType();
  return sub_22088D31C();
}

uint64_t sub_2205162C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

uint64_t sub_22051642C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_22046DA2C(v2 + 136, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(v5 + 8);
  v7 = *(v6 + 8);
  v10 = v4;
  v11 = v5;
  __swift_allocate_boxed_opaque_existential_1(&v9);
  v7(a2, v4, v6);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v2 + 136);
  sub_220457328(&v9, v2 + 136);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v12);
  swift_getObjectType();
  sub_22088D31C();
  swift_getObjectType();
  sub_22088D31C();
  swift_getObjectType();
  sub_22088D31C();
  swift_getObjectType();
  return sub_22088D31C();
}

uint64_t sub_2205165A0(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[5];
  v40 = v1[6];
  v41 = v4;
  v42 = a1;
  v6 = __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  v39 = *(v5 - 8);
  v7 = *(v39 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  (*(*(v40 + 8) + 8))(a1, v5, v9);
  v10 = v1[10];
  v36 = v1[11];
  v11 = v36;
  v12 = __swift_project_boxed_opaque_existential_1(v1 + 7, v10);
  v13 = *(v10 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v17 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(v11 + 8) + 8);
  v19 = v42;
  v20 = v18(v42, v10, v16);
  v21 = v1[13];
  v22 = v1[16];
  v43[0] = v19;
  v43[1] = v21;
  v35 = *(v2 + 7);
  v44 = v35;
  v45 = v22;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v25 = v39;
  v26 = &v35 - v38;
  v27 = v37;
  v28 = (*(v39 + 16))(&v35 - v38, v37, v5, v24);
  v30 = MEMORY[0x28223BE20](v28, v29);
  (*(v13 + 16))(v17, v17, v10, v30);
  v31 = sub_2204EA4B4(v26, v17, v43, v41, v5, v10, v40, v36);
  v32 = *(v13 + 8);

  v33 = v42;
  v32(v17, v10);
  (*(v25 + 8))(v27, v5);
  return v31;
}

void sub_220516884(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for ForYouFeedSectionDescriptor();
    v8[1] = type metadata accessor for ForYouFeedModel();
    v8[2] = sub_220454908(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
    v8[3] = sub_220454908(&unk_281293320, type metadata accessor for ForYouFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_220516978@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2205165A0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2205169AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22058D760(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_220516A1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2204D4D34(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_220516A78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2204D4D88(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_220516AE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  v7 = *(v6 + 8);
  v8 = *(v7 + 8);
  a2[3] = v5;
  a2[4] = v6;
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v8(a1, v5, v7);
}

uint64_t sub_220516B6C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  v1 = *(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_220516BD8(uint64_t a1)
{
  v28 = a1;
  v3 = *v1;
  v4 = v1[5];
  v32 = v1[6];
  v33 = v3;
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v31 = *(v4 - 8);
  v6 = *(v31 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v30 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v28 - v30;
  (*(*(v32 + 8) + 8))(a1, v4, v8);
  v10 = v1[10];
  v29 = v1[11];
  v11 = v29;
  v12 = __swift_project_boxed_opaque_existential_1(v1 + 7, v10);
  v13 = *(v10 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v17 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = (*(*(v11 + 8) + 8))(v28, v10, v16);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v21 = v31;
  v22 = &v28 - v30;
  v23 = (*(v31 + 16))(&v28 - v30, v9, v4, v20);
  v25 = MEMORY[0x28223BE20](v23, v24);
  (*(v13 + 16))(&v28 - v17, &v28 - v17, v10, v25);
  v26 = sub_2204E6820(v22, &v28 - v17, v33, v4, v10, v32, v29);
  (*(v13 + 8))(&v28 - v17, v10);
  (*(v21 + 8))(v9, v4);
  return v26;
}

uint64_t sub_220516E7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_220516BD8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_220516EB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_22046DA2C(v2 + 16, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(v5 + 8);
  v7 = *(v6 + 8);
  v10 = v4;
  v11 = v5;
  __swift_allocate_boxed_opaque_existential_1(&v9);
  v7(a2, v4, v6);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v2 + 16);
  sub_220457328(&v9, v2 + 16);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v12);
  swift_getObjectType();
  return sub_22088D31C();
}

uint64_t sub_220516FC8()
{
  v95 = sub_22088685C();
  v97 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v1);
  v96 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v4);
  v94 = &v90 - v5;
  MEMORY[0x28223BE20](v6, v7);
  v92 = &v90 - v8;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v90 - v11;
  v13 = type metadata accessor for StockForYouFeedGroup();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v90 - v19;
  MEMORY[0x28223BE20](v21, v22);
  v91 = &v90 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v90 - v26;
  v98 = type metadata accessor for ForYouFeedGroup();
  MEMORY[0x28223BE20](v98, v28);
  v30 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v90 - v33;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v90 - v37;
  MEMORY[0x28223BE20](v39, v40);
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v90 - v43;
  MEMORY[0x28223BE20](v45, v46);
  v93 = v0;
  v50 = *(v0 + 56);
  v51 = v50 >> 61;
  if ((v50 >> 61) <= 1)
  {
    if (v51)
    {
      v71 = *((v50 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v72 = *(v71 + 16);
      if (v72)
      {
        v73 = v71 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
        v74 = *(v47 + 72);
        v75 = (v97 + 16);
        v96 = (v97 + 32);
        v58 = MEMORY[0x277D84F90];
        v77 = v94;
        v76 = v95;
        do
        {
          sub_220518AE4(v73, v34, type metadata accessor for ForYouFeedGroup);
          if (swift_getEnumCaseMultiPayload())
          {
            sub_22051DD08(v34, type metadata accessor for ForYouFeedGroup);
          }

          else
          {
            sub_220519144(v34, v20, type metadata accessor for StockForYouFeedGroup);
            (*v75)(v77, v20, v76);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v58 = sub_22048E1D8(0, v58[2] + 1, 1, v58);
            }

            v79 = v58[2];
            v78 = v58[3];
            if (v79 >= v78 >> 1)
            {
              v58 = sub_22048E1D8(v78 > 1, v79 + 1, 1, v58);
            }

            sub_22051DD08(v20, type metadata accessor for StockForYouFeedGroup);
            v58[2] = v79 + 1;
            v80 = v58 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v79;
            v77 = v94;
            (*(v97 + 32))(v80, v94, v76);
          }

          v73 += v74;
          --v72;
        }

        while (v72);
      }

      else
      {
        v58 = MEMORY[0x277D84F90];
      }

LABEL_33:
      if (v58[2])
      {
        goto LABEL_34;
      }

LABEL_21:

      v99 = sub_2205CF1B0(MEMORY[0x277D84F90]);
      sub_22051F584(0, &qword_281298620, sub_220517CD4, MEMORY[0x277D6CF30]);
      swift_allocObject();
      return sub_220888ECC();
    }

    v61 = &v90 - v48;
    sub_2206B02CC();
    v62 = swift_projectBox();
    sub_220518AE4(v62, v61, type metadata accessor for ForYouFeedGroup);
    v63 = v61;
    sub_220518AE4(v61, v44, type metadata accessor for ForYouFeedGroup);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22051DD08(v61, type metadata accessor for ForYouFeedGroup);
      v64 = v44;
LABEL_19:
      sub_22051DD08(v64, type metadata accessor for ForYouFeedGroup);
      goto LABEL_20;
    }

    sub_220519144(v44, v27, type metadata accessor for StockForYouFeedGroup);
    (*(v97 + 16))(v12, v27, v95);
    v85 = sub_22048E1D8(0, 1, 1, MEMORY[0x277D84F90]);
    v89 = v85[2];
    v88 = v85[3];
    if (v89 >= v88 >> 1)
    {
      v85 = sub_22048E1D8(v88 > 1, v89 + 1, 1, v85);
    }

    sub_22051DD08(v27, type metadata accessor for StockForYouFeedGroup);
    sub_22051DD08(v63, type metadata accessor for ForYouFeedGroup);
    v85[2] = v89 + 1;
    (*(v97 + 32))(v85 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v89, v12, v95);
LABEL_41:
    if (v85[2])
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  if (v51 == 2)
  {
    v65 = v49;
    sub_2206B02CC();
    v66 = swift_projectBox();
    sub_220518AE4(v66, v65, type metadata accessor for ForYouFeedGroup);
    v67 = v65;
    sub_220518AE4(v65, v38, type metadata accessor for ForYouFeedGroup);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v69 = v95;
    if (EnumCaseMultiPayload)
    {
      sub_22051DD08(v65, type metadata accessor for ForYouFeedGroup);
      v64 = v38;
      goto LABEL_19;
    }

    v83 = v91;
    sub_220519144(v38, v91, type metadata accessor for StockForYouFeedGroup);
    v84 = v92;
    (*(v97 + 16))(v92, v83, v69);
    v85 = sub_22048E1D8(0, 1, 1, MEMORY[0x277D84F90]);
    v87 = v85[2];
    v86 = v85[3];
    if (v87 >= v86 >> 1)
    {
      v85 = sub_22048E1D8(v86 > 1, v87 + 1, 1, v85);
    }

    sub_22051DD08(v83, type metadata accessor for StockForYouFeedGroup);
    sub_22051DD08(v67, type metadata accessor for ForYouFeedGroup);
    v85[2] = v87 + 1;
    (*(v97 + 32))(v85 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v87, v84, v95);
    goto LABEL_41;
  }

  v52 = v95;
  if (v51 == 3)
  {
    v53 = *((v50 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v54 = *(v53 + 16);
    if (v54)
    {
      v55 = v53 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
      v56 = *(v47 + 72);
      v57 = (v97 + 16);
      v94 = (v97 + 32);
      v58 = MEMORY[0x277D84F90];
      do
      {
        sub_220518AE4(v55, v30, type metadata accessor for ForYouFeedGroup);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_22051DD08(v30, type metadata accessor for ForYouFeedGroup);
        }

        else
        {
          sub_220519144(v30, v16, type metadata accessor for StockForYouFeedGroup);
          (*v57)(v96, v16, v52);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = sub_22048E1D8(0, v58[2] + 1, 1, v58);
          }

          v60 = v58[2];
          v59 = v58[3];
          if (v60 >= v59 >> 1)
          {
            v58 = sub_22048E1D8(v59 > 1, v60 + 1, 1, v58);
          }

          sub_22051DD08(v16, type metadata accessor for StockForYouFeedGroup);
          v58[2] = v60 + 1;
          v52 = v95;
          (*(v97 + 32))(v58 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v60, v96, v95);
        }

        v55 += v56;
        --v54;
      }

      while (v54);
      goto LABEL_33;
    }
  }

LABEL_20:
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_21;
  }

LABEL_34:
  __swift_project_boxed_opaque_existential_1((v93 + 64), *(v93 + 88));
  sub_22088632C();

  v81 = sub_220888D9C();
  sub_220517CD4();
  v82 = sub_220888E4C();

  return v82;
}

uint64_t sub_220517A30(uint64_t a1)
{
  v28 = a1;
  v3 = *v1;
  v4 = v1[5];
  v32 = v1[6];
  v33 = v3;
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v31 = *(v4 - 8);
  v6 = *(v31 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v30 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v28 - v30;
  (*(*(v32 + 8) + 8))(a1, v4, v8);
  v10 = v1[10];
  v29 = v1[11];
  v11 = v29;
  v12 = __swift_project_boxed_opaque_existential_1(v1 + 7, v10);
  v13 = *(v10 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v17 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = (*(*(v11 + 8) + 8))(v28, v10, v16);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v21 = v31;
  v22 = &v28 - v30;
  v23 = (*(v31 + 16))(&v28 - v30, v9, v4, v20);
  v25 = MEMORY[0x28223BE20](v23, v24);
  (*(v13 + 16))(&v28 - v17, &v28 - v17, v10, v25);
  v26 = sub_2204E6820(v22, &v28 - v17, v33, v4, v10, v32, v29);
  (*(v13 + 8))(&v28 - v17, v10);
  (*(v21 + 8))(v9, v4);
  return v26;
}

void sub_220517CD4()
{
  if (!qword_28127EC70)
  {
    sub_22088676C();
    v0 = sub_22089128C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127EC70);
    }
  }
}

uint64_t sub_220517D3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22088581C();
  *a1 = result;
  return result;
}

uint64_t sub_220517D78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_220517A30(a1);
  *a2 = result;
  return result;
}

uint64_t sub_220517DA4(uint64_t a1, void (*a2)(uint64_t *), void (*a3)(uint64_t *))
{
  v70 = a2;
  v71 = a3;
  sub_22051D4B8(0, &qword_281297840, MEMORY[0x277D6DF88]);
  v69 = v5;
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v56 - v8);
  v10 = type metadata accessor for ForYouFeedExpandBlueprintModifier();
  v62 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v63 = v12;
  v68 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F1480();
  v14 = v13;
  v64 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v60 = v16;
  v61 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052C100(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FA2D0();
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21, v25);
  v67 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v56 - v28;
  v65 = v14;
  v66 = v3;
  v30 = a1;
  sub_22088E76C();
  v72 = v23;
  v73 = v22;
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    sub_22051DD08(v20, sub_22052C100);
    sub_2206E2898();
    *v9 = swift_allocError();
    v31 = v69;
    (*(v6 + 104))(v9, *MEMORY[0x277D6DF68], v69);
    v70(v9);
    return (*(v6 + 8))(v9, v31);
  }

  else
  {
    v33 = v6;
    v34 = v69;
    v35 = v29;
    v59 = *(v72 + 32);
    v59(v29, v20, v73);
    v36 = sub_22052C400();
    if (v37)
    {
      sub_2206E2898();
      *v9 = swift_allocError();
      (*(v33 + 104))(v9, *MEMORY[0x277D6DF68], v34);
      v70(v9);
      (*(v33 + 8))(v9, v34);
      return (*(v72 + 8))(v29, v73);
    }

    else
    {
      MEMORY[0x28223BE20](v36, v37);
      v38 = v66;
      *(&v56 - 2) = v66;
      v57 = v39;
      sub_220517CD4();
      v58 = sub_220888FBC();
      v40 = v64;
      v41 = v65;
      v42 = v61;
      (*(v64 + 16))(v61, v30, v65);
      sub_220518AE4(v38, v68, type metadata accessor for ForYouFeedExpandBlueprintModifier);
      v43 = v72;
      (*(v72 + 16))(v67, v35, v73);
      v44 = (*(v40 + 80) + 16) & ~*(v40 + 80);
      v45 = (v60 + *(v62 + 80) + v44) & ~*(v62 + 80);
      v46 = (v63 + *(v43 + 80) + v45) & ~*(v43 + 80);
      v47 = (v24 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v69 = v35;
      v48 = swift_allocObject();
      (*(v40 + 32))(v48 + v44, v42, v41);
      sub_220519144(v68, v48 + v45, type metadata accessor for ForYouFeedExpandBlueprintModifier);
      v49 = v73;
      v59((v48 + v46), v67, v73);
      *(v48 + v47) = v57;
      v50 = (v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8));
      v52 = v70;
      v51 = v71;
      *v50 = v70;
      v50[1] = v51;

      v53 = sub_220888D9C();
      sub_220888E4C();

      v54 = swift_allocObject();
      *(v54 + 16) = v52;
      *(v54 + 24) = v51;

      v55 = sub_220888D9C();
      sub_220888E9C();

      return (*(v72 + 8))(v69, v49);
    }
  }
}

uint64_t sub_22051846C()
{
  sub_2204F1480();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = (type metadata accessor for ForYouFeedExpandBlueprintModifier() - 8);
  v7 = (v4 + v5 + *(*v6 + 80)) & ~*(*v6 + 80);
  v8 = *(*v6 + 64);
  sub_2204FA2D0();
  v15 = v9;
  v10 = *(v9 - 8);
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  (*(v3 + 8))(v0 + v4, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + v7);

  __swift_destroy_boxed_opaque_existential_1(v0 + v7 + 64);
  v12 = v6[9];
  v13 = sub_220885D4C();
  (*(*(v13 - 8) + 8))(v0 + v7 + v12, v13);
  (*(v10 + 8))(v0 + v11, v15);

  return swift_deallocObject();
}

uint64_t sub_2205186A0()
{

  return swift_deallocObject();
}

uint64_t sub_2205186D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

uint64_t sub_220518840(uint64_t a1)
{
  v28 = a1;
  v3 = *v1;
  v4 = v1[5];
  v32 = v1[6];
  v33 = v3;
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v31 = *(v4 - 8);
  v6 = *(v31 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v30 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v28 - v30;
  (*(*(v32 + 8) + 8))(a1, v4, v8);
  v10 = v1[10];
  v29 = v1[11];
  v11 = v29;
  v12 = __swift_project_boxed_opaque_existential_1(v1 + 7, v10);
  v13 = *(v10 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v17 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = (*(*(v11 + 8) + 8))(v28, v10, v16);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v21 = v31;
  v22 = &v28 - v30;
  v23 = (*(v31 + 16))(&v28 - v30, v9, v4, v20);
  v25 = MEMORY[0x28223BE20](v23, v24);
  (*(v13 + 16))(&v28 - v17, &v28 - v17, v10, v25);
  v26 = sub_2204E6820(v22, &v28 - v17, v33, v4, v10, v32, v29);
  (*(v13 + 8))(&v28 - v17, v10);
  (*(v21 + 8))(v9, v4);
  return v26;
}

uint64_t sub_220518AE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for ForYouFeedExpandBlueprintModifier()
{
  result = qword_281283A38;
  if (!qword_281283A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220518B98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_220518840(a1);
  *a2 = result;
  return result;
}

uint64_t sub_220518BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

void sub_220518D38(void *a1)
{
  v2 = v1;
  if ((sub_22088F0DC() & 1) != 0 && [a1 horizontalSizeClass] == 1)
  {
    v4 = sub_2208582A4();
    v34 = [v4 superview];

    if (v34)
    {

      return;
    }

    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      v8 = sub_2208582A4();
      [v7 addSubview_];

      v9 = sub_2208582A4();
      [v9 setTranslatesAutoresizingMaskIntoConstraints_];

      sub_22048BC00();
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_22089E710;
      v11 = sub_2208582A4();
      v12 = [v11 leadingAnchor];

      v13 = [v2 view];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 leadingAnchor];

        v16 = [v12 constraintEqualToAnchor_];
        *(v10 + 32) = v16;
        v17 = sub_2208582A4();
        v18 = [v17 trailingAnchor];

        v19 = [v2 view];
        if (v19)
        {
          v20 = v19;
          v21 = [v19 trailingAnchor];

          v22 = [v18 constraintEqualToAnchor_];
          *(v10 + 40) = v22;
          v23 = sub_2208582A4();
          v24 = [v23 bottomAnchor];

          v25 = [v2 view];
          if (v25)
          {
            v26 = v25;
            v27 = objc_opt_self();
            v28 = [v26 bottomAnchor];

            v29 = [v24 constraintEqualToAnchor_];
            *(v10 + 48) = v29;
            v30 = sub_2208582A4();
            v31 = [v30 heightAnchor];

            v32 = [v31 constraintEqualToConstant_];
            *(v10 + 56) = v32;
            sub_22044D56C(0, &qword_28127E790);
            v33 = sub_2208916DC();

            [v27 activateConstraints_];

            *(v2 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_isYahooToolbarVisible) = 1;
            return;
          }

          goto LABEL_18;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  v5 = sub_2208582A4();
  [v5 removeFromSuperview];

  *(v2 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_isYahooToolbarVisible) = 0;

  sub_2207F6A18();
}

uint64_t sub_220519144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2205191AC(uint64_t *a1)
{
  sub_2204F1480();
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(type metadata accessor for ForYouFeedExpandBlueprintModifier() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  sub_2204FA2D0();
  v10 = (v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  v11 = (*(*(v9 - 8) + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_220519324(a1, v1 + v4, (v1 + v7), v1 + v10, *(v1 + v11), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_220519324(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v465 = a7;
  v466 = a6;
  v441 = a5;
  v523 = a4;
  v531 = a3;
  v519 = a1;
  v464 = sub_22088B64C();
  v463 = *(v464 - 8);
  MEMORY[0x28223BE20](v464, v8);
  v461 = &v440 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22051D4B8(0, &qword_281297840, MEMORY[0x277D6DF88]);
  v460 = v10;
  v459 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v458 = &v440 - v12;
  sub_22051D97C();
  v521 = v13;
  v502 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v455 = &v440 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v520 = type metadata accessor for ForYouFeedModel();
  MEMORY[0x28223BE20](v520, v16);
  v501 = (&v440 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22051DA14();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v516 = &v440 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v496 = sub_2208852DC();
  v476 = *(v496 - 8);
  MEMORY[0x28223BE20](v496, v21);
  v495 = &v440 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v494 = sub_2208857EC();
  v475 = *(v494 - 8);
  MEMORY[0x28223BE20](v494, v23);
  v493 = &v440 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v492 = sub_22088699C();
  v474 = *(v492 - 8);
  MEMORY[0x28223BE20](v492, v25);
  v507 = &v440 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v491 = &v440 - v29;
  MEMORY[0x28223BE20](v30, v31);
  v506 = &v440 - v32;
  v514 = sub_220885D4C();
  v445 = *(v514 - 8);
  MEMORY[0x28223BE20](v514, v33);
  v489 = &v440 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v488 = &v440 - v37;
  sub_2204E99F0(0);
  MEMORY[0x28223BE20](v38 - 8, v39);
  v487 = &v440 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v42);
  v486 = &v440 - v43;
  sub_22045987C(0);
  MEMORY[0x28223BE20](v44 - 8, v45);
  v472 = &v440 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v48);
  v471 = (&v440 - v49);
  MEMORY[0x28223BE20](v50, v51);
  v485 = &v440 - v52;
  MEMORY[0x28223BE20](v53, v54);
  v470 = (&v440 - v55);
  MEMORY[0x28223BE20](v56, v57);
  v518 = &v440 - v58;
  MEMORY[0x28223BE20](v59, v60);
  v481 = &v440 - v61;
  MEMORY[0x28223BE20](v62, v63);
  v469 = &v440 - v64;
  MEMORY[0x28223BE20](v65, v66);
  v468 = (&v440 - v67);
  MEMORY[0x28223BE20](v68, v69);
  v484 = (&v440 - v70);
  MEMORY[0x28223BE20](v71, v72);
  v467 = (&v440 - v73);
  MEMORY[0x28223BE20](v74, v75);
  v522 = &v440 - v76;
  MEMORY[0x28223BE20](v77, v78);
  v503 = (&v440 - v79);
  v527 = sub_22088685C();
  v444 = *(v527 - 8);
  MEMORY[0x28223BE20](v527, v80);
  v513 = &v440 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82, v83);
  v512 = &v440 - v84;
  v530 = type metadata accessor for ForYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v530, v85);
  v505 = &v440 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v87, v88);
  v500 = &v440 - v89;
  MEMORY[0x28223BE20](v90, v91);
  v511 = &v440 - v92;
  v510 = sub_22088F23C();
  v478 = *(v510 - 8);
  MEMORY[0x28223BE20](v510, v93);
  v515 = &v440 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for CuratedForYouFeedGroup();
  MEMORY[0x28223BE20](v95 - 8, v96);
  v498 = &v440 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v490 = type metadata accessor for StockForYouFeedGroup();
  MEMORY[0x28223BE20](v490, v98);
  v483 = (&v440 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v100, v101);
  v482 = &v440 - v102;
  MEMORY[0x28223BE20](v103, v104);
  v451 = &v440 - v105;
  v529 = sub_22088FFFC();
  v480 = *(v529 - 8);
  MEMORY[0x28223BE20](v529, v106);
  v499 = &v440 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v108, v109);
  v509 = (&v440 - v110);
  MEMORY[0x28223BE20](v111, v112);
  v452 = &v440 - v113;
  MEMORY[0x28223BE20](v114, v115);
  v479 = &v440 - v116;
  sub_2204FA2D0();
  v118 = v117;
  v473 = *(v117 - 8);
  MEMORY[0x28223BE20](v117, v119);
  v504 = (&v440 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v121, v122);
  v124 = &v440 - v123;
  MEMORY[0x28223BE20](v125, v126);
  v453 = (&v440 - v127);
  MEMORY[0x28223BE20](v128, v129);
  v456 = &v440 - v130;
  MEMORY[0x28223BE20](v131, v132);
  v134 = &v440 - v133;
  v528 = type metadata accessor for ForYouFeedGroup();
  v454 = *(v528 - 8);
  MEMORY[0x28223BE20](v528, v135);
  v526 = &v440 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v137, v138);
  v508 = &v440 - v139;
  MEMORY[0x28223BE20](v140, v141);
  v143 = &v440 - v142;
  MEMORY[0x28223BE20](v144, v145);
  v147 = &v440 - v146;
  MEMORY[0x28223BE20](v148, v149);
  v151 = &v440 - v150;
  MEMORY[0x28223BE20](v152, v153);
  v477 = &v440 - v154;
  MEMORY[0x28223BE20](v155, v156);
  v158 = &v440 - v157;
  MEMORY[0x28223BE20](v159, v160);
  v162 = &v440 - v161;
  sub_2204F1480();
  v165 = MEMORY[0x28223BE20](v163, v164);
  v497 = *v519;
  v457 = v167;
  v168 = *(v167 + 16);
  v519 = (&v440 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0));
  v462 = a2;
  v525 = v169;
  v168(v165);
  v170 = v531[7];
  v171 = v170 >> 61;
  v172 = v118;
  v524 = v118;
  if ((v170 >> 61) <= 1)
  {
    v507 = v134;
    v526 = v162;
    v264 = v479;
    v518 = v147;
    v508 = v143;
    v513 = v124;
    if (!v171)
    {
      sub_2206B02CC();
      v266 = v265;
      v267 = swift_projectBox();
      v268 = *(v267 + *(v266 + 48));
      v269 = v526;
      sub_220518AE4(v267, v526, type metadata accessor for ForYouFeedGroup);
      v270 = v531;
      __swift_project_boxed_opaque_existential_1(v531, v531[3]);
      v271 = *(type metadata accessor for ForYouFeedExpandBlueprintModifier() + 28);
      v272 = type metadata accessor for ForYouFeedServiceConfig();
      v273 = sub_22051DCC0(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);

      v522 = v273;
      sub_22088F6CC();
      sub_220518AE4(v269, v158, type metadata accessor for ForYouFeedGroup);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v527 = v272;
      if (EnumCaseMultiPayload)
      {
        v275 = v480;
        if (EnumCaseMultiPayload == 1)
        {
          v276 = v498;
          sub_220519144(v158, v498, type metadata accessor for CuratedForYouFeedGroup);
          v277 = v507;
          sub_22080DFA4(v276, v264, v507);
          sub_22051DD08(v276, type metadata accessor for CuratedForYouFeedGroup);
        }

        else
        {
          v411 = v478;
          v412 = v515;
          v413 = v510;
          (*(v478 + 32))(v515, v158, v510);
          v414 = v507;
          sub_22080E6A4(v412, v507);
          (*(v411 + 8))(v412, v413);
          v277 = v414;
        }

        v402 = v441;
      }

      else
      {
        v401 = v451;
        sub_220519144(v158, v451, type metadata accessor for StockForYouFeedGroup);
        v277 = v507;
        sub_22080CF0C(v401, v497, v270 + v271, v264, v507);
        sub_22051DD08(v401, type metadata accessor for StockForYouFeedGroup);
        v402 = v441;
        v275 = v480;
      }

      (*(v275 + 8))(v264, v529);
      v289 = v525;
      v290 = v519;
      sub_22088E75C();
      v415 = *(v473 + 8);
      v416 = v524;
      v415(v277, v524);
      v417 = v456;
      result = sub_22051F9FC(v268, v456);
      v418 = __OFADD__(v402, 1);
      v419 = v521;
      if (!v418)
      {
        sub_22088E73C();
        v415(v417, v416);
        sub_22088FA1C();
        sub_22088FA0C();
        v420 = sub_22088F9EC();

        v421 = 0;
        if (v420)
        {
          v421 = sub_22088F45C();
        }

        else
        {
          v533 = 0;
          v534 = 0;
        }

        v422 = v526;
        v532 = v420;
        v535 = v421;
        sub_22088E7BC();

        sub_22051DD08(v422, type metadata accessor for ForYouFeedGroup);
        v286 = v524;
        v394 = v419;
        goto LABEL_97;
      }

      goto LABEL_103;
    }

    v293 = *((v170 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v294 = *((v170 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v286 = v172;
    sub_22088B2BC();
    v289 = v525;
    sub_22088E74C();

    v295 = *(v293 + 16);
    v440 = v293;
    if (!v295)
    {
      v290 = v519;
LABEL_77:
      v395 = v456;
      result = sub_22051F9FC(v294, v456);
      if (!__OFADD__(v441, *(v440 + 16)))
      {
        sub_22088E73C();
        (*(v473 + 8))(v395, v286);
        sub_22088FA1C();

        sub_22088FA0C();
        type metadata accessor for ForYouFeedServiceConfig();
        sub_22051DCC0(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
        v397 = sub_22088F9EC();

        v394 = v521;
        v398 = 0;
        if (v397)
        {
          v398 = sub_22088F45C();
        }

        else
        {
          v533 = 0;
          v534 = 0;
        }

        v532 = v397;
        v535 = v398;
        sub_22088E7BC();
        goto LABEL_82;
      }

      __break(1u);
LABEL_103:
      __break(1u);
      return result;
    }

    v296 = type metadata accessor for ForYouFeedExpandBlueprintModifier();
    v297 = v293 + ((*(v454 + 80) + 32) & ~*(v454 + 80));
    v472 = *(v296 + 28);
    v298 = v297;
    v505 = *(v454 + 72);
    v471 = (v478 + 32);
    v470 = (v478 + 16);
    v454 = v478 + 8;
    v504 = (v480 + 8);
    v489 = (v444 + 2);
    v453 = (v445 + 2);
    v452 = (v474 + 16);
    LODWORD(v451) = *MEMORY[0x277D69288];
    v450 = (v475 + 104);
    v449 = (v475 + 16);
    v448 = (v476 + 16);
    v447 = (v475 + 8);
    v446 = (v474 + 8);
    ++v445;
    ++v444;
    v443 = (v476 + 40);
    v499 = (v473 + 8);
    v442 = xmmword_220899360;
    v290 = v519;
    v507 = v294;
    v299 = v518;
    while (1)
    {
      v526 = v295;
      v310 = v290;
      v311 = v289;
      v312 = v286;
      v523 = v298;
      sub_220518AE4(v298, v299, type metadata accessor for ForYouFeedGroup);
      v313 = v299;
      v314 = __swift_project_boxed_opaque_existential_1(v531, v531[3]);
      type metadata accessor for ForYouFeedServiceConfig();
      sub_22051DCC0(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
      sub_22088F6CC();
      v315 = *v314;
      v316 = v508;
      sub_220518AE4(v313, v508, type metadata accessor for ForYouFeedGroup);
      v317 = swift_getEnumCaseMultiPayload();
      if (!v317)
      {
        break;
      }

      if (v317 == 1)
      {
        v318 = v498;
        sub_220519144(v316, v498, type metadata accessor for CuratedForYouFeedGroup);
        v307 = v513;
        v308 = v509;
        sub_22080DFA4(v318, v509, v513);
        sub_22051DD08(v318, type metadata accessor for CuratedForYouFeedGroup);
        v286 = v312;
        v289 = v311;
        v290 = v310;
      }

      else
      {
        v300 = v515;
        v301 = v510;
        (*v471)(v515, v316, v510);
        (*v470)(v500, v300, v301);
        swift_storeEnumTagMultiPayload();
        sub_22051F584(0, &qword_28127E0F0, sub_22051D97C, MEMORY[0x277D84560]);
        v302 = swift_allocObject();
        *(v302 + 16) = v442;
        __swift_project_boxed_opaque_existential_1((v315 + 16), *(v315 + 40));
        sub_22088FB2C();
        swift_storeEnumTagMultiPayload();
        sub_22051DCC0(&unk_281293320, type metadata accessor for ForYouFeedModel);
        v286 = v524;
        v290 = v519;
        sub_22088AD7C();
        v303 = sub_22051DCC0(&qword_281297F68, sub_22051D97C);
        v304 = sub_22051DCC0(&qword_281297F70, sub_22051D97C);
        MEMORY[0x223D80A10](v302, v521, v303, v304);
        sub_22051DCC0(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
        v305 = v513;
        v289 = v525;
        sub_22088B29C();
        v306 = v301;
        v307 = v305;
        (*v454)(v515, v306);
        v308 = v509;
      }

LABEL_45:
      v309 = v526;
      (*v504)(v308, v529);
      sub_22088E72C();
      (*v499)(v307, v286);
      v299 = v518;
      sub_22051DD08(v518, type metadata accessor for ForYouFeedGroup);
      v298 = &v505[v523];
      v295 = v309 - 1;
      v294 = v507;
      if (!v295)
      {
        goto LABEL_77;
      }
    }

    v319 = v316;
    v320 = v482;
    sub_220519144(v319, v482, type metadata accessor for StockForYouFeedGroup);
    v321 = *v489;
    v322 = v527;
    (*v489)(v511, v320, v527);
    (v321)(v512, v320, v322);
    v323 = sub_22088681C();
    v325 = v497;
    v326 = *(v497 + 16);
    v487 = v315;
    v483 = v321;
    if (v326)
    {
      v327 = sub_2204AF97C(v323, v324);
      v329 = v328;

      if (v329)
      {
        v330 = *(v325 + 56);
        v331 = sub_22088676C();
        v332 = *(v331 - 8);
        v333 = v332;
        v334 = *(v332 + 72);
        v335 = *(v332 + 16);
        v481 = (v331 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
        v336 = v330 + v334 * v327;
        v337 = v503;
        v335(v503, v336, v331);
        v338 = *(v333 + 56);
        v479 = v331;
        v338(v337, 0, 1, v331);
LABEL_54:
        sub_22045849C();
        v485 = v341;
        v342 = &v511[*(v341 + 48)];
        v343 = type metadata accessor for StockSparklineViewModel(0);
        v344 = v486;
        (*(*(v343 - 8) + 56))(v486, 1, 1, v343);
        v345 = *v453;
        v346 = v488;
        v347 = v514;
        (*v453)(v488, v531 + v472, v514);
        (v483)(v342, v512, v527);
        v348 = type metadata accessor for StockViewModel();
        v349 = v503;
        sub_220518AE4(v503, &v342[v348[5]], sub_22045987C);
        sub_220518AE4(v344, &v342[v348[6]], sub_2204E99F0);
        v345(&v342[v348[8]], v346, v347);
        v350 = v342;
        v483 = v348;
        v342[v348[9]] = 0;
        v351 = v522;
        sub_220518AE4(v349, v522, sub_22045987C);
        sub_2208867CC();
        v352 = v467;
        sub_220518AE4(v351, v467, sub_22045987C);
        sub_22088676C();
        v353 = v479;
        v354 = *(v479 - 1);
        v355 = *(v354 + 48);
        if (v355(v352, 1, v479) == 1)
        {
          sub_22051DD08(v352, sub_22045987C);
          v481 = 0;
          LODWORD(v480) = 1;
        }

        else
        {
          v481 = sub_22088675C();
          LODWORD(v480) = v356;
          (*(v354 + 8))(v352, v353);
        }

        v357 = v469;
        v358 = v468;
        v359 = v484;
        sub_220518AE4(v522, v484, sub_22045987C);
        v360 = v355(v359, 1, v353);
        v361 = v511;
        if (v360 == 1)
        {
          sub_22051DD08(v359, sub_22045987C);
          v478 = 0;
          LODWORD(v477) = 1;
        }

        else
        {
          v478 = sub_22088666C();
          LODWORD(v477) = v362;
          (*(v354 + 8))(v484, v353);
        }

        v363 = v522;
        sub_220518AE4(v522, v358, sub_22045987C);
        if (v355(v358, 1, v353) == 1)
        {
          sub_22051DD08(v358, sub_22045987C);
          v476 = 0;
          LODWORD(v475) = 1;
        }

        else
        {
          v364 = sub_22088671C();
          v363 = v522;
          v476 = v364;
          LODWORD(v475) = v365;
          (*(v354 + 8))(v358, v353);
        }

        sub_220518AE4(v363, v357, sub_22045987C);
        if (v355(v357, 1, v353) == 1)
        {
          sub_22051DD08(v357, sub_22045987C);
          v474 = 0;
          v366 = 0;
        }

        else
        {
          v474 = sub_22088668C();
          v366 = v367;
          (*(v354 + 8))(v357, v353);
        }

        v368 = v491;
        v485 = &v361[*(v485 + 16)];
        v369 = &v350[v483[7]];
        v370 = *v452;
        v371 = v492;
        (*v452)(v491, v506, v492);
        v372 = v493;
        v373 = v494;
        (*v450)(v493, v451, v494);
        v374 = v495;
        sub_22088524C();
        *v369 = v481;
        v369[8] = v480 & 1;
        *(v369 + 2) = v478;
        v369[24] = v477 & 1;
        *(v369 + 4) = v476;
        v369[40] = v475 & 1;
        *(v369 + 6) = v474;
        *(v369 + 7) = v366;
        v375 = v372;
        v376 = type metadata accessor for PriceViewModel();
        v370(&v369[v376[10]], v368, v371);
        *(v369 + 8) = 9666786;
        *(v369 + 9) = 0xA300000000000000;
        (*v449)(&v369[v376[9]], v375, v373);
        v377 = &v369[v376[11]];
        v378 = v496;
        (*v448)(v377, v374, v496);
        if (qword_281294078 != -1)
        {
          swift_once();
        }

        v379 = qword_2812B6B48;
        (*v447)(v375, v373);
        v380 = *v446;
        (*v446)(v368, v371);
        v380(v506, v371);
        sub_22051DD08(v522, sub_22045987C);
        (*v445)(v488, v514);
        sub_22051DD08(v486, sub_2204E99F0);
        sub_22051DD08(v503, sub_22045987C);
        (*v444)(v512, v527);
        v381 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
        swift_beginAccess();
        (*v443)(v379 + v381, v374, v378);
        swift_endAccess();
        v382 = v482;
        sub_22051E1E0(v482 + *(v490 + 28), v485);
        v383 = swift_storeEnumTagMultiPayload();
        MEMORY[0x28223BE20](v383, v384);
        v385 = v509;
        v436 = v509;
        v437 = v382;
        v438 = v487;
        v386 = v517;
        v388 = sub_22051E318(sub_22051EE04, (&v440 - 6), v387);
        v517 = v386;
        v389 = sub_22051DCC0(&qword_281297F68, sub_22051D97C);
        v390 = sub_22051DCC0(&qword_281297F70, sub_22051D97C);
        v391 = v389;
        v308 = v385;
        MEMORY[0x223D80A20](v388, v521, v391, v390);
        sub_22051DCC0(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
        sub_22051DCC0(&unk_281293320, type metadata accessor for ForYouFeedModel);
        v307 = v513;
        sub_22088B29C();
        sub_22051DD08(v382, type metadata accessor for StockForYouFeedGroup);
        v286 = v524;
        v289 = v525;
        v290 = v519;
        goto LABEL_45;
      }
    }

    else
    {
    }

    v339 = sub_22088676C();
    v340 = *(*(v339 - 8) + 56);
    v481 = (v339 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v479 = v339;
    v340(v503, 1, 1);
    goto LABEL_54;
  }

  if (v171 == 2)
  {
    sub_2206B02CC();
    v278 = swift_projectBox();
    v279 = v477;
    sub_220518AE4(v278, v477, type metadata accessor for ForYouFeedGroup);
    v280 = v531;
    __swift_project_boxed_opaque_existential_1(v531, v531[3]);
    v281 = *(type metadata accessor for ForYouFeedExpandBlueprintModifier() + 28);
    v282 = type metadata accessor for ForYouFeedServiceConfig();
    v283 = sub_22051DCC0(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);

    v284 = v452;
    v526 = v283;
    v527 = v282;
    sub_22088F6CC();
    sub_220518AE4(v279, v151, type metadata accessor for ForYouFeedGroup);
    v285 = swift_getEnumCaseMultiPayload();
    if (v285)
    {
      v286 = v524;
      if (v285 == 1)
      {
        v287 = v498;
        sub_220519144(v151, v498, type metadata accessor for CuratedForYouFeedGroup);
        v288 = v453;
        sub_22080DFA4(v287, v284, v453);
        sub_22051DD08(v287, type metadata accessor for CuratedForYouFeedGroup);
      }

      else
      {
        v403 = v478;
        v404 = v524;
        v405 = v515;
        v406 = v510;
        (*(v478 + 32))(v515, v151, v510);
        v407 = v453;
        sub_22080E6A4(v405, v453);
        v408 = v405;
        v286 = v404;
        (*(v403 + 8))(v408, v406);
        v288 = v407;
        v279 = v477;
      }
    }

    else
    {
      v399 = v451;
      sub_220519144(v151, v451, type metadata accessor for StockForYouFeedGroup);
      v400 = v280 + v281;
      v288 = v453;
      sub_22080CF0C(v399, v497, v400, v284, v453);
      sub_22051DD08(v399, type metadata accessor for StockForYouFeedGroup);
      v286 = v524;
    }

    v289 = v525;
    (*(v480 + 8))(v284, v529);
    v290 = v519;
    sub_22088E75C();
    (*(v473 + 8))(v288, v286);
    sub_22088FA1C();
    sub_22088FA0C();
    v409 = sub_22088F9EC();

    v394 = v521;
    v410 = 0;
    if (v409)
    {
      v410 = sub_22088F45C();
    }

    else
    {
      v533 = 0;
      v534 = 0;
    }

    v532 = v409;
    v535 = v410;
    sub_22088E7BC();

    sub_22051DD08(v279, type metadata accessor for ForYouFeedGroup);
    goto LABEL_97;
  }

  if (v171 == 3)
  {
    v173 = *((v170 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v512 = *((v170 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    sub_22088B2BC();
    sub_22088E74C();

    v174 = *(v173 + 16);
    if (v174)
    {
      v175 = type metadata accessor for ForYouFeedExpandBlueprintModifier();
      v176 = v173 + ((*(v454 + 80) + 32) & ~*(v454 + 80));
      v469 = *(v175 + 28);
      v511 = *(v454 + 72);
      v468 = (v478 + 32);
      v467 = (v478 + 16);
      v454 = v478 + 8;
      v509 = (v480 + 8);
      v503 = v444 + 2;
      v453 = (v445 + 2);
      v452 = (v474 + 16);
      LODWORD(v451) = *MEMORY[0x277D69288];
      v450 = (v475 + 104);
      v449 = (v475 + 16);
      v448 = (v476 + 16);
      v447 = (v475 + 8);
      v446 = (v474 + 8);
      ++v445;
      ++v444;
      v443 = (v476 + 40);
      v506 = (v473 + 8);
      v442 = xmmword_220899360;
      v177 = v519;
      v178 = v531;
      v179 = v499;
      v180 = v508;
      while (1)
      {
        v522 = v176;
        v523 = v174;
        sub_220518AE4(v176, v180, type metadata accessor for ForYouFeedGroup);
        v191 = v180;
        v192 = __swift_project_boxed_opaque_existential_1(v178, v178[3]);
        type metadata accessor for ForYouFeedServiceConfig();
        sub_22051DCC0(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
        sub_22088F6CC();
        v193 = *v192;
        sub_220518AE4(v191, v526, type metadata accessor for ForYouFeedGroup);
        v194 = swift_getEnumCaseMultiPayload();
        if (v194)
        {
          if (v194 == 1)
          {
            v195 = v498;
            sub_220519144(v526, v498, type metadata accessor for CuratedForYouFeedGroup);
            v188 = v504;
            sub_22080DFA4(v195, v179, v504);
            sub_22051DD08(v195, type metadata accessor for CuratedForYouFeedGroup);
            v190 = v522;
            v189 = v523;
            v187 = v524;
            v184 = v177;
            goto LABEL_8;
          }

          v181 = v515;
          v182 = v510;
          (*v468)(v515, v526, v510);
          (*v467)(v500, v181, v182);
          swift_storeEnumTagMultiPayload();
          sub_22051F584(0, &qword_28127E0F0, sub_22051D97C, MEMORY[0x277D84560]);
          v183 = swift_allocObject();
          *(v183 + 16) = v442;
          __swift_project_boxed_opaque_existential_1(v193 + 2, *(v193 + 5));
          sub_22088FB2C();
          swift_storeEnumTagMultiPayload();
          sub_22051DCC0(&unk_281293320, type metadata accessor for ForYouFeedModel);
          v184 = v519;
          sub_22088AD7C();
          v185 = sub_22051DCC0(&qword_281297F68, sub_22051D97C);
          v186 = sub_22051DCC0(&qword_281297F70, sub_22051D97C);
          MEMORY[0x223D80A10](v183, v521, v185, v186);
          sub_22051DCC0(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
          v187 = v524;
          v188 = v504;
          v178 = v531;
          sub_22088B29C();
          v179 = v499;
          (*v454)(v515, v510);
        }

        else
        {
          v488 = v193;
          v196 = v483;
          sub_220519144(v526, v483, type metadata accessor for StockForYouFeedGroup);
          v197 = *v503;
          v198 = v505;
          v199 = v527;
          (*v503)(v505, v196, v527);
          v197(v513, v196, v199);
          v200 = sub_22088681C();
          v202 = v497;
          if (*(v497 + 16))
          {
            v203 = v197;
            v204 = sub_2204AF97C(v200, v201);
            v206 = v205;

            v207 = v481;
            if (v206)
            {
              v208 = *(v202 + 56);
              v209 = sub_22088676C();
              v210 = *(v209 - 8);
              v211 = v210;
              v212 = *(v210 + 72);
              v213 = *(v210 + 16);
              v482 = (v209 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
              v213(v207, v208 + v212 * v204, v209);
              v214 = *(v211 + 56);
              v479 = v209;
              v214(v207, 0, 1, v209);
            }

            else
            {
              v217 = sub_22088676C();
              v218 = *(*(v217 - 8) + 56);
              v482 = (v217 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
              v479 = v217;
              v218(v207, 1, 1);
            }

            v197 = v203;
          }

          else
          {

            v215 = sub_22088676C();
            v216 = *(*(v215 - 8) + 56);
            v482 = (v215 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
            v207 = v481;
            v479 = v215;
            v216();
          }

          sub_22045849C();
          v486 = v219;
          v220 = &v198[*(v219 + 48)];
          v221 = type metadata accessor for StockSparklineViewModel(0);
          v222 = v487;
          (*(*(v221 - 8) + 56))(v487, 1, 1, v221);
          v223 = *v453;
          v224 = v489;
          v225 = v514;
          (*v453)(v489, v531 + v469, v514);
          v197(v220, v513, v527);
          v226 = type metadata accessor for StockViewModel();
          sub_220518AE4(v207, &v220[v226[5]], sub_22045987C);
          sub_220518AE4(v222, &v220[v226[6]], sub_2204E99F0);
          v223(&v220[v226[8]], v224, v225);
          v227 = v220;
          v484 = v226;
          v220[v226[9]] = 0;
          v228 = v518;
          sub_220518AE4(v207, v518, sub_22045987C);
          sub_2208867CC();
          v229 = v470;
          sub_220518AE4(v228, v470, sub_22045987C);
          sub_22088676C();
          v230 = v479;
          v231 = *(v479 - 1);
          v232 = *(v231 + 48);
          if (v232(v229, 1, v479) == 1)
          {
            sub_22051DD08(v229, sub_22045987C);
            v482 = 0;
            LODWORD(v480) = 1;
          }

          else
          {
            v482 = sub_22088675C();
            LODWORD(v480) = v233;
            (*(v231 + 8))(v229, v230);
          }

          v234 = v472;
          v235 = v471;
          v236 = v485;
          sub_220518AE4(v518, v485, sub_22045987C);
          if (v232(v236, 1, v230) == 1)
          {
            sub_22051DD08(v236, sub_22045987C);
            v478 = 0;
            LODWORD(v477) = 1;
          }

          else
          {
            v478 = sub_22088666C();
            LODWORD(v477) = v237;
            (*(v231 + 8))(v485, v230);
          }

          sub_220518AE4(v518, v235, sub_22045987C);
          if (v232(v235, 1, v230) == 1)
          {
            sub_22051DD08(v235, sub_22045987C);
            v476 = 0;
            LODWORD(v475) = 1;
          }

          else
          {
            v476 = sub_22088671C();
            LODWORD(v475) = v238;
            (*(v231 + 8))(v235, v230);
          }

          sub_220518AE4(v518, v234, sub_22045987C);
          if (v232(v234, 1, v230) == 1)
          {
            sub_22051DD08(v234, sub_22045987C);
            v239 = 0;
            v474 = 0;
          }

          else
          {
            v239 = sub_22088668C();
            v474 = v240;
            (*(v231 + 8))(v234, v230);
          }

          v486 = &v505[*(v486 + 16)];
          v241 = &v227[v484[7]];
          v242 = *v452;
          v243 = v491;
          v244 = v492;
          (*v452)(v491, v507, v492);
          v245 = v493;
          v246 = v494;
          (*v450)(v493, v451, v494);
          v247 = v495;
          sub_22088524C();
          *v241 = v482;
          v241[8] = v480 & 1;
          *(v241 + 2) = v478;
          v241[24] = v477 & 1;
          *(v241 + 4) = v476;
          v241[40] = v475 & 1;
          *(v241 + 6) = v239;
          v248 = v246;
          *(v241 + 7) = v474;
          v249 = type metadata accessor for PriceViewModel();
          v242(&v241[v249[10]], v243, v244);
          *(v241 + 8) = 9666786;
          *(v241 + 9) = 0xA300000000000000;
          (*v449)(&v241[v249[9]], v245, v248);
          v250 = v496;
          (*v448)(&v241[v249[11]], v247, v496);
          if (qword_281294078 != -1)
          {
            swift_once();
          }

          v251 = qword_2812B6B48;
          (*v447)(v245, v248);
          v252 = *v446;
          (*v446)(v243, v244);
          v252(v507, v244);
          sub_22051DD08(v518, sub_22045987C);
          (*v445)(v489, v514);
          sub_22051DD08(v487, sub_2204E99F0);
          sub_22051DD08(v481, sub_22045987C);
          (*v444)(v513, v527);
          v253 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
          swift_beginAccess();
          (*v443)(v251 + v253, v247, v250);
          swift_endAccess();
          v254 = v483;
          sub_22051E1E0(v483 + *(v490 + 28), v486);
          v255 = swift_storeEnumTagMultiPayload();
          MEMORY[0x28223BE20](v255, v256);
          v257 = v499;
          v436 = v499;
          v437 = v254;
          v438 = v488;
          v258 = v517;
          v260 = sub_22051E318(sub_22051EF0C, (&v440 - 6), v259);
          v517 = v258;
          v261 = sub_22051DCC0(&qword_281297F68, sub_22051D97C);
          v262 = sub_22051DCC0(&qword_281297F70, sub_22051D97C);
          MEMORY[0x223D80A20](v260, v521, v261, v262);
          sub_22051DCC0(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
          sub_22051DCC0(&unk_281293320, type metadata accessor for ForYouFeedModel);
          v188 = v504;
          sub_22088B29C();
          v263 = v254;
          v179 = v257;
          sub_22051DD08(v263, type metadata accessor for StockForYouFeedGroup);
          v184 = v519;
          v178 = v531;
          v187 = v524;
        }

        v190 = v522;
        v189 = v523;
LABEL_8:
        (*v509)(v179, v529);
        v177 = v184;
        sub_22088E72C();
        (*v506)(v188, v187);
        v180 = v508;
        sub_22051DD08(v508, type metadata accessor for ForYouFeedGroup);
        v176 = &v511[v190];
        v174 = v189 - 1;
        if (!v174)
        {
          goto LABEL_70;
        }
      }
    }

    v177 = v519;
LABEL_70:
    sub_22088FA1C();

    sub_22088FA0C();
    type metadata accessor for ForYouFeedServiceConfig();
    sub_22051DCC0(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
    v392 = sub_22088F9EC();

    v393 = 0;
    if (v392)
    {
      v393 = sub_22088F45C();
    }

    else
    {
      v533 = 0;
      v534 = 0;
    }

    v394 = v521;
    v289 = v525;
    v290 = v177;
    v532 = v392;
    v535 = v393;
    sub_22088E7BC();

    v286 = v524;
    goto LABEL_97;
  }

  v286 = v118;
  sub_22088B2BC();
  v289 = v525;
  v290 = v519;
  sub_22088E74C();

  sub_22088FA1C();
  sub_22088FA0C();
  type metadata accessor for ForYouFeedServiceConfig();
  sub_22051DCC0(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
  v291 = sub_22088F9EC();

  v292 = 0;
  if (v291)
  {
    v292 = sub_22088F45C();
  }

  else
  {
    v533 = 0;
    v534 = 0;
  }

  v394 = v521;
  v532 = v291;
  v535 = v292;
  sub_22088E7BC();
LABEL_82:

LABEL_97:
  sub_22051DCC0(&unk_281296EB0, sub_2204F1480);
  sub_22089193C();
  sub_22089199C();
  if (v532 == v536)
  {
    swift_storeEnumTagMultiPayload();
    v423 = sub_22051DCC0(&qword_281297F68, sub_22051D97C);
    v424 = sub_22051DCC0(&qword_281297F70, sub_22051D97C);
    MEMORY[0x223D80A10](MEMORY[0x277D84F90], v394, v423, v424);
    sub_22051DCC0(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
    sub_22051DCC0(&unk_281293320, type metadata accessor for ForYouFeedModel);
    v425 = v456;
    sub_22088B29C();
    if (qword_281299528 != -1)
    {
      swift_once();
    }

    v426 = *algn_2812B6D88;
    v427 = v501;
    *v501 = qword_2812B6D80;
    v427[1] = v426;
    swift_storeEnumTagMultiPayload();

    v428 = v455;
    sub_22088AD7C();
    sub_22088B30C();
    (*(v502 + 8))(v428, v521);
    sub_22088E72C();
    (*(v473 + 8))(v425, v286);
  }

  v429 = v463;
  v430 = v461;
  v431 = v464;
  (*(v463 + 104))(v461, *MEMORY[0x277D6D868], v464);
  v432 = sub_22051DCC0(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
  v433 = sub_22051DCC0(&unk_281293320, type metadata accessor for ForYouFeedModel);
  v434 = sub_22051DCC0(&unk_281288480, type metadata accessor for ForYouFeedSectionDescriptor);
  v438 = v432;
  v439 = v433;
  v436 = v433;
  v437 = v434;
  v435 = v458;
  sub_22088C67C();
  (*(v429 + 8))(v430, v431);
  v466(v435);
  (*(v459 + 8))(v435, v460);
  return (*(v457 + 8))(v290, v289);
}

void sub_22051D2D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for ForYouFeedSectionDescriptor();
    v8[1] = type metadata accessor for ForYouFeedModel();
    v8[2] = sub_22044E1B4(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
    v8[3] = sub_22044E1B4(&unk_281293320, type metadata accessor for ForYouFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_22051D3C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for ForYouFeedSectionDescriptor();
    v8[1] = type metadata accessor for ForYouFeedModel();
    v8[2] = sub_2206B00FC(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
    v8[3] = sub_2206B00FC(&unk_281293320, type metadata accessor for ForYouFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_22051D4B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for ForYouFeedSectionDescriptor();
    v8[1] = type metadata accessor for ForYouFeedModel();
    v8[2] = sub_22051DCC0(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
    v8[3] = sub_22051DCC0(&unk_281293320, type metadata accessor for ForYouFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_22051D5AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for ForYouFeedSectionDescriptor();
    v8[1] = type metadata accessor for ForYouFeedModel();
    v8[2] = sub_22044E2D4(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
    v8[3] = sub_22044E2D4(&unk_281293320, type metadata accessor for ForYouFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_22051D6A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for ForYouFeedSectionDescriptor();
    v8[1] = type metadata accessor for ForYouFeedModel();
    v8[2] = sub_2207279D0(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
    v8[3] = sub_2207279D0(&unk_281293320, type metadata accessor for ForYouFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_22051D794(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for ForYouFeedSectionDescriptor();
    v8[1] = type metadata accessor for ForYouFeedModel();
    v8[2] = sub_22044E31C(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
    v8[3] = sub_22044E31C(&unk_281293320, type metadata accessor for ForYouFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_22051D888(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for ForYouFeedSectionDescriptor();
    v8[1] = type metadata accessor for ForYouFeedModel();
    v8[2] = sub_22044E3F4(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
    v8[3] = sub_22044E3F4(&unk_281293320, type metadata accessor for ForYouFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_22051D97C()
{
  if (!qword_281297F60)
  {
    type metadata accessor for ForYouFeedModel();
    sub_2204BC2F4(&unk_281293320, 255, type metadata accessor for ForYouFeedModel);
    v0 = sub_22088ADAC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297F60);
    }
  }
}

void sub_22051DA14()
{
  if (!qword_2812987C0)
  {
    sub_22051D97C();
    sub_2204548C0(&qword_281297F68, sub_22051D97C);
    sub_2204548C0(&qword_281297F70, sub_22051D97C);
    v0 = sub_2208888CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2812987C0);
    }
  }
}

uint64_t type metadata accessor for StockForYouFeedGroup()
{
  result = qword_28128E668;
  if (!qword_28128E668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22051DB2C()
{
  swift_getObjectType();

  return sub_220886B4C();
}

uint64_t type metadata accessor for ForYouFeedGroup()
{
  result = qword_2812933F8;
  if (!qword_2812933F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22051DBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2858](a1, a2, a3, a4, ObjectType, a8);
}

uint64_t sub_22051DC68()
{
  swift_getObjectType();

  return sub_220886B3C();
}

uint64_t sub_22051DCC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22051DD08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_22051DD68(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_styler];
  swift_beginAccess();
  sub_22046DA2C(v5, v39);
  v6 = v40;
  v7 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v8 = *(v7 + 8);
  v9 = *(v8 + 8);
  v37 = v6;
  v38 = v7;
  __swift_allocate_boxed_opaque_existential_1(&v36);
  v9(a1, v6, v8);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v5);
  sub_220457328(&v36, v5);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_22046DA2C(v5, v39);
  v10 = __swift_project_boxed_opaque_existential_1(v39, v40);
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v13 = result;
  v14 = sub_22044E3AC(&unk_28128A3D0, v12, type metadata accessor for ForYouFeedViewController);
  v15 = MEMORY[0x223D82EA0](ObjectType, v14);
  v16 = *v10;
  if (!v15)
  {
    v23 = v16[5];
    v24 = v16[6];
    __swift_project_boxed_opaque_existential_1(v16 + 2, v23);
    v22 = (*(*(v24 + 16) + 472))(v23);
    [v13 setBackgroundColor_];
    goto LABEL_6;
  }

  v17 = v15;
  result = [v17 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v18 = result;
  v19 = v16[5];
  v20 = v16[6];
  __swift_project_boxed_opaque_existential_1(v16 + 2, v19);
  v21 = (*(*(v20 + 16) + 472))(v19);
  [v18 setBackgroundColor_];

  v22 = [objc_opt_self() clearColor];
  [v13 setBackgroundColor_];

  v13 = v17;
LABEL_6:

  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_22046DA2C(v5, v39);
  __swift_project_boxed_opaque_existential_1(v39, v40);
  sub_22088C71C();
  v25 = sub_22088BFCC();

  v26 = MEMORY[0x223D82EA0](ObjectType, v14);
  sub_2207EEC8C(v25, v26);

  __swift_destroy_boxed_opaque_existential_1(v39);
  if (qword_281298F98 != -1)
  {
    swift_once();
  }

  sub_22044E3AC(&unk_28128A3B8, v27, type metadata accessor for ForYouFeedViewController);
  sub_220886B3C();
  if (LOBYTE(v39[0]) != 1)
  {
    v28 = __swift_project_boxed_opaque_existential_1(v5, *(v5 + 3));
    v29 = *&v2[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_statusBarView];
    v31 = *(*v28 + 40);
    v30 = *(*v28 + 48);
    __swift_project_boxed_opaque_existential_1((*v28 + 16), v31);
    v32 = (*(*(v30 + 16) + 472))(v31);
    [v29 setBackgroundColor_];
  }

  sub_22088C6FC();
  v33 = __swift_project_boxed_opaque_existential_1(v5, *(v5 + 3));
  v34 = *(*v33 + 40);
  v35 = *(*v33 + 48);
  __swift_project_boxed_opaque_existential_1((*v33 + 16), v34);
  sub_22051E274(v34, v35, v39);
  sub_22088B51C();

  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t sub_22051E1E0(uint64_t a1, uint64_t a2)
{
  sub_220453C08(0, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22051E274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 16);
  (*(v5 + 472))(a1, v5);
  (*(v5 + 160))(a1, v5);
  v6 = sub_22088AB6C();
  v7 = MEMORY[0x277D6D2E8];
  a3[3] = v6;
  a3[4] = v7;
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_22088AB5C();
}

uint64_t sub_22051E36C()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 160))(v2, v3);
}

size_t sub_22051E3CC(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127E0F0, sub_22051D97C, sub_22051D97C);
  *v3 = result;
  return result;
}

uint64_t sub_22051E41C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = a4;
  v71 = a3;
  v73 = a2;
  v84 = a5;
  v6 = MEMORY[0x277D31C50];
  sub_220453D98(0, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v68 - v9;
  v11 = sub_22088FFFC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v80 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v68 - v17;
  v19 = sub_22088698C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v76 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v68 - v25;
  v81 = type metadata accessor for ForYouFeedModel();
  v28 = MEMORY[0x28223BE20](v81, v27);
  v78 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v20;
  v30 = *(v20 + 16);
  v77 = v26;
  v31 = v26;
  v32 = a1;
  v33 = v71;
  v82 = v19;
  v74 = v30;
  v75 = v20 + 16;
  (v30)(v31, v32, v19, v28);
  v83 = v12;
  v34 = *(v12 + 16);
  v35 = v73;
  v73 = (v12 + 16);
  v72 = v34;
  v34(v18, v35, v11);
  v36 = type metadata accessor for StockForYouFeedGroup();
  sub_2204FBD18(v33 + *(v36 + 28), v10, &qword_281296C60, v6);
  v37 = sub_22088F39C();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v10, 1, v37) == 1)
  {
    sub_22051F42C(v10, &qword_281296C60, MEMORY[0x277D31C50]);
    v71 = sub_22088677C();
    v70 = v39;
  }

  else
  {
    v71 = sub_22088F2EC();
    v70 = v40;
    (*(v38 + 8))(v10, v37);
  }

  v41 = *(v69 + 56);
  v42 = sub_2208868DC();
  v43 = [v42 isPaid];
  if ([v42 respondsToSelector_])
  {
    v44 = [v42 isBundlePaid];
  }

  else
  {
    v44 = 0;
  }

  v45 = [v42 sourceChannel];
  if (v45)
  {
    v46 = [v45 identifier];
    swift_unknownObjectRelease();
    v69 = sub_22089136C();
    v48 = v47;

    if (v43)
    {
      goto LABEL_9;
    }

LABEL_13:
    if ((v44 & 1) == 0)
    {
      swift_unknownObjectRelease();

      goto LABEL_41;
    }

    goto LABEL_17;
  }

  v69 = 0;
  v48 = 0;
  if (!v43)
  {
    goto LABEL_13;
  }

LABEL_9:
  v49 = [v41 purchaseProvider];
  if (!v48)
  {
    swift_unknownObjectRelease();
LABEL_16:
    if (!v44)
    {
      swift_unknownObjectRelease();

      goto LABEL_42;
    }

LABEL_17:
    if (!v48)
    {
      swift_unknownObjectRelease();
      goto LABEL_42;
    }

    v68 = v11;
    v52 = v41;
    v53 = [objc_msgSend(v41 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v53, v53 + 1))
    {
      sub_2208923BC();
      swift_unknownObjectRelease();
    }

    else
    {
      v85 = 0u;
      v86 = 0u;
    }

    v87 = v85;
    v88 = v86;
    if (*(&v86 + 1))
    {
      sub_2204DD8BC();
      if (swift_dynamicCast())
      {
        v54 = v89;
        v55 = [v89 integerValue];
        if (v55 == -1)
        {

          goto LABEL_40;
        }

        v56 = v55;
LABEL_29:
        if (objc_getAssociatedObject(v53, ~v56))
        {
          sub_2208923BC();
          swift_unknownObjectRelease();
        }

        else
        {
          v85 = 0u;
          v86 = 0u;
        }

        v87 = v85;
        v88 = v86;
        if (*(&v86 + 1))
        {
          sub_2204DD8BC();
          if (swift_dynamicCast())
          {
            v57 = v89;
            v58 = [v57 integerValue];

            if ((v58 ^ v56))
            {
LABEL_40:
              v59 = [objc_msgSend(v52 bundleSubscriptionProvider)];
              swift_unknownObjectRelease();
              v60 = [v59 bundleChannelIDs];

              v61 = sub_22089132C();
              v62 = [v60 containsObject_];

              swift_unknownObjectRelease();
              v11 = v68;
              if (v62)
              {
                goto LABEL_41;
              }

LABEL_42:
              v63 = 0;
              goto LABEL_43;
            }

LABEL_38:

            swift_unknownObjectRelease();
            v11 = v68;
            goto LABEL_42;
          }
        }

        else
        {
          sub_2204FC2E4(&v87, sub_22055F87C);
        }

        if (v56)
        {
          goto LABEL_40;
        }

        goto LABEL_38;
      }
    }

    else
    {
      sub_2204FC2E4(&v87, sub_22055F87C);
    }

    v54 = 0;
    v56 = 0;
    goto LABEL_29;
  }

  v50 = [v49 purchasedTagIDs];
  v51 = sub_2208918EC();

  LOBYTE(v50) = sub_22056F244(v69, v48, v51);

  swift_unknownObjectRelease();
  if ((v50 & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_unknownObjectRelease();
LABEL_41:
  v63 = 1;
LABEL_43:
  v64 = v77;
  v65 = v82;
  v74(v76, v77, v82);
  v72(v80, v18, v11);
  LOBYTE(v87) = v63;
  v66 = MEMORY[0x277D69858];
  sub_220458888(&unk_281299030, MEMORY[0x277D69858]);
  sub_220458888(&unk_281299040, v66);
  sub_22088FF9C();
  (*(v83 + 8))(v18, v11);
  (*(v79 + 8))(v64, v65);
  swift_storeEnumTagMultiPayload();
  sub_220458888(&unk_281293320, type metadata accessor for ForYouFeedModel);
  return sub_22088AD7C();
}

void sub_22051EE1C(char a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewWillAppear_, a1 & 1);
  swift_getObjectType();
  sub_22088BBDC();
  sub_22051EF30();
  sub_22088C72C();
  sub_22088867C();

  if ((v5 & 1) == 0)
  {
    sub_22088C71C();
    v4 = sub_22088BFCC();

    [v4 selectItemAtIndexPath:0 animated:1 scrollPosition:0];
  }
}

void sub_22051EF30()
{
  v1 = v0;
  v2 = sub_22088C03C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22088C71C();
  v7 = sub_22088BFCC();

  [v7 contentOffset];
  v9 = v8;

  v10 = OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_toolbarTitleIsHidden;
  if (v9 <= 0.0 != *(v0 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_toolbarTitleIsHidden))
  {
    v11 = *(v0 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_toolbarManager + 8);
    swift_getObjectType();
    sub_22088AC1C();
    v12 = sub_22088AC0C();
    if (v9 > 0.0)
    {
      v18[2] = v12;
      v19 = v12;
      v18[1] = v11;
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = [objc_opt_self() bundleForClass_];
      v15 = sub_220884CAC();
      v17 = v16;

      *v6 = v15;
      v6[1] = v17;
      (*(v3 + 104))(v6, *MEMORY[0x277D6DCB0], v2);
      sub_22088C04C();
      sub_22044E3AC(&qword_281297A18, 255, MEMORY[0x277D6DCC8]);
      sub_22088BBAC();
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v19 = v12;
      sub_22088C04C();
      sub_22044E3AC(&qword_281297A18, 255, MEMORY[0x277D6DCC8]);
      sub_22088BBBC();
    }

    *(v1 + v10) = v9 <= 0.0;
  }
}

uint64_t sub_22051F260(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_220453F10(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22051F2BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2205124A4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22051F318(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2207009E8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22051F374(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_220713810(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22051F3D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2204545BC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22051F42C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220453D98(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22051F49C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = [v2 splitViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 isCollapsed];

    if ((v7 & 1) == 0)
    {
      v8 = *(*&v3[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler] + 40);
      ObjectType = swift_getObjectType();
      (*(v8 + 80))(ObjectType, v8);
    }
  }

  v10 = *&v3[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler];
  v11 = v10[5];
  v12 = swift_getObjectType();
  (*(v11 + 104))(a2, v12, v11);
  __swift_project_boxed_opaque_existential_1(v10 + 11, v10[14]);
  return sub_22051FE74(a2);
}

void sub_22051F584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22051F610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v25 = a1;
  v4 = *(*v3 + 80);
  v5 = *(*v3 + 88);
  v6 = *(*v3 + 96);
  v7 = *(*v3 + 104);
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v24 = sub_22088EC5C();
  v21 = *(v24 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v24, v9);
  v11 = &v20 - v10;
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  result = sub_220889D0C();
  if (result)
  {
    result = sub_2207384A4(v25, v4, v5, v6, v7);
    if (result)
    {
      v20 = v3[2];
      v13 = swift_allocObject();
      swift_weakInit();
      v14 = v21;
      (*(v21 + 16))(v11, v25, v24);
      v15 = (*(v14 + 80) + 56) & ~*(v14 + 80);
      v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
      v17 = swift_allocObject();
      *(v17 + 2) = v4;
      *(v17 + 3) = v5;
      *(v17 + 4) = v6;
      *(v17 + 5) = v7;
      *(v17 + 6) = v13;
      (*(v14 + 32))(&v17[v15], v11, v24);
      v18 = &v17[v16];
      v19 = v23;
      *v18 = v22;
      *(v18 + 1) = v19;

      sub_22088726C();
    }
  }

  return result;
}

uint64_t sub_22051F868()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_22051F8A0()
{
  v1 = sub_22088EC5C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_22051F984()
{
  v1 = (v0 + *(*v0 + 136));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 16))(v0, &off_28341E4A0, v2, v3);
}

uint64_t sub_22051F9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v37 = a2;
  v36 = type metadata accessor for ForYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v36, v2);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22088519C();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ForYouFeedModel();
  MEMORY[0x28223BE20](v32, v8);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22051D97C();
  v12 = v11;
  v33 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22051DA14();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v19);
  v30 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v30 - v23;
  sub_2204548C0(&qword_281297F68, sub_22051D97C);
  sub_2204548C0(&qword_281297F70, sub_22051D97C);
  sub_2208888BC();
  sub_22088518C();
  v25 = sub_22088517C();
  v27 = v26;
  (*(v4 + 8))(v7, v31);
  sub_22052024C();
  swift_allocObject();

  v28 = sub_22088F6FC();
  *v10 = v25;
  v10[1] = v27;
  v10[2] = v28;
  swift_storeEnumTagMultiPayload();
  sub_2204548C0(&unk_281293320, type metadata accessor for ForYouFeedModel);
  sub_22088AD7C();
  sub_2208888AC();
  (*(v33 + 8))(v15, v12);
  swift_storeEnumTagMultiPayload();
  (*(v18 + 16))(v30, v24, v17);
  sub_2204548C0(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
  sub_22088B29C();
  return (*(v18 + 8))(v24, v17);
}

uint64_t sub_22051FE74(uint64_t a1)
{
  v2 = v1;
  v28 = sub_22088A02C();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088A01C();
  v9 = *(v8 - 8);
  v30 = v8;
  v31 = v9;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088916C();
  v29 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v28 - v20;
  sub_2205202E0(v2, a1, &v28 - v20);
  sub_22088D68C();
  (*(v4 + 104))(v7, *MEMORY[0x277D68F20], v28);
  (*(v14 + 16))(v17, v21, v13);
  sub_22088A00C();
  sub_2204D0618(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v22 = sub_220886F8C();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_220899360;
  (*(v23 + 104))(v25 + v24, *MEMORY[0x277CEAD10], v22);
  sub_220454908(&unk_2812982B0, MEMORY[0x277D68F18]);
  v26 = v30;
  sub_2208872CC();

  (*(v31 + 8))(v12, v26);
  sub_22088725C();
  return (*(v14 + 8))(v21, v29);
}

void sub_22052024C()
{
  if (!qword_281296B48)
  {
    type metadata accessor for ForYouFeedServiceConfig();
    sub_2204548C0(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
    v0 = sub_22088F71C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296B48);
    }
  }
}

uint64_t sub_2205202E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28[1] = a2;
  v5 = sub_22088D81C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220500B98(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v28 - v16;
  v18 = OBJC_IVAR____TtC8StocksUI17ForYouFeedTracker_onDeckViewAction;
  swift_beginAccess();
  sub_22052063C(a1 + v18, v17, sub_220500B98);
  v19 = sub_22088916C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) != 1)
  {
    (*(v20 + 32))(a3, v17, v19);
    (*(v20 + 56))(v13, 1, 1, v19);
    swift_beginAccess();
    sub_220744B60(v13, a1 + v18);
    return swift_endAccess();
  }

  sub_220503BCC(v17, sub_220500B98);
  sub_22088D6AC();
  v21 = (*(v6 + 88))(v9, v5);
  if (v21 == *MEMORY[0x277D6E830])
  {
    v22 = MEMORY[0x277D682F8];
LABEL_11:
    v25 = *v22;
    v26 = *(v20 + 104);
    return v26(a3, v25, v19);
  }

  if (v21 == *MEMORY[0x277D6E840] || v21 == *MEMORY[0x277D6E848])
  {
    v22 = MEMORY[0x277D682E8];
    goto LABEL_11;
  }

  if (v21 != *MEMORY[0x277D6E838])
  {
    (*(v20 + 104))(a3, *MEMORY[0x277D682E8], v19);
    return (*(v6 + 8))(v9, v5);
  }

  v27 = sub_22088D69C();
  v26 = *(v20 + 104);
  if (v27)
  {
    v25 = *MEMORY[0x277D682C8];
  }

  else
  {
    v25 = *MEMORY[0x277D682F8];
  }

  return v26(a3, v25, v19);
}

uint64_t sub_22052063C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2205206A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2205206EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220520888()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  return (*(*(*(v3 + 16) + 16) + 8))(v2);
}

uint64_t sub_220520948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2205209B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220520A18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_220520A80(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v34.receiver = v1;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, sel_traitCollectionDidChange_, a1);
  v5 = *&v1[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_forYouFeedViewCoordinator];
  v6 = [v1 traitCollection];
  swift_getObjectType();
  sub_22088D31C();
  v7 = [v6 horizontalSizeClass];
  v8 = v5 + OBJC_IVAR____TtC8StocksUI25ForYouFeedViewCoordinator_horizontalSizeClass;
  *v8 = v7;
  *(v8 + 8) = 0;
  sub_22088867C();
  if ((v33 & 1) == 0 && *(v8 + 8) != 1)
  {
    if (*v8 == 2)
    {
      sub_2205EE35C();
    }

    else if (*v8 == 1)
    {
      sub_2205EE07C();
    }
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v9 = [v1 traitCollection];
  sub_22088D31C();
  swift_unknownObjectRelease();

  v10 = [v1 traitCollection];
  sub_22051DD68(v10);

  v11 = [v1 traitCollection];
  sub_220518D38(v11);

  v12 = sub_220891C4C();
  if (!v12)
  {
    if (qword_281298F98 != -1)
    {
      swift_once();
    }

    sub_22044E3AC(&unk_28128A3B8, v13, type metadata accessor for ForYouFeedViewController);
    sub_220886B3C();
    if (v33 == 1)
    {
      v21 = sub_22044E3AC(&unk_28128A3D0, v20, type metadata accessor for ForYouFeedViewController);
      v22 = MEMORY[0x223D82EA0](ObjectType, v21);
      if (v22)
      {
        v23 = v22;
        swift_getObjectType();
        sub_22088CF2C();
      }

      v24 = [v2 view];
      if (!v24)
      {
        __break(1u);
LABEL_24:
        [*&v2[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_statusBarView] setHidden_];
        sub_22044E3AC(&qword_28128A3F8, v25, type metadata accessor for ForYouFeedViewController);
        sub_22088D0BC();
        v26 = [v2 view];
        if (v26)
        {
          v27 = v26;
          type metadata accessor for Localized();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v29 = [objc_opt_self() bundleForClass_];
          sub_220884CAC();

          v30 = sub_22089132C();

          [v27 setAccessibilityLabel_];

          return;
        }

        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      v31 = *&v1[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_statusBarView];
      [*&v2[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_statusBarView] setHidden_];
      [v31 setNeedsLayout];
      [v31 layoutIfNeeded];
      v24 = [v2 view];
      if (!v24)
      {
LABEL_30:
        __break(1u);
        return;
      }
    }

    v32 = v24;
    [v24 setAccessibilityLabel_];

    return;
  }

  if (qword_281294340 != -1)
  {
    swift_once();
  }

  sub_220891AFC();
  sub_22088A7EC();
  if (qword_281298F98 != -1)
  {
    swift_once();
  }

  sub_22044E3AC(&unk_28128A3B8, v14, type metadata accessor for ForYouFeedViewController);
  sub_220886B3C();
  if (v33 != 1)
  {
    goto LABEL_24;
  }

  v16 = sub_22044E3AC(&unk_28128A3D0, v15, type metadata accessor for ForYouFeedViewController);
  v17 = MEMORY[0x223D82EA0](ObjectType, v16);
  if (v17)
  {
    v18 = v17;
    swift_getObjectType();
    sub_22088CF2C();
  }

  if (sub_22088F0DC())
  {
    sub_22044E3AC(&qword_28128A3F8, v19, type metadata accessor for ForYouFeedViewController);
    sub_22088D0BC();
  }
}

uint64_t sub_220521164()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_styler);
  swift_beginAccess();
  v2 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *v2;
  v5 = *(*v2 + 40);
  v4 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  (*(*(v4 + 16) + 464))(v5);
  v7 = v3[5];
  v6 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  (*(*(v6 + 16) + 88))(v7);
  return sub_22088B98C();
}

uint64_t sub_220521250(uint64_t a1, uint64_t a2)
{
  v126 = a1;
  v3 = sub_2208900AC();
  v116 = *(v3 - 8);
  v117 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v113 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v112 = &v109 - v8;
  v9 = sub_22089030C();
  v119 = *(v9 - 8);
  v120 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v114 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v118 = &v109 - v14;
  sub_2204547E0();
  v115 = v15;
  v125 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v111 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v110 = &v109 - v20;
  sub_220454720();
  v123 = *(v21 - 8);
  v124 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v109 - v27;
  v29 = type metadata accessor for ForYouFeedModel();
  MEMORY[0x28223BE20](v29, v30);
  v122 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v35 = (&v109 - v34);
  MEMORY[0x28223BE20](v36, v37);
  v121 = &v109 - v38;
  MEMORY[0x28223BE20](v39, v40);
  v42 = (&v109 - v41);
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v109 - v45;
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v109 - v49;
  sub_220521E60();
  MEMORY[0x28223BE20](v51 - 8, v52);
  v54 = &v109 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = &v54[*(v55 + 56)];
  sub_2204FF294(v126, v54);
  v57 = a2;
  v58 = v56;
  sub_2204FF294(v57, v56);
  v59 = v54;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v75 = v28;
    v126 = v24;
    v77 = v123;
    v76 = v124;
    v78 = v125;
    if (!EnumCaseMultiPayload)
    {
      sub_2204FF294(v59, v50);
      if (!swift_getEnumCaseMultiPayload())
      {
        v102 = v77;
        v103 = *(v77 + 32);
        v103(v75, v50, v76);
        v104 = v126;
        v103(v126, v58, v76);
        sub_22088698C();
        v105 = MEMORY[0x277D69858];
        sub_2204588D0(&unk_281299030, MEMORY[0x277D69858]);
        sub_2204588D0(&unk_281299040, v105);
        v74 = sub_22088FF5C();
        v106 = *(v102 + 8);
        v106(v104, v76);
        v106(v75, v76);
        v85 = type metadata accessor for ForYouFeedModel;
        goto LABEL_35;
      }

      (*(v77 + 8))(v50, v76);
      goto LABEL_34;
    }

    if (EnumCaseMultiPayload != 1)
    {
      sub_2204FF294(v59, v42);
      v95 = *v42;
      v94 = v42[1];
      v96 = v42[2];
      if (swift_getEnumCaseMultiPayload() != 2)
      {

LABEL_31:

        goto LABEL_34;
      }

      v97 = v58[2];
      if (v95 == *v58 && v94 == v58[1])
      {
      }

      else
      {
        v107 = sub_2208928BC();

        if ((v107 & 1) == 0)
        {

          v74 = 0;
          v85 = type metadata accessor for ForYouFeedModel;
          goto LABEL_35;
        }
      }

      if (v96)
      {
        if (v97)
        {
          sub_22052024C();
          v74 = sub_22088F70C();

          v85 = type metadata accessor for ForYouFeedModel;
          goto LABEL_35;
        }
      }

      else
      {
        v85 = type metadata accessor for ForYouFeedModel;
        if (!v97)
        {
          goto LABEL_27;
        }
      }

      v74 = 0;
      v85 = type metadata accessor for ForYouFeedModel;
      goto LABEL_35;
    }

    sub_2204FF294(v59, v46);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v126 = v59;
      v79 = *(v78 + 32);
      v80 = v110;
      v81 = v115;
      v79(v110, v46, v115);
      v82 = v111;
      v79(v111, v58, v81);
      sub_22089049C();
      v83 = MEMORY[0x277D33620];
      sub_2204588D0(&qword_281296860, MEMORY[0x277D33620]);
      sub_2204588D0(&qword_281296868, v83);
      v74 = sub_22088FF5C();
      v84 = *(v78 + 8);
      v84(v82, v81);
      v84(v80, v81);
      v59 = v126;
      v85 = type metadata accessor for ForYouFeedModel;
      goto LABEL_35;
    }

    (*(v78 + 8))(v46, v115);
LABEL_34:
    v74 = 0;
    v85 = sub_220521E60;
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v86 = v122;
      sub_2204FF294(v54, v122);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        (*(v116 + 8))(v86, v117);
        goto LABEL_34;
      }

      v87 = v54;
      v89 = v116;
      v88 = v117;
      v90 = *(v116 + 32);
      v91 = v112;
      v90(v112, v86, v117);
      v92 = v113;
      v90(v113, v58, v88);
      v74 = sub_22089009C();
      v93 = *(v89 + 8);
      v93(v92, v88);
      v93(v91, v88);
      v59 = v87;
      v85 = type metadata accessor for ForYouFeedModel;
      goto LABEL_35;
    }

    v100 = swift_getEnumCaseMultiPayload();
    v85 = type metadata accessor for ForYouFeedModel;
    if (v100 == 6)
    {
LABEL_27:
      v74 = 1;
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v61 = v121;
    sub_2204FF294(v54, v121);
    v62 = *v61;
    sub_220458918();
    v64 = *(v63 + 48);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v65 = v54;
      v66 = *v58;
      v67 = v119;
      v68 = *(v119 + 32);
      v69 = &v61[v64];
      v70 = v120;
      v68(v118, v69, v120);
      v71 = v114;
      v68(v114, v58 + v64, v70);
      if (v62)
      {
        if (v66)
        {
          sub_22052024C();
          v72 = sub_22088F70C();
          v73 = v118;
          v59 = v65;
          if ((v72 & 1) == 0)
          {

            v74 = 0;
LABEL_52:
            v108 = *(v67 + 8);
            v108(v71, v70);
            v108(v73, v70);
            v85 = type metadata accessor for ForYouFeedModel;
            goto LABEL_35;
          }

LABEL_51:
          v74 = MEMORY[0x223D88470](v73, v71);

          goto LABEL_52;
        }
      }

      else if (!v66)
      {
        v73 = v118;
        v59 = v65;
        goto LABEL_51;
      }

      v74 = 0;
      v73 = v118;
      v59 = v65;
      goto LABEL_52;
    }

    (*(v119 + 8))(&v61[v64], v120);
    goto LABEL_31;
  }

  sub_2204FF294(v54, v35);
  v99 = *v35;
  v98 = v35[1];
  if (swift_getEnumCaseMultiPayload() != 4)
  {

    goto LABEL_34;
  }

  if (v99 == *v58 && v98 == v58[1])
  {
    v74 = 1;
  }

  else
  {
    v74 = sub_2208928BC();
  }

  v85 = type metadata accessor for ForYouFeedModel;
LABEL_35:
  sub_220503C2C(v59, v85);
  return v74 & 1;
}

uint64_t sub_220521DBC()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 464))(v2, v3);
}

id sub_220521E20()
{
  v0 = [objc_opt_self() secondarySystemBackgroundColor];

  return v0;
}

void sub_220521E60()
{
  if (!qword_281293240[0])
  {
    type metadata accessor for ForYouFeedModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_281293240);
    }
  }
}

uint64_t sub_220521F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088F23C();
  v133 = *(v4 - 8);
  v134 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v126 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v125 = &v119 - v9;
  v10 = type metadata accessor for CuratedForYouFeedGroup();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v128 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v127 = (&v119 - v15);
  v16 = sub_22088676C();
  v17 = *(v16 - 8);
  v122 = v16;
  v123 = v17;
  MEMORY[0x28223BE20](v16, v18);
  v120 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220453CD0(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v121 = &v119 - v22;
  sub_220522FA4();
  v24 = v23;
  MEMORY[0x28223BE20](v23, v25);
  v124 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v27, v28);
  v130 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v131 = &v119 - v32;
  v33 = sub_22088685C();
  v135 = *(v33 - 8);
  v136 = v33;
  MEMORY[0x28223BE20](v33, v34);
  v129 = &v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37);
  v132 = &v119 - v38;
  v39 = type metadata accessor for ForYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v119 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v119 - v45;
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v119 - v49;
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v119 - v53;
  sub_22052300C();
  MEMORY[0x28223BE20](v55 - 8, v56);
  v58 = &v119 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = &v58[*(v59 + 56)];
  v61 = a1;
  v62 = v60;
  sub_2204FB25C(v61, v58);
  sub_2204FB25C(a2, v62);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_2204FB25C(v58, v42);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v93 = v133;
        v94 = *(v133 + 32);
        v95 = v125;
        v96 = v42;
        v97 = v134;
        v94(v125, v96, v134);
        v98 = v126;
        v94(v126, v62, v97);
        v90 = sub_22088F21C();
        v99 = *(v93 + 8);
        v99(v98, v97);
        v99(v95, v97);
        v92 = type metadata accessor for ForYouFeedSectionDescriptor;
        goto LABEL_27;
      }

      (*(v133 + 8))(v42, v134);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v91 = swift_getEnumCaseMultiPayload();
      v92 = type metadata accessor for ForYouFeedSectionDescriptor;
      if (v91 == 4)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v106 = swift_getEnumCaseMultiPayload();
      v92 = type metadata accessor for ForYouFeedSectionDescriptor;
      if (v106 == 5)
      {
LABEL_22:
        v90 = 1;
        goto LABEL_27;
      }
    }

LABEL_26:
    v90 = 0;
    v92 = sub_22052300C;
    goto LABEL_27;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_2204FB25C(v58, v54);
    if (!swift_getEnumCaseMultiPayload())
    {
      v108 = MEMORY[0x277D31C50];
      sub_2204B3C8C(v62, &qword_281296C60, MEMORY[0x277D31C50]);
      sub_2204B3C8C(v54, &qword_281296C60, v108);
      v90 = 1;
      v92 = type metadata accessor for ForYouFeedSectionDescriptor;
      goto LABEL_27;
    }

    sub_2204B3C8C(v54, &qword_281296C60, MEMORY[0x277D31C50]);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2204FB25C(v58, v50);
    sub_22045849C();
    v65 = v64;
    v66 = *(v64 + 48);
    v67 = *(v64 + 64);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v127 = v66;
      v128 = v65;
      v133 = v67;
      v68 = v50;
      v69 = v136;
      v70 = *(v135 + 32);
      v71 = v132;
      v70(v132, v50, v136);
      v72 = v129;
      v70(v129, v62, v69);
      v134 = v68;
      v73 = v127;
      v74 = v127 + v68;
      v75 = v131;
      sub_220523070(v74, v131, type metadata accessor for StockViewModel);
      v76 = v73 + v62;
      v77 = v130;
      sub_220523070(v76, v130, type metadata accessor for StockViewModel);
      if (MEMORY[0x223D7E940](v71, v72))
      {
        v78 = *(v27 + 20);
        v79 = v77;
        v80 = *(v24 + 48);
        v81 = MEMORY[0x277D697F8];
        v82 = v124;
        sub_2204FBC98(v75 + v78, v124, &qword_2812990C0, MEMORY[0x277D697F8]);
        v83 = v82;
        sub_2204FBC98(v79 + v78, v82 + v80, &qword_2812990C0, v81);
        v84 = *(v123 + 48);
        v85 = v82;
        v86 = v122;
        if (v84(v85, 1, v122) == 1)
        {
          sub_2204FC284(v79, type metadata accessor for StockViewModel);
          sub_2204FC284(v75, type metadata accessor for StockViewModel);
          v87 = v136;
          v88 = *(v135 + 8);
          v88(v72, v136);
          v88(v132, v87);
          v89 = v124;
          if (v84(v124 + v80, 1, v86) == 1)
          {
            sub_2204B3C8C(v89, &qword_2812990C0, MEMORY[0x277D697F8]);
            v90 = 1;
LABEL_36:
            v114 = MEMORY[0x277D31C50];
            sub_2204B3C8C(v62 + *(v128 + 64), &qword_281296C60, MEMORY[0x277D31C50]);
            sub_2204B3C8C(v134 + v133, &qword_281296C60, v114);
            v92 = type metadata accessor for ForYouFeedSectionDescriptor;
            goto LABEL_27;
          }
        }

        else
        {
          v111 = v121;
          sub_2204FBC98(v83, v121, &qword_2812990C0, MEMORY[0x277D697F8]);
          if (v84(v83 + v80, 1, v86) != 1)
          {
            v115 = v123;
            v116 = v120;
            (*(v123 + 32))(v120, v83 + v80, v86);
            sub_220525D08(&qword_2812990C8, MEMORY[0x277D697F8]);
            v90 = sub_2208912FC();
            v127 = *(v115 + 8);
            (v127)(v116, v86);
            sub_2204FC284(v130, type metadata accessor for StockViewModel);
            sub_2204FC284(v131, type metadata accessor for StockViewModel);
            v117 = v136;
            v118 = *(v135 + 8);
            v118(v72, v136);
            v118(v132, v117);
            (v127)(v111, v86);
            sub_2204B3C8C(v124, &qword_2812990C0, MEMORY[0x277D697F8]);
            goto LABEL_36;
          }

          sub_2204FC284(v130, type metadata accessor for StockViewModel);
          sub_2204FC284(v131, type metadata accessor for StockViewModel);
          v112 = v136;
          v113 = *(v135 + 8);
          v113(v72, v136);
          v113(v132, v112);
          v89 = v124;
          (*(v123 + 8))(v111, v86);
        }

        sub_2204FC284(v89, sub_220522FA4);
      }

      else
      {
        sub_2204FC284(v77, type metadata accessor for StockViewModel);
        sub_2204FC284(v75, type metadata accessor for StockViewModel);
        v109 = v136;
        v110 = *(v135 + 8);
        v110(v72, v136);
        v110(v71, v109);
      }

      v90 = 0;
      goto LABEL_36;
    }

    sub_2204B3C8C(&v50[v67], &qword_281296C60, MEMORY[0x277D31C50]);
    sub_2204FC284(v66 + v50, type metadata accessor for StockViewModel);
    (*(v135 + 8))(v50, v136);
    goto LABEL_26;
  }

  sub_2204FB25C(v58, v46);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_2204FC284(v46, type metadata accessor for CuratedForYouFeedGroup);
    goto LABEL_26;
  }

  v100 = v127;
  sub_220523070(v46, v127, type metadata accessor for CuratedForYouFeedGroup);
  v101 = v128;
  sub_220523070(v62, v128, type metadata accessor for CuratedForYouFeedGroup);
  v102 = sub_22088F2EC();
  v104 = v103;
  if (v102 == sub_22088F2EC() && v104 == v105)
  {
    v90 = 1;
  }

  else
  {
    v90 = sub_2208928BC();
  }

  sub_2204FC284(v101, type metadata accessor for CuratedForYouFeedGroup);
  sub_2204FC284(v100, type metadata accessor for CuratedForYouFeedGroup);
  v92 = type metadata accessor for ForYouFeedSectionDescriptor;
LABEL_27:
  sub_2204FC284(v58, v92);
  return v90 & 1;
}

uint64_t sub_220522C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_220888B7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D6CD38];
  sub_2204D4E50(0, &unk_28127E120, MEMORY[0x277D6CD38], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_220899920;
  sub_220888B5C();
  sub_220888B6C();
  v13[1] = v10;
  sub_22044E3AC(&qword_281298740, 255, MEMORY[0x277D6CD38]);
  sub_2204D4E50(0, &qword_28127EAB0, v9, MEMORY[0x277D83940]);
  sub_220522F1C();
  sub_2208923FC();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_2204A80F0(a1, a2);
  sub_22088840C();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_220522EDC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_220522F1C()
{
  result = qword_28127EAA0;
  if (!qword_28127EAA0)
  {
    sub_2204D4E50(255, &qword_28127EAB0, MEMORY[0x277D6CD38], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127EAA0);
  }

  return result;
}

void sub_220522FA4()
{
  if (!qword_2812990A8)
  {
    sub_22045987C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2812990A8);
    }
  }
}

void sub_22052300C()
{
  if (!qword_2812883D0[0])
  {
    type metadata accessor for ForYouFeedSectionDescriptor();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_2812883D0);
    }
  }
}

uint64_t sub_220523070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2205230D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220523140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2205231A8()
{
  sub_2208929EC();
  MEMORY[0x223D8ABA0](0);
  return sub_220892A2C();
}

_WORD *storeEnumTagSinglePayload for NewsStockFeedGroupConfigData.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_220523264(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(*v3 + 40);
  v6 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((*v3 + 16), v5);
  return a3(v5, v6) & 1;
}

uint64_t sub_220523318@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v79 = sub_22088D83C();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v6);
  v76 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *a2;
  v82 = *(a2 + 24);
  v75 = *(a2 + 40);
  v8 = v74 - v82 - v75;
  v81 = *&v3;
  v10 = v3[5];
  v9 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v10);
  v72 = COERCE_DOUBLE(type metadata accessor for ForYouTitleViewLayoutOptions());
  v11 = *(a2 + *(*&v72 + 32));
  v12 = *(v9 + 8);
  v13 = *(v12 + 8);
  v105[3] = v10;
  v105[4] = v9;
  __swift_allocate_boxed_opaque_existential_1(v105);
  v13(v11, v10, v12);
  v14 = (*(v9 + 24))(*a1, a1[1], v10, v9);
  v15 = (*(v9 + 32))(a1[2], a1[3], a1[4], v10, v9);
  v73 = v8;
  [v14 boundingRectWithSize:33 options:0 context:{v8, 1.79769313e308}];
  v17 = v16;
  v69 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v15 boundingRectWithSize:32 options:0 context:{v8, 1.79769313e308}];
  v25 = v24;
  v66 = v24;
  v27 = v26;
  v65 = v26;
  v29 = v28;
  v64 = v28;
  v31 = v30;
  v63 = v30;
  sub_2205245A0(a2, *&v81);
  v32 = *&v72;
  v81 = v33 + *(a2 + *(*&v72 + 56));
  sub_22088A26C();
  sub_22088A23C();
  v71 = v34;
  v80 = v35;
  v106.origin.x = v17;
  v106.origin.y = v19;
  v106.size.width = v21;
  v106.size.height = v23;
  Height = CGRectGetHeight(v106);
  v107.origin.x = v25;
  v107.origin.y = v27;
  v107.size.width = v29;
  v107.size.height = v31;
  v37 = Height + CGRectGetHeight(v107);
  if (v37 <= v80)
  {
    v37 = v80;
  }

  v38 = *(a2 + v32[12]);
  v39 = v81;
  v40 = ceil(*(a2 + v32[13]) + v38 + v81 + v37);
  v41 = v69;
  v108.origin.x = v69;
  v108.origin.y = v19;
  v108.size.width = v21;
  v108.size.height = v23;
  Width = CGRectGetWidth(v108);
  v70 = Width;
  v109.origin.x = v41;
  v109.origin.y = v19;
  v109.size.width = v21;
  v109.size.height = v23;
  v110.size.height = ceil(CGRectGetHeight(v109));
  v69 = v110.size.height;
  v110.origin.x = v82;
  v110.origin.y = v39;
  v110.size.width = Width;
  v68 = ceil(v38 + CGRectGetMaxY(v110));
  v43 = v66;
  v111.origin.x = v66;
  v44 = v65;
  v111.origin.y = v65;
  v45 = v64;
  v111.size.width = v64;
  v46 = v63;
  v111.size.height = v63;
  v67 = CGRectGetWidth(v111);
  v112.origin.x = v43;
  v112.origin.y = v44;
  v112.size.width = v45;
  v112.size.height = v46;
  v66 = ceil(CGRectGetHeight(v112));
  v72 = 1.0 / *(a2 + v32[7]);
  v47 = v72;
  v113.origin.x = 0.0;
  v113.origin.y = 0.0;
  v48 = v74;
  v113.size.width = v74;
  v113.size.height = v40;
  v65 = CGRectGetHeight(v113) - v47;
  v49 = v71;
  v75 = v48 - v71 - v75;
  v114.origin.x = 0.0;
  v114.origin.y = 0.0;
  v114.size.width = v48;
  v114.size.height = v40;
  MaxY = CGRectGetMaxY(v114);
  v115.origin.x = 0.0;
  v115.origin.y = 0.0;
  v115.size.width = v48;
  v115.size.height = v40;
  v51 = CGRectGetHeight(v115);
  v52 = v80;
  v64 = MaxY + (v80 + v51 + 6.0) * -0.5;
  sub_220891E9C();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = v76;
  sub_220524864(a2, v76);
  v83 = v54;
  v84 = v56;
  v85 = v58;
  v86 = v60;
  v87 = v82;
  v88 = v81;
  v89 = v70;
  v90 = v69;
  v91 = v82;
  v92 = v68;
  v93 = v67;
  v94 = v66;
  v95 = a2;
  v96 = v82;
  v97 = v65;
  v98 = v73;
  v99 = v72;
  v100 = v61;
  v101 = v75;
  v102 = v64;
  v103 = v49;
  v104 = v52;
  type metadata accessor for ForYouTitleViewLayoutAttributes();
  sub_22088C18C();

  (*(v78 + 8))(v61, v79);
  return __swift_destroy_boxed_opaque_existential_1(v105);
}

uint64_t sub_2205239C4()
{
  v1 = v0;
  v2 = *v0;
  v28 = sub_220886A4C();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_220885D4C();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088BF1C();
  v9 = *(v1 + *(*v1 + 128));
  sub_220523ED0(v29);
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v24 = *(v2 + 80);
  v11[2] = v24;
  v12 = *(v2 + 88);
  v11[3] = v12;
  v11[4] = v10;
  sub_22088EBDC();

  swift_beginAccess();
  sub_22088EB6C();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_watchlistManager), *(v9 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_watchlistManager + 24));
  sub_2208863EC();
  sub_2208869CC();
  (*(v26 + 8))(v5, v28);
  v13 = v24;
  v14 = (*(v12 + 40))(v8, v24, v12);
  (*(v25 + 8))(v8, v27);
  v29[0] = v14;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = v12;
  v16[4] = v15;
  sub_220524414();
  sub_220488378(&qword_281297D18, sub_220524414);

  sub_22088B6DC();

  v17 = *(v1 + *(*v1 + 160));
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 2) = v13;
  *(v19 + 3) = v12;
  *(v19 + 4) = v18;
  v20 = (v17 + qword_27CF578E0);
  v21 = *(v17 + qword_27CF578E0);
  *v20 = sub_22071B8C0;
  v20[1] = v19;
  return sub_2204DA45C(v21);
}

uint64_t sub_220523E54()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_220523E8C()
{

  return swift_deallocObject();
}

uint64_t sub_220523ED0@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v33 = MEMORY[0x277D85248];
  sub_22044DA5C(0, &qword_28127E7D0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v29 = &v29 - v4;
  sub_2204753E0();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22049CD4C();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22049CDFC();
  v18 = *(v17 - 8);
  v30 = v17;
  v31 = v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_watchlistManager), *(v1 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_watchlistManager + 24));
  sub_22088600C();
  swift_getKeyPath();
  sub_22044DD10(&qword_281296E10, sub_2204753E0);
  sub_22088EB9C();

  (*(v7 + 8))(v10, v6);
  sub_22044DD10(&qword_281296E40, sub_22049CD4C);
  sub_22044DD10(&qword_2812992E8, MEMORY[0x277D69488]);
  sub_22088EBCC();
  (*(v13 + 8))(v16, v12);
  sub_22046D5B4();
  v22 = sub_220891D0C();
  v34 = v22;
  v23 = sub_220891CEC();
  v24 = v29;
  (*(*(v23 - 8) + 56))(v29, 1, 1, v23);
  sub_22049CE94(0);
  v25 = v32;
  v32[3] = v26;
  v25[4] = sub_22044DD10(&qword_281296DD0, sub_22049CE94);
  __swift_allocate_boxed_opaque_existential_1(v25);
  sub_22044DD10(&qword_281296E20, sub_22049CDFC);
  sub_22044DD10(&qword_28127E7C8, sub_22046D5B4);
  v27 = v30;
  sub_22088EBAC();
  sub_22047EC24(v24, &qword_28127E7D0, v33);

  return (*(v31 + 8))(v21, v27);
}

uint64_t sub_2205243A8()
{
  sub_220524414();
  swift_allocObject();
  sub_220524524();
  return sub_22088B66C();
}

void sub_220524414()
{
  if (!qword_281297D10)
  {
    type metadata accessor for ForYouFeedSectionDescriptor();
    type metadata accessor for ForYouFeedModel();
    sub_22044E16C(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
    sub_22044E16C(&unk_281293320, type metadata accessor for ForYouFeedModel);
    v0 = sub_22088B67C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297D10);
    }
  }
}

unint64_t sub_220524524()
{
  result = qword_2812829C8;
  if (!qword_2812829C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812829C8);
  }

  return result;
}

void sub_2205245A0(_OWORD *a1, uint64_t a2)
{
  v4 = *(a1 + *(type metadata accessor for ForYouTitleViewLayoutOptions() + 32));
  v5 = [v4 horizontalSizeClass];
  v6 = [v4 verticalSizeClass];
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      if (v6 == 2)
      {
        v7 = *__swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
        v8 = *MEMORY[0x277D768C8];
        v9 = *(MEMORY[0x277D768C8] + 16);
        v19[0] = *a1;
        v19[1] = v8;
        v19[2] = v9;
        v20 = v4;
        __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
        v10 = v4;
        sub_2204A52C8(v19, v17);
        CGRectGetMinY(v18);
        __swift_project_boxed_opaque_existential_1(v7 + 7, v7[10]);
        if (qword_2812946D0 != -1)
        {
          swift_once();
        }

        v12 = qword_2812946D8;
        v11 = unk_2812946E0;

        v13 = sub_2204A5AE0(v12, v11, v10);

        v14 = sub_220891D8C();

        [v14 ascender];
        [v14 capHeight];
        sub_2204A9180(v17);

        v15 = sub_220891D8C();
        [v15 ascender];

        v16 = sub_220891D8C();
        [v16 capHeight];
      }
    }

    else
    {
      sub_22089267C();
      __break(1u);
    }
  }
}

unint64_t sub_220524810()
{
  result = qword_2812829C0;
  if (!qword_2812829C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812829C0);
  }

  return result;
}

uint64_t sub_220524864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_22088F0DC())
  {
    goto LABEL_7;
  }

  v4 = type metadata accessor for ForYouTitleViewLayoutOptions();
  v5 = [*(a1 + *(v4 + 32)) horizontalSizeClass];
  if (!v5 || v5 == 2)
  {
    goto LABEL_7;
  }

  if (v5 != 1)
  {
    result = sub_22089267C();
    __break(1u);
    return result;
  }

  if (*(a1 + *(v4 + 40)) != 1 || (sub_220891DFC() & 1) == 0)
  {
LABEL_7:
    v7 = MEMORY[0x277D6E860];
  }

  else
  {
    v7 = MEMORY[0x277D6E868];
  }

  v8 = *v7;
  v9 = sub_22088D83C();
  v10 = *(*(v9 - 8) + 104);

  return v10(a2, v8, v9);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2205249B8(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v33 = a3;
  v34 = a2;
  sub_22051D2D0(0, &qword_281297840, MEMORY[0x277D6DF88]);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v29 - v5;
  sub_2204FA2D0();
  v8 = v7;
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205252E0();
  MEMORY[0x28223BE20](v12 - 8, v13);
  sub_22051D2D0(0, &qword_281296EA0, MEMORY[0x277D6EC60]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v29 - v18;
  v20 = sub_22044E1B4(&qword_281297E78, sub_2204FA2D0);
  v21 = sub_22044E1B4(&qword_281297E80, sub_2204FA2D0);
  MEMORY[0x223D80A10](MEMORY[0x277D84F90], v8, v20, v21);
  type metadata accessor for ForYouFeedSectionDescriptor();
  type metadata accessor for ForYouFeedModel();
  sub_22044E1B4(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
  sub_22044E1B4(&unk_281293320, type metadata accessor for ForYouFeedModel);
  sub_22088E7CC();
  sub_2205253E0(0, v11);
  sub_22088E72C();
  (*(v30 + 8))(v11, v8);
  sub_220525DD8();
  v23 = *(v22 + 48);
  (*(v16 + 16))(v6, v19, v15);
  v24 = *MEMORY[0x277D6D868];
  v25 = sub_22088B64C();
  (*(*(v25 - 8) + 104))(&v6[v23], v24, v25);
  v27 = v31;
  v26 = v32;
  (*(v31 + 104))(v6, *MEMORY[0x277D6DF70], v32);
  v34(v6);
  (*(v27 + 8))(v6, v26);
  return (*(v16 + 8))(v19, v15);
}

double sub_220524E6C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v81 = a2;
  v82 = a15;
  v80 = a14;
  v79 = a13;
  v78 = a12;
  v69 = a4;
  v68 = a5;
  v67 = a6;
  v66 = a7;
  v17 = sub_22088ABEC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *MEMORY[0x277D6D320];
  v23 = *(v18 + 104);
  v23(v21, v22, v17);
  sub_22088ABDC();
  v76 = v25;
  v77 = v24;
  v74 = v27;
  v75 = v26;
  v28 = *(v18 + 8);
  v28(v21, v17);
  v23(v21, v22, v17);
  sub_22088ABDC();
  v72 = v30;
  v73 = v29;
  v70 = v32;
  v71 = v31;
  v28(v21, v17);
  v23(v21, v22, v17);
  sub_22088ABDC();
  v69 = v33;
  v68 = v34;
  v67 = v35;
  v66 = v36;
  v28(v21, v17);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  if (*(a1 + *(type metadata accessor for ForYouTitleViewLayoutOptions() + 44)) == 1)
  {
    v23(v21, v22, v17);
    sub_22088ABDC();
    v37 = v41;
    v38 = v42;
    v39 = v43;
    v40 = v44;
    v28(v21, v17);
  }

  v45 = type metadata accessor for ForYouTitleViewLayoutAttributes();
  v65 = v28;
  v46 = v23;
  v47 = *(v45 + 32);
  v48 = sub_22088D83C();
  (*(*(v48 - 8) + 16))(a3 + v47, v81, v48);
  v46(v21, v22, v17);
  sub_22088ABDC();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v65(v21, v17);
  v57 = v76;
  *a3 = v77;
  *(a3 + 8) = v57;
  v58 = v74;
  *(a3 + 16) = v75;
  *(a3 + 24) = v58;
  v59 = v72;
  *(a3 + 32) = v73;
  *(a3 + 40) = v59;
  v60 = v70;
  *(a3 + 48) = v71;
  *(a3 + 56) = v60;
  v61 = v68;
  *(a3 + 64) = v69;
  *(a3 + 72) = v61;
  result = v66;
  *(a3 + 80) = v67;
  *(a3 + 88) = result;
  *(a3 + 96) = v37;
  *(a3 + 104) = v38;
  *(a3 + 112) = v39;
  *(a3 + 120) = v40;
  v63 = (a3 + *(v45 + 36));
  *v63 = v50;
  v63[1] = v52;
  v63[2] = v54;
  v63[3] = v56;
  return result;
}

void sub_2205252E0()
{
  if (!qword_2812987A8)
  {
    sub_2204FA2D0();
    sub_22044E1B4(&qword_281297E78, sub_2204FA2D0);
    sub_22044E1B4(&qword_281297E80, sub_2204FA2D0);
    v0 = sub_2208888CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2812987A8);
    }
  }
}

uint64_t sub_2205253E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v36 = a2;
  v35 = type metadata accessor for ForYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v35, v2);
  v34 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22088519C();
  v4 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ForYouFeedModel();
  MEMORY[0x28223BE20](v30, v8);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22051D97C();
  v12 = v11;
  v31 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22051DA14();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v19);
  v29 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v29 - v23;
  sub_2204548C0(&qword_281297F68, sub_22051D97C);
  sub_2204548C0(&qword_281297F70, sub_22051D97C);
  sub_2208888BC();
  sub_22088518C();
  v25 = sub_22088517C();
  v27 = v26;
  (*(v4 + 8))(v7, v32);
  *v10 = v25;
  v10[1] = v27;
  v10[2] = v33;
  swift_storeEnumTagMultiPayload();
  sub_2204548C0(&unk_281293320, type metadata accessor for ForYouFeedModel);

  sub_22088AD7C();
  sub_2208888AC();
  (*(v31 + 8))(v15, v12);
  swift_storeEnumTagMultiPayload();
  (*(v18 + 16))(v29, v24, v17);
  sub_2204548C0(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
  sub_22088B29C();

  return (*(v18 + 8))(v24, v17);
}

uint64_t sub_220525840@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22088FD8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220505FF8(v2, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220706928(v12);
    v13 = *MEMORY[0x277D6D2D8];
    v14 = sub_22088AA7C();
    return (*(*(v14 - 8) + 104))(a1, v13, v14);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_22088FD2C();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_2205259F0()
{
  v1 = v0;
  v2 = type metadata accessor for ForYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v2, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FB25C(v1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      sub_2204FC284(v5, type metadata accessor for ForYouFeedSectionDescriptor);
    }

    return sub_22088F89C();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_22045849C();
        v8 = *(v7 + 48);
        sub_2204B3C8C(&v5[*(v7 + 64)], &qword_281296C60, MEMORY[0x277D31C50]);
        sub_2204FC284(&v5[v8], type metadata accessor for StockViewModel);
        v9 = sub_22088685C();
        (*(*(v9 - 8) + 8))(v5, v9);
      }

      else
      {
        sub_2204FC284(v5, type metadata accessor for ForYouFeedSectionDescriptor);
      }
    }

    else
    {
      sub_2204B3C8C(v5, &qword_281296C60, MEMORY[0x277D31C50]);
    }

    v11 = MEMORY[0x277D322A0];
    sub_220453CD0(0, &qword_28127DFD0, MEMORY[0x277D322A0], MEMORY[0x277D84560]);
    sub_22088F8CC();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_220899920;
    sub_22088F8AC();
    sub_22088F8BC();
    v13[1] = v12;
    sub_220525D08(&qword_281296B08, MEMORY[0x277D322A0]);
    sub_220453CD0(0, &qword_28127EA48, v11, MEMORY[0x277D83940]);
    sub_220525D50();
    return sub_2208923FC();
  }
}

uint64_t sub_220525D08(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_220525D50()
{
  result = qword_28127EA40;
  if (!qword_28127EA40)
  {
    sub_220453C6C(255, &qword_28127EA48, MEMORY[0x277D322A0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127EA40);
  }

  return result;
}

void sub_220525DD8()
{
  if (!qword_281296ED0)
  {
    sub_22051D2D0(255, &qword_281296EA0, MEMORY[0x277D6EC60]);
    sub_22088B64C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281296ED0);
    }
  }
}

uint64_t sub_220525E68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ForYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FB25C(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      v16 = *MEMORY[0x277D2D3A0];
      v17 = sub_22088ECBC();
      return (*(*(v17 - 8) + 104))(a1, v16, v17);
    }

    v20 = MEMORY[0x277D2D398];
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v18 = *MEMORY[0x277D2D3C8];
      v19 = sub_22088ECBC();
      (*(*(v19 - 8) + 104))(a1, v18, v19);
      return sub_2204B3C8C(v7, &qword_281296C60, MEMORY[0x277D31C50]);
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_22045849C();
      v10 = *(v9 + 48);
      v11 = *(v9 + 64);
      v12 = *MEMORY[0x277D2D3B0];
      v13 = sub_22088ECBC();
      (*(*(v13 - 8) + 104))(a1, v12, v13);
      sub_2204B3C8C(&v7[v11], &qword_281296C60, MEMORY[0x277D31C50]);
      sub_2204FC284(&v7[v10], type metadata accessor for StockViewModel);
      v14 = sub_22088685C();
      return (*(*(v14 - 8) + 8))(v7, v14);
    }

    v20 = MEMORY[0x277D2D3C8];
  }

  v21 = *v20;
  v22 = sub_22088ECBC();
  (*(*(v22 - 8) + 104))(a1, v21, v22);
  return sub_2204FC284(v7, type metadata accessor for ForYouFeedSectionDescriptor);
}

uint64_t sub_2205261F0(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v31 = a2;
  sub_2204EECD0();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205045B0();
  v29 = v10;
  v32 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v34 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204EF5C8();
  sub_2204BC2F4(&qword_281297E18, 255, sub_2204EF5C8);
  v13 = sub_22089197C();
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v37 = MEMORY[0x277D84F90];
    sub_22070CD4C(0, v13 & ~(v13 >> 63), 0);
    v35 = v37;
    sub_22089193C();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v15 = v6;
      v16 = 0;
      v27 = (v15 + 16);
      v28 = (v15 + 8);
      v24[1] = v32 + 32;
      v25 = v13;
      v26 = v9;
      while (!__OFADD__(v16, 1))
      {
        v33 = v16 + 1;
        v17 = sub_2208919BC();
        (*v27)(v9);
        v17(v36, 0);
        v30(v9);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v18 = v9;
        v19 = v5;
        (*v28)(v18, v5);
        v20 = v35;
        v37 = v35;
        v22 = *(v35 + 16);
        v21 = *(v35 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_22070CD4C(v21 > 1, v22 + 1, 1);
          v20 = v37;
        }

        *(v20 + 16) = v22 + 1;
        v23 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v35 = v20;
        (*(v32 + 32))(v20 + v23 + *(v32 + 72) * v22, v34, v29);
        sub_2208919AC();
        ++v16;
        v5 = v19;
        v9 = v26;
        if (v33 == v25)
        {
          return v35;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v28)(v9, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_22052658C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TickerLayoutModel();
  MEMORY[0x28223BE20](v5, v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TickerViewLayoutOptions();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TickerModel();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204EECD0();
  sub_22088AD8C();
  sub_220483A44();
  sub_22050381C(&v20[*(v21 + 48)], v16);
  v22 = sub_22088C32C();
  (*(*(v22 - 8) + 16))(v12, a2, v22);
  __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  sub_2205268BC(v16, v12, v31);
  sub_22048452C();
  v24 = &v8[*(v23 + 48)];
  sub_220527BCC(v16, v8);
  v25 = v31[9];
  *(v24 + 8) = v31[8];
  *(v24 + 9) = v25;
  *(v24 + 20) = v32;
  v26 = v31[5];
  *(v24 + 4) = v31[4];
  *(v24 + 5) = v26;
  v27 = v31[7];
  *(v24 + 6) = v31[6];
  *(v24 + 7) = v27;
  v28 = v31[1];
  *v24 = v31[0];
  *(v24 + 1) = v28;
  v29 = v31[3];
  *(v24 + 2) = v31[2];
  *(v24 + 3) = v29;
  sub_2204847CC(qword_2812910F0, type metadata accessor for TickerLayoutModel);
  sub_22088BC2C();
  sub_220527C30(v12, type metadata accessor for TickerViewLayoutOptions);
  return sub_220527C30(v16, type metadata accessor for StockViewModel);
}

uint64_t type metadata accessor for TickerViewLayoutOptions()
{
  result = qword_28128AA40;
  if (!qword_28128AA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2205268BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_22045443C(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v139 = &v128 - v8;
  v9 = type metadata accessor for StockSparklineViewModel(0);
  v137 = *(v9 - 8);
  v138 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v129 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v134 = COERCE_DOUBLE(sub_220885D4C());
  v12 = *(v134 - 8);
  MEMORY[0x28223BE20](v134, v13);
  v15 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = COERCE_DOUBLE(sub_22088699C());
  v17 = *(v16 - 8);
  v130 = *&v16;
  v131 = v17;
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x277D697F8];
  sub_22045443C(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v128 - v24;
  v140 = a2;
  sub_22088C21C();
  v27 = v26;
  v143 = type metadata accessor for StockViewModel();
  v144 = a1;
  sub_2204B2690(a1 + v143[5], v25, &qword_2812990C0, v21);
  v28 = sub_22088676C();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v25, 1, v28) == 1)
  {
    sub_2204B37D0(v25, &qword_2812990C0, MEMORY[0x277D697F8]);
    LODWORD(v135) = 0;
    LODWORD(v141) = 1;
  }

  else
  {
    v30 = COERCE_DOUBLE(sub_22088666C());
    LODWORD(v141) = v31;
    (*(v29 + 8))(v25, v28);
    LODWORD(v135) = v30 < 0.0;
  }

  v32 = v142;
  __swift_project_boxed_opaque_existential_1(v142 + 2, v142[5]);
  v33 = v144;
  v34 = sub_22088684C();
  v136 = sub_220500610(v34, v35);

  v133 = COERCE_DOUBLE(__swift_project_boxed_opaque_existential_1(v32 + 2, v32[5]));
  v36 = v33 + v143[7];
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FC0 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  v37 = *v36;
  v38 = *(v36 + 8);
  v132 = *v36;
  if (v38)
  {
    goto LABEL_20;
  }

  v39 = v37;
  if ((v156 & 1) == 0)
  {
    goto LABEL_15;
  }

  v40 = type metadata accessor for PriceViewModel();
  v41 = v130;
  v42 = v131;
  (*(*&v131 + 16))(v20, v36 + *(v40 + 40), COERCE_CGFLOAT(*&v130));
  v43 = (*(*&v42 + 88))(v20, COERCE_CGFLOAT(*&v41));
  v44 = 2;
  if (v43 != *MEMORY[0x277D69898] && v43 != *MEMORY[0x277D698A0] && v43 != *MEMORY[0x277D69870] && v43 != *MEMORY[0x277D69888] && v43 != *MEMORY[0x277D69878] && v43 != *MEMORY[0x277D69890])
  {
    if (v43 == *MEMORY[0x277D69880])
    {
LABEL_15:
      v44 = 0;
      goto LABEL_16;
    }

    if (v43 != *MEMORY[0x277D69868])
    {
      (*(*&v131 + 8))(v20, COERCE_CGFLOAT(*&v41));
    }

    v44 = 2;
  }

LABEL_16:
  if (qword_281294078 != -1)
  {
    v127 = v44;
    swift_once();
    v44 = v127;
  }

  v45 = sub_2204BD7B8(*(v36 + 48), *(v36 + 56), 5, 1, v44, v39);
  if (v46)
  {
    v47 = v45;
    v48 = v46;
    goto LABEL_21;
  }

LABEL_20:
  v47 = *(v36 + 64);
  v48 = *(v36 + 72);

LABEL_21:
  v49 = sub_220500958(v47, v48);

  __swift_project_boxed_opaque_existential_1(v142 + 2, v142[5]);
  v50 = v134;
  (*(v12 + 16))(v15, v144 + v143[8], v134);
  v51 = (*(v12 + 88))(v15, v50);
  if (v51 == *MEMORY[0x277D69480])
  {
    if (*(v36 + 24))
    {
      goto LABEL_45;
    }

    v52 = v132 >= 5.0;
    if (v132 == 0.0)
    {
      v52 = 1;
    }

    v53 = sub_2204DBC04(v52 & ~v38, *(v36 + 16));
    if (!v54)
    {
      goto LABEL_45;
    }

LABEL_47:
    v65 = v53;
    v67 = v54;
    goto LABEL_48;
  }

  if (v51 == *MEMORY[0x277D69468])
  {
    if (v38 & 1) != 0 || (*(v36 + 24))
    {
      goto LABEL_45;
    }

    v55 = *(v36 + 16);
    v56 = v132 - v55;
    v57 = v55 / (v132 - v55);
    if (v56 <= 0.0)
    {
      v58 = 0.0;
    }

    else
    {
      v58 = v57;
    }

    if (qword_27CF55AB8 == -1)
    {
      goto LABEL_43;
    }

LABEL_62:
    swift_once();
    goto LABEL_43;
  }

  if (v51 != *MEMORY[0x277D69478])
  {
    sub_2208928AC();
    __break(1u);
    return;
  }

  type metadata accessor for PriceViewModel();
  if ((sub_2208857CC() & 1) == 0)
  {
    v53 = sub_220691100(0);
    goto LABEL_47;
  }

  if (v38 & 1) != 0 || (*(v36 + 24))
  {
LABEL_45:
    v65 = *(v36 + 64);
    v67 = *(v36 + 72);

    goto LABEL_48;
  }

  v59 = *(v36 + 16);
  v60 = v132 - v59;
  v61 = v59 / (v132 - v59);
  if (v60 <= 0.0)
  {
    v58 = 0.0;
  }

  else
  {
    v58 = v61;
  }

  if (qword_27CF55AB8 != -1)
  {
    goto LABEL_62;
  }

LABEL_43:
  v62 = qword_27CF6D008;
  v63 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v64 = [v62 stringFromNumber_];

  if (!v64)
  {
    goto LABEL_45;
  }

  v65 = sub_22089136C();
  v67 = v66;

LABEL_48:
  if (LOBYTE(v141))
  {
    v68 = 2;
  }

  else
  {
    v68 = LOBYTE(v135);
  }

  v69 = sub_220500BCC(v65, v67, v68);

  v70 = sub_2205275D8();

  [v49 boundingRectWithSize:0 options:0 context:{1.79769313e308, v27}];
  v131 = v71;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  [v70 boundingRectWithSize:0 options:0 context:{1.79769313e308, v27}];
  v134 = v79;
  v135 = v78;
  v132 = v81;
  v133 = *&v80;
  v82 = v136;
  [v136 boundingRectWithSize:0 options:0 context:{1.79769313e308, v27}];
  x = v167.origin.x;
  y = v167.origin.y;
  width = v167.size.width;
  height = v167.size.height;
  v87 = CGRectGetWidth(v167);
  v141 = v87;
  v168.origin.x = x;
  v168.origin.y = y;
  v168.size.width = width;
  v168.size.height = height;
  v169.size.height = CGRectGetHeight(v168);
  v130 = v169.size.height;
  v169.origin.x = 12.0;
  v169.origin.y = 0.0;
  v169.size.width = v87;
  MaxY = CGRectGetMaxY(v169);
  v89 = v131;
  v170.origin.x = v131;
  v170.origin.y = v73;
  v170.size.width = v75;
  v170.size.height = v77;
  v90 = CGRectGetWidth(v170);
  v171.origin.x = v89;
  v171.origin.y = v73;
  v171.size.width = v75;
  v171.size.height = v77;
  v91 = CGRectGetHeight(v171);
  v172.origin.x = 12.0;
  v172.origin.y = MaxY;
  v172.size.width = v90;
  v172.size.height = v91;
  v92 = CGRectGetMaxY(v172);
  v94 = *&v134;
  v93 = v135;
  v173.origin.x = v135;
  *&v173.origin.y = v134;
  v96 = v132;
  v95 = v133;
  v173.size.width = v133;
  v173.size.height = v132;
  v131 = CGRectGetWidth(v173);
  v174.origin.x = v93;
  v174.origin.y = v94;
  v174.size.width = v95;
  v174.size.height = v96;
  v97 = CGRectGetHeight(v174);
  v175.origin.x = 12.0;
  v175.origin.y = 0.0;
  v98 = v141;
  v175.size.width = v141;
  v99 = v130;
  v175.size.height = v130;
  MaxX = CGRectGetMaxX(v175);
  v176.origin.x = 12.0;
  *&v134 = v90;
  v135 = MaxY;
  v176.origin.y = MaxY;
  v176.size.width = v90;
  v133 = v91;
  v176.size.height = v91;
  v101 = CGRectGetMaxX(v176);
  v177.origin.x = 12.0;
  v177.origin.y = v92;
  v102 = v131;
  v177.size.width = v131;
  v177.size.height = v97;
  v103 = CGRectGetMaxX(v177);
  if (v101 > v103)
  {
    v103 = v101;
  }

  if (MaxX > v103)
  {
    v103 = MaxX;
  }

  v104 = v103 + 14.0;
  v178.origin.x = 12.0;
  v178.origin.y = 0.0;
  v178.size.width = v98;
  v178.size.height = v99;
  MinY = CGRectGetMinY(v178);
  v179.origin.x = 12.0;
  v132 = v92;
  v179.origin.y = v92;
  v179.size.width = v102;
  v179.size.height = v97;
  v106 = CGRectGetMaxY(v179);
  v180.origin.x = 12.0;
  v180.origin.y = 0.0;
  v180.size.width = v98;
  v107 = v99;
  v180.size.height = v99;
  v108 = MinY + (v106 - CGRectGetMinY(v180) + -28.0) * 0.5;
  v109 = v104;
  v181.size.width = 64.0;
  v181.size.height = 28.0;
  v181.origin.x = v104;
  v181.origin.y = v108;
  CGRectGetMaxX(v181);
  sub_22088C21C();
  v111 = v110;
  v112 = v139;
  sub_2204B2690(v144 + v143[6], v139, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  if ((*(v137 + 48))(v112, 1, v138) == 1)
  {
    v113 = sub_2204B37D0(v112, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
    v115 = 1;
  }

  else
  {
    v116 = v112;
    v117 = v129;
    sub_2204C31E8(v116, v129);
    sub_22088C1FC();
    v118 = __swift_project_boxed_opaque_existential_1(v142 + 7, v142[10]);
    v115 = sub_2204C324C(v117, *v118, 64.0, 28.0);
    v113 = sub_2204DE244(v117);
  }

  MEMORY[0x28223BE20](v113, v114);
  *(&v128 - 22) = 0;
  *(&v128 - 21) = 0;
  *(&v128 - 20) = v119;
  *(&v128 - 19) = v111;
  *(&v128 - 9) = xmmword_22089ACB0;
  *(&v128 - 16) = v141;
  *(&v128 - 15) = v107;
  *(&v128 - 14) = 0x4028000000000000;
  v120 = v134;
  *(&v128 - 13) = v135;
  *(&v128 - 12) = v120;
  v121 = v132;
  *(&v128 - 11) = v133;
  *(&v128 - 10) = 0x4028000000000000;
  *(&v128 - 9) = v121;
  *(&v128 - 8) = v102;
  *(&v128 - 7) = v97;
  *(&v128 - 6) = v109;
  *(&v128 - 5) = v108;
  *(&v128 - 2) = xmmword_22089ACC0;
  *(&v128 - 2) = v115;
  sub_22088C19C();

  sub_2204C4FA0(v115);
  v164 = v153;
  v165 = v154;
  v166 = v155;
  v160 = v149;
  v161 = v150;
  v122 = v152;
  v162 = v151;
  v163 = v152;
  v156 = v145;
  v157 = v146;
  v123 = v148;
  v158 = v147;
  v159 = v148;
  v124 = v154;
  *(a3 + 128) = v153;
  *(a3 + 144) = v124;
  *(a3 + 160) = v166;
  v125 = v161;
  *(a3 + 64) = v160;
  *(a3 + 80) = v125;
  *(a3 + 96) = v162;
  *(a3 + 112) = v122;
  v126 = v157;
  *a3 = v156;
  *(a3 + 16) = v126;
  *(a3 + 32) = v158;
  *(a3 + 48) = v123;
}

id sub_2205275D8()
{
  ShouldDifferentiateWithoutColor = UIAccessibilityShouldDifferentiateWithoutColor();
  v1 = v14;
  if (ShouldDifferentiateWithoutColor)
  {
    [v14 mutableCopy];
    sub_2208923BC();
    swift_unknownObjectRelease();
    sub_2207DC400();
    if (swift_dynamicCast())
    {
      v2 = sub_220891D8C();
      v3 = [objc_opt_self() configurationWithFont:v2 scale:1];

      v4 = v3;
      v5 = sub_22089132C();
      v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

      if (v6)
      {
        v7 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
        [v7 setImage_];
        v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v9 = sub_22089132C();
        v10 = [v8 initWithString_];

        [v15 appendAttributedString_];
        v11 = [objc_opt_self() attributedStringWithAttachment_];
        [v15 appendAttributedString_];

        return v15;
      }

      else
      {
        v13 = v14;

        return v13;
      }
    }

    v1 = v14;
  }

  return v1;
}

id sub_220527878@<X0>(void *a1@<X1>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v73 = a5;
  v74 = a6;
  v71 = a3;
  v72 = a4;
  v70 = a15;
  v69 = a16;
  v68 = a17;
  v67 = a18;
  v66 = a11;
  v65 = a12;
  v64 = a13;
  v63 = a14;
  v20 = sub_22088ABEC();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *MEMORY[0x277D6D320];
  v27 = *(v21 + 104);
  v27(v25, v26, v20, v23);
  sub_22088ABDC();
  v62 = v28;
  v61 = v29;
  v60 = v30;
  v59 = v31;
  v32 = *(v21 + 8);
  v32(v25, v20);
  (v27)(v25, v26, v20);
  sub_22088ABDC();
  v58 = v33;
  v57 = v34;
  v56 = v35;
  v55 = v36;
  v32(v25, v20);
  (v27)(v25, v26, v20);
  sub_22088ABDC();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v32(v25, v20);
  (v27)(v25, v26, v20);
  sub_22088ABDC();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v32(v25, v20);
  *a2 = v71;
  a2[1] = v72;
  a2[2] = v73;
  a2[3] = v74;
  *(a2 + 4) = v62;
  *(a2 + 5) = v61;
  *(a2 + 6) = v60;
  *(a2 + 7) = v59;
  *(a2 + 8) = v58;
  *(a2 + 9) = v57;
  *(a2 + 10) = v56;
  *(a2 + 11) = v55;
  *(a2 + 12) = v38;
  *(a2 + 13) = v40;
  *(a2 + 14) = v42;
  *(a2 + 15) = v44;
  *(a2 + 16) = v46;
  *(a2 + 17) = v48;
  *(a2 + 18) = v50;
  *(a2 + 19) = v52;
  *(a2 + 20) = a1;
  return sub_2204C4F90(a1);
}

uint64_t sub_220527BCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220527C30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220527C90(uint64_t a1, uint64_t a2)
{
  sub_22048452C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

double sub_220527CFC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1 - 8, a2);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220527DE0(v2, v4);
  sub_22048452C();
  v6 = &v4[*(v5 + 48)];
  v7 = *(v6 + 9);
  v14[8] = *(v6 + 8);
  v14[9] = v7;
  v15 = *(v6 + 20);
  v8 = *(v6 + 5);
  v14[4] = *(v6 + 4);
  v14[5] = v8;
  v9 = *(v6 + 7);
  v14[6] = *(v6 + 6);
  v14[7] = v9;
  v10 = *(v6 + 1);
  v14[0] = *v6;
  v14[1] = v10;
  v11 = *(v6 + 3);
  v14[2] = *(v6 + 2);
  v14[3] = v11;
  sub_2205022E8(v14);
  v12 = *v14;
  sub_2204EFAD0(v4);
  return v12;
}

uint64_t sub_220527DE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TickerLayoutModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220527E60(uint64_t *a1, uint64_t a2)
{
  v51 = sub_22088685C();
  v4 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v5);
  v50 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088831C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v46 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v45 = &v38 - v13;
  v14 = *a1;
  sub_22046DA2C(a2 + 216, v52);
  v43 = v54;
  v44 = v53;
  v42 = __swift_project_boxed_opaque_existential_1(v52, v53);
  v15 = *(v14 + 16);
  if (v15)
  {
    v40 = v8;
    v41 = v7;
    v55 = MEMORY[0x277D84F90];
    sub_22048EE54(0, v15, 0);
    v16 = v55;
    v18 = *(v4 + 16);
    v17 = v4 + 16;
    v19 = *(v17 + 64);
    v39 = v14;
    v20 = v14 + ((v19 + 32) & ~v19);
    v48 = *(v17 + 56);
    v49 = v18;
    v47 = (v17 - 8);
    do
    {
      v21 = v50;
      v22 = v51;
      v23 = v17;
      v49(v50, v20, v51);
      v24 = sub_22088681C();
      v26 = v25;
      (*v47)(v21, v22);
      v55 = v16;
      v28 = *(v16 + 16);
      v27 = *(v16 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_22048EE54((v27 > 1), v28 + 1, 1);
        v16 = v55;
      }

      *(v16 + 16) = v28 + 1;
      v29 = v16 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v20 += v48;
      --v15;
      v17 = v23;
    }

    while (v15);
    v8 = v40;
    v7 = v41;
    v14 = v39;
  }

  v30 = *MEMORY[0x277D6CA28];
  v31 = *(v8 + 104);
  v32 = v45;
  v31(v45, v30, v7);
  v33 = v46;
  v31(v46, v30, v7);
  sub_2208862EC();

  v34 = *(v8 + 8);
  v34(v33, v7);
  v34(v32, v7);
  *(swift_allocObject() + 16) = v14;

  v35 = sub_220888D9C();
  sub_220528958();
  v36 = sub_220888E4C();

  __swift_destroy_boxed_opaque_existential_1(v52);
  return v36;
}

uint64_t sub_220528218()
{

  return swift_deallocObject();
}

uint64_t sub_220528250(id *a1, uint64_t a2, uint64_t a3)
{
  v56 = a2;
  v60 = sub_22088F87C();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v5);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_220885ACC();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v7);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_2205288F4(0, qword_28128DE68, type metadata accessor for ForYouFeedKnobsConfig, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v52 - v12;
  v54 = MEMORY[0x277D32028];
  sub_2205288F4(0, &qword_281296B78, MEMORY[0x277D32028], v9);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v52 - v16;
  v18 = MEMORY[0x277CC9578];
  sub_2205288F4(0, &qword_281299480, MEMORY[0x277CC9578], v9);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v52 - v21;
  sub_2205288F4(0, qword_281292568, type metadata accessor for ForYouFeedConfig, v9);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = (&v52 - v25);
  v27 = type metadata accessor for ForYouFeedContentConfig();
  MEMORY[0x28223BE20](v27 - 8, v28);
  v30 = &v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for ForYouFeedServiceConfig() - 8;
  MEMORY[0x28223BE20](v62, v31);
  v33 = &v52 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *a1;
  sub_22088515C();
  v34 = sub_22088516C();
  (*(*(v34 - 8) + 56))(v22, 0, 1, v34);
  v35 = sub_22088F67C();
  (*(*(v35 - 8) + 56))(v17, 1, 1, v35);
  *v26 = a3;
  v36 = type metadata accessor for ForYouFeedConfig();
  sub_220528B78(v22, v26 + *(v36 + 20), &qword_281299480, v18);
  sub_220528B78(v17, v26 + *(v36 + 24), &qword_281296B78, v54);
  (*(*(v36 - 8) + 56))(v26, 0, 1, v36);
  v37 = type metadata accessor for ForYouFeedKnobsConfig();
  (*(*(v37 - 8) + 56))(v13, 1, 1, v37);

  v38 = v30;
  v52 = v30;
  sub_220529914(v26, v13, v30);
  v39 = v56;
  __swift_project_boxed_opaque_existential_1((v56 + 16), *(v56 + 40));
  v54 = v53;
  v40 = v55;
  sub_22088641C();
  v42 = v57;
  v41 = v58;
  v43 = v60;
  (*(v58 + 104))(v57, *MEMORY[0x277D32220], v60);
  __swift_project_boxed_opaque_existential_1((v39 + 152), *(v39 + 176));
  v44 = v62;
  sub_2208863EC();
  sub_220520948(v38, v33, type metadata accessor for ForYouFeedContentConfig);
  *&v33[v44[8]] = v54;
  v45 = v59;
  v46 = v40;
  v47 = v40;
  v48 = v61;
  (*(v59 + 16))(&v33[v44[9]], v47, v61);
  (*(v41 + 16))(&v33[v44[10]], v42, v43);
  sub_220885A4C();
  v50 = v49;
  (*(v41 + 8))(v42, v43);
  (*(v45 + 8))(v46, v48);
  sub_2206EC354(v52);
  *&v33[*(v62 + 44)] = v50;
  sub_2205288F4(0, &qword_281298630, type metadata accessor for ForYouFeedServiceConfig, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888ECC();
}

void sub_2205288F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_220528958()
{
  if (!qword_28127EB40)
  {
    sub_220452DCC(255, &qword_28127EB50, MEMORY[0x277D69810], MEMORY[0x277D83940]);
    sub_22088582C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127EB40);
    }
  }
}

uint64_t sub_2205289F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_220528958();
  v7 = *(v6 + 48);
  *a3 = a2;
  v8 = sub_22088582C();
  (*(*(v8 - 8) + 16))(&a3[v7], a1, v8);
}

uint64_t sub_220528A8C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_220603D2C(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_220528AF8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22044D940(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_220528B78(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2205288F4(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_220528BF8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2205297F0(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_220528C64(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_22044D9A4(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_220528CD0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22044DB24(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void *sub_220528D80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_22044DB24(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_22044DB24(0, &qword_281296B78, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_220528F04@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = a3;
  v5 = sub_220885DFC();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_220886A4C();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220528958();
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22088582C();
  v26 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220529290(a1, v15);
  (*(v17 + 32))(v20, &v15[*(v12 + 56)], v16);
  v21 = a2[25];
  v25 = a2[26];
  __swift_project_boxed_opaque_existential_1(a2 + 22, v21);
  __swift_project_boxed_opaque_existential_1(a2 + 17, a2[20]);
  sub_2208863EC();
  v22 = v28;
  sub_220886A3C();
  (*(v27 + 8))(v10, v29);
  v23 = sub_22088646C();

  (*(v30 + 8))(v22, v31);
  result = (*(v17 + 8))(v20, v26);
  *v32 = v23;
  return result;
}

uint64_t sub_220529220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220529290(uint64_t a1, uint64_t a2)
{
  sub_220528958();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220529308(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for StockForYouFeedGroupKnobs();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2205293C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (qword_281294340 != -1)
  {
    swift_once();
  }

  sub_22048D7F8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_220899360;
  v5 = *(v3 + 16);
  v6 = MEMORY[0x277D83C10];
  *(v4 + 56) = MEMORY[0x277D83B88];
  *(v4 + 64) = v6;
  *(v4 + 32) = v5;
  sub_220891AFC();
  sub_22088A7EC();

  *a2 = v3;
}

void sub_2205294C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22044CF38(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_220529580(uint64_t *a1, uint64_t a2)
{
  v35 = sub_22088685C();
  v5 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v6);
  v34 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_22046DA2C(a2 + 56, v36);
  v9 = v37;
  v10 = v38;
  v11 = __swift_project_boxed_opaque_existential_1(v36, v37);
  v12 = *(v8 + 16);
  if (v12)
  {
    v28[1] = v11;
    v28[2] = v10;
    v28[3] = v9;
    v29 = a2;
    v30 = v2;
    v39 = MEMORY[0x277D84F90];
    sub_22048EE54(0, v12, 0);
    v13 = v39;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v16 = v8 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v32 = *(v14 + 56);
    v33 = v15;
    v31 = (v14 - 8);
    do
    {
      v17 = v34;
      v18 = v35;
      v19 = v14;
      v33(v34, v16, v35);
      v20 = sub_22088681C();
      v22 = v21;
      (*v31)(v17, v18);
      v39 = v13;
      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_22048EE54((v23 > 1), v24 + 1, 1);
        v13 = v39;
      }

      *(v13 + 16) = v24 + 1;
      v25 = v13 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      v16 += v32;
      --v12;
      v14 = v19;
    }

    while (v12);
    a2 = v29;
  }

  sub_22088606C();

  __swift_project_boxed_opaque_existential_1((a2 + 96), *(a2 + 120));
  sub_2208864DC();
  v26 = sub_220888F8C();

  __swift_destroy_boxed_opaque_existential_1(v36);
  return v26;
}

void sub_2205297F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_220529844(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_220529898(uint64_t a1)
{
  v2 = sub_22052A350(&qword_281293440, type metadata accessor for ForYouFeedGroup);

  return MEMORY[0x282191918](a1, v2);
}

uint64_t sub_220529914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v81 = a3;
  sub_2205297F0(0, qword_281289410, type metadata accessor for StockForYouFeedGroupKnobs);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v71 = &v68 - v6;
  v74 = type metadata accessor for ForYouFeedGroupKnobs();
  v7 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v8);
  v75 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205297F0(0, qword_28128F298, type metadata accessor for ForYouFeedGroupKnobs);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v77 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v72 = &v68 - v15;
  sub_2205297F0(0, qword_28128DE68, type metadata accessor for ForYouFeedKnobsConfig);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v82 = &v68 - v18;
  v76 = type metadata accessor for ForYouFeedKnobsConfig();
  v83 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v19);
  v73 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v79 = &v68 - v23;
  sub_2205297F0(0, &qword_281296B78, MEMORY[0x277D32028]);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v68 - v26;
  sub_2205297F0(0, &qword_281299480, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = &v68 - v30;
  sub_2205297F0(0, qword_281292568, type metadata accessor for ForYouFeedConfig);
  MEMORY[0x28223BE20](v32 - 8, v33);
  v35 = &v68 - v34;
  v36 = type metadata accessor for ForYouFeedConfig();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v38);
  v40 = (&v68 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = a1;
  sub_22052A2E4(a1, v35, qword_281292568, type metadata accessor for ForYouFeedConfig);
  v41 = *(v37 + 48);
  if (v41(v35, 1, v36) == 1)
  {
    sub_22088515C();
    v42 = sub_22088516C();
    (*(*(v42 - 8) + 56))(v31, 0, 1, v42);
    v43 = sub_22088F67C();
    (*(*(v43 - 8) + 56))(v27, 1, 1, v43);
    *v40 = MEMORY[0x277D84F90];
    sub_220528BF8(v31, v40 + *(v36 + 20), &qword_281299480, MEMORY[0x277CC9578]);
    sub_220528BF8(v27, v40 + *(v36 + 24), &qword_281296B78, MEMORY[0x277D32028]);
    if (v41(v35, 1, v36) != 1)
    {
      sub_2206F1A50(v35, qword_281292568, type metadata accessor for ForYouFeedConfig);
    }
  }

  else
  {
    sub_22052A8F8(v35, v40, type metadata accessor for ForYouFeedConfig);
  }

  v44 = v81;
  sub_22052A8F8(v40, v81, type metadata accessor for ForYouFeedConfig);
  v45 = v78;
  v46 = v82;
  sub_22052A2E4(v78, v82, qword_28128DE68, type metadata accessor for ForYouFeedKnobsConfig);
  v48 = v83 + 48;
  v47 = *(v83 + 48);
  v49 = v76;
  v50 = v47(v46, 1, v76);
  v51 = v79;
  v52 = v77;
  if (v50 == 1)
  {
    v70 = v47;
    v53 = v72;
    v54 = v74;
    (*(v7 + 56))(v72, 1, 1, v74);
    sub_22052A2E4(v53, v52, qword_28128F298, type metadata accessor for ForYouFeedGroupKnobs);
    v55 = *(v7 + 48);
    if (v55(v52, 1, v54) == 1)
    {
      v56 = type metadata accessor for StockForYouFeedGroupKnobs();
      v57 = *(*(v56 - 8) + 56);
      v69 = v55;
      v58 = v51;
      v59 = v44;
      v60 = v71;
      v57(v71, 1, 1, v56);
      v83 = v48;
      v61 = v54;
      v62 = v75;
      v63 = v60;
      v44 = v59;
      v51 = v58;
      sub_22052AC50(v63, 0, v75);
      sub_2206F1A50(v45, qword_28128DE68, type metadata accessor for ForYouFeedKnobsConfig);
      sub_2206F1A50(v80, qword_281292568, type metadata accessor for ForYouFeedConfig);
      sub_2206F1A50(v53, qword_28128F298, type metadata accessor for ForYouFeedGroupKnobs);
      if (v69(v52, 1, v61) != 1)
      {
        sub_2206F1A50(v52, qword_28128F298, type metadata accessor for ForYouFeedGroupKnobs);
      }
    }

    else
    {
      sub_2206F1A50(v45, qword_28128DE68, type metadata accessor for ForYouFeedKnobsConfig);
      sub_2206F1A50(v80, qword_281292568, type metadata accessor for ForYouFeedConfig);
      sub_2206F1A50(v53, qword_28128F298, type metadata accessor for ForYouFeedGroupKnobs);
      v62 = v75;
      sub_22052A8F8(v52, v75, type metadata accessor for ForYouFeedGroupKnobs);
    }

    v64 = v73;
    sub_22052A8F8(v62, v73, type metadata accessor for ForYouFeedGroupKnobs);
    *(v64 + *(v49 + 20)) = 0x7FFFFFFFFFFFFFFFLL;
    sub_22052A8F8(v64, v51, type metadata accessor for ForYouFeedKnobsConfig);
    v65 = v82;
    if (v70(v82, 1, v49) != 1)
    {
      sub_2206F1A50(v65, qword_28128DE68, type metadata accessor for ForYouFeedKnobsConfig);
    }
  }

  else
  {
    sub_2206F1A50(v45, qword_28128DE68, type metadata accessor for ForYouFeedKnobsConfig);
    sub_2206F1A50(v80, qword_281292568, type metadata accessor for ForYouFeedConfig);
    sub_22052A8F8(v46, v51, type metadata accessor for ForYouFeedKnobsConfig);
  }

  v66 = type metadata accessor for ForYouFeedContentConfig();
  return sub_22052A8F8(v51, v44 + *(v66 + 20), type metadata accessor for ForYouFeedKnobsConfig);
}

uint64_t sub_22052A2E4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2205297F0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22052A350(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22052A3B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_22044DB24(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_22044DB24(0, &qword_281296B78, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_22052A534()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CuratedForYouFeedGroup();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204595F4(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StockForYouFeedGroup();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ForYouFeedGroup();
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052AB18(v1, v22, type metadata accessor for ForYouFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_220523140(v22, v18, type metadata accessor for StockForYouFeedGroup);
    sub_22052AB18(&v18[*(v15 + 28)], v14, sub_2204595F4);
    v27 = sub_22088F39C();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v14, 1, v27) == 1)
    {
      sub_22052B278(v14, sub_2204595F4);
      v24 = sub_22088677C();
    }

    else
    {
      v24 = sub_22088F2EC();
      (*(v28 + 8))(v14, v27);
    }

    v25 = type metadata accessor for StockForYouFeedGroup;
    v26 = v18;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_220523140(v22, v10, type metadata accessor for CuratedForYouFeedGroup);
    v24 = sub_22088F2EC();
    v25 = type metadata accessor for CuratedForYouFeedGroup;
    v26 = v10;
LABEL_9:
    sub_22052B278(v26, v25);
    return v24;
  }

  (*(v3 + 32))(v6, v22, v2);
  v24 = sub_22088F1EC();
  (*(v3 + 8))(v6, v2);
  return v24;
}

uint64_t sub_22052A8F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22052A974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22052A9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StockForYouFeedGroupKnobs();
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

    return (v10 + 1);
  }
}

uint64_t sub_22052AAB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22052AB18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22052AB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22044CF38(0);
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

    return (v10 + 1);
  }
}

uint64_t sub_22052AC50@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  sub_22044CF38(0);
  v6 = v5;
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052B224(0, &qword_281296B18, sub_22044CF38);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v48 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v42 - v14;
  sub_22052B224(0, qword_281289410, type metadata accessor for StockForYouFeedGroupKnobs);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v42 - v18;
  v20 = type metadata accessor for StockForYouFeedGroupKnobs();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v45 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v42 - v26;
  v49 = a1;
  sub_22052B398(a1, v19, qword_281289410, type metadata accessor for StockForYouFeedGroupKnobs);
  v28 = *(v21 + 48);
  v47 = v20;
  if (v28(v19, 1, v20) == 1)
  {
    v29 = v28;
    v42 = v27;
    v43 = a3;
    v30 = v44;
    (*(v44 + 56))(v15, 1, 1, v6);
    v31 = v48;
    sub_22052B398(v15, v48, &qword_281296B18, sub_22044CF38);
    v32 = *(v30 + 48);
    if (v32(v31, 1, v6) == 1)
    {
      type metadata accessor for ForYouFeedServiceConfig();
      sub_22044DD58(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
      v33 = v48;
      v34 = v46;
      sub_22088F7EC();
      if (v32(v33, 1, v6) != 1)
      {
        sub_220851BA4(v33, &qword_281296B18, sub_22044CF38);
      }
    }

    else
    {
      v34 = v46;
      (*(v30 + 32))(v46, v31, v6);
    }

    v35 = v45;
    (*(v30 + 32))(v45, v34, v6);
    v51 = 6;
    sub_22044D0C0();
    swift_allocObject();
    v36 = sub_22088FB7C();
    v37 = v47;
    *(v35 + *(v47 + 20)) = v36;
    v51 = 1000;
    swift_allocObject();
    v38 = sub_22088FB7C();
    sub_220851BA4(v15, &qword_281296B18, sub_22044CF38);
    *(v35 + *(v37 + 24)) = v38;
    v27 = v42;
    sub_220851CCC(v35, v42, type metadata accessor for StockForYouFeedGroupKnobs);
    v39 = v29(v19, 1, v37);
    a3 = v43;
    if (v39 != 1)
    {
      sub_220851BA4(v19, qword_281289410, type metadata accessor for StockForYouFeedGroupKnobs);
    }
  }

  else
  {
    sub_220851CCC(v19, v27, type metadata accessor for StockForYouFeedGroupKnobs);
  }

  sub_220851CCC(v27, a3, type metadata accessor for StockForYouFeedGroupKnobs);
  v40 = v50;
  if (!v50)
  {
    v40 = sub_2205CF674(MEMORY[0x277D84F90]);
  }

  sub_220851BA4(v49, qword_281289410, type metadata accessor for StockForYouFeedGroupKnobs);
  result = type metadata accessor for ForYouFeedGroupKnobs();
  *(a3 + *(result + 20)) = v40;
  return result;
}

void sub_22052B224(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22052B278(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22052B2D8@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = v2;
  MEMORY[0x28223BE20](v3, a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052AB18(v7, v6, type metadata accessor for ForYouFeedGroup);
  v8 = swift_getEnumCaseMultiPayload() + 1;
  result = sub_22052B278(v6, type metadata accessor for ForYouFeedGroup);
  *a2 = v8;
  return result;
}

uint64_t sub_22052B398(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_22052B224(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22052B404()
{
  v1 = v0;
  v2 = type metadata accessor for CuratedForYouFeedGroup();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StockForYouFeedGroup();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ForYouFeedGroup();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052AB18(v1, v13, type metadata accessor for ForYouFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_220523140(v13, v9, type metadata accessor for StockForYouFeedGroup);
    if (v9[*(v6 + 24)])
    {
      v15 = MEMORY[0x277D84F90];
    }

    else
    {
      v15 = sub_2208916FC();
    }

    v16 = type metadata accessor for StockForYouFeedGroup;
    v17 = v9;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_220523140(v13, v5, type metadata accessor for CuratedForYouFeedGroup);
    v15 = sub_22088F33C();
    v16 = type metadata accessor for CuratedForYouFeedGroup;
    v17 = v5;
LABEL_9:
    sub_22052B278(v17, v16);
    return v15;
  }

  sub_22052B278(v13, type metadata accessor for ForYouFeedGroup);
  return MEMORY[0x277D84F90];
}

uint64_t sub_22052B620()
{
  sub_220888FBC();
  v0 = sub_220888D9C();
  sub_22052B704();
  v1 = sub_220888E5C();

  return v1;
}

void sub_22052B704()
{
  if (!qword_281296AC0)
  {
    type metadata accessor for ForYouFeedGroup();
    sub_22044DF88(&qword_281293440, type metadata accessor for ForYouFeedGroup);
    v0 = sub_22088FAAC();
    if (!v1)
    {
      atomic_store(v0, &qword_281296AC0);
    }
  }
}

uint64_t sub_22052B798()
{
  v1 = 0x726F745320706F54;
  v2 = 0x64657461727543;
  if (*v0 != 2)
  {
    v2 = 25665;
  }

  if (*v0)
  {
    v1 = 0x6B636F7453;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22052B80C(uint64_t *a1)
{
  v2 = type metadata accessor for StockForYouFeedGroup();
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052B704();
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  if (*(v10 + 16))
  {
    v11 = sub_22088685C();
    (*(*(v11 - 8) + 16))(v5, v10 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80)), v11);
    v12 = sub_22088686C();
    v13 = v2[7];
    v14 = sub_22088F39C();
    (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
    *&v5[v2[5]] = v12;
    v5[v2[6]] = 0;
    sub_220720F90(v10);
    if (v15)
    {
      v16 = v15;
      sub_2206CE66C();
      v18 = (v9 + *(v17 + 48));
      sub_220753338(v5, v9);
      type metadata accessor for ForYouFeedGroup();
      swift_storeEnumTagMultiPayload();
      v18[3] = &type metadata for YahooStockForYouFeedGroupEmitterCursor;
      *v18 = v16;
    }

    else
    {
      sub_220753338(v5, v9);
      type metadata accessor for ForYouFeedGroup();
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
    sub_22052BD60(0, &qword_281298680, sub_22052B704, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v20 = sub_220888ECC();
    sub_22052C018(v5, type metadata accessor for StockForYouFeedGroup);
    return v20;
  }

  else
  {
    *v9 = 0x6574656C706D6F43;
    v9[1] = 0xE900000000000064;
    swift_storeEnumTagMultiPayload();
    sub_22052BD60(0, &qword_281298680, sub_22052B704, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_220888ECC();
  }
}

uint64_t sub_22052BB30@<X0>(uint64_t *a1@<X8>)
{
  sub_22052BD60(0, &qword_28127DEC0, sub_22052BFB4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  *(inited + 32) = 0x696669746E656469;
  v3 = inited + 32;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = 0xD000000000000025;
  *(inited + 56) = 0x80000002208D2BE0;
  sub_22052BDC4(inited);
  swift_setDeallocating();
  sub_22052C018(v3, sub_22052BFB4);
  sub_22052BD60(0, &qword_27CF59548, type metadata accessor for StubStockForYouFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v4;
  a1[4] = sub_22052C078();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_22088883C();
}

void sub_22052BC98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22052BCFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22052BD60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22052BDC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22052BF5C(0, qword_28127E2A0);
    v3 = sub_2208926DC();
    v4 = a1 + 32;

    while (1)
    {
      sub_22052BEF4(v4, &v13, sub_22052BFB4);
      v5 = v13;
      v6 = v14;
      result = sub_2204AF97C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2204A62A4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22052BEF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22052BF5C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2208926EC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_22052BFB4()
{
  if (!qword_28127EB80)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127EB80);
    }
  }
}

uint64_t sub_22052C018(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22052C078()
{
  result = qword_27CF59550;
  if (!qword_27CF59550)
  {
    sub_22052BD60(255, &qword_27CF59548, type metadata accessor for StubStockForYouFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59550);
  }

  return result;
}

uint64_t sub_22052C134@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI31StubStockForYouFeedGroupEmitter_config;
  sub_220452A8C();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for ForYouFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22052C1C8()
{
  v1 = v0;
  sub_22044CD9C();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220452A8C();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052C670(v1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v7, v17, v3);
    v18 = sub_22088F46C();
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    v18 = sub_22088F46C();
    (*(v10 + 8))(v13, v9);
  }

  return v18;
}

uint64_t sub_22052C400()
{
  sub_2204FA2D0();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F1480();
  sub_22052C734(&unk_281296EB0, sub_2204F1480);
  sub_22089196C();
  if ((v13 & 1) == 0)
  {
    return v12;
  }

  sub_22089193C();
  sub_22089199C();
  v6 = v14;
  if (v14 == v12)
  {
    return 0;
  }

  v7 = (v2 + 16);
  v8 = (v2 + 8);
  while (1)
  {
    v9 = sub_2208919BC();
    (*v7)(v5);
    (v9)(&v12, 0);
    sub_22052C734(&qword_281297E78, sub_2204FA2D0);
    LOBYTE(v9) = sub_2208912FC();
    (*v8)(v5, v1);
    if (v9)
    {
      break;
    }

    sub_2208919AC();
    sub_22089199C();
    v6 = v14;
    if (v14 == v12)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_22052C670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouFeedGroupConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22052C6F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2208854FC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22052C734(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22052C790(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for ForYouFeedContentConfig();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = sub_220885ACC();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_22088F87C();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = sub_220886A4C();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_22052C960(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ForYouFeedConfig();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ForYouFeedKnobsConfig();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22052CA88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22052CABC(a1, *v2, v2[1], v2[2]);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_22052CABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_22088698C();
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v8);
  v34 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = sub_22052CCEC();
  v11 = *(v10 + 16);
  if (v11)
  {
    v29 = a4;
    v30 = a2;
    v31 = a3;
    v36 = MEMORY[0x277D84F90];
    sub_22048EE54(0, v11, 0);
    v12 = v36;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v15 = *(v13 + 64);
    v28[1] = v10;
    v16 = v10 + ((v15 + 32) & ~v15);
    v32 = *(v13 + 56);
    v33 = v14;
    v17 = (v13 - 8);
    do
    {
      v18 = v34;
      v19 = v35;
      v20 = v13;
      v33(v34, v16, v35);
      v21 = sub_2208868EC();
      v23 = v22;
      (*v17)(v18, v19);
      v36 = v12;
      v25 = *(v12 + 16);
      v24 = *(v12 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_22048EE54((v24 > 1), v25 + 1, 1);
        v12 = v36;
      }

      *(v12 + 16) = v25 + 1;
      v26 = v12 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v16 += v32;
      --v11;
      v13 = v20;
    }

    while (v11);

    a2 = v30;
    a4 = v29;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  sub_22052D1C8(v12, a4);

  return a2;
}

size_t sub_22052CCEC()
{
  v41 = sub_22088698C();
  v1 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v2);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_22089037C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CuratedForYouFeedGroup();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v38 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StockForYouFeedGroup();
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ForYouFeedGroup();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052AB18(v0, v20, type metadata accessor for ForYouFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_220523140(v20, v16, type metadata accessor for StockForYouFeedGroup);
    v28 = *&v16[*(v13 + 20)];

    sub_22052B278(v16, type metadata accessor for StockForYouFeedGroup);
    return v28;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v35 = type metadata accessor for ForYouFeedGroup;
    v36 = v20;
LABEL_18:
    sub_22052B278(v36, v35);
    return MEMORY[0x277D84F90];
  }

  sub_220523140(v20, v38, type metadata accessor for CuratedForYouFeedGroup);
  sub_22088F37C();
  v22 = sub_22089035C();
  (*(v6 + 8))(v9, v5);
  if (!(v22 >> 62))
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v41;
    if (v23)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  v23 = sub_2208926AC();
  v24 = v41;
  if (!v23)
  {
LABEL_17:

    v35 = type metadata accessor for CuratedForYouFeedGroup;
    v36 = v38;
    goto LABEL_18;
  }

LABEL_5:
  v25 = v22;
  v42 = MEMORY[0x277D84F90];
  result = sub_22070BF14(0, v23 & ~(v23 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v28 = v42;
    v29 = v25;
    v41 = v25 & 0xC000000000000001;
    v40 = *MEMORY[0x277D69850];
    v39 = v1 + 32;
    v30 = v25;
    do
    {
      v31 = v23;
      if (v41)
      {
        v32 = MEMORY[0x223D8A700](v27, v29);
      }

      else
      {
        v32 = *(v29 + 8 * v27 + 32);
        swift_unknownObjectRetain();
      }

      sub_22052EC94();
      *v4 = v32;
      sub_220885CBC();
      (*(v1 + 104))(v4, v40, v24);
      v42 = v28;
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_22070BF14(v33 > 1, v34 + 1, 1);
        v28 = v42;
      }

      ++v27;
      *(v28 + 16) = v34 + 1;
      (*(v1 + 32))(v28 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v34, v4, v24);
      v23 = v31;
      v29 = v30;
    }

    while (v31 != v27);
    sub_22052B278(v38, type metadata accessor for CuratedForYouFeedGroup);

    return v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_22052D1C8(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_22052D248(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_22052D248(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2208929EC();
  sub_22089146C();
  v8 = sub_220892A2C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2208928BC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_22052D5C4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22052D398()
{
  v1 = v0;
  v2 = *v0;
  sub_22052D744();
  result = sub_2208924FC();
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
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_2208929EC();

      sub_22089146C();
      result = sub_220892A2C();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
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

uint64_t sub_22052D5C4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22052D79C();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22084A7FC();
      goto LABEL_16;
    }

    sub_22052D398();
  }

  v10 = *v4;
  sub_2208929EC();
  sub_22089146C();
  result = sub_220892A2C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2208928BC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22089290C();
  __break(1u);
  return result;
}

void sub_22052D744()
{
  if (!qword_28127E3C8)
  {
    v0 = sub_22089251C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E3C8);
    }
  }
}

uint64_t sub_22052D79C()
{
  v1 = v0;
  v2 = *v0;
  sub_22052D744();
  result = sub_2208924FC();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2208929EC();
      sub_22089146C();
      result = sub_220892A2C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_22052DA04(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ForYouFeedContentConfig();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[6]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_220885ACC();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_22088F87C();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = sub_220886A4C();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[10];

  return v18(v19, a2, v17);
}

uint64_t sub_22052DBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ForYouFeedConfig();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ForYouFeedKnobsConfig();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void sub_22052DCC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_22052DD18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  sub_22044DA5C(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v31 - v12;
  v14 = a1[1];
  v34 = *a1;
  v35 = v14;
  v15 = a1[2];
  v16 = OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_lastRefreshDate;
  swift_beginAccess();
  sub_2207C4220(a2 + v16, v9);
  v17 = sub_22088516C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v9, 1, v17) == 1)
  {
    sub_22088515C();
    if (v19(v9, 1, v17) != 1)
    {
      sub_22047EC24(v9, &qword_281299480, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(v18 + 32))(v13, v9, v17);
  }

  (*(v18 + 56))(v13, 0, 1, v17);
  swift_beginAccess();
  sub_22062162C(v13, a2 + v16);
  swift_endAccess();
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  sub_22048D7F8();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22089B140;
  sub_22089187C();
  v21 = MEMORY[0x277D83A80];
  *(v20 + 56) = MEMORY[0x277D839F8];
  *(v20 + 64) = v21;
  *(v20 + 32) = v22;
  v23 = MEMORY[0x277D837D0];
  *(v20 + 96) = MEMORY[0x277D837D0];
  v24 = sub_22048D860();
  *(v20 + 104) = v24;
  v25 = v33;
  *(v20 + 72) = v32;
  *(v20 + 80) = v25;
  v36 = 0;
  v37 = 0xE000000000000000;
  v27 = v34;
  v26 = v35;
  v38 = v34;
  v39 = v35;
  v40 = v15;

  sub_22089264C();
  v28 = v36;
  v29 = v37;
  *(v20 + 136) = v23;
  *(v20 + 144) = v24;
  *(v20 + 112) = v28;
  *(v20 + 120) = v29;
  sub_220891AFC();
  sub_22088A7EC();

  v38 = v27;
  v39 = v26;
  v40 = v15;
  sub_22052DCC8(0, &qword_281298658, &type metadata for ForYouFeedExpandData, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_220888ECC();
}

uint64_t sub_22052E0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v6 = CACurrentMediaTime();
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  sub_22048D7F8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_220899920;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v9 = sub_22048D860();
  *(v7 + 64) = v9;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  if (a3)
  {
    v10 = 0x726F73727563;
  }

  else
  {
    v10 = 0x656546664F706F74;
  }

  if (a3)
  {
    v11 = 0xE600000000000000;
  }

  else
  {
    v11 = 0xE900000000000064;
  }

  MEMORY[0x223D89680](v10, v11);

  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0xE000000000000000;
  sub_220891AFC();
  sub_22088A7EC();

  *(swift_allocObject() + 16) = a3;
  sub_2207DBCC4();

  sub_220888FAC();

  sub_2207DBD58();
  sub_220888E5C();

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = sub_220888D9C();
  sub_220888E4C();

  v14 = swift_allocObject();
  v14[2] = v6;
  *(v14 + 3) = a1;
  *(v14 + 4) = a2;

  v15 = sub_220888D9C();
  sub_220888E5C();

  v16 = swift_allocObject();
  v16[2] = v6;
  *(v16 + 3) = a1;
  *(v16 + 4) = a2;

  v17 = sub_220888D9C();
  v18 = sub_220888E9C();

  return v18;
}

uint64_t sub_22052E460()
{

  return swift_deallocObject();
}

uint64_t sub_22052E498()
{

  return swift_deallocObject();
}

uint64_t sub_22052E4D0()
{

  return swift_deallocObject();
}

id sub_22052E50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_220506ACC(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_22052E5A8()
{
  sub_22052EA18(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ForYouFeedModel();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22051D97C();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088698C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v29 - v21;
  sub_220516884(0, &qword_281297720, MEMORY[0x277D6E1E0]);
  sub_22088CB9C();
  sub_22088AD8C();
  (*(v10 + 8))(v13, v9);
  sub_22052EA4C(v3);
  sub_220503BCC(v7, type metadata accessor for ForYouFeedModel);
  if ((*(v15 + 48))(v3, 1, v14) == 1)
  {
    return sub_220503BCC(v3, sub_22052EA18);
  }

  (*(v15 + 32))(v22, v3, v14);
  (*(v15 + 16))(v18, v22, v14);
  v24 = (*(v15 + 88))(v18, v14);
  if (v24 == *MEMORY[0x277D69850])
  {
    (*(v15 + 96))(v18, v14);
    swift_unknownObjectRelease();
    sub_22052EC94();
    v26 = *(v25 + 48);
    __swift_project_boxed_opaque_existential_1((v30 + 216), *(v30 + 240));
    sub_2208868DC();
    sub_220887DCC();
    swift_unknownObjectRelease();
    (*(v15 + 8))(v22, v14);
    v27 = sub_220885CDC();
    return (*(*(v27 - 8) + 8))(&v18[v26], v27);
  }

  else if (v24 == *MEMORY[0x277D69840])
  {
    v28 = *(v15 + 8);
    v28(v22, v14);
    return (v28)(v18, v14);
  }

  else
  {
    result = sub_22089267C();
    __break(1u);
  }

  return result;
}

uint64_t sub_22052EA4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_220454720();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ForYouFeedModel();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FF294(v2, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v6 + 32))(v9, v13, v5);
      sub_22088FF6C();
      (*(v6 + 8))(v9, v5);
      v18 = 0;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_220503C2C(v13, type metadata accessor for ForYouFeedModel);
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 3)
  {
    goto LABEL_8;
  }

  sub_220458918();
  v16 = *(v15 + 48);
  v17 = sub_22089030C();
  (*(*(v17 - 8) + 8))(&v13[v16], v17);
LABEL_9:
  v18 = 1;
LABEL_10:
  v19 = sub_22088698C();
  return (*(*(v19 - 8) + 56))(a1, v18, 1, v19);
}

void sub_22052EC94()
{
  if (!qword_28127E720)
  {
    sub_22044826C();
    sub_220885CDC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127E720);
    }
  }
}

uint64_t sub_22052ED04(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](v2, a2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FB25C(v5, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      return 0;
    }

LABEL_7:
    sub_2204FC284(v4, type metadata accessor for ForYouFeedSectionDescriptor);
    return 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_2204B3C8C(v4, &qword_281296C60, MEMORY[0x277D31C50]);
    return 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_7;
  }

  sub_22045849C();
  v8 = *(v7 + 48);
  sub_2204B3C8C(&v4[*(v7 + 64)], &qword_281296C60, MEMORY[0x277D31C50]);
  sub_2204FC284(&v4[v8], type metadata accessor for StockViewModel);
  v9 = sub_22088685C();
  (*(*(v9 - 8) + 8))(v4, v9);
  return 1;
}

uint64_t sub_22052EE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5858](a1, a2, ObjectType, a4);
}

void *sub_22052EEDC()
{
  v1 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer(0);
  v94 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v95 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.StockSectionFooter(0);
  MEMORY[0x28223BE20](v97, v4);
  v99 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v98 = &v93 - v8;
  sub_220488B20(0);
  v101 = v9;
  v100 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v93 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v93 = &v93 - v19;
  v20 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader(0);
  v96 = *(v20 - 8);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204889B0(0);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v93 - v30;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v93 - v34;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v93 - v38;
  v40 = type metadata accessor for ForYouFeedLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v40, v41);
  v43 = &v93 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052FBA8(v0, v43, type metadata accessor for ForYouFeedLayoutSectionDescriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v45 = 0;
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_22048934C();
        v47 = *&v43[*(v46 + 48)];
        v48 = *(v46 + 64);
        sub_22052FC10(v43, v31, sub_2204889B0);
        v49 = v98;
        sub_22052FC10(&v43[v48], v98, type metadata accessor for ForYouFeedLayoutSectionDescriptor.StockSectionFooter);
        v116 = MEMORY[0x277D84F90];
        v50 = sub_22052FC78(v47);

        sub_220530578(v50);
        sub_22052FBA8(v31, v27, sub_2204889B0);
        v51 = v101;
        if ((*(v100 + 48))(v27, 1, v101) == 1)
        {
          v52 = sub_2204889B0;
          v53 = v27;
        }

        else
        {
          sub_22052FC10(v27, v12, sub_220488B20);
          v70 = sub_220826394(*&v12[*(v51 + 28)], type metadata accessor for ForYouFeedLayoutSectionDescriptor.Header, sub_2208267C0, sub_2208267D8);
          sub_220530578(v70);
          v52 = sub_220488B20;
          v53 = v12;
        }

        sub_2205303D4(v53, v52);
        v16 = v99;
        sub_22052FBA8(v49, v99, type metadata accessor for ForYouFeedLayoutSectionDescriptor.StockSectionFooter);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v71 = v16;
          v72 = v95;
          sub_22052FC10(v71, v95, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer);
          sub_220488CC4(0, &qword_28127DF30, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer, MEMORY[0x277D84560]);
          v73 = (*(v94 + 80) + 32) & ~*(v94 + 80);
          v74 = swift_allocObject();
          *(v74 + 16) = xmmword_220899360;
          sub_220826790(v72, v74 + v73);
          v75 = sub_220826394(v74, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer, sub_220826790, sub_2208267A8);
          swift_setDeallocating();
          sub_2208267A8(v74 + v73);
          swift_deallocClassInstance();
          sub_220530578(v75);
          sub_2208267A8(v72);
          sub_2205303D4(v49, type metadata accessor for ForYouFeedLayoutSectionDescriptor.StockSectionFooter);
          sub_2205303D4(v31, sub_2204889B0);
          return v116;
        }

        sub_220489428();
        v77 = &v16[*(v76 + 48)];
        v78 = *(v77 + 9);
        v113 = *(v77 + 8);
        v114 = v78;
        v115 = *(v77 + 20);
        v79 = *(v77 + 5);
        v109 = *(v77 + 4);
        v110 = v79;
        v80 = *(v77 + 7);
        v111 = *(v77 + 6);
        v112 = v80;
        v81 = *(v77 + 1);
        v105 = *v77;
        v82 = *(v77 + 2);
        v108 = *(v77 + 3);
        v106 = v81;
        v107 = v82;
        v45 = v116;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_2205307EC(0, v45[2] + 1, 1, v45);
        }

        v84 = v45[2];
        v83 = v45[3];
        if (v84 >= v83 >> 1)
        {
          v45 = sub_2205307EC((v83 > 1), v84 + 1, 1, v45);
        }

        sub_2205303D4(v49, type metadata accessor for ForYouFeedLayoutSectionDescriptor.StockSectionFooter);
        sub_2205303D4(v31, sub_2204889B0);
        v103 = &type metadata for StockSectionFooterViewLayoutAttributes;
        v104 = sub_220530870();
        v85 = swift_allocObject();
        *&v102 = v85;
        v86 = v114;
        *(v85 + 144) = v113;
        *(v85 + 160) = v86;
        *(v85 + 176) = v115;
        v87 = v110;
        *(v85 + 80) = v109;
        *(v85 + 96) = v87;
        v88 = v112;
        *(v85 + 112) = v111;
        *(v85 + 128) = v88;
        v90 = v106;
        v89 = v107;
        *(v85 + 16) = v105;
        *(v85 + 32) = v90;
        v91 = v108;
        *(v85 + 48) = v89;
        *(v85 + 64) = v91;
        v45[2] = v84 + 1;
        sub_220457328(&v102, &v45[5 * v84 + 4]);
        v65 = type metadata accessor for StockSectionFooterViewModel;
      }

      else
      {
        sub_22052FC10(v43, v16, sub_220488B20);
        v62 = v101;
        v63 = sub_220826394(*&v16[*(v101 + 28)], type metadata accessor for ForYouFeedLayoutSectionDescriptor.Header, sub_2208267C0, sub_2208267D8);
        v64 = sub_220826394(*&v16[*(v62 + 32)], type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer, sub_220826790, sub_2208267A8);
        *&v105 = v63;
        sub_220530578(v64);
        v45 = v105;
        v65 = sub_220488B20;
      }

      sub_2205303D4(v16, v65);
      return v45;
    }

    sub_2205DD068(0, &qword_281283710, sub_2204889B0, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
    v55 = *(v54 + 48);
    sub_22052FC10(v43, v39, sub_2204889B0);
    sub_22052FC10(&v43[v55], v23, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
    *&v105 = MEMORY[0x277D84F90];
    sub_220488CC4(0, &qword_28127DF38, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader, MEMORY[0x277D84560]);
    v56 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_220899360;
    sub_22052FBA8(v23, v57 + v56, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
    v58 = sub_22052FC78(v57);
    swift_setDeallocating();
    sub_2205303D4(v57 + v56, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
    swift_deallocClassInstance();
    sub_220530578(v58);
    sub_22052FBA8(v39, v35, sub_2204889B0);
    v59 = v101;
    if ((*(v100 + 48))(v35, 1, v101) == 1)
    {
      sub_2205303D4(v23, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
      sub_2205303D4(v39, sub_2204889B0);
      v60 = v35;
      v61 = sub_2204889B0;
    }

    else
    {
      v66 = v35;
      v67 = v93;
      sub_22052FC10(v66, v93, sub_220488B20);
      v68 = sub_220826394(*(v67 + *(v59 + 28)), type metadata accessor for ForYouFeedLayoutSectionDescriptor.Header, sub_2208267C0, sub_2208267D8);
      sub_220530578(v68);
      v69 = sub_220826394(*(v67 + *(v59 + 32)), type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer, sub_220826790, sub_2208267A8);
      sub_220530578(v69);
      sub_2205303D4(v23, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
      sub_2205303D4(v39, sub_2204889B0);
      v61 = sub_220488B20;
      v60 = v67;
    }

    sub_2205303D4(v60, v61);
    return v105;
  }

  return v45;
}