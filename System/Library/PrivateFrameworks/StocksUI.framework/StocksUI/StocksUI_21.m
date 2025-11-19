uint64_t sub_2206C436C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *sub_2206C43D8()
{
  v1 = *v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x277D765F0] object:0];

  sub_22054B9F8((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_2206C4504()
{
  sub_2206C43D8();

  return swift_deallocClassInstance();
}

uint64_t sub_2206C455C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2206C45BC(a1);
  }

  return result;
}

uint64_t sub_2206C45BC(uint64_t a1)
{
  (*(*(*v1 + 88) + 56))(a1, *(*v1 + 80));
  sub_2204E57D0();
  sub_220483C6C(&qword_281297D48, sub_2204E57D0);
  sub_22088B6DC();
}

uint64_t sub_2206C46B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2206C53A0();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_22088C6AC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    (*(v12 + 16))(v15, a1, v11);
    v18 = (*(v12 + 88))(v15, v11);
    if (v18 == *MEMORY[0x277D6DF98])
    {
      (*(v12 + 8))(v15, v11);
      v19 = *(*v17 + 128);
      sub_2208903FC();
      v20 = sub_22089030C();
      if ((*(*(v20 - 8) + 48))(v10, 1, v20) != 1)
      {
        v21 = *(v17 + v19);
        v22 = swift_allocObject();
        swift_beginAccess();
        swift_weakLoadStrong();
        swift_weakInit();
        v23 = v21;

        v24 = swift_allocObject();
        v24[2] = a3;
        v24[3] = a4;
        v24[4] = v22;

        return sub_2206C5408(v10);
      }
    }

    else
    {
      if (v18 != *MEMORY[0x277D6DF90] && v18 != *MEMORY[0x277D6DFA0])
      {
        result = sub_22089267C();
        __break(1u);
        return result;
      }

      swift_unknownObjectRetain();
      sub_22057CE94();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2206C4A18(uint64_t a1)
{
  v2 = sub_22088AF8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206C53A0();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2206C5464(a1, v10);
    v12 = sub_22089030C();
    if ((*(*(v12 - 8) + 48))(v10, 1, v12) == 1)
    {
      sub_2206C5408(v10);
      sub_22088B6BC();
      sub_22088B71C();

      if ((*(v3 + 88))(v6, v2) == *MEMORY[0x277D6D520])
      {
        v13 = (*(v3 + 8))(v6, v2);
        sub_2204E6914(v13);
      }

      else
      {

        return (*(v3 + 8))(v6, v2);
      }
    }

    else
    {

      return sub_2206C5408(v10);
    }
  }

  return result;
}

uint64_t sub_2206C4C3C()
{
  (*(*(*v0 + 88) + 48))(*(*v0 + 80));
  sub_2204E57D0();
  sub_220483C6C(&qword_281297D48, sub_2204E57D0);
  sub_22088B6DC();
}

uint64_t sub_2206C4D34()
{
  v0 = sub_220884A6C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220884A5C();

  sub_2206C4D30();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2206C4E20(uint64_t a1, uint64_t a2)
{
  (*(*(*a1 + 88) + 64))(a2, *(*a1 + 80));
  sub_2204E57D0();
  sub_220483C6C(&qword_281297D48, sub_2204E57D0);
  sub_22088B6DC();
}

uint64_t sub_2206C4F1C(uint64_t a1)
{
  (*(*(*a1 + 88) + 72))(*(*a1 + 80));
  sub_2204E57D0();
  sub_220483C6C(&qword_281297D48, sub_2204E57D0);
  sub_22088B6DC();
}

uint64_t sub_2206C5010(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 88);
  v3 = *(*a1 + 80);
  (*(v2 + 80))(a2, v3, v2);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v4;
  sub_2204E57D0();
  sub_220483C6C(&qword_281297D48, sub_2204E57D0);

  sub_22088B6DC();
}

uint64_t sub_2206C5188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22088C6AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v7 + 104))(v10, *MEMORY[0x277D6DFA0], v6);
    v12 = sub_22088C69C();
    (*(v7 + 8))(v10, v6);
    if (v12)
    {
      v13 = (*(a4 + 72))(a3, a4);
      sub_2204E57D0();
      sub_220483C6C(&qword_281297D48, sub_2204E57D0);
      sub_22088B6DC();
    }
  }

  return result;
}

void sub_2206C53A0()
{
  if (!qword_2812968B8)
  {
    sub_2204850C0();
    v0 = sub_2208903EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2812968B8);
    }
  }
}

uint64_t sub_2206C5408(uint64_t a1)
{
  sub_2206C53A0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2206C5464(uint64_t a1, uint64_t a2)
{
  sub_2206C53A0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206C54C8()
{

  sub_220888FEC();
}

uint64_t sub_2206C5514(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_2208857BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v8);
  v9 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = *(v3 + 80);
  *(v10 + 3) = *(v3 + 88);
  *(v10 + 4) = v1;
  (*(v5 + 32))(&v10[v9], &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_220888FEC();
}

uint64_t sub_2206C5688(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_22088582C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v8);
  v9 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = *(v3 + 80);
  *(v10 + 3) = *(v3 + 88);
  *(v10 + 4) = v1;
  (*(v5 + 32))(&v10[v9], &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_220888FEC();
}

uint64_t objectdestroy_14Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2206C5934(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 32);
  v5 = v2 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return a2(v4, v5);
}

id sub_2206C59B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_dateFormatter;
  v10 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v11 = sub_22089132C();
  [v10 setDateFormat_];

  *&v4[v9] = v10;
  *&v4[OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_sessions] = MEMORY[0x277D84F90];
  sub_22046DA2C(a1, &v4[OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_headlineService]);
  *&v4[OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_sessionDataProvider] = a2;
  sub_22046DA2C(a3, &v4[OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_tagService]);
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

void sub_2206C5BF0(char a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidAppear_, a1 & 1);
  sub_22088A6AC();
  sub_22044D56C(0, &qword_28127E7C0);
  v4 = sub_220891D0C();
  *(swift_allocObject() + 16) = v2;
  v5 = v2;
  sub_220888E4C();

  v6 = sub_220888D9C();
  sub_220888E9C();
}

void sub_2206C5D20(uint64_t *a1, char *a2)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_sessions;
  swift_beginAccess();
  *&a2[v4] = v3;

  v5 = [a2 tableView];
  if (v5)
  {
    v6 = v5;
    [v5 reloadData];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2206C5DC4()
{
  sub_2206C8354();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_220899360;
  sub_22089254C();
  MEMORY[0x223D89680](0xD000000000000019, 0x80000002208CE410);
  sub_22058D5E8();
  sub_22089264C();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_2208929CC();
}

uint64_t sub_2206C5F64()
{
  v1 = v0;
  v2 = sub_22088516C();
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088549C();
  if (v7 == 1)
  {
    type metadata accessor for SubtitleCell();
    v8 = sub_2208919EC();
    v9 = sub_22088547C();
    v10 = OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_sessions;
    swift_beginAccess();
    v11 = *(v1 + v10);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x223D8A700](v9);
      goto LABEL_6;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v11 + 8 * v9 + 32);
LABEL_6:
      v13 = v12;
      swift_endAccess();
      v9 = v8;
      v14 = [v9 textLabel];
      if (v14)
      {
        v15 = v14;
        v16 = *(v1 + OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_dateFormatter);
        sub_22088F19C();
        v17 = sub_22088509C();
        (*(v3 + 8))(v6, v2);
        v18 = [v16 stringFromDate_];

        sub_22089136C();
        v19 = sub_22089132C();

        [v15 setText_];
      }

      v20 = [v9 detailTextLabel];
      if (v20)
      {
        v21 = v20;
        v22 = objc_opt_self();
        v23 = [v22 stringFromByteCount:sub_22088F1AC() countStyle:0];
        if (!v23)
        {
          sub_22089136C();
          v23 = sub_22089132C();
        }

        [v21 setText_];
      }

      [v9 setAccessoryType_];
      v2 = v9;
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (!v7)
  {
    sub_22044D56C(0, &qword_27CF58B38);
    v2 = sub_2208919EC();
    v24 = [v2 textLabel];
    if (!v24)
    {
      return v2;
    }

    v9 = v24;
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_22089254C();
    v8 = OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_sessions;
    swift_beginAccess();
    v25 = *&v8[v0];
    if (!(v25 >> 62))
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
      v38 = v26;
      v27 = sub_22089287C();
      v29 = v28;

      v39 = v27;
      v40 = v29;
      MEMORY[0x223D89680](0x6E6F697373657320, 0xE800000000000000);
      v30 = *&v8[v1];
      if (v30 >> 62)
      {
        v31 = sub_2208926AC();
      }

      else
      {
        v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v32 = v31 == 1;
      if (v31 == 1)
      {
        v33 = 0;
      }

      else
      {
        v33 = 115;
      }

      if (v32)
      {
        v34 = 0xE000000000000000;
      }

      else
      {
        v34 = 0xE100000000000000;
      }

      MEMORY[0x223D89680](v33, v34);

      MEMORY[0x223D89680](8236, 0xE200000000000000);
      v35 = sub_22088A6BC();
      MEMORY[0x223D89680](v35);

      v13 = sub_22089132C();

      [v9 setText_];
LABEL_26:

      return v2;
    }

LABEL_31:
    v26 = sub_2208926AC();
    goto LABEL_17;
  }

  v41 = 0;
  v42 = 0xE000000000000000;
  sub_22089254C();

  v41 = 0xD000000000000022;
  v42 = 0x80000002208CE3C0;
  v39 = sub_22088549C();
  v37 = sub_22089287C();
  MEMORY[0x223D89680](v37);

  result = sub_22089267C();
  __break(1u);
  return result;
}

void sub_2206C65B8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_220888C8C();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v8 = sub_22088E55C();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2208854AC();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v54 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22066B130(0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v52 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_22088A71C();
  v17 = *(v53 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v53, v19);
  v51 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v44 - v22;
  if (sub_22088549C() == 1)
  {
    v45 = a1;
    v46 = v11;
    v24 = sub_22088547C();
    v25 = OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_sessions;
    swift_beginAccess();
    v26 = *&v3[v25];
    if ((v26 & 0xC000000000000001) == 0)
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v24 < *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v27 = *(v26 + 8 * v24 + 32);
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    }

    v27 = MEMORY[0x223D8A700](v24);
LABEL_6:
    v28 = v27;
    swift_endAccess();
    sub_22088A6CC();

    v29 = sub_22088544C();
    v30 = v45;
    v31 = [v45 cellForRowAtIndexPath_];

    if (v31)
    {
      v32 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
      [v31 setAccessoryView_];

      v33 = sub_22089180C();
      (*(*(v33 - 8) + 56))(v52, 1, 1, v33);
      (*(v17 + 16))(v51, v23, v53);
      v34 = v47;
      (*(v47 + 16))(v54, a2, v46);
      sub_2208917EC();
      v50 = v3;
      v35 = v30;
      v36 = sub_2208917DC();
      v37 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v38 = (v18 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
      v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
      v40 = (*(v34 + 80) + v39 + 8) & ~*(v34 + 80);
      v41 = swift_allocObject();
      v42 = MEMORY[0x277D85700];
      *(v41 + 16) = v36;
      *(v41 + 24) = v42;
      v43 = v53;
      (*(v17 + 32))(v41 + v37, v51, v53);
      *(v41 + v38) = v50;
      *(v41 + v39) = v35;
      (*(v34 + 32))(v41 + v40, v54, v46);
      sub_2206830F8(0, 0, v52, &unk_2208AAAB0, v41);

      (*(v17 + 8))(v23, v43);
      return;
    }

LABEL_12:
    __break(1u);
  }
}

uint64_t sub_2206C6C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v9 = sub_2208854AC();
  v7[5] = v9;
  v10 = *(v9 - 8);
  v7[6] = v10;
  v7[7] = *(v10 + 64);
  v7[8] = swift_task_alloc();
  sub_22066B130(0);
  v7[9] = swift_task_alloc();
  v11 = sub_220888C8C();
  v7[10] = v11;
  v12 = *(v11 - 8);
  v7[11] = v12;
  v7[12] = *(v12 + 64);
  v7[13] = swift_task_alloc();
  v13 = swift_task_alloc();
  v7[14] = v13;
  v7[15] = sub_2208917EC();
  v7[16] = sub_2208917DC();
  v14 = OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_headlineService;
  v15 = OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_tagService;
  v16 = swift_task_alloc();
  v7[17] = v16;
  *v16 = v7;
  v16[1] = sub_2206C6DFC;

  return MEMORY[0x2821CF508](v13, a5 + v14, a5 + v15);
}

uint64_t sub_2206C6DFC()
{
  *(*v1 + 144) = v0;

  v3 = sub_2208917CC();
  if (v0)
  {
    v4 = sub_2206C71B8;
  }

  else
  {
    v4 = sub_2206C6F58;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_2206C6F58()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v5 = v0[9];
  v4 = v0[10];
  v28 = v1;
  v29 = v5;
  v6 = v0[8];
  v25 = v6;
  v26 = v2;
  v27 = v0[7];
  v8 = v0[5];
  v7 = v0[6];
  v23 = v8;
  v24 = v4;
  v9 = v0[4];
  v21 = v0[3];
  v22 = v0[2];

  v10 = sub_22089180C();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  (*(v7 + 16))(v6, v9, v8);
  (*(v3 + 16))(v2, v1, v4);
  v11 = v21;
  v12 = v22;
  v13 = sub_2208917DC();
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = (v27 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (*(v3 + 80) + v15 + 8) & ~*(v3 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 2) = v13;
  *(v17 + 3) = v18;
  *(v17 + 4) = v11;
  (*(v7 + 32))(&v17[v14], v25, v23);
  *&v17[v15] = v12;
  (*(v3 + 32))(&v17[v16], v26, v24);
  sub_2206830F8(0, 0, v29, &unk_2208AAAD0, v17);

  (*(v3 + 8))(v28, v24);

  v19 = v0[1];

  return v19();
}

uint64_t sub_2206C71B8()
{
  v1 = v0[18];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v21 = v0[7];
  v22 = v2;
  v6 = v0[4];
  v5 = v0[5];
  v20 = v3;
  v8 = v0[2];
  v7 = v0[3];

  v9 = sub_22089180C();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  (*(v4 + 16))(v3, v6, v5);
  v10 = v7;
  v11 = v8;
  v12 = v1;
  v13 = sub_2208917DC();
  v14 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v15 = (v21 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 2) = v13;
  *(v16 + 3) = v17;
  *(v16 + 4) = v10;
  (*(v4 + 32))(&v16[v14], v20, v5);
  *&v16[v15] = v11;
  *&v16[(v15 + 15) & 0xFFFFFFFFFFFFFFF8] = v1;
  sub_2206830F8(0, 0, v22, &unk_2208AAAC0, v16);

  v18 = v0[1];

  return v18();
}

uint64_t sub_2206C73A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_220888C8C();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  sub_22088E55C();
  v7[9] = swift_task_alloc();
  sub_2208917EC();
  v7[10] = sub_2208917DC();
  v10 = sub_2208917CC();

  return MEMORY[0x2822009F8](sub_2206C74C4, v10, v9);
}

void sub_2206C74C4()
{
  v1 = v0[2];
  v2 = sub_22088544C();
  v3 = [v1 cellForRowAtIndexPath_];

  if (v3)
  {
    v4 = v0[4];

    [v3 setAccessoryView_];

    v5 = [v4 navigationController];
    if (v5)
    {
      v6 = v5;
      (*(v0[7] + 16))(v0[8], v0[5], v0[6]);
      sub_22088E54C();
      sub_2206C7C48();
      v8 = objc_allocWithZone(v7);
      v9 = sub_22088F01C();
      [v6 pushViewController:v9 animated:1];
    }

    v10 = v0[1];

    v10();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2206C761C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = sub_220888C8C();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  sub_22088E55C();
  v7[12] = swift_task_alloc();
  sub_2208917EC();
  v7[13] = sub_2208917DC();
  v10 = sub_2208917CC();

  return MEMORY[0x2822009F8](sub_2206C7740, v10, v9);
}

void sub_2206C7740()
{
  v1 = v0[5];
  v2 = sub_22088544C();
  v3 = [v1 cellForRowAtIndexPath_];

  if (v3)
  {
    v4 = v0[7];

    [v3 setAccessoryView_];

    v5 = [v4 navigationController];
    if (v5)
    {
      v6 = v5;
      v7 = v0[11];
      v8 = v0[9];
      v9 = v0[10];
      v10 = v0[8];
      v11 = swift_allocObject();
      sub_22089254C();
      v0[2] = 0;
      v0[3] = 0xE000000000000000;
      MEMORY[0x223D89680](0xD000000000000038, 0x80000002208CE380);
      v0[4] = v10;
      sub_22058D5E8();
      sub_22089264C();
      v12 = v0[3];
      *(v11 + 16) = v0[2];
      *(v11 + 24) = v12;
      *v7 = v11;
      (*(v9 + 104))(v7, *MEMORY[0x277D6CEC8], v8);
      sub_22088E54C();
      sub_2206C7C48();
      v14 = objc_allocWithZone(v13);
      v15 = sub_22088F01C();
      [v6 pushViewController:v15 animated:1];
    }

    v16 = v0[1];

    v16();
  }

  else
  {
    __break(1u);
  }
}

void sub_2206C7C48()
{
  if (!qword_27CF58B30)
  {
    sub_22088E55C();
    sub_2206C7CAC();
    v0 = sub_22088F02C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF58B30);
    }
  }
}

unint64_t sub_2206C7CAC()
{
  result = qword_27CF58648;
  if (!qword_27CF58648)
  {
    sub_22088E55C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58648);
  }

  return result;
}

uint64_t sub_2206C7D04(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22088A71C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_2208854AC() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2204C6018;

  return sub_2206C6C0C(a1, v11, v12, v1 + v6, v13, v14, v1 + v10);
}

uint64_t sub_2206C7E80(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2208854AC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_220685970;

  return sub_2206C761C(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_2206C7FC4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2208854AC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_220888C8C() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_220685970;

  return sub_2206C73A0(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

void sub_2206C8138()
{
  v1 = OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_dateFormatter;
  v2 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v3 = sub_22089132C();
  [v2 setDateFormat_];

  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_sessions) = MEMORY[0x277D84F90];
  sub_22089267C();
  __break(1u);
}

uint64_t sub_2206C8218(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (a1 == 1)
  {
    v3 = OBJC_IVAR____TtC8StocksUI37UserEventHistoryBrowserViewController_sessions;
    swift_beginAccess();
    v4 = *(v1 + v3);
    if (v4 >> 62)
    {
      return sub_2208926AC();
    }

    else
    {
      return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    sub_22089254C();

    v5 = sub_22089287C();
    MEMORY[0x223D89680](v5);

    result = sub_22089267C();
    __break(1u);
  }

  return result;
}

void sub_2206C8354()
{
  if (!qword_28127DE40)
  {
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127DE40);
    }
  }
}

uint64_t sub_2206C83AC(uint64_t a1)
{
  sub_220464EC8(0, &qword_281298038, MEMORY[0x277D6D350]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v16 - v7;
  v17 = a1;
  v9 = MEMORY[0x277D84560];
  sub_22044AF60(0, &qword_28127E130, MEMORY[0x277D6CCC0], MEMORY[0x277D84560]);
  sub_220888A9C();
  v10 = swift_allocObject();
  v16 = xmmword_220899360;
  *(v10 + 16) = xmmword_220899360;
  sub_22044AF60(0, &qword_28127E140, MEMORY[0x277D6CCA0], v9);
  v11 = *(sub_220888A2C() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v16;
  v14 = (v13 + v12);
  *v14 = 0x7972657571;
  v14[1] = 0xE500000000000000;
  (*(v11 + 104))();
  sub_2205CEF04(MEMORY[0x277D84F90]);
  sub_220888A4C();
  *(v1 + 16) = v10;
  type metadata accessor for StocksActivity(0);
  sub_2204549FC();
  sub_2206C9BE0(&unk_281297EC0, sub_2204549FC);
  sub_22088AC3C();
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC8StocksUI22StocksSearchURLHandler_navigator, v8, v4);
  return v1;
}

uint64_t sub_2206C8708(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281299200);
    result = sub_2208884DC();
    if (v5)
    {
      type metadata accessor for StocksV1SymbolURLHandler();
      swift_allocObject();
      return sub_2206C9218(v3, &v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2206C87E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812967E0);
  result = sub_2208884DC();
  if (!v8[3])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281297D60);
  result = sub_2208884DC();
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v3 = result;
    type metadata accessor for StocksArticleURLHandler();
    v4 = swift_allocObject();
    type metadata accessor for StocksActivity(0);
    sub_2206C9BE0(&unk_281297EC0, sub_2204549FC);
    sub_22088AC3C();
    sub_22046DA2C(v8, v4 + OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_featureAvailability);
    sub_22046DA2C(v6, v4 + OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_appURLHandler);
    v5 = sub_22085C888(v8);
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(v8);
    *(v4 + 16) = v5;
    *(v4 + OBJC_IVAR____TtC8StocksUI23StocksArticleURLHandler_tracker) = v3;
    return v4;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2206C8A04(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (result)
  {
    v2 = result;
    type metadata accessor for StocksSearchURLHandler();
    swift_allocObject();
    return sub_2206C83AC(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206C8A98(void *a1)
{
  v2 = sub_220888A7C();
  MEMORY[0x28223BE20](v2 - 8, v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298A38);
  result = sub_2208884DC();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281298B20);
    result = sub_2208884DC();
    if (v5)
    {
      sub_220888A6C();
      sub_2208879CC();
      swift_allocObject();
      return sub_2208879BC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2206C8BFC(uint64_t a1, void *a2)
{
  sub_22044AF60(0, &qword_281282AF8, type metadata accessor for AudioNewsProxyNowPlayingURLHandler, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v10 - v5;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StocksSearchURLHandler();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = result;
  sub_2206C9BE0(&qword_281295FF8, type metadata accessor for StocksSearchURLHandler);
  sub_2208889CC();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StocksV1SymbolURLHandler();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = result;
  sub_2206C9BE0(&qword_281295BC8, type metadata accessor for StocksV1SymbolURLHandler);
  sub_2208889CC();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StocksArticleURLHandler();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = result;
  sub_2206C9BE0(&qword_281295F10, type metadata accessor for StocksArticleURLHandler);
  sub_2208889CC();

  v8 = sub_22088F0DC();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (v8)
  {
    v9 = type metadata accessor for AudioNewsProxyNowPlayingURLHandler();
    sub_2208884DC();
    result = (*(*(v9 - 8) + 48))(v6, 1, v9);
    if (result == 1)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    sub_2206C9BE0(&qword_281282B38, type metadata accessor for AudioNewsProxyNowPlayingURLHandler);
    sub_2208889CC();
    sub_2206C9C28(v6);
    goto LABEL_9;
  }

  sub_2208879CC();
  result = sub_2208884CC();
  if (result)
  {
    v11 = result;
    sub_2206C9BE0(&unk_281298B10, MEMORY[0x277D2FD10]);
    sub_2208889BC();

LABEL_9:
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_22088A46C();
    result = sub_2208884CC();
    if (result)
    {
      v11 = result;
      sub_2206C9BE0(&qword_281298218, MEMORY[0x277D35048]);
      sub_2208889DC();
    }

    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_2206C9050()
{
  v0 = sub_220888D5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088A46C();
  sub_220888BDC();
  (*(v1 + 104))(v4, *MEMORY[0x277D6CF00], v0);
  sub_2208882DC();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2206C917C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298200);
  result = sub_2208884DC();
  if (v3)
  {
    swift_getObjectType();
    v2 = sub_22088A52C();
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206C9218(uint64_t a1, __int128 *a2)
{
  v62 = a2;
  sub_220464EC8(0, &qword_281298038, MEMORY[0x277D6D350]);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v58 = &v56 - v5;
  v77 = a1;
  v6 = MEMORY[0x277D84560];
  sub_22044AF60(0, &qword_28127E130, MEMORY[0x277D6CCC0], MEMORY[0x277D84560]);
  v7 = *(sub_220888A9C() - 8);
  v72 = *(v7 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  v57 = v9;
  *(v9 + 16) = xmmword_22089D630;
  v67 = v9 + v8;
  sub_22044AF60(0, &qword_28127E140, MEMORY[0x277D6CCA0], v6);
  v11 = v10;
  v12 = sub_220888A2C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = *(v13 + 72);
  v68 = *(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_220899360;
  v17 = (v16 + v14);
  v70 = v14;
  *v17 = 0x6C6F626D7973;
  v17[1] = 0xE600000000000000;
  v18 = *(v13 + 104);
  v18();
  sub_2205CEF04(MEMORY[0x277D84F90]);
  sub_220888A4C();
  v64 = "RLHandlerAssembly";
  v19 = v15;
  v74 = v15;
  v71 = v14 + 2 * v15;
  v69 = v11;
  v20 = swift_allocObject();
  v76 = xmmword_220899920;
  *(v20 + 16) = xmmword_220899920;
  v21 = (v20 + v14);
  *v21 = 0x6C6F626D7973;
  v21[1] = 0xE600000000000000;
  v66 = *MEMORY[0x277D6CC80];
  v73 = v18;
  v65 = v13 + 104;
  (v18)(v20 + v14);
  v22 = (v21 + v19);
  *v22 = 0x656C6369747261;
  v22[1] = 0xE700000000000000;
  v75 = *MEMORY[0x277D6CC98];
  v18();
  sub_220884DDC();
  sub_2205CEF04(MEMORY[0x277D84F90]);
  v23 = v72;
  sub_220888A3C();
  v56 = 2 * v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v76;
  v25 = v70;
  v26 = (v24 + v70);
  *v26 = 0x6C6F626D7973;
  v26[1] = 0xE600000000000000;
  v27 = v66;
  v63 = v12;
  v28 = v73;
  (v73)(v26, v66, v12);
  v29 = (v26 + v74);
  *v29 = 0x656C6369747261;
  v29[1] = 0xE700000000000000;
  v28();
  sub_220884DDC();
  sub_2205CEF04(MEMORY[0x277D84F90]);
  v30 = v56;
  sub_220888A3C();
  v31 = v72;
  v56 = v30 + v72;
  v32 = swift_allocObject();
  *(v32 + 16) = v76;
  v33 = (v32 + v25);
  *v33 = 0x6C6F626D7973;
  v33[1] = 0xE600000000000000;
  v34 = v63;
  v35 = v73;
  (v73)(v32 + v25, v27, v63);
  v36 = (v33 + v74);
  *v36 = 0x656C6369747261;
  v36[1] = 0xE700000000000000;
  v35();
  sub_220884DDC();
  sub_2205CEF04(MEMORY[0x277D84F90]);
  sub_220888A3C();
  v56 = 4 * v31;
  v37 = swift_allocObject();
  *(v37 + 16) = v76;
  v38 = (v37 + v70);
  *v38 = 0x6C6F626D7973;
  v38[1] = 0xE600000000000000;
  v39 = v66;
  v40 = v73;
  (v73)(v38, v66, v34);
  v41 = v74;
  v42 = (v38 + v74);
  *v42 = 0x656C6369747261;
  v42[1] = 0xE700000000000000;
  v40();
  sub_220884DDC();
  sub_2205CEF04(MEMORY[0x277D84F90]);
  v43 = v56;
  sub_220888A3C();
  v64 = (v43 + v72);
  v44 = swift_allocObject();
  *(v44 + 16) = v76;
  v45 = v70;
  v46 = (v44 + v70);
  *v46 = 0x6C6F626D7973;
  v46[1] = 0xE600000000000000;
  v47 = v63;
  v48 = v73;
  (v73)(v46, v39, v63);
  v49 = (v46 + v41);
  *v49 = 0x656C6369747261;
  v49[1] = 0xE700000000000000;
  v48();
  sub_220884DDC();
  sub_2205CEF04(MEMORY[0x277D84F90]);
  sub_220888A3C();
  v50 = swift_allocObject();
  *(v50 + 16) = v76;
  v51 = (v50 + v45);
  *v51 = 0x6C6F626D7973;
  v51[1] = 0xE600000000000000;
  (v48)(v50 + v45, v66, v47);
  v52 = (v50 + v45 + v74);
  *v52 = 0x656C6369747261;
  v52[1] = 0xE700000000000000;
  v48();
  sub_220884DDC();
  sub_2205CEF04(MEMORY[0x277D84F90]);
  sub_220888A3C();
  v53 = v59;
  *(v59 + 16) = v57;
  type metadata accessor for StocksActivity(0);
  sub_2204549FC();
  sub_2206C9BE0(&unk_281297EC0, sub_2204549FC);
  v54 = v58;
  sub_22088AC3C();
  (*(v60 + 32))(v53 + OBJC_IVAR____TtC8StocksUI24StocksV1SymbolURLHandler_navigator, v54, v61);
  sub_220458198(v62, v53 + OBJC_IVAR____TtC8StocksUI24StocksV1SymbolURLHandler_stockMetadataManager);
  return v53;
}

uint64_t sub_2206C9BE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2206C9C28(uint64_t a1)
{
  v2 = type metadata accessor for AudioNewsProxyNowPlayingURLHandler();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

UIColor __swiftcall UIColor.stocksAccessibilityAdjustedForIncreaseContrast()()
{
  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = &selRef_stocksAccessibilityAdjustedLighterForIncreaseContrast;
  if (v2 != 2)
  {
    v3 = &selRef_stocksAccessibilityAdjustedDarkerForIncreaseContrast;
  }

  v4 = [v0 *v3];

  return v4;
}

id sub_2206C9D18(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 currentTraitCollection];
  v5 = [v4 userInterfaceStyle];

  v6 = &selRef_stocksAccessibilityAdjustedLighterForIncreaseContrast;
  if (v5 != 2)
  {
    v6 = &selRef_stocksAccessibilityAdjustedDarkerForIncreaseContrast;
  }

  v7 = [v3 *v6];

  return v7;
}

UIColor __swiftcall UIColor.stocksAccessibilityAdjustedLighterForIncreaseContrast()()
{
  v1 = [v0 stocksAccessibilityAdjustedForIncreaseContrastAdjustingDarker_];

  return v1;
}

id sub_2206C9E0C(void *a1)
{
  v1 = [a1 stocksAccessibilityAdjustedForIncreaseContrastAdjustingDarker_];

  return v1;
}

UIColor __swiftcall UIColor.stocksAccessibilityAdjustedDarkerForIncreaseContrast()()
{
  v1 = [v0 stocksAccessibilityAdjustedForIncreaseContrastAdjustingDarker_];

  return v1;
}

id sub_2206C9E84(void *a1)
{
  v1 = [a1 stocksAccessibilityAdjustedForIncreaseContrastAdjustingDarker_];

  return v1;
}

UIColor __swiftcall UIColor.stocksAccessibilityAdjustedForIncreaseContrastAgainst(backgroundColor:)(UIColor backgroundColor)
{
  [v1 relativeLuminance];
  v4 = v3;
  [(objc_class *)backgroundColor.super.isa relativeLuminance];
  v6 = [v1 stocksAccessibilityAdjustedForIncreaseContrastAdjustingDarker_];

  return v6;
}

double sub_2206C9F48(double a1)
{
  if (a1 >= 0.03928)
  {
    return pow((a1 + 0.055) / 1.055, 2.4);
  }

  else
  {
    return a1 / 12.92;
  }
}

uint64_t sub_2206C9F90(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = [v3 childViewControllers];
  sub_220482E6C();
  v7 = sub_2208916EC();

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = sub_2208926AC();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    MEMORY[0x223D8A700](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v7 + 32);
  }

  sub_2206CA2E4();
  if (swift_dynamicCast())
  {
    if (*(&v13 + 1))
    {
      sub_220457328(&v12, v15);
      v10 = v16;
      v11 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v11 + 8))(a1, a2, v10, v11);
      return __swift_destroy_boxed_opaque_existential_1(v15);
    }

    goto LABEL_12;
  }

LABEL_11:
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
LABEL_12:
  result = sub_2206CA348(&v12);
  if (a1)
  {
    return a1(result);
  }

  return result;
}

uint64_t sub_2206CA11C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 childViewControllers];
  sub_220482E6C();
  v7 = sub_2208916EC();

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = sub_2208926AC();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x223D8A700](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v7 + 32);
  }

  v10 = v9;

  v16[0] = v10;
  sub_2206CA2E4();
  if (swift_dynamicCast())
  {
    if (*(&v14 + 1))
    {
      sub_220457328(&v13, v16);
      v11 = v17;
      v12 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v12 + 16))(a1, a2, v11, v12);
      return __swift_destroy_boxed_opaque_existential_1(v16);
    }

    return sub_2206CA348(&v13);
  }

LABEL_11:
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  return sub_2206CA348(&v13);
}

unint64_t sub_2206CA2E4()
{
  result = qword_2812909C0;
  if (!qword_2812909C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2812909C0);
  }

  return result;
}

uint64_t sub_2206CA348(uint64_t a1)
{
  sub_2206CA3A4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2206CA3A4()
{
  if (!qword_27CF58B40)
  {
    sub_2206CA2E4();
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF58B40);
    }
  }
}

uint64_t sub_2206CA3FC(uint64_t a1)
{
  sub_22061D1D0(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v34 - v10;
  v12 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + OBJC_IVAR____TtC8StocksUI12TickerRouter_navigator);
  sub_2205DE35C();
  v18 = *(v17 + 48);
  v19 = sub_22088685C();
  (*(*(v19 - 8) + 16))(v15, a1, v19);
  *&v15[v18] = 0;
  type metadata accessor for StocksActivity.StockFeed(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v20 = *(v1 + OBJC_IVAR____TtC8StocksUI12TickerRouter_tracker);
  v21 = sub_22088969C();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v40 = v16;
  sub_2205A0924(v41, &v36, &unk_281298970, &unk_281298980);
  if (v37)
  {
    sub_220458198(&v36, v38);
    v22 = sub_220597454(v38);
    v24 = v23;
    v26 = v25;
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    sub_2205A0B34(&v36, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v22 = qword_2812908F8;
    v24 = qword_281290900;
    v26 = qword_281290908;

    sub_2204A80F4(v24);
  }

  v37 = sub_22088731C();
  *&v36 = v20;
  sub_2205A08A4(v11, v7);
  sub_2205A0924(v43, v38, &unk_281296D10, &qword_281296D20);
  v27 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v28 = (v5 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = v11;
  v29 = swift_allocObject();
  *(v29 + 16) = v20;
  sub_2205A0994(v7, v29 + v27);
  v30 = v29 + v28;
  v31 = v38[1];
  *v30 = v38[0];
  *(v30 + 16) = v31;
  *(v30 + 32) = v39;
  v32 = (v29 + ((v28 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v32 = v22;
  v32[1] = v24;
  v32[2] = v26;
  swift_retain_n();

  sub_2204A80F4(v24);
  sub_2204549FC();
  sub_2204489A0(&unk_281297EC0, sub_2204549FC);
  sub_22088E92C();

  sub_2204DA45C(v24);
  sub_2205A0B34(v41, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2205A0B34(v43, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_220650F50(v35, sub_22061D1D0);
  sub_220650F50(v15, type metadata accessor for StocksActivity);
  return sub_2205A0B34(&v36, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
}

void sub_2206CAA80()
{
  v0 = sub_22088CC6C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_220891C4C();

    if (v7)
    {
      swift_getObjectType();
      v8 = sub_22088D05C();
      if (v8 >> 62)
      {
        v10[1] = v8;
        v9 = sub_2208926AC();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v9, 1))
      {
        __break(1u);
      }

      else
      {
        (*(v1 + 104))(v4, *MEMORY[0x277D6E268], v0);
        sub_22088D08C();

        (*(v1 + 8))(v4, v0);
      }
    }
  }
}

uint64_t type metadata accessor for StockListEmptyWatchlistBlueprintModifier()
{
  result = qword_27CF58B68;
  if (!qword_27CF58B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2206CAD30()
{
  sub_220886A4C();
  if (v0 <= 0x3F)
  {
    sub_2206CBC70(319, &qword_28127EB28, MEMORY[0x277D698E0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AttributionSource();
      if (v2 <= 0x3F)
      {
        sub_2206CAE24();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2206CAE24()
{
  result = qword_281299220;
  if (!qword_281299220)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281299220);
  }

  return result;
}

uint64_t sub_2206CAE88(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v89 = a3;
  v90 = a2;
  sub_22047572C();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v86 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206CBB4C(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v87 = *(v7 - 8);
  v88 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v85 = &v77 - v9;
  sub_2206CBB4C(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v83 = *(v10 - 8);
  v84 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v82 = &v77 - v12;
  sub_22046B2A0();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v91 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B19C();
  v95 = v16;
  v92 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v81 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v79 = &v77 - v21;
  v22 = type metadata accessor for AttributionSource();
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = (&v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = (&v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22046B36C();
  v31 = v30;
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v33);
  v96 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v78 = &v77 - v37;
  v38 = type metadata accessor for StockListEmptyWatchlistBlueprintModifier();
  v39 = v3;
  __swift_project_boxed_opaque_existential_1((v3 + v38[8]), *(v3 + v38[8] + 24));
  v40 = sub_22088618C();
  v93 = v32;
  v94 = v31;
  v80 = v26;
  if (v40)
  {
    v41 = MEMORY[0x277D84F90];
  }

  else
  {
    v42 = v38[7];
    v77 = v3;
    sub_2206CBC0C(v3 + v42, v25);
    *v29 = sub_2204ADF20(v25);
    v29[1] = v43;
    v29[2] = v44;
    v29[3] = v45;
    swift_storeEnumTagMultiPayload();
    sub_2206CBB04(&qword_281293CD8, type metadata accessor for StockListModel);
    v46 = v78;
    sub_22088AD7C();
    v99 = 0;
    v97 = 0u;
    v98 = 0u;
    v100 = 2;
    sub_2206CBC70(0, &qword_28127E0F8, sub_22046B36C, MEMORY[0x277D84560]);
    v47 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_220899360;
    (*(v32 + 16))(v48 + v47, v46, v31);
    v49 = sub_2206CBB04(&qword_281297F88, sub_22046B36C);
    v50 = sub_2206CBB04(&unk_281297F90, sub_22046B36C);
    MEMORY[0x223D80A20](v48, v31, v49, v50);
    sub_22045B950();
    v51 = v79;
    sub_22088B29C();
    v41 = sub_2204AE514(0, 1, 1, MEMORY[0x277D84F90]);
    v53 = v41[2];
    v52 = v41[3];
    if (v53 >= v52 >> 1)
    {
      v41 = sub_2204AE514(v52 > 1, v53 + 1, 1, v41);
    }

    (*(v93 + 8))(v46, v94);
    v41[2] = v53 + 1;
    (*(v92 + 32))(v41 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v53, v51, v95);
    v39 = v77;
  }

  v54 = sub_2208869DC();
  v56 = v55;
  v57 = sub_2208869BC();
  v59 = v58;
  v60 = *(v39 + v38[6]);

  if ((sub_22088F0DC() & 1) != 0 && *(v60 + 16) <= 1uLL)
  {

    v54 = 0;
    v56 = 0;
    v57 = 0;
    v59 = 0;
    v60 = 0;
  }

  swift_storeEnumTagMultiPayload();
  sub_2206CBB04(&qword_281293CD8, type metadata accessor for StockListModel);
  v61 = v96;
  sub_22088AD7C();
  *&v97 = v54;
  *(&v97 + 1) = v56;
  *&v98 = v57;
  *(&v98 + 1) = v59;
  v99 = v60;
  v100 = 1;
  sub_2206CBC70(0, &qword_28127E0F8, sub_22046B36C, MEMORY[0x277D84560]);
  v62 = v93;
  v63 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_220899360;
  v65 = v94;
  (*(v62 + 16))(v64 + v63, v61, v94);
  v66 = sub_2206CBB04(&qword_281297F88, sub_22046B36C);
  v67 = sub_2206CBB04(&unk_281297F90, sub_22046B36C);
  MEMORY[0x223D80A20](v64, v65, v66, v67);
  sub_22045B950();
  v68 = v81;
  sub_22088B29C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v41 = sub_2204AE514(0, v41[2] + 1, 1, v41);
  }

  v70 = v41[2];
  v69 = v41[3];
  if (v70 >= v69 >> 1)
  {
    v41 = sub_2204AE514(v69 > 1, v70 + 1, 1, v41);
  }

  v41[2] = v70 + 1;
  v71 = v95;
  (*(v92 + 32))(v41 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v70, v68, v95);
  v72 = sub_2206CBB04(&qword_281297DC8, sub_22046B19C);
  v73 = sub_2206CBB04(&qword_281297DD0, sub_22046B19C);
  MEMORY[0x223D80A20](v41, v71, v72, v73);
  v74 = v85;
  sub_22088E7CC();
  v75 = v82;
  sub_22088C66C();
  (*(v87 + 8))(v74, v88);
  v90(v75);
  (*(v83 + 8))(v75, v84);
  return (*(v62 + 8))(v96, v65);
}

uint64_t sub_2206CB924()
{
  sub_2206CBC70(0, &qword_28127E048, MEMORY[0x277D6DE60], MEMORY[0x277D84560]);
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

uint64_t sub_2206CBB04(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2206CBB4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for StockListSectionDescriptor;
    v8[1] = type metadata accessor for StockListModel(255);
    v8[2] = sub_22045B950();
    v8[3] = sub_2206CBB04(&qword_281293CD8, type metadata accessor for StockListModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2206CBC0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionSource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2206CBC70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2206CBCD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_2206CBCF4, 0, 0);
}

uint64_t sub_2206CBCF4()
{
  sub_2206CE73C();
  *(v0 + 64) = sub_22088F3BC();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_2206CBDA4;

  return MEMORY[0x2821D23D8](v0 + 16);
}

uint64_t sub_2206CBDA4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2206CC180;
  }

  else
  {

    v2 = sub_2206CBEC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206CBEC0()
{
  v1 = *(v0 + 16);
  *(v0 + 88) = v1;
  if (v1)
  {
    *(v0 + 96) = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_2206CBFD8;

    return MEMORY[0x2821D23D8](v0 + 40);
  }

  else
  {
    sub_2206CE8AC();
    swift_allocError();
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_2206CBFD8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_2206CC1E4;
  }

  else
  {
    v2 = sub_2206CC0EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206CC0EC()
{
  v2 = v0[5];
  v1 = v0[6];
  v1[3] = &type metadata for YahooStockForYouFeedGroupEmitterCursor;

  *v1 = v2;

  v3 = v0[1];

  return v3();
}

uint64_t sub_2206CC180()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2206CC1E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2206CC25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_22088A84C();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2206CC32C, 0, 0);
}

uint64_t sub_2206CC32C()
{
  *(v0 + 136) = sub_22088FA2C();
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_2206CC3E0;

  return MEMORY[0x2821D23D8](v0 + 48);
}

uint64_t sub_2206CC3E0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_2206CC728;
  }

  else
  {

    v2 = sub_2206CC4FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206CC4FC()
{
  v1 = v0[6];
  v0[20] = v1;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_2206CC5A0;
  v3 = v0[10];

  return sub_2206CCF70(v3, v1);
}

uint64_t sub_2206CC5A0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_2206CCB4C;
  }

  else
  {
    v2 = sub_2206CC6B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206CC6B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2206CC728()
{
  v31 = v0;

  v1 = *(v0 + 152);
  *(v0 + 56) = v1;
  v2 = v1;
  sub_22058D5E8();
  if (swift_dynamicCast())
  {

    if (qword_281294340 != -1)
    {
      swift_once();
    }

    v3 = qword_281294348;
    sub_22088A85C();
    v4 = sub_22088A82C();
    v5 = sub_220891AFC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22043F000, v4, v5, "Yahoo News For You Stocks group emitter has no pool to emit from, error=Errors.noPool", v6, 2u);
      MEMORY[0x223D8B7F0](v6, -1, -1);
    }

    v7 = *(v0 + 128);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    v10 = *(v0 + 80);

    (*(v9 + 8))(v7, v8);
    *v10 = 0xD000000000000058;
    v10[1] = 0x80000002208CE5A0;
    sub_22052B704();
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    if (qword_281294340 != -1)
    {
      swift_once();
    }

    v11 = qword_281294348;
    sub_22088A85C();
    v12 = v1;
    v13 = sub_22088A82C();
    v14 = sub_220891AFC();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 112);
    v17 = *(v0 + 120);
    v18 = *(v0 + 104);
    if (v15)
    {
      v28 = *(v0 + 120);
      v27 = v14;
      v19 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v20 = v29;
      *v19 = 136446210;
      *(v0 + 32) = 0;
      *(v0 + 40) = 0xE000000000000000;
      *(v0 + 72) = v1;
      sub_22089264C();
      v21 = sub_2204A7B78(*(v0 + 32), *(v0 + 40), &v29);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_22043F000, v13, v27, "Yahoo News For You Stocks group emitter has no pool to emit from, error=%{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x223D8B7F0](v20, -1, -1);
      MEMORY[0x223D8B7F0](v19, -1, -1);

      (*(v16 + 8))(v28, v18);
    }

    else
    {

      (*(v16 + 8))(v17, v18);
    }

    v22 = *(v0 + 80);
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_22089254C();
    v23 = v30;
    *(v0 + 16) = v29;
    *(v0 + 24) = v23;
    MEMORY[0x223D89680](0xD00000000000004BLL, 0x80000002208CE550);
    *(v0 + 64) = v1;
    sub_22089264C();

    v24 = *(v0 + 24);
    *v22 = *(v0 + 16);
    v22[1] = v24;
    sub_22052B704();
    swift_storeEnumTagMultiPayload();
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2206CCB4C()
{
  v31 = v0;

  v1 = *(v0 + 176);
  *(v0 + 56) = v1;
  v2 = v1;
  sub_22058D5E8();
  if (swift_dynamicCast())
  {

    if (qword_281294340 != -1)
    {
      swift_once();
    }

    v3 = qword_281294348;
    sub_22088A85C();
    v4 = sub_22088A82C();
    v5 = sub_220891AFC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22043F000, v4, v5, "Yahoo News For You Stocks group emitter has no pool to emit from, error=Errors.noPool", v6, 2u);
      MEMORY[0x223D8B7F0](v6, -1, -1);
    }

    v7 = *(v0 + 128);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    v10 = *(v0 + 80);

    (*(v9 + 8))(v7, v8);
    *v10 = 0xD000000000000058;
    v10[1] = 0x80000002208CE5A0;
    sub_22052B704();
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    if (qword_281294340 != -1)
    {
      swift_once();
    }

    v11 = qword_281294348;
    sub_22088A85C();
    v12 = v1;
    v13 = sub_22088A82C();
    v14 = sub_220891AFC();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 112);
    v17 = *(v0 + 120);
    v18 = *(v0 + 104);
    if (v15)
    {
      v28 = *(v0 + 120);
      v27 = v14;
      v19 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v20 = v29;
      *v19 = 136446210;
      *(v0 + 32) = 0;
      *(v0 + 40) = 0xE000000000000000;
      *(v0 + 72) = v1;
      sub_22089264C();
      v21 = sub_2204A7B78(*(v0 + 32), *(v0 + 40), &v29);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_22043F000, v13, v27, "Yahoo News For You Stocks group emitter has no pool to emit from, error=%{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x223D8B7F0](v20, -1, -1);
      MEMORY[0x223D8B7F0](v19, -1, -1);

      (*(v16 + 8))(v28, v18);
    }

    else
    {

      (*(v16 + 8))(v17, v18);
    }

    v22 = *(v0 + 80);
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_22089254C();
    v23 = v30;
    *(v0 + 16) = v29;
    *(v0 + 24) = v23;
    MEMORY[0x223D89680](0xD00000000000004BLL, 0x80000002208CE550);
    *(v0 + 64) = v1;
    sub_22089264C();

    v24 = *(v0 + 24);
    *v22 = *(v0 + 16);
    v22[1] = v24;
    sub_22052B704();
    swift_storeEnumTagMultiPayload();
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2206CCF70(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = type metadata accessor for ForYouFeedGroup();
  v3[8] = swift_task_alloc();
  v4 = sub_22088685C();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2206CD064, 0, 0);
}

uint64_t sub_2206CD064()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_appConfiguration;
  *(v0 + 96) = OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_stockFeedService;
  *(v0 + 104) = v2;
  v3 = *(v1 + 16);

  if (v3)
  {
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = *(v5 + 64);
    *(v0 + 28) = v7;
    v8 = *(v0 + 88);
    *(v0 + 112) = v6;
    *(v0 + 120) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v8, v1 + ((v7 + 32) & ~v7), v4);
    v9 = v3 - 1;
    if (!v9)
    {

      v10 = 0;
      goto LABEL_13;
    }

    v14 = *(v0 + 80);
    v15 = (*(v0 + 28) + 32) & ~*(v0 + 28);
    sub_220676A28();
    v16 = *(v14 + 72);
    v10 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v10);
    if (v16)
    {
      if (v17 - v15 != 0x8000000000000000 || v16 != -1)
      {
        v10[2] = v9;
        v10[3] = 2 * ((v17 - v15) / v16);
        swift_arrayInitWithCopy();

LABEL_13:
        *(v0 + 128) = v10;
        v19 = (*(v0 + 48) + *(v0 + 96));
        __swift_project_boxed_opaque_existential_1(v19, v19[3]);
        *(v0 + 136) = sub_220885ECC();
        v20 = swift_task_alloc();
        *(v0 + 144) = v20;
        *v20 = v0;
        v20[1] = sub_2206CD2D8;
        v17 = v0 + 16;

        return MEMORY[0x2821D23D8](v17);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x2821D23D8](v17);
  }

  v11 = *(v0 + 32);
  *v11 = 0x64656873696E6966;
  v11[1] = 0xE800000000000000;
  sub_22052B704();
  swift_storeEnumTagMultiPayload();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2206CD2D8()
{
  *(*v1 + 152) = v0;

  if (v0)
  {

    v2 = sub_2206CD8F8;
  }

  else
  {
    v2 = sub_2206CD41C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206CD41C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2 >= sub_22088593C())
  {
    v12 = sub_22088592C();
    if (v12 < v2)
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v13 = *(v1 + 16);
        if (v13 >= v12)
        {
          if (v13 != v12)
          {
            v14 = (2 * v12) | 1;
            v15 = *(sub_22088698C() - 8);
            sub_2206CE464(v1, v1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), 0, v14, sub_2206CE708, MEMORY[0x277D69858]);
            v17 = v16;

            v1 = v17;
          }

          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_11:
    v18 = *(v0 + 128);
    v19 = *(v0 + 64);
    (*(v0 + 112))(v19, *(v0 + 88), *(v0 + 72));
    v20 = type metadata accessor for StockForYouFeedGroup();
    v21 = v20[7];
    v22 = sub_22088F39C();
    (*(*(v22 - 8) + 56))(v19 + v21, 1, 1, v22);
    *(v19 + v20[5]) = v1;
    *(v19 + v20[6]) = 1;
    swift_storeEnumTagMultiPayload();
    if (v18)
    {
      v23 = *(v0 + 128);
      v25 = *(v0 + 80);
      v24 = *(v0 + 88);
      v27 = *(v0 + 64);
      v26 = *(v0 + 72);
      v28 = *(v0 + 32);
      sub_2206CE66C();
      v30 = (v28 + *(v29 + 48));
      sub_22052AAB0(v27, v28, type metadata accessor for ForYouFeedGroup);
      v30[3] = &type metadata for YahooStockForYouFeedGroupEmitterCursor;
      *v30 = v23;
      sub_2206CE968(v27, type metadata accessor for ForYouFeedGroup);
      (*(v25 + 8))(v24, v26);
    }

    else
    {
      v31 = *(v0 + 64);
      v32 = *(v0 + 32);
      (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
      sub_2206CE608(v31, v32);
    }

    sub_22052B704();
    goto LABEL_17;
  }

  v3 = *(v0 + 128);
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

  if (v3)
  {
    v4 = *(v0 + 128);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = *(v0 + 112);
      v7 = *(v0 + 28);
      v8 = *(v0 + 88);
      v9 = *(v0 + 72);
      *(v0 + 120) = (*(v0 + 80) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v6(v8, v4 + ((v7 + 32) & ~v7), v9);
      v10 = v5 - 1;
      if (!v10)
      {

        v11 = 0;
        goto LABEL_26;
      }

      v36 = *(v0 + 80);
      v37 = (*(v0 + 28) + 32) & ~*(v0 + 28);
      sub_220676A28();
      v38 = *(v36 + 72);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      if (v38)
      {
        if (v12 - v37 != 0x8000000000000000 || v38 != -1)
        {
          v11[2] = v10;
          v11[3] = 2 * ((v12 - v37) / v38);
          swift_arrayInitWithCopy();

LABEL_26:
          *(v0 + 128) = v11;
          v40 = (*(v0 + 48) + *(v0 + 96));
          __swift_project_boxed_opaque_existential_1(v40, v40[3]);
          *(v0 + 136) = sub_220885ECC();
          v41 = swift_task_alloc();
          *(v0 + 144) = v41;
          *v41 = v0;
          v41[1] = sub_2206CD2D8;
          v12 = v0 + 16;

          return MEMORY[0x2821D23D8](v12);
        }

LABEL_32:
        __break(1u);
        return MEMORY[0x2821D23D8](v12);
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  v33 = *(v0 + 32);
  *v33 = 0x64656873696E6966;
  v33[1] = 0xE800000000000000;
  sub_22052B704();
LABEL_17:
  swift_storeEnumTagMultiPayload();

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_2206CD8F8()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2206CD980()
{
  v1 = OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_appConfiguration;
  v2 = sub_220885ACC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_config;
  sub_220452A8C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_2206CE968(v0 + OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_knobs, type metadata accessor for StockForYouFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_stockFeedService);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for YahooStockForYouFeedGroupEmitter()
{
  result = qword_27CF58BA0;
  if (!qword_27CF58BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2206CDAE4()
{
  sub_220885ACC();
  if (v0 <= 0x3F)
  {
    sub_220452A8C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for StockForYouFeedGroupKnobs();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_2206CDBF0(uint64_t a1)
{
  sub_2206CE73C();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2, v6);
  sub_22052BC98(0, &qword_2812985E0, sub_22055F87C, MEMORY[0x277D6CF30]);
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  return sub_220888E2C();
}

uint64_t sub_2206CDD60(uint64_t a1)
{
  v3 = *v1;
  sub_22052BC98(0, &qword_281298680, sub_22052B704, MEMORY[0x277D6CF30]);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;

  return sub_220888E2C();
}

uint64_t sub_2206CDE18@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_config;
  sub_220452A8C();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for ForYouFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2206CDEF8@<X0>(uint64_t *a1@<X8>)
{
  sub_22052BC98(0, &qword_28127DEC0, sub_22052BFB4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_220452A8C();
  v3 = sub_22088F46C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_22052BDC4(inited);
  swift_setDeallocating();
  sub_2206CE968(inited + 32, sub_22052BFB4);
  sub_2206CE900(0);
  a1[3] = v5;
  a1[4] = sub_22050281C(&qword_27CF58BE0, sub_2206CE900);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_22088883C();
}

uint64_t sub_2206CE068()
{
  sub_22050281C(&qword_27CF58BC0, type metadata accessor for YahooStockForYouFeedGroupEmitter);

  return sub_22088882C();
}

uint64_t sub_2206CE23C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2204C6018;

  return sub_2206CC25C(a1, v5, v4);
}

size_t sub_2206CE2E8(uint64_t a1)
{
  v2 = type metadata accessor for ForYouSection();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = *(v6 + 16);
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = sub_220588644(*(v6 + 16), 0);
  v9 = *(sub_22088698C() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  sub_22052AAB0(a1, v5, type metadata accessor for ForYouSection);
  v11 = sub_22067DA50(&v14, (v8 + v10), v7);

  if (v11 != v7)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v8;
}

void sub_2206CE464(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t (*a6)(void))
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      a5(0);
      v10 = *(a6(0) - 8);
      v11 = *(v10 + 72);
      v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      if (!v11)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v14 - v12 == 0x8000000000000000 && v11 == -1)
      {
        goto LABEL_16;
      }

      v13[2] = v7;
      v13[3] = 2 * ((v14 - v12) / v11);
      if (v6 != a3)
      {
LABEL_10:
        a6(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_2206CE608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2206CE66C()
{
  if (!qword_281293350[0])
  {
    type metadata accessor for ForYouFeedGroup();
    sub_22055F87C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_281293350);
    }
  }
}

void sub_2206CE73C()
{
  if (!qword_281296C50)
  {
    type metadata accessor for ForYouFeedServiceConfig();
    sub_22050281C(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
    v0 = sub_22088F3CC();
    if (!v1)
    {
      atomic_store(v0, &qword_281296C50);
    }
  }
}

uint64_t sub_2206CE7D0(uint64_t a1)
{
  sub_2206CE73C();
  v5 = (*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_220685970;

  return sub_2206CBCD4(a1, v1 + v5);
}

unint64_t sub_2206CE8AC()
{
  result = qword_27CF58BD0;
  if (!qword_27CF58BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58BD0);
  }

  return result;
}

uint64_t sub_2206CE968(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2206CE9DC()
{
  result = qword_27CF58BE8;
  if (!qword_27CF58BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58BE8);
  }

  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_2206CEA74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 160);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2206CEABC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2206CEB3C()
{
  sub_2206CEBD0();

  return sub_22088D90C();
}

unint64_t sub_2206CEB7C()
{
  result = qword_27CF58BF0;
  if (!qword_27CF58BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58BF0);
  }

  return result;
}

unint64_t sub_2206CEBD0()
{
  result = qword_27CF58BF8;
  if (!qword_27CF58BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58BF8);
  }

  return result;
}

id sub_2206CEC24()
{
  v0 = objc_allocWithZone(sub_220888C2C());

  return [v0 init];
}

uint64_t sub_2206CEC5C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, qword_281283E20);
  result = sub_2208884DC();
  if (v3)
  {
    sub_220888C1C();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206CED04(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2208860AC();
  result = sub_2208884CC();
  if (result)
  {
    sub_22046CA9C(qword_281299250, MEMORY[0x277D695C0]);
    sub_220888C1C();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206CEDC4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220447D10();
  v4 = v3;
  result = sub_2208884CC();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_22046CA9C(&qword_281297AC0, sub_220447D10);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206CEE6C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ANFSceneActivityBridge();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206CEEC0()
{
  type metadata accessor for ANFSceneActivityBridge();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_2206CEEF4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &qword_281298738);
  result = sub_2208884DC();
  if (v4)
  {
    sub_220457328(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_22046CA9C(&qword_28128CFF0, type metadata accessor for ANFSceneActivityBridge);
    sub_220888BFC();
    __swift_destroy_boxed_opaque_existential_1(&v3);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206CEFF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2208917EC();
  v5[2] = a1;
  a2[3] = type metadata accessor for StocksIntentHandler();
  a2[4] = sub_22046CA9C(&qword_27CF58C00, type metadata accessor for StocksIntentHandler);
  result = sub_2206CF394(sub_2206CF54C, v5, "StocksUI/ManagerAssembly.swift", 30);
  *a2 = result;
  return result;
}

uint64_t sub_2206CF0B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22088A07C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_2812954E8);
  result = sub_2208884DC();
  if (!v22)
  {
    __break(1u);
    goto LABEL_8;
  }

  v15 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  v10 = v19;
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (!v18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  (*(v5 + 104))(v8, *MEMORY[0x277D68FC8], v4);
  v12 = sub_22088721C();

  (*(v5 + 8))(v8, v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (result)
  {
    v13 = result;
    sub_22046DA2C(a1, v16);
    type metadata accessor for StocksIntentHandler();
    v14 = swift_allocObject();
    sub_220457328(&v21, (v14 + 2));
    v14[7] = v10;
    v14[8] = v11;
    sub_220457328(&v17, (v14 + 9));
    v14[14] = v12;
    v14[15] = v13;
    result = sub_220457328(v16, (v14 + 16));
    *v15 = v14;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2206CF394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2208917DC();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_2206CF568(v13);
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
  sub_22089254C();
  MEMORY[0x223D89680](0xD00000000000003FLL, 0x80000002208CE640);
  v12 = sub_220892A9C();
  MEMORY[0x223D89680](v12);

  MEMORY[0x223D89680](46, 0xE100000000000000);
  result = sub_22089267C();
  __break(1u);
  return result;
}

void *sub_2206CF568@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_2206CF5AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_2206CF664(a1, a2);
    if (v10)
    {
      v11 = v9;
      v12 = v10;

      sub_2206D0410(v11, v12, v8, a4);
      swift_bridgeObjectRelease_n();
    }
  }

  return result;
}

uint64_t sub_2206CF664(uint64_t a1, uint64_t a2)
{
  v139 = a1;
  v140 = a2;
  sub_2205715CC();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v133 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v137 = (&v133 - v13);
  sub_2206D0720();
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14, v16);
  v18 = (&v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v138 = type metadata accessor for StocksAudioTrack();
  v20 = MEMORY[0x28223BE20](v138, v19);
  v22 = (&v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = (&v133 - v25);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = (&v133 - v29);
  v32 = MEMORY[0x28223BE20](v28, v31);
  v135 = &v133 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v136 = (&v133 - v36);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v134 = (&v133 - v39);
  MEMORY[0x28223BE20](v38, v40);
  v42 = (&v133 - v41);
  v43 = *(v15 + 56);
  sub_2206D07E4(v139, v18, sub_2205715CC);
  v44 = v18 + v43;
  v45 = v43;
  v46 = v18;
  sub_2206D07E4(v140, v44, sub_2205715CC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v137 = v22;
    v139 = v26;
    v140 = v7;
    sub_2206D07E4(v18 + v45, v11, sub_2205715CC);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2206D0784(v11, sub_2205D153C);
    }

    else
    {
      v133 = v3;
      v134 = v45;
      v136 = v18;
      v70 = v140;
      sub_2206D07E4(v18, v140, sub_2205715CC);
      sub_2205D153C(0, v71);
      v50 = *(v70 + *(v72 + 48));
      v135 = *(v72 + 64);
      v73 = v30;
      sub_2205717B0(v70, v30);
      v74 = v139;
      sub_2205717B0(v11, v139);
      v75 = *v30;
      v76 = [*v30 identifier];
      v77 = sub_22089136C();
      v79 = v78;

      v80 = [*v74 identifier];
      v81 = sub_22089136C();
      v83 = v82;

      if (v77 == v81 && v79 == v83)
      {
      }

      else
      {
        v100 = sub_2208928BC();

        if ((v100 & 1) == 0)
        {
          v110 = v139;
          if ((*(v73 + *(v138 + 32)) & 2) != 0)
          {
            v123 = [v75 identifier];
            sub_22089136C();

            sub_2206D0784(v110, type metadata accessor for StocksAudioTrack);
            sub_2206D0784(v73, type metadata accessor for StocksAudioTrack);
            v124 = sub_22088774C();
            v125 = *(*(v124 - 8) + 8);
            v126 = v135;
            v125(&v11[v135], v124);
            v125(&v140[v126], v124);
            v127 = v136;
            sub_2206D0784(v134 + v136, sub_2205715CC);
            sub_2206D0784(v127, sub_2205715CC);
            return v50;
          }

          v138 = v11;
          v111 = v137;
          sub_2206D07E4(v73, v137, type metadata accessor for StocksAudioTrack);
          v112 = sub_22088A82C();
          v113 = sub_220891AFC();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            v115 = swift_slowAlloc();
            v141 = v115;
            *v114 = 136446210;
            v116 = [*v111 identifier];
            v117 = v111;
            v118 = v110;
            v119 = sub_22089136C();
            v121 = v120;

            sub_2206D0784(v117, type metadata accessor for StocksAudioTrack);
            v122 = sub_2204A7B78(v119, v121, &v141);

            *(v114 + 4) = v122;
            _os_log_impl(&dword_22043F000, v112, v113, "AudioListeningProgressRecorder: not saving listening progress for %{public}s because it's disabled", v114, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v115);
            MEMORY[0x223D8B7F0](v115, -1, -1);
            MEMORY[0x223D8B7F0](v114, -1, -1);

            sub_2206D0784(v118, type metadata accessor for StocksAudioTrack);
          }

          else
          {

            sub_2206D0784(v111, type metadata accessor for StocksAudioTrack);
            sub_2206D0784(v110, type metadata accessor for StocksAudioTrack);
          }

          sub_2206D0784(v73, type metadata accessor for StocksAudioTrack);
          v128 = v140;
          v129 = v136;
          v130 = sub_22088774C();
          v131 = *(*(v130 - 8) + 8);
          v132 = v135;
          v131(v138 + v135, v130);
          v131(v128 + v132, v130);
          sub_2206D0784(v134 + v129, sub_2205715CC);
          v98 = v129;
          v99 = sub_2205715CC;
          goto LABEL_30;
        }
      }

      sub_2206D0784(v139, type metadata accessor for StocksAudioTrack);
      sub_2206D0784(v73, type metadata accessor for StocksAudioTrack);
      v101 = sub_22088774C();
      v102 = *(*(v101 - 8) + 8);
      v103 = v135;
      v102(&v11[v135], v101);
      v102(&v140[v103], v101);
      v45 = v134;
      v46 = v136;
    }

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v65 = swift_getEnumCaseMultiPayload();
    if (!v65)
    {
      sub_2205D153C(0, v66);
      goto LABEL_16;
    }

    if (v65 == 1)
    {
      sub_2205D1464();
LABEL_16:
      v50 = *(v18 + *(v67 + 48));
      v84 = *(v67 + 64);
      sub_2205717B0(v18, v42);
      v85 = sub_22088774C();
      (*(*(v85 - 8) + 8))(v18 + v84, v85);
      sub_2206D0784(v18 + v45, sub_2205715CC);
      if ((*(v42 + *(v138 + 32)) & 2) != 0)
      {
        v96 = [*v42 identifier];
        sub_22089136C();

        sub_2206D0784(v42, type metadata accessor for StocksAudioTrack);
        return v50;
      }

      v86 = v134;
      sub_2205717B0(v42, v134);
      v87 = sub_22088A82C();
      v88 = sub_220891AFC();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v141 = v90;
        *v89 = 136446210;
        v91 = [*v86 identifier];
        v92 = sub_22089136C();
        v94 = v93;

        sub_2206D0784(v86, type metadata accessor for StocksAudioTrack);
        v95 = sub_2204A7B78(v92, v94, &v141);

        *(v89 + 4) = v95;
        _os_log_impl(&dword_22043F000, v87, v88, "AudioListeningProgressRecorder: not saving listening progress for %{public}s because it's disabled", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v90);
        MEMORY[0x223D8B7F0](v90, -1, -1);
        MEMORY[0x223D8B7F0](v89, -1, -1);

        return 0;
      }

      v99 = type metadata accessor for StocksAudioTrack;
      v98 = v86;
LABEL_30:
      sub_2206D0784(v98, v99);
      return 0;
    }

LABEL_24:
    v104 = swift_getEnumCaseMultiPayload();
    if (v104)
    {
      if (v104 != 1)
      {
LABEL_29:
        v99 = sub_2205715CC;
        v98 = v46 + v45;
        goto LABEL_30;
      }

      sub_2205D1464();
    }

    else
    {
      sub_2205D153C(0, v105);
    }

    v107 = *(v106 + 64);
    v108 = sub_22088774C();
    (*(*(v108 - 8) + 8))(v46 + v107, v108);
    sub_2206D0784(v46, type metadata accessor for StocksAudioTrack);
    goto LABEL_29;
  }

  v48 = v137;
  sub_2206D07E4(v18 + v45, v137, sub_2205715CC);
  sub_2205D1464();
  v50 = *(v48 + *(v49 + 48));
  v51 = *(v49 + 64);
  v52 = v136;
  sub_2205717B0(v48, v136);
  if ((*(v52 + *(v138 + 32)) & 2) == 0)
  {
    v53 = v135;
    sub_2206D07E4(v52, v135, type metadata accessor for StocksAudioTrack);
    v54 = sub_22088A82C();
    v55 = sub_220891AFC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v141 = v139;
      *v56 = 136446210;
      v57 = [*v53 identifier];
      v58 = sub_22089136C();
      v134 = v45;
      v59 = v58;
      v140 = v51;
      v61 = v60;

      sub_2206D0784(v53, type metadata accessor for StocksAudioTrack);
      v62 = v59;
      v45 = v134;
      v63 = sub_2204A7B78(v62, v61, &v141);
      v51 = v140;

      *(v56 + 4) = v63;
      _os_log_impl(&dword_22043F000, v54, v55, "AudioListeningProgressRecorder: not saving listening progress for %{public}s because it's disabled", v56, 0xCu);
      v64 = v139;
      __swift_destroy_boxed_opaque_existential_1(v139);
      MEMORY[0x223D8B7F0](v64, -1, -1);
      MEMORY[0x223D8B7F0](v56, -1, -1);
    }

    else
    {

      sub_2206D0784(v53, type metadata accessor for StocksAudioTrack);
    }

    sub_2206D0784(v52, type metadata accessor for StocksAudioTrack);
    v97 = sub_22088774C();
    (*(*(v97 - 8) + 8))(v48 + v51, v97);
    sub_2206D0784(v46 + v45, sub_2205715CC);
    v98 = v46;
    v99 = sub_2205715CC;
    goto LABEL_30;
  }

  v68 = [*v52 identifier];
  sub_22089136C();

  sub_2206D0784(v52, type metadata accessor for StocksAudioTrack);
  v69 = sub_22088774C();
  (*(*(v69 - 8) + 8))(v48 + v51, v69);
  sub_2206D0784(v18 + v45, sub_2205715CC);
  sub_2206D0784(v18, sub_2205715CC);
  return v50;
}

uint64_t sub_2206D0410(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{

  v7 = sub_22088A82C();
  v8 = sub_220891AFC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315394;
    sub_2206D0674();
    v11 = sub_22089124C();
    v13 = sub_2204A7B78(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_2204A7B78(a1, a2, &v15);
    _os_log_impl(&dword_22043F000, v7, v8, "AudioListeningProgressRecorder: saving listening progress %s for %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D8B7F0](v10, -1, -1);
    MEMORY[0x223D8B7F0](v9, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  return sub_22088814C();
}

uint64_t sub_2206D05BC()
{

  v1 = OBJC_IVAR____TtC8StocksUI30AudioListeningProgressRecorder_logger;
  v2 = sub_22088A84C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_2206D0674()
{
  result = qword_27CF58C08;
  if (!qword_27CF58C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58C08);
  }

  return result;
}

unint64_t sub_2206D06C8()
{
  result = qword_2812961F0;
  if (!qword_2812961F0)
  {
    type metadata accessor for StocksAudioTrack();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812961F0);
  }

  return result;
}

void sub_2206D0720()
{
  if (!qword_27CF5A000)
  {
    sub_2205715CC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF5A000);
    }
  }
}

uint64_t sub_2206D0784(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2206D07E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_2206D084C()
{
  result = [objc_allocWithZone(type metadata accessor for NetworkReachability()) init];
  qword_28128FDA0 = result;
  return result;
}

StocksUI::ToolbarBehavior_optional __swiftcall ToolbarBehavior.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22089270C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ToolbarBehavior.rawValue.getter()
{
  if (*v0)
  {
    return 0x697370616C6C6F63;
  }

  else
  {
    return 0x6465786966;
  }
}

uint64_t sub_2206D09E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x697370616C6C6F63;
  }

  else
  {
    v3 = 0x6465786966;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEA0000000000676ELL;
  }

  if (*a2)
  {
    v5 = 0x697370616C6C6F63;
  }

  else
  {
    v5 = 0x6465786966;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000676ELL;
  }

  else
  {
    v6 = 0xE500000000000000;
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

unint64_t sub_2206D0A8C()
{
  result = qword_27CF58C10;
  if (!qword_27CF58C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58C10);
  }

  return result;
}

uint64_t sub_2206D0AE0()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_2206D0B64()
{
  sub_22089146C();
}

uint64_t sub_2206D0BD4()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_2206D0C54@<X0>(char *a1@<X8>)
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

void sub_2206D0CB4(uint64_t *a1@<X8>)
{
  v2 = 0x6465786966;
  if (*v1)
  {
    v2 = 0x697370616C6C6F63;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000676ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2206D0CF4(uint64_t a1)
{
  v2 = sub_2206D0E08();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A30](a1, v2, v3);
}

uint64_t sub_2206D0D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_2206D0E08();
  v5 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A28](a1, a2, v4, v5);
}

uint64_t sub_2206D0DA4(uint64_t a1)
{
  v2 = sub_2206D0E08();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A20](a1, v2, v3);
}

unint64_t sub_2206D0E08()
{
  result = qword_27CF58C18;
  if (!qword_27CF58C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58C18);
  }

  return result;
}

void sub_2206D0EE4()
{
  v1 = OBJC_IVAR____TtC8StocksUI9QuoteView_priceLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC8StocksUI9QuoteView_priceChangeLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI9QuoteView_timeRangeLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  sub_22089267C();
  __break(1u);
}

void sub_2206D0FD4(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2208926AC())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D8A700](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_2206D10D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = sub_22089136C();
    v6 = v5;
    if (v4 == sub_22089136C() && v6 == v7)
    {
      break;
    }

    v9 = sub_2208928BC();

    if (v9)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_2206D11AC()
{
  sub_22046B19C();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1D20();
  sub_22052C734(&qword_281296EE8, sub_2204A1D20);
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
    sub_22052C734(&qword_281297DC8, sub_22046B19C);
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

uint64_t sub_2206D141C()
{
  sub_22055CE80(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CF9C(0);
  sub_22052C734(&qword_281296F20, sub_22055CF9C);
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
    sub_22052C734(&qword_281297DF8, sub_22055CE80);
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

uint64_t sub_2206D16D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v5 = *(a2 + 16);
  if (!v5)
  {
    return 0;
  }

  v9 = *(a3(0) - 8);
  v10 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  sub_22052C734(a4, a5);
  v12 = 0;
  while ((sub_2208912FC() & 1) == 0)
  {
    ++v12;
    v10 += v11;
    if (v5 == v12)
    {
      return 0;
    }
  }

  return v12;
}

uint64_t sub_2206D17E8()
{
  sub_22051D97C();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FA2D0();
  sub_22052C734(&qword_281297E70, sub_2204FA2D0);
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
    sub_22052C734(&qword_281297F68, sub_22051D97C);
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

uint64_t sub_2206D1A58()
{
  sub_2206D32EC();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206D33D8();
  sub_22052C734(&qword_27CF58C68, sub_2206D33D8);
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
    sub_22052C734(&qword_27CF58C70, sub_2206D32EC);
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

uint64_t sub_2206D1D34(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(result + OBJC_IVAR____TtC8StocksUI19DateRangePickerView_onChange);
    if (v6)
    {

      v6(a1);
      sub_2204DA45C(v6);
    }

    v7 = OBJC_IVAR____TtC8StocksUI19DateRangePickerView_styler;
    swift_beginAccess();
    sub_22046DA2C(v5 + v7, v16);
    v8 = v17;
    v9 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = [v5 traitCollection];
    v11 = *(v9 + 8);
    v12 = *(v11 + 8);
    v20 = v8;
    v21 = v9;
    __swift_allocate_boxed_opaque_existential_1(v19);
    v12(v10, v8, v11);

    __swift_destroy_boxed_opaque_existential_1(v16);
    v13 = sub_22088B5CC();
    MEMORY[0x28223BE20](v13, v14);
    v15[2] = v19;
    sub_2206D0FD4(sub_2206D3148, v15, v13);

    __swift_project_boxed_opaque_existential_1(v19, v20);
    sub_220565E9C(a2);
    sub_2206D201C(a1, 1);

    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  return result;
}

void sub_2206D1F18(void **a1, void *a2)
{
  v2 = *a1;
  v3 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v4 = *v3;
  v6 = *(*v3 + 40);
  v5 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((*v3 + 16), v6);
  v7 = (*(*(v5 + 16) + 80))(v6);
  [v2 setBackgroundColor_];

  v8 = [v2 titleLabel];
  if (v8)
  {
    v9 = v8;
    v11 = v4[5];
    v10 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v11);
    v12 = (*(*(v10 + 16) + 80))(v11);
    [v9 setBackgroundColor_];
  }
}

void sub_2206D201C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC8StocksUI19DateRangePickerView_segmentedControl);
  v7 = sub_22088B5EC();
  v8 = sub_2206D16D4(a1, v7, MEMORY[0x277D69160], &qword_2812993A0, MEMORY[0x277D69160]);
  LOBYTE(a1) = v9;

  if (a1)
  {
    return;
  }

  v10 = sub_22088B5CC();
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x223D8A700](v8, v10);
    goto LABEL_6;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v8 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = *(v10 + 8 * v8 + 32);
LABEL_6:
  v12 = v11;

  [v12 frame];
  [v6 convertRect:v3 toCoordinateSpace:?];
  sub_220891EAC();
  sub_2206D3164(a2 & 1);
}

id sub_2206D2188()
{
  v1 = v0;
  sub_2206D34C4();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2208854FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DateRangePickerView();
  v24.receiver = v0;
  v24.super_class = v11;
  objc_msgSendSuper2(&v24, sel_layoutSubviews);
  [v0 contentSize];
  v13 = v12;
  v15 = v14;
  v16 = *&v0[OBJC_IVAR____TtC8StocksUI19DateRangePickerView_segmentedControl];
  result = [v16 frame];
  if (v13 != v19 || v15 != v18)
  {
    [v1 contentSize];
    v22 = v21;
    [v1 contentSize];
    [v16 setFrame_];
    sub_22088B59C();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      return sub_2206D351C(v5);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      sub_2206D201C(v10, 0);
      return (*(v7 + 8))(v10, v6);
    }
  }

  return result;
}

uint64_t sub_2206D23EC(uint64_t a1)
{
  v2 = v1;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for DateRangePickerView();
  objc_msgSendSuper2(&v20, sel_traitCollectionDidChange_, a1);
  v4 = OBJC_IVAR____TtC8StocksUI19DateRangePickerView_styler;
  swift_beginAccess();
  sub_22046DA2C(v2 + v4, v17);
  v5 = v18;
  v6 = v19;
  v7 = __swift_project_boxed_opaque_existential_1(v17, v18);
  v8 = *(v5 - 8);
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = [v2 traitCollection];
  (*(*(v6 + 8) + 8))();

  v14 = MEMORY[0x28223BE20](v12, v13);
  (*(v8 + 16))(&v16[-v10], &v16[-v10], v5, v14);
  sub_2206D3578(&v16[-v10], v2, v5, v6);
  (*(v8 + 8))(&v16[-v10], v5);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

id sub_2206D264C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DateRangePickerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2206D27F8()
{
  sub_2206D34C4();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088B59C();
  v4 = sub_2208854FC();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2206D351C(v3);
    return 0;
  }

  else
  {
    v7 = ChartRange.accessibilityLabel.getter();
    v9 = v8;
    (*(v5 + 8))(v3, v4);
    v11[0] = v7;
    v11[1] = v9;
    sub_22059B6A4();
    v10 = sub_22089234C();

    return v10;
  }
}

uint64_t sub_2206D2954()
{
  sub_2206D34C4();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2208854FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v31 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = v31 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = v31 - v20;
  sub_22088B59C();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2206D351C(v4);
    goto LABEL_9;
  }

  v31[1] = v0;
  (*(v6 + 32))(v21, v4, v5);
  v22 = sub_22088B5EC();
  v23 = sub_2206D16D4(v21, v22, MEMORY[0x277D69160], &qword_2812993A0, MEMORY[0x277D69160]);
  v25 = v24;

  if ((v25 & 1) != 0 || (v26 = *(sub_22088B5EC() + 16), , v23 >= v26 - 1))
  {
    (*(v6 + 8))(v21, v5);
LABEL_9:
    v29 = sub_22088B5EC();
    v30 = *(v29 + 16);
    if (!v30)
    {
    }

    (*(v6 + 16))(v9, v29 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v30 - 1), v5);

    (*(v6 + 32))(v13, v9, v5);
    sub_22088B5BC();
    return (*(v6 + 8))(v13, v5);
  }

  sub_22088B5EC();

  result = sub_22088B5EC();
  if (v23 < -1)
  {
    __break(1u);
  }

  else if ((v23 + 1) < *(result + 16))
  {
    (*(v6 + 16))(v17, result + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v23 + 1), v5);

    sub_22088B5BC();
    sub_2206D201C(v17, 1);
    v28 = *(v6 + 8);
    v28(v17, v5);
    return (v28)(v21, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_2206D2D5C()
{
  sub_2206D34C4();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2208854FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v29 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = v29 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = v29 - v20;
  sub_22088B59C();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2206D351C(v4);
    goto LABEL_8;
  }

  v29[1] = v0;
  (*(v6 + 32))(v21, v4, v5);
  v22 = sub_22088B5EC();
  v23 = sub_2206D16D4(v21, v22, MEMORY[0x277D69160], &qword_2812993A0, MEMORY[0x277D69160]);
  v25 = v24;

  if ((v25 & 1) != 0 || (sub_22088B5EC(), , v23 <= 0))
  {
    (*(v6 + 8))(v21, v5);
LABEL_8:
    v28 = sub_22088B5EC();
    if (!*(v28 + 16))
    {
    }

    (*(v6 + 16))(v9, v28 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

    (*(v6 + 32))(v13, v9, v5);
    sub_22088B5BC();
    return (*(v6 + 8))(v13, v5);
  }

  sub_22088B5EC();

  result = sub_22088B5EC();
  if (v23 > *(result + 16))
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 16))(v17, result + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v23 - 1), v5);

    sub_22088B5BC();
    sub_2206D201C(v17, 1);
    v27 = *(v6 + 8);
    v27(v17, v5);
    return (v27)(v21, v5);
  }

  return result;
}

id sub_2206D3164(char a1)
{
  [v1 bounds];
  CGRectGetWidth(v12);
  [v1 bounds];
  CGRectGetHeight(v13);
  [v1 adjustedContentInset];
  [v1 contentSize];
  [v1 bounds];
  CGRectGetWidth(v14);
  [v1 contentSize];
  [v1 bounds];
  CGRectGetHeight(v15);
  sub_22088737C();
  v4 = v3;
  sub_22088737C();
  v6 = v5;
  result = [v1 contentOffset];
  if (v4 != v9 || v6 != v8)
  {

    return [v1 setContentOffset:a1 & 1 animated:{v4, v6}];
  }

  return result;
}

void sub_2206D32EC()
{
  if (!qword_27CF58C50)
  {
    sub_220887F2C();
    sub_22088778C();
    sub_22052C734(&unk_27CF59390, MEMORY[0x277D301D0]);
    sub_22052C734(&qword_27CF58C58, MEMORY[0x277D2FBA8]);
    v0 = sub_22088B39C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF58C50);
    }
  }
}

void sub_2206D33D8()
{
  if (!qword_27CF58C60)
  {
    sub_220887F2C();
    sub_22088778C();
    sub_22052C734(&unk_27CF59390, MEMORY[0x277D301D0]);
    sub_22052C734(&qword_27CF58C58, MEMORY[0x277D2FBA8]);
    v0 = sub_22088E81C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF58C60);
    }
  }
}

void sub_2206D34C4()
{
  if (!qword_281299390)
  {
    sub_2208854FC();
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_281299390);
    }
  }
}

uint64_t sub_2206D351C(uint64_t a1)
{
  sub_2206D34C4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2206D3578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v12 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC8StocksUI19DateRangePickerView_styler;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(a2 + v8);
  sub_220457328(&v10, a2 + v8);
  return swift_endAccess();
}

uint64_t sub_2206D3624(uint64_t a1, uint64_t a2)
{
  *(v2 + 1544) = a2;
  *(v2 + 1496) = a1;
  return MEMORY[0x2822009F8](sub_2206D3648, 0, 0);
}

uint64_t sub_2206D3648()
{
  sub_2206DF978(0, &qword_281296C50, type metadata accessor for ForYouFeedServiceConfig, sub_220502768, MEMORY[0x277D31C68]);
  *(v0 + 1592) = sub_22088F3AC();
  v1 = swift_task_alloc();
  *(v0 + 1640) = v1;
  *v1 = v0;
  v1[1] = sub_2206D373C;

  return MEMORY[0x2821D23D8](v0 + 1384);
}

uint64_t sub_2206D373C()
{
  *(*v1 + 1688) = v0;

  if (v0)
  {
    v2 = sub_2206D3C70;
  }

  else
  {

    v2 = sub_2206D3858;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206D3858()
{
  v1 = v0[173];
  v0[217] = v1;
  v2 = v0[174];
  v0[218] = v2;
  v3 = v0[175];
  v0[219] = v3;
  v4 = swift_allocObject();
  v0[220] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;

  sub_22052BCFC(0, &qword_28127EB50, MEMORY[0x277D69810], MEMORY[0x277D83940]);
  swift_asyncLet_begin();
  v5 = swift_allocObject();
  v0[221] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;

  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 2, v0 + 181, sub_2206D39E8, v0 + 162);
}

uint64_t sub_2206D39E8()
{
  v1[222] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 167, sub_2206D3CD4, v1 + 176);
  }

  else
  {
    v1[223] = v1[181];

    return MEMORY[0x282200930](v1 + 82, v1 + 167, sub_2206D3A9C, v1 + 188);
  }
}

uint64_t sub_2206D3A9C()
{
  *(v1 + 1792) = v0;
  if (v0)
  {
    v2 = sub_2206D3DC8;
  }

  else
  {
    v2 = sub_2206D3AD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206D3AD0()
{
  v1 = *(v0 + 1784);
  v2 = *(v0 + 1496);
  v2[3] = &type metadata for StockForYouFeedGroupEmitterCursor;
  v3 = swift_allocObject();
  *v2 = v3;
  sub_2206DE498(v0 + 1336, v3 + 24);
  *(v3 + 16) = v1;

  return MEMORY[0x282200920](v0 + 656, v0 + 1336, sub_2206D3B7C, v0 + 1648);
}

uint64_t sub_2206D3BD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2206D3C70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2206D3D2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2206D3DC8()
{

  return MEMORY[0x282200920](v0 + 656, v0 + 1336, sub_2206D3E34, v0 + 1552);
}

uint64_t sub_2206D3E8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2206D3F28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_220685970;

  return MEMORY[0x2821D23D8](a1);
}

uint64_t sub_2206D3FC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2204C6018;

  return MEMORY[0x2821D23D8](a1);
}

uint64_t sub_2206D4068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_2206D408C, 0, 0);
}

uint64_t sub_2206D408C()
{
  *(v0 + 168) = sub_22088FA7C();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_2206D4134;

  return MEMORY[0x2821D23D8](v0 + 72);
}

uint64_t sub_2206D4134()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_2206D48E8;
  }

  else
  {

    v2 = sub_2206D4250;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206D4250()
{
  v1 = v0;
  v2 = *(v0 + 72);
  *(v0 + 192) = v2;
  if (v2)
  {
    *(v0 + 200) = vextq_s8(*(v0 + 80), *(v0 + 80), 8uLL);
    *(v0 + 216) = sub_22088FA2C();
    v3 = swift_task_alloc();
    *(v0 + 224) = v3;
    *v3 = v0;
    v3[1] = sub_2206D45C0;

    return MEMORY[0x2821D23D8](v0 + 16);
  }

  else
  {
    v4 = sub_22088F90C();
    sub_220502864(&qword_281296AF8, MEMORY[0x277D32430]);
    v5 = swift_allocError();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D32418], v4);
    swift_willThrow();
    if (qword_281294340 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 144);
    sub_220891ADC();
    sub_22048D7F8();
    v8 = swift_allocObject();
    *(v0 + 96) = 0;
    *(v8 + 16) = xmmword_220899360;
    *(v0 + 104) = 0xE000000000000000;
    *(v0 + 128) = v5;
    sub_2204446D4(0, &qword_28127DE30);
    sub_22089264C();
    v9 = *(v0 + 96);
    v10 = v1[13];
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_22048D860();
    *(v8 + 32) = v9;
    *(v8 + 40) = v10;
    sub_22088A7EC();

    sub_22089254C();
    v1[14] = 0;
    v1[15] = 0xE000000000000000;
    MEMORY[0x223D89680](0xD000000000000020, 0x80000002208CE900);
    v1[17] = v5;
    sub_22089264C();

    v11 = v1[15];
    *v7 = v1[14];
    v7[1] = v11;
    sub_22052B704();
    swift_storeEnumTagMultiPayload();
    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_2206D45C0()
{
  v2 = *v1;
  v2[29] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2206D4B10, 0, 0);
  }

  else
  {
    v3 = v2[25];

    v4 = swift_task_alloc();
    v2[30] = v4;
    *v4 = v2;
    v4[1] = sub_2206D4754;
    v5 = v2[19];
    v6 = v2[18];

    return sub_2206D4F98(v6, v5, (v2 + 2), v3);
  }
}

uint64_t sub_2206D4754()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_2206D4D54;
  }

  else
  {
    v2 = sub_2206D4868;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206D4868()
{

  sub_2206DE308(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2206D48E8()
{
  v1 = v0;

  v2 = v0[23];
  if (qword_281294340 != -1)
  {
    swift_once();
  }

  v3 = v0[18];
  sub_220891ADC();
  sub_22048D7F8();
  v4 = swift_allocObject();
  v0[12] = 0;
  *(v4 + 16) = xmmword_220899360;
  v0[13] = 0xE000000000000000;
  v0[16] = v2;
  sub_2204446D4(0, &qword_28127DE30);
  sub_22089264C();
  v5 = v0[12];
  v6 = v1[13];
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_22048D860();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_22088A7EC();

  sub_22089254C();
  v1[14] = 0;
  v1[15] = 0xE000000000000000;
  MEMORY[0x223D89680](0xD000000000000020, 0x80000002208CE900);
  v1[17] = v2;
  sub_22089264C();

  v7 = v1[15];
  *v3 = v1[14];
  v3[1] = v7;
  sub_22052B704();
  swift_storeEnumTagMultiPayload();
  v8 = v1[1];

  return v8();
}

uint64_t sub_2206D4B10()
{
  v1 = v0;

  v2 = v0[29];
  if (qword_281294340 != -1)
  {
    swift_once();
  }

  v3 = v0[18];
  sub_220891ADC();
  sub_22048D7F8();
  v4 = swift_allocObject();
  v0[12] = 0;
  *(v4 + 16) = xmmword_220899360;
  v0[13] = 0xE000000000000000;
  v0[16] = v2;
  sub_2204446D4(0, &qword_28127DE30);
  sub_22089264C();
  v5 = v0[12];
  v6 = v1[13];
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_22048D860();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_22088A7EC();

  sub_22089254C();
  v1[14] = 0;
  v1[15] = 0xE000000000000000;
  MEMORY[0x223D89680](0xD000000000000020, 0x80000002208CE900);
  v1[17] = v2;
  sub_22089264C();

  v7 = v1[15];
  *v3 = v1[14];
  v3[1] = v7;
  sub_22052B704();
  swift_storeEnumTagMultiPayload();
  v8 = v1[1];

  return v8();
}

uint64_t sub_2206D4D54()
{
  v1 = v0;

  sub_2206DE308((v0 + 2));
  v2 = v0[31];
  if (qword_281294340 != -1)
  {
    swift_once();
  }

  v3 = v0[18];
  sub_220891ADC();
  sub_22048D7F8();
  v4 = swift_allocObject();
  v0[12] = 0;
  *(v4 + 16) = xmmword_220899360;
  v0[13] = 0xE000000000000000;
  v0[16] = v2;
  sub_2204446D4(0, &qword_28127DE30);
  sub_22089264C();
  v5 = v0[12];
  v6 = v1[13];
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_22048D860();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_22088A7EC();

  sub_22089254C();
  v1[14] = 0;
  v1[15] = 0xE000000000000000;
  MEMORY[0x223D89680](0xD000000000000020, 0x80000002208CE900);
  v1[17] = v2;
  sub_22089264C();

  v7 = v1[15];
  *v3 = v1[14];
  v3[1] = v7;
  sub_22052B704();
  swift_storeEnumTagMultiPayload();
  v8 = v1[1];

  return v8();
}

uint64_t sub_2206D4F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[271] = v4;
  v5[265] = a4;
  v5[259] = a3;
  v5[253] = a2;
  v5[247] = a1;
  type metadata accessor for StockForYouFeedGroup();
  v5[277] = swift_task_alloc();
  v6 = sub_22088573C();
  v5[278] = v6;
  v5[279] = *(v6 - 8);
  v5[280] = swift_task_alloc();
  v5[281] = swift_task_alloc();
  v5[282] = swift_task_alloc();
  v7 = sub_22088587C();
  v5[283] = v7;
  v5[284] = *(v7 - 8);
  v5[285] = swift_task_alloc();
  v5[286] = swift_task_alloc();
  v8 = sub_22088685C();
  v5[287] = v8;
  v9 = *(v8 - 8);
  v5[288] = v9;
  v5[289] = *(v9 + 64);
  v5[290] = swift_task_alloc();
  v5[291] = swift_task_alloc();
  v5[292] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2206D5190, 0, 0);
}

uint64_t sub_2206D5190()
{
  v1 = (v0 + 1528);
  sub_2206DE35C(*(v0 + 2072), v0 + 1336);
  sub_2206DE3B8(v0 + 1336, v0 + 1528);
  if (!*(v0 + 1528))
  {
LABEL_17:
    sub_2206DE42C(v0 + 1528);
LABEL_19:
    v28 = sub_22088F90C();
    sub_220502864(&qword_281296AF8, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D323A8], v28);
    swift_willThrow();
    sub_2206DE42C(v0 + 1336);
    sub_2204DA45C(0);
    sub_2204DA45C(0);

    v30 = *(v0 + 8);

    return v30();
  }

  v2 = (v0 + 1432);
  while (1)
  {
    v3 = *(v0 + 1544);
    *v2 = *v1;
    *(v0 + 1448) = v3;
    *(v0 + 1464) = *(v0 + 1560);
    *(v0 + 1480) = *(v0 + 1576);
    v4 = *v2;
    v5 = *(*v2 + 16);
    if (!v5)
    {
      sub_2206DE308(v0 + 1432);
      goto LABEL_19;
    }

    v6 = *(v0 + 2336);
    v7 = *(v0 + 2304);
    v8 = *(v0 + 2296);
    v9 = *(v7 + 16);
    v7 += 16;
    v10 = *(v7 + 64);
    *(v0 + 2432) = v10;
    v11 = v10;
    v12 = (v10 + 32) & ~v10;
    *(v0 + 2344) = v9;
    *(v0 + 2352) = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v41 = v9;
    v9(v6, v4 + v12, v8);
    v13 = v5 - 1;
    v42 = v11;
    if (v5 == 1)
    {
      *(v0 + 1672) = 0;
      *(v0 + 1640) = 0u;
      *(v0 + 1656) = 0u;
      *(v0 + 1624) = 0u;
    }

    else
    {
      v14 = *(v0 + 2304);
      sub_22052BCFC(0, &qword_28127E198, MEMORY[0x277D69810], MEMORY[0x277D84560]);
      v15 = *(v14 + 72);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      if (!v15)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        return MEMORY[0x282200930](v17, v18, v19, v20);
      }

      if (v17 - v12 == 0x8000000000000000 && v15 == -1)
      {
        goto LABEL_26;
      }

      v16[2] = v13;
      v16[3] = 2 * ((v17 - v12) / v15);
      swift_arrayInitWithCopy();
      sub_2206DE498(v0 + 1440, v0 + 1632);
      *(v0 + 1624) = v16;
    }

    sub_2206DE4F4(v0 + 1624, v0 + 1336);
    v22 = *(v0 + 1440);
    v23 = sub_22088681C();
    if (*(v22 + 16))
    {
      break;
    }

    (*(*(v0 + 2304) + 8))(*(v0 + 2336), *(v0 + 2296));

LABEL_4:
    sub_2206DE308(v0 + 1432);
    sub_2206DE3B8(v0 + 1336, v0 + 1528);
    if (!*v1)
    {
      goto LABEL_17;
    }
  }

  v25 = sub_2204AF97C(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
    (*(*(v0 + 2304) + 8))(*(v0 + 2336), *(v0 + 2296));
    goto LABEL_4;
  }

  v32 = *(v0 + 2328);
  v33 = *(v0 + 2312);
  v34 = *(v0 + 2304);
  v35 = *(v0 + 2296);
  v40 = *(v0 + 2168);
  v36 = *(*(v22 + 56) + 8 * v25);
  v41(v32, *(v0 + 2336), v35);
  v37 = (v42 + 24) & ~v42;
  v38 = (v37 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v0 + 2360) = v39;
  *(v39 + 16) = v40;
  (*(v34 + 32))(v39 + v37, v32, v35);
  *(v39 + v38) = v36;

  sub_2204DA45C(0);
  sub_22052BCFC(0, &qword_28127EB60, MEMORY[0x277D69268], MEMORY[0x277D83940]);
  swift_asyncLet_begin();

  sub_2204DA45C(0);
  swift_asyncLet_begin();
  v19 = sub_2206D5700;
  v17 = v0 + 16;
  v18 = v0 + 1880;
  v20 = v0 + 1776;

  return MEMORY[0x282200930](v17, v18, v19, v20);
}

uint64_t sub_2206D5700()
{
  v1[296] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2206D683C, 0, 0);
  }

  else
  {
    v1[297] = v1[235];

    v2 = v1[286];

    return MEMORY[0x282200930](v1 + 82, v2, sub_2206D57B0, v1 + 198);
  }
}

uint64_t sub_2206D57B0()
{
  *(v1 + 2384) = v0;
  if (v0)
  {

    v2 = sub_2206D6A14;
  }

  else
  {
    v2 = sub_2206D5830;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206D5830()
{
  v1 = *(v0 + 2376);
  (*(*(v0 + 2272) + 16))(*(v0 + 2280), *(v0 + 2288), *(v0 + 2264));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 2232);
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = *(v0 + 2376) + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v52 = v4;
    v4(*(v0 + 2256), v5, *(v0 + 2224));
    v6 = *(v3 + 56);
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v52(*(v0 + 2248), v5, *(v0 + 2224));
      v8 = sub_22088572C();
      v16 = *(v8 + 16);
      v17 = v7[2];
      v18 = v17 + v16;
      if (__OFADD__(v17, v16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return MEMORY[0x282200920](v8, v9, v10, v11);
      }

      v19 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v18 <= v7[3] >> 1)
      {
        if (*(v19 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v17 <= v18)
        {
          v21 = v17 + v16;
        }

        else
        {
          v21 = v17;
        }

        v7 = sub_220588574(isUniquelyReferenced_nonNull_native, v21, 1, v7);
        if (*(v19 + 16))
        {
LABEL_14:
          v22 = (v7[3] >> 1) - v7[2];
          v8 = sub_22088698C();
          if (v22 < v16)
          {
            goto LABEL_34;
          }

          swift_arrayInitWithCopy();

          if (v16)
          {
            v23 = v7[2];
            v24 = __OFADD__(v23, v16);
            v25 = v23 + v16;
            if (v24)
            {
              goto LABEL_35;
            }

            v7[2] = v25;
          }

          goto LABEL_4;
        }
      }

      if (v16)
      {
        goto LABEL_33;
      }

LABEL_4:
      v12 = *(v0 + 2248);
      v13 = *(v0 + 2232);
      v14 = *(v0 + 2224);
      v15 = *(v13 + 8);
      *(v0 + 2392) = v15;
      *(v0 + 2400) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v15(v12, v14);
      v5 += v6;
      if (!--v2)
      {

        sub_2208856DC();

        v26 = *(v0 + 1336);
        if (v26)
        {
          v27 = *(v26 + 16);
          v28 = MEMORY[0x277D84F90];
          if (v27)
          {
            v29 = *(v0 + 2304);
            v30 = (*(v0 + 2432) + 32) & ~*(v0 + 2432);
            *(v0 + 1928) = MEMORY[0x277D84F90];

            sub_22048EE54(0, v27, 0);
            v28 = *(v0 + 1928);
            v31 = v26 + v30;
            v32 = *(v29 + 72);
            do
            {
              v33 = *(v0 + 2320);
              v34 = *(v0 + 2304);
              v35 = *(v0 + 2296);
              (*(v0 + 2344))(v33, v31, v35);
              v36 = sub_22088681C();
              v38 = v37;
              (*(v34 + 8))(v33, v35);
              *(v0 + 1928) = v28;
              v40 = *(v28 + 16);
              v39 = *(v28 + 24);
              if (v40 >= v39 >> 1)
              {
                sub_22048EE54((v39 > 1), v40 + 1, 1);
                v28 = *(v0 + 1928);
              }

              *(v28 + 16) = v40 + 1;
              v41 = v28 + 16 * v40;
              *(v41 + 32) = v36;
              *(v41 + 40) = v38;
              v31 += v32;
              --v27;
            }

            while (v27);
          }
        }

        else
        {
          v28 = MEMORY[0x277D84F90];
        }

        *(v0 + 2408) = v28;
        v45 = swift_task_alloc();
        *(v0 + 2416) = v45;
        *v45 = v0;
        v45[1] = sub_2206D5C78;
        v46 = *(v0 + 2280);
        v47 = *(v0 + 2240);
        v48 = *(v0 + 2216);
        v49 = *(v0 + 2120);
        v50 = *(v0 + 2024);

        return sub_2206D8334(v48, v50, v47, v46, v49, v28, v0 + 1448);
      }
    }
  }

  v42 = *(v0 + 2280);
  v43 = *(v0 + 2272);
  v44 = *(v0 + 2264);

  (*(v43 + 8))(v42, v44);
  v10 = sub_2206D6228;
  v9 = *(v0 + 2288);
  v8 = v0 + 656;
  v11 = v0 + 2128;

  return MEMORY[0x282200920](v8, v9, v10, v11);
}

uint64_t sub_2206D5C78()
{
  v2 = *v1;
  *(*v1 + 2424) = v0;

  (*(v2 + 2392))(*(v2 + 2240), *(v2 + 2224));

  if (v0)
  {
    v3 = sub_2206D6BEC;
  }

  else
  {
    v3 = sub_2206D5E04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2206D5E04()
{
  sub_2206DE3B8(v0 + 1336, v0 + 1720);
  v1 = *(v0 + 2392);
  v16 = *(v0 + 2280);
  v2 = *(v0 + 2264);
  v3 = *(v0 + 2256);
  v4 = *(v0 + 2224);
  v5 = *(v0 + 2216);
  v6 = *(v0 + 1976);
  v7 = (*(v0 + 2272) + 8);
  if (*(v0 + 1720))
  {
    v17 = *(v0 + 1720);
    v18 = *(v0 + 1736);
    v19 = *(v0 + 1752);
    v20 = *(v0 + 1768);
    sub_2206CE66C();
    v9 = (v6 + *(v8 + 48));
    sub_2206DE784(v5, v6, type metadata accessor for StockForYouFeedGroup);
    type metadata accessor for ForYouFeedGroup();
    swift_storeEnumTagMultiPayload();
    v9[3] = &type metadata for StockForYouFeedGroupEmitterCursor;
    v10 = swift_allocObject();
    *v9 = v10;
    *(v10 + 64) = v20;
    *(v10 + 32) = v18;
    *(v10 + 48) = v19;
    *(v10 + 16) = v17;
    sub_2206DE7EC(v5, type metadata accessor for StockForYouFeedGroup);
    v1(v3, v4);
    (*v7)(v16, v2);
    sub_22052B704();
    swift_storeEnumTagMultiPayload();
    v11 = sub_2206D6048;
    v12 = *(v0 + 2288);
    v13 = v0 + 656;
    v14 = v0 + 2032;
  }

  else
  {
    v1(*(v0 + 2256), *(v0 + 2224));
    (*v7)(v16, v2);
    sub_2206DE42C(v0 + 1720);
    sub_2206DE720(v5, v6);
    type metadata accessor for ForYouFeedGroup();
    swift_storeEnumTagMultiPayload();
    sub_22052B704();
    swift_storeEnumTagMultiPayload();
    v11 = sub_2206D60A0;
    v12 = *(v0 + 2288);
    v13 = v0 + 656;
    v14 = v0 + 1936;
  }

  return MEMORY[0x282200920](v13, v12, v11, v14);
}

uint64_t sub_2206D60F8()
{
  (*(v0[288] + 8))(v0[292], v0[287]);
  sub_2206DE308((v0 + 179));
  sub_2206DE42C((v0 + 167));

  v1 = v0[1];

  return v1();
}

uint64_t sub_2206D6280()
{
  v1 = (v0 + 1432);
  v2 = (v0 + 1528);
  (*(*(v0 + 2304) + 8))(*(v0 + 2336), *(v0 + 2296));
  sub_2206DE308(v0 + 1432);
  sub_2206DE3B8(v0 + 1336, v0 + 1528);
  if (!*(v0 + 1528))
  {
LABEL_17:
    sub_2206DE42C(v0 + 1528);
LABEL_19:
    v28 = sub_22088F90C();
    sub_220502864(&qword_281296AF8, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D323A8], v28);
    swift_willThrow();
    sub_2206DE42C(v0 + 1336);
    sub_2204DA45C(&unk_2208AB3D8);
    sub_2204DA45C(&unk_2208AB3E8);

    v30 = *(v0 + 8);

    return v30();
  }

  while (1)
  {
    v3 = *(v0 + 1544);
    *v1 = *v2;
    *(v0 + 1448) = v3;
    *(v0 + 1464) = *(v0 + 1560);
    *(v0 + 1480) = *(v0 + 1576);
    v4 = *v1;
    v5 = *(*v1 + 16);
    if (!v5)
    {
      sub_2206DE308(v0 + 1432);
      goto LABEL_19;
    }

    v6 = *(v0 + 2336);
    v7 = *(v0 + 2304);
    v8 = *(v0 + 2296);
    v9 = *(v7 + 16);
    v7 += 16;
    v10 = *(v7 + 64);
    *(v0 + 2432) = v10;
    v11 = v10;
    v12 = (v10 + 32) & ~v10;
    *(v0 + 2344) = v9;
    *(v0 + 2352) = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v40 = v9;
    v9(v6, v4 + v12, v8);
    v13 = v5 - 1;
    v41 = v11;
    if (v5 == 1)
    {
      *(v0 + 1672) = 0;
      *(v0 + 1640) = 0u;
      *(v0 + 1656) = 0u;
      *(v0 + 1624) = 0u;
    }

    else
    {
      v14 = *(v0 + 2304);
      sub_22052BCFC(0, &qword_28127E198, MEMORY[0x277D69810], MEMORY[0x277D84560]);
      v15 = *(v14 + 72);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      if (!v15)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        return MEMORY[0x282200930](v17, v18, v19, v20);
      }

      if (v17 - v12 == 0x8000000000000000 && v15 == -1)
      {
        goto LABEL_26;
      }

      v16[2] = v13;
      v16[3] = 2 * ((v17 - v12) / v15);
      swift_arrayInitWithCopy();
      sub_2206DE498(v0 + 1440, v0 + 1632);
      *(v0 + 1624) = v16;
    }

    sub_2206DE4F4(v0 + 1624, v0 + 1336);
    v22 = *(v0 + 1440);
    v23 = sub_22088681C();
    if (*(v22 + 16))
    {
      break;
    }

    (*(*(v0 + 2304) + 8))(*(v0 + 2336), *(v0 + 2296));

LABEL_4:
    sub_2206DE308(v0 + 1432);
    sub_2206DE3B8(v0 + 1336, v0 + 1528);
    if (!*v2)
    {
      goto LABEL_17;
    }
  }

  v25 = sub_2204AF97C(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
    (*(*(v0 + 2304) + 8))(*(v0 + 2336), *(v0 + 2296));
    goto LABEL_4;
  }

  v32 = *(v0 + 2328);
  v33 = *(v0 + 2312);
  v34 = *(v0 + 2304);
  v35 = *(v0 + 2296);
  v39 = *(v0 + 2168);
  v36 = *(*(v22 + 56) + 8 * v25);
  v40(v32, *(v0 + 2336), v35);
  v37 = (v41 + 24) & ~v41;
  v38 = swift_allocObject();
  *(v0 + 2360) = v38;
  *(v38 + 16) = v39;
  (*(v34 + 32))(v38 + v37, v32, v35);
  *(v38 + ((v37 + v33 + 7) & 0xFFFFFFFFFFFFFFF8)) = v36;

  sub_2204DA45C(&unk_2208AB3D8);
  sub_22052BCFC(0, &qword_28127EB60, MEMORY[0x277D69268], MEMORY[0x277D83940]);
  swift_asyncLet_begin();

  sub_2204DA45C(&unk_2208AB3E8);
  swift_asyncLet_begin();
  v19 = sub_2206D5700;
  v17 = v0 + 16;
  v18 = v0 + 1880;
  v20 = v0 + 1776;

  return MEMORY[0x282200930](v17, v18, v19, v20);
}

uint64_t sub_2206D68B4()
{
  (*(v0[288] + 8))(v0[292], v0[287]);
  sub_2206DE308((v0 + 179));
  sub_2206DE42C((v0 + 167));
  sub_2204DA45C(&unk_2208AB3D8);
  sub_2204DA45C(&unk_2208AB3E8);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2206D6A8C()
{
  (*(v0[288] + 8))(v0[292], v0[287]);
  sub_2206DE308((v0 + 179));
  sub_2206DE42C((v0 + 167));
  sub_2204DA45C(&unk_2208AB3D8);
  sub_2204DA45C(&unk_2208AB3E8);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2206D6BEC()
{
  if (qword_281294340 != -1)
  {
    swift_once();
  }

  v1 = v0[303];
  v10 = v0[299];
  v2 = v0[284];
  v11 = v0[283];
  v12 = v0[285];
  v3 = v0[282];
  v4 = v0[278];
  sub_220891ADC();
  sub_22048D7F8();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_220899360;
  v0[227] = 0;
  v0[228] = 0xE000000000000000;
  v0[229] = v1;
  sub_2204446D4(0, &qword_28127DE30);
  sub_22089264C();
  v6 = v0[227];
  v7 = v0[228];
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_22048D860();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  sub_22088A7EC();

  v10(v3, v4);
  (*(v2 + 8))(v12, v11);
  v8 = v0[286];

  return MEMORY[0x282200920](v0 + 82, v8, sub_2206D6DC0, v0 + 230);
}

uint64_t sub_2206D6E18()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  v1 = OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_config;
  sub_220452A8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2206DE7EC(v0 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_knobs, type metadata accessor for StockForYouFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_headlineViewingHistory);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_newsFeedService);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_formatService);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StockForYouFeedGroupEmitter()
{
  result = qword_281287D30;
  if (!qword_281287D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2206D6F7C()
{
  sub_220452A8C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StockForYouFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2206D7068(uint64_t a1)
{
  sub_2206DF978(0, &qword_281296C50, type metadata accessor for ForYouFeedServiceConfig, sub_220502768, MEMORY[0x277D31C68]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - v6;
  if (qword_281294340 != -1)
  {
    swift_once();
  }

  sub_220891AFC();
  sub_22088A7EC();
  sub_22061A9B8();
  (*(v4 + 16))(v7, a1, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v7, v3);
  return sub_220888E2C();
}

uint64_t sub_2206D7254(uint64_t a1)
{
  v3 = *v1;
  sub_22052BCFC(0, &qword_281298680, sub_22052B704, MEMORY[0x277D6CF30]);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;

  return sub_220888E2C();
}

uint64_t sub_2206D7308@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_config;
  sub_220452A8C();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for ForYouFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2206D739C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for StockForYouFeedGroupKnobs();
  a1[4] = sub_220502864(&qword_281289458, type metadata accessor for StockForYouFeedGroupKnobs);
  a1[5] = sub_220502864(&qword_27CF58C98, type metadata accessor for StockForYouFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_2206DE784(v3 + v4, boxed_opaque_existential_1, type metadata accessor for StockForYouFeedGroupKnobs);
}

uint64_t sub_2206D74A0@<X0>(uint64_t *a1@<X8>)
{
  sub_22052BCFC(0, &qword_28127DEC0, sub_22052BFB4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_220452A8C();
  v3 = sub_22088F46C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_22052BDC4(inited);
  swift_setDeallocating();
  sub_2206DE7EC(inited + 32, sub_22052BFB4);
  sub_22052BCFC(0, &qword_281298870, type metadata accessor for StockForYouFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_2206DFCCC();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_22088883C();
}

uint64_t sub_2206D7610()
{
  sub_220502864(&qword_281287D48, type metadata accessor for StockForYouFeedGroupEmitter);

  return sub_22088882C();
}

uint64_t sub_2206D779C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2204C6018;

  return sub_2206D4068(a1, v5, v4);
}

uint64_t sub_2206D7848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_2206D78F8;

  return sub_2206D7A68(a3, a4);
}

uint64_t sub_2206D78F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_2206D7A44, 0, 0);
  }
}

uint64_t sub_2206D7A68(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_220885ACC();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_22088516C();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2206D7BA0, 0, 0);
}

uint64_t sub_2206D7BA0()
{
  v1 = v0[4];
  if (*(v1 + 16))
  {
    v2 = v0[10];
    v3 = v0[11];
    v4 = v0[8];
    v15 = v0[9];
    v16 = v0[13];
    v5 = v0[7];
    v13 = v0[6];
    v14 = v0[12];
    v6 = v0[5];
    v17 = v0[3];
    sub_22088515C();
    sub_22088515C();
    __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
    sub_22088641C();
    sub_2208858FC();
    (*(v5 + 8))(v4, v13);
    sub_22088508C();
    v7 = *(v2 + 8);
    v0[14] = v7;
    v0[15] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v15);
    v8 = swift_task_alloc();
    v8[2] = v6;
    v8[3] = v16;
    v8[4] = v14;
    v8[5] = v17;
    sub_220573F68(sub_2206DF954, v8, v1);

    __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_newsFeedService), *(v6 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_newsFeedService + 24));
    v0[16] = sub_220885E0C();

    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_2206D7E18;

    return MEMORY[0x2821D23D8](v0 + 2);
  }

  else
  {

    v10 = v0[1];
    v11 = MEMORY[0x277D84F90];

    return v10(v11);
  }
}

uint64_t sub_2206D7E18()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2206D7FF0;
  }

  else
  {

    v2 = sub_2206D7F34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206D7F34()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[2];
  v1(v0[12], v3);
  v1(v2, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_2206D7FF0()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];

  v2(v3, v4);
  v2(v1, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2206D80B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2206D80D0, 0, 0);
}

uint64_t sub_2206D80D0()
{
  swift_getObjectType();
  v0[4] = sub_22088645C();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_2206D8194;
  v2 = v0[2];

  return MEMORY[0x2821D23D8](v2);
}

uint64_t sub_2206D8194()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2206D82D0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2206D82D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2206D8334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[14] = a7;
  v8[15] = v7;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[8] = a1;
  v8[9] = a2;
  v8[16] = *v7;
  v9 = MEMORY[0x277D83D88];
  sub_22052BCFC(0, &qword_281296B70, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v8[17] = swift_task_alloc();
  sub_22088FB9C();
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v10 = sub_22088F39C();
  v8[20] = v10;
  v8[21] = *(v10 - 8);
  v8[22] = swift_task_alloc();
  sub_22052BCFC(0, &qword_281296808, MEMORY[0x277D339F0], v9);
  v8[23] = swift_task_alloc();
  sub_22052BCFC(0, &unk_2812967D0, MEMORY[0x277D33EC8], v9);
  v8[24] = swift_task_alloc();
  sub_22052BCFC(0, &qword_281296B18, sub_22044CF38, v9);
  v8[25] = swift_task_alloc();
  v11 = sub_2208906EC();
  v8[26] = v11;
  v8[27] = *(v11 - 8);
  v8[28] = swift_task_alloc();
  v12 = sub_2208904CC();
  v8[29] = v12;
  v8[30] = *(v12 - 8);
  v8[31] = swift_task_alloc();
  sub_22052BCFC(0, &qword_281296788, sub_2206DE84C, v9);
  v8[32] = swift_task_alloc();
  sub_22052BCFC(0, &qword_281296D50, MEMORY[0x277D2D4E0], v9);
  v8[33] = swift_task_alloc();
  v13 = sub_22089037C();
  v8[34] = v13;
  v8[35] = *(v13 - 8);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v14 = sub_220890A3C();
  v8[38] = v14;
  v8[39] = *(v14 - 8);
  v8[40] = swift_task_alloc();
  v15 = sub_220890A7C();
  v8[41] = v15;
  v8[42] = *(v15 - 8);
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  sub_22052BCFC(0, &qword_2812968D8, MEMORY[0x277D33478], v9);
  v8[45] = swift_task_alloc();
  type metadata accessor for StockForYouFeedGroupConfigData();
  v8[46] = swift_task_alloc();
  v16 = sub_22089039C();
  v8[47] = v16;
  v8[48] = *(v16 - 8);
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();
  sub_2206DE8C8();
  v8[51] = v17;
  v8[52] = swift_task_alloc();
  v18 = sub_220885D1C();
  v8[53] = v18;
  v8[54] = *(v18 - 8);
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v19 = sub_22088698C();
  v8[57] = v19;
  v8[58] = *(v19 - 8);
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  v8[63] = swift_task_alloc();
  v8[64] = swift_task_alloc();
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v8[70] = swift_task_alloc();
  v8[71] = swift_task_alloc();
  v8[72] = swift_task_alloc();
  v8[73] = swift_task_alloc();
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  sub_22052BCFC(0, &unk_281299020, MEMORY[0x277D69858], v9);
  v8[76] = swift_task_alloc();
  v8[77] = swift_task_alloc();
  v8[78] = swift_task_alloc();
  v8[79] = swift_task_alloc();
  v8[80] = swift_task_alloc();
  v8[81] = swift_task_alloc();
  v8[82] = swift_task_alloc();
  v8[83] = swift_task_alloc();
  v8[84] = swift_task_alloc();
  v8[85] = swift_task_alloc();
  v20 = sub_22088685C();
  v8[86] = v20;
  v8[87] = *(v20 - 8);
  v8[88] = swift_task_alloc();
  v21 = sub_22088561C();
  v8[89] = v21;
  v8[90] = *(v21 - 8);
  v8[91] = swift_task_alloc();
  v22 = sub_22088FFFC();
  v8[92] = v22;
  v8[93] = *(v22 - 8);
  v8[94] = swift_task_alloc();
  v23 = sub_22088609C();
  v8[95] = v23;
  v8[96] = *(v23 - 8);
  v8[97] = swift_task_alloc();
  v8[98] = swift_task_alloc();
  v24 = sub_220885ACC();
  v8[99] = v24;
  v8[100] = *(v24 - 8);
  v8[101] = swift_task_alloc();
  v8[102] = swift_task_alloc();
  v8[103] = swift_task_alloc();
  v25 = sub_22088573C();
  v8[104] = v25;
  v8[105] = *(v25 - 8);
  v8[106] = swift_task_alloc();
  v8[107] = swift_task_alloc();
  v8[108] = swift_task_alloc();
  v8[109] = swift_task_alloc();
  v8[110] = swift_task_alloc();
  v8[111] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2206D8DF4, 0, 0);
}

uint64_t sub_2206D8DF4()
{
  v474 = v0;
  v1 = v0[15];
  v459 = v0[12];
  v390 = v0[14];
  __swift_project_boxed_opaque_existential_1(v390, v390[3]);
  sub_22088572C();
  sub_2208860CC();

  sub_2208856DC();

  v421 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  sub_22088641C();
  sub_22052BCFC(0, &qword_28127E1A8, MEMORY[0x277D695B0], MEMORY[0x277D84560]);
  v468 = sub_22088608C();
  v461 = *(v468 - 8);
  v446 = *(v461 + 72);
  v394 = (*(v461 + 80) + 32) & ~*(v461 + 80);
  v419 = swift_allocObject();
  *(v419 + 16) = xmmword_2208A22C0;
  v2 = *(v459 + 16);
  v443 = v0;
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v0[12];
  v4 = sub_220588764(v2, 0);
  v5 = sub_22067DCB0(v473, v4 + 4, v2, v3);

  sub_22067DE08();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:
    v4 = MEMORY[0x277D84F90];
  }

  v6 = v0[102];
  v7 = v0[100];
  v433 = v443[99];
  v374 = v443[94];
  v391 = v443[93];
  v399 = v443[92];
  v385 = v443[91];
  v460 = v443[90];
  v406 = v443[88];
  v409 = v443[89];
  v457 = v443[87];
  v411 = v443[86];
  v367 = v443[15];
  *(v419 + v394) = v4;
  v8 = *(v461 + 104);
  v365 = *MEMORY[0x277D69588];
  v8(v419 + v394);
  v401 = v8;
  v9 = (v419 + v394 + v446);
  sub_220668490();
  v372 = v10;
  v11 = *(v10 + 48);
  __swift_project_boxed_opaque_existential_1((v421 + 24), *(v421 + 48));
  sub_22088641C();
  v12 = sub_220885A2C();
  v13 = *(v7 + 8);
  v443[112] = v13;
  v443[113] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v366 = v13;
  v13(v6, v433);
  *v9 = v12;
  v416 = *(v367 + 16);
  *(v9 + v11) = v416;
  v14 = *MEMORY[0x277D693C0];
  v15 = sub_220885B7C();
  v16 = *(v15 - 8);
  v424 = *(v16 + 104);
  v424(v9 + v11, v14, v15);
  v17 = *(v16 + 56);
  v16 += 56;
  v17(v9 + v11, 0, 1, v15);
  v369 = *MEMORY[0x277D695A0];
  v8(v9);
  v18 = v419 + v394 + 2 * v446;
  v19 = *(v372 + 48);
  v443[114] = OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_knobs;
  type metadata accessor for StockForYouFeedGroupKnobs();
  swift_unknownObjectRetain_n();
  sub_22088FA8C();
  sub_22088FB6C();
  (*(v391 + 8))(v374, v399);
  v424((v18 + v19), *MEMORY[0x277D693E0], v15);
  v17((v18 + v19), 0, 1, v15);
  v20 = v8;
  (v8)(v419 + v394 + 2 * v446, v369, v468);
  v375 = 2 * v446;
  v392 = 3 * v446;
  v21 = (v419 + v394 + 3 * v446);
  v22 = sub_220885AAC();
  sub_220885ABC();
  *v21 = v22;
  v21[1] = v23;
  (v20)(v21, *MEMORY[0x277D69598], v468);
  sub_22052BCFC(0, &qword_28127E1B0, MEMORY[0x277D69418], MEMORY[0x277D84560]);
  v24 = *(v16 + 16);
  v25 = (*(v16 + 24) + 32) & ~*(v16 + 24);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_220899920;
  v424((v26 + v25), *MEMORY[0x277D693D0], v15);
  sub_220885A0C();
  *(v26 + v25 + v24) = v27;
  v424((v26 + v25 + v24), *MEMORY[0x277D69410], v15);
  *(v419 + v394 + 4 * v446) = v26;
  (v401)(v419 + v394 + 4 * v446, *MEMORY[0x277D69580], v468);
  v370 = 4 * v446;
  v424((v419 + v394 + 5 * v446), *MEMORY[0x277D693F8], v15);
  v28 = *MEMORY[0x277D695A8];
  (v401)(v419 + v394 + 5 * v446, v28, v468);
  v424((v419 + v394 + 6 * v446), *MEMORY[0x277D693D8], v15);
  (v401)(v419 + v394 + 6 * v446, v28, v468);
  v29 = (v419 + v394 + 7 * v446);
  *v29 = v416;
  sub_22046DA2C(v421 + 24, (v29 + 1));
  v424(v29, *MEMORY[0x277D693F0], v15);
  (v401)(v29, v28, v468);
  *(v419 + v394 + 8 * v446) = sub_22088586C();
  v371 = *MEMORY[0x277D693C8];
  (v424)(v419 + v394 + 8 * v446);
  v376 = v28;
  (v401)(v419 + v394 + 8 * v446, v28, v468);
  sub_22088607C();
  sub_22088571C();
  sub_22048D7F8();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_22089B140;
  sub_220502864(&unk_281299340, MEMORY[0x277D69268]);
  sub_22089193C();
  sub_22089199C();
  v31 = sub_22089198C();
  v32 = MEMORY[0x277D83B88];
  v33 = MEMORY[0x277D83C10];
  *(v30 + 56) = MEMORY[0x277D83B88];
  *(v30 + 64) = v33;
  *(v30 + 32) = v31;
  sub_22089193C();
  sub_22089199C();
  v34 = sub_22089198C();
  *(v30 + 96) = v32;
  *(v30 + 104) = v33;
  *(v30 + 72) = v34;
  sub_2208856EC();
  sub_22088560C();
  v35 = *(v460 + 8);
  v443[115] = v35;
  v443[116] = (v460 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v413 = v35;
  v35(v385, v409);
  v36 = sub_22088681C();
  v38 = v37;
  v39 = v411;
  v412 = *(v457 + 8);
  v412(v406, v39);
  *(v30 + 136) = MEMORY[0x277D837D0];
  v407 = sub_22048D860();
  *(v30 + 144) = v407;
  *(v30 + 112) = v36;
  *(v30 + 120) = v38;
  sub_22048D2F4();
  v40 = sub_2208922DC();
  sub_220891AFC();
  sub_22088A7EC();

  __swift_project_boxed_opaque_existential_1((v421 + 24), *(v421 + 48));
  sub_22088641C();
  if (sub_2208859EC())
  {
    v41 = v443[84];
    v42 = v443[57];
    v43 = v443[58];
    sub_2206DDB84(v443[110], v41);
    if ((*(v43 + 48))(v41, 1, v42) == 1)
    {
      sub_2206DEDC4(v443[84], &unk_281299020, MEMORY[0x277D69858]);
      v44 = 1;
      v417 = MEMORY[0x277D84F90];
      v420 = MEMORY[0x277D84F90];
      v414 = MEMORY[0x277D84F90];
    }

    else
    {
      v45 = *(v443[58] + 32);
      v45(v443[75], v443[84], v443[57]);
      v46 = sub_22088696C();
      v48 = v47;
      v49 = sub_22045E924(0, 1, 1, MEMORY[0x277D84F90]);
      v51 = *(v49 + 2);
      v50 = *(v49 + 3);
      v417 = v49;
      if (v51 >= v50 >> 1)
      {
        v417 = sub_22045E924((v50 > 1), v51 + 1, 1, v49);
      }

      *(v417 + 2) = v51 + 1;
      v52 = &v417[16 * v51];
      *(v52 + 4) = v46;
      *(v52 + 5) = v48;
      v53 = sub_22088697C();
      if (v54)
      {
        v55 = v53;
        v56 = v54;
        v57 = sub_22045E924(0, 1, 1, MEMORY[0x277D84F90]);
        v59 = *(v57 + 2);
        v58 = *(v57 + 3);
        v420 = v57;
        if (v59 >= v58 >> 1)
        {
          v420 = sub_22045E924((v58 > 1), v59 + 1, 1, v57);
        }

        *(v420 + 2) = v59 + 1;
        v60 = &v420[16 * v59];
        *(v60 + 4) = v55;
        *(v60 + 5) = v56;
      }

      else
      {
        v420 = MEMORY[0x277D84F90];
      }

      v61 = sub_22088690C();
      if (v62)
      {
        v63 = v61;
        v64 = v62;
        v65 = sub_22045E924(0, 1, 1, MEMORY[0x277D84F90]);
        v67 = *(v65 + 2);
        v66 = *(v65 + 3);
        v414 = v65;
        if (v67 >= v66 >> 1)
        {
          v414 = sub_22045E924((v66 > 1), v67 + 1, 1, v65);
        }

        *(v414 + 2) = v67 + 1;
        v68 = &v414[16 * v67];
        *(v68 + 4) = v63;
        *(v68 + 5) = v64;
      }

      else
      {
        v414 = MEMORY[0x277D84F90];
      }

      v45(v443[85], v443[75], v443[57]);
      v44 = 0;
    }
  }

  else
  {
    v414 = MEMORY[0x277D84F90];
    v417 = MEMORY[0x277D84F90];
    v420 = MEMORY[0x277D84F90];
    v44 = 1;
  }

  v69 = 1;
  v422 = *(v443[58] + 56);
  v422(v443[85], v44, 1, v443[57]);
  if (sub_220885A5C())
  {
    v362 = v443[108];
    v363 = v443[109];
    v359 = v443[107];
    v360 = v443[105];
    v361 = v443[104];
    v377 = v443[96];
    v378 = v443[95];
    v364 = v443[81];
    v368 = v443[58];
    v381 = v443[57];
    v70 = v443[56];
    v357 = v443[106];
    v355 = v443[55];
    v356 = v443[97];
    v72 = v443[53];
    v71 = v443[54];
    v388 = v71;
    v353 = v443[15];

    sub_220885A9C();
    v74 = v73;
    v354 = *(v71 + 104);
    v354(v70, *MEMORY[0x277D69450], v72);
    v373 = swift_allocObject();
    *(v373 + 16) = xmmword_2208AB1B0;
    v75 = (v373 + v394);
    *v75 = v417;
    (v401)(v373 + v394, v365, v468);
    *(v75 + v446) = v414;
    v424((v373 + v394 + v446), v371, v15);
    (v401)(v373 + v394 + v446, v376, v468);
    *(v75 + 2 * v446) = v74;
    v424((v373 + v394 + v375), *MEMORY[0x277D69408], v15);
    (v401)(v373 + v394 + v375, v376, v468);
    sub_22046DA2C(v353 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_headlineViewingHistory, v373 + v394 + v392);
    v424((v373 + v394 + v392), *MEMORY[0x277D69400], v15);
    (v401)(v373 + v394 + v392, v376, v468);
    v424((v373 + v394 + v370), *MEMORY[0x277D693E8], v15);
    (v401)(v373 + v394 + v370, v376, v468);
    *(v75 + 5 * v446) = v420;
    (v401)(v373 + v394 + 5 * v446, *MEMORY[0x277D69590], v468);
    sub_22088607C();
    v354(v355, *MEMORY[0x277D69460], v72);
    sub_2208856FC();
    v76 = *(v388 + 8);
    v76(v355, v72);
    sub_22088571C();
    v77 = *(v360 + 8);
    v77(v357, v361);
    sub_2208856FC();
    v77(v359, v361);
    sub_22088570C();
    v77(v362, v361);
    sub_220707390(v364);
    v77(v363, v361);
    (*(v377 + 8))(v356, v378);
    v76(v70, v72);
    v78 = *(v368 + 48);
    if (v78(v364, 1, v381) == 1)
    {
      sub_2206DEDC4(v443[81], &unk_281299020, MEMORY[0x277D69858]);
      v79 = 1;
    }

    else
    {
      (*(v443[58] + 32))(v443[82], v443[81], v443[57]);
      v79 = 0;
    }

    v80 = v443[82];
    v81 = v443[57];
    v422(v80, v79, 1, v81);
    if (v78(v80, 1, v81) == 1)
    {
      sub_2206DEDC4(v443[82], &unk_281299020, MEMORY[0x277D69858]);
      v69 = 1;
    }

    else
    {
      v82 = *(v443[58] + 32);
      v82(v443[74], v443[82], v443[57]);
      v83 = sub_22088696C();
      v85 = v84;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v417 = sub_22045E924(0, *(v417 + 2) + 1, 1, v417);
      }

      v87 = *(v417 + 2);
      v86 = *(v417 + 3);
      if (v87 >= v86 >> 1)
      {
        v417 = sub_22045E924((v86 > 1), v87 + 1, 1, v417);
      }

      *(v417 + 2) = v87 + 1;
      v88 = &v417[16 * v87];
      *(v88 + 4) = v83;
      *(v88 + 5) = v85;
      v89 = sub_22088697C();
      if (v90)
      {
        v91 = v89;
        v92 = v90;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v420 = sub_22045E924(0, *(v420 + 2) + 1, 1, v420);
        }

        v94 = *(v420 + 2);
        v93 = *(v420 + 3);
        if (v94 >= v93 >> 1)
        {
          v420 = sub_22045E924((v93 > 1), v94 + 1, 1, v420);
        }

        *(v420 + 2) = v94 + 1;
        v95 = &v420[16 * v94];
        *(v95 + 4) = v91;
        *(v95 + 5) = v92;
      }

      v96 = sub_22088690C();
      if (v97)
      {
        v98 = v96;
        v99 = v97;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v414 = sub_22045E924(0, *(v414 + 2) + 1, 1, v414);
        }

        v101 = *(v414 + 2);
        v100 = *(v414 + 3);
        if (v101 >= v100 >> 1)
        {
          v414 = sub_22045E924((v100 > 1), v101 + 1, 1, v414);
        }

        *(v414 + 2) = v101 + 1;
        v102 = &v414[16 * v101];
        *(v102 + 4) = v98;
        *(v102 + 5) = v99;
      }

      v82(v443[83], v443[74], v443[57]);
      v69 = 0;
    }
  }

  v103 = v443[108];
  v104 = v443[105];
  v469 = v443[104];
  v395 = v443[91];
  v425 = v443[89];
  v402 = v443[88];
  v462 = v443[85];
  v447 = v443[80];
  v105 = v443[58];
  v427 = v443[86];
  v434 = v443[57];
  v106 = v443[14];
  (v422)(v443[83], v69, 1);
  __swift_project_boxed_opaque_existential_1(v106, v390[3]);
  sub_22088572C();
  v107 = v443;
  sub_2208860DC();

  sub_2208856DC();

  v108 = sub_2206DE95C(v103, v417, v420);
  v109 = *(v104 + 8);
  v443[117] = v109;
  v443[118] = (v104 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v389 = v109;
  v109(v103, v469);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_220899920;
  v470 = v108;
  v111 = *(v108 + 16);
  *(v110 + 56) = MEMORY[0x277D83B88];
  *(v110 + 64) = MEMORY[0x277D83C10];
  *(v110 + 32) = v111;
  sub_2208856EC();
  sub_22088560C();
  v413(v395, v425);
  v112 = sub_22088681C();
  v114 = v113;
  v412(v402, v427);
  *(v110 + 96) = MEMORY[0x277D837D0];
  *(v110 + 104) = v407;
  *(v110 + 72) = v112;
  *(v110 + 80) = v114;
  v115 = sub_2208922DC();
  sub_220891AFC();
  sub_22088A7EC();

  v443[6] = MEMORY[0x277D84F90];
  sub_2206DED30(v462, v447);
  v116 = *(v105 + 48);
  v117 = v116(v447, 1, v434);
  v118 = v443[80];
  if (v117 == 1)
  {
    sub_2206DEDC4(v118, &unk_281299020, MEMORY[0x277D69858]);
    v119 = &unk_281287000;
  }

  else
  {
    v120 = v443[15];
    v121 = *(v443[58] + 32);
    v121(v443[73], v118, v443[57]);
    v119 = &unk_281287000;
    __swift_project_boxed_opaque_existential_1((v120 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_headlineViewingHistory), *(v120 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_headlineViewingHistory + 24));
    if ((sub_22088639C() & 1) == 0)
    {
      v462 = v121;
      v425 = v116;
      v175 = v443[91];
      v176 = v443[89];
      v177 = v443[88];
      v178 = v443[86];
      v179 = v443[73];
      v180 = v443[72];
      v181 = v443[58];
      v450 = v443[57];
      v182 = swift_allocObject();
      *(v182 + 16) = xmmword_220899920;
      sub_2208856EC();
      sub_22088560C();
      v413(v175, v176);
      v183 = sub_22088681C();
      v185 = v184;
      v412(v177, v178);
      v186 = MEMORY[0x277D837D0];
      *(v182 + 56) = MEMORY[0x277D837D0];
      *(v182 + 64) = v407;
      *(v182 + 32) = v183;
      *(v182 + 40) = v185;
      v187 = sub_22088694C();
      *(v182 + 96) = v186;
      *(v182 + 104) = v407;
      if (v188)
      {
        v189 = v187;
      }

      else
      {
        v189 = 0;
      }

      v190 = 0xE000000000000000;
      if (v188)
      {
        v190 = v188;
      }

      *(v182 + 72) = v189;
      *(v182 + 80) = v190;
      v191 = sub_2208922DC();
      sub_220891AFC();
      sub_22088A7EC();

      (*(v181 + 16))(v180, v179, v450);
      v125 = sub_220588574(0, 1, 1, MEMORY[0x277D84F90]);
      v193 = *(v125 + 2);
      v192 = *(v125 + 3);
      if (v193 >= v192 >> 1)
      {
        v125 = sub_220588574(v192 > 1, v193 + 1, 1, v125);
      }

      v107 = v443;
      v194 = v443[72];
      v195 = v443[57];
      v196 = v443[58];
      (*(v196 + 8))(v443[73], v195);
      *(v125 + 2) = v193 + 1;
      (v462)(&v125[((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v193], v194, v195);
      v443[6] = v125;
      goto LABEL_95;
    }

    (*(v443[58] + 8))(v443[73], v443[57]);
  }

  v122 = v443[79];
  v123 = v443[57];
  sub_2206DED30(v443[83], v122);
  if (v116(v122, 1, v123) != 1)
  {
    v425 = v116;
    v156 = v443[91];
    v157 = v443[89];
    v158 = v443[88];
    v159 = v443[86];
    v160 = v443[71];
    v449 = v443[70];
    v161 = v443[58];
    v436 = v443[57];
    v462 = *(v161 + 32);
    (v462)(v160, v443[79]);
    v162 = swift_allocObject();
    *(v162 + 16) = xmmword_220899920;
    sub_2208856EC();
    sub_22088560C();
    v413(v156, v157);
    v163 = sub_22088681C();
    v165 = v164;
    v412(v158, v159);
    v166 = MEMORY[0x277D837D0];
    *(v162 + 56) = MEMORY[0x277D837D0];
    *(v162 + 64) = v407;
    *(v162 + 32) = v163;
    *(v162 + 40) = v165;
    v167 = sub_22088694C();
    *(v162 + 96) = v166;
    *(v162 + 104) = v407;
    if (v168)
    {
      v169 = v167;
    }

    else
    {
      v169 = 0;
    }

    v170 = 0xE000000000000000;
    if (v168)
    {
      v170 = v168;
    }

    *(v162 + 72) = v169;
    *(v162 + 80) = v170;
    v171 = sub_2208922DC();
    sub_220891AFC();
    sub_22088A7EC();

    (*(v161 + 16))(v449, v160, v436);
    v125 = sub_220588574(0, 1, 1, MEMORY[0x277D84F90]);
    v126 = *(v125 + 2);
    v129 = *(v125 + 3);
    v122 = (v126 + 1);
    if (v126 >= v129 >> 1)
    {
      goto LABEL_145;
    }

    goto LABEL_71;
  }

  sub_2206DEDC4(v443[79], &unk_281299020, MEMORY[0x277D69858]);
  v124 = v470;
  v125 = *(v470 + 16);
  if (v125)
  {
    v425 = v116;
    v126 = 0;
    v127 = v443[58];
    v435 = (v443[15] + v119[434]);
    v403 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    v128 = (v127 + 8);
    v448 = (v127 + 8);
    do
    {
      v129 = *(v124 + 16);
      if (v126 >= v129)
      {
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      v122 = v443[67];
      v462 = *(v127 + 72);
      v130 = *(v127 + 16);
      v130(v122, v470 + v403 + v462 * v126, v443[57]);
      if (sub_2208868FC())
      {
        v122 = __swift_project_boxed_opaque_existential_1(v435, v435[3]);
        v128 = (v127 + 8);
        if ((sub_22088639C() & 1) == 0)
        {
          v131 = v443[91];
          v132 = v443[88];
          v382 = v443[89];
          v386 = v443[86];
          v133 = v443[69];
          v134 = v443[68];
          v396 = v443[66];
          v135 = v443[57];
          v136 = *(v443[58] + 32);
          v136(v134, v443[67], v135);
          v137 = v133;
          v136(v133, v134, v135);
          v138 = swift_allocObject();
          *(v138 + 16) = xmmword_220899920;
          sub_2208856EC();
          sub_22088560C();
          v413(v131, v382);
          v139 = sub_22088681C();
          v141 = v140;
          v412(v132, v386);
          v142 = MEMORY[0x277D837D0];
          *(v138 + 56) = MEMORY[0x277D837D0];
          *(v138 + 64) = v407;
          *(v138 + 32) = v139;
          *(v138 + 40) = v141;
          v143 = sub_22088694C();
          *(v138 + 96) = v142;
          *(v138 + 104) = v407;
          if (v144)
          {
            v145 = v143;
          }

          else
          {
            v145 = 0;
          }

          v146 = 0xE000000000000000;
          if (v144)
          {
            v146 = v144;
          }

          *(v138 + 72) = v145;
          *(v138 + 80) = v146;
          v147 = sub_2208922DC();
          sub_220891AFC();
          sub_22088A7EC();

          v130(v396, v137, v135);
          v125 = sub_220588574(0, 1, 1, MEMORY[0x277D84F90]);
          v149 = *(v125 + 2);
          v148 = *(v125 + 3);
          v150 = v136;
          if (v149 >= v148 >> 1)
          {
            v125 = sub_220588574(v148 > 1, v149 + 1, 1, v125);
          }

          v116 = v425;
          v107 = v443;
          v151 = v443[69];
          v152 = v443[66];
          v153 = v443[57];
          *(v125 + 2) = v149 + 1;
          v150(&v125[v403 + v149 * v462], v152, v153);
          v443[6] = v125;
          v154 = swift_task_alloc();
          *(v154 + 16) = v151;
          sub_220687844(sub_2206DF7B0, v154, v470);
          v470 = v155;

          (*v448)(v151, v153);
          if (*(v125 + 2))
          {
            goto LABEL_96;
          }

          goto LABEL_86;
        }
      }

      ++v126;
      (*v128)(v443[67], v443[57]);
      v124 = v470;
    }

    while (v125 != v126);
    v126 = 0;
    v197 = v443[58];
    v198 = (v197 + 8);
    do
    {
      v129 = *(v124 + 16);
      if (v126 >= v129)
      {
        goto LABEL_143;
      }

      v122 = v443[63];
      v199 = (*(v197 + 80) + 32) & ~*(v197 + 80);
      v200 = *(v197 + 72);
      v201 = *(v197 + 16);
      v201(v122, v124 + v199 + v200 * v126, v443[57]);
      if (sub_2208868FC())
      {
        v379 = v443[91];
        v383 = v443[88];
        v393 = v443[89];
        v397 = v443[86];
        v203 = v443[65];
        v387 = v203;
        v204 = v443[64];
        v437 = v443[62];
        v205 = v443[58];
        v206 = *(v205 + 32);
        v404 = v443[57];
        v206(v204, v443[63], v404);
        v462 = v205 + 32;
        v451 = v206;
        v206(v203, v204, v404);
        v207 = swift_allocObject();
        *(v207 + 16) = xmmword_220899920;
        sub_2208856EC();
        sub_22088560C();
        v413(v379, v393);
        v208 = sub_22088681C();
        v210 = v209;
        v412(v383, v397);
        v211 = MEMORY[0x277D837D0];
        *(v207 + 56) = MEMORY[0x277D837D0];
        *(v207 + 64) = v407;
        *(v207 + 32) = v208;
        *(v207 + 40) = v210;
        v212 = sub_22088694C();
        *(v207 + 96) = v211;
        *(v207 + 104) = v407;
        if (v213)
        {
          v214 = v212;
        }

        else
        {
          v214 = 0;
        }

        v215 = 0xE000000000000000;
        if (v213)
        {
          v215 = v213;
        }

        *(v207 + 72) = v214;
        *(v207 + 80) = v215;
        v216 = sub_2208922DC();
        sub_220891AFC();
        sub_22088A7EC();

        v201(v437, v387, v404);
        v125 = sub_220588574(0, 1, 1, MEMORY[0x277D84F90]);
        v218 = *(v125 + 2);
        v217 = *(v125 + 3);
        if (v218 >= v217 >> 1)
        {
          v125 = sub_220588574(v217 > 1, v218 + 1, 1, v125);
        }

        v107 = v443;
        v219 = v443[65];
        v220 = v443[62];
        v221 = v443[57];
        *(v125 + 2) = v218 + 1;
        v451(&v125[v199 + v218 * v200], v220, v221);
        v443[6] = v125;
        v222 = swift_task_alloc();
        *(v222 + 16) = v219;
        sub_220687844(sub_2206DFDBC, v222, v470);
        v470 = v223;

        (*v198)(v219, v221);
        goto LABEL_95;
      }

      ++v126;
      (*v198)(v443[63], v443[57]);
      v124 = v470;
    }

    while (v125 != v126);
    v116 = v425;
  }

  v125 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_96;
  }

LABEL_86:
  for (i = 1; ; i = 0)
  {
    v224 = v107[85];
    v225 = v107[78];
    v226 = v107[57];
    v228 = v107[51];
    v227 = v107[52];
    v422(v225, i, 1, v226);
    v229 = *(v228 + 48);
    sub_2206DED30(v225, v227);
    sub_2206DED30(v224, v227 + v229);
    if (v116(v227, 1, v226) == 1)
    {
      v230 = v107[57];
      sub_2206DEDC4(v107[78], &unk_281299020, MEMORY[0x277D69858]);
      if (v116(v227 + v229, 1, v230) == 1)
      {
        v231 = v107[52];
LABEL_105:
        sub_2206DEDC4(v231, &unk_281299020, MEMORY[0x277D69858]);
        goto LABEL_117;
      }
    }

    else
    {
      v232 = v107[57];
      sub_2206DED30(v107[52], v107[77]);
      v233 = v116(v227 + v229, 1, v232);
      v234 = v107[78];
      v235 = v107[77];
      if (v233 != 1)
      {
        v264 = v107[61];
        v265 = v443[58];
        v266 = v443[57];
        v267 = v116;
        v268 = v443[52];
        (*(v265 + 32))(v264, v227 + v229, v266);
        sub_220502864(&unk_281299030, MEMORY[0x277D69858]);
        v269 = sub_2208912FC();
        v270 = *(v265 + 8);
        v270(v264, v266);
        v271 = v125;
        v272 = MEMORY[0x277D69858];
        sub_2206DEDC4(v234, &unk_281299020, MEMORY[0x277D69858]);
        v270(v235, v266);
        v107 = v443;
        v273 = v268;
        v116 = v267;
        v274 = v272;
        v125 = v271;
        sub_2206DEDC4(v273, &unk_281299020, v274);
        if (v269)
        {
          goto LABEL_117;
        }

        goto LABEL_103;
      }

      v236 = v107[57];
      v237 = v107[58];
      sub_2206DEDC4(v107[78], &unk_281299020, MEMORY[0x277D69858]);
      (*(v237 + 8))(v235, v236);
    }

    sub_2206DE7EC(v107[52], sub_2206DE8C8);
LABEL_103:
    v238 = v107[76];
    v239 = v107[57];
    sub_2206DED30(v107[85], v238);
    if (v116(v238, 1, v239) == 1)
    {
      v231 = v107[76];
      goto LABEL_105;
    }

    v240 = v107[91];
    v241 = v125;
    v242 = v107[89];
    v243 = v107;
    v244 = v107[88];
    v245 = v243[86];
    v246 = v243[60];
    v247 = v243[58];
    v428 = v243[57];
    v438 = v243[59];
    v462 = v247 + 32;
    v452 = *(v247 + 32);
    v452(v246, v243[76]);
    v248 = swift_allocObject();
    *(v248 + 16) = xmmword_220899920;
    sub_2208856EC();
    sub_22088560C();
    v249 = v242;
    v125 = v241;
    v413(v240, v249);
    v250 = sub_22088681C();
    v252 = v251;
    v412(v244, v245);
    v253 = MEMORY[0x277D837D0];
    *(v248 + 56) = MEMORY[0x277D837D0];
    *(v248 + 64) = v407;
    *(v248 + 32) = v250;
    *(v248 + 40) = v252;
    v254 = sub_22088694C();
    *(v248 + 96) = v253;
    *(v248 + 104) = v407;
    if (v255)
    {
      v256 = v254;
    }

    else
    {
      v256 = 0;
    }

    v257 = 0xE000000000000000;
    if (v255)
    {
      v257 = v255;
    }

    *(v248 + 72) = v256;
    *(v248 + 80) = v257;
    v258 = sub_2208922DC();
    sub_220891AFC();
    sub_22088A7EC();

    (*(v247 + 16))(v438, v246, v428);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v125 = sub_220588574(0, *(v125 + 2) + 1, 1, v125);
    }

    v260 = *(v125 + 2);
    v259 = *(v125 + 3);
    v107 = v443;
    if (v260 >= v259 >> 1)
    {
      v125 = sub_220588574(v259 > 1, v260 + 1, 1, v125);
    }

    v261 = v443[59];
    v262 = v443[57];
    v263 = v443[58];
    (*(v263 + 8))(v443[60], v262);
    *(v125 + 2) = v260 + 1;
    (v452)(&v125[((*(v263 + 80) + 32) & ~*(v263 + 80)) + *(v263 + 72) * v260], v261, v262);
    v443[6] = v125;
LABEL_117:
    sub_2205D33E8(v470);
    sub_220886A8C();
    sub_220502864(&qword_281287D58, type metadata accessor for StockForYouFeedGroupEmitter);
    sub_220886B3C();

    if (*(v107 + 1024) == 1)
    {
      v122 = v107[15];
      sub_220886A7C();
      sub_220886B3C();

      v129 = v107[7];
    }

    else
    {
      v122 = v107[101];
      v275 = sub_22088592C();
      v129 = 5;
      if (v275 < 5)
      {
        v129 = v275;
      }
    }

    v276 = v107[6];
    v126 = *(v276 + 16);
    if (v129 >= v126)
    {
      goto LABEL_124;
    }

    if ((v129 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_144:
    __break(1u);
LABEL_145:
    v125 = sub_220588574(v129 > 1, v122, 1, v125);
LABEL_71:
    v172 = v443[70];
    v173 = v443[57];
    v174 = v443[58];
    (*(v174 + 8))(v443[71], v173);
    *(v125 + 2) = v122;
    (v462)(&v125[((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v126], v172, v173);
    v107 = v443;
    v443[6] = v125;
LABEL_95:
    v116 = v425;
    if (!*(v125 + 2))
    {
      goto LABEL_86;
    }

LABEL_96:
    (*(v107[58] + 16))(v107[78], &v125[(*(v107[58] + 80) + 32) & ~*(v107[58] + 80)], v107[57]);
  }

  v277 = (2 * v129) | 1;
  v278 = *(v107[58] + 80);
  sub_2206CE6DC(v107[6], v276 + ((v278 + 32) & ~v278), 0, v277);
  v280 = v279;

  v126 = *(v280 + 16);
  v276 = v280;
LABEL_124:
  v107[119] = v276;
  if (v126 < sub_22088593C())
  {
    v463 = v107[111];
    v426 = v107[104];
    v429 = v107[110];
    v281 = v107[101];
    v423 = v107[99];
    v444 = v107[98];
    v453 = v107[103];
    v282 = v107[96];
    v439 = v107[95];
    v283 = v107[91];
    v284 = v107[89];
    v285 = v107[88];
    v286 = v107;
    v287 = v107[86];
    v405 = v286[85];
    v400 = v286[83];

    v288 = swift_allocObject();
    *(v288 + 16) = xmmword_22089B140;
    sub_2208856EC();
    sub_22088560C();
    v413(v283, v284);
    v289 = sub_22088681C();
    v291 = v290;
    v412(v285, v287);
    *(v288 + 56) = MEMORY[0x277D837D0];
    *(v288 + 64) = v407;
    *(v288 + 32) = v289;
    *(v288 + 40) = v291;
    v292 = sub_22088593C();
    v293 = MEMORY[0x277D83B88];
    *(v288 + 96) = MEMORY[0x277D83B88];
    v294 = MEMORY[0x277D83C10];
    *(v288 + 104) = MEMORY[0x277D83C10];
    *(v288 + 72) = v292;
    v295 = *(v276 + 16);
    *(v288 + 136) = v293;
    *(v288 + 144) = v294;
    *(v288 + 112) = v295;
    v296 = sub_2208922DC();
    sub_220891AFC();
    sub_22088A7EC();

    sub_2206DF75C();
    swift_allocError();
    swift_willThrow();
    v297 = MEMORY[0x277D69858];
    sub_2206DEDC4(v400, &unk_281299020, MEMORY[0x277D69858]);
    sub_2206DEDC4(v405, &unk_281299020, v297);
    v366(v281, v423);
    v389(v429, v426);
    (*(v282 + 8))(v444, v439);
    v366(v453, v423);
    v389(v463, v426);

    v342 = v286[1];
    goto LABEL_136;
  }

  v298 = v107[47];
  v299 = v107[48];
  v301 = v107[45];
  v300 = v107[46];
  v107[120] = OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_config;
  sub_220452A8C();
  v107[121] = v302;
  sub_22088F48C();
  sub_220561F64(v300, v301);
  if ((*(v299 + 48))(v301, 1, v298) == 1)
  {
    v303 = v107[104];
    v464 = v107[103];
    v471 = v107[111];
    v440 = v107[101];
    v445 = v107[110];
    v304 = v107[99];
    v305 = v107[96];
    v454 = v107[95];
    v458 = v107[98];
    v306 = v107[91];
    v307 = v107[89];
    v430 = v107[85];
    v308 = v107[83];
    v309 = v107[45];
    v358 = v107[8];

    sub_2206DEDC4(v309, &qword_2812968D8, MEMORY[0x277D33478]);
    sub_2208856EC();
    sub_22088560C();
    v413(v306, v307);
    v310 = MEMORY[0x277D69858];
    sub_2206DEDC4(v308, &unk_281299020, MEMORY[0x277D69858]);
    sub_2206DEDC4(v430, &unk_281299020, v310);
    v366(v440, v304);
    v389(v445, v303);
    (*(v305 + 8))(v458, v454);
    v366(v464, v304);
    v389(v471, v303);
    v311 = type metadata accessor for StockForYouFeedGroup();
    v312 = v107[119];
    v313 = v107[8];
    (*(v107[21] + 56))(v358 + v311[7], 1, 1, v107[20]);
    *(v313 + v311[5]) = v312;
    *(v313 + v311[6]) = 0;

    v342 = v107[1];
LABEL_136:

    return v342();
  }

  else
  {
    (*(v107[48] + 32))(v107[50], v107[45], v107[47]);
    v314 = *(v276 + 16);
    if (v314)
    {
      v315 = v107[58];
      v316 = v107[39];
      v473[0] = MEMORY[0x277D84F90];
      sub_22070C3BC(0, v314, 0);
      v465 = *(v315 + 16);
      v317 = v473[0];
      v318 = v276 + ((*(v315 + 80) + 32) & ~*(v315 + 80));
      v455 = *(v315 + 72);
      v441 = (v315 + 8);
      v431 = *MEMORY[0x277D34128];
      do
      {
        v319 = v107[61];
        v320 = v107[57];
        v321 = v107[40];
        v322 = v107[38];
        v465(v319, v318, v320);
        v323 = sub_2208868DC();
        (*v441)(v319, v320);
        *v321 = v323;
        (*(v316 + 104))(v321, v431, v322);
        v473[0] = v317;
        v325 = *(v317 + 16);
        v324 = *(v317 + 24);
        if (v325 >= v324 >> 1)
        {
          sub_22070C3BC(v324 > 1, v325 + 1, 1);
          v317 = v473[0];
        }

        v326 = v107[40];
        v327 = v107[38];
        *(v317 + 16) = v325 + 1;
        (*(v316 + 32))(v317 + ((*(v316 + 80) + 32) & ~*(v316 + 80)) + *(v316 + 72) * v325, v326, v327);
        v318 += v455;
        --v314;
      }

      while (v314);
    }

    v328 = v107[91];
    v456 = v107[89];
    v329 = v107[88];
    v466 = v107[86];
    v398 = v107[44];
    v472 = v107[43];
    v408 = v107[42];
    v410 = v107[41];
    v380 = v107[33];
    v384 = v107[32];
    v415 = v107[25];
    v418 = v107[24];
    v432 = v107[15];
    v442 = v107[23];
    v330 = MEMORY[0x277D84F90];
    sub_2206DEE64(MEMORY[0x277D84F90], sub_2206DF8BC);
    sub_2206DEE64(v330, sub_2206DF838);
    sub_2206DEF60(v330);
    sub_220890A6C();
    sub_2208856EC();
    sub_22088560C();
    v413(v328, v456);
    sub_2206DF158(v329);
    v412(v329, v466);
    sub_2206DEE64(v330, sub_2206DF8BC);
    sub_2206DEE64(v330, sub_2206DF838);
    sub_2206DEF60(v330);
    sub_220890A6C();
    __swift_project_boxed_opaque_existential_1((v432 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_formatService), *(v432 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_formatService + 24));
    sub_2208856EC();
    sub_22088560C();
    v413(v328, v456);
    sub_22088677C();
    v412(v329, v466);
    v331 = sub_22088ECFC();
    v467 = *(*(v331 - 8) + 56);
    v467(v380, 1, 1, v331);
    sub_2206DE84C(0);
    (*(*(v332 - 8) + 56))(v384, 1, 1, v332);
    sub_22089034C();

    sub_2206DEDC4(v384, &qword_281296788, sub_2206DE84C);
    sub_2206DEDC4(v380, &qword_281296D50, MEMORY[0x277D2D4E0]);
    sub_22052BCFC(0, &qword_28127DFA0, MEMORY[0x277D34258], MEMORY[0x277D84560]);
    v333 = *(v408 + 72);
    v334 = (*(v408 + 80) + 32) & ~*(v408 + 80);
    v335 = swift_allocObject();
    *(v335 + 16) = xmmword_220899920;
    v336 = v335 + v334;
    v337 = *(v408 + 16);
    v337(v336, v398, v410);
    v337(v336 + v333, v472, v410);
    v467(v380, 1, 1, v331);
    sub_22061A1B8(v330);
    sub_22061A1B8(v330);
    sub_22061A1D0(v330);
    sub_22061A1E8(v330);
    sub_22061A2FC(v330);
    sub_22061A410(v330);
    sub_22061A428(v330);
    sub_2208904BC();
    sub_22044CF38(0);
    v443[122] = v338;
    (*(*(v338 - 8) + 56))(v415, 1, 1, v338);
    v339 = sub_2208909AC();
    (*(*(v339 - 8) + 56))(v418, 1, 1, v339);
    *(v443 + 1025) = 1;
    sub_2206DF978(0, &qword_2812967B8, type metadata accessor for ForYouFeedServiceConfig, sub_220502768, MEMORY[0x277D33F88]);
    swift_allocObject();

    sub_2208909CC();
    v340 = sub_22089068C();
    (*(*(v340 - 8) + 56))(v442, 1, 1, v340);
    v341 = qword_2812948A0;
    *MEMORY[0x277D30BC8];
    if (v341 != -1)
    {
      swift_once();
    }

    qword_2812948A8;
    sub_2208906DC();
    v443[123] = sub_22089052C();
    v345 = v443[48];
    v344 = v443[49];
    v346 = v443[47];
    v348 = v443[30];
    v347 = v443[31];
    v349 = v443[29];
    (*(v443[27] + 8))(v443[28], v443[26]);
    (*(v348 + 8))(v347, v349);
    v350 = *(v345 + 8);
    v443[124] = v350;
    v443[125] = (v345 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v350(v344, v346);
    v351 = swift_task_alloc();
    v443[126] = v351;
    *v351 = v443;
    v351[1] = sub_2206DCAF4;
    v352 = v443[37];

    return MEMORY[0x2821D23D8](v352);
  }
}

uint64_t sub_2206DCAF4()
{
  *(*v1 + 1016) = v0;

  if (v0)
  {
    v2 = sub_2206DD35C;
  }

  else
  {
    v2 = sub_2206DCC28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2206DCC28()
{
  v27 = v0[124];
  v38 = v0[117];
  v22 = v0[115];
  v33 = v0[110];
  v31 = v0[112];
  v32 = v0[104];
  v39 = v0[103];
  v40 = v0[111];
  v28 = v0[99];
  v29 = v0[101];
  v30 = v0[96];
  v34 = v0[95];
  v35 = v0[98];
  v17 = v0[91];
  v18 = v0[89];
  v25 = v0[83];
  v26 = v0[85];
  v23 = v0[47];
  v24 = v0[50];
  v20 = v0[43];
  v21 = v0[44];
  v19 = v0[41];
  v13 = v0[42];
  v1 = v0[35];
  v15 = v0[34];
  v16 = v0[37];
  v14 = v0[22];
  v36 = v0[21];
  v37 = v0[20];
  v2 = v0[17];
  v12 = v0[8];
  (*(v1 + 16))();
  sub_22088F47C();
  sub_22088F47C();
  sub_22088F7FC();
  sub_22088F81C();
  v3 = sub_22088F68C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_22088F36C();
  sub_2208856EC();
  sub_22088560C();
  v22(v17, v18);
  (*(v1 + 8))(v16, v15);
  v4 = *(v13 + 8);
  v4(v20, v19);
  v4(v21, v19);
  v27(v24, v23);
  v5 = MEMORY[0x277D69858];
  sub_2206DEDC4(v25, &unk_281299020, MEMORY[0x277D69858]);
  sub_2206DEDC4(v26, &unk_281299020, v5);
  v31(v29, v28);
  v38(v33, v32);
  (*(v30 + 8))(v35, v34);
  v31(v39, v28);
  v38(v40, v32);
  v6 = type metadata accessor for StockForYouFeedGroup();
  v7 = v6[7];
  (*(v36 + 32))(v12 + v7, v14, v37);
  v8 = v0[119];
  v9 = v0[8];
  (*(v0[21] + 56))(v12 + v7, 0, 1, v0[20]);
  *(v9 + v6[5]) = v8;
  *(v9 + v6[6]) = 0;

  v10 = v0[1];

  return v10();
}

uint64_t sub_2206DD35C()
{
  v13 = v0[124];
  v20 = v0[117];
  v22 = v0[111];
  v17 = v0[110];
  v15 = v0[112];
  v16 = v0[104];
  v21 = v0[103];
  v14 = v0[101];
  v1 = v0[99];
  v2 = v0[96];
  v18 = v0[95];
  v19 = v0[98];
  v12 = v0[85];
  v3 = v0[83];
  v4 = v0[50];
  v5 = v0[47];
  v6 = v0[44];
  v7 = v0[41];
  v8 = *(v0[42] + 8);
  v8(v0[43], v7);
  v8(v6, v7);
  v13(v4, v5);
  v9 = MEMORY[0x277D69858];
  sub_2206DEDC4(v3, &unk_281299020, MEMORY[0x277D69858]);
  sub_2206DEDC4(v12, &unk_281299020, v9);
  v15(v14, v1);
  v20(v17, v16);
  (*(v2 + 8))(v19, v18);
  v15(v21, v1);
  v20(v22, v16);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2206DD86C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a5;
  v34 = a3;
  v35 = a4;
  v39 = a6;
  v38 = sub_22088561C();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v8);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088516C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v33 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v32 = &v28 - v16;
  v17 = sub_220885ACC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[1];
  v31 = *a1;
  __swift_project_boxed_opaque_existential_1((a2 + 24), *(a2 + 48));
  v30 = v22;

  sub_22088641C();
  v23 = sub_2208859FC();
  result = (*(v18 + 8))(v21, v17);
  if (v23 < 0)
  {
    __break(1u);
  }

  else
  {
    v25 = *(v11 + 16);
    v25(v32, v34, v10);
    v25(v33, v35, v10);
    v26 = sub_22088685C();
    v27 = v29;
    (*(*(v26 - 8) + 16))(v29, v37, v26);
    (*(v36 + 104))(v27, *MEMORY[0x277D69238], v38);
    return sub_22088584C();
  }

  return result;
}

uint64_t sub_2206DDB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_22088685C();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088561C();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v53 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052BCFC(0, &unk_281299020, MEMORY[0x277D69858], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v61 = &v52 - v11;
  v62 = sub_22088609C();
  v12 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_220885D1C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22088573C();
  v60 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25, v26);
  v29 = &v52 - v28;
  (*(v17 + 104))(v20, *MEMORY[0x277D69460], v16, v27);
  v57 = a1;
  sub_2208856FC();
  (*(v17 + 8))(v20, v16);
  sub_22052BCFC(0, &qword_28127E1A8, MEMORY[0x277D695B0], MEMORY[0x277D84560]);
  v30 = sub_22088608C();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  v52 = xmmword_220899360;
  *(v33 + 16) = xmmword_220899360;
  v34 = *MEMORY[0x277D693E8];
  v35 = sub_220885B7C();
  (*(*(v35 - 8) + 104))(v33 + v32, v34, v35);
  (*(v31 + 104))(v33 + v32, *MEMORY[0x277D695A8], v30);
  sub_22088607C();
  sub_22088571C();
  v36 = v15;
  v37 = v61;
  (*(v12 + 8))(v36, v62);
  v38 = *(v60 + 8);
  v38(v24, v21);
  v62 = v29;
  sub_220707390(v37);
  v39 = sub_22088698C();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v37, 1, v39) == 1)
  {
    sub_2206DEDC4(v37, &unk_281299020, MEMORY[0x277D69858]);
    sub_22048D7F8();
    v41 = swift_allocObject();
    *(v41 + 16) = v52;
    v42 = v53;
    sub_2208856EC();
    v43 = v56;
    sub_22088560C();
    (*(v54 + 8))(v42, v55);
    v44 = sub_22088681C();
    v46 = v45;
    (*(v58 + 8))(v43, v59);
    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = sub_22048D860();
    *(v41 + 32) = v44;
    *(v41 + 40) = v46;
    sub_22048D2F4();
    v47 = sub_2208922DC();
    sub_220891AFC();
    sub_22088A7EC();

    v38(v62, v21);
    v48 = 1;
    v49 = v63;
  }

  else
  {
    v38(v62, v21);
    v50 = v63;
    (*(v40 + 32))(v63, v37, v39);
    v48 = 0;
    v49 = v50;
  }

  return (*(v40 + 56))(v49, v48, 1, v39);
}

BOOL sub_2206DE274()
{
  sub_22088698C();
  sub_220502864(&unk_281299030, MEMORY[0x277D69858]);
  return (sub_2208912FC() & 1) == 0;
}

uint64_t sub_2206DE3B8(uint64_t a1, uint64_t a2)
{
  sub_220458660(0, qword_281282FA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206DE42C(uint64_t a1)
{
  sub_220458660(0, qword_281282FA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2206DE4F4(uint64_t a1, uint64_t a2)
{
  sub_220458660(0, qword_281282FA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206DE568(uint64_t a1)
{
  v4 = *(sub_22088685C() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_220685970;

  return sub_2206D7848(a1, v6, v1 + v5, v7);
}

uint64_t sub_2206DE684(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_220685970;

  return sub_2206D80B0(a1, v1);
}

uint64_t sub_2206DE720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockForYouFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206DE784(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2206DE7EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2206DE8C8()
{
  if (!qword_281299018)
  {
    sub_22052BCFC(255, &unk_281299020, MEMORY[0x277D69858], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281299018);
    }
  }
}

uint64_t sub_2206DE95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a1;
  v43 = sub_22088573C();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v5);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v37 = &v34 - v9;
  v10 = sub_22088609C();
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_220885D1C();
  v13 = *(v36 - 8);
  v15 = MEMORY[0x28223BE20](v36, v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v17, *MEMORY[0x277D69458], v15);
  sub_22052BCFC(0, &qword_28127E1A8, MEMORY[0x277D695B0], MEMORY[0x277D84560]);
  v18 = sub_22088608C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_220899920;
  v23 = (v22 + v21);
  *v23 = a2;
  v24 = *(v19 + 104);
  v24(v23, *MEMORY[0x277D69588], v18);
  *(v23 + v20) = a3;
  v24((v23 + v20), *MEMORY[0x277D69590], v18);

  v25 = v35;
  sub_22088607C();
  v26 = v38;
  sub_2208856FC();
  v27 = v37;
  v28 = v26;
  sub_22088571C();
  v29 = *(v41 + 8);
  v30 = v28;
  v31 = v43;
  v29(v30, v43);
  v32 = sub_22088572C();
  v29(v27, v31);
  (*(v39 + 8))(v25, v40);
  (*(v13 + 8))(v17, v36);
  return v32;
}

uint64_t sub_2206DED30(uint64_t a1, uint64_t a2)
{
  sub_22052BCFC(0, &unk_281299020, MEMORY[0x277D69858], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206DEDC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22052BCFC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2206DEE64(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a2(0);
    v4 = sub_2208926DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_2204AF97C(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_2206DEF60(uint64_t a1)
{
  sub_2206DF7D0();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2206DF858(0, &qword_27CF58C78, MEMORY[0x277D34398]);
    v9 = sub_2208926DC();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_2206DE784(v11, v7, sub_2206DF7D0);
      v13 = *v7;
      v14 = v7[1];
      result = sub_2204AF97C(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = sub_220890ACC();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

size_t sub_2206DF158(uint64_t a1)
{
  v48 = sub_22089026C();
  v2 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v3);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v45 = &v42 - v7;
  sub_22052BCFC(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v49 = &v42 - v10;
  v11 = sub_220884E9C();
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v44 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_220884A4C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22089050C();
  MEMORY[0x28223BE20](v19 - 8, v20);
  sub_22052BCFC(0, &qword_28127DFC0, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
  v21 = *(v2 + 72);
  v47 = v2;
  v22 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v43 = v21;
  v23 = swift_allocObject();
  v52 = xmmword_220899360;
  *(v23 + 16) = xmmword_220899360;
  sub_22088684C();
  sub_2208904FC();

  sub_22089025C();
  v53 = a1;
  v54 = sub_22088681C();
  v55 = v24;
  sub_220884A0C();
  sub_22059B6A4();
  v25 = sub_22089237C();
  v27 = v26;
  (*(v15 + 8))(v18, v14);

  if (v27)
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_22089254C();

    v54 = 0x3F3A736B636F7473;
    v55 = 0xEF3D6C6F626D7973;
    MEMORY[0x223D89680](v25, v27);

    v28 = v49;
    sub_220884E8C();

    v30 = v50;
    v29 = v51;
    if ((*(v50 + 48))(v28, 1, v51) != 1)
    {
      v36 = v44;
      (*(v30 + 32))(v44, v28, v29);
      sub_2208904DC();
      v37 = v45;
      sub_22089025C();
      v39 = v46;
      v38 = v47;
      v40 = v48;
      (*(v47 + 16))(v46, v37, v48);
      v23 = sub_220588540(1uLL, 2, 1, v23);
      (*(v38 + 8))(v37, v40);
      (*(v30 + 8))(v36, v29);
      *(v23 + 16) = 2;
      (*(v38 + 32))(v23 + v22 + v43, v39, v40);
      return v23;
    }

    sub_2206DEDC4(v28, &qword_2812994E0, MEMORY[0x277CC9260]);
  }

  sub_22048D7F8();
  v31 = swift_allocObject();
  *(v31 + 16) = v52;
  v32 = sub_22088681C();
  v34 = v33;
  *(v31 + 56) = MEMORY[0x277D837D0];
  *(v31 + 64) = sub_22048D860();
  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  sub_22048D2F4();
  v35 = sub_2208922DC();
  sub_220891AFC();
  sub_22088A7EC();

  return v23;
}

unint64_t sub_2206DF75C()
{
  result = qword_281287D78;
  if (!qword_281287D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281287D78);
  }

  return result;
}

void sub_2206DF7D0()
{
  if (!qword_28127EBB8)
  {
    sub_220890ACC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127EBB8);
    }
  }
}

void sub_2206DF858(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2208926EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2206DF8BC()
{
  if (!qword_27CF58C88)
  {
    sub_22052BCFC(255, &qword_27CF58C90, MEMORY[0x277D333A8], MEMORY[0x277D83940]);
    v0 = sub_2208926EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF58C88);
    }
  }
}

void sub_2206DF978(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_2206DF9F8(uint64_t a1)
{
  v3 = v2;
  sub_2206DF978(0, &qword_281296C50, type metadata accessor for ForYouFeedServiceConfig, sub_220502768, MEMORY[0x277D31C68]);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_220685970;

  return sub_2206D3624(a1, v1 + v6);
}

uint64_t sub_2206DFB1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_220685970;

  return sub_2206D3F28(a1);
}

uint64_t objectdestroy_45Tm()
{

  return swift_deallocObject();
}

uint64_t sub_2206DFC18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_220685970;

  return sub_2206D3FC8(a1);
}

unint64_t sub_2206DFCCC()
{
  result = qword_281298878;
  if (!qword_281298878)
  {
    sub_22052BCFC(255, &qword_281298870, type metadata accessor for StockForYouFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281298878);
  }

  return result;
}

unint64_t sub_2206DFD68()
{
  result = qword_27CF58CA0;
  if (!qword_27CF58CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58CA0);
  }

  return result;
}

uint64_t type metadata accessor for StockListWatchlistChangeBlueprintModifier()
{
  result = qword_281280170;
  if (!qword_281280170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2206DFE54()
{
  result = sub_2208857BC();
  if (v1 <= 0x3F)
  {
    result = sub_2204446D4(319, &qword_281299280);
    if (v2 <= 0x3F)
    {
      result = sub_2204446D4(319, &unk_2812991E0);
      if (v3 <= 0x3F)
      {
        result = sub_2204446D4(319, &unk_281299178);
        if (v4 <= 0x3F)
        {
          result = sub_2204446D4(319, &qword_281299220);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_2206DFF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v27 = a2;
  sub_22045BD88(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6, v10);
  v12 = &v26 - v11;
  v13 = type metadata accessor for StockListWatchlistChangeBlueprintModifier();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8, v16);
  v17 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v4;
  sub_22088582C();
  sub_220888FBC();
  sub_2206E2414(v4, v17, type metadata accessor for StockListWatchlistChangeBlueprintModifier);
  (*(v8 + 16))(v12, v26, v7);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = (v15 + *(v8 + 80) + v18) & ~*(v8 + 80);
  v20 = swift_allocObject();
  sub_2206E247C(v17, v20 + v18, type metadata accessor for StockListWatchlistChangeBlueprintModifier);
  (*(v8 + 32))(v20 + v19, v12, v7);
  v21 = (v20 + ((v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v27;
  *v21 = v27;
  v21[1] = a3;

  v23 = sub_220888D9C();
  sub_220888E4C();

  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = a3;

  v25 = sub_220888D9C();
  sub_220888E9C();
}

uint64_t sub_2206E0274(uint64_t a1)
{
  v2 = type metadata accessor for StockListWatchlistChangeBlueprintModifier();
  __swift_project_boxed_opaque_existential_1((a1 + *(v2 + 28)), *(a1 + *(v2 + 28) + 24));
  sub_22088574C();
  v3 = sub_22088632C();

  return v3;
}

uint64_t sub_2206E0300(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v114 = a4;
  v113 = a5;
  v124 = a3;
  v115 = a1;
  sub_22045BD88(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v111 = *(v6 - 8);
  v112 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v110 = &v91 - v8;
  v117 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v117, v9);
  v95 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C();
  v107 = v11;
  v96 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v94 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045BD88(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v120 = *(v14 - 8);
  v121 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v109 = &v91 - v16;
  sub_22046B2A0();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v93 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1EF0(0);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v106 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v105 = &v91 - v25;
  sub_22046B19C();
  v119 = v26;
  v123 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v27);
  v108 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v122 = &v91 - v31;
  v104 = sub_220886A4C();
  v116 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v32);
  v103 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v102 = &v91 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v92 = &v91 - v39;
  sub_2204B5FB8(0);
  MEMORY[0x28223BE20](v40 - 8, v41);
  v43 = &v91 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_220885DFC();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v46);
  v48 = &v91 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for StockListWatchlistChangeBlueprintModifier();
  sub_22046DA2C(a2 + *(v49 + 32), v125);
  v99 = v127;
  v100 = v126;
  v98 = __swift_project_boxed_opaque_existential_1(v125, v126);
  v97 = sub_22088574C();
  sub_22088577C();
  v50 = *(v45 + 48);
  v51 = v50(v43, 1, v44);
  v118 = a2;
  v101 = v49;
  if (v51 == 1)
  {
    __swift_project_boxed_opaque_existential_1((a2 + *(v49 + 24)), *(a2 + *(v49 + 24) + 24));
    v52 = v92;
    sub_2208863EC();
    sub_220886A3C();
    v53 = v104;
    v116[1](v52, v104);
    if (v50(v43, 1, v44) != 1)
    {
      sub_2206E22F4(v43, sub_2204B5FB8);
    }
  }

  else
  {
    (*(v45 + 32))(v48, v43, v44);
    v53 = v104;
  }

  v104 = sub_22088646C();

  (*(v45 + 8))(v48, v44);
  __swift_destroy_boxed_opaque_existential_1(v125);
  v54 = (v118 + *(v101 + 24));
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  v55 = v102;
  sub_2208863EC();
  v115 = sub_2208869DC();
  v57 = v56;
  v58 = v116[1];
  v58(v55, v53);
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  v59 = v103;
  sub_2208863EC();
  v60 = sub_2208869BC();
  v62 = v61;
  v58(v59, v53);
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  v63 = sub_220885FCC();
  if ((sub_22088F0DC() & 1) != 0 && *(v63 + 16) <= 1uLL)
  {

    v115 = 0;
    v57 = 0;
    v60 = 0;
    v62 = 0;
    v63 = 0;
  }

  v64 = v105;
  sub_22088E83C();
  v65 = v123;
  v66 = *(v123 + 48);
  v67 = v119;
  if (v66(v64, 1, v119) == 1)
  {
    v125[0] = v115;
    v125[1] = v57;
    v125[2] = v60;
    v126 = v62;
    v127 = v63;
    v128 = 0;
    v68 = sub_2206E215C(&qword_281297F88, sub_22046B36C);
    v69 = sub_2206E215C(&unk_281297F90, sub_22046B36C);
    MEMORY[0x223D80A10](MEMORY[0x277D84F90], v107, v68, v69);
    sub_22045B950();
    sub_2206E215C(&qword_281293CD8, type metadata accessor for StockListModel);
    sub_22088B29C();
    v70 = v66(v64, 1, v67);
    if (v70 != 1)
    {
      v70 = sub_2206E22F4(v64, sub_2204A1EF0);
    }
  }

  else
  {
    sub_2204BE768(v115, v57);
    v70 = (*(v65 + 32))(v122, v64, v67);
  }

  MEMORY[0x28223BE20](v70, v71);
  *(&v91 - 2) = v118;
  sub_22088685C();
  sub_2206E215C(&qword_281299080, MEMORY[0x277D69810]);
  v72 = v108;
  sub_22088B2CC();

  v73 = v121;
  v74 = *(v120 + 16);
  v75 = v109;
  v118 = v120 + 16;
  v116 = v74;
  (v74)(v109, v124, v121);
  sub_2206E215C(&qword_281297DB8, sub_22046B19C);
  sub_22089193C();
  sub_22089199C();
  v76 = v110;
  if (v125[0] == v129)
  {
    swift_storeEnumTagMultiPayload();
    sub_2206E215C(&qword_281293CD8, type metadata accessor for StockListModel);
    v77 = v94;
    sub_22088AD7C();
    sub_22088B30C();
    (*(v96 + 8))(v77, v107);
  }

  else
  {
    sub_22088E74C();
  }

  v78 = v123;
  v79 = v106;
  (*(v123 + 16))(v106, v122, v67);
  (*(v78 + 56))(v79, 0, 1, v67);
  sub_22088E6DC();
  sub_2206E22F4(v79, sub_2204A1EF0);
  sub_2204CD300();
  sub_22045B950();
  sub_2206E215C(&qword_281293CD8, type metadata accessor for StockListModel);
  sub_22088BDEC();
  __swift_project_boxed_opaque_existential_1(v125, v126);
  if (sub_22088B65C())
  {
    v80 = MEMORY[0x277D6DF80];
  }

  else
  {
    sub_2206E235C();
    v82 = *(v81 + 48);
    v83 = *(v81 + 64);
    (v116)(v76, v75, v73);
    sub_22046DA2C(v125, &v76[v82]);
    v84 = *MEMORY[0x277D6D868];
    v85 = sub_22088B64C();
    (*(*(v85 - 8) + 104))(&v76[v83], v84, v85);
    v80 = MEMORY[0x277D6DF78];
  }

  v87 = v111;
  v86 = v112;
  (*(v111 + 104))(v76, *v80, v112);
  v114(v76);
  (*(v87 + 8))(v76, v86);
  (*(v120 + 8))(v75, v73);
  v88 = *(v123 + 8);
  v89 = v119;
  v88(v72, v119);
  v88(v122, v89);
  return __swift_destroy_boxed_opaque_existential_1(v125);
}

uint64_t sub_2206E1178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v138 = a2;
  v136 = a3;
  v135 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v135, v4);
  v134 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2208852DC();
  v132 = *(v6 - 8);
  v133 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v148 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_2208857EC();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130, v9);
  v127 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_22088699C();
  v145 = *(v128 - 8);
  MEMORY[0x28223BE20](v128, v11);
  v143 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v137 = &v111 - v15;
  v146 = sub_220885D4C();
  v144 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v16);
  v142 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_220886A4C();
  v149 = *(v147 - 8);
  MEMORY[0x28223BE20](v147, v18);
  v131 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v111 - v22;
  sub_2204E99F0(0);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v27;
  sub_22045987C(0);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v121 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v120 = &v111 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v119 = &v111 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v116 = &v111 - v39;
  MEMORY[0x28223BE20](v40, v41);
  v139 = &v111 - v42;
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v111 - v45;
  v140 = &v111 - v45;
  v47 = sub_22088685C();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v49);
  v51 = &v111 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for StockViewModel();
  v53 = MEMORY[0x28223BE20](v112, v52);
  v55 = &v111 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v48;
  v56 = *(v48 + 16);
  v56(v51, a1, v47, v53);
  v57 = sub_22088676C();
  v113 = *(v57 - 8);
  (*(v113 + 56))(v46, 1, 1, v57);
  v58 = type metadata accessor for StockSparklineViewModel(0);
  (*(*(v58 - 8) + 56))(v27, 1, 1, v58);
  v59 = (v138 + *(type metadata accessor for StockListWatchlistChangeBlueprintModifier() + 24));
  v60 = v59[3];
  v123 = v59;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  sub_2208863EC();
  v61 = v142;
  sub_2208869CC();
  v62 = *(v149 + 8);
  v149 += 8;
  v122 = v62;
  v62(v23, v147);
  v126 = v47;
  v63 = v47;
  v64 = v139;
  (v56)(v55, v51, v63);
  v65 = v116;
  v66 = v112;
  v67 = v140;
  sub_2206E2414(v140, &v55[*(v112 + 20)], sub_22045987C);
  v68 = v55;
  sub_2206E2414(v141, &v55[v66[6]], sub_2204E99F0);
  v69 = &v55[v66[8]];
  v70 = v61;
  v71 = v57;
  v72 = v137;
  (*(v144 + 16))(v69, v70, v146);
  v73 = v66[9];
  v138 = v68;
  *(v68 + v73) = 0;
  v74 = v113;
  sub_2206E2414(v67, v64, sub_22045987C);
  v124 = v51;
  sub_2208867CC();
  sub_2206E2414(v64, v65, sub_22045987C);
  v75 = *(v74 + 48);
  if (v75(v65, 1, v71) == 1)
  {
    sub_2206E22F4(v65, sub_22045987C);
    v118 = 0;
    v117 = 1;
  }

  else
  {
    v118 = sub_22088675C();
    v117 = v76;
    (*(v74 + 8))(v65, v71);
  }

  v77 = v119;
  sub_2206E2414(v64, v119, sub_22045987C);
  v78 = v75(v77, 1, v71);
  v79 = v145;
  v80 = v120;
  if (v78 == 1)
  {
    sub_2206E22F4(v77, sub_22045987C);
    v116 = 0;
    v115 = 1;
  }

  else
  {
    v116 = sub_22088666C();
    v115 = v81;
    (*(v74 + 8))(v77, v71);
  }

  sub_2206E2414(v64, v80, sub_22045987C);
  if (v75(v80, 1, v71) == 1)
  {
    sub_2206E22F4(v80, sub_22045987C);
    v119 = 0;
    v114 = 1;
  }

  else
  {
    v119 = sub_22088671C();
    v114 = v82;
    (*(v74 + 8))(v80, v71);
  }

  v83 = v121;
  sub_2206E2414(v64, v121, sub_22045987C);
  if (v75(v83, 1, v71) == 1)
  {
    sub_2206E22F4(v83, sub_22045987C);
    v120 = 0;
    v111 = 0;
  }

  else
  {
    v120 = sub_22088668C();
    v111 = v84;
    (*(v74 + 8))(v83, v71);
  }

  v85 = v143;
  v86 = v138 + v66[7];
  v87 = *(v79 + 16);
  v88 = v128;
  v87(v143, v72, v128);
  v89 = v129;
  v90 = v127;
  v91 = v130;
  (*(v129 + 104))(v127, *MEMORY[0x277D69288], v130);
  v92 = v148;
  sub_22088524C();
  *v86 = v118;
  *(v86 + 8) = v117 & 1;
  *(v86 + 16) = v116;
  *(v86 + 24) = v115 & 1;
  *(v86 + 32) = v119;
  *(v86 + 40) = v114 & 1;
  v93 = v111;
  *(v86 + 48) = v120;
  *(v86 + 56) = v93;
  v94 = type metadata accessor for PriceViewModel();
  v87((v86 + v94[10]), v85, v88);
  *(v86 + 64) = 9666786;
  *(v86 + 72) = 0xA300000000000000;
  (*(v89 + 16))(v86 + v94[9], v90, v91);
  v95 = v132;
  v96 = v86 + v94[11];
  v97 = v133;
  (*(v132 + 16))(v96, v92, v133);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v98 = qword_2812B6B48;
  (*(v89 + 8))(v90, v91);
  v99 = *(v145 + 8);
  v99(v143, v88);
  v99(v137, v88);
  sub_2206E22F4(v139, sub_22045987C);
  (*(v144 + 8))(v142, v146);
  sub_2206E22F4(v141, sub_2204E99F0);
  sub_2206E22F4(v140, sub_22045987C);
  (*(v125 + 8))(v124, v126);
  v100 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v95 + 40))(v98 + v100, v148, v97);
  swift_endAccess();
  v101 = v138;
  v102 = v134;
  sub_2206E2414(v138, v134, type metadata accessor for StockViewModel);
  v103 = v123;
  __swift_project_boxed_opaque_existential_1(v123, v123[3]);
  LOBYTE(v100) = sub_22088602C();
  __swift_project_boxed_opaque_existential_1(v103, v103[3]);
  v104 = v131;
  sub_2208863EC();
  v105 = sub_2208869BC();
  v107 = v106;
  v122(v104, v147);
  sub_2206E22F4(v101, type metadata accessor for StockViewModel);
  v108 = v135;
  *(v102 + *(v135 + 20)) = v100 & 1;
  v109 = (v102 + *(v108 + 24));
  *v109 = v105;
  v109[1] = v107;
  sub_2206E247C(v102, v136, type metadata accessor for StockListStockModel);
  type metadata accessor for StockListModel(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2206E1FA4(void *a1, void (*a2)(char *))
{
  sub_22045BD88(0, &qword_281297848, MEMORY[0x277D6DF88]);
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

uint64_t sub_2206E215C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2206E21C0(uint64_t a1)
{
  v3 = *(type metadata accessor for StockListWatchlistChangeBlueprintModifier() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_22045BD88(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v7 = (v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v8 = v1 + ((*(*(v6 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_2206E0300(a1, v1 + v4, v1 + v7, *v8, *(v8 + 8));
}

uint64_t sub_2206E22F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2206E235C()
{
  if (!qword_27CF58CA8)
  {
    sub_22045BD88(255, &qword_281296EE0, MEMORY[0x277D6EC60]);
    sub_2204446D4(255, &qword_281297D50);
    sub_22088B64C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CF58CA8);
    }
  }
}

uint64_t sub_2206E2414(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2206E247C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2206E24E4(void *a1, void (*a2)(char *))
{
  sub_22051D4B8(0, &qword_281297840, MEMORY[0x277D6DF88]);
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

uint64_t sub_2206E2608()
{
  sub_22051F584(0, &qword_28127E048, MEMORY[0x277D6DE60], MEMORY[0x277D84560]);
  v0 = sub_22088C37C();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_220899360;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x277D6DE38], v0);
  v4 = sub_2207E15E8(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

uint64_t sub_2206E2754(uint64_t a1)
{
  v2 = sub_22051DCC0(&qword_281283A50, type metadata accessor for ForYouFeedExpandBlueprintModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2206E2898()
{
  result = qword_281283A58;
  if (!qword_281283A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281283A58);
  }

  return result;
}

uint64_t sub_2206E292C()
{
  result = sub_2204446D4(319, qword_281287430);
  if (v1 <= 0x3F)
  {
    result = sub_2204446D4(319, &unk_2812991E0);
    if (v2 <= 0x3F)
    {
      result = sub_220885D4C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2206E29F4()
{
  result = qword_27CF58CB0;
  if (!qword_27CF58CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58CB0);
  }

  return result;
}

void sub_2206E2A48(void *a1)
{
  v3 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];

  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  (*(*(v5 + 16) + 32))(&v8, v4);
  if ((v8 & 1) == 0)
  {
    v6 = [objc_opt_self() ts_sideBarEffect];
    v7 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

    [a1 setBackgroundView_];
  }
}

uint64_t sub_2206E2B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
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

uint64_t sub_2206E2CDC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2206E2D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 48);
  v8 = *(*v3 + 56);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 24), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_2206E2EA8(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

uint64_t sub_2206E2EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v7 = swift_allocObject();
  sub_220561394();
  *(v7 + 16) = sub_220891F2C();
  sub_220457328(&v9, v7 + 24);
  return v7;
}

uint64_t sub_2206E2FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v126 = sub_2208852DC();
  v118 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v3);
  v125 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2208857EC();
  v115 = *(v5 - 8);
  v116 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v113 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_22088699C();
  v114 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v8);
  v122 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v127 = &v96 - v12;
  v124 = sub_220885D4C();
  v13 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v14);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for StockSparklineViewModel;
  v17 = MEMORY[0x277D83D88];
  sub_2205052F4(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v96 - v20;
  v121 = &v96 - v20;
  v102 = MEMORY[0x277D697F8];
  sub_2205052F4(0, &qword_2812990C0, MEMORY[0x277D697F8], v17);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v106 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v105 = &v96 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v103 = &v96 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v100 = &v96 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v119 = &v96 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v96 - v39;
  v41 = sub_22088685C();
  v42 = *(v41 - 8);
  v44 = MEMORY[0x28223BE20](v41, v43);
  v46 = &v96 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v42;
  v47 = *(v42 + 16);
  v117 = a1;
  v47(v46, a1, v41, v44);
  v97 = sub_22088676C();
  v48 = *(v97 - 8);
  (*(v48 + 56))(v40, 1, 1, v97);
  v49 = type metadata accessor for StockSparklineViewModel(0);
  (*(*(v49 - 8) + 56))(v21, 1, 1, v49);
  v50 = v16;
  v51 = v16;
  v52 = v124;
  (*(v13 + 104))(v51, *MEMORY[0x277D69468], v124);
  v53 = v120;
  v109 = v41;
  (v47)(v120, v46, v41);
  v54 = type metadata accessor for StockViewModel();
  v55 = v102;
  sub_2204B2A28(v40, v53 + v54[5], &qword_2812990C0, v102);
  sub_2204B2A28(v121, v53 + v54[6], qword_28128AAE8, v112);
  v56 = v54[8];
  v112 = v13;
  v57 = *(v13 + 16);
  v58 = v97;
  v111 = v50;
  v59 = v50;
  v60 = v119;
  v57(v53 + v56, v59, v52);
  v98 = v54;
  *(v53 + v54[9]) = 0;
  v110 = v40;
  v61 = v40;
  v62 = v48;
  sub_2204B2A28(v61, v60, &qword_2812990C0, v55);
  v107 = v46;
  sub_2208867CC();
  v63 = v100;
  sub_2204B2A28(v60, v100, &qword_2812990C0, v55);
  v64 = *(v48 + 48);
  v65 = v58;
  if (v64(v63, 1, v58) == 1)
  {
    sub_2204B3C1C(v63, &qword_2812990C0, MEMORY[0x277D697F8]);
    v102 = 0;
    v101 = 1;
  }

  else
  {
    v102 = sub_22088675C();
    v101 = v66;
    (*(v62 + 8))(v63, v58);
  }

  v67 = v103;
  sub_2204B2A28(v60, v103, &qword_2812990C0, MEMORY[0x277D697F8]);
  v68 = v64(v67, 1, v58);
  v69 = v123;
  v70 = v106;
  v71 = v105;
  v104 = v62;
  if (v68 == 1)
  {
    sub_2204B3C1C(v67, &qword_2812990C0, MEMORY[0x277D697F8]);
    v100 = 0;
    v99 = 1;
  }

  else
  {
    v100 = sub_22088666C();
    v99 = v72;
    (*(v62 + 8))(v67, v65);
  }

  v73 = v114;
  sub_2204B2A28(v60, v71, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v64(v71, 1, v65) == 1)
  {
    sub_2204B3C1C(v71, &qword_2812990C0, MEMORY[0x277D697F8]);
    v114 = 0;
    LODWORD(v103) = 1;
  }

  else
  {
    v114 = sub_22088671C();
    LODWORD(v103) = v74;
    (*(v104 + 8))(v71, v65);
  }

  sub_2204B2A28(v60, v70, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v64(v70, 1, v65) == 1)
  {
    sub_2204B3C1C(v70, &qword_2812990C0, MEMORY[0x277D697F8]);
    v75 = 0;
    v105 = 0;
  }

  else
  {
    v75 = sub_22088668C();
    v105 = v76;
    (*(v104 + 8))(v70, v65);
  }

  v77 = v122;
  v78 = v120 + v98[7];
  v79 = *(v73 + 16);
  v79(v122, v127, v69);
  v81 = v115;
  v80 = v116;
  v82 = v113;
  (*(v115 + 104))(v113, *MEMORY[0x277D69288], v116);
  v83 = v125;
  sub_22088524C();
  *v78 = v102;
  *(v78 + 8) = v101 & 1;
  *(v78 + 16) = v100;
  *(v78 + 24) = v99 & 1;
  *(v78 + 32) = v114;
  *(v78 + 40) = v103 & 1;
  *(v78 + 48) = v75;
  v84 = v80;
  *(v78 + 56) = v105;
  v85 = type metadata accessor for PriceViewModel();
  v86 = v77;
  v87 = v123;
  v79((v78 + v85[10]), v86, v123);
  *(v78 + 64) = 9666786;
  *(v78 + 72) = 0xA300000000000000;
  (*(v81 + 16))(v78 + v85[9], v82, v84);
  v88 = v118;
  (*(v118 + 16))(v78 + v85[11], v83, v126);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v120 = qword_2812B6B48;
  v89 = *(v108 + 8);
  v90 = v109;
  v89(v117, v109);
  (*(v81 + 8))(v82, v84);
  v91 = *(v73 + 8);
  v91(v122, v87);
  v91(v127, v87);
  v92 = MEMORY[0x277D697F8];
  sub_2204B3C1C(v119, &qword_2812990C0, MEMORY[0x277D697F8]);
  (*(v112 + 1))(v111, v124);
  sub_2204B3C1C(v121, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  sub_2204B3C1C(v110, &qword_2812990C0, v92);
  v89(v107, v90);
  v93 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  v94 = v120;
  swift_beginAccess();
  (*(v88 + 40))(v94 + v93, v125, v126);
  return swift_endAccess();
}

uint64_t sub_2206E3BD0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  sub_2205052F4(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_220899360;
  v3 = sub_2208867BC();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_22048D860();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  v6 = sub_22089139C();

  return v6;
}

unint64_t sub_2206E3D3C()
{
  result = qword_27CF58CB8;
  if (!qword_27CF58CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58CB8);
  }

  return result;
}

unint64_t sub_2206E3D94()
{
  result = qword_27CF58CC0;
  if (!qword_27CF58CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58CC0);
  }

  return result;
}

unint64_t sub_2206E3E54()
{
  result = qword_27CF58CC8;
  if (!qword_27CF58CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58CC8);
  }

  return result;
}

uint64_t sub_2206E3EC4()
{
  v0 = sub_220884D5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2208852DC();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_22089131C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_220884D6C();
  __swift_allocate_value_buffer(v9, qword_27CF6D098);
  __swift_project_value_buffer(v9, qword_27CF6D098);
  sub_22089130C();
  sub_22088528C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_220884D7C();
}

uint64_t sub_2206E40A4()
{
  sub_22088E2BC();
  sub_22088481C();
  swift_getObjectType();
  v0 = sub_22088B7EC();
  swift_unknownObjectRelease();
  if (v0)
  {
    sub_22088481C();
    swift_getObjectType();
    sub_22088B82C();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_2206E4400();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_2206E419C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF55B30 != -1)
  {
    swift_once();
  }

  v2 = sub_220884D6C();
  v3 = __swift_project_value_buffer(v2, qword_27CF6D098);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2206E4244(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2206E4268, 0, 0);
}

uint64_t sub_2206E4268()
{
  sub_2208917EC();
  *(v0 + 32) = sub_2208917DC();
  v2 = sub_2208917CC();

  return MEMORY[0x2822009F8](sub_2206E42FC, v2, v1);
}

uint64_t sub_2206E42FC()
{

  sub_2206E40A4();

  return MEMORY[0x2822009F8](sub_220677B94, 0, 0);
}

uint64_t sub_2206E43B4(uint64_t a1)
{
  v2 = sub_2206E3E54();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_2206E4400()
{
  result = qword_27CF58CD0;
  if (!qword_27CF58CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58CD0);
  }

  return result;
}