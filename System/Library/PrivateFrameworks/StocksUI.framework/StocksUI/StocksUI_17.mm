void sub_220645660()
{
  v1 = sub_22088C03C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = (v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22088C71C();
  v6 = sub_22088BFCC();

  [v6 contentOffset];
  v8 = v7;

  v9 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_toolbarTitleIsHidden;
  if (v8 <= 0.0 != *(v0 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_toolbarTitleIsHidden))
  {
    swift_getObjectType();
    sub_22088AC1C();
    v11[1] = sub_22088AC0C();
    if (v8 > 0.0)
    {
      *v5 = sub_22088684C();
      v5[1] = v10;
      (*(v2 + 104))(v5, *MEMORY[0x277D6DCB0], v1);
      sub_22088C04C();
      sub_22044444C(&qword_281297A18, MEMORY[0x277D6DCC8]);
      sub_22088BBAC();
      (*(v2 + 8))(v5, v1);
    }

    else
    {
      sub_22088C04C();
      sub_22044444C(&qword_281297A18, MEMORY[0x277D6DCC8]);
      sub_22088BBBC();
    }

    *(v0 + v9) = v8 <= 0.0;
  }
}

id sub_2206459AC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22088CC6C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v33 - v13;
  v34 = v3;
  v15 = a1;
  sub_22088A98C();
  sub_22088A92C();
  v16 = *(v7 + 16);
  v16(v14, a3, v6);
  v17 = *(v7 + 88);
  v18 = v17(v14, v6);
  v19 = *MEMORY[0x277D6E230];
  v20 = *MEMORY[0x277D6E258];
  v21 = *MEMORY[0x277D6E260];
  if (v18 == *MEMORY[0x277D6E230] || v18 == v20 || v18 == v21)
  {
LABEL_21:
    v24 = 1;
    goto LABEL_22;
  }

  if (v18 != *MEMORY[0x277D6E250])
  {
    if (v18 != *MEMORY[0x277D6E268] && v18 != *MEMORY[0x277D6E248] && v18 != *MEMORY[0x277D6E240] && v18 != *MEMORY[0x277D6E238])
    {
      goto LABEL_41;
    }

    goto LABEL_21;
  }

  v24 = 0;
LABEL_22:
  [*(v34 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_overlayView) setHidden_];
  v16(v10, a3, v6);
  v28 = v17(v10, v6);
  if (v28 == v19 || v28 == v20)
  {
    return sub_220641780();
  }

  v30 = v28 == v21 || v28 == *MEMORY[0x277D6E250];
  v31 = v30 || v28 == *MEMORY[0x277D6E268];
  if (v31 || v28 == *MEMORY[0x277D6E248] || v28 == *MEMORY[0x277D6E240] || v28 == *MEMORY[0x277D6E238])
  {
    return sub_220641780();
  }

  sub_2208928AC();
  __break(1u);
LABEL_41:
  result = sub_22089267C();
  __break(1u);
  return result;
}

void sub_220645CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22088C9DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088A91C();
  (*(v5 + 16))(v8, a3, v4);
  if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D6E0A8])
  {
    sub_22088C71C();
    v9 = sub_22088BFCC();

    [v9 setShowsVerticalScrollIndicator_];
  }

  else
  {
    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_220645E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22088B97C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x277D6D980])
  {
    v11 = sub_22088CC6C();
    v12 = MEMORY[0x277D6E218];
    v13 = MEMORY[0x277D6E258];
LABEL_5:
    (*(*(v11 - 8) + 104))(a2, *v13);
    v14 = *v12;
    v15 = sub_22088CC2C();
    return (*(*(v15 - 8) + 104))(a2, v14, v15);
  }

  if (v10 == *MEMORY[0x277D6D978])
  {
    v11 = sub_22088CC0C();
    v12 = MEMORY[0x277D6E1F8];
    v13 = MEMORY[0x277D6E1E8];
    goto LABEL_5;
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

uint64_t sub_220646054()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_styler);
  swift_beginAccess();
  v2 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = *(*v2 + 40);
  v3 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v4);
  (*(*(v3 + 16) + 464))(v4);
  return sub_22088B99C();
}

uint64_t sub_2206460F0@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  swift_getObjectType();
  v23[0] = sub_22088B3CC();
  v1 = *(v23[0] - 8);
  MEMORY[0x28223BE20](v23[0], v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = v23 - v7;
  v9 = sub_22088B3DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v23 - v16;
  if (qword_281298D30 != -1)
  {
    swift_once();
  }

  sub_22044444C(&qword_28128AF20, type metadata accessor for StockFeedViewController);
  sub_220886B3C();
  if (v24 == 1)
  {
    (*(v10 + 104))(v17, *MEMORY[0x277D6D748], v9);
    (*(v1 + 104))(v8, *MEMORY[0x277D6D740], v23[0]);
  }

  else
  {
    sub_220454070(0, &qword_28127E0B0, MEMORY[0x277D6D770], MEMORY[0x277D84560]);
    v19 = sub_22088B3EC();
    v20 = *(v19 - 8);
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_220899360;
    (*(v20 + 104))(v22 + v21, *MEMORY[0x277D6D760], v19);
    sub_220490DA4(v22);
    swift_setDeallocating();
    (*(v20 + 8))(v22 + v21, v19);
    swift_deallocClassInstance();
    (*(v10 + 104))(v13, *MEMORY[0x277D6D750], v9);
    (*(v1 + 104))(v4, *MEMORY[0x277D6D740], v23[0]);
  }

  return sub_22088B40C();
}

uint64_t sub_220646570()
{
  if (qword_281298D30 != -1)
  {
    swift_once();
  }

  sub_22044444C(&qword_28128AF20, type metadata accessor for StockFeedViewController);
  sub_220886B3C();
  return v1;
}

uint64_t sub_220646654@<X0>(void *a1@<X8>)
{
  v3 = (*v1 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_styler);
  swift_beginAccess();
  v4 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v6 = *(*v4 + 40);
  v5 = *(*v4 + 48);
  __swift_project_boxed_opaque_existential_1((*v4 + 16), v6);
  *a1 = (*(*(v5 + 16) + 80))(v6);
  v7 = *MEMORY[0x277D6E6D0];
  v8 = sub_22088D45C();
  return (*(*(v8 - 8) + 104))(a1, v7, v8);
}

uint64_t sub_220646764(uint64_t a1)
{
  v30 = sub_22088CE6C();
  v2 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2208854AC();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v29 - v12;
  v14 = sub_22088B96C();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, a1, v14, v17);
  v20 = (*(v15 + 88))(v19, v14);
  if (v20 == *MEMORY[0x277D6D968])
  {
    sub_22088C71C();
    v21 = sub_22088BFCC();

    v22 = [v21 indexPathsForSelectedItems];

    if (v22)
    {
      v23 = sub_2208916EC();

      if (*(v23 + 16))
      {
        v24 = v29;
        (*(v29 + 16))(v9, v23 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v6);

        (*(v24 + 32))(v13, v9, v6);
        sub_22088C71C();
        v25 = sub_22088BFCC();

        v26 = sub_22088544C();
        [v25 deselectItemAtIndexPath:v26 animated:1];

        (*(v24 + 8))(v13, v6);
      }

      else
      {
      }
    }

    v27 = MEMORY[0x277D6E3C8];
    goto LABEL_9;
  }

  if (v20 == *MEMORY[0x277D6D970])
  {
    v27 = MEMORY[0x277D6E3C0];
LABEL_9:
    (*(v2 + 104))(v5, *v27, v30);
    return sub_22088C74C();
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

void sub_220646B90()
{
  swift_getObjectType();
  sub_22088BBDC();
  sub_220645660();
  sub_220642470();
  sub_2206434EC();
  sub_2206438CC();
  sub_220648714();
  sub_220888FBC();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v0 = sub_220888D9C();
  sub_220888E4C();
}

uint64_t sub_220646C98()
{

  sub_22088BEFC();

  sub_220648EEC();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_22088D7AC();
  swift_unknownObjectRelease();
  sub_220888E7C();

  v0 = sub_220888F8C();

  return v0;
}

uint64_t sub_220646D94()
{
  sub_220454070(0, &unk_28127E970, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v13[-v2];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_delayedTipPresentation;
    if (*(result + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_delayedTipPresentation))
    {

      sub_22089181C();
    }

    v7 = sub_22089180C();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    sub_2208917EC();

    v10 = sub_2208917DC();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v8;

    *&v5[v6] = sub_2206830F8(0, 0, v3, &unk_2208A46E8, v11);
  }

  return result;
}

uint64_t sub_220646FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v5 = sub_22089262C();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v6 = sub_22088685C();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  sub_2208917EC();
  v4[24] = sub_2208917DC();
  v8 = sub_2208917CC();
  v4[25] = v8;
  v4[26] = v7;

  return MEMORY[0x2822009F8](sub_220647110, v8, v7);
}

uint64_t sub_220647110()
{
  if (qword_2812948A0 != -1)
  {
    swift_once();
  }

  v0[27] = qword_2812948A8;
  sub_220648690(0, &qword_28127DE60, &qword_28127DE10, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v0[28] = v1;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_220899920;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = v0[22];
    v4 = v0[23];
    v6 = v0[21];
    v7 = Strong;
    (*(v5 + 16))(v4, Strong + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_stock, v6);

    v8 = sub_22088681C();
    v10 = v9;
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = MEMORY[0x277D837D0];
  *(v2 + 56) = MEMORY[0x277D837D0];
  v12 = sub_22048D860();
  v0[29] = v12;
  *(v2 + 64) = v12;
  if (v10)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0x44455341454C4552;
  }

  v14 = 0xE800000000000000;
  if (v10)
  {
    v14 = v10;
  }

  *(v2 + 32) = v13;
  *(v2 + 40) = v14;
  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = sub_22088677C();
    v19 = v18;

    v20 = (v2 + 72);
    *(v2 + 96) = v11;
    *(v2 + 104) = v12;
    if (v19)
    {
      *v20 = v17;
      goto LABEL_16;
    }
  }

  else
  {
    v20 = (v2 + 72);
    *(v2 + 96) = v11;
    *(v2 + 104) = v12;
  }

  *v20 = 0x44455341454C4552;
  v19 = 0xE800000000000000;
LABEL_16:
  *(v2 + 80) = v19;
  sub_220891AFC();
  sub_22088A7EC();

  sub_22089294C();
  v21 = swift_task_alloc();
  v0[30] = v21;
  *v21 = v0;
  v21[1] = sub_2206473FC;

  return sub_220648848(500000000000000000, 0, 0, 0, 1);
}

uint64_t sub_2206473FC()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  *(*v1 + 248) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 208);
  v7 = *(v2 + 200);
  if (v0)
  {
    v8 = sub_2206476DC;
  }

  else
  {
    v8 = sub_220647594;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_220647594()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 232);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_220899920;
    v5 = sub_22088681C();
    v6 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = v3;
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    v8 = sub_22088677C();
    *(v4 + 96) = v6;
    *(v4 + 104) = v3;
    *(v4 + 72) = v8;
    *(v4 + 80) = v9;
    sub_220891AFC();
    sub_22088A7EC();

    sub_2206429F8();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2206476DC()
{
  v1 = 0x44455341454C4552;

  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_220899920;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v0[29];
  v5 = MEMORY[0x277D837D0];
  if (Strong)
  {
    v7 = v0[22];
    v6 = v0[23];
    v8 = v0[21];
    v9 = Strong;
    (*(v7 + 16))(v6, Strong + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_stock, v8);

    v10 = sub_22088681C();
    v12 = v11;
    (*(v7 + 8))(v6, v8);
    v5 = MEMORY[0x277D837D0];
    *(v2 + 56) = MEMORY[0x277D837D0];
    *(v2 + 64) = v4;
    if (v12)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *(v2 + 56) = MEMORY[0x277D837D0];
    *(v2 + 64) = v4;
  }

  v12 = 0xE800000000000000;
  v10 = 0x44455341454C4552;
LABEL_6:
  *(v2 + 32) = v10;
  *(v2 + 40) = v12;
  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  v14 = v0[29];
  if (v13)
  {
    v15 = v13;
    v16 = sub_22088677C();
    v18 = v17;

    *(v2 + 96) = v5;
    *(v2 + 104) = v14;
    if (v18)
    {
      v1 = v16;
      goto LABEL_11;
    }
  }

  else
  {
    *(v2 + 96) = v5;
    *(v2 + 104) = v14;
  }

  v18 = 0xE800000000000000;
LABEL_11:
  v19 = v0[31];
  *(v2 + 72) = v1;
  *(v2 + 80) = v18;
  sub_220891AFC();
  sub_22088A7EC();

  v20 = v0[1];

  return v20();
}

uint64_t sub_220647904(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_stockFeedViewerTitleDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_220647954()
{
  sub_22088C71C();
  v0 = sub_22088BFCC();

  return v0;
}

uint64_t sub_22064799C(void *a1, char *a2)
{
  v3 = v2;
  v117 = a2;
  v118 = a1;
  v116 = sub_22088990C();
  v109 = *(v116 - 8);
  v4 = *(v109 + 64);
  MEMORY[0x28223BE20](v116, v5);
  v107 = v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v115 = v100 - v8;
  v111 = sub_220889A6C();
  v108 = *(v111 - 8);
  v9 = *(v108 + 64);
  MEMORY[0x28223BE20](v111, v10);
  v110 = v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v114 = v100 - v13;
  sub_220454070(0, qword_2812906B8, type metadata accessor for StockEarningsModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = v100 - v16;
  v18 = type metadata accessor for StockEarningsModel();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v113 = v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = v100 - v24;
  v26 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_earnings;
  swift_beginAccess();
  sub_2204B2868(v3 + v26, v17, qword_2812906B8, type metadata accessor for StockEarningsModel);
  v27 = *(v19 + 48);
  v112 = v18;
  if (v27(v17, 1, v18) == 1)
  {
    return sub_2204B3A24(v17, qword_2812906B8, type metadata accessor for StockEarningsModel);
  }

  sub_22064A10C(v17, v25);
  v29 = *(v3 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_earningsCalendarManager);
  v30 = *(v3 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_earningsCalendarManager + 8);
  ObjectType = swift_getObjectType();
  v32 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_stock;
  v105 = ObjectType;
  v106 = v29;
  sub_22088654C();
  v34 = v33;
  v35 = v25;
  v36 = v3;
  if (v33)
  {

    v37 = v118;
    if (v117 != 2)
    {
      if (v117 != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v37 = v118;
    if (v117 == 1)
    {
LABEL_11:
      v50 = [v37 event];
      if (v50)
      {
        v51 = v50;
        v102 = v30;
        v117 = v25;
        v52 = *(v36 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_eventHandler);
        v103 = v52;
        v104 = v34;
        if (v34)
        {
          __swift_project_boxed_opaque_existential_1((v52 + 88), *(v52 + 112));
          v53 = off_283424CF8;
          v54 = type metadata accessor for StockFeedTracker();
          v53(v54, &off_283424C98);
        }

        else
        {
          v71 = v108;
          v72 = v114;
          v73 = v111;
          (*(v108 + 104))(v114, *MEMORY[0x277D689A0], v111);
          v74 = *MEMORY[0x277D68898];
          v101 = v51;
          v75 = v109;
          v76 = v115;
          (*(v109 + 104))(v115, v74, v116);
          v100[1] = *(*__swift_project_boxed_opaque_existential_1((v52 + 88), *(v52 + 112)) + 16);
          (*(v71 + 16))(v110, v72, v73);
          v77 = v107;
          v78 = v76;
          v79 = v116;
          (*(v75 + 16))(v107, v78, v116);
          v80 = (*(v71 + 80) + 16) & ~*(v71 + 80);
          v81 = (v9 + *(v75 + 80) + v80) & ~*(v75 + 80);
          v82 = swift_allocObject();
          v83 = v111;
          (*(v71 + 32))(v82 + v80, v110, v111);
          (*(v75 + 32))(v82 + v81, v77, v79);
          sub_22088726C();

          (*(v75 + 8))(v115, v79);
          v51 = v101;
          (*(v71 + 8))(v114, v83);
          v37 = v118;
          type metadata accessor for Localized();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v85 = [objc_opt_self() bundleForClass_];
          sub_220884CAC();

          v86 = sub_22089132C();

          MEMORY[0x223D8ADB0](v86);
        }

        v87 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_newlyAddedEventToCalendar;
        *(v36 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_newlyAddedEventToCalendar) = (v104 == 0) | *(v36 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_newlyAddedEventToCalendar) & 1;
        v88 = [v51 eventIdentifier];
        v35 = v117;
        v89 = v36;
        v90 = v112;
        if (v88)
        {
          v91 = v88;
          sub_22089136C();

          sub_22088652C();
        }

        v92 = sub_22088685C();
        v93 = v113;
        (*(*(v92 - 8) + 16))(v113, v89 + v32, v92);
        v94 = v90[5];
        v95 = sub_22088516C();
        (*(*(v95 - 8) + 16))(v93 + v94, v35 + v94, v95);
        sub_2204B2868(v35 + v90[6], v93 + v90[6], &qword_281299480, MEMORY[0x277CC9578]);
        v96 = v90[7];
        v97 = sub_22088543C();
        (*(*(v97 - 8) + 16))(v93 + v96, v35 + v96, v97);
        *(v93 + v90[8]) = *(v89 + v87);
        *(v93 + v90[9]) = 1;
        v98 = *(v103 + 40);
        v99 = swift_getObjectType();
        (*(v98 + 128))(v93, v99, v98);

        sub_22064A74C(v93, type metadata accessor for StockEarningsModel);
        goto LABEL_20;
      }

      if (v34)
      {
        goto LABEL_10;
      }

LABEL_15:
      v55 = *(v36 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_eventHandler);
      v56 = v108;
      v57 = v114;
      v58 = v111;
      (*(v108 + 104))(v114, *MEMORY[0x277D689A0], v111);
      v59 = v109;
      v60 = v115;
      (*(v109 + 104))(v115, *MEMORY[0x277D68890], v116);
      v113 = *(*__swift_project_boxed_opaque_existential_1((v55 + 88), *(v55 + 112)) + 16);
      v61 = v110;
      v62 = v58;
      (*(v56 + 16))(v110, v57, v58);
      v63 = *(v59 + 16);
      v117 = v35;
      v64 = v107;
      v65 = v60;
      v66 = v116;
      v63(v107, v65, v116);
      v67 = (*(v56 + 80) + 16) & ~*(v56 + 80);
      v68 = (v9 + *(v59 + 80) + v67) & ~*(v59 + 80);
      v69 = swift_allocObject();
      (*(v56 + 32))(v69 + v67, v61, v62);
      v70 = v64;
      v35 = v117;
      (*(v59 + 32))(v69 + v68, v70, v66);
      sub_22088726C();

      (*(v59 + 8))(v115, v66);
      (*(v56 + 8))(v114, v62);
      v37 = v118;
      goto LABEL_20;
    }

    if (v117 != 2)
    {
      goto LABEL_15;
    }
  }

  v38 = v34;
  sub_22088653C();
  v39 = sub_22088685C();
  v40 = v113;
  (*(*(v39 - 8) + 16))(v113, v36 + v32, v39);
  v41 = v112;
  v42 = v112[5];
  v43 = sub_22088516C();
  (*(*(v43 - 8) + 16))(v40 + v42, v35 + v42, v43);
  sub_2204B2868(v35 + v41[6], v40 + v41[6], &qword_281299480, MEMORY[0x277CC9578]);
  v44 = v41[7];
  v45 = sub_22088543C();
  (*(*(v45 - 8) + 16))(v40 + v44, v35 + v44, v45);
  *(v40 + v41[8]) = 0;
  *(v40 + v41[9]) = 2;
  v46 = *(*(v36 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_eventHandler) + 40);
  v47 = swift_getObjectType();
  (*(v46 + 128))(v40, v47, v46);
  sub_22064A74C(v40, type metadata accessor for StockEarningsModel);
  if (!v38)
  {
    goto LABEL_15;
  }

LABEL_10:
  __swift_project_boxed_opaque_existential_1((*(v36 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_eventHandler) + 88), *(*(v36 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_eventHandler) + 112));
  v48 = off_283424CF8;
  v49 = type metadata accessor for StockFeedTracker();
  v48(v49, &off_283424C98);
LABEL_20:
  [v37 dismissViewControllerAnimated:1 completion:0];
  return sub_22064A74C(v35, type metadata accessor for StockEarningsModel);
}

void sub_220648690(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2204446D4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_220648714()
{
  if (!qword_28127DDE8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127DDE8);
    }
  }
}

uint64_t sub_220648794(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2204C6018;

  return sub_220646FC0(a1, v4, v5, v6);
}

uint64_t sub_220648848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_22089261C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_220648948, 0, 0);
}

uint64_t sub_220648948()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_22089262C();
  v5 = sub_22044444C(&qword_28127E398, MEMORY[0x277D85928]);
  sub_22089292C();
  sub_22044444C(&qword_28127E3A0, MEMORY[0x277D858F8]);
  sub_22089263C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_220648AD8;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_220648AD8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_220648C94, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_220648C94()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_220648D00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor();
    v8[1] = type metadata accessor for StockFeedModel();
    v8[2] = sub_22044444C(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
    v8[3] = sub_22064865C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_220648DC4()
{
  result = qword_281297CB0;
  if (!qword_281297CB0)
  {
    sub_220648D00(255, &unk_281297CA0, MEMORY[0x277D6D8B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281297CB0);
  }

  return result;
}

void sub_220648E38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_220648EEC()
{
  if (!qword_2812986B8)
  {
    v0 = sub_220888F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812986B8);
    }
  }
}

id sub_220648F44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22088CC6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v33[-v11];
  sub_22088A93C();
  v13 = *(v5 + 16);
  v13(v12, a1, v4);
  v14 = *(v5 + 88);
  v15 = (v14)(v12, v4);
  v16 = *MEMORY[0x277D6E230];
  v17 = *MEMORY[0x277D6E258];
  v18 = v15 == *MEMORY[0x277D6E230] || v15 == v17;
  v36 = v2;
  if (v18)
  {
    v35 = v8;
    sub_22088C71C();
    v19 = v17;
    v20 = sub_22088BFCC();
    v8 = v35;

    [v20 setShowsVerticalScrollIndicator_];

    v17 = v19;
    v21 = *MEMORY[0x277D6E260];
  }

  else
  {
    v21 = *MEMORY[0x277D6E260];
    if (v15 != *MEMORY[0x277D6E260] && v15 != *MEMORY[0x277D6E250])
    {
      if (v15 == *MEMORY[0x277D6E268] || v15 == *MEMORY[0x277D6E248] || v15 == *MEMORY[0x277D6E240])
      {
        goto LABEL_20;
      }

      if (v15 != *MEMORY[0x277D6E238])
      {
        goto LABEL_36;
      }
    }

    v35 = v14;
    sub_22088C71C();
    v25 = sub_22088BFCC();
    v34 = v17;
    v26 = v25;
    v14 = v35;

    [v26 setShowsVerticalScrollIndicator_];

    v17 = v34;
  }

LABEL_20:
  v13(v8, a1, v4);
  v27 = (v14)(v8, v4);
  if (v27 == v16 || v27 == v17 || v27 == v21)
  {
    v30 = 1;
    v31 = v36;
    return [*(v31 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_overlayView) setHidden_];
  }

  v31 = v36;
  if (v27 == *MEMORY[0x277D6E250])
  {
    v30 = 0;
    return [*(v31 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_overlayView) setHidden_];
  }

  v30 = 1;
  if (v27 == *MEMORY[0x277D6E268] || v27 == *MEMORY[0x277D6E248] || v27 == *MEMORY[0x277D6E240] || v27 == *MEMORY[0x277D6E238])
  {
    return [*(v31 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_overlayView) setHidden_];
  }

LABEL_36:
  result = sub_22089267C();
  __break(1u);
  return result;
}

uint64_t sub_220649320(uint64_t a1)
{
  v2 = MEMORY[0x277D69178];
  v3 = MEMORY[0x277D83D88];
  sub_220454070(0, &qword_281299370, MEMORY[0x277D69178], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v23 - v6;
  sub_220454070(0, &qword_2812994E0, MEMORY[0x277CC9260], v3);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v23 - v10;
  v12 = sub_220884E9C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B2868(a1, v7, &qword_281299370, v2);
  v17 = sub_2208855EC();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    sub_2204B3A24(v7, &qword_281299370, MEMORY[0x277D69178]);
    (*(v13 + 56))(v11, 1, 1, v12);
    return sub_2204B3A24(v11, &qword_2812994E0, MEMORY[0x277CC9260]);
  }

  sub_22088550C();
  (*(v18 + 8))(v7, v17);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_2204B3A24(v11, &qword_2812994E0, MEMORY[0x277CC9260]);
  }

  (*(v13 + 32))(v16, v11, v12);
  v20 = [objc_opt_self() sharedApplication];
  v21 = sub_220884E3C();
  sub_2205CE854(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_22044444C(&qword_27CF57590, type metadata accessor for OpenExternalURLOptionsKey);
  v22 = sub_22089125C();

  [v20 openURL:v21 options:v22 completionHandler:0];

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_2206496E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277D83D88];
  sub_220454070(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v28 - v9;
  v11 = sub_220884E9C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454070(0, qword_2812906B8, type metadata accessor for StockEarningsModel, v6);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v28 - v18;
  sub_220649AF0(a1, v28 - v18);
  v20 = type metadata accessor for StockEarningsModel();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  v21 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_earnings;
  swift_beginAccess();
  sub_220649B54(v19, v3 + v21);
  swift_endAccess();
  if (a3)
  {
    v28[1] = 0;
    v28[2] = 0xE000000000000000;
    MEMORY[0x223D89680](0x3A776F68736C6163, 0xE800000000000000);
    sub_220884EDC();
    sub_22089186C();
    sub_220884E8C();

    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      return sub_2204B3A24(v10, &qword_2812994E0, MEMORY[0x277CC9260]);
    }

    else
    {
      (*(v12 + 32))(v15, v10, v11);
      v25 = [objc_opt_self() sharedApplication];
      v26 = sub_220884E3C();
      sub_2205CE854(MEMORY[0x277D84F90]);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_22044444C(&qword_27CF57590, type metadata accessor for OpenExternalURLOptionsKey);
      v27 = sub_22089125C();

      [v25 openURL:v26 options:v27 completionHandler:0];

      return (*(v12 + 8))(v15, v11);
    }
  }

  else
  {
    v23 = *(*(v3 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    return (*(v23 + 104))(a1, ObjectType, v23);
  }
}

uint64_t sub_220649AF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockEarningsModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220649B54(uint64_t a1, uint64_t a2)
{
  sub_220454070(0, qword_2812906B8, type metadata accessor for StockEarningsModel, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_220649BE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x277CC9AF8];
  sub_220454070(0, &qword_2812993D0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v19 - v9;
  sub_22088C71C();
  v11 = sub_22088BFCC();

  v12 = sub_220891BEC();

  sub_22088C71C();
  v13 = sub_22088BFCC();

  v14 = sub_2208854AC();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v10, a2, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  sub_220891BDC();

  sub_2204B3A24(v10, &qword_2812993D0, v6);
  v16 = *(v3 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_eventHandler);
  v17 = v16[5];
  ObjectType = swift_getObjectType();
  v20 = 0;
  (*(v17 + 80))(a1, 1, &v20, ObjectType, v17);
  __swift_project_boxed_opaque_existential_1(v16 + 11, v16[14]);
  sub_22081C0C8(a1);
}

uint64_t sub_220649E68(uint64_t a1, void (*a2)(void))
{
  __swift_project_boxed_opaque_existential_1((*(v2 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_eventHandler) + 48), *(*(v2 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_eventHandler) + 72));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    a2();
    sub_22088E0CC();
    swift_allocObject();
    sub_22088E07C();
    swift_allocObject();
    swift_weakInit();

    sub_22088E0AC();

    sub_22088E08C();
  }

  return result;
}

unint64_t sub_220649F94()
{
  result = qword_27CF58028;
  if (!qword_27CF58028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58028);
  }

  return result;
}

unint64_t sub_220649FF0()
{
  result = qword_27CF58030;
  if (!qword_27CF58030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58030);
  }

  return result;
}

uint64_t sub_22064A04C()
{
  v1 = *(*(*(v0 + 16) + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v1 + 48))(ObjectType, v1);
}

uint64_t sub_22064A09C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_220648690(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_22064A10C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockEarningsModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_39Tm()
{
  v1 = sub_220889A6C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_22088990C();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

void sub_22064A2BC()
{
  v1 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_statusBarView;
  *(v0 + v1) = [objc_allocWithZone(sub_22088AEDC()) initWithFrame_];
  v2 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_stockFeedTitleView;
  *(v0 + v2) = [objc_allocWithZone(sub_22088A8DC()) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_overlayView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for StockFeedViewOverlayView()) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_toolbarTitleIsHidden) = 1;
  *(v0 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_watchState) = 2;
  *(v0 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_delayedTipPresentation) = 0;
  v4 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_latestQuote;
  v5 = sub_22088676C();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_newlyAddedEventToCalendar) = 0;
  v6 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_earnings;
  v7 = type metadata accessor for StockEarningsModel();
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_stockFeedViewerTitleDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_22089267C();
  __break(1u);
}

uint64_t sub_22064A494()
{
  v0 = sub_22088CC6C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220891C4C();
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  swift_getObjectType();
  v7 = sub_22088D03C();
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  if ((sub_220891C7C() & 1) == 0)
  {

LABEL_9:
    return 0;
  }

  sub_22088D02C();
  v9 = (*(v1 + 88))(v4, v0);
  if (v9 == *MEMORY[0x277D6E230] || v9 == *MEMORY[0x277D6E258])
  {

    return 1;
  }

  if (v9 != *MEMORY[0x277D6E260] && v9 != *MEMORY[0x277D6E250] && v9 != *MEMORY[0x277D6E268] && v9 != *MEMORY[0x277D6E248] && v9 != *MEMORY[0x277D6E240] && v9 != *MEMORY[0x277D6E238])
  {
    result = sub_22089267C();
    __break(1u);
    return result;
  }

  return 0;
}

void sub_22064A6E0(double a1)
{
  v2 = sub_22088A8BC();
  [v2 setAlpha_];
}

uint64_t sub_22064A74C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22064A7BC(uint64_t a1, double a2, double a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  LOBYTE(a1) = sub_220640E34(a1, a2, a3);

  return a1 & 1;
}

uint64_t Settings.PPT.ExtendedLaunchTarget.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_22089270C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t Settings.PPT.ExtendedLaunchTarget.rawValue.getter()
{
  if (*v0)
  {
    return 0x756F59726F66;
  }

  else
  {
    return 0x73694C6B636F7473;
  }
}

uint64_t sub_22064A8C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x756F59726F66;
  }

  else
  {
    v3 = 0x73694C6B636F7473;
  }

  if (v2)
  {
    v4 = 0xE900000000000074;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x756F59726F66;
  }

  else
  {
    v5 = 0x73694C6B636F7473;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE900000000000074;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2208928BC();
  }

  return v8 & 1;
}

uint64_t sub_22064A970()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_22064A9F4()
{
  sub_22089146C();
}

uint64_t sub_22064AA64()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_22064AAE4@<X0>(char *a1@<X8>)
{
  v2 = sub_22089270C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_22064AB44(uint64_t a1)
{
  v2 = sub_22046F4F0();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A30](a1, v2, v3);
}

uint64_t sub_22064AB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22046F4F0();
  v5 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A28](a1, a2, v4, v5);
}

uint64_t static Settings.PPT.extendedLaunchTarget.getter()
{
  if (qword_27CF55900 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22064ACF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = sub_220886D4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2204A5DF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v12 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v13 = v12;
  if ([a3 horizontalSizeClass] >= 3)
  {
    result = sub_22089267C();
    __break(1u);
  }

  else
  {
    v14 = sub_22044D56C(0, &qword_28127E570);
    sub_22089002C();
    (*(v7 + 104))(v10, *MEMORY[0x277D6D198], v6);
    sub_22089001C();
    (*(v7 + 8))(v10, v6);
    v15 = sub_220891F2C();
    v16 = sub_220891F4C();

    v17 = MEMORY[0x277D740C0];
    *(inited + 40) = v16;
    v18 = *v17;
    *(inited + 64) = v14;
    *(inited + 72) = v18;
    v19 = v4[5];
    v20 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v19);
    v21 = *(v20 + 16);
    v22 = *(v21 + 40);
    v23 = v18;
    v24 = v22(v19, v21);
    *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
    *(inited + 80) = v24;
    sub_2204A5EAC(inited);
    swift_setDeallocating();
    sub_2204A5D84();
    swift_arrayDestroy();
    v25 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v26 = sub_22089132C();
    type metadata accessor for Key(0);
    sub_2204A63B8();
    v27 = sub_22089125C();

    v28 = [v25 initWithString:v26 attributes:v27];

    return v28;
  }

  return result;
}

uint64_t sub_22064B06C(uint64_t a1, uint64_t a2)
{
  sub_2204479E4(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v31 = *(v5 - 8);
  v6 = *(v31 + 8);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v13, v13);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + 16);
  *v15 = a1;
  v15[1] = a2;
  swift_storeEnumTagMultiPayload();
  v17 = sub_22088969C();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v37 = v16;
  sub_22064D288(v38, &v33, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  v32 = a2;
  if (*(&v34 + 1))
  {
    sub_220458198(&v33, v35);
    sub_2204A80F4(a1);
    sub_2204A80F4(a1);
    v18 = sub_220597454(v35);
    v20 = v19;
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    sub_2204A80F4(a1);
    sub_2204A80F4(a1);
    sub_22064D300(&v33, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v18 = qword_2812908F8;
    v20 = qword_281290900;
    v22 = qword_281290908;

    sub_2204A80F4(v20);
  }

  v34 = 0u;
  v33 = 0u;
  sub_22064D288(v12, v8, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_2204479E4);
  sub_22064D288(v40, v35, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  v23 = (v31[80] + 24) & ~v31[80];
  v24 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = v12;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  sub_2205A0994(v8, v25 + v23);
  v26 = v25 + v24;
  v27 = v35[1];
  *v26 = v35[0];
  *(v26 + 16) = v27;
  *(v26 + 32) = v36;
  v28 = (v25 + ((v24 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v28 = v18;
  v28[1] = v20;
  v28[2] = v22;

  sub_2204A80F4(v20);
  sub_2204549FC();
  sub_2204489A0(&unk_281297EC0, sub_2204549FC);
  sub_22088E92C();

  sub_2204DA45C(v20);
  sub_2204DA45C(a1);
  sub_22064D300(v38, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_22064D300(v40, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_22064D300(v31, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_2204479E4);
  sub_220610278(v15, type metadata accessor for StocksActivity);
  return sub_22064D300(&v33, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
}

uint64_t sub_22064B7D8(uint64_t a1)
{
  sub_2204479E4(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v29[-v10];
  v12 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v12, v12);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v1 + 16);
  *v14 = a1;
  v14[40] = 0;
  swift_storeEnumTagMultiPayload();
  v16 = sub_22088969C();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = v15;
  sub_22064D288(v35, &v30, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  if (*(&v31 + 1))
  {
    sub_220458198(&v30, v32);

    v17 = sub_220597454(v32);
    v19 = v18;
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {

    sub_22064D300(&v30, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v17 = qword_2812908F8;
    v19 = qword_281290900;
    v21 = qword_281290908;

    sub_2204A80F4(v19);
  }

  v31 = 0u;
  v30 = 0u;
  sub_22064D288(v11, v7, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_2204479E4);
  sub_22064D288(v37, v32, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  v22 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v23 = (v5 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  sub_2205A0994(v7, v24 + v22);
  v25 = v24 + v23;
  v26 = v32[1];
  *v25 = v32[0];
  *(v25 + 16) = v26;
  *(v25 + 32) = v33;
  v27 = (v24 + ((v23 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v27 = v17;
  v27[1] = v19;
  v27[2] = v21;

  sub_2204A80F4(v19);
  sub_2204549FC();
  sub_2204489A0(&unk_281297EC0, sub_2204549FC);
  sub_22088E92C();

  sub_2204DA45C(v19);
  sub_22064D300(v35, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_22064D300(v37, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_22064D300(v11, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_2204479E4);
  sub_220610278(v14, type metadata accessor for StocksActivity);
  return sub_22064D300(&v30, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
}

uint64_t sub_22064BEE0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v104 = a3;
  v103 = a2;
  v102 = type metadata accessor for PreBuyFlowRouteModel();
  MEMORY[0x28223BE20](v102, v6);
  v111 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_2204479E4(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v115 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v106 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v117 = &v99 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v99 = &v99 - v17;
  v116 = v18;
  MEMORY[0x28223BE20](v19, v20);
  v109 = &v99 - v21;
  v112 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v112, v22);
  v110 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v100 = &v99 - v26;
  sub_2204479E4(0, &qword_2812994E0, MEMORY[0x277CC9260], v8);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v101 = (&v99 - v29);
  v108 = sub_220884E9C();
  v114 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v30);
  v107 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2208861DC();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v99 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_220885ACC();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v39);
  v41 = &v99 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a1;
  v42 = sub_220891BAC();
  v43 = v4;
  v44 = *(v4 + 48);
  v113 = v43;
  __swift_project_boxed_opaque_existential_1((v43 + 24), v44);
  sub_22088641C();
  sub_2208858DC();
  (*(v38 + 8))(v41, v37);
  v45 = sub_2208861CC();
  (*(v33 + 8))(v36, v32);
  if ((v42 & 1) == 0 || (v45 & 1) == 0)
  {
    v54 = v102;
    v55 = *(v102 + 20);
    v56 = sub_22088A1EC();
    v57 = v111;
    (*(*(v56 - 8) + 16))(&v111[v55], v103, v56);
    v58 = *(v54 + 24);
    v59 = sub_22088A2FC();
    (*(*(v59 - 8) + 16))(&v57[v58], v104, v59);
    v60 = v105;
    *v57 = v105;
    v61 = *(v113 + 16);
    v62 = v110;
    sub_220610210(v57, v110, type metadata accessor for PreBuyFlowRouteModel);
    swift_storeEnumTagMultiPayload();
    v63 = sub_22088969C();
    v64 = v117;
    (*(*(v63 - 8) + 56))(v117, 1, 1, v63);
    v129 = 0;
    v127 = 0u;
    v128 = 0u;
    v126 = 0;
    v124 = 0u;
    v125 = 0u;
    v123 = v61;
    sub_22064D288(&v124, &v118, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (*(&v119 + 1))
    {
      sub_220458198(&v118, &v120);
      v65 = v60;
      v66 = sub_220597454(&v120);
      v68 = v67;
      v70 = v69;
      __swift_destroy_boxed_opaque_existential_1(&v120);
    }

    else
    {
      v83 = v60;
      sub_22064D300(&v118, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
      if (qword_2812908F0 != -1)
      {
        swift_once();
      }

      v66 = qword_2812908F8;
      v68 = qword_281290900;
      v70 = qword_281290908;

      sub_2204A80F4(v68);
    }

    v119 = 0u;
    v118 = 0u;
    v84 = v106;
    sub_22064D288(v64, v106, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_2204479E4);
    sub_22064D288(&v127, &v120, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    v85 = (*(v115 + 80) + 24) & ~*(v115 + 80);
    v86 = (v116 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
    v87 = swift_allocObject();
    *(v87 + 16) = 0;
    sub_2205A0994(v84, v87 + v85);
    v88 = v87 + v86;
    v89 = v121;
    *v88 = v120;
    *(v88 + 16) = v89;
    *(v88 + 32) = v122;
    v90 = (v87 + ((v86 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v90 = v66;
    v90[1] = v68;
    v90[2] = v70;

    sub_2204A80F4(v68);
    sub_2204549FC();
    sub_2204489A0(&unk_281297EC0, sub_2204549FC);
    sub_22088E92C();

    sub_2204DA45C(v68);
    sub_22064D300(&v124, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_22064D300(&v127, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_22064D300(v117, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_2204479E4);
    sub_220610278(v62, type metadata accessor for StocksActivity);
    sub_220610278(v57, type metadata accessor for PreBuyFlowRouteModel);
    goto LABEL_17;
  }

  v46 = v101;
  sub_220884E8C();
  v47 = v114;
  v48 = v108;
  if ((*(v114 + 48))(v46, 1, v108) != 1)
  {
    v71 = v107;
    (*(v47 + 32))(v107, v46, v48);
    v72 = *(v113 + 16);
    sub_22061013C();
    v74 = *(v73 + 48);
    v75 = v100;
    (*(v47 + 16))(v100, v71, v48);
    *(v75 + v74) = 0;
    swift_storeEnumTagMultiPayload();
    v76 = sub_22088969C();
    v77 = v109;
    (*(*(v76 - 8) + 56))(v109, 1, 1, v76);
    v129 = 0;
    v127 = 0u;
    v128 = 0u;
    v126 = 0;
    v124 = 0u;
    v125 = 0u;
    v123 = v72;
    sub_22064D288(&v124, &v118, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (*(&v119 + 1))
    {
      sub_220458198(&v118, &v120);
      v78 = sub_220597454(&v120);
      v80 = v79;
      v82 = v81;
      __swift_destroy_boxed_opaque_existential_1(&v120);
    }

    else
    {
      sub_22064D300(&v118, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
      if (qword_2812908F0 != -1)
      {
        swift_once();
      }

      v78 = qword_2812908F8;
      v80 = qword_281290900;
      v82 = qword_281290908;

      sub_2204A80F4(v80);
    }

    v119 = 0u;
    v118 = 0u;
    v91 = v99;
    sub_22064D288(v77, v99, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_2204479E4);
    sub_22064D288(&v127, &v120, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    v92 = (*(v115 + 80) + 24) & ~*(v115 + 80);
    v93 = (v116 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
    v94 = swift_allocObject();
    *(v94 + 16) = 0;
    sub_2205A0994(v91, v94 + v92);
    v95 = v94 + v93;
    v96 = v121;
    *v95 = v120;
    *(v95 + 16) = v96;
    *(v95 + 32) = v122;
    v97 = (v94 + ((v93 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v97 = v78;
    v97[1] = v80;
    v97[2] = v82;

    sub_2204A80F4(v80);
    sub_2204549FC();
    sub_2204489A0(&unk_281297EC0, sub_2204549FC);
    sub_22088E92C();

    sub_2204DA45C(v80);
    sub_22064D300(&v124, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_22064D300(&v127, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_22064D300(v109, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_2204479E4);
    sub_220610278(v75, type metadata accessor for StocksActivity);
    (*(v114 + 8))(v107, v48);
LABEL_17:
    v49 = &qword_28127DE00;
    v51 = MEMORY[0x277D83D88];
    v52 = sub_2205A0AE4;
    v53 = &v118;
    v50 = MEMORY[0x277D84F70] + 8;
    return sub_22064D300(v53, v49, v50, v51, v52);
  }

  v49 = &qword_2812994E0;
  v50 = MEMORY[0x277CC9260];
  v51 = MEMORY[0x277D83D88];
  v52 = sub_2204479E4;
  v53 = v46;
  return sub_22064D300(v53, v49, v50, v51, v52);
}

uint64_t sub_22064D288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_22064D300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_22064D360(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v90 = a8;
  v91 = a7;
  v93 = a4;
  v89 = a3;
  sub_2204479E4(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v94 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v96 = &v81[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = v14;
  MEMORY[0x28223BE20](v15, v16);
  v100 = &v81[-v17];
  v88 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v88, v18);
  v97 = &v81[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = sub_220887FAC();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v20);
  v83 = &v81[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for CampaignRouteModel();
  MEMORY[0x28223BE20](v22, v23);
  v87 = &v81[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_22088A57C();
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v81[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29, v30);
  v32 = *MEMORY[0x277D352E0];
  v101 = v33;
  v34 = *(v33 + 104);
  v98 = &v81[-v35];
  v82 = v32;
  v99 = v36;
  v34(v31);
  if (a6)
  {
    sub_2204479E4(0, &qword_27CF56DD8, MEMORY[0x277D34E10], MEMORY[0x277D84560]);
    v37 = a2;
    v38 = *(sub_22088A20C() - 8);
    v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_220899360;
    v84 = v40;
    v41 = v40 + v39;
    *v41 = a5;
    *(v41 + 8) = a6;
    *(v41 + 32) = 0u;
    *(v41 + 48) = 0u;
    *(v41 + 16) = 0u;
    (*(v38 + 104))();
    a2 = v37;
  }

  else
  {
    v84 = MEMORY[0x277D84F90];
  }

  v42 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v42 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {
  }

  else
  {
    a1 = 0;
    a2 = 0;
  }

  v43 = v99;
  v44 = v101;
  v45 = v87;
  v46 = v83;
  (*(v101 + 16))(v28, v98, v99);
  v47 = (*(v44 + 88))(v28, v43);
  if (v47 == *MEMORY[0x277D352D8])
  {
    (*(v44 + 96))(v28, v43);
    *v46 = *v28;
    v48 = *MEMORY[0x277D301F0];
    v49 = sub_220887F9C();
    (*(*(v49 - 8) + 104))(v46, v48, v49);

    v50 = v97;
  }

  else
  {
    v51 = v47;
    v52 = a1;
    v53 = a2;
    v54 = *MEMORY[0x277D301F8];
    v55 = sub_220887F9C();
    (*(*(v55 - 8) + 104))(v46, v54, v55);
    if (v51 == v82)
    {
    }

    else
    {
      v56 = *(v101 + 8);

      v56(v28, v43);
    }

    a2 = v53;
    a1 = v52;
    v50 = v97;
  }

  v57 = v85;
  v58 = v86;
  (*(v85 + 104))(v46, *MEMORY[0x277D30200], v86);
  v59 = v22[10];
  v60 = sub_22088A47C();
  (*(*(v60 - 8) + 56))(&v45[v59], 1, 1, v60);
  v61 = &v45[v22[11]];
  *(v61 + 1) = 0;
  swift_unknownObjectWeakInit();
  *v45 = a1;
  *(v45 + 1) = a2;
  (*(v57 + 32))(&v45[v22[5]], v46, v58);
  v62 = &v45[v22[6]];
  v63 = v93;
  *v62 = v89;
  *(v62 + 1) = v63;
  v64 = &v45[v22[7]];
  *v64 = 0;
  *(v64 + 1) = 0;
  *&v45[v22[8]] = v84;
  *&v45[v22[9]] = 0;
  *(v61 + 1) = v90;
  swift_unknownObjectWeakAssign();
  v65 = *(v92 + 16);
  sub_220610210(v45, v50, type metadata accessor for CampaignRouteModel);
  swift_storeEnumTagMultiPayload();
  v66 = sub_22088969C();
  v67 = v100;
  (*(*(v66 - 8) + 56))(v100, 1, 1, v66);
  v110 = 0;
  memset(v109, 0, sizeof(v109));
  v108 = 0;
  memset(v107, 0, sizeof(v107));
  v106 = v65;
  sub_22064D288(v107, &v102, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  if (*(&v103 + 1))
  {
    sub_220458198(&v102, v104);

    v68 = sub_220597454(v104);
    v70 = v69;
    v72 = v71;
    __swift_destroy_boxed_opaque_existential_1(v104);
  }

  else
  {

    sub_22064D300(&v102, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v68 = qword_2812908F8;
    v70 = qword_281290900;
    v72 = qword_281290908;

    sub_2204A80F4(v70);
  }

  v103 = 0u;
  v102 = 0u;
  v73 = v96;
  sub_22064D288(v67, v96, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_2204479E4);
  sub_22064D288(v109, v104, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  v74 = (*(v94 + 80) + 24) & ~*(v94 + 80);
  v75 = (v95 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  *(v76 + 16) = 0;
  sub_2205A0994(v73, v76 + v74);
  v77 = v76 + v75;
  v78 = v104[1];
  *v77 = v104[0];
  *(v77 + 16) = v78;
  *(v77 + 32) = v105;
  v79 = (v76 + ((v75 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v79 = v68;
  v79[1] = v70;
  v79[2] = v72;

  sub_2204A80F4(v70);
  sub_2204549FC();
  sub_2204489A0(&unk_281297EC0, sub_2204549FC);
  sub_22088E92C();

  sub_2204DA45C(v70);
  sub_22064D300(v107, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_22064D300(v109, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_22064D300(v100, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_2204479E4);
  sub_220610278(v50, type metadata accessor for StocksActivity);
  sub_220610278(v45, type metadata accessor for CampaignRouteModel);
  (*(v101 + 8))(v98, v99);
  return sub_22064D300(&v102, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
}

uint64_t sub_22064E14C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v84 = a8;
  v78 = a7;
  v86 = a4;
  v83 = a3;
  sub_2204479E4(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v87 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v89 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v15;
  MEMORY[0x28223BE20](v16, v17);
  v92 = &v74 - v18;
  v81 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v81, v19);
  v90 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_22088A57C();
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v21);
  v23 = (&v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = sub_220887FAC();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v24);
  v91 = (&v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for CampaignRouteModel();
  MEMORY[0x28223BE20](v26, v27);
  v82 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6)
  {
    sub_2204479E4(0, &qword_27CF56DD8, MEMORY[0x277D34E10], MEMORY[0x277D84560]);
    v29 = *(sub_22088A20C() - 8);
    v30 = a2;
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_220899360;
    v76 = v32;
    v33 = v32 + v31;
    a2 = v30;
    *v33 = a5;
    *(v33 + 8) = a6;
    *(v33 + 32) = 0u;
    *(v33 + 48) = 0u;
    *(v33 + 16) = 0u;
    (*(v29 + 104))();
  }

  else
  {
    v76 = MEMORY[0x277D84F90];
  }

  v34 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v34 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
  }

  else
  {
    a1 = 0;
    a2 = 0;
  }

  v35 = v92;
  v36 = v82;
  v37 = v77;
  v38 = v75;
  v82 = a9;
  (*(v75 + 16))(v23, v78, v77);
  v39 = (*(v38 + 88))(v23, v37);
  if (v39 == *MEMORY[0x277D352D8])
  {
    (*(v38 + 96))(v23, v37);
    v40 = v91;
    *v91 = *v23;
    v41 = *MEMORY[0x277D301F0];
    v42 = sub_220887F9C();
    (*(*(v42 - 8) + 104))(v40, v41, v42);

    v43 = v90;
  }

  else
  {
    v44 = v39;
    v78 = a1;
    v45 = a2;
    v46 = *MEMORY[0x277D352E0];
    v47 = *MEMORY[0x277D301F8];
    v48 = sub_220887F9C();
    (*(*(v48 - 8) + 104))(v91, v47, v48);
    if (v44 == v46)
    {
    }

    else
    {
      v49 = *(v38 + 8);

      v49(v23, v37);
    }

    v43 = v90;
    v35 = v92;
    a2 = v45;
    a1 = v78;
    v40 = v91;
  }

  v50 = v79;
  v51 = v80;
  (*(v79 + 104))(v40, *MEMORY[0x277D30200], v80);
  v52 = v26[10];
  v53 = sub_22088A47C();
  (*(*(v53 - 8) + 56))(&v36[v52], 1, 1, v53);
  v54 = &v36[v26[11]];
  *(v54 + 1) = 0;
  swift_unknownObjectWeakInit();
  *v36 = a1;
  *(v36 + 1) = a2;
  (*(v50 + 32))(&v36[v26[5]], v40, v51);
  v55 = &v36[v26[6]];
  v56 = v86;
  *v55 = v83;
  *(v55 + 1) = v56;
  v57 = &v36[v26[7]];
  *v57 = 0;
  *(v57 + 1) = 0;
  *&v36[v26[8]] = v76;
  *&v36[v26[9]] = 0;
  *(v54 + 1) = v82;
  swift_unknownObjectWeakAssign();
  v58 = *(v85 + 16);
  sub_220610210(v36, v43, type metadata accessor for CampaignRouteModel);
  swift_storeEnumTagMultiPayload();
  v59 = sub_22088969C();
  (*(*(v59 - 8) + 56))(v35, 1, 1, v59);
  v101 = 0;
  memset(v100, 0, sizeof(v100));
  v99 = 0;
  memset(v98, 0, sizeof(v98));
  v97 = v58;
  sub_22064D288(v98, &v93, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  if (*(&v94 + 1))
  {
    sub_220458198(&v93, v95);

    v60 = sub_220597454(v95);
    v62 = v61;
    v64 = v63;
    __swift_destroy_boxed_opaque_existential_1(v95);
  }

  else
  {

    sub_22064D300(&v93, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v60 = qword_2812908F8;
    v62 = qword_281290900;
    v64 = qword_281290908;

    sub_2204A80F4(v62);
  }

  v94 = 0u;
  v93 = 0u;
  v65 = v35;
  v66 = v89;
  sub_22064D288(v65, v89, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_2204479E4);
  sub_22064D288(v100, v95, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  v67 = (*(v87 + 80) + 24) & ~*(v87 + 80);
  v68 = (v88 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  *(v69 + 16) = 0;
  sub_2205A0994(v66, v69 + v67);
  v70 = v69 + v68;
  v71 = v95[1];
  *v70 = v95[0];
  *(v70 + 16) = v71;
  *(v70 + 32) = v96;
  v72 = (v69 + ((v68 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v72 = v60;
  v72[1] = v62;
  v72[2] = v64;

  sub_2204A80F4(v62);
  sub_2204549FC();
  sub_2204489A0(&unk_281297EC0, sub_2204549FC);
  sub_22088E92C();

  sub_2204DA45C(v62);
  sub_22064D300(v98, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_22064D300(v100, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_22064D300(v92, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_2204479E4);
  sub_220610278(v43, type metadata accessor for StocksActivity);
  sub_220610278(v36, type metadata accessor for CampaignRouteModel);
  return sub_22064D300(&v93, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
}

uint64_t objectdestroyTm_7()
{
  sub_2204479E4(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_22064F038(uint64_t a1)
{
  sub_2204479E4(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];

  return sub_220598700(a1, v7, v1 + v5, v1 + v6, v9, v10, v11);
}

uint64_t sub_22064F120()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22064F178();
  }

  return result;
}

uint64_t sub_22064F178()
{
  v1 = type metadata accessor for SortWatchlistCommandContext(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220885DDC();
  v7 = *(v6 + 16);
  if (v7)
  {
    v21 = MEMORY[0x277D84F90];
    sub_22070C08C(0, v7, 0);
    v8 = v21;
    v20 = sub_220885DFC();
    v9 = *(v20 - 8);
    v10 = *(v9 + 16);
    v18 = v9 + 16;
    v19 = v10;
    v11 = v6 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v12 = *(v9 + 72);
    v16 = v6;
    v17 = v12;
    do
    {
      v19(&v5[*(v1 + 20)], v11, v20);
      __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
      sub_2208863EC();
      v5[*(v1 + 24)] = 0;
      v21 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_22070C08C(v13 > 1, v14 + 1, 1);
        v8 = v21;
      }

      *(v8 + 16) = v14 + 1;
      sub_22061BAC8(v5, v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14);
      v11 += v17;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v21 = v8;

  sub_22088865C();
}

void *sub_22064F3D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v10[0] = MEMORY[0x277D84F90];
  sub_22061B9EC(0, &qword_2812988F8, sub_22061B9B8, MEMORY[0x277D6CB60]);
  swift_allocObject();
  v3[2] = sub_22088866C();
  v3[3] = a1;
  v3[4] = a2;
  sub_22046DA2C(a3, (v3 + 5));
  swift_getObjectType();
  v8 = qword_281296FA0;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  sub_220886A4C();

  sub_22088B77C();

  __swift_destroy_boxed_opaque_existential_1(v10);
  if (qword_281296FD0 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  sub_22088B77C();

  __swift_destroy_boxed_opaque_existential_1(v10);
  if (qword_281296F78 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();

  sub_22088B77C();

  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_22064F71C();

  sub_220885FAC();

  sub_22064F178();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v4;
}

unint64_t sub_22064F71C()
{
  result = qword_281281968;
  if (!qword_281281968)
  {
    type metadata accessor for SortWatchlistMenuGroupOptionProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281281968);
  }

  return result;
}

uint64_t sub_22064F774()
{
  v1 = sub_2208865FC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v25 - v8;
  v26 = v0;
  v10 = sub_22088662C();
  if (!*(v10 + 16))
  {
    goto LABEL_8;
  }

  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = *(v2 + 16);
  v12(v9, v10 + v11, v1);

  v25 = sub_2208865DC();
  v14 = v13;
  v15 = *(v2 + 8);
  v15(v9, v1);
  if (v14)
  {
    return 2;
  }

  v16 = sub_22088662C();
  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_8:

    return 2;
  }

  v12(v5, v16 + v11 + *(v2 + 72) * (v17 - 1), v1);

  v18 = COERCE_DOUBLE(sub_2208865DC());
  v20 = v19;
  v15(v5, v1);
  if (v20)
  {
    return 2;
  }

  v21 = sub_22088658C();
  v23 = *&v25;
  if ((v22 & 1) == 0)
  {
    v23 = *&v21;
  }

  return v18 - v23 < 0.0;
}

uint64_t type metadata accessor for BrandingTitleViewLayoutOptions()
{
  result = qword_281285A50;
  if (!qword_281285A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22064F9F0()
{
  sub_22088C32C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIEdgeInsets(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22064FA74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_220886A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v8 = sub_220885FCC();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_2208863EC();
  v9 = sub_2206D168C(v7, v8);
  v11 = v10;
  result = (*(v4 + 8))(v7, v3);
  if (v11)
  {

    return (*(v4 + 56))(a1, 1, 1, v3);
  }

  else if (v9 < 1)
  {
    (*(v4 + 56))(a1, 1, 1, v3);
  }

  else if (v9 > *(v8 + 16))
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 16))(a1, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * (v9 - 1), v3);

    return (*(v4 + 56))(a1, 0, 1, v3);
  }

  return result;
}

uint64_t sub_22064FC60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_220886A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v8 = sub_220885FCC();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_2208863EC();
  v9 = sub_2206D168C(v7, v8);
  v11 = v10;
  result = (*(v4 + 8))(v7, v3);
  if (v11)
  {

    return (*(v4 + 56))(a1, 1, 1, v3);
  }

  else
  {
    v13 = *(v8 + 16);
    if (v9 >= (v13 - 1))
    {
      (*(v4 + 56))(a1, 1, 1, v3);
    }

    else if (v9 + 1 >= v13)
    {
      __break(1u);
    }

    else
    {
      (*(v4 + 16))(a1, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * (v9 + 1), v3);

      return (*(v4 + 56))(a1, 0, 1, v3);
    }
  }

  return result;
}

uint64_t sub_22064FEA8()
{
  sub_2204961E0(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v19 - v7;
  v9 = sub_220886A4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v19 - v16;
  sub_22088E4CC();
  if (qword_281296FD0 != -1)
  {
    swift_once();
  }

  if (sub_22088E23C())
  {
    sub_22064FA74(v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      return sub_2205B7488(v8);
    }

    else
    {
      (*(v10 + 32))(v17, v8, v9);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      sub_220885F4C();
      sub_22088EB7C();

      return (*(v10 + 8))(v17, v9);
    }
  }

  else
  {
    if (qword_281296F78 != -1)
    {
      swift_once();
    }

    result = sub_22088E23C();
    if (result)
    {
      sub_22064FC60(v4);
      if ((*(v10 + 48))(v4, 1, v9) == 1)
      {
        return sub_2205B7488(v4);
      }

      else
      {
        (*(v10 + 32))(v13, v4, v9);
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        sub_220885F4C();
        sub_22088EB7C();

        return (*(v10 + 8))(v13, v9);
      }
    }
  }

  return result;
}

BOOL sub_2206501CC()
{
  sub_2204961E0(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v11 - v6;
  sub_22088E4CC();
  if (qword_281296FD0 != -1)
  {
    swift_once();
  }

  if (sub_22088E23C())
  {
    sub_22064FA74(v7);
  }

  else
  {
    if (qword_281296F78 != -1)
    {
      swift_once();
    }

    if ((sub_22088E23C() & 1) == 0)
    {
      return 0;
    }

    sub_22064FC60(v3);
    v7 = v3;
  }

  v8 = sub_220886A4C();
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8) != 1;
  sub_2205B7488(v7);
  return v9;
}

uint64_t sub_220650374(void *a1)
{
  v1 = [a1 type];
  sub_22089136C();

  sub_220650D50();
  sub_220650DA4();
  LOBYTE(v1) = sub_2208912BC();

  return v1 & 1;
}

uint64_t sub_220650424(void *a1)
{
  sub_22061D1D0(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v49 - v9;
  v11 = type metadata accessor for StocksActivity(0);
  *&v13 = MEMORY[0x28223BE20](v11 - 8, v12).n128_u64[0];
  v15 = (&v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = [a1 userInfo];
  if (v16)
  {
    v17 = v16;
    v53 = v4;
    v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_220650DF8();
    v18 = sub_22089126C();

    v19 = [a1 type];
    v20 = sub_22089136C();
    v22 = v21;

    v23 = sub_220874508(v18);
    v24 = v15;

    sub_2206B05D8(v20, v22, v23, v15);
    v52 = v1;

    v51 = OBJC_IVAR____TtC8StocksUI25StocksShortcutItemHandler_navigator;
    v32 = sub_22088969C();
    v33 = v10;
    (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
    v62 = 0;
    memset(v61, 0, sizeof(v61));
    v60 = 0;
    memset(v59, 0, sizeof(v59));
    sub_220650E5C(v59, &v55, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
    if (*(&v56 + 1))
    {
      sub_220458198(&v55, v57);
      v34 = sub_220597454(v57);
      v36 = v35;
      v38 = v37;
      __swift_destroy_boxed_opaque_existential_1(v57);
    }

    else
    {
      sub_220650EE0(&v55, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
      if (qword_2812908F0 != -1)
      {
        swift_once();
      }

      v34 = qword_2812908F8;
      v39 = qword_281290900;
      v38 = qword_281290908;

      v36 = v39;
      sub_2204A80F4(v39);
    }

    v40 = v24;
    v56 = 0u;
    v55 = 0u;
    v41 = v33;
    v50 = v33;
    v42 = v54;
    sub_2205A08A4(v41, v54);
    sub_220650E5C(v61, v57, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
    v43 = (*(v53 + 80) + 24) & ~*(v53 + 80);
    v44 = (v5 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    sub_2205A0994(v42, v45 + v43);
    v46 = v45 + v44;
    v47 = v57[1];
    *v46 = v57[0];
    *(v46 + 16) = v47;
    *(v46 + 32) = v58;
    v48 = (v45 + ((v44 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v48 = v34;
    v48[1] = v36;
    v48[2] = v38;

    sub_2204A80F4(v36);
    sub_22044A8CC();
    sub_220448AC0(&qword_281298040, sub_22044A8CC);
    sub_22088E92C();

    sub_2204DA45C(v36);
    sub_220650EE0(v59, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
    sub_220650EE0(v61, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
    sub_220650F50(v50, sub_22061D1D0);
    sub_220650F50(v40, type metadata accessor for StocksActivity);
    sub_22056D130(&v55);
    return 1;
  }

  else
  {
    sub_220891ADC();
    sub_2205E840C(0, &qword_28127DE60, &qword_28127DE10, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_220899360;
    v26 = [a1 type];
    v27 = sub_22089136C();
    v29 = v28;

    *(v25 + 56) = MEMORY[0x277D837D0];
    *(v25 + 64) = sub_22048D860();
    *(v25 + 32) = v27;
    *(v25 + 40) = v29;
    sub_22048D2F4();
    v30 = sub_2208922DC();
    sub_22088A7EC();

    return 0;
  }
}

uint64_t sub_220650C6C()
{

  v1 = OBJC_IVAR____TtC8StocksUI25StocksShortcutItemHandler_navigator;
  sub_22044A8CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_220650D50()
{
  result = qword_27CF580F8;
  if (!qword_27CF580F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF580F8);
  }

  return result;
}

unint64_t sub_220650DA4()
{
  result = qword_27CF58100;
  if (!qword_27CF58100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58100);
  }

  return result;
}

unint64_t sub_220650DF8()
{
  result = qword_27CF58110;
  if (!qword_27CF58110)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CF58110);
  }

  return result;
}

uint64_t sub_220650E5C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_2205E840C(0, a3, a4, a5, MEMORY[0x277D83D88]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_220650EE0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_2205E840C(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_220650F50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for StockListMoveStockBlueprintModifier()
{
  result = qword_27CF58118;
  if (!qword_27CF58118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220651024()
{
  sub_2206510F4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StockViewModel();
    if (v1 <= 0x3F)
    {
      sub_2206520AC(319, &qword_27CF58128, MEMORY[0x277D6E3E0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2206510F4()
{
  result = qword_281299280;
  if (!qword_281299280)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281299280);
  }

  return result;
}

uint64_t sub_220651158(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v115 = a3;
  v116 = a2;
  v118 = a1;
  sub_2204ADB40(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v117 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (v91 - v6);
  v122 = sub_22088685C();
  v120 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v8);
  v121 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088BCAC();
  v104 = *(v10 - 8);
  v105 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v103 = v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v102 = v91 - v15;
  v16 = sub_22088CFEC();
  v107 = *(v16 - 8);
  v108 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v106 = v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_220886A4C();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v19);
  v99 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204ADB40(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v22 = v21;
  v112 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v111 = v91 - v24;
  v25 = MEMORY[0x277D6D3F0];
  sub_2204A1E30(0, &qword_281297F78, &qword_281297F80, MEMORY[0x277D6D3F0], sub_2206520AC);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v29 = v91 - v28;
  sub_2206520AC(0, &qword_281297F80, v25);
  v31 = v30;
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v33);
  v110 = v91 - v34;
  v35 = MEMORY[0x277D6D710];
  sub_2204A1E30(0, &unk_281297DA0, &qword_281297DB0, MEMORY[0x277D6D710], sub_2204ADB40);
  MEMORY[0x28223BE20](v36 - 8, v37);
  v39 = v91 - v38;
  sub_2204ADB40(0, &qword_281297DB0, v35);
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v42);
  v109 = v91 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v45);
  v47 = v91 - v46;
  v113 = v22;
  v49 = v48;
  sub_22088E83C();
  if ((*(v41 + 48))(v39, 1, v49) == 1)
  {
    sub_22065219C(v39, &unk_281297DA0, &qword_281297DB0, MEMORY[0x277D6D710], sub_2204ADB40);
    sub_220652148();
    *v7 = swift_allocError();
    v50 = v117;
    (*(v4 + 104))(v7, *MEMORY[0x277D6DF68], v117);
    v116(v7);
    return (*(v4 + 8))(v7, v50);
  }

  else
  {
    v98 = v4;
    (*(v41 + 32))(v47, v39, v49);
    v52 = type metadata accessor for StockListMoveStockBlueprintModifier();
    sub_22088677C();
    v53 = v41;
    sub_22088B3AC();

    if ((*(v32 + 48))(v29, 1, v31) == 1)
    {
      sub_22065219C(v29, &qword_281297F78, &qword_281297F80, MEMORY[0x277D6D3F0], sub_2206520AC);
      sub_220652148();
      *v7 = swift_allocError();
      v54 = v98;
      v55 = v117;
      (*(v98 + 104))(v7, *MEMORY[0x277D6DF68], v117);
      v116(v7);
      (*(v54 + 8))(v7, v55);
      return (*(v53 + 8))(v47, v49);
    }

    else
    {
      v97 = v7;
      v93 = v32;
      v56 = *(v32 + 32);
      v94 = v31;
      v56(v110, v29, v31);
      v95 = v41;
      (*(v41 + 16))(v109, v47, v49);
      v57 = v114;
      v96 = v49;
      sub_22088B2EC();
      (*(v112 + 16))(v111, v118, v113);
      v92 = v47;
      sub_22088E75C();
      v58 = sub_2208276B0();
      v59 = *(v58 + 16);
      if (v59)
      {
        v91[2] = v52;
        v123 = MEMORY[0x277D84F90];
        sub_22048EE54(0, v59, 0);
        v60 = v123;
        v61 = v120 + 16;
        v120 = *(v120 + 2);
        v62 = (v61[64] + 32) & ~v61[64];
        v91[1] = v58;
        v63 = v58 + v62;
        v119 = *(v61 + 7);
        v64 = (v61 - 8);
        do
        {
          v65 = v121;
          v66 = v122;
          (v120)(v121, v63, v122);
          v67 = sub_22088681C();
          v69 = v68;
          (*v64)(v65, v66);
          v123 = v60;
          v71 = *(v60 + 16);
          v70 = *(v60 + 24);
          if (v71 >= v70 >> 1)
          {
            sub_22048EE54((v70 > 1), v71 + 1, 1);
            v60 = v123;
          }

          *(v60 + 16) = v71 + 1;
          v72 = v60 + 16 * v71;
          *(v72 + 32) = v67;
          *(v72 + 40) = v69;
          v63 += v119;
          --v59;
        }

        while (v59);

        v73 = v114;
      }

      else
      {
        v73 = v57;
      }

      __swift_project_boxed_opaque_existential_1((v73 + 16), *(v73 + 40));
      __swift_project_boxed_opaque_existential_1((v73 + 16), *(v73 + 40));
      v74 = v99;
      sub_2208863EC();
      sub_220885FEC();

      (*(v100 + 8))(v74, v101);
      v76 = v106;
      v75 = v107;
      v77 = *(v107 + 104);
      LODWORD(v121) = *MEMORY[0x277D6E440];
      v78 = v108;
      v120 = v77;
      v77(v106);
      v122 = sub_22088CECC();
      v119 = *(v75 + 8);
      v119(v76, v78);
      v79 = v102;
      sub_22088CF1C();
      v81 = v103;
      v80 = v104;
      v82 = v105;
      (*(v104 + 104))(v103, *MEMORY[0x277D6DAA0], v105);
      v83 = sub_22088BC9C();
      v84 = *(v80 + 8);
      v84(v81, v82);
      v84(v79, v82);
      type metadata accessor for StockListModel(0);
      sub_22045B950();
      sub_22046F6A4(&qword_281293CD8, type metadata accessor for StockListModel);
      if (v83)
      {
        v85 = v97;
        v86 = v111;
        sub_22088C64C();
        v116(v85);

        (*(v98 + 8))(v85, v117);
        (*(v112 + 8))(v86, v113);
      }

      else
      {
        v87 = v97;
        v88 = v111;
        sub_22088C65C();
        v116(v87);
        (*(v98 + 8))(v87, v117);
        (v120)(v76, v121, v78);
        sub_22088CFFC();

        v119(v76, v78);
        (*(v112 + 8))(v88, v113);
      }

      v89 = *(v95 + 8);
      v90 = v96;
      v89(v109, v96);
      (*(v93 + 8))(v110, v94);
      return (v89)(v92, v90);
    }
  }
}

uint64_t sub_220651EFC()
{
  sub_2205A9918();
  v0 = sub_22088C37C();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_220899360;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x277D6DE40], v0);
  v4 = sub_2207E15E8(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

void sub_2206520AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StockListModel(255);
    v7 = sub_22046F6A4(&qword_281293CD8, type metadata accessor for StockListModel);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_220652148()
{
  result = qword_27CF58138;
  if (!qword_27CF58138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58138);
  }

  return result;
}

uint64_t sub_22065219C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_2204A1E30(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_22065220C()
{
  result = qword_27CF58140;
  if (!qword_27CF58140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58140);
  }

  return result;
}

BOOL CopyLink2CommandHandler.canHandle(commandCenter:command:with:source:)()
{
  sub_22047C320(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088BA2C();
  v4 = sub_220884E9C();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_22047C4E4(v3);
  return v5;
}

BOOL sub_220652350()
{
  sub_22047C320(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088BA2C();
  v4 = sub_220884E9C();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_22047C4E4(v3);
  return v5;
}

uint64_t sub_220652444()
{
  sub_22047C320(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_220884E9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v20 - v11;
  sub_22088BA2C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_22047C4E4(v3);
  }

  sub_220884DCC();
  v14 = *(v5 + 8);
  v14(v3, v4);
  (*(v5 + 32))(v12, v8, v4);
  v15 = objc_opt_self();
  v16 = [v15 generalPasteboard];
  v17 = sub_220884E3C();
  [v16 setURL_];

  v18 = [v15 generalPasteboard];
  sub_220884E0C();
  v19 = sub_22089132C();

  [v18 setString_];

  return (v14)(v12, v4);
}

uint64_t sub_220652690()
{
  sub_22047C320(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_220884E9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220884E8C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_22047C4E4(v3);
  }

  (*(v5 + 32))(v8, v3, v4);
  v10 = objc_opt_self();
  v11 = [v10 generalPasteboard];
  v12 = sub_220884E3C();
  [v11 setURL_];

  v13 = [v10 generalPasteboard];
  sub_220884E0C();
  v14 = sub_22089132C();

  [v13 setString_];

  return (*(v5 + 8))(v8, v4);
}

uint64_t type metadata accessor for ForYouFeedMastheadViewProvider()
{
  result = qword_2812858E8;
  if (!qword_2812858E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220652A50()
{
  result = sub_22088C1BC();
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

id sub_220652B44()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI30ForYouFeedMastheadViewProvider_renderer), *(v0 + OBJC_IVAR____TtC8StocksUI30ForYouFeedMastheadViewProvider_renderer + 24));
  v2 = *(v0 + OBJC_IVAR____TtC8StocksUI30ForYouFeedMastheadViewProvider_mastheadView);

  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v7 = __swift_project_boxed_opaque_existential_1((*v1 + 16), *(*v1 + 40));
  v9 = *(*v7 + 40);
  v8 = *(*v7 + 48);
  __swift_project_boxed_opaque_existential_1((*v7 + 16), v9);
  v10 = (*(*(v8 + 16) + 40))(v9);
  v11 = [objc_allocWithZone(MEMORY[0x277D355E8]) initWithTextColor_];

  v12 = sub_22089132C();

  v13 = [v11 styleTitleText:v12 styleType:0 boundingSize:{v4, v6}];

  return v13;
}

uint64_t sub_220652CA4()
{
  v1 = v0;
  sub_22088CCFC();
  Width = CGRectGetWidth(v20);
  sub_22088CCEC();
  v4 = v3 + 116.0;
  sub_22088CCCC();
  sub_22088CCFC();
  sub_22088C1AC();
  *&v16 = Width;
  *(&v16 + 1) = v4;
  *&v17 = v5;
  *(&v17 + 1) = v6;
  *&v18 = v7;
  *(&v18 + 1) = v8;
  *&v19 = sub_22088CCDC();
  *(&v19 + 1) = sub_22088CCBC();
  v15[0] = v16;
  v15[1] = v17;
  v15[2] = v18;
  v15[3] = v19;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8StocksUI30ForYouFeedMastheadViewProvider_layoutAttributesFactory), *(v1 + OBJC_IVAR____TtC8StocksUI30ForYouFeedMastheadViewProvider_layoutAttributesFactory + 24));
  v9 = OBJC_IVAR____TtC8StocksUI30ForYouFeedMastheadViewProvider_model;

  sub_2207828CC(v10, v15, v14);

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8StocksUI30ForYouFeedMastheadViewProvider_renderer), *(v1 + OBJC_IVAR____TtC8StocksUI30ForYouFeedMastheadViewProvider_renderer + 24));
  v11 = *(v0 + v9);

  v12 = sub_22088CCDC();
  sub_22054F6AC(v11, v14, v12, *(v0 + OBJC_IVAR____TtC8StocksUI30ForYouFeedMastheadViewProvider_mastheadView));

  return sub_220652FD4(&v16);
}

uint64_t sub_220652E8C(uint64_t a1)
{
  v3 = (*v1 + OBJC_IVAR____TtC8StocksUI30ForYouFeedMastheadViewProvider_baseStyler);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 8);
  v7 = *(v6 + 8);
  v10[3] = v4;
  v10[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(v10);
  v7(a1, v4, v6);
  v8 = (*(*(v5 + 16) + 472))(v4);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

unint64_t sub_220652F54(uint64_t a1)
{
  result = sub_220652F7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_220652F7C()
{
  result = qword_281285900;
  if (!qword_281285900)
  {
    type metadata accessor for ForYouFeedMastheadViewProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281285900);
  }

  return result;
}

uint64_t sub_220653028()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_220653074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v6 = *a5;
  v7 = a5[1];
  v8 = *(a5 + 1);
  if (v7)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  return sub_2206530F8(a1, a2, a4, v9 | v6, v8, a6);
}

uint64_t sub_2206530B8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  result = sub_220653C0C(a1);
  *a2 = result & 1;
  *(a2 + 1) = BYTE1(result) & 1;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_2206530F8(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v70 = a3;
  v69 = a2;
  v71 = 0;
  sub_220447A48(0, &qword_281298480, MEMORY[0x277D686D0]);
  v67 = *(v10 - 8);
  v11 = *(v67 + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v68 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v63 - v15;
  v17 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220447A48(0, &qword_27CF56CA8, type metadata accessor for WatchlistMembershipCommandContext);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = v63 - v27;
  if ((a4 & 0x100) == 0)
  {
    swift_getObjectType();
    if (qword_281296FD8 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
    sub_2208863EC();
    v29 = type metadata accessor for WatchlistMembershipCommandContext(0);
    v30 = *(v29 + 20);
    v31 = sub_22088685C();
    v32 = *(v31 - 8);
    (*(v32 + 16))(&v24[v30], v70, v31);
    (*(v32 + 56))(&v24[v30], 0, 1, v31);
    (*(*(v29 - 8) + 56))(v24, 0, 1, v29);
    v33 = v71;
    sub_22088B7AC();
    if (v33)
    {
    }

    return sub_2206540A0(v24, &qword_27CF56CA8, type metadata accessor for WatchlistMembershipCommandContext);
  }

  v66 = v16;
  v65 = v20;
  if (a4)
  {

LABEL_10:
    v64 = a6;
    v63[1] = swift_getObjectType();
    if (qword_281296FD8 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
    sub_2208863EC();
    v36 = type metadata accessor for WatchlistMembershipCommandContext(0);
    v37 = *(v36 + 20);
    v38 = sub_22088685C();
    v39 = *(v38 - 8);
    (*(v39 + 16))(&v28[v37], v70, v38);
    (*(v39 + 56))(&v28[v37], 0, 1, v38);
    (*(*(v36 - 8) + 56))(v28, 0, 1, v36);
    a6 = v64;
    v40 = v71;
    sub_22088B7AC();
    if (v40)
    {

      v40 = 0;
    }

    v16 = v66;
    v71 = v40;
    sub_2206540A0(v28, &qword_27CF56CA8, type metadata accessor for WatchlistMembershipCommandContext);
    goto LABEL_15;
  }

  v35 = sub_2208928BC();

  if (v35)
  {
    goto LABEL_10;
  }

LABEL_15:
  v41 = v7[12];
  sub_220447880();
  v43 = *(v42 + 48);
  v44 = sub_22088685C();
  v45 = *(v44 - 8);
  v46 = v65;
  (*(v45 + 16))(v65, v70, v44);
  (*(v45 + 56))(v46, 0, 1, v44);
  v47 = v46;
  *(v46 + v43) = a6;
  swift_storeEnumTagMultiPayload();
  v48 = sub_22088969C();
  (*(*(v48 - 8) + 56))(v16, 1, 1, v48);
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  v78 = 0;
  memset(v77, 0, sizeof(v77));
  v76 = v41;
  sub_2205A0924(v77, &v72, &unk_281298970, &unk_281298980);
  if (*(&v73 + 1))
  {
    sub_220457328(&v72, v74);

    v49 = sub_220597454(v74);
    v51 = v50;
    v53 = v52;
    __swift_destroy_boxed_opaque_existential_1(v74);
  }

  else
  {

    sub_2205A0B34(&v72, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v49 = qword_2812908F8;
    v51 = qword_281290900;
    v53 = qword_281290908;

    sub_2204A80F4(v51);
  }

  v73 = 0u;
  v72 = 0u;
  v54 = v16;
  v55 = v68;
  sub_2205A08A4(v54, v68);
  sub_2205A0924(v79, v74, &unk_281296D10, &qword_281296D20);
  v56 = (*(v67 + 80) + 24) & ~*(v67 + 80);
  v57 = (v11 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  sub_2205A0994(v55, v58 + v56);
  v59 = v58 + v57;
  v60 = v74[1];
  *v59 = v74[0];
  *(v59 + 16) = v60;
  *(v59 + 32) = v75;
  v61 = (v58 + ((v57 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v61 = v49;
  v61[1] = v51;
  v61[2] = v53;

  sub_2204A80F4(v51);
  sub_2204549FC();
  sub_2204489A0(&unk_281297EC0, sub_2204549FC);
  v62 = v71;
  sub_22088E92C();

  if (v62)
  {
    sub_2205A0B34(&v72, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
    sub_2205A0AE4(0, &qword_281298600, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_220888EBC();

    sub_2204DA45C(v51);
    sub_2205A0B34(v77, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_2205A0B34(v79, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_2206540A0(v66, &qword_281298480, MEMORY[0x277D686D0]);
    return sub_2205BA954(v47);
  }

  else
  {

    sub_2204DA45C(v51);
    sub_2205A0B34(v77, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_2205A0B34(v79, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_2206540A0(v66, &qword_281298480, MEMORY[0x277D686D0]);
    sub_2205BA954(v47);
    return sub_2205A0B34(&v72, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
  }
}

uint64_t sub_220653C0C(uint64_t a1)
{
  v38 = a1;
  v37 = sub_220886A4C();
  v2 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v3);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v28 - v7;
  v9 = *(v1 + 40);
  v29 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 16), v9);
  result = sub_220885FCC();
  v11 = 0;
  v30 = *(result + 16);
  v36 = v2 + 16;
  v34 = result;
  v35 = (v2 + 8);
  v12 = v37;
  do
  {
    v13 = v11;
    if (v30 == v11)
    {
      break;
    }

    if (v11 >= *(v34 + 16))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return result;
    }

    (*(v2 + 16))(v8, v34 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v11++, v12);
    v14 = sub_220886A1C();
    v39 = sub_22088681C();
    v40 = v15;
    MEMORY[0x28223BE20](v39, v15);
    *(&v28 - 2) = &v39;
    v16 = sub_2206A3BCC(sub_2205AB898, (&v28 - 4), v14);

    (*(v2 + 8))(v8, v12);
  }

  while ((v16 & 1) == 0);

  __swift_project_boxed_opaque_existential_1((v29 + 16), *(v29 + 40));
  v17 = sub_220885FCC();
  v18 = *(v17 + 16);
  if (v18)
  {
    v34 = 0;
    v19 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v28 = v17;
    v20 = v17 + v19;
    v21 = *(v2 + 16);
    v31 = *(v2 + 72);
    v32 = v21;
    v22 = v33;
    do
    {
      v23 = v37;
      v32(v22, v20, v37);
      v24 = sub_220886A1C();
      v39 = sub_22088681C();
      v40 = v25;
      MEMORY[0x28223BE20](v39, v25);
      *(&v28 - 2) = &v39;
      v26 = sub_2206A3BCC(sub_2206540FC, (&v28 - 4), v24);

      (*v35)(v22, v23);

      if (v26)
      {
        if (__OFADD__(v34, 1))
        {
          goto LABEL_18;
        }

        ++v34;
      }

      v20 += v31;
      --v18;
    }

    while (v18);
  }

  __swift_project_boxed_opaque_existential_1((v29 + 16), *(v29 + 40));
  if (sub_22088602C())
  {
    v27 = 256;
  }

  else
  {
    v27 = 0;
  }

  if (v30 == v13)
  {
    return v27 + 1;
  }

  else
  {
    return v27;
  }
}

uint64_t sub_220653FD0(uint64_t a1)
{
  sub_220447A48(0, &qword_281298480, MEMORY[0x277D686D0]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];

  return sub_220598700(a1, v7, v1 + v5, v1 + v6, v9, v10, v11);
}

uint64_t sub_2206540A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_220447A48(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_220654118(uint64_t a1, uint64_t a2)
{
  sub_220452BA4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220654184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220452BA4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_220654200@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_220452BA4();
  v5 = v4;
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220655018();
  v10 = v9;
  v23 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220655074();
  sub_220892A4C();
  if (!v2)
  {
    v14 = v23;
    v18 = v5;
    v19 = v8;
    sub_2206550C8();
    sub_22089279C();
    sub_22046DA2C(a1, v22);
    type metadata accessor for NewsStockFeedGroupConfigData();
    sub_22044EEB4(&qword_281287350, type metadata accessor for NewsStockFeedGroupConfigData);
    sub_22044EEB4(&qword_281287358, type metadata accessor for NewsStockFeedGroupConfigData);
    v15 = v19;
    sub_22088F49C();
    (*(v14 + 8))(v13, v10);
    (*(v20 + 32))(v21, v15, v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_220654514@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_22089270C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_22065456C(uint64_t a1)
{
  v2 = sub_220655074();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2206545A8(uint64_t a1)
{
  v2 = sub_220655074();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220654604()
{
  sub_2208929EC();
  sub_22089146C();
  return sub_220892A2C();
}

uint64_t sub_220654694()
{
  sub_2208929EC();
  sub_22089146C();
  return sub_220892A2C();
}

uint64_t sub_2206546EC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_22089270C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_220654828()
{
  v1 = v0;
  sub_220452BA4();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220654FB4(v1, v11);
  (*(v4 + 32))(v7, v11, v3);
  sub_22088F4BC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_220654980()
{
  sub_220452BA4();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220654FB4(v0, v10);
  (*(v3 + 32))(v6, v10, v2);
  v11 = sub_22088F46C();
  (*(v3 + 8))(v6, v2);
  return v11;
}

uint64_t sub_220654B14(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_220452BA4();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220654FB4(v3, v14);
  (*(v7 + 32))(v10, v14, v6);
  a3(v6);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_220654CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_220452BA4();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220654FB4(v3, v14);
  (*(v7 + 32))(v10, v14, v6);
  v15 = a3(v6);
  (*(v7 + 8))(v10, v6);
  return v15;
}

uint64_t sub_220654E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22044EEB4(&qword_28128E980, type metadata accessor for StockFeedGroupConfig);

  return MEMORY[0x282190458](a1, a2, a3, v6);
}

uint64_t sub_220654FB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedGroupConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_220655018()
{
  if (!qword_28127E258)
  {
    sub_220655074();
    v0 = sub_2208927BC();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E258);
    }
  }
}

unint64_t sub_220655074()
{
  result = qword_28128E9A8[0];
  if (!qword_28128E9A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28128E9A8);
  }

  return result;
}

unint64_t sub_2206550C8()
{
  result = qword_28128E988;
  if (!qword_28128E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128E988);
  }

  return result;
}

unint64_t sub_220655140()
{
  result = qword_27CF58168;
  if (!qword_27CF58168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58168);
  }

  return result;
}

unint64_t sub_220655198()
{
  result = qword_27CF58170;
  if (!qword_27CF58170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58170);
  }

  return result;
}

unint64_t sub_2206551F0()
{
  result = qword_28128E998;
  if (!qword_28128E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128E998);
  }

  return result;
}

unint64_t sub_220655248()
{
  result = qword_28128E9A0;
  if (!qword_28128E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128E9A0);
  }

  return result;
}

unint64_t sub_22065529C()
{
  result = qword_28128E990;
  if (!qword_28128E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128E990);
  }

  return result;
}

void sub_2206552F8(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  if (!a5)
  {
    return;
  }

  v9 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);

  v10 = sub_22088B89C();
  if (!v10)
  {
    goto LABEL_31;
  }

  v11 = v10;
  v12 = [v10 windows];

  sub_22044D56C(0, &qword_28127E440);
  v13 = sub_2208916EC();

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_41:

    return;
  }

LABEL_40:
  if (!sub_2208926AC())
  {
    goto LABEL_41;
  }

LABEL_5:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x223D8A700](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_46;
    }

    v14 = *(v13 + 32);
  }

  v15 = v14;

  v16 = [v15 rootViewController];

  if (!v16)
  {
LABEL_31:

    return;
  }

  v9 = sub_220891C5C();

  type metadata accessor for StockFeedViewerViewController();
  sub_220891C9C();
  if (!v38)
  {

    return;
  }

  v6 = v38;
  v17 = sub_220891CBC();

  v18 = [v17 trailingItemGroups];
  sub_22044D56C(0, &qword_28127E6C0);
  v13 = sub_2208916EC();

  if (!(v13 >> 62))
  {
    v19 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_12;
    }

LABEL_47:

LABEL_53:

    return;
  }

LABEL_46:
  v19 = sub_2208926AC();
  if (!v19)
  {
    goto LABEL_47;
  }

LABEL_12:
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_49;
  }

  v32 = v6;
  v33 = v9;
  if ((v13 & 0xC000000000000001) != 0)
  {
LABEL_49:
    v22 = MEMORY[0x223D8A700](v21, v13);
    goto LABEL_17;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_51;
  }

  if (v21 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v22 = *(v13 + 8 * v21 + 32);
LABEL_17:
  v23 = v22;

  v13 = [v23 barButtonItems];

  sub_22044D56C(0, &qword_28127E850);
  v7 = sub_2208916EC();

  if (!(v7 >> 62))
  {
    v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  v24 = sub_2208926AC();
  if (!v24)
  {
LABEL_52:

    goto LABEL_53;
  }

LABEL_19:
  v25 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x223D8A700](v25, v7);
    }

    else
    {
      if (v25 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v26 = *(v7 + 8 * v25 + 32);
    }

    v27 = v26;
    v9 = (v25 + 1);
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v28 = [v26 image];
    if (v28)
    {
      v6 = v28;
      sub_22044D56C(0, &qword_28127E468);
      if (qword_28127F098 != -1)
      {
        swift_once();
      }

      v13 = sub_22089208C();

      if (v13)
      {
        break;
      }
    }

    ++v25;
    if (v9 == v24)
    {
      goto LABEL_52;
    }
  }

  v29 = sub_220655D5C(a1, a2, a3, a4, a5);
  v30 = [v29 popoverPresentationController];
  if (v30)
  {
    v31 = v30;
    [v30 setSourceItem_];
  }

  [v33 presentViewController:v29 animated:1 completion:0];
}

void sub_22065580C(void *a1, char a2, int a3, id a4, void *a5, unsigned __int8 a6, int a7, int a8, uint64_t a9)
{
  if (a4)
  {
    v12 = a4;
    sub_220891ADC();
    sub_22048D7F8();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_220899920;
    v14 = sub_22076CBC4();
    v16 = v15;
    v17 = MEMORY[0x277D837D0];
    *(v13 + 56) = MEMORY[0x277D837D0];
    v18 = sub_22048D860();
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    sub_2204446D4(0, &qword_28127DE30);
    sub_22089264C();
    *(v13 + 96) = v17;
    *(v13 + 104) = v18;
    *(v13 + 72) = 0;
    *(v13 + 80) = 0xE000000000000000;
    sub_22044D56C(0, &qword_28127E420);
    v19 = sub_2208922DC();
    sub_22088A7EC();

    return;
  }

  if (a1)
  {
    if (a2)
    {
      swift_getObjectType();
      v21 = qword_281297088;
      v22 = a1;
      v23 = a1;
      if (v21 != -1)
      {
        v39 = v23;
        swift_once();
        v23 = v39;
      }

      v41[0] = a5;
      v41[1] = a6;
      v41[2] = v22;
      v41[3] = 0;
      v24 = v23;
      v25 = a5;
      sub_22088B7AC();

      return;
    }

    log = a1;
    v32 = sub_220891ADC();
    sub_22044D56C(0, &qword_28127E420);
    v33 = sub_2208922DC();
    if (os_log_type_enabled(v33, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41[0] = v35;
      *v34 = 136315138;
      v36 = sub_22076CBC4();
      v38 = sub_2204A7B78(v36, v37, v41);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_22043F000, v33, v32, "Sharing did not complete; skipping completion for %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x223D8B7F0](v35, -1, -1);
      MEMORY[0x223D8B7F0](v34, -1, -1);

      goto LABEL_12;
    }
  }

  else
  {
    v26 = sub_220891ADC();
    sub_22044D56C(0, &qword_28127E420);
    log = sub_2208922DC();
    if (os_log_type_enabled(log, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41[0] = v28;
      *v27 = 136315138;
      v29 = sub_22076CBC4();
      v31 = sub_2204A7B78(v29, v30, v41);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_22043F000, log, v26, "Sharing did not return an activity type; skipping completion for %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x223D8B7F0](v28, -1, -1);
      MEMORY[0x223D8B7F0](v27, -1, -1);
LABEL_12:

      return;
    }
  }
}

uint64_t sub_220655C5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = sub_2208916EC();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);
}

void sub_220655D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a4;
  v7 = *(a4 + 8);
  if (v7 == 3)
  {
    sub_2206552F8(a1, a2, v6, v7, a5);
  }

  else
  {

    sub_22065627C(a1, a2, v6, v7, a5);
  }
}

id sub_220655D5C(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  v9 = sub_22088CA0C();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v53 = MEMORY[0x277D84F90];
  v11 = OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_stock;
  sub_22078925C(a3 + OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_stock);
  v12 = sub_22088B22C();

  if (v12)
  {
    v13 = v12;
    MEMORY[0x223D89870]();
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22089177C();
    }

    sub_22089179C();
  }

  sub_22088C4CC();
  sub_22088C4AC();
  v54 = 0u;
  v55 = 0u;
  v56 = 1;
  swift_allocObject();
  sub_22088C4BC();
  sub_2207E4920(a3 + v11);
  v14 = sub_22088B22C();

  if (v14)
  {
    v15 = v14;
    MEMORY[0x223D89870]();
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22089177C();
    }

    sub_22089179C();
  }

  v50 = type metadata accessor for StockShareActivityItemSource();
  *&aBlock = a3;
  v43 = a3;
  v16 = sub_220588200(0, 1, 1, MEMORY[0x277D84F90]);
  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  v46 = a1;
  v47 = a5;
  v45 = a2;
  if (v18 >= v17 >> 1)
  {
    v16 = sub_220588200((v17 > 1), v18 + 1, 1, v16);
  }

  *(v16 + 2) = v18 + 1;
  sub_2204A62A4(&aBlock, &v16[32 * v18 + 32]);
  v19 = objc_allocWithZone(MEMORY[0x277D546D8]);
  v20 = sub_2208916DC();

  sub_22044D56C(0, &qword_27CF58178);
  v21 = sub_2208916DC();

  v22 = [v19 initWithActivityItems:v20 applicationActivities:v21];

  [v22 setModalPresentationStyle_];
  sub_220656488();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22089D630;
  v24 = *MEMORY[0x277D54708];
  v25 = *MEMORY[0x277D54778];
  *(v23 + 32) = *MEMORY[0x277D54708];
  *(v23 + 40) = v25;
  v26 = *MEMORY[0x277D54718];
  v27 = *MEMORY[0x277D54780];
  *(v23 + 48) = *MEMORY[0x277D54718];
  *(v23 + 56) = v27;
  v28 = *MEMORY[0x277D54750];
  v29 = *MEMORY[0x277D54768];
  *(v23 + 64) = *MEMORY[0x277D54750];
  *(v23 + 72) = v29;
  v30 = *MEMORY[0x277D54720];
  *(v23 + 80) = *MEMORY[0x277D54720];
  type metadata accessor for ActivityType(0);
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v27;
  v35 = v28;
  v36 = v29;
  v37 = v30;
  v38 = sub_2208916DC();

  [v22 setExcludedActivityTypes_];

  v39 = swift_allocObject();
  *(v39 + 16) = v43;
  *(v39 + 24) = a4;
  *(v39 + 32) = v46;
  *(v39 + 40) = v45;
  *(v39 + 48) = v47;
  v51 = sub_2206564E0;
  v52 = v39;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v49 = sub_220655C5C;
  v50 = &block_descriptor_21;
  v40 = _Block_copy(&aBlock);
  v41 = v43;
  swift_unknownObjectRetain();

  [v22 setCompletionWithItemsHandler_];
  _Block_release(v40);
  return v22;
}

void sub_22065627C(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  if (!a5)
  {
    return;
  }

  v10 = sub_22088C49C();
  if (v10)
  {
    v24 = v10;
    v11 = [v10 nextResponder];
    if (v11)
    {
      while (1)
      {
        v26 = v11;
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          break;
        }

        v13 = [v26 nextResponder];

        v11 = v13;
        if (!v13)
        {
          goto LABEL_6;
        }
      }

      v14 = v12;

      v15 = v14;
      v16 = [v14 view];
      if (!v16)
      {

        v23 = v26;
        goto LABEL_18;
      }

      v17 = v16;
      v25 = sub_220655D5C(a1, a2, a3, a4, a5);
      v18 = sub_22088C47C();
      v19 = v25;
      if (v18)
      {
        v20 = v18;
        v21 = [v25 popoverPresentationController];
        if (v21)
        {
          v22 = v21;
          [v21 setSourceItem_];
        }

        swift_unknownObjectRelease();
        v19 = v25;
      }

      [v15 presentViewController:v19 animated:1 completion:{0, v25}];
    }

    else
    {
LABEL_6:
    }

    v23 = v24;
LABEL_18:

    return;
  }
}

void sub_220656488()
{
  if (!qword_27CF57720)
  {
    type metadata accessor for ActivityType(255);
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF57720);
    }
  }
}

id StockChartCalloutView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void StockChartCalloutView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC8StocksUI21StockChartCalloutView_dateLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC8StocksUI21StockChartCalloutView_priceLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  sub_22089267C();
  __break(1u);
}

id StockChartCalloutView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *StockChartCalloutView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8StocksUI21StockChartCalloutView_dateLabel;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v10 = OBJC_IVAR____TtC8StocksUI21StockChartCalloutView_priceLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for StockChartCalloutView();
  v11 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = *&v11[OBJC_IVAR____TtC8StocksUI21StockChartCalloutView_dateLabel];
  v13 = v11;
  [v13 addSubview_];
  [v13 addSubview_];

  return v13;
}

id StockChartCalloutView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StockChartCalloutView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_220656950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v3 = sub_2208865FC();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454E8C(0, &unk_2812990E0, MEMORY[0x277D697C0]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v35 - v9;
  v11 = sub_22088665C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2208854FC();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v21, *MEMORY[0x277D69120], v16, v19);
  sub_220657788(&qword_2812993A0, MEMORY[0x277D69160]);
  v22 = sub_2208912FC();
  (*(v17 + 8))(v21, v16);
  if (v22)
  {
    sub_22088666C();
    return result;
  }

  sub_2206575F8(v38, v10, &unk_2812990E0, MEMORY[0x277D697C0]);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_22065759C(v10, &unk_2812990E0, MEMORY[0x277D697C0]);
    return result;
  }

  (*(v12 + 32))(v15, v10, v11);
  v24 = COERCE_DOUBLE(sub_22088675C());
  v26 = v25;
  v27 = sub_22088658C();
  if (v28)
  {
    v29 = sub_22088662C();
    if (!*(v29 + 16))
    {

      (*(v12 + 8))(v15, v11);
      return result;
    }

    v31 = v36;
    v30 = v37;
    (*(v36 + 16))(v6, v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v37);

    v32 = COERCE_DOUBLE(sub_2208865DC());
    v34 = v33;
    (*(v12 + 8))(v15, v11);
    (*(v31 + 8))(v6, v30);
  }

  else
  {
    v32 = *&v27;
    (*(v12 + 8))(v15, v11);
    v34 = 0;
  }

  if ((v26 & 1) == 0 && (v34 & 1) == 0)
  {
    return v24 - v32;
  }

  return result;
}

BOOL sub_220656DB4(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for QuoteViewModel();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454E8C(0, qword_281293F78, type metadata accessor for QuoteViewModel);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v54 = &v51 - v9;
  sub_220657538(0, &qword_281293F70, qword_281293F78, type metadata accessor for QuoteViewModel);
  v55 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v51 - v12;
  v14 = type metadata accessor for QuoteSummaryTimeRange();
  v57 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454E8C(0, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v51 - v20;
  sub_220657538(0, &qword_28128D970, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
  v23 = v22;
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v51 - v25;
  v27 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v28 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  v29 = *(a1 + 56);
  v30 = *(a2 + 56);
  if (v29)
  {
    if (!v30 || (*(a1 + 48) != *(a2 + 48) || v29 != v30) && (sub_2208928BC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  v51 = v17;
  v52 = v13;
  v53 = v6;
  sub_220885D4C();
  sub_220657788(&qword_2812992E0, MEMORY[0x277D69488]);
  sub_22089167C();
  sub_22089167C();
  if (v60 != v59)
  {
    return 0;
  }

  v31 = *(v58 + 24);
  v32 = *(v23 + 48);
  sub_2206575F8(a1 + v31, v26, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
  sub_2206575F8(a2 + v31, &v26[v32], &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
  v33 = *(v57 + 48);
  if (v33(v26, 1, v14) == 1)
  {
    v34 = v33(&v26[v32], 1, v14);
    v35 = v53;
    if (v34 == 1)
    {
      sub_22065759C(v26, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
      goto LABEL_28;
    }

LABEL_26:
    v37 = &qword_28128D970;
    v38 = &qword_28128D978;
    v39 = type metadata accessor for QuoteSummaryTimeRange;
    v40 = v26;
LABEL_34:
    sub_220657664(v40, v37, v38, v39);
    return 0;
  }

  sub_2206575F8(v26, v21, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
  v36 = v33(&v26[v32], 1, v14);
  v35 = v53;
  if (v36 == 1)
  {
    sub_2206576C0(v21, type metadata accessor for QuoteSummaryTimeRange);
    goto LABEL_26;
  }

  v41 = v51;
  sub_220657720(&v26[v32], v51, type metadata accessor for QuoteSummaryTimeRange);
  v42 = sub_22069FEB8(v21, v41);
  sub_2206576C0(v41, type metadata accessor for QuoteSummaryTimeRange);
  sub_2206576C0(v21, type metadata accessor for QuoteSummaryTimeRange);
  sub_22065759C(v26, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
  if ((v42 & 1) == 0)
  {
    return 0;
  }

LABEL_28:
  v43 = *(type metadata accessor for QuoteSummaryViewModel() + 20);
  v44 = *(v55 + 48);
  v45 = v52;
  sub_2206575F8(a1 + v43, v52, qword_281293F78, type metadata accessor for QuoteViewModel);
  sub_2206575F8(a2 + v43, v45 + v44, qword_281293F78, type metadata accessor for QuoteViewModel);
  v46 = *(v56 + 48);
  v47 = v58;
  if (v46(v45, 1, v58) != 1)
  {
    v48 = v54;
    sub_2206575F8(v45, v54, qword_281293F78, type metadata accessor for QuoteViewModel);
    if (v46(v45 + v44, 1, v47) == 1)
    {
      sub_2206576C0(v48, type metadata accessor for QuoteViewModel);
      goto LABEL_33;
    }

    sub_220657720(v45 + v44, v35, type metadata accessor for QuoteViewModel);
    v50 = sub_220872A54(v48, v35);
    sub_2206576C0(v35, type metadata accessor for QuoteViewModel);
    sub_2206576C0(v48, type metadata accessor for QuoteViewModel);
    sub_22065759C(v45, qword_281293F78, type metadata accessor for QuoteViewModel);
    return v50;
  }

  if (v46(v45 + v44, 1, v47) != 1)
  {
LABEL_33:
    v37 = &qword_281293F70;
    v38 = qword_281293F78;
    v39 = type metadata accessor for QuoteViewModel;
    v40 = v45;
    goto LABEL_34;
  }

  sub_22065759C(v45, qword_281293F78, type metadata accessor for QuoteViewModel);
  return 1;
}

void sub_220657538(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_220454E8C(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_22065759C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_220454E8C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2206575F8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_220454E8C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_220657664(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_220657538(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2206576C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220657720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220657788(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AttributionSource.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AttributionSource.homeURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AttributionSource() + 20);

  return sub_22047C2BC(v3, a1);
}

void *AttributionSource.logoImage.getter()
{
  v1 = *(v0 + *(type metadata accessor for AttributionSource() + 24));
  v2 = v1;
  return v1;
}

uint64_t AttributionSource.init(name:homeURL:logoImage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for AttributionSource();
  result = sub_2206578D0(a3, a5 + *(v8 + 20));
  *(a5 + *(v8 + 24)) = a4;
  return result;
}

uint64_t sub_2206578D0(uint64_t a1, uint64_t a2)
{
  sub_220479F38(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22065797C(uint64_t a1)
{
  sub_22047C23C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2206579D8()
{
  result = qword_2812994E8;
  if (!qword_2812994E8)
  {
    sub_220884E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812994E8);
  }

  return result;
}

uint64_t sub_220657A30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 168))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 160);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_220657A98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *(result + 160) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_220657B20()
{
  sub_220657BB4();

  return sub_22088D90C();
}

unint64_t sub_220657B60()
{
  result = qword_27CF58190;
  if (!qword_27CF58190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58190);
  }

  return result;
}

unint64_t sub_220657BB4()
{
  result = qword_27CF58198;
  if (!qword_27CF58198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58198);
  }

  return result;
}

uint64_t sub_220657C08(uint64_t a1, uint64_t a2)
{
  sub_220657C74();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

void sub_220657C74()
{
  if (!qword_281282D60)
  {
    sub_220496010();
    type metadata accessor for StockSearchSectionHeaderViewLayoutAttributes();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281282D60);
    }
  }
}

uint64_t sub_220657CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220657C74();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_220657D64()
{
  v1 = v0;
  v2 = type metadata accessor for StockSearchSectionHeaderViewLayoutAttributes();
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_220657FEC(v1, v9);
  sub_220658050(*v9, v9[1], v9[2], v9[3]);
  sub_220657C74();
  sub_2206580C4(v9 + *(v10 + 48), v5);
  sub_220658128();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_220899360;
  *(v11 + 56) = v2;
  *(v11 + 64) = sub_220496CA0(&qword_27CF581A0, type metadata accessor for StockSearchSectionHeaderViewLayoutAttributes);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v11 + 32));
  sub_2206580C4(v5, boxed_opaque_existential_1);
  return v11;
}

uint64_t sub_220657ECC(uint64_t a1)
{
  v2 = sub_220496CA0(&qword_27CF581A8, type metadata accessor for StockSearchLayoutSectionDescriptor);

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_220657F38()
{
  sub_220496CA0(&qword_2812822F0, type metadata accessor for StockSearchLayoutSectionDescriptor);

  return sub_22088D90C();
}

uint64_t sub_220657FEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockSearchLayoutSectionDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_220658050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    sub_2204BE768(a3, a4);
  }
}

uint64_t sub_2206580C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockSearchSectionHeaderViewLayoutAttributes();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_220658128()
{
  if (!qword_28127DFF0)
  {
    sub_2205ED294();
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127DFF0);
    }
  }
}

uint64_t static Settings.Welcome.Version.effectiveLatestCompleted.getter()
{
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298E60 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  result = v1;
  if (v1 < 0)
  {
    sub_220886BAC();
    if (qword_281298E78 != -1)
    {
      swift_once();
    }

    sub_220886B9C();

    return v1;
  }

  return result;
}

uint64_t sub_220658274()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204643A4(0, &qword_281298CC0);
  v6[2] = 0;
  v6[3] = 0;
  v6[1] = 0x7FFFFFFFFFFFFFFFLL;
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  result = sub_220886C3C();
  qword_281298E80 = result;
  return result;
}

uint64_t sub_220658438()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FE4CCCCCCCCCCCDLL;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF581B8 = result;
  return result;
}

uint64_t sub_220658644(double a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_220886BDC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220886BEC();
  v12 = MEMORY[0x28223BE20](v10, v11);
  (*(v14 + 104))(v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v12);
  (*(v6 + 104))(v9, *MEMORY[0x277D6D090], v5);
  *&v16[1] = a1;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  *a3 = result;
  return result;
}

uint64_t sub_220658844()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x4049000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF581C8 = result;
  return result;
}

uint64_t sub_220658A38()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x402C000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF581D0 = result;
  return result;
}

void sub_220658C98()
{
  sub_22065E078();

  JUMPOUT(0x223D84030);
}

uint64_t sub_220658CD4(uint64_t a1)
{
  v2 = sub_22065E078();

  return MEMORY[0x2821D3FF8](a1, v2);
}

uint64_t sub_220658D10()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FE0000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF581D8 = result;
  return result;
}

uint64_t sub_220658F04()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FD0000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF581E0 = result;
  return result;
}

uint64_t sub_2206590F8()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FB999999999999ALL;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF581E8 = result;
  return result;
}

uint64_t sub_2206592F4()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FE8000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF581F0 = result;
  return result;
}

uint64_t sub_2206594E8()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FF0000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF581F8 = result;
  return result;
}

uint64_t sub_220659790(uint64_t a1)
{
  v2 = sub_22065E024();

  return MEMORY[0x2821D3DC0](a1, v2);
}

uint64_t sub_2206597CC(uint64_t a1)
{
  v2 = sub_22065E024();

  return MEMORY[0x2821D3DC8](a1, v2);
}

uint64_t sub_220659808()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FE0000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58200 = result;
  return result;
}

uint64_t sub_2206599FC()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FD0000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58208 = result;
  return result;
}

uint64_t sub_220659BF0()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FD0000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58210 = result;
  return result;
}

uint64_t sub_220659DE4()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FB999999999999ALL;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58218 = result;
  return result;
}

uint64_t sub_220659FE0()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FE8000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58220 = result;
  return result;
}

uint64_t sub_22065A1D4()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FF0000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58228 = result;
  return result;
}

uint64_t sub_22065A47C(uint64_t a1)
{
  v2 = sub_22065DFD0();

  return MEMORY[0x2821D3DC0](a1, v2);
}

uint64_t sub_22065A4B8(uint64_t a1)
{
  v2 = sub_22065DFD0();

  return MEMORY[0x2821D3DC8](a1, v2);
}

uint64_t sub_22065A4F4()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FB47AE147AE147BLL;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58230 = result;
  return result;
}

uint64_t sub_22065A6F4()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FD0000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58238 = result;
  return result;
}

uint64_t sub_22065A8E8()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FB999999999999ALL;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58240 = result;
  return result;
}

uint64_t sub_22065AAE4()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FE8000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58248 = result;
  return result;
}

uint64_t sub_22065ACD8()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FF0000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58250 = result;
  return result;
}

uint64_t sub_22065AF80(uint64_t a1)
{
  v2 = sub_22065DF7C();

  return MEMORY[0x2821D3DC0](a1, v2);
}

uint64_t sub_22065AFBC(uint64_t a1)
{
  v2 = sub_22065DF7C();

  return MEMORY[0x2821D3DC8](a1, v2);
}

uint64_t sub_22065AFF8()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FC999999999999ALL;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58258 = result;
  return result;
}

uint64_t sub_22065B1F4()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FD0000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58260 = result;
  return result;
}

uint64_t sub_22065B3E8()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FB999999999999ALL;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58268 = result;
  return result;
}

uint64_t sub_22065B5E4()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FE8000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58270 = result;
  return result;
}

uint64_t sub_22065B7D8()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FF0000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58278 = result;
  return result;
}

uint64_t sub_22065BA80(uint64_t a1)
{
  v2 = sub_22065DF28();

  return MEMORY[0x2821D3DC0](a1, v2);
}

uint64_t sub_22065BABC(uint64_t a1)
{
  v2 = sub_22065DF28();

  return MEMORY[0x2821D3DC8](a1, v2);
}

uint64_t sub_22065BAF8()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FA47AE147AE147BLL;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58280 = result;
  return result;
}

uint64_t sub_22065BCF8()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FF0000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58288 = result;
  return result;
}

uint64_t sub_22065BEEC()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x4056800000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58290 = result;
  return result;
}

uint64_t sub_22065C0E4()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x4032000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58298 = result;
  return result;
}

void sub_22065C344()
{
  sub_22065DED4();

  JUMPOUT(0x223D84030);
}

uint64_t sub_22065C380(uint64_t a1)
{
  v2 = sub_22065DED4();

  return MEMORY[0x2821D3FF8](a1, v2);
}

uint64_t sub_22065C3BC()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FC47AE147AE147BLL;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF582A0 = result;
  return result;
}

uint64_t sub_22065C5BC()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FD0000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF582A8 = result;
  return result;
}

uint64_t sub_22065C7B0()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FB999999999999ALL;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF582B0 = result;
  return result;
}

uint64_t sub_22065C9AC()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FE8000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF582B8 = result;
  return result;
}

uint64_t sub_22065CBA0()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FF0000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF582C0 = result;
  return result;
}

uint64_t sub_22065CE48(uint64_t a1)
{
  v2 = sub_22065DE80();

  return MEMORY[0x2821D3DC0](a1, v2);
}

uint64_t sub_22065CE84(uint64_t a1)
{
  v2 = sub_22065DE80();

  return MEMORY[0x2821D3DC8](a1, v2);
}

uint64_t sub_22065CEC0()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FC999999999999ALL;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF582C8 = result;
  return result;
}

uint64_t sub_22065D0BC()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FD0000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF582D0 = result;
  return result;
}

uint64_t sub_22065D2B0()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FB999999999999ALL;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF582D8 = result;
  return result;
}

uint64_t sub_22065D4AC()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FE8000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF582E0 = result;
  return result;
}

uint64_t sub_22065D6A0()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0x3FF0000000000000;
  sub_2204643A4(0, &unk_27CF58368);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF582E8 = result;
  return result;
}

uint64_t sub_22065D948(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_22065D9AC(uint64_t a1)
{
  v2 = sub_22065DE2C();

  return MEMORY[0x2821D3DC0](a1, v2);
}

uint64_t sub_22065D9E8(uint64_t a1)
{
  v2 = sub_22065DE2C();

  return MEMORY[0x2821D3DC8](a1, v2);
}

BOOL _s11TeaSettings0B0C8StocksUIE7WelcomeV7VersionV14isBrandNewUserSbvgZ_0()
{
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298E60 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  v0 = v2;
  if (v2 < 0)
  {
    sub_220886BAC();
    if (qword_281298E78 != -1)
    {
      swift_once();
    }

    sub_220886B9C();

    v0 = v2;
  }

  return v0 == 0;
}

unint64_t sub_22065DB14()
{
  result = qword_27CF582F0;
  if (!qword_27CF582F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF582F0);
  }

  return result;
}

unint64_t sub_22065DB6C()
{
  result = qword_27CF582F8;
  if (!qword_27CF582F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF582F8);
  }

  return result;
}

unint64_t sub_22065DBC4()
{
  result = qword_27CF58300;
  if (!qword_27CF58300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58300);
  }

  return result;
}

unint64_t sub_22065DC1C()
{
  result = qword_27CF58308;
  if (!qword_27CF58308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58308);
  }

  return result;
}

unint64_t sub_22065DC74()
{
  result = qword_27CF58310;
  if (!qword_27CF58310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58310);
  }

  return result;
}

unint64_t sub_22065DCCC()
{
  result = qword_27CF58318;
  if (!qword_27CF58318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58318);
  }

  return result;
}

unint64_t sub_22065DD24()
{
  result = qword_27CF58320;
  if (!qword_27CF58320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58320);
  }

  return result;
}

unint64_t sub_22065DE2C()
{
  result = qword_27CF58328;
  if (!qword_27CF58328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58328);
  }

  return result;
}

unint64_t sub_22065DE80()
{
  result = qword_27CF58330;
  if (!qword_27CF58330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58330);
  }

  return result;
}

unint64_t sub_22065DED4()
{
  result = qword_27CF58338;
  if (!qword_27CF58338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58338);
  }

  return result;
}

unint64_t sub_22065DF28()
{
  result = qword_27CF58340;
  if (!qword_27CF58340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58340);
  }

  return result;
}

unint64_t sub_22065DF7C()
{
  result = qword_27CF58348;
  if (!qword_27CF58348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58348);
  }

  return result;
}

unint64_t sub_22065DFD0()
{
  result = qword_27CF58350;
  if (!qword_27CF58350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58350);
  }

  return result;
}

unint64_t sub_22065E024()
{
  result = qword_27CF58358;
  if (!qword_27CF58358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58358);
  }

  return result;
}

unint64_t sub_22065E078()
{
  result = qword_27CF58360;
  if (!qword_27CF58360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58360);
  }

  return result;
}

uint64_t sub_22065E0D0()
{
  sub_220471AB4(0, &qword_2812970D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v7 - v4;
  sub_220466EFC();
  (*(v2 + 104))(v5, *MEMORY[0x277D6EBC8], v1);
  result = sub_22088E20C();
  qword_2812B6C50 = result;
  return result;
}

uint64_t sub_22065E1F8()
{
  sub_220479F8C(0, &qword_281297100, type metadata accessor for StocksActivity, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v7 - v4;
  sub_220479F8C(0, &qword_2812970B8, type metadata accessor for StocksActivity, MEMORY[0x277D6EBE8]);
  (*(v2 + 104))(v5, *MEMORY[0x277D6EBC8], v1);
  result = sub_22088E20C();
  qword_2812B6C68 = result;
  return result;
}

uint64_t sub_22065E34C()
{
  sub_220479F8C(0, &qword_281297100, type metadata accessor for StocksActivity, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v7 - v4;
  sub_220479F8C(0, &qword_2812970B8, type metadata accessor for StocksActivity, MEMORY[0x277D6EBE8]);
  (*(v2 + 104))(v5, *MEMORY[0x277D6EBC8], v1);
  result = sub_22088E20C();
  qword_2812B6C88 = result;
  return result;
}

uint64_t sub_22065E4A0()
{
  v0 = MEMORY[0x277D84F78];
  sub_220471AB4(0, &qword_2812970D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBD0]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v8 - v5;
  sub_220471AB4(0, &qword_281297090, v0 + 8, MEMORY[0x277D6EBE8]);
  (*(v3 + 104))(v6, *MEMORY[0x277D6EBC8], v2);
  result = sub_22088E20C();
  qword_2812B6C70 = result;
  return result;
}

uint64_t sub_22065E5E8(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v64 = a7;
  v65 = a8;
  v62 = a4;
  v60 = a2;
  v68 = a1;
  v57 = sub_22088BA1C();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v14);
  v58 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StocksActivity(0);
  v66 = *(v16 - 8);
  v67 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v54 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v55 = v52 - v21;
  sub_220479F8C(0, qword_281295190, type metadata accessor for StocksActivity, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v63 = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v61 = v52 - v27;
  v69 = a5;
  v70 = a6;
  v71 = a9;
  v72 = a10;
  v28 = sub_22088B07C();
  v59 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v29);
  v31 = v52 - v30;
  v32 = [objc_opt_self() currentDevice];
  v33 = [v32 userInterfaceIdiom];

  if (!v33)
  {
    return 0;
  }

  v52[1] = v10;
  v69 = a3;
  v34 = v62;
  v70 = v62;
  v71 = a5;
  v72 = a6;
  v53 = a6;
  v36 = v64;
  v35 = v65;
  v73 = v64;
  v74 = v65;
  v75 = a9;
  v76 = a10;
  sub_22088A8AC();
  v37 = sub_22088A86C();
  v60 = v52;
  MEMORY[0x28223BE20](v37, v38);
  v52[-8] = a3;
  v52[-7] = v34;
  v39 = v53;
  v52[-6] = a5;
  v52[-5] = v39;
  v52[-4] = v36;
  v52[-3] = v35;
  v50 = a9;
  v51 = a10;
  sub_220471AB4(0, &qword_28127E9C0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  swift_getWitnessTable();
  sub_22066166C();
  v40 = sub_22089163C();
  (*(v59 + 8))(v31, v28);
  v41 = v61;
  sub_22065F0F0(v68, v40, 2, v61);

  v42 = v63;
  sub_2206616E8(v41, v63);
  if ((*(v66 + 48))(v42, 1, v67) == 1)
  {
    v43 = MEMORY[0x277D83D88];
    sub_220661914(v41, qword_281295190, type metadata accessor for StocksActivity, MEMORY[0x277D83D88], sub_220479F8C);
    sub_220661914(v42, qword_281295190, type metadata accessor for StocksActivity, v43, sub_220479F8C);
    return 0;
  }

  v45 = v55;
  sub_22066177C(v42, v55, type metadata accessor for StocksActivity);
  if (qword_281297028 != -1)
  {
    swift_once();
  }

  sub_220660770(v45, v54, type metadata accessor for StocksActivity);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v47 = objc_opt_self();

  v48 = [v47 bundleForClass_];
  v50 = 0x80000002208CA000;
  sub_220884CAC();

  sub_22088E1DC();
  sub_22088E1CC();
  (*(v56 + 104))(v58, *MEMORY[0x277D6D9A8], v57);
  swift_allocObject();
  v49 = sub_22088B10C();
  sub_22066184C(v45, type metadata accessor for StocksActivity);
  sub_220661914(v41, qword_281295190, type metadata accessor for StocksActivity, MEMORY[0x277D83D88], sub_220479F8C);
  return v49;
}

uint64_t sub_22065ECF4@<X0>(uint64_t *a1@<X8>)
{
  sub_22088C36C();
  sub_220471AB4(0, &qword_28127E9C0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  swift_getWitnessTable();
  sub_22066166C();
  result = sub_22089163C();
  *a1 = result;
  return result;
}

uint64_t sub_22065EDE8@<X0>(void *a1@<X8>)
{
  v35 = sub_22088822C();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v31 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  sub_22088BC4C();
  sub_22088BC3C();
  sub_2204446D4(0, &qword_27CF583B0);
  if (swift_dynamicCast())
  {
    sub_220457328(v32, v34);
    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    v8 = sub_2208879AC();
    v9 = *(v8 + 16);
    if (v9)
    {
      v26 = a1;
      v27 = v1;
      *&v32[0] = MEMORY[0x277D84F90];
      sub_22048EE54(0, v9, 0);
      v10 = *&v32[0];
      v11 = v3 + 16;
      v12 = *(v3 + 16);
      v13 = *(v3 + 80);
      v25[1] = v8;
      v14 = v8 + ((v13 + 32) & ~v13);
      v28 = *(v11 + 56);
      v29 = v12;
      v30 = v11;
      v15 = (v11 - 8);
      do
      {
        v16 = v31;
        v17 = v35;
        v29(v31, v14, v35);
        v18 = sub_2208881EC();
        v20 = v19;
        (*v15)(v16, v17);
        *&v32[0] = v10;
        v22 = *(v10 + 16);
        v21 = *(v10 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_22048EE54((v21 > 1), v22 + 1, 1);
          v10 = *&v32[0];
        }

        *(v10 + 16) = v22 + 1;
        v23 = v10 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        v14 += v28;
        --v9;
      }

      while (v9);

      a1 = v26;
    }

    else
    {

      v10 = MEMORY[0x277D84F90];
    }

    *a1 = v10;
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    result = sub_220661914(v32, &unk_27CF583B8, &qword_27CF583B0, MEMORY[0x277D2FCE8], sub_220448010);
    *a1 = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_22065F0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v56 = a3;
  v57 = a2;
  v6 = sub_220884E9C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220479F8C(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v53 - v17;
  v19 = sub_22088698C();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = (v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v24, a1, v19, v22);
  v25 = (*(v20 + 88))(v24, v19);
  if (v25 == *MEMORY[0x277D69850])
  {
    (*(v20 + 96))(v24, v19);
    v26 = *v24;
    sub_22052EC94();
    v28 = *(v27 + 48);
    v29 = [v26 routeURL];
    if (v29)
    {
      v30 = v29;
      sub_220884E4C();

      swift_unknownObjectRelease();
      (*(v7 + 32))(v18, v10, v6);
      (*(v7 + 56))(v18, 0, 1, v6);
      sub_220661914(v18, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_220479F8C);
      v31 = type metadata accessor for StocksActivity(0);
      (*(*(v31 - 8) + 56))(a4, 1, 1, v31);
      v32 = sub_220885CDC();
      return (*(*(v32 - 8) + 8))(v24 + v28, v32);
    }

    else
    {
      v54 = *(v7 + 56);
      v54(v18, 1, 1, v6);
      sub_220661914(v18, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_220479F8C);
      v53[2] = sub_22088807C();
      v35 = [v26 identifier];
      v36 = sub_22089136C();
      v53[0] = v37;
      v53[1] = v36;

      sub_220479F8C(0, &qword_27CF58398, sub_2206617E4, MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_220899360;

      v39 = [v26 identifier];
      v40 = sub_22089136C();
      v55 = v28;
      v42 = v41;

      *(inited + 32) = v40;
      *(inited + 40) = v42;
      *(inited + 48) = v26;
      swift_unknownObjectRetain();
      sub_2205CF1EC(inited);
      swift_setDeallocating();
      sub_22066184C(inited + 32, sub_2206617E4);
      v54(v14, 1, 1, v6);
      v43 = sub_22088803C();
      swift_unknownObjectRelease();
      sub_2204481D8();
      v45 = *(v44 + 48);
      v46 = &a4[*(v44 + 64)];
      sub_220560230();
      v48 = *(v47 + 48);
      *a4 = v43;
      v49 = *MEMORY[0x277D2FF08];
      v50 = sub_220887C9C();
      (*(*(v50 - 8) + 104))(&a4[v48], v49, v50);
      sub_2208876BC();
      swift_storeEnumTagMultiPayload();
      *&a4[v45] = v56;
      type metadata accessor for StocksActivity.Article(0);
      *v46 = 0u;
      *(v46 + 1) = 0u;
      *(v46 + 4) = 0;
      swift_storeEnumTagMultiPayload();
      v51 = type metadata accessor for StocksActivity(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v51 - 8) + 56))(a4, 0, 1, v51);
      v52 = sub_220885CDC();
      return (*(*(v52 - 8) + 8))(v24 + v55, v52);
    }
  }

  else if (v25 == *MEMORY[0x277D69840])
  {
    (*(v20 + 96))(v24, v19);
    *a4 = *v24;
    type metadata accessor for StocksActivity.Article(0);
    swift_storeEnumTagMultiPayload();
    v34 = type metadata accessor for StocksActivity(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v34 - 8) + 56))(a4, 0, 1, v34);
  }

  else
  {
    result = sub_2208928AC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22065F810(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v46 = a4;
  v47 = a8;
  v45 = a2;
  v49 = a1;
  v14 = sub_22088BA1C();
  v51 = *(v14 - 8);
  v52 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v50 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v48 = &v43 - v22;
  v54 = a5;
  v55 = a6;
  v56 = a9;
  v57 = a10;
  v23 = sub_22088B07C();
  v44 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v43 - v25;
  v27 = [objc_opt_self() currentDevice];
  v28 = [v27 userInterfaceIdiom];

  if (!v28)
  {
    return 0;
  }

  v54 = a3;
  v43 = a3;
  v29 = v46;
  v55 = v46;
  v56 = a5;
  v57 = a6;
  v58 = a7;
  v30 = a7;
  v31 = v47;
  v59 = v47;
  v60 = a9;
  v61 = a10;
  sub_22088A8AC();
  v32 = sub_22088A86C();
  v45 = &v43;
  MEMORY[0x28223BE20](v32, v33);
  *(&v43 - 8) = v43;
  *(&v43 - 7) = v29;
  *(&v43 - 6) = a5;
  *(&v43 - 5) = a6;
  *(&v43 - 4) = v30;
  *(&v43 - 3) = v31;
  v41 = a9;
  v42 = a10;
  sub_220479F8C(0, &qword_28127EB50, MEMORY[0x277D69810], MEMORY[0x277D83940]);
  swift_getWitnessTable();
  sub_220661584();
  v34 = sub_22089163C();
  (*(v44 + 8))(v26, v23);
  v35 = v48;
  sub_22065FF60(v34, v49, 2, v48);

  if (qword_281297028 != -1)
  {
    swift_once();
  }

  sub_220660770(v35, v50, type metadata accessor for StocksActivity);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v37 = objc_opt_self();

  v38 = [v37 bundleForClass_];
  v41 = 0x80000002208CA000;
  sub_220884CAC();

  sub_22088E1DC();
  sub_22088E1CC();
  (*(v51 + 104))(v53, *MEMORY[0x277D6D9A8], v52);
  swift_allocObject();
  v39 = sub_22088B10C();
  sub_22066184C(v35, type metadata accessor for StocksActivity);
  return v39;
}

uint64_t sub_22065FD0C@<X0>(uint64_t *a1@<X8>)
{
  sub_22088C36C();
  sub_22088685C();
  swift_getWitnessTable();
  result = sub_22089161C();
  *a1 = result;
  return result;
}

uint64_t sub_22065FDD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](a1, a2);
  sub_22088BC4C();
  sub_22088BC3C();
  sub_2204446D4(0, &qword_27CF58380);
  if (swift_dynamicCast())
  {
    sub_220457328(v6, v8);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_220885D5C();
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_220661914(v6, &unk_27CF58388, &qword_27CF58380, MEMORY[0x277D694A0], sub_220448010);
    v5 = sub_22088685C();
    return (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  }
}

uint64_t sub_22065FF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for StocksActivity.StockFeed.Series(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v12 = sub_22088685C();
    (*(*(v12 - 8) + 16))(v11, a2, v12);
    *&v11[*(v8 + 20)] = a1;
    sub_2204471FC(0, &qword_2812952A0, type metadata accessor for StocksActivity.StockFeed.Series);
    v14 = *(v13 + 48);
    sub_22066177C(v11, a4, type metadata accessor for StocksActivity.StockFeed.Series);
    *(a4 + v14) = a3;
    type metadata accessor for StocksActivity.StockFeed(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for StocksActivity(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_2204471FC(0, &qword_281299050, MEMORY[0x277D69810]);
    v17 = *(v16 + 48);
    v18 = sub_22088685C();
    (*(*(v18 - 8) + 16))(a4, a2, v18);
    *(a4 + v17) = a3;
    type metadata accessor for StocksActivity.StockFeed(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for StocksActivity(0);

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t static ContextMenuItem.openInNewTab(headline:)(uint64_t a1)
{
  v38[1] = a1;
  v1 = sub_22088BA1C();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v43 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v39, v4);
  v40 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v38 - v8;
  v10 = sub_220887C9C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[0] = MEMORY[0x277CC9260];
  v15 = MEMORY[0x277D83D88];
  sub_220479F8C(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v38 - v18;
  v20 = sub_22088822C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2208876BC();
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  sub_2208881FC();
  v29 = sub_220884E9C();
  (*(*(v29 - 8) + 56))(v19, 1, 1, v29);
  (*(v11 + 104))(v14, *MEMORY[0x277D2FF08], v10);
  sub_22088767C();
  (*(v11 + 8))(v14, v10);
  sub_220661914(v19, &qword_2812994E0, v38[0], v15, sub_220479F8C);
  (*(v21 + 8))(v24, v20);
  sub_2204481D8();
  v31 = *(v30 + 48);
  v32 = &v9[*(v30 + 64)];
  sub_220660770(v28, v9, MEMORY[0x277D2FB40]);
  *&v9[v31] = 2;
  type metadata accessor for StocksActivity.Article(0);
  *v32 = 0u;
  *(v32 + 1) = 0u;
  *(v32 + 4) = 0;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  if (qword_281297050 != -1)
  {
    swift_once();
  }

  sub_220660770(v9, v40, type metadata accessor for StocksActivity);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = objc_opt_self();

  v35 = [v34 bundleForClass_];
  sub_220884CAC();

  sub_22088E1DC();
  sub_22088E1BC();
  (*(v41 + 104))(v43, *MEMORY[0x277D6D9A8], v42);
  swift_allocObject();
  v36 = sub_22088B10C();
  sub_22066184C(v9, type metadata accessor for StocksActivity);
  sub_22066184C(v28, MEMORY[0x277D2FB40]);
  return v36;
}

uint64_t sub_220660770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2206607E0(uint64_t *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_220884CAC();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

void sub_2206608AC(void *a1@<X8>)
{
  v2 = sub_22089132C();
  v3 = [objc_opt_self() systemImageNamed_];

  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_220660930(uint64_t *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_220884CAC();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t _s5TeaUI15ContextMenuItemC06StocksB0E15openInNewWindow8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(uint64_t a1)
{
  v40 = a1;
  v1 = sub_22088BA1C();
  v43 = *(v1 - 8);
  v44 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v45 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v41, v4);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v38 - v8;
  v10 = sub_220887C9C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220479F8C(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v38 - v17;
  v39 = sub_22088822C();
  v19 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2208876BC();
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = [objc_opt_self() sharedApplication];
  v28 = [v27 supportsMultipleScenes];

  v29 = 0;
  if (v28)
  {
    swift_unknownObjectRetain();
    sub_2208881FC();
    v30 = sub_220884E9C();
    (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
    (*(v11 + 104))(v14, *MEMORY[0x277D2FF08], v10);
    sub_22088767C();
    (*(v11 + 8))(v14, v10);
    sub_220661914(v18, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_220479F8C);
    (*(v19 + 8))(v22, v39);
    sub_2204481D8();
    v32 = *(v31 + 48);
    v33 = &v9[*(v31 + 64)];
    sub_220660770(v26, v9, MEMORY[0x277D2FB40]);
    *&v9[v32] = 2;
    type metadata accessor for StocksActivity.Article(0);
    *v33 = 0u;
    *(v33 + 1) = 0u;
    *(v33 + 4) = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    if (qword_281297028 != -1)
    {
      swift_once();
    }

    sub_220660770(v9, v42, type metadata accessor for StocksActivity);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v35 = objc_opt_self();

    v36 = [v35 bundleForClass_];
    sub_220884CAC();

    sub_22088E1DC();
    sub_22088E1CC();
    (*(v43 + 104))(v45, *MEMORY[0x277D6D9A8], v44);
    sub_22088B17C();
    swift_allocObject();
    v29 = sub_22088B10C();
    sub_22066184C(v9, type metadata accessor for StocksActivity);
    sub_22066184C(v26, MEMORY[0x277D2FB40]);
  }

  return v29;
}

uint64_t _s5TeaUI15ContextMenuItemC06StocksB0E15provideFeedbackACyFZ_0()
{
  sub_220661974();
  MEMORY[0x28223BE20](v0 - 8, v1);
  sub_220479F8C(0, &qword_27CF583C8, sub_2206619D0, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v10[-v4];
  sub_220661A3C();
  MEMORY[0x28223BE20](v6 - 8, v7);
  if (qword_281297020 != -1)
  {
    swift_once();
  }

  v10[15] = 1;
  sub_220466F64();

  sub_22088CB4C();
  v10[14] = 1;
  sub_22047A590();
  sub_22088B8EC();
  sub_2206619D0();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  v10[13] = 1;
  sub_22088BD6C();
  sub_22088B17C();
  swift_allocObject();
  return sub_22088B0CC();
}

uint64_t _s5TeaUI15ContextMenuItemC06StocksB0E24clearRecommendationsDataACyFZ_0()
{
  sub_220661974();
  MEMORY[0x28223BE20](v0 - 8, v1);
  sub_220479F8C(0, &qword_27CF583C8, sub_2206619D0, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v10[-v4];
  sub_220661A3C();
  MEMORY[0x28223BE20](v6 - 8, v7);
  if (qword_281297008 != -1)
  {
    swift_once();
  }

  v10[15] = 1;
  sub_220466F64();

  sub_22088CB4C();
  sub_2206619D0();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v10[14] = 1;
  sub_22088BD6C();
  sub_22088B17C();
  swift_allocObject();
  return sub_22088B0CC();
}

unint64_t sub_220661584()
{
  result = qword_27CF58378;
  if (!qword_27CF58378)
  {
    sub_220479F8C(255, &qword_28127EB50, MEMORY[0x277D69810], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58378);
  }

  return result;
}

unint64_t sub_22066166C()
{
  result = qword_28127E9A0;
  if (!qword_28127E9A0)
  {
    sub_220471AB4(255, &qword_28127E9C0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127E9A0);
  }

  return result;
}

uint64_t sub_2206616E8(uint64_t a1, uint64_t a2)
{
  sub_220479F8C(0, qword_281295190, type metadata accessor for StocksActivity, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22066177C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2206617E4()
{
  if (!qword_27CF583A0)
  {
    sub_22044826C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF583A0);
    }
  }
}

uint64_t sub_22066184C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220661914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_220661974()
{
  if (!qword_27CF583C0)
  {
    sub_220466F64();
    v0 = sub_22088BD9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF583C0);
    }
  }
}

void sub_2206619D0()
{
  if (!qword_27CF583D0)
  {
    sub_22047A590();
    sub_220466F64();
    v0 = sub_22088B8FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF583D0);
    }
  }
}

void sub_220661A3C()
{
  if (!qword_27CF583E0)
  {
    sub_220466F64();
    v0 = sub_22088CB6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF583E0);
    }
  }
}

unint64_t sub_220661AD0()
{
  result = qword_27CF583E8;
  if (!qword_27CF583E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF583E8);
  }

  return result;
}

uint64_t sub_220661B28(void *a1)
{
  v2 = sub_220886D4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 horizontalSizeClass];
  v7 = objc_opt_self();
  sub_22089002C();
  (*(v3 + 104))(v6, *MEMORY[0x277D6D198], v2);
  sub_22089001C();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v10 = [v7 systemFontOfSize:v9 weight:*MEMORY[0x277D743F8]];
  v11 = sub_220891F4C();

  return v11;
}

void sub_220661CD4()
{
  sub_22044BDA4();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_22088E5CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC8StocksUI20ShareMenuItemManager_currentItem;
  swift_beginAccess();
  sub_22066240C(v0 + v10, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_220662470(v4);
    return;
  }

  (*(v6 + 32))(v9, v4, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong view];

    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = [v13 window];

    if (v14)
    {
      v15 = objc_opt_self();
      v16 = v14;
      v17 = [v15 sharedApplication];
      v18 = [v17 key_window];

      if (v18)
      {

        if (v16 == v18)
        {
          v19 = *(v0 + 16);
          v20 = OBJC_IVAR____TtC8StocksUI28ShareDynamicMenuItemProvider_menuItem;
          swift_beginAccess();
          (*(v6 + 24))(v19 + v20, v9, v5);
          swift_endAccess();
          v21 = [objc_opt_self() mainSystem];
          [v21 setNeedsRebuild];

          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

LABEL_11:
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_220662094()
{

  MEMORY[0x223D8B910](v0 + 24);
  sub_220662470(v0 + OBJC_IVAR____TtC8StocksUI20ShareMenuItemManager_currentItem);

  return swift_deallocClassInstance();
}

void sub_220662110(uint64_t a1)
{
  sub_22044BDA4();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = sub_22088E5CC();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a1, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10 = OBJC_IVAR____TtC8StocksUI20ShareMenuItemManager_currentItem;
  swift_beginAccess();
  sub_2206623A8(v6, v7 + v10);
  swift_endAccess();
  swift_unknownObjectWeakAssign();
  sub_220661CD4();
}

uint64_t sub_22066224C(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC8StocksUI20ShareMenuItemManager_currentItem;
  v5 = sub_22088E5CC();
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  *(v2 + 16) = a1;
  v6 = objc_opt_self();

  v7 = [v6 defaultCenter];
  sub_22066235C();

  v8 = sub_2208922AC();
  [v7 addObserver:v2 selector:sel_didBecomeKeyWindowScene_ name:v8 object:0];

  return v2;
}

unint64_t sub_22066235C()
{
  result = qword_28127E440;
  if (!qword_28127E440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E440);
  }

  return result;
}

uint64_t sub_2206623A8(uint64_t a1, uint64_t a2)
{
  sub_22044BDA4();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22066240C(uint64_t a1, uint64_t a2)
{
  sub_22044BDA4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220662470(uint64_t a1)
{
  sub_22044BDA4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2206624CC(void *a1, uint64_t a2)
{
  sub_22066274C();
  v5 = v4 - 8;
  *&v7 = MEMORY[0x28223BE20](v4, v6).n128_u64[0];
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 horizontalSizeClass];
  v11 = *(v5 + 56);
  v12 = sub_22088C29C();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v9[v11], a2, v12);
  if (!v10)
  {
    return (*(v13 + 8))(&v9[v11], v12);
  }

  if (v10 != 2)
  {
    if (v10 != 1)
    {
      result = sub_22089267C();
      __break(1u);
      return result;
    }

    result = (*(v13 + 88))(&v9[v11], v12);
    if (result == *MEMORY[0x277D6DDD8])
    {
      return result;
    }

    return (*(v13 + 8))(&v9[v11], v12);
  }

  result = (*(v13 + 88))(&v9[v11], v12);
  if (result != *MEMORY[0x277D6DDD8])
  {
    return (*(v13 + 8))(&v9[v11], v12);
  }

  return result;
}

void sub_22066274C()
{
  if (!qword_28127E610)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_22088C29C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127E610);
    }
  }
}

uint64_t EndOfArticleModel.contextMenu(contextMenu:model:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088778C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v5 + 16))(v9, a2, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  v11 = *MEMORY[0x277D2FB98];
  (*(v5 + 8))(v9, v4);
  if (v10 == v11 && (v12 = sub_22088777C()) != 0)
  {
    v13 = v12;
    v14 = sub_22088AAFC();
    v15 = _s5TeaUI15ContextMenuItemC06StocksB0E15openInNewWindow8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(v13);
    if (v15)
    {
      v16 = v15;
      v23 = sub_22088B17C();
      v24 = MEMORY[0x277D6D630];
      *&v22 = v16;
      sub_220457328(&v22, v21);
      v17 = v14[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v14;
      if (!isUniquelyReferenced_nonNull_native || v17 >= v14[3] >> 1)
      {
        v25 = sub_22058832C(isUniquelyReferenced_nonNull_native, v17 + 1, 1, v14);
      }

      sub_220662BF8(0, 0, 1, v21);
    }

    sub_22088AB2C();
    swift_allocObject();

    a1 = sub_22088AAAC();
    swift_unknownObjectRelease();
  }

  else
  {
  }

  return a1;
}

unint64_t sub_220662A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v13 = *v7;
  result = a5(0);
  v15 = *(result - 8);
  v16 = *(v15 + 72);
  v17 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = result;
  v29 = a6;
  v30 = a7;
  v19 = v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v20 = v19 + v16 * a1;
  result = swift_arrayDestroy();
  v21 = a3 - v17;
  if (__OFSUB__(a3, v17))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = v16 * a3;
  if (v21)
  {
    v23 = *(v13 + 16);
    if (!__OFSUB__(v23, a2))
    {
      result = v20 + v22;
      v24 = v19 + v16 * a2;
      if (v20 + v22 < v24 || result >= v24 + (v23 - a2) * v16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v24)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v26 = *(v13 + 16);
      v27 = __OFADD__(v26, v21);
      v28 = v26 + v21;
      if (!v27)
      {
        *(v13 + 16) = v28;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_220662E5C(a4, v29, v30);
  }

  if (v22 < 1)
  {
    return sub_220662E5C(a4, v29, v30);
  }

  result = (*(v15 + 16))(v20, a4, v18);
  if (v16 >= v22)
  {
    return sub_220662E5C(a4, v29, v30);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_220662BF8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  sub_22062DD90();
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 40 * a3;
      v15 = (v9 + 32 + 40 * a2);
      if (result != v15 || result >= v15 + 40 * v14)
      {
        result = memmove(result, v15, 40 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 < 1)
  {
    return sub_220662E5C(a4, &unk_27CF583F0, sub_22062DD90);
  }

  result = sub_22046DA2C(a4, v10);
  if (a3 == 1)
  {
    return sub_220662E5C(a4, &unk_27CF583F0, sub_22062DD90);
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_220662D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_22088516C();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_220662E5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_220454F44(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TickerCollectionModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TickerCollectionModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_220662F9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_220662FF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_2206630A8(void *a1, void (*a2)(char *))
{
  sub_2204EEA80(0, &qword_281297858, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v13 - v9;
  *(&v13 - v9) = a1;
  (*(v6 + 104))(&v13 - v9, *MEMORY[0x277D6DF68], v5, v8);
  v11 = a1;
  a2(v10);
  return (*(v6 + 8))(v10, v5);
}

uint64_t StockChartLoadingState.$state.getter()
{

  v0 = sub_220888AEC();

  return v0;
}

uint64_t StockChartLoadingState.state.getter()
{

  sub_220888ACC();

  return v1;
}

uint64_t sub_2206632AC@<X0>(void *a1@<X8>)
{

  sub_220888ACC();

  *a1 = v3;
  return result;
}

uint64_t sub_2206632FC(void **a1)
{
  v1 = *a1;

  sub_2206633A8(v1);
  sub_220888ADC();
}

void StockChartLoadingState.state.setter(void *a1)
{

  sub_2206633A8(a1);
  sub_220888ADC();

  sub_2206633B8(a1);
}

id sub_2206633A8(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

void sub_2206633B8(id a1)
{
  if (a1 >= 3)
  {
  }
}

void (*StockChartLoadingState.state.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = *(v1 + 16);

  *(v4 + 40) = sub_220888ABC();
  return sub_22066344C;
}

void sub_22066344C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t StockChartLoadingState.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_220663558();
  swift_allocObject();
  *(v0 + 16) = sub_220888AAC();
  return v0;
}

uint64_t StockChartLoadingState.init()()
{
  sub_220663558();
  swift_allocObject();
  *(v0 + 16) = sub_220888AAC();
  return v0;
}

void sub_220663558()
{
  if (!qword_281298750)
  {
    v0 = sub_220888B0C();
    if (!v1)
    {
      atomic_store(v0, &qword_281298750);
    }
  }
}

uint64_t StockChartLoadingState.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t StockChartLoadingState.description.getter()
{

  sub_220888ACC();

  if (!v2)
  {
    v0 = 1953063287;
    return v0 | 0x676E6900000000;
  }

  if (v2 == 2)
  {
    return 0x64656873696E6966;
  }

  if (v2 == 1)
  {
    v0 = 1684107116;
    return v0 | 0x676E6900000000;
  }

  sub_2206633B8(v2);
  return 0x64656C696166;
}

uint64_t get_enum_tag_for_layout_string_8StocksUI22StockChartLoadingStateC0F0O(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_220663714(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220663770(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_2206637C0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_2206637F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22088DA1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  if (v12)
  {
    v13 = *a1;
    v14 = 0.0;
    v15 = &off_27844B000;
    if (*(a2 + *(type metadata accessor for StockListSectionHeaderViewLayoutOptions() + 20)) == 1)
    {
      v16 = sub_22088C28C();
      v17 = [v16 horizontalSizeClass];

      v15 = &off_27844B000;
      if (v17 <= 2)
      {
        v14 = dbl_2208A6368[v17];
      }
    }

    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    sub_220582FE8(v43);
    sub_2206F4994(v13, v12, v43, v44);
    sub_220663CB4(v43);
    v18 = *&v44[5];
    sub_22088C20C();
    v20 = v19;
    v21 = sub_22088C28C();
    v22 = [v21 v15[436]];

    v23 = 16.0;
    if (v22 != 2)
    {
      v23 = v20;
    }

    v24 = v23 - v18;
    v25 = *&v44[2];
    v26 = *&v44[3];
    sub_22088C1DC();
    sub_22088D9EC();
    v28 = v27;
    v30 = v29;
    (*(v8 + 8))(v11, v7);
    sub_22088C21C();
    v32 = v31 - (v28 + v30);
    v45.origin.x = v24;
    v45.origin.y = v14;
    v45.size.width = v25;
    v45.size.height = v26;
    CGRectGetHeight(v45);
    MEMORY[0x28223BE20](v33, v34);
    *&v41[-5] = 0;
    *(&v41[-5] + 1) = 0;
    *&v41[-4] = v32;
    *(&v41[-4] + 1) = v35;
    *&v41[-3] = v24;
    *(&v41[-3] + 1) = v14;
    *&v41[-2] = v25;
    *(&v41[-2] + 1) = v26;
    *&v41[-1] = a2;
    sub_22088C19C();
    v36 = v41[0];
    v37 = v41[1];
    v38 = v41[2];
    v39 = v41[3];
    result = v42;
  }

  else
  {
    result = sub_22088C28C();
    v36 = 0uLL;
    v37 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
  }

  *a3 = v36;
  *(a3 + 16) = v37;
  *(a3 + 32) = v38;
  *(a3 + 48) = v39;
  *(a3 + 64) = result;
  return result;
}

uint64_t sub_220663AD4@<X0>(void *a1@<X8>)
{
  v2 = sub_22088ABEC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x277D6D320];
  v9 = *(v3 + 104);
  v9(v7, v8, v2, v5);
  sub_22088ABDC();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *(v3 + 8);
  v18(v7, v2);
  (v9)(v7, v8, v2);
  sub_22088ABDC();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v18(v7, v2);
  result = sub_22088C28C();
  *a1 = v11;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v17;
  a1[4] = v20;
  a1[5] = v22;
  a1[6] = v24;
  a1[7] = v26;
  a1[8] = result;
  return result;
}

char *sub_220663D20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_220884E9C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v30[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC8StocksUI24WebViewControllerFactory_resolver), *(v2 + OBJC_IVAR____TtC8StocksUI24WebViewControllerFactory_resolver + 24));
  sub_2204446D4(0, &qword_2812877A0);
  result = sub_2208884DC();
  if (v34)
  {
    sub_220457328(&v33, v35);
    (*(v7 + 16))(v10, a1, v6);
    sub_22046DA2C(v35, &v33);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v34);
    v13 = MEMORY[0x28223BE20](v12, v12);
    v15 = (&v30[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v31 = type metadata accessor for WebViewControllerStyler();
    v32 = &off_283415E08;
    v30[0] = v17;
    v18 = objc_allocWithZone(type metadata accessor for WebViewController());
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    v20 = MEMORY[0x28223BE20](v19, v19);
    v22 = (&v30[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    v24 = sub_2206642A4(v10, *v22, v18);
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(&v33);
    v25 = v24;
    result = [v25 view];
    if (result)
    {
      v26 = result;
      [result setAutoresizingMask_];

      v27 = OBJC_IVAR____TtC8StocksUI17WebViewController_webViewCoordinator;
      swift_beginAccess();
      sub_220664420(a2, &v25[v27]);
      swift_endAccess();
      *&v25[OBJC_IVAR____TtC8StocksUI17WebViewController_navigator] = *(v3 + OBJC_IVAR____TtC8StocksUI24WebViewControllerFactory_navigator);

      __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC8StocksUI24WebViewControllerFactory_sceneStateManager), *(v3 + OBJC_IVAR____TtC8StocksUI24WebViewControllerFactory_sceneStateManager + 24));
      sub_220664484();
      v28 = v25;
      sub_220888BFC();

      __swift_destroy_boxed_opaque_existential_1(&v33);
      __swift_destroy_boxed_opaque_existential_1(v35);
      return v28;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_2206642A4(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v16[3] = type metadata accessor for WebViewControllerStyler();
  v16[4] = &off_283415E08;
  v16[0] = a2;
  v7 = &a3[OBJC_IVAR____TtC8StocksUI17WebViewController_webViewCoordinator];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *&a3[OBJC_IVAR____TtC8StocksUI17WebViewController_navigator] = 0;
  v8 = OBJC_IVAR____TtC8StocksUI17WebViewController_session;
  v9 = type metadata accessor for WebViewSession();
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  sub_22046DA2C(v16, &a3[OBJC_IVAR____TtC8StocksUI17WebViewController_styler]);
  v10 = sub_220884E3C();
  v11 = [objc_allocWithZone(MEMORY[0x277CDB708]) init];
  v15.receiver = a3;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, sel_initWithURL_configuration_, v10, v11);

  v13 = sub_220884E9C();
  (*(*(v13 - 8) + 8))(a1, v13);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v12;
}

uint64_t sub_220664420(uint64_t a1, uint64_t a2)
{
  sub_220615568();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_220664484()
{
  result = qword_27CF58428;
  if (!qword_27CF58428)
  {
    type metadata accessor for WebViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58428);
  }

  return result;
}

uint64_t sub_2206644DC()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_220664594()
{
  sub_22089146C();
}

uint64_t sub_220664638()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_2206646EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220664908();
  *a1 = result;
  return result;
}

void sub_22066471C(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007365;
  v3 = 0x69726F7453706F74;
  v4 = 0xE700000000000000;
  v5 = 0x64657461727563;
  if (*v1 != 2)
  {
    v5 = 25697;
    v4 = 0xE200000000000000;
  }

  if (*v1)
  {
    v3 = 0x6B636F7473;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_220664794()
{
  result = qword_28128FE70;
  if (!qword_28128FE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128FE70);
  }

  return result;
}

unint64_t sub_2206648A4()
{
  result = qword_28128FE68;
  if (!qword_28128FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128FE68);
  }

  return result;
}

uint64_t sub_220664908()
{
  v0 = sub_22089270C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_220664968()
{
  result = qword_27CF58430;
  if (!qword_27CF58430)
  {
    sub_2206649C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58430);
  }

  return result;
}

void sub_2206649C0()
{
  if (!qword_27CF58438)
  {
    v0 = sub_2208917AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF58438);
    }
  }
}

uint64_t sub_220664A10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *(a3 + OBJC_IVAR____TtC8StocksUI15QuoteDetailView_scrollView);
  [v8 setFrame_];
  v9 = *(a2 + 200);
  v10 = *(a2 + 208);
  [v8 setContentSize_];
  [v8 setContentInset_];
  if (*(a2 + 264))
  {
    v11 = *&v4 + OBJC_IVAR____TtC8StocksUI23QuoteDetailViewRenderer_lastKnownContentOffset;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
  }

  v12 = (*&v4 + OBJC_IVAR____TtC8StocksUI23QuoteDetailViewRenderer_lastKnownContentOffset);
  v13 = *(*&v4 + OBJC_IVAR____TtC8StocksUI23QuoteDetailViewRenderer_lastKnownContentOffset + 16);
  v100 = a3;
  v101 = a1;
  if (v13)
  {
    [v8 contentOffset];
    sub_220891FFC();
  }

  else
  {
    v14 = *v12;
    v15 = v12[1];
  }

  [v8 setContentOffset_];
  v98 = v4;
  [v8 setDelegate_];
  v16 = *(a2 + 64);
  v102 = v8;
  [v8 setScrollEnabled_];
  v99 = *&a2;
  v17 = *(a2 + 88);
  v18 = *(v17 + 16);
  v106 = MEMORY[0x277D84F90];
  v19 = type metadata accessor for QuoteDetailColumnAccessibilityElement();
  v97 = v17;

  v20 = v18 + 1;
  do
  {
    v21 = [objc_allocWithZone(v19) initWithAccessibilityContainer_];
    [v21 setIsAccessibilityElement_];
    [v21 setShouldGroupAccessibilityChildren_];
    [v102 bounds];
    [v21 setAccessibilityFrameInContainerSpace_];
    v22 = sub_2208916DC();
    v105.receiver = v21;
    v105.super_class = v19;
    objc_msgSendSuper2(&v105, sel_setAccessibilityElements_, v22);

    MEMORY[0x223D89870]();
    if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22089177C();
    }

    sub_22089179C();

    --v20;
  }

  while (v20);
  v104 = MEMORY[0x277D84F98];
  MEMORY[0x28223BE20](v23, v24);
  v25 = v99;
  *v92 = v99;
  v92[1] = &v106;
  v26 = v98;
  v27 = v100;
  v93 = v98;
  v94 = v100;
  v28 = v101;
  v95 = v101;
  v96 = COERCE_DOUBLE(&v104);
  sub_220749764(sub_220666D20, &v91);
  MEMORY[0x28223BE20](v29, v30);
  v93 = v25;
  v94 = &v104;
  v95 = v28;
  v96 = v26;
  sub_220749770(sub_220666D30, v92);
  v31 = *(v27 + OBJC_IVAR____TtC8StocksUI15QuoteDetailView_separatorsView);
  [v31 setFrame_];
  v32 = (*&v26 + OBJC_IVAR____TtC8StocksUI23QuoteDetailViewRenderer_styler);
  swift_beginAccess();
  v33 = __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  v35 = *(*v33 + 40);
  v34 = *(*v33 + 48);
  __swift_project_boxed_opaque_existential_1((*v33 + 16), v35);
  v36 = (*(*(v34 + 16) + 168))(v35);
  v37 = [v31 layer];
  objc_opt_self();
  v38 = swift_dynamicCastObjCClassUnconditional();
  v39 = [v36 CGColor];
  [v38 setFillColor_];

  sub_22044D56C(0, &qword_28127E8B0);
  v40 = sub_220665E28(v97);
  v41 = [v31 layer];
  objc_opt_self();
  v42 = swift_dynamicCastObjCClassUnconditional();
  v43 = [v40 CGPath];
  [v42 setPath_];

  if (*(*&v25 + 192))
  {
    [*(v27 + OBJC_IVAR____TtC8StocksUI15QuoteDetailView_attributionButton) setHidden_];
  }

  else
  {
    v97 = *(*&v25 + 168);
    v98 = *(*&v25 + 184);
    v45 = *(*&v25 + 144);
    v44 = *(*&v25 + 152);
    v47 = *(*&v25 + 128);
    v46 = *(*&v25 + 136);
    v49 = *(*&v25 + 112);
    v48 = *(*&v25 + 120);
    v51 = *(*&v25 + 96);
    v50 = *(*&v25 + 104);
    v52 = (v101 + *(type metadata accessor for QuoteDetailViewModel() + 24));
    v101 = *v52;
    [*(v27 + OBJC_IVAR____TtC8StocksUI15QuoteDetailView_attributionButtonContainerView) setFrame_];
    v53 = *(v27 + OBJC_IVAR____TtC8StocksUI15QuoteDetailView_attributionButton);
    [v53 setFrame_];
    v54 = v52[2];
    if (v54)
    {
      v55 = v54;
      [v53 setImage:v55 forState:0];
      v107.origin.x = v51;
      v107.origin.y = v50;
      v107.size.width = v49;
      v107.size.height = v48;
      Height = CGRectGetHeight(v107);
      [v55 size];
      [v53 setImageEdgeInsets_];
      [v53 setSemanticContentAttribute_];
    }

    sub_220835088(v53);
    v58 = *__swift_project_boxed_opaque_existential_1(v32, v32[3]);
    sub_2204A5DF0();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220899920;
    v60 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v61 = sub_22044D56C(0, &qword_28127E570);
    v62 = v60;
    v63 = sub_220891F2C();
    v64 = MEMORY[0x277D740C0];
    *(inited + 40) = v63;
    v65 = *v64;
    *(inited + 64) = v61;
    *(inited + 72) = v65;
    v66 = v58[5];
    v67 = v58[6];
    __swift_project_boxed_opaque_existential_1(v58 + 2, v66);
    v68 = *(v67 + 16);
    v69 = v53;
    v70 = *(v68 + 128);
    v71 = v65;
    v72 = v70(v66, v68);
    *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
    *(inited + 80) = v72;
    sub_2204A5EAC(inited);
    swift_setDeallocating();
    sub_2204A5D84();
    swift_arrayDestroy();
    v73 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v74 = sub_22089132C();
    type metadata accessor for Key(0);
    sub_220666DD0(&qword_28127E6A8, 255, type metadata accessor for Key);
    v75 = sub_22089125C();

    v76 = [v73 initWithString:v74 attributes:v75];

    [v69 setAttributedTitle:v76 forState:0];
    [v69 setHidden_];
  }

  v77 = v106;
  if (v106 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2208926AC())
  {
    v79 = 0;
    while (1)
    {
      if ((v77 & 0xC000000000000001) != 0)
      {
        v80 = MEMORY[0x223D8A700](v79, v77);
      }

      else
      {
        if (v79 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v80 = *(v77 + 8 * v79 + 32);
      }

      v81 = v80;
      v82 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        break;
      }

      v83 = [v80 accessibilityElements];
      if (v83)
      {
        v84 = v83;
        v85 = sub_2208916EC();

        v86 = sub_2205D88BC(v85);

        if (v86)
        {

          v103 = sub_220666D3C(v87);
          sub_22066615C(&v103);

          sub_2205AF758(v103);

          v88 = sub_2208916DC();

          [v81 setAccessibilityElements_];
        }
      }

      ++v79;
      if (v82 == i)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

LABEL_30:
  sub_2205AF758(v77);
  v89 = sub_2208916DC();

  [v102 setAccessibilityElements_];
}

uint64_t sub_2206654A4(unsigned __int8 a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, char *a7, void *a8)
{
  v13 = *(a3 + 72);
  if (!*(v13 + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  v10 = a8;
  v11 = a5;
  v8 = a2;
  v12 = a1;
  v16 = sub_2205CDFF4(a1);
  if ((v17 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = *(v13 + 56) + 48 * v16;
  v19 = *v18;
  v20 = *(v18 + 8);
  v21 = *(v18 + 16);
  v22 = *(v18 + 24);
  v13 = *(v18 + 40);
  v9 = *(v18 + 32);
  [v8 setFrame_];
  [v8 setIsAccessibilityElement_];
  v23 = *a4;
  if ((*a4 & 0xC000000000000001) == 0)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v13 < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = *(v23 + 8 * v13 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_21:
    v13 = sub_220588200(0, *(v13 + 16) + 1, 1, v13);
    goto LABEL_9;
  }

LABEL_18:
  v24 = MEMORY[0x223D8A700](v13);
LABEL_7:
  v25 = v24;
  v26 = type metadata accessor for QuoteDetailViewLabelAccessibilityElement();
  v27 = [objc_allocWithZone(v26) initWithAccessibilityContainer_];
  *&v27[OBJC_IVAR____TtC8StocksUI40QuoteDetailViewLabelAccessibilityElement_delegate + 8] = &off_283419450;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v28 = v27;
  sub_220635404(v12);

  v29 = sub_22089132C();

  [v28 setAccessibilityLabel_];

  a7 = v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v60 = *v10;
  *v10 = 0x8000000000000000;
  sub_2207CF68C(a7, v12, isUniquelyReferenced_nonNull_native);
  *v10 = v60;
  v10 = v25;
  v31 = [v10 accessibilityElements];
  if (!v31)
  {
    [v10 setAccessibilityElements_];

    goto LABEL_13;
  }

  v32 = v31;
  v13 = sub_2208916EC();

  v61 = v26;
  *&v60 = a7;
  v33 = a7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  v35 = *(v13 + 16);
  v34 = *(v13 + 24);
  if (v35 >= v34 >> 1)
  {
    v13 = sub_220588200((v34 > 1), v35 + 1, 1, v13);
  }

  *(v13 + 16) = v35 + 1;
  sub_2204A62A4(&v60, (v13 + 32 * v35 + 32));
  v36 = sub_2208916DC();

  [v10 setAccessibilityElements_];

LABEL_13:
  v59 = v8;
  v37 = OBJC_IVAR____TtC8StocksUI23QuoteDetailViewRenderer_styler;
  swift_beginAccess();
  sub_22046DA2C(v11 + v37, &v60);
  v38 = __swift_project_boxed_opaque_existential_1(&v60, v61);
  v39 = [v9 string];
  v58 = v9;
  if (!v39)
  {
    sub_22089136C();
    v39 = sub_22089132C();
  }

  v40 = *v38;
  sub_2204A5DF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v42 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v43 = sub_22044D56C(0, &qword_28127E570);
  v44 = v42;
  v45 = sub_220891F2C();
  v46 = MEMORY[0x277D740C0];
  *(inited + 40) = v45;
  v47 = *v46;
  *(inited + 64) = v43;
  *(inited + 72) = v47;
  v49 = v40[5];
  v48 = v40[6];
  __swift_project_boxed_opaque_existential_1(v40 + 2, v49);
  v50 = *(v48 + 16);
  v51 = *(v50 + 216);
  v52 = v47;
  v53 = v51(v49, v50);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v53;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v54 = objc_allocWithZone(MEMORY[0x277CCA898]);
  type metadata accessor for Key(0);
  sub_220666DD0(&qword_28127E6A8, 255, type metadata accessor for Key);
  v55 = sub_22089125C();

  v56 = [v54 initWithString:v39 attributes:v55];

  [v59 setAttributedText_];
  return __swift_destroy_boxed_opaque_existential_1(&v60);
}

unint64_t sub_220665A60(unint64_t result, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a3 + 80);
  if (!*(v6 + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = result;
  result = sub_2205CDFF4(result);
  if ((v11 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v12 = *(v6 + 56) + 48 * result;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v16 = *(v12 + 24);
  v17 = *(v12 + 32);
  [a2 setFrame_];
  [a2 setIsAccessibilityElement_];
  v18 = *a4;
  if (*(*a4 + 16))
  {
    v19 = sub_2205CDFF4(v10);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 8 * v19);
      swift_unknownObjectWeakAssign();
      v22 = v21;
      sub_220635F94(v10, 1);
      v23 = sub_22089132C();

      [v22 setAccessibilityValue_];
    }
  }

  v24 = OBJC_IVAR____TtC8StocksUI23QuoteDetailViewRenderer_styler;
  swift_beginAccess();
  sub_22046DA2C(a6 + v24, v44);
  v25 = __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  v26 = [v17 string];
  if (!v26)
  {
    sub_22089136C();
    v26 = sub_22089132C();
  }

  v27 = *v25;
  sub_2204A5DF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v29 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v30 = sub_22044D56C(0, &qword_28127E570);
  v31 = v29;
  v32 = sub_220891F3C();
  v33 = MEMORY[0x277D740C0];
  *(inited + 40) = v32;
  v34 = *v33;
  *(inited + 64) = v30;
  *(inited + 72) = v34;
  v35 = v27[5];
  v36 = v27[6];
  __swift_project_boxed_opaque_existential_1(v27 + 2, v35);
  v37 = *(v36 + 16);
  v38 = *(v37 + 40);
  v39 = v34;
  v40 = v38(v35, v37);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v40;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v41 = objc_allocWithZone(MEMORY[0x277CCA898]);
  type metadata accessor for Key(0);
  sub_220666DD0(&qword_28127E6A8, 255, type metadata accessor for Key);
  v42 = sub_22089125C();

  v43 = [v41 initWithString:v26 attributes:v42];

  [a2 setAttributedText_];
  return __swift_destroy_boxed_opaque_existential_1(v44);
}

id sub_220665E28(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = (a1 + 56);
    do
    {
      v6 = [v4 bezierPathWithRect_];
      [v2 appendPath_];

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [v2 CGPath];
  v9 = [ObjCClassFromMetadata bezierPathWithCGPath_];

  return v9;
}

uint64_t sub_220665FA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC8StocksUI23QuoteDetailViewRenderer_styler;
  swift_beginAccess();
  sub_22046DA2C(v3 + v5, v14);
  v6 = v15;
  v7 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v8 = *(v7 + 8);
  v9 = *(v8 + 8);
  v12 = v6;
  v13 = v7;
  __swift_allocate_boxed_opaque_existential_1(&v11);
  v9(a2, v6, v8);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v3 + v5);
  sub_220457328(&v11, v3 + v5);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_220666104(uint64_t a1, uint64_t a2)
{
  result = sub_220666DD0(&qword_28128B448, a2, type metadata accessor for QuoteDetailViewRenderer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22066615C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2207D31C0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2206661D8(v6);
  return sub_2208925DC();
}

void sub_2206661D8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22089286C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22044D56C(0, &qword_28127E670);
        v6 = sub_22089178C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_2206663E8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2206662EC(0, v2, 1, a1);
  }
}

void sub_2206662EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 accessibilityFrameInContainerSpace];
      v15 = v14;
      [v13 accessibilityFrameInContainerSpace];
      v17 = v16;

      if (v15 >= v17)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_2206663E8(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_2207D2DE0(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_220666A60((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2207D2DE0(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_2207D2D54(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 accessibilityFrameInContainerSpace];
      v19 = v18;
      [v17 accessibilityFrameInContainerSpace];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 accessibilityFrameInContainerSpace];
        v27 = v26;
        [v25 accessibilityFrameInContainerSpace];
        v29 = v28;

        ++v22;
        ++v14;
        if (v19 < v21 == v27 >= v29)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v19 < v21)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = (v9 + a4);
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_220587F84(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_220587F84((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_220666A60((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2207D2DE0(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_2207D2D54(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 accessibilityFrameInContainerSpace];
    v48 = v47;
    [v46 accessibilityFrameInContainerSpace];
    v50 = v49;

    if (v48 >= v50)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if ((v110 + 1) != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}