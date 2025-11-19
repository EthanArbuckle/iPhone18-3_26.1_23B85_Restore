void sub_20B77F374()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  JUMPOUT(0x20B77E544);
}

void sub_20B77F488()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  JUMPOUT(0x20B77D58CLL);
}

void sub_20B77F59C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  JUMPOUT(0x20B779230);
}

void sub_20B77F6B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  JUMPOUT(0x20B778BA4);
}

void sub_20B77F84C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  JUMPOUT(0x20B777950);
}

void sub_20B77F960()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  JUMPOUT(0x20B779A0CLL);
}

void sub_20B77FA74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  JUMPOUT(0x20B7783C8);
}

void sub_20B77FBB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  JUMPOUT(0x20B777950);
}

void sub_20B77FD14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  JUMPOUT(0x20B77AE90);
}

uint64_t sub_20B77FEA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B77FF08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B77FF74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &qword_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v2;
    v27 = (v2 + 16) & ~v2;
    v28 = v0;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v0 = v28;
    v3 = v27;
    v2 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B7807A0(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20BF90A5C(a1, a2, v2 + v6, v7);
}

void sub_20B780858()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  JUMPOUT(0x20B777BECLL);
}

id MPRouteButton.withFont(_:)(uint64_t a1)
{
  [v1 setFont_];

  return v3;
}

id MPRouteButton.withHitRectInsets(_:)()
{
  [v0 setHitRectInsets_];

  return v2;
}

id MPRouteButton.withAccessoryImage(_:)(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    [v1 setAccessoryImage_];
    v2 = v1;
  }

  return v2;
}

uint64_t sub_20B780AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_20C137234())
  {
    v14 = sub_20B780F40(a1);
    *(v5 + 40) = &off_2822AAF08;
    swift_unknownObjectWeakAssign();
    sub_20B51CC64(a3, v46);
    sub_20B51CC64(a2, v44);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
    v16 = MEMORY[0x28223BE20](v15);
    v18 = &v40[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v19 + 16))(v18, v16);
    v20 = *v18;
    v21 = type metadata accessor for SessionRouteMonitor();
    v43[3] = v21;
    v43[4] = &off_2822E24A0;
    v43[0] = v20;
    v22 = type metadata accessor for SessionExternalOverlayPresenter();
    v23 = swift_allocObject();
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v43, v21);
    v25 = MEMORY[0x28223BE20](v24);
    v27 = &v40[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v28 + 16))(v27, v25);
    v29 = *v27;

    v31 = sub_20B781BC0(v30, v46, v14, v29, v23);

    __swift_destroy_boxed_opaque_existential_1(v43);
    __swift_destroy_boxed_opaque_existential_1(v44);
    a4[3] = v22;
    a4[4] = &off_2822C7030;

    *a4 = v31;
  }

  else
  {
    sub_20C13B554();

    v33 = sub_20C13BB74();
    v34 = sub_20C13D1F4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v46[0] = v42;
      *v35 = 136446210;
      sub_20C137254();
      sub_20B7827B4(&qword_27C764E48, MEMORY[0x277D531E0]);
      v41 = v34;
      v36 = sub_20C13DFA4();
      v38 = sub_20B51E694(v36, v37, v46);

      *(v35 + 4) = v38;
      _os_log_impl(&dword_20B517000, v33, v41, "%{public}s is not eligible for external overlay presentation", v35, 0xCu);
      v39 = v42;
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x20F2F6A40](v39, -1, -1);
      MEMORY[0x20F2F6A40](v35, -1, -1);
    }

    result = (*(v11 + 8))(v13, v10);
    a4[3] = &type metadata for NullExternalOverlayPresenter;
    a4[4] = &off_2822F5E08;
  }

  return result;
}

void *sub_20B780F40(uint64_t a1)
{
  v2 = v1;
  v24[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v24 - v4;
  v6 = sub_20C133D84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C1344C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B7812E0();
  v25 = v14;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_trackPresenter);
  (*(v11 + 16))(v13, v15 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_catalogWorkout, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70);
  sub_20C133AA4();
  v16 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_externalOverlayStringBuilder;
  sub_20B78290C(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_externalOverlayStringBuilder, v26);
  type metadata accessor for MusicTrackNodeBuilder();
  swift_allocObject();
  v17 = sub_20BE4DB1C(v13, v27, v26);
  *(v15 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_externalOverlayDisplay + 8) = &off_2822EEB48;
  swift_unknownObjectWeakAssign();
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_metricBuilder + 8);
  sub_20B78290C(v2 + v16, v26);
  type metadata accessor for ActivityRingsPlatterNodeBuilder();
  swift_allocObject();
  v19 = swift_unknownObjectRetain();
  v20 = sub_20C0F5D2C(v19, v18, v26);
  swift_unknownObjectRelease();
  v21 = *(v2 + 144);
  v22 = OBJC_IVAR____TtC9SeymourUI21SessionRingsPresenter_activityRings;
  swift_beginAccess();
  sub_20B782968(v21 + v22, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20B7829D8(v5);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_20C0F676C(v9);
    (*(v7 + 8))(v9, v6);
  }

  *(v21 + 40) = &off_282308860;
  swift_unknownObjectWeakAssign();
  type metadata accessor for SessionOverlayNodeBuilder();
  swift_allocObject();
  return sub_20B816F48(v20, v25, v17);
}

void sub_20B7812E0()
{
  v1 = v0;
  v2 = sub_20C137254();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v46 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C132364();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_metricBuilder);
  v11 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_metricBuilder + 8);
  type metadata accessor for TimerNodeBuilder();
  swift_allocObject();
  v12 = swift_unknownObjectRetain();
  v48 = v11;
  v49 = v10;
  sub_20BAE0E68(v12, v11);
  v14 = v13;
  *(*(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_timerPresenter) + 40) = &off_2822CA500;
  swift_unknownObjectWeakAssign();
  type metadata accessor for IntensityNodeBuilder();
  swift_allocObject();
  v15 = sub_20B71C5A4();
  *(v0[15] + 40) = &off_2822A1DA8;
  swift_unknownObjectWeakAssign();
  type metadata accessor for RangedCoachingEventNodeBuilder();
  swift_allocObject();
  v16 = sub_20BC51060();
  *(v0[19] + 40) = &off_2822D8AA8;
  swift_unknownObjectWeakAssign();
  swift_allocObject();
  v17 = sub_20BC51060();
  *(v0[20] + 40) = &off_2822D8AA8;
  v47 = v17;
  swift_unknownObjectWeakAssign();
  type metadata accessor for InclineNodeBuilder();
  swift_allocObject();
  v18 = sub_20B7918D0();
  *(v0[14] + 40) = &off_2822A58C8;
  swift_unknownObjectWeakAssign();
  type metadata accessor for ProgressNodeBuilder();
  swift_allocObject();
  v19 = sub_20B85C458();
  *(v0[17] + 40) = &off_2822ADC60;
  v52 = v19;
  swift_unknownObjectWeakAssign();
  v20 = objc_opt_self();
  v21 = [v20 distanceColors];
  if (!v21)
  {
    __break(1u);
    goto LABEL_9;
  }

  v22 = v21;
  v53 = v16;
  v54 = v15;
  v51 = v14;
  v23 = [v21 nonGradientTextColor];

  if (!v23)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_20BA6D744(3);
  sub_20C132374();
  v24 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.921568627 alpha:1.0];
  sub_20BA6BBA4(3);
  sub_20C132374();
  type metadata accessor for SingleMetricNodeBuilder();
  swift_allocObject();
  v25 = sub_20B6B5B40(v9, v24, v6, v23);

  *(v1[12] + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_externalOverlayDisplay + 8) = &off_28229D6C0;
  v43 = v25;
  swift_unknownObjectWeakAssign();
  v26 = [v20 paceColors];
  if (!v26)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v27 = v26;
  v50 = v18;
  v28 = [v26 nonGradientTextColor];

  if (!v28)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_20BA6D744(3);
  sub_20C132374();
  v29 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.921568627 alpha:1.0];
  sub_20BA6BBA4(3);
  sub_20C132374();
  swift_allocObject();
  v30 = sub_20B6B5B40(v9, v29, v6, v28);

  *(v1[11] + 40) = &off_28229D6C0;
  swift_unknownObjectWeakAssign();
  type metadata accessor for HeartRateNodeBuilder();
  swift_allocObject();
  v31 = sub_20B593368(v49, v48);
  swift_unknownObjectRelease();
  *(v1[13] + 40) = &off_28228FB10;
  swift_unknownObjectWeakAssign();
  v32 = [v20 energyColors];
  if (!v32)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v33 = v32;
  v49 = v31;
  v34 = [v32 nonGradientTextColor];

  if (v34)
  {
    sub_20BA6D744(3);
    sub_20C132374();
    v35 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.921568627 alpha:1.0];
    sub_20BA6BBA4(3);
    sub_20C132374();
    swift_allocObject();
    v36 = sub_20B6B5B40(v9, v35, v6, v34);

    *(v1[10] + OBJC_IVAR____TtC9SeymourUI34SessionActiveEnergyMetricPresenter_externalOverlayDisplay + 8) = &off_28229D6C0;
    swift_unknownObjectWeakAssign();
    v37 = v46;
    (*(v44 + 16))(v46, v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_activityTypeBehavior, v45);
    type metadata accessor for BurnBarNodeBuilder();
    swift_allocObject();
    v46 = sub_20C006EB8(v37);
    *(v1[9] + 40) = &off_2822FFB28;
    swift_unknownObjectWeakAssign();
    type metadata accessor for SeparatorNodeBuilder();
    swift_allocObject();
    v45 = sub_20BB0D5F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C157AC0;
    *(inited + 32) = 13;
    v48 = inited + 32;
    *(inited + 40) = v51;
    *(inited + 48) = &off_2822CA538;
    *(inited + 56) = 7;
    v39 = v53;
    *(inited + 64) = v54;
    *(inited + 72) = &off_2822A1DB8;
    *(inited + 80) = 9;
    *(inited + 88) = v39;
    *(inited + 96) = &off_2822D8AD0;
    *(inited + 104) = 11;
    *(inited + 112) = v47;
    *(inited + 120) = &off_2822D8AD0;
    *(inited + 128) = 8;
    *(inited + 136) = v50;
    *(inited + 144) = &off_2822A58E0;
    *(inited + 152) = 12;
    *(inited + 160) = v52;
    *(inited + 168) = &off_2822ADC78;
    *(inited + 176) = 2;
    *(inited + 184) = v30;
    *(inited + 192) = &off_28229D6D0;
    *(inited + 200) = 3;
    *(inited + 208) = v43;
    *(inited + 216) = &off_28229D6D0;
    *(inited + 224) = 5;
    *(inited + 232) = v49;
    *(inited + 240) = &off_28228FB20;
    *(inited + 248) = 4;
    v42 = v36;
    *(inited + 256) = v36;
    *(inited + 264) = &off_28229D6D0;
    *(inited + 272) = 1;
    v40 = v45;
    *(inited + 280) = v46;
    *(inited + 288) = &off_2822FFAC8;
    *(inited + 296) = 10;
    *(inited + 304) = v40;
    *(inited + 312) = &off_2822CCDC8;

    v41 = sub_20B6B3000(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764EA0);
    swift_arrayDestroy();
    type metadata accessor for MetricsPlatterNodeBuilder();
    swift_allocObject();
    sub_20BA96B9C(v41);

    return;
  }

LABEL_13:
  __break(1u);
}

void *sub_20B781BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v35 = a3;
  v41 = a2;
  v40 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v7 - 8);
  v36 = v34 - v8;
  v9 = sub_20C13C4C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20C132C14();
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v37 = v34 - v16;
  v17 = sub_20C13A814();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[3] = type metadata accessor for SessionRouteMonitor();
  v47[4] = &off_2822E24A0;
  v47[0] = a4;
  (*(v18 + 104))(v20, *MEMORY[0x277D4EEF8], v17);
  if (qword_27C760B10 != -1)
  {
    swift_once();
  }

  v46[0] = qword_27C79C100;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E50);
  sub_20B7825DC();
  sub_20B7826BC();
  sub_20C13A384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v21 = v46[1];
  a5[13] = v46[0];
  a5[14] = v21;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  a5[15] = sub_20C13A914();
  sub_20B51CC64(v47, (a5 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E78);
  v22 = swift_allocObject();
  *(v22 + 20) = 0;
  *(v22 + 16) = 2;
  a5[16] = v22;
  v23 = v37;
  sub_20C132B44();
  (*(v38 + 16))(v14, v23, v39);
  sub_20B5E2E18();
  (*(v10 + 104))(v12, *MEMORY[0x277D851D0], v9);
  sub_20C13D3A4();
  (*(v10 + 8))(v12, v9);
  v24 = sub_20C132334();
  swift_allocObject();
  v25 = sub_20C132324();
  v46[3] = type metadata accessor for SessionOverlayNodeBuilder();
  v46[4] = sub_20B7827B4(&qword_27C764E80, type metadata accessor for SessionOverlayNodeBuilder);
  v26 = v35;
  v46[0] = v35;
  sub_20B51CC64(v41, v45);
  v43 = v24;
  v44 = MEMORY[0x277CE9D28];
  v42 = v25;
  v34[1] = v25;
  v27 = sub_20C131ED4();
  swift_allocObject();

  v28 = sub_20C131EB4();
  v29 = MEMORY[0x277CE9B98];
  a5[5] = v27;
  a5[6] = v29;
  a5[2] = v28;
  a5[7] = v26;
  *(v26 + OBJC_IVAR____TtC9SeymourUI25SessionOverlayNodeBuilder_parent + 8) = &off_2822C7020;
  swift_unknownObjectWeakAssign();
  swift_allocObject();
  swift_weakInit();

  sub_20C131EA4();

  swift_allocObject();
  swift_weakInit();

  sub_20C131EC4();

  swift_getObjectType();
  sub_20C1384E4();
  swift_allocObject();
  swift_weakInit();
  sub_20B7827B4(&qword_27C764E88, MEMORY[0x277D54010]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v46);
  swift_getObjectType();
  sub_20C138514();
  swift_allocObject();
  swift_weakInit();
  sub_20B7827B4(&qword_27C764E90, MEMORY[0x277D54028]);

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v46);

  swift_getObjectType();
  sub_20C138594();
  swift_allocObject();
  swift_weakInit();
  sub_20B7827B4(&unk_27C7688A0, MEMORY[0x277D54048]);

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v46);

  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();

  sub_20B782804();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v46);
  v30 = sub_20C13CDF4();
  v31 = v36;
  (*(*(v30 - 8) + 56))(v36, 1, 1, v30);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = a5;

  sub_20B614F94(0, 0, v31, &unk_20C157AD8, v32);

  __swift_destroy_boxed_opaque_existential_1(v41);
  (*(v38 + 8))(v37, v39);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return a5;
}

unint64_t sub_20B7825DC()
{
  result = qword_27C764E58;
  if (!qword_27C764E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C764E50);
    sub_20B782668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764E58);
  }

  return result;
}

unint64_t sub_20B782668()
{
  result = qword_27C764E60;
  if (!qword_27C764E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764E60);
  }

  return result;
}

unint64_t sub_20B7826BC()
{
  result = qword_27C764E68;
  if (!qword_27C764E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C764E50);
    sub_20B782740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764E68);
  }

  return result;
}

unint64_t sub_20B782740()
{
  result = qword_27C764E70;
  if (!qword_27C764E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764E70);
  }

  return result;
}

uint64_t sub_20B7827B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20B782804()
{
  result = qword_27C7689C0;
  if (!qword_27C7689C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7689C0);
  }

  return result;
}

uint64_t sub_20B782858(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BA7FFBC(a1, v4, v5, v6);
}

uint64_t sub_20B782968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B7829D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id AnalyticsConsentViewController.init(dependencies:version:isPurchaser:)(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v34 - v16;
  v35 = sub_20C1333A4();
  v18 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &v3[OBJC_IVAR____TtC9SeymourUI30AnalyticsConsentViewController_onConsent];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v3[OBJC_IVAR____TtC9SeymourUI30AnalyticsConsentViewController_onDismiss];
  *v22 = 0;
  v22[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E00);
  v36 = a1;
  sub_20C133AA4();
  sub_20B52E424(v39, &v3[OBJC_IVAR____TtC9SeymourUI30AnalyticsConsentViewController_privacyPreferenceClient]);
  v3[OBJC_IVAR____TtC9SeymourUI30AnalyticsConsentViewController_isPurchaser] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&v3[OBJC_IVAR____TtC9SeymourUI30AnalyticsConsentViewController_eventHub] = v39[0];
  v23 = *MEMORY[0x277D51810];
  v24 = sub_20C1352F4();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v17, v23, v24);
  (*(v25 + 56))(v17, 0, 1, v24);
  v26 = sub_20C132C14();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  v27 = sub_20C135ED4();
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  v28 = sub_20C136914();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
  sub_20C133384();
  (*(v18 + 32))(&v3[OBJC_IVAR____TtC9SeymourUI30AnalyticsConsentViewController_metricPage], v20, v35);
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  v31 = sub_20C13C914();

  v38.receiver = v3;
  v38.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v38, sel_initWithTitle_, v31);

  return v32;
}

Swift::Void __swiftcall AnalyticsConsentViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = v45 - v6;
  MEMORY[0x28223BE20](v7);
  v46 = v45 - v8;
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v45[0] = v45 - v11;
  v50.receiver = v1;
  v50.super_class = ObjectType;
  objc_msgSendSuper2(&v50, sel_viewDidLoad, v10);
  v12 = [objc_allocWithZone(MEMORY[0x277D37680]) init];
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();
  v15 = [v14 bundleForClass_];
  v45[1] = 0xD000000000000012;
  sub_20C132964();

  v16 = sub_20C13C914();

  [v12 setTitle:v16 forState:0];

  [v12 addTarget:v1 action:sel_didTapLearnMoreButton forControlEvents:64];
  v17 = sub_20C13C914();
  v18 = [v14 bundleForClass_];
  sub_20C132964();

  v19 = sub_20C13C914();

  v48 = v12;
  [v1 addSectionWithHeader:v17 content:v19 accessoryButton:v12];

  v20 = [v14 bundleForClass_];
  sub_20C132964();

  v21 = sub_20C13C914();

  v22 = sub_20C13C914();
  [v1 addSectionWithHeader:v21 content:v22];

  v23 = [v14 bundleForClass_];
  sub_20C132964();

  v24 = sub_20C13C914();

  [v1 addBulletedListItemWithTitle:v24 description:0];

  v25 = [v14 bundleForClass_];
  sub_20C132964();

  v26 = sub_20C13C914();

  [v1 addBulletedListItemWithTitle:v26 description:0];

  v27 = [objc_opt_self() boldButton];
  [v27 addTarget:v1 action:sel_didTapOptInButton forControlEvents:64];
  v28 = v27;
  v29 = [v14 bundleForClass_];
  sub_20C132964();

  v30 = sub_20C13C914();
  v31 = v45[0];

  [v28 setTitle:v30 forState:0];

  sub_20C13D884();
  v32 = sub_20C13D874();
  v33 = *(*(v32 - 8) + 48);
  if (v33(v31, 1, v32))
  {
    sub_20B783944(v31, v49);
    sub_20C13D894();

    sub_20B7839B4(v31);
  }

  else
  {
    v34 = [objc_opt_self() blackColor];
    sub_20C13D774();
    sub_20C13D894();
  }

  v35 = [v1 buttonTray];
  [v35 addButton_];

  v36 = [objc_opt_self() linkButton];
  [v36 addTarget:v1 action:sel_didTapOptOutButton forControlEvents:64];
  v37 = v36;
  v38 = [v14 bundleForClass_];
  sub_20C132964();

  v39 = sub_20C13C914();

  [v37 setTitle:v39 forState:0];

  v40 = v46;
  sub_20C13D884();
  if (v33(v40, 1, v32))
  {
    v41 = v49;
    sub_20B783944(v40, v49);
    sub_20C13D894();

    sub_20B7839B4(v40);
    v42 = v47;
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    sub_20C13D774();
    sub_20C13D894();

    v42 = v47;
    v41 = v49;
  }

  sub_20C13D884();
  if (v33(v42, 1, v32))
  {
    sub_20B783944(v42, v41);
    sub_20C13D894();

    sub_20B7839B4(v42);
  }

  else
  {
    v43 = [objc_opt_self() secondarySystemBackgroundColor];
    sub_20C13D764();
    sub_20C13D894();
  }

  v44 = [v1 buttonTray];
  [v44 addButton_];

  [v1 setModalInPresentation_];
}

uint64_t sub_20B783944(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B7839B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall AnalyticsConsentViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1);
  sub_20B783ADC();
  sub_20C138C54();
}

unint64_t sub_20B783ADC()
{
  result = qword_27C764EC0;
  if (!qword_27C764EC0)
  {
    type metadata accessor for AnalyticsConsentViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764EC0);
  }

  return result;
}

uint64_t type metadata accessor for AnalyticsConsentViewController()
{
  result = qword_27C764ED0;
  if (!qword_27C764ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnalyticsConsentViewController.onConsent(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9SeymourUI30AnalyticsConsentViewController_onConsent);
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI30AnalyticsConsentViewController_onConsent);
  *v3 = a1;
  v3[1] = a2;
  sub_20B583ECC(v4);
}

uint64_t AnalyticsConsentViewController.onDismiss(_:)(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9SeymourUI30AnalyticsConsentViewController_onDismiss);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  sub_20B583ECC(v6);
}

void sub_20B783CC8()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = sub_20C1350D4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277D515A0], v9, v11);
  sub_20C1350C4();
  (*(v10 + 8))(v13, v9);
  v14 = sub_20C13C914();

  v15 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v15)
  {
    sub_20C13B534();
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1F4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20B517000, v16, v17, "AnalyticsConsentViewController presenting privacy view controller", v18, 2u);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    v19 = [v1 navigationController];
    [v15 presentInNavigationStack_];
  }

  else
  {
    sub_20C13B534();
    v20 = sub_20C13BB74();
    v21 = sub_20C13D1D4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_20B517000, v20, v21, "AnalyticsConsentViewController failed to create privacy presenter", v22, 2u);
      MEMORY[0x20F2F6A40](v22, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_20B784054()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v45 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v44 = &v38 - v1;
  v2 = sub_20C13BB84();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C136014();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  sub_20C135FD4();
  sub_20C13B534();
  v40 = v6;
  v15 = *(v6 + 16);
  v43 = v14;
  v15(v11, v14, v5);
  v16 = sub_20C13BB74();
  v17 = sub_20C13D1F4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v39 = v0;
    v19 = v18;
    v20 = swift_slowAlloc();
    v47[0] = v20;
    *v19 = 136446210;
    v15(v8, v11, v5);
    v21 = sub_20C13C9D4();
    v23 = v22;
    v24 = v11;
    v25 = *(v40 + 8);
    v25(v24, v5);
    v26 = sub_20B51E694(v21, v23, v47);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_20B517000, v16, v17, "AnalyticsConsentViewController updating preference: %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x20F2F6A40](v20, -1, -1);
    v27 = v19;
    v0 = v39;
    MEMORY[0x20F2F6A40](v27, -1, -1);
  }

  else
  {

    v28 = v11;
    v25 = *(v40 + 8);
    v25(v28, v5);
  }

  (*(v41 + 8))(v4, v42);
  v29 = v46;
  __swift_project_boxed_opaque_existential_1((v46 + OBJC_IVAR____TtC9SeymourUI30AnalyticsConsentViewController_privacyPreferenceClient), *(v46 + OBJC_IVAR____TtC9SeymourUI30AnalyticsConsentViewController_privacyPreferenceClient + 24));
  v31 = v43;
  v30 = v44;
  sub_20C139BF4();
  v32 = sub_20C137CB4();
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  v32(sub_20B52347C, v33);

  (*(v45 + 8))(v30, v0);
  v34 = (v29 + OBJC_IVAR____TtC9SeymourUI30AnalyticsConsentViewController_onDismiss);
  swift_beginAccess();
  v35 = *v34;
  if (*v34)
  {
    swift_endAccess();

    v35(v36);
    sub_20B583ECC(v35);
    return (v25)(v31, v5);
  }

  else
  {
    v25(v31, v5);
    return swift_endAccess();
  }
}

void sub_20B78456C(char *a1, uint64_t a2, char a3)
{
  v3 = *&a1[OBJC_IVAR____TtC9SeymourUI30AnalyticsConsentViewController_onConsent];
  if (v3)
  {
    v5 = a1;
    sub_20B584050(v3);
    v3(a3 & 1);
    sub_20B583ECC(v3);
  }

  else
  {
    v6 = a1;
  }

  sub_20B784054();
}

id AnalyticsConsentViewController.__allocating_init(title:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_20C13C914();

  v3 = [v1 initWithTitle_];

  return v3;
}

id AnalyticsConsentViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_20C13C914();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_20C13C914();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_20C13C914();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id AnalyticsConsentViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_20C13C914();

  if (a4)
  {
    v12 = sub_20C13C914();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id AnalyticsConsentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B784A68()
{
  result = sub_20C1333A4();
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

uint64_t sub_20B784B5C(uint64_t a1)
{
  [v1 setDelegate_];

  return swift_unknownObjectRelease();
}

id sub_20B784BA4()
{
  v1 = [v0 dialogRequest];

  return v1;
}

char *sub_20B784BDC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_stackView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  v13 = [objc_opt_self() whiteColor];
  v14 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:0];
  v15 = [v14 fontDescriptorWithSymbolicTraits_];
  if (v15)
  {
    v16 = v15;

    v14 = v16;
  }

  v17 = &v4[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_styleProvider];
  v18 = [objc_opt_self() fontWithDescriptor:v14 size:0.0];

  *v17 = v13;
  *(v17 + 1) = v18;
  *(v17 + 1) = xmmword_20C157C20;
  *(v17 + 2) = xmmword_20C157C30;
  *(v17 + 6) = 0x403E000000000000;
  v19 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_titleLabel;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 setAdjustsFontForContentSizeCategory_];
  *&v4[v19] = v20;
  v21 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_button;
  type metadata accessor for PulldownButton();
  v22 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v21] = v22;
  v64.receiver = v4;
  v64.super_class = type metadata accessor for WorkoutPlanReviewHeaderCell();
  v23 = objc_msgSendSuper2(&v64, sel_initWithFrame_, a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_stackView;
  v25 = *&v23[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_stackView];
  v26 = v23;
  [v25 setAlignment_];
  [*&v23[v24] setAxis_];
  v27 = &v26[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_styleProvider];
  [*&v23[v24] setSpacing_];
  v28 = [v26 contentView];
  [v28 addSubview_];

  v29 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_titleLabel;
  v61 = v27;
  [*&v26[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_titleLabel] setFont_];
  [*&v26[v29] setTextAlignment_];
  [*&v26[v29] setTextColor_];
  [*&v23[v24] addArrangedSubview_];
  v30 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_button;
  LODWORD(v31) = 1148846080;
  [*&v26[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_button] setContentCompressionResistancePriority:0 forAxis:v31];
  [*&v23[v24] addArrangedSubview_];
  v62 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_20C150AE0;
  v33 = [*&v23[v24] leadingAnchor];
  v34 = [v26 contentView];
  v35 = [v34 leadingAnchor];

  v36 = [v33 constraintEqualToAnchor_];
  *(v32 + 32) = v36;
  v37 = [*&v23[v24] trailingAnchor];
  v38 = [v26 contentView];
  v39 = [v38 trailingAnchor];

  v40 = [v37 &selRef:v39 alertControllerReleasedDictationButton:? + 5];
  *(v32 + 40) = v40;
  v41 = [*&v23[v24] topAnchor];
  v42 = [v26 contentView];
  v43 = [v42 &selRef_setLineBreakMode_];

  v44 = [v41 constraintEqualToAnchor:v43 constant:v61[6]];
  *(v32 + 48) = v44;
  v45 = [*&v23[v24] bottomAnchor];
  v46 = [v26 contentView];

  v47 = [v46 bottomAnchor];
  v48 = [v45 constraintEqualToAnchor:v47 constant:-v61[2]];

  *(v32 + 56) = v48;
  v49 = [*&v26[v29] leadingAnchor];
  v50 = [*&v23[v24] leadingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:v61[3]];

  *(v32 + 64) = v51;
  v52 = [*&v26[v29] trailingAnchor];
  v53 = [*&v23[v24] trailingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:-v61[3]];

  *(v32 + 72) = v54;
  v55 = [*&v26[v29] topAnchor];
  v56 = [*&v23[v24] topAnchor];
  v57 = [v55 constraintEqualToAnchor_];

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v58) = v63;
  [v57 setPriority_];
  *(v32 + 80) = v57;
  sub_20B51C88C(0, &qword_281100500);
  v59 = sub_20C13CC54();

  [v62 activateConstraints_];

  return v26;
}

id sub_20B785578()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutPlanReviewHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WorkoutPlanReviewHeaderCell()
{
  result = qword_27C764F08;
  if (!qword_27C764F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B7856A8()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B785760(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_20B7857A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_20B785804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C133244();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      sub_20B786638(a3, v10);
      v15 = swift_storeEnumTagMultiPayload();
      MEMORY[0x28223BE20](v15);
      *(&v20 - 4) = 0;
      *(&v20 - 24) = 1;
      *(&v20 - 2) = v10;
      *(&v20 - 1) = v14;
      v16 = *(v14 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      v17 = v12;
      v18 = [v16 indexPathForCell_];
      if (v18)
      {
        v19 = v18;
        sub_20C1331E4();

        sub_20C0C1CDC(v7, sub_20B5E27BC);
        (*(v5 + 8))(v7, v4);
      }

      swift_unknownObjectRelease();

      sub_20B786834(v10, type metadata accessor for ShelfItemAction);
    }

    else
    {
    }
  }
}

uint64_t sub_20B785A58(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B785AA4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B785AFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20B785B60(unint64_t a1)
{
  v83 = sub_20C13BB84();
  v80 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for DatePickerItem();
  v79 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v76 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v65 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F18);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v65 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F20);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v65 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v65 - v16;
  v18 = sub_20C132924();
  v19 = *(v18 - 8);
  *&v20 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x4C)
  {
    v72 = v14;
    v73 = v17;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F28);
    v24 = swift_projectBox();
    v25 = *(v24 + *(v23 + 48));
    v26 = *(v24 + *(v23 + 64));
    v27 = *(v19 + 16);
    v75 = v19 + 16;
    v74 = v27;
    v27(v22, v24, v18);
    v83 = v1;
    v28 = *&v1[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_titleLabel];
    v29 = v25;

    [v28 setAttributedText_];
    v30 = *(v26 + 16);
    v71 = v29;
    if (v30)
    {
      v67 = v22;
      v68 = v19;
      v69 = v18;
      v70 = v11;
      *&v85 = MEMORY[0x277D84F90];
      sub_20C13DD64();
      v80 = sub_20B51C88C(0, &qword_27C7713A0);
      v31 = *(v79 + 80);
      v65 = v26;
      v32 = v26 + ((v31 + 32) & ~v31);
      v78 = *(v79 + 72);
      v79 = v31;
      v77 = (v31 + 24) & ~v31;
      v66 = v30;
      v33 = v30;
      v34 = v76;
      v35 = v77;
      do
      {
        sub_20B786638(v32, v8);
        v36 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_20B786638(v8, v34);
        v37 = swift_allocObject();
        *(v37 + 16) = v36;
        sub_20B78669C(v34, v37 + v35);

        sub_20C13D624();
        sub_20B786834(v8, type metadata accessor for DatePickerItem);

        sub_20C13DD34();
        sub_20C13DD74();
        sub_20C13DD84();
        sub_20C13DD44();
        v32 += v78;
        --v33;
      }

      while (v33);

      v38 = v85;
      v11 = v70;
      v18 = v69;
      v19 = v68;
      v22 = v67;
      v30 = v66;
    }

    else
    {

      v38 = MEMORY[0x277D84F90];
    }

    v51 = *(v83 + OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_button);
    v52 = v73;
    sub_20C13D814();
    if (v30 != 1)
    {
      sub_20C13D7A4();
    }

    v54 = *&v51[OBJC_IVAR____TtC9SeymourUI14PulldownButton_appearance + 32];
    v53 = *&v51[OBJC_IVAR____TtC9SeymourUI14PulldownButton_appearance + 48];
    v55 = *&v51[OBJC_IVAR____TtC9SeymourUI14PulldownButton_appearance + 16];
    v88 = *&v51[OBJC_IVAR____TtC9SeymourUI14PulldownButton_appearance + 64];
    v86 = v54;
    v87 = v53;
    v85 = v55;
    v56 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    v58 = v86;
    *(v57 + 24) = v85;
    *(v57 + 40) = v58;
    *(v57 + 56) = v87;
    *(v57 + 72) = v88;
    sub_20B7867D8(&v85, v84);
    v59 = v72;
    sub_20C13C074();
    v60 = sub_20C13C064();
    (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
    sub_20C13D7B4();
    v61 = sub_20C13D874();
    (*(*(v61 - 8) + 56))(v52, 0, 1, v61);
    sub_20C13D894();
    [v51 setEnabled_];
    if (v38 >> 62)
    {
      sub_20B51C88C(0, &qword_27C764F30);

      sub_20C13DE34();
    }

    else
    {

      sub_20C13E004();
      sub_20B51C88C(0, &qword_27C764F30);
    }

    sub_20B51C88C(0, &unk_27C76FED0);
    v62 = sub_20C13D554();
    [v51 setMenu_];

    [v51 setShowsMenuAsPrimaryAction_];
    v74(v11, v22, v18);
    (*(v19 + 56))(v11, 0, 1, v18);
    result = [v51 tintColor];
    if (result)
    {
      v63 = result;
      v64 = [objc_opt_self() secondaryLabelColor];
      sub_20BCBC324(v11, v63, v64);

      sub_20B520158(v11, &qword_27C764F18);
      return (*(v19 + 8))(v22, v18);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_titleLabel] setAttributedText_];
    sub_20C13B534();

    v39 = v1;
    v40 = sub_20C13BB74();
    v41 = sub_20C13D1D4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v85 = v44;
      *v42 = 138543874;
      *(v42 + 4) = v39;
      *v43 = v39;
      *(v42 + 12) = 2160;
      *(v42 + 14) = 1752392040;
      *(v42 + 22) = 2080;
      v84[0] = a1;
      v45 = sub_20B5F66D0();
      v46 = v39;
      v47 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v45);
      v49 = sub_20B51E694(v47, v48, &v85);

      *(v42 + 24) = v49;
      _os_log_impl(&dword_20B517000, v40, v41, "Attempted to configure %{public}@ with item: %{mask.hash}s", v42, 0x20u);
      sub_20B520158(v43, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v43, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x20F2F6A40](v44, -1, -1);
      MEMORY[0x20F2F6A40](v42, -1, -1);
    }

    return (*(v80 + 8))(v4, v83);
  }

  return result;
}

uint64_t sub_20B786638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatePickerItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B78669C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatePickerItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20B786700(uint64_t a1)
{
  v3 = *(type metadata accessor for DatePickerItem() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_20B785804(a1, v4, v5);
}

uint64_t sub_20B786774(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a6 & 0x8000000000000000) == 0)
  {

    v6 = vars8;
  }

  return MEMORY[0x2821F97C8]();
}

uint64_t sub_20B786834(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20B786894()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_stackView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = [objc_opt_self() whiteColor];
  v6 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:0];
  v7 = [v6 fontDescriptorWithSymbolicTraits_];
  if (v7)
  {
    v8 = v7;

    v6 = v8;
  }

  v9 = v0 + OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_styleProvider;
  v10 = [objc_opt_self() fontWithDescriptor:v6 size:0.0];

  *v9 = v5;
  *(v9 + 8) = v10;
  *(v9 + 16) = xmmword_20C157C20;
  *(v9 + 32) = xmmword_20C157C30;
  *(v9 + 48) = 0x403E000000000000;
  v11 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_titleLabel;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setAdjustsFontForContentSizeCategory_];
  *(v0 + v11) = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanReviewHeaderCell_button;
  type metadata accessor for PulldownButton();
  v14 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v13) = v14;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B786B1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  v25 = *(a1 + 16);
  sub_20BB5DE94(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  result = sub_20C13DAA4();
  v6 = v25;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + result);
    v12 = *(a1 + 36);
    v14 = *(v26 + 16);
    v13 = *(v26 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_20BB5DE94((v13 > 1), v14 + 1, 1);
      v6 = v25;
      v12 = v23;
      result = v24;
    }

    *(v26 + 16) = v14 + 1;
    v15 = v26 + 24 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = 0;
    *(v15 + 48) = 1;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v9);
    if ((v16 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v9 << 6;
      v19 = v9 + 1;
      v20 = (a1 + 64 + 8 * v9);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_20B526EA4(result, v12, 0);
          v6 = v25;
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_20B526EA4(result, v12, 0);
      v6 = v25;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
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

uint64_t SiriBeginSessionInterceptor.__allocating_init(dependencies:)()
{
  swift_allocObject();
  v0 = sub_20B7896CC();

  return v0;
}

uint64_t SiriBeginSessionInterceptor.init(dependencies:)()
{
  v0 = sub_20B7896CC();

  return v0;
}

uint64_t SiriBeginSessionInterceptor.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  return v0;
}

uint64_t SiriBeginSessionInterceptor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);

  return swift_deallocClassInstance();
}

uint64_t SiriBeginSessionInterceptor.interceptRequest(_:display:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v167 = a1;
  v174 = a2;
  v2 = type metadata accessor for NavigationRequest();
  v138 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v140 = v3;
  v141 = &v135 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FB0);
  v165 = *(v4 - 8);
  v166 = v4;
  MEMORY[0x28223BE20](v4);
  v163 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = v5;
  MEMORY[0x28223BE20](v6);
  v164 = &v135 - v7;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764820);
  v180 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v171 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v161 = &v135 - v10;
  v160 = v11;
  MEMORY[0x28223BE20](v12);
  v173 = &v135 - v13;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0);
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v153 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = v14;
  MEMORY[0x28223BE20](v15);
  v154 = &v135 - v16;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764860);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v148 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = v17;
  MEMORY[0x28223BE20](v18);
  v149 = &v135 - v19;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770B90);
  v142 = *(v143 - 8);
  v20 = *(v142 + 64);
  MEMORY[0x28223BE20](v143);
  v136 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v137 = &v135 - v22;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v179 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v158 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v168 = &v135 - v25;
  MEMORY[0x28223BE20](v26);
  v170 = &v135 - v27;
  MEMORY[0x28223BE20](v28);
  v176 = &v135 - v29;
  v157 = v30;
  MEMORY[0x28223BE20](v31);
  v175 = &v135 - v32;
  v33 = sub_20C13BB84();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v135 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for NavigationIntent();
  MEMORY[0x28223BE20](v37);
  v39 = &v135 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_20C139144();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v146 = &v135 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = v42;
  MEMORY[0x28223BE20](v43);
  v45 = &v135 - v44;
  v169 = v2;
  v46 = *(v2 + 20);
  v47 = v167;
  sub_20B789828(v167 + v46, v39, type metadata accessor for NavigationIntent);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v144 = v41;
    v48 = *(v41 + 32);
    v135 = v41 + 32;
    v138 = v48;
    v159 = v45;
    v139 = v40;
    (v48)(v45, v39, v40);
    sub_20C13B534();
    sub_20C13BB64();
    (*(v34 + 8))(v36, v33);
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    v167 = swift_allocObject();
    *(v167 + 16) = 0;
    v140 = swift_allocObject();
    *(v140 + 16) = 0;
    v50 = v172;
    __swift_project_boxed_opaque_existential_1(v172 + 12, v172[15]);
    v51 = v137;
    sub_20C139924();
    v52 = swift_allocObject();
    *(v52 + 16) = sub_20B789890;
    *(v52 + 24) = v49;
    v141 = v49;
    v53 = v142;
    v54 = v136;
    v55 = v143;
    (*(v142 + 16))(v136, v51, v143);
    v56 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v57 = swift_allocObject();
    (*(v53 + 32))(v57 + v56, v54, v55);
    v58 = (v57 + ((v20 + v56 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v58 = sub_20B7898AC;
    v58[1] = v52;

    sub_20C137C94();
    (*(v53 + 8))(v51, v55);
    __swift_project_boxed_opaque_existential_1(v50 + 2, v50[5]);
    v59 = v149;
    sub_20C139B84();
    v60 = swift_allocObject();
    v61 = v167;
    *(v60 + 16) = sub_20B78990C;
    *(v60 + 24) = v61;
    v62 = v150;
    v63 = v148;
    v64 = v151;
    (*(v150 + 16))(v148, v59, v151);
    v65 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v66 = (v147 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    (*(v62 + 32))(v67 + v65, v63, v64);
    v68 = (v67 + v66);
    *v68 = sub_20B789928;
    v68[1] = v60;

    sub_20C137C94();
    (*(v62 + 8))(v59, v64);
    __swift_project_boxed_opaque_existential_1(v50 + 7, v50[10]);
    v69 = v154;
    sub_20C139D34();
    v70 = swift_allocObject();
    v71 = v140;
    *(v70 + 16) = sub_20B789988;
    *(v70 + 24) = v71;
    v72 = v155;
    v73 = v153;
    v74 = v156;
    (*(v155 + 16))(v153, v69, v156);
    v75 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v76 = &v152[v75 + 7] & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    (*(v72 + 32))(v77 + v75, v73, v74);
    v78 = (v77 + v76);
    *v78 = sub_20B7899A4;
    v78[1] = v70;

    v79 = v170;
    sub_20C137C94();
    (*(v72 + 8))(v69, v74);
    v80 = v144;
    v81 = v146;
    v82 = v139;
    (*(v144 + 16))(v146, v159, v139);
    v83 = (*(v80 + 80) + 40) & ~*(v80 + 80);
    v84 = swift_allocObject();
    v85 = v141;
    v84[2] = v71;
    v84[3] = v85;
    v84[4] = v167;
    (v138)(v84 + v83, v81, v82);
    v156 = sub_20C1363F4();

    v86 = v173;
    sub_20C137CA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
    v87 = *(v179 + 72);
    v88 = *(v179 + 80);
    v89 = v179;
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_20C1517D0;
    v91 = v90 + ((v88 + 32) & ~v88);
    v92 = *(v89 + 16);
    v93 = v177;
    v92(v91, v175, v177);
    v92(v91 + v87, v176, v93);
    v92(v91 + 2 * v87, v79, v93);
    sub_20B5E2E18();
    v94 = sub_20C13D374();
    sub_20C13A7C4();
    sub_20C137C74();

    v95 = v180;
    v155 = *(v180 + 16);
    v96 = v171;
    v97 = v178;
    (v155)(v171, v86, v178);
    v154 = *(v95 + 80);
    v98 = v95;
    v152 = &v160[(v154 + 16) & ~v154];
    v99 = (v154 + 16) & ~v154;
    v153 = v99;
    v100 = swift_allocObject();
    v160 = *(v98 + 32);
    (v160)(v100 + v99, v96, v97);
    v101 = v158;
    v102 = v168;
    v103 = v177;
    v92(v158, v168, v177);
    v104 = (v88 + 16) & ~v88;
    v105 = (v157 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
    v106 = swift_allocObject();
    v107 = v179;
    (*(v179 + 32))(v106 + v104, v101, v103);
    v108 = (v106 + v105);
    *v108 = sub_20B789A50;
    v108[1] = v100;
    v109 = v161;
    sub_20C137C94();
    v110 = *(v107 + 8);
    v179 = v107 + 8;
    v110(v102, v103);
    sub_20B51CC64((v172 + 17), &v181);
    v111 = swift_allocObject();
    sub_20B51C710(&v181, v111 + 16);
    v112 = v171;
    v113 = v178;
    (v155)(v171, v109, v178);
    v114 = (v152 + 7) & 0xFFFFFFFFFFFFFFF8;
    v115 = swift_allocObject();
    v116 = v112;
    v117 = v113;
    (v160)(&v153[v115], v116, v113);
    v118 = (v115 + v114);
    *v118 = sub_20B789AF8;
    v118[1] = v111;
    sub_20C136754();
    v119 = v164;
    sub_20C137C94();
    v120 = *(v180 + 8);
    v180 += 8;
    v120(v109, v117);
    v121 = swift_allocObject();
    *(v121 + 16) = sub_20B789174;
    *(v121 + 24) = 0;
    v123 = v165;
    v122 = v166;
    v124 = v163;
    (*(v165 + 16))(v163, v119, v166);
    v125 = (*(v123 + 80) + 16) & ~*(v123 + 80);
    v126 = (v162 + v125 + 7) & 0xFFFFFFFFFFFFFFF8;
    v127 = swift_allocObject();
    (*(v123 + 32))(v127 + v125, v124, v122);
    v128 = (v127 + v126);
    *v128 = sub_20B789B7C;
    v128[1] = v121;
    sub_20C137C94();
    (*(v123 + 8))(v119, v122);
    v120(v173, v178);
    v129 = v177;
    v110(v170, v177);
    v110(v176, v129);
    v110(v175, v129);
    (*(v144 + 8))(v159, v139);
  }

  else
  {
    sub_20B7897CC(v39);
    v131 = v47;
    v132 = v141;
    sub_20B789828(v131, v141, type metadata accessor for NavigationRequest);
    v133 = (v138[80] + 16) & ~v138[80];
    v134 = swift_allocObject();
    sub_20B75B150(v132, v134 + v133);
    return sub_20C137CA4();
  }
}

uint64_t sub_20B788184(uint64_t *a1, uint64_t a2)
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_20C13B4B4();
  v9 = sub_20C13BB74();
  v10 = sub_20C13D1F4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_20B517000, v9, v10, "Queried recommendations", v11, 2u);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  *(a2 + 16) = v8;
}

uint64_t sub_20B78830C(uint64_t *a1, uint64_t a2)
{
  v29 = a2;
  v4 = sub_20C134684();
  v5 = *(v4 - 8);
  v31 = v4;
  v32 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a1;
  sub_20C13B4B4();
  v12 = sub_20C13BB74();
  v13 = sub_20C13D1F4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_20B517000, v12, v13, "Queried archived sessions", v14, 2u);
    MEMORY[0x20F2F6A40](v14, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v15 = sub_20B6B4084(MEMORY[0x277D84F90]);
  v34[0] = v15;
  v16 = v33 + 56;
  v17 = 1 << *(v33 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v33 + 56);
  v20 = (v17 + 63) >> 6;
  v30 = v32 + 16;
  v21 = (v32 + 8);

  v22 = 0;
  v28[1] = v15;
  if (v19)
  {
    while (1)
    {
      v23 = v22;
      v24 = v31;
LABEL_11:
      (*(v32 + 16))(v7, *(v33 + 48) + *(v32 + 72) * (__clz(__rbit64(v19)) | (v23 << 6)), v24);
      sub_20B788684(v34, v7, &v35);
      if (v2)
      {
        break;
      }

      v19 &= v19 - 1;
      (*v21)(v7, v24);

      v15 = v35;
      v34[0] = v35;
      v22 = v23;
      if (!v19)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v24 = v31;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v20)
      {

        v25 = sub_20B6DD5C8(v15);
        v26 = v29;
        swift_beginAccess();
        *(v26 + 16) = v25;
      }

      v19 = *(v16 + 8 * v23);
      ++v22;
      if (v19)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  (*v21)(v7, v24);

  __break(1u);
  return result;
}

uint64_t sub_20B788684@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v61 = a3;
  v5 = sub_20C136FE4();
  v63 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v55 - v11;
  v13 = sub_20C132E94();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v65 = &v55 - v18;
  MEMORY[0x28223BE20](v19);
  v64 = &v55 - v20;
  v21 = *a1;
  v58 = a2;
  v22 = sub_20C134664();
  v24 = v21;
  v66 = v21;
  v25 = v23;
  v26 = *(v24 + 16);
  v60 = v5;
  v62 = v13;
  v57 = v22;
  if (v26 && (v27 = sub_20B65AA60(v22, v23), (v28 & 1) != 0))
  {
    v29 = v63;
    (*(v63 + 16))(v9, *(v66 + 56) + *(v63 + 72) * v27, v5);
    sub_20C136FC4();
    v30 = v29;
    v31 = v56;
    v13 = v62;
    (*(v30 + 8))(v9, v5);
    (*(v14 + 56))(v12, 0, 1, v13);
    v32 = v64;
    (*(v14 + 32))(v64, v12, v13);
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    v32 = v64;
    sub_20C132DB4();
    v33 = (*(v14 + 48))(v12, 1, v13);
    v31 = v56;
    if (v33 != 1)
    {
      sub_20B520158(v12, &qword_27C762AC0);
    }
  }

  sub_20C134674();
  v34 = sub_20C132DF4();
  v56 = *(v14 + 8);
  (v56)(v16, v13);
  v35 = v32;
  v36 = v65;
  if (v34)
  {
    sub_20C134674();
    (*(v14 + 16))(v16, v36, v13);
  }

  else
  {
    v37 = *(v14 + 16);
    v37(v65, v35, v13);
    v37(v16, v36, v13);
  }

  v38 = v57;
  sub_20C136FD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F48);
  v39 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A70) - 8);
  v40 = (*(*v39 + 80) + 32) & ~*(*v39 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_20C14F980;
  v42 = (v41 + v40);
  v43 = v39[14];
  *v42 = v38;
  *(v42 + 1) = v25;
  v44 = v31;
  v45 = v63;
  v46 = v60;
  (*(v63 + 16))(&v42[v43], v44, v60);
  v47 = v66;

  v48 = sub_20B6B4084(v41);
  swift_setDeallocating();
  sub_20B520158(v42, &qword_27C763A70);
  swift_deallocClassInstance();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = v47;
  v50 = v59;
  sub_20B789D84(v48, sub_20B78953C, 0, isUniquelyReferenced_nonNull_native, &v67);

  if (v50)
  {

    __break(1u);
  }

  else
  {
    v51 = v67;
    (*(v45 + 8))(v44, v46);
    v52 = v62;
    v53 = v56;
    (v56)(v65, v62);
    result = v53(v64, v52);
    *v61 = v51;
  }

  return result;
}

uint64_t sub_20B788C5C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_20C13B4B4();
  v9 = sub_20C13BB74();
  v10 = sub_20C13D1F4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_20B517000, v9, v10, "Queried allowed content ratings", v11, 2u);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v12 = sub_20B786B1C(v8);
  v13 = sub_20B716D58(v12);

  swift_beginAccess();
  *(a2 + 16) = v13;
}

uint64_t sub_20B788DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26[2] = a4;
  v26[13] = a5;
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v26 - v13;
  swift_beginAccess();
  if (*(a1 + 16) && (swift_beginAccess(), *(a2 + 16)) && (swift_beginAccess(), (v15 = *(a3 + 16)) != 0))
  {

    sub_20C13B4B4();
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1F4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26[1] = v15;
      v19 = v18;
      *v18 = 0;
      _os_log_impl(&dword_20B517000, v16, v17, "Making start workout request", v18, 2u);
      MEMORY[0x20F2F6A40](v19, -1, -1);
    }

    (*(v9 + 8))(v14, v8);
    sub_20C139104();
    sub_20C139114();
    sub_20C139124();
    return sub_20C1363E4();
  }

  else
  {
    sub_20C13B4B4();
    v21 = sub_20C13BB74();
    v22 = sub_20C13D1D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20B517000, v21, v22, "Recommendations or completed records were unexpectedly unavailable", v23, 2u);
      MEMORY[0x20F2F6A40](v23, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v24 = sub_20C139694();
    sub_20B789D1C(&qword_27C764F40, 255, MEMORY[0x277D54480]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D54478], v24);
    return swift_willThrow();
  }
}

uint64_t sub_20B789174@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_20C136754();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13BB84();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4B4();
  v11 = *(v5 + 16);
  v30 = a1;
  v11(v7, a1, v4);
  v12 = sub_20C13BB74();
  v13 = sub_20C13D1F4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31 = v27;
    *v14 = 136446210;
    v26 = sub_20C136734();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = sub_20B51E694(v26, v16, &v31);

    *(v14 + 4) = v17;
    _os_log_impl(&dword_20B517000, v12, v13, "Siri evaluation complete, workoutIdentifier=%{public}s", v14, 0xCu);
    v18 = v27;
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x20F2F6A40](v18, -1, -1);
    MEMORY[0x20F2F6A40](v14, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  (*(v28 + 8))(v10, v29);
  *a2 = sub_20C136734();
  a2[1] = v19;
  type metadata accessor for WorkoutNavigationResource();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationResource();
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for NavigationRequest();
  v21 = a2 + v20[5];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
  *v21 = sub_20C136744();
  v21[8] = v23 & 1;
  v24 = sub_20C1344C4();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  (*(*(v24 - 8) + 56))(&v21[v22], 1, 1, v24);
  *(v21 + 4) = 0;
  type metadata accessor for NavigationIntent();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource();
  result = swift_storeEnumTagMultiPayload();
  *(a2 + v20[7]) = 0;
  *(a2 + v20[8]) = 0;
  *(a2 + v20[9]) = 0;
  return result;
}

uint64_t sub_20B78953C@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F58) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A70) + 48);
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = sub_20C136FE4();
  (*(*(v8 - 8) + 16))(&a2[v5], &a1[v4], v8);
  *a2 = v7;
  *(a2 + 1) = v6;
}

uint64_t sub_20B789638(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_20C137C94();
}

uint64_t sub_20B7896CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40);
  sub_20C133AA4();
  sub_20B51C710(v2, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860);
  sub_20C133AA4();
  sub_20B51C710(v2, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769190);
  sub_20C133AA4();
  sub_20B51C710(v2, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FA0);
  sub_20C133AA4();
  sub_20B51C710(v2, v0 + 136);
  return v0;
}

uint64_t sub_20B7897CC(uint64_t a1)
{
  v2 = type metadata accessor for NavigationIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B789828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B789A50@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764820);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_20B789BAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B789C74(uint64_t a1, uint64_t a2)
{
  result = sub_20B789D1C(&qword_27C764F38, a2, type metadata accessor for SiriBeginSessionInterceptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20B789D1C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_20B789D84(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v57 = a5;
  v9 = sub_20C136FE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F50);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (v46 - v14);
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v50 = a1;
  v51 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v52 = v17;
  v53 = 0;
  v54 = v20 & v18;
  v55 = a2;
  v56 = a3;
  v48 = v10;
  v49 = (v10 + 32);
  v46[3] = v10 + 40;

  v46[1] = a3;

  for (i = v15; ; v15 = i)
  {
    sub_20BEF55A8(v15);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A70);
    if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
    {
      sub_20B583EDC();
    }

    v23 = *(v22 + 48);
    v25 = *v15;
    v24 = v15[1];
    v26 = *v49;
    v27 = v15 + v23;
    v28 = v12;
    v29 = v9;
    (*v49)(v12, v27, v9);
    v30 = *v57;
    v32 = sub_20B65AA60(v25, v24);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if ((a4 & 1) == 0)
      {
        sub_20BA108EC();
      }
    }

    else
    {
      sub_20BA0AB8C(v35, a4 & 1);
      v37 = sub_20B65AA60(v25, v24);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_20;
      }

      v32 = v37;
    }

    v39 = *v57;
    if (v36)
    {

      v21 = v39[7] + *(v48 + 72) * v32;
      v12 = v28;
      v9 = v29;
      (*(v48 + 40))(v21, v28, v29);
    }

    else
    {
      v39[(v32 >> 6) + 8] |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v25;
      v40[1] = v24;
      v41 = v39[7] + *(v48 + 72) * v32;
      v12 = v28;
      v9 = v29;
      v26(v41, v28, v29);
      v42 = v39[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_19;
      }

      v39[2] = v44;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_20C13E054();
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI21PageActionButtonStateO(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20B78A140(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20B78A188(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_20B78A1D0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_20B78A1FC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  if (*(v0 + 32) <= 1u)
  {
    if (!*(v0 + 32))
    {
      MEMORY[0x20F2F58E0](0);
LABEL_8:

      return sub_20C13CA64();
    }

    MEMORY[0x20F2F58E0](1);
    if (!v1)
    {
LABEL_12:
      sub_20C13E184();
      if (!v2)
      {
        return sub_20C13E184();
      }

      goto LABEL_7;
    }

LABEL_6:
    sub_20C13E184();
    sub_20C13CA64();
    if (!v2)
    {
      return sub_20C13E184();
    }

LABEL_7:
    sub_20C13E184();
    goto LABEL_8;
  }

  if (*(v0 + 32) == 2)
  {
    MEMORY[0x20F2F58E0](4);
    if (!v1)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  if (*(v0 + 16) | v1 | *v0 | v2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  return MEMORY[0x20F2F58E0](v4);
}

uint64_t sub_20B78A30C()
{
  sub_20C13E164();
  sub_20B78A1FC();
  return sub_20C13E1B4();
}

uint64_t sub_20B78A350()
{
  sub_20C13E164();
  sub_20B78A1FC();
  return sub_20C13E1B4();
}

uint64_t sub_20B78A38C(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_20B78A430(v5, v7) & 1;
}

unint64_t sub_20B78A3DC()
{
  result = qword_27C764F60;
  if (!qword_27C764F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764F60);
  }

  return result;
}

uint64_t sub_20B78A430(uint64_t *a1, int8x16_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 32);
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v6 | v5 | v4 | v7)
      {
        if (a2[2].i8[0] != 3 || a2->i64[0] != 1 || a2[1].i64[0] | a2[1].i64[1] | a2->i64[1])
        {
          return 0;
        }
      }

      else
      {
        if (a2[2].i8[0] != 3)
        {
          return 0;
        }

        v15 = vorrq_s8(*a2, a2[1]);
        if (vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)))
        {
          return 0;
        }
      }

      return 1;
    }

    if (a2[2].i8[0] != 2)
    {
      return 0;
    }

    v11 = a2->i64[1];
    v12 = a2[1].i64[0];
    v13 = a2[1].i64[1];
    if (v5)
    {
      if (!v11 || (v4 != a2->i64[0] || v5 != v11) && (sub_20C13DFF4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    if (!v7)
    {
      return !v13;
    }

    return v13 && (v6 == v12 && v7 == v13 || (sub_20C13DFF4() & 1) != 0);
  }

  if (v8)
  {
    if (a2[2].i8[0] != 1)
    {
      return 0;
    }

    v14 = a2->i64[1];
    v12 = a2[1].i64[0];
    v13 = a2[1].i64[1];
    if (v5)
    {
      if (!v14 || (v4 != a2->i64[0] || v5 != v14) && (sub_20C13DFF4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v14)
    {
      return 0;
    }

    if (!v7)
    {
      return !v13;
    }

    return v13 && (v6 == v12 && v7 == v13 || (sub_20C13DFF4() & 1) != 0);
  }

  if (a2[2].i8[0])
  {
    return 0;
  }

  if (v4 == a2->i64[0] && v5 == a2->i64[1])
  {
    return 1;
  }

  return sub_20C13DFF4();
}

id sub_20B78A628()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PageScrollObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20B78A690()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = sub_20B633A38(0x65765F68636E6970, 0xEC00000078657472, 0x72665F68636E6970, 0xEE00746E656D6761, 0xD000000000000022, 0x800000020C198760, *(v0 + 80));
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_20B78A740(void *a1, uint64_t a2, void *a3)
{
  v5 = *(v3 + 16);
  if (v5 == 1)
  {
    v6 = *(v3 + 128);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *(v3 + 96);
    if (!v6)
    {
      return;
    }
  }

  swift_unknownObjectRetain();
  v9 = *(v3 + 152);
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = *(v3 + 24);
  if (!v10)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    v11 = *(v3 + 144);
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_15:

    swift_unknownObjectRelease();
    return;
  }

  v11 = *(v3 + 112);
  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_7:
  swift_unknownObjectRetain();
  if (!a3)
  {
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v16 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = [a1 renderCommandEncoderWithDescriptor_];
  if (v12)
  {
    v13 = v12;
    v14 = sub_20C13C914();
    [v13 setLabel_];

    [v13 setRenderPipelineState_];
    [v13 setVertexBuffer:v11 offset:0 atIndex:0];
    [v13 setVertexBytes:a2 length:384 atIndex:1];
    [v13 setFragmentBytes:a2 length:384 atIndex:1];
    [v13 setFragmentTexture:v10 atIndex:0];
    v15 = 88;
    if (*(v3 + 16))
    {
      v15 = 120;
    }

    [v13 drawIndexedPrimitives:3 indexCount:*(*(v3 + v15) + 16) indexType:0 indexBuffer:v6 indexBufferOffset:0 instanceCount:1];
    [v13 endEncoding];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_15;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

id sub_20B78A9E0()
{
  v38[1] = *MEMORY[0x277D85DE8];
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = sub_20B78A690();
  if (qword_27C760A40 != -1)
  {
    swift_once();
  }

  [v8 setVertexDescriptor_];
  v9 = [v8 colorAttachments];
  v10 = [v9 objectAtIndexedSubscript_];

  if (!v10)
  {
    sub_20C13B4F4();
    v14 = sub_20C13BB74();
    v15 = sub_20C13D1D4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20B517000, v14, v15, "[PinchRenderer] Failed to create pipeline for pinch. No color attachments found", v16, 2u);
      MEMORY[0x20F2F6A40](v16, -1, -1);
    }

    (*(v2 + 8))(v7, v1);
    return 0;
  }

  [v10 setPixelFormat_];
  v11 = *(v0 + 56);
  v37 = 0;
  v12 = [v11 newRenderPipelineStateWithDescriptor:v8 error:&v37];
  v13 = v37;
  if (!v12)
  {
    v17 = v13;
    v18 = sub_20C132A44();

    swift_willThrow();
    v37 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v19 = sub_20B78B2B4();
    swift_dynamicCast();
    v20 = v36;
    sub_20C13B4F4();
    v21 = v20;
    v22 = sub_20C13BB74();
    v23 = sub_20C13D1D4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v33 = v19;
      v25 = v24;
      v34 = swift_slowAlloc();
      v35 = v21;
      v38[0] = v34;
      *v25 = 136315138;
      v26 = sub_20B78B300();
      v27 = MEMORY[0x20F2F5860](v33, v26);
      v29 = sub_20B51E694(v27, v28, v38);
      v33 = v21;
      v30 = v29;

      *(v25 + 4) = v30;
      _os_log_impl(&dword_20B517000, v22, v23, "[PinchRenderer] Failed to create pipeline state with error %s", v25, 0xCu);
      v31 = v34;
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x20F2F6A40](v31, -1, -1);
      MEMORY[0x20F2F6A40](v25, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  return v12;
}

uint64_t sub_20B78ADF0()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 72);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_20B78AED4(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = xmmword_20C157FB0;
  *(v1 + 40) = 0;
  *(v1 + 152) = 0;
  v3 = *(a1 + 8);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v6;
  *(v1 + 80) = v4;
  v40 = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = v5;
  swift_unknownObjectRetain();
  sub_20B8A160C(1, v41);
  v8 = v44;
  v9 = v45;
  v10 = *MEMORY[0x277CDA150];
  v11 = [objc_allocWithZone(MEMORY[0x277CD9F00]) initWithVertexCount:*(v43 + 16) vertices:v43 + 32 faceCount:*(v42 + 16) faces:v42 + 32 depthNormalization:*MEMORY[0x277CDA150]];
  v12 = [v11 subdividedMesh_];

  v13 = [objc_allocWithZone(MEMORY[0x277CD9F00]) initWithVertexCount:*(v9 + 16) vertices:v9 + 32 faceCount:*(v8 + 16) faces:v8 + 32 depthNormalization:v10];

  v14 = [v13 subdividedMesh_];

  result = sub_20B6DB924(v14);
  v17 = result[2];
  if (v17 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v18 = result;
  v19 = v16;
  v20 = 2 * v17;

  result = [v40 newBufferWithBytes:v18 + 4 length:v20 options:0];
  v21 = *(v19 + 16);
  if (v21 >> 57)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v22 = result;
  v23 = v21 << 6;
  swift_unknownObjectRetain();
  v24 = [v40 newBufferWithBytes:v19 + 32 length:v23 options:0];

  swift_unknownObjectRelease();

  v2[15] = v18;
  v2[16] = v22;
  v2[17] = v19;
  v2[18] = v24;
  sub_20B8A160C(0, v41);
  v25 = v44;
  v26 = v45;
  v27 = [objc_allocWithZone(MEMORY[0x277CD9F00]) initWithVertexCount:*(v43 + 16) vertices:v43 + 32 faceCount:*(v42 + 16) faces:v42 + 32 depthNormalization:v10];
  v28 = [v27 subdividedMesh_];

  v29 = [objc_allocWithZone(MEMORY[0x277CD9F00]) initWithVertexCount:*(v26 + 16) vertices:v26 + 32 faceCount:*(v25 + 16) faces:v25 + 32 depthNormalization:v10];

  v30 = [v29 subdividedMesh_];

  result = sub_20B6DB924(v30);
  v32 = result[2];
  if (v32 + 0x4000000000000000 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v33 = result;
  v34 = v31;
  v35 = 2 * v32;

  result = [v40 newBufferWithBytes:v33 + 4 length:v35 options:0];
  v36 = *(v34 + 16);
  if (!(v36 >> 57))
  {
    v37 = result;
    v38 = v36 << 6;
    swift_unknownObjectRetain();
    v39 = [v40 newBufferWithBytes:v34 + 32 length:v38 options:0];

    swift_unknownObjectRelease();

    v2[11] = v33;
    v2[12] = v37;
    v2[13] = v34;
    v2[14] = v39;
    return v2;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_20B78B2B4()
{
  result = qword_27C770600;
  if (!qword_27C770600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C770600);
  }

  return result;
}

unint64_t sub_20B78B300()
{
  result = qword_27C764F80;
  if (!qword_27C764F80)
  {
    sub_20B78B2B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764F80);
  }

  return result;
}

uint64_t sub_20B78B358()
{
  sub_20C13E164();
  sub_20C132EE4();
  sub_20B78B5B0(&qword_27C7675A0, MEMORY[0x277CC95F0]);
  sub_20C13C7C4();
  return sub_20C13E1B4();
}

uint64_t sub_20B78B3F4()
{
  sub_20C132EE4();
  sub_20B78B5B0(&qword_27C7675A0, MEMORY[0x277CC95F0]);
  return sub_20C13C7C4();
}

uint64_t sub_20B78B474()
{
  sub_20C13E164();
  sub_20C132EE4();
  sub_20B78B5B0(&qword_27C7675A0, MEMORY[0x277CC95F0]);
  sub_20C13C7C4();
  return sub_20C13E1B4();
}

uint64_t type metadata accessor for LayoutListSeparatorHandler()
{
  result = qword_27C764F98;
  if (!qword_27C764F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B78B5B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20B78B620()
{
  result = sub_20B51F2C0();
  if (v1 <= 0x3F)
  {
    result = sub_20C132EE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_20B78B6A4()
{
  sub_20C1380F4();
  v0 = sub_20C138104();
  if (v0 == sub_20C138104())
  {
    v1 = 42.0;
  }

  else
  {
    v1 = 30.0;
  }

  v2 = *MEMORY[0x277D74368];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 systemFontOfSize_];
  v6 = [v5 fontDescriptor];

  v7 = v4;
  v8 = [v6 fontDescriptorWithDesign_];

  if (v8)
  {

    v6 = v8;
  }

  v9 = [v3 fontWithDescriptor:v6 size:0.0];

  qword_27C764FA8 = v9;
}

void sub_20B78B7D4()
{
  sub_20C1380F4();
  v0 = sub_20C138104();
  if (v0 == sub_20C138104())
  {
    v1 = 112.0;
  }

  else
  {
    v1 = 80.0;
  }

  v2 = *MEMORY[0x277D74368];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 systemFontOfSize_];
  v6 = [v5 fontDescriptor];

  v7 = v4;
  v8 = [v6 fontDescriptorWithDesign_];

  if (v8)
  {

    v6 = v8;
  }

  v9 = [v3 fontWithDescriptor:v6 size:0.0];

  qword_27C764FB0 = v9;
}

void sub_20B78B908(double a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_onCountdownStep];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_onCountdownWindUp];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v1[OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_onCountdownFadeOut];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v1[OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_onCountdownCompleted];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_readyLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C7606F8 != -1)
  {
    swift_once();
  }

  [v9 setFont_];
  [v9 setTextAlignment_];
  v10 = objc_opt_self();
  v11 = [v10 labelColor];
  [v9 setTextColor_];

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  v14 = sub_20C13C914();
  [v9 setText_];

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v8] = v9;
  v15 = OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_oneLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760700 != -1)
  {
    swift_once();
  }

  v17 = qword_27C764FB0;
  [v16 setFont_];
  [v16 setTextAlignment_];
  v18 = [v10 labelColor];
  [v16 setTextColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D83B88];
  *(v19 + 16) = xmmword_20C14F980;
  v21 = MEMORY[0x277D83C10];
  *(v19 + 56) = v20;
  *(v19 + 64) = v21;
  *(v19 + 32) = 1;
  sub_20C13C924();

  v22 = sub_20C13C914();
  [v16 setText_];

  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v15] = v16;
  v23 = OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_twoLabel;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v24 setFont_];
  [v24 setTextAlignment_];
  v25 = [v10 labelColor];
  [v24 setTextColor_];

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20C14F980;
  *(v26 + 56) = MEMORY[0x277D83B88];
  *(v26 + 64) = MEMORY[0x277D83C10];
  *(v26 + 32) = 2;
  sub_20C13C924();

  v27 = sub_20C13C914();
  [v24 setText_];

  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v23] = v24;
  v28 = OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_threeLabel;
  v29 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v29 setFont_];
  [v29 setTextAlignment_];
  v30 = [v10 labelColor];
  [v29 setTextColor_];

  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_20C14F980;
  *(v31 + 56) = MEMORY[0x277D83B88];
  *(v31 + 64) = MEMORY[0x277D83C10];
  *(v31 + 32) = 3;
  sub_20C13C924();

  v32 = sub_20C13C914();
  [v29 setText_];

  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v28] = v29;
  v33 = objc_opt_self();
  v34 = [v33 keyColors];
  if (!v34)
  {
    __break(1u);
    goto LABEL_11;
  }

  v35 = v34;
  v36 = [v34 gradientLightColor];

  if (!v36)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v37 = [v33 keyColors];
  if (!v37)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v38 = v37;
  v39 = [v37 gradientDarkColor];

  if (v39)
  {
    v40 = objc_allocWithZone(sub_20C138A04());
    v41 = sub_20C1389F4();
    [v41 setTranslatesAutoresizingMaskIntoConstraints_];
    *&v2[OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_countdownRingView] = v41;
    v107.receiver = v2;
    v107.super_class = type metadata accessor for WorkoutCountdownView();
    v42 = objc_msgSendSuper2(&v107, &selRef__hysteresis, 0.0, 0.0, 0.0, 0.0);
    v43 = *&v42[OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_countdownRingView];
    v44 = OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_countdownRingView;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = v42;
    v46 = v43;

    sub_20C1389C4();

    v47 = *&v42[v44];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = v47;

    sub_20C138994();

    v49 = *&v42[v44];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = v49;

    sub_20C1389B4();

    v51 = *&v42[v44];
    v105 = v44;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v52 = v51;

    sub_20C1389A4();

    v53 = v45;
    v54 = *&v42[v44];
    v55 = v53;
    [v55 addSubview_];
    v56 = OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_readyLabel;
    [v55 addSubview_];
    v57 = OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_oneLabel;
    [v55 addSubview_];
    v58 = OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_twoLabel;
    [v55 addSubview_];
    v104 = OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_threeLabel;
    [v55 addSubview_];
    v106 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_20C1580B0;
    v60 = [*&v55[v56] centerXAnchor];
    v61 = [v55 centerXAnchor];
    v62 = [v60 constraintEqualToAnchor_];

    *(v59 + 32) = v62;
    v63 = [*&v55[v56] centerYAnchor];
    v64 = [v55 centerYAnchor];

    v65 = [v63 constraintEqualToAnchor_];
    *(v59 + 40) = v65;
    v66 = [*&v55[v57] centerXAnchor];
    v67 = [v55 centerXAnchor];

    v68 = [v66 constraintEqualToAnchor_];
    *(v59 + 48) = v68;
    v69 = [*&v55[v57] centerYAnchor];
    v70 = [v55 centerYAnchor];

    v71 = [v69 constraintEqualToAnchor_];
    *(v59 + 56) = v71;
    v72 = [*&v55[v58] centerXAnchor];
    v73 = [v55 centerXAnchor];

    v74 = [v72 constraintEqualToAnchor_];
    *(v59 + 64) = v74;
    v75 = [*&v55[v58] centerYAnchor];
    v76 = [v55 centerYAnchor];

    v77 = [v75 constraintEqualToAnchor_];
    *(v59 + 72) = v77;
    v78 = [*&v55[v104] centerXAnchor];
    v79 = [v55 centerXAnchor];

    v80 = [v78 &selRef:v79 alertControllerReleasedDictationButton:? + 5];
    *(v59 + 80) = v80;
    v81 = [*&v55[v104] centerYAnchor];
    v82 = [v55 centerYAnchor];

    v83 = [v81 &selRef:v82 alertControllerReleasedDictationButton:? + 5];
    *(v59 + 88) = v83;
    v84 = [*&v42[v105] leadingAnchor];
    v85 = [v55 leadingAnchor];

    v86 = [v84 &selRef:v85 alertControllerReleasedDictationButton:? + 5];
    *(v59 + 96) = v86;
    v87 = [*&v42[v105] trailingAnchor];
    v88 = [v55 trailingAnchor];

    v89 = [v87 &selRef:v88 alertControllerReleasedDictationButton:? + 5];
    *(v59 + 104) = v89;
    v90 = [*&v42[v105] topAnchor];
    v91 = [v55 topAnchor];

    v92 = [v90 &selRef:v91 alertControllerReleasedDictationButton:? + 5];
    *(v59 + 112) = v92;
    v93 = [*&v42[v105] bottomAnchor];
    v94 = [v55 bottomAnchor];

    v95 = [v93 &selRef:v94 alertControllerReleasedDictationButton:? + 5];
    *(v59 + 120) = v95;
    v96 = [v55 widthAnchor];

    v97 = [v96 constraintEqualToConstant_];
    *(v59 + 128) = v97;
    v98 = [v55 heightAnchor];

    v99 = [v55 widthAnchor];
    v100 = [v98 &selRef:v99 alertControllerReleasedDictationButton:? + 5];

    *(v59 + 136) = v100;
    sub_20B5E29D0();
    v101 = sub_20C13CC54();

    [v106 activateConstraints_];

    v102 = swift_allocObject();
    *(v102 + 16) = v55;
    v103 = v55;
    sub_20BC04528(sub_20B78E068, v102);

    [*&v42[v105] setAlpha_];

    return;
  }

LABEL_13:
  __break(1u);
}

void sub_20B78C884(uint64_t a1)
{
  v2 = sub_20C1387A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(v3 + 16))(v5, a1, v2);
    v8 = (*(v3 + 88))(v5, v2);
    if (v8 == *MEMORY[0x277D54078])
    {
      sub_20B78D498();
    }

    else if (v8 == *MEMORY[0x277D54080])
    {
      sub_20B78D1FC();
    }

    else if (v8 == *MEMORY[0x277D54088])
    {
      sub_20B78CF60();
    }

    else
    {
      (*(v3 + 8))(v5, v2);
    }

    v9 = sub_20C138794();
    if (v9 < 0)
    {
      __break(1u);
    }

    else
    {
      [v7 accessibilityUpdateCountdownToStep_];
      v10 = &v7[OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_onCountdownStep];
      swift_beginAccess();
      v11 = *v10;
      if (*v10)
      {

        v11(a1);

        sub_20B583ECC(v11);
      }

      else
      {
      }
    }
  }
}

void sub_20B78CA8C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (Strong + *a2);
    swift_beginAccess();
    v6 = *v5;
    if (*v5)
    {

      v6(v7);

      sub_20B583ECC(v6);
    }

    else
    {
    }
  }
}

void sub_20B78CB34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_20B78CC58(0.7);
    v2 = &v1[OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_onCountdownWindUp];
    swift_beginAccess();
    v3 = *v2;
    if (*v2)
    {

      v3(v4);

      sub_20B583ECC(v3);
    }

    else
    {
    }
  }
}

void sub_20B78CC58(double a1)
{
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_countdownRingView];
  [v3 setOpaque_];
  [v3 setAlpha_];
  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_readyLabel];
  [v4 setHidden_];
  [v4 setAlpha_];
  CGAffineTransformMakeScale(&v14, 0.01, 0.01);
  [v4 setTransform_];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = objc_opt_self();
  *&v14.tx = sub_20B78E1CC;
  *&v14.ty = v5;
  *&v14.a = MEMORY[0x277D85DD0];
  *&v14.b = 1107296256;
  *&v14.c = sub_20B7B548C;
  *&v14.d = &block_descriptor_102;
  v7 = _Block_copy(&v14);
  v8 = v1;

  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *&v14.tx = sub_20B78E220;
  *&v14.ty = v9;
  *&v14.a = MEMORY[0x277D85DD0];
  *&v14.b = 1107296256;
  *&v14.c = sub_20BC044C8;
  *&v14.d = &block_descriptor_108;
  v10 = _Block_copy(&v14);

  [v6 smu:v7 animateUsingSpringWithTension:v10 friction:180.0 animations:35.0 completion:?];
  _Block_release(v10);
  _Block_release(v7);

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *&v14.tx = sub_20B78E228;
  *&v14.ty = v11;
  *&v14.a = MEMORY[0x277D85DD0];
  *&v14.b = 1107296256;
  *&v14.c = sub_20B7B548C;
  *&v14.d = &block_descriptor_114;
  v12 = _Block_copy(&v14);
  v13 = v8;

  [v6 animateWithDuration:0x20000 delay:v12 options:0 animations:a1 - a1 * 0.5 completion:a1 * 0.5];
  _Block_release(v12);
}

void sub_20B78CF90(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v16 = sub_20B78E160;
  v17 = v3;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_20B7B548C;
  v15 = &block_descriptor_84;
  v4 = _Block_copy(&v12);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.4];
  _Block_release(v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v16 = sub_20B78E190;
  v17 = v6;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_20B7B548C;
  v15 = &block_descriptor_90;
  v7 = _Block_copy(&v12);
  v8 = v5;

  [v2 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.4 animations:0.3];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v16 = sub_20B78E1C0;
  v17 = v9;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_20B7B548C;
  v15 = &block_descriptor_96;
  v10 = _Block_copy(&v12);
  v11 = v8;

  [v2 addKeyframeWithRelativeStartTime:v10 relativeDuration:0.7 animations:0.3];
  _Block_release(v10);
}

void sub_20B78D22C(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v16 = sub_20B78E0EC;
  v17 = v3;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_20B7B548C;
  v15 = &block_descriptor_60;
  v4 = _Block_copy(&v12);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.4];
  _Block_release(v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v16 = sub_20B78E11C;
  v17 = v6;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_20B7B548C;
  v15 = &block_descriptor_66;
  v7 = _Block_copy(&v12);
  v8 = v5;

  [v2 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.4 animations:0.3];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v16 = sub_20B78E14C;
  v17 = v9;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_20B7B548C;
  v15 = &block_descriptor_72;
  v10 = _Block_copy(&v12);
  v11 = v8;

  [v2 addKeyframeWithRelativeStartTime:v10 relativeDuration:0.7 animations:0.3];
  _Block_release(v10);
}

void sub_20B78D4C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *&v4[*a1];
  CGAffineTransformMakeScale(&v12, 0.01, 0.01);
  [v7 setTransform_];
  [v7 setAlpha_];
  [v7 setHidden_];
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *&v12.tx = a3;
  *&v12.ty = v9;
  *&v12.a = MEMORY[0x277D85DD0];
  *&v12.b = 1107296256;
  *&v12.c = sub_20B7B548C;
  *&v12.d = a4;
  v10 = _Block_copy(&v12);
  v11 = v4;

  [v8 animateKeyframesWithDuration:0 delay:v10 options:0 animations:0.35 completion:0.0];
  _Block_release(v10);
}

void sub_20B78D624(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v16 = sub_20B78E078;
  v17 = v3;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_20B7B548C;
  v15 = &block_descriptor_36;
  v4 = _Block_copy(&v12);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.4];
  _Block_release(v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v16 = sub_20B78E0A8;
  v17 = v6;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_20B7B548C;
  v15 = &block_descriptor_42;
  v7 = _Block_copy(&v12);
  v8 = v5;

  [v2 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.4 animations:0.3];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v16 = sub_20B78E0D8;
  v17 = v9;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_20B7B548C;
  v15 = &block_descriptor_48;
  v10 = _Block_copy(&v12);
  v11 = v8;

  [v2 addKeyframeWithRelativeStartTime:v10 relativeDuration:0.7 animations:0.3];
  _Block_release(v10);
}

id sub_20B78D890(uint64_t a1, void *a2, CGFloat a3, double a4)
{
  v5 = *(a1 + *a2);
  CGAffineTransformMakeScale(&v7, a3, a3);
  [v5 setTransform_];
  return [v5 setAlpha_];
}

id sub_20B78D90C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_readyLabel);
  CGAffineTransformMakeScale(&v7, 0.01, 0.01);
  [v2 setTransform_];
  [v2 setAlpha_];
  v3 = *(a1 + OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_oneLabel);
  CGAffineTransformMakeScale(&v7, 0.01, 0.01);
  [v3 setTransform_];
  [v3 setAlpha_];
  v4 = *(a1 + OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_twoLabel);
  CGAffineTransformMakeScale(&v7, 0.01, 0.01);
  [v4 setTransform_];
  [v4 setAlpha_];
  v5 = *(a1 + OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_threeLabel);
  CGAffineTransformMakeScale(&v7, 0.01, 0.01);
  [v5 setTransform_];
  return [v5 setAlpha_];
}

id sub_20B78DAB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutCountdownView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20B78DBD8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_countdownRingView);
  sub_20C1389E4();
  [*(v1 + OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_readyLabel) setHidden_];
  [*(v1 + OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_oneLabel) setHidden_];
  [*(v1 + OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_twoLabel) setHidden_];
  [*(v1 + OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_threeLabel) setHidden_];

  return [v2 setHidden_];
}

uint64_t sub_20B78DE90(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void))
{
  v6 = (v4 + *a3);
  swift_beginAccess();
  v7 = *v6;
  a4(*v6, v6[1]);
  return v7;
}

uint64_t sub_20B78DF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v10 = (v6 + *a5);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = a1;
  v10[1] = a2;
  return a6(v11, v12);
}

id sub_20B78E1D8(void *a1)
{
  v2 = *(*(v1 + 16) + *a1);
  v4[0] = 0x3FF0000000000000;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0x3FF0000000000000;
  v4[4] = 0;
  v4[5] = 0;
  return [v2 setTransform_];
}

void sub_20B78E248()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_onCountdownStep);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_onCountdownWindUp);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_onCountdownFadeOut);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_onCountdownCompleted);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_readyLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C7606F8 != -1)
  {
    swift_once();
  }

  [v6 setFont_];
  [v6 setTextAlignment_];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  [v6 setTextColor_];

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  v11 = sub_20C13C914();
  [v6 setText_];

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  v12 = OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_oneLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760700 != -1)
  {
    swift_once();
  }

  v14 = qword_27C764FB0;
  [v13 setFont_];
  [v13 setTextAlignment_];
  v15 = [v7 labelColor];
  [v13 setTextColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D83B88];
  *(v16 + 16) = xmmword_20C14F980;
  v18 = MEMORY[0x277D83C10];
  *(v16 + 56) = v17;
  *(v16 + 64) = v18;
  *(v16 + 32) = 1;
  sub_20C13C924();

  v19 = sub_20C13C914();
  [v13 setText_];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v12) = v13;
  v20 = OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_twoLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v21 setFont_];
  [v21 setTextAlignment_];
  v22 = [v7 labelColor];
  [v21 setTextColor_];

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20C14F980;
  *(v23 + 56) = MEMORY[0x277D83B88];
  *(v23 + 64) = MEMORY[0x277D83C10];
  *(v23 + 32) = 2;
  sub_20C13C924();

  v24 = sub_20C13C914();
  [v21 setText_];

  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v20) = v21;
  v25 = OBJC_IVAR____TtC9SeymourUI20WorkoutCountdownView_threeLabel;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v26 setFont_];
  [v26 setTextAlignment_];
  v27 = [v7 labelColor];
  [v26 setTextColor_];

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C14F980;
  *(v28 + 56) = MEMORY[0x277D83B88];
  *(v28 + 64) = MEMORY[0x277D83C10];
  *(v28 + 32) = 3;
  sub_20C13C924();

  v29 = sub_20C13C914();
  [v26 setText_];

  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v25) = v26;
  sub_20C13DE24();
  __break(1u);
}

void sub_20B78E8EC()
{
  v1 = type metadata accessor for SessionDistanceMetricPresenter.State(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_state;
  swift_beginAccess();
  sub_20B790FC0(v0 + v7, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v9 = sub_20C134514();
    v10 = *(v9 - 8);
    (*(v10 + 32))(v6, v3, v9);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767280);
    swift_unknownObjectRelease();
    v9 = sub_20C134514();
    v10 = *(v9 - 8);
    (*(v10 + 32))(v6, v3, v9);
LABEL_5:
    (*(v10 + 56))(v6, 0, 1, v9);
    goto LABEL_7;
  }

  v9 = sub_20C134514();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
LABEL_7:
  sub_20C134514();
  v11 = *(v9 - 8);
  if ((*(v11 + 48))(v6, 1, v9) == 1)
  {
    sub_20B520158(v6, &unk_27C765050);
    v12 = 0.0;
  }

  else
  {
    sub_20C134504();
    v14 = v13;
    (*(v11 + 8))(v6, v9);
    v12 = v14;
  }

  sub_20B78F188(v12);
}

uint64_t sub_20B78EC10()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C137EA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_20C13A7D4();
    sub_20C13B564();
    sub_20C13BB64();
    (*(v1 + 8))(v3, v0);
    v10 = sub_20C137D14();
    (*(v5 + 8))(v7, v4);
    *(v9 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_sessionToken) = v10;
  }

  return result;
}

uint64_t sub_20B78EE10()
{
  v0 = type metadata accessor for SessionDistanceMetricPresenter.State(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v8 = 0.0;
    if (!Strong)
    {
LABEL_12:
      sub_20B78F188(v8);
    }

    v9 = OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_state;
    v10 = Strong;
    swift_beginAccess();
    sub_20B790FC0(v10 + v9, v2);

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v12 = sub_20C134514();
        (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
LABEL_9:
        sub_20C134514();
        v14 = *(v12 - 8);
        if ((*(v14 + 48))(v5, 1, v12) == 1)
        {
          sub_20B520158(v5, &unk_27C765050);
        }

        else
        {
          sub_20C134504();
          v8 = v15;
          (*(v14 + 8))(v5, v12);
        }

        goto LABEL_12;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767280);
      swift_unknownObjectRelease();
      v12 = sub_20C134514();
      v13 = *(v12 - 8);
      (*(v13 + 32))(v5, v2, v12);
    }

    else
    {
      v12 = sub_20C134514();
      v13 = *(v12 - 8);
      (*(v13 + 32))(v5, v2, v12);
    }

    (*(v13 + 56))(v5, 0, 1, v12);
    goto LABEL_9;
  }

  return result;
}

void sub_20B78F188(double a1)
{
  v3 = sub_20C1371C4();
  if (v3 == 13)
  {
    v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_metricBuilder + 8);
    ObjectType = swift_getObjectType();
    v18 = sub_20BEC6F84(ObjectType, v16, a1);
    if (qword_27C760930 != -1)
    {
      swift_once();
    }

    v19 = qword_27C76A558;
    [qword_27C76A558 setMaximumFractionDigits_];
    v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v21 = [v19 stringFromNumber_];

    if (v21)
    {
      v12 = sub_20C13C954();
      v14 = v22;

      v15 = sub_20BEC707C(ObjectType, v16);
LABEL_18:
      v23 = sub_20BB0A218(v15);
      v25 = v24;
      v26 = v1 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_display;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v26 + 8);
        v28 = swift_getObjectType();
        (*(v27 + 8))(v12, v14, v23, v25, v28, v27);
        swift_unknownObjectRelease();
      }

      v29 = v1 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_externalOverlayDisplay;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v29 + 8);
        v31 = swift_getObjectType();
        (*(v30 + 8))(v12, v14, v23, v25, v31, v30);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else if (v3 == 52 || v3 == 37)
  {
    v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_metricBuilder + 8);
    v5 = swift_getObjectType();
    v6 = sub_20BEC6D50(v5, v4, 0.1);
    if (v6 <= a1)
    {
      v7 = sub_20BEC6E1C(v5, v4, a1);
      v8 = 2;
    }

    else
    {
      v7 = sub_20BEC6E04(v5, v4, a1);
      v8 = 0;
    }

    if (qword_27C760938 != -1)
    {
      swift_once();
    }

    v9 = qword_27C76A560;
    [qword_27C76A560 setMinimumFractionDigits_];
    [v9 setMaximumFractionDigits_];
    v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v11 = [v9 stringFromNumber_];

    if (v11)
    {
      v12 = sub_20C13C954();
      v14 = v13;

      if (v6 <= a1)
      {
        v15 = sub_20BEC6D38(v5, v4);
      }

      else
      {
        v15 = sub_20BEC6E34(v5, v4);
      }

      goto LABEL_18;
    }
  }
}

uint64_t sub_20B78F560(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C134514();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = type metadata accessor for SessionDistanceMetricPresenter.State(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C134504();
  sub_20B78F188(v10);
  v11 = sub_20C1344E4();
  v31 = v11;
  v32 = BYTE4(v11) & 1;
  v33 = 0;
  sub_20B791024();
  sub_20B791078();
  if (sub_20C133C04())
  {
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767280) + 48);
    v23 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = *(v5 + 16);
    v12(v9, a1, v4);
    v26 = v1;
    v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_timerProvider + 32);
    v28 = *(v1 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_timerProvider + 24);
    v29 = v13;
    v27 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_timerProvider), v28);
    sub_20C13A7F4();
    sub_20B5E2E18();
    v24 = sub_20C13D374();
    v14 = swift_allocObject();
    v25 = v7;
    v15 = v14;
    swift_weakInit();
    v16 = v23;
    v12(v23, a1, v4);
    v17 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    (*(v5 + 32))(v18 + v17, v16, v4);

    v19 = v24;
    v20 = sub_20C13AE24();

    *&v9[v30] = v20;
    swift_storeEnumTagMultiPayload();
    v21 = OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_state;
    v2 = v26;
  }

  else
  {
    (*(v5 + 16))(v9, a1, v4);
    swift_storeEnumTagMultiPayload();
    v21 = OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_state;
  }

  swift_beginAccess();
  sub_20B7910CC(v9, v2 + v21);
  return swift_endAccess();
}

uint64_t sub_20B78F8A4(uint64_t a1, uint64_t a2)
{
  v112 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v118 = v103 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070);
  MEMORY[0x28223BE20](v4 - 8);
  v117 = v103 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v116 = v103 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v8 - 8);
  v115 = v103 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  MEMORY[0x28223BE20](v10 - 8);
  v114 = v103 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  MEMORY[0x28223BE20](v12 - 8);
  v123 = v103 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  MEMORY[0x28223BE20](v14 - 8);
  v113 = v103 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0);
  MEMORY[0x28223BE20](v16 - 8);
  v122 = v103 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v18 - 8);
  v121 = v103 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0);
  MEMORY[0x28223BE20](v20 - 8);
  v120 = v103 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00);
  MEMORY[0x28223BE20](v22 - 8);
  v129 = v103 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0);
  MEMORY[0x28223BE20](v24 - 8);
  v119 = v103 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v26 - 8);
  v128 = v103 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
  MEMORY[0x28223BE20](v28 - 8);
  v127 = v103 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20);
  MEMORY[0x28223BE20](v30 - 8);
  v126 = v103 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  MEMORY[0x28223BE20](v32 - 8);
  v125 = v103 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v34 - 8);
  v124 = v103 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = v103 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = v103 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = v103 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = v103 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  MEMORY[0x28223BE20](v48 - 8);
  v50 = v103 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = v103 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0);
  MEMORY[0x28223BE20](v54 - 8);
  v56 = v103 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v57 - 8);
  v59 = v103 - v58;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B51CC64(result + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_sessionClient, &v131);

    sub_20B52E424(&v131, &v132);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v62 = *(Strong + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_sessionToken);

      if (v62)
      {
        v103[0] = v133;
        v103[1] = v134;
        v103[2] = __swift_project_boxed_opaque_existential_1(&v132, v133);
        v63 = sub_20C133D84();
        v64 = *(*(v63 - 8) + 56);
        v111 = v59;
        v64(v59, 1, 1, v63);
        v65 = sub_20C135854();
        v66 = *(*(v65 - 8) + 56);
        v110 = v56;
        v66(v56, 1, 1, v65);
        v67 = sub_20C136194();
        v68 = *(*(v67 - 8) + 56);
        v109 = v53;
        v68(v53, 1, 1, v67);
        v69 = sub_20C133DD4();
        v70 = *(*(v69 - 8) + 56);
        v108 = v50;
        v70(v50, 1, 1, v69);
        v71 = sub_20C135274();
        v72 = *(*(v71 - 8) + 56);
        v107 = v47;
        v72(v47, 1, 1, v71);
        v130 = 1;
        v106 = v44;
        sub_20C1344D4();
        v73 = sub_20C134514();
        (*(*(v73 - 8) + 56))(v44, 0, 1, v73);
        v74 = sub_20C133B04();
        v75 = *(*(v74 - 8) + 56);
        v104 = v41;
        v75(v41, 1, 1, v74);
        v76 = sub_20C134C04();
        v77 = *(*(v76 - 8) + 56);
        v105 = v38;
        v77(v38, 1, 1, v76);
        v78 = sub_20C1368F4();
        (*(*(v78 - 8) + 56))(v124, 1, 1, v78);
        v79 = sub_20C134914();
        (*(*(v79 - 8) + 56))(v125, 1, 1, v79);
        v80 = sub_20C133374();
        (*(*(v80 - 8) + 56))(v126, 1, 1, v80);
        v81 = sub_20C135B74();
        (*(*(v81 - 8) + 56))(v127, 1, 1, v81);
        v82 = sub_20C134CD4();
        (*(*(v82 - 8) + 56))(v128, 1, 1, v82);
        v83 = sub_20C136EB4();
        (*(*(v83 - 8) + 56))(v119, 1, 1, v83);
        v84 = sub_20C133494();
        (*(*(v84 - 8) + 56))(v129, 1, 1, v84);
        v85 = sub_20C134594();
        (*(*(v85 - 8) + 56))(v120, 1, 1, v85);
        v86 = sub_20C138184();
        (*(*(v86 - 8) + 56))(v121, 1, 1, v86);
        v87 = sub_20C1363D4();
        (*(*(v87 - 8) + 56))();
        v88 = sub_20C1337A4();
        v89 = v113;
        (*(*(v88 - 8) + 56))(v113, 1, 1, v88);
        v90 = sub_20C1337D4();
        (*(*(v90 - 8) + 56))();
        v91 = sub_20C134A94();
        v92 = v114;
        (*(*(v91 - 8) + 56))(v114, 1, 1, v91);
        v93 = sub_20C135364();
        v94 = v115;
        (*(*(v93 - 8) + 56))(v115, 1, 1, v93);
        v95 = sub_20C136484();
        v96 = v116;
        (*(*(v95 - 8) + 56))(v116, 1, 1, v95);
        v97 = sub_20C136784();
        v98 = v117;
        (*(*(v97 - 8) + 56))(v117, 1, 1, v97);
        v99 = sub_20C137FE4();
        v100 = v118;
        (*(*(v99 - 8) + 56))(v118, 1, 1, v99);
        v101 = v121;
        v102 = v119;
        sub_20C13A174();

        sub_20B520158(v100, &unk_27C768AC0);
        sub_20B520158(v98, &unk_27C765070);
        sub_20B520158(v96, &unk_27C765CB0);
        sub_20B520158(v94, &unk_27C765080);
        sub_20B520158(v92, &unk_27C768AD0);
        sub_20B520158(v123, &unk_27C765090);
        sub_20B520158(v89, &unk_27C768AE0);
        sub_20B520158(v122, &unk_27C7650A0);
        sub_20B520158(v101, &unk_27C768AF0);
        sub_20B520158(v120, &unk_27C7650B0);
        sub_20B520158(v129, &unk_27C768B00);
        sub_20B520158(v102, &unk_27C7650C0);
        sub_20B520158(v128, &unk_27C768B10);
        sub_20B520158(v127, &unk_27C7650D0);
        sub_20B520158(v126, &unk_27C768B20);
        sub_20B520158(v125, &unk_27C7650E0);
        sub_20B520158(v124, &unk_27C767260);
        sub_20B520158(v105, &unk_27C7650F0);
        sub_20B520158(v104, &qword_27C768B30);
        sub_20B520158(v106, &unk_27C765050);
        sub_20B520158(v107, &unk_27C765100);
        sub_20B520158(v108, &unk_27C7687F0);
        sub_20B520158(v109, &unk_27C765110);
        sub_20B520158(v110, &unk_27C76BBF0);
        sub_20B520158(v111, &unk_27C765120);
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(&v132);
  }

  return result;
}

uint64_t sub_20B790BF0()
{
  v1 = OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_activityTypeBehavior;
  v2 = sub_20C137254();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_sessionClient);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_timerProvider);

  sub_20B791194(v0 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_state);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_externalOverlayDisplay);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_display);
  return v0;
}

uint64_t sub_20B790CE0()
{
  sub_20B790BF0();

  return swift_deallocClassInstance();
}

uint64_t sub_20B790D60()
{
  result = sub_20C137254();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SessionDistanceMetricPresenter.State(319);
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_20B790E84()
{
  sub_20B790EF8();
  if (v0 <= 0x3F)
  {
    sub_20B790F40();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20B790EF8()
{
  if (!qword_27C765030)
  {
    v0 = sub_20C134514();
    if (!v1)
    {
      atomic_store(v0, &qword_27C765030);
    }
  }
}

void sub_20B790F40()
{
  if (!qword_27C765038)
  {
    sub_20C134514();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C765040);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C765038);
    }
  }
}

uint64_t sub_20B790FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionDistanceMetricPresenter.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20B791024()
{
  result = qword_27C765060;
  if (!qword_27C765060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765060);
  }

  return result;
}

unint64_t sub_20B791078()
{
  result = qword_27C7672D0;
  if (!qword_27C7672D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7672D0);
  }

  return result;
}

uint64_t sub_20B7910CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionDistanceMetricPresenter.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B791130()
{
  v1 = *(sub_20C134514() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_20B78F8A4(v2, v3);
}

uint64_t sub_20B791194(uint64_t a1)
{
  v2 = type metadata accessor for SessionDistanceMetricPresenter.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B7911F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765130);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20B791268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765130);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for MetadataAction()
{
  result = qword_27C765138;
  if (!qword_27C765138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B79133C(uint64_t a1)
{
  sub_20B7913F4();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for MetadataEntry();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_20B7913F4()
{
  if (!qword_27C765148)
  {
    v0 = type metadata accessor for MetadataEntry();
    if (!v1)
    {
      atomic_store(v0, &qword_27C765148);
    }
  }
}

uint64_t sub_20B79143C()
{
  v1 = type metadata accessor for MetadataEntry();
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetadataAction();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B7917C8(v0, v6);
  sub_20B60E3E0(v6, v3);
  MEMORY[0x20F2F58E0](0);
  sub_20C13D604();
  v7 = *(v3 + 1);
  if (v7 >> 62)
  {
    if (v7 >> 62 != 1)
    {
      if (v7 == 0x8000000000000000 && *(v3 + 1) == 0)
      {
        v10 = 0;
      }

      else
      {
        v10 = 3;
      }

      MEMORY[0x20F2F58E0](v10);
      if (*(v3 + 5))
      {
        goto LABEL_6;
      }

LABEL_14:
      sub_20C13E184();
      goto LABEL_15;
    }

    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  MEMORY[0x20F2F58E0](v8);
  MEMORY[0x20F2F58E0](v7 & 1);
  sub_20C13CA64();
  if (!*(v3 + 5))
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_20C13E184();
  sub_20C13CA64();
LABEL_15:
  sub_20C132EE4();
  sub_20B79182C(&qword_27C7675A0, MEMORY[0x277CC95F0]);
  sub_20C13C7C4();
  return sub_20B791874(v3);
}

uint64_t sub_20B791644()
{
  sub_20C13E164();
  sub_20B79143C();
  return sub_20C13E1B4();
}

uint64_t sub_20B791688()
{
  sub_20C13E164();
  sub_20B79143C();
  return sub_20C13E1B4();
}

uint64_t sub_20B7916C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765158);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v10 - v5);
  v8 = *(v7 + 56);
  sub_20B7917C8(a1, &v10 - v5);
  sub_20B7917C8(a2, v6 + v8);
  LOBYTE(a2) = sub_20BA83114(v6, (v6 + v8));
  sub_20B791874(v6 + v8);
  sub_20B791874(v6);
  return a2 & 1;
}

uint64_t sub_20B7917C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetadataAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B79182C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B791874(uint64_t a1)
{
  v2 = type metadata accessor for MetadataEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B7918D0()
{
  v1 = sub_20C1321D4();
  v134 = *(v1 - 8);
  v135 = v1;
  MEMORY[0x28223BE20](v1);
  v121 = &v100 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v122 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v123 = &v100 - v5;
  MEMORY[0x28223BE20](v6);
  v129 = &v100 - v7;
  v120 = sub_20C13A814();
  v119 = *(v120 - 1);
  MEMORY[0x28223BE20](v120);
  v118 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_20C132144();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_20C132154();
  *&v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v114 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_20C132364();
  v111 = *(v128 - 1);
  MEMORY[0x28223BE20](v128);
  v108 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v107 = &v100 - v12;
  v136 = sub_20C132EE4();
  v138 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v131 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v100 - v16;
  v127 = sub_20C132254();
  v18 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_containerBuilder;
  if (qword_27C760748 != -1)
  {
    swift_once();
  }

  v22 = (v0 + v21);
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FC0) + 48);
  v137 = v0;
  v24 = *MEMORY[0x277CE9C98];
  v25 = sub_20C132234();
  (*(*(v25 - 8) + 104))(v20, v24, v25);
  *&v20[v23] = 0;
  v26 = *MEMORY[0x277CE9CB8];
  v130 = v18;
  v27 = *(v18 + 104);
  v105 = v18 + 104;
  v106 = v27;
  v28 = v20;
  v126 = v20;
  v29 = v127;
  v27(v28, v26, v127);
  v22[1] = 2;
  sub_20C132ED4();
  v101 = v17;
  sub_20C132104();
  v30 = v138 + 8;
  v133 = *(v138 + 8);
  v31 = v136;
  v133(v14, v136);
  v32 = type metadata accessor for ContainerNodeBuilder();
  v132 = v14;
  v33 = v32;
  sub_20C131F24();
  v34 = *(v131 + 8);
  v131 += 8;
  v104 = v34;
  v34(v17, v15);
  *v22 = 1;
  v35 = sub_20C131F44();
  v36 = &v22[v33[7]];
  *v36 = v35;
  v36[8] = v37;
  v38 = sub_20C131FD4();
  v39 = &v22[v33[8]];
  *v39 = v38;
  v39[8] = v40;
  v41 = sub_20C131FE4();
  v42 = &v22[v33[9]];
  *v42 = v41;
  *(v42 + 1) = v43;
  v42[20] = v44;
  *(v42 + 4) = v45;
  v42[21] = v46;
  v47 = sub_20C132384();
  v48 = &v22[v33[10]];
  *v48 = v47 & 0xFFFFFFFFFFLL;
  v48[12] = v49;
  *(v48 + 2) = v50;
  v48[13] = 0;
  v51 = sub_20C132004();
  v53 = v52;
  v138 = v30;
  v55 = v54;
  v56 = v29;
  v57 = v31;
  LOBYTE(v31) = v58;
  v59 = *(v130 + 8);
  v130 += 8;
  v103 = v59;
  v59(v126, v56);
  v60 = &v22[v33[11]];
  *v60 = v51;
  *(v60 + 1) = v53;
  *(v60 + 2) = v55;
  v60[24] = v31;
  sub_20BA6BBC8(3);
  v61 = v108;
  sub_20C132374();
  sub_20C1323D4();
  v62 = v132;
  sub_20C132ED4();
  v63 = v107;
  sub_20C1320B4();
  v64 = v62;
  v65 = v57;
  v66 = v133;
  v133(v62, v65);
  v102 = v15;
  v111 = *(v111 + 8);
  (v111)(v61, v128);
  sub_20C1323A4();
  v67 = v110;
  sub_20C131FF4();
  v109 = *(v109 + 8);
  (v109)(v63, v67);
  v100 = OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_walkingValueNode;
  sub_20BA6BBC8(3);
  sub_20C132374();
  sub_20C1323D4();
  sub_20C132ED4();
  sub_20C1320B4();
  v68 = v136;
  v66(v62, v136);
  (v111)(v61, v128);
  sub_20C1323A4();
  sub_20C131FF4();
  (v109)(v63, v67);
  sub_20C132ED4();
  v69 = v126;
  v70 = v127;
  v106(v126, *MEMORY[0x277CE9CC0], v127);
  v71 = v101;
  sub_20C132104();
  v103(v69, v70);
  v66(v64, v68);
  sub_20C1323A4();
  v72 = v102;
  sub_20C131FF4();
  v104(v71, v72);
  v127 = OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_runningImageAsset;
  v73 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  LODWORD(v130) = *MEMORY[0x277CE9BD8];
  v128 = *(v112 + 104);
  v74 = v114;
  v75 = v113;
  v128(v114);
  LODWORD(v126) = *MEMORY[0x277CE9BC8];
  v116 = *(v116 + 104);
  v76 = v115;
  v77 = v117;
  (v116)(v115);
  v78 = swift_allocObject();
  *(v78 + 16) = 0x722E657275676966;
  *(v78 + 24) = 0xEA00000000006E75;
  *(v78 + 32) = v73;
  v112 = xmmword_20C1582E0;
  *(v78 + 40) = xmmword_20C1582E0;
  *(v78 + 56) = 0;
  *(v78 + 64) = 0xD000000000000012;
  *(v78 + 72) = 0x800000020C198A50;
  v79 = v137;
  sub_20C132124();
  v131 = OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_walkingImageAsset;
  v80 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  (v128)(v74, v130, v75);
  (v116)(v76, v126, v77);
  v81 = swift_allocObject();
  *(v81 + 16) = 0x772E657275676966;
  *(v81 + 24) = 0xEB000000006B6C61;
  *(v81 + 32) = v80;
  *(v81 + 40) = v112;
  *(v81 + 56) = 0;
  *(v81 + 64) = 0xD000000000000013;
  *(v81 + 72) = 0x800000020C198A70;
  sub_20C132124();
  (*(v119 + 104))(v118, *MEMORY[0x277D4F080], v120);
  LOBYTE(v139) = 0;
  sub_20C13A384();
  v119 = sub_20C132164();
  v82 = *(v119 - 8);
  v128 = *(v82 + 16);
  v130 = v82 + 16;
  v83 = v121;
  (v128)(v121, v79 + v127, v119);
  LODWORD(v127) = *MEMORY[0x277CE9C40];
  v84 = v134;
  v126 = *(v134 + 104);
  v85 = v135;
  (v126)(v83);
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  sub_20C1323E4();
  v86 = v132;
  sub_20C132ED4();
  v87 = v122;
  sub_20C1320E4();
  v133(v86, v136);
  v88 = *(v84 + 8);
  v134 = v84 + 8;
  v120 = v88;
  v88(v83, v85);
  sub_20C1323A4();
  v89 = v123;
  v90 = v125;
  sub_20C131FF4();
  v91 = v124;
  v92 = *(v124 + 8);
  v92(v87, v90);
  v118 = v92;
  sub_20C132504();
  v93 = v129;
  sub_20C131F64();
  v92(v89, v90);
  v124 = *(v91 + 32);
  v94 = v137;
  (v124)(v137 + OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_runningImageNode, v93, v90);
  (v128)(v83, v94 + v131, v119);
  (v126)(v83, v127, v135);
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  sub_20C1323E4();
  v95 = v132;
  sub_20C132ED4();
  sub_20C1320E4();
  v133(v95, v136);
  v120(v83, v135);
  sub_20C1323A4();
  sub_20C131FF4();
  v96 = v118;
  (v118)(v87, v90);
  sub_20C132504();
  v97 = v129;
  sub_20C131F64();
  (v96)(v89, v90);
  v98 = v137;
  (v124)(v137 + OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_walkingImageNode, v97, v90);
  return v98;
}

uint64_t sub_20B792AC0()
{
  sub_20B583E6C(v0 + 16);
  sub_20B593250(v0 + OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_containerBuilder);
  v1 = OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_runningValueNode;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_walkingValueNode, v2);
  v4 = OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_spacingNode;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_runningImageAsset;
  v7 = sub_20C132164();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v8(v0 + OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_walkingImageAsset, v7);
  v9 = OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_runningImageNode;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v9, v10);
  v11(v0 + OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_walkingImageNode, v10);
  v12 = OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder__externalOverlayAttributedStringsEnabled;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InclineNodeBuilder()
{
  result = qword_27C765168;
  if (!qword_27C765168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B792D68()
{
  type metadata accessor for ContainerNodeBuilder();
  if (v0 <= 0x3F)
  {
    sub_20B592C74();
    if (v1 <= 0x3F)
    {
      sub_20B792F2C();
      if (v2 <= 0x3F)
      {
        sub_20C132164();
        if (v3 <= 0x3F)
        {
          sub_20B592D08();
          if (v4 <= 0x3F)
          {
            sub_20B52432C();
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

void sub_20B792F2C()
{
  if (!qword_27C765178)
  {
    sub_20C132274();
    sub_20B792FC0(&qword_27C765180, MEMORY[0x277CE9D00]);
    v0 = sub_20C132114();
    if (!v1)
    {
      atomic_store(v0, &qword_27C765178);
    }
  }
}

uint64_t sub_20B792FC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B793008@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = type metadata accessor for ContainerNodeBuilder();
  MEMORY[0x28223BE20](v2 - 8);
  v38 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v5 = *(v4 - 8);
  v40 = v4;
  v41 = v5;
  MEMORY[0x28223BE20](v4);
  v37 = &v28 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F88);
  v7 = sub_20C132264();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v35 = 4 * v9;
  v11 = swift_allocObject();
  v36 = v11;
  *(v11 + 16) = xmmword_20C1582F0;
  v12 = v11 + v10;
  v13 = OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_runningImageNode;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  v14 = *(v31 - 8);
  v33 = *(v14 + 16);
  v34 = v14 + 16;
  v33(v12, v1 + v13, v31);
  v32 = *MEMORY[0x277CE9CE0];
  v15 = *(v8 + 104);
  v15(v12);
  v16 = OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_runningValueNode;
  swift_beginAccess();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  v18 = *(v17 - 8);
  v29 = *(v18 + 16);
  v30 = v18 + 16;
  v29(v12 + v9, v1 + v16, v17);
  v19 = *MEMORY[0x277CE9CD8];
  (v15)(v12 + v9, v19, v7);
  (*(v41 + 16))(v12 + 2 * v9, v1 + OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_spacingNode, v40);
  (v15)(v12 + 2 * v9, *MEMORY[0x277CE9CE8], v7);
  v9 *= 3;
  v33(v12 + v9, v1 + OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_walkingImageNode, v31);
  (v15)(v12 + v9, v32, v7);
  v20 = OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_walkingValueNode;
  swift_beginAccess();
  v21 = v35;
  v29(v12 + v35, v1 + v20, v17);
  (v15)(v12 + v21, v19, v7);
  v22 = OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_containerBuilder;
  swift_beginAccess();
  v23 = v1 + v22;
  v24 = v38;
  sub_20B6B5ADC(v23, v38);
  v25 = v37;
  sub_20B7E27F8(v37);

  sub_20B593250(v24);
  sub_20C1323A4();
  v26 = v40;
  sub_20C131FF4();
  return (*(v41 + 8))(v25, v26);
}

uint64_t sub_20B79344C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FA0);
  v1 = sub_20C132164();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20C14F320;
  v6 = v5 + v4;
  v7 = *(v2 + 16);
  v7(v6, v0 + OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_runningImageAsset, v1);
  v7(v6 + v3, v0 + OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder_walkingImageAsset, v1);
  return v5;
}

uint64_t sub_20B793564(void *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v23[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v23[-v16];
  (*(v14 + 16))(&v23[-v16], v4 + OBJC_IVAR____TtC9SeymourUI18InclineNodeBuilder__externalOverlayAttributedStringsEnabled, v13, v15);
  sub_20C13A344();
  (*(v14 + 8))(v17, v13);
  v18 = *a2;
  if (v23[24] == 1)
  {
    swift_beginAccess();
    (*(v7 + 16))(v9, v4 + v18, v6);
    sub_20C1320A4();
  }

  else
  {
    swift_beginAccess();
    (*(v7 + 16))(v9, v4 + v18, v6);
    v19 = [a1 string];
    sub_20C13C954();

    sub_20C132074();
  }

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  (*(v7 + 40))(v4 + v18, v12, v6);
  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    (*(v21 + 8))(ObjectType, v21);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_20B793970(char a1, void *a2, uint64_t a3)
{
  v5 = *&v3[*a2];
  *(*(v5 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate + 8) = a3;
  swift_unknownObjectWeakAssign();
  [*(*(v5 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v3 view];
  v7 = v6;
  if (a1)
  {
    if (!v6)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v8 = *(*(v5 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    [v7 insertSubview:v8 atIndex:0];
  }

  else
  {
    if (!v6)
    {
LABEL_18:
      __break(1u);
      return;
    }

    v8 = *(*(v5 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    [v7 addSubview_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20C14FE90;
  v10 = [*(*(v5 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) leadingAnchor];
  v11 = [v3 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = v11;
  v13 = [v11 leadingAnchor];

  v14 = [v10 constraintEqualToAnchor_];
  *(v9 + 32) = v14;
  v15 = [*(*(v5 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) trailingAnchor];
  v16 = [v3 view];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  v18 = [v16 trailingAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v9 + 40) = v19;
  v20 = [*(*(v5 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) topAnchor];
  v21 = [v3 view];
  if (!v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v21;
  v23 = [v21 topAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  *(v9 + 48) = v24;
  v25 = [*(*(v5 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) bottomAnchor];
  v26 = [v3 view];
  if (!v26)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v26;
  v28 = objc_opt_self();
  v29 = [v27 bottomAnchor];

  v30 = [v25 constraintEqualToAnchor_];
  *(v9 + 56) = v30;
  sub_20B51C88C(0, &qword_281100500);
  v31 = sub_20C13CC54();

  [v28 activateConstraints_];
}

void sub_20B793D60(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider];
  *(*(v3 + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate + 8) = &off_2822E78C0;
  swift_unknownObjectWeakAssign();
  [*(*(v3 + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v1 view];
  v5 = v4;
  if (a1)
  {
    if (!v4)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v6 = *(*(v3 + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    [v5 insertSubview:v6 atIndex:0];
  }

  else
  {
    if (!v4)
    {
LABEL_18:
      __break(1u);
      return;
    }

    v6 = *(*(v3 + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    [v5 addSubview_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20C14FE90;
  v8 = [*(*(v3 + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) leadingAnchor];
  v9 = [v1 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  v11 = [v9 leadingAnchor];

  v12 = [v8 constraintEqualToAnchor_];
  *(v7 + 32) = v12;
  v13 = [*(*(v3 + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) trailingAnchor];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [v14 trailingAnchor];

  v17 = [v13 constraintEqualToAnchor_];
  *(v7 + 40) = v17;
  v18 = [*(*(v3 + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) topAnchor];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v19;
  v21 = [v19 topAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v7 + 48) = v22;
  v23 = [*(*(v3 + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) bottomAnchor];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v25 = v24;
  v26 = objc_opt_self();
  v27 = [v25 bottomAnchor];

  v28 = [v23 constraintEqualToAnchor_];
  *(v7 + 56) = v28;
  sub_20B51C88C(0, &qword_281100500);
  v29 = sub_20C13CC54();

  [v26 activateConstraints_];
}

void sub_20B794160(char a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *&v4[*a2];
  v7 = *a3;
  *(*(v6 + *a3) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate + 8) = a4;
  swift_unknownObjectWeakAssign();
  [*(*(v6 + v7) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [v4 view];
  v9 = v8;
  if (a1)
  {
    if (!v8)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v10 = *(*(v6 + v7) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    [v9 insertSubview:v10 atIndex:0];
  }

  else
  {
    if (!v8)
    {
LABEL_18:
      __break(1u);
      return;
    }

    v10 = *(*(v6 + v7) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    [v9 addSubview_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20C14FE90;
  v12 = [*(*(v6 + v7) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) leadingAnchor];
  v13 = [v4 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  v15 = [v13 leadingAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v11 + 32) = v16;
  v17 = [*(*(v6 + v7) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) trailingAnchor];
  v18 = [v4 view];
  if (!v18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = v18;
  v20 = [v18 trailingAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v11 + 40) = v21;
  v22 = [*(*(v6 + v7) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) topAnchor];
  v23 = [v4 view];
  if (!v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = v23;
  v25 = [v23 topAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  *(v11 + 48) = v26;
  v27 = [*(*(v6 + v7) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) bottomAnchor];
  v28 = [v4 view];
  if (!v28)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = v28;
  v30 = objc_opt_self();
  v31 = [v29 bottomAnchor];

  v32 = [v27 constraintEqualToAnchor_];
  *(v11 + 56) = v32;
  sub_20B51C88C(0, &qword_281100500);
  v33 = sub_20C13CC54();

  [v30 activateConstraints_];
}

void sub_20B79454C(char a1, void *a2, uint64_t a3)
{
  v5 = *&v3[*a2];
  *(*(v5 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate + 8) = a3;
  swift_unknownObjectWeakAssign();
  [*(*(v5 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v3 view];
  v7 = v6;
  if (a1)
  {
    if (!v6)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v8 = *(*(v5 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    [v7 insertSubview:v8 atIndex:0];
  }

  else
  {
    if (!v6)
    {
LABEL_18:
      __break(1u);
      return;
    }

    v8 = *(*(v5 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    [v7 addSubview_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20C14FE90;
  v10 = [*(*(v5 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) leadingAnchor];
  v11 = [v3 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = v11;
  v13 = [v11 leadingAnchor];

  v14 = [v10 constraintEqualToAnchor_];
  *(v9 + 32) = v14;
  v15 = [*(*(v5 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) trailingAnchor];
  v16 = [v3 view];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  v18 = [v16 trailingAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v9 + 40) = v19;
  v20 = [*(*(v5 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) topAnchor];
  v21 = [v3 view];
  if (!v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v21;
  v23 = [v21 topAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  *(v9 + 48) = v24;
  v25 = [*(*(v5 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) bottomAnchor];
  v26 = [v3 view];
  if (!v26)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v26;
  v28 = objc_opt_self();
  v29 = [v27 bottomAnchor];

  v30 = [v25 constraintEqualToAnchor_];
  *(v9 + 56) = v30;
  sub_20B51C88C(0, &qword_281100500);
  v31 = sub_20C13CC54();

  [v28 activateConstraints_];
}

void sub_20B794934(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dataProvider];
  *(*(v3 + 256) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate + 8) = &off_2822BD390;
  swift_unknownObjectWeakAssign();
  [*(*(v3 + 256) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v1 view];
  v5 = v4;
  if (a1)
  {
    if (!v4)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v6 = *(*(v3 + 256) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    [v5 insertSubview:v6 atIndex:0];
  }

  else
  {
    if (!v4)
    {
LABEL_18:
      __break(1u);
      return;
    }

    v6 = *(*(v3 + 256) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    [v5 addSubview_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20C14FE90;
  v8 = [*(*(v3 + 256) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) leadingAnchor];
  v9 = [v1 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  v11 = [v9 leadingAnchor];

  v12 = [v8 constraintEqualToAnchor_];
  *(v7 + 32) = v12;
  v13 = [*(*(v3 + 256) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) trailingAnchor];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [v14 trailingAnchor];

  v17 = [v13 constraintEqualToAnchor_];
  *(v7 + 40) = v17;
  v18 = [*(*(v3 + 256) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) topAnchor];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v19;
  v21 = [v19 topAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v7 + 48) = v22;
  v23 = [*(*(v3 + 256) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) bottomAnchor];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v25 = v24;
  v26 = objc_opt_self();
  v27 = [v25 bottomAnchor];

  v28 = [v23 constraintEqualToAnchor_];
  *(v7 + 56) = v28;
  sub_20B51C88C(0, &qword_281100500);
  v29 = sub_20C13CC54();

  [v26 activateConstraints_];
}

void sub_20B794D78(char a1, void *a2, uint64_t a3)
{
  v5 = *&v3[*a2];
  *(*(v5 + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate + 8) = a3;
  swift_unknownObjectWeakAssign();
  [*(*(v5 + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v3 view];
  v7 = v6;
  if (a1)
  {
    if (!v6)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v8 = *(*(v5 + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    [v7 insertSubview:v8 atIndex:0];
  }

  else
  {
    if (!v6)
    {
LABEL_18:
      __break(1u);
      return;
    }

    v8 = *(*(v5 + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    [v7 addSubview_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20C14FE90;
  v10 = [*(*(v5 + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) leadingAnchor];
  v11 = [v3 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = v11;
  v13 = [v11 leadingAnchor];

  v14 = [v10 constraintEqualToAnchor_];
  *(v9 + 32) = v14;
  v15 = [*(*(v5 + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) trailingAnchor];
  v16 = [v3 view];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  v18 = [v16 trailingAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v9 + 40) = v19;
  v20 = [*(*(v5 + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) topAnchor];
  v21 = [v3 view];
  if (!v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v21;
  v23 = [v21 topAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  *(v9 + 48) = v24;
  v25 = [*(*(v5 + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) bottomAnchor];
  v26 = [v3 view];
  if (!v26)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v26;
  v28 = objc_opt_self();
  v29 = [v27 bottomAnchor];

  v30 = [v25 constraintEqualToAnchor_];
  *(v9 + 56) = v30;
  sub_20B51C88C(0, &qword_281100500);
  v31 = sub_20C13CC54();

  [v28 activateConstraints_];
}

void sub_20B79514C(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_dataProvider];
  *(*(v3 + 56) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate + 8) = &off_2822A3288;
  swift_unknownObjectWeakAssign();
  [*(*(v3 + 56) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v1 view];
  v5 = v4;
  if (a1)
  {
    if (!v4)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v6 = *(*(v3 + 56) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    [v5 insertSubview:v6 atIndex:0];
  }

  else
  {
    if (!v4)
    {
LABEL_18:
      __break(1u);
      return;
    }

    v6 = *(*(v3 + 56) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    [v5 addSubview_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20C14FE90;
  v8 = [*(*(v3 + 56) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) leadingAnchor];
  v9 = [v1 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  v11 = [v9 leadingAnchor];

  v12 = [v8 constraintEqualToAnchor_];
  *(v7 + 32) = v12;
  v13 = [*(*(v3 + 56) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) trailingAnchor];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [v14 trailingAnchor];

  v17 = [v13 constraintEqualToAnchor_];
  *(v7 + 40) = v17;
  v18 = [*(*(v3 + 56) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) topAnchor];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v19;
  v21 = [v19 topAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v7 + 48) = v22;
  v23 = [*(*(v3 + 56) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) bottomAnchor];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v25 = v24;
  v26 = objc_opt_self();
  v27 = [v25 bottomAnchor];

  v28 = [v23 constraintEqualToAnchor_];
  *(v7 + 56) = v28;
  sub_20B51C88C(0, &qword_281100500);
  v29 = sub_20C13CC54();

  [v26 activateConstraints_];
}

void sub_20B795598(char a1, void *a2, uint64_t a3)
{
  v5 = *&v3[*a2];
  *(*(v5 + 40) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate + 8) = a3;
  swift_unknownObjectWeakAssign();
  [*(*(v5 + 40) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v3 view];
  v7 = v6;
  if (a1)
  {
    if (!v6)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v8 = *(*(v5 + 40) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    [v7 insertSubview:v8 atIndex:0];
  }

  else
  {
    if (!v6)
    {
LABEL_18:
      __break(1u);
      return;
    }

    v8 = *(*(v5 + 40) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    [v7 addSubview_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20C14FE90;
  v10 = [*(*(v5 + 40) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) leadingAnchor];
  v11 = [v3 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = v11;
  v13 = [v11 leadingAnchor];

  v14 = [v10 constraintEqualToAnchor_];
  *(v9 + 32) = v14;
  v15 = [*(*(v5 + 40) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) trailingAnchor];
  v16 = [v3 view];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  v18 = [v16 trailingAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v9 + 40) = v19;
  v20 = [*(*(v5 + 40) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) topAnchor];
  v21 = [v3 view];
  if (!v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v21;
  v23 = [v21 topAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  *(v9 + 48) = v24;
  v25 = [*(*(v5 + 40) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) bottomAnchor];
  v26 = [v3 view];
  if (!v26)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v26;
  v28 = objc_opt_self();
  v29 = [v27 bottomAnchor];

  v30 = [v25 constraintEqualToAnchor_];
  *(v9 + 56) = v30;
  sub_20B51C88C(0, &qword_281100500);
  v31 = sub_20C13CC54();

  [v28 activateConstraints_];
}

void sub_20B795A5C(char a1, void *a2, uint64_t a3)
{
  v5 = *&v3[*a2];
  *(*(v5 + 16) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate + 8) = a3;
  swift_unknownObjectWeakAssign();
  [*(*(v5 + 16) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v3 view];
  v7 = v6;
  if (a1)
  {
    if (!v6)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v8 = *(*(v5 + 16) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    [v7 insertSubview:v8 atIndex:0];
  }

  else
  {
    if (!v6)
    {
LABEL_18:
      __break(1u);
      return;
    }

    v8 = *(*(v5 + 16) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    [v7 addSubview_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20C14FE90;
  v10 = [*(*(v5 + 16) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) leadingAnchor];
  v11 = [v3 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = v11;
  v13 = [v11 leadingAnchor];

  v14 = [v10 constraintEqualToAnchor_];
  *(v9 + 32) = v14;
  v15 = [*(*(v5 + 16) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) trailingAnchor];
  v16 = [v3 view];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  v18 = [v16 trailingAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v9 + 40) = v19;
  v20 = [*(*(v5 + 16) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) topAnchor];
  v21 = [v3 view];
  if (!v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v21;
  v23 = [v21 topAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  *(v9 + 48) = v24;
  v25 = [*(*(v5 + 16) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) bottomAnchor];
  v26 = [v3 view];
  if (!v26)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v26;
  v28 = objc_opt_self();
  v29 = [v27 bottomAnchor];

  v30 = [v25 constraintEqualToAnchor_];
  *(v9 + 56) = v30;
  sub_20B51C88C(0, &qword_281100500);
  v31 = sub_20C13CC54();

  [v28 activateConstraints_];
}

void sub_20B795EE0()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider) + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
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

void *sub_20B795FEC(void *result)
{
  v2 = *(*(*(v1 + *result) + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
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

  return result;
}

void sub_20B7960C4()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dataProvider) + 256) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
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

void *sub_20B7961D8(void *result)
{
  v2 = *(*(*(v1 + *result) + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
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

  return result;
}

void *sub_20B7962D0(void *result)
{
  v2 = *(*(*(v1 + *result) + 40) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
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

  return result;
}

uint64_t sub_20B7963D0()
{
  v0 = sub_20C060B2C();
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves];

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

void *sub_20B7964AC(void *result)
{
  v2 = *(*(*(v1 + *result) + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
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

  return result;
}

void *sub_20B796590(void *result)
{
  v2 = *(*(*(v1 + *result) + 16) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
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

  return result;
}

void *sub_20B79667C(void *result, void *a2)
{
  v3 = *(*(*(v2 + *result) + *a2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = (v3 + 40);
    do
    {
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 48);
      swift_unknownObjectRetain();
      v8(ObjectType, v6);
      swift_unknownObjectRelease();
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_20B796758(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_20B796808(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v15 = *(*(a3 + 48) + (__clz(__rbit64(v9)) | (v13 << 6)));
      result = a1(&v15);
      if (v3)
      {

        return v14 & 1;
      }

      if (result)
      {
        break;
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v14 = 1;
    return v14 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        v14 = 0;
        return v14 & 1;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20B79692C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_20B7969D8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x20F2F5430](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_20C13DB34();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_20B796B00(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[1];
      v23[0] = *v7;
      v23[1] = v9;
      v11 = *v7;
      v10 = v7[1];
      v23[2] = v7[2];
      v24 = *(v7 + 24);
      v19 = v11;
      v20 = v10;
      v21 = v7[2];
      v22 = *(v7 + 24);
      sub_20B79AACC(v23, &v15);
      v12 = a1(&v19);
      if (v3)
      {
        break;
      }

      v4 = v12;
      v15 = v19;
      v16 = v20;
      v17 = v21;
      v18 = v22;
      sub_20B79AB28(&v15);
      v13 = v8-- == 0;
      v7 = (v7 + 56);
      if ((v4 | v13))
      {
        return v4 & 1;
      }
    }

    v15 = v19;
    v16 = v20;
    v17 = v21;
    v18 = v22;
    sub_20B79AB28(&v15);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_20B796CA4(uint64_t (*a1)(char *), char a2, uint64_t a3, uint64_t (*a4)(void))
{
  v25 = a1;
  v26 = a4(0);
  MEMORY[0x28223BE20](v26);
  v9 = &v21 - v8;
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v23 = v7 + 16;
  v24 = v7;
  v22 = (v7 + 8);
  v27 = a3;

  v16 = 0;
  while (v13)
  {
    v17 = v26;
LABEL_11:
    (*(v24 + 16))(v9, *(v27 + 48) + *(v24 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v17);
    v19 = v25(v9);
    if (v4)
    {
      (*v22)(v9, v17);

      return a2 & 1;
    }

    v20 = v19;
    v13 &= v13 - 1;
    result = (*v22)(v9, v17);
    if (v20)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v17 = v26;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t WorkoutPlanReviewViewController.resignActiveObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

char *WorkoutPlanReviewViewController.__allocating_init(dependencies:pageContext:pageNavigator:scheduleRequest:modalityReferences:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a4 + 24);
  v14 = *(a4 + 32);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v13);
  v16 = sub_20B79A828(a1, a2, a3, v15, a5, a6, v6, v13, v14);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v16;
}

char *WorkoutPlanReviewViewController.init(dependencies:pageContext:pageNavigator:scheduleRequest:modalityReferences:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a4 + 24);
  v14 = *(a4 + 32);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v13);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = sub_20B79A038(a1, a2, a3, v18, a5, a6, v6, v13, v14);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v20;
}

Swift::Void __swiftcall WorkoutPlanReviewViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = v19 - v5;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_viewDidLoad, v4);
  sub_20B793970(1, &OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_dataProvider, &off_2822A5A70);
  v7 = *(*(*&v1[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_dataProvider] + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v8 = *(v7 + 16);
  if (v8)
  {
    v19[1] = *&v1[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_dataProvider];

    v9 = (v7 + 40);
    do
    {
      v10 = *v9;
      v11 = swift_getObjectType();
      v12 = *(v10 + 48);
      swift_unknownObjectRetain();
      v12(v11, v10);
      swift_unknownObjectRelease();
      v9 += 2;
      --v8;
    }

    while (v8);
  }

  v13 = *&v1[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_actionPresenter];
  sub_20B8A3F24();
  sub_20C13CDC4();
  v14 = sub_20C13CDF4();
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  sub_20C13CDA4();
  swift_unknownObjectRetain();
  v15 = sub_20C13CD94();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v13;
  sub_20B6383D0(0, 0, v6, &unk_20C1583C8, v16);

  sub_20BD3F3CC();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20B7976EC(sub_20B79AA00, v18, &unk_2822A5E60, sub_20B79AF08, &OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_magicPocketView);

  sub_20B797B4C(&OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_dataProvider, &unk_2822A5E38, sub_20B79ADC4);
}

uint64_t sub_20B797518()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRetain();

    sub_20C13CDC4();
    v5 = sub_20C13CDF4();
    (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    sub_20C13CDA4();

    v7 = sub_20C13CD94();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;

    sub_20B6383D0(0, 0, v2, &unk_20C1586F0, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_20B7976EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = v5;
  sub_20B51C88C(0, &qword_27C7713A0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  v33 = a4;
  v12 = sub_20C13D624();
  v13 = *a5;
  [*(*&v8[*a5] + OBJC_IVAR____TtC9SeymourUI25PageActionMagicPocketView_actionButton) addAction:v12 forControlEvents:{0x2000, 0, 0, 0, v33, v11}];
  v14 = [v8 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v15 = v14;
  [v14 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20C150040;
  v17 = [*&v8[v13] leadingAnchor];
  v18 = [v8 view];
  if (!v18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v16 + 32) = v21;
  v22 = [*&v8[v13] trailingAnchor];
  v23 = [v8 view];
  if (!v23)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v24 = v23;
  v25 = [v23 trailingAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  *(v16 + 40) = v26;
  v27 = [*&v8[v13] bottomAnchor];
  v28 = [v8 view];
  if (!v28)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v29 = v28;
  v30 = objc_opt_self();
  v31 = [v29 bottomAnchor];

  v32 = [v27 constraintEqualToAnchor_];
  *(v16 + 48) = v32;
  sub_20B51C88C(0, &qword_281100500);
  v34 = sub_20C13CC54();

  [v30 activateConstraints_];
}

uint64_t sub_20B797A5C()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_dataProvider) + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_onLayoutUpdate];
  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_onLayoutUpdate];
  *v3 = sub_20B79ADA0;
  v3[1] = v2;
  v5 = v1;

  sub_20B583ECC(v4);
}

uint64_t sub_20B797B4C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*(v3 + *a1) + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = &v5[OBJC_IVAR____TtC9SeymourUI14CollectionView_onLayoutUpdate];
  v8 = *&v5[OBJC_IVAR____TtC9SeymourUI14CollectionView_onLayoutUpdate];
  *v7 = a3;
  *(v7 + 1) = v6;
  v9 = v5;

  sub_20B583ECC(v8);
}

Swift::Void __swiftcall WorkoutPlanReviewViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidAppear_, a1);
  type metadata accessor for WorkoutPlanReviewPageDataProvider(0);
  sub_20B79AE9C(&qword_27C7651A8, 255, type metadata accessor for WorkoutPlanReviewPageDataProvider);
  sub_20C138C54();
  sub_20B79AE9C(&qword_27C7651B0, v4, type metadata accessor for WorkoutPlanReviewViewController);
  sub_20B79AE9C(&qword_27C7651B8, v5, type metadata accessor for WorkoutPlanReviewViewController);
  sub_20C139364();
}

Swift::Void __swiftcall WorkoutPlanReviewViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_20C132E94();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_viewWillDisappear_, a1, v7);
  v18 = v2;
  sub_20C132E84();
  sub_20B79AE9C(&qword_27C7651B0, v10, type metadata accessor for WorkoutPlanReviewViewController);
  sub_20C139274();
  (*(v6 + 8))(v9, v5);
  v11 = [v2 navigationController];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 viewControllers];
    sub_20B51C88C(0, &qword_281100550);
    v14 = sub_20C13CC74();

    v18 = v2;
    MEMORY[0x28223BE20](v15);
    *(&v17 - 2) = &v18;
    LOBYTE(v13) = sub_20B7969D8(sub_20B79AA2C, (&v17 - 4), v14);

    if ((v13 & 1) == 0)
    {
      v18 = v2;
      sub_20B79AE9C(&qword_27C7651C0, v16, type metadata accessor for WorkoutPlanReviewViewController);
      sub_20C138C64();
    }
  }
}

Swift::Void __swiftcall WorkoutPlanReviewViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidDisappear_, a1);
  sub_20B79AE9C(&qword_27C7651B0, v3, type metadata accessor for WorkoutPlanReviewViewController);
  sub_20B79AE9C(&qword_27C7651B8, v4, type metadata accessor for WorkoutPlanReviewViewController);
  sub_20C139374();
}

Swift::Void __swiftcall WorkoutPlanReviewViewController.viewDidLayoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLayoutSubviews);
  v1 = *(*&v0[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_dataProvider] + 32);
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v3 = v1;
  [v2 bounds];
  sub_20B9D8614(v4, v5, v6, v7);

  sub_20B7983E8();
}

void sub_20B7983E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_dataProvider);
  v2 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_magicPocketView;
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_magicPocketView);
  v4 = *(*(v1 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v5 = v3;
  [v5 bounds];
  CGRectGetHeight(v10);
  [v5 safeAreaInsets];

  [v4 contentInset];
  [v4 setContentInset_];

  v6 = *(v0 + v2);
  v8 = *(*(v1 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v7 = v6;
  [v7 bounds];
  CGRectGetHeight(v11);
  [v7 safeAreaInsets];

  [v8 verticalScrollIndicatorInsets];
  [v8 setVerticalScrollIndicatorInsets_];
}

void sub_20B798540()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_dataProvider);
  v2 = OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_magicPocketView;
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_magicPocketView);
  v4 = *(*(v1 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v5 = v3;
  [v5 bounds];
  CGRectGetHeight(v10);
  [v5 safeAreaInsets];

  [v4 contentInset];
  [v4 setContentInset_];

  v6 = *(v0 + v2);
  v8 = *(*(v1 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v7 = v6;
  [v7 bounds];
  CGRectGetHeight(v11);
  [v7 safeAreaInsets];

  [v8 verticalScrollIndicatorInsets];
  [v8 setVerticalScrollIndicatorInsets_];
}

Swift::Void __swiftcall WorkoutPlanReviewViewController.viewSafeAreaInsetsDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewSafeAreaInsetsDidChange);
  sub_20B7983E8();
}

uint64_t sub_20B7987F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  v4[23] = swift_getObjectType();
  v5 = sub_20C132EE4();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  v4[27] = swift_task_alloc();
  v6 = sub_20C1333A4();
  v4[28] = v6;
  v4[29] = *(v6 - 8);
  v4[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  v4[31] = swift_task_alloc();
  v7 = sub_20C1352E4();
  v4[32] = v7;
  v4[33] = *(v7 - 8);
  v4[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  v4[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  v4[36] = swift_task_alloc();
  v8 = sub_20C134F24();
  v4[37] = v8;
  v4[38] = *(v8 - 8);
  v4[39] = swift_task_alloc();
  v9 = sub_20C13BB84();
  v4[40] = v9;
  v4[41] = *(v9 - 8);
  v4[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  v4[43] = swift_task_alloc();
  v10 = sub_20C133954();
  v4[44] = v10;
  v4[45] = *(v10 - 8);
  v4[46] = swift_task_alloc();
  v4[47] = sub_20C13CDA4();
  v4[48] = sub_20C13CD94();
  v12 = sub_20C13CD24();
  v4[49] = v12;
  v4[50] = v11;

  return MEMORY[0x2822009F8](sub_20B798BDC, v12, v11);
}

uint64_t sub_20B798BDC()
{
  v0[51] = *(v0[22] + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_dataProvider);
  v1 = swift_task_alloc();
  v0[52] = v1;
  *v1 = v0;
  v1[1] = sub_20B798C88;
  v2 = v0[43];

  return sub_20BD40028(v2, 1);
}

uint64_t sub_20B798C88()
{
  v1 = *v0;

  v2 = *(v1 + 400);
  v3 = *(v1 + 392);

  return MEMORY[0x2822009F8](sub_20B798DA8, v3, v2);
}

uint64_t sub_20B798DA8()
{
  v1 = v0[45];
  v2 = v0[43];
  if ((*(v1 + 48))(v2, 1, v0[44]) == 1)
  {

    sub_20B520158(v2, &unk_27C76A970);
    sub_20C13B454();
    v3 = sub_20C13BB74();
    v4 = sub_20C13D1D4();
    v5 = os_log_type_enabled(v3, v4);
    v7 = v0[41];
    v6 = v0[42];
    v8 = v0[40];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20B517000, v3, v4, "[WorkoutPlanReviewViewController] Failed to save workout plan", v9, 2u);
      MEMORY[0x20F2F6A40](v9, -1, -1);
    }

    (*(v7 + 8))(v6, v8);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v28 = v0[51];
    v12 = v0[38];
    v13 = v0[39];
    v33 = v13;
    v14 = v0[36];
    v15 = v0[37];
    v35 = v0[34];
    v36 = v0[35];
    v16 = v0[33];
    v39 = v0[32];
    v34 = v0[31];
    v27 = v0[30];
    v37 = v0[29];
    v38 = v0[28];
    v29 = v0[27];
    v30 = v0[26];
    v31 = v0[25];
    v32 = v0[24];
    v17 = v0[22];
    (*(v1 + 32))();
    v0[20] = v17;
    (*(v12 + 104))(v13, *MEMORY[0x277D51428], v15);
    v18 = sub_20C136664();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
    v19 = sub_20C132C14();
    (*(*(v19 - 8) + 56))(v36, 1, 1, v19);
    (*(v16 + 104))(v35, *MEMORY[0x277D51768], v39);
    v20 = sub_20C135ED4();
    (*(*(v20 - 8) + 56))(v34, 1, 1, v20);
    (*(v37 + 16))(v27, v28 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_metricPage, v38);
    v21 = sub_20C136E94();
    (*(*(v21 - 8) + 56))(v29, 1, 1, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F320;
    *(inited + 32) = 9;
    sub_20C133804();
    v23 = sub_20C132EA4();
    v25 = v24;
    (*(v31 + 8))(v30, v32);
    v0[18] = v23;
    v0[19] = v25;
    sub_20C13DC04();
    *(inited + 80) = 12;
    v0[21] = sub_20C1337E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765200);
    sub_20B79AC30();
    sub_20C13DC04();
    sub_20B6B29D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762260);
    swift_arrayDestroy();
    sub_20B79AE9C(&unk_27C765220, v26, type metadata accessor for WorkoutPlanReviewViewController);
    sub_20C138DB4();

    sub_20B520158(v29, &unk_27C76BC90);
    (*(v37 + 8))(v27, v38);
    sub_20B520158(v34, &unk_27C7621D0);
    (*(v16 + 8))(v35, v39);
    sub_20B520158(v36, &unk_27C7617F0);
    sub_20B520158(v14, &unk_27C7622E0);
    (*(v12 + 8))(v33, v15);

    return MEMORY[0x2822009F8](sub_20B79943C, 0, 0);
  }
}

uint64_t sub_20B79943C()
{
  *(v0 + 424) = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B7994C8, v2, v1);
}

uint64_t sub_20B7994C8()
{
  v1 = v0[22];

  [v1 dismissViewControllerAnimated:1 completion:0];
  v2 = v0[49];
  v3 = v0[50];

  return MEMORY[0x2822009F8](sub_20B799548, v2, v3);
}

uint64_t sub_20B799548()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

id WorkoutPlanReviewViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id WorkoutPlanReviewViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B799828(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_20C13CDF4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_20C13CDA4();

  sub_20B79AD30(a2, a3);
  v10 = sub_20C13CD94();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = a2;
  v11[6] = a3;

  sub_20B6380FC(0, 0, v7, &unk_20C18C9F0, v11);
}

id sub_20B7999A8(char a1)
{
  result = [v1 presentingViewController];
  if (result)
  {

    return [v1 dismissViewControllerAnimated:a1 & 1 completion:0];
  }

  return result;
}

uint64_t sub_20B799A18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  sub_20C13CDC4();
  v4 = sub_20C13CDF4();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  sub_20C13CDA4();
  v5 = v0;
  v6 = sub_20C13CD94();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_20B6383D0(0, 0, v3, &unk_20C1586C8, v7);
}

uint64_t sub_20B799B74@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(*(*v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_dataProvider) + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker);
  v4 = v3[3];
  v5 = v3[4];
  v6 = __swift_project_boxed_opaque_existential_1(v3, v4);
  a1[3] = v4;
  a1[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(*(v4 - 8) + 16);

  return v8(boxed_opaque_existential_1, v6, v4);
}

uint64_t sub_20B799C20@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_dataProvider);
  v4 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20B799CF4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20B799DDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v6 = sub_20B79AE9C(&qword_27C7651B0, v5, type metadata accessor for WorkoutPlanReviewViewController);

  return a3(ObjectType, v6, a2);
}

uint64_t sub_20B799E74(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + *a3);
    v7 = result;
    swift_unknownObjectRetain();

    [a1 contentSize];
    v9 = v8;
    [a1 contentInset];
    v11 = v10;
    [a1 safeAreaInsets];
    v13 = v12;
    [a1 visibleSize];
    v15 = v14;
    [a1 contentOffset];
    v17 = v16;
    v18 = v6 + OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v18 + 8);
      ObjectType = swift_getObjectType();
      (*(v19 + 8))(v9 - v17 - (v15 - (v11 + v13)) >= 1.0, ObjectType, v19);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_20B79A038(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9)
{
  v45 = a6;
  v50 = a5;
  v44 = a3;
  v43 = a2;
  ObjectType = swift_getObjectType();
  v48 = sub_20C1333A4();
  v14 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C137054();
  v49 = v16;
  v51 = *(v16 - 8);
  v17 = v51;
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56[3] = a8;
  v56[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a4, a8);
  a7[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_visibility] = 1;
  *&a7[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_resignActiveObserver] = 0;
  *&a7[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_eventHub] = v57[0];
  sub_20B51CC64(v56, &a7[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_pageNavigator]);
  sub_20C133AA4();
  v47 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_platform;
  a7[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_platform] = v57[0];
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_workoutPlanStringBuilder] = *&v57[0];
  (*(v17 + 16))(v19, a5, v16);
  type metadata accessor for WorkoutPlanReviewPageDataProvider(0);
  swift_allocObject();

  v22 = sub_20BD44D88(v21, v43, v44, v19, v45);

  v23 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_dataProvider;
  *&a7[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_dataProvider] = v22;
  type metadata accessor for WorkoutPlanCreationStringProvider();
  v24 = swift_allocObject();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20C133AA4();

  *(v24 + 64) = *&v57[0];
  *(v24 + 16) = 1;
  v25 = *&a7[v23];
  type metadata accessor for PageActionPresenter(0);
  v26 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v26 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_dataState) = xmmword_20C1583B0;
  *(v26 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_fetchMarketingOfferTask) = 0;
  *(v26 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_isFetchingMarketingOffer) = 0;
  *(v26 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_isSubscribed) = 0;
  v27 = OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_marketingOffer;
  v28 = sub_20C138894();
  (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
  type metadata accessor for PageActionPresenter.State(0);
  swift_storeEnumTagMultiPayload();
  sub_20C133AA4();
  *(v26 + 128) = v57[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768650);
  sub_20C133AA4();
  sub_20B51C710(v57, v26 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v57, v26 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_subscriptionCache);
  v29 = v46;
  v30 = v48;
  (*(v14 + 16))(v46, v25 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_metricPage, v48);

  (*(v14 + 32))(v26 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_metricPage, v29, v30);
  v31 = (v26 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_stringProvider);
  *v31 = v24;
  v31[1] = &off_2822D4B00;
  *(v26 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_supportedBehaviors) = 4;
  *(v26 + 184) = 13;
  v32 = (v26 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_offerHint);
  *v32 = 0;
  v32[1] = 0;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v26 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_subscriptionToken) = sub_20C13A914();

  v33 = sub_20B79AE9C(&unk_27C771080, 255, type metadata accessor for PageActionPresenter);
  v34 = &a7[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_actionPresenter];
  *v34 = v26;
  v34[1] = v33;
  memset(v57, 0, sizeof(v57));
  v58 = 5;
  LOBYTE(v25) = a7[v47];
  v35 = objc_allocWithZone(type metadata accessor for PageActionMagicPocketView());
  v36 = sub_20BA99324(1, v57, v25);
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a7[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_magicPocketView] = v36;
  sub_20C133AA4();
  LOBYTE(v23) = v55;
  v37 = type metadata accessor for PageScrollObserver();
  v38 = objc_allocWithZone(v37);
  *&v38[OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v38[OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_behaviors] = 1;
  v38[OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_platform] = v23;
  v54.receiver = v38;
  v54.super_class = v37;
  v39 = objc_msgSendSuper2(&v54, sel_init);
  v40 = &a7[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_scrollObserver];
  *v40 = v39;
  v40[1] = &off_2822A5318;
  v53.receiver = a7;
  v53.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v53, sel_initWithNibName_bundle_, 0, 0);

  (*(v51 + 8))(v50, v49);
  __swift_destroy_boxed_opaque_existential_1(v56);
  *(*&v41[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_actionPresenter] + 120) = &off_2822A5A00;
  swift_unknownObjectWeakAssign();
  *(*&v41[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_dataProvider] + 24) = &off_2822A59E0;
  swift_unknownObjectWeakAssign();
  *(*&v41[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_scrollObserver] + OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_delegate + 8) = &off_2822A5D00;
  swift_unknownObjectWeakAssign();
  return v41;
}

char *sub_20B79A828(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a6;
  v15 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(v18);
  (*(v15 + 16))(v17, a4, a8);
  return sub_20B79A038(a1, a2, a3, v17, a5, v22, v19, a8, a9);
}

uint64_t sub_20B79A94C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  return sub_20B8A7D30();
}

uint64_t sub_20B79AB7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20B7987F4(a1, v4, v5, v6);
}

unint64_t sub_20B79AC30()
{
  result = qword_27C765208;
  if (!qword_27C765208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C765200);
    sub_20B79ACB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765208);
  }

  return result;
}

unint64_t sub_20B79ACB4()
{
  result = qword_27C765210;
  if (!qword_27C765210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C765218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765210);
  }

  return result;
}

void *sub_20B79AD30(void *result, unint64_t a2)
{
  if (a2 >= 3)
  {
    v3 = result;
  }

  return result;
}

uint64_t sub_20B79ADE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B8A8030(a1, v4, v5, v6);
}

uint64_t sub_20B79AE9C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_20B79AF34(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id sub_20B79B070()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoIntrinsicButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20B79B0C8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D752C0]) init];
  [v0 setContentInsetsReference_];
  return v0;
}

uint64_t sub_20B79B114()
{
  sub_20C1380F4();
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  Width = CGRectGetWidth(v17);
  v11 = [v0 mainScreen];
  [v11 nativeScale];
  v13 = v12;

  v14 = sub_20C138104();
  result = sub_20C138104();
  v16 = 0.0;
  if (v14 != result)
  {
    v16 = 16.0;
    if (Width / v13 > 375.0)
    {
      v16 = 16.0;
      if (Width / v13 < 834.0)
      {
        v16 = 24.0;
      }
    }
  }

  qword_27C765230 = *&v16;
  return result;
}

uint64_t sub_20B79B23C()
{
  sub_20C1380F4();
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v14.origin.x = v3;
  v14.origin.y = v5;
  v14.size.width = v7;
  v14.size.height = v9;
  v10 = [v0 mainScreen];
  [v10 nativeScale];

  v11 = sub_20C138104();
  result = sub_20C138104();
  v13 = 16.0;
  if (v11 == result)
  {
    v13 = 0.0;
  }

  qword_27C765238 = *&v13;
  return result;
}

uint64_t sub_20B79B328()
{
  sub_20C1380F4();
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  Width = CGRectGetWidth(v17);
  v11 = [v0 mainScreen];
  [v11 nativeScale];
  v13 = v12;

  v14 = sub_20C138104();
  result = sub_20C138104();
  v16 = 30.0;
  if (Width / v13 <= 375.0)
  {
    v16 = 10.0;
  }

  if (v14 == result)
  {
    v16 = 0.0;
  }

  qword_27C765240 = *&v16;
  return result;
}

void sub_20B79B438()
{
  v0 = sub_20C13A484();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_presenter);
    v5 = Strong;

    sub_20B7A337C(v4 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_sessionOrigin, v2, MEMORY[0x277D4DFB8]);

    v6 = sub_20C13A434();
    sub_20B7A33E4(v2, MEMORY[0x277D4DFB8]);
    v7 = [objc_opt_self() sharedApplication];
    sub_20BD47474(v6);
  }
}

uint64_t sub_20B79B580()
{
  v0 = sub_20C134F24();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(result + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_presenter);
    v10 = result;

    sub_20C13B444();
    sub_20C13BB64();
    (*(v5 + 8))(v7, v4);
    (*(v1 + 104))(v3, *MEMORY[0x277D51410], v0);
    v11 = sub_20C134324();
    sub_20BB3F40C(v3, v11, v12);

    (*(v1 + 8))(v3, v0);
    v13 = *(v9 + 48);
    if (v13)
    {

      v13(v14);

      return sub_20B583ECC(v13);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_20B79B7F8()
{
  v0 = sub_20C134F24();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(result + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_presenter);
    v10 = result;

    sub_20C13B444();
    sub_20C13BB64();
    (*(v5 + 8))(v7, v4);
    (*(v1 + 104))(v3, *MEMORY[0x277D51410], v0);
    v11 = sub_20C134324();
    sub_20BB3F40C(v3, v11, v12);

    (*(v1 + 8))(v3, v0);
    v13 = *(v9 + 48);
    if (v13)
    {

      v13(v14);

      return sub_20B583ECC(v13);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_20B79BA70(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    a2();
  }

  return result;
}

void sub_20B79BC68(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for TabletSessionSummaryViewController();
  objc_msgSendSuper2(&v10, sel_viewWillDisappear_, a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 viewControllers];
    sub_20B51C88C(0, &qword_281100550);
    v6 = sub_20C13CC74();

    v9 = v1;
    MEMORY[0x28223BE20](v7);
    v8[2] = &v9;
    LOBYTE(v5) = sub_20B79AEEC(sub_20B5978BC, v8, v6);

    if ((v5 & 1) == 0)
    {
      v9 = v1;
      sub_20B7A3BE0();
      sub_20C138C64();
    }
  }
}

void sub_20B79BE00()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_scrollView];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 8);
  v7 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  v8 = [v1 leadingAnchor];
  v9 = [v3 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:v5];

  LODWORD(v11) = 1148846080;
  [v10 setPriority_];
  v12 = v10;
  v13 = [v1 trailingAnchor];
  v14 = [v3 trailingAnchor];
  v15 = -v6;
  v16 = [v13 constraintEqualToAnchor:v14 constant:v15];

  LODWORD(v17) = 1148846080;
  [v16 setPriority_];
  v18 = v16;
  v19 = [v1 topAnchor];
  v20 = [v3 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:v4];

  LODWORD(v22) = 1148846080;
  [v21 setPriority_];
  v23 = [v1 bottomAnchor];
  v24 = [v3 bottomAnchor];
  v25 = -v7;
  v200 = v1;
  v26 = [v23 constraintEqualToAnchor:v24 constant:v25];

  LODWORD(v27) = 1148846080;
  [v26 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C14FE90;
  *(v28 + 32) = v12;
  *(v28 + 40) = v18;
  *(v28 + 48) = v21;
  *(v28 + 56) = v26;
  v29 = v21;

  v30 = *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_backgroundView];
  v31 = [v0 view];
  if (!v31)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v32 = v31;
  v33 = [v30 leadingAnchor];
  v34 = [v32 leadingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:v5];

  LODWORD(v36) = 1148846080;
  [v35 &selRef_meterUnit];
  v37 = v35;
  v38 = [v30 trailingAnchor];
  v39 = [v32 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:v15];

  LODWORD(v41) = 1148846080;
  [v40 &selRef_meterUnit];
  v42 = v40;
  v43 = [v30 topAnchor];
  v44 = [v32 topAnchor];
  v45 = [v43 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v46) = 1148846080;
  [v45 &selRef_meterUnit];
  v47 = [v30 bottomAnchor];
  v48 = [v32 bottomAnchor];
  v49 = [v47 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v50) = 1148846080;
  [v49 &selRef_meterUnit];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  *(inited + 32) = v37;
  *(inited + 40) = v42;
  *(inited + 48) = v45;
  *(inited + 56) = v49;
  v196 = inited;
  v52 = v45;

  v53 = *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_contentSummaryView];
  v54 = [v53 trailingAnchor];
  v55 = [v1 safeAreaLayoutGuide];
  v56 = [v55 trailingAnchor];

  if (qword_27C760720 != -1)
  {
    swift_once();
  }

  v57 = *&qword_27C765238;
  v58 = -*&qword_27C765238;
  v59 = [v54 constraintEqualToAnchor:v56 constant:-*&qword_27C765238];

  v60 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_contentSummaryTrailingAnchor;
  v61 = *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_contentSummaryTrailingAnchor];
  *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_contentSummaryTrailingAnchor] = v59;

  v62 = swift_initStackObject();
  *(v62 + 16) = xmmword_20C150040;
  v63 = [v53 leadingAnchor];
  v64 = [v200 safeAreaLayoutGuide];
  v65 = [v64 leadingAnchor];

  v66 = [v63 constraintEqualToAnchor:v65 constant:v57];
  v199 = v62;
  *(v62 + 32) = v66;
  v67 = [v53 topAnchor];
  v68 = [v200 topAnchor];
  if (qword_27C760718 != -1)
  {
    swift_once();
  }

  v69 = [v67 constraintEqualToAnchor:v68 constant:*&qword_27C765230];

  *(v62 + 40) = v69;
  v70 = *&v0[v60];
  *(v62 + 48) = v70;
  v71 = *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridView];
  v72 = v70;
  v73 = [v71 heightAnchor];
  v74 = [v73 constraintEqualToConstant_];

  v75 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridViewHeight;
  v76 = *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridViewHeight];
  *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridViewHeight] = v74;

  v77 = [v71 widthAnchor];
  v78 = [v77 constraintEqualToConstant_];

  v79 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridViewWidth;
  v80 = *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridViewWidth];
  *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridViewWidth] = v78;

  v81 = [v71 &selRef_setLineBreakMode_];
  v82 = [v53 bottomAnchor];
  if (qword_27C760728 != -1)
  {
    swift_once();
  }

  v83 = [v81 constraintEqualToAnchor:v82 constant:*&qword_27C765240];

  v84 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridViewTopSpacing;
  v85 = *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridViewTopSpacing];
  *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridViewTopSpacing] = v83;

  v86 = swift_initStackObject();
  *(v86 + 16) = xmmword_20C14FE90;
  v87 = *&v0[v79];
  *(v86 + 32) = v87;
  v88 = *&v0[v75];
  *(v86 + 40) = v88;
  v89 = *&v0[v84];
  *(v86 + 48) = v89;
  v90 = v86;
  v195 = v86;
  v91 = v87;
  v92 = v88;
  v93 = v89;
  v94 = [v71 leadingAnchor];
  v95 = v53;
  v96 = [v53 leadingAnchor];
  v97 = [v94 constraintEqualToAnchor_];

  *(v90 + 56) = v97;
  v98 = *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_activityRingsView];
  v99 = [v98 &selRef_secondaryLabel + 5];
  v198 = *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_buttonStackView];
  v100 = [v198 topAnchor];
  v101 = [v99 constraintLessThanOrEqualToAnchor:v100 constant:-20.0];

  v102 = *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_activityRingsBottomPinningConstraint];
  *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_activityRingsBottomPinningConstraint] = v101;
  v103 = v101;

  v104 = swift_initStackObject();
  *(v104 + 16) = xmmword_20C150040;
  *(v104 + 32) = v103;
  v105 = v104;
  v194 = v103;
  v106 = [v98 leadingAnchor];
  v107 = [v95 leadingAnchor];
  v108 = [v106 constraintEqualToAnchor_];

  *(v105 + 40) = v108;
  v193 = v105;
  v109 = [v98 topAnchor];
  v110 = [v71 bottomAnchor];
  v111 = [v109 constraintEqualToAnchor:v110 constant:9.0];

  *(v105 + 48) = v111;
  v112 = *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarView];
  v113 = [v112 leadingAnchor];
  v192 = v95;
  v114 = [v95 leadingAnchor];
  v115 = [v113 constraintEqualToAnchor_];

  LODWORD(v116) = 1132068864;
  [v115 setPriority_];
  v191 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToContentSummaryLeadingConstraint;
  v117 = *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToContentSummaryLeadingConstraint];
  *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToContentSummaryLeadingConstraint] = v115;

  v118 = [v112 topAnchor];
  v119 = [v98 bottomAnchor];
  v120 = [v118 constraintEqualToAnchor_];

  v121 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToActivityRingsTopConstraint;
  v122 = *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToActivityRingsTopConstraint];
  *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToActivityRingsTopConstraint] = v120;

  v123 = [v112 leadingAnchor];
  v124 = [v95 leadingAnchor];
  v125 = [v123 &selRef:v124 alertControllerReleasedDictationButton:? + 5];

  LODWORD(v126) = 1144750080;
  [v125 setPriority_];
  v127 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarLeadingConstraint;
  v128 = *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarLeadingConstraint];
  *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarLeadingConstraint] = v125;

  v129 = [v112 topAnchor];
  v130 = [v71 bottomAnchor];
  v131 = [v129 constraintEqualToAnchor:v130 constant:9.0];

  v132 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToGridViewTopConstraint;
  v133 = *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToGridViewTopConstraint];
  *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToGridViewTopConstraint] = v131;

  v134 = [v112 bottomAnchor];
  v135 = [v198 topAnchor];
  v136 = [v134 constraintLessThanOrEqualToAnchor:v135 constant:-20.0];

  v137 = *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarBottomPinningConstraint];
  *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarBottomPinningConstraint] = v136;
  v138 = v136;

  v139 = swift_allocObject();
  v140 = *&v0[v191];
  *(v139 + 16) = xmmword_20C150050;
  v141 = *&v0[v121];
  v142 = *&v0[v127];
  *(v139 + 32) = v140;
  *(v139 + 40) = v141;
  v143 = *&v0[v132];
  *(v139 + 48) = v142;
  *(v139 + 56) = v143;
  *(v139 + 64) = v138;
  *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarConstraints] = v139;
  v197 = v138;
  v144 = v140;
  v145 = v141;
  v146 = v142;
  v147 = v143;

  v148 = swift_initStackObject();
  *(v148 + 16) = xmmword_20C150040;
  v149 = v148;
  v150 = [v198 leadingAnchor];
  v151 = [v200 safeAreaLayoutGuide];
  v152 = [v151 leadingAnchor];

  v153 = [v150 constraintEqualToAnchor:v152 constant:16.0];
  v149[4] = v153;
  v154 = [v198 trailingAnchor];
  v155 = [v200 safeAreaLayoutGuide];
  v156 = [v155 trailingAnchor];

  v157 = [v154 constraintEqualToAnchor:v156 constant:-16.0];
  v149[5] = v157;
  v158 = [v198 bottomAnchor];
  v159 = [v200 bottomAnchor];
  v160 = [v158 constraintEqualToAnchor:v159 constant:-16.0];

  v149[6] = v160;
  v161 = swift_initStackObject();
  *(v161 + 16) = xmmword_20C14FE90;
  v162 = *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_queueCompleteView];
  v163 = [v162 trailingAnchor];
  v164 = [v200 safeAreaLayoutGuide];
  v165 = [v164 trailingAnchor];

  v166 = [v163 constraintEqualToAnchor:v165 constant:v58];
  *(v161 + 32) = v166;
  v167 = [v162 topAnchor];
  v168 = [v192 topAnchor];
  v169 = [v167 &selRef_passwordEntryCancelledHandler + 6];

  *(v161 + 40) = v169;
  v170 = [v162 bottomAnchor];
  v171 = [v198 topAnchor];
  v172 = [v170 &selRef_passwordEntryCancelledHandler + 6];

  *(v161 + 48) = v172;
  v173 = [v162 heightAnchor];
  v174 = [v173 constraintGreaterThanOrEqualToConstant_];

  *(v161 + 56) = v174;
  v175 = swift_initStackObject();
  *(v175 + 16) = xmmword_20C14FE90;
  v176 = *&v0[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_upNextSummaryView];
  v177 = [v176 trailingAnchor];
  v178 = [v200 safeAreaLayoutGuide];
  v179 = [v178 trailingAnchor];

  v180 = [v177 constraintEqualToAnchor:v179 constant:v58];
  *(v175 + 32) = v180;
  v181 = [v176 topAnchor];
  v182 = [v192 topAnchor];
  v183 = [v181 constraintEqualToAnchor:v182 constant:-20.0];

  *(v175 + 40) = v183;
  v184 = [v176 bottomAnchor];
  v185 = [v198 topAnchor];
  v186 = [v184 &selRef_passwordEntryCancelledHandler + 6];

  *(v175 + 48) = v186;
  v187 = [v176 heightAnchor];
  v188 = [v187 constraintGreaterThanOrEqualToConstant_];

  *(v175 + 56) = v188;
  sub_20B8D9310(v196);
  sub_20B8D9310(v199);
  sub_20B8D9310(v195);
  sub_20B8D9310(v149);
  sub_20B8D9310(v193);
  sub_20B8D9310(v161);
  sub_20B8D9310(v175);
  v189 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500);
  v190 = sub_20C13CC54();

  [v189 activateConstraints_];
}

uint64_t sub_20B79D158()
{
  v1 = v0;
  v2 = sub_20C1344C4();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765360);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  v8 = type metadata accessor for SessionSummaryViewModel();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v13 = sub_20C13C914();
  v14 = [v12 initWithString_];

  v15 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_summary;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v15, v7, &unk_27C765360);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_20B520158(v7, &unk_27C765360);
    result = sub_20C13DE24();
    __break(1u);
  }

  else
  {
    sub_20B7A3A9C(v7, v11, type metadata accessor for SessionSummaryViewModel);
    v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_stringBuilder + 16);
    v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_stringBuilder + 48);
    v52 = *(v1 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_stringBuilder + 32);
    v53 = v17;
    v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_stringBuilder + 16);
    v51[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_stringBuilder);
    v51[1] = v18;
    v47 = v16;
    v48 = v52;
    v49 = *(v1 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_stringBuilder + 48);
    v54 = *(v1 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_stringBuilder + 64);
    v50 = *(v1 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_stringBuilder + 64);
    v46 = v51[0];
    v19 = v11[1];
    sub_20B7A3194(v51, &v41);

    v21 = sub_20BAAAE6C(v20, v19);
    v38 = v14;
    v43 = v48;
    v44 = v49;
    v45 = v50;
    v41 = v46;
    v42 = v47;
    v22 = v21;
    sub_20B7A3B8C(&v41);

    v23 = v22;
    v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_contentSummaryView);
    v25 = *v11;
    v26 = OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_labels;
    v27 = *(*&v24[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_labels] + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_primaryLabel);
    v28 = v23;
    [v27 setAttributedText_];
    v29 = *&v24[v26];
    v30 = OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel;
    [*(v29 + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel) setHidden_];
    [*(v29 + v30) setAttributedText_];
    [v24 invalidateIntrinsicContentSize];

    v32 = v39;
    v31 = v40;
    (*(v39 + 16))(v4, *(v1 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_presenter) + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_catalogWorkout, v40);
    v33 = sub_20C1344B4();
    v35 = v34;
    LOBYTE(v29) = v36;
    (*(v32 + 8))(v4, v31);
    *&v46 = v33;
    *(&v46 + 1) = v35;
    LOBYTE(v31) = v29 & 1;
    LOBYTE(v47) = v29 & 1;
    v41 = xmmword_20C152300;
    LOBYTE(v42) = 1;
    sub_20B6A6418(v33, v35, v29 & 1);
    sub_20B590B28();
    sub_20B590B7C();
    LOBYTE(v29) = sub_20C133BF4();
    sub_20B583F4C(v46, *(&v46 + 1), v47);
    sub_20B80447C((v29 & 1) == 0);

    sub_20B583F4C(v33, v35, v31);
    return sub_20B7A33E4(v11, type metadata accessor for SessionSummaryViewModel);
  }

  return result;
}

void sub_20B79D6B4()
{
  v1 = type metadata accessor for SessionSummaryViewModel();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765360);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v40 - v6;
  v8 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_summary;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v8, v7, &unk_27C765360);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_20B520158(v7, &unk_27C765360);
  }

  else
  {
    sub_20B7A337C(v7, v4, type metadata accessor for SessionSummaryViewModel);
    sub_20B520158(v7, &unk_27C765360);
    v9 = &v4[*(v1 + 72)];
    v11 = *v9;
    v10 = v9[1];
    v13 = v9[2];
    v12 = v9[3];
    v14 = v9[5];
    v15 = *v9;
    v41 = v9[4];
    sub_20B7A3B04(v15, v10, v13, v12, v41, v14);
    sub_20B7A33E4(v4, type metadata accessor for SessionSummaryViewModel);
    if (v10)
    {
      v42 = v12;
      v16 = *(v0 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_queueCompleteView);
      v17 = objc_opt_self();
      v18 = swift_allocObject();
      v18[2] = v16;
      v18[3] = v11;
      v18[4] = v10;
      v47 = sub_20B7A3B70;
      v48 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_20B7B548C;
      v46 = &block_descriptor_76;
      v19 = _Block_copy(&aBlock);
      v20 = v16;

      [v17 animateWithDuration:v19 animations:0.1];
      _Block_release(v19);
      if (v13)
      {
        v21 = *&v20[OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalTimeDetailLabel];
        v22 = v13;
        [v21 setAttributedText_];
        v23 = swift_allocObject();
        *(v23 + 16) = v20;
        v47 = sub_20B7A3C64;
        v48 = v23;
        aBlock = MEMORY[0x277D85DD0];
        v44 = 1107296256;
        v45 = sub_20B7B548C;
        v46 = &block_descriptor_95;
        v24 = _Block_copy(&aBlock);
        v25 = v20;

        [v17 animateWithDuration:v24 animations:0.1];
        _Block_release(v24);
      }

      v26 = v41;
      v27 = v42;
      if (v42 && v41)
      {
        v28 = v42;
        v29 = v26;
        sub_20BF70BF8(v28, v29);
      }

      if (v13)
      {
        v30 = *&v20[OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalTimeDetailLabel];
        v31 = v13;
        [v30 setAttributedText_];
        v32 = swift_allocObject();
        *(v32 + 16) = v20;
        v47 = sub_20B7A3B84;
        v48 = v32;
        aBlock = MEMORY[0x277D85DD0];
        v44 = 1107296256;
        v45 = sub_20B7B548C;
        v46 = &block_descriptor_88;
        v33 = _Block_copy(&aBlock);
        v34 = v20;
        v27 = v42;

        [v17 animateWithDuration:v33 animations:0.1];
        _Block_release(v33);
      }

      if (v14)
      {
        v35 = *&v20[OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalDistanceDetailLabel];
        v36 = v14;
        [v35 setAttributedText_];
        v37 = swift_allocObject();
        *(v37 + 16) = v20;
        v47 = sub_20B7A3B7C;
        v48 = v37;
        aBlock = MEMORY[0x277D85DD0];
        v44 = 1107296256;
        v45 = sub_20B7B548C;
        v46 = &block_descriptor_82;
        v38 = _Block_copy(&aBlock);
        v39 = v20;

        [v17 animateWithDuration:v38 animations:0.1];
        _Block_release(v38);
      }
    }
  }
}

id sub_20B79DD70()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765360);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for SessionSummaryViewModel();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_summary;
  swift_beginAccess();
  sub_20B52F9E8(&v1[v9], v4, &unk_27C765360);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_20B520158(v4, &unk_27C765360);
  }

  sub_20B7A3A9C(v4, v8, type metadata accessor for SessionSummaryViewModel);
  v11 = *&v1[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridView];
  [*&v11[OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_layout] invalidateLayout];
  v12 = [v11 topAnchor];
  v13 = [*&v1[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_contentSummaryView] bottomAnchor];
  if (qword_27C760728 != -1)
  {
    swift_once();
  }

  v14 = [v12 constraintEqualToAnchor:v13 constant:*&qword_27C765240];

  v15 = *&v1[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridViewTopSpacing];
  *&v1[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridViewTopSpacing] = v14;

  result = [v1 view];
  if (result)
  {
    v16 = result;
    v17 = [result safeAreaLayoutGuide];

    [v17 layoutFrame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v34.origin.x = v19;
    v34.origin.y = v21;
    v34.size.width = v23;
    v34.size.height = v25;
    Width = CGRectGetWidth(v34);
    if (qword_27C760720 != -1)
    {
      swift_once();
    }

    v27 = *&qword_27C765238;
    v28 = *(sub_20B839B88() + 16);

    v29 = *(sub_20B839B88() + 16);

    if ((v29 & 1) + (v28 >> 1) <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = (v29 & 1) + (v28 >> 1);
    }

    sub_20BA00314(v30, Width - (v27 + v27));
    v32 = v31;
    [*&v1[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridViewWidth] setConstant_];
    [*&v1[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridViewHeight] setConstant_];
    return sub_20B7A33E4(v8, type metadata accessor for SessionSummaryViewModel);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20B79E134()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765350);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v93 - v3;
  v5 = type metadata accessor for SummaryBurnBarMetricViewModel();
  v94 = *(v5 - 8);
  v95 = v5;
  MEMORY[0x28223BE20](v5);
  v93 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765360);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v93 - v8;
  v10 = type metadata accessor for SessionSummaryViewModel();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_summary;
  swift_beginAccess();
  v15 = &v1[v14];
  v16 = v1;
  sub_20B52F9E8(v15, v9, &unk_27C765360);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_20B520158(v9, &unk_27C765360);
  }

  sub_20B7A3A9C(v9, v13, type metadata accessor for SessionSummaryViewModel);
  result = [v1 view];
  if (result)
  {
    v18 = result;
    v19 = v13;
    [result layoutIfNeeded];

    sub_20B52F9E8(&v13[*(v10 + 64)], v4, &unk_27C765350);
    v20 = v95;
    if ((*(v94 + 48))(v4, 1, v95) == 1)
    {
      sub_20B520158(v4, &unk_27C765350);
LABEL_25:
      v59 = objc_opt_self();
      sub_20B51C88C(0, &qword_281100500);

      v60 = sub_20C13CC54();

      [v59 deactivateConstraints_];

      v61 = v19;
      return sub_20B7A33E4(v61, type metadata accessor for SessionSummaryViewModel);
    }

    v21 = v93;
    sub_20B7A3A9C(v4, v93, type metadata accessor for SummaryBurnBarMetricViewModel);
    if (*(v21 + *(v20 + 20)) != 1)
    {
      sub_20B7A33E4(v21, type metadata accessor for SummaryBurnBarMetricViewModel);
      goto LABEL_25;
    }

    v95 = v19;
    v22 = *&v16[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_activityRingsView];
    [v22 frame];
    Width = CGRectGetWidth(v111);
    [*&v16[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarView] frame];
    v24 = CGRectGetWidth(v112);
    [*&v16[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_contentSummaryView] frame];
    v25 = CGRectGetWidth(v113);
    v26 = v16;
    v27 = [v16 traitCollection];
    v28 = [v27 preferredContentSizeCategory];

    LOBYTE(v27) = sub_20C13D424();
    v29 = v26;
    v30 = v26;
    if ((v27 & 1) != 0 || v25 < Width + 10.0 + v24)
    {
      v62 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToContentSummaryLeadingConstraint;
      v63 = v29;
      [*&v29[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToContentSummaryLeadingConstraint] setConstant_];
      v64 = *&v29[v62];
      v65 = *&v29[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToActivityRingsTopConstraint];
      v100[4] = v64;
      v100[5] = v65;
      v101 = *&v63[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarBottomPinningConstraint];
      v66 = MEMORY[0x277D84F90];
      v105 = MEMORY[0x277D84F90];
      v67 = v101;
      v68 = v64;
      result = v65;
      v69 = 0;
LABEL_27:
      if (v69 <= 3)
      {
        v70 = 3;
      }

      else
      {
        v70 = v69;
      }

      while (v69 != 3)
      {
        if (v70 == v69)
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v71 = v100[v69++ + 4];
        if (v71)
        {
          v72 = v71;
          MEMORY[0x20F2F43B0]();
          if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20C13CCA4();
          }

          result = sub_20C13CCE4();
          v63 = v30;
          goto LABEL_27;
        }
      }

      v73 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765390);
      swift_arrayDestroy();
      sub_20B51C88C(0, &qword_281100500);
      v74 = sub_20C13CC54();

      [v73 activateConstraints_];

      v76 = *&v63[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToGridViewTopConstraint];
      v97 = *&v63[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarLeadingConstraint];
      v75 = v97;
      v98 = v76;
      v99 = *&v63[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_activityRingsBottomPinningConstraint];
      v105 = v66;
      v77 = v99;
      v78 = v75;
      result = v76;
      v79 = 0;
LABEL_37:
      if (v79 <= 3)
      {
        v80 = 3;
      }

      else
      {
        v80 = v79;
      }

      while (v79 != 3)
      {
        if (v80 == v79)
        {
          goto LABEL_58;
        }

        v81 = v96[v79++ + 4];
        if (v81)
        {
          v82 = v81;
          MEMORY[0x20F2F43B0]();
          if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v94 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_20C13CCA4();
          }

          result = sub_20C13CCE4();
          goto LABEL_37;
        }
      }

      swift_arrayDestroy();
      v92 = sub_20C13CC54();

      [v73 deactivateConstraints_];
      goto LABEL_54;
    }

    [v22 frame];
    v31 = CGRectGetWidth(v114) + 10.0;
    v32 = [v22 isHidden];
    v33 = 0.0;
    if (!v32)
    {
      v33 = v31;
    }

    v34 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarLeadingConstraint;
    [*&v26[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarLeadingConstraint] setConstant_];
    [*&v26[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridViewWidth] constant];
    v36 = v35;
    v37 = *&v26[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridView];
    v38 = v30;
    if (sub_20BA004B4(v35) < 2)
    {
LABEL_14:
      v48 = *&v38[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_activityRingsBottomPinningConstraint];
      v49 = *&v38[v34];
      v50 = *&v38[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToContentSummaryLeadingConstraint];
      v107 = *&v38[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToGridViewTopConstraint];
      v47 = v107;
      v108 = v48;
      v109 = v49;
      v110 = v50;
      v51 = MEMORY[0x277D84F90];
      v105 = MEMORY[0x277D84F90];
      v52 = v48;
      v53 = v49;
      v54 = v50;
      result = v47;
      v55 = 0;
LABEL_15:
      if (v55 <= 4)
      {
        v56 = 4;
      }

      else
      {
        v56 = v55;
      }

      while (v55 != 4)
      {
        if (v56 == v55)
        {
          goto LABEL_57;
        }

        v57 = v106[v55++ + 4];
        if (v57)
        {
          v58 = v57;
          MEMORY[0x20F2F43B0]();
          if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20C13CCA4();
          }

          result = sub_20C13CCE4();
          v38 = v30;
          goto LABEL_15;
        }
      }

      v83 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765390);
      swift_arrayDestroy();
      sub_20B51C88C(0, &qword_281100500);
      v84 = sub_20C13CC54();

      [v83 activateConstraints_];

      v86 = *&v38[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarBottomPinningConstraint];
      v103 = *&v38[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToActivityRingsTopConstraint];
      v85 = v103;
      v104 = v86;
      v105 = v51;
      v87 = v86;
      v88 = v85;
      for (i = 0; i != 2; ++i)
      {
        v90 = v102[i + 4];
        if (v90)
        {
          v91 = v90;
          MEMORY[0x20F2F43B0]();
          if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20C13CCA4();
          }

          sub_20C13CCE4();
        }
      }

      swift_arrayDestroy();
      v92 = sub_20C13CC54();

      [v83 deactivateConstraints_];
LABEL_54:

      sub_20B7A33E4(v93, type metadata accessor for SummaryBurnBarMetricViewModel);
      v61 = v95;
      return sub_20B7A33E4(v61, type metadata accessor for SessionSummaryViewModel);
    }

    v39 = *&v30[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToContentSummaryLeadingConstraint];
    v40 = sub_20BA004B4(v36);
    v41 = OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_layout;
    [*(v37 + OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_layout) itemSize];
    v43 = v42;
    result = [*(v37 + OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_collectionView) contentSize];
    if (!__OFSUB__(v40, 1))
    {
      v45 = (v44 - v43 * v40) / (v40 - 1);
      [*(v37 + v41) itemSize];
      [v39 &selRef:v45 + v46 deselectItemAtIndexPath:? animated:? + 2];

      v38 = v30;
      goto LABEL_14;
    }

LABEL_59:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_20B79EC5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabletSessionSummaryViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TabletSessionSummaryViewController()
{
  result = qword_27C765340;
  if (!qword_27C765340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B79EF34()
{
  sub_20B79F044();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20B79F044()
{
  if (!qword_2811023E0)
  {
    type metadata accessor for SessionSummaryViewModel();
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_2811023E0);
    }
  }
}

void sub_20B79F09C(char a1)
{
  if (!a1)
  {
    return;
  }

  v2 = &v1[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_contentSummaryTrailingAnchor];
  if (a1 == 1)
  {
    [*&v1[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_contentSummaryTrailingAnchor] setActive_];
    v3 = [*&v1[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_contentSummaryView] trailingAnchor];
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_queueCompleteView];
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_contentSummaryTrailingAnchor] setActive_];
    v3 = [*&v1[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_contentSummaryView] trailingAnchor];
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_upNextSummaryView];
  }

  v5 = [v4 leadingAnchor];
  if (qword_27C760720 != -1)
  {
    swift_once();
  }

  v6 = [v3 constraintEqualToAnchor:v5 constant:-*&qword_27C765238];

  v7 = *v2;
  *v2 = v6;
  v8 = v6;

  [v8 setActive_];
  [v4 setHidden_];
  [*&v1[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_buttonStackView] setHidden_];
  v9 = [v1 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  [v9 setNeedsUpdateConstraints];

  v11 = [v1 view];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v11;
  [v11 setNeedsLayout];

  v13 = [v1 view];
  if (!v13)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 layoutIfNeeded];
}

id sub_20B79F32C(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_contentSummaryView) setAlpha_];
  [*(a1 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridView) setAlpha_];
  [*(a1 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_buttonStackView) setAlpha_];
  [*(a1 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarView) setAlpha_];
  [*(a1 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_backgroundView) setAlpha_];
  v2 = *(a1 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_activityRingsView);

  return [v2 setAlpha_];
}

void sub_20B79F3EC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SessionSummaryViewModel();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v43 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765350);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v43 - v8;
  v48 = type metadata accessor for SummaryBurnBarMetricViewModel();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770980);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - v11;
  v13 = type metadata accessor for SummaryActivityRingsMetricViewModel();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765360);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v43 - v21;
  sub_20B7A337C(a1, &v43 - v21, type metadata accessor for SessionSummaryViewModel);
  v49 = v5;
  (*(v5 + 56))(v22, 0, 1, v4);
  v23 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_summary;
  swift_beginAccess();
  v45 = v23;
  sub_20B7A30E4(v22, &v2[v23]);
  swift_endAccess();
  v24 = [v2 view];
  if (!v24)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25 = v24;
  [v24 layoutIfNeeded];

  v26 = v4;
  sub_20B52F9E8(a1 + *(v4 + 60), v12, &unk_27C770980);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C770980);
    [*&v2[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_activityRingsView] setHidden_];
  }

  else
  {
    sub_20B7A3A9C(v12, v16, type metadata accessor for SummaryActivityRingsMetricViewModel);
    v27 = *&v2[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_activityRingsView];
    sub_20BC5762C(v16, 1);
    [v27 setHidden_];
    sub_20B7A33E4(v16, type metadata accessor for SummaryActivityRingsMetricViewModel);
  }

  v28 = v48;
  v29 = sub_20B839B88();
  sub_20BA006A0(v29);

  v30 = v47;
  sub_20B52F9E8(a1 + *(v26 + 64), v47, &unk_27C765350);
  if ((*(v46 + 48))(v30, 1, v28) == 1)
  {
    sub_20B520158(v30, &unk_27C765350);
    [*&v2[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarView] &selRef:1 gaussianBlurFilterWithInputRadius:? inputHardEdges:? inputNormalizeEdges:? inputQuality:? inputIntermediateBitDepth:? inputDither:? name:?];
  }

  else
  {
    v31 = v44;
    sub_20B7A3A9C(v30, v44, type metadata accessor for SummaryBurnBarMetricViewModel);
    v32 = *&v2[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarView];
    sub_20BA675CC(v31);
    [v32 &selRef:(*(v31 + *(v28 + 20)) & 1) == 0 gaussianBlurFilterWithInputRadius:? inputHardEdges:? inputNormalizeEdges:? inputQuality:? inputIntermediateBitDepth:? inputDither:? name:?];
    sub_20B7A33E4(v31, type metadata accessor for SummaryBurnBarMetricViewModel);
  }

  sub_20B79D158();
  sub_20B52F9E8(&v2[v45], v19, &unk_27C765360);
  if ((*(v49 + 48))(v19, 1, v26))
  {
    sub_20B520158(v19, &unk_27C765360);
  }

  else
  {
    v33 = v43;
    sub_20B7A337C(v19, v43, type metadata accessor for SessionSummaryViewModel);
    sub_20B520158(v19, &unk_27C765360);
    v34 = v33 + *(v26 + 68);
    v35 = *v34;
    v36 = *(v34 + 8);
    sub_20B7A3154(*v34, v36);
    sub_20B7A33E4(v33, type metadata accessor for SessionSummaryViewModel);
    if (v35)
    {
      sub_20BCA23DC(v35, v36);
    }
  }

  sub_20B79D6B4();
  v37 = [v2 view];
  if (!v37)
  {
    goto LABEL_17;
  }

  v38 = v37;
  [v37 setNeedsUpdateConstraints];

  v39 = [v2 view];
  if (!v39)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v40 = v39;
  [v39 setNeedsLayout];

  v41 = [v2 view];
  if (v41)
  {
    v42 = v41;
    [v41 layoutIfNeeded];

    return;
  }

LABEL_19:
  __break(1u);
}