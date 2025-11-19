unint64_t sub_1E3F67234(uint64_t a1)
{
  result = sub_1E3F6725C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3F6725C()
{
  result = qword_1ECF69530[0];
  if (!qword_1ECF69530[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF69530);
  }

  return result;
}

unint64_t sub_1E3F672B0()
{
  result = qword_1ECF695C0[0];
  if (!qword_1ECF695C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF695C0);
  }

  return result;
}

void sub_1E3F673E8(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1E3F67444(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___VUIJSSportsJavascriptInterface_context;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38D12C8;
}

uint64_t variable initialization expression of SportsJavascriptInterface.tierManagerClientType@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D39F0];
  sub_1E4204EE4();
  OUTLINED_FUNCTION_2();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_1E3F6759C()
{
  v0 = objc_opt_self();
  v1 = sub_1E398B468(v0);
  if (!v2)
  {
    goto LABEL_5;
  }

  v17[0] = 45;
  v17[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v1);
  v15[2] = v17;
  v5 = sub_1E37D273C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E3756228, v15, v3, v4, &v16);
  if (!v5[2])
  {

LABEL_5:
    v6 = sub_1E4207154();
    v7 = v10;
    v9 = v11;
    v8 = v12;
    goto LABEL_6;
  }

  v6 = v5[4];
  v7 = v5[5];
  v9 = v5[6];
  v8 = v5[7];

LABEL_6:
  v13 = MEMORY[0x1E6910920](v6, v7, v9, v8);

  return v13;
}

id SportsJavascriptInterface.init(context:)(void *a1)
{
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR___VUIJSSportsJavascriptInterface_tierManagerClientType;
  v4 = *MEMORY[0x1E69D39F0];
  sub_1E4204EE4();
  OUTLINED_FUNCTION_2();
  (*(v5 + 104))(&v1[v3], v4);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SportsJavascriptInterface();
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

JSValue __swiftcall SportsJavascriptInterface.checkActivityExists(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_1_261();
  sub_1E4205004();
  v1 = sub_1E4204FF4();
  v2 = sub_1E4204F94();

  OUTLINED_FUNCTION_12_5();
  v4 = (*(v3 + 96))();
  v5 = [objc_opt_self() valueWithBool:v2 & 1 inContext:v4];

  if (v5)
  {
    return v5;
  }

  __break(1u);
  return result;
}

JSValue __swiftcall SportsJavascriptInterface.getTierType(leagueId:)(Swift::String leagueId)
{
  v2 = sub_1E4205C14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4204D44();
  sub_1E4204D34();
  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))();
  sub_1E4204D04();

  sub_1E3A246B8();
  v7 = sub_1E4205C04();
  v12[3] = MEMORY[0x1E69E6158];
  v12[0] = v7;
  v12[1] = v8;
  v9 = (*((*v6 & *v1) + 0x60))(v7, v8);
  result.super.isa = sub_1E3A243F8(v12, v9);
  if (result.super.isa)
  {
    isa = result.super.isa;
    (*(v3 + 8))(v5, v2);
    return isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

JSValue __swiftcall SportsJavascriptInterface.isPlayByPlayEnabled(leagueId:)(Swift::String leagueId)
{
  OUTLINED_FUNCTION_1_261();
  sub_1E4204D44();
  sub_1E4204D34();
  OUTLINED_FUNCTION_12_5();
  (*(v1 + 120))();
  v2 = sub_1E4204D14();

  OUTLINED_FUNCTION_12_5();
  v4 = (*(v3 + 96))();
  v5 = [objc_opt_self() valueWithBool:v2 & 1 inContext:v4];

  if (v5)
  {
    return v5;
  }

  __break(1u);
  return result;
}

id sub_1E3F67C04(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1E4205F14();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

JSValue __swiftcall SportsJavascriptInterface.isSportsFeatureEnabled(leagueId:featureName:)(Swift::String leagueId, Swift::String featureName)
{
  sub_1E4204D44();
  sub_1E4204D34();
  v2 = sub_1E4204D24();

  OUTLINED_FUNCTION_12_5();
  v4 = (*(v3 + 96))();
  v5 = [objc_opt_self() valueWithBool:v2 & 1 inContext:v4];

  if (v5)
  {
    return v5;
  }

  __break(1u);
  return result;
}

id SportsJavascriptInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SportsJavascriptInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SportsJavascriptInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SportsJavascriptInterface()
{
  result = qword_1EE295E80;
  if (!qword_1EE295E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3F67F80()
{
  result = sub_1E4204EE4();
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

uint64_t sub_1E3F6801C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1E3F68068(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1E3F680B8(a1, a2);
  return v4;
}

uint64_t sub_1E3F680B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 16) = 0u;
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void *sub_1E3F68124()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 224))();
  if (result)
  {
    v2 = result;
    v3 = [result isHidden];

    return (v3 ^ 1);
  }

  return result;
}

id sub_1E3F68180()
{
  result = *(v0 + 48);
  if (result)
  {
    return [result vuiView];
  }

  return result;
}

void sub_1E3F681B0(void *a1, unint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = sub_1E41FFCE4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_8();
  (*(v11 + 240))();
  *(v4 + 4) = a2;
  *(v4 + 5) = a3;

  (*(*v4 + 112))(v12);
  if (a2)
  {
    sub_1E3F6847C(a2);
  }

  sub_1E41FFCD4();
  v13 = objc_allocWithZone(sub_1E41FFD04());
  v14 = sub_1E41FFCF4();
  v15 = *(v4 + 6);
  *(v4 + 6) = v14;
  v16 = v14;

  v17 = [a1 vuiView];
  if (!v17)
  {
    __break(1u);
    goto LABEL_12;
  }

  v18 = v17;
  [v17 frame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  *(v5 + 7) = v20;
  *(v5 + 8) = v22;
  *(v5 + 9) = v24;
  *(v5 + 10) = v26;
  v27 = v16;
  v28 = [v27 vuiView];
  if (!v28)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v29 = v28;
  [v28 setVuiAlpha_];

  v30 = [v27 vuiView];
  if (!v30)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v31 = v30;
  [v30 setFrame_];

  [a1 vui:v27 addChildViewController:?];
  [v27 vui:a1 didMoveToParentViewController:?];
  v32 = [a1 vuiView];
  if (!v32)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v33 = v32;
  v34 = [v27 vuiView];

  if (!v34)
  {
LABEL_15:
    __break(1u);
    return;
  }

  [v33 addSubview_];

  if (*(v5 + 4))
  {
    v35 = v5[5];

    sub_1E3F68600(v36, 6, v35);
  }
}

uint64_t sub_1E3F6847C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = sub_1E4207384();
  if (!result)
  {
    return 0;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = *(MEMORY[0x1E6911E60](0, a1) + 56);

    swift_unknownObjectRelease();
    return v3;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(*(a1 + 32) + 56);

    return v3;
  }

  __break(1u);
  return result;
}

void sub_1E3F68520()
{
  v1 = *(v0 + 6);
  if (!v1)
  {
    goto LABEL_6;
  }

  [v1 vui:0 willMoveToParentViewController:?];
  v2 = *(v0 + 6);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = [v2 vuiView];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = v3;
  [v3 removeFromSuperview];

  v5 = *(v0 + 6);
  if (v5)
  {
    [v5 vui_removeFromParentViewController];
    v6 = *(v0 + 6);
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

  v0[6] = 0.0;

  if (*(v0 + 4))
  {
    v7 = v0[5];

    sub_1E3F68600(v8, 7, v7);
  }
}

unint64_t sub_1E3F68600(unint64_t result, uint64_t a2, double a3)
{
  v5 = result;
  if (result >> 62)
  {
    result = sub_1E4207384();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v7, v5);
      }

      else
      {
      }

      ++v7;
      OUTLINED_FUNCTION_8();
      (*(v8 + 208))(a2, *&a3, 0);
    }

    while (v6 != v7);
  }

  return result;
}

void sub_1E3F686F8(double a1, double a2, double a3, double a4)
{
  OUTLINED_FUNCTION_8();
  v10 = (*(v9 + 224))();
  if (v10)
  {
    v11 = v10;
    [v10 setFrame_];
  }
}

uint64_t sub_1E3F687B0()
{

  return v0;
}

uint64_t sub_1E3F687E0()
{
  sub_1E3F687B0();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1E3F68814(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  v4 = *(result + 16);
  while (1)
  {
    if (v4 == v2)
    {

      return v3;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    if (*(v1 + 8 * v2++ + 32))
    {

      MEMORY[0x1E6910BF0](v6);
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      result = sub_1E4206324();
      v3 = v7;
    }
  }

  __break(1u);
  return result;
}

id sub_1E3F68930()
{
  v0 = sub_1E3F68C0C();
  v1 = objc_opt_self();
  v2 = [v1 configurationWithHierarchicalColor_];

  v3 = [v1 configurationWithPointSize:7 weight:32.0];
  v4 = [v3 configurationByApplyingConfiguration_];

  return v4;
}

uint64_t sub_1E3F689DC()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionButton_symbolName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_1E3F68A34()
{
  OUTLINED_FUNCTION_156();
  v3 = (v1 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionButton_symbolName);
  swift_beginAccess();
  *v3 = v2;
  v3[1] = v0;

  sub_1E3F690AC();
}

uint64_t (*sub_1E3F68A94(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3F692DC;
}

uint64_t sub_1E3F68AE8()
{
  v1 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionButton_isSelectedDistribution;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1E3F68B2C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionButton_isSelectedDistribution;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1E3F690AC();
}

uint64_t (*sub_1E3F68B80(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3F68BD4;
}

void sub_1E3F68BD8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E3F690AC();
  }
}

id sub_1E3F68C0C()
{
  v1 = [v0 isFocused];
  v2 = objc_opt_self();
  if (v1)
  {
    v3 = [v2 blackColor];

    return v3;
  }

  else
  {
    v5 = [v2 whiteColor];
    v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))();
    v7 = 0.5;
    if (v6)
    {
      v7 = 1.0;
    }

    v8 = [v5 colorWithAlphaComponent_];

    return v8;
  }
}

id sub_1E3F68CF8()
{
  OUTLINED_FUNCTION_156();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_13_8();
  return sub_1E3F68D34();
}

id sub_1E3F68D34()
{
  OUTLINED_FUNCTION_156();
  v0[OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionButton_isSelectedDistribution] = 0;
  v1 = &v0[OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionButton_symbolName];
  *v1 = v2;
  v1[1] = v3;
  v21.receiver = v0;
  v21.super_class = type metadata accessor for MultiPlayerDistributionButton();

  v4 = objc_msgSendSuper2(&v21, sel_initWithType_interfaceStyle_, 0, 2);
  [v4 setWidth_];
  [v4 setHeight_];
  [v4 setCornerRadius_];
  v5 = sub_1E39DFFC8();
  v6 = objc_opt_self();
  if (v5)
  {
    v7 = [v6 whiteColor];
    v8 = [v7 colorWithAlphaComponent_];
  }

  else
  {
    v8 = [v6 clearColor];
  }

  [v4 setButtonBackgroundColor_];

  v9 = [objc_opt_self() whiteColor];
  [v4 setHighlightColor_];

  [v4 setPadding_];
  OUTLINED_FUNCTION_13_8();
  v10 = sub_1E3F691C4();

  v11 = [objc_allocWithZone(MEMORY[0x1E69DF740]) initWithFrame_];
  if (v10)
  {
    v12 = v10;
    v13 = sub_1E3F68930();
    v14 = [v12 imageWithConfiguration_];
  }

  else
  {
    v14 = 0;
  }

  [v11 setImage_];

  [v11 setContentMode_];
  [v4 setImageView:v11 forHighlightedState:0];
  [v4 configureWithLayoutProperties];
  v15 = v4;
  if ([v15 vuiIsRTL])
  {
    CGAffineTransformMakeScale(&v20, -1.0, 1.0);
    v16 = *&v20.a;
    v17 = *&v20.c;
    v18 = *&v20.tx;
  }

  else
  {
    v16 = *MEMORY[0x1E695EFD0];
    v17 = *(MEMORY[0x1E695EFD0] + 16);
    v18 = *(MEMORY[0x1E695EFD0] + 32);
  }

  *&v20.a = v16;
  *&v20.c = v17;
  *&v20.tx = v18;
  [v15 setTransform_];

  return v15;
}

uint64_t sub_1E3F69040(void *a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionButton_isSelectedDistribution) = 0;
  type metadata accessor for MultiPlayerDistributionButton();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1E3F690AC()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))();
  v1 = sub_1E3F691C4();

  if (v1)
  {
    v2 = sub_1E3F68930();
    v4 = [v1 imageWithConfiguration_];
  }

  else
  {
    v4 = 0;
  }

  v3 = [v0 imageView];
  [v3 setImage_];
}

id sub_1E3F691C4()
{
  OUTLINED_FUNCTION_156();
  sub_1E37E96A4();

  OUTLINED_FUNCTION_13_8();
  result = sub_1E3834BC8();
  if (!result)
  {
    OUTLINED_FUNCTION_13_8();
    return sub_1E3C7758C();
  }

  return result;
}

id sub_1E3F69294()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiPlayerDistributionButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3F69348()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI27UPNPDeviceDescriptionParser_currentElementName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1E3F693A0()
{
  OUTLINED_FUNCTION_156();
  v3 = (v1 + OBJC_IVAR____TtC8VideosUI27UPNPDeviceDescriptionParser_currentElementName);
  swift_beginAccess();
  *v3 = v2;
  v3[1] = v0;
}

void sub_1E3F694B4(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v144 = a3;
  v6 = sub_1E41FFCB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v126 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v143 = &v126 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v141 = &v126 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v140 = &v126 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v139 = &v126 - v20;
  sub_1E4205CB4();
  v21 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v22 + 112))();
  sub_1E3F69F68();
  sub_1E38DCD14(a1, a2);
  v23 = sub_1E39FEB38(a1, a2);
  [v23 setDelegate_];
  if ([v23 parse])
  {
    v142 = v7;
    v24 = (*v21 & *v3) + 104;
    v25 = *((*v21 & *v3) + 0x68);
    v26 = v25();
    v27 = sub_1E37D26AC(0x7954656369766564, 0xEA00000000006570, v26);
    v29 = v28;

    if (v29)
    {
      v31 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v31 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {
        v138 = v27;
        v32 = (v25)(v30);
        v33 = sub_1E37D26AC(0x796C646E65697266, 0xEC000000656D614ELL, v32);
        v35 = v34;

        if (v35)
        {
          v37 = (v35 >> 56) & 0xF;
          if ((v35 & 0x2000000000000000) == 0)
          {
            v37 = v33 & 0xFFFFFFFFFFFFLL;
          }

          if (v37)
          {
            v137 = v33;
            v143 = v35;
            v38 = (v25)(v36);
            v39 = sub_1E37D26AC(0x74636166756E616DLL, 0xEC00000072657275, v38);
            v41 = v40;

            if (v41)
            {
              v43 = HIBYTE(v41) & 0xF;
              if ((v41 & 0x2000000000000000) == 0)
              {
                v43 = v39 & 0xFFFFFFFFFFFFLL;
              }

              if (v43)
              {
                v136 = v39;
                (v25)(v42);
                v44 = OUTLINED_FUNCTION_9_165();
                v141 = sub_1E37D26AC(v44 | 0x6D614E6C00000000, 0xE900000000000065, v3);
                v45 = v41;
                v47 = v46;

                v48 = v47;
                v49 = v45;
                if (v48)
                {
                  v50 = HIBYTE(v48) & 0xF;
                  v51 = v141;
                  if ((v48 & 0x2000000000000000) == 0)
                  {
                    v50 = v141 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v50)
                  {
                    v134 = v6;
                    v135 = v48;
                    v52 = v25();
                    v140 = sub_1E37D26AC(5129301, 0xE300000000000000, v52);
                    v54 = v53;

                    if (v54)
                    {
                      v56 = HIBYTE(v54) & 0xF;
                      if ((v54 & 0x2000000000000000) == 0)
                      {
                        v56 = v140 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v56)
                      {
                        v142 = v54;
                        v57 = v25;
                        v58 = (v25)(v55);
                        v139 = sub_1E37D26AC(0x74636166756E616DLL, 0xEF4C525572657275, v58);
                        v134 = v59;

                        v61 = (v25)(v60);
                        v62 = sub_1E37D26AC(0xD000000000000010, 0x80000001E428A600, v61);
                        v133 = v63;

                        (v57)(v64);
                        v65 = OUTLINED_FUNCTION_9_165();
                        v66 = sub_1E37D26AC(v65 | 0x6D754E6C00000000, 0xEB00000000726562, v3);
                        v131 = v67;
                        v132 = v66;

                        (v57)(v68);
                        v69 = OUTLINED_FUNCTION_9_165();
                        v70 = sub_1E37D26AC(v69 | 0x4C52556C00000000, 0xE800000000000000, v3);
                        v129 = v71;
                        v130 = v70;

                        v73 = (v57)(v72);
                        v74 = sub_1E37D26AC(0x754E6C6169726573, 0xEC0000007265626DLL, v73);
                        v127 = v75;
                        v128 = v74;

                        v77 = (v57)(v76);
                        v78 = sub_1E37D26AC(4411477, 0xE300000000000000, v77);
                        v80 = v79;

                        v145[0] = v138;
                        v145[1] = v29;
                        v145[2] = v137;
                        v145[3] = v143;
                        v145[4] = v136;
                        v145[5] = v49;
                        v145[6] = v139;
                        v145[7] = v134;
                        v145[8] = v62;
                        v145[9] = v133;
                        v145[10] = v51;
                        v145[11] = v135;
                        v145[12] = v132;
                        v145[13] = v131;
                        v145[14] = v130;
                        v145[15] = v129;
                        v145[16] = v128;
                        v145[17] = v127;
                        v145[18] = v140;
                        v145[19] = v142;
                        v145[20] = v78;
                        v145[21] = v80;
                        nullsub_1(v81, v82);
                        memcpy(v146, v145, 0xB0uLL);
LABEL_35:
                        memcpy(v144, v146, 0xB0uLL);
                        return;
                      }
                    }

                    sub_1E324FBDC();
                    OUTLINED_FUNCTION_13_161();
                    v118 = v139;
                    v119 = v134;
                    v120(v139);
                    v121 = sub_1E41FFC94();
                    v122 = sub_1E42067F4();
                    if (OUTLINED_FUNCTION_161(v122))
                    {
                      *OUTLINED_FUNCTION_125_0() = 0;
                      OUTLINED_FUNCTION_62(&dword_1E323F000, v123, v124, "UPNPDeviceDescriptionParser:: missing UDN element");
                      OUTLINED_FUNCTION_7_9();
                      v125 = v23;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_10_150();
                    }

                    (*(v24 + 8))(v118, v119);
LABEL_34:
                    sub_1E3790540(v146);
                    goto LABEL_35;
                  }
                }

                v110 = sub_1E324FBDC();
                v111 = v142;
                v112 = v140;
                (*(v142 + 16))(v140, v110, v6);
                v113 = sub_1E41FFC94();
                v114 = sub_1E42067F4();
                if (OUTLINED_FUNCTION_161(v114))
                {
                  *OUTLINED_FUNCTION_125_0() = 0;
                  OUTLINED_FUNCTION_62(&dword_1E323F000, v115, v116, "UPNPDeviceDescriptionParser:: missing modelName element");
                  OUTLINED_FUNCTION_7_9();
                  v117 = v23;
                }

                else
                {
                  OUTLINED_FUNCTION_10_150();
                }

                (*(v111 + 8))(v112, v6);
                goto LABEL_34;
              }
            }

            v103 = sub_1E324FBDC();
            v105 = v141;
            v104 = v142;
            (*(v142 + 16))(v141, v103, v6);
            v106 = sub_1E41FFC94();
            v107 = sub_1E42067F4();
            if (os_log_type_enabled(v106, v107))
            {
              v108 = OUTLINED_FUNCTION_125_0();
              *v108 = 0;
              _os_log_impl(&dword_1E323F000, v106, v107, "UPNPDeviceDescriptionParser:: missing manufacturer element", v108, 2u);
              OUTLINED_FUNCTION_21_0();
              v109 = v23;
            }

            else
            {
              OUTLINED_FUNCTION_10_150();
            }

            (*(v104 + 8))(v105, v6);
            goto LABEL_34;
          }
        }

        v96 = sub_1E324FBDC();
        v97 = v143;
        (*(v142 + 16))(v143, v96, v6);
        v98 = sub_1E41FFC94();
        v99 = sub_1E42067F4();
        if (OUTLINED_FUNCTION_161(v99))
        {
          *OUTLINED_FUNCTION_125_0() = 0;
          OUTLINED_FUNCTION_62(&dword_1E323F000, v100, v101, "UPNPDeviceDescriptionParser:: missing friendlyName element");
          OUTLINED_FUNCTION_7_9();
          v102 = v23;
        }

        else
        {
          OUTLINED_FUNCTION_10_150();
        }

        (*(v142 + 8))(v97, v6);
        goto LABEL_34;
      }
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_13_161();
    v91(v12);
    v92 = sub_1E41FFC94();
    v93 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_161(v93))
    {
      v94 = OUTLINED_FUNCTION_125_0();
      *v94 = 0;
      _os_log_impl(&dword_1E323F000, v92, v27, "UPNPDeviceDescriptionParser:: missing deviceType element", v94, 2u);
      OUTLINED_FUNCTION_21_0();
      v95 = v23;
    }

    else
    {
      OUTLINED_FUNCTION_10_150();
    }

    (*(v24 + 8))(v12, v6);
    goto LABEL_34;
  }

  v83 = sub_1E324FBDC();
  (*(v7 + 16))(v9, v83, v6);
  v84 = v23;
  v85 = sub_1E41FFC94();
  v86 = sub_1E42067F4();
  if (!os_log_type_enabled(v85, v86))
  {

    v85 = v84;
    goto LABEL_27;
  }

  v87 = swift_slowAlloc();
  v88 = swift_slowAlloc();
  *v87 = 138412290;
  v89 = [v84 parserError];

  if (v89)
  {
    v90 = _swift_stdlib_bridgeErrorToNSError();
    *(v87 + 4) = v90;
    *v88 = v90;
    _os_log_impl(&dword_1E323F000, v85, v86, "UPNPDeviceDescriptionParser:: %@", v87, 0xCu);
    sub_1E3A66B00(v88);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_7_9();
LABEL_27:

    (*(v7 + 8))(v9, v6);
    goto LABEL_34;
  }

  __break(1u);
}

unint64_t sub_1E3F69F68()
{
  result = qword_1ECF3D278;
  if (!qword_1ECF3D278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF3D278);
  }

  return result;
}

uint64_t sub_1E3F69FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21();
  v31[0] = (*(v5 + 152))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  sub_1E3924274();
  v6 = sub_1E4205DF4();
  v8 = v7;

  OUTLINED_FUNCTION_1_262();
  v10 = *(v9 + 136);

  v10(a2, a3);
  if (v6 == 0x7665642F746F6F72 && v8 == 0xEB00000000656369)
  {
  }

  else
  {
    v12 = sub_1E42079A4();

    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_1_262();
  v14 = (*(v13 + 128))();
  v16 = v15;
  OUTLINED_FUNCTION_1_262();
  v18 = (*(v17 + 120))(v31);
  v20 = v19;
  swift_isUniquelyReferenced_nonNull_native();
  v30 = *v20;
  sub_1E38C5C90(0, 0xE000000000000000, v14, v16);
  *v20 = v30;

  v18(v31, 0);
LABEL_9:
  OUTLINED_FUNCTION_1_262();
  v22 = *(v21 + 168);

  v23 = v22(v31);
  v25 = v24;
  sub_1E3F6A904();
  v26 = *(*v25 + 16);
  sub_1E3F6A950(v26);
  v27 = *v25;
  *(v27 + 16) = v26 + 1;
  v28 = v27 + 16 * v26;
  *(v28 + 32) = a2;
  *(v28 + 40) = a3;
  return v23(v31, 0);
}

uint64_t sub_1E3F6A310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 128);
  v7 = v6();
  v9 = v8;
  OUTLINED_FUNCTION_21();
  v11 = (*(v10 + 104))();
  sub_1E37D26AC(v7, v9, v11);
  v13 = v12;

  if (!v13)
  {
    return result;
  }

  v16 = (v6)(v15);
  v18 = v17;
  OUTLINED_FUNCTION_21();
  v32 = (*(v19 + 120))(v36);
  v21 = v20;
  swift_isUniquelyReferenced_nonNull_native();
  v22 = *v21;
  v35 = *v21;
  *v21 = 0x8000000000000000;
  v23 = sub_1E327D33C(v16, v18);
  if (__OFADD__(*(v22 + 16), (v24 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v25 = v23;
  v26 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A570);
  if (sub_1E4207644())
  {
    v27 = sub_1E327D33C(v16, v18);
    if ((v26 & 1) != (v28 & 1))
    {
LABEL_14:
      result = sub_1E4207A74();
      __break(1u);
      return result;
    }

    v25 = v27;
  }

  if ((v26 & 1) == 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v29 = (*(v35 + 56) + 16 * v25);
  v33 = *v29;
  v34 = v29[1];
  MEMORY[0x1E69109E0](a2, a3);
  if (v34)
  {

    v30 = v35;
    v31 = (*(v35 + 56) + 16 * v25);
    *v31 = v33;
    v31[1] = v34;
  }

  else
  {

    v30 = v35;
    sub_1E3782C70(*(v35 + 48) + 16 * v25);
    sub_1E4207664();
  }

  *v21 = v30;
  return v32(v36, 0);
}

uint64_t sub_1E3F6A610()
{
  OUTLINED_FUNCTION_21();
  (*(v0 + 136))(0, 0xE000000000000000);
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 168))(v4);
  sub_1E3F6A6CC();

  return v2(v4, 0);
}

uint64_t sub_1E3F6A6CC()
{
  if (!*(*v0 + 16))
  {
    return 0;
  }

  result = sub_1E3F6AAFC();
  if (!v2)
  {
    return sub_1E3F6AA70(*(*v0 + 16) - 1);
  }

  return result;
}

id sub_1E3F6A7B8()
{
  v1 = OBJC_IVAR____TtC8VideosUI27UPNPDeviceDescriptionParser_scratchpad;
  v2 = MEMORY[0x1E69E7CC0];
  *&v0[v1] = sub_1E4205CB4();
  v3 = &v0[OBJC_IVAR____TtC8VideosUI27UPNPDeviceDescriptionParser_currentElementName];
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC8VideosUI27UPNPDeviceDescriptionParser_xmlPath] = v2;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for UPNPDeviceDescriptionParser();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1E3F6A870()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UPNPDeviceDescriptionParser();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1E3F6A904()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E3740F88(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_1E3F6A950(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1E3740F88((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1E3F6A9B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3F6A9F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E3F6AA70(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E3780C00(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    memmove((v8 + 32), (v8 + 48), 16 * v7);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

uint64_t sub_1E3F6AAFC()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E3780C00(v1);
    v1 = result;
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    result = *(v1 + 16 * v4 + 32);
    *(v1 + 16) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3F6AB58()
{
  v0 = sub_1E4207784();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3F6ABA4(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000025;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3F6AC34(char a1, char a2)
{
  v3 = 0xD000000000000015;
  v4 = "currentElementName";
  v5 = "currentElementName";
  switch(a1)
  {
    case 1:
      v5 = "useImpressionableItem";
      v3 = 0xD000000000000019;
      break;
    case 2:
      v5 = "useUniqueIdForImpressions";
      v3 = 0xD000000000000012;
      break;
    case 3:
      v5 = "ignoreClickMetrics";
      v3 = 0xD000000000000025;
      break;
    default:
      break;
  }

  v6 = 0xD000000000000015;
  switch(a2)
  {
    case 1:
      v4 = "useImpressionableItem";
      v6 = 0xD000000000000019;
      break;
    case 2:
      v4 = "useUniqueIdForImpressions";
      v6 = 0xD000000000000012;
      break;
    case 3:
      v4 = "ignoreClickMetrics";
      v6 = 0xD000000000000025;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3F6AD70()
{
  sub_1E4207B44();
  sub_1E3F6ADC0();
  return sub_1E4207BA4();
}

uint64_t sub_1E3F6ADC0()
{
  sub_1E4206014();
}

uint64_t sub_1E3F6AE7C()
{
  sub_1E4207B44();
  sub_1E3F6ADC0();
  return sub_1E4207BA4();
}

uint64_t sub_1E3F6AEC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3F6AB58();
  *a1 = result;
  return result;
}

unint64_t sub_1E3F6AEF0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3F6ABA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3F6AF24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v77 - v17;
  v18 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBA0);
  v26 = OUTLINED_FUNCTION_17_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v77 - v27;
  if (!a2)
  {
    return 0;
  }

  v78 = v24;
  v79 = v15;
  v80 = v18;
  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  if (v29)
  {
    *&v85 = *(a1 + 16);
    *(&v85 + 1) = v29;
    v83 = 0x7079746F746F7270;
    v84 = 0xE900000000000065;
    sub_1E41FE6C4();
    v31 = OUTLINED_FUNCTION_11_165();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    sub_1E32822E0();
    sub_1E4207234();
    v36 = v35;
    sub_1E325F748(v28, &qword_1ECF2FBA0);
    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  v81 = sub_1E3F6B764(a2);
  if (v37)
  {
    v38 = v37;
    sub_1E384EE08(*(a1 + 98));
    v80 = v39;
    v41 = v40;
    v42 = sub_1E324FBDC();
    (*(v6 + 16))(v10, v42, v4);

    v43 = sub_1E41FFC94();
    v44 = sub_1E42067E4();

    LODWORD(v82) = v44;
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v85 = v79;
      *v45 = 136315650;
      v46 = sub_1E3270FC8(v80, v41, &v85);

      *(v45 + 4) = v46;
      *(v45 + 12) = 2080;
      if (v29)
      {
        v47 = v30;
      }

      else
      {
        v47 = 0;
      }

      if (v29)
      {
        v48 = v29;
      }

      else
      {
        v48 = 0xE000000000000000;
      }

      v49 = sub_1E3270FC8(v47, v48, &v85);

      *(v45 + 14) = v49;
      *(v45 + 22) = 2080;

      v50 = v81;
      v51 = sub_1E3270FC8(v81, v38, &v85);

      *(v45 + 24) = v51;
      _os_log_impl(&dword_1E323F000, v43, v82, "Metrics:: Ignoring metrics for %s | %s. Reason: %s", v45, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v6 + 8))(v10, v4);
    }

    else
    {

      (*(v6 + 8))(v10, v4);
      v50 = v81;
    }

    if (v50 == sub_1E3BA4BBC(0) && v38 == v56)
    {
    }

    else
    {
      v58 = sub_1E42079A4();

      if ((v58 & 1) == 0)
      {
        return 0;
      }
    }

    v59 = type metadata accessor for Metrics();
    sub_1E3BA54D0();
    OUTLINED_FUNCTION_30();
    (*(v60 + 256))(1);
    return v59;
  }

  v52 = sub_1E3BA363C(0);
  sub_1E3277E60(v52, v53, a2, &v85);

  if (!v86)
  {
    sub_1E325F748(&v85, &unk_1ECF296E0);
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((OUTLINED_FUNCTION_5_208() & 1) == 0)
  {
LABEL_27:
    v59 = 0;
    goto LABEL_28;
  }

  v54 = v83;
  sub_1E3F6B764(v83);
  if (v55)
  {

    goto LABEL_27;
  }

  v59 = type metadata accessor for Metrics();
  sub_1E3BA54D0();
  OUTLINED_FUNCTION_30();
  (*(v65 + 184))(v54);
LABEL_28:
  v61 = sub_1E3BA363C(1);
  sub_1E3277E60(v61, v62, a2, &v85);

  if (v86)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (OUTLINED_FUNCTION_5_208())
    {
      v63 = v83;
      sub_1E3F6B764(v83);
      if (v64)
      {
      }

      else
      {
        if (!v59)
        {
          type metadata accessor for Metrics();
          v59 = sub_1E3BA54D0();
        }

        (*(*v59 + 208))(v63);
      }
    }
  }

  else
  {
    sub_1E325F748(&v85, &unk_1ECF296E0);
  }

  v66 = sub_1E3BA363C(2);
  sub_1E3277E60(v66, v67, a2, &v85);

  if (!v86)
  {
    v70 = &unk_1ECF296E0;
    v71 = &v85;
LABEL_42:
    sub_1E325F748(v71, v70);
    return v59;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((OUTLINED_FUNCTION_5_208() & 1) == 0)
  {
    return v59;
  }

  sub_1E3F6B764(v83);
  v69 = v68;

  if (v69)
  {

    return v59;
  }

  v73 = v82;
  sub_1E3F6B7FC(a1, a2, v82);
  v74 = v80;
  if (__swift_getEnumTagSinglePayload(v73, 1, v80) == 1)
  {
    v70 = &qword_1ECF2B7B0;
    v71 = v73;
    goto LABEL_42;
  }

  v75 = v78;
  (*(v20 + 32))(v78, v73, v74);
  if (!v59)
  {
    type metadata accessor for Metrics();
    v59 = sub_1E3BA54D0();
  }

  v76 = v79;
  (*(v20 + 16))(v79, v75, v74);
  __swift_storeEnumTagSinglePayload(v76, 0, 1, v74);
  (*(*v59 + 232))(v76);
  (*(v20 + 8))(v75, v74);
  return v59;
}

uint64_t sub_1E3F6B764(uint64_t a1)
{
  v2 = sub_1E3BA363C(5);
  sub_1E3277E60(v2, v3, a1, &v6);

  if (v7)
  {
    if (OUTLINED_FUNCTION_21_4())
    {
      return v5;
    }
  }

  else
  {
    sub_1E325F748(&v6, &unk_1ECF296E0);
  }

  return 0;
}

uint64_t sub_1E3F6B7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v93 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v92 = v9 - v8;
  v10 = sub_1E42046B4();
  OUTLINED_FUNCTION_0_10();
  v97 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v102 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v98 = &v89 - v16;
  v17 = sub_1E42044C4();
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v19 = sub_1E42044A4();
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v100 = sub_1E4204624();
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  v99 = v24 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v101 = &v89 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  v96 = v30 - v31;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v89 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v89 - v36;
  sub_1E4204724();
  v38 = OUTLINED_FUNCTION_11_165();
  v103 = v39;
  __swift_storeEnumTagSinglePayload(v38, v40, v41, v39);
  if (!a2)
  {
    v105 = 0u;
    v106 = 0u;
    return sub_1E325F748(&v105, &unk_1ECF296E0);
  }

  v95 = v10;
  v42 = sub_1E3BA363C(2);
  sub_1E3277E60(v42, v43, a2, &v105);

  if (!*(&v106 + 1))
  {
    return sub_1E325F748(&v105, &unk_1ECF296E0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  OUTLINED_FUNCTION_6_197();
  result = OUTLINED_FUNCTION_21_4();
  if ((result & 1) == 0)
  {
    return result;
  }

  v45 = v104;
  v46 = sub_1E4205F14();
  sub_1E3277E60(v46, v47, v45, &v105);

  v90 = a3;
  if (*(&v106 + 1))
  {
    OUTLINED_FUNCTION_6_197();
    if (OUTLINED_FUNCTION_21_4())
    {
      v91 = v104;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1E325F748(&v105, &unk_1ECF296E0);
  }

  v91 = 0;
LABEL_11:

  if (!a1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    if (!(*(*a1 + 576))(v48))
    {
      __swift_storeEnumTagSinglePayload(v37, 1, 1, v103);
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_30();
    (*(v49 + 224))();

    if (__swift_getEnumTagSinglePayload(v37, 1, v103) != 1)
    {
      break;
    }

LABEL_16:
    v50 = sub_1E325F748(v37, &qword_1ECF2B7B0);
    v51 = (*(*a1 + 624))(v50);

    a1 = v51;
    if (!v51)
    {
      goto LABEL_17;
    }
  }

  sub_1E325F748(v37, &qword_1ECF2B7B0);
LABEL_17:

  sub_1E4204614();
  v52 = v45;
  sub_1E3277E60(0xD000000000000015, 0x80000001E428A6A0, v45, &v105);
  if (*(&v106 + 1))
  {
    OUTLINED_FUNCTION_6_197();
    if (OUTLINED_FUNCTION_21_4())
    {
      v53 = v104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CED8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      *(inited + 32) = 0xD000000000000015;
      *(inited + 40) = 0x80000001E428A6A0;
      *(inited + 48) = v53;
      v55 = sub_1E4205CB4();
      *(&v106 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36120);
      *&v105 = v55;
      sub_1E4204494();
      sub_1E42044B4();
      v56 = v99;
      sub_1E42045F4();
      v57 = v100;
      v58 = v101;
      (*(v22 + 8))(v101, v100);
      v59 = v56;
      v52 = v45;
      (*(v22 + 32))(v58, v59, v57);
      OUTLINED_FUNCTION_1_28();
      v61 = sub_1E3C69B60(0xD000000000000015, 0x80000001E428A6A0, v60);
      if (v62)
      {
        v63 = v61;
        swift_isUniquelyReferenced_nonNull_native();
        v104 = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
        sub_1E4207644();
        v52 = v104;

        sub_1E329504C((*(v52 + 56) + 32 * v63), &v105);
        sub_1E4207664();
      }

      else
      {
        v105 = 0u;
        v106 = 0u;
      }

      goto LABEL_22;
    }
  }

  else
  {
LABEL_22:
    sub_1E325F748(&v105, &unk_1ECF296E0);
  }

  v64 = sub_1E4205F14();
  sub_1E3277E60(v64, v65, v52, &v105);

  if (!*(&v106 + 1))
  {
    sub_1E325F748(&v105, &unk_1ECF296E0);
LABEL_27:
    v66 = sub_1E4205F14();
    sub_1E3277E60(v66, v67, v52, &v105);

    if (*(&v106 + 1))
    {
      OUTLINED_FUNCTION_6_197();
      if (OUTLINED_FUNCTION_21_4())
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_1E325F748(&v105, &unk_1ECF296E0);
    }

    v68 = 0;
    if (a1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  OUTLINED_FUNCTION_6_197();
  if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_29:
  v68 = v104;
  if (!a1)
  {
    goto LABEL_37;
  }

LABEL_33:
  if ((*(*a1 + 576))())
  {
    OUTLINED_FUNCTION_30();
    (*(v69 + 224))();

    if (!__swift_getEnumTagSinglePayload(v35, 1, v103))
    {
      v82 = v68;
      v83 = v52;
      v84 = v98;
      sub_1E42046D4();
      sub_1E4204694();
      v85 = v84;
      v52 = v83;
      v68 = v82;
      (*(v97 + 8))(v85, v95);
    }

    sub_1E325F748(v35, &qword_1ECF2B7B0);
  }

LABEL_37:

  sub_1E4204664();
  sub_1E3277E60(0xD000000000000019, 0x80000001E428A6C0, v52, &v105);
  if (!*(&v106 + 1))
  {

    sub_1E325F748(&v105, &unk_1ECF296E0);
LABEL_44:
    v75 = v95;
    v76 = v97;
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_6_197();
  if (!OUTLINED_FUNCTION_21_4() || (v104 & 1) == 0)
  {

    goto LABEL_44;
  }

  v89 = v68;
  OUTLINED_FUNCTION_1_28();
  v71 = sub_1E3C69B60(0xD000000000000019, 0x80000001E428A6C0, v70);
  if (v72)
  {
    v73 = v71;
    swift_isUniquelyReferenced_nonNull_native();
    v104 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
    sub_1E4207644();
    v74 = v104;

    sub_1E329504C((*(v74 + 56) + 32 * v73), &v105);
    sub_1E4207664();
  }

  else
  {
    v105 = 0u;
    v106 = 0u;
  }

  sub_1E325F748(&v105, &unk_1ECF296E0);
  v86 = v92;
  sub_1E41FE614();
  sub_1E41FE5E4();
  (*(v93 + 8))(v86, v94);
  v87 = v98;
  sub_1E4204654();
  v76 = v97;
  v88 = v102;
  v75 = v95;
  (*(v97 + 8))(v102, v95);
  (*(v76 + 32))(v88, v87, v75);
LABEL_45:
  (*(v76 + 16))(v98, v102, v75);
  v77 = v100;
  v78 = v101;
  (*(v22 + 16))(v99, v101, v100);

  v79 = MEMORY[0x1E69E7CC0];
  sub_1E37E5C70(MEMORY[0x1E69E7CC0]);
  sub_1E37E5C70(v79);
  v80 = v96;
  sub_1E42046C4();

  (*(v76 + 8))(v102, v95);
  (*(v22 + 8))(v78, v77);
  v81 = v90;
  sub_1E325F748(v90, &qword_1ECF2B7B0);
  __swift_storeEnumTagSinglePayload(v80, 0, 1, v103);
  sub_1E3B2B0C4(v80, v81);
}

uint64_t sub_1E3F6C4B4(char a1, uint64_t a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v60 - v15;
  if (!a2)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v30(v10);
    v31 = sub_1E41FFC94();
    v32 = sub_1E42067E4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v62 = v34;
      *v33 = 136315138;
      v35 = sub_1E4123DE4(a1);
      v37 = sub_1E3270FC8(v35, v36, &v62);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1E323F000, v31, v32, "Metrics:: No metrics data for %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v10, v4);
    return 0;
  }

  v17 = sub_1E3F6B764(a2);
  if (!v18)
  {
    v38 = sub_1E3BA363C(3);
    sub_1E3277E60(v38, v39, a2, &v62);

    if (v63)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if (OUTLINED_FUNCTION_5_208())
      {
        v40 = v61;
        type metadata accessor for Metrics();
        v41 = v40;
        v42 = 1;
        return sub_1E3BA5560(v41, v42);
      }
    }

    else
    {
      sub_1E325F748(&v62, &unk_1ECF296E0);
    }

    v48 = sub_1E3BA363C(4);
    sub_1E3277E60(v48, v49, a2, &v62);

    if (v63)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if (OUTLINED_FUNCTION_5_208())
      {
        v50 = v61;
        type metadata accessor for Metrics();
        v41 = v50;
        v42 = 0;
        return sub_1E3BA5560(v41, v42);
      }
    }

    else
    {
      sub_1E325F748(&v62, &unk_1ECF296E0);
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v51(v16);
    v52 = sub_1E41FFC94();
    v53 = sub_1E42067F4();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v62 = v55;
      *v54 = 136315138;
      v56 = sub_1E4123DE4(a1);
      v58 = sub_1E3270FC8(v56, v57, &v62);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_1E323F000, v52, v53, "Metrics:: Page or Dialog Metrics missing for %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v16, v4);
    return 0;
  }

  v19 = v17;
  v20 = v18;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_2_26();
  v21(v14);

  v22 = sub_1E41FFC94();
  v23 = sub_1E42067E4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v60 = v4;
    *&v62 = v25;
    *v24 = 136315394;
    v26 = sub_1E4123DE4(a1);
    v28 = sub_1E3270FC8(v26, v27, &v62);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;

    v29 = sub_1E3270FC8(v19, v20, &v62);

    *(v24 + 14) = v29;
    _os_log_impl(&dword_1E323F000, v22, v23, "Metrics:: Ignoring page metrics for %s. Reason: %s", v24, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v6 + 8))(v14, v60);
  }

  else
  {

    (*(v6 + 8))(v14, v4);
  }

  if (v19 == sub_1E3BA4BBC(0) && v20 == v43)
  {
  }

  else
  {
    v45 = sub_1E42079A4();

    if ((v45 & 1) == 0)
    {
      return 0;
    }
  }

  v46 = type metadata accessor for Metrics();
  sub_1E3BA54D0();
  OUTLINED_FUNCTION_30();
  (*(v47 + 256))(1);
  return v46;
}

unint64_t sub_1E3F6CA98()
{
  result = qword_1ECF3D2E8;
  if (!qword_1ECF3D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D2E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CustomMetrics(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

id MetricsRenderEventListViewController.init(events:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___VUIMetricsRenderEventListViewController_eventItems] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MetricsRenderEventListViewController();
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1E3F6CCB8()
{
  *(v0 + OBJC_IVAR___VUIMetricsRenderEventListViewController_eventItems) = 0;
  sub_1E42076B4();
  __break(1u);
}

Swift::Void __swiftcall MetricsRenderEventListViewController.viewDidLoad()()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for MetricsRenderEventListViewController();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  v1 = sub_1E4205ED4();
  [v0 setTitle_];

  v2 = [v0 navigationItem];
  [v2 setLargeTitleDisplayMode_];

  v3 = [v0 tableView];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for MetricsEventCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1E3A209B8();

    v6 = sub_1E4205ED4();

    [v4 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v6];

    v7 = [v0 tableView];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_opt_self() systemGroupedBackgroundColor];
      [v8 setBackgroundColor_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id MetricsRenderEventListViewController.__allocating_init(style:)()
{
  v1 = objc_allocWithZone(OUTLINED_FUNCTION_12_1());

  return [v1 initWithStyle_];
}

id MetricsRenderEventListViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id MetricsRenderEventListViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsRenderEventListViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int __swiftcall MetricsRenderEventListViewController.numberOfSections(in:)(Swift::Int in)
{
  v2 = *(v1 + OBJC_IVAR___VUIMetricsRenderEventListViewController_eventItems);
  if (v2)
  {
    if (v2 >> 62)
    {
      return sub_1E4207384();
    }

    else
    {
      return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    __break(1u);
  }

  return in;
}

Swift::Void __swiftcall MetricsRenderEventListViewController.tableView(_:willDisplayHeaderView:forSection:)(UITableView *_, UIView *willDisplayHeaderView, Swift::Int forSection)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = *(v3 + OBJC_IVAR___VUIMetricsRenderEventListViewController_eventItems);
    if (v6)
    {
      v7 = v5;
      sub_1E34AF4E4(forSection, (v6 & 0xC000000000000001) == 0, *(v3 + OBJC_IVAR___VUIMetricsRenderEventListViewController_eventItems));
      if ((v6 & 0xC000000000000001) != 0)
      {
        v17 = willDisplayHeaderView;

        v10 = MEMORY[0x1E6911E60](forSection, v6);
      }

      else
      {
        v8 = *(v6 + 8 * forSection + 32);
        v9 = willDisplayHeaderView;
        v10 = v8;
      }

      v11 = [v7 textLabel];
      if (v11)
      {
        v12 = v11;
        v13 = v10[OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_isAppLaunch];
        v14 = objc_opt_self();
        v15 = &selRef_systemBlueColor;
        if (!v13)
        {
          v15 = &selRef_systemGrayColor;
        }

        v16 = [v14 *v15];
        [v12 setTextColor_];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::String_optional __swiftcall MetricsRenderEventListViewController.tableView(_:titleForHeaderInSection:)(UITableView *_, Swift::Int titleForHeaderInSection)
{
  v3 = *(v2 + OBJC_IVAR___VUIMetricsRenderEventListViewController_eventItems);
  if (v3)
  {
    v4 = titleForHeaderInSection;
    sub_1E34AF4E4(titleForHeaderInSection, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {

      MEMORY[0x1E6911E60](v4, v3);
      OUTLINED_FUNCTION_12_1();
    }

    else
    {
      v4 = *(v3 + 8 * v4 + 32);
    }

    type metadata accessor for MetricsCellPresentationUtilities();
    v5 = sub_1E3A9FF68();
    v6 = sub_1E3B622D4(v5, 0, 0);
    v8 = v7;
    v11 = sub_1E3A9FC54();
    v12 = v9;
    MEMORY[0x1E69109E0](0x20A280E220, 0xA500000000000000);
    MEMORY[0x1E69109E0](v6, v8);

    _ = v11;
    titleForHeaderInSection = v12;
  }

  else
  {
    __break(1u);
  }

  result.value._object = titleForHeaderInSection;
  result.value._countAndFlagsBits = _;
  return result;
}

void *MetricsRenderEventListViewController.tableView(_:cellForRowAt:)(void *a1)
{
  v2 = v1;
  sub_1E3A209B8();

  v4 = sub_1E4205ED4();

  v5 = sub_1E41FE7E4();
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5];

  type metadata accessor for MetricsEventCell();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    result = sub_1E41FE854();
    v10 = *(v1 + OBJC_IVAR___VUIMetricsRenderEventListViewController_eventItems);
    if (v10)
    {
      v11 = result;
      sub_1E34AF4E4(result, (v10 & 0xC000000000000001) == 0, *(v2 + OBJC_IVAR___VUIMetricsRenderEventListViewController_eventItems));
      if ((v10 & 0xC000000000000001) != 0)
      {

        v12 = MEMORY[0x1E6911E60](v11, v10);
      }

      else
      {
        v12 = *(v10 + 8 * v11 + 32);
      }

      (*((*MEMORY[0x1E69E7D40] & *v8) + 0xC0))(v12);

      return v8;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v13 = objc_allocWithZone(MEMORY[0x1E69DD028]);

    return [v13 init];
  }

  return result;
}

void MetricsRenderEventListViewController.tableView(_:didSelectRowAt:)()
{
  v1 = v0;
  v2 = sub_1E41FE854();
  v3 = *&v0[OBJC_IVAR___VUIMetricsRenderEventListViewController_eventItems];
  if (v3)
  {
    v4 = v2;
    sub_1E34AF4E4(v2, (v3 & 0xC000000000000001) == 0, *&v1[OBJC_IVAR___VUIMetricsRenderEventListViewController_eventItems]);
    if ((v3 & 0xC000000000000001) != 0)
    {

      v5 = MEMORY[0x1E6911E60](v4, v3);
    }

    else
    {
      v5 = *(v3 + 8 * v4 + 32);
    }

    type metadata accessor for MetricsEventDetailListViewController();
    v9 = v5;
    v6 = sub_1E406EBA4(v9);
    v7 = [v1 navigationController];
    if (v7)
    {
      v8 = v7;
      [v7 pushViewController:v6 animated:1];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3F6D9B4()
{
  type metadata accessor for ImageLayout();
  v0[13] = sub_1E3BD61D8();
  type metadata accessor for TextLayout();
  v0[14] = sub_1E383BCC0();
  type metadata accessor for PlaybackStatusLayout();
  v0[15] = sub_1E3A70EBC(1);
  type metadata accessor for DownloadStateIndicatorLayout();
  v0[16] = sub_1E3C6D918();
  type metadata accessor for ButtonLayout();
  v0[17] = sub_1E3BBB724();
  v0[18] = 0;
  v1 = sub_1E3C2F9A0();
  OUTLINED_FUNCTION_15_9();
  v3 = *(v2 + 1760);

  v4 = v3();
  sub_1E3C37CBC(v4, 10);

  OUTLINED_FUNCTION_9_2();
  v6 = (*(v5 + 1736))();
  sub_1E3C37CBC(v6, 39);

  OUTLINED_FUNCTION_9_2();
  v8 = (*(v7 + 1784))();
  sub_1E3C37CBC(v8, 96);

  OUTLINED_FUNCTION_9_2();
  v10 = (*(v9 + 1832))();
  sub_1E3C37CBC(v10, 67);

  OUTLINED_FUNCTION_9_2();
  v12 = (*(v11 + 1808))();
  sub_1E3C37CBC(v12, 233);

  v13 = *sub_1E3E5FB0C();
  v14 = *(*v1 + 752);
  v15 = v13;
  v14(v13);
  v16 = *sub_1E3E5FB88();
  v17 = *(*v1 + 872);
  v18 = v16;
  v17(v16);
  v19 = sub_1E3E61064();
  v20 = *(v19 + 1);
  *v421 = *v19;
  v422 = v20;
  LOBYTE(v423) = 0;
  (*(*v1 + 560))(v421);
  __dst[0] = xmmword_1E4298700;
  __dst[1] = xmmword_1E4298720;
  LOBYTE(__dst[2]) = 0;
  __asm { FMOV            V1.2D, #4.0 }

  *v462 = xmmword_1E42E08D0;
  *v463 = _Q1;
  LOBYTE(v464) = 0;
  __asm { FMOV            V1.2D, #7.0 }

  *v459 = xmmword_1E42E08E0;
  v460 = _Q1;
  LOBYTE(v461) = 0;
  type metadata accessor for UIEdgeInsets();
  v28 = v27;
  sub_1E3C3DE00(v27);
  *v453 = *v456;
  v454 = v457;
  LOBYTE(v455) = v458;
  sub_1E3C3DE00(v28);
  *v447 = *v450;
  v448 = v451;
  LOBYTE(v449) = v452;
  v29 = sub_1E3C3DE00(v28);
  *v441 = *v444;
  v442 = v445;
  LOBYTE(v443) = v446;
  v37 = OUTLINED_FUNCTION_20_114(v29, v30, v31, v32, v33, v34, v35, v36, v380, v400, v421[0], v421[1], v422, *(&v422 + 1), v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, __dst[0]);
  sub_1E3C2FCB8(v37, v38);
  OUTLINED_FUNCTION_11_166(v39, v40, v41, v42, v43, v44, v45, v46, v381, v401, v421[0], v421[1], v422, *(&v422 + 1), v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, *&__dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  v48 = *(v47 + 1600);
  v57 = OUTLINED_FUNCTION_7_201(v49, v50, v51, v52, v53, v54, v55, v56, v382, v402, v421[0], v421[1], v422, *(&v422 + 1), v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, __dst[0]);
  v48(v57, 1);
  v58 = *(v19 + 1);
  __dst[0] = *v19;
  __dst[1] = v58;
  LOBYTE(__dst[2]) = 0;
  sub_1E39537A8();
  v63 = OUTLINED_FUNCTION_12_150(v59, v60, v61, v62);
  sub_1E3C3DE00(v63);
  OUTLINED_FUNCTION_4_225();
  OUTLINED_FUNCTION_3_225();
  v64 = OUTLINED_FUNCTION_5_209();
  *v438 = *v441;
  v439 = v442;
  LOBYTE(v440) = v443;
  v72 = OUTLINED_FUNCTION_20_114(v64, v65, v66, v67, v68, v69, v70, v71, v383, v403, v421[0], v421[1], v422, *(&v422 + 1), v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, __dst[0]);
  sub_1E3C2FCB8(v72, v73);
  OUTLINED_FUNCTION_11_166(v74, v75, v76, v77, v78, v79, v80, v81, v384, v404, v421[0], v421[1], v422, *(&v422 + 1), v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, *&__dst[0]);
  v82 = OUTLINED_FUNCTION_18();
  v90 = OUTLINED_FUNCTION_7_201(v82, v83, v84, v85, v86, v87, v88, v89, v385, v405, v421[0], v421[1], v422, *(&v422 + 1), v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, __dst[0]);
  v406 = v28;
  v48(v90, 17);
  OUTLINED_FUNCTION_9_2();
  v92 = *(v91 + 1736);
  v93 = v92();
  v94 = *sub_1E418A500();
  (*(*v93 + 440))(v94, 0);

  (v92)(v95);
  OUTLINED_FUNCTION_2_1();
  (*(v96 + 1352))(0);

  (v92)(v97);
  OUTLINED_FUNCTION_2_1();
  (*(v98 + 1328))(1);

  v100 = (v92)(v99);
  v101 = *sub_1E3BD2884();
  (*(*v100 + 1280))(v101, 0);

  (v92)(v102);
  OUTLINED_FUNCTION_2_1();
  (*(v103 + 512))(2);

  v105 = (v92)(v104);
  sub_1E3E5F90C();
  OUTLINED_FUNCTION_81_12();
  v106 = *(*v105 + 1976);
  v107 = v19;
  v106(v19);

  (v92)(v108);
  OUTLINED_FUNCTION_2_1();
  (*(v109 + 1808))(1);

  v111 = (v92)(v110);
  v112 = [objc_opt_self() blackColor];
  (*(*v111 + 752))(v112);

  v114 = (v92)(v113);
  sub_1E3952C88();
  *&__src[0] = v115;
  *(&__src[0] + 1) = v116;
  *&__src[1] = v117;
  *(&__src[1] + 1) = v118;
  LOBYTE(__src[2]) = 0;
  (*(*v114 + 1856))(__src);

  v120 = (v92)(v119);
  sub_1E3E60CFC();
  OUTLINED_FUNCTION_81_12();
  v121 = *(*v120 + 1832);
  v122 = v19;
  v121(v19);

  v124 = (v92)(v123);
  v125 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  [v125 setShadowOffset_];
  [v125 setShadowBlurRadius_];
  v126 = sub_1E3755B54();
  v127 = sub_1E4206F24();
  [v125 setShadowColor_];

  (*(*v124 + 608))(v125);

  OUTLINED_FUNCTION_9_2();
  v129 = v128 + 1760;
  v130 = *(v128 + 1760);
  v130();
  OUTLINED_FUNCTION_2_1();
  (*(v131 + 2056))(1, 0);

  (v130)(v132);
  OUTLINED_FUNCTION_2_1();
  v133 = OUTLINED_FUNCTION_10_7();
  v134(v133);

  (v130)(v135);
  OUTLINED_FUNCTION_2_1();
  v136 = OUTLINED_FUNCTION_10_7();
  v137(v136);

  (v130)(v138);
  LOBYTE(__dst[0]) = 22;
  LOBYTE(v462[0]) = 19;
  LOBYTE(v459[0]) = 17;
  LOBYTE(v456[0]) = 19;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_110();
  v139 = sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v444[0]) = v447[0];
  v147 = OUTLINED_FUNCTION_20_114(v139, v140, v141, v142, v143, v144, v145, v146, v129, v406, v421[0], v421[1], v422, *(&v422 + 1), v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, __dst[0]);
  sub_1E3C2FCB8(v147, v148);
  OUTLINED_FUNCTION_13_162();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v157 = OUTLINED_FUNCTION_7_201(v149, v150, v151, v152, v153, v154, v155, v156, v386, v407, v421[0], v421[1], v422, *(&v422 + 1), v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, __dst[0]);
  v158(v157, 48);

  (v130)(v159);
  *&__dst[0] = 0;
  v462[0] = *sub_1E3E5FD88();
  v160 = v462[0];
  sub_1E3C2FC98();
  v456[0] = v459[0];
  sub_1E3C3DE00(v126);
  v450[0] = v453[0];
  sub_1E3C3DE00(v126);
  v444[0] = v447[0];
  v161 = sub_1E3C3DE00(v126);
  v438[0] = v441[0];
  v169 = OUTLINED_FUNCTION_20_114(v161, v162, v163, v164, v165, v166, v167, v168, v387, v408, v421[0], v421[1], v422, *(&v422 + 1), v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, __dst[0]);
  sub_1E3C2FCB8(v169, v170);
  v171 = __src[0];
  v172 = __src[1];
  v173 = __src[2];
  __dst[0] = __src[0];
  __dst[1] = __src[1];
  __dst[2] = __src[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v182 = OUTLINED_FUNCTION_7_201(v174, v175, v176, v177, v178, v179, v180, v181, v388, v409, v421[0], v421[1], v422, *(&v422 + 1), v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, __dst[0]);
  v183(v182, 29);

  v130();
  sub_1E3C8BE74();
  sub_1E3DEFBE8(1);

  (v130)(v184);
  LOBYTE(__dst[0]) = 4;
  sub_1E3C2FC98();
  LOBYTE(v459[0]) = v462[0];
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v453[0]) = v456[0];
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v447[0]) = v450[0];
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v441[0]) = v444[0];
  v185 = sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v434) = v438[0];
  v193 = OUTLINED_FUNCTION_20_114(v185, v186, v187, v188, v189, v190, v191, v192, v389, v410, v421[0], v421[1], v422, *(&v422 + 1), v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, __dst[0]);
  sub_1E3C2FCB8(v193, v194);
  OUTLINED_FUNCTION_13_162();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v203 = OUTLINED_FUNCTION_7_201(v195, v196, v197, v198, v199, v200, v201, v202, v390, v411, v421[0], v421[1], v422, *(&v422 + 1), v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, __dst[0]);
  v204(v203, 54);

  (v130)(v205);
  OUTLINED_FUNCTION_2_1();
  (*(v206 + 2008))(1);

  v208 = (*(*v1 + 176))(v462, v207);
  if (v464)
  {
    v209 = 0.0;
  }

  else
  {
    v209 = *&v462[1];
  }

  v210 = *(*v1 + 1784);
  v211 = v210(v208);
  (*(*v211 + 176))(__dst);

  v213 = *(__dst + 1);
  if (__dst[2])
  {
    v213 = 0.0;
  }

  v214 = v209 - v213;
  v210(v212);
  sub_1E3A70DC8(0);

  v216 = v210(v215);
  *&__src[0] = 0x4020000000000000;
  *(__src + 1) = v214;
  *&__src[1] = v214;
  *(&__src[1] + 1) = v214;
  LOBYTE(__src[2]) = 0;
  (*(*v216 + 160))(__src);

  v218 = v210(v217);
  v219 = [objc_opt_self() whiteColor];
  v220 = [v219 colorWithAlphaComponent_];

  (*(*v218 + 752))(v220);

  v210(v221);
  OUTLINED_FUNCTION_5_0();

  v222 = OUTLINED_FUNCTION_10_7();
  v223(v222);

  v210(v224);
  OUTLINED_FUNCTION_5_0();

  v225 = OUTLINED_FUNCTION_10_7();
  v226(v225);

  v210(v227);
  OUTLINED_FUNCTION_5_0();

  LOBYTE(v456[0]) = 22;
  LOBYTE(v453[0]) = 19;
  LOBYTE(v450[0]) = 17;
  LOBYTE(v447[0]) = 19;
  sub_1E3C2FC98();
  LOBYTE(v441[0]) = v444[0];
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v425) = v438[0];
  sub_1E3C2FCB8(v456, v459);
  OUTLINED_FUNCTION_14_161();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v228 + 1600))(v456, 48, v229 & 1, &qword_1F5D549D8);

  v231 = v210(v230);
  OUTLINED_FUNCTION_5_0();

  LOBYTE(v456[0]) = 4;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_110();
  sub_1E3C3DE00(&qword_1F5D54AF8);
  v232 = OUTLINED_FUNCTION_22_92();
  sub_1E3C3DE00(v232);
  LOBYTE(v438[0]) = v441[0];
  sub_1E3C3DE00(&qword_1F5D54AF8);
  BYTE6(v424) = HIBYTE(v424);
  sub_1E3C3DE00(&qword_1F5D54AF8);
  BYTE4(v424) = BYTE5(v424);
  sub_1E3C2FCB8(v456, v459);
  OUTLINED_FUNCTION_14_161();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v233 + 1600))(v456, 54, v234 & 1, &qword_1F5D54AF8);

  OUTLINED_FUNCTION_9_2();
  v236 = *(v235 + 1832);
  v237 = v236();
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_81_12();
  v238 = *(*v237 + 680);
  v239 = v231;
  v238(v231);

  v241 = (v236)(v240);
  sub_1E3E60364();
  OUTLINED_FUNCTION_81_12();
  v242 = *(*v241 + 872);
  v243 = v231;
  v242(v231);

  (v236)(v244);
  sub_1E3C8BE74();
  sub_1E3DEFBE8(1);

  v246 = (v236)(v245);
  if (_MergedGlobals_255 != -1)
  {
    swift_once();
  }

  v247 = qword_1EE28C860;
  v248 = *(*v246 + 752);
  v249 = qword_1EE28C860;
  v248(v247);

  (v236)(v250);
  __asm { FMOV            V0.2D, #3.5 }

  __dst[0] = _Q0;
  __dst[1] = _Q0;
  LOBYTE(__dst[2]) = 0;
  __asm { FMOV            V0.2D, #5.0 }

  *v462 = _Q0;
  *v463 = _Q0;
  LOBYTE(v464) = 0;
  v253 = v412;
  sub_1E3C3DE00(v412);
  OUTLINED_FUNCTION_4_225();
  OUTLINED_FUNCTION_3_225();
  OUTLINED_FUNCTION_5_209();
  *v438 = *v441;
  v439 = v442;
  LOBYTE(v440) = v443;
  v254 = OUTLINED_FUNCTION_0_297();
  sub_1E3C2FCB8(v254, v255);
  OUTLINED_FUNCTION_11_166(v256, v257, v258, v259, v260, v261, v262, v263, v391, v412, v421[0], v421[1], v422, *(&v422 + 1), v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, *&__dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v272 = OUTLINED_FUNCTION_7_201(v264, v265, v266, v267, v268, v269, v270, v271, v392, v413, v421[0], v421[1], v422, *(&v422 + 1), v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, __dst[0]);
  v273(v272, 1);

  (v236)(v274);
  __dst[0] = 0x4018000000000000uLL;
  *&__dst[1] = 0;
  *(&__dst[1] + 1) = 0x4018000000000000;
  LOBYTE(__dst[2]) = 0;
  v462[0] = 0x4020000000000000;
  v462[1] = 0;
  v463[0] = 0;
  v463[1] = 0x4020000000000000;
  LOBYTE(v464) = 0;
  sub_1E3C3DE00(v253);
  OUTLINED_FUNCTION_4_225();
  OUTLINED_FUNCTION_3_225();
  OUTLINED_FUNCTION_5_209();
  *v438 = *v441;
  v439 = v442;
  LOBYTE(v440) = v443;
  v275 = OUTLINED_FUNCTION_0_297();
  sub_1E3C2FCB8(v275, v276);
  OUTLINED_FUNCTION_11_166(v277, v278, v279, v280, v281, v282, v283, v284, v393, v414, v421[0], v421[1], v422, *(&v422 + 1), v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, *&__dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v293 = OUTLINED_FUNCTION_7_201(v285, v286, v287, v288, v289, v290, v291, v292, v394, v415, v421[0], v421[1], v422, *(&v422 + 1), v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, __dst[0]);
  v294(v293, 0);

  (v236)(v295);
  OUTLINED_FUNCTION_15_9();
  (*(v296 + 2096))();

  *&__dst[0] = 2;
  BYTE8(__dst[0]) = 0;
  v462[0] = 3;
  LOBYTE(v462[1]) = 0;
  type metadata accessor for SymbolScale(0);
  v298 = v297;
  sub_1E3C3DE00(v297);
  OUTLINED_FUNCTION_19_135();
  OUTLINED_FUNCTION_18_125();
  OUTLINED_FUNCTION_17_134();
  v438[0] = v441[0];
  LOBYTE(v438[1]) = v441[1];
  v299 = OUTLINED_FUNCTION_0_297();
  sub_1E3C2FCB8(v299, v300);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v309 = OUTLINED_FUNCTION_7_201(v301, v302, v303, v304, v305, v306, v307, v308, v395, v416, v421[0], v421[1], v422, *(&v422 + 1), v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, __dst[0]);
  v310(v309, 91);

  (v236)(v311);
  OUTLINED_FUNCTION_15_9();
  (*(v312 + 2096))();

  LOBYTE(__dst[0]) = 22;
  LOBYTE(v462[0]) = 14;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v456[0]) = v459[0];
  sub_1E3C3DE00(&qword_1F5D549D8);
  OUTLINED_FUNCTION_110();
  sub_1E3C3DE00(&qword_1F5D549D8);
  v313 = OUTLINED_FUNCTION_22_92();
  sub_1E3C3DE00(v313);
  LOBYTE(v438[0]) = v441[0];
  v314 = OUTLINED_FUNCTION_0_297();
  sub_1E3C2FCB8(v314, v315);
  LODWORD(__dst[0]) = __src[0];
  WORD2(__dst[0]) = WORD2(__src[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v324 = OUTLINED_FUNCTION_7_201(v316, v317, v318, v319, v320, v321, v322, v323, v396, v417, v421[0], v421[1], v422, *(&v422 + 1), v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, __dst[0]);
  v325(v324, 96);

  (v236)(v326);
  OUTLINED_FUNCTION_15_9();
  (*(v327 + 2096))();

  v328.n128_u64[0] = 6.0;
  *&__dst[0] = j__OUTLINED_FUNCTION_7_78(v328);
  *(&__dst[0] + 1) = v329;
  *&__dst[1] = v330;
  *(&__dst[1] + 1) = v331;
  LOBYTE(__dst[2]) = 0;
  v332.n128_u64[0] = 9.0;
  v333 = j__OUTLINED_FUNCTION_7_78(v332);
  v337 = OUTLINED_FUNCTION_12_150(v333, v334, v335, v336);
  sub_1E3C3DE00(v337);
  OUTLINED_FUNCTION_4_225();
  OUTLINED_FUNCTION_3_225();
  OUTLINED_FUNCTION_5_209();
  *v438 = *v441;
  v439 = v442;
  LOBYTE(v440) = v443;
  v338 = OUTLINED_FUNCTION_0_297();
  sub_1E3C2FCB8(v338, v339);
  OUTLINED_FUNCTION_11_166(v340, v341, v342, v343, v344, v345, v346, v347, v397, v418, v421[0], v421[1], v422, *(&v422 + 1), v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, *&__dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v356 = OUTLINED_FUNCTION_7_201(v348, v349, v350, v351, v352, v353, v354, v355, v398, v419, v421[0], v421[1], v422, *(&v422 + 1), v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, __dst[0]);
  v357(v356, 17);

  OUTLINED_FUNCTION_9_2();
  v359 = *(v358 + 1808);
  v360 = v359();
  v361 = *sub_1E3E5FD88();
  (*(*v360 + 1712))(v361);

  (v359)(v362);
  OUTLINED_FUNCTION_2_1();
  v364 = (*(v363 + 1728))();

  (*(*v364 + 2072))(22);

  (v359)(v365);
  OUTLINED_FUNCTION_15_9();
  (*(v366 + 1728))();

  *&__dst[0] = 1;
  BYTE8(__dst[0]) = 0;
  v462[0] = 2;
  LOBYTE(v462[1]) = 0;
  sub_1E3C3DE00(v298);
  OUTLINED_FUNCTION_19_135();
  OUTLINED_FUNCTION_18_125();
  OUTLINED_FUNCTION_17_134();
  v438[0] = v441[0];
  LOBYTE(v438[1]) = v441[1];
  v367 = OUTLINED_FUNCTION_0_297();
  sub_1E3C2FCB8(v367, v368);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v377 = OUTLINED_FUNCTION_7_201(v369, v370, v371, v372, v373, v374, v375, v376, v399, v420, v421[0], v421[1], v422, *(&v422 + 1), v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, __dst[0]);
  v378(v377, 91);

  return v1;
}

uint64_t sub_1E3F6F4DC(__n128 a1, __n128 a2)
{
  nullsub_1(a1, a2);
  result = sub_1E385050C();
  if (result)
  {
    type metadata accessor for TextBadgeLayout();
    result = swift_dynamicCastClass();
    if (result)
    {
      v4 = result;
      OUTLINED_FUNCTION_14_0();
      v2[18] = v4;
      swift_retain_n();

      v6 = *(*v2 + 1856);
      v7 = v6(v5);
      if (v7)
      {
        __asm
        {
          FMOV            V0.2D, #3.5
          FMOV            V0.2D, #5.0
        }

        v48 = _Q0;
        v49 = _Q0;
        v50 = 0;
        type metadata accessor for UIEdgeInsets();
        v15 = v14;
        sub_1E3C3DE00(v14);
        v42 = v45;
        v43 = v46;
        v44 = v47;
        sub_1E3C3DE00(v15);
        v36 = v39;
        v37 = v40;
        v38 = v41;
        sub_1E3C3DE00(v15);
        v30 = v33;
        v31 = v34;
        v32 = v35;
        sub_1E3C3DE00(v15);
        __dst[15] = v27;
        __dst[16] = v28;
        v26 = v29;
        sub_1E3C2FCB8(&v42, __src);
        memcpy(__dst, __src, 0xE9uLL);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        (*(v16 + 1600))(__dst, 1, v17 & 1, v15);
      }

      if (v6(v7))
      {
        __asm { FMOV            V0.2D, #6.0 }

        __dst[0] = _Q0;
        memset(&__dst[1], 0, 17);
        __asm { FMOV            V0.2D, #8.0 }

        v48 = _Q0;
        v49 = 0uLL;
        v50 = 0;
        v45 = _Q0;
        v46 = 0uLL;
        v47 = 0;
        type metadata accessor for UIEdgeInsets();
        v21 = v20;
        sub_1E3C3DE00(v20);
        v39 = v42;
        v40 = v43;
        v41 = v44;
        sub_1E3C3DE00(v21);
        v33 = v36;
        v34 = v37;
        v35 = v38;
        sub_1E3C3DE00(v21);
        v27 = v30;
        v28 = v31;
        v29 = v32;
        sub_1E3C2FCB8(&v39, __src);
        memcpy(__dst, __src, 0xE9uLL);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        (*(v22 + 1600))(__dst, 0, v23 & 1, v21);
      }

      v24 = *sub_1E3810A0C();

      sub_1E3C37EC8(v4, v24);
    }
  }

  return result;
}

uint64_t sub_1E3F6F83C(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E42B2A10;
  *(v4 + 32) = [a1 colorWithAlphaComponent_];
  *(v4 + 40) = [a1 colorWithAlphaComponent_];
  *(v4 + 48) = [a1 colorWithAlphaComponent_];
  *(v4 + 56) = [a1 colorWithAlphaComponent_];
  *(v4 + 64) = [a1 colorWithAlphaComponent_];
  *(v4 + 72) = [a1 colorWithAlphaComponent_];
  v5 = (*(*v2 + 840))();
  if (v5)
  {
    (*(*v5 + 1800))(v4);
  }

  else
  {
    type metadata accessor for ViewGradientLayout();
    sub_1E40C2E40();
    OUTLINED_FUNCTION_9_2();
    v8 = *(v7 + 848);

    return v8();
  }
}

void sub_1E3F6FA5C()
{
  sub_1E3755B54();
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 blackColor];
  v3 = sub_1E3E5F2F8(v1, v2);

  v4 = [v3 colorWithAlphaComponent_];
  qword_1EE28C860 = v4;
}

uint64_t sub_1E3F6FB3C(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      OUTLINED_FUNCTION_39_1();
      sub_1E42074B4();

      OUTLINED_FUNCTION_2_223();
      v6 = v8 - 8;
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_39_1();
      sub_1E42074B4();

      OUTLINED_FUNCTION_2_223();
      v6 = v7 - 1;
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_39_1();
      sub_1E42074B4();

      OUTLINED_FUNCTION_2_223();
      v6 = v5 + 5;
      goto LABEL_6;
    case 6:
      switch(a1)
      {
        case 1:
          OUTLINED_FUNCTION_0_298();
          result = v13 - 3;
          break;
        case 2:
        case 3:
          OUTLINED_FUNCTION_0_298();
          result = v12 + 14;
          break;
        case 4:
          OUTLINED_FUNCTION_0_298();
          result = v11 - 8;
          break;
        case 5:
          OUTLINED_FUNCTION_0_298();
          result = v14 - 9;
          break;
        default:
          OUTLINED_FUNCTION_0_298();
          result = v10 + 13;
          break;
      }

      return result;
    default:
      OUTLINED_FUNCTION_39_1();
      sub_1E42074B4();

      OUTLINED_FUNCTION_2_223();
LABEL_6:
      v15 = v6;
      MEMORY[0x1E69109E0](a1, a2);
      MEMORY[0x1E69109E0](93, 0xE100000000000000);
      return v15;
  }
}

void sub_1E3F6FD54(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 navigationController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 navigationBar];
  }

  else
  {
    v6 = 0;
  }

  v7 = [a1 navigationItem];
  v8 = [v7 largeTitleDisplayMode];

  v9 = [a1 navigationItem];
  sub_1E3B62028();
  v11 = v10;

  v12 = v6 == 0;
  if (v6)
  {
    [v6 _titleOpacity];
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  type metadata accessor for VUIViewController();
  if (swift_dynamicCastClass())
  {
    v15 = a1;
    v14 = sub_1E40D8DE0();
    v12 = v16;
  }

  v17 = [v6 tintColor];

  *a2 = (v8 & 0xFFFFFFFFFFFFFFFDLL) == 1;
  *(a2 + 8) = v8;
  *(a2 + 16) = v11;
  *(a2 + 24) = 0;
  *(a2 + 32) = v14;
  *(a2 + 40) = v12;
  *(a2 + 48) = v17;
}

void sub_1E3F6FED8(void *a1, char a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v14 = [a1 navigationController];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 navigationBar];

    if (v16)
    {
      v17 = [a1 transitionCoordinator];
      if (v17)
      {
        v18 = v17;
        v19 = swift_allocObject();
        OUTLINED_FUNCTION_1_263(v19);
        OUTLINED_FUNCTION_0_155();
        v33 = 1107296256;
        v34 = sub_1E37C7850;
        v35 = &block_descriptor_6_5;
        v20 = _Block_copy(&v32);
        v21 = a9;
        v22 = a1;
        v23 = v16;

        [v18 animateAlongsideTransition:v20 completion:0];

        _Block_release(v20);
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = objc_opt_self();
        v25 = swift_allocObject();
        OUTLINED_FUNCTION_1_263(v25);
        OUTLINED_FUNCTION_0_155();
        v33 = 1107296256;
        v34 = sub_1E378AEA4;
        v35 = &block_descriptor_141;
        v26 = _Block_copy(&v32);
        v27 = a9;
        v28 = a1;
        v29 = v16;

        [v24 animateWithDuration:v26 animations:a4];

        _Block_release(v26);
      }
    }
  }

  v30 = [a1 navigationItem];
  [v30 _setSupportsTwoLineLargeTitles_];

  v31 = [a1 navigationItem];
  [v31 setLargeTitleDisplayMode_];
}

void sub_1E3F7015C()
{
  if ((OUTLINED_FUNCTION_2_224() & 1) == 0 && v2)
  {
    [v1 setTintColor_];
  }

  if (((sub_1E39DFFC8() | v4) & 1) == 0)
  {
    v7 = [v0 navigationItem];
    sub_1E3B62038(v6);
  }

  if ((sub_1E39DFFC8() | v3))
  {
    OUTLINED_FUNCTION_14_13();
  }

  else
  {
    type metadata accessor for VUIViewController();
    if (swift_dynamicCastClass())
    {
      v0;
      sub_1E40D8E58(v5);
      OUTLINED_FUNCTION_14_13();
    }

    else
    {
      OUTLINED_FUNCTION_14_13();

      [v10 v11];
    }
  }
}

uint64_t objectdestroyTm_55()
{

  return swift_deallocObject();
}

uint64_t sub_1E3F70334(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8VideosUI19SearchNoContentView_navigationSizingDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3F703A0(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_navigationSizingDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3900F50;
}

void sub_1E3F7045C(void *a1, void *a2)
{
  v5 = *&v2[*a2];
  *&v2[*a2] = a1;
  v3 = *&v2[*a2];
  v4 = a1;
  [v2 vui:v3 addSubview:v5 oldView:?];
  [v2 vui_setNeedsLayout];
}

id sub_1E3F704EC()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI19SearchNoContentView_navigationSizingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_5_210();
  *(v0 + v1) = sub_1E383BCC0();
  v2 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_subtitleTextLayout;
  *(v0 + v2) = sub_1E383BCC0();
  v3 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_debugTextLayout;
  *(v0 + v3) = sub_1E383BCC0();
  v4 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_messageLayout;
  type metadata accessor for ViewLayout();
  *(v0 + v4) = sub_1E3C2F968();
  v5 = sub_1E3C2F968();
  OUTLINED_FUNCTION_9_166(v5);
  v18 = v0;
  v19 = type metadata accessor for SearchNoContentView();
  v6 = OUTLINED_FUNCTION_2_0();
  v9 = objc_msgSendSuper2(v7, v8, v6);
  sub_1E3F707AC();
  if ([objc_opt_self() isTV])
  {
    v10 = [objc_opt_self() clearColor];
  }

  else
  {
    v10 = *sub_1E3E6011C();
  }

  v11 = v10;
  [v9 setVuiBackgroundColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E4299720;
  *(v12 + 32) = sub_1E3280A90(0, &qword_1EE23AEE0);
  *(v12 + 40) = sub_1E3280A90(0, &qword_1EE23AF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00);
  v13 = sub_1E42062A4();

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17[4] = sub_1E3F70F58;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1E3790FBC;
  v17[3] = &block_descriptor_142;
  v15 = _Block_copy(v17);

  [v9 vui:v13 registerForTraitChanges:v15 withHandler:?];
  _Block_release(v15);

  return v9;
}

uint64_t sub_1E3F707AC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_titleTextLayout;
  OUTLINED_FUNCTION_8();
  v4 = *(v3 + 1792);

  v4(10);

  v5 = *(v0 + v2);

  v6 = *sub_1E3E5FD88();
  v7 = *(*v5 + 680);
  v8 = v6;
  v7(v6);

  OUTLINED_FUNCTION_36();
  v10 = *(v9 + 1984);

  v10(1);

  LOBYTE(v186) = 2;
  LOBYTE(v185) = 27;
  LOBYTE(v184) = 27;

  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v176[0]) = v179;
  v11 = sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v138) = v173[0];
  v19 = OUTLINED_FUNCTION_3_226(v11, v12, v13, v14, v15, v16, v17, v18, v138, v143, v147, v152, v156, v162, 3);
  sub_1E3C2FCB8(v19, v20);
  *__dst = *v187;
  *&__dst[4] = v188;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v21 + 1600))(__dst, 48, v22 & 1, &qword_1F5D549D8);

  v23 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_subtitleTextLayout;
  OUTLINED_FUNCTION_36();
  v25 = *(v24 + 1696);

  v25(15);

  v26 = *(v1 + v23);

  v27 = *sub_1E3E5FDEC();
  v28 = *(*v26 + 680);
  v29 = v27;
  v28(v27);

  OUTLINED_FUNCTION_36();
  v31 = *(v30 + 1984);

  v31(1);

  OUTLINED_FUNCTION_36();
  v33 = *(v32 + 2056);

  v33(0, 0);

  OUTLINED_FUNCTION_36();
  v35 = *(v34 + 2176);

  v35(0, 0);

  OUTLINED_FUNCTION_28_80();
  sub_1E3952C88();
  OUTLINED_FUNCTION_50_38(v36, v37, v38, v39);
  sub_1E3952C88();
  OUTLINED_FUNCTION_16_138();
  sub_1E3952C88();
  OUTLINED_FUNCTION_14_162();
  sub_1E3952C88();
  v179 = v40;
  v180 = v41;
  v181 = v42;
  v182 = v43;
  LOBYTE(v183) = 0;
  type metadata accessor for UIEdgeInsets();
  v45 = v44;
  v46 = sub_1E3C3DE00(v44);
  *v173 = *v176;
  v174 = v177;
  LOBYTE(v175) = v178;
  v54 = OUTLINED_FUNCTION_3_226(v46, v47, v48, v49, v50, v51, v52, v53, v139, v144, v148, v153, v157, v163, __dst[0]);
  sub_1E3C2FCB8(v54, v55);
  OUTLINED_FUNCTION_19_136(v56, v57, v58, v59, v60, v61);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v70 = OUTLINED_FUNCTION_14_47(v62, v63, v64, v65, v66, v67, v68, v69, v140, v145, v149, v154, v158, v164, __dst[0]);
  v71(v70);

  v72 = objc_opt_self();

  v73 = [v72 systemRedColor];
  OUTLINED_FUNCTION_36();
  (*(v74 + 680))();

  OUTLINED_FUNCTION_36();
  v76 = *(v75 + 1696);

  v76(19);

  OUTLINED_FUNCTION_36();
  v78 = *(v77 + 1984);

  v78(1);

  OUTLINED_FUNCTION_36();
  v80 = *(v79 + 2056);

  v80(6, 0);

  OUTLINED_FUNCTION_36();
  v82 = *(v81 + 1720);

  v82(4);

  OUTLINED_FUNCTION_28_80();
  sub_1E3952C88();
  OUTLINED_FUNCTION_50_38(v83, v84, v85, v86);
  sub_1E3952C88();
  OUTLINED_FUNCTION_16_138();
  sub_1E3952C88();
  OUTLINED_FUNCTION_14_162();
  sub_1E3C3DE00(v45);
  v87 = OUTLINED_FUNCTION_5_17();
  LOBYTE(v159) = v175;
  v95 = OUTLINED_FUNCTION_3_226(v87, v88, v89, v90, v91, v92, v93, v94, v173[0], v173[1], v174, *(&v174 + 1), v159, v165, __dst[0]);
  sub_1E3C2FCB8(v95, v96);
  OUTLINED_FUNCTION_19_136(v97, v98, v99, v100, v101, v102);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v111 = OUTLINED_FUNCTION_14_47(v103, v104, v105, v106, v107, v108, v109, v110, v141, v146, v150, v155, v160, v166, __dst[0]);
  v112(v111);

  sub_1E3952C88();
  *__dst = v113;
  v169 = v114;
  v170 = v115;
  v171 = v116;
  LOBYTE(v172) = 0;
  sub_1E3952C88();
  OUTLINED_FUNCTION_50_38(v117, v118, v119, v120);
  sub_1E3952C88();
  OUTLINED_FUNCTION_16_138();
  sub_1E3952C88();
  OUTLINED_FUNCTION_14_162();
  sub_1E3C3DE00(v45);
  OUTLINED_FUNCTION_5_17();
  *v142 = *v173;
  v151 = v174;
  LOBYTE(v161) = v175;
  sub_1E3C2FCB8(__dst, v187);
  OUTLINED_FUNCTION_19_136(v121, v122, v123, v124, v125, v126);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v135 = OUTLINED_FUNCTION_14_47(v127, v128, v129, v130, v131, v132, v133, v134, v142[0], v142[1], v151, *(&v151 + 1), v161, v167, __dst[0]);
  v136(v135);
}

void sub_1E3F70F58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3F70FAC(0);
  }
}

void sub_1E3F70FAC(char a1)
{
  OUTLINED_FUNCTION_21();
  if ((*(v3 + 216))())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 8))(ObjectType, v5);
    v9 = v8;
    v11 = v10;
    v13 = v12;
    swift_unknownObjectRelease();
    v27.origin.x = v7;
    v27.origin.y = v9;
    v27.size.width = v11;
    v27.size.height = v13;
    if (CGRectGetHeight(v27) > 0.0)
    {
      v14 = [objc_opt_self() current];
      v25 = [v14 preferredContentSizeCategory];

      sub_1E4205F14();
      OUTLINED_FUNCTION_11_167();
      OUTLINED_FUNCTION_25_93();
      v16 = v16 && v14 == v15;
      if (!v16)
      {
        OUTLINED_FUNCTION_3_10();
        OUTLINED_FUNCTION_73_1();

        if (v1)
        {
          goto LABEL_28;
        }

        sub_1E4205F14();
        OUTLINED_FUNCTION_11_167();
        OUTLINED_FUNCTION_25_93();
        if (!v16 || v14 != v17)
        {
          OUTLINED_FUNCTION_3_10();
          OUTLINED_FUNCTION_73_1();

          if (v1)
          {
            goto LABEL_28;
          }

          sub_1E4205F14();
          OUTLINED_FUNCTION_11_167();
          OUTLINED_FUNCTION_25_93();
          if (!v16 || v14 != v19)
          {
            OUTLINED_FUNCTION_3_10();
            OUTLINED_FUNCTION_73_1();

            if (v1)
            {
              goto LABEL_28;
            }

            sub_1E4205F14();
            OUTLINED_FUNCTION_11_167();
            OUTLINED_FUNCTION_25_93();
            if (!v16 || v14 != v21)
            {
              OUTLINED_FUNCTION_3_10();
              OUTLINED_FUNCTION_73_1();

              if ((v1 & 1) == 0)
              {
                v23 = 0;
                v24 = 0;
LABEL_29:
                sub_1E3F72898(v23, v24);

                return;
              }

LABEL_28:
              v24 = a1 & 1;
              v23 = 1;
              goto LABEL_29;
            }
          }
        }
      }

      goto LABEL_28;
    }
  }

  sub_1E3F72898(0, 0);
}

void sub_1E3F71230()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI19SearchNoContentView_navigationSizingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_5_210();
  *(v0 + v1) = sub_1E383BCC0();
  v2 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_subtitleTextLayout;
  *(v0 + v2) = sub_1E383BCC0();
  v3 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_debugTextLayout;
  *(v0 + v3) = sub_1E383BCC0();
  v4 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_messageLayout;
  type metadata accessor for ViewLayout();
  *(v0 + v4) = sub_1E3C2F968();
  v5 = sub_1E3C2F968();
  OUTLINED_FUNCTION_9_166(v5);
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3F71328(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v9 = *&v5[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_debugLabel];
  if (v9)
  {
    [v9 removeFromSuperview];
  }

  v133 = a2;
  sub_1E3F70450(0);
  v10 = *&v5[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_queryDescriptionBar];
  if (v10)
  {
    [v10 removeFromSuperview];
  }

  sub_1E3F7042C(0);
  type metadata accessor for LayoutGrid();
  [v5 bounds];
  Width = CGRectGetWidth(v137);
  sub_1E3A2579C(Width);
  v12 = [v5 vuiTraitCollection];
  sub_1E3C2AE10();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  OUTLINED_FUNCTION_0_299();
  v20 = *(v19 + 1640);

  v20(v14, v16, v18);

  OUTLINED_FUNCTION_0_299();
  v22 = *(v21 + 1640);

  v22(v14, v16, v18);

  if (!a3)
  {
    sub_1E3280A90(0, &qword_1EE23AD40);
    v44 = [objc_allocWithZone(VUILocalizationManager) init];
    OUTLINED_FUNCTION_18_126("NO_CONTENT_VIEW_TITLE");

    OUTLINED_FUNCTION_0_299();
    v46 = *(v45 + 2408);

    v46(v47);

    OUTLINED_FUNCTION_12_151();
    v48 = v44;
    v49 = OUTLINED_FUNCTION_24_99();
    v53 = sub_1E3810954(v49, v50, v51, v52);
    sub_1E3F70438(v53);
    v54 = sub_1E3EA3A68();
    v55 = *v54;
    v56 = v54[1];

    sub_1E3277E60(v55, v56, a1, &v135);

    if (v136)
    {
      if (OUTLINED_FUNCTION_29_89())
      {
        v135 = v134;
        OUTLINED_FUNCTION_13_163();
        v57 = MEMORY[0x1E69E6158];
        if (sub_1E4207204())
        {
          v58 = [objc_allocWithZone(VUILocalizationManager) init];
          OUTLINED_FUNCTION_15_148();
          sub_1E3741090(v59 + 9, v60 | 0x8000000000000000, v58);
          v62 = v61;

          if (!v62)
          {
            goto LABEL_46;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
          v63 = swift_allocObject();
          *(v63 + 16) = xmmword_1E4297BE0;
          *(v63 + 56) = v57;
          *(v63 + 64) = sub_1E3283528();
          *(v63 + 32) = v134;
          sub_1E4205F44();
        }

        else
        {

          v106 = [objc_opt_self() standardUserDefaults];
          v107 = sub_1E4205ED4();
          v62 = [v106 stringForKey_];

          if (v62)
          {
            sub_1E4205F14();
          }
        }

        OUTLINED_FUNCTION_21_6();
        v109 = *(v108 + 2408);

        v109(v110);

        OUTLINED_FUNCTION_12_151();
        v111 = v62;
        v112 = OUTLINED_FUNCTION_24_99();
        v116 = sub_1E3810954(v112, v113, v114, v115);
        sub_1E3F70444(v116);
        if ((v133 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_34:
        v117 = sub_1E3EA3A80();
        v118 = a1;
        v119 = *v117;
        v120 = v117[1];

        sub_1E3277E60(v119, v120, v118, &v135);

        if (v136)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
          if (OUTLINED_FUNCTION_29_89())
          {
            OUTLINED_FUNCTION_15_148();
            v123 = sub_1E39BD118(v121 + 7, v122 | 0x8000000000000000, v134);

            if (v123)
            {
              type metadata accessor for ViewModel();

              v124 = sub_1E39BED80(89, v123, a4);
              if (v124)
              {
                v125 = v124;
                type metadata accessor for QueryDescriptionBar();
                v126 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
                sub_1E3F7042C(v126);
                v127 = *&v5[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_queryDescriptionBar];
                if (v127)
                {
                  v128 = *((*MEMORY[0x1E69E7D40] & *v127) + 0x100);
                  v129 = v127;

                  v128(v130);
                }

                v131 = sub_1E3D76A14(v125, 0);
                if (v131)
                {
                  type metadata accessor for QueryDescriptionBannerLayout();
                  v131 = swift_dynamicCastClass();
                  if (!v131)
                  {

                    v131 = 0;
                  }
                }

                *&v5[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_searchQueryDescriptionBannerLayout] = v131;

                sub_1E3F707AC();
              }
            }
          }
        }

        else
        {
          sub_1E329505C(&v135);
        }

        goto LABEL_30;
      }
    }

    else
    {
      sub_1E329505C(&v135);
    }

    if ((v133 & 1) == 0)
    {
LABEL_30:
      sub_1E3F70FAC(1);
      return;
    }

    goto LABEL_34;
  }

  if (a3 != 1)
  {
    v64 = objc_allocWithZone(VUILocalizationManager);
    v65 = v133;

    v66 = [v64 init];
    v67 = sub_1E3741090(0xD00000000000001BLL, 0x80000001E428AAF0, v66);
    v69 = v68;

    if (v69)
    {
      sub_1E3280A90(0, &qword_1EE23AD40);
      OUTLINED_FUNCTION_0_299();
      v71 = *(v70 + 2408);

      v73 = v71(v72);

      v65 = v133;
      v74 = *&v5[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_titleLabel];
      v75 = v74;
      v76 = sub_1E3810954(v67, v69, v73, v74);
      sub_1E3F70438(v76);
    }

    v77 = [objc_allocWithZone(VUILocalizationManager) init];
    v78 = sub_1E3741090(0xD00000000000001ELL, 0x80000001E428AB10, v77);
    v80 = v79;

    if (v80)
    {
      sub_1E3280A90(0, &qword_1EE23AD40);
      OUTLINED_FUNCTION_0_299();
      v82 = *(v81 + 2408);

      v84 = v82(v83);

      OUTLINED_FUNCTION_12_151();
      v85 = v77;
      v86 = sub_1E3810954(v78, v80, v84, v77);
      sub_1E3F70444(v86);
    }

    v87 = sub_1E4205ED4();
    v88 = MGGetBoolAnswer();

    if (v65)
    {
      if (v88)
      {
        sub_1E3280A90(0, &qword_1EE23AD40);
        OUTLINED_FUNCTION_0_299();
        v90 = *(v89 + 2408);

        v92 = v90(v91);

        OUTLINED_FUNCTION_12_151();
        v93 = v88;
        v94 = sub_1E3810954(a1, v65, v92, v88);
        sub_1E3F70450(v94);
      }

      else
      {
        sub_1E3F72A38(a1, v65, 2);
      }
    }

    goto LABEL_30;
  }

  sub_1E3280A90(0, &qword_1EE23AD40);
  v23 = objc_allocWithZone(VUILocalizationManager);

  v24 = [v23 init];
  v25 = OUTLINED_FUNCTION_18_126("NO_CONTENT_VIEW_TITLE");
  v27 = v26;

  OUTLINED_FUNCTION_0_299();
  v29 = *(v28 + 2408);

  v31 = v29(v30);

  OUTLINED_FUNCTION_12_151();
  v32 = v24;
  v33 = sub_1E3810954(v25, v27, v31, v24);
  sub_1E3F70438(v33);
  *&v135 = a1;
  *(&v135 + 1) = v133;
  OUTLINED_FUNCTION_13_163();
  v34 = MEMORY[0x1E69E6158];
  if (!sub_1E4207204())
  {
    sub_1E3F72A38(a1, v133, 1);
    v95 = [objc_opt_self() standardUserDefaults];
    v96 = sub_1E4205ED4();
    v97 = [v95 stringForKey_];

    if (v97)
    {
      v41 = sub_1E4205F14();
      v43 = v98;
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    goto LABEL_29;
  }

  v35 = [objc_allocWithZone(VUILocalizationManager) init];
  OUTLINED_FUNCTION_15_148();
  sub_1E3741090(v36 + 2, v37 | 0x8000000000000000, v35);
  v39 = v38;

  if (v39)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1E4297BE0;
    *(v40 + 56) = v34;
    *(v40 + 64) = sub_1E3283528();
    *(v40 + 32) = a1;
    *(v40 + 40) = v133;
    v41 = sub_1E4205F44();
    v43 = v42;

LABEL_29:
    OUTLINED_FUNCTION_21_6();
    v100 = *(v99 + 2408);

    v102 = v100(v101);

    v103 = *&v5[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_subtitleLabel];
    v104 = v103;
    v105 = sub_1E3810954(v41, v43, v102, v103);
    sub_1E3F70444(v105);
    goto LABEL_30;
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_1E3F71F60(char a1, double a2, double a3)
{
  v4 = v3;
  type metadata accessor for SearchNoContentView();
  v8 = OUTLINED_FUNCTION_6_12();
  objc_msgSendSuper2(v9, v10, v8);
  if (a1)
  {
    goto LABEL_53;
  }

  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  v13 = a2;
  v14 = a3;
  if (v12 == 1)
  {
    v15 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_searchQueryDescriptionBannerLayout;
    v14 = 0.0;
    v16 = a2;
    v17 = 0.0;
    if (*&v4[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_searchQueryDescriptionBannerLayout])
    {
      OUTLINED_FUNCTION_8();
      v19 = *(v18 + 1880);

      v16 = v19(v20, a2);

      if (*&v4[v15] && (OUTLINED_FUNCTION_8(), v22 = *(v21 + 1856), v23 = , v22(v126, v23), v24 = *v126, v25 = *&v126[1], v26 = *&v126[2], v27 = *&v126[3], , (v127 & 1) == 0))
      {
        v17 = sub_1E3952BE0(v24, v25, v26, v27);
      }

      else
      {
        v17 = 0.0;
      }
    }

    v13 = v16 - v17;
  }

  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(a2);
  v29 = v28;
  v124 = v30;
  v32 = v31;
  v33 = objc_opt_self();
  v34 = [v33 isTV];
  v35 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_queryDescriptionBar;
  v36 = *&v4[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_queryDescriptionBar];
  v120 = v29;
  if (v36)
  {
    [v36 sizeThatFits_];
    v113 = v44;
    v45 = v37;
    if (*&v4[v35])
    {
      if (*&v4[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_searchQueryDescriptionBannerLayout])
      {
        OUTLINED_FUNCTION_8();
        v47 = *(v46 + 152);

        v47(v128, v48);

        if ((v129 & 1) == 0)
        {
          Height = v128[0];
          goto LABEL_17;
        }
      }

LABEL_19:
      Height = 0.0;
      v122 = 0.0;
      if (v34)
      {
        goto LABEL_18;
      }

LABEL_20:
      v62 = a2 - OUTLINED_FUNCTION_27_88(Height, v37, v38, v39, v40, v41, v42, v43, v112, v113, v115, v117, v119, v120, v122, v124);
      if (v62 <= 400.0)
      {
        v61 = v62;
      }

      else
      {
        v61 = 400.0;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v45 = 0.0;
    v113 = 0.0;
  }

  OUTLINED_FUNCTION_24_1();
  if (!(*(v50 + 216))())
  {
    goto LABEL_19;
  }

  v52 = v51;
  ObjectType = swift_getObjectType();
  v54 = (*(v52 + 8))(ObjectType, v52);
  v56 = v55;
  v117 = v32;
  v119 = a2;
  v58 = v57;
  v60 = v59;
  swift_unknownObjectRelease();
  v134.origin.x = v54;
  v134.origin.y = v56;
  v134.size.width = v58;
  v134.size.height = v60;
  Height = CGRectGetHeight(v134);
LABEL_17:
  v122 = Height;
  if (!v34)
  {
    goto LABEL_20;
  }

LABEL_18:
  v61 = a2 - OUTLINED_FUNCTION_27_88(Height, v37, v38, v39, v40, v41, v42, v43, v112, v113, v115, v117, v119, v120, v122, v124);
LABEL_23:
  v63 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_titleLabel;
  v64 = *&v4[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_titleLabel];
  v65 = 0.0;
  v66 = 0.0;
  if (v64)
  {
    v67 = v64;

    sub_1E3C8B764(v68, v61, 0.0);
    v66 = v69;
  }

  v70 = OBJC_IVAR____TtC8VideosUI19SearchNoContentView_subtitleLabel;
  v71 = *&v4[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_subtitleLabel];
  if (v71)
  {
    v72 = v71;

    sub_1E3C8B764(v73, v61, 0.0);
    v65 = v74;
  }

  v125 = a3;
  OUTLINED_FUNCTION_21_6();
  v76 = *(v75 + 152);

  v76(v130, v77);

  v78 = *&v4[v70];
  v79 = 0.0;
  v80 = 0.0;
  if (v78)
  {
    if (v131)
    {
      v81 = 0.0;
    }

    else
    {
      v81 = v130[0];
    }

    v82 = *&v4[v63];
    v83 = v78;
    v84 = v82;
    sub_1E3C8B6B4(v82, v81);
    v80 = v85;
  }

  v116 = v45;
  v118 = v66;
  v86 = v45 + v66 + v65 + v80;
  v87 = [v4 vuiIsRTL];
  [v4 safeAreaInsets];
  if (v87)
  {
    v90 = v89;
  }

  else
  {
    v90 = v88;
  }

  OUTLINED_FUNCTION_24_1();
  if ((*(v91 + 216))())
  {
    v93 = v92;
    v94 = swift_getObjectType();
    v79 = (*(v93 + 16))(v94, v93);
    swift_unknownObjectRelease();
  }

  v95 = v90 + a2;
  v96 = v123 + v86;
  if (![v33 isPad] || (v97 = v125 - v79, v125 - v79 >= (v96 + v125) * 0.5))
  {
    v97 = v125;
  }

  v98 = 0.5;
  if ((v97 - v96) * 0.5 > v121)
  {
    v99 = (v97 - v96) * 0.5;
  }

  else
  {
    v99 = v121;
  }

  v100 = *&v4[v35];
  if (v100)
  {
    v101 = v100;
    [v4 safeAreaInsets];
    [v101 setFrame_];

    v98 = 0.5;
    v99 = v116 + v123 + v99;
  }

  v103 = (v95 - v61) * v98;
  v104 = *&v4[v63];
  if (v104)
  {
    [v104 setFrame_];
  }

  v105 = v118 + v80 + v99;
  v106 = *&v4[v70];
  if (v106)
  {
    [v106 setFrame_];
    v105 = v65 + v105;
  }

  v107 = *&v4[OBJC_IVAR____TtC8VideosUI19SearchNoContentView_debugLabel];
  if (v107)
  {
    OUTLINED_FUNCTION_21_6();
    v109 = *(v108 + 152);

    v110 = v107;
    v109(v132);

    v111 = v132[0];
    if (v133)
    {
      v111 = 0.0;
    }

    [v110 setFrame_];
  }

LABEL_53:
  OUTLINED_FUNCTION_6_12();
}

uint64_t sub_1E3F726A0()
{
  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI19SearchNoContentView_navigationSizingDelegate);
}

id sub_1E3F72780()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchNoContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3F72898(char a1, char a2)
{
  [v2 frame];
  if ((a1 & 1) == 0)
  {
    OUTLINED_FUNCTION_21();
    (*(v18 + 88))(v19, v20);
    v15 = sel_setContentOffset_;
    v14 = 0.0;
    v16 = v2;

    goto LABEL_11;
  }

  v6 = v5 + 10.0;
  [v2 frame];
  Width = CGRectGetWidth(v22);
  OUTLINED_FUNCTION_21();
  if ((*(v8 + 80))() != Width || v9 != v6)
  {
    OUTLINED_FUNCTION_21();
    v11 = OUTLINED_FUNCTION_6_12();
    v12(v11);
    if (a2)
    {
      [v2 bounds];
      v14 = 0.0;
      if ((v6 - v13) * 0.5 >= 0.0)
      {
        v14 = (v6 - v13) * 0.5;
      }

      v15 = sel_setContentOffset_animated_;
      v16 = v2;
      v17 = 1;

LABEL_11:
      [v16 v15];
    }
  }
}

uint64_t sub_1E3F72A38(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  result = a2;
  if (a3 == 2 || a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1E3F72A68(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3F72AA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E3F72AFC()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3F72BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_53_6();
  v17 = *(v16 + 152);

  v18 = OUTLINED_FUNCTION_5_211();
  v19(v18);
  sub_1E4206B94();
  v20 = VUISignpostLogObject();
  OUTLINED_FUNCTION_19_137();

  v21 = OUTLINED_FUNCTION_53_3();
  v22(v21);

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_29_30();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1E3F72CFC()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3F72DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_53_6();
  v17 = *(v16 + 184);

  v18 = OUTLINED_FUNCTION_5_211();
  v19(v18);
  sub_1E4206B94();
  v20 = VUISignpostLogObject();
  OUTLINED_FUNCTION_19_137();

  v21 = OUTLINED_FUNCTION_53_3();
  v22(v21);

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_29_30();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1E3F72EE8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3F72FE4()
{
  OUTLINED_FUNCTION_4_226();
  sub_1E4206B94();
  v0 = VUISignpostLogObject();
  OUTLINED_FUNCTION_9_167();

  v1 = OUTLINED_FUNCTION_16_139();
  v2(v1);

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E3F730E8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 200);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3F731E4()
{
  (*(v0 + 192))(*(v0 + 56), *(v0 + 32));
  OUTLINED_FUNCTION_4_226();
  sub_1E4206B94();
  v1 = VUISignpostLogObject();
  OUTLINED_FUNCTION_9_167();

  v2 = OUTLINED_FUNCTION_16_139();
  v3(v2);

  OUTLINED_FUNCTION_54();

  return v4();
}

uint64_t sub_1E3F73300(uint64_t a1, unint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_39();
  v8 = *v4;
  OUTLINED_FUNCTION_7();
  *v9 = v8;
  *(v10 + 128) = v3;

  if (v3)
  {
    v11 = sub_1E3F73648;
  }

  else
  {
    sub_1E38DCE1C(a1, a2);

    v11 = sub_1E3F7342C;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

void sub_1E3F73648()
{
  v1 = v0[16];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = sub_1E324FBDC();
  (*(v3 + 16))(v2, v9, v4);
  (*(v6 + 16))(v5, v8, v7);
  v10 = v1;
  v11 = sub_1E41FFC94();
  v12 = sub_1E4206814();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];
  if (v13)
  {
    v37 = v0[16];
    v18 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v18 = 136315394;
    sub_1E326D148();
    sub_1E4207944();
    v19 = OUTLINED_FUNCTION_7_202();
    v20(v19);
    v21 = OUTLINED_FUNCTION_58_1();
    v24 = sub_1E3270FC8(v21, v22, v23);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2112;
    v25 = v37;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v26;
    *v38 = v26;
    _os_log_impl(&dword_1E323F000, v11, v12, "NetworkLauncher: prewarmConnection error: url=%s error: %@", v18, 0x16u);
    sub_1E325F748(v38, &unk_1ECF28E30);
    OUTLINED_FUNCTION_6_0();
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v16 + 8))(v15, v17);
  }

  else
  {

    v27 = OUTLINED_FUNCTION_7_202();
    v28(v27);
    v29 = OUTLINED_FUNCTION_58_1();
    v31(v29, v30);
  }

  OUTLINED_FUNCTION_35_72();
  v32 = VUISignpostLogObject();
  OUTLINED_FUNCTION_21_105();

  v33 = OUTLINED_FUNCTION_7_202();
  v34(v33);

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_41_12();

  __asm { BRAA            X1, X16 }
}

id sub_1E3F7394C(uint64_t a1, double a2)
{
  *&v2[OBJC_IVAR____TtC8VideosUI15RatingBadgeView_rating] = a2;
  *&v2[OBJC_IVAR____TtC8VideosUI15RatingBadgeView_layout] = a1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for RatingBadgeView();

  v3 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  [v5 setBackgroundColor_];

  [v5 setOpaque_];

  return v5;
}

double sub_1E3F73ADC()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 176);

  v1(v10, v2);

  if (v11)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = *&v10[1] + *&v10[3] + 0.0;
  }

  sub_1E3F73EF0();
  v4 = sub_1E3F74038() * 5.0;
  OUTLINED_FUNCTION_8();
  v6 = *(v5 + 1728);

  v8 = v6(v7);

  return v3 + v4 + v8 * 4.0;
}

char *sub_1E3F73C4C()
{
  v1 = *(**&v0[OBJC_IVAR____TtC8VideosUI15RatingBadgeView_layout] + 1704);

  LOBYTE(v0) = v1(v2);

  if (!v0)
  {
    return v0;
  }

  v3 = objc_opt_self();
  v4 = sub_1E4205ED4();
  v5 = sub_1E3F73F68();
  v0 = [v3 vuiSystemImageNamed:v4 withConfiguration:v5 accessibilityDescription:0];

  return v0;
}

id sub_1E3F73D70()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_300();
  v3 = *(v2 + 1704);

  LODWORD(v3) = v3(v4);

  if (!v3)
  {
    return 0;
  }

  v5 = objc_opt_self();
  v6 = sub_1E4205ED4();
  v7 = sub_1E3F73F68();
  v8 = [v5 vuiSystemImageNamed:v6 withConfiguration:v7 accessibilityDescription:0];

  v9 = [v1 effectiveUserInterfaceLayoutDirection];
  v10 = [v8 CGImage];
  if (v10)
  {
    v11 = v10;
    if (v9 == 1)
    {
      [v8 scale];
      v13 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v11 scale:5 orientation:v12];

      return v13;
    }

    else
    {
    }
  }

  return v8;
}

double sub_1E3F73EF0()
{
  OUTLINED_FUNCTION_0_300();
  v1 = *(v0 + 1704);

  LOBYTE(v1) = v1(v2);

  return dbl_1E42E0D28[v1];
}

unint64_t sub_1E3F73F68()
{
  OUTLINED_FUNCTION_0_300();
  v1 = *(v0 + 1704);

  LOBYTE(v1) = v1(v2);

  result = v1;
  v4 = 14.0;
  switch(v1)
  {
    case 1:
      goto LABEL_4;
    case 2:
      v4 = 26.0;
      goto LABEL_4;
    case 3:
    case 4:
      v4 = 32.0;
LABEL_4:
      result = [objc_opt_self() configurationWithPointSize_];
      break;
    default:
      return result;
  }

  return result;
}

double sub_1E3F74038()
{
  v0 = sub_1E3F73C4C();
  if (v0)
  {
    v1 = v0;
    [v0 size];
    v3 = v2 * sub_1E3F73EF0();
    [v1 size];
    v5 = v4;

    return v3 / v5;
  }

  else
  {

    return sub_1E3F73EF0();
  }
}

uint64_t sub_1E3F740C4()
{
  OUTLINED_FUNCTION_0_300();
  v1 = *(v0 + 672);

  v3 = v1(v2);

  if (v3)
  {
    return v3;
  }

  sub_1E3755B54();
  return sub_1E4206F24();
}

void sub_1E3F74158()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 176);

  v3(v72, v4);
  v5 = *v72;
  v6 = *&v72[1];
  v7 = *&v72[2];

  if (v73)
  {
    v8 = *MEMORY[0x1E69DDCE0];
  }

  else
  {
    v8 = v5;
  }

  if (v73)
  {
    v6 = *(MEMORY[0x1E69DDCE0] + 8);
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
  }

  OUTLINED_FUNCTION_8();
  v10 = *(v9 + 1728);

  v12 = v10(v11);

  v13 = [v0 effectiveUserInterfaceLayoutDirection];
  v14 = *&v0[OBJC_IVAR____TtC8VideosUI15RatingBadgeView_rating];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA60);
  v15 = swift_allocObject();
  v16 = _swift_stdlib_malloc_size(v15);
  v15[2] = 5;
  v15[3] = 2 * ((v16 - 32) / 8);
  v17 = v74;
  v18 = (v15 + 4);
  v19 = 5;
  v20 = 1;
  v21 = 5;
  if (v13 == 1)
  {
    v17 = sub_1E3F74A74(v74, v18, 5, 1, 5);
    if (v17 == 5)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (sub_1E3F749D8(v17, v18, v19, v20, v21) != 5)
  {
    goto LABEL_51;
  }

LABEL_10:
  v22 = round(v14 * 10.0) * 0.5;
  v23 = sub_1E3F73C4C();
  v71 = v15;
  if (!v23)
  {
LABEL_24:
    v45 = UIGraphicsGetCurrentContext();
    if (v45)
    {
      v46 = v45;
      v47 = sub_1E3F740C4();
      v48 = [v47 CGColor];

      v49 = sub_1E3F740C4();
      v50 = [v49 colorWithAlphaComponent_];

      v51 = [v50 CGColor];
      if (v13 == 1)
      {
        v52 = v48;
      }

      else
      {
        v52 = v51;
      }

      if (v13 == 1)
      {
        v53 = v51;
      }

      else
      {
        v53 = v48;
      }

      v54 = v53;
      v55 = v52;
      CGContextTranslateCTM(v46, v6, v7);
      sub_1E3F74038();
      sub_1E3F73EF0();
      sub_1E3F74038();
      v75.origin.x = OUTLINED_FUNCTION_1_264();
      CGRectGetMidX(v75);
      v76.origin.x = OUTLINED_FUNCTION_1_264();
      CGRectGetMidY(v76);
      Mutable = CGPathCreateMutable();
      v74[0] = 0x3FF0000000000000;
      v74[1] = 0;
      v74[2] = 0;
      v74[3] = 0x3FF0000000000000;
      v74[4] = 0;
      v74[5] = 0;
      OUTLINED_FUNCTION_3_227();
      sub_1E42068B4();
      v57 = CGPathCreateMutable();
      OUTLINED_FUNCTION_3_227();
      sub_1E42068B4();
      v58 = v15[2];
      if (v58)
      {
        v59 = 4;
        do
        {
          v60 = v15[v59];
          v61 = v60;
          if (v22 >= v60)
          {
            CGContextAddPath(v46, Mutable);
            v65 = v48;
          }

          else
          {
            v40 = __OFSUB__(v60, 1);
            v62 = v60 - 1;
            if (v40)
            {
              goto LABEL_50;
            }

            v63 = v62;
            CGContextAddPath(v46, Mutable);
            v64 = v22 >= v61 || v22 <= v63;
            v65 = v51;
            if (!v64)
            {
              CGContextSetFillColorWithColor(v46, v54);
              CGContextDrawPath(v46, kCGPathFill);
              v65 = v55;
            }
          }

          CGContextAddPath(v46, v57);
          CGContextSetFillColorWithColor(v46, v65);
          CGContextDrawPath(v46, kCGPathFill);
          v77.origin.x = OUTLINED_FUNCTION_1_264();
          Width = CGRectGetWidth(v77);
          CGContextTranslateCTM(v46, v12 + Width, 0.0);
          ++v59;
          --v58;
          v15 = v71;
        }

        while (v58);
      }
    }

    OUTLINED_FUNCTION_4_227();

    return;
  }

  v70 = v23;
  v24 = sub_1E3F73D70();
  if (!v24)
  {

    goto LABEL_24;
  }

  v25 = v24;
  v26 = sub_1E3F740C4();
  v27 = [v70 imageWithTintColor_];

  v28 = [v27 imageWithRenderingMode_];
  v29 = [objc_opt_self() grayColor];
  v30 = [v70 imageWithTintColor_];

  v31 = [v30 imageWithRenderingMode_];
  v32 = sub_1E3F740C4();
  v33 = [v25 imageWithTintColor_];

  v34 = v15[2];
  if (!v34)
  {
LABEL_46:

    OUTLINED_FUNCTION_4_227();

    return;
  }

  v35 = v34 - 1;
  for (i = 4; ; ++i)
  {
    v37 = v71[i];
    v38 = v37;
    v39 = v28;
    if (v22 >= v37)
    {
      goto LABEL_20;
    }

    v40 = __OFSUB__(v37, 1);
    v41 = v37 - 1;
    if (v40)
    {
      break;
    }

    v39 = v31;
    if (v22 > v41)
    {
      if (v22 >= v38)
      {
        v39 = v31;
      }

      else
      {
        v39 = v33;
      }
    }

LABEL_20:
    v42 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
    v43 = sub_1E3F74038();
    [v42 setFrame_];
    [v1 addSubview_];
    v44 = sub_1E3F74038();

    if (!v35)
    {
      goto LABEL_46;
    }

    v6 = v6 + v12 + v44;
    --v35;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

id sub_1E3F74818()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RatingBadgeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3F74890(double a1)
{
  result = swift_beginAccess();
  *(v1 + 104) = a1;
  return result;
}

uint64_t sub_1E3F7492C(void *a1, char a2, double a3)
{
  *(v3 + 98) = a2;
  *(v3 + 104) = a3;
  v5 = sub_1E3C2F9A0();

  return v5;
}

uint64_t sub_1E3F74998()
{
  *(v0 + 98) = 0;
  *(v0 + 104) = 0x4020000000000000;
  return sub_1E3C2F9A0();
}

uint64_t sub_1E3F749A8()
{
  v0 = sub_1E3C36C6C();

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

uint64_t sub_1E3F749D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v6 = 0;
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_14:
    v7 = a4;
LABEL_16:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = a4;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6)
      {
        v6 = 1;
        a3 = v5;
        goto LABEL_16;
      }

      v6 = v7 == a5;
      if (v7 == a5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_18;
        }
      }

      *(a2 + 8 * v5++) = v7;
      v7 = v9;
      if (v8 == a3)
      {
        v7 = v9;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3F74A74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v7 = 0;
    a3 = 0;
    v5 = 1;
LABEL_16:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v5;
    return a3;
  }

  v5 = a3 == 0;
  if (!a3)
  {
    v7 = 0;
    goto LABEL_16;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v6 = 0;
  v7 = 0;
  v5 = 1;
  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_18:
      v5 = 0;
      v7 = a4;
      a3 = v6;
      goto LABEL_16;
    }

    if (v5)
    {
      break;
    }

    if (v7 == a4)
    {
      goto LABEL_18;
    }

    if (v7 <= a4)
    {
      goto LABEL_19;
    }

    --v7;
LABEL_12:
    v5 = 0;
    *(a2 + 8 * v6++) = v7;
    if (v8 == a3)
    {
      goto LABEL_16;
    }
  }

  v7 = a5;
  if (a5 >= a4)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1E3F74B24()
{
  result = qword_1ECF3D300;
  if (!qword_1ECF3D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D300);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RatingBadgeViewStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3F74CB0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_301();
  *(v1 + 296) = a1;
}

uint64_t sub_1E3F74CE8()
{
  v1 = sub_1E39611B8();
  (*(*v0 + 672))(v1);
  v8[3] = &type metadata for ViewModelKeys;
  v8[4] = &off_1F5D7BCA8;
  LOBYTE(v8[0]) = 26;
  sub_1E3F9F164(v8);

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (swift_dynamicCast())
    {
      v2 = v7;
      __swift_destroy_boxed_opaque_existential_1(v8);
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
    sub_1E329505C(v9);
  }

  v2 = sub_1E4205CB4();
LABEL_7:
  v3 = type metadata accessor for ViewModel();
  v4 = sub_1E3DD5014(13, v2, v0, v3);

  if (!v4)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  result = sub_1E32AE9B0(v4);
  if (!result)
  {

    goto LABEL_14;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1E6911E60](0, v4);
    goto LABEL_12;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);

LABEL_12:

LABEL_15:
    OUTLINED_FUNCTION_0_301();
    v0[37] = v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3F74F98()
{
  v0 = sub_1E3961F54();

  return MEMORY[0x1EEE6BDC0](v0, 304, 7);
}

uint64_t sub_1E3F75004()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    v1 = sub_1E3BBD964(3, v3 & 1, v4, v5 & 1);
    *(v2 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E3F750C4()
{
  *(v0 + 104) = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E3F75118();
  v2 = sub_1E3F75004();
  sub_1E3C37CBC(v2, 59);

  return v1;
}

uint64_t sub_1E3F75118()
{
  v25[0] = sub_1E3952C10(40.0, 32.0);
  v25[1] = v0;
  v25[2] = v1;
  v25[3] = v2;
  LOBYTE(v25[4]) = 0;
  v49 = sub_1E3952C10(64.0, 64.0);
  v50 = v3;
  v51 = v4;
  v52 = v5;
  v53 = 0;
  v44 = sub_1E3952C10(30.0, 10.0);
  v45 = v6;
  v46 = v7;
  v47 = v8;
  v48 = 0;
  type metadata accessor for UIEdgeInsets();
  v10 = v9;
  sub_1E3C2FC98();
  v38 = v41;
  v39 = v42;
  v40 = v43;
  sub_1E3C3DE00(v10);
  v32 = v35;
  v33 = v36;
  v34 = v37;
  sub_1E3C3DE00(v10);
  v26 = v29;
  v27 = v30;
  v28 = v31;
  sub_1E3C2FCB8(v25, __src);
  memcpy(v25, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v12 = *(v11 + 1600);
  v12(v25, 1, v13 & 1, v10);
  v25[0] = 0x4030000000000000;
  LOBYTE(v25[1]) = 0;
  v49 = 32.0;
  LOBYTE(v50) = 0;
  v44 = 48.0;
  LOBYTE(v45) = 0;
  *&v41 = 0x4030000000000000;
  BYTE8(v41) = 0;
  v14 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  v15 = OUTLINED_FUNCTION_3_228();
  sub_1E3C3DE00(v15);
  OUTLINED_FUNCTION_2_225();
  sub_1E3C2FCB8(v16, v17);
  memcpy(v25, __src, 0x59uLL);
  v18 = OUTLINED_FUNCTION_18();
  v12(v25, 10, v18 & 1, v14);
  v25[0] = 0x4059000000000000;
  LOBYTE(v25[1]) = 0;
  v49 = 128.0;
  LOBYTE(v50) = 0;
  v44 = 60.0;
  LOBYTE(v45) = 0;
  *&v41 = 0x4050000000000000;
  BYTE8(v41) = 0;
  sub_1E3C2FC98();
  v19 = OUTLINED_FUNCTION_3_228();
  sub_1E3C3DE00(v19);
  OUTLINED_FUNCTION_2_225();
  sub_1E3C2FCB8(v20, v21);
  memcpy(v25, __src, 0x59uLL);
  v22 = OUTLINED_FUNCTION_18();
  v12(v25, 8, v22 & 1, v14);
  OUTLINED_FUNCTION_36();
  (*(v23 + 800))(1);
  return sub_1E3F753F8();
}

uint64_t sub_1E3F753F8()
{
  sub_1E3F75004();
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  OUTLINED_FUNCTION_36();
  (*(v3 + 752))();

  v4 = *(**(v0 + 104) + 208);

  v4(0, 1);

  OUTLINED_FUNCTION_0_302();
  v6 = *(v5 + 256);

  v6(0, 1);

  OUTLINED_FUNCTION_0_302();
  v8 = *(v7 + 2048);

  v8(v9);

  OUTLINED_FUNCTION_3_11();
  (*(v10 + 2056))(1, 0);

  OUTLINED_FUNCTION_0_302();
  v12 = *(v11 + 2048);

  v12(v13);

  OUTLINED_FUNCTION_3_11();
  (*(v14 + 464))(1);

  OUTLINED_FUNCTION_3_11();
  v16 = *(v15 + 2048);

  v16(v17);

  __dst[0] = sub_1E3952C40();
  __dst[1] = v18;
  __dst[2] = v19;
  __dst[3] = v20;
  LOBYTE(__dst[4]) = 0;
  v68 = sub_1E3952C40();
  v69 = v21;
  v70 = v22;
  v71 = v23;
  v72 = 0;
  type metadata accessor for UIEdgeInsets();
  v25 = v24;
  sub_1E3C2FC98();
  v62 = v65;
  v63 = v66;
  v64 = v67;
  sub_1E3C3DE00(v25);
  v56 = v59;
  v57 = v60;
  v58 = v61;
  sub_1E3C3DE00(v25);
  v50 = v53;
  v51 = v54;
  v52 = v55;
  sub_1E3C3DE00(v25);
  v44 = v47;
  v45 = v48;
  v46 = v49;
  sub_1E3C2FCB8(__dst, __src);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v26 + 1600))(__dst, 1, v27 & 1, v25);

  OUTLINED_FUNCTION_3_11();
  v29 = *(v28 + 2048);

  v29(v30);

  LOBYTE(__dst[0]) = 7;
  sub_1E3C2FC98();
  LOBYTE(v65) = LOBYTE(v68);
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v59) = v62;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v53) = v56;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v47) = v50;
  sub_1E3C3DE00(&qword_1F5D549D8);
  sub_1E3C2FCB8(__dst, __src);
  LODWORD(__dst[0]) = __src[0];
  WORD2(__dst[0]) = __src[1];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v31 + 1600))(__dst, 48, v32 & 1, &qword_1F5D549D8);

  OUTLINED_FUNCTION_0_302();
  v34 = *(v33 + 2048);

  v34(v35);

  v36 = [v1 whiteColor];
  OUTLINED_FUNCTION_3_11();
  (*(v37 + 680))();

  OUTLINED_FUNCTION_0_302();
  v39 = *(v38 + 2048);

  v41 = v39(v40);

  (*(*v41 + 872))([v1 lightGrayColor]);
}

uint64_t sub_1E3F75A84()
{
  v0 = sub_1E41FFCB4();
  __swift_allocate_value_buffer(v0, qword_1EE28C878);
  __swift_project_value_buffer(v0, qword_1EE28C878);
  return sub_1E41FFCA4();
}

id VUITimeMetadataFactory.makeViewController(playbackInfo:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32C68);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v42 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32C70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v39 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - v7;
  sub_1E41FEE84();
  OUTLINED_FUNCTION_0_10();
  v40 = v10;
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1E41FEE64();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_MergedGlobals_256 != -1)
  {
    swift_once();
  }

  v18 = sub_1E41FFCB4();
  __swift_project_value_buffer(v18, qword_1EE28C878);
  v19 = a1;
  v20 = sub_1E41FFC94();
  v21 = sub_1E4206814();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&dword_1E323F000, v20, v21, "Make timed metadata view controller from playbackInfo: %@", v22, 0xCu);
    sub_1E3A66B00(v23);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  type metadata accessor for VUITimerBasedMetadataVendor();
  swift_allocObject();
  v25 = sub_1E3F7612C();
  v26 = [v19 programId];
  sub_1E4205F14();

  sub_1E3AF4040(v19);
  [v19 featureStartTime];
  sub_1E3AF40A4(v19);
  sub_1E41FEE54();
  [v19 currentTime];
  v27 = [v19 timeStamp];
  sub_1E41FE584();

  v28 = sub_1E41FE5D4();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v28);
  [v19 playbackRate];
  v29 = [v19 audioLanguage];
  sub_1E4205F14();

  sub_1E41FEE74();
  v31 = v38;
  v30 = v39;
  (*(v14 + 16))(v39, v17, v38);
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v31);

  sub_1E41FF194();
  v33 = v40;
  v32 = v41;
  v34 = v42;
  (*(v40 + 16))(v42, v12, v41);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v32);
  sub_1E41FEE94();

  type metadata accessor for TimedMetadataViewController();
  v35 = sub_1E3AEEED4(1, v25);
  (*(v33 + 8))(v12, v32);
  (*(v14 + 8))(v17, v31);
  return v35;
}

uint64_t type metadata accessor for VUITimerBasedMetadataVendor()
{
  result = qword_1EE294180;
  if (!qword_1EE294180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3F7612C()
{
  sub_1E41FFCA4();
  v0 = sub_1E41FF1B4();
  sub_1E3F76678();
  swift_retain_n();
  sub_1E41FEEA4();

  return v0;
}

uint64_t sub_1E3F761BC()
{
  v1 = qword_1EE294190;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1E3F76218()
{
  v0 = sub_1E328740C();
  v1 = *((*MEMORY[0x1E69E7D40] & **v0) + 0xF8);
  v2 = *v0;
  v1();

  v3 = sub_1E41FF1D4();
  v4 = qword_1EE294190;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_10();
  (*(v5 + 8))(v3 + v4);
  return v3;
}

uint64_t sub_1E3F762CC()
{
  v0 = sub_1E3F76218();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3F76320(uint64_t a1, uint64_t a2)
{

  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    if (a2)
    {
      v8 = MEMORY[0x1E69E6158];
      v9 = a1;
      v10 = a2;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v8 = 0;
      v17[2] = 0;
    }

    v17[0] = v9;
    v17[1] = v10;
    v17[3] = v8;

    v11 = sub_1E3294FA4(v17);
    v13 = sub_1E3270FC8(v11, v12, &v18);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_1E323F000, v4, v5, "Saved Songs playlist was fetched. Playlist ID: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  if (a2)
  {
    v14 = sub_1E328740C();
    v15 = *((*MEMORY[0x1E69E7D40] & **v14) + 0xF0);
    v16 = *v14;
    v15(a1, a2);
  }
}

uint64_t sub_1E3F764F8()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3F76580;

  return sub_1E3DBD324();
}

uint64_t sub_1E3F76580()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

unint64_t sub_1E3F76678()
{
  result = qword_1ECF3D308;
  if (!qword_1ECF3D308)
  {
    type metadata accessor for VUITimerBasedMetadataVendor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D308);
  }

  return result;
}

uint64_t sub_1E3F766D0()
{
  result = sub_1E41FFCB4();
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

void sub_1E3F76770()
{
  OUTLINED_FUNCTION_31_1();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF396A0);
  OUTLINED_FUNCTION_0_10();
  v41 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v45 = v40 - v4;
  OUTLINED_FUNCTION_222();
  v5 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_45();
  v7 = (*(v6 + 440))();
  if (!sub_1E374E8E4(v7, 1))
  {
LABEL_39:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_16_89();
  v9 = (*(v8 + 256))();
  v47 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_7_20();
  v11 = (*(v10 + 736))();
  v12 = sub_1E32AE9B0(v11);
  if (!v12)
  {

    v24 = MEMORY[0x1E69E7CC0];
LABEL_18:
    if (v24 >> 62)
    {
LABEL_42:
      sub_1E3280A90(0, &qword_1EE23B250);
      OUTLINED_FUNCTION_19_3();
      v25 = sub_1E42076C4();
    }

    else
    {

      sub_1E42079D4();
      sub_1E3280A90(0, &qword_1EE23B250);
      v25 = v24;
    }

    sub_1E3F81310(v25, 0, v9);

    j__OUTLINED_FUNCTION_51_1();
    sub_1E4084434();
    sub_1E3F76DEC();
    OUTLINED_FUNCTION_39();
    v50 = (*((*&v5->Flags & v26) + 0x290))();
    v51 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
    sub_1E328FCF4(&qword_1EE279310, &qword_1ECF2F1F0);
    sub_1E4206194();
    v28 = sub_1E3280A90(255, &qword_1EE23B250);
    v5 = &protocol descriptor for TemplateReparentable;
    v43 = v28;
    while (1)
    {
      v47 = MEMORY[0x1E69E6158];
      v48 = v28;
      v49 = MEMORY[0x1E69E6168];
      swift_getOpaqueTypeConformance2();
      sub_1E4207174();
      v9 = v51;
      if (!v51)
      {
        break;
      }

      v29 = v52;
      objc_opt_self();
      OUTLINED_FUNCTION_20_2();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        v46 = v29;
        v31 = [v30 viewControllers];
        OUTLINED_FUNCTION_106();
        swift_checkMetadataState();
        OUTLINED_FUNCTION_20_2();
        v32 = sub_1E42062B4();

        if (v32 >> 62)
        {
          v33 = sub_1E4207384();
        }

        else
        {
          v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        for (i = 0; ; ++i)
        {
          if (v33 == i)
          {

            v28 = v43;
            v29 = v46;
            goto LABEL_36;
          }

          if ((v32 & 0xC000000000000001) != 0)
          {
            v35 = MEMORY[0x1E6911E60](i, v32);
          }

          else
          {
            if (i >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_41;
            }

            v35 = *(v32 + 8 * i + 32);
          }

          v36 = v35;
          if (__OFADD__(i, 1))
          {
            break;
          }

          swift_getObjectType();
          if (dynamic_cast_existential_1_conditional(v36))
          {
            v38 = v37;
            ObjectType = swift_getObjectType();
            (*(v38 + 64))(1, ObjectType, v38);
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_36:
    }

    (*(v41 + 8))(v45, v44);
    goto LABEL_39;
  }

  v13 = v12;
  if (v12 >= 1)
  {
    v40[0] = v9;
    v40[1] = v1;
    v40[2] = v0;
    v14 = 0;
    OUTLINED_FUNCTION_7_20();
    v15 += 82;
    v46 = *v15;
    v43 = v15;
    v42 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1E6911E60](v14, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v14 + 32);
      }

      v17 = v16;
      v19 = *&v16[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
      v18 = *&v16[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];

      v46(v20);
      OUTLINED_FUNCTION_134_2();
      v50 = v19;
      v51 = v18;
      sub_1E3280A90(0, &qword_1EE23B250);
      sub_1E3CA4D00();

      v21 = v53;
      if (v53)
      {
        objc_opt_self();
        OUTLINED_FUNCTION_20_2();
        if (swift_dynamicCastObjCClass())
        {
          v22 = v21;
          MEMORY[0x1E6910BF0]();
          v23 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v23 >> 1)
          {
            OUTLINED_FUNCTION_35(v23);
            sub_1E42062F4();
          }

          sub_1E4206324();

          v42 = v47;
          goto LABEL_15;
        }
      }

LABEL_15:
      if (v13 == ++v14)
      {

        v5 = MEMORY[0x1E69E7D40];
        v9 = v40[0];
        v24 = v42;
        goto LABEL_18;
      }
    }
  }

  __break(1u);
}

void sub_1E3F76DEC()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 432))();
  if (v2)
  {

    OUTLINED_FUNCTION_4_0();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = sub_1E3F813A4;
    v11 = v3;
    v6 = MEMORY[0x1E69E9820];
    v7 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v8 = v4;
    v9 = &block_descriptor_143;
    v5 = _Block_copy(&v6);

    [v0 dismissViewControllerAnimated:1 completion:{v5, v6, v7}];
    _Block_release(v5);
  }

  else
  {

    sub_1E3F7D644(0);
  }
}

void sub_1E3F76F10(char a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_222();
  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_13_164();
  (*(v5 + 440))();
  sub_1E397C3E4();
  if (sub_1E4205E84())
  {
    OUTLINED_FUNCTION_18_1();
    if ((*(v6 + 384))())
    {
      OUTLINED_FUNCTION_18_1();
      v8 = (v7 + 368);
      if (a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      (*v8)(v9);
    }
  }

  else
  {
    v10 = [objc_opt_self() sharedApplication];
    v11 = [v10 applicationState];

    if (v11 != 2)
    {
      OUTLINED_FUNCTION_13_164();
      v13 = (v12 + 448);
      if (a1)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      (*v13)(v14);
      (*((*v4 & *v2) + 0x138))(1);
    }
  }
}

void sub_1E3F770EC()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 440))();
  if (!sub_1E374E8E4(v1, 2))
  {
    j__OUTLINED_FUNCTION_51_1();
    j__OUTLINED_FUNCTION_51_1();

    sub_1E408450C();
  }
}

void sub_1E3F771A8(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_154();
  v2 = (*(v1 + 632))();
  v33 = *(v2 + 16);
  if (v33)
  {
    v3 = 0;
    v34 = v2;
    v35 = v2 + 32;
    while (v3 < *(v2 + 16))
    {
      v37 = v3;
      sub_1E327F454(v35 + 40 * v3, v41);
      v4 = v42;
      v5 = v43;
      __swift_project_boxed_opaque_existential_1(v41, v42);
      (*(v5 + 32))(v4, v5);
      OUTLINED_FUNCTION_106();
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
      OUTLINED_FUNCTION_156_1();
      v6 = sub_1E4207604();

      v38 = *(v6 + 16);
      if (v38)
      {
        v7 = 0;
        OUTLINED_FUNCTION_154();
        v9 = *(v8 + 904);
        v10 = v6 + 32;
        while (v7 < *(v6 + 16))
        {
          v11 = sub_1E327F454(v10, v39);
          v12 = v9(v11);
          v14 = v13;
          v15 = v42;
          OUTLINED_FUNCTION_0_257(v41, v42);
          v17 = v16(v15);
          if (v14)
          {
            if (v12 == v17 && v14 == v18)
            {
LABEL_26:

LABEL_28:

              MEMORY[0x1E6909170](v7, v37);
              v32 = sub_1E41FE874();
              __swift_storeEnumTagSinglePayload(a1, 0, 1, v32);
              __swift_destroy_boxed_opaque_existential_1(v39);
              __swift_destroy_boxed_opaque_existential_1(v41);
              return;
            }

            v20 = OUTLINED_FUNCTION_102_16();

            if (v20)
            {
              goto LABEL_27;
            }
          }

          else
          {
          }

          v22 = v9(v21);
          v24 = v23;
          v25 = v40;
          OUTLINED_FUNCTION_0_257(v39, v40);
          v27 = v26(v25);
          if (v24)
          {
            if (v22 == v27 && v24 == v28)
            {
              goto LABEL_26;
            }

            v30 = OUTLINED_FUNCTION_102_16();

            if (v30)
            {
LABEL_27:

              goto LABEL_28;
            }
          }

          else
          {
          }

          ++v7;
          __swift_destroy_boxed_opaque_existential_1(v39);
          v10 += 40;
          if (v38 == v7)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        break;
      }

LABEL_24:
      v3 = v37 + 1;

      __swift_destroy_boxed_opaque_existential_1(v41);
      v2 = v34;
      if (v37 + 1 == v33)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    v31 = sub_1E41FE874();
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v31);
  }
}

uint64_t sub_1E3F77520()
{
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_13_164();
  (*(v2 + 440))();
  sub_1E397C3E4();
  result = sub_1E4205E84();
  if ((result & 1) == 0)
  {
    OUTLINED_FUNCTION_13_164();
    result = (*(v4 + 1096))();
    if (v5)
    {
      OUTLINED_FUNCTION_159_3();
      v6 = sub_1E396B0E4();
      if (v1 == *v6 && v0 == v6[1])
      {
      }

      else
      {
        v8 = sub_1E42079A4();

        if ((v8 & 1) == 0)
        {
          return result;
        }
      }

      OUTLINED_FUNCTION_13_164();
      v10 = *(v9 + 544);

      v11 = OUTLINED_FUNCTION_13_8();
      return v10(v11);
    }
  }

  return result;
}

void sub_1E3F77680(char a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_51_4();
  v7(v1);
  v8 = sub_1E41FFC94();
  v9 = sub_1E4206814();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_1E323F000, v8, v9, "RootSplitViewController:: libraryHideSideBar: hidden:%{BOOL}d", v10, 8u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v1, v3);
  OUTLINED_FUNCTION_21();
  (*(v11 + 440))();
  sub_1E397C3E4();
  if ((sub_1E4205E84() & 1) == 0)
  {
    sub_1E3F77858();
  }
}

void sub_1E3F77858()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_26_3();
  v11 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v12) + 0x150))(v3);
  OUTLINED_FUNCTION_26_3();
  v14 = *((*v11 & v13) + 0x198);
  if (v14())
  {
    if (v3)
    {
      v15 = sub_1E324FBDC();
      (*(v6 + 16))(v10, v15, v4);
      v16 = sub_1E41FFC94();
      v17 = sub_1E4206814();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_50_4(v18);
        OUTLINED_FUNCTION_108_12(&dword_1E323F000, v16, v17, "RootSplitViewController:: clearing user preferred display mode due sidebar being disabled");
        OUTLINED_FUNCTION_21_0();
      }

      (*(v6 + 8))(v10, v4);
      (*((*v11 & *v1) + 0x1A0))(0);
      goto LABEL_7;
    }
  }

  else if (v3)
  {
LABEL_7:
    [v1 setPreferredDisplayMode_];
    [v1 setDisplayModeButtonVisibility_];
    [v1 setPresentsWithGesture_];
    OUTLINED_FUNCTION_25_2();
    return;
  }

  [v0 setPreferredDisplayMode_];
  [v0 setDisplayModeButtonVisibility_];
  OUTLINED_FUNCTION_25_2();

  [v19 v20];
}

uint64_t sub_1E3F77B08(unint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_45();
  v143[0] = (*(v6 + 440))();
  LOBYTE(v140) = 1;
  sub_1E397C3E4();
  result = sub_1E4205E84();
  if (result)
  {
    return result;
  }

  v125 = a1;
  v129 = v3;
  v117 = v2;
  result = sub_1E32AE9B0(a2);
  if (result)
  {
    v8 = result;
    if (result < 1)
    {
      goto LABEL_91;
    }

    v9 = 0;
    v10 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x2A0);
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v11 = OUTLINED_FUNCTION_55_39();
        v12 = MEMORY[0x1E6911E60](v11);
      }

      else
      {
        v12 = *(a2 + 8 * v9 + 32);
      }

      v13 = v12;
      ++v9;
      v15 = *&v12[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier];
      v14 = *&v12[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8];
      v134 = 0;
      *&v140 = v15;
      *(&v140 + 1) = v14;

      v16 = v10(v143);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
      sub_1E3CA4D10();
      v16(v143, 0);
    }

    while (v8 != v9);
  }

  v17 = MEMORY[0x1E69E7D40];
  v123 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x440))();
  v124 = v18;
  v19 = MEMORY[0x1E69E7CC0];
  v145 = MEMORY[0x1E69E7CC0];
  result = (*((*v17 & *v3) + 0x278))();
  v20 = result;
  v21 = 0;
  v22 = *(result + 16);
  for (i = result + 32; ; i += 40)
  {
    if (v22 == v21)
    {

      v144 = 0;
      memset(v143, 0, sizeof(v143));
      goto LABEL_16;
    }

    if (v21 >= *(v20 + 16))
    {
      goto LABEL_90;
    }

    sub_1E327F454(i, &v140);
    sub_1E327F454(&v140, v143);
    v24 = OUTLINED_FUNCTION_125();
    __swift_instantiateConcreteTypeFromMangledNameV2(v24);
    type metadata accessor for LibrarySidebarItem();
    if (swift_dynamicCast())
    {
      break;
    }

    ++v21;
    result = __swift_destroy_boxed_opaque_existential_1(&v140);
  }

  sub_1E3251BE8(&v140, v143);
LABEL_16:
  sub_1E3D96570(v143, &v140, &qword_1ECF2EC80);
  if (*(&v141 + 1))
  {
    v25 = v142;
    __swift_project_boxed_opaque_existential_1(&v140, *(&v141 + 1));
    v26 = OUTLINED_FUNCTION_11_168();
    v27(v26, v25);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
    OUTLINED_FUNCTION_16_0();
    sub_1E4207604();
    OUTLINED_FUNCTION_79_2();
    v29 = *(AssociatedTypeWitness + 16);
    if (v29)
    {
      sub_1E377FD30(0, v29, 0);
      v30 = v19;
      v31 = AssociatedTypeWitness + 32;
      do
      {
        sub_1E327F454(v31, &v134);
        v32 = v137;
        OUTLINED_FUNCTION_0_257(&v134, v137);
        v34 = v33(v32);
        v22 = v35;
        __swift_destroy_boxed_opaque_existential_1(&v134);
        *&v130 = v30;
        v37 = *(v30 + 16);
        v36 = *(v30 + 24);
        if (v37 >= v36 >> 1)
        {
          v39 = OUTLINED_FUNCTION_35(v36);
          sub_1E377FD30(v39, v37 + 1, 1);
          v30 = v130;
        }

        *(v30 + 16) = v37 + 1;
        v38 = v30 + 16 * v37;
        *(v38 + 32) = v34;
        *(v38 + 40) = v22;
        v31 += 40;
        --v29;
      }

      while (v29);
    }

    else
    {

      v30 = MEMORY[0x1E69E7CC0];
    }

    __swift_destroy_boxed_opaque_existential_1(&v140);
  }

  else
  {
    sub_1E325F7FC(&v140, &qword_1ECF2EC80);
    v30 = MEMORY[0x1E69E7CC0];
  }

  v40 = v125;
  v41 = sub_1E32772D8(v30);
  v139 = v41;
  v122 = sub_1E32AE9B0(v125);
  if (v122)
  {
    v127 = type metadata accessor for LibrarySidebarItem();
    v22 = 0;
    OUTLINED_FUNCTION_16_89();
    v119 = v42 + 656;
    v120 = *(v42 + 656);
    v121 = v125 & 0xC000000000000001;
    v118 = v125 + 32;
    while (1)
    {
      sub_1E34AF4E4(v22, v121 == 0, v40);
      if (v121)
      {
        result = MEMORY[0x1E6911E60](v22, v40);
      }

      else
      {
        result = *(v118 + 8 * v22);
      }

      v43 = result;
      if (__OFADD__(v22++, 1))
      {
        goto LABEL_89;
      }

      v45 = (result + OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier);
      v47 = *(result + OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier);
      v46 = *(result + OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8);

      v120(v48);
      *&v140 = v47;
      *(&v140 + 1) = v46;
      v49 = sub_1E3280A90(0, &qword_1EE23B250);
      OUTLINED_FUNCTION_91_18(v49, v50, v51, v52, v53, v54, v55, v56, v117, v118, v119, v120, v121, v122, v123, v124, v125, v127, v129, v130, *(&v130 + 1), v131, v132, v133, v134, v135, v136, v137, v138, v139, v140);
      sub_1E3CA4D00();

      if (!v134)
      {
        v69 = 0;
        v70 = 1;
        goto LABEL_53;
      }

      sub_1E3D96570(v143, &v134, &qword_1ECF2EC80);
      if (!v137)
      {
        break;
      }

      v57 = v138;
      __swift_project_boxed_opaque_existential_1(&v134, v137);
      v58 = OUTLINED_FUNCTION_11_168();
      v59(v58, v57);
      OUTLINED_FUNCTION_106();
      v60 = swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
      OUTLINED_FUNCTION_16_0();
      sub_1E4207604();
      result = OUTLINED_FUNCTION_79_2();
      v61 = 0;
      v62 = *(v60 + 16);
      for (j = v60 + 32; ; j += 40)
      {
        if (v62 == v61)
        {

          v142 = 0;
          v140 = 0u;
          v141 = 0u;
          goto LABEL_48;
        }

        if (v61 >= *(v60 + 16))
        {
          __break(1u);
          goto LABEL_88;
        }

        sub_1E327F454(j, &v130);
        v64 = v132;
        OUTLINED_FUNCTION_0_257(&v130, v132);
        if (v65(v64) == *v45 && v66 == v45[1])
        {
          break;
        }

        v68 = sub_1E42079A4();

        if (v68)
        {
          goto LABEL_47;
        }

        result = __swift_destroy_boxed_opaque_existential_1(&v130);
        ++v61;
      }

LABEL_47:

      sub_1E3251BE8(&v130, &v140);
LABEL_48:
      v73 = MEMORY[0x1E69E7D40];
      __swift_destroy_boxed_opaque_existential_1(&v134);
      if (!*(&v141 + 1))
      {
        goto LABEL_51;
      }

      if (swift_dynamicCast())
      {
        v74 = *((*v73 & *v134) + 0xA8);
        v75 = v134;
        v76 = v74();

        OUTLINED_FUNCTION_16_89();
        v78 = (*(v77 + 168))();

        v69 = v76 ^ v78;
        v70 = v76 ^ v78;
        goto LABEL_53;
      }

LABEL_52:
      v69 = 0;
      v70 = 0;
LABEL_53:
      if (v124)
      {
        if (v123 == *v45 && v124 == v45[1])
        {
          if (((v70 | v69) & 1) == 0)
          {
            goto LABEL_62;
          }
        }

        else if (((v70 & sub_1E42079A4() | v69) & 1) == 0)
        {
          goto LABEL_62;
        }

LABEL_61:
        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_16_89();

        goto LABEL_62;
      }

      if (v69)
      {
        goto LABEL_61;
      }

LABEL_62:

      v82 = OUTLINED_FUNCTION_114_0();
      sub_1E397B708(v82, v83);

      v84 = v43;
      sub_1E37EE4E8(v84);
      MEMORY[0x1E6910BF0]();
      v85 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v85 >> 1)
      {
        OUTLINED_FUNCTION_35(v85);
        sub_1E42062F4();
      }

      sub_1E4206324();

      v40 = v125;
      if (v22 == v122)
      {
        v126 = v145;

        v41 = v139;
        goto LABEL_69;
      }
    }

    OUTLINED_FUNCTION_82();
    sub_1E325F7FC(v71, v72);
    v140 = 0u;
    v141 = 0u;
    v142 = 0;
LABEL_51:
    sub_1E325F7FC(&v140, &qword_1ECF2EC80);
    goto LABEL_52;
  }

  v126 = MEMORY[0x1E69E7CC0];
LABEL_69:
  OUTLINED_FUNCTION_29_90();
  v87 = v86 >> 6;
  OUTLINED_FUNCTION_194_0();
  result = swift_bridgeObjectRetain_n();
  v88 = 0;
  for (k = v41; ; v41 = k)
  {
    v89 = MEMORY[0x1E69E7D40];
    if (!v22)
    {
      break;
    }

LABEL_75:
    v91 = *(v41 + 48) + ((v88 << 10) | (16 * __clz(__rbit64(v22))));
    v93 = *v91;
    v92 = *(v91 + 8);
    OUTLINED_FUNCTION_21();
    v95 = *(v94 + 656);
    OUTLINED_FUNCTION_194_0();
    v96 = swift_bridgeObjectRetain_n();
    v95(v96);
    OUTLINED_FUNCTION_134_2();
    *&v140 = v93;
    *(&v140 + 1) = v92;
    v97 = sub_1E3280A90(0, &qword_1EE23B250);
    OUTLINED_FUNCTION_91_18(v97, v98, v99, v100, v101, v102, v103, v104, v117, v118, v119, v120, v121, v122, v123, v124, v126, k, v129, v130, *(&v130 + 1), v131, v132, v133, v134, v135, v136, v137, v138, v139, v140);
    sub_1E3CA4D00();

    v105 = v134;
    if (v134)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_20_2();
      v106 = swift_dynamicCastObjCClass();
      if (v106)
      {
        v107 = v129;
        [v106 vui:v129 removeControllerObserver:?];

        goto LABEL_80;
      }
    }

    v107 = v129;
LABEL_80:
    v22 &= v22 - 1;
    *&v130 = 0;
    v134 = v93;
    v135 = v92;
    v108 = *((*MEMORY[0x1E69E7D40] & *v107) + 0x2A0);

    v108(&v140);
    OUTLINED_FUNCTION_159_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
    sub_1E3CA4D10();
    (v108)(&v140, 0);
  }

  while (1)
  {
    v90 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      break;
    }

    if (v90 >= v87)
    {

      OUTLINED_FUNCTION_67_1();
      (*((*v89 & v109) + 0x120))(v126);
      j__OUTLINED_FUNCTION_51_1();
      sub_1E4083278();

      OUTLINED_FUNCTION_67_1();
      v111 = (*((*v89 & v110) + 0x168))();
      if (v111 != 3)
      {
        v112 = v111;
        OUTLINED_FUNCTION_16_89();
        if ((*(v113 + 352))())
        {
          OUTLINED_FUNCTION_16_89();
          if ((*(v114 + 384))())
          {
            OUTLINED_FUNCTION_16_89();
            (*(v115 + 448))(v112);
            OUTLINED_FUNCTION_67_1();
            (*((*v89 & v116) + 0x170))(3);
          }
        }
      }

      return sub_1E325F7FC(v143, &qword_1ECF2EC80);
    }

    v22 = *(v40 + 8 * v90);
    ++v88;
    if (v22)
    {
      v88 = v90;
      goto LABEL_75;
    }
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
  return result;
}

void sub_1E3F788B0()
{
  OUTLINED_FUNCTION_31_1();
  v186 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v187 = v4;
  v201.n128_u8[0] = v4;
  v198.n128_u8[0] = v2;
  sub_1E397C3E4();
  OUTLINED_FUNCTION_84_19();
  if (sub_1E4205E84())
  {
    goto LABEL_91;
  }

  if (!v2)
  {
LABEL_88:
    v167 = sub_1E324FBDC();
    (*(v7 + 16))(v11, v167, v5);
    v168 = sub_1E41FFC94();
    v169 = v7;
    v170 = sub_1E4206814();
    if (OUTLINED_FUNCTION_262(v170))
    {
      v182 = v5;
      v171 = swift_slowAlloc();
      v201.n128_u64[0] = swift_slowAlloc();
      *v171 = 136315394;
      v198.n128_u8[0] = v187;
      sub_1E3E25614();
      v172 = sub_1E4207944();
      v174 = sub_1E3270FC8(v172, v173, &v201);

      *(v171 + 4) = v174;
      *(v171 + 12) = 2080;
      v198.n128_u8[0] = v2;
      v175 = sub_1E4207944();
      v177 = sub_1E3270FC8(v175, v176, &v201);

      *(v171 + 14) = v177;
      _os_log_impl(&dword_1E323F000, v168, v170, "RootSplitViewController:: updating from %s mode to %s mode", v171, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();

      (*(v169 + 8))(v11, v182);
    }

    else
    {

      (*(v169 + 8))(v11, v5);
    }

LABEL_91:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  if (v2 == 1)
  {
    sub_1E3F79CE0();
    goto LABEL_88;
  }

  v201.n128_u8[0] = v4;
  v198.n128_u8[0] = 0;
  OUTLINED_FUNCTION_84_19();
  if (sub_1E4205E84())
  {
    j__OUTLINED_FUNCTION_51_1();
    sub_1E4083278();
    goto LABEL_88;
  }

  v181 = v5;
  v12 = *(v0 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager);
  v13 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_4_154();
  (*(v14 + 792))(1);
  OUTLINED_FUNCTION_1_31();
  v16 = (*((*v13 & v15) + 0x2E0))();
  v17 = sub_1E32AE9B0(v16);
  v180 = v11;
  v178 = v2;
  v179 = v7;
  if (v17)
  {
    v18 = v17;
    v201.n128_u64[0] = MEMORY[0x1E69E7CC0];
    sub_1E377FD30(0, v17 & ~(v17 >> 63), 0);
    if (v18 < 0)
    {
      goto LABEL_97;
    }

    v19 = 0;
    v20 = v201.n128_u64[0];
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1E6911E60](v19, v16);
      }

      else
      {
        v21 = *(v16 + 8 * v19 + 32);
      }

      v22 = v21;
      v24 = *&v21[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
      v23 = *&v21[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];

      v201.n128_u64[0] = v20;
      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v26 >= v25 >> 1)
      {
        OUTLINED_FUNCTION_35(v25);
        OUTLINED_FUNCTION_94_21();
        sub_1E377FD30(v28, v29, v30);
        v20 = v201.n128_u64[0];
      }

      ++v19;
      *(v20 + 16) = v26 + 1;
      v27 = v20 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
    }

    while (v18 != v19);
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v207 = sub_1E32772D8(v20);
  OUTLINED_FUNCTION_5_4();
  v32 = (*(v31 + 632))();
  v33 = 0;
  v34 = *(v32 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  for (i = v32 + 32; ; i += 40)
  {
    v190 = v35;
    if (v34 == v33)
    {
      break;
    }

    if (v33 >= *(v32 + 16))
    {
      goto LABEL_94;
    }

    sub_1E327F454(i, &v201);
    v37 = OUTLINED_FUNCTION_84_19();
    sub_1E327F454(v37, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
    OUTLINED_FUNCTION_106();
    type metadata accessor for LibrarySidebarItem();
    if (swift_dynamicCast())
    {

      __swift_destroy_boxed_opaque_existential_1(&v201);
    }

    else
    {
      v39 = OUTLINED_FUNCTION_84_19();
      sub_1E3251BE8(v39, v40);
      v41 = v190;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v204[0] = v190;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = OUTLINED_FUNCTION_73_0();
        sub_1E397A464(v43, v44, v45);
        v41 = v204[0];
      }

      v47 = *(v41 + 16);
      v46 = *(v41 + 24);
      if (v47 >= v46 >> 1)
      {
        OUTLINED_FUNCTION_35(v46);
        OUTLINED_FUNCTION_94_21();
        sub_1E397A464(v48, v49, v50);
        v41 = v204[0];
      }

      *(v41 + 16) = v47 + 1;
      v190 = v41;
      sub_1E3251BE8(&v198, v41 + 40 * v47 + 32);
    }

    ++v33;
    v35 = v190;
  }

  v189 = v12;
  v51 = MEMORY[0x1E69E7D40];
  v185 = *(v190 + 16);
  if (!v185)
  {
    goto LABEL_71;
  }

  v32 = 0;
  OUTLINED_FUNCTION_4_154();
  v184 = v52 + 32;
  v183 = *(v53 + 656);
  do
  {
    if (v32 >= *(v52 + 16))
    {
      goto LABEL_96;
    }

    v188 = v32;
    sub_1E327F454(v184 + 40 * v32, v204);
    v54 = v205;
    OUTLINED_FUNCTION_0_257(v204, v205);
    v56 = v55(v54);
    v58 = v57;
    v183();
    OUTLINED_FUNCTION_134_2();
    v201.n128_u64[0] = v56;
    v201.n128_u64[1] = v58;
    sub_1E3280A90(0, &qword_1EE23B250);
    sub_1E3CA4D00();

    v59 = v198.n128_u64[0];
    if (v198.n128_u64[0])
    {
      objc_opt_self();
      OUTLINED_FUNCTION_19_3();
      if (swift_dynamicCastObjCClass())
      {
        v60 = v205;
        v61 = v206;
        __swift_project_boxed_opaque_existential_1(v204, v205);
        (*(v61 + 32))(v60, v61);
        OUTLINED_FUNCTION_106();
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
        OUTLINED_FUNCTION_156_1();
        v62 = sub_1E4207604();

        v63 = 0;
        v64 = *(v62 + 16);
        v192 = v62;
        v191 = v62 + 32;
        while (1)
        {
          v65 = 0uLL;
          v66 = v64;
          v67 = 0uLL;
          v68 = 0uLL;
          if (v63 != v64)
          {
            if (v63 >= *(v192 + 16))
            {
              goto LABEL_93;
            }

            v66 = v63 + 1;
            v198.n128_u64[0] = v63;
            sub_1E327F454(v191 + 40 * v63, &v198.n128_i64[1]);
            v65 = v198;
            v67 = v199;
            v68 = v200;
          }

          v201 = v65;
          v202 = v67;
          v203 = v68;
          if (!v68)
          {

            goto LABEL_70;
          }

          OUTLINED_FUNCTION_175(*&v68, *&v67, v65);
          v69 = v205;
          v70 = v206;
          __swift_project_boxed_opaque_existential_1(v204, v205);
          v71 = OUTLINED_FUNCTION_16_5();
          if (v72(v71, v70))
          {
            OUTLINED_FUNCTION_134_2();
            swift_getObjectType();
            v74 = *(&v199 + 1);
            v73 = v200;
            __swift_project_boxed_opaque_existential_1(&v198, *(&v199 + 1));
            v196 = v74;
            v197 = *(v73 + 8);
            __swift_allocate_boxed_opaque_existential_1(v195);
            OUTLINED_FUNCTION_37_1();
            (*(v75 + 16))();
            v76 = *(v69 + 16);
            v77 = v59;
            v78 = OUTLINED_FUNCTION_194_2();
            v79 = v76(v78);
            v51 = MEMORY[0x1E69E7D40];
            v80 = v79;
            swift_unknownObjectRelease();

            __swift_destroy_boxed_opaque_existential_1(v195);
            if (v80)
            {
              break;
            }
          }

LABEL_52:
          v99 = *(&v199 + 1);
          OUTLINED_FUNCTION_0_257(&v198, *(&v199 + 1));
          v101 = v100(v99);
          sub_1E397B708(v101, v102);

          __swift_destroy_boxed_opaque_existential_1(&v198);
          v63 = v66;
        }

        v81 = *(&v199 + 1);
        OUTLINED_FUNCTION_0_257(&v198, *(&v199 + 1));
        v194 = v82(v81);
        v83 = *((*v51 & *v12) + 0x2A0);
        v84 = v80;
        v83(v195);
        OUTLINED_FUNCTION_159_3();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
        sub_1E3CA4D10();
        v85 = OUTLINED_FUNCTION_60_6();
        (v80)(v85);
        v86 = v205;
        OUTLINED_FUNCTION_0_257(v204, v205);
        v88 = v87(v86);
        v90 = v89;
        OUTLINED_FUNCTION_1_31();
        v92 = (*((*v51 & v91) + 0x448))();
        if (v93)
        {
          if (v88 == v92 && v93 == v90)
          {
          }

          else
          {
            v95 = sub_1E42079A4();

            if ((v95 & 1) == 0)
            {
              goto LABEL_51;
            }
          }

          v96 = *(&v199 + 1);
          OUTLINED_FUNCTION_0_257(&v198, *(&v199 + 1));
          v97(v96);
          OUTLINED_FUNCTION_1_31();
          (*((*v51 & v98) + 0x220))();
        }

        else
        {
        }

LABEL_51:

        goto LABEL_52;
      }
    }

    OUTLINED_FUNCTION_75_26();
    v103 = OUTLINED_FUNCTION_9_168();
    v104(v103);
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_59_1();
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
    OUTLINED_FUNCTION_16_0();
    v105 = sub_1E4207604();

    v106 = 0;
    v107 = *(v105 + 16);
    v193 = v105 + 32;
    while (1)
    {
      v108 = 0uLL;
      v109 = v107;
      v110 = 0uLL;
      v111 = 0uLL;
      if (v106 != v107)
      {
        OUTLINED_FUNCTION_89_0();
        if (v106 >= *(v112 + 16))
        {
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v109 = v106 + 1;
        v198.n128_u64[0] = v106;
        sub_1E327F454(v193 + 40 * v106, &v198.n128_i64[1]);
        v108 = v198;
        v110 = v199;
        v111 = v200;
      }

      v201 = v108;
      v202 = v110;
      v203 = v111;
      if (!v111)
      {
        break;
      }

      v106 = v109;
      OUTLINED_FUNCTION_175(*&v111, *&v110, v108);
      v113 = *(&v199 + 1);
      OUTLINED_FUNCTION_0_257(&v198, *(&v199 + 1));
      v115 = v114(v113);
      v117 = v116;
      OUTLINED_FUNCTION_1_31();
      (*((*v51 & v118) + 0x290))();
      v195[0] = v115;
      v195[1] = v117;
      sub_1E3CA4D00();

      if (v194)
      {
        objc_opt_self();
        OUTLINED_FUNCTION_40_3();
        if (swift_dynamicCastObjCClass() && (v119 = v205, v120 = v206, __swift_project_boxed_opaque_existential_1(v204, v205), v121 = OUTLINED_FUNCTION_16_5(), v122(v121, v120)))
        {
          OUTLINED_FUNCTION_134_2();
          swift_getObjectType();
          v124 = *(&v199 + 1);
          v123 = v200;
          __swift_project_boxed_opaque_existential_1(&v198, *(&v199 + 1));
          v196 = v124;
          v197 = *(v123 + 8);
          __swift_allocate_boxed_opaque_existential_1(v195);
          OUTLINED_FUNCTION_37_1();
          (*(v125 + 16))();
          v126 = *(v119 + 16);
          v127 = v194;
          v128 = OUTLINED_FUNCTION_194_2();
          v129 = v126(v128);
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_1(v195);
          if (v129)
          {
            v130 = *(&v199 + 1);
            OUTLINED_FUNCTION_0_257(&v198, *(&v199 + 1));
            v194 = v131(v130);
            v51 = MEMORY[0x1E69E7D40];
            v132 = *((*MEMORY[0x1E69E7D40] & *v189) + 0x2A0);
            v133 = v129;
            v134 = v132(v195);
            v12 = v189;
            v135 = v134;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
            sub_1E3CA4D10();
            v136 = OUTLINED_FUNCTION_60_6();
            v135(v136);
          }

          else
          {

            v12 = v189;
            v51 = MEMORY[0x1E69E7D40];
          }
        }

        else
        {
        }
      }

      v137 = *(&v199 + 1);
      OUTLINED_FUNCTION_0_257(&v198, *(&v199 + 1));
      v139 = v138(v137);
      sub_1E397B708(v139, v140);

      __swift_destroy_boxed_opaque_existential_1(&v198);
    }

    OUTLINED_FUNCTION_101_13();

LABEL_70:
    v32 = v188 + 1;
    __swift_destroy_boxed_opaque_existential_1(v204);
    v52 = v190;
  }

  while (v188 + 1 != v185);
LABEL_71:
  sub_1E3F7BEC4();
  v141 = v207;
  OUTLINED_FUNCTION_29_90();
  v143 = v142 >> 6;
  OUTLINED_FUNCTION_194_0();
  swift_bridgeObjectRetain_n();
  v144 = 0;
  while (v51)
  {
    v145 = v189;
LABEL_79:
    v147 = (*(v141 + 48) + ((v144 << 10) | (16 * __clz(__rbit64(v51)))));
    v149 = *v147;
    v148 = v147[1];
    v150 = *((*MEMORY[0x1E69E7D40] & *v145) + 0x290);
    v151 = swift_bridgeObjectRetain_n();
    v150(v151);
    v201.n128_u64[0] = v149;
    v201.n128_u64[1] = v148;
    sub_1E3280A90(0, &qword_1EE23B250);
    sub_1E3CA4D00();

    v152 = v198.n128_u64[0];
    if (v198.n128_u64[0])
    {
      objc_opt_self();
      OUTLINED_FUNCTION_20_2();
      v153 = swift_dynamicCastObjCClass();
      if (v153)
      {
        v154 = v189;
        [v153 vui:v189 removeControllerObserver:?];

        goto LABEL_84;
      }
    }

    v154 = v189;
LABEL_84:
    v51 &= v51 - 1;
    v204[0] = 0;
    v198.n128_u64[0] = v149;
    v198.n128_u64[1] = v148;
    v155 = *((*MEMORY[0x1E69E7D40] & *v154) + 0x2A0);

    v156 = v155(&v201);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
    sub_1E3CA4D10();
    v156(&v201, 0);
  }

  v145 = v189;
  while (1)
  {
    v146 = v144 + 1;
    if (__OFADD__(v144, 1))
    {
      break;
    }

    if (v146 >= v143)
    {

      OUTLINED_FUNCTION_194_0();
      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_39();
      v157 = MEMORY[0x1E69E7D40];
      v159 = (*((*MEMORY[0x1E69E7D40] & v158) + 0x100))();
      [v159 setViewControllers:0 animated:0];

      OUTLINED_FUNCTION_1_31();
      (*((*v157 & v160) + 0x280))(v190);
      OUTLINED_FUNCTION_1_13();
      (*(v161 + 696))(1);
      OUTLINED_FUNCTION_1_31();
      (*((*v157 & v162) + 0x318))(0);
      v163 = [*(v186 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_rootControllerConfig) normalControllerLimit];
      v164 = v163;
      if (v163)
      {
        [v163 integerValue];
      }

      v7 = v179;
      v11 = v180;
      v2 = v178;
      OUTLINED_FUNCTION_7_20();
      v165 = OUTLINED_FUNCTION_71_30();
      v166(v165);
      v5 = v181;
      goto LABEL_88;
    }

    v51 = *(v32 + 8 * v146);
    ++v144;
    if (v51)
    {
      v144 = v146;
      goto LABEL_79;
    }
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
}

void sub_1E3F79CE0()
{
  OUTLINED_FUNCTION_31_1();
  v278 = v1;
  v280 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v292 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v279 = (v5 - v4);
  v6 = MEMORY[0x1E69E7CC0];
  v315 = MEMORY[0x1E69E7CC0];
  v281 = v0;
  v7 = *(v0 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager);
  OUTLINED_FUNCTION_21();
  v299 = v7;
  v9 = (*(v8 + 632))();
  v10 = 0;
  v11 = *(v9 + 16);
  v12 = v9 + 32;
  while (v11 != v10)
  {
    if (v10 >= *(v9 + 16))
    {
      goto LABEL_198;
    }

    sub_1E327F454(v12, &v301);
    sub_1E327F454(&v301, &v312);
    v13 = OUTLINED_FUNCTION_39_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v13);
    OUTLINED_FUNCTION_106();
    type metadata accessor for LibrarySidebarItem();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(&v301);
    }

    else
    {
      sub_1E3251BE8(&v301, &v312);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v307[0] = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = OUTLINED_FUNCTION_73_0();
        sub_1E397A464(v15, v16, v17);
        v6 = v307[0];
      }

      v19 = v6[2];
      v18 = v6[3];
      v20 = v6;
      if (v19 >= v18 >> 1)
      {
        v21 = OUTLINED_FUNCTION_35(v18);
        sub_1E397A464(v21, v19 + 1, 1);
        v20 = v307[0];
      }

      v20[2] = v19 + 1;
      sub_1E3251BE8(&v312, &v20[5 * v19 + 4]);
      v6 = v20;
    }

    v12 += 40;
    ++v10;
  }

  v22 = v6[2];
  if (v22)
  {
    v307[0] = MEMORY[0x1E69E7CC0];
    sub_1E377FD10(0, v22, 0);
    v23 = 0;
    v24 = v307[0];
    v294 = v6 + 4;
    v25 = MEMORY[0x1E69E7D40];
    v296 = v6;
    v293 = v22;
    do
    {
      if (v23 >= v6[2])
      {
        goto LABEL_203;
      }

      sub_1E327F454(&v294[5 * v23], &v301);
      v26 = v303;
      __swift_project_boxed_opaque_existential_1(&v301, *(&v302 + 1));
      v27 = OUTLINED_FUNCTION_38();
      v28(v27, v26);
      OUTLINED_FUNCTION_106();
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
      OUTLINED_FUNCTION_156_1();
      v29 = sub_1E4207604();

      v30 = *(v29 + 16);
      if (v30)
      {
        *&v304 = MEMORY[0x1E69E7CC0];
        sub_1E377FD30(0, v30, 0);
        v31 = v304;
        v32 = v29 + 32;
        do
        {
          sub_1E327F454(v32, &v312);
          v33 = v313;
          OUTLINED_FUNCTION_0_257(&v312, v313);
          v35 = v34(v33);
          v24 = v36;
          __swift_destroy_boxed_opaque_existential_1(&v312);
          *&v304 = v31;
          v38 = *(v31 + 16);
          v37 = *(v31 + 24);
          if (v38 >= v37 >> 1)
          {
            v40 = OUTLINED_FUNCTION_35(v37);
            sub_1E377FD30(v40, v38 + 1, 1);
            v31 = v304;
          }

          *(v31 + 16) = v38 + 1;
          v39 = v31 + 16 * v38;
          *(v39 + 32) = v35;
          *(v39 + 40) = v24;
          v32 += 40;
          --v30;
        }

        while (v30);

        v25 = MEMORY[0x1E69E7D40];
        OUTLINED_FUNCTION_20_12();
        v22 = v293;
      }

      else
      {

        v31 = MEMORY[0x1E69E7CC0];
      }

      __swift_destroy_boxed_opaque_existential_1(&v301);
      v307[0] = v24;
      v42 = v24[2];
      v41 = v24[3];
      if (v42 >= v41 >> 1)
      {
        OUTLINED_FUNCTION_35(v41);
        OUTLINED_FUNCTION_94_21();
        sub_1E377FD10(v43, v44, v45);
        v24 = v307[0];
      }

      ++v23;
      v24[2] = v42 + 1;
      v24[v42 + 4] = v31;
      v6 = v296;
    }

    while (v23 != v22);
  }

  else
  {

    v24 = MEMORY[0x1E69E7CC0];
    v25 = MEMORY[0x1E69E7D40];
  }

  v46 = 0;
  v47 = v24[2];
  v48 = MEMORY[0x1E69E7CC0];
  while (v47 != v46)
  {
    if (v46 >= v24[2])
    {
      goto LABEL_199;
    }

    v49 = v24[v46 + 4];
    v50 = *(v49 + 16);
    v51 = *(v48 + 2);
    v52 = v51 + v50;
    if (__OFADD__(v51, v50))
    {
      goto LABEL_200;
    }

    v53 = swift_isUniquelyReferenced_nonNull_native();
    if (!v53 || v52 > *(v48 + 3) >> 1)
    {
      if (v51 <= v52)
      {
        v54 = v51 + v50;
      }

      else
      {
        v54 = v51;
      }

      v48 = sub_1E3740F88(v53, v54, 1, v48);
    }

    if (*(v49 + 16))
    {
      if ((*(v48 + 3) >> 1) - *(v48 + 2) < v50)
      {
        goto LABEL_204;
      }

      swift_arrayInitWithCopy();

      if (v50)
      {
        v55 = *(v48 + 2);
        v56 = __OFADD__(v55, v50);
        v57 = v55 + v50;
        if (v56)
        {
          goto LABEL_209;
        }

        *(v48 + 2) = v57;
      }
    }

    else
    {

      if (v50)
      {
        goto LABEL_201;
      }
    }

    ++v46;
  }

  v58 = sub_1E32772D8(v48);
  OUTLINED_FUNCTION_115_8();
  v311 = v59;
  (*((*v25 & *v47) + 0x3F8))(1, 1, 0);
  OUTLINED_FUNCTION_1_31();
  (*((*v25 & v60) + 0x428))(&v301);
  v61 = *(&v302 + 1);
  if (*(&v302 + 1))
  {
    v62 = v303;
    __swift_project_boxed_opaque_existential_1(&v301, *(&v302 + 1));
    v282 = (*(v62 + 16))(v61, v62);
    v289 = v63;
    __swift_destroy_boxed_opaque_existential_1(&v301);
  }

  else
  {
    sub_1E325F7FC(&v301, &unk_1ECF2F1D0);
    v282 = 0;
    v289 = 0;
  }

  OUTLINED_FUNCTION_5_4();
  v65 = (*(v64 + 736))();
  v297 = sub_1E32AE9B0(v65);
  if (!v297)
  {

LABEL_141:
    v184 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
    v185 = [v184 navigationBar];
    [v185 setHidden_];

    OUTLINED_FUNCTION_21();
    v187 = *(v186 + 152);
    v188 = v184;
    v187(v184);
    v298 = v188;

    v189 = v281;
    sub_1E3F7CE00();
    v190 = v58 + 56;
    v191 = 1 << *(v58 + 32);
    v192 = -1;
    if (v191 < 64)
    {
      v192 = ~(-1 << v191);
    }

    v193 = v192 & *(v58 + 56);
    v194 = (v191 + 63) >> 6;

    v195 = 0;
    if (!v193)
    {
      while (1)
      {
LABEL_144:
        v196 = v195 + 1;
        if (__OFADD__(v195, 1))
        {
          goto LABEL_202;
        }

        if (v196 >= v194)
        {
          break;
        }

        v193 = *(v190 + 8 * v196);
        ++v195;
        if (v193)
        {
          v195 = v196;
          goto LABEL_148;
        }
      }

      OUTLINED_FUNCTION_115_8();
      OUTLINED_FUNCTION_5_4();
      v211 = *(v210 + 744);
      OUTLINED_FUNCTION_101_13();

      v211(v212);
      OUTLINED_FUNCTION_20_12();

      OUTLINED_FUNCTION_1_31();
      v215 = (*((*v25 & v214) + 0x340))();
      v216 = sub_1E396B0E4();
      v217 = *v216;
      v218 = v216[1];

      v219 = sub_1E37D26AC(v217, v218, v215);
      v221 = v220;

      OUTLINED_FUNCTION_1_31();
      v223 = (*((*v25 & v222) + 0x440))();
      if (v221)
      {
        if (v224)
        {
          if (v219 == v223 && v221 == v224)
          {

LABEL_167:
            OUTLINED_FUNCTION_99_12();
            goto LABEL_168;
          }

          OUTLINED_FUNCTION_55_39();
          v226 = sub_1E42079A4();

          if (v226)
          {
            goto LABEL_167;
          }
        }
      }

      else if (!v224)
      {
LABEL_165:
        OUTLINED_FUNCTION_99_12();

        v219 = 0;
        v221 = 0xE000000000000000;
LABEL_168:
        OUTLINED_FUNCTION_5_4();
        (*(v227 + 656))();
        OUTLINED_FUNCTION_145();
        *&v301 = v219;
        *(&v301 + 1) = v221;
        sub_1E3280A90(0, &qword_1EE23B250);
        OUTLINED_FUNCTION_82();
        sub_1E3CA4D00();

        v228 = v312;
        if (v312)
        {
          objc_opt_self();
          OUTLINED_FUNCTION_20_2();
          v229 = swift_dynamicCastObjCClass();
          v230 = v278;
          if (!v229)
          {
          }
        }

        else
        {
          v229 = 0;
          v230 = v278;
        }

        OUTLINED_FUNCTION_4_154();
        (*(v231 + 688))(1, v229);

        if (sub_1E374E8E4(v230, 0))
        {
          OUTLINED_FUNCTION_68_5();
          OUTLINED_FUNCTION_21();
          v233 = (*(v232 + 280))();
          v234 = sub_1E32AE9B0(v233);
          v235 = 0;
          v24 = (v233 & 0xFFFFFFFFFFFFFF8);
          while (v234 != v235)
          {
            if ((v233 & 0xC000000000000001) != 0)
            {
              v243 = OUTLINED_FUNCTION_55_39();
              v236 = MEMORY[0x1E6911E60](v243);
            }

            else
            {
              if (v235 >= *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_208;
              }

              v236 = *(v233 + 8 * v235 + 32);
            }

            v237 = v236;
            if (__OFADD__(v235, 1))
            {
              goto LABEL_207;
            }

            v239 = *&v236[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier];
            v238 = *&v236[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8];
            v307[0] = 0;
            *&v312 = v239;
            *(&v312 + 1) = v238;
            v240 = *((*MEMORY[0x1E69E7D40] & *v299) + 0x2A0);

            v241 = v240(&v301);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
            OUTLINED_FUNCTION_177_3();
            v242 = OUTLINED_FUNCTION_60_6();
            v241(v242);

            ++v235;
          }

          OUTLINED_FUNCTION_68_5();
          OUTLINED_FUNCTION_21();
          v245 = (*(v244 + 296))(&v301);
          *v246 = MEMORY[0x1E69E7CC0];

          v245(&v301, 0);
          OUTLINED_FUNCTION_115_8();
          OUTLINED_FUNCTION_20_12();
        }

        OUTLINED_FUNCTION_5_4();
        v247 += 79;
        v248 = *v247;
        v249 = (*v247)();
        v250 = 0;
        v251 = *(v249 + 16);
        for (i = 32; ; i += 40)
        {
          if (v251 == v250)
          {
            OUTLINED_FUNCTION_101_13();

            OUTLINED_FUNCTION_115_8();
            v253 = MEMORY[0x1E69E7D40];
            goto LABEL_194;
          }

          if (v250 >= *(v249 + 16))
          {
            goto LABEL_206;
          }

          sub_1E327F454(v249 + i, &v301);
          sub_1E3251BE8(&v301, &v312);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
          type metadata accessor for LibrarySidebarItem();
          if (swift_dynamicCast())
          {
            break;
          }

          ++v250;
        }

        OUTLINED_FUNCTION_115_8();
        v254 = v248();
        sub_1E39ABF00(v250, 1, v254);
        sub_1E327F454(v254 + i, &v301);

        OUTLINED_FUNCTION_1_31();
        v253 = MEMORY[0x1E69E7D40];
        v256 = (*((*MEMORY[0x1E69E7D40] & v255) + 0x288))(v307);
        sub_1E3E1FFD8(v250, &v312);
        __swift_destroy_boxed_opaque_existential_1(&v312);
        v256(v307, 0);
        v257 = *(&v302 + 1);
        __swift_project_boxed_opaque_existential_1(&v301, *(&v302 + 1));
        v258 = OUTLINED_FUNCTION_9_168();
        v259(v258);
        OUTLINED_FUNCTION_59_1();
        swift_getAssociatedTypeWitness();
        OUTLINED_FUNCTION_20_2();
        sub_1E4207604();
        OUTLINED_FUNCTION_79_2();
        v260 = *(v257 + 16);
        if (v260)
        {
          OUTLINED_FUNCTION_7_20();
          v261 += 84;
          v262 = *v261;
          v24 = v261;
          v263 = v257 + 32;
          do
          {
            sub_1E327F454(v263, &v312);
            v264 = v313;
            OUTLINED_FUNCTION_0_257(&v312, v313);
            v266 = v265(v264);
            v310 = 0;
            *&v304 = v266;
            *(&v304 + 1) = v267;
            v268 = v262(v307);
            v269 = OUTLINED_FUNCTION_55_39();
            __swift_instantiateConcreteTypeFromMangledNameV2(v269);
            sub_1E3CA4D10();
            v268(v307, 0);
            __swift_destroy_boxed_opaque_existential_1(&v312);
            v263 += 40;
            --v260;
          }

          while (v260);

          v253 = MEMORY[0x1E69E7D40];
          OUTLINED_FUNCTION_20_12();
        }

        else
        {
        }

        OUTLINED_FUNCTION_101_13();

        __swift_destroy_boxed_opaque_existential_1(&v301);
LABEL_194:
        OUTLINED_FUNCTION_13_164();
        v271 = (*(v270 + 256))();
        v272 = [v271 tabBar];

        OUTLINED_FUNCTION_1_31();
        [v272 setHidden_];

        v274 = [*(v281 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_rootControllerConfig) normalControllerLimit];
        v275 = v274;
        if (v274)
        {
          [v274 integerValue];
        }

        v276 = OUTLINED_FUNCTION_71_30();
        v277(v276);
        sub_1E3F76770();

        OUTLINED_FUNCTION_25_2();
        return;
      }

      goto LABEL_165;
    }

    while (1)
    {
LABEL_148:
      v24 = v58;
      v197 = (*(v58 + 48) + ((v195 << 10) | (16 * __clz(__rbit64(v193)))));
      v199 = *v197;
      v198 = v197[1];
      OUTLINED_FUNCTION_68_5();
      OUTLINED_FUNCTION_21();
      v201 = *(v200 + 656);
      v202 = swift_bridgeObjectRetain_n();
      v201(v202);
      OUTLINED_FUNCTION_145();
      *&v301 = v199;
      *(&v301 + 1) = v198;
      sub_1E3280A90(0, &qword_1EE23B250);
      OUTLINED_FUNCTION_82();
      sub_1E3CA4D00();

      v203 = v312;
      if (!v312)
      {
        goto LABEL_152;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_40_3();
      if (!swift_dynamicCastObjCClass())
      {
        break;
      }

      OUTLINED_FUNCTION_90_2();
      [v204 v205];

LABEL_153:
      v193 &= v193 - 1;
      v307[0] = 0;
      *&v312 = v199;
      *(&v312 + 1) = v198;
      v25 = MEMORY[0x1E69E7D40];
      v206 = *((*MEMORY[0x1E69E7D40] & *v189) + 0x2A0);

      v207 = v206(&v301);
      v189 = v208;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
      OUTLINED_FUNCTION_177_3();
      v209 = OUTLINED_FUNCTION_60_6();
      v207(v209);

      v58 = v24;
      if (!v193)
      {
        goto LABEL_144;
      }
    }

LABEL_152:
    OUTLINED_FUNCTION_90_2();
    goto LABEL_153;
  }

  v66 = 0;
  v67 = 0;
  v295 = v65 & 0xC000000000000001;
  v284 = v65 & 0xFFFFFFFFFFFFFF8;
  v283 = v65 + 32;
  v291 = v65;
  while (1)
  {
    if (v295)
    {
      v68 = MEMORY[0x1E6911E60](v67, v291);
    }

    else
    {
      if (v67 >= *(v284 + 16))
      {
        goto LABEL_210;
      }

      v68 = *(v283 + 8 * v67);
    }

    v69 = v68;
    v56 = __OFADD__(v67++, 1);
    if (v56)
    {
      goto LABEL_205;
    }

    v70 = *&v68[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
    v71 = *&v68[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];
    if (v70 == sub_1E4205F14() && v71 == v72)
    {

LABEL_77:
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_25();
      v94 = v93();
      if (!v94)
      {

        v66 = 0;
        goto LABEL_97;
      }

      v95 = v94;
      v96 = v66;
      v97 = [v94 viewControllers];
      sub_1E3280A90(0, &qword_1EE23B250);
      OUTLINED_FUNCTION_40_3();
      v98 = sub_1E42062B4();

      if (v98 >> 62)
      {
        if (sub_1E4207384())
        {
LABEL_80:
          if ((v98 & 0xC000000000000001) != 0)
          {
            v99 = MEMORY[0x1E6911E60](0, v98);
          }

          else
          {
            if (!*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_211;
            }

            v99 = *(v98 + 32);
          }

          v66 = v99;

          goto LABEL_134;
        }
      }

      else if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_80;
      }

      v66 = 0;
LABEL_134:
      v300 = v66;
      v307[0] = v95;
      *&v312 = v70;
      *(&v312 + 1) = v71;
      v177 = *((*v25 & *v47) + 0x2A0);

      v24 = v95;
      v178 = v177(&v301);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
      OUTLINED_FUNCTION_177_3();
      v179 = OUTLINED_FUNCTION_60_6();
      v178(v179);
      v180 = OUTLINED_FUNCTION_125();
      sub_1E397B708(v180, v181);

      v182 = v69;
      MEMORY[0x1E6910BF0]();
      v183 = *((v315 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v315 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v183 >> 1)
      {
        OUTLINED_FUNCTION_35(v183);
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_13_8();
      sub_1E4206324();

      goto LABEL_137;
    }

    OUTLINED_FUNCTION_125();
    v74 = sub_1E42079A4();

    if (v74)
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_5_4();
    v76 = (*(v75 + 632))();
    v69 = 0;
    v77 = *(v76 + 16);
    v78 = v76 + 32;
    v300 = v66;
    v286 = v77;
    v285 = v76 + 32;
    while (1)
    {
      if (v69 == v77)
      {

        if (v289)
        {
          v25 = MEMORY[0x1E69E7D40];
          OUTLINED_FUNCTION_80_20();
LABEL_99:
          v118 = v117 == v70 && v116 == v71;
          v300 = v66;
          if (v118)
          {
            v119 = 1;
          }

          else
          {
            v119 = OUTLINED_FUNCTION_182();
          }
        }

        else
        {
          v119 = 0;
          v25 = MEMORY[0x1E69E7D40];
          OUTLINED_FUNCTION_80_20();
        }

        goto LABEL_106;
      }

      v79 = v76;
      sub_1E39ABF00(v69, 1, v76);
      sub_1E327F454(v78 + 40 * v69, &v312);
      v80 = v313;
      OUTLINED_FUNCTION_0_257(&v312, v313);
      if (v81(v80) == v70 && v82 == v71)
      {

LABEL_115:

        OUTLINED_FUNCTION_75_26();
        v131 = OUTLINED_FUNCTION_9_168();
        v132(v131);
        OUTLINED_FUNCTION_106();
        OUTLINED_FUNCTION_59_1();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
        OUTLINED_FUNCTION_16_0();
        sub_1E4207604();
        OUTLINED_FUNCTION_79_2();
        v134 = *(AssociatedTypeWitness + 16);
        if (v134)
        {
          OUTLINED_FUNCTION_7_20();
          v288 = *(v135 + 656);
          v136 = AssociatedTypeWitness + 32;
          v137 = MEMORY[0x1E69E7CC0];
          do
          {
            sub_1E327F454(v136, v307);
            v138 = v308;
            v139 = v309;
            __swift_project_boxed_opaque_existential_1(v307, v308);
            v305 = v138;
            v306 = *(v139 + 8);
            __swift_allocate_boxed_opaque_existential_1(&v304);
            OUTLINED_FUNCTION_37_1();
            (*(v140 + 16))();
            v141 = v308;
            OUTLINED_FUNCTION_0_257(v307, v308);
            v143 = v142(v141);
            v145 = v144;
            v146 = __swift_destroy_boxed_opaque_existential_1(v307);
            v288(v146);
            v67 = v147;
            *&v301 = v143;
            *(&v301 + 1) = v145;
            sub_1E3280A90(0, &qword_1EE23B250);
            sub_1E3CA4D00();

            v148 = v310;
            if (v310)
            {
              objc_opt_self();
              OUTLINED_FUNCTION_19_3();
              v149 = swift_dynamicCastObjCClass();
              if (!v149)
              {
              }
            }

            else
            {
              v149 = 0;
            }

            sub_1E3251BE8(&v304, &v301);
            *(&v303 + 1) = v149;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v155 = OUTLINED_FUNCTION_73_0();
              v137 = sub_1E3E24800(v155, v156, v157, v137);
            }

            v151 = v137[2];
            v150 = v137[3];
            if (v151 >= v150 >> 1)
            {
              v158 = OUTLINED_FUNCTION_35(v150);
              v137 = sub_1E3E24800(v158, v151 + 1, 1, v137);
            }

            v137[2] = v151 + 1;
            v152 = &v137[6 * v151];
            v153 = v301;
            v154 = v303;
            v152[3] = v302;
            v152[4] = v154;
            v152[2] = v153;
            v136 += 40;
            --v134;
          }

          while (v134);
        }

        else
        {

          v137 = MEMORY[0x1E69E7CC0];
        }

        OUTLINED_FUNCTION_7_20();
        v160 = (*(v159 + 832))();
        v161 = v313;
        OUTLINED_FUNCTION_0_257(&v312, v313);
        v163 = v162(v161);
        v165 = sub_1E37D26AC(v163, v164, v160);
        v167 = v166;

        v66 = v313;
        v69 = v314;
        __swift_project_boxed_opaque_existential_1(&v312, v313);
        v168 = OUTLINED_FUNCTION_38();
        v169(v168, v69);
        OUTLINED_FUNCTION_93_16();
        if (v170)
        {
          v67 = v170;
          v69 = v171;
          v172 = v165;
          ObjectType = swift_getObjectType();
          v174 = v167;
          v175 = sub_1E3E13020(v137);

          v176 = ObjectType;
          v66 = v300;
          v95 = (*(v69 + 8))(v172, v174, v175, v176, v69);
          swift_unknownObjectRelease();

          v25 = MEMORY[0x1E69E7D40];
          goto LABEL_96;
        }

        __swift_destroy_boxed_opaque_existential_1(&v312);
        v25 = MEMORY[0x1E69E7D40];
LABEL_93:
        OUTLINED_FUNCTION_90_19();
        OUTLINED_FUNCTION_80_20();
        goto LABEL_97;
      }

      v84 = OUTLINED_FUNCTION_182();

      if (v84)
      {
        goto LABEL_115;
      }

      ++v69;
      v66 = v314;
      OUTLINED_FUNCTION_75_26();
      v85 = OUTLINED_FUNCTION_9_168();
      v86(v85);
      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_59_1();
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
      OUTLINED_FUNCTION_16_0();
      v67 = sub_1E4207604();

      v87 = 0;
      v47 = *(v67 + 16);
      v88 = v67 + 32;
LABEL_67:
      if (v47 != v87)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(&v312);
      OUTLINED_FUNCTION_115_8();
      OUTLINED_FUNCTION_93_16();
      OUTLINED_FUNCTION_90_19();
      v77 = v286;
      v78 = v285;
      v76 = v79;
    }

    if (v87 >= *(v67 + 16))
    {
      break;
    }

    sub_1E327F454(v88, &v301);
    v89 = *(&v302 + 1);
    OUTLINED_FUNCTION_0_257(&v301, *(&v302 + 1));
    if (v90(v89) == v70 && v91 == v71)
    {

      goto LABEL_87;
    }

    v66 = OUTLINED_FUNCTION_182();

    if ((v66 & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v301);
      v88 += 40;
      v87 = (v87 + 1);
      goto LABEL_67;
    }

LABEL_87:

    v100 = v313;
    v66 = v314;
    OUTLINED_FUNCTION_75_26();
    (*(v66 + 56))(v100, v66);
    OUTLINED_FUNCTION_115_8();
    v25 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_93_16();
    if (!v101)
    {
      __swift_destroy_boxed_opaque_existential_1(&v301);
      __swift_destroy_boxed_opaque_existential_1(&v312);
      goto LABEL_93;
    }

    v69 = v101;
    v287 = v102;
    v103 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF396D0);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1E4297BE0;
    v104 = *(&v302 + 1);
    v105 = v303;
    __swift_project_boxed_opaque_existential_1(&v301, *(&v302 + 1));
    *(v67 + 56) = v104;
    *(v67 + 64) = *(v105 + 8);
    __swift_allocate_boxed_opaque_existential_1((v67 + 32));
    OUTLINED_FUNCTION_37_1();
    (*(v106 + 16))();
    v107 = *(&v302 + 1);
    OUTLINED_FUNCTION_0_257(&v301, *(&v302 + 1));
    v109 = v108(v107);
    v111 = v110;
    OUTLINED_FUNCTION_1_31();
    (*((*v25 & v112) + 0x290))();
    v307[0] = v109;
    v307[1] = v111;
    sub_1E3280A90(0, &qword_1EE23B250);
    sub_1E3CA4D00();

    v113 = v304;
    if (v304)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_19_3();
      v114 = swift_dynamicCastObjCClass();
      if (!v114)
      {

        v114 = 0;
      }

      v25 = MEMORY[0x1E69E7D40];
      v66 = v103;
      *(v67 + 72) = v114;
    }

    else
    {
      *(v67 + 72) = 0;
      v25 = MEMORY[0x1E69E7D40];
      v66 = v103;
    }

    v115 = swift_getObjectType();
    v95 = (*(v287 + 8))(0, 0, v67, v115);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v301);
LABEL_96:
    __swift_destroy_boxed_opaque_existential_1(&v312);
    OUTLINED_FUNCTION_90_19();
    OUTLINED_FUNCTION_80_20();
    if (v95)
    {
      goto LABEL_134;
    }

LABEL_97:
    v116 = v289;
    if (v289)
    {
      v117 = v282;
      goto LABEL_99;
    }

    v300 = v66;
    v119 = 0;
LABEL_106:
    OUTLINED_FUNCTION_5_4();
    v66 = (*(v120 + 368))();
    OUTLINED_FUNCTION_1_31();
    v95 = (*((*v25 & v121) + 0x460))(v69, v119 & 1, v66, 0);

    if (v95)
    {
      OUTLINED_FUNCTION_93_16();
      goto LABEL_134;
    }

    v122 = sub_1E324FBDC();
    v24 = v279;
    v67 = v280;
    (*(v292 + 16))(v279, v122, v280);

    v123 = sub_1E41FFC94();
    v124 = sub_1E42067F4();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = OUTLINED_FUNCTION_6_21();
      v290 = v69;
      v126 = OUTLINED_FUNCTION_100();
      *&v301 = v126;
      *v125 = 136315138;
      v127 = OUTLINED_FUNCTION_125();
      v130 = sub_1E3270FC8(v127, v128, v129);

      *(v125 + 4) = v130;
      _os_log_impl(&dword_1E323F000, v123, v124, "RootSplitViewController:: updating to tab bar mode could not create view controller for %s", v125, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v126);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();
    }

    else
    {
    }

    (*(v292 + 8))(v279, v280);
    OUTLINED_FUNCTION_90_19();
LABEL_137:
    v66 = v300;
    if (v67 == v297)
    {

      v58 = v311;
      goto LABEL_141;
    }
  }

  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
}

void sub_1E3F7BEC4()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_154();
  v2 = *(v1 + 632);
  v3 = v2();
  sub_1E39574B8(v3, &v49);

  if (v51)
  {
    v4 = v52;
    __swift_project_boxed_opaque_existential_1(&v49, v51);
    v5 = OUTLINED_FUNCTION_38();
    v7 = v6(v5, v4);
    v9 = v8;
    v10 = __swift_destroy_boxed_opaque_existential_1(&v49);
    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = sub_1E325F7FC(&v49, &qword_1ECF2EC80);
  }

  v11 = (v2)(v10);
  sub_1E39574B8(v11, v46);

  if (!v47)
  {
    v44 = v46;
LABEL_23:
    sub_1E325F7FC(v44, &qword_1ECF2EC80);
LABEL_24:

    goto LABEL_25;
  }

  v12 = v48;
  __swift_project_boxed_opaque_existential_1(v46, v47);
  v13 = OUTLINED_FUNCTION_38();
  v14(v13, v12);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
  OUTLINED_FUNCTION_156_1();
  v15 = sub_1E4207604();

  sub_1E39574B8(v15, &v49);

  if (!v51)
  {
    __swift_destroy_boxed_opaque_existential_1(v46);
    v44 = &v49;
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(&v49, v51);
  v16 = OUTLINED_FUNCTION_38();
  v7 = v17(v16);
  v9 = v18;
  __swift_destroy_boxed_opaque_existential_1(&v49);
  __swift_destroy_boxed_opaque_existential_1(v46);

LABEL_8:
  OUTLINED_FUNCTION_154();
  v20 = *(v19 + 656);

  v20(v21);
  v49 = v7;
  v50 = v9;
  sub_1E3280A90(0, &qword_1EE23B250);
  sub_1E3CA4D00();

  v22 = v46[0];
  if (!v46[0])
  {
    goto LABEL_24;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_19_3();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v25 = [v23 viewControllers];
    v26 = sub_1E42062B4();

    v46[0] = v26;
    v49 = 1;
    LOBYTE(v50) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF396B0);
    sub_1E328FCF4(&qword_1EE23B4A0, &unk_1ECF396B0);
    v27 = OUTLINED_FUNCTION_147();
    sub_1E38D2054(v27, v28);

    if (v45)
    {
      swift_getObjectType();
      if (!dynamic_cast_existential_1_conditional(v45))
      {

        goto LABEL_25;
      }

      v30 = v29;
      ObjectType = swift_getObjectType();
      (*(v30 + 32))(ObjectType, v30);
      v33 = v32;

      if (v33)
      {
        v22 = 1;
        do
        {
          v34 = [v24 viewControllers];
          v35 = sub_1E42062B4();

          v46[0] = v35;
          v49 = v22;
          LOBYTE(v50) = 0;
          v36 = OUTLINED_FUNCTION_147();
          sub_1E38D2054(v36, v37);

          swift_getObjectType();
          if (dynamic_cast_existential_1_conditional(v45))
          {
            OUTLINED_FUNCTION_134_2();
            v38 = swift_getObjectType();
            v39 = v45[2];
            v40 = v45;
            v39(1, v38, v45);

            v41 = v45[5];
            v42 = v40;
            (v41)(0, 0, v38, v45);
          }
        }

        while (!__OFADD__(v22++, 1));
        __break(1u);
      }
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F7CE00()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_45();
  v1 = (*(v0 + 1088))();
  if (!v2)
  {
    goto LABEL_48;
  }

  v3 = v1;
  v4 = v2;
  OUTLINED_FUNCTION_45();
  v6 = (*(v5 + 808))();
  v72 = v3;
  v73 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v59[2] = &v72;
  v7 = sub_1E3849DF8(sub_1E3756228, v59, v6);

  if (!v7)
  {
    goto LABEL_47;
  }

  v67 = v3;
  OUTLINED_FUNCTION_45();
  v8 += 79;
  v9 = *v8;
  v10 = (*v8)();
  sub_1E39574B8(v10, &v72);

  v11 = v74;
  if (v74)
  {
    v12 = v75;
    __swift_project_boxed_opaque_existential_1(&v72, v74);
    v68 = (*(v12 + 48))(v11, v12);
    v14 = v13;
    v15 = __swift_destroy_boxed_opaque_existential_1(&v72);
    if (v14)
    {
      v62 = 0;
      v63 = v4;
      goto LABEL_10;
    }
  }

  else
  {
    v15 = sub_1E325F7FC(&v72, &qword_1ECF2EC80);
  }

  v16 = (v9)(v15);
  sub_1E39574B8(v16, v69);

  if (!v70)
  {
    v32 = v69;
LABEL_46:
    sub_1E325F7FC(v32, &qword_1ECF2EC80);

LABEL_47:

    goto LABEL_48;
  }

  v17 = v71;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  v18 = OUTLINED_FUNCTION_11_168();
  v19(v18, v17);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
  OUTLINED_FUNCTION_16_0();
  sub_1E4207604();
  OUTLINED_FUNCTION_79_2();
  sub_1E39574B8(AssociatedTypeWitness, &v72);

  if (!v74)
  {
    __swift_destroy_boxed_opaque_existential_1(v69);
    v32 = &v72;
    goto LABEL_46;
  }

  v62 = 0;
  v63 = v4;
  __swift_project_boxed_opaque_existential_1(&v72, v74);
  v21 = OUTLINED_FUNCTION_16_5();
  v68 = v22(v21);
  v14 = v23;
  __swift_destroy_boxed_opaque_existential_1(&v72);
  __swift_destroy_boxed_opaque_existential_1(v69);

LABEL_10:
  OUTLINED_FUNCTION_45();
  v25 = (*(v24 + 736))();
  v26 = sub_1E32AE9B0(v25);
  v27 = 0;
  while (1)
  {
    if (v26 == v27)
    {

      goto LABEL_47;
    }

    if ((v25 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1E6911E60](v27, v25);
    }

    else
    {
      if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v28 = *(v25 + 8 * v27 + 32);
    }

    v29 = v28;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return;
    }

    if (*&v28[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier] == v68 && v14 == *&v28[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8])
    {
      break;
    }

    v31 = sub_1E42079A4();

    ++v27;
    if (v31)
    {

      goto LABEL_26;
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_45();
  v34 = *(v33 + 656);

  v34(v35);
  OUTLINED_FUNCTION_145();
  v72 = v68;
  v73 = v14;
  sub_1E3280A90(0, &qword_1EE23B250);
  OUTLINED_FUNCTION_82();
  v66 = v36;
  sub_1E3CA4D00();

  v37 = v69[0];
  v38 = v63;
  v39 = v67;
  if (!v69[0])
  {

    goto LABEL_47;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20_2();
  v65 = swift_dynamicCastObjCClass();
  if (v65)
  {
    v61 = v37;

    v34(v40);
    OUTLINED_FUNCTION_145();
    v72 = v39;
    v73 = v38;
    OUTLINED_FUNCTION_82();
    sub_1E3CA4D00();

    v37 = v69[0];
    if (!v69[0])
    {

      v58 = v61;
LABEL_52:

      goto LABEL_48;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_20_2();
    v64 = swift_dynamicCastObjCClass();
    if (v64)
    {
      v60 = v37;
      v41 = [v65 popToRootViewControllerAnimated_];
      while (1)
      {

        v42 = [v64 viewControllers];
        v43 = sub_1E42062B4();

        v44 = v43 >> 62 ? sub_1E4207384() : *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v45 = MEMORY[0x1E69E7D40];
        if (!v44)
        {
          break;
        }

        if ((v43 & 0xC000000000000001) != 0)
        {
          v46 = MEMORY[0x1E6911E60](0, v43);
        }

        else
        {
          if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v46 = *(v43 + 32);
        }

        v41 = v46;

        swift_getObjectType();
        if (dynamic_cast_existential_1_conditional(v41))
        {
          OUTLINED_FUNCTION_145();
          ObjectType = swift_getObjectType();
          v48 = v42[11];
          v49 = v41;
          v48(0, ObjectType, v42);

          v50 = v42[5];

          v51 = v49;
          v50(v67, v38, ObjectType, v42);

          v52 = v42[2];
          v53 = v51;
          v52(1, ObjectType, v42);
        }

        [v65 pushViewController:v41 animated:0];
        swift_getObjectType();
        if (dynamic_cast_existential_1_conditional(v41))
        {
          OUTLINED_FUNCTION_145();
          v54 = swift_getObjectType();
          v55 = v42[2];
          v56 = v41;
          v55(0, v54, v42);
        }
      }

      OUTLINED_FUNCTION_39();
      (*((*v45 & v57) + 0x220))(v68, v14);

      v58 = v60;
      goto LABEL_52;
    }
  }

  else
  {
  }

LABEL_48:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F7D644(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v77 - v5;
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v78 = v8;
  v79 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager);
  OUTLINED_FUNCTION_4_154();
  v14 = *(v13 + 440);
  v81 = v14();
  v80 = 2;
  sub_1E397C3E4();
  if ((sub_1E4205E84() & 1) == 0 || (a1 & 0xFFFFFFFFFFFFFFFELL) == 2 || [v1 displayMode] == 2 || (result = objc_msgSend(v1, sel_displayMode), result == 3))
  {
    OUTLINED_FUNCTION_5_4();
    result = (*(v16 + 856))();
    if (v17)
    {
      v18 = v14();
      if (!sub_1E374E8E4(v18, 1) || (OUTLINED_FUNCTION_5_4(), v20 = v12, (*(v19 + 880))() == -1))
      {
        v21 = v14();
        if (!sub_1E374E8E4(v21, 2))
        {
        }

        OUTLINED_FUNCTION_5_4();
        v20 = v12;
        (*(v22 + 904))();
        if (!v23)
        {
        }
      }

      v24 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
      OUTLINED_FUNCTION_38();
      sub_1E3B5AB8C();
      v26 = v25;

      if (v26)
      {
        objc_opt_self();
        OUTLINED_FUNCTION_40_3();
        v27 = swift_dynamicCastObjCClass();
        if (!v27)
        {
          return swift_unknownObjectRelease();
        }

        v28 = v27;
        OUTLINED_FUNCTION_4_154();
        v30 = (*(v29 + 432))();
        if (v30)
        {
          v31 = v30;
          sub_1E3280A90(0, &qword_1ECF3D318);
          OUTLINED_FUNCTION_38();
          swift_unknownObjectRetain_n();
          v32 = sub_1E4206F64();

          swift_unknownObjectRelease();
          if (v32)
          {
            return swift_unknownObjectRelease_n();
          }
        }

        else
        {
          swift_unknownObjectRetain();
        }

        swift_unknownObjectRetain();
        [v28 setModalPresentationStyle_];
        v33 = [v28 popoverPresentationController];
        if (v33)
        {
          v34 = v33;
          [v33 setDelegate_];
        }

        v35 = (v14)([v28 setDelegate_]);
        if (sub_1E374E8E4(v35, 2))
        {
          sub_1E3F771A8(v6);
          v36 = v79;
          if (__swift_getEnumTagSinglePayload(v6, 1, v79) == 1)
          {
            swift_unknownObjectRelease_n();
            return sub_1E325F7FC(v6, &qword_1ECF309A0);
          }

          else
          {
            v56 = v78;
            (*(v78 + 32))(v11, v6, v36);
            OUTLINED_FUNCTION_16_89();
            v58 = (*(v57 + 232))();
            OUTLINED_FUNCTION_16_89();
            v60 = (*(v59 + 168))();

            v61 = sub_1E41FE7E4();
            v62 = [v60 cellForItemAtIndexPath_];

            v63 = [v28 popoverPresentationController];
            OUTLINED_FUNCTION_38();
            swift_unknownObjectRelease();
            if (v61)
            {
              [v61 setSourceView_];
            }

            OUTLINED_FUNCTION_16_89();
            v65 = (*(v64 + 440))(v28);
            OUTLINED_FUNCTION_104_15(v65, sel_presentViewController_animated_completion_);

            swift_unknownObjectRelease();
            return (*(v56 + 8))(v11, v36);
          }
        }

        v37 = MEMORY[0x1E69E7D40];
        OUTLINED_FUNCTION_4_154();
        v38 += 32;
        v39 = *v38;
        v40 = (*v38)();
        v41 = [v40 tabBar];

        [v41 bounds];
        v43 = v42;
        v45 = v44;
        v47 = v46;
        v49 = v48;

        OUTLINED_FUNCTION_1_31();
        v51 = *((*v37 & v50) + 0x2E0);
        v52 = v51();
        v53 = sub_1E32AE9B0(v52);

        if (v53)
        {
          v54 = v12;
          v55 = (v51)(result);
          sub_1E32AE9B0(v55);
          OUTLINED_FUNCTION_16_5();
        }

        else
        {
          v54 = 1;
        }

        v66 = MEMORY[0x1E69E7D40];
        if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v47 > -9.22337204e18)
        {
          if (v47 < 9.22337204e18)
          {
            if (v54)
            {
              if (v47 == 0x8000000000000000 && v54 == -1)
              {
                goto LABEL_48;
              }

              v68 = v47 / v54;
              v69 = v12;
              result = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x370))(result);
              if ((v68 * result) >> 64 == (v68 * result) >> 63)
              {
                v70 = v43 + (v68 * result);
                v71 = v68;
                v72 = [v28 popoverPresentationController];
                if (v72)
                {
                  v73 = v72;
                  v69 = v39();
                  v74 = [v69 tabBar];

                  [v73 setSourceView_];
                }

                v75 = [v28 popoverPresentationController];
                OUTLINED_FUNCTION_38();
                swift_unknownObjectRelease();
                [v69 setSourceRect_];

                v76 = (*((*v66 & *v2) + 0x1B8))(v28);
                OUTLINED_FUNCTION_104_15(v76, sel_presentViewController_animated_completion_);
                return swift_unknownObjectRelease();
              }

LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              return result;
            }

LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_45;
      }
    }
  }

  return result;
}