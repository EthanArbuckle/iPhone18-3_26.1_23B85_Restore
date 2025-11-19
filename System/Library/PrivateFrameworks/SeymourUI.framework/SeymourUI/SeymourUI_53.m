uint64_t sub_20BB09618@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  if (qword_27C760930 != -1)
  {
    swift_once();
  }

  v4 = qword_27C76A558;
  [qword_27C76A558 setMaximumFractionDigits_];
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v6 = [v4 stringFromNumber_];

  if (!v6)
  {
    sub_20BA18E84();
    swift_allocError();
    *v17 = 1;
    return swift_willThrow();
  }

  v7 = sub_20C13C954();
  v9 = v8;

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
  result = swift_allocObject();
  *(result + 16) = xmmword_20C14F980;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (a2 > -9.22337204e18)
  {
    if (a2 < 9.22337204e18)
    {
      v13 = MEMORY[0x277D83C10];
      *(result + 56) = MEMORY[0x277D83B88];
      *(result + 64) = v13;
      *(result + 32) = a2;
      v14 = sub_20C13C924();
      v16 = v15;

      *a1 = v7;
      a1[1] = v9;
      a1[2] = v14;
      a1[3] = v16;
      return result;
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_20BB09894@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>, double a3@<D0>)
{
  ObjectType = swift_getObjectType();
  v7 = sub_20BEC6C70(ObjectType, a1, a3);
  if (qword_27C760930 != -1)
  {
    swift_once();
  }

  v8 = qword_27C76A558;
  [qword_27C76A558 setMaximumFractionDigits_];
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v10 = [v8 stringFromNumber_];

  if (v10)
  {
    v11 = sub_20C13C954();
    v13 = v12;

    v14 = sub_20BEC6B94(ObjectType, a1);
    if (qword_27C760920 != -1)
    {
      swift_once();
    }

    v15 = [qword_27C76A548 unitStringFromValue:qword_20C16D338[v14] unit:v7];
    sub_20C13C954();

    sub_20B5F6EB0();
    v16 = sub_20C13D9E4();
    v18 = v17;

    *a2 = v11;
    a2[1] = v13;
    a2[2] = v16;
    a2[3] = v18;
  }

  else
  {
    sub_20BA18E84();
    swift_allocError();
    *v20 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_20BB09A9C@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  if (a2 >= 3600.0)
  {
    goto LABEL_25;
  }

  v4 = v2;
  if (qword_27C760950 != -1)
  {
LABEL_28:
    swift_once();
  }

  v5 = [qword_27C76A578 stringFromTimeInterval_];
  if (!v5)
  {
LABEL_25:
    sub_20BA18E84();
    swift_allocError();
    *v22 = 2;
    return swift_willThrow();
  }

  v23 = a1;
  v24 = v4;
  v6 = v5;
  a1 = sub_20C13C954();
  v8 = v7;

  v25 = a1;
  v26 = v8;
  v9 = sub_20BB0A13C();
  v11 = v10;
  v4 = (v8 & 0x2000000000000000) == 0;
  v12 = HIBYTE(v8) & 0xF;
  v13 = a1 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
LABEL_24:

    *v23 = a1;
    v23[1] = v8;
    v23[2] = 0;
    v23[3] = 0xE000000000000000;
    return result;
  }

  v15 = v9;
  v27 = v9;
  while (1)
  {
    if (sub_20C13CB84() == v15 && v16 == v11)
    {

      if (v4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v18 = sub_20C13DFF4();

      if ((v18 & 1) == 0)
      {
        goto LABEL_24;
      }

      if (v4)
      {
LABEL_15:
        v15 = v27;
        if (!v13)
        {
          goto LABEL_27;
        }

        goto LABEL_19;
      }
    }

    v15 = v27;
    if (!v12)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_19:
    sub_20C13CB84();

    result = sub_20C13CA94();
    if (v20)
    {
      break;
    }

    sub_20C13CA34();
    a1 = v25;
    v8 = v26;
    v4 = (v26 & 0x2000000000000000) == 0;
    v12 = HIBYTE(v26) & 0xF;
    v13 = v25 & 0xFFFFFFFFFFFFLL;
    if ((v26 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(v26) & 0xF;
    }

    else
    {
      v21 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (!v21)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

id sub_20BB09DB0(uint64_t a1, Class *a2, SEL *a3, uint64_t a4, void *a5)
{
  v8 = [objc_allocWithZone(*a2) init];
  result = [v8 *a3];
  *a5 = v8;
  return result;
}

id sub_20BB09E14(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v3 setAllowedUnits_];
  [v3 setUnitsStyle_];
  result = [v3 setZeroFormattingBehavior_];
  *a2 = v3;
  return result;
}

uint64_t sub_20BB09E8C()
{
  v0 = [objc_allocWithZone(type metadata accessor for PaceFormatter()) init];
  v1 = OBJC_IVAR____TtC9SeymourUI13PaceFormatter_isLocaleAware;
  result = swift_beginAccess();
  v0[v1] = 0;
  qword_27C76A580 = v0;
  return result;
}

uint64_t sub_20BB09EF8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v6 = a4 / a3;
  if (qword_27C760958 != -1)
  {
    v24 = v6;
    swift_once();
    v6 = v24;
  }

  v7 = sub_20B68D7B0(v6);
  if (v8)
  {
    v9 = v8;
    v25 = a1;
    v26 = v7;
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    sub_20C132964();

    sub_20B5F6EB0();
    v12 = MEMORY[0x277D837D0];
    sub_20C13D9E4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_20C14F980;
    ObjectType = swift_getObjectType();
    v15 = sub_20BEC6D38(ObjectType, v25);
    v16 = sub_20BB0A218(v15);
    v18 = v17;
    *(v13 + 56) = v12;
    *(v13 + 64) = sub_20B5D91B8();
    *(v13 + 32) = v16;
    *(v13 + 40) = v18;
    v19 = sub_20C13C924();
    v21 = v20;

    *a2 = v26;
    a2[1] = v9;
    a2[2] = v19;
    a2[3] = v21;
  }

  else
  {
    sub_20BA18E84();
    swift_allocError();
    *v23 = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_20BB0A13C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v0 setMaximumFractionDigits_];
  v1 = sub_20C13D014();
  v2 = [v0 stringForObjectValue_];

  if (v2 && (v3 = sub_20C13C954(), v5 = v4, v2, v6 = sub_20BEDD594(v3, v5), v8 = v7, , v8))
  {

    return v6;
  }

  else
  {

    return 48;
  }
}

uint64_t sub_20BB0A218(char a1)
{
  if (qword_27C760928 != -1)
  {
    swift_once();
  }

  v2 = [qword_27C76A550 unitStringFromValue:qword_20C16D350[a1] unit:?];
  sub_20C13C954();

  sub_20B5F6EB0();
  v3 = sub_20C13D9E4();

  return v3;
}

uint64_t sub_20BB0A2FC()
{
  v1 = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_containerBuilder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20BB0A344(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_containerBuilder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20BB0A3B8(uint64_t a1, void *a2, float a3, double a4)
{
  v9 = sub_20C132EE4();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_20C1321F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763868);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v27 - v16;
  v18 = v4 + *a2;
  swift_beginAccess();
  if (a4 <= 0.0)
  {
    v20 = 0;
    v22 = LODWORD(a3);
  }

  else
  {
    v29 = a3;
    v27[3] = 0;
    v19 = a1;
    v20 = 1;
    v28 = 1;
    (*(v11 + 16))(v13, v19, v10);
    sub_20C132ED4();
    sub_20C132474();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766470);
    v21 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_20C14F980;
    (*(v15 + 32))(v22 + v21, v17, v14);
  }

  v23 = v18 + *(type metadata accessor for ContainerNodeBuilder() + 32);
  v24 = *v23;
  *v23 = v22;
  v25 = *(v23 + 8);
  *(v23 + 8) = v20;
  sub_20B584060(v24, v25);
  return swift_endAccess();
}

uint64_t sub_20BB0A678()
{
  v1 = OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_containerBuilder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20BB0A6C0(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_containerBuilder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20BB0A734()
{
  v1 = OBJC_IVAR____TtC9SeymourUI20IntensityNodeBuilder_containerBuilder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20BB0A77C(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20IntensityNodeBuilder_containerBuilder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20BB0A7F0()
{
  v1 = OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_containerBuilder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20BB0A838(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_containerBuilder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20BB0A8AC()
{
  v1 = OBJC_IVAR____TtC9SeymourUI16RingsNodeBuilder_containerBuilder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20BB0A8F4(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI16RingsNodeBuilder_containerBuilder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20BB0A968()
{
  v1 = OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder_containerBuilder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20BB0A9B0(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder_containerBuilder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20BB0AA24()
{
  v1 = OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_containerBuilder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20BB0AA6C(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_containerBuilder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20BB0AAE0()
{
  v1 = OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_containerBuilder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20BB0AB28(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI16TimerNodeBuilder_containerBuilder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20BB0AB9C()
{
  v1 = OBJC_IVAR____TtC9SeymourUI20SeparatorNodeBuilder_containerBuilder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20BB0ABE4(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20SeparatorNodeBuilder_containerBuilder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20BB0AC58()
{
  v1 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_containerBuilder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20BB0ACA0(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_containerBuilder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20BB0AD14()
{
  v1 = OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_containerBuilder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20BB0AD5C(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_containerBuilder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20BB0ADD0()
{
  v1 = OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_containerBuilder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20BB0AE18(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22StackedTextNodeBuilder_containerBuilder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20BB0AE8C()
{
  v1 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_containerBuilder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20BB0AED4(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_containerBuilder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20BB0AF48()
{
  v1 = OBJC_IVAR____TtC9SeymourUI26ActivityMetricsNodeBuilder_containerBuilder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20BB0AF90(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26ActivityMetricsNodeBuilder_containerBuilder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20BB0B004()
{
  v1 = OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_containerBuilder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20BB0B04C(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_containerBuilder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20BB0B0C0()
{
  v1 = OBJC_IVAR____TtC9SeymourUI18BurnBarNodeBuilder_containerBuilder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20BB0B108(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18BurnBarNodeBuilder_containerBuilder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20BB0B17C()
{
  v1 = OBJC_IVAR____TtC9SeymourUI31ActivityRingsPlatterNodeBuilder_containerBuilder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20BB0B1C4(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31ActivityRingsPlatterNodeBuilder_containerBuilder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_20BB0B2C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicScrollObservingBarButtonItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BB0B32C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 8))(a1, ObjectType, v3);
}

uint64_t sub_20BB0B39C()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v49 = (&v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_browsingStringBuilder), *(v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_browsingStringBuilder + 24));
  v4 = sub_20C138D34();
  v6 = v5;
  v7 = sub_20B7B2BBC();
  v9 = v8;
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_platform) == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_20C14F980;
    v11 = swift_allocObject();
    *(v11 + 16) = v4;
    *(v11 + 24) = v6;
    *(v11 + 32) = v7;
    *(v11 + 40) = v9;
    *(v10 + 32) = v11 | 0x3000000000000000;
    v52 = 0uLL;
    LOBYTE(v53) = 1;
    *(&v53 + 1) = 0;
    *&v54 = 0;
    WORD4(v54) = 128;
    v12 = 0uLL;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    LOBYTE(v58) = 0;
    v13 = MEMORY[0x277D84F90];
    *(&v58 + 1) = v10;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_storefrontLocalizer + 24));
    v14 = sub_20C138D34();
    v47 = v15;
    v48 = v14;
    sub_20B51C88C(0, &qword_27C7713A0);
    v16 = sub_20C13D624();
    v17 = swift_allocObject();
    *(v17 + 16) = 1;
    *(v17 + 40) = v4;
    *(v17 + 48) = v6;
    *(v17 + 56) = v7;
    *(v17 + 64) = v9;
    v18 = sub_20C13C914();
    v19 = [objc_opt_self() systemImageNamed_];

    v20 = v47;
    v21 = v48;
    *(v17 + 72) = v19;
    *(v17 + 80) = v21;
    *(v17 + 88) = v20;
    *(v17 + 96) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_20C14F980;
    *(v22 + 32) = v17 | 0x1000000000000006;
    v52 = 0uLL;
    LOBYTE(v53) = 1;
    *(&v53 + 1) = 0;
    *&v54 = 0;
    WORD4(v54) = 128;
    v12 = 0uLL;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    LOBYTE(v58) = 0;
    v13 = MEMORY[0x277D84F90];
    *(&v58 + 1) = v22;
  }

  *&v59[0] = v13;
  *(v59 + 8) = v12;
  *(&v59[1] + 8) = v12;
  *(&v59[2] + 1) = 0;
  v60 = 2;
  nullsub_1(&v52);
  v23 = v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 144);
  v61[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 128);
  v61[9] = v24;
  v62 = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 160);
  v25 = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 80);
  v61[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 64);
  v61[5] = v25;
  v26 = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 112);
  v61[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 96);
  v61[7] = v26;
  v27 = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 16);
  v61[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row);
  v61[1] = v27;
  v28 = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 48);
  v61[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 32);
  v61[3] = v28;
  v29 = v59[2];
  *(v23 + 128) = v59[1];
  *(v23 + 144) = v29;
  *(v23 + 160) = v60;
  v30 = v57;
  *(v23 + 64) = v56;
  *(v23 + 80) = v30;
  v31 = v59[0];
  *(v23 + 96) = v58;
  *(v23 + 112) = v31;
  v32 = v53;
  *v23 = v52;
  *(v23 + 16) = v32;
  v33 = v55;
  *(v23 + 32) = v54;
  *(v23 + 48) = v33;
  sub_20B520158(v61, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v35 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v36 = sub_20B61CEE8(v1, result);
      if (v37)
      {
        v39 = v36;
        v40 = v37;
        v41 = v38;
        sub_20B51C88C(0, &qword_281100530);
        v42 = sub_20C13D374();
        v44 = v49;
        v43 = v50;
        *v49 = v42;
        v45 = v51;
        (*(v43 + 104))(v44, *MEMORY[0x277D85200], v51);
        v46 = sub_20C13C584();
        result = (*(v43 + 8))(v44, v45);
        if ((v46 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B620474(v39, v40, v41, v1, 0, v35);
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

uint64_t sub_20BB0B8F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_20C132C14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13C954();
  sub_20C132C04();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_20B520158(v2, &unk_27C7617F0);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = [objc_opt_self() sharedApplication];
  v9 = sub_20C132B64();
  sub_20B6B3B84(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_20BB0BE80();
  v10 = sub_20C13C744();

  [v8 openURL:v9 options:v10 completionHandler:0];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20BB0BB2C()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);
  sub_20B8B9DF8(v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_browsingStringBuilder);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_storefrontLocalizer);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OfflineWorkoutsEmptyShelf()
{
  result = qword_27C76A590;
  if (!qword_27C76A590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BB0BC94()
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

uint64_t sub_20BB0BD58@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BB0BDD0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row + 32);
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

unint64_t sub_20BB0BE80()
{
  result = qword_27C761D60;
  if (!qword_27C761D60)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C761D60);
  }

  return result;
}

uint64_t sub_20BB0BED8()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v2 = v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_row;
  sub_20B5D8060(v12);
  v3 = v12[9];
  *(v2 + 128) = v12[8];
  *(v2 + 144) = v3;
  *(v2 + 160) = v13;
  v4 = v12[5];
  *(v2 + 64) = v12[4];
  *(v2 + 80) = v4;
  v5 = v12[7];
  *(v2 + 96) = v12[6];
  *(v2 + 112) = v5;
  v6 = v12[1];
  *v2 = v12[0];
  *(v2 + 16) = v6;
  v7 = v12[3];
  *(v2 + 32) = v12[2];
  *(v2 + 48) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  v8 = OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_storefrontLocalizer;
  sub_20B52E424(&v11, v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_storefrontLocalizer);
  sub_20C133AA4();
  LOBYTE(v2) = v11;
  *(v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_platform) = v11;
  v9 = v0 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_browsingStringBuilder;
  sub_20B51CC64(v1 + v8, v1 + OBJC_IVAR____TtC9SeymourUI25OfflineWorkoutsEmptyShelf_browsingStringBuilder);
  *(v9 + 40) = v2;
  return v1;
}

uint64_t sub_20BB0C00C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = sub_20C13BB84();
  v4 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v59 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - v14;
  v16 = sub_20C132C14();
  v61 = *(v16 - 8);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [v2 actionParameters];
  if (v20)
  {
    v21 = v20;
    v60 = v16;
    v62 = a1;
    v22 = sub_20C13C754();

    v64 = sub_20C135574();
    v65 = v23;
    sub_20C13DC04();
    if (*(v22 + 16) && (v24 = sub_20B65B190(v66), (v25 & 1) != 0))
    {
      sub_20B51F1D8(*(v22 + 56) + 32 * v24, v67);
      sub_20B51D9C4(v66);
      if (swift_dynamicCast())
      {
        v27 = v64;
        v26 = v65;
        v28 = [v2 url];
        if (v28)
        {
          v29 = v28;
          sub_20C132B94();

          if (v27 == 1802398060 && v26 == 0xE400000000000000)
          {

            v30 = v60;
LABEL_24:

            v47 = [v2 identifier];
            v48 = sub_20C13C954();
            v50 = v49;

            sub_20BB0C740(v48, v50, v19, v62);
LABEL_25:

            return (*(v61 + 8))(v19, v30);
          }

          v46 = sub_20C13DFF4();
          v30 = v60;
          if (v46)
          {

            goto LABEL_24;
          }

          if (v27 == 0x6F65646976 && v26 == 0xE500000000000000)
          {

LABEL_30:
            v52 = [v2 identifier];
            v53 = sub_20C13C954();
            v55 = v54;

            sub_20BB0CCA8(v53, v55, v19, v22, v62);

            goto LABEL_25;
          }

          v51 = sub_20C13DFF4();

          if (v51)
          {
            goto LABEL_30;
          }

          sub_20C13B424();
          v56 = sub_20C13BB74();
          v57 = sub_20C13D1D4();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            *v58 = 0;
            _os_log_impl(&dword_20B517000, v56, v57, "Engagement message action parameters contains invalid type", v58, 2u);
            MEMORY[0x20F2F6A40](v58, -1, -1);
          }

          (*(v4 + 8))(v15, v63);
          (*(v61 + 8))(v19, v30);
        }

        else
        {

          sub_20C13B424();
          v42 = sub_20C13BB74();
          v43 = sub_20C13D1D4();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            _os_log_impl(&dword_20B517000, v42, v43, "Engagement message action missing url", v44, 2u);
            MEMORY[0x20F2F6A40](v44, -1, -1);
          }

          (*(v4 + 8))(v12, v63);
        }

        v45 = sub_20C135E74();
        return (*(*(v45 - 8) + 56))(v62, 1, 1, v45);
      }
    }

    else
    {

      sub_20B51D9C4(v66);
    }

    sub_20C13B424();
    v31 = sub_20C13BB74();
    v32 = sub_20C13D1D4();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v62;
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_20B517000, v31, v32, "Engagement message action parameters missing type", v35, 2u);
      MEMORY[0x20F2F6A40](v35, -1, -1);
    }

    (*(v4 + 8))(v9, v63);
    v36 = sub_20C135E74();
    return (*(*(v36 - 8) + 56))(v34, 1, 1, v36);
  }

  else
  {
    sub_20C13B424();
    v38 = sub_20C13BB74();
    v39 = sub_20C13D1D4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_20B517000, v38, v39, "Engagement message action missing parameters", v40, 2u);
      MEMORY[0x20F2F6A40](v40, -1, -1);
    }

    (*(v4 + 8))(v6, v63);
    v41 = sub_20C135E74();
    return (*(*(v41 - 8) + 56))(a1, 1, 1, v41);
  }
}

uint64_t sub_20BB0C740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a1;
  v32 = a2;
  v36 = a4;
  v5 = sub_20C13BB84();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C136DD4();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C132C14();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v33 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767810);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v28 - v21;
  v23 = *(v11 + 16);
  v23(v18, a3, v10, v20);
  sub_20BBD6CD8(v18, v22);
  v24 = type metadata accessor for NavigationResource();
  (*(*(v24 - 8) + 56))(v22, 0, 1, v24);
  sub_20BB0D2B8(v22);
  (v23)(v15, a3, v10);

  sub_20C136DA4();
  v25 = v36;
  (*(v29 + 32))(v36, v9, v30);
  v26 = sub_20C135E74();
  swift_storeEnumTagMultiPayload();
  return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
}

uint64_t sub_20BB0CCA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a3;
  v48 = a1;
  v49 = a2;
  v50 = a5;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v44 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v44 - v14;
  v16 = sub_20C132C14();
  v46 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20C137124();
  v45 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_20C1355D4();
  v52 = v22;
  sub_20C13DC04();
  if (!*(a4 + 16) || (v23 = sub_20B65B190(v53), (v24 & 1) == 0))
  {
    sub_20B51D9C4(v53);
    goto LABEL_12;
  }

  sub_20B51F1D8(*(a4 + 56) + 32 * v23, v54);
  sub_20B51D9C4(v53);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_20C13B424();
    v34 = sub_20C13BB74();
    v35 = sub_20C13D1D4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_20B517000, v34, v35, "Engagement message action missing video watched event", v36, 2u);
      MEMORY[0x20F2F6A40](v36, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    goto LABEL_15;
  }

  v25 = v52;
  v44[2] = v51;
  v51 = sub_20C1355E4();
  v52 = v26;
  sub_20C13DC04();
  if (!*(a4 + 16) || (v27 = sub_20B65B190(v53), (v28 & 1) == 0))
  {
    sub_20B51D9C4(v53);
LABEL_17:

    sub_20C13B424();
    v38 = sub_20C13BB74();
    v39 = sub_20C13D1D4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_20B517000, v38, v39, "Engagement message action missing video watched threshold", v40, 2u);
      MEMORY[0x20F2F6A40](v40, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    goto LABEL_15;
  }

  sub_20B51F1D8(*(a4 + 56) + 32 * v27, v54);
  sub_20B51D9C4(v53);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v44[1] = v25;
  v53[0] = 0.0;
  v29 = sub_20BB0D320(v51, v52);

  if (!v29)
  {
    goto LABEL_17;
  }

  v30 = v53[0];
  if (v53[0] >= 0.0 && v53[0] <= 1.0)
  {
    (*(v46 + 16))(v18, v47, v16);

    sub_20C1370E4();
    v31 = v50;
    (*(v45 + 32))(v50, v21, v19);
    v32 = sub_20C135E74();
    swift_storeEnumTagMultiPayload();
    return (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  }

  sub_20C13B424();
  v41 = sub_20C13BB74();
  v42 = sub_20C13D1D4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 134349056;
    *(v43 + 4) = v30;
    _os_log_impl(&dword_20B517000, v41, v42, "Invalid threshold %{public}f", v43, 0xCu);
    MEMORY[0x20F2F6A40](v43, -1, -1);
  }

  (*(v7 + 8))(v15, v6);
LABEL_15:
  v37 = sub_20C135E74();
  return (*(*(v37 - 8) + 56))(v50, 1, 1, v37);
}

uint64_t sub_20BB0D2B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_20BB0D320(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_20C13DC64();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

_BYTE *sub_20BB0D418@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_20BB0D498()
{
  sub_20B593250(v0 + OBJC_IVAR____TtC9SeymourUI20SeparatorNodeBuilder_containerBuilder);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI20SeparatorNodeBuilder_parent);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SeparatorNodeBuilder()
{
  result = qword_27C76A5A0;
  if (!qword_27C76A5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BB0D560()
{
  result = type metadata accessor for ContainerNodeBuilder();
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

uint64_t sub_20BB0D5F8()
{
  v39 = sub_20C132EE4();
  v1 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - v6;
  v8 = sub_20C132254();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v0 + OBJC_IVAR____TtC9SeymourUI20SeparatorNodeBuilder_containerBuilder);
  sub_20C132454();
  (*(v9 + 104))(v11, *MEMORY[0x277CE9CC0], v8);
  v12[1] = 2;
  sub_20C132ED4();
  sub_20C132104();
  (*(v1 + 8))(v3, v39);
  v13 = type metadata accessor for ContainerNodeBuilder();
  sub_20C131F24();
  (*(v5 + 8))(v7, v4);
  *v12 = 1;
  v14 = sub_20C131F44();
  v15 = &v12[v13[7]];
  *v15 = v14;
  v15[8] = v16;
  v17 = sub_20C131FD4();
  v18 = &v12[v13[8]];
  *v18 = v17;
  v18[8] = v19;
  v20 = sub_20C131FE4();
  v21 = &v12[v13[9]];
  *v21 = v20;
  *(v21 + 1) = v22;
  v21[20] = v23;
  *(v21 + 4) = v24;
  v21[21] = v25;
  v26 = sub_20C132384();
  v27 = &v12[v13[10]];
  *v27 = v26 & 0xFFFFFFFFFFLL;
  v27[12] = v28;
  *(v27 + 2) = v29;
  v27[13] = 0;
  v30 = sub_20C132004();
  v32 = v31;
  v34 = v33;
  LOBYTE(v1) = v35;
  (*(v9 + 8))(v11, v8);
  v36 = &v12[v13[11]];
  *v36 = v30;
  *(v36 + 1) = v32;
  *(v36 + 2) = v34;
  v36[24] = v1;
  v37 = v40;
  *(v40 + OBJC_IVAR____TtC9SeymourUI20SeparatorNodeBuilder_parent + 8) = 0;
  swift_unknownObjectWeakInit();
  return v37;
}

uint64_t sub_20BB0D988()
{
  v1 = type metadata accessor for ContainerNodeBuilder();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v19 - v12;
  v14 = OBJC_IVAR____TtC9SeymourUI20SeparatorNodeBuilder_containerBuilder;
  swift_beginAccess();
  sub_20B6B5ADC(v0 + v14, v3);
  sub_20B7E27F8(v7);
  sub_20B593250(v3);
  sub_20C1323C4();
  sub_20C131F94();
  v15 = *(v5 + 8);
  v15(v7, v4);
  sub_20C1323A4();
  sub_20C131FF4();
  v15(v10, v4);
  sub_20C1323F4();
  v19[1] = v16;
  v19[2] = v17;
  sub_20C131F54();
  return (v15)(v13, v4);
}

uint64_t sub_20BB0DBE0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI20SeparatorNodeBuilder_parent + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BB0DC30()
{
  sub_20B583E6C(v0 + 16);

  return swift_deallocClassInstance();
}

char *sub_20BB0DC8C(void (*a1)(char *), unsigned int a2)
{
  v3 = v2;
  v180 = a2;
  v181 = a1;
  v159 = *v2;
  v174 = sub_20C1321D4();
  v185 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v172 = &v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  v186 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v173 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v175 = &v148 - v7;
  MEMORY[0x28223BE20](v8);
  v176 = &v148 - v9;
  v183 = sub_20C132144();
  v190 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v187 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_20C132154();
  v191 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v161 = (&v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v166 = &v148 - v13;
  MEMORY[0x28223BE20](v14);
  v182 = &v148 - v15;
  v184 = sub_20C132164();
  v188 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v160 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v165 = &v148 - v18;
  v19 = sub_20C132EE4();
  v171 = v19;
  v189 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v148 - v24;
  v26 = sub_20C132254();
  v179 = v26;
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v148 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_isAnimating) = 0;
  v30 = v3 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_containerBuilder;
  sub_20C132454();
  (*(v27 + 104))(v29, *MEMORY[0x277CE9CC0], v26);
  v30[1] = 2;
  v170 = v21;
  sub_20C132ED4();
  sub_20C132104();
  v31 = *(v189 + 8);
  v189 += 8;
  v168 = v31;
  v31(v21, v19);
  v32 = type metadata accessor for ContainerNodeBuilder();
  sub_20C131F24();
  (*(v23 + 8))(v25, v22);
  *v30 = 1;
  v33 = sub_20C131F44();
  v34 = &v30[v32[7]];
  *v34 = v33;
  v34[8] = v35;
  v36 = sub_20C131FD4();
  v37 = &v30[v32[8]];
  *v37 = v36;
  v37[8] = v38;
  v39 = sub_20C131FE4();
  v40 = &v30[v32[9]];
  *v40 = v39;
  *(v40 + 1) = v41;
  v40[20] = v42;
  *(v40 + 4) = v43;
  v40[21] = v44;
  v45 = sub_20C132384();
  v46 = &v30[v32[10]];
  *v46 = v45 & 0xFFFFFFFFFFLL;
  v46[12] = v47;
  *(v46 + 2) = v48;
  v46[13] = 0;
  v49 = sub_20C132004();
  v51 = v50;
  v53 = v52;
  LOBYTE(v23) = v54;
  (*(v27 + 8))(v29, v179);
  v55 = &v30[v32[11]];
  *v55 = v49;
  *(v55 + 1) = v51;
  *(v55 + 2) = v53;
  v55[24] = v23;
  *(v3 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_parent + 8) = 0;
  swift_unknownObjectWeakInit();
  if (v180)
  {
    v56 = 37;
  }

  else
  {
    v56 = v181;
  }

  v151 = v56;
  *(v3 + 48) = 0;
  v3[5] = 0x403E000000000000;
  v3[2] = sub_20BFF00E0(v56);
  v3[3] = v57;
  v3[4] = v58;
  v59 = v3;
  v163 = v3;
  v60 = objc_allocWithZone(MEMORY[0x277D75348]);
  *&v61 = 1.0;
  v162 = v61;
  v62 = [v60 initWithRed:0.945098039 green:0.843137255 blue:0.894117647 alpha:1.0];
  LODWORD(v164) = *MEMORY[0x277CE9BD8];
  v63 = v191;
  v64 = v191 + 104;
  v181 = *(v191 + 104);
  v65 = v182;
  v66 = v169;
  v181(v182);
  v167 = v64;
  v180 = *MEMORY[0x277CE9BC8];
  v67 = *(v190 + 104);
  v190 += 104;
  v179 = v67;
  v68 = v183;
  v67(v187);
  v69 = swift_allocObject();
  *(v69 + 16) = 0x722E657275676966;
  *(v69 + 24) = 0xEA00000000006E75;
  *(v69 + 40) = 0;
  *(v69 + 48) = 0;
  *(v69 + 32) = v62;
  *(v69 + 56) = 1;
  *(v69 + 64) = 0xD000000000000012;
  *(v69 + 72) = 0x800000020C1A7D70;
  v70 = v165;
  sub_20C132124();
  v71 = (v188 + 32);
  v178 = *(v188 + 32);
  v72 = v184;
  v178(&v59[OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_fallbackAsset], v70, v184);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v159 = ObjCClassFromMetadata;
  v158 = objc_opt_self();
  v74 = [v158 bundleForClass_];
  (v181)(v65, v164, v66);
  v75 = v63 + 16;
  v76 = *(v63 + 16);
  v76(v166, v65, v66);
  v179(v187, v180, v68);
  v77 = swift_allocObject();
  *(v77 + 16) = 0xD000000000000013;
  *(v77 + 24) = 0x800000020C1A7D90;
  *(v77 + 32) = v74;
  v157 = xmmword_20C16D600;
  *(v77 + 40) = xmmword_20C16D600;
  *(v77 + 56) = 0x800000020C1A7D90;
  v78 = v165;
  sub_20C132124();
  v79 = *(v191 + 8);
  v191 += 8;
  v80 = v182;
  v79(v182, v66);
  v178(&v163[OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_middleBubbleAsset], v78, v72);
  v81 = [v158 bundleForClass_];
  (v181)(v80, v164, v66);
  v154 = v75;
  v153 = v76;
  v76(v166, v80, v66);
  v179(v187, v180, v183);
  v82 = swift_allocObject();
  *(v82 + 16) = 0xD000000000000013;
  *(v82 + 24) = 0x800000020C1A7DB0;
  *(v82 + 32) = v81;
  *(v82 + 40) = v157;
  *(v82 + 56) = 0x800000020C1A7DB0;
  sub_20C132124();
  v152 = v79;
  v79(v80, v66);
  v83 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_behindBubbleAsset;
  v84 = v163;
  v85 = v184;
  v166 = v71;
  v178(&v163[OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_behindBubbleAsset], v78, v184);
  v86 = *(v188 + 16);
  v87 = v172;
  v188 += 16;
  v155 = v86;
  v86(v172, &v84[v83], v85);
  v88 = *MEMORY[0x277CE9C40];
  v89 = v185;
  v90 = *(v185 + 104);
  v91 = v174;
  v159 = v185 + 104;
  v158 = v90;
  (v90)(v87, v88, v174);
  v92 = v170;
  sub_20C132ED4();
  v93 = v173;
  sub_20C1320E4();
  v168(v92, v171);
  v94 = *(v89 + 8);
  v185 = v89 + 8;
  *&v157 = v94;
  v94(v87, v91);
  sub_20C1323A4();
  v95 = v175;
  v96 = v177;
  v97 = v93;
  sub_20C131FF4();
  v98 = v186;
  v99 = (v186 + 8);
  v100 = *(v186 + 8);
  v100(v97, v96);
  sub_20C132414();
  v192 = v101;
  v193 = v102;
  v103 = v176;
  sub_20C131F54();
  v165 = v99;
  v164 = v100;
  v100(v95, v96);
  v104 = *(v98 + 32);
  v186 = v98 + 32;
  v156 = v104;
  v104(&v84[OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_bubbleNode], v103, v96);
  v192 = 0;
  v193 = 0xE000000000000000;
  sub_20C13DC94();

  v192 = 0xD000000000000022;
  v193 = 0x800000020C1A7DD0;
  v194 = v151;
  v105 = sub_20C13DFA4();
  MEMORY[0x20F2F4230](v105);

  v106 = v193;
  v151 = v192;
  v107 = *(v84 + 2);
  v108 = *(v84 + 3);
  v109 = *(v84 + 4);
  v110 = objc_allocWithZone(MEMORY[0x277D75348]);
  v111 = v107;
  v150 = [v110 initWithRed:0.945098039 green:0.843137255 blue:0.894117647 alpha:1.0];
  *&v112 = 0;
  if (v107)
  {
    v113 = v111;
    [v113 scale];
    v162 = v114;
    [v113 size];
    v116 = v115;

    *&v112 = v116 / v108;
  }

  v149 = v112;
  sub_20C07D308(v107, v108, v109);
  v148 = v117;
  sub_20C132424();
  *&v118.f64[0] = v149;
  *&v118.f64[1] = v148;
  v119 = v161;
  *v161 = vcvt_f32_f64(vmulq_n_f64(v118, *&v162));
  v119[1].i32[0] = v120;
  v119[1].i32[1] = v121;
  v119[2] = v109;
  v122 = v169;
  (v181)(v119, *MEMORY[0x277CE9BD0], v169);
  v153(v182, v119, v122);
  v179(v187, v180, v183);
  v123 = swift_allocObject();
  v123[2] = v107;
  v123[3] = v108;
  v124 = v150;
  v123[4] = v109;
  v123[5] = v124;
  v123[6] = v151;
  v123[7] = v106;

  v125 = v160;
  sub_20C132124();
  v152(v119, v122);
  v126 = v184;
  v178(&v84[OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_modalityAsset], v125, v184);
  v127 = *(v84 + 2);
  if (v127)
  {
    [v127 size];
    v128 = *(v84 + 2);
    if (v128)
    {
      [v128 size];
      v129 = *(v84 + 2);
    }

    else
    {
      v129 = 0;
    }
  }

  else
  {
    v129 = 0;
  }

  v130 = *(v84 + 3);
  v131 = *(v84 + 4);
  v132 = v129;
  sub_20C07D308(v129, v130, v131);

  v133 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A5D8) + 48);
  v134 = v172;
  v155(v172, &v84[OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_modalityAsset], v126);
  v135 = *MEMORY[0x277CE9D18];
  v136 = sub_20C1322F4();
  (*(*(v136 - 8) + 104))(&v134[v133], v135, v136);
  v137 = v174;
  (v158)(v134, *MEMORY[0x277CE9C38], v174);
  v138 = v170;
  sub_20C132ED4();
  v139 = v173;
  sub_20C1320E4();
  v168(v138, v171);
  (v157)(v134, v137);
  sub_20C1323A4();
  v140 = v175;
  v141 = v177;
  sub_20C131FF4();
  v142 = v164;
  v164(v139, v141);
  sub_20C132414();
  v192 = v143;
  v193 = v144;
  v145 = v176;
  sub_20C131F54();
  v142(v140, v141);
  v156(&v84[OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_modalityNode], v145, v141);
  sub_20BB0F020();
  v146 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_containerBuilder;
  swift_beginAccess();
  v84[v146] = 0;
  return v84;
}

uint64_t sub_20BB0F020()
{
  v1 = sub_20C1321D4();
  v78 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v72 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v72 - v12;
  MEMORY[0x28223BE20](v14);
  v79 = v13;
  v80 = &v72 - v15;
  v16 = v0;
  v17 = *(v0 + 48);
  if ((v17 - 1) >= 3)
  {
    v31 = v1;
    v32 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_bubbleNode;
    if (v17)
    {
      v73 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_bubbleNode;
      swift_beginAccess();
      v48 = v5;
      v49 = *(v5 + 16);
      v75 = (v5 + 16);
      v76 = v49;
      v50 = v16 + v32;
      v51 = v7;
      v52 = v7;
      v53 = v4;
      v49(v51, v50, v4);
      v54 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_behindBubbleAsset;
      v55 = sub_20C132164();
      (*(*(v55 - 8) + 16))(v3, v16 + v54, v55);
      v56 = v78;
      (*(v78 + 13))(v3, *MEMORY[0x277CE9C40], v31);
      sub_20C1320D4();
      (*(v56 + 1))(v3, v31);
      v57 = v80;
      v58 = v48;
      v59 = (v48 + 8);
      v60 = *(v48 + 8);
      v60(v52, v53);
      sub_20C1323A4();
      v61 = v79;
      sub_20C131FF4();
      v74 = v59;
      v60(v10, v53);
      v78 = v60;
      sub_20C132514();
      sub_20C131F64();
      v60(v61, v53);
      v62 = v73;
      swift_beginAccess();
      v63 = *(v58 + 40);
      v63(v16 + v62, v57, v53);
      swift_endAccess();
      v64 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_modalityNode;
      swift_beginAccess();
      v65 = sub_20C131FB4();
      v67 = v66;
      v68 = v66 >> 40;
      swift_endAccess();
      sub_20B81964C(v65, v67 & 0xFFFFFFFFFFFFLL);
      sub_20B81DC54(v65, v67, v68);
      sub_20C1323F4();
      v83 = v69;
      v84 = v70;
      v76(v61, v16 + v64, v53);
      v71 = v80;
      sub_20C131F54();
      v78(v61, v53);
      swift_beginAccess();
      v63(v16 + v64, v71, v53);
    }

    else
    {
      swift_beginAccess();
      v33 = *(v5 + 16);
      v75 = (v5 + 16);
      v76 = v33;
      v77 = v5;
      v34 = v32;
      v35 = v4;
      v33(v7, v16 + v32, v4);
      v36 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_behindBubbleAsset;
      v37 = sub_20C132164();
      (*(*(v37 - 8) + 16))(v3, v16 + v36, v37);
      v38 = v78;
      (*(v78 + 13))(v3, *MEMORY[0x277CE9C40], v31);
      sub_20C1320D4();
      (*(v38 + 1))(v3, v31);
      v39 = v77;
      v40 = *(v77 + 8);
      v40(v7, v35);
      sub_20C1323A4();
      v41 = v79;
      sub_20C131FF4();
      v40(v10, v35);
      v78 = v40;
      sub_20C132504();
      v42 = v80;
      sub_20C131F64();
      v40(v41, v35);
      swift_beginAccess();
      v43 = *(v39 + 40);
      v77 = v39 + 40;
      v74 = v43;
      (v43)(v16 + v34, v42, v35);
      swift_endAccess();
      sub_20C1323F4();
      v83 = v44;
      v84 = v45;
      v46 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_modalityNode;
      swift_beginAccess();
      v76(v41, v16 + v46, v35);
      sub_20C131F54();
      v78(v41, v35);
      swift_beginAccess();
      (v74)(v16 + v46, v42, v35);
    }
  }

  else
  {
    v18 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_bubbleNode;
    v74 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_bubbleNode;
    swift_beginAccess();
    v19 = v5;
    v75 = *(v5 + 16);
    v76 = (v5 + 16);
    v20 = v78;
    v75(v7, v0 + v18, v4);
    v77 = v5;
    v21 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_middleBubbleAsset;
    v22 = sub_20C132164();
    (*(*(v22 - 8) + 16))(v3, v0 + v21, v22);
    (*(v20 + 13))(v3, *MEMORY[0x277CE9C40], v1);
    sub_20C1320D4();
    (*(v20 + 1))(v3, v1);
    v23 = *(v19 + 8);
    v23(v7, v4);
    sub_20C1323A4();
    v24 = v79;
    sub_20C131FF4();
    v23(v10, v4);
    sub_20C132504();
    v25 = v80;
    sub_20C131F64();
    v23(v24, v4);
    v26 = v74;
    swift_beginAccess();
    v27 = *(v77 + 40);
    v27(&v26[v0], v25, v4);
    swift_endAccess();
    v28 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_modalityNode;
    swift_beginAccess();
    v75(v24, v0 + v28, v4);
    sub_20C132414();
    v81 = v29;
    v82 = v30;
    sub_20C131F54();
    v23(v24, v4);
    swift_beginAccess();
    v27((v0 + v28), v25, v4);
  }

  return swift_endAccess();
}

void sub_20BB0F9F0()
{
  v1 = sub_20C1321D4();
  v63 = *(v1 - 8);
  v64 = v1;
  MEMORY[0x28223BE20](v1);
  v61 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  v62 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v59 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v60 = &v51 - v5;
  v6 = sub_20C132164();
  v57 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_20C132314();
  v58 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v67 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C132EE4();
  MEMORY[0x28223BE20](v9 - 8);
  v55 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_20C1321F4();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A5C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v51 - v14;
  v16 = sub_20C132294();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A5C8);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v51 - v24;
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_isAnimating) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_isAnimating) = 1;
    v52 = v6;
    v26 = v23;
    sub_20C132284();
    (*(v17 + 56))(v15, 1, 1, v16);
    (*(v53 + 104))(v12, *MEMORY[0x277CE9C70], v54);
    sub_20C132ED4();
    sub_20BB10D98(&qword_27C76A5D0, MEMORY[0x277CE9D10]);
    sub_20C132474();
    v27 = *(v57 + 16);
    v28 = v52;
    v27(v56, v0 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_fallbackAsset, v52);
    v55 = v19;
    v29 = v19[2];
    v54 = v25;
    v57 = v26;
    (v29)(v21, v25, v26);
    sub_20C132304();
    v30 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_modalityNode;
    swift_beginAccess();
    v31 = v62;
    v32 = v59;
    (*(v62 + 16))(v59, v0 + v30, v66);
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A5D8) + 48);
    v34 = v61;
    v27(v61, v0 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_modalityAsset, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A5E0);
    v35 = v58;
    v36 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_20C14F980;
    (*(v35 + 16))(v37 + v36, v67, v65);
    *&v34[v33] = v37;
    v38 = *MEMORY[0x277CE9D20];
    v39 = sub_20C1322F4();
    (*(*(v39 - 8) + 104))(&v34[v33], v38, v39);
    v41 = v63;
    v40 = v64;
    (*(v63 + 104))(v34, *MEMORY[0x277CE9C38], v64);
    v42 = v60;
    v43 = v0;
    sub_20C1320D4();
    (*(v41 + 8))(v34, v40);
    v44 = v66;
    (*(v31 + 8))(v32, v66);
    swift_beginAccess();
    (*(v31 + 40))(v43 + v30, v42, v44);
    swift_endAccess();
    v45 = v43 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_parent;
    Strong = swift_unknownObjectWeakLoadStrong();
    v47 = v65;
    v48 = v67;
    if (Strong)
    {
      v49 = *(v45 + 8);
      ObjectType = swift_getObjectType();
      (*(v49 + 8))(ObjectType, v49);
      swift_unknownObjectRelease();
    }

    (*(v35 + 8))(v48, v47);
    v55[1](v54, v57);
  }
}

uint64_t sub_20BB10250()
{
  v1 = v0;
  v24 = sub_20C1321D4();
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_modalityNode;
  swift_beginAccess();
  (*(v6 + 16))(v8, v1 + v12, v5);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A5D8) + 48);
  v14 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_modalityAsset;
  v15 = sub_20C132164();
  (*(*(v15 - 8) + 16))(v4, v1 + v14, v15);
  v16 = *MEMORY[0x277CE9D18];
  v17 = sub_20C1322F4();
  (*(*(v17 - 8) + 104))(&v4[v13], v16, v17);
  v18 = v24;
  (*(v2 + 104))(v4, *MEMORY[0x277CE9C38], v24);
  sub_20C1320D4();
  (*(v2 + 8))(v4, v18);
  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  (*(v6 + 40))(v1 + v12, v11, v5);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_isAnimating) = 0;
  v19 = v1 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_parent;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    (*(v21 + 8))(ObjectType, v21);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BB10588()
{
  v1 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_modalityAsset;
  v2 = sub_20C132164();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_fallbackAsset, v2);
  v3(v0 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_middleBubbleAsset, v2);
  v3(v0 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_behindBubbleAsset, v2);
  v4 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_bubbleNode;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_modalityNode, v5);
  sub_20B593250(v0 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_containerBuilder);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_parent);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BurnBarBubbleNodeBuilder()
{
  result = qword_27C76A5B0;
  if (!qword_27C76A5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BB10774()
{
  sub_20C132164();
  if (v0 <= 0x3F)
  {
    sub_20B592D08();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContainerNodeBuilder();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_20BB108B4@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for ContainerNodeBuilder();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v6 = *(v5 - 8);
  v31 = v5;
  v32 = v6;
  MEMORY[0x28223BE20](v5);
  v30 = &v25 - v7;
  v8 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_containerBuilder;
  swift_beginAccess();
  sub_20B6B5ADC(v1 + v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F88);
  v9 = sub_20C132264();
  v26 = v9;
  v10 = *(v9 - 8);
  v28 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v27 = v12;
  *(v12 + 16) = xmmword_20C14F320;
  v13 = v12 + v11;
  v14 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_bubbleNode;
  swift_beginAccess();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  v16 = *(*(v15 - 8) + 16);
  v16(v13, v1 + v14, v15);
  v17 = *MEMORY[0x277CE9CE0];
  v18 = *(v10 + 104);
  v18(v13, v17, v9);
  v19 = OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_modalityNode;
  swift_beginAccess();
  v20 = v28;
  v16(v13 + v28, v1 + v19, v15);
  v18(v13 + v20, v17, v26);
  v21 = v29;
  v22 = v30;
  sub_20B7E27F8(v30);

  sub_20B593250(v21);
  sub_20C1323A4();
  v23 = v31;
  sub_20C131FF4();
  return (*(v32 + 8))(v22, v23);
}

uint64_t sub_20BB10BEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FA0);
  v1 = sub_20C132164();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20C152DF0;
  v6 = v5 + v4;
  v7 = *(v2 + 16);
  v7(v6, v0 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_modalityAsset, v1);
  v7(v6 + v3, v0 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_fallbackAsset, v1);
  v7(v6 + 2 * v3, v0 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_middleBubbleAsset, v1);
  v7(v6 + 3 * v3, v0 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_behindBubbleAsset, v1);
  return v5;
}

uint64_t sub_20BB10D48(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_parent + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BB10D98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BB10DE0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_20BB110D0;

  return sub_20B6A3574(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_16Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20BB10F20(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20BB110D0;

  return sub_20B6A39A8(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_20BB10FF8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20B594268;

  return sub_20B6A3CE0(a1, a2, v6, v7, v8, v9, v11, v10);
}

BOOL sub_20BB110D4()
{
  v0 = *(sub_20C1354D4() + 16);

  if (v0)
  {
    return 0;
  }

  v1 = *(sub_20C1354A4() + 16);

  if (v1)
  {
    return 0;
  }

  v2 = *(sub_20C1354E4() + 16);

  if (v2)
  {
    return 0;
  }

  v3 = *(sub_20C1354B4() + 16);

  if (v3)
  {
    return 0;
  }

  v4 = *(sub_20C1354F4() + 16);

  if (v4)
  {
    return 0;
  }

  v5 = *(sub_20C135474() + 16);

  if (v5)
  {
    return 0;
  }

  v6 = *(sub_20C135504() + 16);

  if (v6)
  {
    return 0;
  }

  v7 = *(sub_20C135514() + 16);

  if (v7)
  {
    return 0;
  }

  v8 = *(sub_20C135484() + 16);

  if (v8)
  {
    return 0;
  }

  v10 = *(sub_20C135494() + 16);

  return v10 == 0;
}

BOOL sub_20BB1119C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v1 = sub_20C1354A4();
      }

      else
      {
        v1 = sub_20C1354B4();
      }
    }

    else if (a1)
    {
      v1 = sub_20C1354E4();
    }

    else
    {
      v1 = sub_20C1354D4();
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v1 = sub_20C1354F4();
    }

    else
    {
      v1 = sub_20C135504();
    }
  }

  else if (a1 == 6)
  {
    v1 = sub_20C135484();
  }

  else if (a1 == 7)
  {
    v1 = sub_20C135514();
  }

  else
  {
    v1 = sub_20C135494();
  }

  v2 = *(v1 + 16);

  return v2 != 0;
}

char *sub_20BB1124C()
{
  v1 = OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionDetailRow_titleLabel;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setNumberOfLines_];
  v3 = objc_opt_self();
  v4 = *MEMORY[0x277D76938];
  v5 = [v3 preferredFontForTextStyle_];
  [v2 setFont_];

  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  [v2 setTextColor_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v1] = v2;
  v8 = OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionDetailRow_descriptionLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v9 setNumberOfLines_];
  v10 = [v3 preferredFontForTextStyle_];
  [v9 setFont_];

  v11 = [v6 secondaryLabelColor];
  [v9 setTextColor_];

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v8] = v9;
  v12 = OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionDetailRow_stackView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v13 setAxis_];
  [v13 setAlignment_];
  [v13 setDistribution_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v12] = v13;
  v53.receiver = v0;
  v53.super_class = type metadata accessor for TVWorkoutPlanRepetitionDetailRow();
  v14 = objc_msgSendSuper2(&v53, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v15 = OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionDetailRow_descriptionLabel;
  v16 = *&v14[OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionDetailRow_descriptionLabel];
  v17 = v14;
  v18 = v16;
  [v18 setTextAlignment_];

  v19 = OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionDetailRow_titleLabel;
  v20 = *&v17[OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionDetailRow_titleLabel];
  v21 = sub_20C13C914();

  [v20 setText_];

  v22 = *&v14[v15];
  v23 = sub_20C13C914();

  [v22 setText_];

  v24 = OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionDetailRow_stackView;
  [*&v17[OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionDetailRow_stackView] addArrangedSubview_];
  [*&v17[v24] addArrangedSubview_];
  [v17 addSubview_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];

  v25 = objc_opt_self();
  v27 = *MEMORY[0x277D768C8];
  v26 = *(MEMORY[0x277D768C8] + 8);
  v28 = *(MEMORY[0x277D768C8] + 16);
  v29 = *(MEMORY[0x277D768C8] + 24);
  v30 = *&v17[v24];
  v31 = [v30 leadingAnchor];
  v32 = [v17 leadingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:v26];

  LODWORD(v34) = 1148846080;
  [v33 setPriority_];
  v35 = v33;
  v36 = [v30 trailingAnchor];
  v37 = [v17 trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:-v29];

  LODWORD(v39) = 1148846080;
  [v38 setPriority_];
  v40 = v38;
  v41 = [v30 topAnchor];
  v42 = [v17 topAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:v27];

  LODWORD(v44) = 1148846080;
  [v43 setPriority_];
  v45 = [v30 bottomAnchor];
  v46 = [v17 bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:-v28];

  LODWORD(v48) = 1148846080;
  [v47 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_20C14FE90;
  *(v49 + 32) = v35;
  *(v49 + 40) = v40;
  *(v49 + 48) = v43;
  *(v49 + 56) = v47;
  v50 = v43;

  sub_20B5E29D0();
  v51 = sub_20C13CC54();

  [v25 activateConstraints_];

  return v17;
}

id sub_20BB118D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVWorkoutPlanRepetitionDetailRow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BB11984()
{
  v1 = OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionDetailRow_titleLabel;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setNumberOfLines_];
  v3 = objc_opt_self();
  v4 = *MEMORY[0x277D76938];
  v5 = [v3 preferredFontForTextStyle_];
  [v2 setFont_];

  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  [v2 setTextColor_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v8 = OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionDetailRow_descriptionLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v9 setNumberOfLines_];
  v10 = [v3 preferredFontForTextStyle_];
  [v9 setFont_];

  v11 = [v6 secondaryLabelColor];
  [v9 setTextColor_];

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v8) = v9;
  v12 = OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionDetailRow_stackView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v13 setAxis_];
  [v13 setAlignment_];
  [v13 setDistribution_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v12) = v13;
  sub_20C13DE24();
  __break(1u);
}

void sub_20BB11BE8(__int128 *a1)
{
  v46 = a1;
  v2 = type metadata accessor for RootShowcaseItem();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MetadataEntry();
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DatePickerItem();
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ButtonAction(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5EAE70(v1, v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20BB1260C(v16, v13, type metadata accessor for ButtonAction);
      v32 = v46;
      MEMORY[0x20F2F58E0](1);
      if (!v13[1])
      {
        sub_20C13E184();
        if (v13[3])
        {
          goto LABEL_21;
        }

LABEL_38:
        sub_20C13E184();
        if (v13[5])
        {
          goto LABEL_22;
        }

        goto LABEL_39;
      }

      sub_20C13E184();
      sub_20C13CA64();
      if (!v13[3])
      {
        goto LABEL_38;
      }

LABEL_21:
      sub_20C13E184();
      sub_20C13CA64();
      if (v13[5])
      {
LABEL_22:
        sub_20C13E184();
        sub_20C13CA64();
        goto LABEL_40;
      }

LABEL_39:
      sub_20C13E184();
LABEL_40:
      sub_20BDA4D9C(v32);
      sub_20BB134EC(v13, type metadata accessor for ButtonAction);
      return;
    case 2u:
      sub_20BB1260C(v16, v10, type metadata accessor for DatePickerItem);
      MEMORY[0x20F2F58E0](2);
      sub_20C133594();
      sub_20BB125C4(&qword_27C763118, MEMORY[0x277D4FFA8]);
      sub_20C13C7C4();
      sub_20C13CA64();
      MEMORY[0x20F2F58E0](v10[*(v8 + 24)]);
      sub_20BB134EC(v10, type metadata accessor for DatePickerItem);
      return;
    case 3u:
      sub_20BB1260C(v16, v7, type metadata accessor for MetadataEntry);
      MEMORY[0x20F2F58E0](5);
      sub_20C13D604();
      v25 = *(v7 + 1);
      if (v25 >> 62)
      {
        if (v25 >> 62 != 1)
        {
          if (v25 == 0x8000000000000000 && *(v7 + 1) == 0)
          {
            v44 = 0;
          }

          else
          {
            v44 = 3;
          }

          MEMORY[0x20F2F58E0](v44);
          if (*(v7 + 5))
          {
            goto LABEL_43;
          }

          goto LABEL_58;
        }

        v26 = 2;
      }

      else
      {
        v26 = 1;
      }

      MEMORY[0x20F2F58E0](v26);
      MEMORY[0x20F2F58E0](v25 & 1);
      sub_20C13CA64();
      if (*(v7 + 5))
      {
LABEL_43:
        sub_20C13E184();
        sub_20C13CA64();
        goto LABEL_59;
      }

LABEL_58:
      sub_20C13E184();
LABEL_59:
      sub_20C132EE4();
      sub_20BB125C4(&qword_27C7675A0, MEMORY[0x277CC95F0]);
      sub_20C13C7C4();
      sub_20BB134EC(v7, type metadata accessor for MetadataEntry);
      return;
    case 4u:
      v22 = *(v16 + 2);
      v23 = v16[24];
      v24 = 7;
      goto LABEL_9;
    case 5u:
      v33 = *(v16 + 3);
      MEMORY[0x20F2F58E0](10);
      sub_20C13CA64();

      if (!v33)
      {
        goto LABEL_36;
      }

      sub_20C13E184();
      sub_20C13CA64();
      goto LABEL_26;
    case 6u:
      sub_20BB1260C(v16, v4, type metadata accessor for RootShowcaseItem);
      v34 = v46;
      MEMORY[0x20F2F58E0](11);
      sub_20B65339C(v34);
      sub_20BB134EC(v4, type metadata accessor for RootShowcaseItem);
      return;
    case 7u:
      v28 = *v16;
      v27 = *(v16 + 1);
      v29 = *(v16 + 2);
      v30 = v16[24];
      MEMORY[0x20F2F58E0](12);
      if (v30 >> 6)
      {
        if (v30 >> 6 != 1)
        {
          if (v29 | v27 | v28 || v30 != 128)
          {
            v18 = 2;
          }

          else
          {
            v18 = 1;
          }

LABEL_34:
          MEMORY[0x20F2F58E0](v18);
          return;
        }

        MEMORY[0x20F2F58E0](3);
        if (!v28)
        {
          sub_20C13E184();
          v42 = 0;
          goto LABEL_46;
        }

        sub_20C13E184();
        v31 = v28;
        sub_20C13D604();
        sub_20BB125A4(v28, v27, v29, v30);
      }

      else
      {
        MEMORY[0x20F2F58E0](0);
        sub_20C13E184();
        sub_20C13CA64();
        sub_20C134744();
        sub_20C13CA64();
      }

      v42 = v28;
LABEL_46:
      sub_20BB125A4(v42, v27, v29, v30);
      return;
    case 8u:
      v40 = *v16;
      MEMORY[0x20F2F58E0](13);
      if (v40)
      {
        sub_20C13E184();
        v41 = v40;
        sub_20C13D604();
      }

      else
      {
LABEL_36:
        sub_20C13E184();
      }

      return;
    case 9u:
      v22 = *(v16 + 2);
      v23 = v16[24];
      v24 = 14;
LABEL_9:
      MEMORY[0x20F2F58E0](v24);
      sub_20C13CA64();
      MEMORY[0x20F2F58E0](v22);
      MEMORY[0x20F2F58E0](v23);
LABEL_26:

      return;
    case 0xAu:
      v35 = *v16;
      v36 = *(v16 + 1);
      v37 = *(v16 + 2);
      v38 = v16[24];
      v39 = v46;
      MEMORY[0x20F2F58E0](17);
      sub_20B88FD74(v39, v35, v36, v37, v38);
      sub_20B8403A8(v35, v36, v37, v38);
      return;
    case 0xBu:
      v19 = *v16;
      v20 = v16[8];
      MEMORY[0x20F2F58E0](18);
      sub_20C13D604();
      MEMORY[0x20F2F58E0](v20);
      v21 = sub_20C137F94();
      MEMORY[0x20F2F58E0](v21);

      return;
    case 0xCu:
      v18 = 3;
      goto LABEL_34;
    case 0xDu:
      v18 = 4;
      goto LABEL_34;
    case 0xEu:
      v18 = 6;
      goto LABEL_34;
    case 0xFu:
      v18 = 8;
      goto LABEL_34;
    case 0x10u:
      v18 = 9;
      goto LABEL_34;
    case 0x11u:
      v18 = 15;
      goto LABEL_34;
    case 0x12u:
      v18 = 16;
      goto LABEL_34;
    case 0x13u:
      v18 = 19;
      goto LABEL_34;
    default:
      v17 = *v16;
      MEMORY[0x20F2F58E0](0);
      MEMORY[0x20F2F58E0](v17);
      sub_20C13E184();
      sub_20C13CA64();
      sub_20C13CA64();

      return;
  }
}

uint64_t sub_20BB1248C()
{
  sub_20C13E164();
  sub_20BB11BE8(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20BB124D0()
{
  sub_20C13E164();
  sub_20BB11BE8(v1);
  return sub_20C13E1B4();
}

uint64_t type metadata accessor for ShelfItemAction()
{
  result = qword_27C76A610;
  if (!qword_27C76A610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BB125A4(void *a1, int a2, id a3, unsigned __int8 a4)
{
  if (a4 >> 6 == 1)
  {
  }

  else if (!(a4 >> 6))
  {
  }
}

uint64_t sub_20BB125C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BB1260C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BB12674(uint64_t a1, uint64_t *a2)
{
  v147 = a1;
  v148 = a2;
  v2 = type metadata accessor for RootShowcaseItem();
  MEMORY[0x28223BE20](v2 - 8);
  v140 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetadataEntry();
  MEMORY[0x28223BE20](v4 - 8);
  v139 = (&v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = type metadata accessor for DatePickerItem();
  MEMORY[0x28223BE20](v137);
  v141 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ButtonAction(0);
  MEMORY[0x28223BE20](v7 - 8);
  v138 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v9);
  v145 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v143 = &v137 - v12;
  MEMORY[0x28223BE20](v13);
  v142 = &v137 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = (&v137 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v137 - v19;
  MEMORY[0x28223BE20](v21);
  v144 = &v137 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = (&v137 - v24);
  MEMORY[0x28223BE20](v26);
  v28 = &v137 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = (&v137 - v30);
  MEMORY[0x28223BE20](v32);
  v146 = &v137 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v137 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v137 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A608);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v137 - v41;
  v44 = &v137 + *(v43 + 56) - v41;
  sub_20B5EAE70(v147, &v137 - v41);
  v45 = v148;
  v148 = v44;
  sub_20B5EAE70(v45, v44);
  v46 = v42;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20B5EAE70(v42, v36);
      v101 = v148;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v102 = v138;
        sub_20BB1260C(v101, v138, type metadata accessor for ButtonAction);
        v89 = sub_20BDA6478(v36, v102);
        sub_20BB134EC(v102, type metadata accessor for ButtonAction);
        v91 = v36;
        v103 = type metadata accessor for ButtonAction;
        goto LABEL_55;
      }

      sub_20BB134EC(v36, type metadata accessor for ButtonAction);
      goto LABEL_76;
    case 2u:
      v80 = v146;
      sub_20B5EAE70(v42, v146);
      v81 = v148;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_20BB134EC(v80, type metadata accessor for DatePickerItem);
        goto LABEL_76;
      }

      v82 = v141;
      sub_20BB1260C(v81, v141, type metadata accessor for DatePickerItem);
      if (sub_20C133534())
      {
        if (v83 = *(v137 + 20), v84 = *(v80 + v83), v85 = *(v80 + v83 + 8), v86 = (v82 + v83), v84 == *v86) && v85 == v86[1] || (sub_20C13DFF4())
        {
          if (*(v80 + *(v137 + 24)) == *(v82 + *(v137 + 24)))
          {
            sub_20BB134EC(v82, type metadata accessor for DatePickerItem);
            sub_20BB134EC(v80, type metadata accessor for DatePickerItem);
            goto LABEL_67;
          }
        }
      }

      sub_20BB134EC(v82, type metadata accessor for DatePickerItem);
      sub_20BB134EC(v80, type metadata accessor for DatePickerItem);
      goto LABEL_99;
    case 3u:
      sub_20B5EAE70(v42, v31);
      v87 = v148;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v88 = v139;
        sub_20BB1260C(v87, v139, type metadata accessor for MetadataEntry);
        v89 = sub_20BA83114(v31, v88);
        v90 = type metadata accessor for MetadataEntry;
        sub_20BB134EC(v88, type metadata accessor for MetadataEntry);
        v91 = v31;
        goto LABEL_54;
      }

      sub_20BB134EC(v31, type metadata accessor for MetadataEntry);
      goto LABEL_76;
    case 4u:
      sub_20B5EAE70(v42, v28);
      v62 = *v28;
      v61 = *(v28 + 1);
      v63 = *(v28 + 2);
      v64 = v28[24];
      v65 = v148;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_75;
      }

      v66 = *v65;
      v67 = v65[1];
      v68 = v65[2];
      v69 = *(v65 + 24);
      if ((v62 != v66 || v61 != v67) && (sub_20C13DFF4() & 1) == 0 || v63 != v68)
      {
        goto LABEL_97;
      }

      if (v64 != v69)
      {
        goto LABEL_99;
      }

      goto LABEL_67;
    case 5u:
      sub_20B5EAE70(v42, v25);
      v105 = *v25;
      v104 = v25[1];
      v107 = v25[2];
      v106 = v25[3];
      v108 = v148;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_74;
      }

      v109 = *v108;
      v110 = v108[1];
      v112 = v108[2];
      v111 = v108[3];
      if (v105 == v109 && v104 == v110)
      {
      }

      else
      {
        v133 = sub_20C13DFF4();

        if ((v133 & 1) == 0)
        {
          goto LABEL_97;
        }
      }

      if (!v106)
      {
        if (!v111)
        {
          goto LABEL_67;
        }

        goto LABEL_98;
      }

      if (!v111)
      {
        goto LABEL_98;
      }

      if (v107 == v112 && v106 == v111)
      {

        goto LABEL_67;
      }

      v135 = sub_20C13DFF4();

      if (v135)
      {
        goto LABEL_67;
      }

      goto LABEL_99;
    case 6u:
      v113 = v144;
      sub_20B5EAE70(v42, v144);
      v114 = v148;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        sub_20BB134EC(v113, type metadata accessor for RootShowcaseItem);
        goto LABEL_76;
      }

      v115 = v140;
      sub_20BB1260C(v114, v140, type metadata accessor for RootShowcaseItem);
      v89 = sub_20B653A70(v113, v115);
      v90 = type metadata accessor for RootShowcaseItem;
      sub_20BB134EC(v115, type metadata accessor for RootShowcaseItem);
      v91 = v113;
LABEL_54:
      v103 = v90;
LABEL_55:
      sub_20BB134EC(v91, v103);
      goto LABEL_60;
    case 7u:
      sub_20B5EAE70(v42, v20);
      v92 = *v20;
      v93 = *(v20 + 1);
      v94 = *(v20 + 2);
      v95 = v20[24];
      v96 = v148;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v97 = *v96;
        v98 = v96[1];
        v99 = v96[2];
        v100 = *(v96 + 24);
        v89 = sub_20BF3D32C(v92, v93, v94, v95, *v96, v98, v99, v100);
        sub_20BB125A4(v97, v98, v99, v100);
        sub_20BB125A4(v92, v93, v94, v95);
        goto LABEL_60;
      }

      sub_20BB125A4(v92, v93, v94, v95);
      goto LABEL_76;
    case 8u:
      sub_20B5EAE70(v42, v17);
      v126 = *v17;
      v127 = v148;
      if (swift_getEnumCaseMultiPayload() != 8)
      {

        goto LABEL_76;
      }

      v128 = *v127;
      if (v126)
      {
        if (v128)
        {
          sub_20B51C88C(0, &qword_27C762910);
          v129 = v126;
          v130 = sub_20C13D5F4();

          if (v130)
          {
            goto LABEL_67;
          }
        }

        else
        {
        }
      }

      else
      {
        if (!v128)
        {
          goto LABEL_67;
        }
      }

      goto LABEL_99;
    case 9u:
      v70 = v142;
      sub_20B5EAE70(v42, v142);
      v72 = *v70;
      v71 = *(v70 + 8);
      v73 = *(v70 + 16);
      v74 = *(v70 + 24);
      v75 = v148;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_75;
      }

      v76 = *v75;
      v77 = v75[1];
      v78 = v75[2];
      v79 = *(v75 + 24);
      if ((v72 != v76 || v71 != v77) && (sub_20C13DFF4() & 1) == 0 || v73 != v78)
      {
        goto LABEL_97;
      }

      if (v74 != v79)
      {
        goto LABEL_99;
      }

      goto LABEL_67;
    case 0xAu:
      v116 = v143;
      sub_20B5EAE70(v42, v143);
      v117 = *v116;
      v118 = *(v116 + 8);
      v119 = *(v116 + 16);
      v120 = *(v116 + 24);
      v121 = v148;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        sub_20B8403A8(v117, v118, v119, v120);
        goto LABEL_76;
      }

      v122 = *v121;
      v123 = v121[1];
      v124 = v121[2];
      v125 = *(v121 + 24);
      v89 = sub_20B890154(v117, v118, v119, v120, *v121, v123, v124, v125);
      sub_20B8403A8(v122, v123, v124, v125);
      sub_20B8403A8(v117, v118, v119, v120);
LABEL_60:
      sub_20BB134EC(v46, type metadata accessor for ShelfItemAction);
      return v89 & 1;
    case 0xBu:
      v53 = v145;
      sub_20B5EAE70(v42, v145);
      v54 = *v53;
      v55 = v148;
      if (swift_getEnumCaseMultiPayload() != 11)
      {

        goto LABEL_76;
      }

      v56 = *(v53 + 8);
      v57 = *v55;
      v58 = *(v55 + 8);
      sub_20B51C88C(0, &qword_27C7654B0);
      if ((sub_20C13D5F4() & 1) != 0 && v56 == v58)
      {
        v59 = sub_20C137F94();
        v60 = sub_20C137F94();

        if (v59 == v60)
        {
          goto LABEL_67;
        }
      }

      else
      {
      }

      goto LABEL_99;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_76;
      }

      goto LABEL_67;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_76;
      }

      goto LABEL_67;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_76;
      }

      goto LABEL_67;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_76;
      }

      goto LABEL_67;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_76;
      }

      goto LABEL_67;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_76;
      }

      goto LABEL_67;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_76;
      }

      goto LABEL_67;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_67;
      }

      goto LABEL_76;
    default:
      sub_20B5EAE70(v42, v39);
      v47 = v39[8];
      v49 = *(v39 + 2);
      v48 = *(v39 + 3);
      v51 = *(v39 + 4);
      v50 = *(v39 + 5);
      v52 = v148;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_74:

LABEL_75:

LABEL_76:
        sub_20BB13484(v46);
        goto LABEL_77;
      }

      v132 = v52[5];
      if (*v39 == *v52 && v47 == *(v52 + 8) && ((v134 = v52[4], v49 == v52[2]) && v48 == v52[3] || (sub_20C13DFF4() & 1) != 0))
      {
        if (v51 == v134 && v50 == v132)
        {

LABEL_67:
          sub_20BB134EC(v46, type metadata accessor for ShelfItemAction);
          v89 = 1;
          return v89 & 1;
        }

        v136 = sub_20C13DFF4();

        if (v136)
        {
          goto LABEL_67;
        }
      }

      else
      {

LABEL_97:

LABEL_98:
      }

LABEL_99:
      sub_20BB134EC(v46, type metadata accessor for ShelfItemAction);
LABEL_77:
      v89 = 0;
      return v89 & 1;
  }
}

uint64_t sub_20BB13484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A608);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BB134EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20BB1354C()
{
  sub_20BB13758(319, &qword_27C76A620, type metadata accessor for ButtonAction);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DatePickerItem();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MetadataEntry();
      if (v2 <= 0x3F)
      {
        sub_20BB136B0();
        if (v3 <= 0x3F)
        {
          sub_20BB13758(319, &qword_27C76A630, type metadata accessor for RootShowcaseItem);
          if (v4 <= 0x3F)
          {
            sub_20BB13728();
            if (v5 <= 0x3F)
            {
              sub_20BB13758(319, &qword_27C76A640, sub_20BB137A4);
              if (v6 <= 0x3F)
              {
                sub_20BB1380C();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_20BB136B0()
{
  if (!qword_27C76A628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C767830);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C76A628);
    }
  }
}

ValueMetadata *sub_20BB13728()
{
  result = qword_27C76A638;
  if (!qword_27C76A638)
  {
    result = &type metadata for SortAction;
    atomic_store(&type metadata for SortAction, &qword_27C76A638);
  }

  return result;
}

void sub_20BB13758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20BB137A4()
{
  if (!qword_27C76A648)
  {
    sub_20B51C88C(255, &qword_27C762910);
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_27C76A648);
    }
  }
}

ValueMetadata *sub_20BB1380C()
{
  result = qword_27C76A650;
  if (!qword_27C76A650)
  {
    result = &type metadata for UpNextQueueAction;
    atomic_store(&type metadata for UpNextQueueAction, &qword_27C76A650);
  }

  return result;
}

uint64_t sub_20BB1383C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_gymKitDisclaimerView);
  v22[3] = type metadata accessor for GymKitDisclaimerView();
  v22[4] = &off_2822E2388;
  v22[0] = v5;
  v6 = *(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackControlsView);
  v23[3] = type metadata accessor for SessionAudioPlaybackControls();
  v23[4] = &off_282306B70;
  v23[0] = v6;
  v7 = *(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackMetadataView);
  v24[3] = type metadata accessor for PlaybackMetadataView();
  v24[4] = &off_2822C6358;
  v24[0] = v7;
  sub_20B51CC64(v22, v19);
  v8 = v20;
  v9 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v10 = *(v9 + 8);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v10(a1, a2, v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v19);
  sub_20B51CC64(v23, v19);
  v14 = v20;
  v15 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v15 + 8))(a1, a2, v14, v15);
  __swift_destroy_boxed_opaque_existential_1(v19);
  sub_20B51CC64(v24, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A748);
  swift_arrayDestroy();
  v16 = v20;
  v17 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v17 + 8))(a1, a2, v16, v17);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

id sub_20BB13A14()
{
  v1 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView____lazy_storage___mediaControls;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView____lazy_storage___mediaControls);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView____lazy_storage___mediaControls);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CD5DD0]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_20BB13A88(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_presenter);
    v4 = Strong;
    swift_unknownObjectRetain();

    if (v3)
    {
      sub_20BF74A84(*(a1 + OBJC_IVAR____TtC9SeymourUI15PlaybackControl_type));
      swift_unknownObjectRelease();
    }
  }
}

void sub_20BB13B64(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = a1;
  v5 = sub_20BB13A14();
  [v5 *a4];
}

void sub_20BB13CD0(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_moreButton);
  if (a1)
  {
    v3 = 0.45;
  }

  else
  {
    v3 = 0.08;
  }

  [*(v1 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_moreButton) setEnabled_];
  v4 = [objc_opt_self() whiteColor];
  v5 = [v4 colorWithAlphaComponent_];

  [v2 setTintColor_];
}

id sub_20BB13DCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionAudioPlayerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BB14020(void *a1)
{
  v2 = v1;
  v4 = *(*(v1 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_animatedBackgroundView) + OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_renderer);
  if (v4)
  {
    v5 = v4;
    sub_20BC1F364(a1, 1);
  }

  v6 = *(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkView);
  v7 = objc_opt_self();
  v8 = *&v6[OBJC_IVAR____TtC9SeymourUI19PlaybackArtworkView_imageView];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = a1;
  v13[4] = sub_20BB17A38;
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_20B7B548C;
  v13[3] = &block_descriptor_78_3;
  v10 = _Block_copy(v13);
  v11 = a1;
  v12 = v6;

  [v7 transitionWithView:v8 duration:5242880 options:v10 animations:0 completion:0.25];
  _Block_release(v10);
}

void sub_20BB14174(char a1, char a2)
{
  v5 = a1 & 1;
  if ([*(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_gymKitDisclaimerView) isHidden] != (a1 & 1))
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    if (a2)
    {
      v8 = objc_opt_self();
      v11[4] = sub_20BB17A2C;
      v11[5] = v7;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 1107296256;
      v11[2] = sub_20B7B548C;
      v11[3] = &block_descriptor_83;
      v9 = _Block_copy(v11);

      [v8 animateWithDuration:0x10000 delay:v9 options:0 animations:0.4 completion:0.0];

      _Block_release(v9);
    }

    else
    {

      sub_20BB14320(v10, a1 & 1);
    }
  }
}

void sub_20BB14320(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_gymKitDisclaimerView);

    [v5 setHidden_];
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_gymKitDisclaimerView);

    [*&v8[OBJC_IVAR____TtC9SeymourUI20GymKitDisclaimerView_gymKitMarqueeView] setMarqueeEnabled:(a2 & 1) == 0 withOptions:0];
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = *(v9 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_gymKitBottomConstraint);

    [v11 setActive_];
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = *(v12 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_metadataToGymKitDisclaimerBottomConstraint);

    [v14 setActive_];
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = *(v15 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_metadataToPlaybackTimeControlBottomConstraint);

    [v17 setActive_];
  }
}

void sub_20BB1450C(char a1, signed __int8 a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackControlsView) + *off_277D98078[a1]);
  v4[OBJC_IVAR____TtC9SeymourUI15PlaybackControl_type] = a2;
  v5 = *&v4[OBJC_IVAR____TtC9SeymourUI15PlaybackControl_imageView];
  v6 = v4;
  v7 = sub_20B83B118(a2);
  [v5 setImage_];
}

id sub_20BB145D8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_overlayView);
  [v5 setAlpha_];

  return [v5 setHidden_];
}

double sub_20BB14634()
{
  result = *(v0 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_preferredMaximumArtworkSize);
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_preferredMaximumArtworkSize + 16))
  {
    return 0.0;
  }

  return result;
}

void sub_20BB146D8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_airplayRouteButton);
  [v3 setRoute_];
  [v3 setRouteLabelHidden_];
  [v3 setNeedsLayout];
  sub_20B5DFFA4(a1);
}

void sub_20BB14768(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = a3;
  v7 = *(v3 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackMetadataView);
  [*(v7 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleLabel) setAttributedText_];
  [*(v7 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_subtitleLabel) setAttributedText_];
  if (v6 != 2)
  {

    sub_20BB14174((a3 & 1) == 0, 1);
  }
}

uint64_t sub_20BB14854(uint64_t a1, uint64_t a2)
{
  sub_20B8C9204(a1, v12);
  sub_20B8C9204(v12, v13);
  sub_20B8C9204(v13, v14);
  [*(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_airplayRouteButtonBottomConstraint) setConstant_];
  [*(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_airplayRouteButtonHeightConstraint) setConstant_];
  [*(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkLayoutGuideTopConstraint) setConstant_];
  [*(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkLayoutGuideBottomConstraint) setConstant_];
  v5 = v17;
  [*(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkViewLeadingConstraint) setConstant_];
  [*(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkViewTrailingConstraint) setConstant_];
  [*(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_closeButtonLeadingConstraint) setConstant_];
  [*(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_moreButtonTrailingConstraint) setConstant_];
  [*(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_moreButtonHeightConstraint) setConstant_];
  [*(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_gymKitBottomConstraint) setConstant_];
  [*(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_metadataToGymKitDisclaimerBottomConstraint) setConstant_];
  [*(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_metadataToPlaybackTimeControlBottomConstraint) setConstant_];
  sub_20C13D514();
  v6 = v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_preferredMaximumArtworkSize;
  *v6 = v7;
  *(v6 + 8) = v8;
  *(v6 + 16) = 0;
  [*(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_grabberTopConstraint) setConstant_];
  [*(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackTimeControlWidthConstraint) setConstant_];
  [*(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_volumeSliderBottomConstraint) setConstant_];
  v9 = v28;
  v10 = (v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackControlsLayoutGuideHeightConstraint);
  if ((v28 & 1) == 0)
  {
    [*(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackControlsLayoutGuideHeightConstraint) setConstant_];
  }

  [*v10 setActive_];
  [*(v2 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_airplayRouteButton) setRouteLabelAxis_];
  return sub_20BB1383C(a1, a2);
}

id sub_20BB14AF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v415 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v5 - 8);
  v410 = &v382 - v6;
  v409 = sub_20C13D664();
  v402 = *(v409 - 8);
  MEMORY[0x28223BE20](v409);
  v400 = &v382 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v408 = sub_20C13D874();
  v407 = *(v408 - 8);
  MEMORY[0x28223BE20](v408);
  v413 = &v382 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_animatedBackgroundView;
  type metadata accessor for AnimatedBackgroundView();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v9] = v10;
  *&v3[OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_layout] = xmmword_20C16D7F0;
  v11 = [objc_allocWithZone(MEMORY[0x277CD6048]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v416 = objc_opt_self();
  v12 = [v416 whiteColor];
  v13 = [v12 colorWithAlphaComponent_];

  [v11 setTintColor_];
  v14 = *MEMORY[0x277D74420];
  v15 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76940] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  v414 = xmmword_20C14F980;
  *(inited + 16) = xmmword_20C14F980;
  v17 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v18 = swift_initStackObject();
  v19 = MEMORY[0x277D74430];
  *(v18 + 16) = v414;
  v20 = *v19;
  *(v18 + 32) = *v19;
  *(v18 + 40) = v14;
  v21 = v17;
  v22 = v20;
  v23 = sub_20B6B134C(v18);
  swift_setDeallocating();
  sub_20B520158(v18 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v23;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B7AA590(&qword_27C7618A0, type metadata accessor for AttributeName);
  v24 = sub_20C13C744();

  v25 = [v15 fontDescriptorByAddingAttributes_];

  v396 = objc_opt_self();
  v26 = [v396 fontWithDescriptor:v25 size:0.0];

  [v11 setFont_];
  [v11 setHitRectInsets_];
  v27 = sub_20C13C914();
  v398 = objc_opt_self();
  v28 = [v398 systemImageNamed_];

  if (v28)
  {
    v29 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x277D76A28] scale:2];
    v30 = [v28 imageWithSymbolConfiguration_];

    if (v30)
    {
      [v11 setAccessoryImage_];
    }
  }

  *&v3[OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_airplayRouteButton] = v11;
  v31 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkView;
  v32 = [objc_allocWithZone(type metadata accessor for PlaybackArtworkView()) initWithFrame_];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v31] = v32;
  v33 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_gymKitDisclaimerView;
  v34 = [objc_allocWithZone(type metadata accessor for GymKitDisclaimerView()) init];
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v33] = v34;
  v35 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_moreButton;
  v36 = [objc_allocWithZone(MEMORY[0x277CD5D68]) init];
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  v37 = [v416 whiteColor];
  v38 = [v37 colorWithAlphaComponent_];

  [v36 setTintColor_];
  v39 = sub_20C13C954();
  v420[3] = MEMORY[0x277D837D0];
  v420[0] = v39;
  v420[1] = v40;
  v41 = sub_20BD54E84(v420);

  sub_20B520158(v420, &unk_27C768A00);
  LODWORD(v42) = 1148846080;
  [v41 setContentHuggingPriority:0 forAxis:v42];
  v43 = *MEMORY[0x277D76838];
  [v41 setMinimumContentSizeCategory_];
  v395 = v43;
  [v41 setMaximumContentSizeCategory_];
  *&v3[v35] = v41;
  v44 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackControlsView;
  type metadata accessor for SessionAudioPlaybackControls();
  v45 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v45 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v44] = v45;
  v46 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackMetadataView;
  v47 = [objc_allocWithZone(type metadata accessor for PlaybackMetadataView()) init];
  [v47 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v46] = v47;
  v48 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackTimeControl;
  type metadata accessor for PlaybackTimeControl();
  v49 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v49 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v48] = v49;
  v50 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_overlayView;
  v51 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v51 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v50] = v51;
  v52 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_volumeSlider;
  type metadata accessor for VolumeSlider();
  v53 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v53 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v52] = v53;
  v54 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_airplayRouteButtonBottomConstraint;
  *&v3[v54] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v55 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkLayoutGuideTopConstraint;
  *&v3[v55] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v56 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkLayoutGuideBottomConstraint;
  *&v3[v56] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v57 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkViewLeadingConstraint;
  *&v3[v57] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v58 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkViewTrailingConstraint;
  *&v3[v58] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v59 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_closeButtonLeadingConstraint;
  *&v3[v59] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v60 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_grabberTopConstraint;
  *&v3[v60] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v61 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_gymKitBottomConstraint;
  *&v3[v61] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v62 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_airplayRouteButtonHeightConstraint;
  *&v3[v62] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v63 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_metadataToGymKitDisclaimerBottomConstraint;
  *&v3[v63] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v64 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_metadataToPlaybackTimeControlBottomConstraint;
  *&v3[v64] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v65 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_moreButtonTrailingConstraint;
  *&v3[v65] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v66 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_moreButtonHeightConstraint;
  *&v3[v66] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v67 = &v3[OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_preferredMaximumArtworkSize];
  *v67 = 0;
  *(v67 + 1) = 0;
  v67[16] = 1;
  v68 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackControlsLayoutGuideHeightConstraint;
  *&v3[v68] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v69 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackTimeControlWidthConstraint;
  *&v3[v69] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v70 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_volumeSliderBottomConstraint;
  *&v3[v70] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *&v3[OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView____lazy_storage___mediaControls] = 0;
  v71 = &v3[OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_presenter];
  v72 = v415;
  *v71 = a1;
  *(v71 + 1) = v72;
  v73 = type metadata accessor for SessionAudioPlayerView();
  v419.receiver = v3;
  v419.super_class = v73;
  swift_unknownObjectRetain();
  v74 = objc_msgSendSuper2(&v419, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  if (a1)
  {
    *(a1 + 24) = &off_2822CD040;
    swift_unknownObjectWeakAssign();
  }

  v75 = v74;
  v76 = [v75 layer];
  [v76 setAllowsGroupBlending_];

  v77 = v75;
  v78 = [v416 whiteColor];
  [v77 setBackgroundColor_];

  v393 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_animatedBackgroundView;
  [v77 addSubview_];
  v397 = objc_opt_self();
  v79 = [v397 buttonWithType_];
  [v79 setTranslatesAutoresizingMaskIntoConstraints_];
  [v79 addTarget:v77 action:sel_collapseButtonTapped_ forControlEvents:64];
  [v77 addSubview_];
  v399 = v79;
  [v79 setHidden_];
  v80 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackControlsView;
  v81 = *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackControlsView);
  v82 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = &v81[OBJC_IVAR____TtC9SeymourUI28SessionAudioPlaybackControls_onPlaybackControlTapped];
  v84 = *&v81[OBJC_IVAR____TtC9SeymourUI28SessionAudioPlaybackControls_onPlaybackControlTapped];
  *v83 = sub_20BB17A24;
  v83[1] = v82;
  v85 = v81;

  sub_20B583ECC(v84);

  v405 = v80;
  [v77 addSubview_];
  v86 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_airplayRouteButton;
  [*(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_airplayRouteButton) addTarget:v77 action:sel_onRouteButtonTappedDown_ forControlEvents:1];
  [*(v77 + v86) addTarget:v77 action:sel_onRouteButtonTappedUp_ forControlEvents:128];
  v87 = *(v77 + v86);
  [v87 addTarget:v77 action:sel_onRouteButtonTapped_ forControlEvents:64];

  v406 = v86;
  [v77 addSubview_];
  v88 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_volumeSlider;
  v89 = *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_volumeSlider);
  v90 = v416;
  v91 = [v416 whiteColor];
  v92 = [v91 colorWithAlphaComponent_];

  [v89 setTintColor_];
  v411 = v88;
  [v77 &selRef_onDisplayDisconnected];
  v93 = [objc_opt_self() grabberView];
  [v93 setTranslatesAutoresizingMaskIntoConstraints_];
  [v77 &selRef_onDisplayDisconnected];
  v412 = v93;
  [v93 setHidden_];
  v94 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackTimeControl;
  v95 = *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackTimeControl);
  v96 = [v90 whiteColor];
  v97 = [v96 colorWithAlphaComponent_];

  [v95 setTintColor_];
  v415 = v94;
  [v77 &selRef_onDisplayDisconnected];
  *&v414 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackMetadataView;
  [v77 &selRef_onDisplayDisconnected];
  v401 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkView;
  [v77 &selRef_onDisplayDisconnected];
  v98 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_gymKitDisclaimerView;
  [v77 &selRef_onDisplayDisconnected];
  v99 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_moreButton;
  [*(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_moreButton) setEnabled_];
  sub_20C13D814();
  v100 = sub_20C13C914();
  v101 = [v398 systemImageNamed_];

  if (v101)
  {
    v102 = [v396 preferredFontForTextStyle_];
    v103 = [objc_opt_self() configurationWithFont_];
    v104 = [v101 imageWithConfiguration_];
  }

  v105 = v408;
  v106 = v413;
  sub_20C13D804();
  (v402)[13](v400, *MEMORY[0x277D74FD8], v409);
  sub_20C13D674();
  v107 = *(v77 + v99);
  v108 = v407;
  v109 = v410;
  (*(v407 + 16))(v410, v106, v105);
  v110 = v105;
  v111 = *(v108 + 56);
  v111(v109, 0, 1, v110);
  v112 = v107;
  sub_20C13D894();

  v113 = *(v77 + v99);
  v114 = [v416 whiteColor];
  v115 = [v114 colorWithAlphaComponent_];

  [v113 _setBackgroundColor_];
  v403 = v99;
  [v77 &selRef_onDisplayDisconnected];
  v116 = *(v77 + v414);
  v404 = v98;
  [*(v116 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleMarqueeView) addCoordinatedMarqueeView_];
  v117 = [v397 buttonWithType_];
  [v117 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    sub_20C13D7F4();
    v111(v109, 0, 1, v408);
    sub_20C13D894();
    v118 = [v117 heightAnchor];
    v119 = [v118 constraintEqualToConstant_];

    [v119 setActive_];
    v120 = v395;
    [v117 setMaximumContentSizeCategory_];
    [v117 setMinimumContentSizeCategory_];
  }

  type metadata accessor for UILayoutPriority(0);
  v122 = v121;
  v418 = 1144750080;
  v417 = 1065353216;
  v410 = sub_20B7AA590(&qword_27C768270, type metadata accessor for UILayoutPriority);
  v409 = v122;
  sub_20C13BB94();
  LODWORD(v123) = v420[0];
  v124 = v117;
  [v117 setContentHuggingPriority:0 forAxis:v123];
  [v117 addTarget:v77 action:sel_exitButtonTapped_ forControlEvents:64];
  [v77 &selRef_onDisplayDisconnected];
  v125 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_overlayView;
  [*(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_overlayView) setAlpha_];
  [*&v125[v77] setHidden_];
  v126 = *&v125[v77];
  v127 = v125;
  v398 = v125;
  v128 = v126;
  v129 = [v416 systemBackgroundColor];
  [v128 setBackgroundColor_];

  [v77 insertSubview:*&v127[v77] belowSubview:v117];
  v130 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  [v77 addLayoutGuide_];
  v416 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  [v77 addLayoutGuide_];
  v131 = v406;
  v132 = [*(v77 + v406) bottomAnchor];
  v133 = [v77 safeAreaLayoutGuide];
  v134 = [v133 bottomAnchor];

  v135 = [v132 constraintEqualToAnchor_];
  v397 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_airplayRouteButtonBottomConstraint;
  v136 = *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_airplayRouteButtonBottomConstraint);
  *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_airplayRouteButtonBottomConstraint) = v135;

  v137 = [*(v77 + v131) heightAnchor];
  v138 = [v137 constraintEqualToConstant_];

  v396 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_airplayRouteButtonHeightConstraint;
  v139 = *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_airplayRouteButtonHeightConstraint);
  *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_airplayRouteButtonHeightConstraint) = v138;

  v402 = v130;
  v140 = [v130 topAnchor];
  v400 = v124;
  v141 = [v124 bottomAnchor];
  v142 = [v140 constraintEqualToAnchor_];

  v386 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkLayoutGuideTopConstraint;
  v143 = *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkLayoutGuideTopConstraint);
  *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkLayoutGuideTopConstraint) = v142;

  v144 = [v130 bottomAnchor];
  v145 = [*(v77 + v414) &selRef_setLineBreakMode_];
  v146 = [v144 constraintEqualToAnchor_];

  v384 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkLayoutGuideBottomConstraint;
  v147 = *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkLayoutGuideBottomConstraint);
  *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkLayoutGuideBottomConstraint) = v146;

  v148 = v401;
  v149 = [*(v77 + v401) leadingAnchor];
  v150 = [v77 leadingAnchor];
  v151 = [v149 &selRef:v150 alertControllerReleasedDictationButton:? + 5];

  v388 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkViewLeadingConstraint;
  v152 = *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkViewLeadingConstraint);
  *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkViewLeadingConstraint) = v151;

  v153 = [*(v77 + v148) trailingAnchor];
  v154 = [v77 trailingAnchor];
  v155 = [v153 &selRef:v154 alertControllerReleasedDictationButton:? + 5];

  v387 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkViewTrailingConstraint;
  v156 = *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkViewTrailingConstraint);
  *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkViewTrailingConstraint) = v155;

  v157 = [v124 leadingAnchor];
  v158 = [v77 leadingAnchor];
  v159 = [v157 &selRef:v158 alertControllerReleasedDictationButton:? + 5];

  v383 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_closeButtonLeadingConstraint;
  v160 = *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_closeButtonLeadingConstraint);
  *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_closeButtonLeadingConstraint) = v159;

  v161 = v403;
  v162 = [*(v77 + v403) trailingAnchor];
  v163 = [v77 trailingAnchor];
  v164 = [v162 &selRef:v163 alertControllerReleasedDictationButton:? + 5];

  v390 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_moreButtonTrailingConstraint;
  v165 = *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_moreButtonTrailingConstraint);
  *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_moreButtonTrailingConstraint) = v164;

  v166 = [*(v77 + v161) heightAnchor];
  v167 = [v166 constraintEqualToConstant_];

  v168 = *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_moreButtonHeightConstraint);
  *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_moreButtonHeightConstraint) = v167;

  v169 = v404;
  v170 = [*(v77 + v404) bottomAnchor];
  v171 = v415;
  v172 = [*(v77 + v415) topAnchor];
  v173 = [v170 &selRef:v172 alertControllerReleasedDictationButton:? + 5];

  v389 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_gymKitBottomConstraint;
  v174 = *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_gymKitBottomConstraint);
  *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_gymKitBottomConstraint) = v173;

  v175 = v414;
  v176 = [*(v77 + v414) bottomAnchor];
  v177 = [*(v77 + v169) topAnchor];
  v178 = [v176 &selRef:v177 alertControllerReleasedDictationButton:? + 5];

  v385 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_metadataToGymKitDisclaimerBottomConstraint;
  v179 = *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_metadataToGymKitDisclaimerBottomConstraint);
  *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_metadataToGymKitDisclaimerBottomConstraint) = v178;

  v180 = [*(v77 + v175) bottomAnchor];
  v181 = [*(v77 + v171) topAnchor];
  v182 = [v180 &selRef:v181 alertControllerReleasedDictationButton:? + 5];

  v183 = *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_metadataToPlaybackTimeControlBottomConstraint);
  *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_metadataToPlaybackTimeControlBottomConstraint) = v182;

  v184 = [v412 topAnchor];
  v185 = [v77 safeAreaLayoutGuide];
  v186 = [v185 topAnchor];

  v187 = [v184 &selRef:v186 alertControllerReleasedDictationButton:? + 5];
  v394 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_grabberTopConstraint;
  v188 = *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_grabberTopConstraint);
  *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_grabberTopConstraint) = v187;

  v189 = [v416 heightAnchor];
  v190 = [v189 constraintEqualToConstant_];

  v191 = *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackControlsLayoutGuideHeightConstraint);
  *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackControlsLayoutGuideHeightConstraint) = v190;

  v192 = [*(v77 + v171) widthAnchor];
  v193 = [v192 constraintEqualToConstant_];

  v391 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackTimeControlWidthConstraint;
  v194 = *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackTimeControlWidthConstraint);
  *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackTimeControlWidthConstraint) = v193;

  v195 = [*(*(*(v77 + v411) + OBJC_IVAR____TtC9SeymourUI12VolumeSlider_sliderView) + OBJC_IVAR____TtC9SeymourUI10SliderView_trackLayoutGuide) bottomAnchor];
  v196 = [v77 safeAreaLayoutGuide];
  v197 = [v196 bottomAnchor];

  v198 = [v195 &selRef:v197 alertControllerReleasedDictationButton:? + 5];
  v392 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_volumeSliderBottomConstraint;
  v199 = *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_volumeSliderBottomConstraint);
  *(v77 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_volumeSliderBottomConstraint) = v198;

  v395 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v200 = swift_allocObject();
  *(v200 + 16) = xmmword_20C16D800;
  v201 = v393;
  v202 = [*(v77 + v393) leadingAnchor];
  v203 = [v77 leadingAnchor];
  v204 = [v202 &selRef:v203 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 32) = v204;
  v205 = [*(v77 + v201) trailingAnchor];
  v206 = [v77 trailingAnchor];
  v207 = [v205 &selRef:v206 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 40) = v207;
  v208 = [*(v77 + v201) topAnchor];
  v209 = [v77 topAnchor];
  v210 = [v208 &selRef:v209 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 48) = v210;
  v211 = [*(v77 + v201) &selRef_secondaryLabel + 5];
  v212 = [v77 &selRef_secondaryLabel + 5];
  v213 = [v211 &selRef:v212 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 56) = v213;
  v214 = *(v77 + v383);
  *(v200 + 64) = v214;
  v215 = v214;
  v216 = v400;
  v217 = [v400 topAnchor];
  v218 = [v77 safeAreaLayoutGuide];
  v219 = [v218 topAnchor];

  v220 = [v217 &selRef:v219 alertControllerReleasedDictationButton:? + 5];
  *(v200 + 72) = v220;
  v221 = [v216 widthAnchor];
  v222 = [v216 heightAnchor];
  v223 = [v221 &selRef:v222 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 80) = v223;
  v224 = *(v77 + v386);
  *(v200 + 88) = v224;
  v225 = *(v77 + v384);
  *(v200 + 96) = v225;
  v226 = v401;
  v227 = *(v77 + v401);
  v228 = v224;
  v229 = v225;
  v230 = [v227 topAnchor];
  v231 = v402;
  v232 = [v402 topAnchor];
  v233 = [v230 &selRef:v232 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 104) = v233;
  v234 = [*(v77 + v226) &selRef_secondaryLabel + 5];
  v235 = [v231 &selRef_secondaryLabel + 5];
  v236 = [v234 &selRef:v235 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 112) = v236;
  v237 = [*(v77 + v226) centerXAnchor];
  v238 = [v77 &selRef_handleMenuButtonTapped + 2];
  v239 = [v237 &selRef:v238 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 120) = v239;
  v240 = *(v77 + v388);
  v418 = 1148846080;
  v417 = 1065353216;
  v241 = v240;
  sub_20C13BBA4();
  LODWORD(v242) = v420[0];
  [v241 setPriority_];
  *(v200 + 128) = v241;
  v243 = *(v77 + v387);
  v418 = 1148846080;
  v417 = 1065353216;
  v244 = v243;
  sub_20C13BBA4();
  LODWORD(v245) = v420[0];
  [v244 setPriority_];
  *(v200 + 136) = v244;
  v246 = v414;
  v247 = [*(v77 + v414) leadingAnchor];
  v248 = [v77 leadingAnchor];
  v249 = [v247 &selRef:v248 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 144) = v249;
  v250 = v403;
  v251 = [*(v77 + v403) leadingAnchor];
  v252 = [*(v77 + v246) trailingAnchor];
  v253 = [v251 &selRef:v252 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 152) = v253;
  v254 = [*(v77 + v250) centerYAnchor];
  v255 = [*(v77 + v246) &selRef_setNumberOfTapsRequired_];
  v256 = [v254 &selRef:v255 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 160) = v256;
  v257 = *(v77 + v390);
  *(v200 + 168) = v257;
  v258 = *(v77 + v250);
  v259 = v257;
  v260 = [v258 widthAnchor];
  v261 = [*(v77 + v250) heightAnchor];
  v262 = [v260 &selRef:v261 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 176) = v262;
  v263 = *(v77 + v385);
  *(v200 + 184) = v263;
  v264 = *(v77 + v389);
  *(v200 + 192) = v264;
  v265 = v404;
  v266 = *(v77 + v404);
  v267 = v263;
  v268 = v264;
  v269 = [v266 leadingAnchor];
  v270 = [v77 leadingAnchor];
  v271 = [v269 &selRef:v270 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 200) = v271;
  v272 = [*(v77 + v265) trailingAnchor];
  v273 = [v77 trailingAnchor];
  v274 = [v272 &selRef:v273 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 208) = v274;
  v275 = v415;
  v276 = [*(v77 + v415) leadingAnchor];
  v277 = [v77 leadingAnchor];
  v278 = [v276 constraintGreaterThanOrEqualToAnchor_];

  *(v200 + 216) = v278;
  v279 = [*(v77 + v275) trailingAnchor];
  v280 = [v77 trailingAnchor];
  v281 = [v279 constraintLessThanOrEqualToAnchor_];

  *(v200 + 224) = v281;
  v282 = [*(v77 + v275) centerXAnchor];
  v283 = [v77 centerXAnchor];
  v284 = [v282 &selRef:v283 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 232) = v284;
  v285 = [*(*(*(v77 + v275) + OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTrackView) + OBJC_IVAR____TtC9SeymourUI17PlaybackTrackView_trackLayoutGuide) bottomAnchor];
  v286 = [*(v77 + v405) topAnchor];
  v287 = [v285 constraintEqualToAnchor:v286 constant:-24.0];

  *(v200 + 240) = v287;
  v288 = *(v77 + v391);
  v418 = 1148846080;
  v417 = 1065353216;
  v289 = v288;
  sub_20C13BBA4();
  LODWORD(v290) = v420[0];
  [v289 setPriority_];
  *(v200 + 248) = v289;
  v291 = v416;
  v292 = [v416 leadingAnchor];
  v293 = [v77 leadingAnchor];
  v294 = [v292 &selRef:v293 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 256) = v294;
  v295 = [v291 trailingAnchor];
  v296 = [v77 trailingAnchor];
  v297 = [v295 &selRef:v296 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 264) = v297;
  v298 = [v291 topAnchor];
  v299 = [*(*(*(v77 + v415) + OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTrackView) + OBJC_IVAR____TtC9SeymourUI17PlaybackTrackView_trackLayoutGuide) bottomAnchor];
  v300 = [v298 &selRef:v299 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 272) = v300;
  v301 = v291;
  v302 = [v291 bottomAnchor];
  v303 = [*(*(*(v77 + v411) + OBJC_IVAR____TtC9SeymourUI12VolumeSlider_sliderView) + OBJC_IVAR____TtC9SeymourUI10SliderView_trackLayoutGuide) &selRef_setLineBreakMode_];
  v304 = [v302 &selRef:v303 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 280) = v304;
  v305 = v405;
  v306 = [*(v77 + v405) leadingAnchor];
  v307 = [v77 leadingAnchor];
  v308 = [v306 constraintGreaterThanOrEqualToAnchor_];

  *(v200 + 288) = v308;
  v309 = [*(v77 + v305) trailingAnchor];
  v310 = [v77 trailingAnchor];
  v311 = [v309 constraintLessThanOrEqualToAnchor_];

  *(v200 + 296) = v311;
  v312 = [*(v77 + v305) centerXAnchor];
  v313 = [v77 centerXAnchor];
  v314 = [v312 &selRef:v313 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 304) = v314;
  v315 = [*(v77 + v305) centerYAnchor];
  v316 = [v301 centerYAnchor];
  v317 = [v315 &selRef:v316 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 312) = v317;
  v318 = [*(v77 + v305) topAnchor];
  v319 = v415;
  v320 = [*(v77 + v415) bottomAnchor];
  v321 = [v318 &selRef:v320 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 320) = v321;
  v322 = v411;
  v323 = [*(v77 + v411) leadingAnchor];
  v324 = [*(v77 + v319) leadingAnchor];
  v325 = [v323 &selRef:v324 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 328) = v325;
  v326 = [*(v77 + v322) trailingAnchor];
  v327 = [*(v77 + v319) trailingAnchor];
  v328 = [v326 &selRef:v327 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 336) = v328;
  v329 = *(v77 + v392);
  *(v200 + 344) = v329;
  v330 = v406;
  v331 = *(v77 + v406);
  v332 = v329;
  v333 = [v331 centerXAnchor];
  v334 = [v77 centerXAnchor];
  v335 = [v333 &selRef:v334 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 352) = v335;
  v336 = [*(v77 + v330) leadingAnchor];
  v337 = [*(v77 + v319) leadingAnchor];
  v338 = [v336 constraintGreaterThanOrEqualToAnchor_];

  *(v200 + 360) = v338;
  v339 = [*(v77 + v330) trailingAnchor];
  v340 = [*(v77 + v319) trailingAnchor];
  v341 = [v339 constraintLessThanOrEqualToAnchor_];

  *(v200 + 368) = v341;
  v342 = *&v397[v77];
  *(v200 + 376) = v342;
  v343 = *&v396[v77];
  v418 = 1148846080;
  v417 = 1065353216;
  v344 = v342;
  v345 = v343;
  sub_20C13BBA4();
  LODWORD(v346) = v420[0];
  [v345 setPriority_];
  *(v200 + 384) = v345;
  v347 = [v412 centerXAnchor];
  v348 = [v77 centerXAnchor];
  v349 = [v347 &selRef:v348 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 392) = v349;
  v350 = *(v77 + v394);
  *(v200 + 400) = v350;
  v351 = v398;
  v352 = *&v398[v77];
  v353 = v350;
  v354 = [v352 leadingAnchor];
  v355 = [v77 leadingAnchor];
  v356 = [v354 &selRef:v355 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 408) = v356;
  v357 = [*&v351[v77] trailingAnchor];
  v358 = [v77 trailingAnchor];
  v359 = [v357 &selRef:v358 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 416) = v359;
  v360 = [*&v351[v77] topAnchor];
  v361 = [v77 topAnchor];
  v362 = [v360 &selRef:v361 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 424) = v362;
  v363 = [*&v351[v77] bottomAnchor];
  v364 = [v77 bottomAnchor];
  v365 = [v363 &selRef:v364 alertControllerReleasedDictationButton:? + 5];

  *(v200 + 432) = v365;
  v366 = v399;
  v367 = [v399 leadingAnchor];
  v368 = [v77 leadingAnchor];

  v369 = [v367 &selRef:v368 alertControllerReleasedDictationButton:? + 5];
  *(v200 + 440) = v369;
  v370 = [v366 trailingAnchor];
  v371 = v400;
  v372 = [v400 leadingAnchor];

  v373 = [v370 constraintEqualToAnchor:v372 constant:-20.0];
  *(v200 + 448) = v373;
  v374 = [v366 topAnchor];
  v375 = v412;
  v376 = [v412 topAnchor];

  v377 = [v374 &selRef:v376 alertControllerReleasedDictationButton:? + 5];
  *(v200 + 456) = v377;
  v378 = [v366 heightAnchor];

  v379 = [v378 constraintEqualToConstant_];
  *(v200 + 464) = v379;
  sub_20B5E29D0();
  v380 = sub_20C13CC54();

  [v395 activateConstraints_];

  (*(v407 + 8))(v413, v408);
  return v77;
}

void sub_20BB17A40()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_animatedBackgroundView;
  type metadata accessor for AnimatedBackgroundView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v2) = v3;
  *(v1 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_layout) = xmmword_20C16D7F0;
  v4 = [objc_allocWithZone(MEMORY[0x277CD6048]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  v7 = [v6 colorWithAlphaComponent_];

  [v4 setTintColor_];
  v8 = *MEMORY[0x277D74420];
  v9 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76940] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v11 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_20C14F980;
  v13 = *MEMORY[0x277D74430];
  *(v12 + 32) = *MEMORY[0x277D74430];
  *(v12 + 40) = v8;
  v14 = v11;
  v15 = v13;
  v16 = sub_20B6B134C(v12);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v16;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B7AA590(&qword_27C7618A0, type metadata accessor for AttributeName);
  v17 = sub_20C13C744();

  v18 = [v9 fontDescriptorByAddingAttributes_];

  v19 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];
  [v4 setFont_];

  [v4 setHitRectInsets_];
  v20 = sub_20C13C914();
  v21 = [objc_opt_self() systemImageNamed_];

  if (v21)
  {
    v22 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x277D76A28] scale:2];
    v23 = [v21 imageWithSymbolConfiguration_];

    if (v23)
    {
      [v4 setAccessoryImage_];
    }
  }

  *(v1 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_airplayRouteButton) = v4;
  v24 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkView;
  v25 = [objc_allocWithZone(type metadata accessor for PlaybackArtworkView()) initWithFrame_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v24) = v25;
  v26 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_gymKitDisclaimerView;
  v27 = [objc_allocWithZone(type metadata accessor for GymKitDisclaimerView()) init];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v26) = v27;
  v28 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_moreButton;
  v29 = [objc_allocWithZone(MEMORY[0x277CD5D68]) init];
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = [v5 whiteColor];
  v31 = [v30 colorWithAlphaComponent_];

  [v29 setTintColor_];
  v32 = sub_20C13C954();
  v64[3] = MEMORY[0x277D837D0];
  v64[0] = v32;
  v64[1] = v33;
  v34 = sub_20BD54E84(v64);

  sub_20B520158(v64, &unk_27C768A00);
  LODWORD(v35) = 1148846080;
  [v34 setContentHuggingPriority:0 forAxis:v35];
  v36 = *MEMORY[0x277D76838];
  [v34 setMinimumContentSizeCategory_];
  [v34 setMaximumContentSizeCategory_];
  *(v1 + v28) = v34;
  v37 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackControlsView;
  type metadata accessor for SessionAudioPlaybackControls();
  v38 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v37) = v38;
  v39 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackMetadataView;
  v40 = [objc_allocWithZone(type metadata accessor for PlaybackMetadataView()) init];
  [v40 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v39) = v40;
  v41 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackTimeControl;
  type metadata accessor for PlaybackTimeControl();
  v42 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v42 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v41) = v42;
  v43 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_overlayView;
  v44 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v44 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v43) = v44;
  v45 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_volumeSlider;
  type metadata accessor for VolumeSlider();
  v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v46 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v45) = v46;
  v47 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_airplayRouteButtonBottomConstraint;
  *(v1 + v47) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v48 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkLayoutGuideTopConstraint;
  *(v1 + v48) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v49 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkLayoutGuideBottomConstraint;
  *(v1 + v49) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v50 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkViewLeadingConstraint;
  *(v1 + v50) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v51 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_artworkViewTrailingConstraint;
  *(v1 + v51) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v52 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_closeButtonLeadingConstraint;
  *(v1 + v52) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v53 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_grabberTopConstraint;
  *(v1 + v53) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v54 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_gymKitBottomConstraint;
  *(v1 + v54) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v55 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_airplayRouteButtonHeightConstraint;
  *(v1 + v55) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v56 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_metadataToGymKitDisclaimerBottomConstraint;
  *(v1 + v56) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v57 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_metadataToPlaybackTimeControlBottomConstraint;
  *(v1 + v57) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v58 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_moreButtonTrailingConstraint;
  *(v1 + v58) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v59 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_moreButtonHeightConstraint;
  *(v1 + v59) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v60 = v1 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_preferredMaximumArtworkSize;
  *v60 = 0;
  *(v60 + 8) = 0;
  *(v60 + 16) = 1;
  v61 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackControlsLayoutGuideHeightConstraint;
  *(v1 + v61) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v62 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_playbackTimeControlWidthConstraint;
  *(v1 + v62) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v63 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_volumeSliderBottomConstraint;
  *(v1 + v63) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *(v1 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView____lazy_storage___mediaControls) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BB18308(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v29 = MEMORY[0x277D84F90];
  sub_20BB5DED4(0, v2, 0);
  v3 = v29;
  v26 = v4 + 64;
  v5 = sub_20C13DAA4();
  v6 = 0;
  v23 = v4 + 72;
  v24 = v2;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v4 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v26 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    v25 = v6;
    v10 = *(v4 + 36);
    v11 = v4;
    v27 = *(*(v4 + 56) + 8 * v5);

    sub_20BB1C724(&v27, &v28);
    if (v1)
    {
      goto LABEL_26;
    }

    v12 = v28;
    v29 = v3;
    v14 = *(v3 + 16);
    v13 = *(v3 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_20BB5DED4((v13 > 1), v14 + 1, 1);
      v3 = v29;
    }

    *(v3 + 16) = v14 + 1;
    *(v3 + 8 * v14 + 32) = v12;
    v7 = 1 << *(v11 + 32);
    if (v5 >= v7)
    {
      goto LABEL_23;
    }

    v15 = *(v26 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_24;
    }

    v4 = v11;
    if (v10 != *(v11 + 36))
    {
      goto LABEL_25;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (v23 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_20B526EA4(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_20B526EA4(v5, v10, 0);
    }

LABEL_4:
    v1 = 0;
    v6 = v25 + 1;
    v5 = v7;
    if (v25 + 1 == v8)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:

  __break(1u);
  return result;
}

uint64_t sub_20BB1856C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772000);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17[-v6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_20C137374();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v7, a1, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
    v12 = OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanTemplate;
    swift_beginAccess();
    sub_20BB1E0DC(v7, v9 + v12);
    swift_endAccess();
  }

  v13 = sub_20C13CDF4();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v14;
  sub_20B615240(0, 0, v4, &unk_20C16D970, v15);
}

uint64_t sub_20BB18804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_20BB18824, 0, 0);
}

uint64_t sub_20BB18824()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_20B52EB0C;

    return sub_20BB1A910();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_20BB18918(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 304) = a1;
  v3 = sub_20C13BB84();
  *(v2 + 48) = v3;
  *(v2 + 56) = *(v3 - 8);
  *(v2 + 64) = swift_task_alloc();
  v4 = sub_20C133954();
  *(v2 + 72) = v4;
  *(v2 + 80) = *(v4 - 8);
  *(v2 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  *(v2 + 96) = swift_task_alloc();
  sub_20C133594();
  *(v2 + 104) = swift_task_alloc();
  sub_20C132EE4();
  *(v2 + 112) = swift_task_alloc();
  v5 = sub_20C133274();
  *(v2 + 120) = v5;
  *(v2 + 128) = *(v5 - 8);
  *(v2 + 136) = swift_task_alloc();
  v6 = sub_20C133154();
  *(v2 + 144) = v6;
  *(v2 + 152) = *(v6 - 8);
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  v7 = sub_20C132E94();
  *(v2 + 176) = v7;
  *(v2 + 184) = *(v7 - 8);
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772000);
  *(v2 + 216) = swift_task_alloc();
  v8 = sub_20C137374();
  *(v2 + 224) = v8;
  *(v2 + 232) = *(v8 - 8);
  *(v2 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BB18C94, 0, 0);
}

uint64_t sub_20BB18C94()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 40);
  v5 = OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanTemplate;
  swift_beginAccess();
  sub_20B52F9E8(v4 + v5, v3, &unk_27C772000);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(*(v0 + 216), &unk_27C772000);
    v6 = sub_20C134E24();
    sub_20BB1E094(&unk_27C762270, MEMORY[0x277D51210]);
    v7 = swift_allocError();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D51198], v6);
    swift_willThrow();
    *(v0 + 280) = v7;
    v9 = swift_task_alloc();
    *(v0 + 288) = v9;
    *v9 = v0;
    v9[1] = sub_20BB193BC;

    return sub_20BB1C9E4(v7);
  }

  else
  {
    (*(*(v0 + 232) + 32))(*(v0 + 240), *(v0 + 216), *(v0 + 224));
    sub_20C132E64();
    sub_20C137364();
    sub_20C133014();
    sub_20C132D54();
    v11 = *(v0 + 184);
    v23 = *(v0 + 200);
    v24 = *(v0 + 192);
    v12 = *(v0 + 168);
    v13 = *(v0 + 176);
    v14 = *(v0 + 152);
    v15 = *(v0 + 144);
    v26 = *(v0 + 208);
    v27 = *(v0 + 96);
    v25 = *(v0 + 304);

    (*(v14 + 8))(v12, v15);
    v16 = *(v11 + 8);
    *(v0 + 248) = v16;
    *(v0 + 256) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v23, v13);
    sub_20C1372B4();
    (*(v11 + 16))(v24, v26, v13);
    sub_20C133014();
    sub_20C133554();
    sub_20C133264();
    sub_20BB1A4A0(v27);
    v17 = *(v0 + 40);
    sub_20BB1993C(v25 & 1, *(v0 + 96));
    v18 = *(v17 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanClient + 24);
    v19 = *(v17 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanClient + 32);
    __swift_project_boxed_opaque_existential_1((v17 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanClient), v18);
    v20 = swift_task_alloc();
    *(v0 + 264) = v20;
    *v20 = v0;
    v20[1] = sub_20BB19118;
    v21 = *(v0 + 136);
    v22 = *(v0 + 88);

    return MEMORY[0x2821ADF08](v22, v21, v18, v19);
  }
}

uint64_t sub_20BB19118()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_20BB195DC;
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
    v3 = sub_20BB19244;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BB19244()
{
  v1 = v0[31];
  v2 = v0[29];
  v11 = v0[30];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[22];
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[15];
  sub_20B520158(v0[12], &unk_27C76A970);
  (*(v6 + 8))(v7, v8);
  v1(v4, v5);
  (*(v2 + 8))(v11, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20BB193BC()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_20BB1970C;
  }

  else
  {
    v2 = sub_20BB194D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BB194D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BB195DC()
{
  v1 = v0[31];
  v2 = v0[29];
  v12 = v0[30];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[22];
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[15];
  sub_20B520158(v0[12], &unk_27C76A970);
  (*(v6 + 8))(v7, v8);
  v1(v4, v5);
  (*(v2 + 8))(v12, v3);
  v9 = v0[34];
  v0[35] = v9;
  v10 = swift_task_alloc();
  v0[36] = v10;
  *v10 = v0;
  v10[1] = sub_20BB193BC;

  return sub_20BB1C9E4(v9);
}

uint64_t sub_20BB1970C()
{
  v1 = v0[37];
  sub_20C13B454();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[37];
  v7 = v0[35];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20B517000, v3, v4, "[TVWorkoutPlanRepetitionPresenter] Plan repetition failed with error: %@", v8, 0xCu);
    sub_20B520158(v9, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_20BB1993C(int a1, uint64_t a2)
{
  LODWORD(v72) = a1;
  v70 = sub_20C132EE4();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v9 - 8);
  v87 = &v67 - v10;
  v88 = sub_20C1333A4();
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v85 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v12 - 8);
  v84 = &v67 - v13;
  v14 = sub_20C1352E4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v67 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v67 - v22;
  v24 = sub_20C134F24();
  v25 = MEMORY[0x28223BE20](v24);
  v74 = v2;
  v91 = v2;
  v78 = v27;
  v28 = *(v27 + 104);
  v76 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v29;
  v28(v25);
  v30 = *MEMORY[0x277D52B40];
  v31 = sub_20C136664();
  v32 = *(v31 - 8);
  (*(v32 + 104))(v23, v30, v31);
  v33 = *(v32 + 56);
  v77 = v23;
  v33(v23, 0, 1, v31);
  v34 = sub_20C132C14();
  v35 = *(*(v34 - 8) + 56);
  v80 = v20;
  v35(v20, 1, 1, v34);
  v36 = *MEMORY[0x277D51768];
  v82 = v15;
  v37 = *(v15 + 104);
  v81 = v17;
  v83 = v14;
  v37(v17, v36, v14);
  v38 = sub_20C133954();
  v39 = *(v38 - 8);
  v40 = *(v39 + 48);
  v41 = a2;
  v42 = v40(a2, 1, v38);
  if (v72)
  {
    v72 = 0xD000000000000012;
    if (v42 == 1)
    {
      v43 = "RefreshRestartPlan";
    }

    else
    {
      v43 = "RefreshReplacePlan";
    }

    v45 = (v43 - 32) | 0x8000000000000000;
  }

  else
  {
    v44 = 0x506563616C706552;
    if (v42 == 1)
    {
      v44 = 0x5074726174736552;
    }

    v72 = v44;
    v45 = 0xEB000000006E616CLL;
  }

  v71 = v45;
  v46 = *MEMORY[0x277D523B0];
  v47 = sub_20C135ED4();
  v48 = *(v47 - 8);
  v49 = v84;
  (*(v48 + 104))(v84, v46, v47);
  (*(v48 + 56))(v49, 0, 1, v47);
  (*(v86 + 16))(v85, v74 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_metricPage, v88);
  v50 = sub_20C136E94();
  (*(*(v50 - 8) + 56))(v87, 1, 1, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  *(inited + 32) = 9;
  v52 = v73;
  sub_20B52F9E8(v41, v73, &unk_27C76A970);
  if (v40(v52, 1, v38) == 1)
  {
    sub_20B520158(v52, &unk_27C76A970);
    v53 = 0;
    v54 = 0;
  }

  else
  {
    v55 = v68;
    sub_20C133804();
    (*(v39 + 8))(v52, v38);
    v53 = sub_20C132EA4();
    v54 = v56;
    (*(v69 + 8))(v55, v70);
  }

  v89 = v53;
  v90 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
  sub_20BB1DA4C(&qword_27C7665A0, &qword_27C767830);
  sub_20C13DC04();
  *(inited + 80) = 12;
  v57 = v75;
  sub_20B52F9E8(v41, v75, &unk_27C76A970);
  if (v40(v57, 1, v38) == 1)
  {
    sub_20B520158(v57, &unk_27C76A970);
    v58 = 0;
  }

  else
  {
    v58 = sub_20C1337E4();
    (*(v39 + 8))(v57, v38);
  }

  v89 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A7A0);
  sub_20BB1D9C8();
  sub_20C13DC04();
  sub_20B6B29D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762260);
  swift_arrayDestroy();
  type metadata accessor for TVWorkoutPlanRepetitionPresenter();
  sub_20BB1E094(&qword_27C76A798, type metadata accessor for TVWorkoutPlanRepetitionPresenter);
  v59 = v87;
  v60 = v76;
  v61 = v77;
  v62 = v80;
  v63 = v81;
  v64 = v84;
  v65 = v85;
  sub_20C138DB4();

  sub_20B520158(v59, &unk_27C76BC90);
  (*(v86 + 8))(v65, v88);
  sub_20B520158(v64, &unk_27C7621D0);
  (*(v82 + 8))(v63, v83);
  sub_20B520158(v62, &unk_27C7617F0);
  sub_20B520158(v61, &unk_27C7622E0);
  return (*(v78 + 8))(v60, v79);
}

uint64_t sub_20BB1A4A0@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_20C133954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_20C136C64();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_remoteBrowsingSource), *(v1 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_remoteBrowsingSource + 24));
  sub_20C13B174();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20B520158(v10, &qword_27C768690);
    v15 = sub_20C1356F4();
    sub_20BB1E094(&qword_27C769680, MEMORY[0x277D51BF0]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51BA8], v15);
    return swift_willThrow();
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_20C136A54();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v12 + 8))(v14, v11);
    sub_20B520158(v4, &unk_27C76A970);
LABEL_8:
    v24 = 1;
    v23 = v26;
    return (*(v6 + 56))(v23, v24, 1, v5);
  }

  v18 = *(v6 + 32);
  v19 = v25;
  v18();
  v29 = sub_20C1338B4();
  v30 = v20 & 1;
  v27 = 0;
  v28 = 1;
  sub_20B6CD3B4();
  sub_20B6CD408();
  v21 = sub_20C133BF4();
  (*(v12 + 8))(v14, v11);
  if ((v21 & 1) == 0)
  {
    (*(v6 + 8))(v19, v5);
    goto LABEL_8;
  }

  v22 = v26;
  (v18)(v26, v19, v5);
  v23 = v22;
  v24 = 0;
  return (*(v6 + 56))(v23, v24, 1, v5);
}

uint64_t sub_20BB1A910()
{
  v1[19] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  v1[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  v1[21] = swift_task_alloc();
  v2 = sub_20C133154();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v3 = sub_20C132E94();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772000);
  v1[29] = swift_task_alloc();
  v4 = sub_20C137374();
  v1[30] = v4;
  v1[31] = *(v4 - 8);
  v1[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BB1AB3C, 0, 0);
}

uint64_t sub_20BB1AB3C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 152);
  v5 = OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanTemplate;
  swift_beginAccess();
  sub_20B52F9E8(v4 + v5, v3, &unk_27C772000);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(*(v0 + 232), &unk_27C772000);
    v6 = sub_20C134E24();
    sub_20BB1E094(&unk_27C762270, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51198], v6);
    swift_willThrow();

    v18 = *(v0 + 8);
LABEL_4:

    return v18();
  }

  (*(*(v0 + 248) + 32))(*(v0 + 256), *(v0 + 232), *(v0 + 240));
  sub_20C132E64();
  sub_20C137364();
  sub_20C133014();
  sub_20C132D54();
  v8 = *(v0 + 208);
  v34 = *(v0 + 216);
  v10 = *(v0 + 192);
  v9 = *(v0 + 200);
  v11 = *(v0 + 176);
  v12 = *(v0 + 184);
  v13 = *(v0 + 168);

  (*(v12 + 8))(v10, v11);
  v14 = *(v8 + 8);
  *(v0 + 264) = v14;
  *(v0 + 272) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v34, v9);
  sub_20BB1A4A0(v13);
  v15 = *(v0 + 168);
  v16 = sub_20C133954();
  LODWORD(v10) = (*(*(v16 - 8) + 48))(v15, 1, v16);
  *(v0 + 368) = v10;
  sub_20B520158(v15, &unk_27C76A970);
  *(v0 + 280) = sub_20BB1B62C(v10 != 1);
  *(v0 + 288) = v17;
  v20 = *(v0 + 200);
  v21 = *(v0 + 208);
  v22 = *(v0 + 160);
  (*(v21 + 16))(v22, *(v0 + 224), v20);
  (*(v21 + 56))(v22, 0, 1, v20);
  *(v0 + 296) = sub_20BB1B984(v10 != 1, v22);
  *(v0 + 304) = v23;
  sub_20B520158(*(v0 + 160), &qword_27C762AC0);
  *(v0 + 312) = sub_20BB1BBA8();
  v24 = *(*(v0 + 152) + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanStringBuilder);
  __swift_project_boxed_opaque_existential_1((v24 + 48), *(v24 + 72));
  v25 = sub_20B5E107C();
  *(v0 + 320) = v26;
  *(v0 + 328) = v25;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 336) = Strong;
  if (!Strong)
  {

    v32 = *(v0 + 248);
    v31 = *(v0 + 256);
    v33 = *(v0 + 240);
    (*(v0 + 264))(*(v0 + 224), *(v0 + 200));
    (*(v32 + 8))(v31, v33);

    v18 = *(v0 + 8);
    goto LABEL_4;
  }

  __swift_project_boxed_opaque_existential_1((v24 + 48), *(v24 + 72));
  *(v0 + 344) = sub_20B5E107C();
  *(v0 + 352) = v28;
  sub_20C13CDA4();
  *(v0 + 360) = sub_20C13CD94();
  v30 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BB1B184, v30, v29);
}

uint64_t sub_20BB1B184()
{
  v1 = v0[39];

  v2 = sub_20C13C914();

  v3 = sub_20C13C914();

  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  if (v1)
  {
    v5 = v0[39];
    v6 = type metadata accessor for TVWorkoutPlanRepetitionDetailViewController();
    v7 = objc_allocWithZone(v6);
    v8 = objc_allocWithZone(type metadata accessor for TVWorkoutPlanRepetitionDetailView());
    sub_20C0593CC(v5);
    *&v7[OBJC_IVAR____TtC9SeymourUI43TVWorkoutPlanRepetitionDetailViewController_detailView] = v9;
    v0[17] = v7;
    v0[18] = v6;
    v10 = objc_msgSendSuper2((v0 + 17), sel_initWithNibName_bundle_, 0, 0);
    [v4 setContentViewController_];
  }

  v11 = v0[42];
  v12 = 2 * (*(v0 + 92) != 1);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  swift_unknownObjectRetain();
  v14 = sub_20C13C914();

  v0[6] = sub_20BB1D9B8;
  v0[7] = v13;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_20B762A80;
  v0[5] = &block_descriptor_84;
  v15 = _Block_copy(v0 + 2);

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v14 style:v12 handler:v15];
  _Block_release(v15);

  [v4 addAction_];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = sub_20C13C914();

  v0[12] = sub_20BB1D9C0;
  v0[13] = v18;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_20B762A80;
  v0[11] = &block_descriptor_16;
  v20 = _Block_copy(v0 + 8);

  v21 = [v16 actionWithTitle:v19 style:1 handler:v20];
  _Block_release(v20);

  [v4 addAction_];

  [v11 presentViewController:v4 animated:1 completion:0];
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_20BB1B540, 0, 0);
}

uint64_t sub_20BB1B540()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  (*(v0 + 264))(*(v0 + 224), *(v0 + 200));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20BB1B62C(int a1)
{
  v17[11] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772000);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  v5 = sub_20C137374();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanTemplate;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v9, v4, &unk_27C772000);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20B520158(v4, &unk_27C772000);
    v10 = sub_20C134E24();
    sub_20BB1E094(&unk_27C762270, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51198], v10);
    swift_willThrow();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    __swift_project_boxed_opaque_existential_1((*(v1 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanStringBuilder) + 48), *(*(v1 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanStringBuilder) + 72));
    sub_20B5E107C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_20C14F980;
    v13 = sub_20C137314();
    v15 = v14;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_20B5D91B8();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    v10 = sub_20C13C924();

    (*(v6 + 8))(v8, v5);
  }

  return v10;
}

uint64_t sub_20BB1B984(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_20C132E94();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B52F9E8(a2, v7, &qword_27C762AC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_20B520158(v7, &qword_27C762AC0);
    __swift_project_boxed_opaque_existential_1((*(v2 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanStringBuilder) + 48), *(*(v2 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanStringBuilder) + 72));
    return sub_20B5E107C();
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v13 = (v9 + 8);
    if (a1)
    {
      v14 = sub_20BAB306C(v11);
    }

    else
    {
      v14 = sub_20BAB2C10(v11);
    }

    v15 = v14;
    (*v13)(v11, v8);
    return v15;
  }
}

uint64_t sub_20BB1BBA8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772000);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v44 - v3;
  v5 = sub_20C137374();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanTemplate;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v9, v4, &unk_27C772000);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20B520158(v4, &unk_27C772000);
    v10 = sub_20C134E24();
    sub_20BB1E094(&unk_27C762270, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51198], v10);
    swift_willThrow();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanStringBuilder);
    __swift_project_boxed_opaque_existential_1((v12 + 48), *(v12 + 72));
    v51 = sub_20B5E107C();
    v52 = v5;
    v53 = v13;
    v14 = v8;
    v15 = sub_20C137364();
    v50 = sub_20BAB39FC(v15);
    v17 = v16;

    __swift_project_boxed_opaque_existential_1((v12 + 48), *(v12 + 72));
    v18 = sub_20B5E107C();
    v20 = v19;
    v21 = sub_20BB1C15C();
    if (v1)
    {
      (*(v6 + 8))(v8, v52);
    }

    else
    {
      v23 = v22;
      v47 = v21;
      v48 = v6;
      v49 = v17;
      v0 = v14;
      v24 = sub_20C1372A4();
      if (v25)
      {

        v26 = sub_20C134E24();
        sub_20BB1E094(&unk_27C762270, MEMORY[0x277D51210]);
        swift_allocError();
        (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D511F0], v26);
        swift_willThrow();
        (*(v48 + 8))(v14, v52);
      }

      else
      {
        v28 = v18;
        v46 = v14;
        v44 = v23;
        v29 = v24;
        __swift_project_boxed_opaque_existential_1((v12 + 48), *(v12 + 72));
        v30 = sub_20B5E107C();
        v45 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
        v32 = swift_allocObject();
        v33 = MEMORY[0x277D83B88];
        v34 = MEMORY[0x277D83C10];
        *(v32 + 16) = xmmword_20C14F980;
        *(v32 + 56) = v33;
        *(v32 + 64) = v34;
        *(v32 + 32) = v29;
        __swift_project_boxed_opaque_existential_1((v12 + 48), *(v12 + 72));
        v35 = sub_20B5E10B0();
        v37 = v36;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A790);
        v0 = swift_allocObject();
        *(v0 + 16) = xmmword_20C1517D0;
        v38 = v53;
        *(v0 + 32) = v51;
        *(v0 + 40) = v38;
        v39 = v49;
        *(v0 + 48) = v50;
        *(v0 + 56) = v39;
        *(v0 + 64) = v28;
        *(v0 + 72) = v20;
        v40 = v48;
        v42 = v44;
        v41 = v45;
        *(v0 + 80) = v47;
        *(v0 + 88) = v42;
        *(v0 + 96) = v30;
        *(v0 + 104) = v41;
        *(v0 + 112) = v35;
        *(v0 + 120) = v37;
        (*(v40 + 8))(v46, v52);
      }
    }
  }

  return v0;
}

uint64_t sub_20BB1C15C()
{
  v1 = sub_20C137374();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772000);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765838);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v10 = sub_20C1357B4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanTemplate;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v14, v6, &unk_27C772000);
  if (!(*(v2 + 48))(v6, 1, v1))
  {
    v39 = v13;
    v0 = v40;
    (*(v2 + 16))(v40, v6, v1);
    sub_20B520158(v6, &unk_27C772000);
    sub_20C137334();
    (*(v2 + 8))(v0, v1);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      goto LABEL_4;
    }

    (*(v11 + 32))(v39, v9, v10);
    v18 = sub_20C135764();
    v19 = sub_20BB18308(v18);

    v20 = *(v19 + 16);
    if (!v20)
    {

LABEL_20:
      v0 = sub_20C134E24();
      sub_20BB1E094(&unk_27C762270, MEMORY[0x277D51210]);
      swift_allocError();
      (*(*(v0 - 8) + 104))(v37, *MEMORY[0x277D511C8], v0);
      swift_willThrow();
      (*(v11 + 8))(v39, v10);
      return v0;
    }

    v21 = *(v19 + 32);
    v22 = v20 - 1;
    if (v20 != 1)
    {
      if (v20 >= 5)
      {
        v23 = v22 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v24 = vdupq_n_s64(*&v21);
        v25 = (v19 + 56);
        v26 = v22 & 0xFFFFFFFFFFFFFFFCLL;
        v27 = v24;
        do
        {
          v24 = vbslq_s8(vcgtq_s64(v24, v25[-1]), v24, v25[-1]);
          v27 = vbslq_s8(vcgtq_s64(v27, *v25), v27, *v25);
          v25 += 2;
          v26 -= 4;
        }

        while (v26);
        v28 = vbslq_s8(vcgtq_s64(v24, v27), v24, v27);
        v29 = vextq_s8(v28, v28, 8uLL).u64[0];
        v21 = vbsl_s8(vcgtd_s64(v28.i64[0], v29), *v28.i8, v29);
        if (v22 == (v22 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v23 = 1;
      }

      v30 = v20 - v23;
      v31 = (v19 + 8 * v23 + 32);
      do
      {
        v33 = *v31++;
        v32 = v33;
        if (*&v21 <= *&v33)
        {
          v21 = v32;
        }

        --v30;
      }

      while (v30);
    }

LABEL_19:
    v34 = sub_20B6C1990(v19);
    v36 = v35;

    if ((v36 & 1) == 0)
    {
      v0 = sub_20BAB2AB4(v34, *&v21);
      (*(v11 + 8))(v39, v10);
      return v0;
    }

    goto LABEL_20;
  }

  sub_20B520158(v6, &unk_27C772000);
  (*(v11 + 56))(v9, 1, 1, v10);
LABEL_4:
  sub_20B520158(v9, &qword_27C765838);
  v15 = sub_20C134E24();
  sub_20BB1E094(&unk_27C762270, MEMORY[0x277D51210]);
  swift_allocError();
  (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D511C8], v15);
  swift_willThrow();
  return v0;
}

void sub_20BB1C724(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v28 = sub_20C136864();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(v8 + 16);
  if (v9)
  {
    v24[0] = a2;
    v24[1] = v2;
    v29 = MEMORY[0x277D84F90];
    sub_20BB5DED4(0, v9, 0);
    v10 = v29;
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v13 = v8 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v25 = *(v11 + 56);
    v26 = v12;
    v27 = v11;
    v14 = (v11 - 8);
    do
    {
      v15 = v28;
      v26(v7, v13, v28);
      v16 = sub_20C136854();
      (*v14)(v7, v15);
      v29 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_20BB5DED4((v17 > 1), v18 + 1, 1);
        v10 = v29;
      }

      *(v10 + 16) = v19;
      *(v10 + 8 * v18 + 32) = v16;
      v13 += v25;
      --v9;
    }

    while (v9);
    a2 = v24[0];
LABEL_8:
    v20 = 0;
    v21 = 32;
    while (1)
    {
      v22 = *(v10 + v21);
      v23 = __OFADD__(v20, v22);
      v20 += v22;
      if (v23)
      {
        break;
      }

      v21 += 8;
      if (!--v19)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    return;
  }

  v10 = MEMORY[0x277D84F90];
  v19 = *(MEMORY[0x277D84F90] + 16);
  if (v19)
  {
    goto LABEL_8;
  }

  v20 = 0;
LABEL_11:

  *a2 = v20;
}

int64_t sub_20BB1C930(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_20BB1C9E4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  v2[4] = swift_task_alloc();
  v3 = sub_20C135174();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BB1CADC, 0, 0);
}

uint64_t sub_20BB1CADC()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_remoteBrowsingSource), *(v0[3] + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_remoteBrowsingSource + 24));
  sub_20C13B184();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(v0[4], &unk_27C76BC00);
    v4 = sub_20C1356F4();
    sub_20BB1E094(&qword_27C769680, MEMORY[0x277D51BF0]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51B88], v4);
    swift_willThrow();
LABEL_11:

    v22 = v0[1];

    return v22();
  }

  (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
  if (sub_20C1350F4() == 4 || (v6 = sub_20C137194(), v6 != sub_20C137194()))
  {
LABEL_10:
    v18 = v0[6];
    v17 = v0[7];
    v19 = v0[5];
    v20 = v0[2];
    swift_willThrow();
    (*(v18 + 8))(v17, v19);
    v21 = v20;
    goto LABEL_11;
  }

  v7 = *(v0[3] + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanStringBuilder);
  __swift_project_boxed_opaque_existential_1((v7 + 48), *(v7 + 72));
  v8 = sub_20B5E107C();
  v0[8] = v9;
  v10 = sub_20BB1CFE4();
  v0[9] = v11;
  __swift_project_boxed_opaque_existential_1((v7 + 48), *(v7 + 72));
  v12 = sub_20B5E107C();
  v0[10] = v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (!Strong)
  {

    goto LABEL_10;
  }

  v0[12] = v12;
  v0[13] = v10;
  v0[14] = v8;
  sub_20C13CDA4();
  v0[15] = sub_20C13CD94();
  v16 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BB1CE64, v16, v15);
}

uint64_t sub_20BB1CE64()
{

  sub_20BD54068();
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_20BB1CF30, 0, 0);
}

uint64_t sub_20BB1CF30()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  swift_willThrow();
  (*(v2 + 8))(v1, v3);
  v5 = v4;

  v6 = v0[1];

  return v6();
}

uint64_t sub_20BB1CFE4()
{
  v1 = sub_20C135154();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    __swift_project_boxed_opaque_existential_1((*(v0 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanStringBuilder) + 48), *(*(v0 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanStringBuilder) + 72));
    sub_20B5E107C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_20C14F980;
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_20B5D91B8();
    *(v5 + 32) = v3;
    *(v5 + 40) = v4;
    v6 = sub_20C13C924();

    return v6;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanStringBuilder) + 48), *(*(v0 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanStringBuilder) + 72));
    return sub_20B5E107C();
  }
}

uint64_t sub_20BB1D140()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_metricPage;
  v2 = sub_20C1333A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_remoteBrowsingSource);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanClient);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanTemplate, &unk_27C772000);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVWorkoutPlanRepetitionPresenter()
{
  result = qword_27C76A780;
  if (!qword_27C76A780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BB1D2A8()
{
  sub_20C1333A4();
  if (v0 <= 0x3F)
  {
    sub_20BB1D3A0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20BB1D3A0()
{
  if (!qword_27C771FF0)
  {
    sub_20C137374();
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_27C771FF0);
    }
  }
}

uint64_t sub_20BB1D3F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v1 - 8);
  v33 = &v30 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  v34 = sub_20C1352E4();
  v6 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v30 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  v32 = sub_20C134F24();
  v14 = *(v32 - 8);
  v15 = MEMORY[0x28223BE20](v32);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v0;
  (*(v14 + 104))(v17, *MEMORY[0x277D51468], v15);
  v18 = *MEMORY[0x277D52B40];
  v19 = sub_20C136664();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v13, v18, v19);
  (*(v20 + 56))(v13, 0, 1, v19);
  v21 = sub_20C132C14();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  v22 = v31;
  (*(v6 + 104))(v31, *MEMORY[0x277D51768], v34);
  v23 = *MEMORY[0x277D523B0];
  v24 = sub_20C135ED4();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v5, v23, v24);
  (*(v25 + 56))(v5, 0, 1, v24);
  v26 = sub_20C136E94();
  v27 = v33;
  (*(*(v26 - 8) + 56))(v33, 1, 1, v26);
  type metadata accessor for TVWorkoutPlanRepetitionPresenter();
  sub_20BB1E094(&qword_27C76A798, type metadata accessor for TVWorkoutPlanRepetitionPresenter);
  v28 = v30;
  sub_20C138DA4();
  sub_20B520158(v27, &unk_27C76BC90);
  sub_20B520158(v5, &unk_27C7621D0);
  (*(v6 + 8))(v22, v34);
  sub_20B520158(v28, &unk_27C7617F0);
  sub_20B520158(v13, &unk_27C7622E0);
  return (*(v14 + 8))(v17, v32);
}

unint64_t sub_20BB1D9C8()
{
  result = qword_27C76A7A8;
  if (!qword_27C76A7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76A7A0);
    sub_20B79AC30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76A7A8);
  }

  return result;
}

uint64_t sub_20BB1DA4C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20BB1DAAC(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - v13;
  v30 = sub_20C1333A4();
  v15 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanTemplate;
  v19 = sub_20C137374();
  (*(*(v19 - 8) + 56))(v2 + v18, 1, 1, v19);
  v20 = *MEMORY[0x277D51838];
  v21 = sub_20C1352F4();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v14, v20, v21);
  (*(v22 + 56))(v14, 0, 1, v21);
  v23 = sub_20C132C14();
  (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  v24 = sub_20C135ED4();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  v25 = sub_20C136914();
  (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
  sub_20C133384();
  (*(v15 + 32))(v2 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_metricPage, v17, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v26 = *(&v32[0] + 1);
  v27 = (v2 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_eventHub);
  *v27 = *&v32[0];
  v27[1] = v26;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v2 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_subscriptionToken) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763CE8);
  sub_20C133AA4();
  sub_20B51C710(v32, v2 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_remoteBrowsingSource);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20B51C710(v32, v2 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanClient);
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI32TVWorkoutPlanRepetitionPresenter_workoutPlanStringBuilder) = *&v32[0];
  swift_getObjectType();
  type metadata accessor for WorkoutPlanRepetitionRequested();
  swift_allocObject();
  swift_weakInit();
  sub_20BB1E094(&qword_27C76A7B0, type metadata accessor for WorkoutPlanRepetitionRequested);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v32);
  return v2;
}

uint64_t sub_20BB1E094(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BB1E0DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772000);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BB1E14C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BB18804(a1, v4, v5, v6);
}

uint64_t sub_20BB1E208()
{
  sub_20C1380F4();
  v0 = sub_20C138104();
  result = sub_20C138104();
  v2 = 3.0;
  if (v0 == result)
  {
    v2 = 8.0;
  }

  qword_27C79B550 = *&v2;
  return result;
}

uint64_t sub_20BB1E250()
{
  result = sub_20C13CEB4();
  qword_27C79B558 = v1;
  return result;
}

char *sub_20BB1E298()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  v4 = objc_allocWithZone(type metadata accessor for TVSessionHeartRateDiscoveryView());

  v6 = sub_20C107530(v5);

  return v6;
}

char *sub_20BB1E3C8()
{
  v0 = objc_allocWithZone(type metadata accessor for TVSessionWatchDiscoveryView());

  v2 = sub_20BFDCAE0(v1);

  return v2;
}

char *sub_20BB1E41C()
{
  v0 = objc_allocWithZone(type metadata accessor for TVSessionInstructionsView());

  return sub_20BA8120C(v1);
}

id sub_20BB1E460(uint64_t a1, uint64_t a2)
{
  if (sub_20C133B84())
  {
    return 0;
  }

  objc_allocWithZone(type metadata accessor for TVDisplayPreferencesViewController());

  v5 = sub_20B7B40B4(a1, a2);

  return v5;
}

uint64_t sub_20BB1E4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_20C137254();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v14 + 16))(v13, a2, v11);
  sub_20B51CC64(a5, v19);
  objc_allocWithZone(type metadata accessor for TVSessionSummaryViewController());

  swift_unknownObjectRetain();
  sub_20BF314C8(a1, v13, a3, a4, v19);
  v16 = v15;

  swift_unknownObjectRelease();
  return v16;
}

id sub_20BB1E640()
{
  if (qword_27C760768 != -1)
  {
    swift_once();
  }

  v1 = *&dword_27C79A5F0;

  return sub_20BF48CAC(v1, 5.0, 11.0);
}

char *sub_20BB1E6A4()
{
  if (sub_20C133B84())
  {
    return 0;
  }

  v1 = objc_allocWithZone(type metadata accessor for TVSessionBackgroundView());

  return sub_20C094F58(v2);
}

char *sub_20BB1E70C()
{
  v0 = objc_allocWithZone(type metadata accessor for TVSessionContinueOnWatchView());

  return sub_20C048114(v1);
}

char *sub_20BB1E750()
{
  v0 = objc_allocWithZone(type metadata accessor for TVSessionOngoingWorkoutDetectedView());

  v2 = sub_20B897BF8(v1);

  return v2;
}

void sub_20BB1E7A4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = objc_allocWithZone(type metadata accessor for SessionVideoPlayerViewController());
  swift_unknownObjectRetain();

  v9 = sub_20BE8FB54(a1, a2, a3);
  v10 = sub_20BE95A84(*MEMORY[0x277CE5DD8]);

  *a4 = v10;
  a4[1] = &off_2822F15A0;
  a4[2] = &off_2822F1590;
  a4[3] = &off_2822F1578;
  a4[4] = &off_2822F15B0;
}

char *sub_20BB1E860(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C137254();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C133B84();
  result = 0;
  if ((v7 & 1) == 0)
  {
    (*(v4 + 16))(v6, a2, v3);
    v9 = objc_allocWithZone(type metadata accessor for SessionOverlayView());

    v11 = sub_20C130A00(v10, v6);

    return v11;
  }

  return result;
}

uint64_t sub_20BB1E998()
{
  v0 = sub_20C1344B4();
  v2 = v1;
  v4 = v3 & 1;
  sub_20B590B28();
  sub_20B590B7C();
  v5 = sub_20C133BF4();
  sub_20B583F4C(v0, v2, v4);
  if (v5)
  {
    v6 = objc_allocWithZone(type metadata accessor for MeditationCountdownView());
    v7 = sub_20B9DBECC(356.0, 8.0, 121.0, 121.0);
    v8 = &unk_27C762FD8;
    v9 = type metadata accessor for MeditationCountdownView;
  }

  else
  {
    v10 = sub_20C1344B4();
    v12 = v11;
    v14 = v13;
    sub_20C133B84();
    sub_20B583F4C(v10, v12, v14 & 1);
    v15 = objc_allocWithZone(type metadata accessor for WorkoutCountdownView());
    sub_20B78B908(356.0);
    v7 = v16;
    v8 = &unk_27C762FD0;
    v9 = type metadata accessor for WorkoutCountdownView;
  }

  sub_20B6618A4(v8, v9);
  return v7;
}

id sub_20BB1EB48(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762FB8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762FC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  sub_20C1343D4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762FC8);
  if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
  {
    v10 = &qword_27C762FB8;
    v11 = v5;
LABEL_5:
    sub_20B520158(v11, v10);
    return 0;
  }

  sub_20C133BD4();
  sub_20B520158(v5, &qword_27C762FC8);
  v12 = sub_20C135544();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    v10 = &qword_27C762FC0;
    v11 = v8;
    goto LABEL_5;
  }

  v15 = sub_20BF81694(a2);
  (*(v13 + 8))(v8, v12);
  return v15;
}

uint64_t sub_20BB1ED5C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        sub_20C1358F4();
        sub_20C1358D4();
      }

      else
      {
        sub_20C1358D4();
        sub_20C135874();
      }
    }

    else
    {
      if (a1)
      {
        sub_20C135904();
      }

      else
      {
        sub_20C135894();
      }

      sub_20C1358D4();
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      sub_20C1358D4();
      sub_20C1358A4();
    }

    else
    {
      sub_20C1358D4();
      sub_20C1358B4();
    }
  }

  else if (a1 == 6)
  {
    sub_20C135864();
    sub_20C1358D4();
  }

  else if (a1 == 7)
  {
    sub_20C1358C4();
  }

  else
  {
    sub_20C1358D4();
    sub_20C1358E4();
  }

  return sub_20C135884();
}

unint64_t sub_20BB1EFB4()
{
  result = qword_27C76A7B8;
  if (!qword_27C76A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76A7B8);
  }

  return result;
}

uint64_t sub_20BB1F008(uint64_t a1)
{
  v3 = [*(*(*(v1 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_dataProvider) + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) visibleCells];
  sub_20B51C88C(0, &qword_27C772960);
  v4 = sub_20C13CC74();

  if (v4 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F2F5430](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      type metadata accessor for TVRootShowcaseCarouselContainerCell();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        [*(v10 + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_carouselView) setScrollMode_];
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
}

uint64_t sub_20BB1F188(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_resignActiveObserver;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_20BB1F238(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20BB1F324()
{
  result = sub_20C13CEC4();
  qword_27C76A7C0 = v1;
  return result;
}

char *TVRootViewController.init(dependencies:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = v51 - v5;
  v6 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v6 - 8);
  *&v1[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_resignActiveObserver] = 0;
  v1[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_engagementPresentability] = 0;
  v1[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_visibility] = 1;
  v7 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_dynamicOfferCoordinator;
  *&v1[v7] = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  v8 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_purchaseCoordinator;
  *&v1[v8] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v9 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_purchaseHandler;
  *&v1[v9] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  v10 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_webUserInterfaceCoordinator;
  *&v1[v10] = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) init];
  v11 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_lastFocusedIndexPath;
  v12 = sub_20C133244();
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  *&v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_settlingTimer] = 0;
  v13 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_currentPlanIdentifier;
  v14 = sub_20C132EE4();
  (*(*(v14 - 8) + 56))(&v2[v13], 1, 1, v14);
  v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_historicWorkoutPlanCompletionShown] = 0;
  *&v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_newPlanCellFocusTimer] = 0;
  v15 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_planCompletionTracker;
  v16 = sub_20C132E94();
  (*(*(v16 - 8) + 56))(&v2[v15], 1, 1, v16);
  v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_workoutDetailOpened] = 0;
  *&v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_layout] = 0x4049000000000000;
  *&v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00);
  sub_20C133AA4();
  sub_20B51C710(&v56, &v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_accountProvider]);
  type metadata accessor for RemoteParticipantAvatarProvider();
  *&v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_avatarFetcher] = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *&v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_bag] = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860);
  sub_20C133AA4();
  sub_20B51C710(&v56, &v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_contentAvailabilityClient]);
  sub_20C13C734();

  v17 = sub_20C13C724();
  v18 = type metadata accessor for CatalogPageImpressionTracker();
  v19 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v20 = MEMORY[0x277D221C0];
  v19[2] = sub_20C13C6D4();
  v19[3] = v17;
  v19[4] = v20;
  v57 = v18;
  v21 = sub_20BB2AA64(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v58 = v21;
  *&v56 = v19;
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v56, v18);
  v23 = *(v18 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = *(v23 + 16);
  v27(v51 - v26, v25);
  v28 = *(v51 - v26);
  v55[3] = v18;
  v55[4] = v21;
  v55[0] = v28;
  type metadata accessor for RootPageDataProvider();
  v29 = swift_allocObject();
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v55, v18);
  v31 = MEMORY[0x28223BE20](v30);
  v27(v51 - v26, v31);
  v32 = sub_20BB287A4(a1, *(v51 - v26), v29);
  __swift_destroy_boxed_opaque_existential_1(v55);
  __swift_destroy_boxed_opaque_existential_1(&v56);
  *&v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_dataProvider] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E900);
  sub_20C133AA4();
  sub_20B51C710(&v56, &v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_engagementPresentationCoordinator]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_eventHub] = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762090);
  sub_20C133AA4();
  sub_20B51C710(&v56, &v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_marketingMetricFieldsProvider]);
  sub_20C133AA4();
  v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_platform] = v56;

  sub_20C133AA4();
  v52 = v56;
  sub_20C133AA4();
  LOBYTE(v32) = v56;
  v33 = &v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_pageNavigator];
  v33[3] = &type metadata for TVCatalogPageNavigator;
  v33[4] = &off_2822C80E8;
  v34 = swift_allocObject();
  *v33 = v34;
  *(v34 + 16) = a1;
  *(v34 + 24) = v52;
  *(v34 + 40) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(&v56, &v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_remoteBrowsingSource]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(&v56, &v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_storefrontLocalizer]);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_subscriptionToken] = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(&v56, &v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_timerProvider]);
  v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_shouldSendBrowsingBegan] = 1;
  v35 = swift_allocObject();
  *&v52 = v35;
  type metadata accessor for TVRootMenuPresenter();
  v36 = swift_allocObject();

  v51[1] = a1;
  *&v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_rootMenuPresenter] = sub_20BB29724(a1, v35, v36);
  v37 = objc_allocWithZone(type metadata accessor for TVRootMenuView());

  v39 = sub_20BF8715C(v38);
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_menuView] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20B51C710(&v56, &v2[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_workoutPlanClient]);
  v40 = type metadata accessor for TVRootViewController();
  v54.receiver = v2;
  v54.super_class = v40;
  v41 = objc_msgSendSuper2(&v54, sel_initWithNibName_bundle_, 0, 0);
  [v41 setRestoresFocusAfterTransition_];

  sub_20BEC9814();

  *(*&v41[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_dataProvider] + 40) = &off_2822CD498;
  swift_unknownObjectWeakAssign();

  v42 = &v41[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_eventHub];
  *(*&v41[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_purchaseHandler] + OBJC_IVAR____TtC9SeymourUI24MarketingPurchaseHandler_eventHub + 8) = *&v41[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_eventHub + 8];
  swift_unknownObjectWeakAssign();
  v43 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_purchaseCoordinator;
  swift_unknownObjectWeakAssign();
  *(*&v41[v43] + OBJC_IVAR____TtC9SeymourUI28MarketingPurchaseCoordinator_eventHub + 8) = *(v42 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *(*&v41[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_dynamicOfferCoordinator] + OBJC_IVAR____TtC9SeymourUI32MarketingDynamicOfferCoordinator_eventHub + 8) = *(v42 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20B5237AC();
  swift_unknownObjectRetain();

  sub_20C13A7A4();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v56);

  swift_getObjectType();
  sub_20C13B244();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v56);
  swift_getObjectType();
  sub_20C139454();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20BB2AA64(&unk_281103B10, MEMORY[0x277D543B0]);
  swift_unknownObjectRetain();

  sub_20C13A7A4();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v56);

  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20BB29B60();
  v44 = v41;
  swift_unknownObjectRetain();

  sub_20C13A7A4();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v56);

  v45 = sub_20C13CDF4();
  v46 = v53;
  (*(*(v45 - 8) + 56))(v53, 1, 1, v45);
  sub_20C13CDA4();
  v47 = sub_20C13CD94();
  v48 = swift_allocObject();
  v49 = MEMORY[0x277D85700];
  v48[2] = v47;
  v48[3] = v49;
  v48[4] = v44;
  sub_20B6383D0(0, 0, v46, &unk_20C16DAF0, v48);

  swift_getObjectType();
  sub_20C13AB84();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20C13A794();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v56);

  return v44;
}

void sub_20BB20358()
{
  v29 = type metadata accessor for NavigationRequested();
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v27);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C13BB84();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_20C13C554();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for NavigationSource();
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    swift_storeEnumTagMultiPayload();
    sub_20B51C88C(0, &qword_281100530);
    *v12 = sub_20C13D374();
    (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
    v18 = sub_20C13C584();
    (*(v10 + 8))(v12, v9);
    if (v18)
    {
      v19 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_planCompletionTracker;
      swift_beginAccess();
      v20 = sub_20BEEF4AC();
      swift_endAccess();
      if (v20)
      {
        swift_beginAccess();
        sub_20C132E84();
        v21 = sub_20C132E94();
        (*(*(v21 - 8) + 56))(v8, 0, 1, v21);
        sub_20B5DF2D4(v8, v17 + v19, &qword_27C762AC0);
        swift_endAccess();
        sub_20C13B454();
        sub_20C13BB64();
        (*(v25 + 8))(v5, v26);
        type metadata accessor for NavigationResource();
        swift_storeEnumTagMultiPayload();
        v22 = v27;
        v2[*(v27 + 20)] = 1;
        type metadata accessor for NavigationIntent();
        swift_storeEnumTagMultiPayload();
        sub_20BB2A94C(v15, &v2[v22[6]], type metadata accessor for NavigationSource);
        v2[v22[7]] = 0;
        v2[v22[8]] = 0;
        *&v2[v22[9]] = 0;
        swift_getObjectType();
        v23 = v28;
        sub_20BB2A94C(v2, v28, type metadata accessor for NavigationRequest);
        sub_20BB2AA64(&unk_27C7706F0, type metadata accessor for NavigationRequested);
        sub_20C13A764();
        sub_20BB2A9C4(v23, type metadata accessor for NavigationRequested);
        sub_20BB2A9C4(v2, type metadata accessor for NavigationRequest);
        sub_20BB2A9C4(v15, type metadata accessor for NavigationSource);
      }

      else
      {

        sub_20BB2A9C4(v15, type metadata accessor for NavigationSource);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_20BB20904()
{
  v0 = sub_20C136084();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C13B534();
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1F4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20B517000, v7, v8, "Browsing identity updated!", v9, 2u);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_shouldSendBrowsingBegan] = 1;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_20C13B234();
    sub_20BB2585C(v2);

    return sub_20BB2A9C4(v2, MEMORY[0x277D525B8]);
  }

  return result;
}

uint64_t sub_20BB20B28()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20B517000, v4, v5, "Purchase success! Refreshing Root!", v6, 2u);
    MEMORY[0x20F2F6A40](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;

    sub_20B8F956C();
  }

  return result;
}

void sub_20BB20CB4()
{
  v32 = type metadata accessor for NavigationRequested();
  MEMORY[0x28223BE20](v32);
  v1 = &v31 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13BB84();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  MEMORY[0x28223BE20](v7 - 8);
  v33 = &v31 - v8;
  v9 = sub_20C13C554();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for NavigationSource();
  MEMORY[0x28223BE20](v13);
  v37 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_planCompletionTracker;
    v31 = v9;
    v17 = v4;
    v18 = v2;
    v19 = v1;
    v20 = Strong;
    swift_beginAccess();
    sub_20B520158(&v20[v16], &qword_27C762AC0);
    v21 = sub_20C132E94();
    (*(*(v21 - 8) + 56))(&v20[v16], 1, 1, v21);
    swift_endAccess();

    v1 = v19;
    v2 = v18;
    v4 = v17;
    v9 = v31;
  }

  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    swift_storeEnumTagMultiPayload();
    sub_20B51C88C(0, &qword_281100530);
    *v12 = sub_20C13D374();
    (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
    v24 = sub_20C13C584();
    (*(v10 + 8))(v12, v9);
    if (v24)
    {
      v25 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_planCompletionTracker;
      swift_beginAccess();
      v26 = sub_20BEEF4AC();
      swift_endAccess();
      if (v26)
      {
        swift_beginAccess();
        v27 = v33;
        sub_20C132E84();
        v28 = sub_20C132E94();
        (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
        sub_20B5DF2D4(v27, v23 + v25, &qword_27C762AC0);
        swift_endAccess();
        v29 = v34;
        sub_20C13B454();
        sub_20C13BB64();
        (*(v35 + 8))(v29, v36);
        type metadata accessor for NavigationResource();
        swift_storeEnumTagMultiPayload();
        v4[v2[5]] = 1;
        type metadata accessor for NavigationIntent();
        swift_storeEnumTagMultiPayload();
        v30 = v37;
        sub_20BB2A94C(v37, &v4[v2[6]], type metadata accessor for NavigationSource);
        v4[v2[7]] = 0;
        v4[v2[8]] = 0;
        *&v4[v2[9]] = 0;
        swift_getObjectType();
        sub_20BB2A94C(v4, v1, type metadata accessor for NavigationRequest);
        sub_20BB2AA64(&unk_27C7706F0, type metadata accessor for NavigationRequested);
        sub_20C13A764();
        sub_20BB2A9C4(v1, type metadata accessor for NavigationRequested);
        sub_20BB2A9C4(v4, type metadata accessor for NavigationRequest);
        sub_20BB2A9C4(v30, type metadata accessor for NavigationSource);
      }

      else
      {

        sub_20BB2A9C4(v37, type metadata accessor for NavigationSource);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_20BB21328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770CE0);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  sub_20C13CDA4();
  v4[9] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x2822009F8](sub_20BB2143C, v6, v5);
}

uint64_t sub_20BB2143C()
{
  v1 = (v0[5] + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_workoutPlanClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_20BB21504;
  v5 = v0[8];

  return MEMORY[0x2821ADE88](v5, v2, v3);
}

uint64_t sub_20BB21504()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_20BB21850;
  }

  else
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_20BB21628;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20BB21628()
{
  v1 = v0[8];
  v2 = v0[7];

  v3 = sub_20C133954();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  sub_20B52F9E8(v1, v2, &unk_27C76A970);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[7];
  v7 = v0[8];
  if (v5 == 1)
  {
    sub_20B520158(v0[8], &unk_27C76A970);
    sub_20B520158(v6, &unk_27C76A970);
    v8 = 1;
  }

  else
  {
    sub_20C133804();
    sub_20B520158(v7, &unk_27C76A970);
    (*(v4 + 8))(v6, v3);
    v8 = 0;
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = sub_20C132EE4();
  (*(*(v11 - 8) + 56))(v9, v8, 1, v11);
  v12 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_currentPlanIdentifier;
  swift_beginAccess();
  sub_20B5DF2D4(v9, v10 + v12, &unk_27C770CE0);
  swift_endAccess();

  v13 = v0[1];

  return v13();
}

uint64_t sub_20BB21850()
{
  v1 = v0[8];
  v2 = v0[7];

  v3 = sub_20C133954();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 1, 1, v3);
  sub_20B52F9E8(v1, v2, &unk_27C76A970);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[7];
  v7 = v0[8];
  if (v5 == 1)
  {
    sub_20B520158(v0[8], &unk_27C76A970);
    sub_20B520158(v6, &unk_27C76A970);
    v8 = 1;
  }

  else
  {
    sub_20C133804();
    sub_20B520158(v7, &unk_27C76A970);
    (*(v4 + 8))(v6, v3);
    v8 = 0;
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = sub_20C132EE4();
  (*(*(v11 - 8) + 56))(v9, v8, 1, v11);
  v12 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_currentPlanIdentifier;
  swift_beginAccess();
  sub_20B5DF2D4(v9, v10 + v12, &unk_27C770CE0);
  swift_endAccess();

  v13 = v0[1];

  return v13();
}

uint64_t sub_20BB21A78(uint64_t a1)
{
  v1[37] = a1;
  v2 = sub_20C132EE4();
  v1[38] = v2;
  v1[39] = *(v2 - 8);
  v1[40] = swift_task_alloc();
  v1[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E70);
  v1[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770CE0);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  v1[47] = swift_task_alloc();
  v3 = sub_20C133954();
  v1[48] = v3;
  v1[49] = *(v3 - 8);
  v1[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BB21CA8, 0, 0);
}

uint64_t sub_20BB21CA8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(*(Strong + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_dataProvider) + 48);

    v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves];

    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      type metadata accessor for WorkoutPlanBannerShelf();
      v7 = 0;
      while (1)
      {
        v8 = swift_dynamicCastClass();
        v9 = v8 == 0;
        if (v8)
        {
          break;
        }

        ++v7;
        v6 += 16;
        if (v5 == v7)
        {
          v7 = 0;
          break;
        }
      }
    }

    else
    {
      v7 = 0;
      v9 = 1;
    }
  }

  else
  {
    v7 = 0;
    v9 = 1;
  }

  *(v0 + 520) = v9;
  *(v0 + 424) = v7;
  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = *(*(v10 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_dataProvider) + 48);

    v13 = *&v12[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
    *(v0 + 432) = v13;
    v14 = v13;

    sub_20C13CDA4();
    *(v0 + 440) = sub_20C13CD94();
    v16 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20BB22050, v16, v15);
  }

  if (*(v0 + 520) == 1)
  {
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      sub_20B51CC64(v17 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_workoutPlanClient, v0 + 16);

      v19 = *(v0 + 40);
      v20 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v19);
      v21 = swift_task_alloc();
      *(v0 + 448) = v21;
      *v21 = v0;
      v21[1] = sub_20BB2271C;
      v22 = *(v0 + 376);

      return MEMORY[0x2821ADE88](v22, v19, v20);
    }

    (*(*(v0 + 392) + 56))(*(v0 + 376), 1, 1, *(v0 + 384));
    sub_20B520158(*(v0 + 376), &unk_27C76A970);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_20BB22050()
{

  sub_20B51C88C(0, &qword_27C765FD8);
  v1 = sub_20C13D1A4();
  if (!v1)
  {
    v2 = *(v0 + 432);
LABEL_15:

    v13 = *(v0 + 416);
    v14 = sub_20C133244();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    goto LABEL_29;
  }

  v2 = v1;
  if (![v1 focusedItem])
  {

    goto LABEL_15;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = *(v0 + 432);
  if (!v3)
  {
    swift_unknownObjectRelease();

    goto LABEL_15;
  }

  v5 = v3;
  if (![v3 isDescendantOfView_])
  {
    goto LABEL_21;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    swift_unknownObjectRetain();
  }

  sub_20B51C88C(0, &qword_27C762910);
  swift_unknownObjectRetain();
  while (1)
  {
    v7 = *(v0 + 432);
    v8 = v5;
    v9 = sub_20C13D5F4();

    if (v9)
    {
      break;
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = v8;

      v6 = v11;
    }

    v5 = [v8 superview];

    if (!v5)
    {
      goto LABEL_17;
    }
  }

LABEL_17:
  if (v6)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = [*(v0 + 432) indexPathForCell_];
      if (v16)
      {
        v17 = v16;
        sub_20C1331E4();

        v18 = 0;
        v6 = v17;
      }

      else
      {
        v18 = 1;
      }

      v26 = *(v0 + 432);
      v28 = *(v0 + 408);
      v27 = *(v0 + 416);

      v29 = sub_20C133244();
      (*(*(v29 - 8) + 56))(v28, v18, 1, v29);
      sub_20B7FC3DC(v28, v27);
    }

    else
    {
      ObjectType = swift_getObjectType();
      v23 = swift_conformsToProtocol2();
      v24 = *(v0 + 432);
      v25 = *(v0 + 416);
      if (v23)
      {
        (*(v23 + 8))(ObjectType, v23);
      }

      else
      {

        v30 = sub_20C133244();
        (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
      }
    }
  }

  else
  {
LABEL_21:
    v19 = *(v0 + 432);
    v20 = *(v0 + 416);
    v21 = sub_20C133244();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  }

  swift_unknownObjectRelease();

LABEL_29:

  return MEMORY[0x2822009F8](sub_20BB22458, 0, 0);
}

uint64_t sub_20BB22458()
{
  v1 = *(v0 + 416);
  v2 = sub_20C133244();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_20B520158(v1, &unk_27C7629C0);
    if ((*(v0 + 520) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = *(v0 + 520);
    v5 = *(v0 + 424);
    v6 = sub_20C133234();
    (*(v3 + 8))(v1, v2);
    if ((v4 & 1) != 0 || v5 != v6)
    {
LABEL_11:

      v13 = *(v0 + 8);

      return v13();
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(*(v0 + 392) + 56))(*(v0 + 376), 1, 1, *(v0 + 384));
    sub_20B520158(*(v0 + 376), &unk_27C76A970);
    goto LABEL_11;
  }

  v8 = Strong;
  sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_workoutPlanClient, v0 + 16);

  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
  v11 = swift_task_alloc();
  *(v0 + 448) = v11;
  *v11 = v0;
  v11[1] = sub_20BB2271C;
  v12 = *(v0 + 376);

  return MEMORY[0x2821ADE88](v12, v9, v10);
}

uint64_t sub_20BB2271C()
{

  if (v0)
  {

    v1 = sub_20BB236BC;
  }

  else
  {
    v1 = sub_20BB22834;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20BB22834()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[47];
  (*(v2 + 56))(v3, 0, 1, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(v0[47], &unk_27C76A970);
LABEL_8:

    v7 = v0[1];

    return v7();
  }

  (*(v0[49] + 32))(v0[50], v0[47], v0[48]);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[57] = Strong;
  if (!Strong)
  {
    (*(v0[49] + 8))(v0[50], v0[48]);
    goto LABEL_8;
  }

  v0[58] = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_dataProvider;
  v0[59] = sub_20C13CDA4();
  v0[60] = sub_20C13CD94();
  v6 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BB22A6C, v6, v5);
}

uint64_t sub_20BB22A6C()
{
  v1 = v0[57];
  v2 = v0[58];

  v0[61] = *&v1[v2];

  return MEMORY[0x2822009F8](sub_20BB22AE8, 0, 0);
}

uint64_t sub_20BB22AE8()
{
  v1 = *(v0[61] + 48);
  v0[62] = v1;
  v2 = v1;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[63] = Strong;
  if (Strong)
  {
    v0[64] = sub_20C13CD94();
    v5 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20BB230E4, v5, v4);
  }

  (*(v0[39] + 56))(v0[46], 1, 1, v0[38]);
  v7 = v0[45];
  v6 = v0[46];
  v9 = v0[41];
  v8 = v0[42];
  v10 = v0[38];
  v11 = v0[39];
  sub_20C133804();
  v46 = *(v11 + 56);
  v46(v7, 0, 1, v10);
  v12 = *(v9 + 48);
  sub_20B52F9E8(v6, v8, &unk_27C770CE0);
  sub_20B52F9E8(v7, v8 + v12, &unk_27C770CE0);
  v13 = *(v11 + 48);
  if (v13(v8, 1, v10) == 1)
  {
    v14 = v0[46];
    v15 = v0[38];
    sub_20B520158(v0[45], &unk_27C770CE0);
    sub_20B520158(v14, &unk_27C770CE0);
    if (v13(v8 + v12, 1, v15) == 1)
    {
      sub_20B520158(v0[42], &unk_27C770CE0);
LABEL_18:
      v37 = v0[62];
      (*(v0[49] + 8))(v0[50], v0[48]);
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  v16 = v0[38];
  sub_20B52F9E8(v0[42], v0[44], &unk_27C770CE0);
  v17 = v13(v8 + v12, 1, v16);
  v19 = v0[45];
  v18 = v0[46];
  v20 = v0[44];
  if (v17 == 1)
  {
    v21 = v0[38];
    v22 = v0[39];
    sub_20B520158(v0[45], &unk_27C770CE0);
    sub_20B520158(v18, &unk_27C770CE0);
    (*(v22 + 8))(v20, v21);
LABEL_10:
    sub_20B520158(v0[42], &qword_27C763E70);
    goto LABEL_11;
  }

  v45 = v0[42];
  v38 = v0[39];
  v39 = v0[40];
  v40 = v0[38];
  (*(v38 + 32))(v39, v8 + v12, v40);
  sub_20BB2AA64(&qword_27C7641A0, MEMORY[0x277CC95F0]);
  v44 = sub_20C13C894();
  v41 = *(v38 + 8);
  v41(v39, v40);
  sub_20B520158(v19, &unk_27C770CE0);
  sub_20B520158(v18, &unk_27C770CE0);
  v41(v20, v40);
  sub_20B520158(v45, &unk_27C770CE0);
  if (v44)
  {
    goto LABEL_18;
  }

LABEL_11:
  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    v25 = v0[43];
    v26 = v0[38];
    sub_20C133804();
    v46(v25, 0, 1, v26);
    v27 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_currentPlanIdentifier;
    swift_beginAccess();
    sub_20B5DF2D4(v25, v24 + v27, &unk_27C770CE0);
    swift_endAccess();
  }

  swift_beginAccess();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v0[50];
    v30 = *(v28 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_pageNavigator + 24);
    v31 = *(v28 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_pageNavigator + 32);
    v32 = v28;
    __swift_project_boxed_opaque_existential_1((v28 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_pageNavigator), v30);
    (*(v31 + 72))(v32, v29, v30, v31);
  }

  v33 = v0[62];
  v35 = v0[49];
  v34 = v0[50];
  v36 = v0[48];
  swift_beginAccess();
  v37 = swift_unknownObjectWeakLoadStrong();

  (*(v35 + 8))(v34, v36);
  if (!v37)
  {
    goto LABEL_20;
  }

  v37[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_workoutDetailOpened] = 1;
LABEL_19:

LABEL_20:

  v42 = v0[1];

  return v42();
}

uint64_t sub_20BB230E4()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 368);

  v3 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_currentPlanIdentifier;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v3, v2, &unk_27C770CE0);

  return MEMORY[0x2822009F8](sub_20BB23194, 0, 0);
}

uint64_t sub_20BB23194()
{
  v2 = v0[45];
  v1 = v0[46];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[38];
  v6 = v0[39];
  sub_20C133804();
  v41 = *(v6 + 56);
  v41(v2, 0, 1, v5);
  v7 = *(v4 + 48);
  sub_20B52F9E8(v1, v3, &unk_27C770CE0);
  sub_20B52F9E8(v2, v3 + v7, &unk_27C770CE0);
  v8 = *(v6 + 48);
  if (v8(v3, 1, v5) == 1)
  {
    v9 = v0[46];
    v10 = v0[38];
    sub_20B520158(v0[45], &unk_27C770CE0);
    sub_20B520158(v9, &unk_27C770CE0);
    if (v8(v3 + v7, 1, v10) == 1)
    {
      sub_20B520158(v0[42], &unk_27C770CE0);
LABEL_14:
      v32 = v0[62];
      (*(v0[49] + 8))(v0[50], v0[48]);
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  v11 = v0[38];
  sub_20B52F9E8(v0[42], v0[44], &unk_27C770CE0);
  v12 = v8(v3 + v7, 1, v11);
  v14 = v0[45];
  v13 = v0[46];
  v15 = v0[44];
  if (v12 == 1)
  {
    v16 = v0[38];
    v17 = v0[39];
    sub_20B520158(v0[45], &unk_27C770CE0);
    sub_20B520158(v13, &unk_27C770CE0);
    (*(v17 + 8))(v15, v16);
LABEL_6:
    sub_20B520158(v0[42], &qword_27C763E70);
    goto LABEL_7;
  }

  v40 = v0[42];
  v33 = v0[39];
  v34 = v0[40];
  v35 = v0[38];
  (*(v33 + 32))(v34, v3 + v7, v35);
  sub_20BB2AA64(&qword_27C7641A0, MEMORY[0x277CC95F0]);
  v39 = sub_20C13C894();
  v36 = *(v33 + 8);
  v36(v34, v35);
  sub_20B520158(v14, &unk_27C770CE0);
  sub_20B520158(v13, &unk_27C770CE0);
  v36(v15, v35);
  sub_20B520158(v40, &unk_27C770CE0);
  if (v39)
  {
    goto LABEL_14;
  }

LABEL_7:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = v0[43];
    v21 = v0[38];
    sub_20C133804();
    v41(v20, 0, 1, v21);
    v22 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_currentPlanIdentifier;
    swift_beginAccess();
    sub_20B5DF2D4(v20, v19 + v22, &unk_27C770CE0);
    swift_endAccess();
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v0[50];
    v25 = *(v23 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_pageNavigator + 24);
    v26 = *(v23 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_pageNavigator + 32);
    v27 = v23;
    __swift_project_boxed_opaque_existential_1((v23 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_pageNavigator), v25);
    (*(v26 + 72))(v27, v24, v25, v26);
  }

  v28 = v0[62];
  v30 = v0[49];
  v29 = v0[50];
  v31 = v0[48];
  swift_beginAccess();
  v32 = swift_unknownObjectWeakLoadStrong();

  (*(v30 + 8))(v29, v31);
  if (v32)
  {
    v32[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_workoutDetailOpened] = 1;
LABEL_15:
  }

  v37 = v0[1];

  return v37();
}

uint64_t sub_20BB236BC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  (*(v0[49] + 56))(v0[47], 1, 1, v0[48]);
  sub_20B520158(v0[47], &unk_27C76A970);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BB23804()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for TVRootViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v1 = sub_20C13C914();
  [v0 setTitle_];

  sub_20BB26248();
  sub_20B793934(0);
  v2 = *(*(*&v0[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_dataProvider] + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = (v2 + 40);
    do
    {
      v5 = *v4;
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 48);
      swift_unknownObjectRetain();
      v7(ObjectType, v5);
      swift_unknownObjectRelease();
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return sub_20B8F8E94();
}

uint64_t sub_20BB239E0(char a1)
{
  v53 = type metadata accessor for NavigationRequested();
  MEMORY[0x28223BE20](v53);
  v52 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v50);
  v51 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13BB84();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v45 - v8;
  v9 = sub_20C13C554();
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x28223BE20](v9);
  v56 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for NavigationSource();
  MEMORY[0x28223BE20](v54);
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v12 - 8);
  v62 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v14 - 8);
  v60 = &v45 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v16 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v45 - v18;
  v61 = sub_20C1333A4();
  v20 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TVRootViewController();
  v64.receiver = v1;
  v64.super_class = v23;
  objc_msgSendSuper2(&v64, sel_viewDidAppear_, a1 & 1);
  v63 = v1;
  v59 = *(*(*&v1[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_dataProvider] + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v24 = *MEMORY[0x277D517F0];
  v25 = sub_20C1352F4();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v19, v24, v25);
  (*(v26 + 56))(v19, 0, 1, v25);

  sub_20C132C04();
  v27 = sub_20C135ED4();
  (*(*(v27 - 8) + 56))(v60, 1, 1, v27);
  v28 = sub_20C136914();
  (*(*(v28 - 8) + 56))(v62, 1, 1, v28);
  v29 = v1;
  sub_20C133384();
  sub_20BB2AA64(&qword_27C76A908, type metadata accessor for TVRootViewController);
  sub_20C138C54();
  (*(v20 + 8))(v22, v61);
  sub_20BB2AA64(&qword_27C76A910, type metadata accessor for TVRootViewController);
  sub_20BB2AA64(&unk_27C76A918, type metadata accessor for TVRootViewController);
  result = sub_20C139364();
  if ((v1[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_historicWorkoutPlanCompletionShown] & 1) == 0)
  {
    v1[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_historicWorkoutPlanCompletionShown] = 1;
    v31 = v55;
    swift_storeEnumTagMultiPayload();
    sub_20B51C88C(0, &qword_281100530);
    v32 = sub_20C13D374();
    v34 = v56;
    v33 = v57;
    *v56 = v32;
    v35 = v58;
    (*(v33 + 104))(v34, *MEMORY[0x277D85200], v58);
    v36 = sub_20C13C584();
    result = (*(v33 + 8))(v34, v35);
    if (v36)
    {
      v37 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_planCompletionTracker;
      swift_beginAccess();
      v38 = sub_20BEEF4AC();
      swift_endAccess();
      if (v38)
      {
        swift_beginAccess();
        v39 = v46;
        sub_20C132E84();
        v40 = sub_20C132E94();
        (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
        sub_20B5DF2D4(v39, &v29[v37], &qword_27C762AC0);
        swift_endAccess();
        v41 = v47;
        sub_20C13B454();
        sub_20C13BB64();
        (*(v48 + 8))(v41, v49);
        type metadata accessor for NavigationResource();
        v42 = v51;
        swift_storeEnumTagMultiPayload();
        v43 = v50;
        *(v42 + *(v50 + 20)) = 1;
        type metadata accessor for NavigationIntent();
        swift_storeEnumTagMultiPayload();
        sub_20BB2A94C(v31, v42 + v43[6], type metadata accessor for NavigationSource);
        *(v42 + v43[7]) = 0;
        *(v42 + v43[8]) = 0;
        *(v42 + v43[9]) = 0;
        swift_getObjectType();
        v44 = v52;
        sub_20BB2A94C(v42, v52, type metadata accessor for NavigationRequest);
        sub_20BB2AA64(&unk_27C7706F0, type metadata accessor for NavigationRequested);
        sub_20C13A764();
        sub_20BB2A9C4(v44, type metadata accessor for NavigationRequested);
        sub_20BB2A9C4(v42, type metadata accessor for NavigationRequest);
      }

      return sub_20BB2A9C4(v31, type metadata accessor for NavigationSource);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_20BB243FC(char a1)
{
  v2 = v1;
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TVRootViewController();
  v16.receiver = v2;
  v16.super_class = v8;
  objc_msgSendSuper2(&v16, sel_viewWillDisappear_, a1 & 1);
  v15 = v2;
  sub_20C132E84();
  sub_20BB2AA64(&qword_27C76A910, type metadata accessor for TVRootViewController);
  sub_20C139274();
  (*(v5 + 8))(v7, v4);
  v9 = [v2 navigationController];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 viewControllers];
    sub_20B51C88C(0, &qword_281100550);
    v12 = sub_20C13CC74();

    v15 = v2;
    MEMORY[0x28223BE20](v13);
    *(&v14 - 2) = &v15;
    LOBYTE(v11) = sub_20B79AEEC(sub_20B5978BC, (&v14 - 4), v12);

    if ((v11 & 1) == 0)
    {
      v15 = v2;
      sub_20BB2AA64(&qword_27C76A908, type metadata accessor for TVRootViewController);
      sub_20C138C64();
    }
  }
}

uint64_t sub_20BB2496C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v68 = *(v0 - 8);
  v69 = v0;
  MEMORY[0x28223BE20](v0);
  v65 = v1;
  v66 = &v63 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v79 = &v63 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  v67 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762370);
  MEMORY[0x28223BE20](v6 - 8);
  v75 = &v63 - v7;
  v8 = sub_20C135334();
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x28223BE20](v8);
  v72 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C135D54();
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x28223BE20](v10);
  v76 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C132E94();
  v80 = *(v12 - 8);
  v81 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v63 - v16;
  v18 = sub_20C135734();
  v19 = *(v18 - 8);
  v83 = v18;
  v84 = v19;
  MEMORY[0x28223BE20](v18);
  v82 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v63 - v22;
  v24 = sub_20C136C64();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v64 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v63 - v28;
  v30 = sub_20C13BB84();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v63 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  v34 = v33;
  v35 = v85;
  (*(v31 + 8))(v34, v30);
  if (!*(v35 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_engagementPresentability))
  {
    *(v35 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_engagementPresentability) = 1;
  }

  __swift_project_boxed_opaque_existential_1((v35 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_remoteBrowsingSource), *(v35 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_remoteBrowsingSource + 24));
  sub_20C13B174();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    return sub_20B520158(v23, &qword_27C768690);
  }

  v37 = *(v25 + 32);
  v37(v29, v23, v24);
  sub_20C136AF4();
  v39 = v83;
  v38 = v84;
  if ((*(v84 + 48))(v17, 1, v83) == 1)
  {
    (*(v25 + 8))(v29, v24);
    return sub_20B520158(v17, &unk_27C762390);
  }

  v63 = v37;
  v40 = v82;
  (*(v38 + 32))(v82, v17, v39);
  sub_20C132E84();
  v41 = v38;
  v42 = sub_20C135704();
  (*(v80 + 8))(v14, v81);
  if (v42)
  {
    v43 = v72;
    sub_20C136C24();
    v44 = v75;
    sub_20C135314();
    (*(v73 + 8))(v43, v74);
    v46 = v77;
    v45 = v78;
    if ((*(v77 + 48))(v44, 1, v78) == 1)
    {
      (*(v84 + 8))(v82, v39);
      (*(v25 + 8))(v29, v24);
      return sub_20B520158(v44, &unk_27C762370);
    }

    (*(v46 + 32))(v76, v44, v45);
    __swift_project_boxed_opaque_existential_1((v85 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_accountProvider), *(v85 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_accountProvider + 24));
    sub_20C13B934();
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = v64;
    (*(v25 + 16))(v64, v29, v24);
    v49 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v50 = swift_allocObject();
    v63(v50 + v49, v48, v24);
    *(v50 + ((v26 + v49 + 7) & 0xFFFFFFFFFFFFFFF8)) = v47;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_20BB29CF8;
    *(v51 + 24) = v50;
    v53 = v68;
    v52 = v69;
    v54 = v66;
    (*(v68 + 16))(v66, v79, v69);
    v55 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v56 = (v65 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    (*(v53 + 32))(v57 + v55, v54, v52);
    v58 = (v57 + v56);
    *v58 = sub_20B5D9F30;
    v58[1] = v51;
    v59 = v67;
    sub_20C137C94();
    (*(v53 + 8))(v79, v52);
    v60 = v71;
    v61 = sub_20C137CB4();
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    v61(sub_20B52347C, v62);

    (*(v70 + 8))(v59, v60);
    (*(v77 + 8))(v76, v78);
    (*(v84 + 8))(v82, v83);
  }

  else
  {
    (*(v41 + 8))(v40, v39);
  }

  return (*(v25 + 8))(v29, v24);
}

uint64_t sub_20BB25428(void **a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v5 = sub_20C135334();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_20C136C64();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_20C13BB84();
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a1;
  sub_20C13B534();
  (*(v9 + 16))(v11, a2, v8);
  v16 = v15;
  v17 = sub_20C13BB74();
  v18 = sub_20C13D1F4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = v17;
    v20 = v19;
    v21 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v46[0] = v36;
    *v20 = 138412546;
    *(v20 + 4) = v16;
    *v21 = v16;
    *(v20 + 12) = 2080;
    v42 = 0;
    v43 = 0xE000000000000000;
    v22 = v16;
    v34 = v18;
    sub_20C136C24();
    v23 = v38;
    sub_20C13DDF4();
    (*(v37 + 8))(v7, v23);
    v24 = v42;
    v25 = v43;
    (*(v9 + 8))(v11, v8);
    v26 = sub_20B51E694(v24, v25, v46);

    *(v20 + 14) = v26;
    v27 = v35;
    _os_log_impl(&dword_20B517000, v35, v34, "Found a matching local account (%@) for %s. Reporting browsing began event!", v20, 0x16u);
    sub_20B520158(v21, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v21, -1, -1);
    v28 = v36;
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x20F2F6A40](v28, -1, -1);
    MEMORY[0x20F2F6A40](v20, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  (*(v39 + 8))(v14, v40);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v30 = result;
    sub_20B51CC64(result + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_engagementPresentationCoordinator, &v42);

    v31 = v44;
    v32 = v45;
    __swift_project_boxed_opaque_existential_1(&v42, v44);
    (*(v32 + 48))(v31, v32);
    return __swift_destroy_boxed_opaque_existential_1(&v42);
  }

  return result;
}

uint64_t sub_20BB2585C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v2);
  v55 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v56 = &v53 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v61 = *(v63 - 8);
  v6 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v59 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = &v53 - v8;
  MEMORY[0x28223BE20](v9);
  v62 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762370);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v53 - v12;
  v14 = sub_20C135334();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C135D54();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v64 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C136C64();
  v66 = *(v21 - 8);
  v67 = v21;
  MEMORY[0x28223BE20](v21);
  v65 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C136084();
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BB2A94C(a1, v25, MEMORY[0x277D525B8]);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766A10);
  if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
  {
    return sub_20B8F956C();
  }

  (*(v66 + 32))(v65, &v25[*(v26 + 48)], v67);
  sub_20C136C24();
  sub_20C135314();
  (*(v15 + 8))(v17, v14);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    (*(v66 + 8))(v65, v67);
    sub_20B520158(v13, &unk_27C762370);
  }

  else
  {
    v53 = v18;
    v54 = v19;
    (*(v19 + 32))(v64, v13, v18);
    __swift_project_boxed_opaque_existential_1((v68 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_accountProvider), *(v68 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_accountProvider + 24));
    v28 = v56;
    sub_20C13B934();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = sub_20BB2A308;
    *(v30 + 24) = v29;
    v32 = v57;
    v31 = v58;
    v33 = v55;
    (*(v57 + 16))(v55, v28, v58);
    v34 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v35 = (v3 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    (*(v32 + 32))(v36 + v34, v33, v31);
    v37 = (v36 + v35);
    *v37 = sub_20BB2A324;
    v37[1] = v30;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
    v38 = v60;
    sub_20C137C94();
    (*(v32 + 8))(v28, v31);
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = sub_20BB2A354;
    *(v40 + 24) = v39;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_20BB2A35C;
    *(v41 + 24) = v40;
    v42 = v61;
    v43 = v59;
    v44 = v63;
    (*(v61 + 16))(v59, v38, v63);
    v45 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v46 = swift_allocObject();
    (*(v42 + 32))(v46 + v45, v43, v44);
    v47 = (v46 + ((v6 + v45 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v47 = sub_20B9CF870;
    v47[1] = v41;
    v48 = v62;
    sub_20C137C94();
    v49 = *(v42 + 8);
    v49(v38, v44);
    v50 = sub_20C137CB4();
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    v50(sub_20B52347C, v51);

    v49(v48, v44);
    (*(v54 + 8))(v64, v53);
    (*(v66 + 8))(v65, v67);
  }

  v52 = sub_20C135174();
  return (*(*(v52 - 8) + 8))(v25, v52);
}

uint64_t sub_20BB26114@<X0>(BOOL *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = result;
  if (result)
  {

    sub_20B8F956C();
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_20BB261A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_engagementPresentability] = 2;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;

    sub_20B8F956C();
  }

  return result;
}

void sub_20BB26248()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_menuView];
  [v1 addSubview_];

  [*&v3[OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signInButton] addTarget:v0 action:sel_handleSignInTapped forControlEvents:0x2000];
  [*(*&v3[OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signOutView] + OBJC_IVAR____TtC9SeymourUI13TVSignOutView_button) addTarget:v0 action:sel_handleSignOutTapped forControlEvents:0x2000];
  [*(*&v3[OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_stackQueueButtonView] + OBJC_IVAR____TtC9SeymourUI23TVUpNextQueueButtonView_button) addTarget:v0 action:sel_handleUpNextQueueButton forControlEvents:0x2000];
  v4 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v0 action:sel_handleSignOutButtonLongPress];
  [v4 setMinimumPressDuration_];
  [v3 addGestureRecognizer_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20C150040;
  v6 = [v3 topAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [v7 topAnchor];

  v10 = [v6 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = [v3 leadingAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v5 + 40) = v15;
  v16 = [v3 trailingAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = objc_opt_self();
  v20 = [v18 trailingAnchor];

  v21 = [v16 constraintEqualToAnchor_];
  *(v5 + 48) = v21;
  sub_20B51C88C(0, &qword_281100500);
  v22 = sub_20C13CC54();

  [v19 activateConstraints_];
}

uint64_t sub_20BB265D4()
{
  v1 = type metadata accessor for PageMetricAction();
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = (&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for ShelfMetricAction();
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_dataProvider);
  swift_getObjectType();
  sub_20BB2A16C();
  sub_20C13A764();
  v10 = sub_20C136664();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = v6[7];
  v12 = *MEMORY[0x277D51470];
  v13 = sub_20C134F24();
  (*(*(v13 - 8) + 104))(&v8[v11], v12, v13);
  v14 = v6[8];
  v15 = sub_20C132C14();
  (*(*(v15 - 8) + 56))(&v8[v14], 1, 1, v15);
  v16 = v6[10];
  v17 = sub_20C135ED4();
  (*(*(v17 - 8) + 56))(&v8[v16], 1, 1, v17);
  v18 = v6[12];
  v19 = *MEMORY[0x277D51768];
  v20 = sub_20C1352E4();
  (*(*(v20 - 8) + 104))(&v8[v18], v19, v20);
  v21 = v6[13];
  v22 = sub_20C136E94();
  (*(*(v22 - 8) + 56))(&v8[v21], 1, 1, v22);
  v23 = MEMORY[0x277D84F90];
  v24 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v25 = &v8[v6[9]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v8[v6[11]];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v8[v6[14]] = v24;
  sub_20BB2A94C(v8, v4 + *(v2 + 28), type metadata accessor for ShelfMetricAction);
  *v4 = v23;
  v27 = *(v9 + 48);
  sub_20BC5B234(v27, v4);

  sub_20BB2A9C4(v4, type metadata accessor for PageMetricAction);
  return sub_20BB2A9C4(v8, type metadata accessor for ShelfMetricAction);
}

uint64_t sub_20BB269C8()
{
  v32 = type metadata accessor for PageMetricAction();
  MEMORY[0x28223BE20](v32);
  v2 = (&v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_remoteBrowsingSource), *(v0 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_remoteBrowsingSource + 24));
  sub_20C13B184();
  v9 = sub_20C135174();
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
  sub_20B520158(v8, &unk_27C76BC00);
  v11 = *(v0 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_dataProvider);
  swift_getObjectType();
  if (v10 == 1)
  {
    sub_20BB2A16C();
    sub_20C13A764();
  }

  else
  {
    sub_20B52E43C();
    sub_20C13A764();
    *(v0 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_engagementPresentability) = 1;
  }

  v12 = sub_20C136664();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = v3[5];
  v14 = *MEMORY[0x277D51470];
  v15 = sub_20C134F24();
  (*(*(v15 - 8) + 104))(&v5[v13], v14, v15);
  v16 = v3[6];
  v17 = sub_20C132C14();
  (*(*(v17 - 8) + 56))(&v5[v16], 1, 1, v17);
  v18 = v3[8];
  v19 = sub_20C135ED4();
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v20 = v3[10];
  v21 = *MEMORY[0x277D51768];
  v22 = sub_20C1352E4();
  (*(*(v22 - 8) + 104))(&v5[v20], v21, v22);
  v23 = v3[11];
  v24 = sub_20C136E94();
  (*(*(v24 - 8) + 56))(&v5[v23], 1, 1, v24);
  v25 = MEMORY[0x277D84F90];
  v26 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v27 = &v5[v3[7]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v5[v3[9]];
  *v28 = 0;
  *(v28 + 1) = 0;
  *&v5[v3[12]] = v26;
  sub_20BB2A94C(v5, v2 + *(v32 + 20), type metadata accessor for ShelfMetricAction);
  *v2 = v25;
  v29 = *(v11 + 48);
  sub_20BC5B234(v29, v2);

  sub_20BB2A9C4(v2, type metadata accessor for PageMetricAction);
  return sub_20BB2A9C4(v5, type metadata accessor for ShelfMetricAction);
}

void sub_20BB26E84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v1 - 8);
  v44 = v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = v33 - v6;
  v7 = sub_20C1333A4();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v9 - 8);
  v35 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v33 - v12;
  v34 = v33 - v12;
  v14 = sub_20C1352E4();
  v15 = *(v14 - 8);
  v39 = v14;
  v40 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v17;
  v41 = sub_20C134F24();
  v18 = *(v41 - 8);
  v19 = MEMORY[0x28223BE20](v41);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v0;
  v38 = v0;
  v47 = v0;
  (*(v18 + 104))(v21, *MEMORY[0x277D51488], v19);
  (*(v15 + 104))(v17, *MEMORY[0x277D51768], v14);
  v23 = sub_20C135ED4();
  v24 = *(*(v23 - 8) + 56);
  v24(v13, 1, 1, v23);
  v33[1] = *(*(*(v22 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_dataProvider) + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v25 = *MEMORY[0x277D517F0];
  v26 = sub_20C1352F4();
  v27 = *(v26 - 8);
  v28 = v37;
  (*(v27 + 104))(v37, v25, v26);
  (*(v27 + 56))(v28, 0, 1, v26);

  sub_20C132C04();
  v24(v35, 1, 1, v23);
  v29 = sub_20C136914();
  (*(*(v29 - 8) + 56))(v44, 1, 1, v29);
  v30 = v42;
  sub_20C133384();
  type metadata accessor for TVRootViewController();
  sub_20BB2AA64(&unk_27C76A950, type metadata accessor for TVRootViewController);
  v31 = v36;
  v32 = v34;
  sub_20C138D94();
  (*(v45 + 8))(v30, v46);
  sub_20B520158(v32, &unk_27C7621D0);
  (*(v40 + 8))(v31, v39);
  (*(v18 + 8))(v21, v41);
  sub_20C035DF8(0);
}

id TVRootViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TVRootViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVRootViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BB27814()
{
  if ([v0 isViewLoaded])
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      [v1 bringSubviewToFront_];

      if (v0[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_workoutDetailOpened] == 1)
      {
        sub_20BB279E4();
        if ((v3 & 1) == 0)
        {
          v4 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_newPlanCellFocusTimer;
          [*&v0[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_newPlanCellFocusTimer] invalidate];
          v5 = objc_opt_self();
          if (qword_27C760970 != -1)
          {
            swift_once();
          }

          v6 = *&qword_27C76A7C0;
          v7 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v11[4] = sub_20BB2A9B4;
          v11[5] = v7;
          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 1107296256;
          v11[2] = sub_20B762A80;
          v11[3] = &block_descriptor_85;
          v8 = _Block_copy(v11);

          v9 = [v5 scheduledTimerWithTimeInterval:0 repeats:v8 block:v6];
          _Block_release(v8);
          v10 = *&v0[v4];
          *&v0[v4] = v9;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_20BB279E4()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_dataProvider) + 48);
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  for (i = (v2 + 32); ; i += 2)
  {
    v6 = *i;
    if (object_getClass(*i) == _TtC9SeymourUI25ScheduledWorkoutPlanShelf && v6 != 0)
    {
      break;
    }

    if (v3 == ++v4)
    {
      return 0;
    }
  }

  if ([*(v1 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) numberOfItemsInSection_] <= 0)
  {
    return 0;
  }

  return v4;
}

uint64_t sub_20BB27AB0()
{
  v0 = sub_20C13C4B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C13C4F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51C88C(0, &qword_281100530);
  v8 = sub_20C13D374();
  v9 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_20BB2A9BC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_97;
  v11 = _Block_copy(aBlock);

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20BB2AA64(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v7, v3, v11);
  _Block_release(v11);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_20BB27D9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v23[-v1];
  v3 = sub_20C133244();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v9 = sub_20BB279E4();
  v11 = v10;

  if (v11)
  {
    return;
  }

  MEMORY[0x20F2EA960](0, v9);
  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
LABEL_11:
    (*(v4 + 8))(v6, v3);
    return;
  }

  v13 = v12;
  v14 = *(*(v12 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_dataProvider) + 48);

  v15 = *&v14[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v16 = sub_20C133234();
  if (v16 >= [v15 numberOfSections] || (v17 = sub_20C133224(), v17 >= objc_msgSend(v15, sel_numberOfItemsInSection_, sub_20C133234())))
  {

    goto LABEL_11;
  }

  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    (*(v4 + 16))(v2, v6, v3);
    (*(v4 + 56))(v2, 0, 1, v3);
    v20 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_lastFocusedIndexPath;
    swift_beginAccess();
    sub_20B5DF2D4(v2, v19 + v20, &unk_27C7629C0);
    swift_endAccess();
  }

  v21 = sub_20C1331B4();
  [v15 scrollToItemAtIndexPath:v21 atScrollPosition:2 animated:1];

  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();

  (*(v4 + 8))(v6, v3);
  if (v22)
  {
    v22[OBJC_IVAR____TtC9SeymourUI20TVRootViewController_workoutDetailOpened] = 0;
  }
}

id sub_20BB280E0(double a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_menuView);
  CGAffineTransformMakeTranslation(&v5, 0.0, fmin(-a2, 0.0));
  return [v3 setTransform_];
}

uint64_t sub_20BB28150()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC9SeymourUI20TVRootViewController_dataProvider) + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v2 = *(v1 + 16);
  v3 = (v1 + 32);
  v4 = v2 + 1;
  while (--v4)
  {
    v5 = v3 + 2;
    v6 = *v3;
    type metadata accessor for ShowcaseShelf();
    v7 = swift_dynamicCastClass();
    v3 = v5;
    if (v7)
    {
      swift_unknownObjectRetain();
      return v6;
    }
  }

  return 0;
}

uint64_t sub_20BB2821C(uint64_t a1)
{
  v2 = type metadata accessor for NavigationIntent();
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BB2A94C(a1, v7, type metadata accessor for NavigationResource);
  if (swift_getEnumCaseMultiPayload() == 10)
  {
    v8 = type metadata accessor for NavigationRequest();
    sub_20BB2A94C(a1 + *(v8 + 20), v4, type metadata accessor for NavigationIntent);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return 0;
    }

    v10 = type metadata accessor for NavigationIntent;
    v11 = v4;
  }

  else
  {
    v10 = type metadata accessor for NavigationResource;
    v11 = v7;
  }

  sub_20BB2A9C4(v11, v10);
  return 1;
}

uint64_t sub_20BB283F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_lastFocusedIndexPath;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &unk_27C7629C0);
}

uint64_t sub_20BB28460(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_lastFocusedIndexPath;
  swift_beginAccess();
  sub_20B5DF2D4(a1, v1 + v3, &unk_27C7629C0);
  return swift_endAccess();
}

uint64_t sub_20BB2863C()
{
  swift_getWitnessTable();

  return sub_20C139364();
}

uint64_t sub_20BB286A0()
{
  swift_getWitnessTable();

  return sub_20C139374();
}

uint64_t sub_20BB28704(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  v7 = v5;

  return sub_20C137C94();
}

uint64_t sub_20BB287A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = type metadata accessor for CatalogPageImpressionTracker();
  v68[3] = v55;
  v6 = sub_20BB2AA64(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v68[4] = v6;
  v68[0] = a2;
  *(a3 + 40) = 0;
  swift_unknownObjectWeakInit();
  v7 = MEMORY[0x277D84FA0];
  *(a3 + 600) = MEMORY[0x277D84FA0];
  *(a3 + 608) = v7;
  *(a3 + 616) = v7;
  *(a3 + 624) = v7;
  v8 = MEMORY[0x277D84F90];
  *(a3 + 632) = MEMORY[0x277D84F90];
  v9 = v8;
  v10 = OBJC_IVAR____TtC9SeymourUI20RootPageDataProvider_configuration;
  v11 = sub_20C134104();
  (*(*(v11 - 8) + 56))(a3 + v10, 1, 1, v11);
  v12 = a3 + OBJC_IVAR____TtC9SeymourUI20RootPageDataProvider_lastBackgroundTimestamp;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(a3 + 320) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40);
  sub_20C133AA4();
  sub_20B51C710(&v66, a3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590);
  sub_20C133AA4();
  sub_20B51C710(&v66, a3 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(&v66, a3 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(&v66, a3 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(&v66, a3 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860);
  sub_20C133AA4();
  sub_20B51C710(&v66, a3 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(a3 + 328) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E40);
  sub_20C133AA4();
  sub_20B51C710(&v66, a3 + 344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(&v66, a3 + 432);
  sub_20C133AA4();
  *(a3 + 384) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(&v66, a3 + 392);
  *(a3 + 56) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(&v66, a3 + 472);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(a3 + 512) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A9A0);
  sub_20C133AA4();
  sub_20B51C710(&v66, a3 + 520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  sub_20B51C710(&v66, a3 + 560);
  sub_20B51CC64(a3 + 432, &v66);
  __swift_project_boxed_opaque_existential_1(&v66, v67);
  *(a3 + 16) = sub_20C138D34();
  *(a3 + 24) = v13;
  __swift_destroy_boxed_opaque_existential_1(&v66);
  sub_20B51CC64(a3 + 432, &v66);
  __swift_project_boxed_opaque_existential_1(&v66, v67);
  *(a3 + 64) = sub_20C138D34();
  *(a3 + 72) = v14;
  __swift_destroy_boxed_opaque_existential_1(&v66);
  v54 = *(a3 + 384);
  sub_20B51CC64(v68, &v66);
  v15 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v53 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v15 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  v16 = type metadata accessor for MetricLocationStore();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D84F98];
  *(v17 + 16) = v9;
  *(v17 + 24) = v18;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(&v66, v67);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = (&v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22, v20);
  v24 = *v22;
  v25 = v6;
  v65[4] = v6;
  v26 = v55;
  v65[3] = v55;
  v65[0] = v24;
  v64[3] = v16;
  v64[4] = &off_2822B6968;
  v64[0] = v17;
  sub_20B51CC64(v65, v63);
  sub_20B51CC64(v64, v62);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v63, v63[3]);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = (&v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30, v28);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v62, v62[3]);
  v33 = MEMORY[0x28223BE20](v32);
  v35 = (&v52 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35, v33);
  v37 = *v30;
  v38 = *v35;
  v60 = v26;
  v61 = v25;
  v58 = &off_2822B6968;
  v59[0] = v37;
  v57 = v16;
  v56[0] = v38;
  v39 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
  v41 = MEMORY[0x28223BE20](v40);
  v43 = (&v52 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43, v41);
  v45 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
  v46 = MEMORY[0x28223BE20](v45);
  v48 = (&v52 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48, v46);
  v50 = sub_20BE3AA74(1701670760, 0xE400000000000000, MEMORY[0x277D84F90], v54, v53, *v43, *v48, 2, v39);
  __swift_destroy_boxed_opaque_existential_1(v64);
  __swift_destroy_boxed_opaque_existential_1(v65);
  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_destroy_boxed_opaque_existential_1(v59);
  __swift_destroy_boxed_opaque_existential_1(v62);
  __swift_destroy_boxed_opaque_existential_1(v63);
  __swift_destroy_boxed_opaque_existential_1(&v66);
  *(a3 + 48) = v50;
  sub_20BE150AC();
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20B86FB30();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(&v66);

  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20B86FADC();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(&v66);

  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20B621B88();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(&v66);

  swift_getObjectType();
  sub_20C13B014();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v66);
  swift_getObjectType();
  sub_20C139024();
  swift_allocObject();
  swift_weakInit();
  sub_20BB2AA64(&qword_27C76A9B0, MEMORY[0x277D54248]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v66);
  swift_getObjectType();
  sub_20C137384();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v66);
  swift_getObjectType();
  sub_20C13AF74();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(&v66);

  swift_getObjectType();
  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(&v66);

  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20BB2AACC();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v66);
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();

  sub_20B5237AC();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(&v66);
  __swift_destroy_boxed_opaque_existential_1(v68);

  return a3;
}

uint64_t sub_20BB29724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[3] = type metadata accessor for RemoteParticipantAvatarProvider();
  v7[4] = &protocol witness table for RemoteParticipantAvatarProvider;
  v7[0] = a2;
  *(a3 + 296) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 280) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00);
  sub_20C133AA4();
  sub_20B51C710(v6, a3 + 16);
  sub_20B51CC64(v7, a3 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A980);
  sub_20C133AA4();
  sub_20B51C710(v6, a3 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(a3 + 136) = v6[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(v6, a3 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v6, a3 + 192);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(a3 + 232) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  sub_20B51C710(v6, a3 + 240);
  swift_getObjectType();
  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v6);
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20BB08D08();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v6);
  swift_getObjectType();
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(v7);

  return a3;
}

uint64_t type metadata accessor for TVRootViewController()
{
  result = qword_27C76A928;
  if (!qword_27C76A928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20BB29B60()
{
  result = qword_27C773570;
  if (!qword_27C773570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C773570);
  }

  return result;
}

uint64_t sub_20BB29BB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BB21328(a1, v4, v5, v6);
}

uint64_t sub_20BB29C68()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52A9D4;

  return sub_20BB21A78(v0);
}

uint64_t sub_20BB29CF8(void **a1)
{
  v3 = *(sub_20C136C64() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_20BB25428(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_20BB29DE8()
{
  sub_20BB2A108(319, &qword_281103E20, MEMORY[0x277CC9AF8]);
  if (v0 <= 0x3F)
  {
    sub_20BB2A108(319, &unk_27C76A940, MEMORY[0x277CC95F0]);
    if (v1 <= 0x3F)
    {
      sub_20BB2A108(319, &qword_27C76BB60, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_20BB2A108(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_20BB2A16C()
{
  result = qword_27C76A960;
  if (!qword_27C76A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76A960);
  }

  return result;
}