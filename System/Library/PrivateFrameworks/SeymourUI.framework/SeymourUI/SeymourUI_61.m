uint64_t sub_20BBF1F50(uint64_t a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BC38);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v13 - v8);
  sub_20BC023F4(v3 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionOrigin, &v13 - v8, MEMORY[0x277D4DFB8]);
  sub_20C13A484();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_20C137EA4();
    return (*(*(v10 - 8) + 8))(v9, v10);
  }

  else
  {
    v12 = *v9;
    v17 = 0;
    v14 = a1;
    v15 = a2;
    v16 = a3 & 1;
    sub_20BB7F204();
    sub_20BC01E78();
    if (sub_20C133C14() & 1) != 0 || (v17 = 1, v14 = a1, v15 = a2, v16 = a3 & 1, (sub_20C133C14()))
    {
      sub_20BBF2154(v12);
    }

    else
    {

      v17 = 3;
      v14 = a1;
      v15 = a2;
      v16 = a3 & 1;
      result = sub_20C133C14();
      if ((result & 1) == 0)
      {
        v17 = 2;
        v14 = a1;
        v15 = a2;
        v16 = a3 & 1;
        return sub_20C133C14();
      }
    }
  }

  return result;
}

uint64_t sub_20BBF2154(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13C4C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_timerProvider), *(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_timerProvider + 24));
  sub_20B51C88C(0, &qword_281100530);
  (*(v5 + 104))(v7, *MEMORY[0x277D851B8], v4);
  v8 = sub_20C13D3A4();
  (*(v5 + 8))(v7, v4);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;

  v11 = sub_20C13AE34();

  *(v2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_brokerDistributedSessionRetryTimer) = v11;
  return swift_unknownObjectRelease();
}

uint64_t sub_20BBF2344()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BBF4E04(v3);

    v5 = sub_20C137CB4();
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    v5(sub_20B5DF6DC, v6);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

void *sub_20BBF24A8()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  sub_20B97F5B4();
  sub_20BDE3794();
  v6 = v1[20];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(ObjectType, v7);
    swift_unknownObjectRelease();
  }

  v9 = v1[21];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 24);
    v11 = swift_getObjectType();
    (*(v10 + 16))(v11, v10);
    swift_unknownObjectRelease();
  }

  v12 = v1[9];
  v13 = v1[22];
  v14 = v1[23];
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = *(v13 + 56);
  *(v13 + 56) = sub_20BC02DCC;
  *(v13 + 64) = v15;
  swift_unknownObjectRetain();

  sub_20B583ECC(v16);

  v17 = v12 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = *(v17 + 8);
    v21 = swift_getObjectType();
    (*(v20 + 64))(v13, v14, v21, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20BFE7734();
    swift_unknownObjectRelease();
  }

  sub_20B7E42C0(v13);
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    [*(v22 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_heartRateDiscoveryView) setHidden_];
    [*(v23 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_watchDiscoveryView) setHidden_];
    [*(v23 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_introSequenceView) setHidden_];
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = result;
    [result setNeedsFocusUpdate];
    [v25 updateFocusIfNeeded];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BBF27DC(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  v3 = sub_20C134C04();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = *(v1 + 88);
  v14 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workoutDeviceConnection;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v14, v12, &unk_27C765CB0);
  v15 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_workoutDeviceConnection;
  swift_beginAccess();
  sub_20B8C3A08(v12, v13 + v15);
  swift_endAccess();
  sub_20B8C0364();
  sub_20B8C2118();
  sub_20B8C22B4(0, 0.0);
  sub_20B520158(v12, &unk_27C765CB0);
  v16 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_gymKitConnection;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v16, v9, &unk_27C7650F0);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_20B520158(v9, &unk_27C7650F0);
    v17 = 0;
  }

  else
  {
    (*(v4 + 16))(v6, v9, v3);
    sub_20B520158(v9, &unk_27C7650F0);
    v17 = GymKitConnection.isGymKitStart.getter();
    (*(v4 + 8))(v6, v3);
  }

  return sub_20BBF2AB4(v20, v17 & 1);
}

uint64_t sub_20BBF2AB4(uint64_t a1, int a2)
{
  v3 = v2;
  v71 = a2;
  v65 = a1;
  v4 = sub_20C138284();
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x28223BE20](v4);
  v66 = v5;
  v67 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v63 - v7;
  v70 = sub_20C13C554();
  v8 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v10 = (&v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_20C132E94();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_20C138FE4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C13BB84();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v17 + 8))(v19, v16);
  swift_getObjectType();
  sub_20C132E84();
  sub_20C138FD4();
  sub_20BC026A4(&qword_27C76BC30, MEMORY[0x277D54220]);
  sub_20C13A764();
  (*(v13 + 8))(v15, v12);
  sub_20B97F5B4();
  sub_20BDE3794();
  v20 = v3[20];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = *(v20 + 24);
    ObjectType = swift_getObjectType();
    (*(v21 + 16))(ObjectType, v21);
    swift_unknownObjectRelease();
  }

  v23 = v3[21];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = *(v23 + 24);
    v25 = swift_getObjectType();
    (*(v24 + 16))(v25, v24);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    sub_20B51C88C(0, &qword_281100530);
    *v10 = sub_20C13D374();
    v28 = v70;
    (*(v8 + 104))(v10, *MEMORY[0x277D85200], v70);
    v29 = sub_20C13C584();
    result = (*(v8 + 8))(v10, v28);
    if ((v29 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    [v27 dismissViewControllerAnimated:0 completion:0];
    swift_unknownObjectRelease();
  }

  if (v71)
  {
    v31 = v3[10];
    v32 = swift_unknownObjectWeakLoadStrong();
    if (v32)
    {
      [v32 removeFromSuperview];
      swift_unknownObjectRelease();
    }

    [*(v31 + OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_audioPlayer) stop];
    v33 = v3[9] + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34)
    {
      v35 = v34;
      v36 = *(v33 + 8);
      v37 = swift_getObjectType();
      (*(v36 + 56))(v37, v36, 0.5, 0.0);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_20BFE713C(nullsub_1, 0, 0.5, 0.0);
      swift_unknownObjectRelease();
    }

    v38 = v3[4];
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = v38 + OBJC_IVAR____TtC9SeymourUI26SessionBackgroundPresenter_display;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v41 = *(v40 + 8);
      v42 = swift_getObjectType();
      v43 = *(v41 + 24);

      v43(sub_20BC01E40, v39, v42, v41, 0.5);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_20BBF9400();
    }
  }

  else
  {
    v44 = v3[9] + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
    v45 = swift_unknownObjectWeakLoadStrong();
    if (v45)
    {
      v46 = v45;
      v47 = *(v44 + 8);
      v48 = swift_getObjectType();
      (*(v47 + 56))(v48, v47, 0.5, 0.0);
    }

    v49 = swift_unknownObjectWeakLoadStrong();
    v51 = v68;
    v50 = v69;
    v52 = v67;
    if (v49)
    {
      sub_20BFE713C(nullsub_1, 0, 0.5, 0.0);
      swift_unknownObjectRelease();
    }

    v53 = v3[4];
    v54 = swift_allocObject();
    swift_weakInit();
    v55 = *(v51 + 16);
    v56 = v64;
    v55(v64, v65, v50);
    v55(v52, v56, v50);
    v57 = (*(v51 + 80) + 24) & ~*(v51 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = v54;
    (*(v51 + 32))(v58 + v57, v56, v50);
    v59 = v53 + OBJC_IVAR____TtC9SeymourUI26SessionBackgroundPresenter_display;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v60 = *(v59 + 8);
      v61 = swift_getObjectType();
      v62 = *(v60 + 24);

      v62(sub_20BC01DDC, v58, v61, v60, 0.5);
      swift_unknownObjectRelease();
    }

    else
    {

      sub_20BBF3348();
    }

    (*(v51 + 8))(v52, v50);
  }
}

void sub_20BBF3348()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 48);

    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      [*(v2 + OBJC_IVAR____TtC9SeymourUI18SessionCastingView_airplayControlItem) setHidden_];
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v3 = swift_weakLoadStrong();
  if (v3)
  {
    v4 = *(v3 + 80);

    swift_beginAccess();
    v5 = swift_weakLoadStrong();
    if (v5)
    {
      v6 = *(v5 + 176);
      swift_unknownObjectRetain();
    }

    else
    {
      v6 = 0;
    }

    sub_20B7E42C0(v6);

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = swift_unknownObjectWeakLoadStrong();

    if (v7)
    {
      [*(v7 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_heartRateDiscoveryView) setHidden_];
      [*(v7 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_watchDiscoveryView) setHidden_];
      [*(v7 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_introSequenceView) setHidden_];
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v8 = swift_weakLoadStrong();
  if (v8)
  {
    v9 = *(v8 + 80);

    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v12 = OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_contentRatingsView;
      v13 = *(v10 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_contentRatingsView);
      if (v13)
      {
        v14 = [v13 layer];
        v15 = sub_20BB9A61C();
        [v14 addAnimation:v15 forKey:0];

        v16 = *(v11 + v12);
        if (v16)
        {
          [v16 setAlpha_];
        }
      }

      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  if (v17)
  {
    v18 = *(v17 + 80);

    sub_20B7E367C();
  }
}

uint64_t sub_20BBF364C(uint64_t a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_20C135F94();
  if ((result & 0x100000000) != 0)
  {
    if (result > 2u)
    {
      if (result - 3 >= 2)
      {
        swift_getObjectType();
        sub_20C138714();

        return sub_20BBFA2F4();
      }

      else
      {

        return sub_20BBF9564(5);
      }
    }

    else if (result - 1 >= 2)
    {

      return sub_20BBF3864(a1);
    }
  }

  else
  {
    sub_20C13B4A4();
    v7 = sub_20C13BB74();
    v8 = sub_20C13D1F4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20B517000, v7, v8, "MultiUserWorkoutUpdate: Unknown workout state encountered", v9, 2u);
      MEMORY[0x20F2F6A40](v9, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_20BBF3864(uint64_t a1)
{
  v2 = v1;
  v131 = sub_20C134864();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_20C136484();
  isa = v147[-1].isa;
  MEMORY[0x28223BE20](v147);
  v136 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAF8);
  MEMORY[0x28223BE20](v6 - 8);
  v144 = (&v128 - v7);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v138);
  v133 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v132 = &v128 - v10;
  MEMORY[0x28223BE20](v11);
  v141 = &v128 - v12;
  MEMORY[0x28223BE20](v13);
  v140 = &v128 - v14;
  MEMORY[0x28223BE20](v15);
  v137 = &v128 - v16;
  v17 = sub_20C135FA4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C13BB84();
  v146 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v139 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v128 - v24;
  MEMORY[0x28223BE20](v26);
  v135 = &v128 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v128 - v29;
  sub_20C13B594();
  (*(v18 + 16))(v20, a1, v17);

  v31 = sub_20C13BB74();
  v32 = sub_20C13D1F4();
  v145 = v2;

  v33 = os_log_type_enabled(v31, v32);
  v143 = v21;
  v134 = v25;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v152[0] = v128;
    *v34 = 136315394;
    sub_20BC026A4(&qword_27C76BC28, MEMORY[0x277D52470]);
    v35 = sub_20C13DFA4();
    v37 = v36;
    (*(v18 + 8))(v20, v17);
    v38 = sub_20B51E694(v35, v37, v152);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    v39 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workoutDeviceConnection;
    v40 = v145;
    swift_beginAccess();
    v41 = v40 + v39;
    v42 = v137;
    sub_20B52F9E8(v41, v137, &unk_27C765CB0);
    v43 = sub_20C13D8F4();
    v45 = v44;
    sub_20B520158(v42, &unk_27C765CB0);
    v46 = sub_20B51E694(v43, v45, v152);
    v47 = v143;

    *(v34 + 14) = v46;
    _os_log_impl(&dword_20B517000, v31, v32, "Client: Received %s, in watch state %s", v34, 0x16u);
    v48 = v128;
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v48, -1, -1);
    MEMORY[0x20F2F6A40](v34, -1, -1);

    v49 = *(v146 + 8);
    v49(v30, v47);
    v50 = v40;
  }

  else
  {

    (*(v18 + 8))(v20, v17);
    v49 = *(v146 + 8);
    v49(v30, v21);
    v50 = v145;
    v47 = v21;
  }

  v51 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_countdown;
  swift_beginAccess();
  v52 = v144;
  sub_20B52F9E8(v50 + v51, v144, &qword_27C76BAF8);
  v53 = sub_20C138284();
  LODWORD(v51) = (*(*(v53 - 8) + 48))(v52, 1, v53);
  sub_20B520158(v52, &qword_27C76BAF8);
  v54 = v147;
  if (v51 != 1)
  {
    v61 = v139;
    sub_20C13B594();
    v62 = sub_20C13BB74();
    v63 = sub_20C13D1F4();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_20B517000, v62, v63, "Client: Ignoring update because device already performed countdown", v64, 2u);
      MEMORY[0x20F2F6A40](v64, -1, -1);
    }

    return (v49)(v61, v47);
  }

  v144 = v49;
  v55 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workoutDeviceConnection;
  swift_beginAccess();
  v56 = v140;
  sub_20B52F9E8(v50 + v55, v140, &unk_27C765CB0);
  v57 = isa;
  v59 = (isa + 48);
  v58 = *(isa + 6);
  if (v58(v56, 1, v54))
  {
    sub_20B520158(v56, &unk_27C765CB0);
    v60 = 5;
  }

  else
  {
    v66 = v136;
    (*(v57 + 2))(v136, v56, v54);
    sub_20B520158(v56, &unk_27C765CB0);
    v67 = sub_20C136464();
    v68 = v57;
    v70 = v69;
    v72 = v71;
    (*(v68 + 1))(v66, v54);
    v148 = v67;
    v149 = v70;
    v150 = v72 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76B3D0);
    sub_20C133BD4();
    v54 = v147;
    sub_20B583F4C(v67, v70, v72 & 1);
    v60 = v151;
  }

  v73 = v141;
  sub_20B52F9E8(v50 + v55, v141, &unk_27C765CB0);
  if (v58(v73, 1, v54))
  {
    result = sub_20B520158(v73, &unk_27C765CB0);
    v74 = 4;
    if (v60 <= 2)
    {
LABEL_13:
      v75 = v135;
      sub_20C13B594();
      v76 = sub_20C13BB74();
      v77 = sub_20C13D1F4();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_20B517000, v76, v77, "Client: Delaying start of session because user's device isn't ready", v78, 2u);
        MEMORY[0x20F2F6A40](v78, -1, -1);
      }

      v79 = v75;
      return (v144)(v79, v143);
    }
  }

  else
  {
    v80 = isa;
    v81 = v136;
    (*(isa + 2))(v136, v73, v54);
    sub_20B520158(v73, &unk_27C765CB0);
    v82 = sub_20C136474();
    v147 = v59;
    v84 = v83;
    (*(v80 + 1))(v81, v54);
    v148 = v82;
    LOBYTE(v149) = v84 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BC10);
    result = sub_20C133BD4();
    v74 = v151;
    if (v60 <= 2)
    {
      goto LABEL_13;
    }
  }

  if (v60 != 3)
  {
    if (v60 == 4)
    {
LABEL_19:
      v85 = swift_allocObject();
      swift_weakInit();

      sub_20BBD96F8(sub_20BC01DC0, v85);
    }

    goto LABEL_21;
  }

  if ((v74 - 2) < 3)
  {
LABEL_21:
    v86 = v134;
    sub_20C13B594();

    v87 = sub_20C13BB74();
    v88 = sub_20C13D1D4();

    if (!os_log_type_enabled(v87, v88))
    {

      v79 = v86;
      return (v144)(v79, v143);
    }

    LODWORD(v141) = v88;
    v147 = v87;
    v89 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v151 = v140;
    *v89 = 136315394;
    v90 = v132;
    sub_20B52F9E8(v50 + v55, v132, &unk_27C765CB0);
    v139 = v58;
    if (v58(v90, 1, v54))
    {
      sub_20B520158(v90, &unk_27C765CB0);
      v91 = 0;
      v92 = 0;
    }

    else
    {
      v94 = isa;
      v95 = v136;
      (*(isa + 2))(v136, v90, v54);
      sub_20B520158(v90, &unk_27C765CB0);
      v96 = sub_20C136464();
      v98 = v97;
      v100 = v99;
      (*(v94 + 1))(v95, v54);
      v148 = v96;
      v149 = v98;
      v101 = v100 & 1;
      v150 = v100 & 1;
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76B3D0);
      v103 = sub_20BC01D58(&qword_27C76BC20, &unk_27C76B3D0);
      v91 = MEMORY[0x20F2EFA40](v102, v103);
      v92 = v104;
      sub_20B583F4C(v96, v98, v101);
    }

    v148 = v91;
    v149 = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
    v105 = sub_20C13D8F4();
    v107 = v106;

    v108 = sub_20B51E694(v105, v107, &v151);

    *(v89 + 4) = v108;
    *(v89 + 12) = 2080;
    v109 = v133;
    sub_20B52F9E8(v145 + v55, v133, &unk_27C765CB0);
    if ((v139)(v109, 1, v54))
    {
      sub_20B520158(v109, &unk_27C765CB0);
      v110 = 0;
      v111 = 0;
    }

    else
    {
      v112 = isa;
      v113 = v136;
      (*(isa + 2))(v136, v109, v54);
      sub_20B520158(v109, &unk_27C765CB0);
      v114 = sub_20C136474();
      v116 = v115;
      (*(v112 + 1))(v113, v54);
      v148 = v114;
      LOBYTE(v149) = v116 & 1;
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BC10);
      v118 = sub_20BC01D58(&qword_27C76BC18, &qword_27C76BC10);
      v110 = MEMORY[0x20F2EFA40](v117, v118);
      v111 = v119;
    }

    v121 = v143;
    v120 = v144;
    v148 = v110;
    v149 = v111;
    v122 = sub_20C13D8F4();
    v124 = v123;

    v125 = sub_20B51E694(v122, v124, &v151);

    *(v89 + 14) = v125;
    v126 = v147;
    _os_log_impl(&dword_20B517000, v147, v141, "Unexpected state: %s, %s", v89, 0x16u);
    v127 = v140;
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v127, -1, -1);
    MEMORY[0x20F2F6A40](v89, -1, -1);

    return v120(v134, v121);
  }

  if (!v74)
  {
    goto LABEL_19;
  }

  if (!*(v50 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_state))
  {
    __swift_project_boxed_opaque_existential_1((v50 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), *(v50 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24));
    sub_20C13CE94();
    v93 = v129;
    sub_20C134854();
    sub_20C13A464();
    sub_20C13A164();

    return (*(v130 + 8))(v93, v131);
  }

  return result;
}

uint64_t sub_20BBF488C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BBEF84C(1);
  }

  return result;
}

uint64_t sub_20BBF48E8()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_20C133364();
  if ((result & 0x100000000) != 0)
  {
    if (result - 1 <= 1)
    {

      return sub_20BBF9564(3);
    }
  }

  else
  {
    sub_20C13B4A4();
    v5 = sub_20C13BB74();
    v6 = sub_20C13D1F4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20B517000, v5, v6, "Unknown meditation state encountered", v7, 2u);
      MEMORY[0x20F2F6A40](v7, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20BBF4A70(uint64_t a1)
{
  v2 = v1;
  v23 = sub_20C13BB84();
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BBB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v13 = sub_20C137FE4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a1, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  v15 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workout;
  swift_beginAccess();
  sub_20B5DF2D4(v12, v2 + v15, &unk_27C768AC0);
  swift_endAccess();
  result = sub_20C137FD4();
  if ((result & 0x100000000) != 0)
  {
    if (result >= 2u)
    {
      if (result - 2 >= 2)
      {
        swift_getObjectType();
        sub_20C138714();
        v20 = v2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workoutSessionConfiguration;
        v21 = type metadata accessor for WorkoutSessionConfiguration();
        sub_20B52F9E8(v20 + *(v21 + 40), v9, &qword_27C76BBB0);
        v22 = sub_20C134A44();
        LODWORD(v20) = (*(*(v22 - 8) + 48))(v9, 1, v22);
        result = sub_20B520158(v9, &qword_27C76BBB0);
        if (v20 == 1)
        {
          return sub_20BBFA2F4();
        }
      }

      else
      {
        return sub_20BBF9564(12);
      }
    }
  }

  else
  {
    sub_20C13B4A4();
    v17 = sub_20C13BB74();
    v18 = sub_20C13D1F4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20B517000, v17, v18, "Unknown workout state encountered", v19, 2u);
      MEMORY[0x20F2F6A40](v19, -1, -1);
    }

    return (*(v4 + 8))(v6, v23);
  }

  return result;
}

uint64_t sub_20BBF4E04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v67 - v5;
  v73 = sub_20C135174();
  v7 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v67 - v11;
  v12 = sub_20C13BB84();
  MEMORY[0x28223BE20](v12);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v67 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v67 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v67 - v22;
  MEMORY[0x28223BE20](v24);
  v28 = &v67 - v27;
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_allowDistributedSessionBrokering) != 1)
  {
    v36 = sub_20C133CC4();
    sub_20BC026A4(&qword_27C766EF8, MEMORY[0x277D503C8]);
    v37 = swift_allocError();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D50340], v36);
    *(swift_allocObject() + 16) = v37;

    return sub_20C137CA4();
  }

  v71 = a1;
  v29 = *(v2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_platform);
  if (v29 > 1)
  {
    v69 = v26;
    v70 = v25;
    if (v29 == 2)
    {
      sub_20C13B4A4();
      v40 = sub_20C13BB74();
      v41 = sub_20C13D1D4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_20B517000, v40, v41, "Unsupported session presenter platform", v42, 2u);
        MEMORY[0x20F2F6A40](v42, -1, -1);
      }

      (*(v69 + 8))(v14, v70);
      v43 = sub_20C133CC4();
      sub_20BC026A4(&qword_27C766EF8, MEMORY[0x277D503C8]);
      v44 = swift_allocError();
      (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D50378], v43);
      *(swift_allocObject() + 16) = v44;
    }

    else
    {
      v68 = v2;
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_remoteBrowsingSource), *(v2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_remoteBrowsingSource + 24));
      sub_20C13B184();
      v49 = v73;
      if ((*(v7 + 48))(v6, 1, v73) != 1)
      {
        v56 = v72;
        (*(v7 + 32))(v72, v6, v49);
        sub_20C13B4A4();
        (*(v7 + 16))(v9, v56, v49);
        v57 = sub_20C13BB74();
        v58 = sub_20C13D1F4();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v74 = v67;
          *v59 = 136446210;
          sub_20BC026A4(&unk_27C76B9B0, MEMORY[0x277D515D0]);
          v60 = sub_20C13DFA4();
          v62 = v61;
          v63 = *(v7 + 8);
          v63(v9, v73);
          v64 = sub_20B51E694(v60, v62, &v74);
          v49 = v73;

          *(v59 + 4) = v64;
          _os_log_impl(&dword_20B517000, v57, v58, "Requesting distributed session from: %{public}s", v59, 0xCu);
          v65 = v67;
          __swift_destroy_boxed_opaque_existential_1(v67);
          MEMORY[0x20F2F6A40](v65, -1, -1);
          MEMORY[0x20F2F6A40](v59, -1, -1);
        }

        else
        {

          v63 = *(v7 + 8);
          v63(v9, v49);
        }

        (*(v69 + 8))(v20, v70);
        __swift_project_boxed_opaque_existential_1((v68 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), *(v68 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24));
        v66 = v72;
        sub_20C13A114();
        return (v63)(v66, v49);
      }

      sub_20B520158(v6, &unk_27C76BC00);
      sub_20C13B4A4();
      v50 = sub_20C13BB74();
      v51 = sub_20C13D1D4();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_20B517000, v50, v51, "Remote browsing source has no active participant", v52, 2u);
        MEMORY[0x20F2F6A40](v52, -1, -1);
      }

      (*(v69 + 8))(v17, v70);
      v53 = sub_20C133CC4();
      sub_20BC026A4(&qword_27C766EF8, MEMORY[0x277D503C8]);
      v54 = swift_allocError();
      (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D50370], v53);
      *(swift_allocObject() + 16) = v54;
    }

    return sub_20C137CA4();
  }

  v30 = v26;
  v31 = v25;
  v32 = v2;
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_platform))
  {
    sub_20C13B4A4();
    v46 = sub_20C13BB74();
    v47 = sub_20C13D1F4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_20B517000, v46, v47, "Brokering with same account watch...", v48, 2u);
      MEMORY[0x20F2F6A40](v48, -1, -1);
    }

    (*(v30 + 8))(v23, v31);
    __swift_project_boxed_opaque_existential_1((v32 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), *(v32 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24));
  }

  else
  {
    sub_20C13B4A4();
    v33 = sub_20C13BB74();
    v34 = sub_20C13D1F4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_20B517000, v33, v34, "Brokering with paired companion...", v35, 2u);
      MEMORY[0x20F2F6A40](v35, -1, -1);
    }

    (*(v30 + 8))(v28, v31);
    __swift_project_boxed_opaque_existential_1((v32 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), *(v32 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24));
  }

  return sub_20C13A104();
}

id sub_20BBF5834()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v105 = v100 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070);
  MEMORY[0x28223BE20](v2 - 8);
  v104 = v100 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v103 = v100 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v6 - 8);
  v102 = v100 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  MEMORY[0x28223BE20](v8 - 8);
  v101 = v100 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  MEMORY[0x28223BE20](v10 - 8);
  v120 = v100 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  MEMORY[0x28223BE20](v12 - 8);
  v117 = v100 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0);
  MEMORY[0x28223BE20](v14 - 8);
  v116 = v100 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v16 - 8);
  v115 = v100 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0);
  MEMORY[0x28223BE20](v18 - 8);
  v114 = v100 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00);
  MEMORY[0x28223BE20](v20 - 8);
  v119 = v100 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0);
  MEMORY[0x28223BE20](v22 - 8);
  v118 = v100 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v24 - 8);
  v126 = v100 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
  MEMORY[0x28223BE20](v26 - 8);
  v125 = v100 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20);
  MEMORY[0x28223BE20](v28 - 8);
  v124 = v100 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  MEMORY[0x28223BE20](v30 - 8);
  v121 = v100 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v32 - 8);
  v122 = v100 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v34 - 8);
  v123 = v100 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = v100 - v37;
  v106 = v100 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = v100 - v40;
  v107 = v100 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = v100 - v43;
  v108 = v100 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = v100 - v46;
  v109 = v100 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v48 - 8);
  v50 = v100 - v49;
  v110 = v100 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = v100 - v52;
  v111 = v100 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v54 - 8);
  v56 = v100 - v55;
  v112 = v100 - v55;
  v57 = sub_20C13BB84();
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v60 = v100 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v58 + 8))(v60, v57);
  v61 = *(v113 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24);
  v100[1] = *(v113 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 32);
  v100[3] = __swift_project_boxed_opaque_existential_1((v113 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), v61);
  v100[2] = sub_20C13A464();
  v62 = sub_20C133D84();
  (*(*(v62 - 8) + 56))(v56, 1, 1, v62);
  v63 = sub_20C135854();
  (*(*(v63 - 8) + 56))(v53, 1, 1, v63);
  v64 = sub_20C136194();
  (*(*(v64 - 8) + 56))(v50, 1, 1, v64);
  v65 = sub_20C133DD4();
  (*(*(v65 - 8) + 56))(v47, 1, 1, v65);
  v66 = sub_20C135274();
  (*(*(v66 - 8) + 56))(v44, 1, 1, v66);
  v67 = sub_20C134514();
  (*(*(v67 - 8) + 56))(v41, 1, 1, v67);
  v68 = sub_20C133B04();
  (*(*(v68 - 8) + 56))(v38, 1, 1, v68);
  v69 = sub_20C134C04();
  (*(*(v69 - 8) + 56))(v123, 1, 1, v69);
  v70 = sub_20C1368F4();
  (*(*(v70 - 8) + 56))(v122, 1, 1, v70);
  v71 = sub_20C134914();
  (*(*(v71 - 8) + 56))(v121, 1, 1, v71);
  v72 = sub_20C133374();
  (*(*(v72 - 8) + 56))(v124, 1, 1, v72);
  v73 = sub_20C135B74();
  (*(*(v73 - 8) + 56))(v125, 1, 1, v73);
  v74 = sub_20C134CD4();
  (*(*(v74 - 8) + 56))(v126, 1, 1, v74);
  v75 = sub_20C136EB4();
  (*(*(v75 - 8) + 56))(v118, 1, 1, v75);
  v76 = sub_20C133494();
  (*(*(v76 - 8) + 56))(v119, 1, 1, v76);
  sub_20C13CE94();
  v127 = 1;
  v77 = v114;
  sub_20C134574();
  v78 = sub_20C134594();
  (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
  v79 = sub_20C138184();
  (*(*(v79 - 8) + 56))(v115, 1, 1, v79);
  v80 = sub_20C1363D4();
  (*(*(v80 - 8) + 56))(v116, 1, 1, v80);
  v81 = sub_20C1337A4();
  (*(*(v81 - 8) + 56))(v117, 1, 1, v81);
  v82 = sub_20C1337D4();
  (*(*(v82 - 8) + 56))(v120, 1, 1, v82);
  v83 = sub_20C134A94();
  v84 = v101;
  (*(*(v83 - 8) + 56))(v101, 1, 1, v83);
  v85 = sub_20C135364();
  v86 = v102;
  (*(*(v85 - 8) + 56))(v102, 1, 1, v85);
  v87 = sub_20C136484();
  v88 = v103;
  (*(*(v87 - 8) + 56))(v103, 1, 1, v87);
  v89 = sub_20C136784();
  v90 = v104;
  (*(*(v89 - 8) + 56))(v104, 1, 1, v89);
  v91 = sub_20C137FE4();
  v92 = v105;
  (*(*(v91 - 8) + 56))(v105, 1, 1, v91);
  v93 = v114;
  v94 = v119;
  v95 = v118;
  sub_20C13A174();

  sub_20B520158(v92, &unk_27C768AC0);
  sub_20B520158(v90, &unk_27C765070);
  sub_20B520158(v88, &unk_27C765CB0);
  sub_20B520158(v86, &unk_27C765080);
  sub_20B520158(v84, &unk_27C768AD0);
  sub_20B520158(v120, &unk_27C765090);
  sub_20B520158(v117, &unk_27C768AE0);
  sub_20B520158(v116, &unk_27C7650A0);
  sub_20B520158(v115, &unk_27C768AF0);
  sub_20B520158(v93, &unk_27C7650B0);
  sub_20B520158(v94, &unk_27C768B00);
  sub_20B520158(v95, &unk_27C7650C0);
  sub_20B520158(v126, &unk_27C768B10);
  sub_20B520158(v125, &unk_27C7650D0);
  sub_20B520158(v124, &unk_27C768B20);
  sub_20B520158(v121, &unk_27C7650E0);
  sub_20B520158(v122, &unk_27C767260);
  sub_20B520158(v123, &unk_27C7650F0);
  sub_20B520158(v106, &qword_27C768B30);
  sub_20B520158(v107, &unk_27C765050);
  sub_20B520158(v108, &unk_27C765100);
  sub_20B520158(v109, &unk_27C7687F0);
  sub_20B520158(v110, &unk_27C765110);
  sub_20B520158(v111, &unk_27C76BBF0);
  sub_20B520158(v112, &unk_27C765120);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_20BBF9564(0);
  }

  v97 = Strong;
  [*(Strong + OBJC_IVAR____TtC9SeymourUI21SessionViewController_castingView) removeFromSuperview];
  result = [v97 view];
  if (result)
  {
    v99 = result;
    [result addSubview_];

    sub_20BFE31BC();
    swift_unknownObjectRelease();
    return sub_20BBF9564(0);
  }

  __break(1u);
  return result;
}

uint64_t sub_20BBF6BA4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v113 = &v102 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v108 = *(v4 - 8);
  v109 = v4;
  MEMORY[0x28223BE20](v4);
  v103 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v105 = &v102 - v7;
  MEMORY[0x28223BE20](v8);
  v106 = &v102 - v9;
  v102 = v10;
  MEMORY[0x28223BE20](v11);
  v107 = &v102 - v12;
  v111 = sub_20C13A484();
  MEMORY[0x28223BE20](v111);
  v14 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v102 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v102 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v102 - v22;
  v24 = sub_20C13BB84();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v110 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v104 = &v102 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v102 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v102 - v33;
  sub_20C13B4A4();
  sub_20C13BB64();
  v35 = *(v25 + 8);
  v112 = v24;
  v36 = (v25 + 8);
  v37 = v35;
  v114 = v36;
  v35(v34, v24);
  sub_20C137E44();
  v38 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workoutDeviceConnection;
  swift_beginAccess();
  sub_20B5DF2D4(v23, v1 + v38, &unk_27C765CB0);
  swift_endAccess();
  sub_20C137E84();
  v39 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_playback;
  swift_beginAccess();
  sub_20B5DF2D4(v20, v1 + v39, &unk_27C768AF0);
  swift_endAccess();
  sub_20C137DE4();
  v40 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_gymKitConnection;
  swift_beginAccess();
  sub_20B5DF2D4(v17, v1 + v40, &unk_27C7650F0);
  swift_endAccess();
  v41 = sub_20C138104();
  if (v41 != sub_20C138104())
  {
    v42 = [objc_opt_self() sharedApplication];
    [v42 setIdleTimerDisabled_];
  }

  sub_20BC023F4(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionOrigin, v14, MEMORY[0x277D4DFB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = v110;
    sub_20C13B4A4();
    v44 = sub_20C13BB74();
    v45 = sub_20C13D1C4();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v112;
    if (v46)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_20B517000, v44, v45, "SessionPresenter:onSessionActivated, sessionOrigin: CASTING", v48, 2u);
      MEMORY[0x20F2F6A40](v48, -1, -1);
    }

    v37(v43, v47);
    v49 = sub_20C137EA4();
    (*(*(v49 - 8) + 8))(v14, v49);
  }

  else
  {
    sub_20BC0245C(v14, MEMORY[0x277D4DFB8]);
    sub_20C13B4A4();
    v50 = sub_20C13BB74();
    v51 = sub_20C13D1C4();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v112;
    if (v52)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_20B517000, v50, v51, "SessionPresenter:onSessionActivated, sessionOrigin: LOCAL", v54, 2u);
      MEMORY[0x20F2F6A40](v54, -1, -1);
    }

    v37(v31, v53);
    v55 = v1[9];
    v57 = v1[22];
    v56 = v1[23];
    v58 = swift_allocObject();
    swift_weakInit();
    v59 = *(v57 + 56);
    *(v57 + 56) = sub_20BC0017C;
    *(v57 + 64) = v58;
    swift_unknownObjectRetain();

    sub_20B583ECC(v59);

    v60 = v55 + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v62 = *(v60 + 8);
      v63 = Strong;
      ObjectType = swift_getObjectType();
      (*(v62 + 64))(v57, v56, ObjectType, v62);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v65 = swift_unknownObjectWeakLoadStrong();
    if (v65)
    {
      v66 = v65;
      v67 = *(v60 + 8);
      v68 = swift_getObjectType();
      (*(v67 + 16))(1, 0, v68, v67);
    }

    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_remoteBrowsingSource), *(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_remoteBrowsingSource + 24));
    v69 = sub_20C13B194();
    if ((v69 - 2) >= 2)
    {
      if (v69)
      {
        v78 = v105;
        sub_20BBE92F4(1, v105);
        v79 = swift_allocObject();
        swift_weakInit();
        v81 = v108;
        v80 = v109;
        v82 = *(v108 + 16);
        v112 = v108 + 16;
        v114 = v82;
        v83 = v103;
        v82(v103, v78, v109);
        v84 = (*(v81 + 80) + 16) & ~*(v81 + 80);
        v111 = *(v81 + 80);
        v85 = (v102 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
        v86 = swift_allocObject();
        v110 = *(v81 + 32);
        (v110)(v86 + v84, v83, v80);
        v87 = (v86 + v85);
        *v87 = sub_20BC00184;
        v87[1] = v79;
        v88 = v106;
        sub_20C137C94();
        v108 = *(v81 + 8);
        v89 = v105;
        (v108)(v105, v80);
        v90 = swift_allocObject();
        swift_weakInit();
        v91 = swift_allocObject();
        *(v91 + 16) = sub_20BC0018C;
        *(v91 + 24) = v90;
        v114(v89, v88, v80);
        v92 = swift_allocObject();
        (v110)(v92 + v84, v89, v80);
        v93 = (v92 + v85);
        *v93 = sub_20B5DF204;
        v93[1] = v91;
        v94 = v107;
        sub_20C137C94();
        v95 = v108;
        (v108)(v106, v80);
        v96 = sub_20C137CB4();
        v97 = swift_allocObject();
        *(v97 + 16) = 0;
        *(v97 + 24) = 0;
        v96(sub_20B5DF6DC, v97);

        v95(v94, v80);
      }

      else
      {
        v74 = v107;
        sub_20BBE92F4(0, v107);
        v75 = v109;
        v76 = sub_20C137CB4();
        v77 = swift_allocObject();
        *(v77 + 16) = 0;
        *(v77 + 24) = 0;
        v76(sub_20B52347C, v77);

        (*(v108 + 8))(v74, v75);
      }
    }

    else
    {
      v70 = v104;
      sub_20C13B4A4();
      v71 = sub_20C13BB74();
      v72 = sub_20C13D1D4();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_20B517000, v71, v72, "Unsupported remote participant device.", v73, 2u);
        MEMORY[0x20F2F6A40](v73, -1, -1);
      }

      v37(v70, v53);
    }
  }

  v98 = v113;
  sub_20C132E84();
  v99 = sub_20C132E94();
  (*(*(v99 - 8) + 56))(v98, 0, 1, v99);
  v100 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_startDate;
  swift_beginAccess();
  sub_20B5DF2D4(v98, v1 + v100, &qword_27C762AC0);
  return swift_endAccess();
}

uint64_t sub_20BBF7850@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  sub_20C13B4A4();
  v10 = a1;
  v11 = sub_20C13BB74();
  v12 = sub_20C13D1D4();

  v13 = os_log_type_enabled(v11, v12);
  v34 = v6;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v33 = v3;
    v15 = v4;
    v16 = v14;
    v17 = swift_slowAlloc();
    v38[0] = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = MEMORY[0x20F2F5850](v36, v37);
    v20 = sub_20B51E694(v18, v19, v38);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_20B517000, v11, v12, "Failed to present device discovery: %s. Configuring standalone workout.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x20F2F6A40](v17, -1, -1);
    v21 = v16;
    v4 = v15;
    v3 = v33;
    MEMORY[0x20F2F6A40](v21, -1, -1);
  }

  v22 = *(v4 + 8);
  v22(v9, v3);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BBEA5F8();
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_11;
  }

  swift_getErrorValue();
  v23 = sub_20C133CC4();
  v38[3] = v23;
  v38[4] = sub_20BC026A4(&qword_27C76BBB8, MEMORY[0x277D503C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(*(v23 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D50368], v23);
  v25 = sub_20C13E0D4();
  __swift_destroy_boxed_opaque_existential_1(v38);
  if ((v25 & 1) == 0)
  {

LABEL_11:
    *(swift_allocObject() + 16) = a1;
    v31 = a1;
    return sub_20C137CA4();
  }

  v26 = v34;
  sub_20C13B4A4();
  v27 = sub_20C13BB74();
  v28 = sub_20C13D1D4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_20B517000, v27, v28, "No supported watch. Looking for heart rate monitor.", v29, 2u);
    MEMORY[0x20F2F6A40](v29, -1, -1);
  }

  v22(v26, v3);
  sub_20BBE99B0(v35);
}

uint64_t sub_20BBF7C80(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v46 = sub_20C1344C4();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v40[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = sub_20C13BB84();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v40[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v40[-v5];
  swift_getErrorValue();
  v7 = sub_20C133CC4();
  v54 = v7;
  v8 = sub_20BC026A4(&qword_27C76BBB8, MEMORY[0x277D503C8]);
  v55 = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
  v10 = *(*(v7 - 8) + 104);
  v10(boxed_opaque_existential_1, *MEMORY[0x277D503A0], v7);
  v11 = sub_20C13E0D4();
  __swift_destroy_boxed_opaque_existential_1(v52);
  if (v11)
  {
    sub_20C13B4A4();
    v12 = sub_20C13BB74();
    v13 = sub_20C13D1D4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20B517000, v12, v13, "No supported heart rate monitor.", v14, 2u);
      MEMORY[0x20F2F6A40](v14, -1, -1);
    }

    (*(v48 + 8))(v6, v49);
  }

  else
  {
    swift_getErrorValue();
    v54 = v7;
    v55 = v8;
    v15 = __swift_allocate_boxed_opaque_existential_1(v52);
    v10(v15, *MEMORY[0x277D50388], v7);
    v16 = sub_20C13E0D4();
    __swift_destroy_boxed_opaque_existential_1(v52);
    if (v16)
    {
      v17 = v47;
      sub_20C13B4A4();

      v18 = sub_20C13BB74();
      v19 = sub_20C13D1D4();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v51[0] = v42;
        v43 = v20;
        *v20 = 136315138;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v22 = v45;
          v23 = v44;
          v24 = v46;
          (*(v45 + 16))(v44, Strong + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_catalogWorkout, v46);

          v25 = sub_20C1344B4();
          v27 = v26;
          v41 = v19;
          v29 = v28;
          (*(v22 + 8))(v23, v24);
          v30 = v29 & 1;
          LOBYTE(v19) = v41;
        }

        else
        {
          v25 = 0;
          v27 = 0;
          v30 = -1;
        }

        v52[0] = v25;
        v52[1] = v27;
        v53 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBC0);
        v31 = sub_20C13D8F4();
        v33 = v32;
        sub_20B584078(v25, v27, v30);
        v34 = sub_20B51E694(v31, v33, v51);

        v35 = v43;
        *(v43 + 1) = v34;
        _os_log_impl(&dword_20B517000, v18, v19, "%s does not support heart rate devices.", v35, 0xCu);
        v36 = v42;
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x20F2F6A40](v36, -1, -1);
        MEMORY[0x20F2F6A40](v35, -1, -1);
      }

      (*(v48 + 8))(v17, v49);
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v38 = result;
    v39 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_20BC0150C(v38, v39, 0.75);
  }

  return result;
}

uint64_t sub_20BBF8274(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_20BBF82D4(uint64_t a1)
{
  v3 = type metadata accessor for PageAlertAction();
  v4 = *(v3 - 8);
  v91 = v3;
  v92 = v4;
  MEMORY[0x28223BE20](v3);
  v93 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  MEMORY[0x28223BE20](v6 - 8);
  v97 = &v90 - v7;
  v8 = sub_20C1337D4();
  v100 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v99 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v10 - 8);
  v101 = &v90 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BBB0);
  MEMORY[0x28223BE20](v12 - 8);
  v96 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v95 = &v90 - v15;
  v16 = sub_20C137EA4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C13BB84();
  v102 = *(v20 - 8);
  v103 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v90 - v24;
  v98 = v1;
  sub_20C13A464();
  v26 = sub_20C13A324();
  v28 = v27;

  v104 = a1;
  if (v26 == sub_20C137D24() && v28 == v29)
  {

LABEL_5:
    sub_20C13B4A4();
    (*(v17 + 16))(v19, v104, v16);
    v31 = sub_20C13BB74();
    v32 = sub_20C13D1F4();
    v33 = os_log_type_enabled(v31, v32);
    v94 = v8;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v105 = v35;
      *v34 = 136446210;
      v36 = sub_20C137D34();
      v38 = v37;
      (*(v17 + 8))(v19, v16);
      v39 = sub_20B51E694(v36, v38, &v105);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_20B517000, v31, v32, "Received session deactivation for session: %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x20F2F6A40](v35, -1, -1);
      MEMORY[0x20F2F6A40](v34, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v19, v16);
    }

    (*(v102 + 8))(v25, v103);
    v40 = v98;
    v41 = v98 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workoutSessionConfiguration;
    v42 = *(type metadata accessor for WorkoutSessionConfiguration() + 40);
    v43 = v95;
    sub_20B52F9E8(v41 + v42, v95, &qword_27C76BBB0);
    v44 = sub_20C134A44();
    v45 = *(*(v44 - 8) + 48);
    v46 = v45(v43, 1, v44);
    sub_20B520158(v43, &qword_27C76BBB0);
    v47 = v46 == 1;
    v48 = v101;
    if (v47)
    {
      sub_20C13CDC4();
      v49 = sub_20C13CDF4();
      (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
      v50 = swift_allocObject();
      v50[2] = 0;
      v50[3] = 0;
      v50[4] = v40;

      sub_20B6383D0(0, 0, v48, &unk_20C172480, v50);
    }

    sub_20BBF9564(9);
    v51 = v41 + v42;
    v52 = v96;
    sub_20B52F9E8(v51, v96, &qword_27C76BBB0);
    v53 = v45(v52, 1, v44);
    sub_20B520158(v52, &qword_27C76BBB0);
    if (v53 == 1)
    {
      v54 = [objc_opt_self() sharedApplication];
      [v54 setIdleTimerDisabled_];
    }

    v55 = v97;
    sub_20C137D44();
    v56 = v100;
    v57 = v94;
    v58 = (*(v100 + 48))(v55, 1, v94);
    v59 = v99;
    if (v58 == 1)
    {
      sub_20B520158(v55, &unk_27C765090);
    }

    else
    {
      (*(v56 + 32))(v99, v55, v57);
      v60 = sub_20C1337C4();
      if ((v60 & 0x100000000) != 0 && v60 == 2)
      {
        type metadata accessor for SeymourLocalizationBundle();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v62 = objc_opt_self();
        v63 = [v62 bundleForClass_];
        v64 = sub_20C132964();
        v66 = v65;

        v67 = swift_allocObject();
        swift_weakInit();
        v68 = v93;
        sub_20C132ED4();
        v69 = v91;
        v70 = (v68 + *(v91 + 24));
        *v70 = v64;
        v70[1] = v66;
        *(v68 + *(v69 + 20)) = 2;
        v71 = (v68 + *(v69 + 28));
        *v71 = sub_20BBFF3E8;
        v71[1] = v67;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240);
        v72 = (*(v92 + 80) + 32) & ~*(v92 + 80);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_20C14F980;
        sub_20BC023F4(v68, v73 + v72, type metadata accessor for PageAlertAction);
        v74 = [v62 bundleForClass_];
        v75 = sub_20C132964();
        v77 = v76;

        type metadata accessor for DefaultPageAlertPresenter();
        v78 = swift_allocObject();
        *(v78 + 24) = 0;
        swift_unknownObjectWeakInit();
        v79 = MEMORY[0x277D84F90];
        *(v78 + 32) = v73;
        *(v78 + 40) = v79;
        *(v78 + 48) = v75;
        *(v78 + 56) = v77;
        *(v78 + 64) = 0;
        *(v78 + 72) = 0;
        *(v78 + 80) = 1;
        *(v78 + 88) = 0;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          sub_20BC01208(v78, 0, 0, Strong, sub_20BBFF48C, &block_descriptor_98);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v85 = v100;
        v48 = v101;
        v86 = v94;
        v87 = v99;
        sub_20BC0245C(v93, type metadata accessor for PageAlertAction);
        (*(v85 + 8))(v87, v86);
      }

      else
      {
        (*(v56 + 8))(v59, v57);
      }
    }

    v88 = sub_20C13CDF4();
    (*(*(v88 - 8) + 56))(v48, 1, 1, v88);
    v89 = swift_allocObject();
    v89[2] = 0;
    v89[3] = 0;
    v89[4] = v40;

    sub_20B6383D0(0, 0, v48, &unk_20C172490, v89);
  }

  v30 = sub_20C13DFF4();

  if (v30)
  {
    goto LABEL_5;
  }

  sub_20C13B4A4();
  v81 = sub_20C13BB74();
  v82 = sub_20C13D1F4();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_20B517000, v81, v82, "Ignoring session deactivation because of session identifier mismatch", v83, 2u);
    MEMORY[0x20F2F6A40](v83, -1, -1);
  }

  return (*(v102 + 8))(v22, v103);
}

uint64_t sub_20BBF8EAC()
{
  *(v0 + 24) = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_audioSessionCoordinator);
  sub_20C138F44();
  sub_20BC026A4(&qword_27C76C6B0, MEMORY[0x277D541D0]);
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BBF8F74, v2, v1);
}

uint64_t sub_20BBF8F74()
{
  sub_20C138F04();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BBF8FD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C13C4B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13C4F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51C88C(0, &qword_281100530);
  v11 = sub_20C13D374();
  aBlock[4] = sub_20BC02DD0;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_101;
  v12 = _Block_copy(aBlock);

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20BC026A4(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v10, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_20BBF9284()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      [Strong setNeedsFocusUpdate];
      [Strong updateFocusIfNeeded];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20BBF9330()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_heartRateDeviceDiscovery);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_20BBF935C, v1, 0);
}

uint64_t sub_20BBF935C()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_state);
  os_unfair_lock_lock(v1 + 11);
  sub_20BC00160(&v1[4]);
  os_unfair_lock_unlock(v1 + 11);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20BBF9400()
{
  v1 = v0;
  sub_20B680FD8(*(v0 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_isPictureInPictureAllowed));
  sub_20B681628();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20BFE7490(0.83);
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 112);
  if (v2 && *(v2 + OBJC_IVAR____TtC9SeymourUI19AudioFocusPresenter_cachedMenu))
  {
    sub_20C0E80BC();
  }

  if (*(*(v1 + 120) + 184))
  {
    sub_20B935BE8();
  }

  sub_20B8BFB80();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    [*(result + OBJC_IVAR____TtC9SeymourUI21SessionViewController_introSequenceView) removeFromSuperview];
    [*&v4[OBJC_IVAR____TtC9SeymourUI21SessionViewController_backgroundView] removeFromSuperview];
    [*&v4[OBJC_IVAR____TtC9SeymourUI21SessionViewController_instructionsView] removeFromSuperview];
    [*&v4[OBJC_IVAR____TtC9SeymourUI21SessionViewController_heartRateDiscoveryView] removeFromSuperview];
    [*&v4[OBJC_IVAR____TtC9SeymourUI21SessionViewController_watchDiscoveryView] removeFromSuperview];
    v4[OBJC_IVAR____TtC9SeymourUI21SessionViewController_introSequenceCompleted] = 1;
    [v4 setNeedsUpdateOfHomeIndicatorAutoHidden];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BBF9564(int a1)
{
  v2 = v1;
  LODWORD(v124) = a1;
  v3 = sub_20C138184();
  v110 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v108 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v5 - 8);
  v109 = &v106 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  MEMORY[0x28223BE20](v7 - 8);
  v114 = &v106 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BBB0);
  MEMORY[0x28223BE20](v9 - 8);
  v116 = &v106 - v10;
  v119 = sub_20C13A484();
  MEMORY[0x28223BE20](v119);
  v118 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAF8);
  MEMORY[0x28223BE20](v12 - 8);
  v120 = &v106 - v13;
  v14 = sub_20C13C554();
  v122 = *(v14 - 8);
  v123 = v14;
  MEMORY[0x28223BE20](v14);
  v121 = (&v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_20C13BB84();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v117 = &v106 - v21;
  MEMORY[0x28223BE20](v22);
  v115 = &v106 - v23;
  MEMORY[0x28223BE20](v24);
  v113 = &v106 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v106 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v106 - v30;
  sub_20C13B4A4();
  sub_20C13BB64();
  v34 = *(v17 + 8);
  v33 = v17 + 8;
  v32 = v34;
  v34(v31, v16);
  sub_20C13B4A4();

  v35 = sub_20C13BB74();
  v36 = sub_20C13D1F4();

  v37 = os_log_type_enabled(v35, v36);
  v111 = v3;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v106 = v19;
    v39 = v38;
    v40 = swift_slowAlloc();
    v112 = v33;
    v41 = v40;
    v126[0] = v40;
    *v39 = 136315394;
    sub_20C13A464();
    v42 = sub_20C13A324();
    v107 = v2;
    v43 = v42;
    v44 = v32;
    v45 = v16;
    v47 = v46;

    v48 = sub_20B51E694(v43, v47, v126);
    v16 = v45;
    v32 = v44;

    *(v39 + 4) = v48;
    *(v39 + 12) = 2080;
    v49 = v124;
    v50 = sub_20BBB215C(v124);
    v52 = sub_20B51E694(v50, v51, v126);

    *(v39 + 14) = v52;
    v2 = v107;
    _os_log_impl(&dword_20B517000, v35, v36, "transitionToPostSession for session identifier %s end reason: %s", v39, 0x16u);
    swift_arrayDestroy();
    v53 = v41;
    v33 = v112;
    MEMORY[0x20F2F6A40](v53, -1, -1);
    v54 = v39;
    v19 = v106;
    MEMORY[0x20F2F6A40](v54, -1, -1);

    v32(v28, v16);
  }

  else
  {

    v32(v28, v16);
    v49 = v124;
  }

  v55 = *(v2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_onTransitioningToPostSession);
  if (v55)
  {

    v55(v49);
    sub_20B583ECC(v55);
  }

  sub_20B679434();
  sub_20B6819CC();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v57 = Strong;
    sub_20B51C88C(0, &qword_281100530);
    v58 = sub_20C13D374();
    v60 = v121;
    v59 = v122;
    *v121 = v58;
    v61 = v123;
    (*(v59 + 104))(v60, *MEMORY[0x277D85200], v123);
    v62 = sub_20C13C584();
    result = (*(v59 + 8))(v60, v61);
    if ((v62 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    [v57 dismissViewControllerAnimated:0 completion:0];
    swift_unknownObjectRelease();
  }

  if (*(v2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_state) == 2)
  {
    sub_20C13B4A4();
    v64 = sub_20C13BB74();
    v65 = sub_20C13D1F4();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_20B517000, v64, v65, "Already transitioned to post session", v66, 2u);
      MEMORY[0x20F2F6A40](v66, -1, -1);
    }

    return (v32)(v19, v16);
  }

  *(v2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_state) = 2;
  v67 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_countdown;
  swift_beginAccess();
  v68 = v2 + v67;
  v69 = v120;
  sub_20B52F9E8(v68, v120, &qword_27C76BAF8);
  v70 = sub_20C138284();
  v71 = (*(*(v70 - 8) + 48))(v69, 1, v70);
  sub_20B520158(v69, &qword_27C76BAF8);
  if (v71 == 1)
  {
    v72 = v117;
    sub_20C13B4A4();
    v73 = sub_20C13BB74();
    v74 = sub_20C13D1F4();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      v76 = "Session hasn't started countdown, dismissing";
LABEL_19:
      _os_log_impl(&dword_20B517000, v73, v74, v76, v75, 2u);
      MEMORY[0x20F2F6A40](v75, -1, -1);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v77 = v118;
  sub_20BC023F4(v2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionOrigin, v118, MEMORY[0x277D4DFB8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_20BC0245C(v77, MEMORY[0x277D4DFB8]);
  if (EnumCaseMultiPayload == 1)
  {
    v72 = v115;
    sub_20C13B4A4();
    v73 = sub_20C13BB74();
    v74 = sub_20C13D1F4();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      v76 = "Casting session, skipping summary presentation and archival";
      goto LABEL_19;
    }

LABEL_20:

    v32(v72, v16);
    return sub_20BBFA2F4();
  }

  v79 = v2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workoutSessionConfiguration;
  v80 = v79 + *(type metadata accessor for WorkoutSessionConfiguration() + 40);
  v81 = v116;
  sub_20B52F9E8(v80, v116, &qword_27C76BBB0);
  v82 = sub_20C134A44();
  v83 = (*(*(v82 - 8) + 48))(v81, 1, v82);
  sub_20B520158(v81, &qword_27C76BBB0);
  if (v83 == 1)
  {
    v84 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workout;
    swift_beginAccess();
    v85 = v2 + v84;
    v86 = v114;
    sub_20B52F9E8(v85, v114, &unk_27C768AC0);
    v87 = MEMORY[0x20F2EF470](v86, v2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_standaloneWorkoutTimeProvider);
    sub_20B520158(v86, &unk_27C768AC0);
    if ((v87 & 1) == 0)
    {
      v124 = v32;
      v91 = v113;
      sub_20C13B4A4();

      v92 = sub_20C13BB74();
      v93 = sub_20C13D1F4();

      if (os_log_type_enabled(v92, v93))
      {
        v112 = v33;
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v125 = v95;
        *v94 = 136446210;
        v96 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_playback;
        swift_beginAccess();
        v97 = v109;
        sub_20B52F9E8(v2 + v96, v109, &unk_27C768AF0);
        v98 = v110;
        v99 = v111;
        if ((*(v110 + 48))(v97, 1, v111))
        {
          sub_20B520158(v97, &unk_27C768AF0);
          v100 = 0xE300000000000000;
          v101 = 7104878;
        }

        else
        {
          v102 = v108;
          (*(v98 + 16))(v108, v97, v99);
          sub_20B520158(v97, &unk_27C768AF0);
          v103 = v98;
          v123 = sub_20C138114();
          v100 = v104;
          (*(v103 + 8))(v102, v99);
          v101 = v123;
        }

        v105 = sub_20B51E694(v101, v100, &v125);

        *(v94 + 4) = v105;
        _os_log_impl(&dword_20B517000, v92, v93, "Playback did not meet minimum threshold for summary and archival. Playback: %{public}s", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v95);
        MEMORY[0x20F2F6A40](v95, -1, -1);
        MEMORY[0x20F2F6A40](v94, -1, -1);

        v124(v113, v16);
      }

      else
      {

        v124(v91, v16);
      }

      return sub_20BBFA2F4();
    }
  }

  v88 = *(v2 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_onWillPresentSessionSummary);
  if (v88)
  {

    v88(v89);
    sub_20B583ECC(v88);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20BFE6870();
    swift_unknownObjectRelease();
  }

  v90 = swift_unknownObjectWeakLoadStrong();
  if (v90)
  {
    [v90 removeFromSuperview];
    swift_unknownObjectRelease();
  }

  sub_20BB31760();
  return sub_20B8BA404();
}

uint64_t sub_20BBFA2F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BBB0);
  MEMORY[0x28223BE20](v2 - 8);
  v169 = &v169 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  MEMORY[0x28223BE20](v4 - 8);
  v182 = &v169 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070);
  MEMORY[0x28223BE20](v6 - 8);
  v181 = &v169 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v180 = &v169 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v10 - 8);
  v179 = &v169 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  MEMORY[0x28223BE20](v12 - 8);
  v178 = &v169 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  MEMORY[0x28223BE20](v14 - 8);
  v177 = &v169 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0);
  MEMORY[0x28223BE20](v16 - 8);
  v184 = &v169 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v18 - 8);
  v186 = &v169 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0);
  MEMORY[0x28223BE20](v20 - 8);
  v187 = &v169 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00);
  MEMORY[0x28223BE20](v22 - 8);
  v202 = &v169 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0);
  MEMORY[0x28223BE20](v24 - 8);
  v201 = &v169 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v26 - 8);
  v188 = &v169 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
  MEMORY[0x28223BE20](v28 - 8);
  v200 = &v169 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20);
  MEMORY[0x28223BE20](v30 - 8);
  v199 = &v169 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  MEMORY[0x28223BE20](v32 - 8);
  v198 = &v169 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v34 - 8);
  v197 = &v169 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v36 - 8);
  v196 = &v169 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  MEMORY[0x28223BE20](v38 - 8);
  v195 = &v169 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  MEMORY[0x28223BE20](v40 - 8);
  v194 = &v169 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  MEMORY[0x28223BE20](v42 - 8);
  v193 = &v169 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  MEMORY[0x28223BE20](v44 - 8);
  v192 = &v169 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v46 - 8);
  v191 = &v169 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0);
  MEMORY[0x28223BE20](v48 - 8);
  v190 = &v169 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v50 - 8);
  v189 = &v169 - v51;
  v183 = sub_20C13A484();
  MEMORY[0x28223BE20](v183);
  v175 = &v169 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v174 = (&v169 - v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  MEMORY[0x28223BE20](v55 - 8);
  v176 = &v169 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v59 = &v169 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAF8);
  MEMORY[0x28223BE20](v60 - 8);
  v62 = &v169 - v61;
  v63 = sub_20C13BB84();
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v173 = &v169 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v68 = &v169 - v67;
  MEMORY[0x28223BE20](v69);
  v71 = &v169 - v70;
  sub_20C13B4A4();
  sub_20C13BB64();
  v72 = *(v64 + 8);
  v72(v71, v63);
  v73 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_brokerDistributedSessionRetryTimer;
  v74 = v1;
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_brokerDistributedSessionRetryTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_20C13D3D4();
    swift_unknownObjectRelease();
  }

  *(v1 + v73) = 0;
  swift_unknownObjectRelease();
  v75 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_countdown;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v75, v62, &qword_27C76BAF8);
  v76 = sub_20C138284();
  LODWORD(v75) = (*(*(v76 - 8) + 48))(v62, 1, v76);
  sub_20B520158(v62, &qword_27C76BAF8);
  v77 = &OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row;
  v78 = &OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row;
  v185 = v1;
  if (v75 == 1)
  {
    sub_20C13B4A4();
    v79 = sub_20C13BB74();
    v80 = sub_20C13D1F4();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_20B517000, v79, v80, "Dismissing session UI during pre-session", v81, 2u);
      MEMORY[0x20F2F6A40](v81, -1, -1);
    }

    v72(v68, v63);
    v82 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_termination;
    v74 = v185;
    swift_beginAccess();
    sub_20B52F9E8(v74 + v82, v59, &unk_27C765090);
    v83 = sub_20C1337D4();
    v84 = *(v83 - 8);
    LODWORD(v82) = (*(v84 + 48))(v59, 1, v83);
    sub_20B520158(v59, &unk_27C765090);
    if (v82 == 1)
    {
      v85 = v174;
      sub_20BC023F4(v74 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionOrigin, v174, MEMORY[0x277D4DFB8]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v86 = sub_20C137EA4();
        (*(*(v86 - 8) + 8))(v85, v86);
        v78 = &OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row;
        __swift_project_boxed_opaque_existential_1((v74 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), *(v74 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24));
        sub_20C13A154();
      }

      else
      {
        sub_20BC0245C(v85, MEMORY[0x277D4DFB8]);
        v171 = *(v74 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24);
        v172 = *(v74 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 32);
        v174 = __swift_project_boxed_opaque_existential_1((v74 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), v171);
        v173 = sub_20C13A464();
        v91 = sub_20C133D84();
        (*(*(v91 - 8) + 56))(v189, 1, 1, v91);
        v92 = sub_20C135854();
        (*(*(v92 - 8) + 56))(v190, 1, 1, v92);
        v93 = sub_20C136194();
        (*(*(v93 - 8) + 56))(v191, 1, 1, v93);
        v94 = sub_20C133DD4();
        (*(*(v94 - 8) + 56))(v192, 1, 1, v94);
        v95 = sub_20C135274();
        (*(*(v95 - 8) + 56))(v193, 1, 1, v95);
        v96 = sub_20C134514();
        (*(*(v96 - 8) + 56))(v194, 1, 1, v96);
        v97 = sub_20C133B04();
        (*(*(v97 - 8) + 56))(v195, 1, 1, v97);
        v98 = sub_20C134C04();
        (*(*(v98 - 8) + 56))(v196, 1, 1, v98);
        v99 = sub_20C1368F4();
        (*(*(v99 - 8) + 56))(v197, 1, 1, v99);
        v100 = sub_20C134914();
        (*(*(v100 - 8) + 56))(v198, 1, 1, v100);
        v101 = sub_20C133374();
        (*(*(v101 - 8) + 56))(v199, 1, 1, v101);
        v102 = sub_20C135B74();
        (*(*(v102 - 8) + 56))(v200, 1, 1, v102);
        v103 = sub_20C134CD4();
        (*(*(v103 - 8) + 56))(v188, 1, 1, v103);
        v104 = sub_20C136EB4();
        (*(*(v104 - 8) + 56))(v201, 1, 1, v104);
        v105 = sub_20C133494();
        (*(*(v105 - 8) + 56))(v202, 1, 1, v105);
        v106 = sub_20C134594();
        (*(*(v106 - 8) + 56))(v187, 1, 1, v106);
        v107 = sub_20C138184();
        (*(*(v107 - 8) + 56))(v186, 1, 1, v107);
        v108 = sub_20C1363D4();
        (*(*(v108 - 8) + 56))(v184, 1, 1, v108);
        v109 = sub_20C1337A4();
        v110 = v177;
        (*(*(v109 - 8) + 56))(v177, 1, 1, v109);
        sub_20C13CE94();
        v203 = 1;
        v111 = v176;
        sub_20C1337B4();
        (*(v84 + 56))(v111, 0, 1, v83);
        v112 = sub_20C134A94();
        v113 = v178;
        (*(*(v112 - 8) + 56))(v178, 1, 1, v112);
        v114 = sub_20C135364();
        v115 = v179;
        (*(*(v114 - 8) + 56))(v179, 1, 1, v114);
        v116 = sub_20C136484();
        v117 = v180;
        (*(*(v116 - 8) + 56))(v180, 1, 1, v116);
        v118 = sub_20C136784();
        v119 = v181;
        (*(*(v118 - 8) + 56))(v181, 1, 1, v118);
        v120 = sub_20C137FE4();
        v121 = v182;
        (*(*(v120 - 8) + 56))(v182, 1, 1, v120);
        v122 = v188;
        sub_20C13A174();

        sub_20B520158(v121, &unk_27C768AC0);
        sub_20B520158(v119, &unk_27C765070);
        sub_20B520158(v117, &unk_27C765CB0);
        sub_20B520158(v115, &unk_27C765080);
        v123 = v113;
        v78 = &OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row;
        sub_20B520158(v123, &unk_27C768AD0);
        sub_20B520158(v111, &unk_27C765090);
        sub_20B520158(v110, &unk_27C768AE0);
        sub_20B520158(v184, &unk_27C7650A0);
        sub_20B520158(v186, &unk_27C768AF0);
        sub_20B520158(v187, &unk_27C7650B0);
        sub_20B520158(v202, &unk_27C768B00);
        sub_20B520158(v201, &unk_27C7650C0);
        v124 = v122;
        v74 = v185;
        sub_20B520158(v124, &unk_27C768B10);
        sub_20B520158(v200, &unk_27C7650D0);
        sub_20B520158(v199, &unk_27C768B20);
        sub_20B520158(v198, &unk_27C7650E0);
        sub_20B520158(v197, &unk_27C767260);
        sub_20B520158(v196, &unk_27C7650F0);
        sub_20B520158(v195, &qword_27C768B30);
        sub_20B520158(v194, &unk_27C765050);
        sub_20B520158(v193, &unk_27C765100);
        sub_20B520158(v192, &unk_27C7687F0);
        sub_20B520158(v191, &unk_27C765110);
        sub_20B520158(v190, &unk_27C76BBF0);
        sub_20B520158(v189, &unk_27C765120);
      }
    }

    else
    {
      v87 = v173;
      sub_20C13B4A4();
      v88 = sub_20C13BB74();
      v89 = sub_20C13D1F4();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_20B517000, v88, v89, "Pre-session UI dismissed with termination already on Session. This is unexpected", v90, 2u);
        MEMORY[0x20F2F6A40](v90, -1, -1);
      }

      v72(v87, v63);
      v74 = v185;
      v78 = &OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row;
    }

    sub_20B6819CC();
    v77 = &OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row;
  }

  v125 = (v74 + v78[361]);
  v170 = v125[3];
  v171 = v125[4];
  v173 = __swift_project_boxed_opaque_existential_1(v125, v170);
  v174 = v77[363];
  v172 = sub_20C13A464();
  v126 = sub_20C133D84();
  (*(*(v126 - 8) + 56))(v189, 1, 1, v126);
  v127 = sub_20C135854();
  (*(*(v127 - 8) + 56))(v190, 1, 1, v127);
  v128 = sub_20C136194();
  (*(*(v128 - 8) + 56))(v191, 1, 1, v128);
  v129 = sub_20C133DD4();
  (*(*(v129 - 8) + 56))(v192, 1, 1, v129);
  v130 = sub_20C135274();
  (*(*(v130 - 8) + 56))(v193, 1, 1, v130);
  v131 = sub_20C134514();
  (*(*(v131 - 8) + 56))(v194, 1, 1, v131);
  v132 = sub_20C133B04();
  (*(*(v132 - 8) + 56))(v195, 1, 1, v132);
  v133 = sub_20C134C04();
  (*(*(v133 - 8) + 56))(v196, 1, 1, v133);
  v134 = sub_20C1368F4();
  (*(*(v134 - 8) + 56))(v197, 1, 1, v134);
  v135 = sub_20C134914();
  (*(*(v135 - 8) + 56))(v198, 1, 1, v135);
  v136 = sub_20C133374();
  (*(*(v136 - 8) + 56))(v199, 1, 1, v136);
  v137 = sub_20C135B74();
  (*(*(v137 - 8) + 56))(v200, 1, 1, v137);
  v138 = sub_20C134CD4();
  (*(*(v138 - 8) + 56))(v188, 1, 1, v138);
  v139 = sub_20C136EB4();
  (*(*(v139 - 8) + 56))(v201, 1, 1, v139);
  v140 = sub_20C133494();
  (*(*(v140 - 8) + 56))(v202, 1, 1, v140);
  v141 = sub_20C134594();
  (*(*(v141 - 8) + 56))(v187, 1, 1, v141);
  v142 = sub_20C138184();
  (*(*(v142 - 8) + 56))(v186, 1, 1, v142);
  v143 = sub_20C1363D4();
  v144 = v184;
  (*(*(v143 - 8) + 56))(v184, 1, 1, v143);
  v145 = sub_20C1337A4();
  v146 = v177;
  (*(*(v145 - 8) + 56))(v177, 1, 1, v145);
  sub_20C13CE94();
  v203 = 1;
  v147 = v176;
  sub_20C1337B4();
  v148 = sub_20C1337D4();
  (*(*(v148 - 8) + 56))(v147, 0, 1, v148);
  v149 = sub_20C134A94();
  v150 = v178;
  (*(*(v149 - 8) + 56))(v178, 1, 1, v149);
  v151 = sub_20C135364();
  v152 = v179;
  (*(*(v151 - 8) + 56))(v179, 1, 1, v151);
  v153 = sub_20C136484();
  v154 = v180;
  (*(*(v153 - 8) + 56))(v180, 1, 1, v153);
  v155 = sub_20C136784();
  v156 = v181;
  (*(*(v155 - 8) + 56))(v181, 1, 1, v155);
  v157 = sub_20C137FE4();
  v158 = v182;
  (*(*(v157 - 8) + 56))(v182, 1, 1, v157);
  sub_20C13A174();

  sub_20B520158(v158, &unk_27C768AC0);
  sub_20B520158(v156, &unk_27C765070);
  sub_20B520158(v154, &unk_27C765CB0);
  sub_20B520158(v152, &unk_27C765080);
  sub_20B520158(v150, &unk_27C768AD0);
  sub_20B520158(v147, &unk_27C765090);
  sub_20B520158(v146, &unk_27C768AE0);
  sub_20B520158(v144, &unk_27C7650A0);
  sub_20B520158(v186, &unk_27C768AF0);
  sub_20B520158(v187, &unk_27C7650B0);
  sub_20B520158(v202, &unk_27C768B00);
  sub_20B520158(v201, &unk_27C7650C0);
  sub_20B520158(v188, &unk_27C768B10);
  sub_20B520158(v200, &unk_27C7650D0);
  sub_20B520158(v199, &unk_27C768B20);
  sub_20B520158(v198, &unk_27C7650E0);
  sub_20B520158(v197, &unk_27C767260);
  sub_20B520158(v196, &unk_27C7650F0);
  sub_20B520158(v195, &qword_27C768B30);
  sub_20B520158(v194, &unk_27C765050);
  sub_20B520158(v193, &unk_27C765100);
  sub_20B520158(v192, &unk_27C7687F0);
  sub_20B520158(v191, &unk_27C765110);
  sub_20B520158(v190, &unk_27C76BBF0);
  sub_20B520158(v189, &unk_27C765120);
  v159 = v185;
  v160 = v175;
  sub_20BC023F4(v174 + v185, v175, MEMORY[0x277D4DFB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_20BFE0BFC(0, 0);
      swift_unknownObjectRelease();
    }

    v161 = sub_20C137EA4();
    return (*(*(v161 - 8) + 8))(v160, v161);
  }

  else
  {
    sub_20BC0245C(v160, MEMORY[0x277D4DFB8]);
    v163 = v159 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workoutSessionConfiguration;
    v164 = v163 + *(type metadata accessor for WorkoutSessionConfiguration() + 40);
    v165 = v169;
    sub_20B52F9E8(v164, v169, &qword_27C76BBB0);
    v166 = sub_20C134A44();
    v167 = (*(*(v166 - 8) + 48))(v165, 1, v166);
    result = sub_20B520158(v165, &qword_27C76BBB0);
    if (v167 == 1)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v168 = swift_allocObject();
        swift_weakInit();

        sub_20BFE0BFC(sub_20BC02AD0, v168);

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_20BBFC70C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_20BB29B60();
    sub_20C13A764();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BBFC7B0()
{
  v1 = v0;
  v2 = sub_20C134864();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  v8 = sub_20C136484();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - v13;
  v15 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workoutDeviceConnection;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v15, v14, &unk_27C765CB0);
  if ((*(v9 + 48))(v14, 1, v8))
  {
    return sub_20B520158(v14, &unk_27C765CB0);
  }

  (*(v9 + 16))(v11, v14, v8);
  sub_20B520158(v14, &unk_27C765CB0);
  v17 = sub_20C136464();
  v19 = v18;
  v21 = v20;
  (*(v9 + 8))(v11, v8);
  v41 = v17;
  v42 = v19;
  v43 = v21 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76B3D0);
  sub_20C133BD4();
  result = sub_20B583F4C(v17, v19, v21 & 1);
  v23 = v39;
  v22 = v40;
  if (v44 != 5)
  {
    v24 = sub_20C136444();
    v26 = v25;
    if (v24 != sub_20C136444() || v26 != v27)
    {
      v28 = sub_20C13DFF4();

      if (v28)
      {
LABEL_8:
        v29 = v22;
        v30 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_countdown;
        swift_beginAccess();
        sub_20B52F9E8(v1 + v30, v7, &qword_27C76BAF8);
        v31 = sub_20C138284();
        v32 = (*(*(v31 - 8) + 48))(v7, 1, v31);
        result = sub_20B520158(v7, &qword_27C76BAF8);
        if (v32 == 1)
        {
          if (!*(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_state))
          {
            __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), *(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24));
            sub_20C13CE94();
            sub_20C134854();
            sub_20C13A464();
            sub_20C13A164();

            return (*(v23 + 8))(v4, v29);
          }
        }

        else
        {
          swift_getObjectType();
          return sub_20C138724();
        }

        return result;
      }

      v33 = sub_20C136444();
      v35 = v34;
      if (v33 != sub_20C136444() || v35 != v36)
      {
        v37 = sub_20C13DFF4();

        if ((v37 & 1) == 0)
        {
          return result;
        }

        goto LABEL_8;
      }
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t sub_20BBFCCC4()
{
  v1 = v0;
  v2 = sub_20C134864();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAF8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v10 + 8))(v12, v9);
  v13 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_countdown;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v13, v8, &qword_27C76BAF8);
  v14 = sub_20C138284();
  LODWORD(v13) = (*(*(v14 - 8) + 48))(v8, 1, v14);
  result = sub_20B520158(v8, &qword_27C76BAF8);
  if (v13 != 1)
  {
    return sub_20B681B64();
  }

  if (!*(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_state))
  {
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), *(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24));
    sub_20C13CE94();
    sub_20C134854();
    sub_20C13A464();
    sub_20C13A164();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

Swift::Bool __swiftcall SessionPresenter.shouldRestorePictureInPicture()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  MEMORY[0x28223BE20](v2 - 8);
  v38 = &v35 - v3;
  v4 = sub_20C137FE4();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v35 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_20C138184();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_20C13BB84();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v17 + 8))(v19, v16);
  v20 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_playback;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v20, v15, &unk_27C768AF0);
  if ((*(v10 + 48))(v15, 1, v9))
  {
    sub_20B520158(v15, &unk_27C768AF0);
    v21 = 0;
  }

  else
  {
    (*(v10 + 16))(v12, v15, v9);
    sub_20B520158(v15, &unk_27C768AF0);
    v22 = sub_20C138174();
    (*(v10 + 8))(v12, v9);
    v44 = BYTE4(v22) & 1;
    v43 = v22;
    v41 = 3;
    v42 = 1;
    sub_20B682CA4();
    sub_20B682CF8();
    v21 = sub_20C133BF4();
  }

  v23 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workout;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v23, v8, &unk_27C768AC0);
  v25 = v36;
  v24 = v37;
  if ((*(v36 + 48))(v8, 1, v37))
  {
    sub_20B520158(v8, &unk_27C768AC0);
    v26 = 0;
  }

  else
  {
    v27 = v35;
    (*(v25 + 16))(v35, v8, v24);
    sub_20B520158(v8, &unk_27C768AC0);
    v28 = sub_20C137FD4();
    (*(v25 + 8))(v27, v24);
    v42 = BYTE4(v28) & 1;
    v41 = v28;
    v39 = 3;
    v40 = 1;
    sub_20BBFD5CC();
    sub_20BBFD620();
    v26 = sub_20C133BF4();
  }

  v29 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_termination;
  swift_beginAccess();
  v30 = v1 + v29;
  v31 = v38;
  sub_20B52F9E8(v30, v38, &unk_27C765090);
  v32 = sub_20C1337D4();
  v33 = (*(*(v32 - 8) + 48))(v31, 1, v32);
  sub_20B520158(v31, &unk_27C765090);
  if (v21)
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_state) == 2)
  {
    return 0;
  }

  return (v33 == 1) & ~v26;
}

unint64_t sub_20BBFD5CC()
{
  result = qword_27C76BB18;
  if (!qword_27C76BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76BB18);
  }

  return result;
}

unint64_t sub_20BBFD620()
{
  result = qword_27C76BB20;
  if (!qword_27C76BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76BB20);
  }

  return result;
}

uint64_t type metadata accessor for SessionPresenter()
{
  result = qword_27C76BB48;
  if (!qword_27C76BB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BBFD6C8()
{
  sub_20C137254();
  if (v0 <= 0x3F)
  {
    sub_20C1344C4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for WorkoutSessionConfiguration();
      if (v2 <= 0x3F)
      {
        sub_20C13A484();
        if (v3 <= 0x3F)
        {
          sub_20BBFDC58(319, &qword_27C7631D0, MEMORY[0x277D53C58]);
          if (v4 <= 0x3F)
          {
            sub_20BBFDC58(319, &qword_27C76BB60, MEMORY[0x277CC9578]);
            if (v5 <= 0x3F)
            {
              sub_20BBFDC58(319, &qword_27C76B320, MEMORY[0x277D529D8]);
              if (v6 <= 0x3F)
              {
                sub_20BBFDC58(319, &unk_27C767250, MEMORY[0x277D52DE8]);
                if (v7 <= 0x3F)
                {
                  sub_20BBFDC58(319, &qword_27C76BB68, MEMORY[0x277D53E28]);
                  if (v8 <= 0x3F)
                  {
                    sub_20BBFDC58(319, &qword_281103AC0, MEMORY[0x277D4FB20]);
                    if (v9 <= 0x3F)
                    {
                      sub_20BBFDC58(319, &qword_27C7631D8, MEMORY[0x277D50E70]);
                      if (v10 <= 0x3F)
                      {
                        sub_20BBFDC58(319, &unk_27C76BB70, MEMORY[0x277D50140]);
                        if (v11 <= 0x3F)
                        {
                          sub_20BBFDC58(319, &qword_27C76AA10, MEMORY[0x277D53B70]);
                          if (v12 <= 0x3F)
                          {
                            sub_20BB40D28();
                            if (v13 <= 0x3F)
                            {
                              swift_updateClassMetadata2();
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

void sub_20BBFDC58(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_20BBFDCC0()
{
  result = qword_27C76BBA0;
  if (!qword_27C76BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76BBA0);
  }

  return result;
}

uint64_t sub_20BBFDD14(void *a1)
{
  v97 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v103 = v96 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070);
  MEMORY[0x28223BE20](v4 - 8);
  v102 = v96 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v101 = v96 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v8 - 8);
  v100 = v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  MEMORY[0x28223BE20](v10 - 8);
  v119 = v96 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  MEMORY[0x28223BE20](v12 - 8);
  v99 = v96 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  MEMORY[0x28223BE20](v14 - 8);
  v118 = v96 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0);
  MEMORY[0x28223BE20](v16 - 8);
  v116 = v96 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v18 - 8);
  v98 = v96 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0);
  MEMORY[0x28223BE20](v20 - 8);
  v114 = v96 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00);
  MEMORY[0x28223BE20](v22 - 8);
  v117 = v96 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0);
  MEMORY[0x28223BE20](v24 - 8);
  v125 = v96 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v26 - 8);
  v124 = v96 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
  MEMORY[0x28223BE20](v28 - 8);
  v123 = v96 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20);
  MEMORY[0x28223BE20](v30 - 8);
  v122 = v96 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  MEMORY[0x28223BE20](v32 - 8);
  v120 = v96 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v34 - 8);
  v121 = v96 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = v96 - v37;
  v106 = v96 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = v96 - v40;
  v107 = v96 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = v96 - v43;
  v108 = v96 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = v96 - v46;
  v109 = v96 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  MEMORY[0x28223BE20](v48 - 8);
  v50 = v96 - v49;
  v110 = v96 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = v96 - v52;
  v111 = v96 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0);
  MEMORY[0x28223BE20](v54 - 8);
  v56 = v96 - v55;
  v112 = v96 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v57 - 8);
  v59 = v96 - v58;
  v113 = v96 - v58;
  v105 = sub_20C1337D4();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v115 = v96 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13CE94();
  v126 = 1;
  sub_20C1337B4();
  v96[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 24);
  v96[1] = *(v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient + 32);
  v97 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_sessionClient), v96[0]);
  v96[2] = sub_20C13A464();
  v61 = sub_20C133D84();
  (*(*(v61 - 8) + 56))(v59, 1, 1, v61);
  v62 = sub_20C135854();
  (*(*(v62 - 8) + 56))(v56, 1, 1, v62);
  v63 = sub_20C136194();
  (*(*(v63 - 8) + 56))(v53, 1, 1, v63);
  v64 = sub_20C133DD4();
  (*(*(v64 - 8) + 56))(v50, 1, 1, v64);
  v65 = sub_20C135274();
  (*(*(v65 - 8) + 56))(v47, 1, 1, v65);
  v66 = sub_20C134514();
  (*(*(v66 - 8) + 56))(v44, 1, 1, v66);
  v67 = sub_20C133B04();
  (*(*(v67 - 8) + 56))(v41, 1, 1, v67);
  v68 = sub_20C134C04();
  (*(*(v68 - 8) + 56))(v38, 1, 1, v68);
  v69 = sub_20C1368F4();
  (*(*(v69 - 8) + 56))(v121, 1, 1, v69);
  v70 = sub_20C134914();
  (*(*(v70 - 8) + 56))(v120, 1, 1, v70);
  v71 = sub_20C133374();
  (*(*(v71 - 8) + 56))(v122, 1, 1, v71);
  v72 = sub_20C135B74();
  (*(*(v72 - 8) + 56))(v123, 1, 1, v72);
  v73 = sub_20C134CD4();
  (*(*(v73 - 8) + 56))(v124, 1, 1, v73);
  v74 = sub_20C136EB4();
  (*(*(v74 - 8) + 56))(v125, 1, 1, v74);
  v75 = sub_20C133494();
  (*(*(v75 - 8) + 56))(v117, 1, 1, v75);
  v76 = sub_20C134594();
  (*(*(v76 - 8) + 56))(v114, 1, 1, v76);
  v77 = sub_20C138184();
  v78 = v98;
  (*(*(v77 - 8) + 56))(v98, 1, 1, v77);
  v79 = sub_20C1363D4();
  (*(*(v79 - 8) + 56))(v116, 1, 1, v79);
  v80 = sub_20C1337A4();
  (*(*(v80 - 8) + 56))(v118, 1, 1, v80);
  v81 = v104;
  v82 = v99;
  v83 = v105;
  (*(v104 + 16))(v99, v115, v105);
  (*(v81 + 56))(v82, 0, 1, v83);
  v84 = sub_20C134A94();
  (*(*(v84 - 8) + 56))(v119, 1, 1, v84);
  v85 = sub_20C135364();
  v86 = v100;
  (*(*(v85 - 8) + 56))(v100, 1, 1, v85);
  v87 = sub_20C136484();
  v88 = v101;
  (*(*(v87 - 8) + 56))(v101, 1, 1, v87);
  v89 = sub_20C136784();
  v90 = v102;
  (*(*(v89 - 8) + 56))(v102, 1, 1, v89);
  v91 = sub_20C137FE4();
  v92 = v103;
  (*(*(v91 - 8) + 56))(v103, 1, 1, v91);
  v93 = v114;
  v94 = v117;
  sub_20C13A174();

  sub_20B520158(v92, &unk_27C768AC0);
  sub_20B520158(v90, &unk_27C765070);
  sub_20B520158(v88, &unk_27C765CB0);
  sub_20B520158(v86, &unk_27C765080);
  sub_20B520158(v119, &unk_27C768AD0);
  sub_20B520158(v82, &unk_27C765090);
  sub_20B520158(v118, &unk_27C768AE0);
  sub_20B520158(v116, &unk_27C7650A0);
  sub_20B520158(v78, &unk_27C768AF0);
  sub_20B520158(v93, &unk_27C7650B0);
  sub_20B520158(v94, &unk_27C768B00);
  sub_20B520158(v125, &unk_27C7650C0);
  sub_20B520158(v124, &unk_27C768B10);
  sub_20B520158(v123, &unk_27C7650D0);
  sub_20B520158(v122, &unk_27C768B20);
  sub_20B520158(v120, &unk_27C7650E0);
  sub_20B520158(v121, &unk_27C767260);
  sub_20B520158(v106, &unk_27C7650F0);
  sub_20B520158(v107, &qword_27C768B30);
  sub_20B520158(v108, &unk_27C765050);
  sub_20B520158(v109, &unk_27C765100);
  sub_20B520158(v110, &unk_27C7687F0);
  sub_20B520158(v111, &unk_27C765110);
  sub_20B520158(v112, &unk_27C76BBF0);
  sub_20B520158(v113, &unk_27C765120);
  return (*(v104 + 8))(v115, v105);
}

id sub_20BBFEFF0()
{
  v1 = sub_20C134A94();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = [objc_allocWithZone(MEMORY[0x277CCD830]) initWithIdentifier_];
  v9 = _HKGenerateDefaultUnitForQuantityType();

  if (!v9)
  {
    v9 = [objc_opt_self() kilocalorieUnit];
  }

  v10 = OBJC_IVAR____TtC9SeymourUI23UnitPreferencesProvider_unitPreferences;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v10, v7, &unk_27C768AD0);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_20B520158(v7, &unk_27C768AD0);
    return v9;
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_20B520158(v7, &unk_27C768AD0);
    sub_20C134A84();
    (*(v2 + 8))(v4, v1);
    v12 = sub_20C13C914();
    v13 = [objc_opt_self() unitFromString_];

    return v13;
  }
}

uint64_t sub_20BBFF280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BBF8E8C(a1, v4, v5, v6);
}

uint64_t sub_20BBFF334(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BBF9310(a1, v4, v5, v6);
}

uint64_t sub_20BBFF3F0(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = v5;

  return sub_20C137C94();
}

void sub_20BBFF48C(uint64_t a1)
{
  v2 = type metadata accessor for PageAlertAction();
  v54 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  *&v59 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v60 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - v5;
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  if (*(a1 + 56))
  {

    v9 = sub_20C13C914();

    if (v7)
    {
LABEL_3:
      v10 = sub_20C13C914();

      goto LABEL_6;
    }
  }

  else
  {

    v9 = 0;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  type metadata accessor for PageAlertController();
  v11 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v9 message:v10 preferredStyle:v8];

  v12 = &v11[OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter];
  *v12 = a1;
  *(v12 + 1) = &off_2822DD358;
  swift_unknownObjectRelease();
  *(a1 + 24) = &off_2822E16E0;
  swift_unknownObjectWeakAssign();
  v13 = *(a1 + 32);
  v14 = *(a1 + 56);
  v15 = *(a1 + 72);
  v16 = *(v13 + 16);
  v58 = *(a1 + 40);
  v46 = a1;
  v49 = v15;
  v48 = v13;
  v47 = v14;
  if (v16)
  {
    v17 = *(v2 + 20);
    v56 = &v6[*(v2 + 24)];
    v57 = v17;
    v18 = objc_opt_self();
    v19 = *(v54 + 80);
    v20 = v13 + ((v19 + 32) & ~v19);
    v21 = *(v54 + 72);
    v54 = v19;
    v55 = v18;
    v52 = (v19 + 24) & ~v19;
    v53 = v21;
    v50 = &v63;

    v51 = v6;
    do
    {
      sub_20BC023F4(v20, v6, type metadata accessor for PageAlertAction);
      v25 = *(v56 + 1);
      v26 = qword_20C172550[v6[v57]];
      v27 = swift_allocObject();
      v28 = v11;
      swift_unknownObjectWeakInit();
      v29 = v59;
      sub_20BC023F4(v6, v59, type metadata accessor for PageAlertAction);
      v30 = v52;
      v31 = swift_allocObject();
      *(v31 + 16) = v27;
      sub_20BC000F4(v29, v31 + v30);

      if (v25)
      {
        v22 = sub_20C13C914();
      }

      else
      {
        v22 = 0;
      }

      v65 = sub_20BC00158;
      v66 = v31;
      aBlock = MEMORY[0x277D85DD0];
      v62 = 1107296256;
      v63 = sub_20B762A80;
      v64 = &block_descriptor_92;
      v23 = _Block_copy(&aBlock);

      v24 = [v55 actionWithTitle:v22 style:v26 handler:v23];
      _Block_release(v23);

      v11 = v28;
      [v28 addAction_];

      v6 = v51;
      sub_20BC0245C(v51, type metadata accessor for PageAlertAction);
      v20 += v53;
      --v16;
    }

    while (v16);
  }

  else
  {
  }

  v32 = v58;
  v33 = *(v58 + 16);

  if (v33)
  {
    v34 = 0;
    v35 = v32 + 32;
    while (v34 < *(v32 + 16))
    {
      v36 = v34 + 1;
      v37 = (v35 + 32 * v34);
      v38 = swift_allocObject();
      v40 = v37[1];
      v59 = *v37;
      v39 = v59;
      v60 = v40;
      *(v38 + 16) = v11;
      *(v38 + 40) = v40;
      *(v38 + 24) = v39;
      v65 = sub_20BC0015C;
      v66 = v38;
      aBlock = MEMORY[0x277D85DD0];
      v62 = 1107296256;
      v63 = sub_20B762A80;
      v64 = &block_descriptor_98_0;
      v41 = _Block_copy(&aBlock);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v42 = v11;

      v32 = v58;
      [v42 addTextFieldWithConfigurationHandler_];

      _Block_release(v41);
      v34 = v36;
      if (v33 == v36)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    swift_bridgeObjectRelease_n();

    v43 = [v11 popoverPresentationController];
    if (v43)
    {
      v44 = v43;
      [v43 setSourceItem_];
    }
  }
}

void sub_20BBFFAB0(uint64_t a1)
{
  v2 = type metadata accessor for PageAlertAction();
  v54 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  *&v59 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v60 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - v5;
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  if (*(a1 + 56))
  {

    v9 = sub_20C13C914();

    if (v7)
    {
LABEL_3:
      v10 = sub_20C13C914();

      goto LABEL_6;
    }
  }

  else
  {

    v9 = 0;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  type metadata accessor for PageAlertController();
  v11 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v9 message:v10 preferredStyle:v8];

  v12 = &v11[OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter];
  *v12 = a1;
  *(v12 + 1) = &off_2823017F8;
  swift_unknownObjectRelease();
  *(a1 + 24) = &off_2822E16E0;
  swift_unknownObjectWeakAssign();
  v13 = *(a1 + 32);
  v14 = *(a1 + 56);
  v15 = *(a1 + 72);
  v16 = *(v13 + 16);
  v58 = *(a1 + 40);
  v46 = a1;
  v49 = v15;
  v48 = v13;
  v47 = v14;
  if (v16)
  {
    v17 = *(v2 + 20);
    v56 = &v6[*(v2 + 24)];
    v57 = v17;
    v18 = objc_opt_self();
    v19 = *(v54 + 80);
    v20 = v13 + ((v19 + 32) & ~v19);
    v21 = *(v54 + 72);
    v54 = v19;
    v55 = v18;
    v52 = (v19 + 24) & ~v19;
    v53 = v21;
    v50 = &v63;

    v51 = v6;
    do
    {
      sub_20BC023F4(v20, v6, type metadata accessor for PageAlertAction);
      v25 = *(v56 + 1);
      v26 = qword_20C172550[v6[v57]];
      v27 = swift_allocObject();
      v28 = v11;
      swift_unknownObjectWeakInit();
      v29 = v59;
      sub_20BC023F4(v6, v59, type metadata accessor for PageAlertAction);
      v30 = v52;
      v31 = swift_allocObject();
      *(v31 + 16) = v27;
      sub_20BC000F4(v29, v31 + v30);

      if (v25)
      {
        v22 = sub_20C13C914();
      }

      else
      {
        v22 = 0;
      }

      v65 = sub_20BC02E0C;
      v66 = v31;
      aBlock = MEMORY[0x277D85DD0];
      v62 = 1107296256;
      v63 = sub_20B762A80;
      v64 = &block_descriptor_459;
      v23 = _Block_copy(&aBlock);

      v24 = [v55 actionWithTitle:v22 style:v26 handler:v23];
      _Block_release(v23);

      v11 = v28;
      [v28 addAction_];

      v6 = v51;
      sub_20BC0245C(v51, type metadata accessor for PageAlertAction);
      v20 += v53;
      --v16;
    }

    while (v16);
  }

  else
  {
  }

  v32 = v58;
  v33 = *(v58 + 16);

  if (v33)
  {
    v34 = 0;
    v35 = v32 + 32;
    while (v34 < *(v32 + 16))
    {
      v36 = v34 + 1;
      v37 = (v35 + 32 * v34);
      v38 = swift_allocObject();
      v40 = v37[1];
      v59 = *v37;
      v39 = v59;
      v60 = v40;
      *(v38 + 16) = v11;
      *(v38 + 40) = v40;
      *(v38 + 24) = v39;
      v65 = sub_20BC02E10;
      v66 = v38;
      aBlock = MEMORY[0x277D85DD0];
      v62 = 1107296256;
      v63 = sub_20B762A80;
      v64 = &block_descriptor_466;
      v41 = _Block_copy(&aBlock);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v42 = v11;

      v32 = v58;
      [v42 addTextFieldWithConfigurationHandler_];

      _Block_release(v41);
      v34 = v36;
      if (v33 == v36)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    swift_bridgeObjectRelease_n();

    v43 = [v11 popoverPresentationController];
    if (v43)
    {
      v44 = v43;
      [v43 setSourceItem_];
    }
  }
}

uint64_t sub_20BC000F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageAlertAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BC001A8(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7645D8);
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x28223BE20](v6);
  v58 = v7;
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v67 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v10);
  v62 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v63 = &v57 - v13;
  MEMORY[0x28223BE20](v14);
  v64 = &v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762648);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - v18;
  v20 = sub_20C13BB84();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v21 + 8))(v23, v20);
  v24 = a1;
  v25 = sub_20C1344B4();
  v27 = v26;
  v68 = v25;
  v69 = v26;
  LOBYTE(a1) = v28 & 1;
  v70 = v28 & 1;
  v71 = xmmword_20C14F2B0;
  v72 = 1;
  sub_20B590B28();
  sub_20B590B7C();
  LOBYTE(v21) = sub_20C133BF4();
  sub_20B583F4C(v25, v27, a1);
  if ((v21 & 1) == 0)
  {
    v30 = a2;
    (*(v17 + 16))(v19, v24 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter__showEstimatedCaloriePrompt, v16);
    sub_20C13A344();
    (*(v17 + 8))(v19, v16);
    if (v68 == 2)
    {
      __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_privacyPreferenceClient), *(v24 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_privacyPreferenceClient + 24));
      v31 = v67;
      sub_20C139C34();
      v32 = swift_allocObject();
      swift_weakInit();
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      *(v33 + 24) = a3;
      *(v33 + 32) = sub_20BC02C54;
      *(v33 + 40) = v30;
      v34 = v30;
      v35 = swift_allocObject();
      *(v35 + 16) = sub_20BC02DDC;
      *(v35 + 24) = v33;
      v37 = v59;
      v36 = v60;
      v38 = v61;
      (*(v60 + 16))(v59, v31, v61);
      v39 = (*(v36 + 80) + 16) & ~*(v36 + 80);
      v40 = (v58 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
      v41 = swift_allocObject();
      (*(v36 + 32))(v41 + v39, v37, v38);
      v42 = (v41 + v40);
      *v42 = sub_20BC02DC0;
      v42[1] = v35;

      v43 = v63;
      sub_20C137C94();
      (*(v36 + 8))(v67, v38);
      v44 = swift_allocObject();
      *(v44 + 16) = sub_20BC02C54;
      *(v44 + 24) = v34;
      v45 = swift_allocObject();
      *(v45 + 16) = sub_20BC02E44;
      *(v45 + 24) = v44;
      v47 = v65;
      v46 = v66;
      v48 = v62;
      (*(v65 + 16))(v62, v43, v66);
      v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
      v50 = swift_allocObject();
      (*(v47 + 32))(v50 + v49, v48, v46);
      v51 = (v50 + ((v11 + v49 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v51 = sub_20B5F7764;
      v51[1] = v45;

      v52 = v64;
      sub_20C137C94();
      v53 = *(v47 + 8);
      v53(v43, v46);
      v54 = sub_20C137CB4();
      v55 = swift_allocObject();
      *(v55 + 16) = 0;
      *(v55 + 24) = 0;
      v54(sub_20B5DF6DC, v55);

      v53(v52, v46);
    }

    if (v68)
    {
      sub_20BBEC3E0(sub_20BC02C54, a2);
    }

    v29 = a2;
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
    }

    goto LABEL_3;
  }

  swift_beginAccess();
  v29 = a2;
  if (swift_weakLoadStrong())
  {
LABEL_3:

    sub_20BBD96F8(sub_20BC02DD8, v29);
  }
}

uint64_t sub_20BC009D8(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7645D8);
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x28223BE20](v6);
  v58 = v7;
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v67 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v10);
  v62 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v63 = &v57 - v13;
  MEMORY[0x28223BE20](v14);
  v64 = &v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762648);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - v18;
  v20 = sub_20C13BB84();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v21 + 8))(v23, v20);
  v24 = a1;
  v25 = sub_20C1344B4();
  v27 = v26;
  v68 = v25;
  v69 = v26;
  LOBYTE(a1) = v28 & 1;
  v70 = v28 & 1;
  v71 = xmmword_20C14F2B0;
  v72 = 1;
  sub_20B590B28();
  sub_20B590B7C();
  LOBYTE(v21) = sub_20C133BF4();
  sub_20B583F4C(v25, v27, a1);
  if ((v21 & 1) == 0)
  {
    v30 = a2;
    (*(v17 + 16))(v19, v24 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter__showEstimatedCaloriePrompt, v16);
    sub_20C13A344();
    (*(v17 + 8))(v19, v16);
    if (v68 == 2)
    {
      __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_privacyPreferenceClient), *(v24 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_privacyPreferenceClient + 24));
      v31 = v67;
      sub_20C139C34();
      v32 = swift_allocObject();
      swift_weakInit();
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      *(v33 + 24) = a3;
      *(v33 + 32) = sub_20BC02C54;
      *(v33 + 40) = v30;
      v34 = v30;
      v35 = swift_allocObject();
      *(v35 + 16) = sub_20BC02DDC;
      *(v35 + 24) = v33;
      v37 = v59;
      v36 = v60;
      v38 = v61;
      (*(v60 + 16))(v59, v31, v61);
      v39 = (*(v36 + 80) + 16) & ~*(v36 + 80);
      v40 = (v58 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
      v41 = swift_allocObject();
      (*(v36 + 32))(v41 + v39, v37, v38);
      v42 = (v41 + v40);
      *v42 = sub_20BC02DC0;
      v42[1] = v35;

      v43 = v63;
      sub_20C137C94();
      (*(v36 + 8))(v67, v38);
      v44 = swift_allocObject();
      *(v44 + 16) = sub_20BC02C54;
      *(v44 + 24) = v34;
      v45 = swift_allocObject();
      *(v45 + 16) = sub_20BC02E44;
      *(v45 + 24) = v44;
      v47 = v65;
      v46 = v66;
      v48 = v62;
      (*(v65 + 16))(v62, v43, v66);
      v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
      v50 = swift_allocObject();
      (*(v47 + 32))(v50 + v49, v48, v46);
      v51 = (v50 + ((v11 + v49 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v51 = sub_20B5F7764;
      v51[1] = v45;

      v52 = v64;
      sub_20C137C94();
      v53 = *(v47 + 8);
      v53(v43, v46);
      v54 = sub_20C137CB4();
      v55 = swift_allocObject();
      *(v55 + 16) = 0;
      *(v55 + 24) = 0;
      v54(sub_20B5DF6DC, v55);

      v53(v52, v46);
    }

    if (v68)
    {
      sub_20BBEC3E0(sub_20BC02C54, a2);
    }

    v29 = a2;
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
    }

    goto LABEL_3;
  }

  swift_beginAccess();
  v29 = a2;
  if (swift_weakLoadStrong())
  {
LABEL_3:

    sub_20BBD96F8(sub_20BC02DD8, v29);
  }
}

void sub_20BC01208(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v12 = sub_20C13BB84();
  v37 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  swift_unknownObjectRetain();
  v15 = sub_20C13BB74();
  v16 = sub_20C13D1F4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = a4;
    v18 = v17;
    v32 = swift_slowAlloc();
    v44 = v32;
    *v18 = 136446210;
    v33 = v12;
    v34 = a6;
    v19 = a5;
    v20 = a2;
    v21 = *(a1 + 40);
    v22 = *(a1 + 48);
    v23 = *(a1 + 72);
    v24 = *(a1 + 80);
    aBlock = *(a1 + 32);
    v39 = v21;
    v40 = v22;
    v41 = *(a1 + 56);
    v42 = v23;
    v35 = a3;
    v43 = v24;

    a2 = v20;
    a5 = v19;

    v25 = sub_20C13C9D4();
    v27 = sub_20B51E694(v25, v26, &v44);
    a6 = v34;

    *(v18 + 4) = v27;
    a3 = v35;
    _os_log_impl(&dword_20B517000, v15, v16, "Presenting session alert: %{public}s", v18, 0xCu);
    v28 = v32;
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x20F2F6A40](v28, -1, -1);
    v29 = v18;
    a4 = v36;
    MEMORY[0x20F2F6A40](v29, -1, -1);

    (*(v37 + 8))(v14, v33);
  }

  else
  {

    (*(v37 + 8))(v14, v12);
  }

  v30 = a5(a1);
  if (a2)
  {
    *(&v41 + 1) = a2;
    v42 = a3;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_20B7B548C;
    *&v41 = a6;
    v31 = _Block_copy(&aBlock);
  }

  else
  {
    v31 = 0;
  }

  [a4 presentViewController:v30 animated:1 completion:v31];
  _Block_release(v31);
}

uint64_t sub_20BC0150C(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7645D8);
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = v7;
  v56 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v10);
  v59 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = &v54 - v13;
  MEMORY[0x28223BE20](v14);
  v61 = &v54 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762648);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v54 - v18;
  v20 = sub_20C13BB84();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v21 + 8))(v23, v20);
  v24 = a1;
  v25 = sub_20C1344B4();
  v27 = v26;
  v65 = v25;
  v66 = v26;
  LOBYTE(a1) = v28 & 1;
  v67 = v28 & 1;
  v68 = xmmword_20C14F2B0;
  v69 = 1;
  sub_20B590B28();
  sub_20B590B7C();
  LOBYTE(v21) = sub_20C133BF4();
  sub_20B583F4C(v25, v27, a1);
  if ((v21 & 1) == 0)
  {
    (*(v17 + 16))(v19, v24 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter__showEstimatedCaloriePrompt, v16);
    sub_20C13A344();
    (*(v17 + 8))(v19, v16);
    if (v65 == 2)
    {
      __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_privacyPreferenceClient), *(v24 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_privacyPreferenceClient + 24));
      v29 = v64;
      sub_20C139C34();
      v30 = swift_allocObject();
      swift_weakInit();
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      *(v31 + 24) = a3;
      *(v31 + 32) = sub_20BC01CC0;
      *(v31 + 40) = a2;
      v32 = swift_allocObject();
      *(v32 + 16) = sub_20BC01CF0;
      *(v32 + 24) = v31;
      v34 = v56;
      v33 = v57;
      v35 = v58;
      (*(v57 + 16))(v56, v29, v58);
      v36 = (*(v33 + 80) + 16) & ~*(v33 + 80);
      v37 = (v55 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
      v38 = swift_allocObject();
      (*(v33 + 32))(v38 + v36, v34, v35);
      v39 = (v38 + v37);
      *v39 = sub_20BB410B8;
      v39[1] = v32;

      v40 = v60;
      sub_20C137C94();
      (*(v33 + 8))(v64, v35);
      v41 = swift_allocObject();
      *(v41 + 16) = sub_20BC01CC0;
      *(v41 + 24) = a2;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_20BC01D3C;
      *(v42 + 24) = v41;
      v44 = v62;
      v43 = v63;
      v45 = v59;
      (*(v62 + 16))(v59, v40, v63);
      v46 = (*(v44 + 80) + 16) & ~*(v44 + 80);
      v47 = swift_allocObject();
      (*(v44 + 32))(v47 + v46, v45, v43);
      v48 = (v47 + ((v11 + v46 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v48 = sub_20B5F7764;
      v48[1] = v42;

      v49 = v61;
      sub_20C137C94();
      v50 = *(v44 + 8);
      v50(v40, v43);
      v51 = sub_20C137CB4();
      v52 = swift_allocObject();
      *(v52 + 16) = 0;
      *(v52 + 24) = 0;
      v51(sub_20B5DF6DC, v52);

      v50(v49, v43);
    }

    if (v65)
    {
      sub_20BBEC3E0(sub_20BC01CC0, a2);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BBF24A8();
  }
}

uint64_t sub_20BC01D58(unint64_t *a1, uint64_t *a2)
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

void sub_20BC01DDC()
{
  sub_20C138284();

  sub_20BBF3348();
}

unint64_t sub_20BC01E78()
{
  result = qword_27C76BC48;
  if (!qword_27C76BC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76BC48);
  }

  return result;
}

uint64_t sub_20BC01F40(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52A9D4;

  return sub_20BBEA3CC(a1, v1);
}

void sub_20BC02080(void (*a1)(uint64_t *), uint64_t a2)
{
  v5 = *(sub_20C135024() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_20BBE583C(a1, a2, v6, v7);
}

uint64_t sub_20BC02104@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_20C135024() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_20BBE5398(v4, v5, a1);
}

uint64_t sub_20BC021EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_20C137C24() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_20BBE6720(a1, v6, v7, a2);
}

uint64_t objectdestroy_334Tm()
{
  v1 = sub_20C137EA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20BC023F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BC0245C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BC02578(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BBDD7A8(a1, v4, v5, v6);
}

uint64_t sub_20BC026A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_168Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_20BC02810(uint64_t a1)
{
  sub_20C135024();
  v3 = *(v1 + 16);

  return sub_20BBDBEB4(a1, v3);
}

uint64_t objectdestroy_88Tm()
{
  v1 = (type metadata accessor for PageAlertAction() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_20C132EE4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  if (*(v0 + v3 + v1[9]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_20BC02998(uint64_t a1)
{
  v3 = *(type metadata accessor for PageAlertAction() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_20BD38C08(a1, v4, v5);
}

uint64_t objectdestroy_94Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroyTm_11(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

unint64_t sub_20BC02AD8()
{
  result = qword_27C76BD70;
  if (!qword_27C76BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76BD70);
  }

  return result;
}

uint64_t objectdestroy_175Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t objectdestroy_127Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20BC02CC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_20BC02E90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20BC02ED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_20BC02F48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_20BC02FCC(v11, v13);
}

BOOL sub_20BC02FCC(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v2 || a1[4] != a2[4])
  {
    return 0;
  }

  v7 = sub_20C13C954();
  v9 = v8;
  if (v7 == sub_20C13C954() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_20C13DFF4();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[6] != a2[6])
  {
    return 0;
  }

  result = 0;
  if (a1[7] != a2[7] || a1[8] != a2[8] || a1[9] != a2[9] || a1[10] != a2[10])
  {
    return result;
  }

  if (a1[11] != a2[11])
  {
    return 0;
  }

  result = 0;
  if (a1[12] == a2[12] && a1[13] == a2[13] && a1[14] == a2[14] && a1[15] == a2[15])
  {
    return a1[16] == a2[16];
  }

  return result;
}

id sub_20BC03184()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanWeekdayCell_hostedContent];
  if (!v1)
  {
    v4 = 0;
LABEL_5:
    v5 = [v0 contentView];
    v6 = v5;
    if (v4)
    {
      if (v5)
      {
        sub_20B51C88C(0, &qword_27C762910);
        v7 = sub_20C13D5F4();
      }

      else
      {
        v7 = 0;
      }

      v6 = v4;
    }

    else
    {
      if (!v5)
      {
        v7 = 1;
        return (v7 & 1);
      }

      v7 = 0;
    }

    return (v7 & 1);
  }

  result = [v1 view];
  if (result)
  {
    v3 = result;
    v4 = [result superview];

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_20BC03390(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanWeekdayCell_hostedContent];
  *&v1[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanWeekdayCell_hostedContent] = a1;
  v3 = a1;

  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  v6 = [v1 contentView];
  v7 = [v3 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  [v6 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20C14FE90;
  v10 = [v3 view];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  v12 = [v10 leadingAnchor];

  v13 = [v1 contentView];
  v14 = [v13 leadingAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v9 + 32) = v15;
  v16 = [v3 view];
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16;
  v18 = [v16 trailingAnchor];

  v19 = [v1 contentView];
  v20 = [v19 trailingAnchor];

  v21 = [v18 constraintEqualToAnchor_];
  *(v9 + 40) = v21;
  v22 = [v3 view];
  if (!v22)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = v22;
  v24 = [v22 topAnchor];

  v25 = [v1 contentView];
  v26 = [v25 topAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v9 + 48) = v27;
  v28 = [v3 view];
  if (!v28)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v29 = v28;
  v30 = objc_opt_self();
  v31 = [v29 bottomAnchor];

  v32 = [v1 contentView];
  v33 = [v32 bottomAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v9 + 56) = v34;
  sub_20B51C88C(0, &qword_281100500);
  v35 = sub_20C13CC54();

  [v30 activateConstraints_];
}

void sub_20BC03770()
{
  if (sub_20BC03184())
  {
    v1 = OBJC_IVAR____TtC9SeymourUI22WorkoutPlanWeekdayCell_hostedContent;
    v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanWeekdayCell_hostedContent);
    if (v2)
    {
      v3 = [v2 view];
      if (!v3)
      {
        __break(1u);
        return;
      }

      v4 = v3;
      [v3 removeFromSuperview];

      v2 = *(v0 + v1);
    }

    *(v0 + v1) = 0;
  }
}

id sub_20BC0399C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutPlanWeekdayCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WorkoutPlanWeekdayCell()
{
  result = qword_27C76BD98;
  if (!qword_27C76BD98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BC03A74()
{
  sub_20BC03B10();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20BC03B10()
{
  if (!qword_27C76BDA8)
  {
    type metadata accessor for HostedContentIdentifier();
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_27C76BDA8);
    }
  }
}

uint64_t sub_20BC03B68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76CCC0);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = (&v27 - v3);
  v30 = sub_20C133954();
  v4 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C135214();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ShelfItemX();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B8D1410(a1, v13);
  v28 = *v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0);
  v15 = *(v14 + 64);
  v16 = *(v8 + 32);
  v16(v10, &v13[*(v14 + 48)], v7);
  v17 = *(v4 + 32);
  v18 = &v13[v15];
  v19 = v30;
  v17(v6, v18, v30);
  v20 = *(v14 + 48);
  v21 = *(v14 + 64);
  v22 = v29;
  *v29 = v28;
  v16((v22 + v20), v10, v7);
  v17((v22 + v21), v6, v19);
  v23 = type metadata accessor for HostedContentIdentifier();
  (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  v24 = OBJC_IVAR____TtC9SeymourUI22WorkoutPlanWeekdayCell_hostedContentIdentifier;
  v25 = v31;
  swift_beginAccess();
  sub_20BC03E5C(v22, v25 + v24);
  return swift_endAccess();
}

uint64_t sub_20BC03E5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76CCC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BC03ECC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76CCC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BC03F34()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_20BC03FAC()
{
  result = qword_27C76BDB0;
  if (!qword_27C76BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76BDB0);
  }

  return result;
}

uint64_t sub_20BC040E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getErrorValue();
  v5 = sub_20C134E24();
  v24 = v5;
  v6 = sub_20BC04434();
  v25 = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  v8 = *(*(v5 - 8) + 104);
  v8(boxed_opaque_existential_1, *MEMORY[0x277D51200], v5);
  v9 = sub_20C13E0D4();
  __swift_destroy_boxed_opaque_existential_1(v23);
  if (v9)
  {
    goto LABEL_2;
  }

  swift_getErrorValue();
  v24 = v5;
  v25 = v6;
  v11 = __swift_allocate_boxed_opaque_existential_1(v23);
  v8(v11, *MEMORY[0x277D511F8], v5);
  v12 = sub_20C13E0D4();
  __swift_destroy_boxed_opaque_existential_1(v23);
  if (v12)
  {
    if (*(a2 + 16) && (v13 = sub_20B65CC80(), (v14 & 1) != 0))
    {
      v15 = *(*(a2 + 56) + 8 * v13);
    }

    else
    {
      v15 = 0;
    }

    v18 = *(v3 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D83B88];
    v21 = MEMORY[0x277D83C10];
    *(v19 + 16) = xmmword_20C14F980;
    *(v19 + 56) = v20;
    *(v19 + 64) = v21;
    *(v19 + 32) = v15;
    __swift_project_boxed_opaque_existential_1((v18 + 48), *(v18 + 72));
    v22 = sub_20B5E10B0();

    return v22;
  }

  else
  {
    swift_getErrorValue();
    v24 = v5;
    v25 = v6;
    v16 = __swift_allocate_boxed_opaque_existential_1(v23);
    v8(v16, *MEMORY[0x277D511F0], v5);
    v17 = sub_20C13E0D4();
    __swift_destroy_boxed_opaque_existential_1(v23);
    if (v17)
    {
LABEL_2:
      __swift_project_boxed_opaque_existential_1((*(v3 + 64) + 48), *(*(v3 + 64) + 72));
      return sub_20B5E107C();
    }

    return 0;
  }
}

unint64_t sub_20BC04434()
{
  result = qword_281103BC0;
  if (!qword_281103BC0)
  {
    sub_20C134E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281103BC0);
  }

  return result;
}

uint64_t sub_20BC04498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a3)
  {
    return a3();
  }

  return result;
}

uint64_t sub_20BC044C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void sub_20BC04528(uint64_t (*a1)(), uint64_t a2)
{
  v4 = objc_opt_self();
  v12 = a1;
  v13 = a2;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_20B7B548C;
  v11 = &block_descriptor_99;
  v5 = _Block_copy(&v8);

  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v12 = sub_20BC04694;
  v13 = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_20BC044C8;
  v11 = &block_descriptor_3_0;
  v7 = _Block_copy(&v8);

  [v4 smu:v5 animateUsingSpringWithTension:v7 friction:500.0 animations:40.0 completion:?];
  _Block_release(v7);
  _Block_release(v5);
}

uint64_t sub_20BC04694()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

Swift::Double_optional __swiftcall CatalogWorkout.firstEventStartTime()()
{
  v121 = *MEMORY[0x277D85DE8];
  v88 = sub_20C133D14();
  v99 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v86 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_20C133474();
  v100 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_20C133634();
  v101 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_20C134054();
  v102 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_20C134784();
  v5 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v93 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v109 = &v86 - v8;
  v105 = v0;
  v9 = sub_20C1343B4();
  inited = v9;
  v11 = *(v9 + 32);
  v12 = 1;
  v97 = ((1 << v11) + 63) >> 6;
  v112 = v5;
  if ((v11 & 0x3Fu) > 0xD)
  {
LABEL_70:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_77;
    }
  }

  v96 = &v86;
  MEMORY[0x28223BE20](v9);
  v98 = &v86 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v98, v13);
  v103 = 0;
  v14 = 0;
  v111 = inited;
  v16 = *(inited + 56);
  inited += 56;
  v15 = v16;
  v17 = v12 << *(inited - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v15;
  v20 = (v17 + 63) >> 6;
  v107 = v5 + 8;
  v108 = v5 + 16;
  v106 = xmmword_20C152300;
  v21 = v110;
  while (1)
  {
    if (!v19)
    {
      v23 = v14;
      while (1)
      {
        v14 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v14 >= v20)
        {
          goto LABEL_16;
        }

        v24 = *(inited + 8 * v14);
        ++v23;
        if (v24)
        {
          v22 = __clz(__rbit64(v24));
          v113 = (v24 - 1) & v24;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_70;
    }

    v22 = __clz(__rbit64(v19));
    v113 = (v19 - 1) & v19;
LABEL_12:
    v25 = v22 | (v14 << 6);
    v26 = *(v111 + 6);
    v27 = *(v5 + 9);
    v104 = v25;
    v28 = v109;
    (*(v5 + 2))(v109, v26 + v27 * v25, v21);
    v29 = sub_20C134754();
    v31 = v30;
    *&v118 = v29;
    *(&v118 + 1) = v30;
    v33 = v32 & 1;
    LOBYTE(v119) = v32 & 1;
    v116 = v106;
    v117 = 1;
    sub_20BC05698();
    sub_20BC056EC();
    v12 = sub_20C133BF4();
    v34 = v33;
    v5 = v112;
    sub_20B583F4C(v29, v31, v34);
    (*(v5 + 1))(v28, v21);
    v19 = v113;
    if (v12)
    {
      *&v98[(v104 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v104;
      if (__OFADD__(v103++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_16:
  v36 = sub_20BC0FF74(v98, v97, v103, v111);
  v37 = 0;
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BDC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C1582F0;
    v38 = sub_20C1343A4();
    v39 = *(v38 + 16);
    if (v39)
    {
      v109 = 0;
      v111 = v36;
      v40 = sub_20BEDEAF4(v39, 0);
      v113 = sub_20BEE2318(&v118, (v40 + ((*(v102 + 80) + 32) & ~*(v102 + 80))), v39, v38);

      sub_20B583EDC();
      if (v113 != v39)
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v36 = v111;
      v37 = v109;
    }

    else
    {
      v40 = MEMORY[0x277D84F90];
    }

    *&v118 = v40;
    sub_20BC09360(&v118, MEMORY[0x277D50520], sub_20B6A0F4C, sub_20BC09C4C);
    v41 = v112;
    if (v37)
    {
      goto LABEL_78;
    }

    if (*(v118 + 16))
    {
      v42 = v102;
      v43 = v94;
      v44 = v95;
      (*(v102 + 16))(v94, v118 + ((*(v42 + 80) + 32) & ~*(v42 + 80)), v95);

      v45 = MEMORY[0x277D53F88];
      *(inited + 56) = v44;
      *(inited + 64) = v45;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
      (*(v42 + 32))(boxed_opaque_existential_1, v43, v44);
      v47 = *(v36 + 16);
      if (!v47)
      {
        goto LABEL_27;
      }
    }

    else
    {

      *(inited + 64) = 0;
      *(inited + 32) = 0u;
      *(inited + 48) = 0u;
      v47 = *(v36 + 16);
      if (!v47)
      {
LABEL_27:
        v48 = MEMORY[0x277D84F90];
        goto LABEL_28;
      }
    }

    v111 = 0;
    v48 = sub_20BEDEACC(v47, 0);
    v113 = sub_20BEE2300(&v118, (v48 + ((*(v41 + 80) + 32) & ~*(v41 + 80))), v47, v36);

    sub_20B583EDC();
    if (v113 != v47)
    {
      goto LABEL_73;
    }

    v37 = v111;
    v41 = v112;
LABEL_28:
    *&v118 = v48;
    sub_20BC09360(&v118, MEMORY[0x277D50A68], sub_20B6A0F38, sub_20BC09A84);
    if (v37)
    {
      goto LABEL_78;
    }

    if (*(v118 + 16))
    {
      v49 = v93;
      v50 = v110;
      v41[2](v93, v118 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v110);

      v51 = MEMORY[0x277D53FA0];
      *(inited + 96) = v50;
      *(inited + 104) = v51;
      v52 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
      v41[4](v52, v49, v50);
    }

    else
    {

      *(inited + 104) = 0;
      *(inited + 88) = 0u;
      *(inited + 72) = 0u;
    }

    v53 = sub_20C134384();
    v54 = *(v53 + 16);
    if (v54)
    {
      v112 = 0;
      v55 = sub_20BEDEAA4(v54, 0);
      v113 = sub_20BEE22E8(&v118, (v55 + ((*(v101 + 80) + 32) & ~*(v101 + 80))), v54, v53);

      sub_20B583EDC();
      if (v113 != v54)
      {
        goto LABEL_74;
      }

      v37 = v112;
    }

    else
    {
      v55 = MEMORY[0x277D84F90];
    }

    *&v118 = v55;
    sub_20BC09360(&v118, MEMORY[0x277D50018], sub_20B6A0F24, sub_20BC098BC);
    if (v37)
    {
      goto LABEL_78;
    }

    if (*(v118 + 16))
    {
      v56 = v101;
      v57 = v91;
      v58 = v92;
      (*(v101 + 16))(v91, v118 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v92);

      v59 = MEMORY[0x277D53F68];
      *(inited + 136) = v58;
      *(inited + 144) = v59;
      v60 = __swift_allocate_boxed_opaque_existential_1((inited + 112));
      (*(v56 + 32))(v60, v57, v58);
    }

    else
    {

      *(inited + 144) = 0;
      *(inited + 112) = 0u;
      *(inited + 128) = 0u;
    }

    v61 = sub_20C134364();
    v62 = *(v61 + 16);
    if (v62)
    {
      v112 = 0;
      v63 = sub_20BEDE9C4(v62, 0);
      v113 = sub_20BEE2160(&v118, (v63 + ((*(v100 + 80) + 32) & ~*(v100 + 80))), v62, v61);

      sub_20B583EDC();
      if (v113 != v62)
      {
        goto LABEL_75;
      }

      v37 = v112;
    }

    else
    {
      v63 = MEMORY[0x277D84F90];
    }

    *&v118 = v63;
    sub_20BC09360(&v118, MEMORY[0x277D4FEC8], sub_20B6A0ED4, sub_20BC09424);
    if (v37)
    {
      goto LABEL_78;
    }

    if (*(v118 + 16))
    {
      v64 = v100;
      v65 = v89;
      v66 = v90;
      (*(v100 + 16))(v89, v118 + ((*(v64 + 80) + 32) & ~*(v64 + 80)), v90);

      v67 = MEMORY[0x277D53F58];
      *(inited + 176) = v66;
      *(inited + 184) = v67;
      v68 = __swift_allocate_boxed_opaque_existential_1((inited + 152));
      (*(v64 + 32))(v68, v65, v66);
    }

    else
    {

      *(inited + 184) = 0;
      *(inited + 168) = 0u;
      *(inited + 152) = 0u;
    }

    v69 = sub_20C134394();
    v70 = *(v69 + 16);
    if (!v70)
    {
      break;
    }

    v112 = 0;
    v71 = sub_20BEDEA7C(v70, 0);
    v113 = sub_20BEE22D0(&v118, (v71 + ((*(v99 + 80) + 32) & ~*(v99 + 80))), v70, v69);

    sub_20B583EDC();
    if (v113 == v70)
    {
      v37 = v112;
      goto LABEL_52;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    v85 = swift_slowAlloc();
    v37 = 0;
    v36 = sub_20BC0D5A4(v85, v97, inited, sub_20BC055E4, 0);

    MEMORY[0x20F2F6A40](v85, -1, -1);
  }

  v71 = MEMORY[0x277D84F90];
LABEL_52:
  *&v118 = v71;
  sub_20BC09360(&v118, MEMORY[0x277D503E8], sub_20B6A0F10, sub_20BC096F4);
  if (v37)
  {
LABEL_78:

    __break(1u);
    goto LABEL_79;
  }

  if (*(v118 + 16))
  {
    v72 = v99;
    v74 = v87;
    v73 = v88;
    (*(v99 + 16))(v87, v118 + ((*(v72 + 80) + 32) & ~*(v72 + 80)), v88);

    v75 = MEMORY[0x277D53F78];
    *(inited + 216) = v73;
    *(inited + 224) = v75;
    v76 = __swift_allocate_boxed_opaque_existential_1((inited + 192));
    (*(v72 + 32))(v76, v74, v73);
  }

  else
  {

    *(inited + 224) = 0;
    *(inited + 192) = 0u;
    *(inited + 208) = 0u;
  }

  v77 = MEMORY[0x277D84F90];
  for (i = 32; i != 232; i += 40)
  {
    sub_20BC131C4(inited + i, &v118);
    v114[0] = v118;
    v114[1] = v119;
    v115 = v120;
    if (*(&v119 + 1))
    {
      sub_20B51C710(v114, &v116);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_20BC06C7C(0, v77[2] + 1, 1, v77, &qword_27C76AFB0, &unk_20C16F2C8, &qword_27C76AFB8);
      }

      v80 = v77[2];
      v79 = v77[3];
      if (v80 >= v79 >> 1)
      {
        v77 = sub_20BC06C7C((v79 > 1), v80 + 1, 1, v77, &qword_27C76AFB0, &unk_20C16F2C8, &qword_27C76AFB8);
      }

      v77[2] = v80 + 1;
      sub_20B51C710(&v116, &v77[5 * v80 + 4]);
    }

    else
    {
      sub_20BC13234(v114);
    }
  }

  *&v118 = v77;

  sub_20BC092F4(&v118);

  if (*(v118 + 16))
  {
    sub_20B51CC64(v118 + 32, &v118);

    __swift_project_boxed_opaque_existential_1(&v118, *(&v119 + 1));
    sub_20C138EB4();
    v82 = v81;
    __swift_destroy_boxed_opaque_existential_1(&v118);
  }

  else
  {

    v82 = 0;
  }

  v84 = v82;
LABEL_79:
  result.value = v83;
  result.is_nil = v84;
  return result;
}

uint64_t sub_20BC055E4()
{
  v0 = sub_20C134754();
  v2 = v1;
  v4 = v3 & 1;
  sub_20BC05698();
  sub_20BC056EC();
  v5 = sub_20C133BF4();
  sub_20B583F4C(v0, v2, v4);
  return v5 & 1;
}

unint64_t sub_20BC05698()
{
  result = qword_27C76BDB8;
  if (!qword_27C76BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76BDB8);
  }

  return result;
}

unint64_t sub_20BC056EC()
{
  result = qword_27C76BDC0;
  if (!qword_27C76BDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76BDC0);
  }

  return result;
}

char *sub_20BC057DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76ADA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BC0595C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size_0(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_20BC05A58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BEF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_20BC05BA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BC05D3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BC05FD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BF18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BC0617C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AFF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 56 * v8);
  }

  return v10;
}

char *sub_20BC062A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BE18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_20BC063A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BF80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BC064CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BE08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_20BC066A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BEE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BC067B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BC068E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BED0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

char *sub_20BC069EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763F50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_20BC06AE8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AE20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767630);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20BC06C7C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_0(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_20BC06DC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AF18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BC06F0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BED8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_20BC07010(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BEE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

char *sub_20BC0712C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BE20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BC072C0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size_0(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_20BC07494(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AEB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BC07654(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AF50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_20BC07748(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AEF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_20BC0785C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BF50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BF58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20BC07990(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7670A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for ActivityType(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BC07AE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BF48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_20BC07C34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AE68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BC07D58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BE40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_20BC07E5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769648);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BC07FA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BDD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
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

char *sub_20BC08130(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768728);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_20BC082AC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AEE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AEE8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BC08420(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size_0(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[40 * v9])
    {
      memmove(v13, v14, 40 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_20BC085E0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76ACA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[21 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 168 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762340);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BC08734(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BE58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BC08888(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BE78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

size_t sub_20BC089B0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_20BC08C04(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size_0(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[32 * v9])
    {
      memmove(v14, v15, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_20BC08D10(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BE00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_20BC08E6C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_20BC0906C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_0(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_20BC091B4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size_0(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

uint64_t sub_20BC092F4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20B6A0EFC(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_20BC095EC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_20BC09360(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *))
{
  v7 = *(a2(0) - 8);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a3(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v11[1] = v9;
  result = a4(v11);
  *a1 = v8;
  return result;
}

uint64_t sub_20BC09424(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20C13DF84();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C133474();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C133474() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20BC0A9BC(v8, v9, a1, v4, MEMORY[0x277D4FEC8], &qword_27C76BFE0, MEMORY[0x277D4FEC8], MEMORY[0x277D53F60], sub_20BC0B46C);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_20BC09F68(0, v2, 1, a1, MEMORY[0x277D4FEC8], &qword_27C76BFE0, MEMORY[0x277D4FEC8], MEMORY[0x277D53F60]);
  }

  return result;
}

uint64_t sub_20BC095EC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20C13DF84();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AFB8);
        v5 = sub_20C13CCD4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_20BC0A210(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_20BC09E14(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20BC096F4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20C13DF84();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C133D14();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C133D14() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20BC0A9BC(v8, v9, a1, v4, MEMORY[0x277D503E8], &qword_27C76BFD8, MEMORY[0x277D503E8], MEMORY[0x277D53F80], sub_20BC0BDD4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_20BC09F68(0, v2, 1, a1, MEMORY[0x277D503E8], &qword_27C76BFD8, MEMORY[0x277D503E8], MEMORY[0x277D53F80]);
  }

  return result;
}

uint64_t sub_20BC098BC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20C13DF84();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C133634();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C133634() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20BC0A9BC(v8, v9, a1, v4, MEMORY[0x277D50018], &qword_27C76BFE8, MEMORY[0x277D50018], MEMORY[0x277D53F70], sub_20BC0C3C8);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_20BC09F68(0, v2, 1, a1, MEMORY[0x277D50018], &qword_27C76BFE8, MEMORY[0x277D50018], MEMORY[0x277D53F70]);
  }

  return result;
}

uint64_t sub_20BC09A84(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20C13DF84();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C134784();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C134784() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20BC0A9BC(v8, v9, a1, v4, MEMORY[0x277D50A68], &qword_27C76BFF0, MEMORY[0x277D50A68], MEMORY[0x277D53FA8], sub_20BC0C9BC);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_20BC09F68(0, v2, 1, a1, MEMORY[0x277D50A68], &qword_27C76BFF0, MEMORY[0x277D50A68], MEMORY[0x277D53FA8]);
  }

  return result;
}

uint64_t sub_20BC09C4C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20C13DF84();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C134054();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C134054() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20BC0A9BC(v8, v9, a1, v4, MEMORY[0x277D50520], &qword_27C76BFF8, MEMORY[0x277D50520], MEMORY[0x277D53F90], sub_20BC0CFB0);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_20BC09F68(0, v2, 1, a1, MEMORY[0x277D50520], &qword_27C76BFF8, MEMORY[0x277D50520], MEMORY[0x277D53F90]);
  }

  return result;
}

uint64_t sub_20BC09E14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v19 = a3;
    v7 = v6;
    v8 = v5;
    while (1)
    {
      sub_20B51CC64(v8, &v17);
      sub_20B51CC64(v8 - 40, v16);
      __swift_project_boxed_opaque_existential_1(&v17, v18);
      sub_20C138EB4();
      v10 = v9;
      __swift_project_boxed_opaque_existential_1(v16, v16[3]);
      sub_20C138EB4();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1(v16);
      result = __swift_destroy_boxed_opaque_existential_1(&v17);
      if (v10 >= v12)
      {
LABEL_4:
        a3 = v19 + 1;
        v5 += 40;
        --v6;
        if (v19 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_20B51C710(v8, &v17);
      v13 = *(v8 - 24);
      *v8 = *(v8 - 40);
      *(v8 + 16) = v13;
      *(v8 + 32) = *(v8 - 8);
      result = sub_20B51C710(&v17, v8 - 40);
      v8 -= 40;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20BC09F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void), unint64_t *a6, void (*a7)(uint64_t), uint64_t a8)
{
  v52 = a8;
  v50 = a6;
  v51 = a7;
  v12 = a5(0);
  v13 = MEMORY[0x28223BE20](v12);
  v45 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v49 = &v35 - v16;
  result = MEMORY[0x28223BE20](v15);
  v48 = &v35 - v19;
  v37 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v46 = *(v18 + 16);
    v47 = v18 + 16;
    v21 = *(v18 + 72);
    v22 = (v18 + 8);
    v43 = (v18 + 32);
    v44 = v20;
    v23 = v20 + v21 * (a3 - 1);
    v42 = -v21;
    v24 = a1 - a3;
    v36 = v21;
    v25 = v20 + v21 * a3;
LABEL_5:
    v40 = v23;
    v41 = a3;
    v38 = v25;
    v39 = v24;
    v26 = v23;
    while (1)
    {
      v27 = v48;
      v28 = v46;
      v46(v48, v25, v12);
      v29 = v49;
      v28(v49, v26, v12);
      sub_20BC1336C(v50, v51);
      v30 = sub_20C13C834();
      v31 = *v22;
      (*v22)(v29, v12);
      result = v31(v27, v12);
      if ((v30 & 1) == 0)
      {
LABEL_4:
        a3 = v41 + 1;
        v23 = v40 + v36;
        v24 = v39 - 1;
        v25 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v25, v12);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v26, v33, v12);
      v26 += v42;
      v25 += v42;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20BC0A210(uint64_t result, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_92:
    v26 = *result;
    if (!*result)
    {
      goto LABEL_130;
    }

    v5 = v9;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_20B6A07A0(v5);
      v5 = result;
    }

    v112 = v5;
    v93 = *(v5 + 16);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v6;
        if (!*v6)
        {
          goto LABEL_128;
        }

        v6 = (v93 - 1);
        v95 = *(v5 + 16 * v93);
        v96 = *(v5 + 16 * (v93 - 1) + 40);
        sub_20BC0BA60((v94 + 40 * v95), (v94 + 40 * *(v5 + 16 * (v93 - 1) + 32)), v94 + 40 * v96, v26);
        if (v4)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_20B6A07A0(v5);
        }

        if (v93 - 2 >= *(v5 + 16))
        {
          goto LABEL_118;
        }

        v97 = (v5 + 16 * v93);
        *v97 = v95;
        v97[1] = v96;
        v112 = v5;
        result = sub_20B6A0714(v6);
        v5 = v112;
        v93 = *(v112 + 16);
        v6 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v99 = result;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v11 >= v7)
    {
      v25 = v11;
      v26 = result;
      goto LABEL_22;
    }

    v102 = v9;
    v12 = *v6;
    sub_20B51CC64(*v6 + 40 * v11, &v110);
    v13 = v10;
    v14 = 40 * v10;
    v15 = v12 + v14;
    sub_20B51CC64(v12 + v14, v108);
    __swift_project_boxed_opaque_existential_1(&v110, v111);
    sub_20C138EB4();
    v17 = v16;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    sub_20C138EB4();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1(v108);
    result = __swift_destroy_boxed_opaque_existential_1(&v110);
    v100 = v13;
    v20 = v13 + 2;
    v5 = v15 + 80;
    while (v7 != v20)
    {
      sub_20B51CC64(v5, &v110);
      sub_20B51CC64(v5 - 40, v108);
      __swift_project_boxed_opaque_existential_1(&v110, v111);
      sub_20C138EB4();
      v22 = v21;
      __swift_project_boxed_opaque_existential_1(v108, v109);
      sub_20C138EB4();
      v24 = v23;
      __swift_destroy_boxed_opaque_existential_1(v108);
      result = __swift_destroy_boxed_opaque_existential_1(&v110);
      ++v20;
      v5 += 40;
      if (v17 < v19 == v22 >= v24)
      {
        v25 = v20 - 1;
        goto LABEL_11;
      }
    }

    v25 = v7;
LABEL_11:
    if (v17 >= v19)
    {
      goto LABEL_20;
    }

    v9 = v102;
    v26 = v99;
    if (v25 < v100)
    {
      goto LABEL_121;
    }

    if (v100 < v25)
    {
      v27 = 40 * v25 - 40;
      v28 = v25;
      v29 = v100;
      do
      {
        if (v29 != --v28)
        {
          v33 = *v6;
          if (!*v6)
          {
            goto LABEL_127;
          }

          v30 = v33 + v14;
          v5 = v33 + v27;
          sub_20B51C710((v33 + v14), &v110);
          v31 = *(v5 + 32);
          v32 = *(v5 + 16);
          *v30 = *v5;
          *(v30 + 16) = v32;
          *(v30 + 32) = v31;
          result = sub_20B51C710(&v110, v5);
        }

        ++v29;
        v27 -= 40;
        v14 += 40;
      }

      while (v29 < v28);
LABEL_20:
      v10 = v100;
      v9 = v102;
      v26 = v99;
      goto LABEL_22;
    }

    v10 = v100;
LABEL_22:
    v34 = v6[1];
    if (v25 < v34)
    {
      if (__OFSUB__(v25, v10))
      {
        goto LABEL_120;
      }

      if (v25 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_122;
        }

        if (v10 + a4 >= v34)
        {
          v5 = v6[1];
        }

        else
        {
          v5 = v10 + a4;
        }

        if (v5 < v10)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v25 != v5)
        {
          break;
        }
      }
    }

    v5 = v25;
    if (v25 < v10)
    {
      goto LABEL_119;
    }

LABEL_32:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20BC0595C(0, *(v9 + 2) + 1, 1, v9, &qword_27C763840);
      v9 = result;
    }

    v36 = *(v9 + 2);
    v35 = *(v9 + 3);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = sub_20BC0595C((v35 > 1), v36 + 1, 1, v9, &qword_27C763840);
      v9 = result;
    }

    *(v9 + 2) = v37;
    v38 = &v9[16 * v36];
    *(v38 + 4) = v10;
    *(v38 + 5) = v5;
    v39 = *v26;
    if (!*v26)
    {
      goto LABEL_129;
    }

    v105 = v5;
    if (v36)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v9 + 4);
          v41 = *(v9 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_51:
          if (v43)
          {
            goto LABEL_108;
          }

          v56 = &v9[16 * v37];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_111;
          }

          v62 = &v9[16 * v5 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_115;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v66 = &v9[16 * v37];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_65:
        if (v61)
        {
          goto LABEL_110;
        }

        v69 = &v9[16 * v5];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_72:
        v77 = v5 - 1;
        if (v5 - 1 >= v37)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v6)
        {
          goto LABEL_126;
        }

        v78 = *&v9[16 * v77 + 32];
        v79 = *&v9[16 * v5 + 40];
        sub_20BC0BA60((*v6 + 40 * v78), (*v6 + 40 * *&v9[16 * v5 + 32]), *v6 + 40 * v79, v39);
        if (v4)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_20B6A07A0(v9);
        }

        if (v77 >= *(v9 + 2))
        {
          goto LABEL_105;
        }

        v80 = &v9[16 * v77];
        *(v80 + 4) = v78;
        *(v80 + 5) = v79;
        v112 = v9;
        result = sub_20B6A0714(v5);
        v9 = v112;
        v37 = *(v112 + 16);
        if (v37 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = &v9[16 * v37 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_106;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_107;
      }

      v51 = &v9[16 * v37];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_109;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_112;
      }

      if (v55 >= v47)
      {
        v73 = &v9[16 * v5 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_116;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_3:
    result = v26;
    v7 = v6[1];
    v8 = v105;
    if (v105 >= v7)
    {
      goto LABEL_92;
    }
  }

  v81 = v10;
  v82 = *v6;
  v83 = *v6 + 40 * v25;
  v101 = v81;
  v103 = v9;
  v84 = v81 - v25;
  v106 = v5;
LABEL_83:
  v107 = v25;
  v85 = v84;
  v86 = v83;
  while (1)
  {
    sub_20B51CC64(v86, &v110);
    sub_20B51CC64(v86 - 40, v108);
    __swift_project_boxed_opaque_existential_1(&v110, v111);
    sub_20C138EB4();
    v88 = v87;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    sub_20C138EB4();
    v90 = v89;
    __swift_destroy_boxed_opaque_existential_1(v108);
    result = __swift_destroy_boxed_opaque_existential_1(&v110);
    if (v88 >= v90)
    {
LABEL_82:
      v5 = v106;
      ++v25;
      v83 += 40;
      --v84;
      if (v107 + 1 != v106)
      {
        goto LABEL_83;
      }

      v26 = v99;
      v9 = v103;
      v6 = a3;
      v10 = v101;
      if (v106 < v101)
      {
        goto LABEL_119;
      }

      goto LABEL_32;
    }

    if (!v82)
    {
      break;
    }

    sub_20B51C710(v86, &v110);
    v91 = *(v86 - 24);
    *v86 = *(v86 - 40);
    *(v86 + 16) = v91;
    *(v86 + 32) = *(v86 - 8);
    sub_20B51C710(&v110, v86 - 40);
    v86 -= 40;
    if (__CFADD__(v85++, 1))
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}