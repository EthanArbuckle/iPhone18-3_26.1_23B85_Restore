unint64_t sub_1E37B8B2C()
{
  result = qword_1EE289CC8;
  if (!qword_1EE289CC8)
  {
    sub_1E42012F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289CC8);
  }

  return result;
}

void sub_1E37B8B84(uint64_t a1)
{
  if (a1 != 28)
  {
    sub_1E376BD24(a1);
  }

  sub_1E37B93F0();
}

uint64_t sub_1E37B8C10(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  switch(a1)
  {
    case 1:
      return MEMORY[0x1EEDE3BB0](a1, a3, a4);
    case 2:
      if (a2)
      {
        a1 = 0;
      }

      else
      {
        a1 = 2;
      }

      break;
    case 3:
    case 4:
    case 5:
    case 7:
      a1 = 0;
      break;
    case 6:
      a1 = 2;
      break;
    default:
      if (a2)
      {
        a1 = 2;
      }

      else
      {
        a1 = 0;
      }

      break;
  }

  return MEMORY[0x1EEDE3BB0](a1, a3, a4);
}

void sub_1E37B8C6C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4202B84();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = *MEMORY[0x1E6980FA0];
  v12 = *MEMORY[0x1E6980FB0];
  if (v3 != 5)
  {
    v12 = *MEMORY[0x1E6980FA8];
  }

  if (v3 != 3)
  {
    v11 = v12;
  }

  if (v1)
  {
    v13 = *MEMORY[0x1E6980FA8];
  }

  else
  {
    v13 = v11;
  }

  (*(v6 + 104))(v10, v13, v4);
  sub_1E4202F64();
  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37B8D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4201F34();
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E4201F44();
}

uint64_t sub_1E37B8E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E4201F34();
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E4201F44();
}

uint64_t sub_1E37B8FAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A258);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E37B9808(a1, &v5 - v3);
  return sub_1E42018A4();
}

void sub_1E37B903C()
{
  OUTLINED_FUNCTION_31_1();
  WitnessTable = v0;
  v2 = v1;
  v4 = v3;
  v51 = v5;
  v46 = v6;
  v47 = v6;
  OUTLINED_FUNCTION_1_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  sub_1E42015B4();
  OUTLINED_FUNCTION_18_12();
  v16 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v45 - v24;
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v49 = v27;
  v50 = v26;
  OUTLINED_FUNCTION_5_7();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v45 - v30;
  if (v47 == 28)
  {
    v32 = v8;
    v33 = v8;
    v34 = v2;
    v35 = *(v32 + 16);
    v35(v15, WitnessTable, v4, v29);
    (v35)(v12, v15, v4);
    v58 = v34;
    v59 = MEMORY[0x1E697EBB8];
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    sub_1E37B8E90(v12, v16, v4);
    v36 = *(v33 + 8);
    v36(v12, v4);
    v36(v15, v4);
  }

  else
  {
    sub_1E37B8B84(v46);
    v52 = v2;
    v53 = MEMORY[0x1E697EBB8];
    OUTLINED_FUNCTION_4_1();
    WitnessTable = swift_getWitnessTable();
    v37 = *(v18 + 16);
    v37(v25, v22, v16);
    v34 = v2;
    v38 = *(v18 + 8);
    v39 = OUTLINED_FUNCTION_23_16();
    v38(v39);
    v37(v22, v25, v16);
    v40 = OUTLINED_FUNCTION_23_16();
    sub_1E37B8D98(v40, v41);
    v42 = OUTLINED_FUNCTION_23_16();
    v38(v42);
    (v38)(v25, v16);
  }

  v56 = v34;
  v57 = MEMORY[0x1E697EBB8];
  OUTLINED_FUNCTION_4_1();
  v54 = swift_getWitnessTable();
  v55 = v34;
  OUTLINED_FUNCTION_2_25();
  v43 = v50;
  swift_getWitnessTable();
  v44 = v49;
  (*(v49 + 16))(v51, v31, v43);
  (*(v44 + 8))(v31, v43);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B93F0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E4203E94();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = *MEMORY[0x1E6981DF0];
  v10 = *(v4 + 104);
  v10(v7 - v6, v9, v2);
  if ((v1 & 0x100000000) == 0)
  {
    switch(v1)
    {
      case 0:
        break;
      case 1:
        v30 = OUTLINED_FUNCTION_4_28();
        v31(v30);
        v15 = MEMORY[0x1E6981E10];
        goto LABEL_24;
      case 2:
        v24 = OUTLINED_FUNCTION_4_28();
        v25(v24);
        v15 = MEMORY[0x1E6981DF8];
        goto LABEL_24;
      case 3:
        v40 = OUTLINED_FUNCTION_4_28();
        v41(v40);
        v15 = MEMORY[0x1E6981E08];
        goto LABEL_24;
      case 4:
        v42 = OUTLINED_FUNCTION_4_28();
        v43(v42);
        v15 = MEMORY[0x1E6981DE8];
        goto LABEL_24;
      case 5:
        v26 = OUTLINED_FUNCTION_4_28();
        v27(v26);
        v15 = MEMORY[0x1E6981E00];
        goto LABEL_24;
      case 6:
        v32 = OUTLINED_FUNCTION_4_28();
        v33(v32);
        v15 = MEMORY[0x1E6981D88];
        goto LABEL_24;
      case 7:
        v34 = OUTLINED_FUNCTION_4_28();
        v35(v34);
        v15 = MEMORY[0x1E6981E18];
        goto LABEL_24;
      case 8:
        v46 = OUTLINED_FUNCTION_4_28();
        v47(v46);
        v15 = MEMORY[0x1E6981E30];
        goto LABEL_24;
      case 9:
        v44 = OUTLINED_FUNCTION_4_28();
        v45(v44);
        v15 = MEMORY[0x1E6981E28];
        goto LABEL_24;
      case 10:
        v18 = OUTLINED_FUNCTION_4_28();
        v19(v18);
        v15 = MEMORY[0x1E6981D90];
        goto LABEL_24;
      case 11:
        v28 = OUTLINED_FUNCTION_4_28();
        v29(v28);
        v15 = MEMORY[0x1E6981E20];
        goto LABEL_24;
      case 12:
        v20 = OUTLINED_FUNCTION_4_28();
        v21(v20);
        v15 = MEMORY[0x1E6981DD8];
        goto LABEL_24;
      case 13:
        v16 = OUTLINED_FUNCTION_4_28();
        v17(v16);
        v15 = MEMORY[0x1E6981DA8];
        goto LABEL_24;
      case 14:
        v36 = OUTLINED_FUNCTION_4_28();
        v37(v36);
        v15 = MEMORY[0x1E6981DE0];
        goto LABEL_24;
      case 15:
        v38 = OUTLINED_FUNCTION_4_28();
        v39(v38);
        v15 = MEMORY[0x1E6981D98];
        goto LABEL_24;
      case 20:
        v50 = OUTLINED_FUNCTION_4_28();
        v51(v50);
        v15 = MEMORY[0x1E6981DB0];
        goto LABEL_24;
      case 21:
        v48 = OUTLINED_FUNCTION_4_28();
        v49(v48);
        v15 = MEMORY[0x1E6981DD0];
        goto LABEL_24;
      case 23:
        v13 = OUTLINED_FUNCTION_4_28();
        v14(v13);
        v15 = MEMORY[0x1E6981DC0];
        goto LABEL_24;
      case 26:
        v22 = OUTLINED_FUNCTION_4_28();
        v23(v22);
        v15 = MEMORY[0x1E6981DA0];
        goto LABEL_24;
      case 27:
        v52 = OUTLINED_FUNCTION_4_28();
        v53(v52);
        v15 = MEMORY[0x1E6981DB8];
LABEL_24:
        v9 = *v15;
        goto LABEL_25;
      default:
        goto LABEL_26;
    }
  }

  v11 = OUTLINED_FUNCTION_4_28();
  v12(v11);
LABEL_25:
  v10(v8, v9, v2);
LABEL_26:
  sub_1E4203564();
  v54 = OUTLINED_FUNCTION_8_6();
  v55(v54);
  OUTLINED_FUNCTION_25_2();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  OUTLINED_FUNCTION_1_25();
  sub_1E32752B0(a4, a2);
  OUTLINED_FUNCTION_4_1();
  return swift_getWitnessTable();
}

uint64_t sub_1E37B9808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A258);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E37B9878()
{
  OUTLINED_FUNCTION_5_16();
  swift_beginAccess();
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
  sub_1E37B9FD8();
  return sub_1E4200624();
}

uint64_t (*sub_1E37B98EC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E37B9940;
}

uint64_t sub_1E37B9940(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
    sub_1E37B9FD8();
    return sub_1E4200624();
  }

  return result;
}

double sub_1E37B999C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  (*(v1 + 168))();

  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_1E37B9AA4()
{
  OUTLINED_FUNCTION_5_16();
  swift_beginAccess();
  if (*(v0 + 24) == v2 && *(v0 + 32) == v1)
  {
    OUTLINED_FUNCTION_6_12();
    return sub_1E37B9878();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_8();
    (*(v5 + 176))();
  }
}

void (*sub_1E37B9B98(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  (*(v4 + 168))();

  v3[5] = OBJC_IVAR____TtC8VideosUI30LeagueStandingsCardSharedModel___observationRegistrar;
  *v3 = v1;
  swift_getKeyPath();
  v3[6] = sub_1E37B9F34();
  sub_1E41FE914();

  v3[7] = sub_1E37B98EC(v3);
  return sub_1E37B9C88;
}

void sub_1E37B9C88(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1E41FE904();

  free(v1);
}

uint64_t sub_1E37B9D1C()
{
  OUTLINED_FUNCTION_5_16();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_6_12();
  sub_1E37B9D64();
  return v0;
}

void *sub_1E37B9D64()
{
  OUTLINED_FUNCTION_5_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
  OUTLINED_FUNCTION_119();
  v1 = sub_1E4200544();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  sub_1E41FE924();
  OUTLINED_FUNCTION_6_12();
  sub_1E37B9AA4();
  return v0;
}

uint64_t sub_1E37B9DD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
  sub_1E37B9FD8();
  return sub_1E4200624();
}

unint64_t sub_1E37B9F34()
{
  result = qword_1ECF2A268;
  if (!qword_1ECF2A268)
  {
    type metadata accessor for LeagueStandingsCardSharedModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A268);
  }

  return result;
}

uint64_t type metadata accessor for LeagueStandingsCardSharedModel()
{
  result = qword_1EE292EF0;
  if (!qword_1EE292EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E37B9FD8()
{
  result = qword_1EE28A140;
  if (!qword_1EE28A140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF326C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A140);
  }

  return result;
}

uint64_t sub_1E37BA03C()
{

  v1 = OBJC_IVAR____TtC8VideosUI30LeagueStandingsCardSharedModel___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E37BA10C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_layout;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
}

void *sub_1E37BA1A0()
{
  v1 = OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_hostingView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E37BA1DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_hostingView;
  OUTLINED_FUNCTION_37();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E37BA270()
{
  v1 = OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_isPrototypeCell;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E37BA2A4(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_isPrototypeCell;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E37BA368(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_cardObservableModel;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
}

id sub_1E37BA3FC()
{
  OUTLINED_FUNCTION_9_23();
  *(v0 + OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_hostingView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_isPrototypeCell) = 0;
  v1 = OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_cardObservableModel;
  type metadata accessor for LeagueStandingsCardSharedModel();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_13_34();
  *(v0 + v1) = v0;
  v7 = type metadata accessor for LeagueStandingsCard();
  v2 = OUTLINED_FUNCTION_2_0();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v7);
  [v5 setAutoresizingMask_];
  sub_1E37BA6CC();

  return v5;
}

void sub_1E37BA510()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_hostingView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_isPrototypeCell) = 0;
  v1 = OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_cardObservableModel;
  type metadata accessor for LeagueStandingsCardSharedModel();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_13_34();
  *(v0 + v1) = v0;
  sub_1E42076B4();
  __break(1u);
}

id sub_1E37BA5D4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for LeagueStandingsCard();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1E37BA6CC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];
}

uint64_t sub_1E37BA748()
{
  OUTLINED_FUNCTION_21();
  (*(v0 + 184))();
  OUTLINED_FUNCTION_30();
  (*(v1 + 160))();
}

void sub_1E37BA810(uint64_t a1, double a2, double a3, double a4)
{
  v5 = v4;
  OUTLINED_FUNCTION_21();
  v54 = v10;
  v11 = (*(v9 + 168))(v10);
  v12 = *(*a1 + 392);
  if ((v12)(v11))
  {
    type metadata accessor for LeagueStandingsCardLayout();
    if (!swift_dynamicCastClass())
    {
    }
  }

  OUTLINED_FUNCTION_3_3();
  (*(v13 + 120))();
  OUTLINED_FUNCTION_3_3();
  v15 = (*(v14 + 112))();
  if (!v15 || (v16 = (*(*v15 + 984))(), v18 = v17, , (v18 & 1) != 0))
  {
    v16 = 24;
  }

  type metadata accessor for LayoutGrid();
  v19 = sub_1E3A25D00(v16, 0, a2, 1.0);
  OUTLINED_FUNCTION_3_3();
  v21 = *(v20 + 184);
  v21();
  OUTLINED_FUNCTION_30();
  (*(v22 + 136))(v19, 0.0);

  sub_1E3A256EC();
  v23 = [objc_opt_self() current];
  sub_1E3C2AE10();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  if (v12())
  {
    OUTLINED_FUNCTION_30();
    (*(v30 + 1640))(v25, v27, v29);
  }

  v53 = v27;

  (v21)(v31);
  sub_1E3ABFC6C();
  v32 = MEMORY[0x1E69E7D40];
  v33 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x88))();
  if (v33)
  {
    v34 = v33;
    OUTLINED_FUNCTION_11_27();

    v35 = v34;

    sub_1E4201234();
  }

  else
  {
    OUTLINED_FUNCTION_11_27();
    v36 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A290));

    v37 = sub_1E4201214();
    [v37 _setSafeAreaInsetsFrozen_];
    [v37 setAutoresizingMask_];
    v38 = *((*v32 & *v5) + 0x90);
    v35 = v37;
    v38(v37);
  }

  v39 = [v5 vuiContentView];
  [v39 vui:v35 addSubview:v35 oldView:?];

  v40 = [v35 vui_setNeedsLayout];
  OUTLINED_FUNCTION_10_26(v41, v42, v43, v44, v40, sel_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_);
  v46 = v45;
  sub_1E37BAF90();
  if ((v54 & 1) == 0 && a4 - v46 > 1.0)
  {

    (v21)(v47);
    sub_1E3ABFC6C();

    sub_1E4201234();
    v48 = [v35 vui_setNeedsLayout];
    OUTLINED_FUNCTION_10_26(v49, v50, v51, v52, v48, sel_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_);
    sub_1E37BAF90();
  }
}

void *sub_1E37BAD44(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  if (a2)
  {
    v9 = a2;
    sub_1E37BA810(a1, a3, v10, a5);
  }

  return a2;
}

double sub_1E37BADAC(char a1, double a2, double a3)
{
  OUTLINED_FUNCTION_21();
  v8 = (*(v7 + 136))();
  if (!v8)
  {
    return 0.0;
  }

  v9 = v8;
  sub_1E4201224();

  if (!v25 || ((OUTLINED_FUNCTION_8(), v11 = (*(v10 + 128))(), v13 = v12, , v11 == a2) ? (v14 = v13 == a3) : (v14 = 0), !v14))
  {
    sub_1E37BAF90();
  }

  sub_1E37BB170();
  v17 = v16;
  if (a1)
  {
    v18 = v15;

    return v18;
  }

  else
  {
    v19 = [v3 vuiContentView];
    [v19 frame];
    v21 = v20;
    v23 = v22;

    [v9 setFrame_];
  }

  return a2;
}

void sub_1E37BAF90()
{
  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 136);
  v4 = v3();
  v5 = 0.0;
  if (v4 && (v6 = v4, sub_1E4201224(), v6, v4 = , v23))
  {
    OUTLINED_FUNCTION_8();
    v5 = (*(v7 + 128))();
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  if (v5 != v1 || v9 != v0)
  {
    v11 = (v3)(v4);
    if (v11)
    {
      v12 = v11;
      sub_1E4201224();

      if (v23)
      {
        OUTLINED_FUNCTION_8();
        v13 = OUTLINED_FUNCTION_6_12();
        v14(v13);
      }
    }

    v15 = (v3)(v11);
    if (v15)
    {
      v16 = v15;
      [v15 invalidateIntrinsicContentSize];
    }

    v17 = v3();
    if (v17)
    {
      v18 = v17;
      [v17 vui_setNeedsLayout];
    }

    v19 = v3();
    if (v19)
    {
      v20 = v19;
      [v19 vui_layoutIfNeeded];
    }

    v21 = v3();
    if (v21)
    {
      v22 = v21;
      [v21 _resetContentRect];
    }
  }
}

void sub_1E37BB170()
{
  OUTLINED_FUNCTION_5_16();
  [v0 sizeThatFits_];
  OUTLINED_FUNCTION_21();
  (*(v1 + 160))();
  OUTLINED_FUNCTION_6_12();
}

void *sub_1E37BB204(double a1, double a2, double a3, double a4, double a5)
{
  OUTLINED_FUNCTION_9_23();
  v12 = v11;
  v13 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v15 = (*(v14 + 136))();
  if (v15)
  {

    if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
    {
      if ((*((*v13 & *v5) + 0x70))())
      {
        OUTLINED_FUNCTION_30();
        (*(v16 + 176))(v21);

        if (v22)
        {
          a4 = 0.0;
        }

        else
        {
          a4 = *&v21[2];
        }
      }

      else
      {
        a4 = 0.0;
      }
    }

    sub_1E41A300C(__src);
    [v5 vui:1 layoutSubviews:v8 computationOnly:1.79769313e308];
    sub_1E41A2FE8(v17, v18);
    __src[6] = v7;
    __src[7] = v6;
    *&__src[8] = a4;
    *&__src[9] = a5;
  }

  else
  {
    sub_1E41A300C(__src);
  }

  return memcpy(v12, __src, 0x50uLL);
}

uint64_t sub_1E37BB3BC()
{
  result = sub_1E41FE934();
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

uint64_t sub_1E37BB498(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 256) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E37BB4F8(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 256);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E37BB578;
}

void sub_1E37BB578(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 256) = *(*a1 + 32);
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

uint64_t sub_1E37BB5FC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  (*(v0 + 1056))();
}

uint64_t sub_1E37BB66C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 936))();
  *a2 = result;
  return result;
}

uint64_t sub_1E37BB6EC(uint64_t a1)
{
  v2 = v1;
  v4 = v1[33];

  if (v4)
  {
    v12 = v4;
    if (!a1)
    {

      goto LABEL_8;
    }

    v11 = a1;
    type metadata accessor for ViewModel();
    sub_1E37BD020(&qword_1EE23BA60, type metadata accessor for ViewModel);

    v5 = sub_1E4205E84();
  }

  else
  {
    v5 = a1 == 0;
  }

  if (v5)
  {
    v2[33] = a1;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  v8 = MEMORY[0x1EEE9AC00](KeyPath);
  v9 = v2;
  v10 = a1;
  (*(*v2 + 1064))(v8);
}

uint64_t sub_1E37BB8BC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 296) = a1;
}

uint64_t sub_1E37BB9A8(__int16 a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 256) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E1E0);
  swift_allocObject();
  *(v3 + 296) = sub_1E4200544();
  sub_1E41FE924();

  v7 = sub_1E39BEDCC(a1, a2, a3);
  if (!v7)
  {

    goto LABEL_7;
  }

  ViewModelKeys.rawValue.getter(31);
  sub_1E3277E60(v8, v9, a2, &v12);

  if (!v13)
  {

    sub_1E329505C(&v12);
    return v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:

    return v7;
  }

  *(v7 + 272) = v11;

  return v7;
}

uint64_t sub_1E37BBB38()
{
  OUTLINED_FUNCTION_0_26();
  sub_1E37BD020(v0, v1);
  return sub_1E41FE8F4();
}

uint64_t sub_1E37BBBAC()
{
  OUTLINED_FUNCTION_0_26();
  sub_1E37BD020(v0, v1);
  return sub_1E41FE8E4();
}

uint64_t sub_1E37BBC58()
{
  *(*(v0 + 16) + 264) = *(v0 + 24);
}

uint64_t type metadata accessor for ListLockupWithDetailsViewModel()
{
  result = qword_1ECF463D0;
  if (!qword_1ECF463D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E37BBD10()
{
  sub_1E32AF6F8(v0 + 248);

  v1 = OBJC_IVAR____TtC8VideosUI30ListLockupWithDetailsViewModel___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1E37BBD9C()
{
  v0 = ViewModel.deinit();
  sub_1E32AF6F8(v0 + 248);

  v1 = OBJC_IVAR____TtC8VideosUI30ListLockupWithDetailsViewModel___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1E37BBE28()
{
  v0 = sub_1E37BBD9C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E37BBE8C()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1032))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E1E0);
  sub_1E37BBF24();
  v1 = sub_1E42006B4();

  return v1;
}

unint64_t sub_1E37BBF24()
{
  result = qword_1ECF2A2A0;
  if (!qword_1ECF2A2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A2A0);
  }

  return result;
}

uint64_t sub_1E37BBF88(void (*a1)(void), uint64_t a2)
{
  v5 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_29();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v65 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v65 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v65 - v19;
  v21 = (*(*v2 + 936))(v18);
  v67 = v3;
  if (v21)
  {
    v66 = v16;
    v22 = v13;
    v23 = a1;
    v24 = a2;

    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v25(v20);
    v26 = sub_1E41FFC94();
    v27 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v27))
    {
      v28 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v28);
      OUTLINED_FUNCTION_5_37(&dword_1E323F000, v29, v27, "ListLockupWithDetailsViewModel:: detailsViewModel already set, skipping fetch");
      OUTLINED_FUNCTION_1_59();
    }

    (*(v9 + 8))(v20, v3);
    a2 = v24;
    a1 = v23;
    v23(1);
    v13 = v22;
    v16 = v66;
  }

  if ((*(*v5 + 648))() && (OUTLINED_FUNCTION_5_0(), Strong = swift_unknownObjectWeakLoadStrong(), , Strong))
  {
    if (v5[35])
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_2_26();
      v31 = v67;
      v32(v16);
      v33 = sub_1E41FFC94();
      v34 = sub_1E42067E4();
      if (OUTLINED_FUNCTION_104(v34))
      {
        v35 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_9_11(v35);
        OUTLINED_FUNCTION_5_37(&dword_1E323F000, v36, v34, "ListLockupWithDetailsViewModel::cancelling to handle new request of type");
        OUTLINED_FUNCTION_1_59();
      }

      (*(v9 + 8))(v16, v31);
      if (v5[35])
      {
        OUTLINED_FUNCTION_8();
        v38 = *(v37 + 376);

        v38(v39);
      }

      v5[35] = 0;
    }

    type metadata accessor for CollectionServiceRequestContext();
    v46 = Strong;
    v47 = sub_1E3E3D284(1, 0xD000000000000014, 0x80000001E425C780, Strong);
    v48 = *(*v47 + 232);

    v48(v49);

    v50 = sub_1E4205CB4();
    v51 = sub_1E37BC604(v5, v50);

    (*(*v47 + 280))(v51);
    (*(*v47 + 184))(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A2A8);
    v5[35] = sub_1E37B2890();

    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v52 = v67;
    v53(v13);
    v54 = sub_1E41FFC94();
    v55 = sub_1E42067E4();
    if (OUTLINED_FUNCTION_104(v55))
    {
      v56 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v56);
      OUTLINED_FUNCTION_5_37(&dword_1E323F000, v57, v55, "ListLockupWithDetailsViewModel::starting fetch");
      OUTLINED_FUNCTION_1_59();
    }

    (*(v9 + 8))(v13, v52);
    v58 = v5[35];
    if (v58 && (v59 = *(*v58 + 352), v60 = , v61 = v59(v60), , v61))
    {
      v62 = swift_allocObject();
      swift_weakInit();
      v63 = swift_allocObject();
      v63[2] = v62;
      v63[3] = a1;
      v63[4] = a2;

      v64 = sub_1E41EC148(sub_1E37BCF54, v63);
    }

    else
    {

      v64 = 0;
    }

    v5[36] = v64;
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v40(v4);
    v41 = sub_1E41FFC94();
    v42 = sub_1E42067E4();
    if (OUTLINED_FUNCTION_104(v42))
    {
      v43 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v43);
      OUTLINED_FUNCTION_5_37(&dword_1E323F000, v44, v42, "ListLockupWithDetailsViewModel::failed to make update request.");
      OUTLINED_FUNCTION_1_59();
    }

    (*(v9 + 8))(v4, v3);
    return (a1)(0);
  }
}

uint64_t sub_1E37BC604(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(*a1 + 672);

    v6 = v4(v5);
    ViewModelKeys.rawValue.getter(34);
    v9 = sub_1E39BD118(v7, v8, v6);

    sub_1E4149E18(a2, v9);

    (*(*a1 + 624))(v10);
    v11 = sub_1E37BC604();

    return v11;
  }

  else
  {
  }
}

uint64_t sub_1E37BC74C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v52[1] = a4;
  v53 = a3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_29();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v52 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v52 - v14;
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  v19 = *(a1 + 17);
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    if (v19)
    {
      *&v58 = sub_1E3F6FB3C(v16, v17, v18);
      *(&v58 + 1) = v22;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
      sub_1E4148C68(sub_1E37BCD7C, v23, &v54);

      v25 = v54;
      v24 = v55;
      sub_1E3E37F30();
      OUTLINED_FUNCTION_6_30();
      v26(v5);

      v27 = sub_1E41FFC94();
      v28 = sub_1E42067F4();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v54 = v30;
        *v29 = 136315138;
        v31 = sub_1E3270FC8(v25, v24, &v54);

        *(v29 + 4) = v31;
        _os_log_impl(&dword_1E323F000, v27, v28, "ListLockupWithDetailsViewModel::received error [%s]", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v8 + 8))(v5, v4);
      v21[35] = 0;

      v53(0);
      goto LABEL_30;
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_6_30();
    v37(v12);
    v38 = sub_1E41FFC94();
    v39 = sub_1E42067E4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_125_0();
      *v40 = 0;
      _os_log_impl(&dword_1E323F000, v38, v39, "ListLockupWithDetailsViewModel::received success response", v40, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v8 + 8))(v12, v4);
    OUTLINED_FUNCTION_5_0();
    if (*(v16 + 40))
    {
      v56 = &type metadata for ViewModelKeys;
      v57 = &off_1F5D7BCA8;
      LOBYTE(v54) = 7;

      sub_1E3F9F164(&v54);

      __swift_destroy_boxed_opaque_existential_1(&v54);
      if (*(&v59 + 1))
      {
        if (swift_dynamicCast())
        {
          if (v54 == 0x44524143534944 && v55 == 0xE700000000000000)
          {
            goto LABEL_28;
          }

          v42 = sub_1E42079A4();

          if (v42)
          {
            goto LABEL_29;
          }
        }

LABEL_23:
        OUTLINED_FUNCTION_5_0();
        v43 = *(*v21 + 472);

        v43(v44);
        if (!*(v16 + 40))
        {
LABEL_29:
          v53(1);
          v21[35] = 0;

LABEL_30:
          v21[36] = 0;
        }

        type metadata accessor for CollectionViewModel();

        sub_1E40B947C(v45, 0);
        v47 = v46;

        v48 = sub_1E37BB6EC(v47);
        (*(*v21 + 1032))(v48);
        v49 = (*(*v21 + 936))();
        if (!v49 || (v50 = *(v49 + 16), v51 = *(v49 + 24), , , !v51))
        {

          v50 = 0;
          v51 = 0xE000000000000000;
        }

        *&v58 = v50;
        *(&v58 + 1) = v51;
        sub_1E4200524();

LABEL_28:

        goto LABEL_29;
      }
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
    }

    sub_1E329505C(&v58);
    goto LABEL_23;
  }

  sub_1E3E37F30();
  OUTLINED_FUNCTION_6_30();
  v32(v15);
  v33 = sub_1E41FFC94();
  v34 = sub_1E42067F4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_9_11(v35);
    _os_log_impl(&dword_1E323F000, v33, v34, "ListLockupWithDetailsViewModel::view model object is invalid.", v4, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  return (*(v8 + 8))(v15, v4);
}

uint64_t sub_1E37BCD9C()
{
  if (*(v0 + 280))
  {
    OUTLINED_FUNCTION_8();
    v2 = *(v1 + 376);

    v2(v3);
  }

  *(v0 + 280) = 0;
}

void (*sub_1E37BCE8C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_8();
  v2[4] = (*(v3 + 904))();
  return sub_1E37BCF0C;
}

void sub_1E37BCF0C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1E37BCF68()
{
  result = sub_1E41FE934();
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

uint64_t sub_1E37BD020(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E37BD068()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    type metadata accessor for TextLayout();
    v1 = sub_1E383BCC0();
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E37BD0DC()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E37BD184()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E37BD1C0();

  return v1;
}

uint64_t sub_1E37BD1C0()
{
  sub_1E37BD278();
  sub_1E37BD360();
  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 1704))();
  sub_1E3C37CBC(v2, 23);

  v4 = (*(*v0 + 1728))(v3);
  sub_1E3C37CBC(v4, 39);
}

uint64_t sub_1E37BD278()
{
  OUTLINED_FUNCTION_8();
  v0 += 213;
  v1 = *v0;
  v2 = (*v0)();
  (*(*v2 + 1696))(17);

  (v1)(v3);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 1792))(10);
}

uint64_t sub_1E37BD360()
{
  OUTLINED_FUNCTION_8();
  v0 += 216;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 680))(0);

  (v1)(v3);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 1808))(1);

  (v1)(v5);
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 1712))(1);

  (v1)(v7);
  v17[0] = sub_1E3952CA4();
  v17[1] = v8;
  v17[2] = v9;
  v17[3] = v10;
  v18 = 0;
  OUTLINED_FUNCTION_8();
  (*(v11 + 184))(v17);

  (v1)(v12);
  OUTLINED_FUNCTION_2_1();
  (*(v13 + 312))(0x403C000000000000, 0);

  v15 = (v1)(v14);
  (*(*v15 + 208))(0x403C000000000000, 0);
}

uint64_t sub_1E37BD594()
{
}

uint64_t sub_1E37BD5C4()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E37BD5FC()
{
  v0 = sub_1E37BD5C4();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

uint64_t sub_1E37BD678()
{
  v1 = OBJC_IVAR____TtC8VideosUI35StackCollectionViewLayoutAttributes_forcedSize;
  OUTLINED_FUNCTION_5_0();
  return *(v0 + v1);
}

uint64_t sub_1E37BD6DC(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI35StackCollectionViewLayoutAttributes_forcedSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E37BD72C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v13.receiver = v3;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, sel_copyWithZone_, a1);
  sub_1E4207264();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v7 = v12;
  }

  else
  {
    v7 = [objc_allocWithZone(ObjectType) init];
  }

  v8 = OBJC_IVAR____TtC8VideosUI35StackCollectionViewLayoutAttributes_forcedSize;
  OUTLINED_FUNCTION_5_0();
  v9 = *(v3 + v8);
  v10 = OBJC_IVAR____TtC8VideosUI35StackCollectionViewLayoutAttributes_forcedSize;
  result = swift_beginAccess();
  v7[v10] = v9;
  a2[3] = ObjectType;
  *a2 = v7;
  return result;
}

uint64_t sub_1E37BD88C()
{
  OUTLINED_FUNCTION_12_1();
  ObjectType = swift_getObjectType();
  sub_1E3294F34(v0, v10);
  if (!v11)
  {
    sub_1E329505C(v10);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v6 = 0;
    return v6 & 1;
  }

  v9.receiver = v1;
  v9.super_class = ObjectType;
  if (!objc_msgSendSuper2(&v9, sel_isEqual_))
  {

    goto LABEL_7;
  }

  v3 = OBJC_IVAR____TtC8VideosUI35StackCollectionViewLayoutAttributes_forcedSize;
  OUTLINED_FUNCTION_5_0();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC8VideosUI35StackCollectionViewLayoutAttributes_forcedSize;
  OUTLINED_FUNCTION_5_0();
  LOBYTE(v5) = *(v8 + v5);

  v6 = v4 ^ v5 ^ 1;
  return v6 & 1;
}

id sub_1E37BD9E8()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC8VideosUI35StackCollectionViewLayoutAttributes_forcedSize] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1E37BDA50()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    type metadata accessor for BaseCollectionView();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x68))();

      if (v4)
      {
        result = swift_dynamicCastObjCProtocolConditional();
        if (result)
        {
          return result;
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_1E37BDB74()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_31();
  v8 = [v0 collectionView];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  [v8 bounds];
  v28.width = v10;
  v28.height = v11;
  v29.width = v2;
  v29.height = v1;
  if (!CGSizeEqualToSize(v28, v29))
  {

    return 1;
  }

  if (!sub_1E37BDA50())
  {

    return 0;
  }

  MEMORY[0x1E6909170](0, 0);
  if (v3 <= 0.0)
  {
    v14 = sub_1E41FE7E4();
    v12 = OUTLINED_FUNCTION_15_29(v14, sel_shouldRubberbandElementWithCategory_in_at_);
  }

  else
  {
    v12 = 0;
  }

  result = [v9 numberOfSections];
  if (!__OFSUB__(result, 1))
  {
    MEMORY[0x1E6909170](0, result - 1);
    sub_1E37BDE0C();
    if ((OUTLINED_FUNCTION_6_31() & 1) != 0 || ([v9 contentSize], v16 > v3 + v1))
    {
      if (v12)
      {
LABEL_14:
        swift_unknownObjectRelease();

        v17 = *(v5 + 8);
        v18 = OUTLINED_FUNCTION_11_6();
        v17(v18);
        v19 = OUTLINED_FUNCTION_13_8();
        v17(v19);
        return 1;
      }
    }

    else
    {
      v20 = sub_1E41FE7E4();
      v27 = OUTLINED_FUNCTION_15_29(v20, sel_shouldRubberbandElementWithCategory_in_at_);

      if ((v12 | v27))
      {
        goto LABEL_14;
      }
    }

    v21 = OUTLINED_FUNCTION_2_0();
    v13 = objc_msgSendSuper2(v22, v23, v21);

    swift_unknownObjectRelease();
    v24 = *(v5 + 8);
    v25 = OUTLINED_FUNCTION_11_6();
    v24(v25);
    v26 = OUTLINED_FUNCTION_13_8();
    v24(v26);
    return v13;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E37BDE0C()
{
  result = qword_1EE28A410;
  if (!qword_1EE28A410)
  {
    sub_1E41FE874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A410);
  }

  return result;
}

id sub_1E37BDEB0()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  v1 = OUTLINED_FUNCTION_2_0();
  result = objc_msgSendSuper2(v2, v3, v1);
  if (!result)
  {
    return result;
  }

  v5 = result;
  sub_1E37BE048();
  v6 = sub_1E42062B4();

  v7 = sub_1E32AE9B0(v6);
  if (!v7)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v13 = MEMORY[0x1E69E7CC0];
  v9 = v0;
  result = sub_1E4207574();
  if (v8 < 0)
  {
    goto LABEL_16;
  }

  v10 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1E6911E60](v10, v6);
      goto LABEL_10;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    v11 = *(v6 + 8 * v10 + 32);
LABEL_10:
    v12 = v11;
    ++v10;
    sub_1E37BE08C(v11);

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    result = sub_1E4207554();
    if (v8 == v10)
    {

      return v13;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1E37BE048()
{
  result = qword_1EE23AF18;
  if (!qword_1EE23AF18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AF18);
  }

  return result;
}

char *sub_1E37BE08C(void *a1)
{
  v50 = a1;
  v2 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_31();
  MEMORY[0x1EEE9AC00](v6);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v48 - v9;
  v11 = [v50 representedElementCategory];
  v12 = sub_1E37BDA50();
  if (v12)
  {
    v13 = v12;
    v14 = [v1 collectionView];
    if (v14)
    {
      v15 = v14;
      v16 = [v50 indexPath];
      OUTLINED_FUNCTION_17_19();

      v17 = sub_1E41FE7E4();
      v18 = *(v4 + 8);
      v18(v10, v2);
      v19 = [v13 shouldRubberbandElementWithCategory:v11 in:v15 at:v17];

      if (v19)
      {
        MEMORY[0x1E6909170](0, 0);
        result = [v15 numberOfSections];
        if (__OFSUB__(result, 1))
        {
          __break(1u);
          return result;
        }

        MEMORY[0x1E6909170](0, result - 1);
        v21 = [v50 indexPath];
        OUTLINED_FUNCTION_17_19();

        sub_1E41FE7F4();
        v22 = OUTLINED_FUNCTION_9_24();
        (v18)(v22);
        if (v17)
        {
          sub_1E37BDE0C();
          v23 = OUTLINED_FUNCTION_6_31() ^ 1;
        }

        else
        {
          v23 = 0;
        }

        v24 = v15;
        if ([v24 isDragging] & 1) != 0 || ((objc_msgSend(v24, sel_isDecelerating) | v23))
        {
          [v50 copy];
          sub_1E4207264();
          swift_unknownObjectRelease();
          type metadata accessor for StackCollectionViewLayoutAttributes();
          if (swift_dynamicCast())
          {
            v25 = v51;
            v26 = OBJC_IVAR____TtC8VideosUI35StackCollectionViewLayoutAttributes_forcedSize;
            swift_beginAccess();
            v49 = v26;
            v25[v26] = 0;
            [v24 contentOffset];
            v28 = -v27;
            [v24 adjustedContentInset];
            if (v28 - v29 > 0.0)
            {
              v30 = [v50 indexPath];
              OUTLINED_FUNCTION_17_19();

              sub_1E41FE7F4();
              v31 = OUTLINED_FUNCTION_9_24();
              (v18)(v31);
              if (v26)
              {
                v26 = v25;
                [v26 frame];
                [v26 setFrame_];
                [v26 frame];
                [v26 setFrame_];
                v25[v49] = 1;
                [v26 setZIndex_];
              }
            }

            [v24 bounds];
            v33 = v32;
            [v24 contentOffset];
            v35 = v33 + v34;
            [v24 contentSize];
            v37 = v36;

            if (v35 - v37 > 0.0 && (v38 = [v50 indexPath], OUTLINED_FUNCTION_17_19(), v26, sub_1E41FE7F4(), v39 = OUTLINED_FUNCTION_9_24(), (v18)(v39), (v26 & 1) != 0) && (sub_1E37BDE0C(), (OUTLINED_FUNCTION_6_31() & 1) == 0))
            {
              v45 = v25;
              [v45 frame];
              [v45 setFrame_];
              v25[v49] = 1;
              [v45 setZIndex_];

              swift_unknownObjectRelease();
              v46 = OUTLINED_FUNCTION_11_6();
              (v18)(v46);
              v47 = OUTLINED_FUNCTION_13_8();
              (v18)(v47);
              return v45;
            }

            else
            {

              swift_unknownObjectRelease();
              v40 = OUTLINED_FUNCTION_11_6();
              (v18)(v40);
              v41 = OUTLINED_FUNCTION_13_8();
              (v18)(v41);
            }

            return v25;
          }
        }

        swift_unknownObjectRelease();

        v42 = OUTLINED_FUNCTION_11_6();
        (v18)(v42);
        v43 = OUTLINED_FUNCTION_13_8();
        (v18)(v43);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v44 = v50;

  return v44;
}

char *sub_1E37BE680()
{
  OUTLINED_FUNCTION_50();
  ObjectType = swift_getObjectType();
  v2 = sub_1E41FE7E4();
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v7, sel_layoutAttributesForItemAtIndexPath_, v2);

  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_1E37BE08C(v4);

  return v5;
}

id sub_1E37BE80C()
{
  OUTLINED_FUNCTION_12_1();
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v4, sel_initWithSection_, v0);

  return v2;
}

id sub_1E37BE884()
{
  OUTLINED_FUNCTION_7_47();
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithSection_configuration_, v2, v0);

  return v3;
}

id sub_1E37BE928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

void *sub_1E37BE9A4()
{
  OUTLINED_FUNCTION_7_47();
  ObjectType = swift_getObjectType();
  v12 = v2;
  v13 = v0;
  OUTLINED_FUNCTION_4_30();
  v9 = 1107296256;
  OUTLINED_FUNCTION_0_27();
  v10 = v4;
  v11 = &block_descriptor_3;
  v5 = _Block_copy(aBlock);

  v7.receiver = v1;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, sel_initWithSectionProvider_, v5);
  OUTLINED_FUNCTION_50();

  _Block_release(v5);
  return v1;
}

id sub_1E37BEAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a3, a1, a2);

  return v3;
}

id sub_1E37BEAF8()
{
  v3 = objc_allocWithZone(OUTLINED_FUNCTION_13_20());
  v9 = v2;
  v10 = v1;
  OUTLINED_FUNCTION_3_4();
  v8[1] = 1107296256;
  OUTLINED_FUNCTION_0_27();
  v8[2] = v4;
  v8[3] = &block_descriptor_6;
  v5 = _Block_copy(v8);
  v6 = [v3 initWithSectionProvider:v5 configuration:v0];

  _Block_release(v5);

  return v6;
}

id sub_1E37BEB94()
{
  OUTLINED_FUNCTION_13_20();
  ObjectType = swift_getObjectType();
  v14 = v3;
  v15 = v2;
  OUTLINED_FUNCTION_4_30();
  v11 = 1107296256;
  OUTLINED_FUNCTION_0_27();
  v12 = v5;
  v13 = &block_descriptor_9;
  v6 = _Block_copy(aBlock);

  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithSectionProvider_configuration_, v6, v0);

  _Block_release(v6);
  return v7;
}

id sub_1E37BECC8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

double sub_1E37BEDA4()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    return *(v0 + 48);
  }

  result = *(v0 + 16) * *(v0 + 24) * 20.0;
  *(v0 + 48) = result;
  *(v0 + 56) = 0;
  return result;
}

uint64_t sub_1E37BEDE4(double a1, double a2, double a3)
{
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  *(result + 64) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t sub_1E37BEE3C()
{
  if (*(v0 + 64))
  {

    sub_1E42004E4();
  }

  return v0;
}

uint64_t sub_1E37BEE8C()
{
  sub_1E37BEE3C();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

double sub_1E37BEEC0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = a1 / (sub_1E37BEDA4() / (v3 * v2 + v3 * v2));
  v5 = v3 + v3;
  v6 = v4 / v2;
  if (v4 / v2 >= (v3 + v3) * 0.25)
  {
    if (v6 >= v5 * 0.5)
    {
      v8 = v6 < v5 * 3.0 * 0.25;
      v9 = v5 - v6 + 0.0;
      v10 = v6 - v3 + 0.0;
      if (v8)
      {
        v7 = v10;
      }

      else
      {
        v7 = v9;
      }
    }

    else
    {
      v7 = v6 - v3 + 0.0;
    }
  }

  else
  {
    v7 = 0.0 - v6;
  }

  fmod(v4, v2);
  return v7;
}

uint64_t sub_1E37BEFCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A380);
  v10 = *(v28 - 8);
  v11 = MEMORY[0x1EEE9AC00](v28);
  v13 = &v27 - v12;
  (*(*v2 + 232))(v11);
  sub_1E3280A90(0, &qword_1EE23AE40);
  v14 = [objc_opt_self() mainRunLoop];
  v15 = sub_1E4207054();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  v16 = sub_1E4206F14();

  sub_1E325F748(v9, &unk_1ECF3DB30);
  v32 = v16;
  sub_1E4206F04();
  sub_1E37BF3F8();
  v17 = sub_1E4200584();

  v32 = v17;
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v18 = sub_1E4206A04();
  v31 = v18;
  v19 = sub_1E42069A4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB40);
  sub_1E32752B0(&qword_1EE28A360, &unk_1ECF3DB40);
  sub_1E3746800();
  sub_1E42007D4();
  sub_1E325F748(v6, &unk_1ECF2D2B0);

  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v22 = v29;
  v23 = v30;
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v23;
  sub_1E32752B0(&qword_1ECF2A388, &qword_1ECF2A380);

  v24 = v28;
  v25 = sub_1E4200844();

  (*(v10 + 8))(v13, v24);
  *(v3 + 64) = v25;
}

unint64_t sub_1E37BF3F8()
{
  result = qword_1EE23AE48;
  if (!qword_1EE23AE48)
  {
    sub_1E4206F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23AE48);
  }

  return result;
}

void sub_1E37BF450()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + 40);
    v5 = sub_1E37BEEC0(v4);
    v7 = __OFADD__(v4, 1);
    v8 = v4 + 1;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      v9 = v5;
      v10 = v6;
      v11 = sub_1E37BEDA4();
      if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v11 > -9.22337204e18)
        {
          if (v11 < 9.22337204e18)
          {
            v12 = v11;
            if (v11)
            {
              if (v8 != 0x8000000000000000 || v12 != -1)
              {
                *(v3 + 40) = v8 % v12;
                v1(v9, v10);

                return;
              }

LABEL_18:
              __break(1u);
              return;
            }

LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1E37BF56C()
{
  if (*(v0 + 64))
  {

    sub_1E42004E4();
  }

  *(v0 + 64) = 0;
}

void sub_1E37BF5EC()
{
  sub_1E384EE08(119);
  qword_1EE28B308 = v0;
  *algn_1EE28B310 = v1;
}

uint64_t sub_1E37BF614(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1E37BF664(a1, a2);
  return v4;
}

uint64_t sub_1E37BF664(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v6 = sub_1E3C7E1CC(1);
  sub_1E3277E60(v6, v7, a1, &v47);

  if (!v48)
  {
    __swift_destroy_boxed_opaque_existential_1(a2);
LABEL_19:
    sub_1E329505C(&v47);
    return v3;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  v9 = MEMORY[0x1E69E7CA0];
  OUTLINED_FUNCTION_0_28(v8, v10, v11, v12, v13, v14, v15, v16, v40, v43);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(a2);
    return v3;
  }

  v17 = v44;
  if (!*(v44 + 16))
  {
    goto LABEL_14;
  }

  v45 = sub_1E3C7E1CC(2);
  MEMORY[0x1E69109E0](46, 0xE100000000000000);
  if (_MergedGlobals_148 != -1)
  {
    swift_once();
  }

  MEMORY[0x1E69109E0](qword_1EE28B308, *algn_1EE28B310);
  sub_1E3F9F204(v17, v9 + 8, &v47);

  if (!v48)
  {
    __swift_destroy_boxed_opaque_existential_1(a2);
LABEL_18:

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_0_28(v18, v19, v20, v21, v22, v23, v24, v25, v41, v45);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v26 = v46;
  v27 = sub_1E3C7E1CC(3);
  sub_1E3277E60(v27, v28, v17, &v47);

  if (!v48)
  {
    __swift_destroy_boxed_opaque_existential_1(a2);

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_0_28(v29, v30, v31, MEMORY[0x1E69E6158], v32, v33, v34, v35, v42, v46);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(a2);

    goto LABEL_15;
  }

  type metadata accessor for CollectionViewModel();
  v36 = sub_1E40B198C(119, v26, 0);
  if (!v36)
  {
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(a2);
LABEL_15:

    return v3;
  }

  v37 = v36;
  type metadata accessor for PagePerformanceReporter();
  v38 = sub_1E3C69AA0(v17);

  __swift_destroy_boxed_opaque_existential_1(a2);
  OUTLINED_FUNCTION_3_0();
  *(v3 + 24) = v38;

  OUTLINED_FUNCTION_3_0();
  *(v3 + 16) = v37;

  return v3;
}

uint64_t sub_1E37BF908()
{

  return v0;
}

uint64_t sub_1E37BF930()
{
  sub_1E37BF908();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E37BF964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E37BF614(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E37BF9E4()
{
  *(v0 + 104) = 0;
  v1 = sub_1E3C2F9A0();

  v35 = sub_1E3952C10(64.0, 32.0);
  v36 = v2;
  v37 = v3;
  v38 = v4;
  v39 = 0;
  sub_1E3C2CC78();
  v5 = sub_1E37BD068();
  LOBYTE(v32) = 17;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_5_38();
  v6 = OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_0_29(v6, v7, v8, v9, v10, v11, v12, v13, v32, v33, v34);
  v14 = OUTLINED_FUNCTION_1_60();
  (*(*v5 + 1600))(&v32, 48, v14 & 1, &qword_1F5D549D8);

  v15 = *(**(v1 + 104) + 2056);

  v15(0, 0);

  v16 = *(v1 + 104);
  LOBYTE(v32) = 4;

  sub_1E3C2FC98();
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_5_38();
  v17 = OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_0_29(v17, v18, v19, v20, v21, v22, v23, v24, v32, v33, v34);
  v25 = OUTLINED_FUNCTION_1_60();
  (*(*v16 + 1600))(&v32, 54, v25 & 1, &qword_1F5D54AF8);

  v26 = *(v1 + 104);

  v27 = *sub_1E3E5FD88();
  v28 = *(*v26 + 680);
  v29 = v27;
  v28(v27);

  sub_1E3C37CBC(v30, 23);

  return v1;
}

uint64_t sub_1E37BFC54()
{
  v0 = sub_1E3C36C6C();

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

uint64_t sub_1E37BFCCC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = *(*result + 624);

    v5 = v4();
    v15 = 9;
    (*(*v3 + 776))(v16, &v15, &unk_1F5D5D0A8, &off_1F5D5C758);
    if (!v16[3])
    {
      sub_1E329505C(v16);
      goto LABEL_10;
    }

    if (!swift_dynamicCast() || (v15 & 1) == 0)
    {
LABEL_10:
      while (v5)
      {
        type metadata accessor for CollectionViewModel();
        v6 = swift_dynamicCastClass();
        if (v6)
        {
          v7 = *(*v6 + 1440);

          v9 = v7(v8);

          if (v9)
          {
            goto LABEL_12;
          }
        }

        v10 = (*(*v5 + 624))();

        v5 = v10;
      }
    }

    v9 = 0;
LABEL_12:
    v11 = [objc_opt_self() standardUserDefaults];
    v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v13 = sub_1E4205ED4();
    [v11 setObject:v12 forKey:v13];

    v14 = *sub_1E3D54C24();
    sub_1E3D59D70();

    sub_1E37BFF60(v3, v9, a2);
  }

  return result;
}

void sub_1E37BFF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E41FFCB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E39BE4D0();
  if (v10)
  {
    v11 = v10;
    v12 = sub_1E324FBDC();
    (*(v7 + 16))(v9, v12, v6);

    v13 = sub_1E41FFC94();
    v14 = sub_1E42067E4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v37 = a3;
      v16 = v15;
      v35 = v15;
      v36 = swift_slowAlloc();
      v38[0] = v36;
      *v16 = 136315138;
      v17 = *(*a1 + 368);
      v34 = v14;
      v18 = v17();
      v20 = v11;
      v21 = a2;
      v22 = sub_1E3270FC8(v18, v19, v38);

      v23 = v35;
      *(v35 + 4) = v22;
      a2 = v21;
      v11 = v20;
      _os_log_impl(&dword_1E323F000, v13, v34, "Button(%s dispatching select event", v23, 0xCu);
      v24 = v36;
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1E69143B0](v24, -1, -1);
      a3 = v37;
      MEMORY[0x1E69143B0](v23, -1, -1);
    }

    v25 = (*(v7 + 8))(v9, v6);
    v27 = (*(*a1 + 544))(v25);
    if (a2)
    {
      sub_1E3744600(v11);

      sub_1E3744600(a2);
      v28 = objc_allocWithZone(VUIRouterDataSource);
      v29 = sub_1E37C07A4();
    }

    else
    {

      v29 = v27;
    }

    (*(*a1 + 808))(2, 0);
    ViewModelEvent.description.getter(2);
    v30 = sub_1E4205ED4();

    if ((*(*a1 + 648))(v31))
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
    }

    else
    {
      Strong = 0;
    }

    [objc_opt_self() handleEvent:v30 targetResponder:a3 appContext:Strong routerDataSource:v29 supplementaryData:0 extraInfo:0];
  }

  else
  {
    OUTLINED_FUNCTION_25();
    v26();
  }
}

void sub_1E37C0398()
{
  OUTLINED_FUNCTION_4_0();
  v1 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_4_0();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v5[4] = sub_1E37C04A8;
  v5[5] = v3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1E37C0588;
  v5[3] = &block_descriptor_6;
  v4 = _Block_copy(v5);

  [v0 setSelectActionHandler_];
  _Block_release(v4);
}

void sub_1E37C04A8(uint64_t a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    sub_1E3294F34(a1, v6);
    if (v7)
    {
      sub_1E37C0760();
      if (swift_dynamicCast())
      {
        v3 = v5;
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      sub_1E329505C(v6);
      v3 = 0;
    }

    type metadata accessor for SportsBridgeButton();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    sub_1E37BFCCC(v4, v3);
  }
}

uint64_t sub_1E37C0588(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v5 = a2;
    sub_1E329504C(&v5, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  swift_unknownObjectRetain();
  v3(v7);

  return sub_1E329505C(v7);
}

id sub_1E37C0614(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithType:a1 interfaceStyle:a2];
}

id sub_1E37C0668(uint64_t a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v6, sel_initWithType_interfaceStyle_, a1, a2);
}

unint64_t sub_1E37C0760()
{
  result = qword_1EE23B3D0;
  if (!qword_1EE23B3D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B3D0);
  }

  return result;
}

id sub_1E37C07A4()
{
  v1 = sub_1E4205C44();

  v2 = sub_1E4205C44();

  v3 = [v0 initWithRouterData:v1 prefetchedData:v2];

  return v3;
}

uint64_t sub_1E37C085C()
{
  v1 = OBJC_IVAR____TtC8VideosUI20TimedMetadataManager_playbackInfos;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E37C08B8(void *a1)
{
  v2 = v1;
  type metadata accessor for PlayerBasedMetadataVendor();
  v4 = a1;
  v5 = sub_1E3DBA374(v4);
  v6 = OBJC_IVAR____TtC8VideosUI20TimedMetadataManager_playbackInfos;
  swift_beginAccess();
  v7 = v4;

  sub_1E37C0BD0();
  v8 = *(*(v2 + v6) + 16);
  sub_1E37C0C1C(v8);
  v9 = *(v2 + v6);
  *(v9 + 16) = v8 + 1;
  v10 = v9 + 16 * v8;
  *(v10 + 32) = v5;
  *(v10 + 40) = v7;
  *(v2 + v6) = v9;
  swift_endAccess();
}

uint64_t sub_1E37C09E0(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20TimedMetadataManager_playbackInfos;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      if (*v6 == a1)
      {

        v8 = v7;
        sub_1E41FEF24();
      }

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  swift_beginAccess();
  v9 = sub_1E37C0D64((v1 + v3), a1);
  v10 = *(*(v1 + v3) + 16);
  if (v10 < v9)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_1E37C0F60(v9, v10);
    return swift_endAccess();
  }

  return result;
}

char *sub_1E37C0BD0()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E37C0C5C(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_1E37C0C1C(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1E37C0C5C((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

char *sub_1E37C0C5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E37C0D64(char **a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  result = sub_1E37C0EE8(v4, v5);
  v8 = result;
  if (v2)
  {
    goto LABEL_17;
  }

  if (v7)
  {
    v8 = *(v4 + 2);
LABEL_17:

    return v8;
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 16 * result; ; i += 16)
    {
      v11 = *(v4 + 2);
      if (v9 == v11)
      {
        break;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v12 = *&v4[i + 56];
      if (v12 != v5)
      {
        if (v9 != v8)
        {
          if (v8 >= v11)
          {
            goto LABEL_19;
          }

          v19 = *&v4[16 * v8 + 32];
          v13 = *&v4[i + 48];

          v14 = *(&v19 + 1);

          v15 = v12;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_1E37C10D0(v4);
          }

          v16 = &v4[16 * v8];
          v17 = *(v16 + 5);
          *(v16 + 4) = v13;
          *(v16 + 5) = v15;

          if (v9 >= *(v4 + 2))
          {
            goto LABEL_20;
          }

          v18 = *&v4[i + 56];
          *&v4[i + 48] = v19;

          *a1 = v4;
        }

        ++v8;
      }

      ++v9;
    }

    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1E37C0EE8(uint64_t a1, void *a2)
{
  v2 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    if (*(a1 + 16) == v2)
    {
      v4 = 0;
      goto LABEL_7;
    }

    if (*i == a2)
    {
      break;
    }

    ++v2;
  }

  v4 = v2;
LABEL_7:

  return v4;
}

int64_t sub_1E37C0F60(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1E37C1068(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v10 = *(v8 + 16);
  v11 = v10 - a2;
  if (__OFSUB__(v10, a2))
  {
    goto LABEL_21;
  }

  v12 = (v9 + 16 * a2);
  if (v5 != a2 || v12 + 16 * v11 <= v9 + 16 * v5)
  {
    result = memmove((v9 + 16 * v5), v12, 16 * v11);
    v10 = *(v8 + 16);
  }

  v14 = __OFADD__(v10, v7);
  v15 = v10 - v6;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

char *sub_1E37C1068(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 3) >> 1)
  {
    if (*(v5 + 2) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 2);
    }

    result = sub_1E37C0C5C(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void sub_1E37C10E4()
{
  v0 = objc_opt_self();
  v1 = [v0 blackColor];
  v2 = [v1 colorWithAlphaComponent_];

  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent_];

  v5 = [v0 vui:v2 dynamicColorWithLightColor:v4 darkColor:?];
  qword_1ECF71238 = v5;
}

uint64_t *sub_1E37C11CC()
{
  if (qword_1ECF463E0 != -1)
  {
    OUTLINED_FUNCTION_1_61();
  }

  return &qword_1ECF71238;
}

uint64_t sub_1E37C120C()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for ImageLayout();
    sub_1E3BD61D8();
    OUTLINED_FUNCTION_21_13();
    v12 = OUTLINED_FUNCTION_2_28(v4, v5, v6, v7, v8, v9, v10, v11, v16);
    sub_1E41E1A64(v12, v13, v3, v14);

    v1 = v17;
    *(v2 + 104) = v17;
  }

  return v1;
}

uint64_t sub_1E37C12AC()
{
  OUTLINED_FUNCTION_6_17();
  (*(v1 + 1808))(3);
  if (([objc_opt_self() isPad] & 1) == 0)
  {
    (*(*v0 + 312))(0x4084000000000000, 0);
  }

  result = OUTLINED_FUNCTION_15_0();
  if (v0[256] == 1)
  {
    return (*(*v0 + 440))(0x3FE2000000000000, 0);
  }

  return result;
}

uint64_t sub_1E37C1398()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    v11 = OUTLINED_FUNCTION_2_28(v3, v4, v5, v6, v7, v8, v9, v10, v15);
    OUTLINED_FUNCTION_15_30(v11, v12, v13);

    v1 = v16;
    *(v2 + 112) = v16;
  }

  return v1;
}

uint64_t sub_1E37C1430()
{
  OUTLINED_FUNCTION_6_17();
  (*(v1 + 1696))(7);
  LOBYTE(v8) = 10;
  v18 = 11;
  sub_1E3C2FC98();
  v16 = v17;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  v14 = v15;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  v12 = v13;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  v10 = v11;
  sub_1E3C2FCB8(&v8, &v19);
  v8 = v19;
  v9 = v20;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v2 + 1600))(&v8, 54, v3 & 1, &qword_1F5D54AF8);
  v4 = *sub_1E3E5FD88();
  v5 = *(*v0 + 680);
  v6 = v4;
  return v5(v4);
}

uint64_t sub_1E37C15BC()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    v11 = OUTLINED_FUNCTION_2_28(v3, v4, v5, v6, v7, v8, v9, v10, v15);
    OUTLINED_FUNCTION_15_30(v11, v12, v13);

    v1 = v16;
    *(v2 + 120) = v16;
  }

  return v1;
}

uint64_t sub_1E37C1654()
{
  OUTLINED_FUNCTION_6_17();
  (*(v0 + 1696))(19);
  OUTLINED_FUNCTION_36();
  (*(v1 + 1792))(10);
  if (qword_1ECF463E0 != -1)
  {
    OUTLINED_FUNCTION_1_61();
  }

  v2 = qword_1ECF71238;
  OUTLINED_FUNCTION_8();
  v4 = *(v3 + 680);
  v5 = v2;
  return v4(v2);
}

uint64_t sub_1E37C1734()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    v11 = OUTLINED_FUNCTION_2_28(v3, v4, v5, v6, v7, v8, v9, v10, v15);
    OUTLINED_FUNCTION_15_30(v11, v12, v13);

    v1 = v16;
    *(v2 + 128) = v16;
  }

  return v1;
}

uint64_t sub_1E37C17CC()
{
  OUTLINED_FUNCTION_6_17();
  (*(v0 + 1696))(21);
  if (qword_1ECF463E0 != -1)
  {
    OUTLINED_FUNCTION_1_61();
  }

  v1 = qword_1ECF71238;
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 680);
  v4 = v1;
  v3(v1);
  OUTLINED_FUNCTION_36();
  (*(v5 + 1984))(1);
  OUTLINED_FUNCTION_36();
  (*(v6 + 2056))(0, 0);
  sub_1E3952C58();
  v13[0] = v7;
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v10;
  v14 = 0;
  OUTLINED_FUNCTION_8();
  return (*(v11 + 160))(v13);
}

uint64_t sub_1E37C192C()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    v11 = OUTLINED_FUNCTION_2_28(v3, v4, v5, v6, v7, v8, v9, v10, v15);
    OUTLINED_FUNCTION_15_30(v11, v12, v13);

    v1 = v16;
    *(v2 + 136) = v16;
  }

  return v1;
}

uint64_t sub_1E37C19C4()
{
  OUTLINED_FUNCTION_6_17();
  (*(v0 + 1696))(19);
  if (qword_1ECF463E0 != -1)
  {
    OUTLINED_FUNCTION_1_61();
  }

  v1 = qword_1ECF71238;
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 680);
  v4 = v1;
  v3(v1);
  OUTLINED_FUNCTION_36();
  (*(v5 + 1984))(1);
  OUTLINED_FUNCTION_36();
  return (*(v6 + 256))(0x4070600000000000, 0);
}

uint64_t sub_1E37C1AE4()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ViewLayout();
    sub_1E3C2F968();
    OUTLINED_FUNCTION_21_13();
    v11 = OUTLINED_FUNCTION_2_28(v3, v4, v5, v6, v7, v8, v9, v10, v15);
    OUTLINED_FUNCTION_15_30(v11, v12, v13);

    v1 = v16;
    *(v2 + 144) = v16;
  }

  return v1;
}

uint64_t sub_1E37C1B7C()
{
  OUTLINED_FUNCTION_6_17();
  (*(v0 + 1184))(0x403E000000000000, 0);
  v3[0] = xmmword_1E429D530;
  v3[1] = xmmword_1E429D540;
  v4 = 0;
  OUTLINED_FUNCTION_8();
  return (*(v1 + 184))(v3);
}

uint64_t sub_1E37C1C0C()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for ButtonLayout();
    j__OUTLINED_FUNCTION_18();
    sub_1E3B050E8();
    v4 = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_17_20(v4);
    OUTLINED_FUNCTION_21_13();
    v13 = OUTLINED_FUNCTION_2_28(v5, v6, v7, v8, v9, v10, v11, v12, v17);
    sub_1E41E1A64(v13, v14, v3, v15);

    v1 = v18;
    *(v2 + 152) = v18;
  }

  return v1;
}

uint64_t sub_1E37C1CC8(uint64_t a1)
{
  (*(*a1 + 360))(0, 1);
  v2 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  v30 = v32;
  v31 = v33;
  sub_1E3C2FC98();
  v26 = v28;
  v27 = v29;
  sub_1E3C3DE00(v2);
  v22 = v24;
  v23 = v25;
  sub_1E3C3DE00(v2);
  v18 = v20;
  v19 = v21;
  sub_1E3C3DE00(v2);
  v14[12] = v16;
  v15 = v17;
  sub_1E3C2FCB8(&v30, __src);
  memcpy(v14, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_16_17();
  v3();
  __src[0] = sub_1E3952C64();
  __src[1] = v4;
  __src[2] = v5;
  __src[3] = v6;
  LOBYTE(__src[4]) = 0;
  (*(*a1 + 160))(__src);
  OUTLINED_FUNCTION_9_2();
  (*(v7 + 1912))(1);
  OUTLINED_FUNCTION_9_2();
  v9 = *(v8 + 2048);
  v9();
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 2056))(2, 0);

  (v9)(v11);
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 1720))(12);
}

uint64_t sub_1E37C1F98()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for ButtonLayout();
    j__OUTLINED_FUNCTION_18();
    sub_1E3B050E8();
    v4 = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_17_20(v4);
    OUTLINED_FUNCTION_21_13();
    v13 = OUTLINED_FUNCTION_2_28(v5, v6, v7, v8, v9, v10, v11, v12, v17);
    sub_1E41E1A64(v13, v14, v3, v15);

    v1 = v18;
    *(v2 + 160) = v18;
  }

  return v1;
}

void sub_1E37C204C(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  (*(**a1 + 360))(0, 1);
  v4 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  v50 = v52;
  v51 = v53;
  sub_1E3C2FC98();
  v46 = v48;
  v47 = v49;
  sub_1E3C3DE00(v4);
  v42 = v44;
  v43 = v45;
  sub_1E3C3DE00(v4);
  v38 = v40;
  v39 = v41;
  sub_1E3C3DE00(v4);
  __dst[12] = v36;
  v35 = v37;
  sub_1E3C2FCB8(&v50, __src);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_16_17();
  v5();
  __src[0] = sub_1E3952C64();
  __src[1] = v6;
  __src[2] = v7;
  __src[3] = v8;
  LOBYTE(__src[4]) = 0;
  (*(*v3 + 160))(__src);
  OUTLINED_FUNCTION_9_2();
  (*(v9 + 1912))(1);
  OUTLINED_FUNCTION_9_2();
  v11 = *(v10 + 2048);
  v11();
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 2056))(2, 0);

  (v11)(v13);
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 1696))(15);

  (v11)(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 1792))(10);

  (v11)(v17);
  OUTLINED_FUNCTION_2_1();
  (*(v18 + 1720))(12);

  OUTLINED_FUNCTION_15_0();
  if (*(v2 + 256) == 1)
  {
    sub_1E3755B54();
    v19 = objc_opt_self();
    v20 = [v19 blackColor];
    v21 = [v20 colorWithAlphaComponent_];

    v22 = [v19 whiteColor];
    v23 = [v22 colorWithAlphaComponent_];

    v24 = sub_1E3E5F2F8(v21, v23);
    OUTLINED_FUNCTION_9_2();
    v26 = *(v25 + 752);
    v27 = v24;
    v26(v24);
    v28 = [v19 whiteColor];
    v29 = [v19 blackColor];
    v30 = sub_1E3E5F2F8(v28, v29);

    OUTLINED_FUNCTION_9_2();
    (*(v31 + 2096))();
    v52 = v30;
    v32 = v30;
    sub_1E3C2CA00();

    v11();
    OUTLINED_FUNCTION_2_1();
    (*(v33 + 680))(v30);
  }
}

uint64_t sub_1E37C25F0()
{
  if (*(v0 + 232))
  {
    v1 = *(v0 + 232);
  }

  else
  {
    _s20ScoreboardViewLayoutCMa();
    v1 = sub_1E3757A38();
    *(v0 + 232) = v1;
  }

  return v1;
}

uint64_t sub_1E37C2658()
{
  if (*(v0 + 240))
  {
    v1 = *(v0 + 240);
  }

  else
  {
    _s26ScoreAccessoryDetailLayoutCMa();
    v1 = sub_1E37585E0();
    *(v0 + 240) = v1;
  }

  return v1;
}

void sub_1E37C26C0()
{
  type metadata accessor for LayoutGrid();
  sub_1E3A256EC();
  sub_1E3A25980();
}

uint64_t sub_1E37C2734()
{
  type metadata accessor for ViewLayout();
  *(v0 + 168) = OUTLINED_FUNCTION_13_35();
  *(v0 + 176) = sub_1E3952C10(16.0, 8.0);
  *(v0 + 184) = v1;
  *(v0 + 192) = v2;
  *(v0 + 200) = v3;
  OUTLINED_FUNCTION_11_28(xmmword_1E429D550);
  v4 = sub_1E3C2F9A0();

  sub_1E3C2D150();
  sub_1E37C27B0();

  return v4;
}

uint64_t sub_1E37C27B0()
{
  sub_1E3C37CBC(*(v0 + 168), 91);
  v1 = sub_1E37C1C0C();
  sub_1E3C37CBC(v1, 59);

  v2 = sub_1E37C1F98();
  sub_1E3C37CBC(v2, 66);

  v3 = sub_1E37C25F0();
  sub_1E3C37CBC(v3, 234);

  v4 = sub_1E37C120C();
  sub_1E3C37CBC(v4, 35);

  sub_1E3C37CBC(v5, 37);

  v6 = sub_1E37C1398();
  sub_1E3C37CBC(v6, 15);

  v7 = sub_1E37C15BC();
  sub_1E3C37EC8(v7, &unk_1F5D56B68);

  v8 = sub_1E37C192C();
  sub_1E3C37CBC(v8, 17);

  v9 = sub_1E3757238();

  sub_1E3C37CBC(v9, 34);

  v10 = sub_1E37C1734();
  sub_1E3C37CBC(v10, 11);

  v11 = sub_1E37C2658();
  sub_1E3C37CBC(v11, 97);
}

uint64_t sub_1E37C296C(char a1)
{
  type metadata accessor for ViewLayout();
  *(v1 + 168) = OUTLINED_FUNCTION_13_35();
  *(v1 + 176) = sub_1E3952C10(16.0, 8.0);
  *(v1 + 184) = v3;
  *(v1 + 192) = v4;
  *(v1 + 200) = v5;
  OUTLINED_FUNCTION_11_28(xmmword_1E429D550);
  swift_beginAccess();
  *(v1 + 256) = a1;
  v6 = sub_1E3C2F9A0();

  sub_1E3C2D150();
  if (a1)
  {
    v7 = sub_1E37C1AE4();
    v12[0] = xmmword_1E429D540;
    v12[1] = xmmword_1E429D530;
    v13 = 0;
    (*(*v7 + 184))(v12);

    sub_1E37C1C0C();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    (*(v8 + 2352))(1, v9 & 1, 2);

    sub_1E37C1CC8(v10);
  }

  sub_1E37C27B0();

  return v6;
}

void *sub_1E37C2AE4(uint64_t a1, void *a2)
{
  sub_1E3C35CF4(a1, a2);
  result = sub_1E3C2F8E8();
  if (result)
  {
    v3 = result;
    v4 = sub_1E37C1398();
    v5 = [v3 isAXEnabled];
    (*(*v4 + 2056))(v5 ^ 1, v5);

    v6 = sub_1E37C15BC();
    v7 = [v3 isAXEnabled];
    (*(*v6 + 2056))(v7 ^ 1, v7);
  }

  return result;
}

uint64_t sub_1E37C2C00()
{
}

uint64_t sub_1E37C2C78()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E37C2CF8()
{
  v0 = sub_1E37C2C78();

  return MEMORY[0x1EEE6BDC0](v0, 257, 7);
}

uint64_t sub_1E37C2D5C()
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = sub_1E41FFCB4();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[0] = 0;
  v6 = [v0 exportDictionaryAndReturnError_];
  v7 = v37[0];
  if (v6)
  {
    v8 = v6;
    _s3__C3KeyVMa_0();
    sub_1E37C388C(&qword_1ECF2A410);
    v9 = sub_1E4205C64();
    v10 = v7;

    sub_1E37C31D0(*MEMORY[0x1E695F538], v9, v37);

    if (v38)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A418);
      if (swift_dynamicCast())
      {
        v11 = 0;
        v12 = v36;
        v13 = MEMORY[0x1E69E7CC0];
        v36 = MEMORY[0x1E69E7CC0];
        v14 = MEMORY[0x1E695F508];
        v15 = *(v12 + 16);
        while (1)
        {
          while (1)
          {
            if (v15 == v11)
            {

              return v13;
            }

            if (v11 >= *(v12 + 16))
            {
              __break(1u);
            }

            v16 = *(v12 + 8 * v11 + 32);
            if (*(v16 + 16))
            {
              break;
            }

LABEL_15:
            ++v11;
          }

          v17 = *v14;

          v18 = sub_1E37C375C(v17);
          if ((v19 & 1) == 0 || (sub_1E328438C(*(v16 + 56) + 32 * v18, v37), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A0C0), (swift_dynamicCast() & 1) == 0))
          {

            goto LABEL_15;
          }

          v20 = v35;
          sub_1E3280A90(0, &qword_1ECF2A420);
          v21 = sub_1E37C3234(v20);

          if (!v21)
          {
            goto LABEL_15;
          }

          MEMORY[0x1E6910BF0](v22);
          if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E42062F4();
          }

          ++v11;
          sub_1E4206324();
          v13 = v36;
        }
      }
    }

    else
    {
      sub_1E329505C(v37);
    }
  }

  else
  {
    v23 = v37[0];
    v24 = sub_1E41FE274();

    swift_willThrow();
    v25 = sub_1E324FBDC();
    (*(v2 + 16))(v5, v25, v1);
    v26 = v24;
    v27 = sub_1E41FFC94();
    v28 = sub_1E42067F4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37[0] = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v31 = sub_1E4207AB4();
      v33 = sub_1E3270FC8(v31, v32, v37);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1E323F000, v27, v28, "CHHapticPattern:: failed to export dictionary %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1E69143B0](v30, -1, -1);
      MEMORY[0x1E69143B0](v29, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }

  return MEMORY[0x1E69E7CC0];
}

double sub_1E37C31D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1E37C375C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1E328438C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1E37C3234(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  v2 = sub_1E37C375C(*MEMORY[0x1E695F520]);
  if ((v3 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1E328438C(*(a1 + 56) + 32 * v2, &v16);
  if ((OUTLINED_FUNCTION_0_31() & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1E37C31D0(*MEMORY[0x1E695F548], a1, &v16);
  if (!v17)
  {
    goto LABEL_14;
  }

  if ((OUTLINED_FUNCTION_0_31() & 1) == 0)
  {
LABEL_15:

LABEL_11:

    return 0;
  }

  sub_1E37C31D0(*MEMORY[0x1E695F510], a1, &v16);
  if (!v17)
  {
LABEL_14:

    sub_1E329505C(&v16);
    return 0;
  }

  if ((OUTLINED_FUNCTION_0_31() & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_1E37C31D0(*MEMORY[0x1E695F518], a1, &v16);

  v4 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A418);
    result = OUTLINED_FUNCTION_0_31();
    if (result)
    {
      v6 = v15;
      goto LABEL_18;
    }
  }

  else
  {
    result = sub_1E329505C(&v16);
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v8 = 0;
  *&v16 = v4;
  v9 = *(*&v6 + 16);
LABEL_19:
  v10 = v8;
  while (1)
  {
    if (v9 == v10)
    {

      v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v13 = sub_1E4205ED4();

      sub_1E3280A90(0, &qword_1ECF2A428);
      v14 = sub_1E42062A4();

      v7 = [v12 initWithEventType:v13 parameters:v14 relativeTime:v15 duration:v15];

      return v7;
    }

    if (v10 >= *(*&v6 + 16))
    {
      break;
    }

    v8 = v10 + 1;
    sub_1E3280A90(0, &qword_1ECF2A428);

    result = sub_1E37C3534(v11);
    v10 = v8;
    if (result)
    {
      MEMORY[0x1E6910BF0]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      result = sub_1E4206324();
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

id sub_1E37C3534(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_7;
  }

  v2 = sub_1E37C375C(*MEMORY[0x1E695F528]);
  if ((v3 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_1E328438C(*(a1 + 56) + 32 * v2, &v10);
  if ((OUTLINED_FUNCTION_1_62() & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_1E37C31D0(*MEMORY[0x1E695F530], a1, &v10);

  if (!v11)
  {

    sub_1E329505C(&v10);
    return 0;
  }

  if ((OUTLINED_FUNCTION_1_62() & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1E4205ED4();

  LODWORD(v6) = v9;
  v7 = [v4 initWithParameterID:v5 value:v6];

  return v7;
}

uint64_t sub_1E37C3674()
{
  sub_1E37C388C(&qword_1ECF2A410);
  sub_1E37C388C(&qword_1ECF2A448);

  return sub_1E4207764();
}

void _s3__C3KeyVMa_0()
{
  if (!qword_1ECF2A430)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF2A430);
    }
  }
}

unint64_t sub_1E37C375C(uint64_t a1)
{
  sub_1E4205F14();
  sub_1E4207B44();
  sub_1E4206014();
  v2 = sub_1E4207BA4();

  return sub_1E37C38D0(a1, v2);
}

uint64_t sub_1E37C388C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s3__C3KeyVMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E37C38D0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_1E4205F14();
    v7 = v6;
    if (v5 == sub_1E4205F14() && v7 == v8)
    {

      return i;
    }

    v10 = sub_1E42079A4();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_1E37C39C8()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___episodeCount);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___episodeCount + 9) & 1) == 0)
  {
    return *v1;
  }

  result = 0;
  *v1 = 0;
  v1[4] = 1;
  return result;
}

uint64_t sub_1E37C3A00(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___episodeCount;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  *(v3 + 9) = 0;
  return result;
}

uint64_t (*sub_1E37C3A20(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = sub_1E37C39C8();
  *(a1 + 8) = v3 & 1;
  return sub_1E37C3A70;
}

uint64_t sub_1E37C3A70(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16) + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___episodeCount;
  *v2 = *result;
  *(v2 + 8) = v1;
  return result;
}

uint64_t sub_1E37C3A98()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___seasons);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = 0;
    *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___seasons) = 0;
  }

  sub_1E37C3ADC(v1);
  return v2;
}

uint64_t sub_1E37C3ADC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1E37C3AEC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___seasons);
  *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___seasons) = a1;
  return sub_1E37C3B04(v2);
}

uint64_t sub_1E37C3B04(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t (*sub_1E37C3B14(uint64_t *a1))(void *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1E37C3A98();
  return sub_1E37C3B5C;
}

uint64_t sub_1E37C3B5C(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___seasons);
  *(v2 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___seasons) = *a1;
  if (a2)
  {

    sub_1E37C3B04(v3);
  }

  else
  {

    return sub_1E37C3B04(v3);
  }
}

uint64_t sub_1E37C3BD4()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___storeID;
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___storeID + 5) & 1) == 0)
  {
    LODWORD(v9) = *v1;
    v15 = *(v1 + 4) & 1;
    return v9 | (v15 << 32);
  }

  result = (*(*v0 + 184))();
  v4 = v3;
  v5 = HIBYTE(v3) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    v27 = 0;
    goto LABEL_73;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1E37C4D2C(result, v4, 10);

    v27 = v9;
    if ((v9 & 0x100000000) != 0)
    {
      v27 = 0;
      goto LABEL_73;
    }

    v15 = 0;
    goto LABEL_78;
  }

  if ((v4 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1E4207524();
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          LODWORD(v9) = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v11 & v10)
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_5_26();
              if (!v11)
              {
                goto LABEL_70;
              }

              LODWORD(v9) = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_132();
              if (v11)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_70;
      }

      goto LABEL_84;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        LODWORD(v9) = 0;
        if (result)
        {
          while (1)
          {
            v22 = *result - 48;
            if (v22 > 9)
            {
              goto LABEL_70;
            }

            v23 = 10 * v9;
            if (v23 != v23)
            {
              goto LABEL_70;
            }

            LODWORD(v9) = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_70;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_61;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_70:
      LODWORD(v9) = 0;
      v14 = 1;
LABEL_71:
      v26 = v14;

      v27 = v9;
      v15 = v26 & 1;
      if (v26)
      {
        v27 = 0;
LABEL_73:
        LODWORD(v9) = 0;
        v28 = 0x100000000;
        v15 = 1;
LABEL_79:
        *(v1 + 4) = BYTE4(v28);
        *v1 = v28 | v27;
        *(v1 + 5) = 0;
        return v9 | (v15 << 32);
      }

LABEL_78:
      v28 = 0;
      goto LABEL_79;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        LODWORD(v9) = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_4();
            if (!v11 & v10)
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_5_26();
            if (!v11)
            {
              goto LABEL_70;
            }

            LODWORD(v9) = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_132();
            if (v11)
            {
              goto LABEL_71;
            }
          }
        }

LABEL_61:
        v14 = 0;
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v11 & v10)
          {
            break;
          }

          OUTLINED_FUNCTION_5_26();
          if (!v11)
          {
            break;
          }

          LODWORD(v9) = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v11)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    if (v5)
    {
      if (v5 != 1)
      {
        OUTLINED_FUNCTION_8_13();
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v11 & v10)
          {
            break;
          }

          OUTLINED_FUNCTION_5_26();
          if (!v11)
          {
            break;
          }

          LODWORD(v9) = v17 - v16;
          if (__OFSUB__(v17, v16))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v11)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    goto LABEL_83;
  }

  if (v5)
  {
    if (v5 != 1)
    {
      OUTLINED_FUNCTION_8_13();
      while (1)
      {
        OUTLINED_FUNCTION_1_4();
        if (!v11 & v10)
        {
          break;
        }

        OUTLINED_FUNCTION_5_26();
        if (!v11)
        {
          break;
        }

        LODWORD(v9) = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        OUTLINED_FUNCTION_132();
        if (v11)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_70;
  }

LABEL_85:
  __break(1u);
  return result;
}

uint64_t sub_1E37C3ECC(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___storeID;
  *(v2 + 4) = BYTE4(result) & 1;
  *v2 = result;
  *(v2 + 5) = 0;
  return result;
}

uint64_t (*sub_1E37C3EEC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = sub_1E37C3BD4();
  *(a1 + 8) = v3;
  *(a1 + 12) = BYTE4(v3) & 1;
  return sub_1E37C3F3C;
}

uint64_t sub_1E37C3F3C(uint64_t result)
{
  v1 = *(result + 12) != 0;
  v2 = *result + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___storeID;
  *v2 = *(result + 8);
  *(v2 + 4) = v1;
  *(v2 + 5) = 0;
  return result;
}

double sub_1E37C3F74@<D0>(uint64_t a1@<X8>)
{
  sub_1E37C4330(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void sub_1E37C3FB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData;
  v5 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData);
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 8);
  v6 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 16);
  v7 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 24);
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  v9 = *(v3 + 32);
  *(v3 + 32) = v2;
  sub_1E37C52A4(v5, v4, v6, v7, v9);
}

void (*sub_1E37C3FE8(void *a1))(void ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  sub_1E37C4330(v3);
  return sub_1E37C404C;
}

void sub_1E37C404C(void ***a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[5];
  v5 = **a1;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(v3 + 32);
  v10 = &v4[OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData];
  *v10 = v5;
  *(v10 + 1) = v6;
  *(v10 + 2) = v7;
  *(v10 + 3) = v8;
  v10[32] = v9;
  if (a2)
  {
    sub_1E37C5358(v5, v6, v7, v8, v9);
    OUTLINED_FUNCTION_7_38();
    sub_1E37C52B8(*v3, v3[1], v3[2], v3[3], *(v3 + 32));
  }

  else
  {
    OUTLINED_FUNCTION_7_38();
  }

  free(v3);
}

uint64_t sub_1E37C40EC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___representationEpisode;
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___representationEpisode);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_familySharingDict);
    v6 = sub_1E38ADF4C();
    v7 = *v6;
    v8 = v6[1];

    sub_1E3277E60(v7, v8, v5, &v80);

    if (v81)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      OUTLINED_FUNCTION_2_29(v9, v10, v11, v12, v13, v14, v15, v16, v66, v73);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_15;
      }

      sub_1E38ADFA0();
      v17 = OUTLINED_FUNCTION_9_25();
      OUTLINED_FUNCTION_3_28(v17, v18, v19, v20, v21, v22, v23, v24, v67, v74, v80);

      if (v81)
      {
        OUTLINED_FUNCTION_2_29(v25, v26, v27, v28, v29, v30, v31, v32, v68, v75);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_15;
        }

        sub_1E38ADE84();
        v33 = OUTLINED_FUNCTION_9_25();
        OUTLINED_FUNCTION_3_28(v33, v34, v35, v36, v37, v38, v39, v40, v69, v76, v80);

        if (v81)
        {
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
          OUTLINED_FUNCTION_2_29(v41, v42, v43, v41, v44, v45, v46, v47, v70, v77);
          if (swift_dynamicCast())
          {
            if (!*(v78 + 16))
            {
LABEL_18:

              goto LABEL_15;
            }

            sub_1E38ADEA8();
            v48 = OUTLINED_FUNCTION_9_25();
            OUTLINED_FUNCTION_3_28(v48, v49, v50, v51, v52, v53, v54, v55, v71, v78, v80);

            if (v81)
            {
              OUTLINED_FUNCTION_2_29(v56, v57, v58, v59, v60, v61, v62, v63, v72, v79);
              if (swift_dynamicCast())
              {

                type metadata accessor for LibFamilySharingEpisodeMediaEntity();
                v4 = sub_1E3CEF970();
LABEL_16:
                v64 = *(v1 + v2);
                *(v1 + v2) = v4;

                sub_1E3781D80(v64);
                goto LABEL_17;
              }

              goto LABEL_18;
            }

            goto LABEL_14;
          }

LABEL_15:
          v4 = 0;
          goto LABEL_16;
        }
      }
    }

LABEL_14:
    sub_1E325F748(&v80, &unk_1ECF296E0);
    goto LABEL_15;
  }

LABEL_17:
  sub_1E37C5408(v3);
  return v4;
}

uint64_t sub_1E37C4318(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___representationEpisode);
  *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___representationEpisode) = a1;
  return sub_1E3781D80(v2);
}

__n128 sub_1E37C4330@<Q0>(uint64_t a1@<X8>)
{
  v5 = v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData;
  v7 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData);
  v6 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 16);
  v8 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 32);
  v9 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 32);
  v26 = v6;
  v27 = v7;
  if (v8 == 254)
  {
    v24 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData);
    v25 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 16);
    v10 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict);
    if (v10)
    {
      sub_1E38ADF34();
      OUTLINED_FUNCTION_9_25();
      sub_1E3277E60(v2, v3, v10, &v30);

      if (*(&v31 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
        v11 = OUTLINED_FUNCTION_6_32();
        if ((v11 & 1) == 0)
        {
          goto LABEL_10;
        }

        v12 = sub_1E38ADF40();
        v13 = *v12;
        v14 = v12[1];

        sub_1E3277E60(v13, v14, *&v28[0], &v30);

        if (*(&v31 + 1))
        {
          v11 = OUTLINED_FUNCTION_6_32();
          if (v11)
          {
            type metadata accessor for LibFamilySharingBaseMediaEntity();
            sub_1E38AEAB0(*&v28[0], &v30);
            v26 = v31;
            v27 = v30;
            v9 = v32;

LABEL_16:
            v30 = v27;
            v31 = v26;
            v32 = v9;
            v18 = *v5;
            v19 = *(v5 + 8);
            v20 = *(v5 + 16);
            v21 = *(v5 + 24);
            *v5 = v27;
            *(v5 + 16) = v26;
            v22 = *(v5 + 32);
            *(v5 + 32) = v9;
            sub_1E37C5550(&v30, v28);
            sub_1E37C52A4(v18, v19, v20, v21, v22);
            v7 = v24;
            v6 = v25;
            goto LABEL_17;
          }

LABEL_10:
          v15 = (*(*v1 + 584))(v11);
          if (v15)
          {
            v16 = v15;
            v17 = (*(*v15 + 1240))(v28);
            v9 = v29;
            if (v29 == 255)
            {
              (*(*v16 + 312))(&v30, v17);
              v26 = v31;
              v27 = v30;
              v9 = v32;
            }

            else
            {
              v26 = v28[1];
              v27 = v28[0];
            }
          }

          else
          {
            v26 = 0u;
            v27 = 0u;
            v9 = -1;
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
    }

    v11 = sub_1E325F748(&v30, &unk_1ECF296E0);
    goto LABEL_10;
  }

LABEL_17:
  sub_1E37C55C0(v7.n128_u64[0], v7.n128_i64[1], v6, *(&v6 + 1), v8);
  result = v27;
  *a1 = v27;
  *(a1 + 16) = v26;
  *(a1 + 32) = v9;
  return result;
}

uint64_t sub_1E37C4620()
{
  v1 = sub_1E41FFCB4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___episodeCount;
  *v5 = 0;
  *(v5 + 8) = 256;
  *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___seasons) = 1;
  v6 = v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___storeID;
  *(v6 + 4) = 256;
  *v6 = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___representationEpisode) = 1;
  v7 = v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = -2;

  v9 = sub_1E38AFA6C(v8);
  v10 = v9;
  if (!v9)
  {
LABEL_6:

    return v10;
  }

  v11 = *(*v9 + 312);

  v11(v32, v12);
  if (v33 == 255)
  {
  }

  else
  {
    v13 = sub_1E325F748(v32, &qword_1ECF2A450);
    v14 = (*(*v10 + 232))(v13);
    v16 = v15;

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      goto LABEL_6;
    }
  }

  v18 = sub_1E41A3110();
  (*(v2 + 16))(v4, v18, v1);

  v19 = sub_1E41FFC94();
  v20 = sub_1E4206814();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v2;
    v31 = v22;
    v23 = v22;
    *v21 = 136315138;
    v24 = sub_1E4205C74();
    v26 = v25;

    v27 = sub_1E3270FC8(v24, v26, &v31);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_1E323F000, v19, v20, "LibFamilySharingShowMediaEntity::received family sharing bad data %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1E69143B0](v23, -1, -1);
    MEMORY[0x1E69143B0](v21, -1, -1);

    (*(v30 + 8))(v4, v1);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  return 0;
}

void sub_1E37C4994()
{
  sub_1E37C3B04(*(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___seasons));
  sub_1E3781D80(*(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___representationEpisode));
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 8);
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 16);
  v4 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 24);
  v5 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 32);

  sub_1E37C52A4(v1, v2, v3, v4, v5);
}

uint64_t sub_1E37C49F4()
{
  v0 = sub_1E38AFC04();
  sub_1E37C3B04(*(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___seasons));
  sub_1E3781D80(*(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___representationEpisode));
  sub_1E37C52A4(*(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData), *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 8), *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 16), *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 24), *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 32));
  return v0;
}

uint64_t sub_1E37C4A54()
{
  v0 = sub_1E37C49F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1E37C4B78(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 552))();
  return sub_1E37C4BF8;
}

uint64_t sub_1E37C4BFC()
{
  OUTLINED_FUNCTION_5_2();
  v1 = (*(v0 + 560))();
  return v1 | ((HIDWORD(v1) & 1) << 32);
}

void (*sub_1E37C4CAC(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 576))();
  return sub_1E37C55D4;
}

unsigned __int8 *sub_1E37C4D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_1E4206174();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1E378072C();
    v41 = v40;

    v7 = v41;
    if ((v41 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1E4207524();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v23 = v8 - 1;
        if (v8 != 1)
        {
          v24 = a3 + 48;
          v25 = a3 + 55;
          v26 = a3 + 87;
          if (a3 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v14 = 0;
            v27 = result + 1;
            v16 = 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_127;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v14 * a3;
              if (v30 != v30)
              {
                goto LABEL_126;
              }

              v31 = v28 + v29;
              v22 = __OFADD__(v30, v31);
              v14 = v30 + v31;
              if (v22)
              {
                goto LABEL_126;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_46:
            v16 = 0;
            v19 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        v16 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v35 = 0;
          v16 = 1;
          do
          {
            v36 = *result;
            if (v36 < 0x30 || v36 >= v32)
            {
              if (v36 < 0x41 || v36 >= v33)
              {
                v19 = 0;
                if (v36 < 0x61 || v36 >= v34)
                {
                  goto LABEL_127;
                }

                v37 = -87;
              }

              else
              {
                v37 = -55;
              }
            }

            else
            {
              v37 = -48;
            }

            v38 = v35 * a3;
            if (v38 != v38)
            {
              goto LABEL_126;
            }

            v39 = v36 + v37;
            v22 = __OFADD__(v38, v39);
            v35 = v38 + v39;
            if (v22)
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v16 = 0;
          v19 = v35;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v14 * a3;
            if (v20 != v20)
            {
              goto LABEL_126;
            }

            v21 = v17 + v18;
            v22 = __OFSUB__(v20, v21);
            v14 = v20 - v21;
            if (v22)
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
        v16 = 0;
LABEL_127:

        LOBYTE(v70) = v16;
        return (v19 | (v16 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v42 = HIBYTE(v7) & 0xF;
  v70 = v6;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v42)
      {
        v44 = 0;
        v62 = a3 + 48;
        v63 = a3 + 55;
        v64 = a3 + 87;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v64 = 97;
          v63 = 65;
        }

        v65 = &v70;
        v16 = 1;
        while (1)
        {
          v66 = *v65;
          if (v66 < 0x30 || v66 >= v62)
          {
            if (v66 < 0x41 || v66 >= v63)
            {
              v19 = 0;
              if (v66 < 0x61 || v66 >= v64)
              {
                goto LABEL_127;
              }

              v67 = -87;
            }

            else
            {
              v67 = -55;
            }
          }

          else
          {
            v67 = -48;
          }

          v68 = v44 * a3;
          if (v68 != v68)
          {
            goto LABEL_126;
          }

          v69 = v66 + v67;
          v22 = __OFADD__(v68, v69);
          v44 = v68 + v69;
          if (v22)
          {
            goto LABEL_126;
          }

          v65 = (v65 + 1);
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v42)
    {
      v43 = v42 - 1;
      if (v43)
      {
        v44 = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v70 + 1;
        v16 = 1;
        while (1)
        {
          v49 = *v48;
          if (v49 < 0x30 || v49 >= v45)
          {
            if (v49 < 0x41 || v49 >= v46)
            {
              v19 = 0;
              if (v49 < 0x61 || v49 >= v47)
              {
                goto LABEL_127;
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          v51 = v44 * a3;
          if (v51 != v51)
          {
            goto LABEL_126;
          }

          v52 = v49 + v50;
          v22 = __OFSUB__(v51, v52);
          v44 = v51 - v52;
          if (v22)
          {
            goto LABEL_126;
          }

          ++v48;
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v42)
  {
    v53 = v42 - 1;
    if (v53)
    {
      v44 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v70 + 1;
      v16 = 1;
      do
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            v19 = 0;
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_127;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        v60 = v44 * a3;
        if (v60 != v60)
        {
          goto LABEL_126;
        }

        v61 = v58 + v59;
        v22 = __OFADD__(v60, v61);
        v44 = v60 + v61;
        if (v22)
        {
          goto LABEL_126;
        }

        ++v57;
        --v53;
      }

      while (v53);
LABEL_125:
      v16 = 0;
      v19 = v44;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

void sub_1E37C52A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 254)
  {
    sub_1E37C52B8(a1, a2, a3, a4, a5);
  }
}

void sub_1E37C52B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    sub_1E37C52CC(a1, a2, a3, a4, a5);
  }
}

void sub_1E37C52CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {

LABEL_9:

    return;
  }

  if (a5 != 1)
  {
    if (a5)
    {
      return;
    }

    goto LABEL_9;
  }
}

id sub_1E37C5358(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1E37C536C(result, a2, a3, a4, a5);
  }

  return result;
}

id sub_1E37C536C(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
  }

  else
  {
    if (a5 != 1)
    {
      if (a5)
      {
        return result;
      }

      v5 = result;

      result = v5;
    }

    return result;
  }
}

uint64_t sub_1E37C5408(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1E37C5418(uint64_t a1)
{
  result = sub_1E37C5440();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E37C5440()
{
  result = qword_1ECF2A458;
  if (!qword_1ECF2A458)
  {
    type metadata accessor for LibFamilySharingShowMediaEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A458);
  }

  return result;
}

uint64_t type metadata accessor for LibFamilySharingShowMediaEntity()
{
  result = qword_1ECF46770;
  if (!qword_1ECF46770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E37C5550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1E37C55C0(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 254)
  {
    return sub_1E37C5358(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1E37C55D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_viewImpressioner;
  OUTLINED_FUNCTION_11_3();
  sub_1E37C5630(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E37C5630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C970);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_1E37C56A0()
{
  v1 = OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer);
  }

  else
  {
    v4 = v0;
    if (*(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_collectionViewModel))
    {
      OUTLINED_FUNCTION_8();
      v6 = *(v5 + 392);

      v8 = v6(v7);

      if (v8)
      {
        type metadata accessor for CarouselViewLayout();
        if (swift_dynamicCastClass())
        {
          OUTLINED_FUNCTION_26_0();
          (*(v9 + 1704))();
        }
      }
    }

    type metadata accessor for CarouselViewContainer();
    v10 = sub_1E3EE0074();
    v11 = *(v0 + v1);
    *(v4 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

uint64_t sub_1E37C57D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  OUTLINED_FUNCTION_15_0();
  return sub_1E37C5830(v3 + v6, a3, a2);
}

uint64_t sub_1E37C5830(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E37C5898(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_headerViewModel;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_38_2();
  sub_1E37C5830(v5, v6, v7);
  OUTLINED_FUNCTION_11_3();
  sub_1E37C5BDC(a1, v1 + v4);
  swift_endAccess();
  v8 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_headerViewModel;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_38_2();
  sub_1E37C5830(v9, v10, v11);
  OUTLINED_FUNCTION_38_2();
  sub_1E37C5830(v12, v13, v14);
  if (*(&v34 + 1))
  {
    sub_1E37C5830(&v33, v31, &qword_1ECF40720);
    if (*(&v37 + 1))
    {
      v29[0] = v36;
      v29[1] = v37;
      v30 = v38;
      v15 = MEMORY[0x1E6911D60](v31, v29);
      sub_1E375D84C(v29);
      sub_1E375D84C(v31);
      sub_1E325F748(&v33, &qword_1ECF40720);
      if (v15)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_1E375D84C(v31);
  }

  else if (!*(&v37 + 1))
  {
    sub_1E325F748(&v33, &qword_1ECF40720);
    goto LABEL_16;
  }

  sub_1E325F748(&v33, &qword_1ECF2A678);
LABEL_9:
  v16 = sub_1E37C56A0();
  v17 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_headerView;
  OUTLINED_FUNCTION_5_0();
  v18 = *&v16[v17];
  v19 = v18;

  sub_1E37C5830(v2 + v8, &v33, &qword_1ECF40720);
  if (*(&v34 + 1))
  {
    v31[0] = v33;
    v31[1] = v34;
    v32 = v35;
    v20 = *(v2 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer);
    sub_1E374E74C(v31, &v33);
    type metadata accessor for ViewModel();
    if (swift_dynamicCast())
    {
      v21 = v39;
      v22 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v23 = v22;
      v24 = sub_1E393D9C4(v21, v18, &v33, 0);

      sub_1E325F748(&v33, &qword_1ECF296C0);
    }

    else
    {
      v24 = 0;
    }

    sub_1E3EE0008(v24);

    sub_1E375D84C(v31);
  }

  else
  {
    sub_1E325F748(&v33, &qword_1ECF40720);
    v25 = *(v2 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer);
    v26 = OUTLINED_FUNCTION_106();
    sub_1E3EE0008(v26);
  }

  [*(v2 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer) setNeedsLayout];

LABEL_16:
  sub_1E325F748(a1, &qword_1ECF40720);
  return sub_1E325F748(v28, &qword_1ECF40720);
}

uint64_t sub_1E37C5BDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40720);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E37C5C4C()
{
  v0 = sub_1E37C56A0();
  v1 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout;
  OUTLINED_FUNCTION_15_0();
  v2 = *&v0[v1];

  return v2;
}

id sub_1E37C5CA0(uint64_t a1)
{

  v3 = sub_1E37C56A0();
  v4 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout;
  OUTLINED_FUNCTION_5_0();
  v5 = *&v3[v4];

  if (v5 == a1)
  {
  }

  v6 = *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer];
  v7 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout;
  OUTLINED_FUNCTION_3_0();
  *(v6 + v7) = a1;

  result = [v1 view];
  if (result)
  {
    v9 = result;
    [result bounds];
    OUTLINED_FUNCTION_22_13();

    v10 = OUTLINED_FUNCTION_17_4();
    sub_1E37C5D9C(1, v10, v11);
  }

  __break(1u);
  return result;
}

void sub_1E37C5D9C(char a1, double a2, double a3)
{
  v4 = v3;
  if (a2 == 0.0 && a3 == 0.0)
  {
    return;
  }

  v6 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_lastViewWidth;
  v7 = *&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController_lastViewWidth];
  if (v7 != a2 || (a1 & 1) != 0)
  {
    type metadata accessor for LayoutGrid();
    sub_1E3A2579C(a2);
    sub_1E37C5C4C();
    v8 = [v3 traitCollection];
    sub_1E3C2AE10();
    v10 = v9;
    OUTLINED_FUNCTION_36();
    (*(v11 + 1640))();

    v7 = *&v3[v6];
  }

  if (v7 == a2)
  {
    return;
  }

  sub_1E37C5C4C();
  OUTLINED_FUNCTION_26_0();
  (*(v12 + 304))();

  v13 = sub_1E37C56A0();
  v14 = OUTLINED_FUNCTION_17_4();
  v16 = sub_1E3EE0A1C(v14, v15);

  if (!*&v4[OBJC_IVAR____TtC8VideosUI22CarouselViewController_collectionViewModel])
  {
    v50 = 0u;
    v51 = 0u;
    goto LABEL_12;
  }

  v49[0] = 0;
  OUTLINED_FUNCTION_8();
  v18 = *(v17 + 776);

  v18(&v50, v49, &unk_1F5D5D138, &off_1F5D5C778);

  if (!*(&v51 + 1))
  {
LABEL_12:
    sub_1E325F748(&v50, &unk_1ECF296E0);
    goto LABEL_13;
  }

  if (!swift_dynamicCast())
  {
LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  v19 = v49[0];
LABEL_14:
  sub_1E37C5C4C();
  v20 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
  OUTLINED_FUNCTION_5_0();
  v21 = sub_1E3A2BF78(v19, *(*&v4[v20] + 16));

  sub_1E37C5C4C();
  sub_1E3A2C2F8();
  v23 = v22;

  v24 = OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer;
  [OUTLINED_FUNCTION_30_13(*&v4[OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer]) setItemSize_];
  [OUTLINED_FUNCTION_30_13(*&v4[v24]) setInteritemSpacing_];
  *&v4[v6] = a2;
  type metadata accessor for LayoutGrid();
  sub_1E3A2579C(a2);
  v25 = sub_1E37C646C();
  if ((v25 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1E4207344();
    OUTLINED_FUNCTION_106();
    type metadata accessor for ViewModel();
    OUTLINED_FUNCTION_1_17();
    sub_1E32749E0(v26, v27);
    sub_1E4206664();
    v28 = *(&v50 + 1);
    v29 = v50;
    v31 = *(&v51 + 1);
    v30 = v51;
    v32 = v52;
  }

  else
  {
    v33 = -1 << *(v25 + 32);
    v28 = v25 + 56;
    v30 = ~v33;
    v34 = -v33;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v32 = v35 & *(v25 + 56);
    v31 = 0;
  }

  if (v29 < 0)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v36 = v31;
    v37 = v32;
    v38 = v31;
    if (!v32)
    {
      break;
    }

LABEL_25:
    v39 = (v37 - 1) & v37;
    v40 = *(*(v29 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v37)))));

    if (!v40)
    {
LABEL_35:
      sub_1E34AF4DC();

      return;
    }

    while (1)
    {
      if ((*(*v40 + 392))(v41))
      {
        v42 = [v4 view];
        if (!v42)
        {
          goto LABEL_38;
        }

        v43 = v42;
        v44 = [v42 traitCollection];

        sub_1E3C2AE10();
        v46 = v45;
        OUTLINED_FUNCTION_36();
        (*(v47 + 1640))();
      }

      else
      {
      }

      v31 = v38;
      v32 = v39;
      if ((v29 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_27:
      if (sub_1E42073C4())
      {
        type metadata accessor for ViewModel();
        v41 = swift_dynamicCast();
        v40 = v48;
        v38 = v31;
        v39 = v32;
        if (v48)
        {
          continue;
        }
      }

      goto LABEL_35;
    }
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= ((v30 + 64) >> 6))
    {
      goto LABEL_35;
    }

    v37 = *(v28 + 8 * v38);
    ++v36;
    if (v37)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_1E37C6334(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_collectionViewModel);
  *(v1 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_collectionViewModel) = a1;
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_collectionViewModel);

  if (v3)
  {
    v4 = v3 == v2;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    OUTLINED_FUNCTION_8();
    v6 = *(v5 + 392);

    v8 = v6(v7);

    if (v8)
    {
      type metadata accessor for LayoutGrid();
      sub_1E3A256EC();
      v9 = [objc_opt_self() current];
      OUTLINED_FUNCTION_8_21();
      v11 = v10;
      (*(*v8 + 1640))();
    }
  }
}

uint64_t sub_1E37C646C()
{
  v1 = OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___visibleCellViewModels;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___visibleCellViewModels))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___visibleCellViewModels);
  }

  else
  {
    if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
    {
      v2 = sub_1E37CB554(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v2 = MEMORY[0x1E69E7CD0];
    }

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1E37C64F8()
{
  v1 = OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___cellVisibilityMonitor;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___cellVisibilityMonitor))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___cellVisibilityMonitor);
  }

  else
  {
    v3 = v0;
    type metadata accessor for ScrollViewVisibilityMonitor();
    v4 = sub_1E37C56A0();
    v5 = *&v4[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

    v6 = [v5 _collectionView];
    OUTLINED_FUNCTION_51_1();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_21_7();
    v2 = sub_1E414F9CC();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1E37C65D4()
{
  v1 = sub_1E37C56A0();
  [v0 setView_];

  v2 = OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer;
  [OUTLINED_FUNCTION_30_13(*&v0[OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer]) setDelegate_];
  [OUTLINED_FUNCTION_30_13(*&v0[v2]) setDataSource_];
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v0 selector:sel_handleFullscreenPlaybackUIDidChange_ name:VUIPlaybackManagerFullscreenPlaybackUIDidChangeNotification[0] object:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E4297BE0;
  v5 = sub_1E41FFEA4();
  v6 = MEMORY[0x1E69DC0F8];
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0);
  sub_1E4206944();
  swift_unknownObjectRelease();
}

void sub_1E37C6764()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];
    if (v2)
    {
      v3 = v2;
      [v2 bounds];
      OUTLINED_FUNCTION_22_13();

      v4 = OUTLINED_FUNCTION_17_4();
      sub_1E37C5D9C(1, v4, v5);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E37C6834(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a1 & 1);
  v3 = sub_1E37C56A0();
  v4 = *&v3[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

  [v4 setNeedsLayout];
}

id sub_1E37C68FC(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v10, sel_vui_willMoveToParentViewController_, a1);
  v4 = *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor];
  if (a1)
  {
    if (!v4)
    {
      return result;
    }

    OUTLINED_FUNCTION_8();
    v6 = *(v5 + 304);

    v6(v7);
  }

  else
  {
    if (!v4)
    {
      return result;
    }

    OUTLINED_FUNCTION_8();
    v9 = *(v8 + 312);

    v9(0);
  }
}

id sub_1E37C6A40(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v34 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v32 = v12;
  v33 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v36.receiver = v2;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, sel_viewDidAppear_, a1 & 1);
  v16 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor;
  if (*&v2[OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor])
  {
LABEL_8:
    sub_1E37C6EDC();
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v27 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v28 = swift_allocObject();
    *(v28 + 16) = v2;
    aBlock[4] = sub_1E37C715C;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    aBlock[2] = v29;
    aBlock[3] = &block_descriptor_7;
    v30 = _Block_copy(aBlock);
    v31 = v2;

    sub_1E4203FE4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E32749E0(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    sub_1E328FCF4(&qword_1EE23B5D0, &qword_1ECF2A730);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v15, v10, v30);
    _Block_release(v30);

    (*(v34 + 8))(v10, v5);
    return (*(v32 + 8))(v15, v33);
  }

  result = [v2 view];
  if (result)
  {
    v18 = result;
    while (1)
    {
      v19 = v18;
      v18 = [v18 superview];

      if (!v18)
      {
        goto LABEL_8;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_20_2();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for ScrollViewVisibilityMonitor();
        v20 = v18;
        OUTLINED_FUNCTION_51_1();
        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_21_7();
        v21 = sub_1E414F9CC();
        result = [v2 view];
        if (!result)
        {
          goto LABEL_10;
        }

        v22 = result;
        OUTLINED_FUNCTION_4_0();
        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();

        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_36();
        (*(v24 + 288))(v22, v25 & 1, sub_1E37CCE50, v23);

        OUTLINED_FUNCTION_36();
        (*(v26 + 304))();

        *&v2[v16] = v21;

        goto LABEL_8;
      }
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

void sub_1E37C6EDC()
{
  sub_1E37CA928();
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_26_0();
    v6 = (*(v5 + 576))();
    if (v6)
    {
      v7 = v6;
      v8 = v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_viewImpressioner;
      OUTLINED_FUNCTION_5_0();
      if (*(v8 + 24))
      {
        sub_1E327F454(v8, v21);
        v9 = v22;
        v10 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        v11 = [v0 view];
        if (!v11)
        {
          __break(1u);
          goto LABEL_16;
        }

        v12 = v11;
        [v11 frame];
        OUTLINED_FUNCTION_22_13();

        (*(*(v10 + 8) + 24))(v9, 0.0, 0.0, v1, v2);
        __swift_destroy_boxed_opaque_existential_1(v21);
        if (*(v8 + 24))
        {
          sub_1E327F454(v8, v21);
          v13 = v22;
          v14 = v23;
          __swift_project_boxed_opaque_existential_1(v21, v22);
          v15 = [v0 view];
          if (v15)
          {
            v16 = v15;
            (*(v14 + 16))(v15, v7, v13, v14);

            __swift_destroy_boxed_opaque_existential_1(v21);
            if (*(v8 + 24))
            {
              sub_1E327F454(v8, v21);
              v17 = v22;
              v18 = v23;
              __swift_project_boxed_opaque_existential_1(v21, v22);
              v19 = [v0 view];
              if (v19)
              {
                v20 = v19;
                (*(*(v18 + 8) + 56))(v19, v4, v17);

                __swift_destroy_boxed_opaque_existential_1(v21);
                return;
              }

              goto LABEL_17;
            }

            goto LABEL_10;
          }

LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }
      }

LABEL_10:

      return;
    }
  }
}

void sub_1E37C715C()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor))
  {
    OUTLINED_FUNCTION_8();
    v2 = *(v1 + 304);

    v2(v3);
  }
}

void sub_1E37C7230(char a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewWillDisappear_, a1 & 1);
  if (*&v2[OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor])
  {
    OUTLINED_FUNCTION_8();
    v5 = *(v4 + 312);

    v5(0);
  }

  sub_1E37C72D8();
}

void sub_1E37C72D8()
{
  sub_1E37CA928();
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_26_0();
    v4 = (*(v3 + 576))();
    if (v4)
    {
      v5 = v4;
      v6 = v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_viewImpressioner;
      OUTLINED_FUNCTION_5_0();
      if (*(v6 + 24) && (sub_1E327F454(v6, v11), v7 = v12, v8 = v13, __swift_project_boxed_opaque_existential_1(v11, v12), (*(v8 + 24))(v5, v7, v8), __swift_destroy_boxed_opaque_existential_1(v11), *(v6 + 24)))
      {
        sub_1E327F454(v6, v11);
        v9 = v12;
        v10 = v13;
        __swift_project_boxed_opaque_existential_1(v11, v12);
        (*(*(v10 + 8) + 64))(v2, v9);

        __swift_destroy_boxed_opaque_existential_1(v11);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1E37C74A0()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
    OUTLINED_FUNCTION_22_13();

    if (v1 != 0.0 || v2 != 0.0)
    {
      if ((sub_1E39DFFC8() & 1) == 0)
      {
        v5 = sub_1E37C56A0();
        v6 = OUTLINED_FUNCTION_17_4();
        [v7 v8];

        OUTLINED_FUNCTION_20_5();
        [v9 v10];
      }

      v11 = sub_1E37C56A0();
      sub_1E3EE088C();

      v12 = OUTLINED_FUNCTION_17_4();
      sub_1E37C5D9C(0, v12, v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1E37C75FC(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v24.receiver = v3;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  if (*&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor])
  {
    OUTLINED_FUNCTION_8();
    v9 = *(v8 + 312);

    v9(0);
  }

  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  v22 = sub_1E37C77E4;
  v23 = v10;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1E37C7850;
  v21 = &block_descriptor_9_0;
  v11 = _Block_copy(&v18);
  v12 = v4;

  OUTLINED_FUNCTION_4_0();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v22 = sub_1E37C715C;
  v23 = v13;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1E37C7850;
  v21 = &block_descriptor_15;
  v14 = _Block_copy(&v18);
  v15 = v12;

  OUTLINED_FUNCTION_38_2();
  [v16 v17];
  _Block_release(v14);
  _Block_release(v11);
}

void sub_1E37C77E4()
{
  v1 = [*(v0 + 16) view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    OUTLINED_FUNCTION_22_13();

    v3 = OUTLINED_FUNCTION_17_4();
    sub_1E37C5D9C(0, v3, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E37C7850(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

id sub_1E37C7930()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor])
  {

    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_8();
    (*(v3 + 312))(v4 & 1);
  }

  sub_1E37C64F8();
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_8();
  (*(v5 + 312))(v6 & 1);

  v7 = [objc_opt_self() defaultCenter];
  [v7 removeObserver_];

  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

uint64_t sub_1E37C7B40(uint64_t a1, uint64_t a2)
{
  v96[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A4F8);
  sub_1E4148C68(sub_1E37C821C, v3, &v93);
  v4 = v93;

  v6 = sub_1E37C6334(v5);
  v7 = (*(*a1 + 1040))(v6);
  if (!v7)
  {
    return v4;
  }

  v8 = v7;
  result = sub_1E32AE9B0(v7);
  if (!result)
  {
    goto LABEL_16;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1E6911E60](0, v8);
    goto LABEL_6;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);

LABEL_6:

    v12 = (*(*v10 + 872))(v11);
    if (!v12)
    {
      goto LABEL_45;
    }

    v13 = v12;
    if ((*(*a1 + 392))())
    {
      type metadata accessor for CarouselViewLayout();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = v14;
        LOBYTE(v96[0]) = 0;
        v77 = *(*a1 + 776);
        (v77)(&v93, v96, &unk_1F5D5D138, &off_1F5D5C778);
        if (*(&v94 + 1))
        {
          if (swift_dynamicCast())
          {
            v16 = v96[0];
            goto LABEL_19;
          }
        }

        else
        {
          sub_1E325F748(&v93, &unk_1ECF296E0);
        }

        v16 = 0;
LABEL_19:
        v17 = sub_1E37C56A0();
        v18 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_shouldShowPageControl;
        OUTLINED_FUNCTION_3_0();
        v17[v18] = v16;

        v19 = sub_1E37C889C(v13);

        sub_1E37C89F4(v19, 0);

        sub_1E37C5CA0(v15);

        v21 = sub_1E37C6334(v20);
        v22 = (*(*a1 + 968))(v21);
        if (v22)
        {
          LOBYTE(v92) = v22;
          type metadata accessor for ViewModel();
          OUTLINED_FUNCTION_1_17();
          v25 = sub_1E32749E0(v23, v24);
          OUTLINED_FUNCTION_37_11(v25, v26, v25, v27, v28, v29, v30, v31, v77, v80, v83, v86, v89, v90, v91, v92);
          sub_1E4207414();
        }

        else
        {
          v95 = 0;
          v93 = 0u;
          v94 = 0u;
        }

        v32 = v77;
        sub_1E37C5898(&v93);
        v33 = OUTLINED_FUNCTION_17_4();
        sub_1E37C5D9C(0, v33, v34);
        v41 = OUTLINED_FUNCTION_37_11(v35, &unk_1F5D5D138, &off_1F5D5C778, v36, v37, v38, v39, v40, v77, v80, v83, v86, v89, v90, v91, 1);
        v42 = v32(v41);
        if (*(&v94 + 1))
        {
          OUTLINED_FUNCTION_18_13(v42, v43, v44, MEMORY[0x1E69E6370], v45, v46, v47, v48, v78, v81, v84, v87, v89, v90, v91, v92);
          if (swift_dynamicCast())
          {
            if (v92)
            {
              v49 = 0;
            }

            else
            {
              v49 = 2;
            }

LABEL_29:
            v50 = [*(*(v4 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer) + OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView) setScrollMode_];
            v56 = OUTLINED_FUNCTION_37_11(v50, &unk_1F5D5D258, &off_1F5D5C7B8, v51, v52, v53, v54, v55, v78, v81, v84, v87, v89, v90, v91, 4);
            v57 = v32(v56);
            if (*(&v94 + 1))
            {
              OUTLINED_FUNCTION_18_13(v57, v58, v59, MEMORY[0x1E69E63B0], v60, v61, v62, v63, v79, v82, v85, v88, v89, v90, v91, v92);
              if (swift_dynamicCast())
              {
                v64 = v92;
                goto LABEL_34;
              }
            }

            else
            {
              sub_1E325F748(&v93, &unk_1ECF296E0);
            }

            v65 = sub_1E3DE9DF4();
            OUTLINED_FUNCTION_5_0();
            v64 = *v65;
LABEL_34:
            LOBYTE(v89) = 5;
            (v32)(&v93, &v89, &unk_1F5D5D258, &off_1F5D5C7B8);
            if (*(&v94 + 1))
            {
              if (swift_dynamicCast())
              {
                v66 = v89;
                goto LABEL_39;
              }
            }

            else
            {
              sub_1E325F748(&v93, &unk_1ECF296E0);
            }

            v67 = sub_1E3DE9E00();
            OUTLINED_FUNCTION_5_0();
            v66 = *v67;
LABEL_39:
            if (sub_1E373F6E0())
            {
              OUTLINED_FUNCTION_9_26();
              type metadata accessor for FlowcaseViewCell();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v69 = v32;
              v70 = 174;
            }

            else
            {
              if ((sub_1E373F6E0() & 1) == 0)
              {
                if (sub_1E373F6E0())
                {
                  OUTLINED_FUNCTION_9_26();
                  type metadata accessor for FeaturedLockupCell();
                  v74 = swift_getObjCClassFromMetadata();
                  v75 = v32;
                  sub_1E384EE08(167);
                  v76 = sub_1E4205ED4();

                  [v75 registerClass:v74 forCellWithReuseIdentifier:v76];

                  return v4;
                }

                goto LABEL_44;
              }

              OUTLINED_FUNCTION_9_26();
              type metadata accessor for FlowcaseViewCell();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v69 = v32;
              v70 = 175;
            }

            sub_1E384EE08(v70);
            v71 = sub_1E4205ED4();

            [v69 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v71];

            v72 = sub_1E3DE9DF4();
            OUTLINED_FUNCTION_3_0();
            *v72 = v64;
            v73 = sub_1E3DE9E00();
            OUTLINED_FUNCTION_3_0();
            *v73 = v66;
LABEL_44:

LABEL_45:

            return v4;
          }
        }

        else
        {
          sub_1E325F748(&v93, &unk_1ECF296E0);
        }

        v49 = 2;
        goto LABEL_29;
      }
    }

LABEL_16:

    return v4;
  }

  __break(1u);
  return result;
}

id sub_1E37C821C@<X0>(void *a1@<X8>)
{
  type metadata accessor for CarouselViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

id sub_1E37C8258(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v8 = OUTLINED_FUNCTION_28(OBJC_IVAR____TtC8VideosUI22CarouselViewController_viewImpressioner);
  v9 = &v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController_headerViewModel];
  *(v9 + 4) = 0;
  *v9 = v8;
  *(v9 + 1) = v8;
  v10 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_contextMenuInteractor;
  type metadata accessor for ContextMenuInteractor();
  *&v3[v10] = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController_collectionViewModel] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___visibleCellViewModels] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController_lastViewWidth] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController_centeredItemIndex] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___cellVisibilityMonitor] = 0;
  if (a2)
  {
    v11 = sub_1E4205ED4();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, v11, a3);

  return v12;
}

id sub_1E37C83E8(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v4 = OUTLINED_FUNCTION_28(OBJC_IVAR____TtC8VideosUI22CarouselViewController_viewImpressioner);
  v5 = &v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController_headerViewModel];
  *(v5 + 4) = 0;
  *v5 = v4;
  *(v5 + 1) = v4;
  v6 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_contextMenuInteractor;
  type metadata accessor for ContextMenuInteractor();
  *&v1[v6] = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController_collectionViewModel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___visibleCellViewModels] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController_lastViewWidth] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController_centeredItemIndex] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___cellVisibilityMonitor] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_1E37C85D4()
{
  type metadata accessor for CollectionViewModel();
  v0 = swift_dynamicCastClass();
  v1 = v0;
  if (!v0)
  {
    return v1;
  }

  v2 = *(*v0 + 392);

  if (!v2(v3))
  {
LABEL_19:

    return 0;
  }

  type metadata accessor for CarouselViewLayout();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = v4;
  v6 = (*(*v1 + 1040))();
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  result = sub_1E32AE9B0(v6);
  if (!result)
  {
LABEL_17:

    goto LABEL_18;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1E6911E60](0, v7);
    goto LABEL_9;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 32);

LABEL_9:

    v11 = (*(*v9 + 872))(v10);
    if (v11)
    {
      v12 = v11;
      if (sub_1E32AE9B0(v11))
      {

        sub_1E37C6334(v1);

        v13 = sub_1E37C5CA0(v5);
        if ((*(*v1 + 968))(v13))
        {
          type metadata accessor for ViewModel();
          OUTLINED_FUNCTION_1_17();
          sub_1E32749E0(v14, v15);
          sub_1E4207414();
        }

        else
        {
          OUTLINED_FUNCTION_19_9();
        }

        sub_1E37C5898(v17);
        v16 = sub_1E37C889C(v12);

        v1 = 1;
        sub_1E37C89F4(v16, 1);

        return v1;
      }

      goto LABEL_17;
    }

LABEL_18:

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

char *sub_1E37C889C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4207384();
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

  v12 = MEMORY[0x1E69E7CC0];
  result = sub_1E37CB78C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v12;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v5, a1);
      }

      else
      {
      }

      type metadata accessor for ViewModel();
      swift_dynamicCast();
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1E37CB78C((v6 > 1), v7 + 1, 1);
      }

      ++v5;
      *(v12 + 16) = v7 + 1;
      v8 = v12 + 40 * v7;
      *(v8 + 64) = v11;
      *(v8 + 32) = v9;
      *(v8 + 48) = v10;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1E37C89F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
  if ((a2 & 1) == 0)
  {
    OUTLINED_FUNCTION_3_0();

    v52 = sub_1E37CB37C(v51, a1);

    if (v52)
    {
      return;
    }

    *&v3[v5] = a1;

    goto LABEL_28;
  }

  OUTLINED_FUNCTION_3_0();

  v6 = sub_1E41E1E3C();

  *&v3[v5] = a1;

  v7 = *(v6 + 16);

  if (v7)
  {
LABEL_28:
    sub_1E37CAEC0();
    return;
  }

  v8 = *&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController_collectionViewModel];
  if (!v8)
  {
    return;
  }

  LOBYTE(v62[0]) = 30;
  v9 = *(*v8 + 776);

  v9(__src, v62, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!__src[3])
  {

    sub_1E325F748(__src, &unk_1ECF296E0);
    return;
  }

  if (!swift_dynamicCast() || (v62[0] & 1) == 0)
  {
LABEL_25:

    return;
  }

  v10 = sub_1E37C56A0();
  v11 = *&v10[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

  v12 = [v11 visibleCells];
  v13 = sub_1E42062B4();

  v14 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
  OUTLINED_FUNCTION_5_0();
  v56 = v14;
  if (!*(*&v3[v14] + 16) || (v15 = *(v13 + 16)) == 0)
  {
LABEL_24:

    goto LABEL_25;
  }

  v16 = 0;
  v54 = v13;
  v55 = OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer;
  v17 = v13 + 32;
  v53 = *(v13 + 16);
  while (v16 < *(v13 + 16))
  {
    sub_1E328438C(v17, v62);
    v18 = sub_1E3280A90(0, &qword_1EE23B120);
    OUTLINED_FUNCTION_18_13(v18, v19, v20, v21, v22, v23, v24, v25, v53, v54, v55, v56, v57, v58, v59, v60);
    if (swift_dynamicCast())
    {
      v26 = v60;
      v27 = [*(*&v3[v55] + OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView) indexForCell_];
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v61 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A508);
      OUTLINED_FUNCTION_0_32();
      v28 = sub_1E328FCF4(&qword_1EE23B440, &unk_1ECF2A508);
      v35 = OUTLINED_FUNCTION_37_11(v28, v29, v28, v30, v31, v32, v33, v34, v53, v54, v55, v56, v57, v58, v59, v61);
      sub_1E38D2054(v35, v36);
      if (v63)
      {
        type metadata accessor for ViewModel();
        if (swift_dynamicCast())
        {
          v37 = (*(*v60 + 392))();
          if (v37)
          {
            v38 = v37;
            if (![v3 view])
            {
              goto LABEL_33;
            }

            OUTLINED_FUNCTION_106();
            type metadata accessor for LayoutGrid();
            [v60 bounds];
            OUTLINED_FUNCTION_3();

            OUTLINED_FUNCTION_17_4();
            OUTLINED_FUNCTION_20_5();
            Width = CGRectGetWidth(v66);
            sub_1E3A2579C(Width);
            v40 = [v3 traitCollection];
            OUTLINED_FUNCTION_8_21();
            v42 = v41;
            (*(*v38 + 1640))();
          }

          sub_1E37C93F0(__src);
          type metadata accessor for UIFactory();
          v63 = &unk_1F5D869A0;
          v64 = &off_1F5D868A0;
          OUTLINED_FUNCTION_29_7();
          v62[0] = swift_allocObject();
          memcpy((v62[0] + 16), __src, 0x52uLL);

          v43 = v26;
          OUTLINED_FUNCTION_21_7();
          sub_1E38E5240(v44, v45, v46, v47, v48, v18, v49);

          v50 = &qword_1ECF296C0;
LABEL_20:
          sub_1E325F748(v62, v50);
        }

        else
        {
        }

        v15 = v53;
        v13 = v54;
        goto LABEL_23;
      }

      v50 = &qword_1ECF40720;
      goto LABEL_20;
    }

LABEL_23:
    ++v16;
    v17 += 32;
    if (v15 == v16)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_1E37C8F9C(uint64_t a1, char *a2)
{
  v3 = v2;
  result = sub_1E41FE844();
  if (result < 0)
  {
    return result;
  }

  v6 = result;
  v7 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
  result = OUTLINED_FUNCTION_5_0();
  if (v6 >= *(*(v2 + v7) + 16))
  {
    return result;
  }

  v36[0] = a2;
  type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_1_17();
  sub_1E32749E0(v8, v9);

  sub_1E4207414();
  OUTLINED_FUNCTION_11_3();
  i = *(v2 + v7);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v7) = i;
  if ((result & 1) == 0)
  {
LABEL_20:
    result = sub_1E37CB8C4(i);
    i = result;
    *(v3 + v7) = result;
  }

  if (v6 >= *(i + 16))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  sub_1E37CB8D8(__src, i + 40 * v6 + 32);
  *(v3 + v7) = i;
  swift_endAccess();
  v35 = v3;
  v11 = sub_1E37C56A0();
  v12 = *&v11[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

  v13 = [v12 visibleCells];
  v14 = MEMORY[0x1E69E7CA0];
  v3 = sub_1E42062B4();

  v15 = *(v3 + 16);
  if (!v15)
  {
  }

  v33 = a2;
  v34 = v6;
  a2 = 0;
  v7 = OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer;
  for (i = v3 + 32; ; i += 32)
  {
    if (a2 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_1E328438C(i, __src);
    v16 = sub_1E3280A90(0, &qword_1EE23B120);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_11:
    if (v15 == ++a2)
    {
    }
  }

  v6 = v14;
  if ([*(*&v35[v7] + OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView) indexForCell_] != v34)
  {

    goto LABEL_11;
  }

  v17 = *(*v33 + 392);
  v18 = v36[0];
  v19 = v17();
  if (v19)
  {
    v20 = v19;
    result = [v35 view];
    if (!result)
    {
      goto LABEL_22;
    }

    v21 = result;

    type metadata accessor for LayoutGrid();
    [v21 bounds];
    OUTLINED_FUNCTION_3();

    OUTLINED_FUNCTION_17_4();
    OUTLINED_FUNCTION_20_5();
    Width = CGRectGetWidth(v38);
    sub_1E3A2579C(Width);
    v23 = [v35 traitCollection];
    OUTLINED_FUNCTION_8_21();
    v25 = v24;
    (*(*v20 + 1640))();
  }

  else
  {
  }

  sub_1E37C93F0(__src);
  type metadata accessor for UIFactory();
  v36[5] = v18;
  v36[3] = &unk_1F5D869A0;
  v36[4] = &off_1F5D868A0;
  OUTLINED_FUNCTION_29_7();
  v36[0] = swift_allocObject();
  memcpy(v36[0] + 16, __src, 0x52uLL);
  v26 = v18;
  OUTLINED_FUNCTION_21_7();
  sub_1E38E5240(v27, v28, v29, v30, v31, v16, v32);

  return sub_1E325F748(v36, &qword_1ECF296C0);
}

void *sub_1E37C93F0@<X0>(void *a1@<X8>)
{
  sub_1E3DF9E68(__src);
  v3 = sub_1E37C56A0();
  v4 = *&v3[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

  [v4 itemSize];
  v6 = v5;
  v8 = v7;

  __src[0] = v6;
  __src[1] = v8;
  LOBYTE(__src[2]) = 0;
  BYTE1(__src[5]) = 1;
  [*(*(v1 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer) + OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView) itemSize];
  v13[0] = sub_1E3D43D3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF390E0);
  sub_1E4148DE0(sub_1E37CCD5C);

  memcpy(__dst, __src, 0x52uLL);
  memcpy(v13, __src, 0x52uLL);
  sub_1E37CCDA0(__dst, v10);
  sub_1E37CCDFC(v13);
  return memcpy(a1, __dst, 0x52uLL);
}

uint64_t sub_1E37C9558()
{
  v1 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
  OUTLINED_FUNCTION_15_0();
  return *(*(v0 + v1) + 16);
}

uint64_t sub_1E37C95B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
  OUTLINED_FUNCTION_5_0();
  if (a2 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *&v34 = *&v3[v5];
  v37 = a2;
  v38 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A508);
  OUTLINED_FUNCTION_0_32();
  sub_1E328FCF4(v6, &unk_1ECF2A508);
  sub_1E38D2054(&v37, __src);
  if (*&__src[24])
  {
    v32[0] = *__src;
    v32[1] = *&__src[16];
    v33 = *&__src[32];

    sub_1E374E74C(v32, __src);
    type metadata accessor for ViewModel();
    if (!swift_dynamicCast())
    {
      goto LABEL_24;
    }

    v7 = v37;
    v8 = v37;
    v9 = (*(*v37 + 392))();
    if (!v9)
    {
      OUTLINED_FUNCTION_34_14();
      goto LABEL_24;
    }

    v10 = v9;
    if ([v3 view])
    {
      OUTLINED_FUNCTION_106();
      type metadata accessor for LayoutGrid();
      [v8 bounds];
      OUTLINED_FUNCTION_3();

      OUTLINED_FUNCTION_17_4();
      OUTLINED_FUNCTION_20_5();
      Width = CGRectGetWidth(v43);
      sub_1E3A2579C(Width);
      v12 = [v3 traitCollection];
      OUTLINED_FUNCTION_8_21();
      v14 = v13;
      (*(*v10 + 1640))();

      v15 = sub_1E37C56A0();
      v16 = *&v15[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

      sub_1E384EE08(*(v7 + 98));
      v17 = sub_1E4205ED4();

      v18 = [v16 dequeueReusableCellWithReuseIdentifier:v17 forIndex:a2];

      sub_1E4207264();
      swift_unknownObjectRelease();
      v19 = sub_1E3280A90(0, &qword_1EE23B120);
      if (swift_dynamicCast())
      {
        v20 = v37;
      }

      else
      {
        v20 = 0;
      }

      sub_1E37C93F0(__src);
      type metadata accessor for UIFactory();
      v41 = v20;
      v39 = &unk_1F5D869A0;
      v40 = &off_1F5D868A0;
      OUTLINED_FUNCTION_29_7();
      v37 = swift_allocObject();
      memcpy((v37 + 16), __src, 0x52uLL);

      OUTLINED_FUNCTION_21_7();
      sub_1E38E5240(v21, v22, v23, v24, v25, v19, v26);

      sub_1E325F748(&v37, &qword_1ECF296C0);
      if (v20 && (v41 = v20, v27 = v20, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A660), (swift_dynamicCast() & 1) != 0))
      {
        if (*(&v35 + 1))
        {
          sub_1E3251BE8(&v34, &v37);
          v28 = sub_1E37C64F8();
          v29 = v39;
          v30 = v40;
          __swift_mutable_project_boxed_opaque_existential_1(&v37, v39);
          (v30[5])(v28, v29, v30);
          __swift_destroy_boxed_opaque_existential_1(&v37);
          goto LABEL_17;
        }
      }

      else
      {
        v36 = 0;
        v34 = 0u;
        v35 = 0u;
      }

      sub_1E325F748(&v34, &unk_1ECF40740);
      if (v20)
      {

        v27 = v20;
LABEL_18:
        sub_1E375D84C(v32);
        return v27;
      }

      v27 = [objc_allocWithZone(MEMORY[0x1E69DC7F8]) initWithFrame_];
LABEL_17:

      goto LABEL_18;
    }

    goto LABEL_20;
  }

LABEL_21:
  sub_1E325F748(__src, &qword_1ECF40720);

  OUTLINED_FUNCTION_34_14();
LABEL_24:
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

uint64_t sub_1E37C9BA4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
  result = OUTLINED_FUNCTION_5_0();
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v41 = *&v4[v7];
    v39 = a3;
    v40 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A508);
    OUTLINED_FUNCTION_0_32();
    v10 = sub_1E328FCF4(v9, &unk_1ECF2A508);
    OUTLINED_FUNCTION_25_18(v10, v11);
    if (v43)
    {
      v12 = type metadata accessor for ViewModel();
      OUTLINED_FUNCTION_36_11(v12, v13, MEMORY[0x1E69E69B8], v12, v14, v15, v16, v17, v37, v38, v39);
      if (swift_dynamicCast())
      {
        v18 = v39;

        v39 = sub_1E37C646C();
        sub_1E37CB934(v42, v18);

        *&v4[OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___visibleCellViewModels] = v39;
      }
    }

    else
    {
      sub_1E325F748(v42, &qword_1ECF40720);
    }

    v41 = a2;
    sub_1E3280A90(0, &qword_1EE23B120);
    v19 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A518);
    v20 = OUTLINED_FUNCTION_26_16();
    if (v20)
    {
      v28 = OUTLINED_FUNCTION_36_11(v20, v21, v22, v23, v24, v25, v26, v27, v37, v38, v39);
      sub_1E3251BE8(v28, v29);
      v30 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v31 = OUTLINED_FUNCTION_31_4();
      v33 = v32(v31, v30);
      if (v33)
      {
        v34 = v33;
        [v4 addChildViewController_];
        [v34 didMoveToParentViewController_];
        v35 = swift_dynamicCastObjCProtocolConditional();
        if (v35)
        {
          v36 = v35;
          if ([v35 respondsToSelector_])
          {
            [v36 willBeDisplayed];
          }
        }
      }

      return __swift_destroy_boxed_opaque_existential_1(v42);
    }

    else
    {
      OUTLINED_FUNCTION_19_9();
      return sub_1E325F748(&v39, &unk_1ECF2A520);
    }
  }

  return result;
}

uint64_t sub_1E37C9E6C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
  result = OUTLINED_FUNCTION_5_0();
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v39 = *(v4 + v7);
    v37 = a3;
    v38 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A508);
    OUTLINED_FUNCTION_0_32();
    v10 = sub_1E328FCF4(v9, &unk_1ECF2A508);
    OUTLINED_FUNCTION_25_18(v10, v11);
    if (v41)
    {
      v12 = type metadata accessor for ViewModel();
      OUTLINED_FUNCTION_36_11(v12, v13, MEMORY[0x1E69E69B8], v12, v14, v15, v16, v17, v35, v36, v37);
      if (swift_dynamicCast())
      {
        v40[0] = sub_1E37C646C();
        sub_1E37CC6E0();
        OUTLINED_FUNCTION_31_4();

        *(v4 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___visibleCellViewModels) = v40[0];
      }
    }

    else
    {
      sub_1E325F748(v40, &qword_1ECF40720);
    }

    v39 = a2;
    sub_1E3280A90(0, &qword_1EE23B120);
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A518);
    v19 = OUTLINED_FUNCTION_26_16();
    if (v19)
    {
      v27 = OUTLINED_FUNCTION_36_11(v19, v20, v21, v22, v23, v24, v25, v26, v35, v36, v37);
      sub_1E3251BE8(v27, v28);
      v29 = v41;
      v30 = v42;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      v31 = (*(v30 + 8))(v29, v30);
      if (v31)
      {
        v32 = v31;
        [v31 willMoveToParentViewController_];
        [v32 removeFromParentViewController];
        v33 = swift_dynamicCastObjCProtocolConditional();
        if (v33)
        {
          v34 = v33;
          if ([v33 respondsToSelector_])
          {
            [v34 didEndDisplaying];
          }
        }
      }

      return __swift_destroy_boxed_opaque_existential_1(v40);
    }

    else
    {
      OUTLINED_FUNCTION_19_9();
      return sub_1E325F748(&v37, &unk_1ECF2A520);
    }
  }

  return result;
}

void sub_1E37CA124(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E37C56A0();
  v5 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_pageControl;
  OUTLINED_FUNCTION_15_0();
  v6 = *&v4[v5];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6;

  if ((a2 & 0x8000000000000000) == 0)
  {
    [v7 setCurrentPage_];
    v4 = v7;
LABEL_4:

    sub_1E37C72D8();
    *(v2 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_centeredItemIndex) = a2;
    sub_1E37C6EDC();
    return;
  }

  __break(1u);
}

uint64_t sub_1E37CA228()
{
  OUTLINED_FUNCTION_106();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
  result = OUTLINED_FUNCTION_5_0();
  if (v0 < 0)
  {
    __break(1u);
  }

  else
  {
    v33 = *(v0 + v8);
    v31 = v0;
    v32 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A508);
    OUTLINED_FUNCTION_0_32();
    sub_1E328FCF4(v10, &unk_1ECF2A508);
    sub_1E38D2054(&v31, v34);
    if (v35)
    {
      type metadata accessor for ViewModel();
      result = swift_dynamicCast();
      if (result)
      {
        v11 = v31;
        v12 = sub_1E324FBDC();
        (*(v3 + 16))(v7, v12, v1);

        v13 = sub_1E41FFC94();
        v14 = sub_1E42067E4();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v34[0] = v30;
          *v15 = 136315394;
          v16 = ViewModelEvent.description.getter(2);
          v18 = sub_1E3270FC8(v16, v17, v34);

          *(v15 + 4) = v18;
          *(v15 + 12) = 2080;
          v20 = (*(*v11 + 368))(v19);
          v22 = sub_1E3270FC8(v20, v21, v34);

          *(v15 + 14) = v22;
          _os_log_impl(&dword_1E323F000, v13, v14, "FlowcaseViewController::dispatching %s event on viewModel: %s", v15, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E69143B0](v30, -1, -1);
          MEMORY[0x1E69143B0](v15, -1, -1);
        }

        (*(v3 + 8))(v7, v1);
        if ((sub_1E378CB90() & 1) != 0 || (sub_1E378CB90()) && (v23 = v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_viewImpressioner, OUTLINED_FUNCTION_5_0(), *(v23 + 24)))
        {
          sub_1E327F454(v23, v34);
          __swift_project_boxed_opaque_existential_1(v34, v35);
          v24 = OUTLINED_FUNCTION_31_4();
          v26 = v25(v24);
          __swift_destroy_boxed_opaque_existential_1(v34);
        }

        else
        {
          v26 = 0;
        }

        v27 = sub_1E37C56A0();
        v28 = *&v27[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

        v29 = [v28 focusedCell];
        (*(*v11 + 800))(2, v26, v29, 0);
      }
    }

    else
    {
      return sub_1E325F748(v34, &qword_1ECF40720);
    }
  }

  return result;
}

id sub_1E37CA6C0()
{
  v0 = sub_1E37C56A0();
  v1 = *&v0[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

  v2 = [v1 _collectionView];
  return v2;
}

id sub_1E37CA724(uint64_t a1)
{
  v3 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  sub_1E37CA928();
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = sub_1E37C56A0();
  v15 = *&v14[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

  v16 = [v15 focusedCell];
  if (!v16)
  {
LABEL_6:

    return 0;
  }

  v17 = sub_1E37CA6C0();
  v18 = [v17 indexPathForCell_];

  if (!v18)
  {

    goto LABEL_6;
  }

  sub_1E41FE804();

  (*(v5 + 32))(v11, v8, v3);
  v19 = sub_1E37CA6C0();
  v20 = sub_1E3C9C60C(v13, v11, a1, v19, &off_1F5D7CF38, v1, &off_1F5D56E00);

  (*(v5 + 8))(v11, v3);
  return v20;
}

void sub_1E37CA928()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_centeredItemIndex);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
    OUTLINED_FUNCTION_5_0();
    v3 = *(v0 + v2);
    if (v1 < *(v3 + 16))
    {
      sub_1E374E74C(v3 + 40 * v1 + 32, v4);
      type metadata accessor for ViewModel();
      swift_dynamicCast();
    }
  }
}

id sub_1E37CAA38(uint64_t a1, void *a2)
{
  v3 = sub_1E37CA6C0();
  v4 = sub_1E3C9FBDC(a2, v3);

  return v4;
}

void sub_1E37CABA8(uint64_t a1, void *a2, void *a3)
{
  sub_1E3C9EA54();
  if (a3)
  {
    OUTLINED_FUNCTION_4_0();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a2;
    v14 = sub_1E37CC8C8;
    v15 = v6;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v12 = v7;
    v13 = &block_descriptor_25;
    v8 = _Block_copy(&v10);
    v9 = a2;

    [a3 addCompletion_];
    _Block_release(v8);
  }
}

id sub_1E37CAD30()
{
  result = [v0 vuiView];
  if (result)
  {
    v2 = result;
    type metadata accessor for LayoutGrid();
    [v2 bounds];
    OUTLINED_FUNCTION_3();

    OUTLINED_FUNCTION_17_4();
    OUTLINED_FUNCTION_20_5();
    Width = CGRectGetWidth(v4);
    return sub_1E3A2579C(Width);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E37CADB4()
{
  v0 = sub_1E37C56A0();
  v1 = *&v0[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

  [v1 itemSize];
  v3 = v2;

  if (v3 <= 0.0)
  {
    return 0;
  }

  VUIRoundValue();
  return v4;
}

uint64_t sub_1E37CAE58()
{
  swift_getObjectType();

  return OUTLINED_FUNCTION_51_1();
}

id sub_1E37CAEC0()
{
  v1 = v0;
  sub_1E37C646C();

  *(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___visibleCellViewModels) = MEMORY[0x1E69E7CD0];

  v2 = sub_1E37C56A0();
  v3 = *&v2[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

  [v3 reloadData];
  v4 = OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer;
  v5 = *(v1 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer);
  v6 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
  OUTLINED_FUNCTION_15_0();
  v7 = *(*(v1 + v6) + 16);
  v8 = v5;
  sub_1E3EE0704(v7);

  return [*(v1 + v4) setNeedsLayout];
}

void sub_1E37CAF98()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 isFullscreenPlaybackUIBeingShown];

  if (v3)
  {
    if (*&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor])
    {
      OUTLINED_FUNCTION_8();
      v5 = *(v4 + 312);

      v5(0);
    }

    return;
  }

  v6 = [objc_opt_self() currentNavigationController];
  if (!v6)
  {
    return;
  }

  v18 = v6;
  v7 = [v6 childViewControllers];
  sub_1E3280A90(0, &qword_1EE23B250);
  OUTLINED_FUNCTION_20_2();
  v8 = sub_1E42062B4();

  v19 = sub_1E37CB21C(v8);

  if (!v19)
  {
    goto LABEL_18;
  }

  type metadata accessor for DocumentViewController();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x1B0))();
    if (v10)
    {
      v11 = v10;
      v12 = [v1 parentViewController];
      if (v12)
      {
        v13 = v12;

        if (v13 == v11 && *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor])
        {
          OUTLINED_FUNCTION_8();
          v15 = *(v14 + 304);

          v15(v16);
        }
      }

      else
      {
      }

LABEL_18:
      v17 = v18;
      goto LABEL_19;
    }
  }

  v17 = v19;
LABEL_19:
}

char *sub_1E37CB21C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1E34AF4E4((result - 1), (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return MEMORY[0x1E6911E60](v3, a1);
  }

  result = sub_1E4207384();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1E37CB37C(uint64_t a1, uint64_t a2)
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
      do
      {
        sub_1E374E74C(v3, v8);
        sub_1E374E74C(v4, v7);
        v5 = MEMORY[0x1E6911D60](v8, v7);
        sub_1E375D84C(v7);
        sub_1E375D84C(v8);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 40;
        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

char *sub_1E37CB43C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A670);
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
    if (v10 != a4 || &v13[40 * v8] <= v12)
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

uint64_t sub_1E37CB554(unint64_t a1)
{
  v1 = a1;
  if (sub_1E32AE9B0(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A650);
    v2 = sub_1E4207464();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v18 = sub_1E32AE9B0(v1);
  if (v18)
  {
    v3 = 0;
    v4 = v2 + 56;
    v16 = v1;
    v17 = v1 & 0xC000000000000001;
    v15 = v1 + 32;
    while (1)
    {
      sub_1E34AF4E4(v3, v17 == 0, v1);
      if (v17)
      {
        result = MEMORY[0x1E6911E60](v3, v1);
        v6 = result;
      }

      else
      {
        v6 = *(v15 + 8 * v3);
      }

      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      type metadata accessor for ViewModel();
      sub_1E32749E0(qword_1EE23BA70, type metadata accessor for ViewModel);
      result = sub_1E4205DA4();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_1E32749E0(&qword_1EE23BA60, type metadata accessor for ViewModel);
        if (sub_1E4205E84())
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v13 = *(v2 + 16);
      v7 = __OFADD__(v13, 1);
      v14 = v13 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v14;
LABEL_17:
      v1 = v16;
      if (v3 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

char *sub_1E37CB78C(char *a1, int64_t a2, char a3)
{
  result = sub_1E37CB7AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E37CB7AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A670);
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
    if (v10 != a4 || &v13[40 * v8] <= v12)
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

uint64_t sub_1E37CB934(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1E4207394();

    if (v8)
    {

      type metadata accessor for ViewModel();
      swift_dynamicCast();
      result = 0;
      *a1 = v17;
    }

    else
    {
      result = sub_1E4207384();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v13 = sub_1E37CBBC0(v7, result + 1);
        if (*(v13 + 24) <= *(v13 + 16))
        {
          sub_1E37CBDD4();
        }

        sub_1E37CC064(v14, v13);

        *v3 = v13;
LABEL_16:
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    type metadata accessor for ViewModel();
    sub_1E32749E0(qword_1EE23BA70, type metadata accessor for ViewModel);
    v10 = sub_1E4205DA4();
    v11 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v12 = v10 & v11;
      if (((*(v6 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = *v2;

        sub_1E37CC14C(v16, v12, isUniquelyReferenced_nonNull_native);
        *v2 = v18;
        goto LABEL_16;
      }

      sub_1E32749E0(&qword_1EE23BA60, type metadata accessor for ViewModel);
      if (sub_1E4205E84())
      {
        break;
      }

      v10 = v12 + 1;
    }

    *a1 = *(*(v6 + 48) + 8 * v12);

    return 0;
  }

  return result;
}

uint64_t sub_1E37CBBC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A650);
    v2 = sub_1E4207454();
    v14 = v2;
    sub_1E4207344();
    while (1)
    {
      if (!sub_1E42073C4())
      {

        return v2;
      }

      type metadata accessor for ViewModel();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1E37CBDD4();
      }

      v2 = v14;
      sub_1E32749E0(qword_1EE23BA70, type metadata accessor for ViewModel);
      result = sub_1E4205DA4();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1E37CBDD4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A650);
  result = sub_1E4207444();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v25 = v2;
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
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1E373CBF0(0, (v24 + 63) >> 6, v6);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    type metadata accessor for ViewModel();
    sub_1E32749E0(qword_1EE23BA70, type metadata accessor for ViewModel);
    result = sub_1E4205DA4();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    v2 = v25;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1E37CC064(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewModel();
  sub_1E32749E0(qword_1EE23BA70, type metadata accessor for ViewModel);
  sub_1E4205DA4();
  result = sub_1E4207324();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1E37CC14C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1E37CBDD4();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1E37CC46C();
LABEL_10:
      v12 = *v3;
      type metadata accessor for ViewModel();
      sub_1E32749E0(qword_1EE23BA70, type metadata accessor for ViewModel);
      result = sub_1E4205DA4();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_1E32749E0(&qword_1EE23BA60, type metadata accessor for ViewModel);
        if (sub_1E4205E84())
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1E37CC31C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_1E37CC31C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A650);
  v2 = *v0;
  v3 = sub_1E4207434();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_1E37CC46C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A650);
  result = sub_1E4207444();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v2;
    v5 = 0;
    v6 = v2 + 56;
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v25 = (v9 - 1) & v9;
LABEL_12:
        v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
        type metadata accessor for ViewModel();
        sub_1E32749E0(qword_1EE23BA70, type metadata accessor for ViewModel);

        result = sub_1E4205DA4();
        v16 = -1 << *(v4 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v4 + 48) + 8 * v19) = v15;
        ++*(v4 + 16);
        v2 = v24;
        v9 = v25;
        if (!v25)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v25 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E37CC6E0()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) == 0)
  {
    type metadata accessor for ViewModel();
    sub_1E32749E0(qword_1EE23BA70, type metadata accessor for ViewModel);
    v4 = sub_1E4205DA4();
    v5 = ~(-1 << *(v1 + 32));
    while (1)
    {
      v6 = v4 & v5;
      if (((*(v1 + 56 + (((v4 & v5) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v4 & v5)) & 1) == 0)
      {
        break;
      }

      sub_1E32749E0(&qword_1EE23BA60, type metadata accessor for ViewModel);
      if (sub_1E4205E84())
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v8 = *v0;
        v10 = *v0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E37CC31C();
          v8 = v10;
        }

        v3 = *(*(v8 + 48) + 8 * v6);
        sub_1E37CCB2C(v6);
        *v0 = v10;
        return v3;
      }

      v4 = v6 + 1;
    }

    return 0;
  }

  v2 = sub_1E42073D4();

  if ((v2 & 1) == 0)
  {

    return 0;
  }

  v3 = sub_1E37CC958();

  return v3;
}

void sub_1E37CC8C8()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC8VideosUI22CarouselViewController_contextMenuInteractor);
    sub_1E3C9F738();
  }
}

uint64_t sub_1E37CC958()
{

  v1 = sub_1E4207384();
  v2 = swift_unknownObjectRetain();
  v3 = sub_1E37CBBC0(v2, v1);
  v9 = v3;
  type metadata accessor for ViewModel();
  sub_1E32749E0(qword_1EE23BA70, type metadata accessor for ViewModel);

  v4 = sub_1E4205DA4();
  v5 = ~(-1 << *(v3 + 32));
  while (1)
  {
    v6 = v4 & v5;
    if (((*(v3 + 56 + (((v4 & v5) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v4 & v5)) & 1) == 0)
    {
      break;
    }

    sub_1E32749E0(&qword_1EE23BA60, type metadata accessor for ViewModel);
    if (sub_1E4205E84())
    {

      v7 = *(*(v3 + 48) + 8 * v6);
      sub_1E37CCB2C(v6);
      if (sub_1E4205E84())
      {
        *v0 = v9;
        return v7;
      }

      __break(1u);
      break;
    }

    v4 = v6 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E37CCB2C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1E4207304();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      type metadata accessor for ViewModel();
      sub_1E32749E0(qword_1EE23BA70, type metadata accessor for ViewModel);
      do
      {
        v10 = sub_1E4205DA4() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_15:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
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

uint64_t sub_1E37CCD5C(void *a1)
{
  *(*(v1 + 16) + 72) = *a1;
}

uint64_t sub_1E37CCE50(char a1)
{
  OUTLINED_FUNCTION_15_0();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *sub_1E37C64F8();
    if (a1)
    {
      (*(v4 + 304))();
    }

    else
    {
      (*(v4 + 312))(0);
    }
  }

  return result;
}

uint64_t sub_1E37CCF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 1)
  {
    v5 = a5 == 1;
  }

  else
  {
    if (a1 == 2)
    {
      v5 = a5 == 2;
      goto LABEL_5;
    }

    if ((a5 - 1) < 2)
    {
LABEL_9:
      v6 = 0;
      return v6 & 1;
    }

    if (a1)
    {
      if (a5)
      {
        type metadata accessor for CollectionViewModel();
        sub_1E37CE070(&qword_1EE275068, type metadata accessor for CollectionViewModel);

        v6 = sub_1E4205E84();

        return v6 & 1;
      }

      goto LABEL_9;
    }

    v5 = a5 == 0;
  }

LABEL_5:
  v6 = v5;
  return v6 & 1;
}

uint64_t sub_1E37CD020(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_38();
  return sub_1E37CD068(v3, a2);
}

uint64_t sub_1E37CD068(void *a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_identifier);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_contextData;
  *(v2 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_contextData) = 0;
  v7 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_paginator;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
  swift_allocObject();
  *(v2 + v7) = sub_1E4200544();
  v8 = v2 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state;
  *v8 = 1;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_paginationSubscriber) = 0;
  v9 = v2 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_shouldProcessResponse) = 1;
  *(v2 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_childrenUpdateSubscriber) = 0;
  if (a1[3])
  {
    v10 = a1[2];
    v11 = a1[3];
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  OUTLINED_FUNCTION_3_0();
  *v5 = v10;
  v5[1] = v11;

  *(v2 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel) = a1;
  OUTLINED_FUNCTION_3_0();
  *(v2 + v6) = a2;

  v12 = sub_1E3B500B4();
  v13 = *(*a1 + 1192);
  v14 = swift_retain_n();
  v13(v14, &off_1F5D56EA8);
  (*(*a1 + 1216))(v12, &off_1F5D56EC0);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v15 = type metadata accessor for CollectionViewModel();
  if (sub_1E39BD1F0(v15, &off_1F5D96700))
  {
    v16 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_paginationSubscriber;
    OUTLINED_FUNCTION_3_0();
    if (*(v12 + v16))
    {

      sub_1E42004E4();
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    OUTLINED_FUNCTION_4_0();
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1E37D18C8;
    *(v18 + 24) = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
    sub_1E32752B0(&unk_1EE28A130, &unk_1ECF326C0);
    v19 = sub_1E4200844();

    *(v12 + v16) = v19;
  }

  sub_1E37CD3EC();

  return v12;
}

void sub_1E37CD3EC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  type metadata accessor for LibCollectionViewModel();
  OUTLINED_FUNCTION_40_3();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_childrenUpdateSubscriber;
    if (*(v0 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_childrenUpdateSubscriber))
    {

      sub_1E42004E4();
    }

    else
    {
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v12(v8);

    v13 = sub_1E41FFC94();
    v14 = sub_1E4206814();

    if (os_log_type_enabled(v13, v14))
    {
      v24 = v11;
      v15 = OUTLINED_FUNCTION_49_0();
      swift_slowAlloc();
      *v15 = 136315394;
      v16 = sub_1E37CE104();
      OUTLINED_FUNCTION_38_8(v16, v17);
      OUTLINED_FUNCTION_33_12();
      *(v15 + 4) = v2;
      *(v15 + 12) = 2080;
      v18 = sub_1E41E1364(v10);
      OUTLINED_FUNCTION_38_8(v18, v19);
      OUTLINED_FUNCTION_33_12();
      *(v15 + 14) = v2;
      _os_log_impl(&dword_1E323F000, v13, v14, "%s subscribe for children update, collection view model %s", v15, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      v11 = v24;
      OUTLINED_FUNCTION_6_0();
    }

    (*(v4 + 8))(v8, v2);
    OUTLINED_FUNCTION_30_1();
    (*(v20 + 1704))();
    OUTLINED_FUNCTION_4_0();
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1E37D18C0;
    *(v22 + 24) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32570);
    sub_1E32752B0(&qword_1EE28A1B0, &unk_1ECF32570);
    v23 = sub_1E4200844();

    *(v1 + v11) = v23;
  }

  OUTLINED_FUNCTION_25_2();
}