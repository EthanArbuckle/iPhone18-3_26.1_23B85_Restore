uint64_t sub_20B7E30C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    *(v0 + 72) = *__swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_20B7E31CC;

    return sub_20BD49114();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_20B7E31CC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20B7E3324, 0, 0);
  }
}

uint64_t sub_20B7E3324()
{
  v1 = *(*(v0 + 72) + 88);
  os_unfair_lock_lock((v1 + 24));
  v2 = 3;
  if ((sub_20B8DD120(3, *(v1 + 16)) & 1) == 0)
  {
    v2 = 0;
    if ((sub_20B8DD120(0, *(v1 + 16)) & 1) == 0)
    {
      v2 = 4;
      if ((sub_20B8DD120(4, *(v1 + 16)) & 1) == 0)
      {
        if (sub_20B8DD120(1, *(v1 + 16)))
        {
          v2 = 1;
        }

        else
        {
          v2 = 2;
        }
      }
    }
  }

  v3 = *(v0 + 64);
  os_unfair_lock_unlock((v1 + 24));
  v3[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_sessionRouteCategory] = v2;

  **(v0 + 40) = *(v0 + 64) == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20B7E341C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_platform);
  if (v1 >= 2)
  {
    if (v1 != 3)
    {
      sub_20C13DC94();
      MEMORY[0x20F2F4230](0xD000000000000016, 0x800000020C19A330);
      MEMORY[0x20F2F4230](0xD000000000000015, 0x800000020C19A350);
      sub_20C13DDF4();
      result = sub_20C13DE24();
      __break(1u);
      return result;
    }

    v2 = 0;
    v3 = 0.0;
  }

  else
  {
    v2 = 1;
    v3 = 1.0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    *(Strong + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_countdownPosition) = v2;
    sub_20BB9A468(v2);
    v6 = *(v5 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonView);
    CGAffineTransformMakeScale(&v10, 0.475, 0.475);
    [v6 setTransform_];
    if (v2)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    [v6 setAlpha_];
    swift_unknownObjectRelease();
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    [*(v8 + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_countdownView) setAlpha_];
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_20C139584();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B7E367C()
{
  v1 = sub_20C13C4A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_timer;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v5, &v14, &unk_27C765CA0);
  if (v15)
  {
    sub_20B51C710(&v14, v16);
    __swift_project_boxed_opaque_existential_1(v16, v17);
    sub_20C13A534();
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_20B520158(&v14, &unk_27C765CA0);
  }

  sub_20C13CE94();
  v7 = v6;
  sub_20C138254();
  v9 = v8;
  sub_20C138274();
  if (v9 + v10 - v7 <= 0.0)
  {
    return sub_20B7E3D88();
  }

  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_timerProvider), *(v0 + OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_timerProvider + 24));
  *v4 = 10;
  (*(v2 + 104))(v4, *MEMORY[0x277D85178], v1);
  sub_20B5E2E18();
  v11 = sub_20C13D374();
  sub_20C13AE14();

  (*(v2 + 8))(v4, v1);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  sub_20C13A544();
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_20C13A554();
  sub_20B51CC64(v16, &v14);
  swift_beginAccess();
  sub_20B5DF2D4(&v14, v0 + v5, &unk_27C765CA0);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

void sub_20B7E3974()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_20B7E3D88();
  }
}

uint64_t sub_20B7E39C8()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C138104();
  if (v4 != sub_20C138104())
  {
    v5 = sub_20C138104();
    result = sub_20C138104();
    if (v5 != result)
    {
      return result;
    }
  }

  v7 = sub_20C134BF4();
  if ((v7 & 0x100000000) == 0)
  {
    sub_20C13B534();
    v8 = sub_20C13BB74();
    v9 = sub_20C13D1D4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20B517000, v8, v9, "Unknown GymKit connection state encountered", v10, 2u);
      MEMORY[0x20F2F6A40](v10, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }

  if (v7 > 2u)
  {
    goto LABEL_11;
  }

  if (!v7)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v14 = result;
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = 256;
    swift_unknownObjectRetain();
    sub_20BC04528(sub_20B7E5114, v15);

    v16 = *&v14[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playPauseGestureRecognizer];
    if (v16)
    {
      [v16 setEnabled_];
    }

    [v14 setNeedsFocusUpdate];
    [*&v14[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_spinnerView] startAnimating];
    goto LABEL_15;
  }

  if (v7 == 1)
  {
LABEL_11:
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v11 = result;
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = 1;
    swift_unknownObjectRetain();
    sub_20BC04528(sub_20B7E4F44, v12);

    v13 = *&v11[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playPauseGestureRecognizer];
    if (v13)
    {
      [v13 setEnabled_];
    }
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v11 = result;
    v17 = swift_allocObject();
    *(v17 + 16) = v11;
    *(v17 + 24) = 0;
    swift_unknownObjectRetain();
    sub_20BC04528(sub_20B7E5114, v17);

    v18 = *&v11[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playPauseGestureRecognizer];
    if (v18)
    {
      [v18 setEnabled_];
    }
  }

  [v11 setNeedsFocusUpdate];
  [*&v11[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_spinnerView] stopAnimating];
LABEL_15:

  return swift_unknownObjectRelease();
}

uint64_t sub_20B7E3D88()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = 1;
    v5 = objc_opt_self();
    v16 = sub_20B7E5100;
    v17 = v4;
    v12 = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v14 = sub_20B7B548C;
    v15 = &block_descriptor_78_0;
    v6 = _Block_copy(&v12);
    swift_unknownObjectRetain();

    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    v16 = sub_20B7E50FC;
    v17 = v7;
    v12 = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v14 = sub_20BC044C8;
    v15 = &block_descriptor_85;
    v8 = _Block_copy(&v12);

    [v5 smu:v6 animateUsingSpringWithTension:v8 friction:500.0 animations:40.0 completion:?];
    _Block_release(v8);
    _Block_release(v6);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_20C139574();
    result = swift_unknownObjectRelease();
  }

  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_onCountdownSequenceStarted);
  if (v10)
  {

    v10(v11);
    return sub_20B583ECC(v10);
  }

  return result;
}

uint64_t sub_20B7E3FD0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = 0;
    v5 = objc_opt_self();
    v17 = sub_20B7E4F2C;
    v18 = v4;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_20B7B548C;
    v16 = &block_descriptor_62;
    v6 = _Block_copy(&v13);
    v7 = v0;
    swift_unknownObjectRetain();

    v8 = swift_allocObject();
    *(v8 + 16) = sub_20B7E4F24;
    *(v8 + 24) = v3;
    v17 = sub_20B78E220;
    v18 = v8;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_20BC044C8;
    v16 = &block_descriptor_68;
    v9 = _Block_copy(&v13);

    [v5 smu:v6 animateUsingSpringWithTension:v9 friction:500.0 animations:40.0 completion:?];
    _Block_release(v9);
    _Block_release(v6);

    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_countdownPosition) = 2;
    v11 = result;
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = 2;
    swift_unknownObjectRetain();
    sub_20BB9B258(sub_20B7E4F38, v12);
    swift_unknownObjectRelease();
  }

  return result;
}

void *sub_20B7E4260()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result removeFromSuperview];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B7E42C0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_platform) != 3 && result != 0)
  {
    v3 = result;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = *(v3 + 56);
    *(v3 + 56) = sub_20B7E4F10;
    *(v3 + 64) = v4;

    swift_unknownObjectRetain();
    sub_20B583ECC(v5);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_productPlacementView);
      if (v7)
      {
        v8 = *(Strong + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_productPlacementView + 8);
        v9 = v7;
        sub_20B7F9F58(v7, v8);
      }

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_20B7E43F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      v3 = *&v2[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_productPlacementView];
      if (v3)
      {
        v4 = *&v2[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_productPlacementView + 8];
        v5 = v3;
        [v2 layoutIfNeeded];
        v6 = objc_opt_self();
        v7 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8 = swift_allocObject();
        v8[2] = v5;
        v8[3] = v4;
        v8[4] = v7;
        aBlock[4] = sub_20B7E4F18;
        aBlock[5] = v8;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_20B7B548C;
        aBlock[3] = &block_descriptor_17;
        v9 = _Block_copy(aBlock);
        v10 = v5;

        [v6 animateWithDuration:v9 animations:0.3];
        swift_unknownObjectRelease();
        _Block_release(v9);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_20B7E45A0()
{
  v52[2] = *MEMORY[0x277D85DE8];
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - v6;
  v8 = sub_20C132C14();
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - v13;
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_sessionRouteCategory) != 2)
  {
    return;
  }

  v49 = v2;
  v50 = v12;
  type metadata accessor for SessionIntroSequencePresenter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v51 = [objc_opt_self() bundleForClass_];
  v16 = sub_20C13C914();
  v17 = sub_20C13C914();
  v18 = [v51 pathForResource:v16 ofType:v17];

  if (v18)
  {
    sub_20C13C954();

    sub_20C132B44();

    (*(v50 + 16))(v10, v14, v8);
    v19 = objc_allocWithZone(MEMORY[0x277CB83D0]);
    v20 = sub_20BB430B4(v10);
    v21 = OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_audioPlayer;
    v22 = *(v0 + OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_audioPlayer);
    *(v0 + OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_audioPlayer) = v20;
    v23 = v20;

    if (v23)
    {
      [v23 setDelegate_];
    }

    v24 = [objc_opt_self() auxiliarySession];
    v52[0] = 0;
    v25 = [v24 setParticipatesInNowPlayingAppPolicy:0 error:v52];
    v26 = v52[0];
    if (v25)
    {
      v47 = *MEMORY[0x277CB8048];
      v27 = *MEMORY[0x277CB80A8];
      v52[0] = 0;
      v28 = v26;
      v48 = v24;
      if ([v24 setCategory:v47 mode:v27 options:1 error:v52])
      {
        v29 = *(v0 + v21);
        v30 = v52[0];
        v31 = v48;
        [v29 setAudioSession_];
        [*(v0 + v21) play];
        sub_20C13B534();
        v32 = sub_20C13BB74();
        v33 = sub_20C13D1F4();
        v34 = os_log_type_enabled(v32, v33);
        v35 = v50;
        if (v34)
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_20B517000, v32, v33, "[SessionPresenter] Playing workout countdown sound", v36, 2u);
          MEMORY[0x20F2F6A40](v36, -1, -1);
        }

        (*(v49 + 8))(v7, v1);
        (*(v35 + 8))(v14, v8);
        return;
      }

      v41 = v52[0];
      v42 = sub_20C132A44();

      swift_willThrow();
      v40 = v42;
    }

    else
    {
      v38 = v52[0];
      v39 = sub_20C132A44();

      swift_willThrow();
      v40 = v39;
    }

    v43 = v50;
    sub_20C13B534();
    v44 = sub_20C13BB74();
    v45 = sub_20C13D1F4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_20B517000, v44, v45, "[SessionPresenter] Couldn't play workout countdown sound", v46, 2u);
      MEMORY[0x20F2F6A40](v46, -1, -1);
    }

    (*(v49 + 8))(v4, v1);
    (*(v43 + 8))(v14, v8);
  }

  else
  {
    v37 = v51;
  }
}

id sub_20B7E4BF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionIntroSequencePresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SessionIntroSequencePresenter()
{
  result = qword_27C765C88;
  if (!qword_27C765C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B7E4DE8()
{
  sub_20B76E984();
  if (v0 <= 0x3F)
  {
    sub_20C1344C4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20B7E4F5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  sub_20B52F9E8(a1, &v12 - v3, &unk_27C765CB0);
  v5 = sub_20C136484();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20B520158(v4, &unk_27C765CB0);
    v7 = 1;
  }

  else
  {
    v8 = sub_20C136474();
    v10 = v9;
    (*(v6 + 8))(v4, v5);
    v14 = v8;
    v15 = v10 & 1;
    v12 = 1;
    v13 = 1;
    sub_20B64BC70();
    sub_20B64BCC4();
    v7 = sub_20C133BF4() ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_20B7E5138(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_20B52AC14;

  return v7();
}

uint64_t sub_20B7E5220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_20C13CDF4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;
  v9[5] = a3;
  sub_20B584050(a2);
  sub_20B6380FC(0, 0, v7, &unk_20C15A640, v9);
}

uint64_t sub_20B7E5334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_20B7E5358, 0, 0);
}

uint64_t sub_20B7E5358()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v5 = (v1 + *v1);
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_20B7E5484;

    return v5();
  }

  else
  {
    **(v0 + 16) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_20B7E5484()
{

  return MEMORY[0x2822009F8](sub_20B7E5580, 0, 0);
}

uint64_t sub_20B7E55A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52AC14;

  return sub_20B7E5334(a1, v4, v5, v7, v6);
}

uint64_t sub_20B7E5664(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20B7E5138(a1, v4, v5, v6);
}

uint64_t sub_20B7E5744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_20C13CDF4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a3;

  sub_20B6383D0(0, 0, v10, a5, v12);
}

uint64_t sub_20B7E5850(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_20B52A9D4;

  return v7();
}

uint64_t sub_20B7E5938(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B7E5850(a1, v4, v5, v6);
}

uint64_t sub_20B7E5A08(uint64_t a1, int a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B7E5E34(a2);
  }

  return result;
}

uint64_t sub_20B7E5A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  v8 = sub_20C134EC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ModalityFilterUpdated();
  MEMORY[0x28223BE20](v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_coordinator);

    v24[1] = *(v16 + 24);
    swift_unknownObjectRetain();

    v17 = *(v9 + 16);
    v25 = v8;
    v17(v11, a3, v8);
    sub_20B52F9E8(a1, v7, &qword_27C771090);
    v18 = sub_20C1365F4();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v7, 1, v18) == 1)
    {
      sub_20B520158(v7, &qword_27C771090);
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v20 = sub_20C1365A4();
      v21 = v22;
      (*(v19 + 8))(v7, v18);
    }

    swift_getObjectType();
    (*(v9 + 32))(v14, v11, v25);
    v23 = &v14[*(v12 + 20)];
    *v23 = v20;
    v23[1] = v21;
    sub_20B7E6D24(&unk_27C765CE0, type metadata accessor for ModalityFilterUpdated);
    sub_20C13A764();
    swift_unknownObjectRelease();
    return sub_20B7E6D6C(v14, type metadata accessor for ModalityFilterUpdated);
  }

  return result;
}

uint64_t sub_20B7E5DAC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_20BF9FD84(v3, a1, Strong);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20B7E5E34(int a1)
{
  v2 = v1;
  v57 = a1;
  v3 = sub_20C13C554();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v56[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v56[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v56[-v10];
  v12 = sub_20C134EC4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v56[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(v2 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_coordinator);
  (*(v13 + 16))(v16, v17 + *(*v17 + 248), v12, v14);
  sub_20C134E84();
  (*(v13 + 8))(v16, v12);
  v18 = sub_20C135C84();
  if ((*(*(v18 - 8) + 48))(v11, 1, v18) == 1)
  {
    sub_20B520158(v11, &unk_27C7629B0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_20B7E6D6C(v11, MEMORY[0x277D52060]);
    if (EnumCaseMultiPayload == 4)
    {
      sub_20C13B534();
      v20 = sub_20C13BB74();
      v21 = sub_20C13D1F4();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_20B517000, v20, v21, "Not building modality option row, root property matches", v22, 2u);
        MEMORY[0x20F2F6A40](v22, -1, -1);
      }

      return (*(v6 + 8))(v8, v5);
    }
  }

  v24 = (v2 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_storefrontLocalizer), *(v2 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_storefrontLocalizer + 24));
  v25 = sub_20C138D34();
  v27 = sub_20BC74C70(v25, v26, 0x722E657275676966, 0xEA00000000006E75, v17);

  if ((*(v17 + *(*v17 + 200)) & 8) != 0)
  {
    v31 = 0;
    v32 = 0;
    v28 = 0;
    v30 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    v28 = sub_20C138D34();
    v30 = v29;
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    v31 = sub_20C138D34();
  }

  *&v61 = v31;
  *(&v61 + 1) = v32;
  LOBYTE(v62) = 1;
  *(&v62 + 1) = 0;
  *&v63 = 0;
  WORD4(v63) = 128;
  v64 = 0uLL;
  v65 = xmmword_20C15A670;
  *&v66 = v28;
  *(&v66 + 1) = v30;
  LOBYTE(v67) = 0;
  *(&v67 + 1) = v27;
  v68 = MEMORY[0x277D84F90];
  *&v69 = 0;
  *(&v69 + 1) = v28;
  *v70 = v30;
  *&v70[8] = xmmword_20C150190;
  nullsub_1(&v61);
  v33 = v2 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row;
  v34 = *(v2 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 144);
  v71[8] = *(v2 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 128);
  v71[9] = v34;
  v72 = *(v2 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 160);
  v35 = *(v2 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 80);
  v71[4] = *(v2 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 64);
  v71[5] = v35;
  v36 = *(v2 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 112);
  v71[6] = *(v2 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 96);
  v71[7] = v36;
  v37 = *(v2 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 16);
  v71[0] = *(v2 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row);
  v71[1] = v37;
  v38 = *(v2 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 48);
  v71[2] = *(v2 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 32);
  v71[3] = v38;
  v39 = *v70;
  *(v33 + 128) = v69;
  *(v33 + 144) = v39;
  *(v33 + 160) = *&v70[16];
  v40 = v66;
  *(v33 + 64) = v65;
  *(v33 + 80) = v40;
  v41 = v68;
  *(v33 + 96) = v67;
  *(v33 + 112) = v41;
  v42 = v62;
  *v33 = v61;
  *(v33 + 16) = v42;
  v43 = v64;
  *(v33 + 32) = v63;
  *(v33 + 48) = v43;

  sub_20B520158(v71, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v44 = result;
      v45 = sub_20B61D8D8(v2, result);
      if (v46)
      {
        v48 = v45;
        v49 = v46;
        v50 = v47;
        sub_20B5E2E18();
        v51 = sub_20C13D374();
        v53 = v58;
        v52 = v59;
        *v58 = v51;
        v54 = v60;
        (*(v52 + 104))(v53, *MEMORY[0x277D85200], v60);
        v55 = sub_20C13C584();
        result = (*(v52 + 8))(v53, v54);
        if ((v55 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        if ((v57 & 0x80) != 0)
        {
          sub_20C10ABD0(v2, v48, v57 & 1, v44);
        }

        else
        {
          sub_20B620CF4(v48, v49, v50, v2, v57 & 1, v44);
        }
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

uint64_t sub_20B7E64F8()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_storefrontLocalizer);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ModalityFilterOptionsShelf()
{
  result = qword_27C765CD0;
  if (!qword_27C765CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B7E6660()
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

uint64_t sub_20B7E671C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B7E6794@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI26ModalityFilterOptionsShelf_row + 32);
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

uint64_t sub_20B7E6964()
{
  v1 = v0;
  v2 = type metadata accessor for ShelfMetricAction();
  v3 = (v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ClearAllSelected();
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v9 = *(*v0 + 248);
  v10 = sub_20C134EC4();
  (*(*(v10 - 8) + 16))(v8, v0 + v9, v10);
  sub_20B7E6D24(&qword_27C7649C8, type metadata accessor for ClearAllSelected);
  sub_20C13A764();
  sub_20B7E6D6C(v8, type metadata accessor for ClearAllSelected);
  v11 = sub_20C136664();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = v3[7];
  v13 = *MEMORY[0x277D51450];
  v14 = sub_20C134F24();
  (*(*(v14 - 8) + 104))(&v5[v12], v13, v14);
  v15 = v3[8];
  v16 = sub_20C132C14();
  (*(*(v16 - 8) + 56))(&v5[v15], 1, 1, v16);
  v17 = v3[10];
  v18 = sub_20C135ED4();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v19 = v3[12];
  v20 = *MEMORY[0x277D51768];
  v21 = sub_20C1352E4();
  (*(*(v21 - 8) + 104))(&v5[v19], v20, v21);
  v22 = v3[13];
  v23 = sub_20C136E94();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  v24 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  *&v5[v3[9]] = xmmword_20C15A680;
  v25 = &v5[v3[11]];
  *v25 = 0;
  *(v25 + 1) = 0;
  *&v5[v3[14]] = v24;
  v26 = *(v1 + 112);
  if (v26)
  {

    v26(v5);
    sub_20B5E0F50(v26);
  }

  return sub_20B7E6D6C(v5, type metadata accessor for ShelfMetricAction);
}

uint64_t sub_20B7E6D24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B7E6D6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B7E6E7C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_20B7E6F64;

    return sub_20B520714();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B7E6F64()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20B7E70A0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_20B7E70A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B7E7104(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v4 = sub_20B7E74E0;
  }

  else
  {
    v4 = sub_20B7E7320;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20B7E7218()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B7E7320()
{
  swift_weakInit();
  sub_20C13CDA4();
  *(v0 + 248) = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B7E73C0, v2, v1);
}

uint64_t sub_20B7E73C0()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v2 = *(v0 + 232);
  if (Strong)
  {
    v3 = *(Strong + 48);

    sub_20B9056A8(v2);

    v4 = sub_20C13C744();

    [v3 setClientMetricsOverlay_];
  }

  else
  {
  }

  swift_weakDestroy();

  return MEMORY[0x2822009F8](sub_20B52E9D0, 0, 0);
}

uint64_t sub_20B7E74E0()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v3 + 8))(v1, v2);
  (*(v0[23] + 8))(v0[24], v0[22]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B7E761C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_20B7E7680(void *a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();
  swift_unknownObjectRetain();
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1B4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v23 = v5;
    v11 = v10;
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    v13 = [a1 targetIdentifier];
    v14 = sub_20C13C954();
    v22 = v4;
    v15 = a1;
    v16 = v2;
    v18 = v17;

    v19 = sub_20B51E694(v14, v18, &v24);
    v2 = v16;
    a1 = v15;

    *(v11 + 4) = v19;
    _os_log_impl(&dword_20B517000, v8, v9, "[IAM] registering target: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);

    (*(v23 + 8))(v7, v22);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return [*(v2 + 16) registerMessageTarget_];
}

void sub_20B7E78AC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();

  v10 = sub_20C13BB74();
  v11 = sub_20C13D1B4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_20B51E694(a1, a2, &v19);
    _os_log_impl(&dword_20B517000, v10, v11, "[IAM] countable event received: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F2F6A40](v13, -1, -1);
    MEMORY[0x20F2F6A40](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v14 = *(v3 + 16);
  v15 = objc_allocWithZone(MEMORY[0x277D1B2A0]);
  v16 = sub_20C13C914();
  v17 = [v15 initWithName_];

  [v14 receiveEvent_];
}

void sub_20B7E7AB0(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();

  v12 = sub_20C13BB74();
  v13 = sub_20C13D1B4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = v4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_20B51E694(a1, a2, &v23);
    _os_log_impl(&dword_20B517000, v12, v13, "[IAM] value event received: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x20F2F6A40](v16, -1, -1);
    v17 = v15;
    v4 = v22;
    MEMORY[0x20F2F6A40](v17, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v18 = *(v4 + 16);
  v19 = objc_allocWithZone(MEMORY[0x277D1B2D0]);
  v20 = sub_20C13C914();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v21 = [v19 initWithName:v20 value:sub_20C13DFD4()];
  swift_unknownObjectRelease();

  [v18 receiveEvent_];
}

void sub_20B7E7D24()
{
  v1 = *(*v0 + 16);
  v2 = sub_20C13C914();
  v3 = sub_20C13C914();
  v4 = sub_20C13C914();
  [v1 reportMessageWithIdentifier:v2 actionWasPerformedWithIdentifier:v3 fromTargetWithIdentifier:v4];
}

void sub_20B7E7DD0()
{
  v1 = *(*v0 + 16);
  v2 = sub_20C13CF64();
  [v1 reportApplicationContextPropertiesDidChange_];
}

uint64_t sub_20B7E7E84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_20B7E7EF4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI35SessionRoutePickerSectionHeaderView_titleLabel;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v10 = OBJC_IVAR____TtC9SeymourUI35SessionRoutePickerSectionHeaderView_separatorView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v61.receiver = v4;
  v61.super_class = type metadata accessor for SessionRoutePickerSectionHeaderView();
  v11 = objc_msgSendSuper2(&v61, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = *MEMORY[0x277D76940];
  v14 = v11;
  v15 = [v12 preferredFontDescriptorWithTextStyle_];
  v16 = [v15 fontDescriptorWithSymbolicTraits_];
  if (!v16)
  {
    v16 = v15;
  }

  v60 = v15;
  v17 = OBJC_IVAR____TtC9SeymourUI35SessionRoutePickerSectionHeaderView_titleLabel;
  v18 = *&v14[OBJC_IVAR____TtC9SeymourUI35SessionRoutePickerSectionHeaderView_titleLabel];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 fontWithDescriptor:v16 size:0.0];
  [v20 setFont_];

  v22 = *&v14[v17];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 systemGrayColor];
  [v24 setTextColor_];

  [*&v14[v17] setTranslatesAutoresizingMaskIntoConstraints_];
  v26 = v14;
  v27 = *&v14[v17];
  v28 = v26;
  [v28 addSubview_];
  v29 = OBJC_IVAR____TtC9SeymourUI35SessionRoutePickerSectionHeaderView_separatorView;
  v30 = *&v28[OBJC_IVAR____TtC9SeymourUI35SessionRoutePickerSectionHeaderView_separatorView];
  v31 = [v23 whiteColor];
  [v30 setBackgroundColor_];

  [*&v28[v29] setTranslatesAutoresizingMaskIntoConstraints_];
  [v28 addSubview_];
  v59 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_20C151DF0;
  v33 = [*&v14[v17] leadingAnchor];
  v34 = [v28 leadingAnchor];

  v35 = [v33 constraintEqualToAnchor:v34 constant:24.0];
  *(v32 + 32) = v35;
  v36 = [*&v14[v17] trailingAnchor];
  v37 = [v28 trailingAnchor];

  v38 = [v36 &selRef_passwordEntryCancelledHandler + 6];
  *(v32 + 40) = v38;
  v39 = [*&v14[v17] heightAnchor];
  v40 = [v28 heightAnchor];

  v41 = [v39 constraintEqualToAnchor_];
  *(v32 + 48) = v41;
  v42 = [*&v14[v17] firstBaselineAnchor];
  v43 = [v28 bottomAnchor];

  v44 = [v42 &selRef_passwordEntryCancelledHandler + 6];
  *(v32 + 56) = v44;
  v45 = [*&v28[v29] leadingAnchor];
  v46 = [*&v14[v17] leadingAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v32 + 64) = v47;
  v48 = [*&v28[v29] trailingAnchor];
  v49 = [*&v14[v17] trailingAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v32 + 72) = v50;
  v51 = [*&v28[v29] topAnchor];
  v52 = [v28 bottomAnchor];

  v53 = [v51 &selRef_passwordEntryCancelledHandler + 6];
  *(v32 + 80) = v53;
  v54 = [*&v28[v29] bottomAnchor];
  v55 = [v28 bottomAnchor];

  v56 = [v54 &selRef:v55 alertControllerReleasedDictationButton:? + 5];
  *(v32 + 88) = v56;
  sub_20B5E29D0();
  v57 = sub_20C13CC54();

  [v59 activateConstraints_];

  return v28;
}

id sub_20B7E8660()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionRoutePickerSectionHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B7E8728(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a3;
  v5 = sub_20C13C4B4();
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C13C4F4();
  v8 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13C4C4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_20B51C88C(0, &qword_281100530);
  (*(v12 + 104))(v14, *MEMORY[0x277D851C0], v11);

  v16 = sub_20C13D3A4();
  (*(v12 + 8))(v14, v11);
  v17 = swift_allocObject();
  v18 = v22;
  v17[2] = v22;
  v17[3] = sub_20B7E9034;
  v17[4] = v15;
  aBlock[4] = sub_20B7E9074;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_18;
  v19 = _Block_copy(aBlock);
  v20 = v18;
  sub_20C13C4D4();
  v25 = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v10, v7, v19);
  _Block_release(v19);

  (*(v24 + 8))(v7, v5);
  (*(v8 + 8))(v10, v23);
}

char *sub_20B7E8AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v4 = sub_20C13C4B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C4F4();
  v36 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v35 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 smu_playbackRoutes];

  sub_20B51C88C(0, &qword_27C762500);
  v12 = sub_20C13CC74();

  if (v12 >> 62)
  {
    v13 = sub_20C13DB34();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = v8;
  v39 = v5;
  v37 = v7;
  if (!v13)
  {

    v16 = MEMORY[0x277D84F90];
LABEL_29:
    v26 = swift_allocObject();
    v27 = v34;
    v26[2] = v33;
    v26[3] = v27;
    v26[4] = v16;
    aBlock[4] = sub_20B6A4BF4;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    aBlock[3] = &block_descriptor_12_0;
    v28 = _Block_copy(aBlock);

    v29 = v35;
    sub_20C13C4D4();
    v40 = MEMORY[0x277D84F90];
    sub_20B7E9080();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B682EA8();
    v30 = v37;
    sub_20C13DA94();
    MEMORY[0x20F2F4AF0](0, v29, v30, v28);
    _Block_release(v28);
    (*(v39 + 8))(v30, v4);
    (*(v36 + 8))(v29, v38);
  }

  aBlock[0] = MEMORY[0x277D84F90];
  result = sub_20BB5DFF0(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = v4;
    v15 = 0;
    v16 = aBlock[0];
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x20F2F5430](v15, v12);
      }

      else
      {
        v17 = *(v12 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = [v17 isTVRoute];
      if ([v18 isAppleTVRoute])
      {
        v20 = 1;
      }

      else
      {
        v20 = [v18 containsDeviceWithSubtype_];
      }

      if ([v18 isMacRoute])
      {
        v21 = 0;
      }

      else if (((v19 | v20) | [v18 containsDeviceWithSubtype_]))
      {
        v21 = 0;
      }

      else
      {
        v21 = 4;
      }

      if ([v18 pickableRouteType])
      {
        if ([v18 isShareableRoute])
        {

          v22 = 1;
        }

        else
        {
          v23 = [v18 isHeadphonesRoute];

          if (v23)
          {
            v22 = 1;
          }

          else
          {
            v22 = v21;
          }
        }
      }

      else
      {

        v22 = 2;
      }

      aBlock[0] = v16;
      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_20BB5DFF0((v24 > 1), v25 + 1, 1);
        v16 = aBlock[0];
      }

      ++v15;
      *(v16 + 16) = v25 + 1;
      *(v16 + v25 + 32) = v22;
    }

    while (v13 != v15);

    v4 = v32;
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_20B7E8F9C(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D10);

  return sub_20C137C94();
}

uint64_t sub_20B7E9034(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

unint64_t sub_20B7E9080()
{
  result = qword_281103AB0;
  if (!qword_281103AB0)
  {
    sub_20C13C4B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281103AB0);
  }

  return result;
}

void sub_20B7E90E0()
{
  if (*(v0 + 32))
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v14.origin.x = v3;
    v14.origin.y = v5;
    v14.size.width = v7;
    v14.size.height = v9;
    Width = CGRectGetWidth(v14);
    v15.origin.x = v3;
    v15.origin.y = v5;
    v15.size.width = v7;
    v15.size.height = v9;
    Height = CGRectGetHeight(v15);
    if (Height >= Width)
    {
      v12 = Width;
    }

    else
    {
      v12 = Height;
    }

    if (qword_27C7606D0 != -1)
    {
      swift_once();
    }

    v13 = *&qword_27C799F40;
    if (qword_27C7606E0 != -1)
    {
      swift_once();
    }

    *(v0 + 24) = *(v0 + 40) * (v12 - (v13 + *&qword_27C799F50));
    *(v0 + 32) = 0;
  }
}

char *sub_20B7E9224(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D20);
  MEMORY[0x28223BE20](v9 - 8);
  v78 = &v73 - v10;
  v11 = sub_20C13BBE4();
  v79 = *(v11 - 8);
  v80 = v11;
  MEMORY[0x28223BE20](v11);
  v76 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_20C13BBC4();
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v74 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_itemInfo;
  v15 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v4[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_showSeparator] = 1;
  v16 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v17 = 16.0;
  }

  else
  {
    v17 = 4.0;
  }

  v18 = &v4[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_artworkView];
  v19 = [v16 layer];
  [v19 setCornerRadius_];

  [v16 setClipsToBounds_];
  *v18 = v16;
  v18[1] = &off_2822B63E8;
  v20 = OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_separator;
  v21 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = objc_opt_self();
  v23 = [v22 separatorColor];
  [v21 setBackgroundColor_];

  *&v4[v20] = v21;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  [v24 setAdjustsFontForContentSizeCategory_];
  v25 = *MEMORY[0x277D76968];
  v26 = objc_opt_self();
  v27 = [v26 preferredFontDescriptorWithTextStyle:v25 compatibleWithTraitCollection:0];
  v28 = [v27 fontDescriptorWithSymbolicTraits_];
  if (v28)
  {
    v29 = v28;

    v27 = v29;
  }

  v30 = OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_subtitleLabel;
  v31 = objc_opt_self();
  v32 = [v31 fontWithDescriptor:v27 size:0.0];

  [v24 setFont_];
  [v24 setAllowsDefaultTighteningForTruncation_];
  v33 = [v22 secondaryLabelColor];
  [v24 setTextColor_];

  [v24 setLineBreakMode_];
  [v24 setNumberOfLines_];
  *&v4[v30] = v24;
  v34 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  [v34 setAdjustsFontForContentSizeCategory_];
  v35 = [v26 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76920] compatibleWithTraitCollection:0];
  v36 = [v35 fontDescriptorWithSymbolicTraits_];
  if (v36)
  {
    v37 = v36;

    v35 = v37;
  }

  v38 = OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_titleLabel;
  v39 = [v31 fontWithDescriptor:v35 size:0.0];

  [v34 setFont_];
  [v34 setAllowsDefaultTighteningForTruncation_];
  v40 = [v22 whiteColor];
  [v34 setTextColor_];

  [v34 setLineBreakMode_];
  [v34 setNumberOfLines_];
  *&v4[v38] = v34;
  v41 = [v22 whiteColor];
  v42 = [v41 colorWithAlphaComponent_];

  sub_20C1380F4();
  v43 = sub_20C138104();
  if (v43 == sub_20C138104())
  {
    v44 = 0.17;
  }

  else
  {
    v44 = 0.5;
  }

  v45 = &v4[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_styleProvider];
  *v45 = v42;
  __asm { FMOV            V1.2D, #10.0 }

  v73 = _Q1;
  *(v45 + 8) = _Q1;
  *(v45 + 3) = 0x3FE2000000000000;
  *(v45 + 4) = 0;
  v45[40] = 1;
  *(v45 + 6) = v44;
  v51 = OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_textLayoutGuide;
  *&v4[v51] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  sub_20C1380F4();
  v52 = sub_20C138104();
  v53 = sub_20C138104();
  v54 = &v4[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_layout];
  *&v4[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_layout] = v73;
  if (v52 == v53)
  {
    v55 = 0.17;
  }

  else
  {
    v55 = 0.5;
  }

  *(v54 + 2) = 0x3FE2000000000000;
  *(v54 + 3) = 0;
  v54[32] = 1;
  *(v54 + 5) = v55;
  QueueRowCell = type metadata accessor for UpNextQueueRowCell();
  v81.receiver = v4;
  v81.super_class = QueueRowCell;
  v57 = objc_msgSendSuper2(&v81, sel_initWithFrame_, a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D28);
  sub_20C13BC74();
  *(swift_allocObject() + 16) = xmmword_20C14F980;
  v58 = v74;
  v59 = v75;
  v60 = v77;
  (*(v75 + 104))(v74, *MEMORY[0x277D74A98], v77);
  v61 = sub_20C13BBF4();
  (*(*(v61 - 8) + 56))(v78, 1, 1, v61);
  v62 = v57;
  v63 = v76;
  sub_20C13BBD4();
  sub_20C13BC54();
  (*(v79 + 8))(v63, v80);
  (*(v59 + 8))(v58, v60);
  sub_20C13D464();
  v64 = [v62 contentView];
  [v64 addSubview_];

  v65 = [v62 contentView];
  [v65 addSubview_];

  v66 = [v62 contentView];
  [v66 addSubview_];

  [v62 addSubview_];
  v67 = [v62 contentView];
  [v67 addLayoutGuide_];

  v68 = [v62 contentView];
  v69 = [v22 clearColor];
  [v68 setBackgroundColor_];

  v70 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v70 setBackgroundColor_];
  [v62 setBackgroundView_];

  sub_20B7E9F5C();
  *(swift_allocObject() + 16) = v62;
  v71 = v62;
  sub_20C13D414();

  return v71;
}

uint64_t sub_20B7E9C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22[-1] - v6;
  v8 = sub_20C13BD14();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22[-1] - v13;
  sub_20C13BCC4();
  v15 = sub_20C13BC94();
  v22[3] = v15;
  v22[4] = MEMORY[0x277D74BA8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, a2, v15);
  sub_20C13BCF4();
  __swift_destroy_boxed_opaque_existential_1(v22);
  v17 = [objc_opt_self() clearColor];
  sub_20C13BCD4();
  if (sub_20C13BC84())
  {
    v18 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v18 setBackgroundColor_];
    sub_20C13BCA4();
  }

  (*(v9 + 16))(v7, v11, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  MEMORY[0x20F2F4B70](v7);
  v19 = *(v9 + 8);
  v19(v11, v8);
  return (v19)(v14, v8);
}

void sub_20B7E9F5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C151850;
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_artworkView];
  v4 = [v3 leadingAnchor];
  v5 = [v1 contentView];
  v6 = [v5 leadingAnchor];

  if (qword_27C7606D0 != -1)
  {
    swift_once();
  }

  v7 = [v4 constraintEqualToAnchor:v6 constant:*&qword_27C799F40];

  *(v2 + 32) = v7;
  v8 = v2;
  v9 = [v3 widthAnchor];
  v10 = &v1[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_layout];
  swift_beginAccess();
  sub_20B7E90E0();
  v12 = v11;
  swift_endAccess();
  v13 = [v9 constraintEqualToConstant_];

  *(v2 + 40) = v13;
  v14 = [v3 heightAnchor];
  v15 = [v3 widthAnchor];
  v16 = v3;
  v17 = [v14 constraintEqualToAnchor:v15 multiplier:v10[2]];

  v8[6] = v17;
  v18 = [v16 topAnchor];
  v19 = [v1 contentView];
  v20 = [v19 &selRef_setLineBreakMode_];

  v21 = [v18 constraintGreaterThanOrEqualToAnchor:v20 constant:*v10];
  v8[7] = v21;
  v22 = [v16 bottomAnchor];
  v23 = [v1 contentView];
  v24 = [v23 &selRef_secondaryLabel + 5];

  v25 = [v22 constraintLessThanOrEqualToAnchor:v24 constant:-*v10];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v26) = v107;
  [v25 setPriority_];
  v8[8] = v25;
  v27 = v1;
  v105 = v16;
  v106 = v8;
  v28 = v16;
  v29 = [v16 centerYAnchor];
  v30 = v27;
  v31 = [v27 &selRef_setMaximumFractionDigits_];
  v32 = [v31 &selRef_setNumberOfTapsRequired_];

  v33 = [v29 constraintEqualToAnchor_];
  sub_20C13BBA4();
  LODWORD(v34) = v107;
  [v33 setPriority_];
  v8[9] = v33;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_20C150050;
  v36 = v35;
  v37 = *&v30[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_textLayoutGuide];
  v38 = [v37 leadingAnchor];
  v39 = [v28 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:v10[1]];

  v36[4] = v40;
  v41 = [v37 &selRef_setNumberOfTapsRequired_];
  v42 = v30;
  v43 = [v30 contentView];
  v44 = [v43 &selRef_setNumberOfTapsRequired_];

  v45 = [v41 constraintEqualToAnchor_];
  v36[5] = v45;
  v46 = [v37 trailingAnchor];
  v47 = [v30 contentView];
  v48 = [v47 trailingAnchor];

  v49 = [v46 constraintEqualToAnchor_];
  v36[6] = v49;
  v50 = [v37 topAnchor];
  v51 = [v30 contentView];
  v52 = [v51 topAnchor];

  v53 = [v50 constraintGreaterThanOrEqualToAnchor_];
  v36[7] = v53;
  v54 = [v37 bottomAnchor];
  v55 = [v30 contentView];
  v56 = [v55 bottomAnchor];

  v57 = [v54 constraintLessThanOrEqualToAnchor_];
  v36[8] = v57;
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_20C14FE90;
  v59 = v58;
  v60 = *&v42[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_titleLabel];
  v61 = [v60 leadingAnchor];
  v62 = [v37 leadingAnchor];
  v63 = [v61 constraintEqualToAnchor_];

  v59[4] = v63;
  v64 = [v60 trailingAnchor];
  v65 = [v37 trailingAnchor];
  v66 = [v64 constraintEqualToAnchor_];

  v59[5] = v66;
  v67 = [v60 topAnchor];
  v68 = [v37 topAnchor];
  v69 = [v67 constraintEqualToAnchor_];

  v59[6] = v69;
  v104 = v59;
  v70 = [v60 bottomAnchor];
  v71 = *&v42[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_subtitleLabel];
  v72 = [v71 topAnchor];
  v73 = [v70 constraintEqualToAnchor_];

  v104[7] = v73;
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_20C14FE90;
  v75 = [v71 leadingAnchor];
  v76 = [v37 leadingAnchor];
  v77 = [v75 constraintEqualToAnchor_];

  *(v74 + 32) = v77;
  v78 = [v71 trailingAnchor];
  v79 = [v37 trailingAnchor];
  v80 = [v78 constraintEqualToAnchor_];

  *(v74 + 40) = v80;
  v81 = [v71 topAnchor];
  v82 = [v60 bottomAnchor];
  v83 = [v81 constraintEqualToAnchor_];

  *(v74 + 48) = v83;
  v84 = [v71 bottomAnchor];
  v85 = [v37 bottomAnchor];
  v86 = [v84 constraintEqualToAnchor_];

  *(v74 + 56) = v86;
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_20C14FE90;
  v88 = *&v42[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_separator];
  v89 = [v88 leadingAnchor];
  v90 = [v105 leadingAnchor];
  v91 = [v89 constraintEqualToAnchor_];

  *(v87 + 32) = v91;
  v92 = [v88 trailingAnchor];
  v93 = [v42 contentView];
  v94 = [v93 trailingAnchor];

  v95 = [v92 constraintEqualToAnchor_];
  *(v87 + 40) = v95;
  v96 = [v88 &selRef_secondaryLabel + 5];
  v97 = [v42 &selRef_secondaryLabel + 5];
  v98 = [v96 constraintEqualToAnchor_];

  *(v87 + 48) = v98;
  v99 = [v88 heightAnchor];
  sub_20C1387F4();
  v100 = [v99 constraintEqualToConstant_];

  *(v87 + 56) = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C1582F0;
  *(inited + 32) = v106;
  *(inited + 40) = v36;
  *(inited + 48) = v104;
  *(inited + 56) = v74;
  *(inited + 64) = v87;
  v102 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500);
  v103 = sub_20C13CC54();

  [v102 activateConstraints_];
}

uint64_t sub_20B7EABE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  QueueRowCell = type metadata accessor for UpNextQueueRowCell();
  v12.receiver = v0;
  v12.super_class = QueueRowCell;
  objc_msgSendSuper2(&v12, sel_prepareForReuse);
  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_artworkView];
  v6 = [v5 layer];
  [v6 setBorderColor_];

  v7 = [v5 layer];
  [v7 setBorderWidth_];

  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v3, &v0[v9]);
  return swift_endAccess();
}

id sub_20B7EAE34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpNextQueueRowCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for UpNextQueueRowCell()
{
  result = qword_281102F30;
  if (!qword_281102F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B7EAF7C()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B7EB074(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B7EB0C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B7EB118(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20B7EB17C(char a1)
{
  v2 = *v1;
  *(v2 + OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_showSeparator) = a1;
  return [*(v2 + OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_separator) setHidden_];
}

void sub_20B7EB1CC(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v206 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v171 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v193 = &v171 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v196 = &v171 - v10;
  v192 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v171 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v15 - 8);
  v201 = &v171 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v204 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v191 = &v171 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = v18;
  MEMORY[0x28223BE20](v19);
  v202 = &v171 - v20;
  v199 = sub_20C1391C4();
  v198 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v200 = &v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_20C138A64();
  v194 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v203 = &v171 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v23 - 8);
  v197 = &v171 - v24;
  v25 = sub_20C13C554();
  v211 = *(v25 - 8);
  v212 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = (&v171 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_20C137C24();
  v216 = *(v28 - 1);
  v217 = v28;
  MEMORY[0x28223BE20](v28);
  v207 = v29;
  v208 = &v171 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v215 = &v171 - v31;
  v32 = sub_20C136CD4();
  v209 = *(v32 - 8);
  v210 = v32;
  MEMORY[0x28223BE20](v32);
  v214 = &v171 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C134E44();
  MEMORY[0x28223BE20](v34 - 8);
  v213 = &v171 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_20C134014();
  MEMORY[0x28223BE20](v36);
  v40 = &v171 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v41 > 31)
  {
    if (v41 != 32)
    {
      if (v41 != 33)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_20BA1D9B0();
      [*&v1[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_titleLabel] setText_];
      [*&v1[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_subtitleLabel] setText_];
      v53 = *&v1[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_artworkView];
      v54 = [v53 layer];
      [v54 setBorderColor_];

      v217 = [v53 layer];
      [v217 setBorderWidth_];
      v55 = v217;

      return;
    }

    v205 = v38;
    v206 = v37;
    v184 = v17;
    v180 = v14;
    v181 = v7;
    v182 = v6;
    v189 = v1;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v57 = swift_projectBox();
    v59 = (v60 + 64);
    v58 = v57;
  }

  else
  {
    if (v41 != 30)
    {
      if (v41 != 31)
      {
LABEL_4:
        sub_20C13B534();

        v42 = v1;
        v43 = sub_20C13BB74();
        v44 = sub_20C13D1D4();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v218 = a1;
          v219 = v47;
          *v45 = 138543618;
          *(v45 + 4) = v42;
          *v46 = v42;
          *(v45 + 12) = 2082;
          v48 = sub_20B5F66D0();
          v49 = v42;
          v50 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v48);
          v52 = sub_20B51E694(v50, v51, &v219);

          *(v45 + 14) = v52;
          _os_log_impl(&dword_20B517000, v43, v44, "Attempted to configure %{public}@ with item: %{public}s", v45, 0x16u);
          sub_20B520158(v46, &unk_27C762E30);
          MEMORY[0x20F2F6A40](v46, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v47);
          MEMORY[0x20F2F6A40](v47, -1, -1);
          MEMORY[0x20F2F6A40](v45, -1, -1);
        }

        (*(v206 + 8))(v5, v3);
        return;
      }

      goto LABEL_9;
    }

    v205 = v38;
    v206 = v37;
    v184 = v17;
    v180 = v14;
    v181 = v7;
    v182 = v6;
    v189 = v1;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7677D0);
    v57 = swift_projectBox();
    v58 = v57 + *(v56 + 48);
    v59 = (v56 + 80);
  }

  v61 = v57 + *v59;
  v62 = *v61;
  v63 = *(v61 + 8);
  v64 = *(v61 + 16);
  (*(v205 + 16))(v40, v58, v206);
  v65 = v62;
  v66 = v63;
  v67 = v64;

  v68 = v189;
  [*&v189[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_titleLabel] setAttributedText_];
  [*&v68[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_subtitleLabel] setAttributedText_];

  v69 = v213;
  v187 = v40;
  sub_20C133F04();
  v186 = sub_20C138054();
  v71 = v70;
  v72 = v214;
  sub_20C134E34();
  v73 = v215;
  sub_20C136CB4();
  v185 = sub_20C136CC4();
  v188 = v74;
  sub_20B51C88C(0, &qword_281100530);
  *v27 = sub_20C13D374();
  v76 = v211;
  v75 = v212;
  (*(v211 + 104))(v27, *MEMORY[0x277D85200], v212);
  v77 = sub_20C13C584();
  (*(v76 + 8))(v27, v75);
  if (v77)
  {
    v79 = *&v68[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_artworkView];
    v78 = *&v68[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_artworkView + 8];
    ObjectType = swift_getObjectType();
    [v79 setContentMode_];
    if (sub_20BA66C54(v73, v79, v78, 0))
    {
      v81 = swift_allocObject();
      v212 = ObjectType;
      v82 = v81;
      swift_unknownObjectWeakInit();
      v83 = v216;
      v84 = *(v216 + 16);
      v85 = v208;
      v86 = v73;
      v87 = v217;
      v176 = v216 + 16;
      v175 = v84;
      v84(v208, v86, v217);
      v88 = *(v83 + 80);
      v89 = (v88 + 24) & ~v88;
      v173 = v207 + 7;
      v211 = v71;
      v90 = (v207 + 7 + v89) & 0xFFFFFFFFFFFFFFF8;
      v91 = (v90 + 23) & 0xFFFFFFFFFFFFFFF8;
      v179 = v79;
      v92 = (v91 + 23) & 0xFFFFFFFFFFFFFFF8;
      v178 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
      v183 = v78;
      v93 = (v92 + 31) & 0xFFFFFFFFFFFFFFF8;
      v177 = v88;
      v94 = swift_allocObject();
      *(v94 + 16) = v82;
      v95 = v83;
      v96 = v85;
      v97 = v87;
      v98 = v95 + 32;
      v174 = *(v95 + 32);
      v174(v94 + v89, v85, v97);
      v99 = (v94 + v90);
      v100 = v211;
      v101 = v188;
      *v99 = v185;
      v99[1] = v101;
      v102 = (v94 + v91);
      *v102 = v186;
      v102[1] = v100;
      *(v94 + v92) = 2;
      v103 = v179;
      v104 = v94 + v178;
      *v104 = MEMORY[0x277D84F90];
      *(v104 + 8) = 0;
      v105 = (v94 + v93);
      v78 = v183;
      *v105 = 0;
      v105[1] = 0;
      v106 = *(v78 + 152);

      v106(sub_20B7EC7BC, v94, v212, v78);

      [v103 bounds];
      if (v107 <= 0.0 || (v109 = v108, v108 <= 0.0))
      {

        v129 = v217;
        v131 = v209;
        v130 = v210;
        v72 = v214;
        v73 = v215;
        v69 = v213;
      }

      else
      {
        v110 = v107;
        v172 = ~v177;
        v111 = v212;
        (*(v78 + 120))(0, v212, v78);
        v112 = v197;
        v178 = v98;
        v73 = v215;
        v113 = v217;
        v114 = v175;
        v175(v197, v215, v217);
        (*(v216 + 56))(v112, 0, 1, v113);
        (*(v78 + 16))(v112, v111, v78);
        sub_20B51C88C(0, &qword_27C762070);
        sub_20C137BC4();
        v115 = sub_20C13D5A4();
        [v103 setBackgroundColor_];

        (*(v78 + 176))(COERCE_DOUBLE(*&v110), COERCE_DOUBLE(*&v109), 0, v111, v78);
        v197 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v114(v96, v73, v113);
        v116 = (v177 + 16) & v172;
        v117 = (v173 + v116) & 0xFFFFFFFFFFFFFFF8;
        v118 = (v117 + 15) & 0xFFFFFFFFFFFFFFF8;
        v119 = swift_allocObject();
        v120 = v119 + v116;
        v121 = v217;
        v174(v120, v96, v217);
        *(v119 + v117) = v197;
        v122 = (v119 + v118);
        *v122 = v110;
        v122[1] = v109;
        v197 = v119;
        v123 = (v119 + ((v118 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v123 = 0;
        v123[1] = 0;
        v124 = v175;
        v175(v96, v73, v121);
        (*(v198 + 104))(v200, *MEMORY[0x277D542A8], v199);

        v125 = v203;
        sub_20C138A54();
        v126 = v201;
        sub_20B5F18E8(v125, v201);
        v127 = v204;
        v128 = v184;
        if ((*(v204 + 48))(v126, 1) == 1)
        {
          sub_20B520158(v126, &unk_27C766670);
          sub_20BA1D9B0();

          (*(v194 + 8))(v125, v195);
        }

        else
        {
          v132 = v127;
          v200 = *(v127 + 32);
          v184 = v128;
          (v200)(v202, v126, v128);
          v133 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v134 = v208;
          v135 = v124;
          v136 = v217;
          v135(v208, v73, v217);
          v137 = (v177 + 40) & v172;
          v138 = v137 + v207;
          v139 = (v137 + v207) & 0xFFFFFFFFFFFFFFF8;
          v140 = swift_allocObject();
          *(v140 + 2) = v133;
          v140[3] = v110;
          v140[4] = v109;
          v174(v140 + v137, v134, v136);
          *(v140 + v138) = 0;
          v141 = v140 + v139;
          *(v141 + 1) = 0;
          *(v141 + 2) = 0;
          v142 = swift_allocObject();
          *(v142 + 16) = sub_20B7EC950;
          *(v142 + 24) = v140;
          v143 = v191;
          v144 = v184;
          (*(v132 + 16))(v191, v202, v184);
          v145 = (*(v132 + 80) + 16) & ~*(v132 + 80);
          v146 = (v190 + v145 + 7) & 0xFFFFFFFFFFFFFFF8;
          v147 = swift_allocObject();
          (v200)(v147 + v145, v143, v144);
          v148 = (v147 + v146);
          *v148 = sub_20B5F67A4;
          v148[1] = v142;
          v149 = v196;
          sub_20C137C94();
          v150 = swift_allocObject();
          v151 = v197;
          *(v150 + 16) = sub_20B7EC894;
          *(v150 + 24) = v151;
          v152 = swift_allocObject();
          *(v152 + 16) = sub_20B5F67D4;
          *(v152 + 24) = v150;
          v153 = v181;
          v154 = v193;
          v155 = v182;
          (*(v181 + 16))(v193, v149, v182);
          v156 = (*(v153 + 80) + 16) & ~*(v153 + 80);
          v157 = (v192 + v156 + 7) & 0xFFFFFFFFFFFFFFF8;
          v158 = swift_allocObject();
          (*(v153 + 32))(v158 + v156, v154, v155);
          v159 = (v158 + v157);
          *v159 = sub_20B5DF204;
          v159[1] = v152;

          v160 = v180;
          sub_20C137C94();
          v161 = *(v153 + 8);
          v161(v196, v155);
          v162 = sub_20C137CB4();
          v163 = swift_allocObject();
          *(v163 + 16) = 0;
          *(v163 + 24) = 0;
          v162(sub_20B52347C, v163);

          v161(v160, v155);
          (*(v204 + 8))(v202, v184);
          (*(v194 + 8))(v203, v195);
        }

        v129 = v217;
        v131 = v209;
        v130 = v210;
        v69 = v213;
        v72 = v214;
        v78 = v183;
      }

      ObjectType = v212;
    }

    else
    {

      v129 = v217;
      v131 = v209;
      v130 = v210;
    }

    (*(v216 + 8))(v73, v129);
    (*(v131 + 8))(v72, v130);

    sub_20B62A2AC(v69);
    v164 = v187;
    v165 = sub_20C133EB4() > 0;
    (*(v78 + 264))(v165, ObjectType, v78);
    v166 = sub_20C133FF4();
    v168 = v167;
    v170 = v169;
    (*(v205 + 8))(v164, v206);
    sub_20B5F09B0(v166, v168, v170);
    sub_20B584078(v166, v168, v170);
  }

  else
  {
    __break(1u);
  }
}

void sub_20B7EC7BC()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA388D4(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B7EC894(void *a1)
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

  sub_20BA62FC0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B7EC950(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F26C8(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_20B7ECA04()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_showSeparator) = 1;
  v3 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 4.0;
  }

  v5 = (v0 + OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_artworkView);
  v6 = [v3 layer];
  [v6 setCornerRadius_];

  [v3 setClipsToBounds_];
  *v5 = v3;
  v5[1] = &off_2822B63E8;
  v7 = OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_separator;
  v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = objc_opt_self();
  v10 = [v9 separatorColor];
  [v8 setBackgroundColor_];

  *(v0 + v7) = v8;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setAdjustsFontForContentSizeCategory_];
  v12 = *MEMORY[0x277D76968];
  v13 = objc_opt_self();
  v14 = [v13 preferredFontDescriptorWithTextStyle:v12 compatibleWithTraitCollection:0];
  v15 = [v14 fontDescriptorWithSymbolicTraits_];
  if (v15)
  {
    v16 = v15;

    v14 = v16;
  }

  v17 = OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_subtitleLabel;
  v18 = objc_opt_self();
  v19 = [v18 fontWithDescriptor:v14 size:0.0];

  [v11 setFont_];
  [v11 setAllowsDefaultTighteningForTruncation_];
  v20 = [v9 secondaryLabelColor];
  [v11 setTextColor_];

  [v11 setLineBreakMode_];
  [v11 setNumberOfLines_];
  *(v0 + v17) = v11;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setAdjustsFontForContentSizeCategory_];
  v22 = [v13 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76920] compatibleWithTraitCollection:0];
  v23 = [v22 fontDescriptorWithSymbolicTraits_];
  if (v23)
  {
    v24 = v23;

    v22 = v24;
  }

  v25 = OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_titleLabel;
  v26 = [v18 fontWithDescriptor:v22 size:0.0];

  [v21 setFont_];
  [v21 setAllowsDefaultTighteningForTruncation_];
  v27 = [v9 whiteColor];
  [v21 setTextColor_];

  [v21 setLineBreakMode_];
  [v21 setNumberOfLines_];
  *(v0 + v25) = v21;
  v28 = [v9 whiteColor];
  v29 = [v28 colorWithAlphaComponent_];

  sub_20C1380F4();
  v30 = sub_20C138104();
  if (v30 == sub_20C138104())
  {
    v31 = 0.17;
  }

  else
  {
    v31 = 0.5;
  }

  v32 = v0 + OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_styleProvider;
  *v32 = v29;
  __asm { FMOV            V1.2D, #10.0 }

  v42 = _Q1;
  *(v32 + 8) = _Q1;
  *(v32 + 24) = 0x3FE2000000000000;
  *(v32 + 32) = 0;
  *(v32 + 40) = 1;
  *(v32 + 48) = v31;
  v38 = OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_textLayoutGuide;
  *(v0 + v38) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  sub_20C1380F4();
  v39 = sub_20C138104();
  if (v39 == sub_20C138104())
  {
    v40 = 0.17;
  }

  else
  {
    v40 = 0.5;
  }

  v41 = v0 + OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_layout;
  *v41 = v42;
  *(v41 + 16) = 0x3FE2000000000000;
  *(v41 + 24) = 0;
  *(v41 + 32) = 1;
  *(v41 + 40) = v40;
  sub_20C13DE24();
  __break(1u);
}

void sub_20B7ECFC4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765DA0);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = type metadata accessor for ButtonAction.ActionType(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v33 = (&v32 - v13);
  MEMORY[0x28223BE20](v14);
  v16 = (&v32 - v15);
  *(v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_bookmarks) = a1;

  v17 = OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_inProgressButtonActions;
  swift_beginAccess();
  v18 = *(v1 + v17);
  *v16 = MEMORY[0x277D84FA0];
  swift_storeEnumTagMultiPayload();
  v36 = v16;

  sub_20B6B713C(sub_20B5D9870, v18, v7);

  v19 = *(v9 + 48);
  v34 = v9 + 48;
  LODWORD(v18) = v19(v7, 1, v8);
  sub_20B520158(v7, &qword_27C765DA0);
  sub_20B7F12D8(v16, type metadata accessor for ButtonAction.ActionType);
  if (v18 == 1)
  {
    v20 = *(v1 + v17);
    v21 = v33;
    *v33 = MEMORY[0x277D84FA0];
    v22 = swift_storeEnumTagMultiPayload();
    v32 = &v32;
    MEMORY[0x28223BE20](v22);
    *(&v32 - 2) = v21;

    v23 = v35;
    sub_20B6B713C(sub_20B5DF5A4, v20, v35);

    LODWORD(v20) = v19(v23, 1, v8);
    sub_20B520158(v23, &qword_27C765DA0);
    sub_20B7F12D8(v21, type metadata accessor for ButtonAction.ActionType);
    if (v20 == 1)
    {
      v24 = 0;
    }

    else
    {
      v24 = -127;
    }
  }

  else
  {
    v24 = 129;
  }

  v25 = MEMORY[0x277D84FA0];
  *v11 = MEMORY[0x277D84FA0];
  swift_storeEnumTagMultiPayload();
  v26 = swift_beginAccess();
  v27 = *(v1 + v17);
  MEMORY[0x28223BE20](v26);
  *(&v32 - 2) = v11;

  v28 = sub_20BEE0D74(sub_20B5DF5A4, (&v32 - 4), v27);
  sub_20B5ADF04(v28);
  sub_20B7F12D8(v11, type metadata accessor for ButtonAction.ActionType);
  swift_endAccess();

  *v11 = v25;
  swift_storeEnumTagMultiPayload();
  v29 = swift_beginAccess();
  v30 = *(v1 + v17);
  MEMORY[0x28223BE20](v29);
  *(&v32 - 2) = v11;

  v31 = sub_20BEE0D74(sub_20B5DF5A4, (&v32 - 4), v30);
  sub_20B5ADF04(v31);
  sub_20B7F12D8(v11, type metadata accessor for ButtonAction.ActionType);
  swift_endAccess();

  sub_20B7ED4A4(v24);
}

void sub_20B7ED4A4(int a1)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_20C13C554();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_20B7ED890();
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_mediaTagStringBuilder + 24));
  sub_20C136D44();
  v7 = sub_20C138544();

  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_storefrontLocalizer), *(v2 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_storefrontLocalizer + 24));
  v8 = sub_20C138D34();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v8;
  *(v11 + 32) = v10;
  *(v11 + 40) = v6;
  v12 = v11 | 0x1000000000000007;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20C14F980;
  *(v13 + 32) = v12;
  v40 = 0uLL;
  LOBYTE(v41) = 1;
  *(&v41 + 1) = 0;
  *&v42 = 0;
  WORD4(v42) = 128;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  LOBYTE(v46) = 0;
  *(&v46 + 1) = v13;
  *&v47[0] = MEMORY[0x277D84F90];
  *(v47 + 8) = 0u;
  *(&v47[1] + 8) = 0u;
  *(&v47[2] + 1) = 0;
  v48 = 2;
  nullsub_1(&v40);
  v14 = v2 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row;
  v15 = *(v2 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 144);
  v49[8] = *(v2 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 128);
  v49[9] = v15;
  v50 = *(v2 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 160);
  v16 = *(v2 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 80);
  v49[4] = *(v2 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 64);
  v49[5] = v16;
  v17 = *(v2 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 112);
  v49[6] = *(v2 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 96);
  v49[7] = v17;
  v18 = *(v2 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 16);
  v49[0] = *(v2 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row);
  v49[1] = v18;
  v19 = *(v2 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 48);
  v49[2] = *(v2 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 32);
  v49[3] = v19;
  v20 = v47[2];
  *(v14 + 128) = v47[1];
  *(v14 + 144) = v20;
  *(v14 + 160) = v48;
  v21 = v45;
  *(v14 + 64) = v44;
  *(v14 + 80) = v21;
  v22 = v47[0];
  *(v14 + 96) = v46;
  *(v14 + 112) = v22;
  v23 = v41;
  *v14 = v40;
  *(v14 + 16) = v23;
  v24 = v43;
  *(v14 + 32) = v42;
  *(v14 + 48) = v24;
  v25 = v7;

  sub_20B520158(v49, &qword_27C762340);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v27 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    v28 = sub_20B61D900(v2, Strong);
    if (v29)
    {
      v31 = v29;
      v35 = v28;
      v36 = v30;
      sub_20B5E2E18();
      *v5 = sub_20C13D374();
      v32 = v38;
      v33 = v39;
      (*(v38 + 104))(v5, *MEMORY[0x277D85200], v39);
      v34 = sub_20C13C584();
      (*(v32 + 8))(v5, v33);
      if ((v34 & 1) == 0)
      {
        __break(1u);
        return;
      }

      if ((v37 & 0x80) != 0)
      {
        sub_20C10ABEC(v2, v35, v37 & 1, v27);
      }

      else
      {
        sub_20B620D38(v35, v31, v36, v2, v37 & 1, v27);
      }
    }

    else
    {
      sub_20C0C2D50(0);
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_20B7ED890()
{
  v1 = type metadata accessor for ButtonAction(0);
  v2 = *(v1 - 8);
  v82 = v1;
  v83 = v2;
  MEMORY[0x28223BE20](v1);
  v93 = v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v4 - 8);
  v91 = v80 - v5;
  v87 = sub_20C136F94();
  v89 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v85 = v80 - v8;
  MEMORY[0x28223BE20](v9);
  v88 = v80 - v10;
  v90 = sub_20C138034();
  v92 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  *&v94 = v80 - v13;
  v14 = sub_20C132E94();
  v95 = *(v14 - 8);
  v96 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C135734();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v80 - v22;
  v24 = OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_serviceSubscription;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v24, v23, &unk_27C762390);
  if ((*(v18 + 48))(v23, 1, v17))
  {
    v25 = &unk_27C762390;
    v26 = v23;
LABEL_3:
    sub_20B520158(v26, v25);
    return MEMORY[0x277D84F90];
  }

  v27 = v94;
  v81 = v0;
  (*(v18 + 16))(v20, v23, v17);
  sub_20B520158(v23, &unk_27C762390);
  sub_20C132E84();
  v28 = sub_20C135704();
  (*(v95 + 8))(v16, v96);
  (*(v18 + 8))(v20, v17);
  if ((v28 & 1) == 0 || MGGetProductType() == 1110205732)
  {
    return MEMORY[0x277D84F90];
  }

  v29 = v81;
  v96 = OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_editorialCollection;
  sub_20C136D24();
  v97 = 0;
  sub_20B7F1628();
  sub_20B7F167C();
  v30 = sub_20C13CF84();

  v31 = v93;
  if (v30)
  {
LABEL_7:
    __swift_project_boxed_opaque_existential_1((v29 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_remoteBrowsingSource), *(v29 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_remoteBrowsingSource + 24));
    v32 = v91;
    sub_20C13B174();
    v33 = sub_20C136C64();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v32, 1, v33) == 1)
    {
      v25 = &qword_27C768690;
      v26 = v32;
      goto LABEL_3;
    }

    v52 = v85;
    sub_20C1369E4();
    (*(v34 + 8))(v32, v33);
    v54 = v88;
    v53 = v89;
    v55 = v52;
    v56 = v87;
    (*(v89 + 32))(v88, v55, v87);
    v57 = v86;
    sub_20C136F24();
    sub_20B7F16D0();
    v58 = sub_20C13DA74();
    v61 = *(v53 + 8);
    v60 = v53 + 8;
    v59 = v61;
    v61(v57, v56);
    if ((v58 & 1) == 0)
    {
      v59(v54, v56);
      return MEMORY[0x277D84F90];
    }

    v62 = OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_bookmarks;
    if (*(*(v29 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_bookmarks) + 16))
    {
      __swift_project_boxed_opaque_existential_1((v29 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_storefrontLocalizer), *(v29 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_storefrontLocalizer + 24));
      v63 = sub_20C138D34();
      v65 = v64;
      *(v31 + *(v82 + 28)) = *(v29 + v62);
      type metadata accessor for ButtonAction.ActionType(0);
      swift_storeEnumTagMultiPayload();
      *v31 = 0u;
      *(v31 + 16) = 0u;
      *(v31 + 32) = v63;
      *(v31 + 40) = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0);
      v66 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_20C14F980;
      sub_20B5F6860(v31, v67 + v66);

      v59(v54, v56);
    }

    else
    {
      sub_20C136CF4();
      sub_20C132E84();
      sub_20C138014();
      __swift_project_boxed_opaque_existential_1((v29 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_storefrontLocalizer), *(v29 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_storefrontLocalizer + 24));
      v68 = sub_20C138D34();
      v95 = v69;
      v96 = v68;
      v70 = v31;
      v71 = *(v82 + 28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B8);
      v72 = v92;
      v73 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v74 = swift_allocObject();
      v94 = xmmword_20C14F980;
      *(v74 + 16) = xmmword_20C14F980;
      v75 = v90;
      (*(v72 + 16))(v74 + v73, v84, v90);
      v76 = sub_20BE8BBF4(v74);
      swift_setDeallocating();
      v89 = v60;
      v77 = *(v72 + 8);
      v77(v74 + v73, v75);
      swift_deallocClassInstance();
      *(v70 + v71) = v76;
      type metadata accessor for ButtonAction.ActionType(0);
      swift_storeEnumTagMultiPayload();
      *v70 = 0u;
      *(v70 + 16) = 0u;
      v78 = v95;
      *(v70 + 32) = v96;
      *(v70 + 40) = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0);
      v79 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = v94;
      sub_20B5F6860(v70, v67 + v79);
      v77(v84, v75);
      v59(v88, v56);
    }

    return v67;
  }

  else
  {
    v80[1] = v16;
    v35 = *(v29 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_bookmarks);
    v36 = v35 + 56;
    v37 = 1 << *(v35 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v35 + 56);
    v40 = (v37 + 63) >> 6;
    v41 = v92;
    v80[2] = v92 + 16;
    v42 = (v92 + 8);
    v95 = v35;
    result = swift_bridgeObjectRetain_n();
    v44 = 0;
    v45 = v90;
    while (v39)
    {
LABEL_18:
      (*(v41 + 16))(v27, *(v95 + 48) + *(v41 + 72) * (__clz(__rbit64(v39)) | (v44 << 6)), v45);
      v48 = sub_20C138024();
      v50 = v49;
      if (v48 == sub_20C136CF4() && v50 == v51)
      {

        (*v42)(v27, v45);
        v31 = v93;
LABEL_21:

        v29 = v81;
        goto LABEL_7;
      }

      v39 &= v39 - 1;
      v46 = sub_20C13DFF4();

      result = (*v42)(v27, v45);
      v41 = v92;
      v31 = v93;
      if (v46)
      {
        goto LABEL_21;
      }
    }

    while (1)
    {
      v47 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v47 >= v40)
      {

        return MEMORY[0x277D84F90];
      }

      v39 = *(v36 + 8 * v47);
      ++v44;
      if (v39)
      {
        v44 = v47;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20B7EE3D4@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  MEMORY[0x28223BE20](v8);
  v33 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_bookmarkClient), *(v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_bookmarkClient + 24));
  sub_20BE8D6E8(&unk_28228D368);
  v30 = v7;
  sub_20C13A1C4();

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_20B7F1484;
  *(v11 + 24) = v10;
  v31 = *(v3 + 16);
  v12 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v2;
  v31(v12, v7, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v29 = *(v3 + 32);
  v29(v15 + v13, v12, v2);
  v16 = (v15 + v14);
  *v16 = sub_20B7F14A0;
  v16[1] = v11;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60);
  v17 = v33;
  sub_20C137C94();
  v18 = *(v3 + 8);
  v19 = v30;
  v20 = v27;
  v18(v30, v27);
  v21 = v17;
  v22 = v20;
  v31(v19, v21, v20);
  v23 = swift_allocObject();
  v29(v23 + v13, v19, v22);
  v24 = (v23 + v14);
  *v24 = sub_20B7EE780;
  v24[1] = 0;
  sub_20C137C94();
  return (v18)(v33, v22);
}

uint64_t sub_20B7EE720@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{

  v5 = sub_20B7F066C(v4, a1);

  *a2 = v5;
  return result;
}

uint64_t sub_20B7EE780()
{
  *(swift_allocObject() + 16) = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60);

  return sub_20C137CA4();
}

uint64_t sub_20B7EE808()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_bookmarkClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_catalogClient);

  v3 = OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_editorialCollection;
  v4 = sub_20C136D34();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_remoteBrowsingSource);
  v5 = OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_item;
  v6 = sub_20C136D64();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_mediaTagStringBuilder);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_storefrontLocalizer);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_marketingOffer, &unk_27C768660);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_config, &qword_27C761800);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_serviceSubscription, &unk_27C762390);

  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 144);
  v13[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 128);
  v13[9] = v7;
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 160);
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 80);
  v13[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 64);
  v13[5] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 112);
  v13[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 96);
  v13[7] = v9;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 16);
  v13[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row);
  v13[1] = v10;
  v11 = *(v0 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 48);
  v13[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 32);
  v13[3] = v11;
  sub_20B520158(v13, &qword_27C762340);

  return v0;
}

uint64_t sub_20B7EEAAC()
{
  sub_20B7EE808();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVCatalogEditorialCollectionHeaderShelf()
{
  result = qword_27C765D38;
  if (!qword_27C765D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B7EEB58()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20C136D34();
    if (v1 <= 0x3F)
    {
      sub_20C136D64();
      if (v2 <= 0x3F)
      {
        sub_20B7EEDEC(319, &qword_281103B50, MEMORY[0x277D540B0]);
        if (v3 <= 0x3F)
        {
          sub_20B7EEDEC(319, &qword_281103BF0, MEMORY[0x277D50560]);
          if (v4 <= 0x3F)
          {
            sub_20B7EEDEC(319, &qword_27C762130, MEMORY[0x277D51C40]);
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

void sub_20B7EEDEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_20B7EEE40()
{
  v1 = v0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v2 = *(v38 - 8);
  v37 = *(v2 + 64);
  MEMORY[0x28223BE20](v38);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v39 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v13);
  v36 = &v33 - v14;
  sub_20B5A19B4(v12);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B7F1338;
  *(v15 + 24) = v1;
  (*(v7 + 16))(v9, v12, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v16, v9, v6);
  v19 = (v18 + v17);
  *v19 = sub_20B7F133C;
  v19[1] = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60);
  v20 = v39;
  sub_20C137C94();
  v34 = *(v7 + 8);
  v34(v12, v6);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_20B7F138C;
  *(v21 + 24) = v1;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_20B7F1390;
  *(v22 + 24) = v21;
  v23 = v35;
  v24 = v38;
  (*(v2 + 16))(v35, v20, v38);
  v25 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v26 = (v37 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v2 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_20B760084;
  v28[1] = v22;

  v29 = v36;
  sub_20C137C94();
  (*(v2 + 8))(v39, v24);
  v30 = sub_20C137CB4();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  v30(sub_20B5DF6DC, v31);

  v34(v29, v6);
  swift_getObjectType();
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_20B7EF3B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B7EE3D4(v6);

    v12 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v13 = swift_allocObject();
    *(v13 + 16) = sub_20B7F13EC;
    *(v13 + 24) = v12;
    (*(v1 + 16))(v3, v6, v0);
    v14 = *(v1 + 80);
    v23 = v7;
    v15 = v8;
    v16 = (v14 + 16) & ~v14;
    v17 = swift_allocObject();
    (*(v1 + 32))(v17 + v16, v3, v0);
    v18 = (v17 + ((v2 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v18 = sub_20B7F1408;
    v18[1] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
    sub_20C137C94();
    (*(v1 + 8))(v6, v0);
    v19 = v23;
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    v20(sub_20B52347C, v21);

    return (*(v15 + 8))(v10, v19);
  }

  return result;
}

uint64_t sub_20B7EF724@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v5 = result;
  if (result)
  {
    sub_20B7ECFC4(v3);
  }

  *a2 = v5 == 0;
  return result;
}

uint64_t sub_20B7EF7A8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = a2 + *(type metadata accessor for ButtonAction(0) + 28);
  v7 = MEMORY[0x277D84FA0];
  *v5 = MEMORY[0x277D84FA0];
  swift_storeEnumTagMultiPayload();
  v8 = sub_20BF3C25C(v5);
  sub_20B7F12D8(v5, type metadata accessor for ButtonAction.ActionType);
  if ((v8 & 1) == 0)
  {
    *v5 = v7;
    swift_storeEnumTagMultiPayload();
    v9 = sub_20BF3C25C(v5);
    sub_20B7F12D8(v5, type metadata accessor for ButtonAction.ActionType);
    if ((v9 & 1) == 0)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v11 = OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_inProgressButtonActions;
        v12 = Strong;
        v13 = swift_beginAccess();
        v14 = *(v12 + v11);
        MEMORY[0x28223BE20](v13);
        *&v17[-16] = v6;

        v15 = sub_20BEE0D74(sub_20B5D9870, &v17[-32], v14);
        sub_20B5ADF04(v15);
        swift_endAccess();
      }
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B7ED4A4(129);
  }

  return result;
}

uint64_t sub_20B7EF9C4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B7EFA3C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row + 32);
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

unint64_t *sub_20B7EFB04(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20B7F028C(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_20B7EFBA0(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  sub_20B71C190(v6, 0);
}

uint64_t sub_20B7EFC3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = *a1;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);

  return sub_20C137C94();
}

uint64_t sub_20B7EFCE4(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(unsigned __int8 *__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  a3(&v8, &v9);
  v6 = v8;
  v9 = v8;
  v10 = 0;
  a1(&v9);

  return sub_20B71C58C(v6, 0);
}

uint64_t sub_20B7EFD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v8 = OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_marketingOffer;
  v9 = sub_20C138894();
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  *(v3 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_multiUserEligibilitySubscription) = 0;
  v10 = OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_config;
  v11 = sub_20C134104();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_serviceSubscription;
  v13 = sub_20C135734();
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  *(v3 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_matchingDeviceSubscriberAccount) = 0;
  *(v3 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_deviceSubscriberAccount) = 0;
  *(v3 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_deviceCloudAccount) = 0;
  *(v3 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_accountHasSupportedDevice) = 0;
  *(v3 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_accountHasWatch) = 0;
  v14 = v3 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_row;
  sub_20B5D8060(v30);
  v15 = v30[9];
  *(v14 + 128) = v30[8];
  *(v14 + 144) = v15;
  *(v14 + 160) = v31;
  v16 = v30[5];
  *(v14 + 64) = v30[4];
  *(v14 + 80) = v16;
  v17 = v30[7];
  *(v14 + 96) = v30[6];
  *(v14 + 112) = v17;
  v18 = v30[1];
  *v14 = v30[0];
  *(v14 + 16) = v18;
  v19 = v30[3];
  *(v14 + 32) = v30[2];
  *(v14 + 48) = v19;
  v20 = MEMORY[0x277D84FA0];
  *(v3 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_bookmarks) = MEMORY[0x277D84FA0];
  *(v3 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_inProgressButtonActions) = v20;
  *(v3 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *(v3 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_bag) = *&v29[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(v29, v3 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(v29, v3 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v3 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_eventHub) = v29[0];
  v21 = OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_editorialCollection;
  v22 = sub_20C136D34();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v4 + v21, a2, v22);
  v24 = OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_item;
  v25 = sub_20C136D64();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v4 + v24, a3, v25);
  sub_20C13B704();
  *(v4 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_multiUserEligibilityObserver) = sub_20C13B6F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(v29, v4 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_remoteBrowsingSource);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v29, v4 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v29, v4 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_storefrontLocalizer);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v27 = sub_20C13A914();
  (*(v26 + 8))(a3, v25);
  (*(v23 + 8))(a2, v22);
  *(v4 + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_subscriptionToken) = v27;
  return v4;
}

void sub_20B7F028C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v51 = a4;
  v39 = a1;
  v45 = sub_20C136D34();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C138034();
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = 0;
  v13 = 0;
  v52 = a3;
  v16 = *(a3 + 56);
  v15 = a3 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v49 = v9 + 16;
  v50 = v9;
  v42 = (v5 + 8);
  v43 = (v5 + 16);
  v47 = v8;
  v48 = (v9 + 8);
  v46 = v12;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v53 = (v19 - 1) & v19;
LABEL_12:
    v24 = v21 | (v13 << 6);
    (*(v50 + 16))(v12, *(v52 + 48) + *(v50 + 72) * v24, v7, v10);
    v25 = sub_20C138024();
    v27 = v26;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v41 = v24;
      v29 = v44;
      v30 = v45;
      (*v43)(v44, Strong + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_editorialCollection, v45);

      v31 = sub_20C136CF4();
      v33 = v32;
      (*v42)(v29, v30);
      if (v25 == v31 && v27 == v33)
      {

        v7 = v47;
        v12 = v46;
        (*v48)(v46, v47);
        v19 = v53;
LABEL_18:
        *(v39 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
LABEL_21:
          v36 = v52;

          sub_20BC0D95C(v39, v38, v40, v36);
          return;
        }
      }

      else
      {
        v34 = sub_20C13DFF4();

        v7 = v47;
        v12 = v46;
        (*v48)(v46, v47);
        v19 = v53;
        if (v34)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {

      (*v48)(v12, v7);
      v19 = v53;
    }
  }

  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_21;
    }

    v23 = *(v15 + 8 * v13);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v53 = (v23 - 1) & v23;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_20B7F066C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = *MEMORY[0x277D85DE8];
  v48 = sub_20C136D34();
  v6 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C138034();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v50 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;
  v54 = a2;

  if (v11 > 0xD)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v39 = v12;
    v40 = v3;
    v38[1] = v38;
    MEMORY[0x28223BE20](v14);
    v41 = v38 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v41, v13);
    v12 = 0;
    v15 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a1 + 56);
    v19 = (v16 + 63) >> 6;
    v44 = (v6 + 16);
    v45 = v9;
    v42 = 0;
    v43 = (v6 + 8);
    v51 = (v9 + 8);
    v52 = v9 + 16;
    v3 = v9;
    v6 = v50;
    v53 = a1;
    v46 = v8;
    while (v18)
    {
      v20 = __clz(__rbit64(v18));
      v55 = (v18 - 1) & v18;
LABEL_13:
      v23 = v20 | (v12 << 6);
      v24 = *(a1 + 48);
      v25 = *(v3 + 72);
      v49 = v23;
      (*(v3 + 16))(v6, v24 + v25 * v23, v8);
      v13 = sub_20C138024();
      v27 = v26;
      v9 = v54;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v30 = v47;
        v29 = v48;
        (*v44)(v47, Strong + OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_editorialCollection, v48);

        v9 = sub_20C136CF4();
        v32 = v31;
        (*v43)(v30, v29);
        if (v13 == v9 && v27 == v32)
        {

          v6 = v50;
          v8 = v46;
          (*v51)(v50, v46);
          a1 = v53;
          v3 = v45;
          v18 = v55;
LABEL_19:
          *&v41[(v49 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v49;
          if (__OFADD__(v42++, 1))
          {
            __break(1u);
LABEL_22:
            v34 = sub_20BC0D95C(v41, v39, v42, a1);

            return v34;
          }
        }

        else
        {
          v9 = sub_20C13DFF4();

          v6 = v50;
          v8 = v46;
          (*v51)(v50, v46);
          a1 = v53;
          v3 = v45;
          v18 = v55;
          if (v9)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {

        (*v51)(v6, v8);
        a1 = v53;
        v18 = v55;
      }
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v19)
      {
        goto LABEL_22;
      }

      v22 = *(v15 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v55 = (v22 - 1) & v22;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v36 = swift_slowAlloc();
  v37 = v54;

  v34 = sub_20B7EFB04(v36, v12, a1, v37);

  MEMORY[0x20F2F6A40](v36, -1, -1);

  return v34;
}

uint64_t sub_20B7F0B98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v44 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v44 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  v47 = &v44 - v9;
  v10 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ButtonAction(0);
  v45 = *(v19 - 8);
  v20 = *(v45 + 64);
  MEMORY[0x28223BE20](v19);
  v46 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v44 - v22);
  sub_20B7F11D4(a1, v18, type metadata accessor for ShelfItemAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20B5F6860(v18, v23);
    sub_20B7F11D4(v23 + *(v19 + 28), v12, type metadata accessor for ButtonAction.ActionType);
    swift_beginAccess();
    sub_20B700440(v15, v12);
    sub_20B7F12D8(v15, type metadata accessor for ButtonAction.ActionType);
    swift_endAccess();
    sub_20B7ED4A4(129);
    v24 = sub_20C136CF4();
    v26 = v25;
    v27 = *MEMORY[0x277D523C8];
    v28 = sub_20C135ED4();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v7, v27, v28);
    (*(v29 + 56))(v7, 0, 1, v28);
    v30 = *MEMORY[0x277D51768];
    v31 = sub_20C1352E4();
    v32 = *(v31 - 8);
    (*(v32 + 104))(v4, v30, v31);
    (*(v32 + 56))(v4, 0, 1, v31);
    v33 = v47;
    sub_20B5A74EC(v23, v24, v26, v7, 0, 0, v4, v47);

    sub_20B520158(v4, &unk_27C765D50);
    sub_20B520158(v7, &unk_27C7621D0);
    v34 = swift_allocObject();
    swift_weakInit();
    v35 = v46;
    sub_20B7F11D4(v23, v46, type metadata accessor for ButtonAction);
    v36 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v37 = swift_allocObject();
    sub_20B5F6860(v35, v37 + v36);
    *(v37 + ((v20 + v36 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
    v38 = v49;
    v39 = sub_20C137CB4();
    v40 = swift_allocObject();
    *(v40 + 16) = sub_20B7F123C;
    *(v40 + 24) = v37;

    v39(sub_20B52347C, v40);

    (*(v48 + 8))(v33, v38);
    v41 = v23;
    v42 = type metadata accessor for ButtonAction;
  }

  else
  {
    v42 = type metadata accessor for ShelfItemAction;
    v41 = v18;
  }

  return sub_20B7F12D8(v41, v42);
}

uint64_t sub_20B7F11D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B7F123C(uint64_t a1)
{
  v3 = *(type metadata accessor for ButtonAction(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20B7EF7A8(a1, v4);
}

uint64_t sub_20B7F12D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B7F1538(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_20B7F1628()
{
  result = qword_27C765D78;
  if (!qword_27C765D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765D78);
  }

  return result;
}

unint64_t sub_20B7F167C()
{
  result = qword_27C765D80;
  if (!qword_27C765D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765D80);
  }

  return result;
}

unint64_t sub_20B7F16D0()
{
  result = qword_27C767AF0;
  if (!qword_27C767AF0)
  {
    sub_20C136F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767AF0);
  }

  return result;
}

id sub_20B7F19D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TightButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B7F1A28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  sub_20C13CA64();
  if (a4)
  {
    sub_20C13E184();
    v7 = a4;
    sub_20C13D604();

    if ((a5 & 0x80) == 0)
    {
LABEL_3:
      MEMORY[0x20F2F58E0](0);
      goto LABEL_6;
    }
  }

  else
  {
    sub_20C13E184();
    if ((a5 & 0x80) == 0)
    {
      goto LABEL_3;
    }
  }

  MEMORY[0x20F2F58E0](1);
LABEL_6:
  sub_20C13CA64();
}

uint64_t sub_20B7F1B58()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_20C13E164();
  sub_20B7F1A28(v6, v1, v2, v3, v4);
  return sub_20C13E1B4();
}

uint64_t sub_20B7F1BCC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_20C13E164();
  sub_20B7F1A28(v6, v1, v2, v3, v4);
  return sub_20C13E1B4();
}

unint64_t sub_20B7F1C54()
{
  result = qword_27C765DA8;
  if (!qword_27C765DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765DA8);
  }

  return result;
}

uint64_t sub_20B7F1CA8(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, void *a7, unsigned __int8 a8)
{
  if ((a1 != a5 || a2 != a6) && (sub_20C13DFF4() & 1) == 0)
  {
    return 0;
  }

  if (!a3)
  {
    if (!a7)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (!a7)
  {
    return 0;
  }

  sub_20B71D438();
  v12 = a7;
  v13 = a3;
  v14 = sub_20C13D5F4();

  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_7:

  return sub_20B660644(a4, a8);
}

uint64_t sub_20B7F1D8C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_pageNavigator + 24);
  v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_pageNavigator + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_pageNavigator), v4);
  return (*(v5 + 128))(v2, a2, v4, v5);
}

id sub_20B7F1DFC()
{
  v0 = sub_20C13C914();
  v1 = [objc_opt_self() animationWithKeyPath_];

  v2 = sub_20C138374();
  [v1 setFromValue_];

  v3 = sub_20C138374();
  [v1 setToValue_];

  v4 = v1;
  [v4 setDuration_];
  LODWORD(v5) = 2139095039;
  [v4 setRepeatCount_];

  return v4;
}

char *sub_20B7F1EE8(double a1)
{
  *&v1[OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_layout] = xmmword_20C15ACD0;
  v3 = OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_spinnerLayer;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v1[OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_isAnimating] = 0;
  v4 = OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_rotationAnimation;
  *&v1[v4] = sub_20B7F1DFC();
  *&v1[OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_lineWidth] = a1;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for IndefiniteSpinnerView();
  v5 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor_];

  [v7 setHidden_];
  v9 = OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_spinnerLayer;
  [*&v7[OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_spinnerLayer] setLineCap_];
  [*&v7[v9] setLineJoin_];
  [*&v7[v9] setLineWidth_];
  [*&v7[v9] setFillColor_];
  v10 = *&v7[v9];
  result = [v7 tintColor];
  if (result)
  {
    v12 = result;
    v13 = [result CGColor];

    [v10 setStrokeColor_];
    v14 = [v7 layer];

    [v14 addSublayer_];
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20B7F21DC()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for IndefiniteSpinnerView();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_spinnerLayer];
  [v0 bounds];
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_lineWidth] * 0.5;
  [v0 bounds];
  v16 = CGRectInset(v15, v2, v2);
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  sub_20C13D4E4();
  v8 = v7;
  v10 = v9;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v11 = CGRectGetHeight(v17) * 0.5;
  v12 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v8 startAngle:v10 endAngle:v11 clockwise:{-0.942477796, -2.19911486}];
  v13 = [v12 CGPath];

  [v1 setPath_];
  [v0 bounds];
  [v1 setFrame_];
  if (v0[OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_isAnimating] == 1)
  {
    sub_20B7F2560();
  }
}

void sub_20B7F23B8()
{
  v10 = *MEMORY[0x277D85DE8];
  v9.receiver = v0;
  v9.super_class = type metadata accessor for IndefiniteSpinnerView();
  objc_msgSendSuper2(&v9, sel_tintColorDidChange);
  v1 = [v0 tintAdjustmentMode];
  v2 = [v0 tintColor];
  v3 = v2;
  if (v1 == 2)
  {
    if (v2)
    {
      v7 = 0.0;
      v8 = 0.0;
      [v2 getWhite:&v8 alpha:&v7];
      v4 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v8 alpha:v7 * 0.8];

      v3 = v4;
LABEL_5:
      v5 = *&v0[OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_spinnerLayer];
      v6 = [v3 CGColor];
      [v5 setStrokeColor_];

      return;
    }

    __break(1u);
  }

  else if (v2)
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_20B7F2560()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_spinnerLayer];
  v2 = [v1 animationKeys];
  if (!v2 || (v3 = v2, v4 = sub_20C13CC74(), v3, v9[0] = 0xD000000000000012, v9[1] = 0x800000020C19A7D0, MEMORY[0x28223BE20](v5), v8[2] = v9, LOBYTE(v3) = sub_20B79692C(sub_20B606650, v8, v4), , (v3 & 1) == 0))
  {
    v0[OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_isAnimating] = 1;
    [v0 setHidden_];
    v6 = *&v0[OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_rotationAnimation];
    v7 = sub_20C13C914();
    [v1 addAnimation:v6 forKey:v7];
  }
}

id sub_20B7F26FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IndefiniteSpinnerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_20B7F27B0(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC9SeymourUI9URLButton_contentPadding];
  v10 = *(MEMORY[0x277D768C8] + 16);
  *v9 = *MEMORY[0x277D768C8];
  *(v9 + 1) = v10;
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI9URLButton_defaults];
  v12 = *MEMORY[0x277D74420];
  v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  *v11 = v12;
  *(v11 + 1) = 1;
  *(v11 + 2) = v13;
  v14 = &v4[OBJC_IVAR____TtC9SeymourUI9URLButton_layout];
  *v14 = 0xD000000000000019;
  *(v14 + 1) = 0x800000020C19A8C0;
  *(v14 + 2) = 0x4000000000000000;
  *&v4[OBJC_IVAR____TtC9SeymourUI9URLButton_lastFont] = 0;
  v15 = &v4[OBJC_IVAR____TtC9SeymourUI9URLButton_lastSymbolScale];
  *v15 = 0;
  v15[8] = 1;
  v16 = OBJC_IVAR____TtC9SeymourUI9URLButton_url;
  v17 = sub_20C132C14();
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  v48.receiver = v4;
  v48.super_class = type metadata accessor for URLButton();
  v18 = objc_msgSendSuper2(&v48, sel_initWithFrame_, a1, a2, a3, a4);
  v19 = &v18[OBJC_IVAR____TtC9SeymourUI9URLButton_defaults];
  v20 = *&v18[OBJC_IVAR____TtC9SeymourUI9URLButton_defaults + 16];
  v21 = v18;
  [v21 setTintColor_];
  v22 = [v21 imageView];
  if (v22)
  {
    v23 = v22;
    [v22 setContentMode_];
  }

  v24 = [v21 imageView];

  if (v24)
  {
    [v24 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  }

  v25 = *v19;
  v26 = *(v19 + 2);
  v27 = objc_opt_self();
  v28 = *MEMORY[0x277D76918];
  v29 = v26;
  v30 = [v27 preferredFontForTextStyle_];
  [v30 pointSize];
  v32 = v31;

  v33 = [v27 systemFontOfSize:v32 weight:v25];
  v34 = *(v19 + 1);
  v35 = objc_opt_self();
  [v33 pointSize];
  v37 = v36;
  sub_20BF1F62C();
  v39 = [v35 configurationWithPointSize:sub_20BF1F7A8(v38) weight:v34 scale:v37];

  v40 = v39;
  v41 = sub_20C13C914();

  v42 = [objc_opt_self() systemImageNamed:v41 withConfiguration:v40];

  if (!v42)
  {
    v46 = 0;
    goto LABEL_9;
  }

  v43 = v42;
  result = [v21 tintColor];
  if (result)
  {
    v45 = result;
    v46 = [v43 imageWithTintColor:result renderingMode:1];

LABEL_9:
    [v21 setImage:v46 forState:0];
    v47 = [objc_opt_self() defaultCenter];
    [v47 addObserver:v21 selector:sel_textSizeChanged_ name:*MEMORY[0x277D76810] object:0];

    return v21;
  }

  __break(1u);
  return result;
}

id sub_20B7F2C44()
{
  v40.receiver = v0;
  v40.super_class = type metadata accessor for URLButton();
  objc_msgSendSuper2(&v40, sel_layoutSubviews);
  v1 = objc_opt_self();
  v2 = [v1 userInterfaceLayoutDirectionForSemanticContentAttribute_];
  v3 = [v0 imageView];
  v4 = 0.0;
  Width = 0.0;
  if (v3)
  {
    v6 = v3;
    [v3 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v41.origin.x = v8;
    v41.origin.y = v10;
    v41.size.width = v12;
    v41.size.height = v14;
    Width = CGRectGetWidth(v41);
  }

  v15 = [v0 titleLabel];
  if (v15)
  {
    v16 = v15;
    [v15 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v42.origin.x = v18;
    v42.origin.y = v20;
    v42.size.width = v22;
    v42.size.height = v24;
    v4 = CGRectGetWidth(v42);
  }

  if (v2)
  {
    v25 = -1.0;
  }

  else
  {
    v25 = 1.0;
  }

  v26 = &v0[OBJC_IVAR____TtC9SeymourUI9URLButton_contentPadding];
  v27 = *&v0[OBJC_IVAR____TtC9SeymourUI9URLButton_layout + 16];
  v28 = v27 + *&v0[OBJC_IVAR____TtC9SeymourUI9URLButton_contentPadding + 24];
  v29 = v4 + v27;
  v36 = Width;
  v38 = v25 * Width;
  v31 = *&v0[OBJC_IVAR____TtC9SeymourUI9URLButton_contentPadding];
  v30 = *&v0[OBJC_IVAR____TtC9SeymourUI9URLButton_contentPadding + 8];
  if ([v1 userInterfaceLayoutDirectionForSemanticContentAttribute_])
  {
    v32 = v28;
  }

  else
  {
    v32 = v30;
  }

  v33 = v26[2];
  if ([v1 userInterfaceLayoutDirectionForSemanticContentAttribute_])
  {
    v34 = v30;
  }

  else
  {
    v34 = v28;
  }

  [v0 setContentEdgeInsets_];
  [v0 setImageEdgeInsets_];
  return [v0 setTitleEdgeInsets_];
}

void sub_20B7F2EE0()
{
  v11 = *MEMORY[0x277D85DE8];
  v10.receiver = v0;
  v10.super_class = type metadata accessor for URLButton();
  objc_msgSendSuper2(&v10, sel_tintColorDidChange);
  if ([v0 tintAdjustmentMode] == 2)
  {
    v1 = [v0 tintColor];
    if (!v1)
    {
      __break(1u);
      return;
    }

    v2 = v1;
    v8 = 0.0;
    v9 = 0.0;
    [v1 getWhite:&v9 alpha:&v8];
    v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v9 alpha:v8 * 0.8];
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC9SeymourUI9URLButton_defaults + 16];
  }

  v4 = [v0 imageView];
  if (v4 && (v5 = v4, v6 = [v4 image], v5, v6))
  {
    v7 = [v6 imageWithTintColor_];
  }

  else
  {
    v7 = 0;
  }

  [v0 setImage:v7 forState:0];
}

void sub_20B7F30D8(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *&v3[OBJC_IVAR____TtC9SeymourUI9URLButton_lastFont];
  *&v3[OBJC_IVAR____TtC9SeymourUI9URLButton_lastFont] = a1;
  v9 = a1;

  v10 = &v4[OBJC_IVAR____TtC9SeymourUI9URLButton_lastSymbolScale];
  *v10 = a2;
  v10[8] = a3 & 1;
  v11 = v9;
  if (a1)
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v33 = *&v4[OBJC_IVAR____TtC9SeymourUI9URLButton_defaults];
  v34 = *&v4[OBJC_IVAR____TtC9SeymourUI9URLButton_defaults + 16];
  v35 = objc_opt_self();
  v36 = *MEMORY[0x277D76918];
  v37 = v34;
  v38 = [v35 preferredFontForTextStyle_];
  [v38 pointSize];
  v40 = v39;

  v11 = [v35 systemFontOfSize:v40 weight:v33];
  if (a3)
  {
LABEL_3:
    a2 = *&v4[OBJC_IVAR____TtC9SeymourUI9URLButton_defaults + 8];
  }

LABEL_4:
  v12 = v9;
  v13 = [v4 titleLabel];
  if (v13)
  {
    v14 = v13;
    [v13 setFont_];
  }

  v15 = [v4 titleLabel];
  if (v15)
  {
    v16 = v15;
    [v15 setAdjustsFontForContentSizeCategory_];
  }

  [v11 pointSize];
  v18 = [v11 fontWithSize_];
  v19 = objc_opt_self();
  v20 = v18;
  [v20 pointSize];
  v22 = v21;
  sub_20BF1F62C();
  v24 = [v19 configurationWithPointSize:sub_20BF1F7A8(v23) weight:a2 scale:v22];

  v25 = [v4 imageView];
  if (!v25)
  {
LABEL_12:
    v32 = 0;
    v27 = 0;
    goto LABEL_16;
  }

  v26 = v25;
  v27 = [v25 image];

  if (v27)
  {
    v28 = [v27 imageByApplyingSymbolConfiguration_];

    if (v28)
    {
      v27 = v28;
      [v11 lineHeight];
      v30 = v29;
      [v11 ascender];
      v41 = [v27 imageWithBaselineOffsetFromBottom_];

      v32 = v41;
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v32 = 0;
LABEL_16:
  v42 = v32;
  [v4 setImage_forState_];
}

id sub_20B7F357C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for URLButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for URLButton()
{
  result = qword_27C765E00;
  if (!qword_27C765E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B7F3680()
{
  sub_20B52DCE4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B7F373C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_20B7F3784(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_20B7F37E4()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI9URLButton_contentPadding);
  v2 = *(MEMORY[0x277D768C8] + 16);
  *v1 = *MEMORY[0x277D768C8];
  v1[1] = v2;
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI9URLButton_defaults);
  v4 = *MEMORY[0x277D74420];
  v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  *v3 = v4;
  v3[1] = 1;
  v3[2] = v5;
  v6 = (v0 + OBJC_IVAR____TtC9SeymourUI9URLButton_layout);
  *v6 = 0xD000000000000019;
  v6[1] = 0x800000020C19A8C0;
  v6[2] = 0x4000000000000000;
  *(v0 + OBJC_IVAR____TtC9SeymourUI9URLButton_lastFont) = 0;
  v7 = v0 + OBJC_IVAR____TtC9SeymourUI9URLButton_lastSymbolScale;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = OBJC_IVAR____TtC9SeymourUI9URLButton_url;
  v9 = sub_20C132C14();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  sub_20C13DE24();
  __break(1u);
}

unint64_t sub_20B7F3960()
{
  result = qword_27C765E18;
  if (!qword_27C765E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765E18);
  }

  return result;
}

uint64_t sub_20B7F39B4(uint64_t a1, int a2, float a3, float a4, float a5)
{
  v6 = v5;
  LODWORD(v102) = a2;
  v108 = sub_20C132174();
  v94 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765E38);
  v109 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v113 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v106 = &v92 - v15;
  MEMORY[0x28223BE20](v16);
  v105 = &v92 - v17;
  MEMORY[0x28223BE20](v18);
  v104 = &v92 - v19;
  MEMORY[0x28223BE20](v20);
  v103 = &v92 - v21;
  MEMORY[0x28223BE20](v22);
  v112 = &v92 - v23;
  v110 = sub_20C132EE4();
  v24 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v26 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v98 = *(v96 - 1);
  MEMORY[0x28223BE20](v96);
  v28 = &v92 - v27;
  v29 = sub_20C132254();
  v95 = v29;
  v97 = *(v29 - 8);
  v30 = v97;
  MEMORY[0x28223BE20](v29);
  v111 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ContainerNodeBuilder();
  v33 = (v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC9SeymourUI16RingsNodeBuilder_parent + 8) = 0;
  swift_unknownObjectWeakInit();
  v93 = v6;
  *(v6 + OBJC_IVAR____TtC9SeymourUI16RingsNodeBuilder_diameter) = a3;
  *(v6 + OBJC_IVAR____TtC9SeymourUI16RingsNodeBuilder_interItemSpacing) = a4;
  *(v6 + OBJC_IVAR____TtC9SeymourUI16RingsNodeBuilder_thickness) = a5;
  sub_20C132454();
  (*(v30 + 104))(v111, *MEMORY[0x277CE9CC0], v29);
  v35[1] = v102;
  sub_20C132ED4();
  sub_20C132104();
  v36 = *(v24 + 8);
  v101 = v26;
  v102 = v24 + 8;
  v100 = v36;
  v36(v26, v110);
  v37 = v96;
  sub_20C131F24();
  (*(v98 + 8))(v28, v37);
  *v35 = 1;
  v38 = sub_20C131F44();
  v39 = &v35[v33[9]];
  *v39 = v38;
  v39[8] = v40;
  v41 = sub_20C131FD4();
  v42 = &v35[v33[10]];
  *v42 = v41;
  v42[8] = v43;
  v44 = sub_20C131FE4();
  v45 = &v35[v33[11]];
  *v45 = v44;
  *(v45 + 1) = v46;
  v45[20] = v47;
  *(v45 + 4) = v48;
  v45[21] = v49;
  v50 = sub_20C132384();
  v51 = &v35[v33[12]];
  *v51 = v50 & 0xFFFFFFFFFFLL;
  v51[12] = v52;
  *(v51 + 2) = v53;
  v51[13] = 0;
  v54 = sub_20C132004();
  v56 = v55;
  v58 = v57;
  LOBYTE(v30) = v59;
  (*(v97 + 8))(v111, v95);
  v60 = &v35[v33[13]];
  *v60 = v54;
  *(v60 + 1) = v56;
  v61 = v93;
  *(v60 + 2) = v58;
  v60[24] = v30;
  result = sub_20B7F53C0(v35, v61 + OBJC_IVAR____TtC9SeymourUI16RingsNodeBuilder_containerBuilder);
  if (a1 < 0)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v63 = MEMORY[0x277D84F90];
  if (a1)
  {
    v64 = 0;
    v65 = (v109 + 8);
    LODWORD(v98) = *MEMORY[0x277CE9BF8];
    v97 = v94 + 104;
    v96 = (v94 + 8);
    v95 = (v109 + 16);
    v94 = v109 + 32;
    v99 = a1;
    while (1)
    {
      v66 = v64 + 1;
      if (__OFADD__(v64 + 1, v64))
      {
        break;
      }

      v67 = v101;
      sub_20C132ED4();
      sub_20C1323D4();
      sub_20C1323B4();
      v68 = v106;
      sub_20C132044();
      v100(v67, v110);
      sub_20C1323A4();
      v69 = v105;
      sub_20C131FF4();
      v70 = *v65;
      (*v65)(v68, v12);
      sub_20C132414();
      *&v118 = v71;
      *(&v118 + 1) = v72;
      *(&v73 + 1) = BYTE4(v72);
      *&v73 = *(&v118 + 4);
      v74 = v104;
      v111 = ((v73 >> 32) | v111 & 0xFFFF000000000000);
      sub_20C131F54();
      v70(v69, v12);
      v75 = v103;
      sub_20C131F94();
      v70(v74, v12);
      v76 = v107;
      v77 = v108;
      (*v97)(v107, v98, v108);
      v78 = v112;
      sub_20C132054();
      (*v96)(v76, v77);
      v70(v75, v12);
      (*v95)(v113, v78, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_20BC06158(0, v63[2] + 1, 1, v63);
      }

      v80 = v63[2];
      v79 = v63[3];
      if (v80 >= v79 >> 1)
      {
        v63 = sub_20BC06158(v79 > 1, v80 + 1, 1, v63);
      }

      v70(v112, v12);
      v63[2] = v80 + 1;
      result = (*(v109 + 32))(v63 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v80, v113, v12);
      v64 = v66;
      if (v99 == v66)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_10:

  sub_20BC41B20(v81);
  v82 = v93;
  *(v93 + OBJC_IVAR____TtC9SeymourUI16RingsNodeBuilder_rings) = v83;
  v84 = v63[2];
  if (v84)
  {
    *&v118 = MEMORY[0x277D84F90];
    sub_20BB5DA04(0, v84, 0);
    v85 = v118;
    v86 = *(v118 + 16);
    v87 = 56 * v86 + 72;
    for (i = v84 - 1; ; --i)
    {
      *&v118 = v85;
      v89 = *(v85 + 24);
      if (v86 >= v89 >> 1)
      {
        sub_20BB5DA04((v89 > 1), v86 + 1, 1);
        v85 = v118;
      }

      *(v85 + 16) = v86 + 1;
      v90 = (v85 + v87);
      *(v90 - 5) = 0;
      *(v90 - 4) = 0;
      *(v90 - 24) = 2;
      v91 = v116;
      *(v90 - 21) = v117;
      *(v90 - 23) = v91;
      *(v90 - 12) = 0;
      *(v90 - 20) = 0;
      *(v90 - 4) = 2;
      LOBYTE(v91) = v115;
      *(v90 - 3) = v114;
      *(v90 - 1) = v91;
      *v90 = 0;
      v90[1] = 0;
      if (!i)
      {
        break;
      }

      v87 += 56;
      ++v86;
    }
  }

  else
  {

    v85 = MEMORY[0x277D84F90];
  }

  *(v82 + OBJC_IVAR____TtC9SeymourUI16RingsNodeBuilder_ringConfiguration) = v85;
  return v82;
}

uint64_t sub_20B7F4468(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v15 = OBJC_IVAR____TtC9SeymourUI16RingsNodeBuilder_ringConfiguration;
  result = swift_beginAccess();
  v17 = *(v7 + v15);
  if (*(v17 + 16) > a1)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v18 = v17 + 56 * a1;
      v24 = *(v18 + 49);
      v25 = *(v18 + 51);
      *v23 = *(v18 + 69);
      *&v23[15] = *(v18 + 84);
      swift_beginAccess();
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + v15) = v17;
      if (result)
      {
        goto LABEL_4;
      }
    }

    result = sub_20BF908A0(v17);
    v17 = result;
LABEL_4:
    if (*(v17 + 16) <= a1)
    {
      __break(1u);
    }

    else
    {
      v19 = v17 + 56 * a1;
      *(v19 + 32) = a2;
      *(v19 + 40) = a3;
      *(v19 + 48) = a4;
      *(v19 + 49) = v24;
      *(v19 + 51) = v25;
      *(v19 + 52) = a5;
      *(v19 + 60) = a6;
      *(v19 + 68) = a7;
      *(v19 + 69) = *v23;
      *(v19 + 84) = *&v23[15];
      *(v7 + v15) = v17;
      swift_endAccess();
      v20 = v7 + OBJC_IVAR____TtC9SeymourUI16RingsNodeBuilder_parent;
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v21 = *(v20 + 8);
        ObjectType = swift_getObjectType();
        (*(v21 + 8))(ObjectType, v21);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_20B7F45F4(unint64_t a1, float a2, float a3, float a4, float a5)
{
  v11 = OBJC_IVAR____TtC9SeymourUI16RingsNodeBuilder_ringConfiguration;
  result = swift_beginAccess();
  v13 = *(v5 + v11);
  if (*(v13 + 16) > a1)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v14 = v13 + 56 * a1;
      v19 = *(v14 + 32);
      v20 = *(v14 + 48);
      v21 = *(v14 + 64);
      swift_beginAccess();
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + v11) = v13;
      if (result)
      {
        goto LABEL_4;
      }
    }

    result = sub_20BF908A0(v13);
    v13 = result;
LABEL_4:
    if (*(v13 + 16) <= a1)
    {
      __break(1u);
    }

    else
    {
      v15 = v13 + 56 * a1;
      *(v15 + 32) = v19;
      *(v15 + 48) = v20;
      *(v15 + 64) = v21;
      *(v15 + 72) = a2;
      *(v15 + 76) = a3;
      *(v15 + 80) = a4;
      *(v15 + 84) = a5;
      *(v5 + v11) = v13;
      swift_endAccess();
      v16 = v5 + OBJC_IVAR____TtC9SeymourUI16RingsNodeBuilder_parent;
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v17 = *(v16 + 8);
        ObjectType = swift_getObjectType();
        (*(v17 + 8))(ObjectType, v17);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_20B7F4744()
{
  sub_20B593250(v0 + OBJC_IVAR____TtC9SeymourUI16RingsNodeBuilder_containerBuilder);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI16RingsNodeBuilder_parent);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RingsNodeBuilder()
{
  result = qword_27C765E20;
  if (!qword_27C765E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B7F482C()
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

__n128 __swift_memcpy56_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_20B7F4904(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 56))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20B7F494C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_20B7F49AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v3 = sub_20C132264();
  v95 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v69 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765E30);
  MEMORY[0x28223BE20](v94);
  v103 = (&v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v93 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765E38);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v92 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v91 = &v69 - v12;
  MEMORY[0x28223BE20](v13);
  v90 = &v69 - v14;
  MEMORY[0x28223BE20](v15);
  v89 = &v69 - v16;
  v17 = type metadata accessor for ContainerNodeBuilder();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v71 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v72 = &v69 - v22;
  MEMORY[0x28223BE20](v23);
  v73 = &v69 - v24;
  v25 = *(v2 + OBJC_IVAR____TtC9SeymourUI16RingsNodeBuilder_rings);
  v26 = *(v25 + 16);
  v27 = MEMORY[0x277D84F90];
  v70 = v3;
  v77 = v19;
  if (v26)
  {
    v106 = MEMORY[0x277D84F90];

    v81 = v26;
    sub_20BB5E064(0, v26, 0);
    v88 = *(v25 + 16);
    v80 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v87 = v25 + v80;
    v28 = v106;
    v86 = OBJC_IVAR____TtC9SeymourUI16RingsNodeBuilder_ringConfiguration;
    result = swift_beginAccess();
    v30 = 0;
    v85 = v9 + 16;
    v78 = (v9 + 8);
    v31 = 84;
    v84 = v9;
    v83 = v2;
    v82 = v25;
    v79 = v9 + 32;
    while (v88 != v30)
    {
      if (v30 >= *(v25 + 16))
      {
        goto LABEL_20;
      }

      v104 = v28;
      v32 = v94;
      v33 = v2;
      v34 = *(v94 + 48);
      v35 = *(v9 + 72);
      v36 = v93;
      (*(v9 + 16))(&v93[v34], v87 + v35 * v30, v8);
      v37 = v103;
      *v103 = v30;
      v38 = v37 + *(v32 + 48);
      v102 = *(v9 + 32);
      result = v102(v38, &v36[v34], v8);
      v39 = *(v33 + v86);
      if (v30 >= *(v39 + 16))
      {
        goto LABEL_21;
      }

      v40 = v39 + v31;
      v41 = *(v40 - 52);
      v96 = *(v40 - 44);
      v97 = v41;
      v42 = *(v40 - 24);
      v100 = *(v40 - 32);
      v101 = v35;
      v99 = v42;
      v98 = *(v40 - 16);
      v43 = v103;
      v44 = v92;
      sub_20C132024();
      v45 = v91;
      sub_20C132034();
      v46 = *v78;
      (*v78)(v44, v8);
      v47 = v90;
      sub_20C132064();
      v48 = v45;
      v49 = v89;
      v46(v48, v8);
      sub_20C132014();
      v46(v47, v8);
      sub_20B7F5358(v43);
      v28 = v104;
      v106 = v104;
      v51 = *(v104 + 16);
      v50 = *(v104 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_20BB5E064(v50 > 1, v51 + 1, 1);
        v28 = v106;
      }

      ++v30;
      *(v28 + 16) = v51 + 1;
      result = v102((v28 + v80 + v51 * v101), v49, v8);
      v31 += 56;
      v9 = v84;
      v2 = v83;
      v25 = v82;
      if (v81 == v30)
      {

        v19 = v77;
        v27 = MEMORY[0x277D84F90];
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
LABEL_11:
    v52 = OBJC_IVAR____TtC9SeymourUI16RingsNodeBuilder_containerBuilder;
    swift_beginAccess();
    sub_20B6B5ADC(v2 + v52, v19);
    v53 = *(v28 + 16);
    if (v53)
    {
      v103 = v8;
      v105 = v27;
      sub_20BB5E020(0, v53, 0);
      v54 = v70;
      v55 = v105;
      v57 = *(v9 + 16);
      v56 = v9 + 16;
      v58 = *(v56 + 64);
      v104 = v28;
      v59 = (v28 + ((v58 + 32) & ~v58));
      v101 = *(v56 + 56);
      v102 = v57;
      LODWORD(v100) = *MEMORY[0x277CE9CD0];
      v60 = (v95 + 104);
      v61 = v69;
      do
      {
        v102(v61, v59, v103);
        (*v60)(v61, v100, v54);
        v105 = v55;
        v63 = *(v55 + 16);
        v62 = *(v55 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_20BB5E020(v62 > 1, v63 + 1, 1);
          v54 = v70;
          v55 = v105;
        }

        *(v55 + 16) = v63 + 1;
        (*(v95 + 32))(v55 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v63, v61, v54);
        v59 += v101;
        --v53;
      }

      while (v53);

      v19 = v77;
    }

    else
    {
    }

    v64 = v71;
    sub_20B7E27F8(v71);

    sub_20B593250(v19);
    sub_20C1323A4();
    v65 = v72;
    v66 = v75;
    sub_20C131FF4();
    v67 = *(v74 + 8);
    v67(v64, v66);
    v68 = v73;
    sub_20C131F84();
    v67(v65, v66);
    sub_20C131F94();
    return (v67)(v68, v66);
  }

  return result;
}

uint64_t sub_20B7F5308(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI16RingsNodeBuilder_parent + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B7F5358(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B7F53C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerNodeBuilder();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_20B7F5424()
{
  v1 = v0;
  v2 = sub_20C132FD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf____lazy_storage___numberFormatter;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf____lazy_storage___numberFormatter);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf____lazy_storage___numberFormatter);
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    [v9 setNumberStyle_];
    sub_20C132F94();
    v10 = sub_20C132F54();
    (*(v3 + 8))(v5, v2);
    [v9 setLocale_];

    [v9 setMaximumFractionDigits_];
    v11 = *(v1 + v6);
    *(v1 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v12 = v7;
  return v8;
}

uint64_t sub_20B7F5590()
{
  v1 = sub_20C13C554();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x28223BE20](v1);
  v48 = (&v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_20C1341A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v0;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_durations);
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = (v4 + 8);
    v57 = v8;
    v55 = v8 - 1;
    v56 = MEMORY[0x277D84F90];
    do
    {
      v12 = v9;
      while (1)
      {
        if (v12 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        (*(v4 + 16))(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v3);
        sub_20B7F5AE8(v58, &v68);
        (*v11)(v6, v3);
        v13 = *(&v68 + 1);
        if (*(&v68 + 1))
        {
          break;
        }

        if (v57 == ++v12)
        {
          goto LABEL_15;
        }
      }

      v51 = v68;
      v52 = v69;
      v53 = v70;
      v54 = *(&v69 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_20BC07400(0, *(v56 + 2) + 1, 1, v56);
      }

      v15 = *(v56 + 2);
      v14 = *(v56 + 3);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v46 = *(v56 + 2);
        v47 = v15 + 1;
        v21 = sub_20BC07400((v14 > 1), v15 + 1, 1, v56);
        v15 = v46;
        v16 = v47;
        v56 = v21;
      }

      v9 = v12 + 1;
      v17 = v56;
      *(v56 + 2) = v16;
      v18 = &v17[40 * v15];
      v19 = v52;
      *(v18 + 4) = v51;
      *(v18 + 5) = v13;
      v18[48] = v19 & 1;
      v20 = v53;
      *(v18 + 7) = v54;
      *(v18 + 8) = v20;
    }

    while (v55 != v12);
  }

  else
  {
    v56 = MEMORY[0x277D84F90];
  }

LABEL_15:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_20C14F980;
  v23 = swift_allocObject();
  *(v23 + 16) = v56;
  *(v22 + 32) = v23 | 0x6000000000000005;
  v59 = 0uLL;
  LOBYTE(v60) = 1;
  *(&v60 + 1) = 0;
  *&v61 = 0;
  WORD4(v61) = 128;
  v62 = 0uLL;
  *&v63 = 0xD000000000000028;
  *(&v63 + 1) = 0x800000020C19A9F0;
  v64 = 0uLL;
  LOBYTE(v65) = 1;
  *(&v65 + 1) = v22;
  *&v66[0] = MEMORY[0x277D84F90];
  *(v66 + 8) = 0u;
  *(&v66[1] + 8) = 0u;
  *(&v66[2] + 1) = 0;
  v67 = 2;
  nullsub_1(&v59);
  v24 = v58 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row;
  v25 = *(v58 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 144);
  v76 = *(v58 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 128);
  v77 = v25;
  v78 = *(v58 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 160);
  v26 = *(v58 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 80);
  v72 = *(v58 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 64);
  v73 = v26;
  v27 = *(v58 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 112);
  v74 = *(v58 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 96);
  v75 = v27;
  v28 = *(v58 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 16);
  v68 = *(v58 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row);
  v69 = v28;
  v29 = *(v58 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 48);
  v70 = *(v58 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 32);
  v71 = v29;
  v30 = v66[2];
  *(v24 + 128) = v66[1];
  *(v24 + 144) = v30;
  *(v24 + 160) = v67;
  v31 = v64;
  *(v24 + 64) = v63;
  *(v24 + 80) = v31;
  v32 = v66[0];
  *(v24 + 96) = v65;
  *(v24 + 112) = v32;
  v33 = v60;
  *v24 = v59;
  *(v24 + 16) = v33;
  v34 = v62;
  *(v24 + 32) = v61;
  *(v24 + 48) = v34;
  sub_20B520158(&v68, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v36 = sub_20B61D928(v58, result);
      if (v37)
      {
        v6 = v36;
        v11 = v37;
        v39 = v38;
        sub_20B5E2E18();
        v40 = sub_20C13D374();
        v42 = v48;
        v41 = v49;
        *v48 = v40;
        v43 = v50;
        (*(v41 + 104))(v42, *MEMORY[0x277D85200], v50);
        v44 = sub_20C13C584();
        v45 = *(v41 + 8);
        v3 = v41 + 8;
        v45(v42, v43);
        if ((v44 & 1) == 0)
        {
LABEL_24:
          __break(1u);

          (*v11)(v6, v3);

          __break(1u);
          return result;
        }

        sub_20B620D7C(v6, v11, v39, v58, 0, v10);
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

void sub_20B7F5AE8(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_20C1341A4();
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_20B7F5424();
  sub_20C134194();
  v10 = sub_20C138374();
  v11 = [v9 stringFromNumber_];

  if (v11)
  {
    v12 = sub_20C13C954();
    v14 = v13;

    v42 = v12;
    v43 = v14;
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    v17 = sub_20C132964();
    v19 = v18;

    v44 = v17;
    v45 = v19;
    sub_20B5F6EB0();
    v20 = sub_20C13D9D4();
    v22 = v21;

    MEMORY[0x20F2F4230](v20, v22);

    v23 = v42;
    v41 = v43;
    v24 = sub_20C134154();
    v40 = v25;
    v26 = sub_20C134154();
    v28 = v27;
    v29 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_selectedDuration;
    swift_beginAccess();
    sub_20B52F9E8(a1 + v29, v8, &qword_27C7627B8);
    if ((*(v46 + 48))(v8, 1, v4))
    {
      sub_20B520158(v8, &qword_27C7627B8);

      v30 = 0;
    }

    else
    {
      v38 = v23;
      v31 = v46;
      v32 = v39;
      (*(v46 + 16))(v39, v8, v4);
      sub_20B520158(v8, &qword_27C7627B8);
      v33 = sub_20C134154();
      v35 = v34;
      (*(v31 + 8))(v32, v4);
      if (v26 == v33 && v28 == v35)
      {

        v30 = 1;
      }

      else
      {
        v36 = sub_20C13DFF4();

        v30 = v36 & 1;
      }

      v23 = v38;
    }

    v37 = v40;
    *a2 = v24;
    a2[1] = v37;
    a2[2] = v30;
    a2[3] = v23;
    a2[4] = v41;
  }

  else
  {
    a2[4] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }
}

uint64_t sub_20B7F5EE4(uint64_t a1)
{
  v2 = v1;
  v31 = type metadata accessor for WorkoutPlanAlternativeDurationFilterUpdated();
  MEMORY[0x28223BE20](v31);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C1341A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v28 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v8 - 8);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v34 = a1;
  v35 = a1;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765E98);
  sub_20B7F7FB4();
  v16 = sub_20C13CBF4();

  *(v2 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_durations) = v16;

  v17 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_selectedDuration;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v17, v15, &qword_27C7627B8);
  v29 = v6;
  v18 = *(v6 + 48);
  v33 = v5;
  LODWORD(v16) = v18(v15, 1, v5);
  v19 = sub_20B520158(v15, &qword_27C7627B8);
  if (v16 == 1)
  {
    MEMORY[0x28223BE20](v19);
    *(&v28 - 2) = v20;
    v21 = v32;
    sub_20B7F6350(sub_20B7F8018, (&v28 - 4), v34, v32);
    sub_20B7F8078(v21, v12);
    v22 = v33;
    if (v18(v12, 1, v33) == 1)
    {
      return sub_20B520158(v12, &qword_27C7627B8);
    }

    v24 = v28;
    v25 = v29;
    (*(v29 + 32))(v28, v12, v22);
    v26 = *(v25 + 16);
    v26(v21, v24, v22);
    (*(v25 + 56))(v21, 0, 1, v22);
    swift_beginAccess();
    sub_20B7F7D8C(v21, v2 + v17);
    swift_endAccess();
    swift_getObjectType();
    v27 = v30;
    v26(v30, v24, v22);
    sub_20B7F7DFC();
    sub_20C13A764();
    sub_20B7F7E54(v27, type metadata accessor for WorkoutPlanAlternativeDurationFilterUpdated);
    sub_20B7F5590();
    (*(v25 + 8))(v24, v22);
  }

  return sub_20B7F5590();
}

uint64_t sub_20B7F6350@<X0>(uint64_t (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v52 = a1;
  v53 = a2;
  v59 = sub_20C1341A4();
  v6 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v45 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v57 = &v45 - v15;
  v16 = a3 + 56;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a3 + 56);
  if (v19)
  {
    v47 = a4;
    v20 = 0;
    v21 = __clz(__rbit64(v19));
    v22 = (v19 - 1) & v19;
    v23 = (v17 + 63) >> 6;
LABEL_9:
    v26 = *(v6 + 72);
    v27 = *(a3 + 48) + v26 * v21;
    v28 = *(v6 + 16);
    v29 = v59;
    v49 = v6 + 16;
    v50 = v26;
    v48 = v28;
    (v28)(v12, v27, v59, v14);
    v46 = v6;
    v55 = *(v6 + 32);
    v55(v57, v12, v29);
    v30 = (v6 + 8);
    v54 = a3;

    if (v22)
    {
      goto LABEL_12;
    }

    do
    {
LABEL_13:
      v32 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      if (v32 >= v23)
      {

        v41 = v47;
        v42 = v59;
        v55(v47, v57, v59);
        return (*(v46 + 56))(v41, 0, 1, v42);
      }

      v22 = *(v16 + 8 * v32);
      ++v20;
    }

    while (!v22);
    while (1)
    {
      v33 = v51;
      v34 = v59;
      v48(v51, *(v54 + 48) + (__clz(__rbit64(v22)) | (v32 << 6)) * v50, v59);
      v35 = v56;
      v55(v56, v33, v34);
      v36 = v58;
      v37 = v52(v35, v57);
      if (v36)
      {
        break;
      }

      v58 = 0;
      v22 &= v22 - 1;
      v38 = *v30;
      if (v37)
      {
        v39 = v57;
        v40 = v59;
        v38(v57, v59);
        result = (v55)(v39, v56, v40);
        v20 = v32;
        if (!v22)
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = (v38)(v56, v59);
        v20 = v32;
        if (!v22)
        {
          goto LABEL_13;
        }
      }

LABEL_12:
      v32 = v20;
    }

    v43 = *v30;
    v44 = v59;
    (*v30)(v56, v59);
    return (v43)(v57, v44);
  }

  else
  {
    v24 = 0;
    v23 = (v17 + 63) >> 6;
    while (v23 - 1 != v19)
    {
      v20 = v19 + 1;
      v25 = *(a3 + 64 + 8 * v19);
      v24 -= 64;
      ++v19;
      if (v25)
      {
        v47 = a4;
        v22 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) - v24;
        goto LABEL_9;
      }
    }

    return (*(v6 + 56))(a4, 1, 1, v59, v14);
  }
}

uint64_t sub_20B7F6750()
{
  v0 = sub_20C1354A4();
  v1 = sub_20C134154();
  v3 = sub_20B8D7150(v1, v2, v0);

  return v3 & 1;
}

uint64_t sub_20B7F67B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v38 = a3;
  v43 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764480);
  v3 = *(v45 - 8);
  v42 = *(v3 + 64);
  MEMORY[0x28223BE20](v45);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v35 - v6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v49 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v35 - v7;
  v8 = sub_20C133E24();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C30);
  v10 = *(sub_20C135C84() - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v35 = xmmword_20C14F980;
  *(v12 + 16) = xmmword_20C14F980;
  v13 = v12 + v11;
  *v13 = xmmword_20C15AF00;
  *(v13 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  sub_20BE8C0B0(v12);
  swift_setDeallocating();
  v14 = MEMORY[0x277D52060];
  sub_20B7F7E54(v12 + v11, MEMORY[0x277D52060]);
  swift_deallocClassInstance();
  v15 = swift_allocObject();
  *(v15 + 16) = v35;
  v16 = (v15 + v11);
  v17 = v38;
  *v16 = v37;
  v16[1] = v17;
  swift_storeEnumTagMultiPayload();

  sub_20BE8C0B0(v15);
  swift_setDeallocating();
  sub_20B7F7E54(v16, v14);
  swift_deallocClassInstance();
  v18 = v36;
  sub_20C133DE4();
  __swift_project_boxed_opaque_existential_1((v40 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_catalogClient), *(v40 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_catalogClient + 24));
  v19 = v39;
  sub_20C139F84();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v22 = v43;
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_20B7F7EB4;
  *(v23 + 24) = v21;
  v24 = v41;
  v25 = v45;
  (*(v3 + 16))(v41, v19, v45);
  v26 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v27 = (v42 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v3 + 32))(v28 + v26, v24, v25);
  v29 = (v28 + v27);
  *v29 = sub_20B7F7ED0;
  v29[1] = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v30 = v44;
  sub_20C137C94();
  (*(v3 + 8))(v19, v25);
  v31 = v46;
  v32 = sub_20C137CB4();
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  v32(sub_20B52347C, v33);

  (*(v49 + 8))(v30, v31);
  return (*(v47 + 8))(v18, v48);
}

uint64_t sub_20B7F6D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v7 = result;
  if (result)
  {
    MEMORY[0x28223BE20](result);
    v9[2] = a1;

    v8 = sub_20BEE1244(sub_20B7F7F94, v9, a2);
    sub_20B7F5EE4(v8);
  }

  *a3 = v7 == 0;
  return result;
}

uint64_t sub_20B7F6E64()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 128);
  v11[9] = v3;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 64);
  v11[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 96);
  v11[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 32);
  v11[3] = v7;
  sub_20B520158(v11, &qword_27C762340);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_catalogClient);
  swift_unknownObjectRelease();
  sub_20B7F7E54(v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_swappableItem, type metadata accessor for WorkoutPlanSwappableItem);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_selectedDuration, &qword_27C7627B8);
  v8 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_workoutPlan;
  v9 = sub_20C133954();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t sub_20B7F6FEC()
{
  sub_20B7F6E64();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanAlternativeDurationPickerShelf()
{
  result = qword_27C765E78;
  if (!qword_27C765E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B7F7098()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WorkoutPlanSwappableItem();
    if (v1 <= 0x3F)
    {
      sub_20B7F7218();
      if (v2 <= 0x3F)
      {
        sub_20C133954();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_20B7F7218()
{
  if (!qword_27C765E88)
  {
    sub_20C1341A4();
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_27C765E88);
    }
  }
}

uint64_t sub_20B7F7270@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B7F72E8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row + 32);
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

uint64_t sub_20B7F73B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v6 = v3 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_row;
  sub_20B5D8060(v19);
  v7 = v19[9];
  *(v6 + 128) = v19[8];
  *(v6 + 144) = v7;
  *(v6 + 160) = v20;
  v8 = v19[5];
  *(v6 + 64) = v19[4];
  *(v6 + 80) = v8;
  v9 = v19[7];
  *(v6 + 96) = v19[6];
  *(v6 + 112) = v9;
  v10 = v19[1];
  *v6 = v19[0];
  *(v6 + 16) = v10;
  v11 = v19[3];
  *(v6 + 32) = v19[2];
  *(v6 + 48) = v11;
  *(v3 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf____lazy_storage___numberFormatter) = 0;
  *(v3 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_durations) = MEMORY[0x277D84F90];
  v12 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_selectedDuration;
  v13 = sub_20C1341A4();
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  sub_20B7F7D24(a2, v3 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_swappableItem, type metadata accessor for WorkoutPlanSwappableItem);
  v14 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_workoutPlan;
  v15 = sub_20C133954();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v3 + v14, a3, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B52E424(&v18, v3 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  (*(v16 + 8))(a3, v15);
  sub_20B7F7E54(a2, type metadata accessor for WorkoutPlanSwappableItem);
  *(v3 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_eventHub) = v18;
  return v3;
}

uint64_t sub_20B7F7608(uint64_t a1, unint64_t a2)
{
  v4 = sub_20C132EE4();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x28223BE20](v4);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WorkoutPlanAlternativeDurationFilterUpdated();
  MEMORY[0x28223BE20](v9);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v58 - v13;
  v64 = sub_20C1341A4();
  v15 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B7F7D24(a1, v19, type metadata accessor for ShelfItemAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_20B7F7E54(v19, type metadata accessor for ShelfItemAction);
  if (EnumCaseMultiPayload != 18)
  {
    return result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v22 = v65;
  v23 = *(v65 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_durations);
  if (*(v23 + 16) <= a2)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v24 = v23 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * a2;
  v25 = *(v15 + 16);
  v58 = v6;
  v26 = v63;
  v27 = v15;
  v28 = v64;
  v25(v63, v24, v64);
  v25(v14, v26, v28);
  v59 = v27;
  (*(v27 + 56))(v14, 0, 1, v28);
  v29 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanAlternativeDurationPickerShelf_selectedDuration;
  swift_beginAccess();
  sub_20B7F7D8C(v14, v22 + v29);
  swift_endAccess();
  swift_getObjectType();
  v25(v11, v26, v28);
  sub_20B7F7DFC();
  sub_20C13A764();
  sub_20B7F7E54(v11, type metadata accessor for WorkoutPlanAlternativeDurationFilterUpdated);
  sub_20B7F5590();
  v30 = sub_20C136664();
  (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
  v31 = v58;
  v32 = v58[5];
  v33 = *MEMORY[0x277D51450];
  v34 = sub_20C134F24();
  (*(*(v34 - 8) + 104))(&v8[v32], v33, v34);
  v35 = v31[6];
  v36 = sub_20C132C14();
  (*(*(v36 - 8) + 56))(&v8[v35], 1, 1, v36);
  v37 = sub_20C134184();
  v39 = v38;
  v40 = v31[8];
  v41 = sub_20C135ED4();
  (*(*(v41 - 8) + 56))(&v8[v40], 1, 1, v41);
  v42 = v31[10];
  v43 = *MEMORY[0x277D51770];
  v44 = sub_20C1352E4();
  (*(*(v44 - 8) + 104))(&v8[v42], v43, v44);
  v45 = v31[11];
  v46 = sub_20C136E94();
  (*(*(v46 - 8) + 56))(&v8[v45], 1, 1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = 9;
  v48 = inited + 32;
  v49 = v60;
  sub_20C133804();
  v50 = sub_20C132EA4();
  v52 = v51;
  (*(v61 + 8))(v49, v62);
  v66 = v50;
  v67 = v52;
  sub_20C13DC04();
  v53 = sub_20B6B29D4(inited);
  swift_setDeallocating();
  v54 = v65;
  sub_20B520158(v48, &unk_27C762260);
  v55 = &v8[v31[7]];
  *v55 = v37;
  v55[1] = v39;
  v56 = &v8[v31[9]];
  *v56 = 0;
  *(v56 + 1) = 0;
  *&v8[v31[12]] = v53;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BFA033C(v54, v8, Strong);
    swift_unknownObjectRelease();
  }

  sub_20B7F7E54(v8, type metadata accessor for ShelfMetricAction);
  return (*(v59 + 8))(v63, v64);
}

uint64_t sub_20B7F7D24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B7F7D8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_20B7F7DFC()
{
  result = qword_27C765E90;
  if (!qword_27C765E90)
  {
    type metadata accessor for WorkoutPlanAlternativeDurationFilterUpdated();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765E90);
  }

  return result;
}

uint64_t sub_20B7F7E54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B7F7ED8(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764480) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E1234(a1, a2, v2 + v6, v8, v9);
}

unint64_t sub_20B7F7FB4()
{
  result = qword_27C765EA0;
  if (!qword_27C765EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C765E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765EA0);
  }

  return result;
}

BOOL sub_20B7F8018()
{
  v1 = *(v0 + 16);
  sub_20C134194();
  v2 = *v1;
  v4 = vabdd_f64(v3, *v1);
  sub_20C134194();
  return v4 < vabdd_f64(v5, v2);
}

uint64_t sub_20B7F8078(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B7F80E8@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v127 = a9;
  v121 = a6;
  v122 = a8;
  v124 = a7;
  v116 = a4;
  v117 = a5;
  v129 = type metadata accessor for ButtonAction.ActionType(0);
  v123 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v126 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v118 = (&v100 - v14);
  v131 = type metadata accessor for ButtonAction(0);
  v125 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v111 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v115 = (&v100 - v17);
  v133 = sub_20C137254();
  v134 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v114 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v113 = &v100 - v23;
  MEMORY[0x28223BE20](v24);
  v112 = &v100 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v100 - v27;
  v29 = sub_20C134D54();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v130 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765DA0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v128 = (&v100 - v36);
  v132 = a1;
  sub_20C1371C4();
  LODWORD(v110) = a2;
  v37 = a3[3];
  v109 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v37);
  v38 = sub_20C138D34();
  v119 = v39;
  v120 = v38;

  v40 = *(v116 + 16);
  sub_20B52F9E8(v117, v28, &unk_27C7623D0);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_20B520158(v28, &unk_27C7623D0);
    v41 = 1;
    v42 = v124;
    v43 = v125;
    v44 = v129;
    v45 = v123;
  }

  else
  {
    v116 = v30;
    v117 = v29;
    (*(v30 + 32))(v130, v28, v29);
    v46 = v132;
    v47 = sub_20C1371C4();
    v48 = sub_20C134D14();
    v50 = v49;
    v51 = 1;
    v108 = v34;
    if (v50)
    {
      v52 = v133;
      v53 = v112;
    }

    else
    {
      v52 = v133;
      v53 = v112;
      if (v47 == v48)
      {
        (*(v134 + 16))(v112, v46, v133);
        v51 = 0;
      }
    }

    v54 = v134;
    v55 = *(v134 + 56);
    v55(v53, v51, 1, v52);
    v56 = v113;
    if (v40 < 2)
    {
      (*(v54 + 16))(v113, v132, v52);
      v55(v56, 0, 1, v52);
    }

    else
    {
      sub_20B52F9E8(v53, v113, &unk_27C762A60);
    }

    sub_20B52F9E8(v56, v21, &unk_27C762A60);
    if ((*(v54 + 48))(v21, 1, v52) == 1)
    {
      sub_20B520158(v56, &unk_27C762A60);
      sub_20B520158(v53, &unk_27C762A60);
      (*(v116 + 8))(v130, v117);
      sub_20B520158(v21, &unk_27C762A60);
      v41 = 1;
      v42 = v124;
      v43 = v125;
      v44 = v129;
    }

    else
    {
      (*(v54 + 32))(v114, v21, v52);
      v57 = v109;
      __swift_project_boxed_opaque_existential_1(v109, v109[3]);
      v106 = sub_20C138D34();
      v105 = v58;
      v59 = (v115 + *(v131 + 28));
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F0);
      v61 = v60[12];
      v62 = v60[16];
      v101 = v60[20];
      *v59 = sub_20C134D24();
      v59[1] = v63;
      started = type metadata accessor for StartWorkoutSessionRequest();
      swift_storeEnumTagMultiPayload();
      sub_20C134D44();
      *(v59 + v61) = v64;
      v65 = sub_20C135C54();
      v66 = *(v65 - 8);
      v103 = *(v66 + 56);
      v104 = v66 + 56;
      v103(v59 + v62, 1, 1, v65);
      v102 = *(v134 + 16);
      v67 = v114;
      v102(v59 + v101, v114, v52);
      swift_storeEnumTagMultiPayload();
      v68 = v115;
      *v115 = 0u;
      v68[1] = 0u;
      v69 = v105;
      *(v68 + 4) = v106;
      *(v68 + 5) = v69;
      __swift_project_boxed_opaque_existential_1(v57, v57[3]);
      v106 = sub_20C138D34();
      v105 = v70;
      v71 = v111;
      v72 = &v111[*(v131 + 28)];
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0);
      v74 = *(v73 + 48);
      v75 = *(v73 + 64);
      *v72 = sub_20C134D24();
      v72[1] = v76;
      swift_storeEnumTagMultiPayload();
      v103(v72 + v74, 1, 1, v65);
      v102(v72 + v75, v67, v133);
      v77 = v129;
      swift_storeEnumTagMultiPayload();
      *v71 = 0u;
      *(v71 + 16) = 0u;
      v78 = v105;
      *(v71 + 32) = v106;
      *(v71 + 40) = v78;
      sub_20C134B84();
      __swift_project_boxed_opaque_existential_1(v57, v57[3]);
      v110 = sub_20C138D34();
      v80 = v79;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0);
      v43 = v125;
      v81 = *(v125 + 72);
      v82 = (*(v125 + 80) + 32) & ~*(v125 + 80);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_20C14F320;
      v84 = v83 + v82;
      v85 = v115;
      sub_20B5F15A8(v115, v84);
      sub_20B7F9E14(v71, v84 + v81, type metadata accessor for ButtonAction);
      sub_20B7F9DB4(v85, type metadata accessor for ButtonAction);
      (*(v134 + 8))(v114, v133);
      sub_20B520158(v113, &unk_27C762A60);
      v44 = v77;
      sub_20B520158(v112, &unk_27C762A60);
      (*(v116 + 8))(v130, v117);
      v86 = v128;
      *v128 = v110;
      v86[1] = v80;
      v86[2] = v83;
      swift_storeEnumTagMultiPayload();
      v41 = 0;
      v42 = v124;
    }

    v45 = v123;
    v34 = v108;
  }

  v87 = v128;
  (*(v45 + 56))(v128, v41, 1, v44);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0);
  v89 = *(v88 + 48);
  v90 = *(v88 + 64);
  v91 = v118;
  *v118 = v121;
  *(v91 + 8) = v42;
  type metadata accessor for StartWorkoutSessionRequest();
  swift_storeEnumTagMultiPayload();
  sub_20B52F9E8(v122, v91 + v89, &qword_27C76A410);
  (*(v134 + 16))(v91 + v90, v132, v133);
  swift_storeEnumTagMultiPayload();
  sub_20B7F9D44(v87, v34);
  v92 = *(v45 + 48);
  if (v92(v34, 1, v44) == 1)
  {
    v93 = v91;
    v94 = v126;
    sub_20B7F9E14(v93, v126, type metadata accessor for ButtonAction.ActionType);
    v95 = v92(v34, 1, v44);

    if (v95 != 1)
    {
      sub_20B520158(v34, &qword_27C765DA0);
    }
  }

  else
  {

    sub_20B7F9DB4(v91, type metadata accessor for ButtonAction.ActionType);
    v94 = v126;
    sub_20B7F9E14(v34, v126, type metadata accessor for ButtonAction.ActionType);
  }

  v96 = v127;
  *v127 = 0u;
  v96[1] = 0u;
  v97 = v119;
  *(v96 + 4) = v120;
  *(v96 + 5) = v97;
  v98 = v131;
  sub_20B7F9E14(v94, v96 + *(v131 + 28), type metadata accessor for ButtonAction.ActionType);
  return (*(v43 + 56))(v96, 0, 1, v98);
}

uint64_t sub_20B7F8E24@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, _OWORD *a8@<X8>)
{
  v118 = a7;
  v125 = a5;
  v126 = a6;
  v140 = a4;
  v133 = a8;
  v137 = type metadata accessor for ButtonAction.ActionType(0);
  v131 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v132 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v127 = &v106 - v13;
  v141 = type metadata accessor for ButtonAction(0);
  v138 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v116 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v119 = &v106 - v16;
  MEMORY[0x28223BE20](v17);
  v121 = &v106 - v18;
  MEMORY[0x28223BE20](v19);
  v124 = &v106 - v20;
  v139 = sub_20C137254();
  v142 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v128 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60);
  MEMORY[0x28223BE20](v22 - 8);
  v120 = (&v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v123 = &v106 - v25;
  MEMORY[0x28223BE20](v26);
  v134 = &v106 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v106 - v29;
  v31 = sub_20C134D54();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v122 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765DA0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v135 = (&v106 - v38);
  v136 = a1;
  sub_20C1371C4();
  LODWORD(v117) = a2;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v39 = sub_20C138D34();
  v129 = v40;
  v130 = v39;

  v41 = *(v125 + 16);
  sub_20B52F9E8(v126, v30, &unk_27C7623D0);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_20B520158(v30, &unk_27C7623D0);
    v42 = 1;
    v44 = v136;
    v43 = v137;
    v45 = v139;
    v46 = v127;
  }

  else
  {
    v125 = v32;
    v126 = v31;
    v47 = v122;
    (*(v32 + 32))(v122, v30);
    v44 = v136;
    v48 = sub_20C1371C4();
    v49 = sub_20C134D14();
    v115 = v36;
    v50 = a3;
    if (v51)
    {
      v45 = v139;
      v53 = v134;
    }

    else
    {
      v52 = v48 == v49;
      v45 = v139;
      v53 = v134;
      if (v52)
      {
        (*(v142 + 16))(v134, v44, v139);
        v53 = v134;
      }
    }

    v54 = v142;
    v55 = *(v142 + 56);
    v56 = v53;
    v55();
    if (v41 < 2)
    {
      v57 = v123;
      (*(v54 + 16))(v123, v44, v45);
      (v55)(v57, 0, 1, v45);
    }

    else
    {
      v57 = v123;
      sub_20B52F9E8(v56, v123, &unk_27C762A60);
    }

    v58 = v50;
    v59 = v120;
    sub_20B52F9E8(v57, v120, &unk_27C762A60);
    v60 = (*(v54 + 48))(v59, 1, v45);
    v46 = v127;
    if (v60 == 1)
    {
      sub_20B520158(v57, &unk_27C762A60);
      sub_20B520158(v134, &unk_27C762A60);
      (*(v125 + 8))(v47, v126);
      sub_20B520158(v59, &unk_27C762A60);
      v42 = 1;
      v43 = v137;
    }

    else
    {
      (*(v54 + 32))(v128, v59, v45);
      __swift_project_boxed_opaque_existential_1(v58, v58[3]);
      v120 = sub_20C138D34();
      v110 = v61;
      v62 = v124;
      v63 = v124 + *(v141 + 28);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F0);
      v65 = v64[12];
      v107 = v64[16];
      v106 = v64[20];
      v113 = sub_20C1344C4();
      v66 = *(v113 - 8);
      v112 = *(v66 + 16);
      v114 = v66 + 16;
      v112(v63, v140, v113);
      started = type metadata accessor for StartWorkoutSessionRequest();
      swift_storeEnumTagMultiPayload();
      sub_20C134D44();
      *(v63 + v65) = v67;
      v68 = v45;
      v69 = sub_20C135C54();
      v70 = *(v69 - 8);
      v108 = *(v70 + 56);
      v109 = v70 + 56;
      v108(v107 + v63, 1, 1, v69);
      v107 = *(v54 + 16);
      v107(v63 + v106, v128, v68);
      swift_storeEnumTagMultiPayload();
      *v62 = 0u;
      *(v62 + 16) = 0u;
      v71 = v110;
      *(v62 + 32) = v120;
      *(v62 + 40) = v71;
      v72 = v58[3];
      v120 = v58;
      __swift_project_boxed_opaque_existential_1(v58, v72);
      v110 = sub_20C138D34();
      v106 = v73;
      v74 = v121;
      v75 = v121 + *(v141 + 28);
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0);
      v77 = *(v76 + 48);
      v78 = *(v76 + 64);
      v112(v75, v140, v113);
      swift_storeEnumTagMultiPayload();
      v108((v75 + v77), 1, 1, v69);
      v107(v75 + v78, v128, v139);
      swift_storeEnumTagMultiPayload();
      *v74 = 0u;
      *(v74 + 16) = 0u;
      v79 = v106;
      *(v74 + 32) = v110;
      *(v74 + 40) = v79;
      v117 = sub_20C134B84();
      v80 = v119;
      swift_storeEnumTagMultiPayload();
      v80[1] = 0u;
      v80[2] = 0u;
      *v80 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0);
      v81 = *(v138 + 72);
      v82 = (*(v138 + 80) + 32) & ~*(v138 + 80);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_20C14F320;
      sub_20B5F15A8(v124, v83 + v82);
      sub_20B5F15A8(v74, v83 + v82 + v81);
      v84 = sub_20C138104();
      if (v84 == sub_20C138104())
      {
        v85 = v116;
        sub_20B5F15A8(v80, v116);
        v87 = *(v83 + 16);
        v86 = *(v83 + 24);
        if (v87 >= v86 >> 1)
        {
          v83 = sub_20BC05920(v86 > 1, v87 + 1, 1, v83);
        }

        v88 = v120;
        *(v83 + 16) = v87 + 1;
        sub_20B7F9E14(v85, v83 + v82 + v87 * v81, type metadata accessor for ButtonAction);
        v80 = v119;
      }

      else
      {
        v88 = v120;
      }

      __swift_project_boxed_opaque_existential_1(v88, v88[3]);
      v89 = sub_20C138D34();
      v91 = v90;

      sub_20B7F9DB4(v80, type metadata accessor for ButtonAction);
      sub_20B7F9DB4(v121, type metadata accessor for ButtonAction);
      sub_20B7F9DB4(v124, type metadata accessor for ButtonAction);
      v45 = v139;
      (*(v142 + 8))(v128, v139);
      sub_20B520158(v123, &unk_27C762A60);
      sub_20B520158(v134, &unk_27C762A60);
      (*(v125 + 8))(v122, v126);
      v92 = v135;
      *v135 = v89;
      v92[1] = v91;
      v92[2] = v83;
      v43 = v137;
      swift_storeEnumTagMultiPayload();
      v42 = 0;
      v44 = v136;
    }

    v36 = v115;
  }

  v93 = v131;
  v94 = v135;
  (*(v131 + 56))(v135, v42, 1, v43);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0);
  v96 = *(v95 + 48);
  v97 = *(v95 + 64);
  v98 = sub_20C1344C4();
  (*(*(v98 - 8) + 16))(v46, v140, v98);
  type metadata accessor for StartWorkoutSessionRequest();
  swift_storeEnumTagMultiPayload();
  v99 = sub_20C135C54();
  (*(*(v99 - 8) + 56))(v46 + v96, 1, 1, v99);
  (*(v142 + 16))(v46 + v97, v44, v45);
  swift_storeEnumTagMultiPayload();
  sub_20B7F9D44(v94, v36);
  v100 = *(v93 + 48);
  if (v100(v36, 1, v43) == 1)
  {
    v101 = v132;
    sub_20B7F9E14(v46, v132, type metadata accessor for ButtonAction.ActionType);
    if (v100(v36, 1, v43) != 1)
    {
      sub_20B520158(v36, &qword_27C765DA0);
    }
  }

  else
  {
    sub_20B7F9DB4(v46, type metadata accessor for ButtonAction.ActionType);
    v101 = v132;
    sub_20B7F9E14(v36, v132, type metadata accessor for ButtonAction.ActionType);
  }

  v102 = v133;
  *v133 = 0u;
  v102[1] = 0u;
  v103 = v129;
  *(v102 + 4) = v130;
  *(v102 + 5) = v103;
  v104 = v141;
  sub_20B7F9E14(v101, v102 + *(v141 + 28), type metadata accessor for ButtonAction.ActionType);
  return (*(v138 + 56))(v102, 0, 1, v104);
}

uint64_t sub_20B7F9D44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765DA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B7F9DB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B7F9E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_20B7F9E7C()
{
  if (*(v0 + 32))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = *(Strong + OBJC_IVAR____TtC9SeymourUI20ProductPlacementView_textLabel);

      v3 = sub_20C13C914();

      [v2 setText_];
      swift_unknownObjectRelease();
    }

    v4 = *(v0 + 56);
    if (v4)
    {

      v4(v5);

      sub_20B583ECC(v4);
    }
  }
}

uint64_t sub_20B7F9F58(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  swift_unknownObjectWeakAssign();
  if (!v2[4])
  {
    goto LABEL_8;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC9SeymourUI20ProductPlacementView_textLabel);

    v5 = sub_20C13C914();

    [v4 setText_];
    swift_unknownObjectRelease();
  }

  v6 = v2[7];
  if (v6)
  {

    v6(v7);
    swift_unknownObjectRelease();

    return sub_20B583ECC(v6);
  }

  else
  {
LABEL_8:

    return swift_unknownObjectRelease();
  }
}

void *sub_20B7FA064()
{
  v0[6] = 0;
  v0[3] = 0;
  v0[4] = 0;
  swift_unknownObjectWeakInit();
  v0[7] = 0;
  v0[8] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v0[2] = sub_20C13A914();
  swift_getObjectType();
  sub_20C1384E4();
  swift_allocObject();
  swift_weakInit();
  sub_20B7FA704();
  sub_20C13A774();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v2);
  return v0;
}

uint64_t sub_20B7FA1C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_20B7FA1E0, 0, 0);
}

uint64_t sub_20B7FA1E0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v0[8] = sub_20C1384C4();
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_20B7FA2D8;

    return sub_20BB413F8();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B7FA2D8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v4[10] = a1;
  v4[11] = a2;

  if (v2)
  {
    v6 = v4[8];

    v7 = v5[1];

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20B7FA42C, 0, 0);
  }
}

uint64_t sub_20B7FA42C()
{
  v1 = v0[11];
  v2 = v0[7];
  if (v1)
  {
    *(v2 + 24) = v0[10];
    *(v2 + 32) = v1;

    sub_20C13CDA4();
    v0[12] = sub_20C13CD94();
    v4 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B7FA520, v4, v3);
  }

  else
  {
    v5 = v0[8];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_20B7FA520()
{

  sub_20B7F9E7C();

  return MEMORY[0x2822009F8](sub_20B7FA590, 0, 0);
}

uint64_t sub_20B7FA590()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20B7FA5F8()
{

  sub_20B583E6C(v0 + 40);
  sub_20B583ECC(*(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_20B7FA66C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52A9D4;

  return sub_20B7FA1C0(a1, v1);
}

unint64_t sub_20B7FA704()
{
  result = qword_27C764E88;
  if (!qword_27C764E88)
  {
    sub_20C1384E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764E88);
  }

  return result;
}

void sub_20B7FA760()
{
  sub_20B595A38();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_20B7FA85C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27C79A480;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &unk_27C7629C0);
}

uint64_t sub_20B7FA8C4(uint64_t a1)
{
  v3 = qword_27C79A480;
  swift_beginAccess();
  sub_20B59784C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20B7FAA08(void *a1)
{
  v1 = a1;
  sub_20B7FAA78();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v2 = sub_20C13CC54();

  return v2;
}

uint64_t sub_20B7FAA78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20C14F580;
  v1 = type metadata accessor for TVFilterResultsViewController();
  WitnessTable = swift_getWitnessTable();
  v3 = sub_20B86C37C(v1, WitnessTable);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  *(v0 + 32) = v4;
  return v0;
}

id sub_20B7FABA4()
{
  v1 = v0;
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4 = type metadata accessor for TVFilterResultsViewController();
  v20.receiver = v0;
  v20.super_class = v4;
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = result;
  [result setBackgroundColor_];

  result = [v1 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  [result setOpaque_];

  sub_20BD02C38(0, v4, &off_2822A9768, &off_2822A9700);
  sub_20BD03170(v4, &off_2822A9768, &off_2822A9700);
  [v1 setRestoresFocusAfterTransition_];
  WitnessTable = swift_getWitnessTable();
  v9 = sub_20B86C37C(v4, WitnessTable);
  v10 = *&v9[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  [v10 setClipsToBounds_];
  v11 = sub_20B86C37C(v4, WitnessTable);
  v12 = *&v11[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  [v12 setContentInset_];
  v13 = sub_20B86C37C(v4, WitnessTable);
  v14 = *&v13[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  [v14 setContentInsetAdjustmentBehavior_];
  v15 = sub_20B86C37C(v4, WitnessTable);
  v16 = *&v15[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  [v16 setOpaque_];
  v17 = sub_20B86C37C(v4, WitnessTable);
  v18 = *&v17[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  [v18 setBackgroundColor_];
  result = [v1 view];
  if (result)
  {
    v19 = result;
    [result addGestureRecognizer_];

    return (*(*(v3 + 8) + 24))(v2);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_20B7FAEF8(void *a1)
{
  v1 = a1;
  sub_20B7FABA4();
}

void sub_20B7FAF40(void *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TVFilterResultsViewController();
  objc_msgSendSuper2(&v6, sel_didMoveToParentViewController_, a1);
  if (a1)
  {
    v3 = a1;
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      [v4 setClipsToBounds_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20B7FB004(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_20B7FAF40(a3);
}

unint64_t sub_20B7FB070()
{
  v1 = v0;
  v2 = *MEMORY[0x277D85000] & *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = sub_20C133244();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_27C79A480;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v13, v8, &unk_27C7629C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_20B520158(v8, &unk_27C7629C0);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
LABEL_3:
    v16 = (*(v14 + 72))(v15, v14);
    MEMORY[0x20F2EA980](0, v16);
    (*(v10 + 56))(v5, 0, 1, v9);
    sub_20B7FA8C4(v5);
    return [v1 setNeedsFocusUpdate];
  }

  v29 = v5;
  (*(v10 + 32))(v12, v8, v9);
  v31 = v1;
  v15 = *(v2 + 80);
  v14 = *(v2 + 88);
  v18 = type metadata accessor for TVFilterResultsViewController();
  WitnessTable = swift_getWitnessTable();
  v19 = sub_20B86C37C(v18, WitnessTable);
  v20 = *&v19[OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves];

  result = sub_20C133234();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result >= *(v20 + 16))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v21 = *(v20 + 16 * result + 32);
  swift_unknownObjectRetain();

  v22 = (*(v14 + 96))(v15, v14);

  swift_unknownObjectRelease();
  if (v21 == v22)
  {
    v31 = v1;
    v23 = sub_20B86C37C(v18, WitnessTable);
    v24 = *(v23 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);

    LOBYTE(v23) = sub_20BDF2654();
    if ((v23 & 1) == 0)
    {
      (*(v10 + 8))(v12, v9);
      v5 = v29;
      goto LABEL_3;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    sub_20BCBA3A4();
  }

  v27 = [v1 splitViewController];
  if (v27)
  {
    v28 = v27;
    [v27 setNeedsFocusUpdate];
  }

  return (*(v10 + 8))(v12, v9);
}

void sub_20B7FB4B0(void *a1)
{
  v1 = a1;
  sub_20B7FB070();
}

void sub_20B7FB4F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_20B7FC588();
}

id sub_20B7FB568()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVFilterResultsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B7FB5D8(uint64_t a1)
{
  swift_unknownObjectRelease();

  sub_20B520158(a1 + qword_27C79A480, &unk_27C7629C0);

  __swift_destroy_boxed_opaque_existential_1(a1 + qword_27C79A498);
  __swift_destroy_boxed_opaque_existential_1(a1 + qword_27C79A4A0);

  __swift_destroy_boxed_opaque_existential_1(a1 + qword_27C79A4B0);
  swift_unknownObjectRelease();
  sub_20B583E6C(a1 + qword_27C79A4C0);

  JUMPOUT(0x20F2F6B80);
}

uint64_t sub_20B7FB6DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_20B7FB738(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void))
{
  v4 = type metadata accessor for TVFilterResultsViewController();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_20B86C37C(v4, WitnessTable);
  sub_20B51CC64(v6 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker, v11);

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v9 = a2(a1, v7, *(v8 + 8));
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

unint64_t sub_20B7FB8B0(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v56 - v9;
  v11 = sub_20C133244();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v64 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  v65 = *(a1 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v15 = *(v1 + qword_27C765EB0);
  v16 = *((v4 & v3) + 0x58);
  v17 = *((v4 & v3) + 0x50);
  v61 = *(v16 + 96);
  v62 = v15;
  v18 = v61(v17, v16, v13);
  v20 = *(v18 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 16);
  v19 = *(v18 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 32);
  v89 = *(v18 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row);
  v90 = v20;
  v91 = v19;
  v21 = *(v18 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 96);
  v23 = *(v18 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 48);
  v22 = *(v18 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 64);
  v94 = *(v18 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 80);
  v95 = v21;
  v92 = v23;
  v93 = v22;
  v25 = *(v18 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 128);
  v24 = *(v18 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 144);
  v26 = *(v18 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 112);
  v99 = *(v18 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 160);
  v97 = v25;
  v98 = v24;
  v96 = v26;
  sub_20B52F9E8(&v89, v100, &qword_27C762340);

  v86 = v93;
  v87 = v94;
  v82 = v89;
  v83 = v90;
  v84 = v91;
  v85 = v92;
  v79 = v97;
  v80 = v98;
  v78 = v96;
  v100[0] = v89;
  v100[1] = v90;
  v100[4] = v93;
  v100[5] = v94;
  v100[2] = v91;
  v100[3] = v92;
  v88 = v95;
  v81 = v99;
  v101 = v99;
  v27 = *(&v95 + 1);
  v100[8] = v97;
  v100[9] = v98;
  v100[7] = v96;
  v100[6] = v95;
  if (sub_20B5EAF8C(v100) == 1)
  {
    v70 = v86;
    v71 = v87;
    v66 = v82;
    v67 = v83;
    v68 = v84;
    v69 = v85;
    v72 = v88;
    v73 = v27;
    v77 = v81;
    v75 = v79;
    v76 = v80;
    v74 = v78;
    sub_20B520158(&v66, &qword_27C762340);
    return [v65 contentInset];
  }

  v70 = v86;
  v71 = v87;
  v66 = v82;
  v67 = v83;
  v68 = v84;
  v69 = v85;
  v72 = v88;
  v73 = v27;
  v77 = v81;
  v75 = v79;
  v76 = v80;
  v74 = v78;

  sub_20B520158(&v66, &qword_27C762340);
  v28 = *(v27 + 16);

  if (!v28)
  {
    return [v65 contentInset];
  }

  sub_20B51C88C(0, &qword_27C765FD8);
  v29 = sub_20C13D1A4();
  if (!v29)
  {
    goto LABEL_18;
  }

  v30 = v29;
  v31 = [v29 focusedItem];
  if (!v31)
  {

LABEL_18:
    (*(v12 + 56))(v10, 1, 1, v11);
    return sub_20B520158(v10, &unk_27C7629C0);
  }

  v32 = v31;
  v60 = v12;
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (!v33)
  {

    swift_unknownObjectRelease();
    v12 = v60;
    goto LABEL_18;
  }

  v34 = v33;
  v58 = v17;
  v59 = v11;
  if (![v33 isDescendantOfView_])
  {
    goto LABEL_25;
  }

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  v57 = v30;
  if (v35)
  {
    swift_unknownObjectRetain();
  }

  sub_20B51C88C(0, &qword_27C762910);
  v56 = v32;
  swift_unknownObjectRetain();
  while (1)
  {
    v37 = v34;
    v38 = v65;
    v39 = sub_20C13D5F4();

    if (v39)
    {
      break;
    }

    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (v40)
    {
      v41 = v40;
      v42 = v37;

      v35 = v41;
    }

    v34 = [v37 superview];

    if (!v34)
    {
      goto LABEL_21;
    }
  }

LABEL_21:
  v30 = v57;
  if (v35)
  {
    objc_opt_self();
    v43 = swift_dynamicCastObjCClass();
    if (v43)
    {
      v44 = [v38 indexPathForCell_];
      if (v44)
      {
        v45 = v44;
        sub_20C1331E4();

        v46 = 0;
        v35 = v45;
        v30 = v57;
      }

      else
      {
        v46 = 1;
      }

      v47 = v59;
      v48 = v60;

      (*(v48 + 56))(v7, v46, 1, v47);
      sub_20B7FC3DC(v7, v10);
    }

    else
    {
      ObjectType = swift_getObjectType();
      v50 = swift_conformsToProtocol2();
      if (v50)
      {
        (*(v50 + 8))(ObjectType, v50);

        swift_unknownObjectRelease();
        v47 = v59;
        v48 = v60;
        goto LABEL_31;
      }

      v47 = v59;
      v48 = v60;
      (*(v60 + 56))(v10, 1, 1, v59);
    }
  }

  else
  {
LABEL_25:
    v47 = v59;
    v48 = v60;
    (*(v60 + 56))(v10, 1, 1, v59);
  }

  swift_unknownObjectRelease();
LABEL_31:
  v51 = (*(v48 + 48))(v10, 1, v47);
  v52 = v64;
  if (v51 == 1)
  {
    return sub_20B520158(v10, &unk_27C7629C0);
  }

  (*(v48 + 32))(v64, v10, v47);
  v53 = *(v63 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  result = sub_20C133234();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (result >= *(v53 + 16))
  {
LABEL_40:
    __break(1u);
    return result;
  }

  v54 = *(v53 + 16 * result + 32);
  swift_unknownObjectRetain();
  v55 = (v61)(v58, v16);

  swift_unknownObjectRelease();
  if (v54 != v55 || !sub_20BDF2654())
  {
    return (*(v48 + 8))(v52, v47);
  }

  [v65 contentInset];
  return (*(v48 + 8))(v52, v47);
}

uint64_t sub_20B7FC0E0()
{
  sub_20B7FC24C();

  return swift_unknownObjectRetain();
}

uint64_t sub_20B7FC138@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_20B7FC24C();

  return swift_unknownObjectRetain();
}

uint64_t sub_20B7FC17C()
{
  sub_20B7FC26C();

  return swift_unknownObjectRetain();
}

uint64_t sub_20B7FC1D0(uint64_t a1, uint64_t a2)
{
  sub_20B7FC45C(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_20B7FC20C()
{
  sub_20B7FC44C();
}

void sub_20B7FC27C(uint64_t a1)
{
  v3 = [v1 splitViewController];
  if (v3)
  {
    v6 = v3;
    v4 = *&v1[qword_27C79A498 + 24];
    v5 = *&v1[qword_27C79A498 + 32];
    __swift_project_boxed_opaque_existential_1(&v1[qword_27C79A498], v4);
    (*(v5 + 16))(v6, a1, 0, v4, v5);
  }
}

uint64_t sub_20B7FC338(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_20B52F9E8(a1, &v6 - v3, &unk_27C7629C0);
  return sub_20B7FA8C4(v4);
}

uint64_t sub_20B7FC3DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20B7FC478()
{
  v1 = (v0 + qword_27C765EB8);
  *v1 = xmmword_20C15B0B0;
  v1[1] = xmmword_20C150E50;
  *(v0 + qword_27C765EC0) = 2;
  v2 = qword_27C79A480;
  v3 = sub_20C133244();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + qword_27C79A4B8) = 0;
  *(v0 + qword_27C79A4C0 + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_20C13DE24();
  __break(1u);
}

unint64_t sub_20B7FC5B8(uint64_t a1, void *a2)
{
  result = sub_20B7FB8B0(a1);
  *a2 = v4;
  a2[1] = v5;
  return result;
}

char *sub_20B7FC66C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, void *a10)
{
  v37[0] = a7;
  v37[1] = a8;
  v38 = a9;
  v39 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v37 - v17;
  v42[3] = a5;
  v42[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v20 = &a4[qword_27C765EB8];
  *v20 = xmmword_20C15B0B0;
  v20[1] = xmmword_20C150E50;
  a4[qword_27C765EC0] = 2;
  v21 = qword_27C79A480;
  v22 = sub_20C133244();
  (*(*(v22 - 8) + 56))(&a4[v21], 1, 1, v22);
  *&a4[qword_27C79A4B8] = 0;
  *&a4[qword_27C79A4C0 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a4[qword_27C79A488] = a1;

  sub_20C133AA4();
  a4[qword_27C79A490] = v41[0];
  sub_20B51CC64(v42, &a4[qword_27C79A498]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v41, &a4[qword_27C79A4A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(v41, &a4[qword_27C79A4B0]);
  *&a4[qword_27C765EB0] = a2;
  v23 = objc_allocWithZone(MEMORY[0x277D75B80]);

  v24 = [v23 initWithTarget:0 action:0];
  *&a4[qword_27C765EC8] = v24;
  *&v41[0] = MEMORY[0x277D84F90];
  v25 = v24;
  sub_20C13DD64();
  sub_20C13D014();
  sub_20C13DD34();
  sub_20C13DD74();
  sub_20C13DD84();
  sub_20C13DD44();
  sub_20B51C88C(0, &qword_27C765490);
  v26 = sub_20C13CC54();

  [v25 setAllowedPressTypes_];

  type metadata accessor for CatalogPageSortOptionsDataProvider();
  v27 = swift_allocObject();

  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v27 + 4, v27[7]);
  v28 = sub_20C138D34();
  v30 = v29;

  v27[2] = v28;
  v27[3] = v30;
  *&a4[qword_27C79A4A8] = v27;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v37[0]);
  v40.receiver = a4;
  v40.super_class = v31;
  v32 = objc_msgSendSuper2(&v40, sel_initWithNibName_bundle_, 0, 0);
  v33 = *v38;
  swift_beginAccess();
  sub_20B52F9E8(a2 + v33, v18, &unk_27C7629C0);
  v34 = qword_27C79A480;
  swift_beginAccess();
  v35 = v32;
  sub_20B59784C(v18, v32 + v34);
  swift_endAccess();
  *(*&v35[qword_27C765EB0] + *v39 + 8) = &off_2822A9920;
  swift_unknownObjectWeakAssign();
  [*&v35[qword_27C765EC8] addTarget:v35 action:sel_menuTapped];

  __swift_destroy_boxed_opaque_existential_1(v42);
  return v35;
}

uint64_t getEnumTagSinglePayload for SessionEventPresentationCoordinator.QueueType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionEventPresentationCoordinator.QueueType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for MetricImpressionElement()
{
  result = qword_27C765FF0;
  if (!qword_27C765FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B7FCD24()
{
  sub_20C1352E4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      sub_20B7FCDE0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20B7FCDE0()
{
  if (!qword_27C7683C0)
  {
    v0 = sub_20C13C774();
    if (!v1)
    {
      atomic_store(v0, &qword_27C7683C0);
    }
  }
}

id WorkoutPlanAlternativesViewController.preferredContentSize.getter()
{
  ObjectType = swift_getObjectType();
  v2 = sub_20C138104();
  result = sub_20C138104();
  if (v2 != result)
  {
    v4.receiver = v0;
    v4.super_class = ObjectType;
    return objc_msgSendSuper2(&v4, sel_preferredContentSize);
  }

  return result;
}

id WorkoutPlanAlternativesViewController.preferredContentSize.setter(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v6, sel_setPreferredContentSize_, a1, a2);
}

void (*WorkoutPlanAlternativesViewController.preferredContentSize.modify(uint64_t *a1))(double **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  ObjectType = swift_getObjectType();
  v5[4].super_class = ObjectType;
  v7 = sub_20C138104();
  if (v7 == sub_20C138104())
  {
    v8 = 0x407B800000000000;
    v9 = 0x4079000000000000;
  }

  else
  {
    v5[1].receiver = v2;
    v5[1].super_class = ObjectType;
    objc_msgSendSuper2(v5 + 1, sel_preferredContentSize);
  }

  v5->receiver = v9;
  v5->super_class = v8;
  return sub_20B7C3AA4;
}

uint64_t WorkoutPlanAlternativesViewController.resignActiveObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

char *WorkoutPlanAlternativesViewController.__allocating_init(dependencies:pageContext:pageNavigator:swappableItem:workoutPlan:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a4 + 24);
  v14 = *(a4 + 32);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v13);
  v16 = sub_20B7FE4D4(a1, a2, a3, v15, a5, a6, v6, v13, v14);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v16;
}

char *WorkoutPlanAlternativesViewController.init(dependencies:pageContext:pageNavigator:swappableItem:workoutPlan:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a4 + 24);
  v14 = *(a4 + 32);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v13);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = sub_20B7FE178(a1, a2, a3, v18, a5, a6, v6, v13, v14);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v20;
}

Swift::Void __swiftcall WorkoutPlanAlternativesViewController.viewDidLoad()()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  sub_20B794538(0);
  sub_20B7FD60C();
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_dataProvider];
  [*(*(v1 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setAlwaysBounceVertical_];
  v2 = *(*(v1 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor_];

  v6 = *(*(v1 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = (v6 + 40);
    do
    {
      v9 = *v8;
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 48);
      swift_unknownObjectRetain();
      v11(ObjectType, v9);
      swift_unknownObjectRelease();
      v8 += 2;
      --v7;
    }

    while (v7);
  }

  sub_20B631D04();
}

void sub_20B7FD60C()
{
  v1 = sub_20C138104();
  if (v1 == sub_20C138104())
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v0 action:sel_onCloseButtonTapped_];
    v3 = [v0 navigationItem];
    [v3 setLeftBarButtonItem_];
  }

  v4 = [v0 navigationItem];
  [v4 setLargeTitleDisplayMode_];
}

Swift::Void __swiftcall WorkoutPlanAlternativesViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel_viewWillDisappear_, a1, v6);
  v10 = v1;
  sub_20C132E84();
  sub_20B7FE61C(&qword_27C766020);
  sub_20C139274();
  (*(v5 + 8))(v8, v4);
}

uint64_t sub_20B7FDA14(char a1, SEL *a2, uint64_t (*a3)(objc_class *, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v11.receiver = v3;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, *a2, a1 & 1);
  v8 = sub_20B7FE61C(&qword_27C766020);
  v9 = sub_20B7FE61C(&qword_27C766028);
  return a3(ObjectType, v8, v9);
}

void sub_20B7FDAEC(void *a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(objc_class *, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v10 = *a4;
  v11 = a1;
  objc_msgSendSuper2(&v14, v10, a3);
  v12 = sub_20B7FE61C(&qword_27C766020);
  v13 = sub_20B7FE61C(&qword_27C766028);
  a5(ObjectType, v12, v13);
}

Swift::Void __swiftcall WorkoutPlanAlternativesViewController.viewDidLayoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLayoutSubviews);
  v1 = *(*&v0[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_dataProvider] + 48);
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v3 = v1;
  [v2 bounds];
  sub_20B9D8614(v4, v5, v6, v7);
}

id WorkoutPlanAlternativesViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id WorkoutPlanAlternativesViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B7FDEE8@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(*(*v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_dataProvider) + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker);
  v4 = v3[3];
  v5 = v3[4];
  v6 = __swift_project_boxed_opaque_existential_1(v3, v4);
  a1[3] = v4;
  a1[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(*(v4 - 8) + 16);

  return v8(boxed_opaque_existential_1, v6, v4);
}

uint64_t sub_20B7FE00C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20B7FE0F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v5 = sub_20B7FE61C(&qword_27C766020);

  return a3(ObjectType, v5, a2);
}

char *sub_20B7FE178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9)
{
  v29 = a5;
  v30 = a2;
  v31 = a3;
  ObjectType = swift_getObjectType();
  v14 = sub_20C133954();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for WorkoutPlanSwappableItem();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[3] = a8;
  v35[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a4, a8);
  *&a7[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_resignActiveObserver] = 0;
  a7[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_visibility] = 1;
  *&a7[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_eventHub] = v34;
  sub_20B51CC64(v35, &a7[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_pageNavigator]);
  sub_20C133AA4();
  a7[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_platform] = v34;
  v22 = v29;
  sub_20B633138(v29, v20);
  (*(v15 + 16))(v17, a6, v14);
  type metadata accessor for WorkoutPlanAlternativesPageDataProvider();
  swift_allocObject();

  v24 = sub_20B63252C(v23, v30, v31, v20, v17);

  *&a7[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_dataProvider] = v24;
  v33.receiver = a7;
  v33.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v33, sel_initWithNibName_bundle_, 0, 0);
  *(*&v25[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_dataProvider] + 24) = &off_2822A9B68;
  swift_unknownObjectWeakAssign();
  v26 = v25;

  sub_20B6304D4();

  v27 = sub_20C13C914();

  [v26 setTitle_];

  (*(v15 + 8))(a6, v14);
  sub_20B63319C(v22);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return v26;
}

char *sub_20B7FE4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a6;
  v15 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(v18);
  (*(v15 + 16))(v17, a4, a8);
  return sub_20B7FE178(a1, a2, a3, v17, a5, v22, v19, a8, a9);
}

uint64_t sub_20B7FE61C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutPlanAlternativesViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TVWorkoutPlanAlternativesViewController.resignActiveObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

char *TVWorkoutPlanAlternativesViewController.__allocating_init(dependencies:pageContext:pageNavigator:workoutPlan:swappableItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a4 + 24);
  v14 = *(a4 + 32);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v13);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = sub_20B7FFEA8(a1, a2, a3, v18, a5, a6, v6, v13, v14);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v20;
}

Swift::Void __swiftcall TVWorkoutPlanAlternativesViewController.viewDidLoad()()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  sub_20B794D18(0);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_dataProvider];
  v2 = OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_page;
  v3 = *(*(v1 + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v4 = *(v3 + 16);
  if (v4)
  {
    v9 = OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_page;

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

    v2 = v9;
  }

  [v0 setRestoresFocusAfterTransition_];
  [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInset_];
  [*(*(v1 + v2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInsetAdjustmentBehavior_];
  sub_20BAE2248();
}

Swift::Void __swiftcall TVWorkoutPlanAlternativesViewController.viewDidLayoutSubviews()()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 layoutIfNeeded];

    v3 = *(*&v0[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_page);
    __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
    v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
    v5 = v3;
    [v4 bounds];
    sub_20B9D8614(v6, v7, v8, v9);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall TVWorkoutPlanAlternativesViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidAppear_, a1);
  type metadata accessor for TVWorkoutPlanAlternativesPageDataProvider();
  sub_20B8001B8(&qword_27C766058, type metadata accessor for TVWorkoutPlanAlternativesPageDataProvider);
  sub_20C138C54();
  sub_20B8001B8(&qword_27C766060, type metadata accessor for TVWorkoutPlanAlternativesViewController);
  sub_20B8001B8(&unk_27C766068, type metadata accessor for TVWorkoutPlanAlternativesViewController);
  sub_20C139364();
}

Swift::Void __swiftcall TVWorkoutPlanAlternativesViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_20C132E94();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v2;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_viewWillDisappear_, a1, v7);
  v16 = v2;
  sub_20C132E84();
  sub_20B8001B8(&qword_27C766060, type metadata accessor for TVWorkoutPlanAlternativesViewController);
  sub_20C139274();
  (*(v6 + 8))(v9, v5);
  v10 = [v2 navigationController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 viewControllers];
    sub_20B62BB28();
    v13 = sub_20C13CC74();

    v16 = v2;
    MEMORY[0x28223BE20](v14);
    *(&v15 - 2) = &v16;
    LOBYTE(v12) = sub_20B79AEEC(sub_20B5978BC, (&v15 - 4), v13);

    if ((v12 & 1) == 0)
    {
      v16 = v2;
      sub_20B8001B8(&qword_27C766078, type metadata accessor for TVWorkoutPlanAlternativesViewController);
      sub_20C138C64();
    }
  }
}

Swift::Void __swiftcall TVWorkoutPlanAlternativesViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidDisappear_, a1);
  sub_20B8001B8(&qword_27C766060, type metadata accessor for TVWorkoutPlanAlternativesViewController);
  sub_20B8001B8(&unk_27C766068, type metadata accessor for TVWorkoutPlanAlternativesViewController);
  sub_20C139374();
}

id TVWorkoutPlanAlternativesViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id TVWorkoutPlanAlternativesViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20B7FF548()
{
  v1 = v0;
  v2 = sub_20C133244();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  [result bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v28.origin.x = v10;
  v28.origin.y = v12;
  v28.size.width = v14;
  v28.size.height = v16;
  CGRectGetHeight(v28);
  result = [v1 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v17 = result;
  [result safeAreaInsets];

  result = [v1 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v18 = result;
  [result safeAreaInsets];

  MEMORY[0x20F2EA980](0, 0);
  v19 = *&v1[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_dataProvider];
  v20 = OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_page;
  v21 = *(*(v19 + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v22 = sub_20C1331B4();
  v23 = [v21 cellForItemAtIndexPath_];

  if (v23)
  {

    v24 = *(*(v19 + v20) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v25 = sub_20C1331B4();
    v26 = [v24 layoutAttributesForItemAtIndexPath_];

    if (v26)
    {
      [v26 bounds];
      CGRectGetHeight(v29);
    }
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_20B7FF828@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_lastFocusedIndexPath;
  swift_beginAccess();
  return sub_20B800360(v1 + v3, a1);
}

uint64_t sub_20B7FF880(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_lastFocusedIndexPath;
  swift_beginAccess();
  sub_20B59784C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B7FF95C@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(*(*v1 + OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker);
  v4 = v3[3];
  v5 = v3[4];
  v6 = __swift_project_boxed_opaque_existential_1(v3, v4);
  a1[3] = v4;
  a1[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(*(v4 - 8) + 16);

  return v8(boxed_opaque_existential_1, v6, v4);
}

uint64_t sub_20B7FFA14@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_dataProvider);
  v4 = OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20B7FFAE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20B7FFBD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v5 = sub_20B8001B8(&qword_27C766060, type metadata accessor for TVWorkoutPlanAlternativesViewController);

  return a3(ObjectType, v5, a2);
}

char *sub_20B7FFC68(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v21[3] = a5;
  v21[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  a4[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_visibility] = 1;
  v14 = OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_lastFocusedIndexPath;
  v15 = sub_20C133244();
  (*(*(v15 - 8) + 56))(&a4[v14], 1, 1, v15);
  *&a4[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_settlingTimer] = 0;
  *&a4[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_resignActiveObserver] = 0;
  *&a4[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_dataProvider] = a2;
  sub_20B51CC64(v21, &a4[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_pageNavigator]);
  *&a4[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_eventHub] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(&v20, &a4[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_timerProvider]);
  v19.receiver = a4;
  v19.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v21);
  v17 = OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_dataProvider;
  *(*&v16[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_dataProvider] + 24) = &off_2822A9CA0;
  swift_unknownObjectWeakAssign();
  *(*(*&v16[v17] + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate + 8) = &off_2822A9CE0;
  swift_unknownObjectWeakAssign();
  return v16;
}

char *sub_20B7FFEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, objc_class *a7, uint64_t a8, uint64_t a9)
{
  v38 = a3;
  v39 = a7;
  v34 = a5;
  v35 = a6;
  v36 = a1;
  v37 = a2;
  v40 = a9;
  v12 = type metadata accessor for WorkoutPlanSwappableItem();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C133954();
  v33 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a8 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v33 - v25;
  (*(v19 + 32))(&v33 - v25, a4, a8, v24);
  (*(v16 + 16))(v18, a5, v15);
  v27 = v35;
  sub_20B633138(v35, v14);
  type metadata accessor for TVWorkoutPlanAlternativesPageDataProvider();
  swift_allocObject();
  v28 = v36;
  v29 = sub_20BAE463C(v36, v37, v38, v18, v14);
  v30 = objc_allocWithZone(v39);
  (*(v19 + 16))(v22, v26, a8);
  v31 = sub_20B7FFC68(v28, v29, v22, v30, a8, v40);

  sub_20B63319C(v27);
  (*(v16 + 8))(v34, v33);
  (*(v19 + 8))(v26, a8);
  return v31;
}

uint64_t type metadata accessor for TVWorkoutPlanAlternativesViewController()
{
  result = qword_27C7660A0;
  if (!qword_27C7660A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B8001B8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20B800214()
{
  sub_20B595A38();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B8002F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B800360(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NSTextAlignment.init(alignment:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == -1)
  {
    return 4;
  }

  if (a3)
  {
    return qword_20C15BA08[a1];
  }

  sub_20B584078(a1, a2, a3);
  return 4;
}

uint64_t MetricFormattingError.hashValue.getter()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  return sub_20C13E1B4();
}

unint64_t sub_20B8004BC()
{
  result = qword_27C7660B0;
  if (!qword_27C7660B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7660B0);
  }

  return result;
}

uint64_t sub_20B800520(uint64_t a1)
{
  swift_getObjectType();
  sub_20B68E264(a1, v6);
  if (!v7)
  {
    sub_20B8006F4(v6);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  v3 = MEMORY[0x20F2F5330](v1 + OBJC_IVAR____TtC9SeymourUI25ContextMenuItemIdentifier_item, &v5[OBJC_IVAR____TtC9SeymourUI25ContextMenuItemIdentifier_item]);

  return v3 & 1;
}

uint64_t sub_20B8006F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_20B80075C()
{
  v1 = [v0 image];

  return v1;
}

uint64_t sub_20B8007B8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 72);
  if ([v3 userInterfaceIdiom] == 1)
  {
    if ([v3 horizontalSizeClass] == 2)
    {
      if (v1 >= 1024.0 && v2 < v1)
      {
        if (v2 < 768.0)
        {
          return 3;
        }

        else
        {
          return 2;
        }
      }

      else
      {
        return 4;
      }
    }

    else
    {
      return 1;
    }
  }

  else if (v2 >= 754.0)
  {
    return 5;
  }

  else
  {
    return v1 < 340.0;
  }
}

double sub_20B800884(uint64_t a1, uint64_t a2)
{
  v2 = [*(a2 + 72) preferredContentSizeCategory];
  sub_20C13D424();
  sub_20C13D514();
  v4 = v3;

  return v4;
}

double sub_20B800934@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 64);
  if (a1 <= 1u)
  {
    if (a1)
    {
      v83 = fmin(v6 / 9.0 + *(a2 + 48), 157.0);
      sub_20C13D514();
      v10 = v21;
      v11 = v6 < 812.0;
      v22 = 26.0;
      v82 = 24.0;
      if (v6 >= 812.0)
      {
        v22 = 24.0;
      }

      v77 = v22;
      v14 = 0x404F000000000000;
      if (v6 >= 812.0)
      {
        v15 = 62.0;
      }

      else
      {
        v15 = 68.0;
      }

      v80 = 20.0;
      v13 = 32.0;
    }

    else
    {
      sub_20C13D514();
      v10 = v16;
      v11 = v6 < 812.0;
      v17 = 24.0;
      if (v6 < 812.0)
      {
        v17 = 26.0;
      }

      v77 = v17;
      v14 = 0x404F000000000000;
      if (v6 >= 812.0)
      {
        v15 = 62.0;
      }

      else
      {
        v15 = 68.0;
      }

      v80 = 16.0;
      v13 = 44.0;
      v83 = 88.0;
      v82 = 44.0;
    }
  }

  else if (a1 - 2 >= 2)
  {
    if (a1 == 4)
    {
      sub_20C13D514();
      v10 = v18;
      v11 = v6 < 812.0;
      v19 = 26.0;
      v82 = 24.0;
      if (v6 >= 812.0)
      {
        v19 = 24.0;
      }

      v77 = v19;
      v14 = 0x404F000000000000;
      if (v6 >= 812.0)
      {
        v15 = 62.0;
      }

      else
      {
        v15 = 68.0;
      }

      v80 = 20.0;
      v13 = 78.0;
      *&v20 = 76.0;
    }

    else
    {
      sub_20C13D514();
      v10 = v23;
      v11 = v6 < 812.0;
      v24 = 26.0;
      v82 = 24.0;
      if (v6 >= 812.0)
      {
        v24 = 24.0;
      }

      v77 = v24;
      v14 = 0x404F000000000000;
      if (v6 >= 812.0)
      {
        v15 = 62.0;
      }

      else
      {
        v15 = 68.0;
      }

      v80 = 20.0;
      v13 = 32.0;
      *&v20 = 108.0;
    }

    v83 = *&v20;
  }

  else
  {
    sub_20C13D514();
    v10 = v9;
    v11 = v6 < 812.0;
    v12 = 26.0;
    v82 = 24.0;
    if (v6 >= 812.0)
    {
      v12 = 24.0;
    }

    v77 = v12;
    v80 = 20.0;
    v13 = 52.0;
    v83 = 56.0;
    v14 = 0x4049000000000000;
    v15 = 60.0;
  }

  v25 = *(a2 + 72);
  v26 = [v25 preferredContentSizeCategory];
  v27 = sub_20C13D424();

  if (a1)
  {
    v28 = [v25 preferredContentSizeCategory];
    v29 = sub_20C13D424();

    v30 = 1.2;
    if (v29)
    {
      v30 = 1.0;
    }

    v79 = v30;
    v31 = *MEMORY[0x277D76808];
    if (a1 > 3u)
    {
      if (a1 == 4)
      {
        v32 = v31;
        if (v8 >= 5)
        {
          v36 = 107.0;
        }

        else
        {
          v36 = 97.0;
        }
      }

      else
      {
        v36 = v6 / 6.5;
        v32 = v31;
      }

      v33 = 1;
      *&v34 = 0.0;
      goto LABEL_48;
    }

    if (a1 - 2 >= 2)
    {
      v32 = v31;
      LOBYTE(v37) = 1;
      v38 = sub_20B800884(1, a2);
      v40 = fmin(v6 / 6.0, 150.0);
      v41 = v13 + 32.0;
      v42 = v83;
      v43 = v6 - v83;
      v81 = 62.0;
      v44 = 117.0;
      goto LABEL_51;
    }

    v32 = v31;
    v33 = 0;
    *&v34 = 140.0;
    *&v35 = 109.0;
  }

  else
  {
    v32 = *MEMORY[0x277D76838];
    v33 = 1;
    *&v34 = 0.0;
    v79 = 1.0;
    *&v35 = 90.0;
  }

  v36 = *&v35;
LABEL_48:
  v38 = sub_20B800884(a1, a2);
  v37 = (a1 < 6u) & (0x23u >> a1);
  v41 = v13 + 32.0;
  v42 = v83;
  v43 = v6 - v83;
  v81 = *&v14;
  if (v33)
  {
    v45 = 1;
    v46 = 0.0;
    v40 = *&v34;
    v44 = v36;
    goto LABEL_52;
  }

  v40 = *&v34;
  v44 = v36;
LABEL_51:
  v45 = 0;
  v46 = v40;
LABEL_52:
  v47 = v7 - (v13 + v13);
  if (a1 <= 1u)
  {
    if (a1)
    {
      v64 = v43 - v46;
      v57 = v7 - (v77 + v77);
      v65 = (v64 - v57) * 0.5;
      if (v15 > v65)
      {
        v65 = v15;
      }

      if (v64 >= v44 + v57 + v65)
      {
        v15 = v65;
      }

      else
      {
        v57 = v64 - v44 - v15;
      }

      v59 = v82;
    }

    else
    {
      v58 = 100.0;
      if (v6 < 896.0)
      {
        v58 = 92.0;
      }

      if (v11)
      {
        v15 = 68.0;
      }

      else
      {
        v15 = v58;
      }

      v59 = v82;
      v57 = v7 - (v59 + v59);
    }
  }

  else if (a1 - 2 >= 2)
  {
    v60 = v6 - (v42 + v47 + 78.0 + v44);
    v68 = v60 < 150.0;
    v61 = v47 + -150.0 - v60;
    if (!v68)
    {
      v61 = v7 - (v13 + v13);
    }

    v62 = 100.0;
    if (v6 < 896.0)
    {
      v62 = 92.0;
    }

    v63 = 68.0;
    if (!v11)
    {
      v63 = v62;
    }

    v57 = v7 - (v77 + v77);
    if (a1 == 4)
    {
      v57 = v61;
      v15 = 78.0;
    }

    else
    {
      v15 = v63;
    }

    v59 = v82;
  }

  else
  {
    v73 = v41;
    v74 = v44;
    v75 = v40;
    v76 = v38;
    v48 = v7;
    v78 = v39;
    if (v8 >= 5)
    {
      v49 = 50.0;
    }

    else
    {
      v49 = 38.0;
    }

    v50 = v42;
    v51 = [objc_opt_self() grabberView];
    [v51 intrinsicContentSize];
    v53 = v52;

    v54 = v6 - v15 + -267.0 - v49 - v50;
    v47 = v48 - (v48 * 0.5 + v53) + v13 * -1.5 - v13 + -16.0;
    if (v47 >= v54)
    {
      sub_20C13D514();
      v7 = v66;
      v57 = v67;
      v68 = v54 >= v47 || v54 < 350.0;
      if (!v68)
      {
        v47 = v54;
      }
    }

    else
    {
      sub_20C13D514();
      v7 = v55;
      v57 = v56;
    }

    v59 = v82;
    v42 = v83;
    if ((v6 - (v57 + 267.0)) * 0.5 > v15)
    {
      v15 = (v6 - (v57 + 267.0)) * 0.5;
    }

    v38 = v76;
    v39 = v78;
    v44 = v74;
    v40 = v75;
    v41 = v73;
  }

  v69 = 33.0;
  v70 = 20.0;
  if (((a1 != 0) & v27) == 0)
  {
    v69 = 20.0;
  }

  if ((a1 - 2) < 3u)
  {
    v70 = 40.0;
  }

  *a3 = v70;
  *(a3 + 8) = v42;
  *(a3 + 16) = 0x4014000000000000;
  v71 = 12.0;
  *(a3 + 24) = v10 + 12.0 + 12.0;
  *(a3 + 32) = v59;
  *(a3 + 40) = xmmword_20C15BBA0;
  *(a3 + 56) = v15;
  *(a3 + 64) = v80;
  if (!v11)
  {
    v71 = 6.0;
  }

  *(a3 + 72) = v69;
  *(a3 + 80) = v71;
  *(a3 + 88) = v13;
  *(a3 + 96) = 0x4036000000000000;
  *(a3 + 104) = v13;
  *(a3 + 112) = v79;
  *(a3 + 120) = v41;
  *(a3 + 128) = v32;
  *(a3 + 136) = xmmword_20C15BBB0;
  *(a3 + 152) = v44;
  *(a3 + 160) = 0x4040000000000000;
  *(a3 + 168) = v7;
  *(a3 + 176) = v57;
  *(a3 + 184) = v38;
  *(a3 + 192) = v39;
  *(a3 + 200) = v40;
  *(a3 + 208) = v45;
  result = v81;
  *(a3 + 216) = v81;
  *(a3 + 224) = v37;
  *(a3 + 232) = v47;
  *(a3 + 240) = 0x4055800000000000;
  return result;
}