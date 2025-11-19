uint64_t sub_20B8B1E2C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 34) = a3;
  *(v4 + 40) = a1;
  v5 = sub_20C136594();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  v6 = sub_20C134014();
  *(v4 + 96) = v6;
  *(v4 + 104) = *(v6 - 8);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = sub_20C134A74();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  v7 = sub_20C13BB84();
  *(v4 + 176) = v7;
  *(v4 + 184) = *(v7 - 8);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B8B2030, 0, 0);
}

uint64_t sub_20B8B2030()
{
  v59 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 48);
  sub_20C13B4D4();
  sub_20B864C34(v2, v1);
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1F4();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v58 = v8;
    *v7 = 136315138;
    sub_20B864C34(v5, v6);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v10 = *(v0 + 160);
    if (EnumCaseMultiPayload == 1)
    {
      v11 = *(v0 + 128);
      v12 = *(v0 + 96);
      v13 = *(v0 + 104);
      (*(v13 + 32))(v11, v10, v12);
      v14 = sub_20C133E44();
    }

    else
    {
      v11 = *(v0 + 88);
      v12 = *(v0 + 64);
      v13 = *(v0 + 72);
      (*(v13 + 32))(v11, v10, v12);
      v14 = sub_20C136564();
    }

    v21 = v14;
    v22 = v15;
    (*(v13 + 8))(v11, v12);
    v23 = *(v0 + 200);
    v24 = *(v0 + 176);
    v25 = *(v0 + 184);
    sub_20B8B34A8(*(v0 + 168), MEMORY[0x277D50C70]);
    v26 = sub_20B51E694(v21, v22, &v58);

    *(v7 + 4) = v26;
    _os_log_impl(&dword_20B517000, v3, v4, "[CatalogTipDataProvider] Making tip lockup from lockup with id = %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x20F2F6A40](v8, -1, -1);
    MEMORY[0x20F2F6A40](v7, -1, -1);

    v20 = *(v25 + 8);
    v20(v23, v24);
  }

  else
  {
    v16 = *(v0 + 200);
    v17 = *(v0 + 176);
    v18 = *(v0 + 184);
    v19 = *(v0 + 168);

    sub_20B8B34A8(v19, MEMORY[0x277D50C70]);
    v20 = *(v18 + 8);
    v20(v16, v17);
  }

  sub_20B864C34(*(v0 + 48), *(v0 + 152));
  v27 = swift_getEnumCaseMultiPayload();
  v28 = *(v0 + 152);
  if (v27 == 1)
  {
    v29 = *(v0 + 128);
    v30 = *(v0 + 96);
    v31 = *(v0 + 104);
    (*(v31 + 32))(v29, v28, v30);
    v32 = sub_20C133E94();
  }

  else
  {
    v29 = *(v0 + 88);
    v30 = *(v0 + 64);
    v31 = *(v0 + 72);
    (*(v31 + 32))(v29, v28, v30);
    v32 = sub_20C136574();
  }

  v35 = v32;
  v36 = v33;
  v37 = v34;
  (*(v31 + 8))(v29, v30);
  *(v0 + 16) = v35;
  *(v0 + 24) = v36;
  v38 = v37 & 1;
  *(v0 + 32) = v38;
  *(v0 + 33) = 6;
  sub_20B852060();
  sub_20B8520B4();
  v39 = sub_20C133C04();
  sub_20B683084(v35, v36, v38);
  if ((v39 & 1) == 0)
  {
    sub_20C13B4D4();
    v47 = sub_20C13BB74();
    v48 = sub_20C13D1D4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_20B517000, v47, v48, "[CatalogTipDataProvider] Reference type is not tip, skipping lockup", v49, 2u);
      MEMORY[0x20F2F6A40](v49, -1, -1);
    }

    v50 = *(v0 + 192);
    v51 = *(v0 + 176);

    v20(v50, v51);
    v46 = 1;
    goto LABEL_16;
  }

  sub_20B864C34(*(v0 + 48), *(v0 + 144));
  v40 = swift_getEnumCaseMultiPayload();
  v41 = *(v0 + 144);
  if (v40 == 1)
  {
    v42 = *(v0 + 120);
    v43 = *(v0 + 96);
    v44 = *(v0 + 40);
    v45 = *(*(v0 + 104) + 32);
    v45(v42, v41, v43);
    v45(v44, v42, v43);
    v46 = 0;
LABEL_16:
    (*(*(v0 + 104) + 56))(*(v0 + 40), v46, 1, *(v0 + 96));

    v52 = *(v0 + 8);

    return v52();
  }

  (*(*(v0 + 72) + 32))(*(v0 + 80), v41, *(v0 + 64));
  v54 = swift_task_alloc();
  *(v0 + 208) = v54;
  *v54 = v0;
  v54[1] = sub_20B8B25E8;
  v55 = *(v0 + 112);
  v56 = *(v0 + 80);
  v57 = *(v0 + 34);

  return sub_20B8B2968(v55, v56, v57);
}

uint64_t sub_20B8B25E8()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_20B8B2860;
  }

  else
  {
    v2 = sub_20B8B26FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B8B26FC()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[5];
  v4 = *(v0[13] + 32);
  v4(v1, v0[14], v2);
  v4(v3, v1, v2);
  (*(v0[13] + 56))(v0[5], 0, 1, v0[12]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20B8B2860()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B8B2968(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 112) = a3;
  *(v4 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769C20);
  *(v4 + 48) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764358);
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B8B2A74, 0, 0);
}

uint64_t sub_20B8B2A74()
{
  v1 = v0[9];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[5] + 40), *(v0[5] + 64));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A20);
  v3 = sub_20C136594();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20C14F980;
  (*(v4 + 16))(v6 + v5, v2, v3);
  sub_20C139F14();

  v7 = swift_task_alloc();
  v0[10] = v7;
  *(v7 + 16) = "SeymourUI/CatalogTipDataProvider.swift";
  *(v7 + 24) = 38;
  *(v7 + 32) = 2;
  *(v7 + 40) = 151;
  *(v7 + 48) = v1;
  v8 = swift_task_alloc();
  v0[11] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7670B8);
  *v8 = v0;
  v8[1] = sub_20B8B2CA4;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B8B3424, v7, v9);
}

uint64_t sub_20B8B2CA4()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {

    v3 = sub_20B8B2FB8;
  }

  else
  {
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[7];
    v2[13] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20B8B2E04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B8B2E04()
{
  v1 = v0[13];
  v2 = v0[6];
  v3 = v0[4];
  *(swift_task_alloc() + 16) = v3;
  sub_20B6B77DC(sub_20B8B3434, v1, v2);

  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_20B520158(v0[6], &unk_27C769C20);
    sub_20B8B3454();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
  }

  else
  {
    (*(v5 + 32))(v0[3], v0[6], v4);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_20B8B2FB8()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B8B3040()
{
  v0 = sub_20C133E44();
  v2 = v1;
  if (v0 == sub_20C136564() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_20C13DFF4();
  }

  return v4 & 1;
}

uint64_t CatalogTipDataProvider.deinit()
{
  sub_20B583E6C(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1(v0 + 144);
  return v0;
}

uint64_t CatalogTipDataProvider.__deallocating_deinit()
{
  sub_20B583E6C(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1(v0 + 144);

  return swift_deallocClassInstance();
}

uint64_t sub_20B8B3184()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(v3, v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v3, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v1 = *(&v3[0] + 1);
  *(v0 + 80) = *&v3[0];
  *(v0 + 88) = v1;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v0 + 136) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763D58);
  sub_20C133AA4();
  sub_20B51C710(v3, v0 + 144);
  return v0;
}

unint64_t sub_20B8B33D0()
{
  result = qword_27C7670B0;
  if (!qword_27C7670B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7670B0);
  }

  return result;
}

unint64_t sub_20B8B3454()
{
  result = qword_27C7670C0;
  if (!qword_27C7670C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7670C0);
  }

  return result;
}

uint64_t sub_20B8B34A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B8B3508()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52A9D4;

  return sub_20B8AF134(v0);
}

unint64_t sub_20B8B3598()
{
  result = qword_281103AB8;
  if (!qword_281103AB8)
  {
    sub_20C13BAE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281103AB8);
  }

  return result;
}

id sub_20B8B35F0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_styleProvider];
  *v11 = sub_20B8B4700();
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 2) = xmmword_20C15FD90;
  *(v11 + 3) = xmmword_20C15FD90;
  *(v11 + 4) = xmmword_20C15FDA0;
  v15 = OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_iconView;
  v16 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v16 setContentMode_];
  *&v4[v15] = v16;
  *&v4[OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell____lazy_storage___textLabel] = 0;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for NotificationBannerCell();
  v17 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  sub_20B8B398C();

  return v17;
}

id sub_20B8B38BC()
{
  v1 = OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell____lazy_storage___textLabel;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell____lazy_storage___textLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell____lazy_storage___textLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v4 setAdjustsFontForContentSizeCategory_];
    [v4 setNumberOfLines_];
    v5 = v0 + OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_styleProvider;
    [v4 setTextColor_];
    [v4 setFont_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_20B8B398C()
{
  v1 = [v0 contentView];
  v2 = &v0[OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_styleProvider];
  [v1 setBackgroundColor_];

  v3 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setAxis_];
  [v3 setSpacing_];
  [v3 setAlignment_];
  [v3 setDistribution_];
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_iconView];
  [v3 addArrangedSubview_];
  v5 = sub_20B8B38BC();
  [v3 addArrangedSubview_];

  v6 = [v0 contentView];
  [v6 addSubview_];

  v8 = v2[4];
  v7 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v33 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20C151850;
  v12 = [v3 topAnchor];
  v13 = [v0 contentView];
  v14 = [v13 topAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:v8];
  *(v11 + 32) = v15;
  v16 = [v3 leadingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 leadingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:v7];
  *(v11 + 40) = v19;
  v20 = [v3 trailingAnchor];
  v21 = [v0 contentView];
  v22 = [v21 trailingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:-v10];
  *(v11 + 48) = v23;
  v24 = [v3 bottomAnchor];

  v25 = [v0 contentView];
  v26 = [v25 bottomAnchor];

  v27 = [v24 constraintEqualToAnchor:v26 constant:-v9];
  *(v11 + 56) = v27;
  v28 = [v4 widthAnchor];
  v29 = [v28 constraintEqualToConstant_];

  *(v11 + 64) = v29;
  v30 = [v4 heightAnchor];
  v31 = [v4 widthAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v11 + 72) = v32;
  sub_20B51C88C(0, &qword_281100500);
  v34 = sub_20C13CC54();

  [v33 activateConstraints_];
}

id sub_20B8B3E34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationBannerCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NotificationBannerCell()
{
  result = qword_27C7670F0;
  if (!qword_27C7670F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8B3F54()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B8B4020(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B8B406C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550);
}

uint64_t sub_20B8B40D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B8B4138(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v43 - v4;
  v6 = type metadata accessor for ShelfCellItemInfo();
  v49 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767100);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = sub_20C132924();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x2B)
  {
    v43 = v8;
    v44 = v6;
    v20 = v1;
    v21 = v17;
    v22 = swift_projectBox();
    sub_20B52F9E8(v22, v11, &qword_27C767100);
    v23 = *v11;
    v24 = v11[8];
    (*(v13 + 32))(v19, &v11[*(v9 + 64)], v21);
    v25 = *&v20[OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_iconView];
    v45 = v23;
    [v25 setImage_];
    v26 = sub_20B8B38BC();
    sub_20B51C88C(0, &qword_281100520);
    v46 = v19;
    v47 = v13;
    v27 = *(v13 + 16);
    v48 = v21;
    v27(v15, v19, v21);
    v28 = sub_20C13D3C4();
    [v26 setAttributedText_];

    v29 = objc_opt_self();
    v30 = &selRef_whiteColor;
    if (v24 >= 2)
    {
      v30 = &selRef_secondaryLabelColor;
    }

    v31 = [v29 *v30];
    [v25 setTintColor_];

    v32 = OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_itemInfo;
    swift_beginAccess();
    sub_20B52F9E8(&v20[v32], v5, &qword_27C762550);
    if ((*(v49 + 48))(v5, 1, v44) == 1)
    {
      sub_20B5E2A1C(v5);
    }

    else
    {
      v33 = v43;
      sub_20B8B469C(v5, v43);
      v34 = sub_20C138104();
      if (v34 == sub_20C138104())
      {
        v35 = [v20 contentView];
        v36 = [v35 layer];

        [v36 setCornerCurve_];
        v37 = [v20 contentView];
        v38 = [v37 layer];

        [v38 setCornerRadius_];
        v39 = [v20 contentView];
        v40 = [v39 layer];

        [v40 setMaskedCorners_];
        sub_20B86C070(v33);
LABEL_10:
        (*(v47 + 8))(v46, v48);
        return;
      }

      sub_20B86C070(v33);
    }

    v41 = [v20 contentView];
    v42 = [v41 layer];

    [v42 setCornerRadius_];
    goto LABEL_10;
  }
}

uint64_t sub_20B8B469C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_20B8B4700()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.149019608 green:0.149019608 blue:0.160784314 alpha:1.0];
  [objc_opt_self() whiteColor];
  v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:0];
  v2 = [v1 fontDescriptorWithSymbolicTraits_];
  if (v2)
  {
    v3 = v2;

    v1 = v3;
  }

  v4 = [objc_opt_self() fontWithDescriptor:v1 size:0.0];

  return v0;
}

void sub_20B8B4818()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_styleProvider;
  *v3 = sub_20B8B4700();
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  *(v3 + 32) = xmmword_20C15FD90;
  *(v3 + 48) = xmmword_20C15FD90;
  *(v3 + 64) = xmmword_20C15FDA0;
  v7 = OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_iconView;
  v8 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v8 setContentMode_];
  *(v0 + v7) = v8;
  *(v0 + OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell____lazy_storage___textLabel) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B8B4974(void *a1)
{
  v2 = v1;
  v60 = a1;
  v3 = type metadata accessor for PageAlertAction();
  v4 = (v3 - 8);
  v62 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - v8;
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B554();
  sub_20C13BB64();
  (*(v11 + 8))(v13, v10);
  v63 = v2;
  swift_getObjectType();
  sub_20C138714();
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v16 = [v15 bundleForClass_];
  v17 = sub_20C132964();
  v19 = v18;

  v20 = swift_allocObject();
  swift_weakInit();
  sub_20C132ED4();
  v21 = &v9[v4[8]];
  *v21 = v17;
  v21[1] = v19;
  v9[v4[7]] = 0;
  v22 = v4[9];
  v58 = v9;
  v23 = &v9[v22];
  *v23 = sub_20B8B5114;
  v23[1] = v20;
  v24 = [v15 bundleForClass_];
  v25 = sub_20C132964();
  v27 = v26;

  sub_20C132ED4();
  v28 = &v6[v4[8]];
  *v28 = v25;
  v28[1] = v27;
  v6[v4[7]] = 2;
  v29 = v4[9];
  v59 = v6;
  v30 = &v6[v29];
  *v30 = nullsub_1;
  *(v30 + 1) = 0;
  v31 = v15;
  v61 = ObjCClassFromMetadata;
  v32 = [v15 bundleForClass_];
  v33 = sub_20C132964();
  v35 = v34;

  v64[0] = v60;
  v36 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
  v37 = sub_20C13C9D4();
  v39 = v38;
  if (sub_20C1380B4())
  {
    strcpy(v64, "\n\n[Internal] ");
    HIWORD(v64[1]) = -4864;
    MEMORY[0x20F2F4230](v37, v39);

    v40 = v64[0];
    v41 = v64[1];
  }

  else
  {

    v40 = 0;
    v41 = 0xE000000000000000;
  }

  v64[0] = v33;
  v64[1] = v35;

  MEMORY[0x20F2F4230](v40, v41);

  v43 = v64[0];
  v42 = v64[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240);
  v44 = *(v62 + 72);
  v45 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_20C14F320;
  v47 = v46 + v45;
  v48 = v58;
  sub_20B8B511C(v58, v47);
  v49 = v59;
  sub_20B8B511C(v59, v47 + v44);
  v50 = [v31 bundleForClass_];
  v51 = sub_20C132964();
  v53 = v52;

  type metadata accessor for DefaultPageAlertPresenter();
  v54 = swift_allocObject();
  *(v54 + 24) = 0;
  swift_unknownObjectWeakInit();
  v55 = MEMORY[0x277D84F90];
  *(v54 + 32) = v46;
  *(v54 + 40) = v55;
  *(v54 + 48) = v51;
  *(v54 + 56) = v53;
  *(v54 + 64) = v43;
  *(v54 + 72) = v42;
  *(v54 + 80) = 1;
  *(v54 + 88) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BC000D4(v54, 0, 0, Strong);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_20B7B8DA0(v49);
  return sub_20B7B8DA0(v48);
}

uint64_t sub_20B8B4FF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_20C13CDF4();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    sub_20B6383D0(0, 0, v2, &unk_20C15FEF0, v6);
  }

  return result;
}

uint64_t sub_20B8B511C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageAlertAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8B5180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_20C131E34();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = sub_20C131EE4();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = sub_20C13BB84();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B8B5304, 0, 0);
}

uint64_t sub_20B8B5304()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[10];
  sub_20C13B554();
  sub_20C13BB64();
  v5 = *(v3 + 8);
  v0[21] = v5;
  v0[22] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  sub_20B51CC64(*(v4 + 96) + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_externalOverlayPresenter, (v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_20B8B54BC;

  return v10(v6, v7);
}

uint64_t sub_20B8B54BC()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_20B8B5660;
  }

  else
  {
    v2 = sub_20B8B55D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B8B55D0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B8B5660()
{
  v30 = v0;
  v1 = (v0 + 56);
  v2 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_20C13B554();
  v3 = v2;
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 192);
    v28 = *(v0 + 168);
    v7 = *(v0 + 152);
    v8 = *(v0 + 136);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136446210;
    *(v0 + 72) = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v12 = sub_20C13C9D4();
    v14 = sub_20B51E694(v12, v13, &v29);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_20B517000, v4, v5, "Failed to reconnect to external display for overlays: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    v28(v7, v8);
  }

  else
  {
    v15 = *(v0 + 168);
    v16 = *(v0 + 152);
    v17 = *(v0 + 136);

    v15(v16, v17);
  }

  v18 = *(v0 + 192);
  *(v0 + 56) = v18;
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
  if (swift_dynamicCast())
  {
    v20 = (*(*(v0 + 120) + 88))(*(v0 + 128), *(v0 + 112));
    if (v20 == *MEMORY[0x277CE9BA8] || v20 == *MEMORY[0x277CE9BB0] || v20 == *MEMORY[0x277CE9BB8] || v20 == *MEMORY[0x277CE9BA0])
    {
      goto LABEL_17;
    }

    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  }

  v1 = (v0 + 64);
  v21 = *(v0 + 192);

  *(v0 + 64) = v21;
  v22 = v21;
  if (!swift_dynamicCast())
  {
LABEL_14:

    sub_20C13CDA4();
    *(v0 + 200) = sub_20C13CD94();
    v25 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B8B5A50, v25, v24);
  }

  v23 = (*(*(v0 + 96) + 88))(*(v0 + 104), *(v0 + 88));
  if (v23 != *MEMORY[0x277CE9B78] && v23 != *MEMORY[0x277CE9B80])
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    goto LABEL_14;
  }

LABEL_17:

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_20B8B5A50()
{
  v1 = *(v0 + 192);

  sub_20B8B4974(v1);

  return MEMORY[0x2822009F8](sub_20B8B5AC4, 0, 0);
}

uint64_t sub_20B8B5AC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B8B5B54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B8B5180(a1, v4, v5, v6);
}

uint64_t RemoteParticipantAvatarProvider.__allocating_init(dependencies:familyAvatarProvider:accountAvatarProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v5 = swift_allocObject();
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v5;
}

uint64_t RemoteParticipantAvatarProvider.init(dependencies:familyAvatarProvider:accountAvatarProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v3;
}

uint64_t RemoteParticipantAvatarProvider.fetchUserImage(for:)()
{
  sub_20B8B5D60();
  v0 = swift_allocError();
  *v1 = 7;
  *(swift_allocObject() + 16) = v0;
  sub_20B71D438();

  return sub_20C137CA4();
}

unint64_t sub_20B8B5D60()
{
  result = qword_27C76A4E0;
  if (!qword_27C76A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76A4E0);
  }

  return result;
}

uint64_t RemoteParticipantAvatarProvider.fetchAccountAvatar(for:)()
{
  sub_20B8B5D60();
  v0 = swift_allocError();
  *v1 = 7;
  *(swift_allocObject() + 16) = v0;

  return sub_20C137CA4();
}

uint64_t sub_20B8B5E48()
{
  sub_20B8B5D60();
  v0 = swift_allocError();
  *v1 = 7;
  *(swift_allocObject() + 16) = v0;
  sub_20B71D438();

  return sub_20C137CA4();
}

uint64_t sub_20B8B5EEC()
{
  sub_20B8B5D60();
  v0 = swift_allocError();
  *v1 = 7;
  *(swift_allocObject() + 16) = v0;

  return sub_20C137CA4();
}

uint64_t sub_20B8B5FD0()
{
  v0 = sub_20C134B64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_20C133D74() & 1) == 0)
  {
    v4 = sub_20C133D24();
    v6 = v5;
    v26 = v4;
    v27 = v5;
    v8 = v7 & 1;
    v28 = v7 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767108);
    sub_20C133BD4();
    sub_20B583F4C(v4, v6, v8);
    v9 = HIBYTE(v25);
    if (HIBYTE(v25) != 2)
    {
      sub_20C133D34();
      v12 = sub_20C134B54();
      v14 = v13;
      v16 = v15;
      (*(v1 + 8))(v3, v0);
      v26 = v12;
      v27 = v14;
      v28 = v16 & 1;
      HIBYTE(v25) = 1;
      sub_20B64BD18();
      sub_20B64BD6C();
      v17 = sub_20C133C04();
      sub_20B583F4C(v12, v14, v16 & 1);
      if (v17)
      {
        v26 = sub_20C136474();
        LOBYTE(v27) = v18 & 1;
        HIBYTE(v25) = 1;
        sub_20B64BC70();
        sub_20B64BCC4();
        v10 = sub_20C133C04();
        return v10 & 1;
      }

      v19 = sub_20C136464();
      v21 = v20;
      v26 = v19;
      v27 = v20;
      v23 = v22 & 1;
      v28 = v22 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76B3D0);
      sub_20C133BD4();
      sub_20B583F4C(v19, v21, v23);
      if (HIBYTE(v25) - 3 <= 1)
      {
        v26 = sub_20C136474();
        LOBYTE(v27) = v24 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BC10);
        sub_20C133BD4();
        if (HIBYTE(v25) <= 1u)
        {
          if (HIBYTE(v25))
          {
            if ((v9 & 1) == 0)
            {
LABEL_15:
              v10 = 1;
              return v10 & 1;
            }
          }

          else if (v9)
          {
            goto LABEL_15;
          }
        }

        else if (HIBYTE(v25) - 2 >= 2)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_20B8B6290(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B8B62D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_20B8B6398()
{
  v1 = sub_20B8B6690();
  if (v1)
  {
    v2 = v1;
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_20C14FE90;
    v5 = [v2 topAnchor];
    v6 = [v0 topAnchor];
    v7 = [v5 constraintEqualToAnchor_];

    *(v4 + 32) = v7;
    v8 = [v2 leadingAnchor];
    v9 = [v0 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor_];

    *(v4 + 40) = v10;
    v11 = [v2 trailingAnchor];
    v12 = [v0 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor_];

    *(v4 + 48) = v13;
    v14 = [v2 bottomAnchor];
    v15 = [v0 bottomAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    *(v4 + 56) = v16;
    *(inited + 32) = v4;
    v17 = objc_opt_self();
    sub_20BE54D20(inited);
    swift_setDeallocating();
    sub_20B68537C(inited + 32);
    sub_20B5E29D0();
    v18 = sub_20C13CC54();

    [v17 activateConstraints_];
  }
}

id sub_20B8B6690()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v35 = [objc_allocWithZone(MEMORY[0x277CE8CB8]) init];
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionMedalView_completionLevel))
  {
    sub_20C135BE4();
  }

  else
  {
    sub_20C135BC4();
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CE8DE0]) init];
  v9 = sub_20C13C914();

  aBlock[0] = 0;
  v10 = [v8 ephemeralAchievementWithTemplateUniqueName:v9 error:aBlock];

  if (aBlock[0])
  {
    aBlock[0];

    swift_willThrow();
    return v8;
  }

  if (!v10)
  {
    sub_20C13B4A4();
    v26 = sub_20C13BB74();
    v27 = sub_20C13D1C4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_20B517000, v26, v27, "WorkoutPlanCompletionBadgeView.makeBadgeView: No achievement", v28, 2u);
      MEMORY[0x20F2F6A40](v28, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  v11 = objc_allocWithZone(MEMORY[0x277CE8D98]);
  v12 = [v11 initWithStyle:1 achievement:v10 achLocalizationProvider:v35];
  if (!v12)
  {
    sub_20C13B4A4();
    v29 = sub_20C13BB74();
    v30 = sub_20C13D1D4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_20B517000, v29, v30, "WorkoutPlanCompletionBadgeView.makeBadgeView: No formatter", v31, 2u);
      MEMORY[0x20F2F6A40](v31, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v7, v1);
    return 0;
  }

  v13 = v12;
  v8 = [objc_allocWithZone(MEMORY[0x277CE8DB0]) initUsingEarnedShader_];
  v14 = [objc_allocWithZone(MEMORY[0x277CE8DA0]) init];
  v15 = [v14 badgeConfigurationForAchievement_];
  v16 = [v14 backSideIconImageForAchievement_];
  [v8 setConfiguration_];
  [v8 setBadgeBacksideIcon_];
  v17 = [v13 localizedAttributedBacksideString];
  if (v17)
  {
    v18 = v17;
    v19 = [v13 localizedAttributedShortenedBacksideString];
    if (v19)
    {
      v20 = v19;
      [v8 setBadgeBacksideAttributedString_];
      v21 = swift_allocObject();
      v21[2] = v20;
      aBlock[4] = sub_20B8B6CC4;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20B8B6BEC;
      aBlock[3] = &block_descriptor_39;
      v22 = _Block_copy(aBlock);
      v33 = v16;
      v34 = v14;
      v23 = v22;
      v24 = v20;
      v14 = v34;

      [v8 setShortenedBadgeBacksideStringProvider_];
      v25 = v23;
      v16 = v33;
      _Block_release(v25);

      v18 = v24;
    }
  }

  [v8 setPaused_];
  [v8 resizeBadgeForCurrentViewSize];

  return v8;
}

id sub_20B8B6BEC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_20B8B6C6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutPlanCompletionMedalView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B8B6CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_20C133244();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SortButton();
  v23.receiver = v3;
  v23.super_class = v14;
  objc_msgSendSuper2(&v23, sel_contextMenuInteraction_willEndForConfiguration_animator_, a1, a2, a3);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_shouldTriggerDismissEvent) == 1 && (v16 = result, (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
    {
      v18 = Strong;
      *v13 = 0;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      v13[24] = 0x80;
      v19 = swift_storeEnumTagMultiPayload();
      *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
      *(&v23 - 4) = 0;
      *(&v23 - 24) = 1;
      *(&v23 - 2) = v13;
      *(&v23 - 1) = v18;
      v21 = [*(v18 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
      if (v21)
      {
        v22 = v21;
        sub_20C1331E4();

        sub_20C0C1CDC(v10, sub_20B5E27BC);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        (*(v8 + 8))(v10, v7);
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      return sub_20B5E2760(v13);
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_20B8B710C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SortButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B8B7184()
{
  v0 = sub_20C1333A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong presentedViewController];
    v7 = sub_20C1393F4();
    v8 = v7;
    if (v6)
    {
      sub_20B51C88C(0, &qword_281100550);
      v9 = sub_20C13D5F4();

      if (v9)
      {
        v11 = v5;
        sub_20BF7EB60(v3);
        type metadata accessor for TrainerDetailViewController();
        sub_20B8B9520(&qword_27C7671D0, v10, type metadata accessor for TrainerDetailViewController);
        sub_20C138C54();
        (*(v1 + 8))(v3, v0);
      }
    }

    else
    {
    }
  }
}

void sub_20B8B734C()
{
  v0 = sub_20C1333A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7671C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong presentedViewController];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v11 = *&v8[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_dataProvider];
      v12 = OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_trainer;
      swift_beginAccess();
      sub_20B52F9E8(v11 + v12, v6, &qword_27C7671C0);
      v13 = sub_20C137F24();
      LODWORD(v12) = (*(*(v13 - 8) + 48))(v6, 1, v13);

      if (v12 == 1)
      {

        sub_20B520158(v6, &qword_27C7671C0);
        *(v11 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_shouldPublishPageEventWhenAvailable) = 1;
      }

      else
      {
        sub_20B520158(v6, &qword_27C7671C0);
        v14[1] = v11;
        sub_20BF7EB60(v3);
        type metadata accessor for TrainerPageDataProvider();
        sub_20B8B9520(&qword_27C7671C8, 255, type metadata accessor for TrainerPageDataProvider);
        sub_20C138C54();

        (*(v1 + 8))(v3, v0);
      }
    }
  }
}

void sub_20B8B7630()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TrainerDetailViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  sub_20C03652C();
  sub_20B8B8174();
  sub_20B79554C(0);
  sub_20BAD5460();
  v1 = *(*(*&v0[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = (v1 + 40);
    do
    {
      v4 = *v3;
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 48);
      swift_unknownObjectRetain();
      v6(ObjectType, v4);
      swift_unknownObjectRelease();
      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_20B8B7770(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for TrainerDetailViewController();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentNavigationBarTintColor];
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentNavigationBarTintColor];
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_standardNavigationBarTintColor];
    v3 = 0;
  }

  v5 = v3;
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 navigationBar];

    [v8 setTintColor_];
  }

  v9 = v1[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentContentInsetBehavior + 16];
  if (v9 <= 0xFB)
  {
    if (v9 >> 6)
    {
      if (v9 >> 6 != 1)
      {
        sub_20C13DC94();
        MEMORY[0x20F2F4230](0xD000000000000023, 0x800000020C199DA0);
        sub_20C13DDF4();
        sub_20C1380E4();

        goto LABEL_12;
      }

      v9 = 0;
    }

    sub_20BE8F76C(v9);
  }

LABEL_12:
}

uint64_t sub_20B8B7A00(char a1)
{
  v2 = v1;
  v19 = sub_20C1333A4();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7671C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for TrainerDetailViewController();
  v21.receiver = v2;
  v21.super_class = v10;
  objc_msgSendSuper2(&v21, sel_viewDidAppear_, a1 & 1);
  v11 = *&v2[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_dataProvider];
  sub_20BF7E060();
  v12 = OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_trainer;
  swift_beginAccess();
  sub_20B52F9E8(v11 + v12, v9, &qword_27C7671C0);
  v13 = sub_20C137F24();
  v14 = (*(*(v13 - 8) + 48))(v9, 1, v13);
  sub_20B520158(v9, &qword_27C7671C0);
  if (v14 == 1)
  {
    *(v11 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_shouldPublishPageEventWhenAvailable) = 1;
  }

  else
  {
    v20 = v11;
    sub_20BF7EB60(v6);
    type metadata accessor for TrainerPageDataProvider();
    sub_20B8B9520(&qword_27C7671C8, 255, type metadata accessor for TrainerPageDataProvider);
    sub_20C138C54();
    (*(v4 + 8))(v6, v19);
  }

  sub_20B8B9520(&qword_27C7671D8, v15, type metadata accessor for TrainerDetailViewController);
  sub_20B8B9520(&qword_27C7671E0, v16, type metadata accessor for TrainerDetailViewController);
  return sub_20C139364();
}

void sub_20B8B7D2C(char a1)
{
  v2 = v1;
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TrainerDetailViewController();
  v18.receiver = v2;
  v18.super_class = v8;
  objc_msgSendSuper2(&v18, sel_viewWillDisappear_, a1 & 1);
  v17 = v2;
  sub_20C132E84();
  sub_20B8B9520(&qword_27C7671D8, v9, type metadata accessor for TrainerDetailViewController);
  sub_20C139274();
  (*(v5 + 8))(v7, v4);
  v10 = [v2 navigationController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 viewControllers];
    sub_20B51C88C(0, &qword_281100550);
    v13 = sub_20C13CC74();

    v17 = v2;
    MEMORY[0x28223BE20](v14);
    *(&v16 - 2) = &v17;
    LOBYTE(v12) = sub_20B79AEEC(sub_20B5978BC, (&v16 - 4), v13);

    if ((v12 & 1) == 0)
    {
      v17 = v2;
      sub_20B8B9520(&qword_27C7671D0, v15, type metadata accessor for TrainerDetailViewController);
      sub_20C138C64();
    }
  }
}

void sub_20B8B8174()
{
  v36[3] = type metadata accessor for TrainerDetailViewController();
  v36[0] = v0;
  type metadata accessor for MoreOptionsButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = v0;
  v3 = [ObjCClassFromMetadata buttonWithType_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = &v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_appearance];
  [v3 setTintColor_];
  v5 = *(v4 + 10);
  v6 = *&v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor];
  *&v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor] = v5;
  v7 = v5;

  *&v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_behaviors] = MEMORY[0x277D84FA0];

  sub_20BCC01CC(v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_isBeyondScrollBoundary], 0);
  sub_20B52F9E8(v36, v34, &unk_27C768A00);
  v8 = v35;
  if (v35)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v34, v35);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x28223BE20](v9);
    v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_20C13DFD4();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v14 = 0;
  }

  [v3 addTarget:v14 action:sel_moreOptionsButtonTapped_ forControlEvents:0x2000];
  swift_unknownObjectRelease();
  sub_20B520158(v36, &unk_27C768A00);
  v15 = type metadata accessor for DynamicScrollObservingBarButtonItem();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
  *v17 = v3;
  *(v17 + 1) = &off_2822DD228;
  v33.receiver = v16;
  v33.super_class = v15;
  v18 = v3;
  v19 = objc_msgSendSuper2(&v33, sel_init);
  [v19 setCustomView_];

  v20 = *&v2[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_upNextQueueButton];
  v21 = objc_allocWithZone(v15);
  v22 = &v21[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
  *v22 = v20;
  *(v22 + 1) = &off_2822C8C68;
  v32.receiver = v21;
  v32.super_class = v15;
  v23 = v20;
  v24 = objc_msgSendSuper2(&v32, sel_init);
  [v24 setCustomView_];

  if (v2[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_platform] == 1)
  {
    v25 = [v2 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20C150040;
    *(v28 + 32) = [objc_opt_self() fixedSpaceItemOfWidth_];
    *(v28 + 40) = v19;
    v27 = (v28 + 48);
    goto LABEL_8;
  }

  if (!v2[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_platform])
  {
    v25 = [v2 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_20C151490;
    *(v26 + 32) = v19;
    v27 = (v26 + 40);
LABEL_8:
    *v27 = v24;
    sub_20B51C88C(0, &qword_27C770510);
    v29 = v19;
    v30 = v24;
    v31 = sub_20C13CC54();

    [v25 setRightBarButtonItems_];
  }
}

void sub_20B8B85D4()
{
  v1 = [v0 navigationItem];
  v2 = [v1 rightBarButtonItems];

  if (!v2)
  {
    return;
  }

  sub_20B51C88C(0, &qword_27C770510);
  v3 = sub_20C13CC74();

  if (v3 >> 62)
  {
LABEL_21:
    v4 = sub_20C13DB34();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_22:

    return;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_4:
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x20F2F5430](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v10 = [v7 customView];
    if (v10)
    {
      break;
    }

    v6 = v8;
LABEL_6:

    ++v5;
    if (v9 == v4)
    {
      goto LABEL_22;
    }
  }

  v6 = v10;
  type metadata accessor for MoreOptionsButton();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_6;
  }

  v11 = v8;
  sub_20C03979C(v8, 0);
}

id sub_20B8B8870()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrainerDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B8B89C4(char a1)
{
  if (v1[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_isBeyondScrollBoundary] != (a1 & 1))
  {
    v1[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_isBeyondScrollBoundary] = a1 & 1;
    if (a1)
    {
      v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      v3 = 1;
    }

    else
    {
      v2 = *&v1[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_standardNavigationBarTintColor];
      v3 = 3;
    }

    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentNavigationBarTintColor];
    *&v1[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentNavigationBarTintColor] = v2;
    v5 = v2;

    v6 = objc_opt_self();
    v7 = swift_allocObject();
    v7[2] = v1;
    v7[3] = v5;
    v7[4] = v3;
    v11[4] = sub_20B8B8F24;
    v11[5] = v7;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_20B7B548C;
    v11[3] = &block_descriptor_40;
    v8 = _Block_copy(v11);
    v9 = v5;
    v10 = v1;

    [v6 animateWithDuration:v8 animations:0.2];
    _Block_release(v8);
  }
}

id sub_20B8B8B4C(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 navigationBar];

    [v8 setTintColor_];
  }

  *&a1[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentStatusBarStyle] = a3;

  return [a1 setNeedsStatusBarAppearanceUpdate];
}

uint64_t sub_20B8B8C30(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentContentInsetBehavior;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  return result;
}

uint64_t sub_20B8B8D74(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20B8B8E2C()
{
  swift_getWitnessTable();

  return sub_20C139364();
}

uint64_t sub_20B8B8E90()
{
  swift_getWitnessTable();

  return sub_20C139374();
}

id sub_20B8B8F30(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v27[3] = a5;
  v27[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v12 = &a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentContentInsetBehavior];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = -4;
  a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_isTransitioningContentInset] = 0;
  a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_visibility] = 1;
  *&a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_resignActiveObserver] = 0;
  v13 = OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_standardNavigationBarTintColor;
  *&a4[v13] = [objc_opt_self() blackColor];
  *&a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentStatusBarStyle] = 3;
  *&a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentNavigationBarTintColor] = 0;
  a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_isBeyondScrollBoundary] = 0;
  *&a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_dependencies] = a1;
  *&a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_dataProvider] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_eventHub] = v26[0];
  sub_20B51CC64(v27, &a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_pageNavigator]);
  sub_20C133AA4();
  a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_platform] = v26[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v26, &a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v26, &a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_storefrontLocalizer]);
  type metadata accessor for CatalogPageSortOptionsDataProvider();
  v14 = swift_allocObject();

  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v14 + 4, v14[7]);
  v15 = sub_20C138D34();
  v17 = v16;

  v14[2] = v15;
  v14[3] = v17;
  *&a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_sortOptionsDataProvider] = v14;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_subscriptionToken] = sub_20C13A914();
  v18 = &a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_contentInsetInitialBehavior];
  *v18 = 0;
  v18[8] = 3;
  type metadata accessor for UpNextQueueButtonPresenter();
  swift_allocObject();

  *&a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_upNextQueueButtonPresenter] = sub_20B887320();
  v19 = sub_20BE8C450(&unk_28228D520);

  v21 = sub_20BAB9360(v20, v19, 0);

  *&a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_upNextQueueButton] = v21;
  v25.receiver = a4;
  v25.super_class = type metadata accessor for TrainerDetailViewController();
  v22 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  *(a2 + 24) = &off_2822B2178;
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  sub_20C139404();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20B8B9520(&unk_27C769C10, 255, MEMORY[0x277D54398]);
  v23 = v22;
  swift_unknownObjectRetain();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v26);
  swift_getObjectType();
  type metadata accessor for FilterResultUpdated();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20B8B9520(&qword_27C7710D0, 255, type metadata accessor for FilterResultUpdated);
  sub_20C13A784();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v23;
}

uint64_t sub_20B8B9520(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_20B8B9568()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentContentInsetBehavior;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = -4;
  *(v0 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_isTransitioningContentInset) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_visibility) = 1;
  *(v0 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_resignActiveObserver) = 0;
  v2 = OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_standardNavigationBarTintColor;
  *(v0 + v2) = [objc_opt_self() blackColor];
  *(v0 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentStatusBarStyle) = 3;
  *(v0 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentNavigationBarTintColor) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_isBeyondScrollBoundary) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t type metadata accessor for EquipmentFilterUpdated()
{
  result = qword_27C7671E8;
  if (!qword_27C7671E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8B96E0()
{
  sub_20C134EC4();
  if (v0 <= 0x3F)
  {
    sub_20B52CA84();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20B8B9764()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_browsingStringBuilder), *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_browsingStringBuilder + 24));
  v5 = sub_20C138D34();
  v7 = v6;
  v8 = sub_20B7B2BBC();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20C14F980;
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = v7;
  *(v12 + 32) = v8;
  *(v12 + 40) = v10;
  *(v11 + 32) = v12 | 0x5000000000000004;
  v35 = 0uLL;
  LOBYTE(v36) = 1;
  *(&v36 + 1) = 0;
  *&v37 = 0;
  WORD4(v37) = 128;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  LOBYTE(v41) = 0;
  *(&v41 + 1) = v11;
  *&v42[0] = MEMORY[0x277D84F90];
  *(v42 + 8) = 0u;
  *(&v42[1] + 8) = 0u;
  *(&v42[2] + 1) = 0;
  v43 = 2;
  nullsub_1(&v35);
  v13 = v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row;
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 144);
  v44[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 128);
  v44[9] = v14;
  v45 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 160);
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 80);
  v44[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 64);
  v44[5] = v15;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 112);
  v44[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 96);
  v44[7] = v16;
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 16);
  v44[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row);
  v44[1] = v17;
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 48);
  v44[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 32);
  v44[3] = v18;
  v19 = v42[2];
  *(v13 + 128) = v42[1];
  *(v13 + 144) = v19;
  *(v13 + 160) = v43;
  v20 = v40;
  *(v13 + 64) = v39;
  *(v13 + 80) = v20;
  v21 = v42[0];
  *(v13 + 96) = v41;
  *(v13 + 112) = v21;
  v22 = v36;
  *v13 = v35;
  *(v13 + 16) = v22;
  v23 = v38;
  *(v13 + 32) = v37;
  *(v13 + 48) = v23;
  sub_20B634408(v44);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v26 = sub_20B61CF38(v1, result);
      if (v27)
      {
        v29 = v26;
        v30 = v27;
        v31 = v28;
        sub_20B5E2E18();
        *v4 = sub_20C13D374();
        v32 = v34;
        (*(v34 + 104))(v4, *MEMORY[0x277D85200], v2);
        v33 = sub_20C13C584();
        result = (*(v32 + 8))(v4, v2);
        if ((v33 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B6204FC(v29, v30, v31, v1, 0, v25);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B8B9AD8()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);
  sub_20B8B9DF8(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_browsingStringBuilder);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OfflineWorkoutsBannerShelf()
{
  result = qword_27C7671F8;
  if (!qword_27C7671F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B8B9C20()
{
  result = sub_20C132EE4();
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

uint64_t sub_20B8B9CD0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B8B9D48@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B8B9F0C()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13B564();
    sub_20C13BB64();
    (*(v1 + 8))(v3, v0);
    sub_20B8C0364();
    sub_20B8C2118();
    sub_20B8C22B4(0, 0.0);
  }

  return result;
}

uint64_t sub_20B8BA090(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
    a5(v10);

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_20B8BA1B4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B8C22B4(0, 0.0);
  }

  return result;
}

uint64_t sub_20B8BA214()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10[-v1];
  v3 = sub_20C136484();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_20C13B2E4();
    (*(v4 + 16))(v2, v6, v3);
    (*(v4 + 56))(v2, 0, 1, v3);
    v9 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_workoutDeviceConnection;
    swift_beginAccess();
    sub_20B8C3A08(v2, v8 + v9);
    swift_endAccess();
    sub_20B8C0364();
    sub_20B8C2118();
    sub_20B8C22B4(0, 0.0);

    sub_20B520158(v2, &unk_27C765CB0);
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_20B8BA404()
{
  v1 = v0;
  v2 = type metadata accessor for SessionHeartUIState();
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 104);
  if (*(v5 + OBJC_IVAR____TtC9SeymourUI25SessionHeartRatePresenter_state) == 1)
  {
    *(v5 + OBJC_IVAR____TtC9SeymourUI25SessionHeartRatePresenter_state) = 0;
    swift_storeEnumTagMultiPayload();
    v6 = OBJC_IVAR____TtC9SeymourUI25SessionHeartRatePresenter_uiState;
    swift_beginAccess();
    sub_20B8C3A78(v4, v5 + v6);
    swift_endAccess();
    sub_20C0F72CC();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 56))(ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B8BA51C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v8 + 8))(v10, v7);
  v11 = sub_20C135274();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  v13 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_displayPreferences;
  swift_beginAccess();
  sub_20B5DF2D4(v6, v2 + v13, &unk_27C765100);
  swift_endAccess();
  sub_20B8C0364();
  sub_20B8C2118();
  return sub_20B8C22B4(0, 0.0);
}

uint64_t sub_20B8BA748(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v8 + 8))(v10, v7);
  v11 = sub_20C1368F4();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  v13 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_heartRateDeviceConnection;
  swift_beginAccess();
  sub_20B5DF2D4(v6, v2 + v13, &unk_27C767260);
  swift_endAccess();
  sub_20B8C0364();
  sub_20B8C2118();
  return sub_20B8C22B4(0, 0.0);
}

uint64_t sub_20B8BA974()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v12 + 8))(v14, v11);
  sub_20C137DF4();
  v15 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_displayPreferences;
  swift_beginAccess();
  sub_20B5DF2D4(v10, v1 + v15, &unk_27C765100);
  swift_endAccess();
  sub_20C137E64();
  v16 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_heartRateDeviceConnection;
  swift_beginAccess();
  sub_20B5DF2D4(v7, v1 + v16, &unk_27C767260);
  swift_endAccess();
  sub_20C137E44();
  v17 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_workoutDeviceConnection;
  swift_beginAccess();
  sub_20B8C3A08(v4, v1 + v17);
  swift_endAccess();
  sub_20B8C0364();
  sub_20B8C2118();
  sub_20B8C22B4(0, 0.0);
  return sub_20B520158(v4, &unk_27C765CB0);
}

uint64_t sub_20B8BAC74()
{
  swift_getObjectType();
  sub_20C13AA84();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AC34();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AD34();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20B8BAE38()
{
  v0 = sub_20C133B04();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v10[-v5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 72);

    sub_20C13AA64();
    if (*(v8 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_cumulativeScoreGenerator))
    {

      sub_20BD791A0(v6);
    }

    if (*(v8 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_rollingScoreGenerator))
    {

      sub_20BD791A0(v6);
    }

    (*(v1 + 8))(v6, v0);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_20C13AA64();
    sub_20BA1CF44(v3);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20B8BB040()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_20C133DD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_20C13AC14();
    sub_20B720E18(v7);

    (*(v5 + 8))(v7, v4);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13B564();
    sub_20C13BB64();
    (*(v1 + 8))(v3, v0);
    sub_20B8C0364();
    sub_20B8C2118();
    sub_20B8C22B4(0, 0.0);
  }

  return result;
}

uint64_t sub_20B8BB288()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_20C134514();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_20C13AD14();
    sub_20B78F560(v7);

    (*(v5 + 8))(v7, v4);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13B564();
    sub_20C13BB64();
    (*(v1 + 8))(v3, v0);
    sub_20B8C0364();
    sub_20B8C2118();
    sub_20B8C22B4(0, 0.0);
  }

  return result;
}

uint64_t sub_20B8BB4D0()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767308);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C767310, &qword_27C767308);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767318);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C767320, &qword_27C767318);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767328);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C767330, &qword_27C767328);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767338);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C767340, &qword_27C767338);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767348);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C767350, &qword_27C767348);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767358);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C767360, &qword_27C767358);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767368);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C767370, &qword_27C767368);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767378);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C767380, &qword_27C767378);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767388);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C767390, &qword_27C767388);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767398);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C7673A0, &qword_27C767398);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673A8);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C7673B0, &qword_27C7673A8);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673B8);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C7673C0, &qword_27C7673B8);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673C8);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C7673D0, &qword_27C7673C8);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673D8);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C7673E0, &qword_27C7673D8);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673E8);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C7673F0, &qword_27C7673E8);
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20B8BBF1C(uint64_t a1)
{
  v17 = sub_20C133D14();
  v2 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13AB64();
  v5 = sub_20C133CE4();
  v7 = v6;
  v9 = v8;
  v21 = 3;
  v18 = v5;
  v19 = v6;
  v10 = v8 & 1;
  v20 = v8 & 1;
  sub_20B8C38A0();
  sub_20B8C38F4();
  if (sub_20C133C14())
  {
    sub_20B583F4C(v5, v7, v10);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767308);
      sub_20B8BD164(*(a1 + *(v11 + 28)));
LABEL_10:
    }
  }

  else
  {
    v21 = 5;
    v18 = v5;
    v19 = v7;
    v20 = v10;
    if (sub_20C133C14())
    {
      sub_20B583F4C(v5, v7, v9 & 1);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767308);
        sub_20B8BD620(*(a1 + *(v12 + 28)));
        goto LABEL_10;
      }
    }

    else
    {
      v21 = 1;
      v18 = v5;
      v19 = v7;
      v13 = v9 & 1;
      v20 = v13;
      if ((sub_20C133C14() & 1) == 0)
      {
        v21 = 2;
        v18 = v5;
        v19 = v7;
        v20 = v13;
        sub_20C133C14();
        (*(v2 + 8))(v4, v17);
        return sub_20B583F4C(v5, v7, v13);
      }

      sub_20B583F4C(v5, v7, v13);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767308);
        sub_20B8BDEE8(*(a1 + *(v14 + 28)));
        goto LABEL_10;
      }
    }
  }

  return (*(v2 + 8))(v4, v17);
}

uint64_t sub_20B8BC228(uint64_t a1)
{
  v2 = sub_20C133D14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13AB64();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767318);
    sub_20B8BF7C0(*(a1 + *(v7 + 28)));

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_20B8BC350(uint64_t a1)
{
  v2 = sub_20C133D14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13A934();
  v6 = sub_20C133CE4();
  v8 = v7;
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v5, v2);
  v15[1] = v6;
  v15[2] = v8;
  v10 &= 1u;
  v16 = v10;
  v17 = xmmword_20C152300;
  v18 = 1;
  sub_20B8C38A0();
  sub_20B8C38F4();
  v12 = sub_20C133BF4();
  result = sub_20B583F4C(v6, v8, v10);
  if (v12)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_20C13A934();
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767328);
      sub_20B8BE00C(*(a1 + *(v14 + 28)));

      return (v11)(v5, v2);
    }
  }

  return result;
}

uint64_t sub_20B8BC524(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767338);
    sub_20BE7FA7C(a1, *(a1 + *(v3 + 28)));
  }

  return result;
}

void sub_20B8BC5BC(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v2 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767348) + 28));
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v6 = objc_allocWithZone(MEMORY[0x277D75D40]);
      aBlock[4] = sub_20B8C39E8;
      aBlock[5] = v5;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20B7B548C;
      aBlock[3] = &block_descriptor_83;
      v7 = _Block_copy(aBlock);
      v8 = v4;

      v9 = [v6 initWithDuration:v7 dampingRatio:v2 animations:1.0];
      _Block_release(v7);
      [v9 startAnimation];
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_20B8BC760(uint64_t a1)
{
  v2 = sub_20C133474();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_20C137254();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v7 + 16))(v9, result + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_activityTypeBehavior, v6);

    v11 = sub_20C137214();
    result = (*(v7 + 8))(v9, v6);
    if (v11)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {

        sub_20C13A864();
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767358);
        sub_20B69992C(v5, *(a1 + *(v12 + 28)));

        return (*(v3 + 8))(v5, v2);
      }
    }
  }

  return result;
}

uint64_t sub_20B8BC9A8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_trackPresenter);

    v4 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767368) + 28));
    v5 = v3 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_display;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 24))(ObjectType, v6, v4);
      swift_unknownObjectRelease();
    }

    v8 = v3 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_externalOverlayDisplay;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      v10 = swift_getObjectType();
      (*(v9 + 24))(v10, v9, v4);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20B8BCAE0(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 24);
  v4 = a1[4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B8BE508(v1, v3, v2, v6, v4);
  }

  return result;
}

uint64_t sub_20B8BCB6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B8BF9C8(v1);
  }

  return result;
}

uint64_t sub_20B8BCBD4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B8BF028(v1, v4, v2);
  }

  return result;
}

uint64_t sub_20B8BCC4C(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B8BF9C8(v1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_20BB78CE0();
  }

  return result;
}

uint64_t sub_20B8BCCF8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B8BEDB8(v1, v4, v2);
  }

  return result;
}

uint64_t sub_20B8BCD68(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B8BF9C8(v1);
  }

  return result;
}

uint64_t sub_20B8BCDD0(uint64_t a1)
{
  v2 = sub_20C134054();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13AC44();
  v6 = sub_20C134024();
  v9 = v8 >> 5;
  if (v9 <= 1)
  {
    if (v8 >> 5)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673D8);
        sub_20B8BDD40(*(a1 + *(v14 + 28)));
        goto LABEL_15;
      }
    }

    else
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673D8);
        sub_20B8BDB98(*(a1 + *(v11 + 28)));
        goto LABEL_15;
      }
    }
  }

  else if (v9 == 2)
  {
    sub_20B8C3888(v6, v7, v8);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673D8);
      sub_20B8BD7E4(*(a1 + *(v12 + 28)));
      goto LABEL_15;
    }
  }

  else if (v9 == 3)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673D8);
      sub_20B8BD9AC(*(a1 + *(v10 + 28)));
LABEL_15:
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673D8);
      sub_20B8BDAA4(*(a1 + *(v13 + 28)));
      goto LABEL_15;
    }
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20B8BD03C(uint64_t a1)
{
  v2 = sub_20C134054();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13A9A4();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673E8);
    sub_20B8BF8BC(*(a1 + *(v6 + 28)));
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20B8BD164(double a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_20C134914();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v15 = sub_20B8D7BF8(5, v14);

  if (v15)
  {
    v17 = v1[13];
    v18 = OBJC_IVAR____TtC9SeymourUI25SessionHeartRatePresenter_lastReceivedMetric;
    swift_beginAccess();
    sub_20B52F9E8(v17 + v18, v9, &unk_27C7650E0);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_20B520158(v9, &unk_27C7650E0);
      sub_20C13B534();
      v19 = sub_20C13BB74();
      v20 = sub_20C13D1D4();
      if (os_log_type_enabled(v19, v20))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_20B517000, v19, v20, "Unable to create needed objects for Heart Rate highlight event", v22, 2u);
        MEMORY[0x20F2F6A40](v22, -1, -1);
      }

      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      sub_20B9B18B0();
      v24 = v23;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v25 = v1[3];
        ObjectType = swift_getObjectType();
        (*(v25 + 48))(v24, 0, ObjectType, v25);
        swift_unknownObjectRelease();
      }

      sub_20B9B18B0();
      v28 = v27;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v29 = v1[5];
        v30 = swift_getObjectType();
        (*(v29 + 48))(v28, 0, v30, v29);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v31 = sub_20BE8C680(&unk_28228D638);
      v32 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_currentElements;
      swift_beginAccess();
      *(v1 + v32) = v31;

      sub_20B8C22B4(0, a1);
      v33 = [v24 string];
      if (!v33)
      {
        sub_20C13C954();
        v33 = sub_20C13C914();
      }

      [type metadata accessor for AccessibilitySessionOverlayPresenter() accessibilityAnnounceEvent_];

      return (*(v11 + 8))(v13, v10);
    }
  }

  return result;
}

void sub_20B8BD620(double a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v5 = sub_20B8D7BF8(12, v4);

  if (v5)
  {
    sub_20B9B20E4();
    v7 = v6;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      (*(v8 + 48))(v7, 0, ObjectType, v8);
      swift_unknownObjectRelease();
    }

    sub_20B9B20E4();
    v11 = v10;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v2 + 40);
      v13 = swift_getObjectType();
      (*(v12 + 48))(v11, 0, v13, v12);
      swift_unknownObjectRelease();
    }

    v14 = sub_20BE8C680(&unk_28228D660);
    v15 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_currentElements;
    swift_beginAccess();
    *(v2 + v15) = v14;

    sub_20B8C22B4(0, a1);
    v16 = [v7 string];
    if (!v16)
    {
      sub_20C13C954();
      v16 = sub_20C13C914();
    }

    [type metadata accessor for AccessibilitySessionOverlayPresenter() accessibilityAnnounceEvent_];
  }
}

uint64_t sub_20B8BD7E4(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v4 = sub_20B8D7BF8(7, v3);

  if (v4)
  {
    v6 = sub_20C134024();
    v9 = v6;
    v10 = v7;
    if ((v8 & 0xE0) == 0x40)
    {
      v11 = v8;
      v12 = *(v1 + 120);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v12 + 24);
        ObjectType = swift_getObjectType();
        (*(v13 + 8))(v9, v10, ObjectType, v13);
        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v12 + 40);
        v16 = swift_getObjectType();
        (*(v15 + 8))(v9, v10, v16, v15);
        sub_20B8C3888(v9, v10, v11);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_20B8C3888(v9, v10, v11);
      }

      swift_beginAccess();
      sub_20B6FFF90(&v17, 7);
      swift_endAccess();
      return sub_20B8C22B4(0, a1);
    }

    else
    {

      return sub_20B8C3888(v6, v7, v8);
    }
  }

  return result;
}

uint64_t sub_20B8BD9AC(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v4 = sub_20B8D7BF8(9, v3);

  if (v4)
  {
    v6 = sub_20C134024();
    if ((v8 & 0xE0) == 0x60)
    {
      sub_20B6DAD08(v6, v7, v8 & 1);
      swift_beginAccess();
      sub_20B6FFF90(&v9, 9);
      swift_endAccess();
      return sub_20B8C22B4(0, a1);
    }

    else
    {

      return sub_20B8C3888(v6, v7, v8);
    }
  }

  return result;
}

uint64_t sub_20B8BDAA4(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v4 = sub_20B8D7BF8(11, v3);

  if (v4)
  {
    v6 = sub_20C134024();
    if ((v8 & 0xE0) == 0x80)
    {
      sub_20C08C6BC(v6, v7);
      swift_beginAccess();
      sub_20B6FFF90(&v9, 11);
      swift_endAccess();
      return sub_20B8C22B4(0, a1);
    }

    else
    {

      return sub_20B8C3888(v6, v7, v8);
    }
  }

  return result;
}

uint64_t sub_20B8BDB98(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v4 = sub_20B8D7BF8(8, v3);

  if (v4)
  {
    v6 = sub_20C134024();
    if (v8 > 0x1Fu)
    {

      return sub_20B8C3888(v6, v7, v8);
    }

    else
    {
      v9 = *(v1 + 112);
      v10 = sub_20BBA1144();
      if (v10)
      {
        v11 = v10;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = *(v9 + 24);
          ObjectType = swift_getObjectType();
          (*(v12 + 8))(v11, ObjectType, v12);
          swift_unknownObjectRelease();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v14 = *(v9 + 40);
          v15 = swift_getObjectType();
          (*(v14 + 8))(v11, v15, v14);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      swift_beginAccess();
      sub_20B6FFF90(&v16, 8);
      swift_endAccess();
      return sub_20B8C22B4(0, a1);
    }
  }

  return result;
}

uint64_t sub_20B8BDD40(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v4 = sub_20B8D7BF8(8, v3);

  if (v4)
  {
    v6 = sub_20C134024();
    if ((v8 & 0xE0) == 0x20)
    {
      v9 = *(v1 + 112);
      v10 = sub_20BBA1144();
      if (v10)
      {
        v11 = v10;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = *(v9 + 24);
          ObjectType = swift_getObjectType();
          (*(v12 + 16))(v11, ObjectType, v12);
          swift_unknownObjectRelease();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v14 = *(v9 + 40);
          v15 = swift_getObjectType();
          (*(v14 + 16))(v11, v15, v14);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      swift_beginAccess();
      sub_20B6FFF90(&v16, 8);
      swift_endAccess();
      return sub_20B8C22B4(0, a1);
    }

    else
    {

      return sub_20B8C3888(v6, v7, v8);
    }
  }

  return result;
}

id sub_20B8BDEE8(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v4 = sub_20B8D7BF8(13, v3);

  if (v4)
  {
    sub_20C133D04();
    v7 = v6;
    sub_20C133CF4();
    v9 = v8;
    sub_20C133CD4();
    sub_20B60E744(v7, v9, v10);
    swift_beginAccess();
    sub_20B6FFF90(&v15, 13);
    swift_endAccess();
    sub_20B8C22B4(0, a1);
    v11 = type metadata accessor for AccessibilitySessionOverlayPresenter();
    sub_20C133CF4();
    v13 = v12;
    sub_20C133CD4();
    return [v11 accessibilityAnnounceTimer:1 start:v13 - v14];
  }

  return result;
}

uint64_t sub_20B8BE00C(double a1)
{
  v2 = v1;
  v4 = sub_20C13C4B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C4F4();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C13C514();
  v11 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v18 = sub_20B8D7BF8(13, v17);

  if (v18)
  {
    v30 = v5;
    v20 = *(v2 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_timerPresenter);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v20 + 24);
      ObjectType = swift_getObjectType();
      (*(v21 + 32))(ObjectType, v21);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v20 + 40);
      v24 = swift_getObjectType();
      (*(v23 + 32))(v24, v23);
      swift_unknownObjectRelease();
    }

    sub_20B5E2E18();
    v28 = sub_20C13D374();
    sub_20C13C504();
    sub_20C13C574();
    v29 = *(v11 + 8);
    v29(v13, v33);
    v25 = swift_allocObject();
    *(v25 + 16) = v2;
    *(v25 + 24) = a1;
    *(v25 + 32) = 0x3FA999999999999ALL;
    aBlock[4] = sub_20B8C3964;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    aBlock[3] = &block_descriptor_58;
    v26 = _Block_copy(aBlock);

    sub_20C13C4D4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_20B7E9080();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
    sub_20C13DA94();
    v27 = v28;
    MEMORY[0x20F2F4A80](v16, v10, v7, v26);
    _Block_release(v26);

    (*(v30 + 8))(v7, v4);
    (*(v31 + 8))(v10, v32);
    return (v29)(v16, v33);
  }

  return result;
}

id sub_20B8BE478(double a1, double a2)
{
  swift_beginAccess();
  sub_20B6C9884(13);
  swift_endAccess();
  sub_20B8C22B4(0, a1 - a2);
  return [type metadata accessor for AccessibilitySessionOverlayPresenter() accessibilityAnnounceTimer:0 start:0.0];
}

uint64_t sub_20B8BE508(uint64_t a1, int a2, double a3, double a4, double a5)
{
  v6 = v5;
  LODWORD(v8) = a2;
  v11 = sub_20C13C4B4();
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13C4F4();
  v53 = *(v14 - 8);
  v54 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C13C514();
  v57 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v47 - v21;
  v23 = *(v5 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v24 = sub_20B8D7BF8(1, v23);

  if (v24)
  {
    if (v8)
    {
      v52 = v17;
      v25 = sub_20B9B2370();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v26 = v6[3];
        ObjectType = swift_getObjectType();
        (*(v26 + 48))(v25, 0, ObjectType, v26);
        swift_unknownObjectRelease();
      }

      v50 = a1;
      v51 = v8;
      v28 = sub_20B9B2370();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v29 = v6[5];
        v30 = swift_getObjectType();
        (*(v29 + 48))(v28, 0, v30, v29);
        swift_unknownObjectRelease();
      }

      sub_20B5E2E18();
      v48 = sub_20C13D374();
      sub_20C13C504();
      sub_20C13C574();
      v31 = *(v57 + 8);
      v57 += 8;
      v49 = v31;
      v31(v19, v52);
      v32 = swift_allocObject();
      *(v32 + 16) = v6;
      *(v32 + 24) = a5;
      *(v32 + 32) = v25;
      aBlock[4] = sub_20B8C3954;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20B7B548C;
      aBlock[3] = &block_descriptor_51_0;
      v33 = _Block_copy(aBlock);

      v34 = v25;

      sub_20C13C4D4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_20B7E9080();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
      v47 = v28;
      sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
      v8 = v56;
      sub_20C13DA94();
      v35 = v48;
      MEMORY[0x20F2F4A80](v22, v16, v13, v33);
      _Block_release(v33);

      (*(v55 + 8))(v13, v8);
      (*(v53 + 8))(v16, v54);
      v49(v22, v52);
      a1 = v50;
      LOBYTE(v8) = v51;
    }

    v36 = v6[9];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v37 = *(v36 + 24);
      v38 = swift_getObjectType();
      (*(v37 + 16))(a1, v8 & 1, v38, v37, a3);
      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v40 = *(v36 + 40);
      v41 = swift_getObjectType();
      (*(v40 + 16))(a1, v8 & 1, v41, v40, a3);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v42 = v6[9];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v43 = *(v42 + 24);
      v44 = swift_getObjectType();
      (*(v43 + 16))(a1, v8 & 1, v44, v43, a3);
      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v45 = *(v42 + 40);
      v46 = swift_getObjectType();
      (*(v45 + 16))(a1, v8 & 1, v46, v45, a3);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_20B8BEB40(uint64_t a1, void *a2, double a3)
{
  v27 = sub_20BE8C680(&unk_28228D688);
  v6 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_currentElements;
  swift_beginAccess();
  v7 = asc_282287E80[0];
  v8 = *(a1 + v6);

  v9 = sub_20B8D7BF8(v7, v8);

  if (v9)
  {
    sub_20B6FFF90(&v26, v7);
  }

  v10 = asc_282287E80[1];
  v11 = *(a1 + v6);

  v12 = sub_20B8D7BF8(v10, v11);

  if (v12)
  {
    sub_20B6FFF90(&v26, v10);
  }

  v13 = asc_282287E80[2];
  v14 = *(a1 + v6);

  v15 = sub_20B8D7BF8(v13, v14);

  if (v15)
  {
    sub_20B6FFF90(&v26, v13);
  }

  v16 = asc_282287E80[3];
  v17 = *(a1 + v6);

  v18 = sub_20B8D7BF8(v16, v17);

  if (v18)
  {
    sub_20B6FFF90(&v26, v16);
  }

  v19 = asc_282287E80[4];
  v20 = *(a1 + v6);

  v21 = sub_20B8D7BF8(v19, v20);

  if (v21)
  {
    sub_20B6FFF90(&v26, v19);
  }

  v22 = asc_282287E80[5];
  v23 = *(a1 + v6);

  v24 = sub_20B8D7BF8(v22, v23);

  if (v24)
  {
    sub_20B6FFF90(&v26, v22);
  }

  *(a1 + v6) = v27;

  sub_20B8C22B4(0, a3);
  v25 = [a2 string];
  if (!v25)
  {
    sub_20C13C954();
    v25 = sub_20C13C914();
  }

  [type metadata accessor for AccessibilitySessionOverlayPresenter() accessibilityAnnounceEvent_];
}

void sub_20B8BEDB8(unsigned __int8 a1, double a2, double a3)
{
  v6 = sub_20B9B2558();
  v7 = sub_20B9B28BC(a1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 48))(v6, v7, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  v10 = sub_20B9B2558();
  v11 = sub_20B9B28BC(a1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v3 + 40);
    v13 = swift_getObjectType();
    (*(v12 + 48))(v10, v11, v13, v12);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  sub_20B6FFF90(&v27, 6);
  swift_endAccess();
  sub_20B8C22B4(0, a3);
  v14 = [v6 string];
  v15 = sub_20C13C954();
  v17 = v16;

  MEMORY[0x20F2F4230](10, 0xE100000000000000);

  v19 = v15;
  v18 = v17;
  if (v7)
  {
    v20 = [v7 string];
    v21 = sub_20C13C954();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = type metadata accessor for AccessibilitySessionOverlayPresenter();
  v26 = v18;

  MEMORY[0x20F2F4230](v21, v23);

  v25 = sub_20C13C914();

  [v24 accessibilityAnnounceEvent_];
}

uint64_t sub_20B8BF028(double a1, double a2, double a3)
{
  v4 = v3;
  v6 = sub_20C13C4B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v40 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13C4F4();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13C514();
  v38 = *(v12 - 8);
  v39 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  v18 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v19 = sub_20B8D7BF8(1, v18);

  if ((v19 & 1) == 0)
  {
    return sub_20BB78934();
  }

  v20 = sub_20B9B2370();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    (*(v21 + 48))(v20, 0, ObjectType, v21);
    swift_unknownObjectRelease();
  }

  v36 = v7;
  v37 = v6;
  v23 = sub_20B9B2370();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = *(v4 + 40);
    v25 = swift_getObjectType();
    (*(v24 + 48))(v23, 0, v25, v24);
    swift_unknownObjectRelease();
  }

  v35 = v23;
  swift_beginAccess();
  sub_20B6FFF90(&v44, 1);
  swift_endAccess();
  sub_20B8C22B4(0, a3);
  sub_20BB78934();
  v34 = v20;
  v26 = [v20 string];
  if (!v26)
  {
    sub_20C13C954();
    v26 = sub_20C13C914();
  }

  [type metadata accessor for AccessibilitySessionOverlayPresenter() accessibilityAnnounceEvent_];

  sub_20B5E2E18();
  v27 = sub_20C13D374();
  sub_20C13C504();
  sub_20C13C574();
  v28 = v39;
  v38 = *(v38 + 8);
  (v38)(v14, v39);
  v29 = swift_allocObject();
  *(v29 + 16) = v4;
  *(v29 + 24) = a3;
  aBlock[4] = sub_20B8C3948;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_41;
  v30 = _Block_copy(aBlock);

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280);
  v31 = v40;
  v32 = v37;
  sub_20C13DA94();
  MEMORY[0x20F2F4A80](v17, v11, v31, v30);
  _Block_release(v30);

  (*(v36 + 8))(v31, v32);
  (*(v41 + 8))(v11, v42);
  return (v38)(v17, v28);
}

uint64_t sub_20B8BF59C(uint64_t a1, double a2)
{
  v25 = sub_20BE8C680(&unk_28228D6B0);
  v4 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_currentElements;
  swift_beginAccess();
  v5 = asc_282287E80[0];
  v6 = *(a1 + v4);

  v7 = sub_20B8D7BF8(v5, v6);

  if (v7)
  {
    sub_20B6FFF90(&v24, v5);
  }

  v8 = asc_282287E80[1];
  v9 = *(a1 + v4);

  v10 = sub_20B8D7BF8(v8, v9);

  if (v10)
  {
    sub_20B6FFF90(&v24, v8);
  }

  v11 = asc_282287E80[2];
  v12 = *(a1 + v4);

  v13 = sub_20B8D7BF8(v11, v12);

  if (v13)
  {
    sub_20B6FFF90(&v24, v11);
  }

  v14 = asc_282287E80[3];
  v15 = *(a1 + v4);

  v16 = sub_20B8D7BF8(v14, v15);

  if (v16)
  {
    sub_20B6FFF90(&v24, v14);
  }

  v17 = asc_282287E80[4];
  v18 = *(a1 + v4);

  v19 = sub_20B8D7BF8(v17, v18);

  if (v19)
  {
    sub_20B6FFF90(&v24, v17);
  }

  v20 = asc_282287E80[5];
  v21 = *(a1 + v4);

  v22 = sub_20B8D7BF8(v20, v21);

  if (v22)
  {
    sub_20B6FFF90(&v24, v20);
  }

  *(a1 + v4) = v25;

  sub_20B8C22B4(0, a2);
}

uint64_t sub_20B8BF7C0(double a1)
{
  v2 = sub_20C133CE4();
  v4 = v3;
  v6 = v5 & 1;
  sub_20B8C38A0();
  sub_20B8C38F4();
  if (sub_20C133C14())
  {
    sub_20B583F4C(v2, v4, v6);
  }

  else
  {
    v7 = sub_20C133C14();
    result = sub_20B583F4C(v2, v4, v6);
    if ((v7 & 1) == 0)
    {
      return result;
    }
  }

  return sub_20B8BF9C8(a1);
}

uint64_t sub_20B8BF8BC(double a1)
{
  v2 = sub_20C134024();
  v5 = v4 >> 5;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      swift_beginAccess();
      v6 = 9;
    }

    else
    {
      swift_beginAccess();
      v6 = 11;
    }
  }

  else if (v5 >= 2)
  {
    sub_20B8C3888(v2, v3, v4);
    swift_beginAccess();
    v6 = 7;
  }

  else
  {
    swift_beginAccess();
    v6 = 8;
  }

  sub_20B6C9884(v6);
  swift_endAccess();
  return sub_20B8BF9C8(a1);
}

uint64_t sub_20B8BF9C8(double a1)
{
  v2 = v1;
  v4 = sub_20BE8F7E4(*(*(v1 + 72) + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_state) == 1, (*(*(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_timerPresenter) + 72) & 1) == 0);
  v5 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_currentElements;
  swift_beginAccess();
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v10 = *(&unk_282287E60 + v6 + 32);
    v11 = *(v2 + v5);

    v12 = sub_20B8D7BF8(v10, v11);

    if (v12)
    {
      v18 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_20BB5D99C(0, *(v7 + 16) + 1, 1);
        v7 = v18;
      }

      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_20BB5D99C((v8 > 1), v9 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v9 + 1;
      *(v7 + v9 + 32) = v10;
    }

    ++v6;
  }

  while (v6 != 6);
  v18 = v4;
  v13 = *(v7 + 16);
  if (v13)
  {
    v14 = (v7 + 32);
    do
    {
      v15 = *v14++;
      sub_20B6FFF90(&v17, v15);
      --v13;
    }

    while (v13);
  }

  *(v2 + v5) = v18;

  return sub_20B8C22B4(0, a1);
}

uint64_t sub_20B8BFB80()
{
  v1 = v0;
  v2 = sub_20BE8F7E4(*(*(v0 + 72) + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_state) == 1, (*(*(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_timerPresenter) + 72) & 1) == 0);
  v3 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_currentElements;
  swift_beginAccess();
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v8 = *(&unk_282287E60 + v4 + 32);
    v9 = *(v1 + v3);

    v10 = sub_20B8D7BF8(v8, v9);

    if (v10)
    {
      v19 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_20BB5D99C(0, *(v5 + 16) + 1, 1);
        v5 = v19;
      }

      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_20BB5D99C((v6 > 1), v7 + 1, 1);
        v5 = v19;
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + v7 + 32) = v8;
    }

    ++v4;
  }

  while (v4 != 6);
  v19 = v2;
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = (v5 + 32);
    do
    {
      v13 = *v12++;
      sub_20B6FFF90(&v18, v13);
      --v11;
    }

    while (v11);
  }

  v14 = v19;

  v16 = sub_20B604E74(v15, v14);

  *(v1 + v3) = v16;

  return sub_20B8C22B4(1, 0.0);
}

uint64_t sub_20B8BFD54(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C133D84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v66 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v58 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v14 = sub_20C134B64();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v58 - v19;
  v73 = a1;
  sub_20C133D34();
  v69 = sub_20C134B54();
  v70 = v21;
  v68 = v22;
  v23 = *(v15 + 8);
  v24 = v20;
  v25 = v4;
  v23(v24, v14);
  v26 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_activityRings;
  swift_beginAccess();
  v71 = v2;
  v72 = v26;
  sub_20B52F9E8(v2 + v26, v13, &unk_27C765120);
  v27 = *(v5 + 48);
  if (v27(v13, 1, v25))
  {
    sub_20B520158(v13, &unk_27C765120);
    sub_20B583F4C(v69, v70, v68 & 1);
    v28 = *(v5 + 16);
    v30 = v72;
    v29 = v73;
LABEL_7:
    v45 = v71;
    goto LABEL_8;
  }

  v62 = v27;
  v31 = v66;
  v64 = *(v5 + 16);
  v61 = v5 + 16;
  v64(v66, v13, v25);
  sub_20B520158(v13, &unk_27C765120);
  sub_20C133D34();
  v63 = v5;
  v32 = *(v5 + 8);
  v60 = v5 + 8;
  v59 = v32;
  v32(v31, v25);
  v33 = sub_20C134B54();
  v34 = v25;
  v36 = v35;
  v38 = v37;
  v23(v17, v14);
  v77 = v69;
  v78 = v70;
  v79 = v68 & 1;
  v74 = v33;
  v75 = v36;
  v76 = v38 & 1;
  sub_20B64BD18();
  sub_20B64BD6C();
  v39 = sub_20C133BF4();
  sub_20B584078(v33, v36, v38 & 1);
  sub_20B583F4C(v77, v78, v79);
  if ((v39 & 1) == 0)
  {
    v25 = v34;
    v30 = v72;
    v29 = v73;
    v5 = v63;
    v28 = v64;
    goto LABEL_7;
  }

  v40 = sub_20C133D24();
  v42 = v41;
  v44 = v43;
  v45 = v71;
  v30 = v72;
  v46 = v65;
  sub_20B52F9E8(v71 + v72, v65, &unk_27C765120);
  if (v62(v46, 1, v34))
  {
    sub_20B520158(v46, &unk_27C765120);
    sub_20B583F4C(v40, v42, v44 & 1);
    v25 = v34;
    v29 = v73;
    v5 = v63;
    v28 = v64;
LABEL_8:
    v47 = v67;
    v28(v67, v29, v25);
    (*(v5 + 56))(v47, 0, 1, v25);
    swift_beginAccess();
    sub_20B5DF2D4(v47, v45 + v30, &unk_27C765120);
    swift_endAccess();
    sub_20B8C0364();
    sub_20B8C2118();
    return sub_20B8C22B4(0, 0.0);
  }

  v49 = v66;
  v64(v66, v46, v34);
  sub_20B520158(v46, &unk_27C765120);
  v50 = v34;
  v51 = sub_20C133D24();
  v53 = v52;
  v55 = v54;
  v45 = v71;
  v59(v49, v50);
  v55 &= 1u;
  v77 = v40;
  v78 = v42;
  v79 = v44 & 1;
  v74 = v51;
  v75 = v53;
  v76 = v55;
  sub_20B815F98();
  sub_20B815FEC();
  v56 = sub_20C133BF4();
  v57 = v53;
  v30 = v72;
  sub_20B584078(v51, v57, v55);
  result = sub_20B583F4C(v77, v78, v79);
  v5 = v63;
  v28 = v64;
  v25 = v50;
  v29 = v73;
  if ((v56 & 1) == 0)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_20B8C0364()
{
  v1 = v0;
  v171 = sub_20C134B64();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v169 = &v169 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_20C133D84();
  v177 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v176 = &v169 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_20C136484();
  v192 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v197 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v5 - 8);
  v175 = &v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  *&v195 = &v169 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  MEMORY[0x28223BE20](v9 - 8);
  v190 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v194 = &v169 - v12;
  v185 = type metadata accessor for SessionDistanceMetricPresenter.State(0);
  MEMORY[0x28223BE20](v185);
  v186 = &v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  MEMORY[0x28223BE20](v14 - 8);
  v174 = &v169 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v205 = &v169 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  MEMORY[0x28223BE20](v18 - 8);
  v206 = &v169 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v20 - 8);
  v172 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v204 = &v169 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v24 - 8);
  v187 = &v169 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v196 = &v169 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767270);
  MEMORY[0x28223BE20](v28 - 8);
  v184 = &v169 - v29;
  v201 = sub_20C1369A4();
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v203 = &v169 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768800);
  MEMORY[0x28223BE20](v31 - 8);
  v181 = &v169 - v32;
  v199 = sub_20C1366D4();
  v198 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v202 = &v169 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C135274();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v169 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  MEMORY[0x28223BE20](v38 - 8);
  v180 = &v169 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v178 = &v169 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v169 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762D00);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v169 - v46;
  v48 = sub_20C136544();
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v51 = &v169 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_displayPreferences;
  swift_beginAccess();
  v207 = v1;
  v179 = v52;
  sub_20B52F9E8(v1 + v52, v44, &unk_27C765100);
  v53 = *(v35 + 48);
  v54 = v53(v44, 1, v34);
  v191 = v51;
  v183 = v35;
  v182 = v37;
  if (v54)
  {
    v55 = v34;
    sub_20B520158(v44, &unk_27C765100);
    (*(v49 + 56))(v47, 1, 1, v48);
    sub_20C1364F4();
    if ((*(v49 + 48))(v47, 1, v48) != 1)
    {
      sub_20B520158(v47, &qword_27C762D00);
    }
  }

  else
  {
    (*(v35 + 16))(v37, v44, v34);
    sub_20B520158(v44, &unk_27C765100);
    sub_20C135244();
    v56 = v37;
    v55 = v34;
    (*(v35 + 8))(v56, v34);
    (*(v49 + 56))(v47, 0, 1, v48);
    (*(v49 + 32))(v51, v47, v48);
  }

  v188 = v49;
  v189 = v48;
  v57 = v179;
  v58 = v178;
  sub_20B52F9E8(v207 + v179, v178, &unk_27C765100);
  v59 = v55;
  v60 = v53;
  if (v53(v58, 1, v55))
  {
    sub_20B520158(v58, &unk_27C765100);
    v61 = v198;
    v62 = v181;
    v63 = v199;
    (*(v198 + 56))(v181, 1, 1, v199);
    sub_20C136684();
    v64 = (*(v61 + 48))(v62, 1, v63);
    v65 = v186;
    v66 = v183;
    v67 = v182;
    if (v64 != 1)
    {
      sub_20B520158(v62, &unk_27C768800);
    }
  }

  else
  {
    v66 = v183;
    v67 = v182;
    (*(v183 + 16))(v182, v58, v59);
    sub_20B520158(v58, &unk_27C765100);
    v68 = v181;
    sub_20C135254();
    (*(v66 + 8))(v67, v59);
    v69 = v198;
    v70 = v199;
    (*(v198 + 56))(v68, 0, 1, v199);
    (*(v69 + 32))(v202, v68, v70);
    v65 = v186;
  }

  v71 = v180;
  sub_20B52F9E8(v207 + v57, v180, &unk_27C765100);
  v72 = v60(v71, 1, v59);
  v73 = v196;
  v74 = v184;
  if (v72)
  {
    sub_20B520158(v71, &unk_27C765100);
    v75 = v200;
    v76 = v201;
    (*(v200 + 56))(v74, 1, 1, v201);
    sub_20C136954();
    v77 = (*(v75 + 48))(v74, 1, v76);
    v78 = v195;
    v79 = v194;
    if (v77 != 1)
    {
      sub_20B520158(v74, &unk_27C767270);
    }
  }

  else
  {
    (*(v66 + 16))(v67, v71, v59);
    sub_20B520158(v71, &unk_27C765100);
    sub_20C135264();
    (*(v66 + 8))(v67, v59);
    v80 = v200;
    v81 = v201;
    (*(v200 + 56))(v74, 0, 1, v201);
    (*(v80 + 32))(v203, v74, v81);
    v78 = v195;
    v79 = v194;
  }

  v82 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_workoutDeviceConnection;
  v83 = v207;
  swift_beginAccess();
  sub_20B52F9E8(v83 + v82, v73, &unk_27C765CB0);
  v84 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_activityRings;
  swift_beginAccess();
  sub_20B52F9E8(v83 + v84, v204, &unk_27C765120);
  LODWORD(v184) = sub_20C1371B4();
  LODWORD(v186) = sub_20C1371F4();
  v85 = *(v83[9] + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_state);
  v86 = sub_20C1371D4();
  v87 = v83[11];
  v88 = OBJC_IVAR____TtC9SeymourUI23SessionCadencePresenter_lastReceivedCadence;
  swift_beginAccess();
  sub_20B52F9E8(v87 + v88, v206, &unk_27C7687F0);
  v89 = v83[12];
  v90 = OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_state;
  swift_beginAccess();
  sub_20B790FC0(v89 + v90, v65);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v92 = sub_20C134514();
    v93 = *(v92 - 8);
    v94 = v205;
    (*(v93 + 32))(v205, v65, v92);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767280);
    swift_unknownObjectRelease();
    v92 = sub_20C134514();
    v93 = *(v92 - 8);
    v94 = v205;
    (*(v93 + 32))(v205, v65, v92);
LABEL_17:
    (*(v93 + 56))(v94, 0, 1, v92);
    goto LABEL_19;
  }

  v95 = sub_20C134514();
  (*(*(v95 - 8) + 56))(v205, 1, 1, v95);
LABEL_19:
  v96 = v83[13];
  v97 = OBJC_IVAR____TtC9SeymourUI25SessionHeartRatePresenter_lastReceivedMetric;
  swift_beginAccess();
  sub_20B52F9E8(v96 + v97, v79, &unk_27C7650E0);
  v98 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_heartRateDeviceConnection;
  swift_beginAccess();
  sub_20B52F9E8(v83 + v98, v78, &unk_27C767260);
  v213 = sub_20B7163FC(&unk_282287620);
  v99 = *(v86 + 16);
  if (v99)
  {
    v210 = MEMORY[0x277D84F90];
    sub_20BB5D99C(0, v99, 0);
    v100 = 32;
    v101 = v210;
    do
    {
      v102 = *(v86 + v100);
      v210 = v101;
      v104 = *(v101 + 16);
      v103 = *(v101 + 24);
      if (v104 >= v103 >> 1)
      {
        sub_20BB5D99C((v103 > 1), v104 + 1, 1);
        v101 = v210;
      }

      *(v101 + 16) = v104 + 1;
      *(v101 + v104 + 32) = 0x205040C03uLL >> (8 * v102);
      ++v100;
      --v99;
    }

    while (v99);

    v78 = v195;
    v79 = v194;
    v73 = v196;
  }

  else
  {

    v101 = MEMORY[0x277D84F90];
  }

  v105 = v193;
  if (qword_27C760C50 != -1)
  {
    swift_once();
  }

  v106 = off_27C76FE10;

  v107 = sub_20B7163FC(v101);

  if (*(v107 + 16) <= v106[2] >> 3)
  {
    v210 = v106;
    sub_20B6CE748(v107);

    v108 = v210;
  }

  else
  {
    v108 = sub_20B6CFECC(v107, v106);
  }

  sub_20B6CE748(v108);

  v109 = v187;
  sub_20B52F9E8(v73, v187, &unk_27C765CB0);
  v110 = v192;
  if ((*(v192 + 48))(v109, 1, v105) == 1)
  {

    sub_20B520158(v109, &unk_27C765CB0);
    v111 = MEMORY[0x277D84FA0];
    v112 = v189;
    v113 = v188;
  }

  else
  {
    (*(v110 + 32))(v197, v109, v105);
    v114 = sub_20C1366C4();
    v116 = v115;
    v210 = v114;
    v211 = v115;
    v118 = v117 & 1;
    v212 = v117 & 1;
    LOBYTE(v208) = 0;
    sub_20B64B480();
    sub_20B64B4D4();
    v119 = sub_20C133C04();
    sub_20B583F4C(v114, v116, v118);
    if (v119)
    {

      v213 = MEMORY[0x277D84FA0];
    }

    v120 = sub_20C136994();
    v122 = v121;
    v210 = v120;
    v211 = v121;
    v124 = v123 & 1;
    v212 = v123 & 1;
    LOBYTE(v208) = 1;
    sub_20B64B57C();
    sub_20B64B5D0();
    v125 = sub_20C133C04();
    sub_20B583F4C(v120, v122, v124);
    if (v125)
    {
      sub_20B6C9884(12);
    }

    v126 = sub_20C136534();
    v128 = v127;
    v210 = v126;
    v211 = v127;
    v130 = v129 & 1;
    v212 = v129 & 1;
    LOBYTE(v208) = 0;
    sub_20B64B3D8();
    sub_20B64B42C();
    v131 = sub_20C133C04();
    sub_20B583F4C(v126, v128, v130);
    if (v131)
    {
      sub_20B6C9884(1);
    }

    v132 = v173;
    v133 = v172;
    if (v85 == 3)
    {
      sub_20B6C9884(1);
    }

    v134 = v190;
    if ((v184 & 1) == 0)
    {
      sub_20B6C9884(0);
    }

    if ((v186 & 1) == 0)
    {
      sub_20B6C9884(1);
    }

    sub_20B52F9E8(v204, v133, &unk_27C765120);
    v135 = v177;
    if ((*(v177 + 48))(v133, 1, v132) == 1)
    {
      sub_20B520158(v133, &unk_27C765120);
      sub_20B6C9884(0);
    }

    else
    {
      (*(v135 + 32))(v176, v133, v132);
      if ((sub_20B8B5FD0() & 1) == 0)
      {
        sub_20B6C9884(0);
      }

      v136 = v169;
      sub_20C133D34();
      v137 = sub_20C134B54();
      v139 = v138;
      v141 = v140;
      (*(v170 + 8))(v136, v171);
      v210 = v137;
      v211 = v139;
      v212 = v141 & 1;
      v195 = xmmword_20C152300;
      v208 = xmmword_20C152300;
      v209 = 1;
      sub_20B64BD18();
      sub_20B64BD6C();
      v142 = sub_20C133BF4();
      sub_20B583F4C(v137, v139, v141 & 1);
      v134 = v190;
      if ((v142 & 1) != 0 || (v143 = sub_20C136424(), v145 != -1) && (v210 = v143, v211 = v144, v212 = v145, v208 = v195, v209 = 1, v146 = sub_20C133BF4(), sub_20B583F4C(v210, v211, v212), (v146)) && *(v213 + 16))
      {
        sub_20B6C9884(byte_28228D5E0);
        sub_20B6C9884(byte_28228D5E1);
        (*(v177 + 8))(v176, v132);
      }

      else
      {
        (*(v177 + 8))(v176, v132);
      }

      v73 = v196;
    }

    v147 = sub_20C0949C8();
    v148 = v175;
    sub_20B52F9E8(v78, v175, &unk_27C767260);
    v149 = sub_20C1368F4();
    v150 = *(v149 - 8);
    if ((*(v150 + 48))(v148, 1, v149) == 1)
    {
      sub_20B520158(v148, &unk_27C767260);
      v151 = MEMORY[0x277D84FA0];
    }

    else
    {
      v152 = sub_20C04CE54();
      (*(v150 + 8))(v148, v149);
      v151 = v152;
    }

    v153 = sub_20B722BEC(v151, v147);
    v154 = v174;
    sub_20B52F9E8(v205, v174, &unk_27C765050);
    v155 = sub_20C134514();
    v156 = *(v155 - 8);
    if ((*(v156 + 48))(v154, 1, v155) == 1)
    {
      sub_20B520158(v154, &unk_27C765050);
    }

    else
    {
      v157 = v73;
      v158 = v78;
      v159 = v79;
      v160 = sub_20C1344E4();
      (*(v156 + 8))(v154, v155);
      BYTE4(v210) = BYTE4(v160) & 1;
      LODWORD(v210) = v160;
      LODWORD(v208) = 0;
      BYTE4(v208) = 1;
      sub_20B791024();
      sub_20B791078();
      if (sub_20C133BF4())
      {
        v210 = v153;
        sub_20B6FFF90(&v208, 3);
        v153 = v210;
      }

      v79 = v159;
      v78 = v158;
      v73 = v157;
      v134 = v190;
    }

    sub_20B52F9E8(v79, v134, &unk_27C7650E0);
    v161 = sub_20C134914();
    v162 = *(v161 - 8);
    if ((*(v162 + 48))(v134, 1, v161) == 1)
    {
      sub_20B520158(v134, &unk_27C7650E0);
    }

    else
    {
      v163 = sub_20C1348D4();
      (*(v162 + 8))(v134, v161);
      BYTE4(v210) = BYTE4(v163) & 1;
      LODWORD(v210) = v163;
      LODWORD(v208) = 0;
      BYTE4(v208) = 1;
      sub_20B64BA78();
      sub_20B64BACC();
      if (sub_20C133BF4())
      {
        v210 = v153;
        sub_20B6FFF90(&v208, byte_28228D608);
        sub_20B6FFF90(&v208, byte_28228D609);
        sub_20B6FFF90(&v208, byte_28228D60A);
        v153 = v210;
      }
    }

    v164 = v192;
    v112 = v189;
    v113 = v188;
    v165 = sub_20C133DD4();
    v166 = (*(*(v165 - 8) + 48))(v206, 1, v165);
    v167 = v193;
    if (v166 != 1)
    {
      v210 = v153;
      sub_20B6FFF90(&v208, 2);
      v153 = v210;
    }

    v111 = sub_20B604E74(v153, v213);

    (*(v164 + 8))(v197, v167);
  }

  sub_20B520158(v78, &unk_27C767260);
  sub_20B520158(v79, &unk_27C7650E0);
  sub_20B520158(v205, &unk_27C765050);
  sub_20B520158(v204, &unk_27C765120);
  sub_20B520158(v73, &unk_27C765CB0);
  (*(v200 + 8))(v203, v201);
  (*(v198 + 8))(v202, v199);
  (*(v113 + 8))(v191, v112);
  sub_20B520158(v206, &unk_27C7687F0);
  *(v83 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements) = v111;
}

uint64_t sub_20B8C2118()
{
  v1 = v0;
  v2 = sub_20BE8F7E4(*(*(v0 + 72) + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_state) == 1, (*(*(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_timerPresenter) + 72) & 1) == 0);
  v3 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_currentElements;
  swift_beginAccess();
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v8 = *(&unk_282287E60 + v4 + 32);
    v9 = *(v1 + v3);

    v10 = sub_20B8D7BF8(v8, v9);

    if (v10)
    {
      v16 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_20BB5D99C(0, *(v5 + 16) + 1, 1);
        v5 = v16;
      }

      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_20BB5D99C((v6 > 1), v7 + 1, 1);
        v5 = v16;
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + v7 + 32) = v8;
    }

    ++v4;
  }

  while (v4 != 6);
  v16 = v2;
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = (v5 + 32);
    do
    {
      v13 = *v12++;
      sub_20B6FFF90(&v15, v13);
      --v11;
    }

    while (v11);
  }

  *(v1 + v3) = v16;
}

uint64_t sub_20B8C22B4(int a1, double a2)
{
  v3 = v2;
  v68 = a1;
  v5 = sub_20C13BB84();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x28223BE20](v5);
  v71 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v70 = &v67[-v8];
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  do
  {
    v11 = *(&unk_282287E60 + v9 + 32);
    switch(v11)
    {
      case 10:

        break;
      default:
        v12 = sub_20C13DFF4();

        if ((v12 & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v76 = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_20BB5D99C(0, *(v10 + 16) + 1, 1);
            v10 = v76;
          }

          v15 = *(v10 + 16);
          v14 = *(v10 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_20BB5D99C((v14 > 1), v15 + 1, 1);
            v10 = v76;
          }

          *(v10 + 16) = v15 + 1;
          *(v10 + v15 + 32) = v11;
        }

        break;
    }

    ++v9;
  }

  while (v9 != 6);
  v16 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_currentElements;
  swift_beginAccess();
  v17 = *(v3 + v16);

  v19 = sub_20B604E74(v18, v17);

  v20 = sub_20B8C3274(v10, v19);

  if (v20)
  {

    v21 = v70;
LABEL_14:
    swift_beginAccess();
    sub_20B6C9884(10);
    goto LABEL_16;
  }

  v22 = sub_20B8C3274(byte_282287E88, v19);

  v21 = v70;
  if (v22)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  sub_20B6FFF90(&v75, 10);
LABEL_16:
  swift_endAccess();
  v23 = *(v3 + v16);

  v25 = sub_20B604E74(v24, v23);

  v26 = sub_20B7163FC(&unk_282287620);
  if (v25[2] <= *(v26 + 16) >> 3)
  {
    v74[0] = v26;
    sub_20B6CE748(v25);
    v27 = v74[0];
  }

  else
  {
    v27 = sub_20B6CFECC(v25, v26);
  }

  sub_20C13B564();

  v28 = sub_20C13BB74();
  v29 = sub_20C13D1F4();

  v30 = os_log_type_enabled(v28, v29);
  v69 = v27;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v74[0] = v32;
    *v31 = 136315138;
    sub_20B71A744();

    v33 = sub_20C13CF94();
    v35 = v34;

    v36 = sub_20B51E694(v33, v35, v74);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_20B517000, v28, v29, "Current Elements: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x20F2F6A40](v32, -1, -1);
    MEMORY[0x20F2F6A40](v31, -1, -1);

    v37 = *(v72 + 8);
    v37(v70, v73);
  }

  else
  {

    v37 = *(v72 + 8);
    v37(v21, v73);
  }

  v38 = v71;
  sub_20C13B564();

  v39 = sub_20C13BB74();
  v40 = sub_20C13D1F4();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v74[0] = v42;
    *v41 = 136315138;
    sub_20B71A744();

    v43 = sub_20C13CF94();
    v45 = v44;

    v46 = sub_20B51E694(v43, v45, v74);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_20B517000, v39, v40, "Supported Elements: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x20F2F6A40](v42, -1, -1);
    MEMORY[0x20F2F6A40](v41, -1, -1);

    v47 = v71;
  }

  else
  {

    v47 = v38;
  }

  v37(v47, v73);
  v48 = v69;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v49 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v49 + 8))(v25, v48, ObjectType, v49, a2);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v51 = *(v3 + 40);
    v52 = swift_getObjectType();
    (*(v51 + 8))(v25, v48, v52, v51, a2);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v74[0] = byte_282287E88;
  sub_20B8D936C(&unk_282287E60);
  v53 = sub_20B7163FC(v74[0]);

  v54 = sub_20B604E74(v25, v53);

  v55 = v54[2];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v57 = v68;
    if (Strong)
    {
      v58 = *(v3 + 24);
      v59 = swift_getObjectType();
      (*(v58 + 32))(1, v57 & 1, v59, v58);
      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v61 = *(v3 + 40);
      v62 = swift_getObjectType();
      (*(v61 + 32))(1, v57 & 1, v62, v61);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    if (Strong)
    {
      v63 = *(v3 + 24);
      v64 = swift_getObjectType();
      (*(v63 + 40))(0, v64, v63);
      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v65 = *(v3 + 40);
      v66 = swift_getObjectType();
      (*(v65 + 40))(0, v66, v65);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20B8C2BF0()
{
  sub_20B583E6C(v0 + 16);
  sub_20B583E6C(v0 + 32);

  swift_unknownObjectRelease();

  sub_20B64B688(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_sessionOrigin);

  sub_20B815F44(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_stringBuilder);
  sub_20B815F44(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_externalOverlayStringBuilder);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_timerProvider);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_popupEventDismissalTimer, &unk_27C765CA0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_metricMinimizerTimer, &unk_27C765CA0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_displayPreferences, &unk_27C765100);
  v1 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_activityTypeBehavior;
  v2 = sub_20C137254();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_activityRings, &unk_27C765120);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_heartRateDeviceConnection, &unk_27C767260);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_workoutDeviceConnection, &unk_27C765CB0);

  return v0;
}

uint64_t sub_20B8C2E28()
{
  sub_20B8C2BF0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionOverlayPresenter()
{
  result = qword_27C767230;
  if (!qword_27C767230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8C2ED4()
{
  sub_20C13A484();
  if (v0 <= 0x3F)
  {
    sub_20B8C3180(319, &unk_27C767240, MEMORY[0x277D516E8]);
    if (v1 <= 0x3F)
    {
      sub_20C137254();
      if (v2 <= 0x3F)
      {
        sub_20B8C3180(319, &qword_27C766DC8, MEMORY[0x277D50400]);
        if (v3 <= 0x3F)
        {
          sub_20B8C3180(319, &unk_27C767250, MEMORY[0x277D52DE8]);
          if (v4 <= 0x3F)
          {
            sub_20B8C3180(319, &qword_27C76B320, MEMORY[0x277D529D8]);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_20B8C3180(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_20B8C321C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessibilitySessionOverlayPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B8C3274(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v18 = *(a1 + 16);
  if (!v18)
  {
    return 1;
  }

  v3 = 0;
  v17 = a1 + 32;
  v19 = a2 + 56;
  while (1)
  {
    if (*(a2 + 16))
    {
      v4 = *(v17 + v3);
      sub_20C13E164();
      sub_20C13CA64();

      v5 = sub_20C13E1B4();
      v6 = -1 << *(a2 + 32);
      v7 = v5 & ~v6;
      if ((*(v19 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
      {
        break;
      }
    }

LABEL_4:
    if (++v3 == v18)
    {
      return 1;
    }
  }

  v8 = ~v6;
  while (2)
  {
    v9 = 0xED000073676E6952;
    v10 = 0x7974697669746361;
    switch(*(*(a2 + 48) + v7))
    {
      case 1:
        v9 = 0xE700000000000000;
        v10 = 0x7261426E727562;
        break;
      case 2:
        v9 = 0xE700000000000000;
        v11 = 0x636E65646163;
        goto LABEL_22;
      case 3:
        v9 = 0xE800000000000000;
        v10 = 0x65636E6174736964;
        break;
      case 4:
        v9 = 0xE600000000000000;
        v10 = 0x796772656E65;
        break;
      case 5:
        v10 = 0x7461527472616568;
        v9 = 0xE900000000000065;
        break;
      case 6:
        v9 = 0xE900000000000074;
        v10 = 0x6867696C68676968;
        break;
      case 7:
        v9 = 0xE900000000000079;
        v10 = 0x7469736E65746E69;
        break;
      case 8:
        v9 = 0xE700000000000000;
        v11 = 0x6E696C636E69;
LABEL_22:
        v10 = v11 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
        break;
      case 9:
        v9 = 0xE300000000000000;
        v10 = 7172210;
        break;
      case 0xA:
        v9 = 0xE900000000000072;
        v10 = 0x6F74617261706573;
        break;
      case 0xB:
        v10 = 7172211;
        v9 = 0xE300000000000000;
        break;
      case 0xC:
        v9 = 0xE800000000000000;
        v10 = 0x73736572676F7270;
        break;
      case 0xD:
        v9 = 0xE500000000000000;
        v10 = 0x72656D6974;
        break;
      default:
        break;
    }

    v12 = 0x7974697669746361;
    v13 = 0xED000073676E6952;
    switch(v4)
    {
      case 1:
        v13 = 0xE700000000000000;
        if (v10 == 0x7261426E727562)
        {
          goto LABEL_47;
        }

        goto LABEL_48;
      case 2:
        v13 = 0xE700000000000000;
        v14 = 0x636E65646163;
        goto LABEL_52;
      case 3:
        v13 = 0xE800000000000000;
        if (v10 != 0x65636E6174736964)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 4:
        v13 = 0xE600000000000000;
        if (v10 != 0x796772656E65)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 5:
        v13 = 0xE900000000000065;
        if (v10 != 0x7461527472616568)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 6:
        v13 = 0xE900000000000074;
        if (v10 != 0x6867696C68676968)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 7:
        v13 = 0xE900000000000079;
        if (v10 != 0x7469736E65746E69)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 8:
        v13 = 0xE700000000000000;
        v14 = 0x6E696C636E69;
LABEL_52:
        if (v10 != (v14 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 9:
        v13 = 0xE300000000000000;
        if (v10 != 7172210)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 10:
        v13 = 0xE900000000000072;
        v12 = 0x6F74617261706573;
        goto LABEL_46;
      case 11:
        v13 = 0xE300000000000000;
        if (v10 != 7172211)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 12:
        v13 = 0xE800000000000000;
        if (v10 != 0x73736572676F7270)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 13:
        v13 = 0xE500000000000000;
        if (v10 != 0x72656D6974)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      default:
LABEL_46:
        if (v10 != v12)
        {
          goto LABEL_48;
        }

LABEL_47:
        if (v9 != v13)
        {
LABEL_48:
          v15 = sub_20C13DFF4();

          if (v15)
          {
            return 0;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v19 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_4;
          }

          continue;
        }

        return 0;
    }
  }
}

uint64_t sub_20B8C3888(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xE0) == 0x40)
  {
  }

  return result;
}

unint64_t sub_20B8C38A0()
{
  result = qword_27C7672F8;
  if (!qword_27C7672F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7672F8);
  }

  return result;
}

unint64_t sub_20B8C38F4()
{
  result = qword_27C767300;
  if (!qword_27C767300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767300);
  }

  return result;
}

uint64_t sub_20B8C3A08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8C3A78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionHeartUIState();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8C3AF8()
{
  v1 = sub_20C136594();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = v42 - v8;
  v43 = v9;
  MEMORY[0x28223BE20](v10);
  v46 = v42 - v11;
  v12 = sub_20C134314();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767458);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v42 - v17;
  sub_20C135954();
  (*(v13 + 56))(v18, 0, 1, v12);
  v19 = OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_program;
  swift_beginAccess();
  v47 = v0;
  sub_20B8C7218(v18, v0 + v19);
  swift_endAccess();
  sub_20C135954();
  v20 = sub_20C1342C4();
  (*(v13 + 8))(v15, v12);
  v21 = *(v20 + 16);
  if (v21)
  {
    v50 = MEMORY[0x277D84F90];
    sub_20BB5D604(0, v21, 0);
    v22 = v50;
    v42[1] = v20;
    v23 = v20 + 40;
    do
    {

      sub_20C136554();
      v50 = v22;
      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_20BB5D604(v24 > 1, v25 + 1, 1);
        v22 = v50;
      }

      *(v22 + 16) = v25 + 1;
      (*(v2 + 32))(v22 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v25, v4, v1);
      v23 += 16;
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v26 = v49;
  v27 = v47;
  v28 = v45;
  sub_20C02BC6C(v22, v45);

  v29 = swift_allocObject();
  *(v29 + 16) = sub_20B8C7350;
  *(v29 + 24) = v27;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_20B849B38;
  *(v30 + 24) = v29;
  v31 = v48;
  v32 = v44;
  (*(v48 + 16))(v44, v28, v26);
  v33 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v34 = (v43 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  (*(v31 + 32))(v35 + v33, v32, v26);
  v36 = (v35 + v34);
  *v36 = sub_20B66A8B4;
  v36[1] = v30;

  v37 = v46;
  sub_20C137C94();
  v38 = *(v31 + 8);
  v38(v28, v26);
  v39 = sub_20C137CB4();
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  v39(sub_20B5DF6DC, v40);

  return (v38)(v37, v26);
}

uint64_t sub_20B8C40B4(int a1)
{
  v2 = v1;
  LODWORD(v52) = a1;
  v3 = sub_20C13BB84();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644D0);
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v5);
  v53 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x28223BE20](v9);
  v54 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767458);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v47 - v12;
  v14 = sub_20C134314();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  v21 = OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_program;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v21, v13, &qword_27C767458);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_20B520158(v13, &qword_27C767458);
    v22 = v49;
    sub_20C13B534();
    v23 = sub_20C13BB74();
    v24 = sub_20C13D1D4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20B517000, v23, v24, "Program not found; not initializing row", v25, 2u);
      MEMORY[0x20F2F6A40](v25, -1, -1);
    }

    return (*(v50 + 8))(v22, v51);
  }

  else
  {
    v27 = *(v15 + 32);
    v51 = v6;
    v48 = v20;
    v27(v20, v13, v14);
    v28 = v27;
    v29 = sub_20C02A560();
    sub_20B8CAB64(v29, v59);

    v30 = swift_allocObject();
    swift_weakInit();
    (*(v15 + 16))(v17, v20, v14);
    v31 = (*(v15 + 80) + 25) & ~*(v15 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = v52;
    v28(v32 + v31, v17, v14);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_20B8C7164;
    *(v33 + 24) = v32;
    v35 = v55;
    v34 = v56;
    v36 = *(v55 + 16);
    v37 = v53;
    v52 = v14;
    v38 = v59;
    v36(v53, v59, v56);
    v39 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v40 = (v51 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    (*(v35 + 32))(v41 + v39, v37, v34);
    v42 = (v41 + v40);
    *v42 = sub_20B8C71E8;
    v42[1] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
    v43 = v54;
    sub_20C137C94();
    (*(v35 + 8))(v38, v34);
    v44 = v58;
    v45 = sub_20C137CB4();
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    v45(sub_20B52347C, v46);

    (*(v57 + 8))(v43, v44);
    return (*(v15 + 8))(v48, v52);
  }
}

uint64_t sub_20B8C4734@<X0>(uint64_t *a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v9 = result;
  if (result)
  {
    sub_20B8C47D0(a2, a3, v7);
  }

  *a4 = v9 == 0;
  return result;
}

uint64_t sub_20B8C47D0(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = a1;
  v6 = sub_20C13C554();
  v49 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_lazyLockupFetcher);

  v10 = sub_20C030E24(v9, a3, v4);

  *&v58 = 0;
  *(&v58 + 1) = 0xE000000000000000;
  sub_20C13DC94();

  *&v58 = 0x5F6D6172676F7270;
  *(&v58 + 1) = 0xE800000000000000;
  v11 = sub_20C134294();
  MEMORY[0x20F2F4230](v11);

  MEMORY[0x20F2F4230](0x74756F6B726F775FLL, 0xED00007473696C5FLL);
  v12 = v58;
  if (*(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_platform) > 1u)
  {
    if (*(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_platform) != 3)
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_platform))
  {
    v50 = 0uLL;
    LOBYTE(v51) = 1;
    *(&v51 + 1) = 0;
    *&v52 = 0;
    WORD4(v52) = 128;
    v53 = 0uLL;
    v54 = v58;
    v55 = 0uLL;
    LOBYTE(v56) = 0;
    *(&v56 + 1) = v10;
    *v57 = MEMORY[0x277D84F90];
    memset(&v57[8], 0, 40);
    *&v57[48] = 2;
    nullsub_1(&v50);
    v13 = v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row;
    v14 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 144);
    v66 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 128);
    v67 = v14;
    v68 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 160);
    v15 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 80);
    v62 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 64);
    v63 = v15;
    v16 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 112);
    v64 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 96);
    v65 = v16;
    v17 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 16);
    v58 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row);
    v59 = v17;
    v18 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 48);
    v60 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 32);
    v61 = v18;
    v19 = *&v57[32];
    *(v13 + 128) = *&v57[16];
    *(v13 + 144) = v19;
    *(v13 + 160) = *&v57[48];
    v20 = v55;
    *(v13 + 64) = v54;
    *(v13 + 80) = v20;
    v21 = *v57;
    *(v13 + 96) = v56;
    *(v13 + 112) = v21;
    v22 = v51;
    *v13 = v50;
    *(v13 + 16) = v22;
    v23 = v53;
    *(v13 + 32) = v52;
    *(v13 + 48) = v23;
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_storefrontLocalizer), *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_storefrontLocalizer + 24));
  v24 = sub_20C138D34();
  v50 = 0uLL;
  LOBYTE(v51) = 1;
  *(&v51 + 1) = 0;
  *&v52 = 0;
  WORD4(v52) = 128;
  v53 = 0uLL;
  v54 = v12;
  *&v55 = v24;
  *(&v55 + 1) = v25;
  LOBYTE(v56) = 0;
  *(&v56 + 1) = v10;
  *v57 = MEMORY[0x277D84F90];
  *&v57[8] = 0;
  *&v57[16] = 0;
  *&v57[24] = v24;
  *&v57[32] = v25;
  *&v57[40] = xmmword_20C150190;
  nullsub_1(&v50);
  v26 = v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row;
  v27 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 144);
  v66 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 128);
  v67 = v27;
  v68 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 160);
  v28 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 80);
  v62 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 64);
  v63 = v28;
  v29 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 112);
  v64 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 96);
  v65 = v29;
  v30 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 16);
  v58 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row);
  v59 = v30;
  v31 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 48);
  v60 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 32);
  v61 = v31;
  v32 = *&v57[32];
  *(v26 + 128) = *&v57[16];
  *(v26 + 144) = v32;
  *(v26 + 160) = *&v57[48];
  v33 = v55;
  *(v26 + 64) = v54;
  *(v26 + 80) = v33;
  v34 = *v57;
  *(v26 + 96) = v56;
  *(v26 + 112) = v34;
  v35 = v51;
  *v26 = v50;
  *(v26 + 16) = v35;
  v36 = v53;
  *(v26 + 32) = v52;
  *(v26 + 48) = v36;

LABEL_6:
  sub_20B520158(&v58, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v38 = result;
  if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    v39 = sub_20B61DA68(v4, result);
    if (v40)
    {
      v42 = v39;
      v43 = v40;
      v44 = v41;
      sub_20B5E2E18();
      *v8 = sub_20C13D374();
      v45 = v49;
      (*(v49 + 104))(v8, *MEMORY[0x277D85200], v6);
      v46 = sub_20C13C584();
      (*(v45 + 8))(v8, v6);
      if (v46)
      {
        if ((v48 & 0x80) != 0)
        {
          sub_20C10AC08(v4, v42, v48 & 1, v38);
        }

        else
        {
          sub_20B620F9C(v42, v43, v44, v4, v48 & 1, v38);
        }

        return swift_unknownObjectRelease();
      }

      __break(1u);
LABEL_18:
      result = sub_20C13DE24();
      __break(1u);
      return result;
    }

    sub_20C0C2D50(0);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_20B8C4CF8()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_program, &qword_27C767458);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_mediaTagStringBuilder);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_storefrontLocalizer);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_subscriptionCache);

  return v0;
}

uint64_t sub_20B8C4E4C()
{
  sub_20B8C4CF8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CatalogProgramWorkoutListShelf()
{
  result = qword_27C767438;
  if (!qword_27C767438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8C4EF8()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20B8C5008();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20B8C5008()
{
  if (!qword_27C767448)
  {
    sub_20C134314();
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_27C767448);
    }
  }
}

uint64_t sub_20B8C5060()
{
  sub_20B8C9C90();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20B8C5154(uint64_t a1)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = v6;
    v34 = v9;
    sub_20C13B534();
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1F4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20B517000, v16, v17, "[CatalogProgramWorkoutListShelf] archived sessions updated; updating row", v18, 2u);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    (*(v11 + 8))(v13, v10);

    v19 = sub_20C13AEB4();
    v20 = v33;
    sub_20C02CCD0(v19, v33);

    v21 = swift_allocObject();
    *(v21 + 16) = sub_20B8C7350;
    *(v21 + 24) = v15;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_20B849B38;
    *(v22 + 24) = v21;
    v23 = v32;
    (*(v2 + 16))(v32, v20, v1);
    v24 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v25 = swift_allocObject();
    (*(v2 + 32))(v25 + v24, v23, v1);
    v26 = (v25 + ((v3 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v26 = sub_20B66A8B4;
    v26[1] = v22;

    v27 = v34;
    sub_20C137C94();
    v28 = *(v2 + 8);
    v28(v20, v1);
    v29 = sub_20C137CB4();
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    v29(sub_20B5DF6DC, v30);

    return (v28)(v27, v1);
  }

  return result;
}

uint64_t sub_20B8C5584(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_20C02C77C(a1, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20B8C7154;
  *(v14 + 24) = v2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B622D08;
  *(v15 + 24) = v14;
  (*(v5 + 16))(v7, v10, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  v18 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20B5DF3D4;
  v18[1] = v15;

  sub_20C137C94();
  v19 = *(v5 + 8);
  v19(v10, v4);
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B5DF6DC, v21);

  return (v19)(v13, v4);
}

uint64_t sub_20B8C5848(unsigned int *a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = sub_20C13BB84();
  v19 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 4);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    LOBYTE(v23) = v13;
    sub_20B8C5B7C(a3, a4, v12 | (v13 << 32), a5 & 1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    sub_20B75FBFC(a3, a4, &v20);
    if (v20 == 2)
    {
      sub_20C13B4E4();

      v15 = sub_20C13BB74();
      v16 = sub_20C13D1D4();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v23 = v18;
        *v17 = 136446210;
        *(v17 + 4) = sub_20B51E694(a3, a4, &v23);
        _os_log_impl(&dword_20B517000, v15, v16, "No download entry for identifier: %{public}s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x20F2F6A40](v18, -1, -1);
        MEMORY[0x20F2F6A40](v17, -1, -1);
      }

      (*(v19 + 8))(v11, v9);
    }

    else
    {
      v23 = v20;
      v24 = v21;
      v25[0] = v22[0];
      *(v25 + 9) = *(v22 + 9);
      if (BYTE8(v21) == 255 || (BYTE8(v21) & 1) == 0 || ((1 << v24) & 0x1DD) != 0)
      {
        if (v20 & 1) != 0 || (a5)
        {
          sub_20B75DE1C(a3, a4, &v23, 0);
        }

        else
        {
          sub_20B75D680(a3, a4, &v23);
        }
      }

      else if (v24 == 1)
      {
        sub_20B75E1A8(a3, a4, &v23, 0);
      }

      sub_20B520158(&v20, &qword_27C764BC0);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B8C5B7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v41 = a1;
  v8 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134F24();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v42 = a2;
  if ((a3 & 0x100000000) != 0)
  {
    if (a3 > 2)
    {
      if ((a3 - 4) < 2)
      {
        v19 = MEMORY[0x277D51478];
        goto LABEL_11;
      }

      if (a3 != 3)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (!a3)
      {
        v21 = *(v12 + 104);
        if (a4)
        {
          v40 = MEMORY[0x277D51480];
        }

        else
        {
          v40 = MEMORY[0x277D513C0];
        }

        v20 = *v40;
        goto LABEL_12;
      }

      if (a3 != 1)
      {
        v19 = MEMORY[0x277D51480];
        goto LABEL_11;
      }
    }

    v19 = MEMORY[0x277D51440];
    goto LABEL_11;
  }

LABEL_2:
  v19 = MEMORY[0x277D51420];
LABEL_11:
  v20 = *v19;
  v21 = *(v12 + 104);
LABEL_12:
  v21(v14, v20, v11, v16);
  (*(v12 + 32))(v18, v14, v11);
  v22 = sub_20C136664();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  (*(v12 + 16))(&v10[v8[5]], v18, v11);
  v23 = v8[6];
  v24 = sub_20C132C14();
  (*(*(v24 - 8) + 56))(&v10[v23], 1, 1, v24);
  v25 = v8[8];
  v26 = *MEMORY[0x277D52408];
  v27 = sub_20C135ED4();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v10[v25], v26, v27);
  (*(v28 + 56))(&v10[v25], 0, 1, v27);
  v29 = v8[10];
  v30 = *MEMORY[0x277D51768];
  v31 = sub_20C1352E4();
  (*(*(v31 - 8) + 104))(&v10[v29], v30, v31);
  v32 = v8[11];
  v33 = sub_20C136E94();
  (*(*(v33 - 8) + 56))(&v10[v32], 1, 1, v33);
  v34 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v35 = &v10[v8[7]];
  v36 = v42;
  *v35 = v41;
  *(v35 + 1) = v36;
  v37 = &v10[v8[9]];
  *v37 = 0;
  *(v37 + 1) = 0;
  *&v10[v8[12]] = v34;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    sub_20BFA0348(v4, v10, Strong);
    swift_unknownObjectRelease();
  }

  sub_20B8C70F4(v10, type metadata accessor for ShelfMetricAction);
  return (*(v12 + 8))(v18, v11);
}

uint64_t sub_20B8C5FC8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B8C6040@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B8C6110(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 144);
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 128);
  v13 = v3;
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 80);
  v9[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 64);
  v9[5] = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 112);
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 96);
  v11 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 16);
  v9[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row);
  v9[1] = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 48);
  v9[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 32);
  v9[3] = v7;
  result = sub_20B5EAF8C(v9);
  if (result != 1)
  {
    return *(*(&v10 + 1) + 16) - 1 != a1;
  }

  return result;
}

double sub_20B8C6198@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = sub_20C134014();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v3 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_lazyLockupFetcher) + 160);
  if (*(v11 + 16))
  {

    v12 = sub_20B65AA60(a1, a2);
    if (v13)
    {
      (*(v8 + 16))(v10, *(v11 + 56) + *(v8 + 72) * v12, v7);

      *(a3 + 24) = v7;
      *(a3 + 32) = &off_2822D8E58;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
      (*(v8 + 32))(boxed_opaque_existential_1, v10, v7);
      return result;
    }
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_20B8C62FC()
{
  v0 = sub_20C02C2CC();
  v1 = sub_20BEF69F4(v0);

  return v1;
}

uint64_t sub_20B8C6344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = sub_20C02D360(a3, a4);
  if (result)
  {

    return sub_20B8C40B4(a5 & 1 | 0xFFFFFF80);
  }

  return result;
}

uint64_t sub_20B8C63BC(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v8 = *(a1 + 4);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = v5;
  *(v6 + 36) = v8;

  return sub_20C137C94();
}

void sub_20B8C6470(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, int *), uint64_t a4, int *a5)
{
  v6 = *(a5 + 4);
  v8 = *a5;
  v9 = v6;
  a3(&v10, &v8);
  v7 = v10;
  v11 = 0;
  a1(&v10);

  sub_20B583FB8(v7, 0);
}

uint64_t sub_20B8C6514()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v2 = OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_program;
  v3 = sub_20C134314();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row;
  sub_20B5D8060(v18);
  v5 = v18[9];
  *(v4 + 128) = v18[8];
  *(v4 + 144) = v5;
  *(v4 + 160) = v19;
  v6 = v18[5];
  *(v4 + 64) = v18[4];
  *(v4 + 80) = v6;
  v7 = v18[7];
  *(v4 + 96) = v18[6];
  *(v4 + 112) = v7;
  v8 = v18[1];
  *v4 = v18[0];
  *(v4 + 16) = v8;
  v9 = v18[3];
  *(v4 + 32) = v18[2];
  *(v4 + 48) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_eventHub) = v17[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v17, v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_mediaTagStringBuilder);
  sub_20C133AA4();
  *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_platform) = v17[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v17, v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v17, v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_subscriptionCache);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_subscriptionToken) = sub_20C13A914();
  type metadata accessor for ShelfLazyLockupFetcher();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D84F90];
  *(v10 + 152) = MEMORY[0x277D84F90];

  v12 = sub_20B6B0C04(v11);
  v13 = MEMORY[0x277D84FA0];
  *(v10 + 160) = v12;
  *(v10 + 168) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0);
  sub_20C133AA4();
  sub_20C133AA4();

  *(v10 + 136) = 20;
  *(v10 + 144) = 19;
  *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_lazyLockupFetcher) = v10;
  type metadata accessor for DownloadSubscriptionCoordinator();
  swift_allocObject();
  v14 = sub_20B8CB478();
  v15 = (v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_downloadSubscriptionCoordinator);
  *v15 = v14;
  v15[1] = &off_2822B2B58;
  *(v14 + 24) = &off_2822B24D0;
  swift_unknownObjectWeakAssign();
  *(*(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_downloadSubscriptionCoordinator) + 40) = &off_2822B24B8;
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t sub_20B8C68B0(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v62 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764320);
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v2);
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v54 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v50 - v7;
  v8 = sub_20C136594();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134014();
  v50 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767450);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v50 - v15;
  v17 = sub_20C134A74();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v61 = &v50 - v22;
  v23 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B8C702C(v62, v25, type metadata accessor for ShelfItemAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_20B8C70F4(v25, type metadata accessor for ShelfItemAction);
  if (EnumCaseMultiPayload == 13)
  {
    sub_20C02C020(v60, v16);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      return sub_20B520158(v16, &qword_27C767450);
    }

    else
    {
      v28 = v61;
      sub_20B8C6FC8(v16, v61);
      sub_20B8C702C(v28, v20, MEMORY[0x277D50C70]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = v50;
        (*(v50 + 32))(v13, v20, v11);
        v30 = sub_20C133E44();
        v32 = v31;
        (*(v29 + 8))(v13, v11);
      }

      else
      {
        v34 = v51;
        v33 = v52;
        (*(v51 + 32))(v10, v20, v52);
        v30 = sub_20C136564();
        v32 = v35;
        (*(v34 + 8))(v10, v33);
      }

      v36 = v54;
      sub_20B8CA380(v30, v32, v54);
      v37 = swift_allocObject();
      swift_weakInit();
      v38 = swift_allocObject();
      *(v38 + 16) = v37;
      *(v38 + 24) = v30;
      *(v38 + 32) = v32;
      *(v38 + 40) = 0;
      v39 = swift_allocObject();
      *(v39 + 16) = sub_20B8C7094;
      *(v39 + 24) = v38;
      v41 = v56;
      v40 = v57;
      v42 = v53;
      (*(v56 + 16))(v53, v36, v57);
      v43 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v44 = swift_allocObject();
      (*(v41 + 32))(v44 + v43, v42, v40);
      v45 = (v44 + ((v3 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v45 = sub_20B8C70B8;
      v45[1] = v39;
      v46 = v55;
      sub_20C137C94();
      (*(v41 + 8))(v36, v40);
      v47 = v59;
      v48 = sub_20C137CB4();
      v49 = swift_allocObject();
      *(v49 + 16) = 0;
      *(v49 + 24) = 0;
      v48(sub_20B52347C, v49);

      (*(v58 + 8))(v46, v47);
      return sub_20B8C70F4(v61, MEMORY[0x277D50C70]);
    }
  }

  return result;
}

uint64_t sub_20B8C6FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C134A74();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8C702C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B8C70F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B8C7218(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767458);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8C7288(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B8C7358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20C13C5F4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v60 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - v9;
  v11 = sub_20C13C5A4();
  v59 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v58 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - v14;
  v16 = sub_20C1352E4();
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[9])
  {
    v55 = a2;
    v21 = v2[10];
    v22 = v2[11];
    v54 = v5;
    if (!v22)
    {
      v21 = 0;
    }

    v48 = v21;
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    v24 = *MEMORY[0x277D51758];
    v25 = *(v18 + 104);
    v53 = v20;
    v57 = v17;
    v56 = v18;
    v25(v20, v24, v17);

    v50 = sub_20C1349B4();
    v49 = v26;
    v52 = sub_20C0B8920(MEMORY[0x277D84F90]);
    sub_20C13C594();
    sub_20C13C5C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F10);
    inited = swift_initStackObject();
    v47 = v6;
    v51 = v11;
    *(inited + 32) = 1701667182;
    *(inited + 16) = xmmword_20C152DF0;
    v28 = MEMORY[0x277D837D0];
    v29 = v48;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v29;
    *(inited + 56) = v23;
    *(inited + 72) = v28;
    strcpy((inited + 80), "impressionType");
    *(inited + 95) = -18;
    *(inited + 96) = sub_20C1352D4();
    *(inited + 104) = v30;
    *(inited + 120) = v28;
    *(inited + 128) = 0x6973736572706D69;
    v31 = MEMORY[0x277D83B88];
    *(inited + 136) = 0xEF7865646E496E6FLL;
    *(inited + 144) = a1;
    *(inited + 168) = v31;
    *(inited + 176) = 0x657079546469;
    *(inited + 216) = v28;
    v32 = v50;
    *(inited + 184) = 0xE600000000000000;
    *(inited + 192) = v32;
    *(inited + 200) = v49;
    v33 = sub_20B6B1778(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F18);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v33;
    sub_20BEF5D68(v52, sub_20C0B88D4, 0, isUniquelyReferenced_nonNull_native, &v61);

    v35 = v10;
    v36 = v10;
    v37 = v54;
    (*(v6 + 16))(v60, v35, v54);
    v38 = v59;
    v39 = v51;
    (*(v59 + 16))(v58, v15, v51);
    v40 = MEMORY[0x277D84F90];
    sub_20C0B8920(MEMORY[0x277D84F90]);
    sub_20C0B8920(v40);
    v41 = v55;
    sub_20C13C604();
    (*(v47 + 8))(v36, v37);
    (*(v38 + 8))(v15, v39);
    (*(v56 + 8))(v53, v57);
    v42 = sub_20C13C634();
    return (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  }

  else
  {
    v44 = sub_20C13C634();
    v45 = *(*(v44 - 8) + 56);

    return v45(a2, 1, 1, v44);
  }
}

uint64_t sub_20B8C7964()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v42 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v41 = (&v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_20C138204();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B52F9E8(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_playlist, v6, &qword_27C7643F0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_20B520158(v6, &qword_27C7643F0);
  }

  v40 = v2;
  (*(v8 + 32))(v10, v6, v7);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_20C1381D4();
  *(v12 + 24) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_20C14F980;
  *(v14 + 32) = v12 | 0x5000000000000005;
  v46 = 0uLL;
  LOBYTE(v47) = 1;
  *(&v47 + 1) = *v45;
  DWORD1(v47) = *&v45[3];
  *(&v47 + 1) = 0;
  *&v48 = 0;
  WORD4(v48) = 128;
  *(&v48 + 10) = *&v43[7];
  HIWORD(v48) = v44;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  LOBYTE(v52) = 0;
  *(&v52 + 1) = *v43;
  DWORD1(v52) = *&v43[3];
  *(&v52 + 1) = v14;
  *&v53[0] = MEMORY[0x277D84F90];
  *(v53 + 8) = 0u;
  *(&v53[1] + 8) = 0u;
  *(&v53[2] + 1) = 0;
  v54 = 2;
  nullsub_1(&v46);
  v15 = v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 144);
  v55[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 128);
  v55[9] = v16;
  v56 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 160);
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 80);
  v55[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 64);
  v55[5] = v17;
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 112);
  v55[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 96);
  v55[7] = v18;
  v19 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 16);
  v55[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row);
  v55[1] = v19;
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 48);
  v55[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 32);
  v55[3] = v20;
  v21 = v53[0];
  v22 = v53[2];
  *(v15 + 128) = v53[1];
  *(v15 + 144) = v22;
  *(v15 + 160) = v54;
  v23 = v51;
  *(v15 + 64) = v50;
  *(v15 + 80) = v23;
  *(v15 + 96) = v52;
  *(v15 + 112) = v21;
  v24 = v47;
  *v15 = v46;
  *(v15 + 16) = v24;
  v25 = v49;
  *(v15 + 32) = v48;
  *(v15 + 48) = v25;

  sub_20B520158(v55, &qword_27C762340);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  if (*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {
    swift_unknownObjectRelease();
LABEL_6:

    return (*(v8 + 8))(v10, v7);
  }

  v39 = Strong;
  v27 = sub_20B61CF10(v1, Strong);
  if (v28)
  {
    v36 = v27;
    v37 = v29;
    v38 = v28;
    sub_20B5E2E18();
    v30 = sub_20C13D374();
    v32 = v41;
    v31 = v42;
    *v41 = v30;
    v33 = v40;
    (*(v31 + 104))(v32, *MEMORY[0x277D85200], v40);
    v34 = sub_20C13C584();
    result = (*(v31 + 8))(v32, v33);
    if ((v34 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    sub_20B6204B8(v36, v38, v37, v1, 1, v39);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_20C0C2D50(0);

    swift_unknownObjectRelease();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_20B8C7E34()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_playlist, &qword_27C7643F0);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaylistDetailHeaderShelf()
{
  result = qword_27C767468;
  if (!qword_27C767468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8C7F9C()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20B668494();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20B8C807C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B8C80F4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

id sub_20B8C81BC(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutKind] = 6;
  v6 = &v3[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment];
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v7 = &v3[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_previousBounds];
  *v7 = 0u;
  v7[1] = 0u;
  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_contentOverlayView] = 0;
  v3[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_isPictureInPictureActive] = 0;
  v8 = OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_layoutProvider;
  type metadata accessor for SessionAudioPlayerLayoutProvider();
  *&v3[v8] = swift_allocObject();
  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_settingsPopoverSourceView] = 0;
  v9 = &v3[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_presenter];
  *v9 = a1;
  v9[1] = a2;
  v10 = a1[31];
  objc_allocWithZone(type metadata accessor for SessionAudioPlayerView());
  swift_unknownObjectRetain();
  v11 = swift_unknownObjectRetain();
  v12 = sub_20BB14AF0(v11, v10);
  swift_unknownObjectRelease();
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_playerView] = v12;
  v19.receiver = v3;
  v19.super_class = type metadata accessor for SessionAudioPlayerViewController();
  v13 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  a1[3] = &off_2822B2970;
  swift_unknownObjectWeakAssign();
  v14 = a1[30];
  v15 = v13;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v17 = *(v14 + 96);
  *(v14 + 96) = sub_20B8C8F80;
  *(v14 + 104) = v16;

  sub_20B583ECC(v17);
  swift_unknownObjectRelease();

  return v15;
}

void sub_20B8C83BC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_playerView);
    v4 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_moreButton;
    v5 = Strong;
    [*(v3 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_moreButton) setMenu_];
    [*(v3 + v4) setShowsMenuAsPrimaryAction_];
  }
}

void sub_20B8C8458()
{
  v1 = v0;
  v28.receiver = v0;
  v28.super_class = type metadata accessor for SessionAudioPlayerViewController();
  objc_msgSendSuper2(&v28, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_playerView];
  [v2 addSubview_];

  sub_20B6776DC(1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20C14FE90;
  v6 = [v4 leadingAnchor];
  v7 = [v1 view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v7 leadingAnchor];

  v10 = [v6 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = [v4 trailingAnchor];
  v12 = [v1 view];
  if (!v12)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = v12;
  v14 = [v12 trailingAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v5 + 40) = v15;
  v16 = [v4 topAnchor];
  v17 = [v1 view];
  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v5 + 48) = v20;
  v21 = [v4 bottomAnchor];
  v22 = [v1 view];
  if (v22)
  {
    v23 = v22;
    v24 = objc_opt_self();
    v25 = [v23 bottomAnchor];

    v26 = [v21 constraintEqualToAnchor_];
    *(v5 + 56) = v26;
    sub_20B51C88C(0, &qword_281100500);
    v27 = sub_20C13CC54();

    [v24 activateConstraints_];

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_20B8C8804()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = result;
  [result bounds];
  v4 = v3;
  v6 = v5;

  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v7 = result;
  [result safeAreaInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_20BE7C518([v0 traitCollection], v27, v4, v6, v9, v11, v13, v15);
  if (v0[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutKind] == 6 || (v16 = &v0[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment], v17 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment + 64], v25[3] = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment + 48], v26 = v17, v18 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment + 32], v25[1] = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment + 16], v25[2] = v18, v25[0] = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment], !*(&v17 + 1)))
  {
    v23 = sub_20B8007B8(v27);
    sub_20B8C8CD4(v23, v27);
  }

  else
  {
    v19 = *(v16 + 3);
    v28[2] = *(v16 + 2);
    v28[3] = v19;
    v20 = *(v16 + 8);
    v21 = *(v16 + 1);
    v28[0] = *v16;
    v28[1] = v21;
    v29 = v20;
    v30 = *(&v26 + 1);
    sub_20B8C90D0(v25, &v24);
    if ((sub_20BE7C3F4(v28, v27) & 1) == 0)
    {
      v22 = sub_20B8007B8(v27);
      sub_20B8C8CD4(v22, v27);
    }

    sub_20B8C9140(v25);
  }

  return sub_20B8C907C(v27);
}

void sub_20B8C8AA0(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_20B8C8804();
  v5.receiver = v4;
  v5.super_class = type metadata accessor for SessionAudioPlayerViewController();
  objc_msgSendSuper2(&v5, *a3);
}

id sub_20B8C8B1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionAudioPlayerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B8C8C40(uint64_t result)
{
  v2 = *(*(*(v1 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_presenter) + 240) + 96);
  if (v2)
  {
    v3 = result;
    swift_unknownObjectRetain();
    sub_20B584050(v2);
    v2(v3);
    swift_unknownObjectRelease();

    return sub_20B583ECC(v2);
  }

  return result;
}

uint64_t sub_20B8C8CD4(uint64_t a1, _OWORD *a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutKind) = a1;
  v5 = (v2 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment);
  v6 = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment + 48);
  v23[2] = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment + 32);
  v23[3] = v6;
  v23[4] = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment + 64);
  v7 = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment + 16);
  v23[0] = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment);
  v23[1] = v7;
  v8 = a2[1];
  *v5 = *a2;
  v5[1] = v8;
  v9 = a2[3];
  v5[2] = a2[2];
  v5[3] = v9;
  v5[4] = a2[4];
  sub_20B8C91A8(a2, v24);
  sub_20B8C9140(v23);
  sub_20B800934(a1, a2, v20);
  v24[12] = v20[12];
  v24[13] = v20[13];
  v24[14] = v20[14];
  v25 = v21;
  v24[8] = v20[8];
  v24[9] = v20[9];
  v24[10] = v20[10];
  v24[11] = v20[11];
  v24[4] = v20[4];
  v24[5] = v20[5];
  v24[6] = v20[6];
  v24[7] = v20[7];
  v24[0] = v20[0];
  v24[1] = v20[1];
  v24[2] = v20[2];
  v24[3] = v20[3];
  nullsub_1(v24);
  sub_20B8C9204(v24, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7674E0);
  v10 = swift_allocObject();
  v11 = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_playerView);
  v10[7] = type metadata accessor for SessionAudioPlayerView();
  v10[8] = &off_2822CD018;
  v10[4] = v11;
  sub_20B51CC64((v10 + 4), v17);
  swift_setDeallocating();
  sub_20B8C9260(v20, &v16);
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_1((v10 + 4));
  swift_deallocClassInstance();
  v13 = v18;
  v14 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  (*(v14 + 8))(v22, a2, v13, v14);
  sub_20B8C92BC(v20);
  sub_20B8C92BC(v20);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

void *sub_20B8C8EB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_contentOverlayView);
  v2 = v1;
  return v1;
}

uint64_t sub_20B8C8EF0()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_20B8C8F44()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_settingsPopoverSourceView);
  v2 = v1;
  return v1;
}

void sub_20B8C8F88()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutKind) = 6;
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_previousBounds);
  *v2 = 0u;
  v2[1] = 0u;
  *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_contentOverlayView) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_isPictureInPictureActive) = 0;
  v3 = OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_layoutProvider;
  type metadata accessor for SessionAudioPlayerLayoutProvider();
  *(v0 + v3) = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_settingsPopoverSourceView) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B8C90D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7674D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8C9140(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7674D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_20B8C9328(void *a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_focusedTintColor;
  v4 = objc_opt_self();
  *&v1[v3] = [v4 blackColor];
  v5 = OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_unfocusedTintColor;
  *&v1[v5] = [v4 whiteColor];
  v6 = OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_imageView;
  v7 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v8 = [v4 whiteColor];
  [v7 setTintColor_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v6] = v7;
  *&v1[OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_buttonControlState] = 0;
  [v7 setImage_];
  v41.receiver = v1;
  v41.super_class = type metadata accessor for TVButtonImageContentView();
  v9 = objc_msgSendSuper2(&v41, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_imageView;
  v11 = *&v9[OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_imageView];
  v12 = v9;
  [v12 addSubview_];
  v14 = *MEMORY[0x277D768C8];
  v13 = *(MEMORY[0x277D768C8] + 8);
  v15 = *(MEMORY[0x277D768C8] + 16);
  v16 = *(MEMORY[0x277D768C8] + 24);
  v17 = *&v9[v10];
  v18 = [v17 leadingAnchor];
  v19 = [v12 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:v13];

  LODWORD(v21) = 1148846080;
  [v20 setPriority_];
  v22 = v20;
  v23 = [v17 trailingAnchor];
  v24 = [v12 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:-v16];

  LODWORD(v26) = 1148846080;
  [v25 setPriority_];
  v27 = v25;
  v28 = [v17 topAnchor];
  v29 = [v12 topAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:v14];

  LODWORD(v31) = 1148846080;
  [v30 setPriority_];
  v32 = [v17 bottomAnchor];
  v33 = [v12 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:-v15];

  LODWORD(v35) = 1148846080;
  [v34 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_20C14FE90;
  *(v36 + 32) = v22;
  *(v36 + 40) = v27;
  *(v36 + 48) = v30;
  *(v36 + 56) = v34;
  v37 = v30;

  v38 = objc_opt_self();
  sub_20B5E29D0();
  v39 = sub_20C13CC54();

  [v38 activateConstraints_];

  return v12;
}

id sub_20B8C9778(void *a1)
{
  v2 = OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_unfocusedTintColor;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_unfocusedTintColor);
  *(v1 + OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_unfocusedTintColor) = a1;
  v4 = a1;

  if ((*(v1 + OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_buttonControlState) & 8) != 0)
  {
    v5 = OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_focusedTintColor;
  }

  else
  {
    v5 = v2;
  }

  v6 = *(v1 + v5);
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_imageView);

  return [v7 setTintColor_];
}

id sub_20B8C9828()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVButtonImageContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_20B8C98E0(int a1, double a2, double a3, double a4, double a5)
{
  v10 = [objc_opt_self() smu:*MEMORY[0x277D76918] preferredFontForTextStyle:1024 variant:?];
  v11 = [objc_opt_self() configurationWithFont_];

  v12 = v11;
  v13 = sub_20C13C914();
  v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

  v15 = objc_allocWithZone(type metadata accessor for TVButtonImageContentView());
  v16 = v14;
  v17 = sub_20B8C9328(v14);
  v18 = objc_allocWithZone(type metadata accessor for TVButton());
  v19 = sub_20BB87F4C(v17, 1, a1, v18, a2, a3, a4, a5);

  [*&v19[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setFocusedSizeIncrease_];
  return v19;
}

id sub_20B8C9A68(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_buttonControlState) = a1;
  v2 = &OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_unfocusedTintColor;
  if ((a1 & 8) != 0)
  {
    v2 = &OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_focusedTintColor;
  }

  return [*(v1 + OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_imageView) setTintColor_];
}

void sub_20B8C9AAC()
{
  v1 = OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_focusedTintColor;
  v2 = objc_opt_self();
  *(v0 + v1) = [v2 blackColor];
  v3 = OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_unfocusedTintColor;
  *(v0 + v3) = [v2 whiteColor];
  v4 = OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_imageView;
  v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v6 = [v2 whiteColor];
  [v5 setTintColor_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v5;
  *(v0 + OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_buttonControlState) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B8C9C0C()
{
  sub_20B583E6C(v0 + 16);
  sub_20B583E6C(v0 + 32);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_20B8C9C90()
{
  sub_20B75CE14();
  swift_getObjectType();
  sub_20C13B0D4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20B8C9D78()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      v4 = *(v2 + 16);

      v4(v5, &off_2822B2B58, ObjectType, v2);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_20B8C9E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v31[1] = a2;
  v37 = a3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v33);
  MEMORY[0x28223BE20](v9);
  v11 = v31 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764320);
  v12 = *(v36 - 8);
  v34 = *(v12 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v32 = v31 - v15;
  __swift_project_boxed_opaque_existential_1((v3 + 72), *(v3 + 96));
  sub_20C1392F4();
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a1;
  v16[4] = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_20B8CB754;
  *(v17 + 24) = v16;
  v18 = v33;
  (*(v7 + 16))(v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v33);
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = swift_allocObject();
  (*(v7 + 32))(v20 + v19, v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v21 = (v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_20B8CB774;
  v21[1] = v17;

  v22 = v32;
  sub_20C137C94();
  (*(v7 + 8))(v11, v18);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_20B8CA36C;
  *(v23 + 24) = 0;
  v24 = v35;
  v25 = v36;
  (*(v12 + 16))(v35, v22, v36);
  v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v27 = (v34 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v12 + 32))(v28 + v26, v24, v25);
  v29 = (v28 + v27);
  *v29 = sub_20B8CB77C;
  v29[1] = v23;
  sub_20C137C94();
  return (*(v12 + 8))(v22, v25);
}

unint64_t sub_20B8CA240@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_20C132E94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132E84();
  v10 = sub_20C135704();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    result = sub_20B75D408(a1, a2);
    v12 = HIDWORD(result) & 1;
  }

  else
  {
    LOBYTE(v12) = 1;
    result = 4;
  }

  *a3 = result;
  *(a3 + 4) = v12;
  return result;
}

uint64_t sub_20B8CA380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v37 = a3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v33);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764320);
  v11 = *(v36 - 8);
  v31 = *(v11 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v32 = &v30 - v14;
  __swift_project_boxed_opaque_existential_1((v3 + 72), *(v3 + 96));
  v30 = v10;
  sub_20C1392E4();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v18 = v33;
  v17 = v34;
  *(v16 + 2) = v15;
  *(v16 + 3) = v17;
  *(v16 + 4) = a2;
  (*(v5 + 16))(v7, v10, v18);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  (*(v5 + 32))(v20 + v19, v7, v18);
  v21 = (v20 + ((v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_20B8CB5C8;
  v21[1] = v16;

  v22 = v32;
  sub_20C137C94();
  (*(v5 + 8))(v30, v18);
  v24 = v35;
  v23 = v36;
  (*(v11 + 16))(v35, v22, v36);
  v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v26 = (v31 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v11 + 32))(v27 + v25, v24, v23);
  v28 = (v27 + v26);
  *v28 = sub_20B8CA940;
  v28[1] = 0;
  sub_20C137C94();
  return (*(v11 + 8))(v22, v23);
}

uint64_t sub_20B8CA744(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_20C132E94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20C132E84();
    v10 = sub_20C135704();
    (*(v7 + 8))(v9, v6);
    if (v10)
    {
      v11 = sub_20B75D408(a3, a4);

      v12 = HIDWORD(v11) & 1;
    }

    else
    {

      LOBYTE(v12) = 1;
      LODWORD(v11) = 4;
    }

    BYTE4(v17) = v12;
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    *(v15 + 20) = BYTE4(v17);
  }

  else
  {
    sub_20B8CB638();
    v13 = swift_allocError();
    *v14 = 2;
    *(swift_allocObject() + 16) = v13;
  }

  return sub_20C137CA4();
}

uint64_t sub_20B8CA940(void *a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v6 = a1;
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1F4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = MEMORY[0x20F2F5850](v16[2], v16[3]);
    v13 = sub_20B51E694(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20B517000, v7, v8, "Failed to fetch subscription for download state with error: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  LOBYTE(v17) = 1;
  v14 = swift_allocObject();
  *(v14 + 16) = 4;
  *(v14 + 20) = v17;
  return sub_20C137CA4();
}

uint64_t sub_20B8CAB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v33);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644D0);
  v10 = *(v36 - 8);
  v34 = *(v10 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v32 = &v32 - v13;
  __swift_project_boxed_opaque_existential_1((v2 + 72), *(v2 + 96));
  sub_20C1392E4();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  v16 = v33;
  (*(v4 + 16))(v6, v9, v33);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = (v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v19 + v17;
  v21 = v16;
  (*(v4 + 32))(v20, v6, v16);
  v22 = (v19 + v18);
  *v22 = sub_20B8CB694;
  v22[1] = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767508);
  v23 = v32;
  sub_20C137C94();
  (*(v4 + 8))(v9, v21);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  v25 = v35;
  v26 = v36;
  (*(v10 + 16))(v35, v23, v36);
  v27 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v28 = (v34 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v10 + 32))(v29 + v27, v25, v26);
  v30 = (v29 + v28);
  *v30 = sub_20B8CB6C4;
  v30[1] = v24;

  sub_20C137C94();
  return (*(v10 + 8))(v23, v26);
}

uint64_t sub_20B8CAF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    v10[2] = v6;
    v10[3] = a1;
    v7 = sub_20B5E6A88(sub_20B8CB6F4, v10, a3);
  }

  else
  {
    sub_20B8CB638();
    v7 = swift_allocError();
    *v8 = 2;
  }

  *(swift_allocObject() + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767508);
  return sub_20C137CA4();
}

uint64_t sub_20B8CB0B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v10 = a1;
  v11 = sub_20C13BB74();
  v12 = sub_20C13D1F4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25[0] = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136446210;
    swift_getErrorValue();
    v16 = MEMORY[0x20F2F5850](v25[2], v25[3]);
    v18 = sub_20B51E694(v16, v17, &v26);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_20B517000, v11, v12, "Failed to fetch subscription for download state with error: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F2F6A40](v15, -1, -1);
    MEMORY[0x20F2F6A40](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v19 = *(a2 + 16);
  if (v19)
  {
    v20 = sub_20C13CCD4();
    v21 = v20;
    *(v20 + 16) = v19;
    v22 = 32;
    do
    {
      v23 = v20 + v22;
      *v23 = 4;
      *(v23 + 4) = 1;
      v22 += 8;
      --v19;
    }

    while (v19);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  *(swift_allocObject() + 16) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767508);
  return sub_20C137CA4();
}

unint64_t sub_20B8CB338@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  sub_20C132E84();
  v10 = sub_20C135704();
  (*(v5 + 8))(v7, v4);
  if (v10)
  {
    result = sub_20B75D408(v8, v9);
    v12 = HIDWORD(result) & 1;
  }

  else
  {
    LOBYTE(v12) = 1;
    result = 4;
  }

  *a2 = result;
  *(a2 + 4) = v12;
  return result;
}

uint64_t sub_20B8CB464@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 4);
  *a2 = *result;
  *(a2 + 4) = v2;
  return result;
}

uint64_t sub_20B8CB478()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for DownloadCoordinator();
  swift_allocObject();
  *(v0 + 48) = sub_20B75FF20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v0 + 56) = v2[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B52E424(v2, v0 + 72);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v0 + 112) = sub_20C13A914();
  *(*(v0 + 48) + 40) = &off_2822B2BE0;
  swift_unknownObjectWeakAssign();
  *(*(v0 + 48) + 24) = &off_2822B2BD0;
  swift_unknownObjectWeakAssign();
  return v0;
}

void sub_20B8CB624(uint64_t a1@<X8>)
{
  v2 = *(v1 + 20);
  *a1 = *(v1 + 16);
  *(a1 + 4) = v2;
}

unint64_t sub_20B8CB638()
{
  result = qword_27C76D2C0;
  if (!qword_27C76D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76D2C0);
  }

  return result;
}

uint64_t objectdestroy_26Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B8CB784(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

char *sub_20B8CB86C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_layout];
  *v12 = xmmword_20C1608F0;
  *(v12 + 1) = xmmword_20C160900;
  *(v12 + 4) = 0x4032000000000000;
  v13 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v14 = 16.0;
  }

  else
  {
    v14 = 4.0;
  }

  v15 = &v5[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_artworkView];
  v16 = [v13 layer];
  [v16 setCornerRadius_];

  [v13 setClipsToBounds_];
  *v15 = v13;
  v15[1] = &off_2822B63E8;
  v17 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_indexLabel;
  v18 = [objc_allocWithZone(type metadata accessor for IndexLabel()) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v18 &selRef_count + 2];
  *&v5[v17] = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_titleLabel;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v20 &selRef_count + 2];
  [v20 setAdjustsFontForContentSizeCategory_];
  [v20 setLineBreakMode_];
  [v20 setNumberOfLines_];
  [v20 setAllowsDefaultTighteningForTruncation_];
  v21 = objc_opt_self();
  v22 = [v21 whiteColor];
  [v20 setTextColor_];

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v23) = v174;
  [v20 setContentHuggingPriority:1 forAxis:v23];

  *&v5[v19] = v20;
  v24 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_subtitleLabel;
  v25 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  [v25 setAdjustsFontForContentSizeCategory_];
  [v25 setLineBreakMode_];
  [v25 setNumberOfLines_];
  [v25 setAllowsDefaultTighteningForTruncation_];
  v26 = [v21 systemGrayColor];
  [v25 setTextColor_];

  v172 = 1065353216;
  v173 = 1144750080;
  sub_20C13BB94();
  LODWORD(v27) = v174;
  [v25 setContentHuggingPriority:1 forAxis:v27];

  *&v5[v24] = v25;
  v28 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_downloadButton;
  v29 = [objc_allocWithZone(type metadata accessor for DownloadButton()) initWithFrame_];
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v30) = 1148846080;
  [v29 setContentHuggingPriority:0 forAxis:v30];
  LODWORD(v31) = 1148846080;
  [v29 setContentHuggingPriority:1 forAxis:v31];

  *&v5[v28] = v29;
  v32 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_textBoxLayoutGuide;
  *&v5[v32] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v33 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_indexLeadingConstraint;
  *&v5[v33] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v5[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_isCurrentTitleRTL] = 0;
  v34 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_textBoxLayoutGuideLeadingConstraint;
  *&v5[v34] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v171.receiver = v5;
  v171.super_class = type metadata accessor for TabletIndexedBrickItemCell();
  v35 = objc_msgSendSuper2(&v171, sel_initWithFrame_, a1, a2, a3, a4);
  v166 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_titleLabel;
  v36 = *&v35[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_titleLabel];
  v37 = *MEMORY[0x277D76918];
  v38 = objc_opt_self();
  v167 = v35;
  v39 = v35;
  v40 = v36;
  v41 = [v38 preferredFontDescriptorWithTextStyle:v37 compatibleWithTraitCollection:0];
  v42 = [v41 fontDescriptorWithSymbolicTraits_];
  if (v42)
  {
    v43 = v42;

    v41 = v43;
  }

  v44 = objc_opt_self();
  v45 = [v44 fontWithDescriptor:v41 size:0.0];

  [v40 setFont_];
  v46 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_subtitleLabel;
  v47 = *MEMORY[0x277D76968];
  v48 = *&v39[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_subtitleLabel];
  v49 = [v38 preferredFontDescriptorWithTextStyle:v47 compatibleWithTraitCollection:0];
  v50 = [v49 fontDescriptorWithSymbolicTraits_];
  if (v50)
  {
    v51 = v50;

    v49 = v51;
  }

  v52 = [v44 fontWithDescriptor:v49 size:0.0];

  [v48 setFont_];
  v53 = [v39 contentView];
  v168 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_textBoxLayoutGuide;
  [v53 addLayoutGuide_];

  v54 = [v39 &selRef_setMaximumFractionDigits_];
  v55 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_artworkView;
  [v54 addSubview_];

  v56 = [v39 &selRef_setMaximumFractionDigits_];
  [v56 addSubview_];

  v57 = [v39 &selRef_setMaximumFractionDigits_];
  [v57 addSubview_];

  v58 = [v39 &selRef_setMaximumFractionDigits_];
  v163 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_indexLabel;
  [v58 addSubview_];

  v59 = v39;
  v60 = [v59 &selRef_setMaximumFractionDigits_];
  v61 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_downloadButton;
  v161 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_downloadButton;
  [v60 addSubview_];

  v62 = *&v59[v61];
  [v62 addTarget:v59 action:sel_handleDownloadButtonTapped forControlEvents:64];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_20C150050;
  v64 = v63;
  v65 = [*&v39[v55] leadingAnchor];
  v165 = v46;
  v66 = [v59 &selRef_setMaximumFractionDigits_];
  v67 = [v66 leadingAnchor];

  v68 = [v65 constraintEqualToAnchor_];
  v64[4] = v68;
  v69 = [*&v39[v55] trailingAnchor];
  v70 = [v59 &selRef_setMaximumFractionDigits_];
  v71 = [v70 trailingAnchor];

  v72 = [v69 &selRef:v71 alertControllerReleasedDictationButton:? + 5];
  v64[5] = v72;
  v73 = [*&v39[v55] topAnchor];
  v74 = [v59 &selRef_setMaximumFractionDigits_];
  v75 = [v74 &selRef_setLineBreakMode_];

  v76 = [v73 &selRef:v75 alertControllerReleasedDictationButton:? + 5];
  v64[6] = v76;
  v77 = [*&v39[v55] widthAnchor];
  v78 = [v59 &selRef_setMaximumFractionDigits_];
  v79 = [v78 &selRef_traitCollection + 6];

  v80 = [v77 &selRef:v79 alertControllerReleasedDictationButton:? + 5];
  v172 = 1065353216;
  v173 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v81) = v174;
  [v80 setPriority_];
  v64[7] = v80;
  v164 = v64;
  v82 = [*&v39[v55] heightAnchor];
  v83 = [*&v39[v55] widthAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 multiplier:0.668656716];

  v172 = 1065353216;
  v173 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v85) = v174;
  [v84 setPriority_];
  v64[8] = v84;
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_20C151490;
  v87 = v86;
  v88 = [*&v59[v161] topAnchor];
  v89 = [*&v39[v55] bottomAnchor];
  v90 = [v88 constraintEqualToAnchor:v89 constant:10.0];

  *(v87 + 32) = v90;
  v91 = [*&v59[v161] trailingAnchor];
  v92 = [v59 contentView];
  v93 = [v92 trailingAnchor];

  v94 = [v91 &selRef:v93 alertControllerReleasedDictationButton:? + 5];
  *(v87 + 40) = v94;
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_20C14FE90;
  v96 = v95;
  v97 = [*&v39[v168] topAnchor];
  v98 = [*&v59[v161] topAnchor];
  v99 = [v97 &selRef:v98 alertControllerReleasedDictationButton:? + 5];

  v96[4] = v99;
  v100 = [*&v39[v168] trailingAnchor];
  v101 = [*&v59[v161] leadingAnchor];
  v102 = [v100 constraintLessThanOrEqualToAnchor:v101 constant:-4.0];

  v172 = 1065353216;
  v173 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v103) = v174;
  [v102 setPriority_];
  v96[5] = v102;
  v104 = [*&v39[v168] leadingAnchor];
  v105 = [v59 contentView];
  v106 = [v105 leadingAnchor];

  v107 = [v104 constraintEqualToAnchor_];
  v96[6] = v107;
  v162 = v96;
  v108 = [*&v39[v168] bottomAnchor];
  v109 = [v59 contentView];
  v110 = [v109 bottomAnchor];

  v111 = [v108 constraintEqualToAnchor:v110 constant:-18.0];
  v172 = 1065353216;
  v173 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v112) = v174;
  [v111 setPriority_];
  v96[7] = v111;
  v113 = [*&v39[v163] leadingAnchor];
  v114 = [v59 contentView];
  v115 = [v114 leadingAnchor];

  v116 = [v113 constraintEqualToAnchor_];
  v117 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_indexLeadingConstraint;
  v118 = *&v59[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_indexLeadingConstraint];
  *&v59[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_indexLeadingConstraint] = v116;

  v119 = [*&v39[v168] leadingAnchor];
  v120 = [v59 contentView];
  v121 = [v120 leadingAnchor];

  v122 = [v119 constraintEqualToAnchor_];
  v123 = *&v59[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_textBoxLayoutGuideLeadingConstraint];
  *&v59[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_textBoxLayoutGuideLeadingConstraint] = v122;

  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_20C151490;
  v125 = *&v59[v117];
  *(v124 + 32) = v125;
  v126 = v124;
  v170 = v124;
  v127 = *&v39[v163];
  v128 = v125;
  v129 = [v127 bottomAnchor];
  v130 = [*&v167[v166] firstBaselineAnchor];
  v131 = [v129 &selRef:v130 alertControllerReleasedDictationButton:? + 5];

  *(v126 + 40) = v131;
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_20C150040;
  v133 = v132;
  v134 = [*&v167[v166] leadingAnchor];
  v135 = [*&v39[v168] leadingAnchor];
  v136 = [v134 &selRef:v135 alertControllerReleasedDictationButton:? + 5];

  v133[4] = v136;
  v137 = [*&v167[v166] trailingAnchor];
  v138 = [*&v39[v168] trailingAnchor];
  v139 = [v137 &selRef:v138 alertControllerReleasedDictationButton:? + 5];

  v169 = v133;
  v133[5] = v139;
  v140 = [*&v167[v166] topAnchor];
  v141 = [*&v39[v168] topAnchor];
  v142 = [v140 constraintEqualToAnchor_];

  v133[6] = v142;
  v143 = swift_allocObject();
  *(v143 + 16) = xmmword_20C14FE90;
  v144 = [*&v39[v165] leadingAnchor];
  v145 = [*&v39[v168] leadingAnchor];
  v146 = [v144 constraintEqualToAnchor_];

  *(v143 + 32) = v146;
  v147 = [*&v39[v165] trailingAnchor];
  v148 = [*&v39[v168] trailingAnchor];
  v149 = [v147 constraintEqualToAnchor_];

  *(v143 + 40) = v149;
  v150 = [*&v39[v165] topAnchor];
  v151 = [*&v167[v166] bottomAnchor];
  v152 = [v150 constraintEqualToAnchor_];

  *(v143 + 48) = v152;
  v153 = [*&v39[v165] bottomAnchor];
  v154 = [*&v39[v168] bottomAnchor];
  v155 = [v153 constraintEqualToAnchor_];

  *(v143 + 56) = v155;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150DB0;
  *(inited + 32) = v164;
  *(inited + 40) = v87;
  *(inited + 48) = v162;
  *(inited + 56) = v170;
  *(inited + 64) = v169;
  *(inited + 72) = v143;
  v157 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500);
  v158 = sub_20C13CC54();

  [v157 activateConstraints_];

  v159 = [objc_opt_self() defaultCenter];
  [v159 addObserver:v59 selector:sel_updateFonts_ name:*MEMORY[0x277D76810] object:0];

  return v59;
}

uint64_t sub_20B8CD144()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_storeEnumTagMultiPayload();
    *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E27BC);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B60B124(v7, type metadata accessor for ShelfItemAction);
  }

  return result;
}

void sub_20B8CD384()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_titleLabel) attributedText];
  if (v1)
  {
    v2 = v1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [v2 string];
      v6 = sub_20C13C954();
      v8 = v7;

      v9 = v4 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 8);
        ObjectType = swift_getObjectType();
        v12 = (*(v10 + 184))(v4, v6, v8, ObjectType, v10);
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = MEMORY[0x277D84F90];
      }

      swift_unknownObjectRelease();

      v14 = *(v12 + 16);

      v13 = v14 != 0;
    }

    else
    {

      v13 = 0;
    }

    *(v0 + OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_isCurrentTitleRTL) = v13;
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_isCurrentTitleRTL) = 0;
  }
}

id sub_20B8CD4EC()
{
  v1 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_indexLeadingConstraint;
  [*&v0[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_indexLeadingConstraint] setActive_];
  v2 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_textBoxLayoutGuideLeadingConstraint;
  [*&v0[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_textBoxLayoutGuideLeadingConstraint] setActive_];
  if ([v0 effectiveUserInterfaceLayoutDirection] == 1 && (v0[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_isCurrentTitleRTL] & 1) == 0)
  {
    v12 = *&v0[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_indexLabel];
    v13 = [v12 leadingAnchor];
    v14 = [v0 contentView];
    v15 = [v14 leadingAnchor];

    v16 = [v13 constraintEqualToAnchor_];
    v17 = *&v0[v1];
    *&v0[v1] = v16;

    v8 = [*&v0[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_textBoxLayoutGuide] leadingAnchor];
    v10 = [v12 trailingAnchor];
    v11 = [v8 constraintEqualToAnchor:v10 constant:6.0];
  }

  else
  {
    v3 = [*&v0[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_indexLabel] leadingAnchor];
    v4 = *&v0[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_textBoxLayoutGuide];
    v5 = [v4 leadingAnchor];
    v6 = [v3 constraintEqualToAnchor_];

    v7 = *&v0[v1];
    *&v0[v1] = v6;

    v8 = [v4 leadingAnchor];
    v9 = [v0 contentView];
    v10 = [v9 leadingAnchor];

    v11 = [v8 constraintEqualToAnchor_];
  }

  v18 = v11;

  v19 = *&v0[v2];
  *&v0[v2] = v18;

  [*&v0[v1] setActive_];
  v20 = *&v0[v2];

  return [v20 setActive_];
}

id sub_20B8CD78C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabletIndexedBrickItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TabletIndexedBrickItemCell()
{
  result = qword_2811013B0;
  if (!qword_2811013B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8CD8F4()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B8CD9D8(unint64_t a1, int a2)
{
  LODWORD(v3) = a2;
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v223 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v223 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v223 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v255 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v252 = v223 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v253 = v223 - v18;
  v251 = v19;
  MEMORY[0x28223BE20](v20);
  v254 = v223 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v22 - 8);
  v263 = v223 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v265 = *(v24 - 8);
  v266 = v24;
  MEMORY[0x28223BE20](v24);
  v250 = v223 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = v25;
  MEMORY[0x28223BE20](v26);
  v258 = v223 - v27;
  v261 = sub_20C1391C4();
  v260 = *(v261 - 8);
  MEMORY[0x28223BE20](v261);
  v262 = v223 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_20C138A64();
  v256 = *(v257 - 8);
  MEMORY[0x28223BE20](v257);
  v264 = v223 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v30 - 8);
  v259 = v223 - v31;
  v32 = sub_20C13C554();
  v274 = *(v32 - 8);
  v275 = v32;
  MEMORY[0x28223BE20](v32);
  v273 = (v223 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v280 = sub_20C137C24();
  v278 = *(v280 - 8);
  MEMORY[0x28223BE20](v280);
  v268 = v34;
  v269 = v223 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v279 = v223 - v36;
  v37 = sub_20C136CD4();
  v270 = *(v37 - 8);
  v271 = v37;
  MEMORY[0x28223BE20](v37);
  v277 = v223 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20C134E44();
  MEMORY[0x28223BE20](v39 - 8);
  v276 = v223 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20C134014();
  *&v44 = MEMORY[0x28223BE20](v41).n128_u64[0];
  v46 = v223 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v47 == 33)
  {
    [*&v2[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_indexLabel] setHidden_];
    sub_20BA1DB18();
    [*&v2[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_titleLabel] setAttributedText_];
    [*&v2[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_subtitleLabel] setAttributedText_];
    sub_20B8CD384();
    sub_20C13B4A4();
    v72 = v2;
    v73 = sub_20C13BB74();
    v74 = sub_20C13D1F4();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = v3;
      v3 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v282 = v77;
      *v75 = 138543618;
      *(v75 + 4) = v72;
      *v3 = v72;
      *(v75 + 12) = 2082;
      v78 = v72;
      *(v75 + 14) = sub_20B51E694(1701736270, 0xE400000000000000, &v282);
      _os_log_impl(&dword_20B517000, v73, v74, "[DownloadButton] Updating download button state in %{public}@ to %{public}s", v75, 0x16u);
      sub_20B520158(v3, &unk_27C762E30);
      v79 = v3;
      LOBYTE(v3) = v76;
      MEMORY[0x20F2F6A40](v79, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x20F2F6A40](v77, -1, -1);
      MEMORY[0x20F2F6A40](v75, -1, -1);
    }

    result = (*(v6 + 8))(v11, v5);
    v81 = *&v72[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_downloadButton];
    v82 = &v81[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
    if (v81[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState + 8] != 3 || *v82 != 3)
    {
      *v82 = 3;
      v82[8] = 3;
      v83 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      type metadata accessor for NoBackgroundConfiguration();
      v84 = swift_allocObject();
      *(v84 + 24) = 0;
      *(v84 + 32) = 0;
      *(v84 + 48) = 0;
      *(v84 + 56) = 0;
      *(v84 + 40) = v83;
      *(v84 + 64) = 0u;
      *(v84 + 80) = 0u;
      *(v84 + 96) = 0u;
      *(v84 + 112) = 0;
      *(v84 + 16) = 1;
      sub_20B8CF7CC(v84, v3 & 1, v81);
    }
  }

  else
  {
    v272 = v6;
    if (v47 == 32)
    {
      v230 = v15;
      v236 = v14;
      v239 = v5;
      v240 = v3;
      v48 = v42;
      v49 = v43;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
      v51 = swift_projectBox();
      v52 = v51 + v50[16];
      v53 = v48;
      v54 = *v52;
      v241 = *(v52 + 8);
      v55 = *(v52 + 24);
      v242 = *(v52 + 16);
      v57 = *(v52 + 32);
      v56 = *(v52 + 40);
      v58 = v51 + v50[20];
      v59 = *(v58 + 8);
      v246 = *v58;
      v243 = v59;
      v244 = *(v58 + 16);
      v60 = *(v58 + 32);
      v61 = *(v58 + 40);
      v62 = v51 + v50[24];
      v247 = *v62;
      v248 = *(v62 + 8);
      v237 = v49;
      v63 = v49;
      v64 = v61;
      v65 = *(v63 + 16);
      v267 = v46;
      v238 = v53;
      v65(v46, v51);
      v245 = v2;
      v66 = *&v2[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_subtitleLabel];
      v67 = v60;
      v68 = v54;
      v69 = v241;
      v242 = v242;
      v235 = v55;

      v234 = v57;

      v233 = v56;

      v70 = v243;
      sub_20B6543CC(v246, v243);
      v241 = v69;
      [v66 setAttributedText_];
      if (v70 == 1 || (, , (v64 & 1) != 0))
      {
        v71 = v245;
        [*&v245[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_titleLabel] setAttributedText_];
        [*&v71[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_indexLabel] setHidden_];
        sub_20B8CD384();
      }

      else
      {
        v71 = v245;
        v96 = *&v245[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_indexLabel];
        *&v96[OBJC_IVAR____TtC9SeymourUI10IndexLabel_index] = v67;
        sub_20B952710();
        [v96 setHidden_];
        [v96 setNeedsLayout];
        [v96 layoutIfNeeded];
        v97 = *&v71[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_titleLabel];
        [v96 bounds];
        v99 = sub_20B85A20C(v68, v98);
        [v97 setAttributedText_];

        sub_20B8CD384();
        sub_20B8CD4EC();
      }

      v101 = v276;
      v100 = v277;
      sub_20C133F04();
      v243 = sub_20C138054();
      v246 = v102;
      sub_20C134E34();
      v103 = v279;
      sub_20C136CB4();
      v231 = sub_20C136CC4();
      v244 = v104;
      sub_20B51C88C(0, &qword_281100530);
      v105 = sub_20C13D374();
      v106 = v273;
      v107 = v274;
      *v273 = v105;
      v108 = v275;
      (*(v107 + 104))(v106, *MEMORY[0x277D85200], v275);
      v109 = sub_20C13C584();
      result = (*(v107 + 8))(v106, v108);
      v110 = v280;
      if ((v109 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v112 = *&v71[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_artworkView];
      v111 = *&v71[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v112 setContentMode_];
      v114 = sub_20BA66C54(v103, v112, v111, 0);
      v232 = v68;
      v274 = v111;
      v275 = ObjectType;
      if (v114)
      {
        v115 = swift_allocObject();
        v228 = v115;
        swift_unknownObjectWeakInit();
        v116 = v278;
        v117 = *(v278 + 16);
        v118 = v269;
        v223[1] = v278 + 16;
        v226 = v117;
        v117(v269, v103, v110);
        v119 = *(v116 + 80);
        v120 = (v119 + 24) & ~v119;
        v223[0] = v268 + 7;
        v121 = (v268 + 7 + v120) & 0xFFFFFFFFFFFFFFF8;
        v273 = v112;
        v122 = (v121 + 23) & 0xFFFFFFFFFFFFFFF8;
        v123 = (v122 + 23) & 0xFFFFFFFFFFFFFFF8;
        v229 = (v123 + 15) & 0xFFFFFFFFFFFFFFF8;
        v227 = v119;
        v124 = v111;
        v125 = swift_allocObject();
        *(v125 + 16) = v115;
        v126 = v118;
        v127 = v246;
        v128 = *(v116 + 32);
        v129 = v125 + v120;
        v110 = v280;
        v225 = v116 + 32;
        v224 = v128;
        v128(v129, v126, v280);
        v130 = (v125 + v121);
        v131 = v244;
        *v130 = v231;
        v130[1] = v131;
        v132 = (v125 + v122);
        v133 = v273;
        *v132 = v243;
        v132[1] = v127;
        *(v125 + v123) = 2;
        v134 = v125 + v229;
        *v134 = MEMORY[0x277D84F90];
        *(v134 + 8) = 0;
        v135 = (v125 + ((v123 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v135 = 0;
        v135[1] = 0;
        v136 = *(v124 + 152);

        v137 = v275;
        v136(sub_20B8D03A4, v125, v275, v124);

        [v133 bounds];
        if (v138 <= 0.0 || (v140 = v139, v139 <= 0.0))
        {

          v71 = v245;
          v161 = v271;
          v103 = v279;
          v101 = v276;
          v100 = v277;
        }

        else
        {
          v141 = v138;
          v142 = v124;
          v143 = v137;
          v144 = ~v227;
          (*(v124 + 120))(0, v143, v124);
          v145 = v259;
          v103 = v279;
          v226(v259, v279, v110);
          (*(v278 + 56))(v145, 0, 1, v110);
          (*(v142 + 16))(v145, v143, v142);
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v146 = sub_20C13D5A4();
          [v133 setBackgroundColor_];

          (*(v142 + 176))(COERCE_DOUBLE(*&v141), COERCE_DOUBLE(*&v140), 0, v143, v142);
          v259 = swift_allocObject();
          v147 = v269;
          v148 = v245;
          swift_unknownObjectWeakInit();
          v149 = v226;
          v226(v147, v103, v110);
          v229 = v144;
          v150 = (v227 + 16) & v144;
          v151 = (v223[0] + v150) & 0xFFFFFFFFFFFFFFF8;
          v152 = (v151 + 15) & 0xFFFFFFFFFFFFFFF8;
          v153 = swift_allocObject();
          v224(v153 + v150, v147, v280);
          *(v153 + v151) = v259;
          v71 = v148;
          v154 = (v153 + v152);
          *v154 = v141;
          v154[1] = v140;
          v259 = v153;
          v155 = (v153 + ((v152 + 23) & 0xFFFFFFFFFFFFFFF8));
          v110 = v280;
          *v155 = 0;
          v155[1] = 0;
          v149(v147, v103, v110);
          (*(v260 + 104))(v262, *MEMORY[0x277D542A8], v261);

          v156 = v264;
          sub_20C138A54();
          v157 = v147;
          v158 = v263;
          sub_20B5F1D98(v156, v263);
          v160 = v265;
          v159 = v266;
          if ((*(v265 + 48))(v158, 1, v266) == 1)
          {
            sub_20B520158(v158, &unk_27C766670);
            sub_20BA1DB18();

            (*(v256 + 8))(v156, v257);
          }

          else
          {
            v262 = *(v160 + 32);
            v162 = v258;
            (v262)(v258, v158, v159);
            v163 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v149(v157, v279, v110);
            v164 = (v227 + 40) & v229;
            v165 = v164 + v268;
            v166 = (v164 + v268) & 0xFFFFFFFFFFFFFFF8;
            v167 = swift_allocObject();
            *(v167 + 2) = v163;
            v167[3] = v141;
            v167[4] = v140;
            v224(v167 + v164, v157, v280);
            *(v167 + v165) = 0;
            v168 = v167 + v166;
            *(v168 + 1) = 0;
            *(v168 + 2) = 0;
            v169 = swift_allocObject();
            *(v169 + 16) = sub_20B8D0538;
            *(v169 + 24) = v167;
            v170 = v265;
            v171 = v266;
            v172 = v250;
            (*(v265 + 16))(v250, v162, v266);
            v173 = v170;
            v174 = (*(v170 + 80) + 16) & ~*(v170 + 80);
            v175 = (v249 + v174 + 7) & 0xFFFFFFFFFFFFFFF8;
            v176 = swift_allocObject();
            (v262)(v176 + v174, v172, v171);
            v177 = (v176 + v175);
            *v177 = sub_20B5F67A4;
            v177[1] = v169;
            v178 = v253;
            sub_20C137C94();
            v179 = swift_allocObject();
            v180 = v259;
            *(v179 + 16) = sub_20B8D047C;
            *(v179 + 24) = v180;
            v181 = swift_allocObject();
            *(v181 + 16) = sub_20B5F67D4;
            *(v181 + 24) = v179;
            v182 = v255;
            v183 = v252;
            v184 = v230;
            (*(v255 + 16))(v252, v178, v230);
            v185 = (*(v182 + 80) + 16) & ~*(v182 + 80);
            v186 = (v251 + v185 + 7) & 0xFFFFFFFFFFFFFFF8;
            v187 = swift_allocObject();
            (*(v182 + 32))(v187 + v185, v183, v184);
            v188 = (v187 + v186);
            *v188 = sub_20B5DF204;
            v188[1] = v181;

            v189 = v254;
            sub_20C137C94();
            v190 = *(v182 + 8);
            v190(v178, v184);
            v191 = sub_20C137CB4();
            v192 = swift_allocObject();
            *(v192 + 16) = 0;
            *(v192 + 24) = 0;
            v191(sub_20B52347C, v192);

            v71 = v245;

            v193 = v189;
            v110 = v280;
            v190(v193, v184);
            v103 = v279;
            (*(v173 + 8))(v258, v266);
            (*(v256 + 8))(v264, v257);
          }

          v161 = v271;
          v101 = v276;
          v100 = v277;
        }
      }

      else
      {

        v161 = v271;
      }

      (*(v278 + 8))(v103, v110);
      (*(v270 + 8))(v100, v161);

      sub_20B60B124(v101, MEMORY[0x277D51268]);
      v194 = sub_20C133EB4() > 0;
      v195 = v274;
      (*(v274 + 264))(v194, v275, v274);
      v196 = sub_20C133E54();
      (*(v195 + 296))(v196);

      v197 = v236;
      sub_20C13B4A4();
      v198 = v71;
      v199 = sub_20C13BB74();
      v200 = sub_20C13D1F4();

      if (os_log_type_enabled(v199, v200))
      {
        v201 = swift_slowAlloc();
        v202 = swift_slowAlloc();
        v203 = swift_slowAlloc();
        v282 = v203;
        *v201 = 138543618;
        *(v201 + 4) = v198;
        *v202 = v198;
        *(v201 + 12) = 2082;
        v204 = v198;
        v205 = sub_20BCFF494(*&v247, v248);
        v207 = sub_20B51E694(v205, v206, &v282);

        *(v201 + 14) = v207;
        _os_log_impl(&dword_20B517000, v199, v200, "[DownloadButton] Updating download button state in %{public}@ to %{public}s", v201, 0x16u);
        sub_20B520158(v202, &unk_27C762E30);
        v208 = v202;
        v209 = v242;
        MEMORY[0x20F2F6A40](v208, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v203);
        MEMORY[0x20F2F6A40](v203, -1, -1);
        MEMORY[0x20F2F6A40](v201, -1, -1);

        (*(v272 + 8))(v197, v239);
        v210 = v240;
        v211 = v238;
      }

      else
      {

        (*(v272 + 8))(v197, v239);
        v210 = v240;
        v211 = v238;
        v209 = v242;
      }

      v212 = *&v198[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_downloadButton];
      v213 = &v212[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
      v214 = *&v212[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
      v215 = v212[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState + 8];
      if (v215 <= 1)
      {
        if (v212[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState + 8])
        {
          if (v248 != 1 || ((v214 ^ LODWORD(v247)) & 1) != 0)
          {
            goto LABEL_59;
          }
        }

        else if (v248 || v214 != LOBYTE(v247))
        {
          goto LABEL_59;
        }
      }

      else if (v215 == 2)
      {
        if (v248 != 2 || *&v212[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState] != v247)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v215 == 255)
        {
LABEL_59:
          v216 = *&v247;
          *v213 = v247;
          v217 = v248;
          v213[8] = v248;
          sub_20C010054(v216, v217, 2.0);
          v219 = v218;
          v221 = v220;
          v222 = swift_getObjectType();
          sub_20C0DC2BC(v219, v210 & 1, v212, v222, v221);

          swift_unknownObjectRelease();
          return (*(v237 + 8))(v267, v211);
        }

        if (v214 <= 1)
        {
          if (v214)
          {
            if (v248 != 3 || *&v247 != 1)
            {
              goto LABEL_59;
            }
          }

          else if (v248 != 3 || v247 != 0.0)
          {
            goto LABEL_59;
          }
        }

        else if (v214 == 2)
        {
          if (v248 != 3 || *&v247 != 2)
          {
            goto LABEL_59;
          }
        }

        else if (v214 == 3)
        {
          if (v248 != 3 || *&v247 != 3)
          {
            goto LABEL_59;
          }
        }

        else if (v248 != 3 || *&v247 != 4)
        {
          goto LABEL_59;
        }
      }

      return (*(v237 + 8))(v267, v211);
    }

    sub_20C13B534();

    v85 = v2;
    v86 = sub_20C13BB74();
    v87 = sub_20C13D1D4();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v281 = a1;
      v282 = v90;
      *v88 = 138543618;
      *(v88 + 4) = v85;
      *v89 = v85;
      *(v88 + 12) = 2082;
      v91 = sub_20B5F66D0();
      v92 = v85;
      v93 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v91);
      v95 = sub_20B51E694(v93, v94, &v282);

      *(v88 + 14) = v95;
      _os_log_impl(&dword_20B517000, v86, v87, "Attempted to configure %{public}@ with item: %{public}s", v88, 0x16u);
      sub_20B520158(v89, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v89, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v90);
      MEMORY[0x20F2F6A40](v90, -1, -1);
      MEMORY[0x20F2F6A40](v88, -1, -1);
    }

    return (*(v272 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_20B8CF6A8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B8CF6F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B8CF74C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B8CF7CC(uint64_t a1, char a2, char *a3)
{
  v6 = &a3[OBJC_IVAR____TtC9SeymourUI14DownloadButton_configuration];
  v7 = *&a3[OBJC_IVAR____TtC9SeymourUI14DownloadButton_configuration];
  v8 = *&a3[OBJC_IVAR____TtC9SeymourUI14DownloadButton_configuration + 8];
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v10 = [a3 traitCollection];
  LOBYTE(ObjectType) = (*(v8 + 88))(a1, &off_2822CFA28, v10, ObjectType, v8);

  if ((ObjectType & 1) == 0)
  {
    *v6 = a1;
    v6[1] = &off_2822CFA28;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v11 = *&a3[OBJC_IVAR____TtC9SeymourUI14DownloadButton_contentLayer];
    v12 = sub_20C13C914();
    [v11 removeAnimationForKey_];

    if (a2)
    {
      sub_20B8CF918(v7, v8, a1, a3);
    }

    else
    {
      sub_20B8CFDAC(v7, v8, a1, a3);
    }
  }

  return swift_unknownObjectRelease();
}

void sub_20B8CF918(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  sub_20B8D012C(a1, a2, a3, a4);
  v8 = sub_20C0DBE0C(a1, a2);
  [a4 bounds];
  [a4 bounds];
  [a4 bounds];
  CGRectGetHeight(v36);
  v9 = sub_20C13C914();
  v10 = [objc_opt_self() animationWithKeyPath_];

  [v10 setFromValue_];
  [v10 setToValue_];
  v11 = objc_opt_self();
  [v11 begin];
  [v11 setAnimationDuration_];
  v12 = [objc_opt_self() functionWithName_];
  [v11 setAnimationTimingFunction_];

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a3;
  v14[4] = &off_2822CFA28;
  v34 = sub_20B8D05EC;
  v35 = v14;
  v30 = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_20B7B548C;
  v33 = &block_descriptor_42;
  v15 = _Block_copy(&v30);
  swift_unknownObjectRetain();

  [v11 setCompletionBlock_];
  _Block_release(v15);
  v16 = *&a4[OBJC_IVAR____TtC9SeymourUI14DownloadButton_contentLayer];
  [v16 setPath_];
  v17 = sub_20C13C914();
  [v16 addAnimation:v10 forKey:v17];

  sub_20C0DBF9C(1);
  v18 = OBJC_IVAR____TtC9SeymourUI14DownloadButton_propertyAnimator;
  [*&a4[OBJC_IVAR____TtC9SeymourUI14DownloadButton_propertyAnimator] stopAnimation_];
  v19 = *&a4[v18];
  if (v19 && ([v19 finishAnimationAtPosition_], (v20 = *&a4[v18]) != 0))
  {
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    v34 = sub_20B8D05F8;
    v35 = v21;
    v30 = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_20B7B548C;
    v33 = &block_descriptor_78_1;
    v22 = _Block_copy(&v30);
    v23 = v20;
    v24 = a4;

    [v23 addAnimations_];
    _Block_release(v22);
  }

  else
  {
    v25 = swift_allocObject();
    *(v25 + 16) = a4;
    v26 = objc_allocWithZone(MEMORY[0x277D75D40]);
    v34 = sub_20B8D05F8;
    v35 = v25;
    v30 = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_20B7B548C;
    v33 = &block_descriptor_72_0;
    v27 = _Block_copy(&v30);
    v28 = a4;

    v29 = [v26 initWithDuration:0 curve:v27 animations:0.2];
    _Block_release(v27);
    v23 = *&a4[v18];
    *&a4[v18] = v29;
  }

  [*&a4[v18] startAnimation];
  [v11 commit];
}

void sub_20B8CFDAC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v7 = OBJC_IVAR____TtC9SeymourUI14DownloadButton_propertyAnimator;
  v8 = *&a4[OBJC_IVAR____TtC9SeymourUI14DownloadButton_propertyAnimator];
  if (v8)
  {
    [v8 stopAnimation_];
    v9 = *&a4[v7];
    if (v9)
    {
      [v9 finishAnimationAtPosition_];
    }
  }

  v10 = objc_opt_self();
  [v10 begin];
  [v10 setDisableActions_];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = &off_2822CFA28;
  v12[4] = v11;
  v28[4] = sub_20B8D0600;
  v28[5] = v12;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 1107296256;
  v28[2] = sub_20B7B548C;
  v28[3] = &block_descriptor_85_0;
  v13 = _Block_copy(v28);
  swift_unknownObjectRetain();

  [v10 setCompletionBlock_];
  _Block_release(v13);
  ObjectType = swift_getObjectType();
  (*(a2 + 112))(a4, &off_282307810, ObjectType, a2);
  if (*(a3 + 40))
  {
    [a4 setTintColor_];
  }

  v15 = [a4 traitCollection];
  swift_weakInit();
  v16 = *&a4[OBJC_IVAR____TtC9SeymourUI14DownloadButton_contentView];
  v17 = *&a4[OBJC_IVAR____TtC9SeymourUI14DownloadButton_contentView + 8];
  v18 = v15;
  sub_20BB6DDD8(v16, v17, v28, v18);

  sub_20C0DBF9C(0);
  sub_20BCE61CC();
  v19 = OBJC_IVAR____TtC9SeymourUI14DownloadButton_toWidth;
  *&a4[OBJC_IVAR____TtC9SeymourUI14DownloadButton_toWidth] = v20;
  [a4 setNeedsLayout];
  [v16 setNeedsLayout];
  v21 = [a4 superview];
  [v21 layoutIfNeeded];

  [a4 bounds];
  v23 = v22;
  [a4 bounds];
  v25 = v24;
  v26 = *&a4[v19];
  [a4 bounds];
  Height = CGRectGetHeight(v29);
  [*&a4[OBJC_IVAR____TtC9SeymourUI14DownloadButton_backgroundLayer] setFrame_];
  [*&a4[OBJC_IVAR____TtC9SeymourUI14DownloadButton_contentLayer] setFrame_];
  [*&a4[OBJC_IVAR____TtC9SeymourUI14DownloadButton_iconLayer] setFrame_];
  [v10 commit];
  swift_weakDestroy();
}

void sub_20B8D012C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v7 = *&a4[OBJC_IVAR____TtC9SeymourUI14DownloadButton_contentView];
  v8 = *&a4[OBJC_IVAR____TtC9SeymourUI14DownloadButton_contentView + 8];
  sub_20BCE61CC();
  v9 = OBJC_IVAR____TtC9SeymourUI14DownloadButton_fromWidth;
  *&a4[OBJC_IVAR____TtC9SeymourUI14DownloadButton_fromWidth] = v10;
  v11 = objc_opt_self();
  [v11 begin];
  [v11 setDisableActions_];
  ObjectType = swift_getObjectType();
  (*(a2 + 112))(a4, &off_282307810, ObjectType, a2);
  if (*(a3 + 40))
  {
    [a4 setTintColor_];
  }

  v13 = [a4 traitCollection];
  swift_weakInit();
  v14 = v13;
  sub_20BB6DDD8(v7, v8, v24, v14);

  sub_20BCE61CC();
  *&a4[OBJC_IVAR____TtC9SeymourUI14DownloadButton_toWidth] = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI14DownloadButton_contentWidthConstraint;
  v17 = *&a4[OBJC_IVAR____TtC9SeymourUI14DownloadButton_contentWidthConstraint];
  if (v17)
  {
    [v17 setActive_];
  }

  v18 = [v7 widthAnchor];
  v19 = [v18 constraintEqualToConstant_];

  v20 = *&a4[v16];
  *&a4[v16] = v19;
  v21 = v19;

  [v21 setActive_];
  [v7 setNeedsLayout];
  [v7 layoutIfNeeded];
  [a4 setNeedsLayout];
  [a4 layoutIfNeeded];
  v22 = [a4 superview];
  [v22 setNeedsLayout];

  v23 = [a4 superview];
  [v23 layoutIfNeeded];

  [v11 commit];
  swift_weakDestroy();
}

void sub_20B8D03A4()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA574DC(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B8D047C(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA63870(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B8D0538(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F30CC(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_20B8D060C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = v1 + OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_layout;
  *v4 = xmmword_20C1608F0;
  *(v4 + 16) = xmmword_20C160900;
  *(v4 + 32) = 0x4032000000000000;
  v5 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v6 = 16.0;
  }

  else
  {
    v6 = 4.0;
  }

  v7 = (v1 + OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_artworkView);
  v8 = [v5 layer];
  [v8 setCornerRadius_];

  [v5 setClipsToBounds_];
  *v7 = v5;
  v7[1] = &off_2822B63E8;
  v9 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_indexLabel;
  v10 = [objc_allocWithZone(type metadata accessor for IndexLabel()) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v10 &selRef_count + 2];
  *(v1 + v9) = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_titleLabel;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v12 &selRef_count + 2];
  [v12 setAdjustsFontForContentSizeCategory_];
  [v12 setLineBreakMode_];
  [v12 setNumberOfLines_];
  [v12 setAllowsDefaultTighteningForTruncation_];
  v13 = objc_opt_self();
  v14 = [v13 whiteColor];
  [v12 setTextColor_];

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v15) = v27;
  [v12 setContentHuggingPriority:1 forAxis:v15];

  *(v1 + v11) = v12;
  v16 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_subtitleLabel;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 setAdjustsFontForContentSizeCategory_];
  [v17 setLineBreakMode_];
  [v17 setNumberOfLines_];
  [v17 setAllowsDefaultTighteningForTruncation_];
  v18 = [v13 systemGrayColor];
  [v17 setTextColor_];

  sub_20C13BB94();
  LODWORD(v19) = v27;
  [v17 setContentHuggingPriority:1 forAxis:v19];

  *(v1 + v16) = v17;
  v20 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_downloadButton;
  v21 = [objc_allocWithZone(type metadata accessor for DownloadButton()) initWithFrame_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v22) = 1148846080;
  [v21 setContentHuggingPriority:0 forAxis:v22];
  LODWORD(v23) = 1148846080;
  [v21 setContentHuggingPriority:1 forAxis:v23];

  *(v1 + v20) = v21;
  v24 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_textBoxLayoutGuide;
  *(v1 + v24) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v25 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_indexLeadingConstraint;
  *(v1 + v25) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *(v1 + OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_isCurrentTitleRTL) = 0;
  v26 = OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_textBoxLayoutGuideLeadingConstraint;
  *(v1 + v26) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}