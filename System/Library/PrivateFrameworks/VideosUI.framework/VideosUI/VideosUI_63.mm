uint64_t sub_1E3B3D050(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_55_24();
      break;
    case 2:
      result = OUTLINED_FUNCTION_54_21();
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3B3D104()
{
  sub_1E4207B44();
  sub_1E3B3D154();
  return sub_1E4207BA4();
}

uint64_t sub_1E3B3D154()
{
  sub_1E4206014();
}

uint64_t sub_1E3B3D228()
{
  sub_1E4207B44();
  sub_1E3B3D154();
  return sub_1E4207BA4();
}

uint64_t sub_1E3B3D26C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3B3D008();
  *a1 = result;
  return result;
}

uint64_t sub_1E3B3D29C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3B3D050(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3B3D2C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3B3D338@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3B3D3CC(char a1)
{

  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_49_0();
    v12 = OUTLINED_FUNCTION_72_0();
    *v5 = 136315394;
    OUTLINED_FUNCTION_111();
    v7 = (*(v6 + 216))();
    sub_1E3270FC8(v7, v8, &v12);
    OUTLINED_FUNCTION_14_52();
    *(v5 + 4) = v1;
    *(v5 + 12) = 2080;
    v9 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E75;
    switch(a1)
    {
      case 1:
        v9 = 0xE900000000000064;
        v10 = OUTLINED_FUNCTION_55_24();
        break;
      case 2:
        OUTLINED_FUNCTION_68_16();
        v10 = OUTLINED_FUNCTION_54_21();
        break;
      case 3:
        v9 = 0x80000001E42721B0;
        v10 = 0xD000000000000013;
        break;
      default:
        break;
    }

    sub_1E3270FC8(v10, v9, &v12);
    OUTLINED_FUNCTION_14_52();
    *(v5 + 14) = v1;
    _os_log_impl(&dword_1E323F000, v3, v4, "%s Setting playhead position to %s", v5, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_65_0();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t (*sub_1E3B3D5B8(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1E3B3D2C8();
  return sub_1E3B3D600;
}

uint64_t sub_1E3B3D628()
{
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF339C0);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3B3D694(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD10);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_77();
  v6();
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF339C0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_1E3B3D7A8(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD10);
  v3[4] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v3[5] = v5;
  v7 = *(v6 + 64);
  v3[6] = __swift_coroFrameAllocStub(v7);
  v3[7] = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF339C0);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3B3D8BC;
}

void sub_1E3B3D8BC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = OUTLINED_FUNCTION_34();
    v8(v7);
    sub_1E3B3D694(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1E3B3D694(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1E3B3D96C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player);
  if (![v1 currentMediaItem] || (ObjectType = swift_getObjectType(), v3 = *MEMORY[0x1E69D5DC0], v4 = MEMORY[0x1E69E6158], sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]), sub_1E4123590(v3, v4, v11), swift_unknownObjectRelease(), !v11[1]))
  {
  }

  v5 = [v1 description];
  v6 = sub_1E4205F14();
  v8 = v7;

  MEMORY[0x1E69109E0](v6, v8);

  MEMORY[0x1E69109E0](32, 0xE100000000000000);
  v9 = OUTLINED_FUNCTION_74();
  MEMORY[0x1E69109E0](v9);

  MEMORY[0x1E69109E0](93, 0xE100000000000000);
  return v11[0];
}

uint64_t sub_1E3B3DAB8()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_50();
  sub_1E3B3DAF4(v1);
  return v0;
}

uint64_t sub_1E3B3DAF4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF339C0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v8 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor__playheadPosition;
  sub_1E4200634();
  (*(v6 + 32))(v1 + v8, v2, v4);
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_cancellables) = MEMORY[0x1E69E7CD0];
  sub_1E41FFCA4();
  v9 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndTriggerDates) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndTriggerDates) = v9;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_stateChangeObserver) = 0;
  v10 = (v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndBoundaryTimeObserverToken);
  *v10 = 0u;
  v10[1] = 0u;
  v11 = (v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndBoundaryTimeObserverToken);
  *v11 = 0u;
  v11[1] = 0u;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_playbackDatePollTask) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_hasPlaybackStartedAndHasPlaybackDate) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player) = a1;
  v12 = a1;
  sub_1E3B3D3CC(0);
  sub_1E3B3DFD4();
  sub_1E3B3EB34();
  sub_1E3B3ECB4();
  sub_1E3B41698();
  sub_1E3B3FC4C();
  sub_1E3B3E4D4();

  return v1;
}

uint64_t sub_1E3B3DCB0()
{
  v1 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndBoundaryTimeObserverToken;
  OUTLINED_FUNCTION_5_0();
  sub_1E37E93E8(v0 + v1, &v18, &unk_1ECF296E0);
  if (v19)
  {
    sub_1E329504C(&v18, &v20);
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player);
    __swift_project_boxed_opaque_existential_1(&v20, v21);
    v3 = v2;
    OUTLINED_FUNCTION_13_8();
    v4 = sub_1E4207994();
    OUTLINED_FUNCTION_73_11(v4);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v20);
  }

  else
  {
    sub_1E325F6F0(&v18, &unk_1ECF296E0);
  }

  v5 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndBoundaryTimeObserverToken;
  OUTLINED_FUNCTION_5_0();
  sub_1E37E93E8(v0 + v5, &v18, &unk_1ECF296E0);
  if (v19)
  {
    sub_1E329504C(&v18, &v20);
    v6 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player);
    __swift_project_boxed_opaque_existential_1(&v20, v21);
    v7 = v6;
    OUTLINED_FUNCTION_13_8();
    v8 = sub_1E4207994();
    OUTLINED_FUNCTION_73_11(v8);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v20);
  }

  else
  {
    sub_1E325F6F0(&v18, &unk_1ECF296E0);
  }

  if (*(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_playbackDatePollTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    sub_1E42064D4();
  }

  v9 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor__playheadPosition;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF339C0);
  OUTLINED_FUNCTION_2();
  (*(v10 + 8))(v0 + v9);

  v11 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_logger;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2();
  (*(v12 + 8))(v0 + v11);

  OUTLINED_FUNCTION_77();
  sub_1E325F6F0(v13, v14);
  OUTLINED_FUNCTION_77();
  sub_1E325F6F0(v15, v16);

  return v0;
}

uint64_t sub_1E3B3DF7C()
{
  sub_1E3B3DCB0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3B3DFD4()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  v0 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF33A10);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v8 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_2_118();
  sub_1E3B443D8(v9, v10);
  sub_1E42007B4();

  (*(v2 + 8))(v6, v0);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_52_24();
  OUTLINED_FUNCTION_11_86();
  sub_1E32752B0(v11, &unk_1ECF33A10);
  OUTLINED_FUNCTION_31_40();
  OUTLINED_FUNCTION_16_5();

  v12 = OUTLINED_FUNCTION_74();
  v13(v12);
  OUTLINED_FUNCTION_11_3();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B3E238()
{
  sub_1E41FDF14();
  if (!v11[3])
  {
    v8 = v11;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A150);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_5_0();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_13;
    }

    v1 = *(Strong + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player);

    v2 = [v1 currentMediaItem];

    if (!v2)
    {
      goto LABEL_13;
    }

    if (([v2 isEqualToMediaItem_] & 1) == 0)
    {
      swift_unknownObjectRelease();
      goto LABEL_13;
    }

    v3 = sub_1E41FDF24();
    if (v3)
    {
      v4 = v3;
      v10[5] = sub_1E4205F14();
      v10[6] = v5;
      sub_1E4207414();
      sub_1E375D7E8(v11, v4, &v12);

      sub_1E375D84C(v11);
      if (*(&v13 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF33A20);
        v6 = swift_dynamicCast();
        if (v6)
        {
          v7 = v11[0];
          v11[0] = *MEMORY[0x1E69D5B38];
          MEMORY[0x1EEE9AC00](v6);
          v10[2] = v11;
          sub_1E3B42F1C(sub_1E3B44AE0, v10, v7);
          OUTLINED_FUNCTION_87_0();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return 0;
        }

        swift_unknownObjectRelease();
LABEL_13:
        swift_unknownObjectRelease();
        return 0;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v12 = 0u;
      v13 = 0u;
    }

    v8 = &v12;
LABEL_11:
    sub_1E325F6F0(v8, &unk_1ECF296E0);
  }

  return 0;
}

void sub_1E3B3E4D4()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  v2 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF33A10);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  v11 = *(v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player);
  v12 = [v11 currentMediaItem];
  if (v12)
  {
    v13 = [v12 hasTrait_];
    swift_unknownObjectRelease();
    if (v13)
    {
      v14 = [v11 state];
      v15 = [objc_opt_self() playing];
      v16 = v15;
      if (v14)
      {
        if (v15)
        {

          if (v14 == v16)
          {
            goto LABEL_13;
          }

          goto LABEL_18;
        }

        v16 = v14;
      }

      else if (!v15)
      {
LABEL_13:
        OUTLINED_FUNCTION_25_2();

        sub_1E3B408A0();
        return;
      }

LABEL_18:
      v40 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_stateChangeObserver;
      if (!*(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_stateChangeObserver))
      {

        v25 = sub_1E41FFC94();
        v26 = sub_1E4206814();

        if (os_log_type_enabled(v25, v26))
        {
          v38 = OUTLINED_FUNCTION_6_21();
          v37 = OUTLINED_FUNCTION_100();
          v41 = v37;
          *v38 = 136315138;
          OUTLINED_FUNCTION_111();
          v28 = (*(v27 + 216))();
          OUTLINED_FUNCTION_58_0(v28, v29);
          OUTLINED_FUNCTION_14_52();
          *(v38 + 4) = v38;
          _os_log_impl(&dword_1E323F000, v25, v26, "%s Waiting for player to start playing before polling for playback date", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v37);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();
        }

        v30 = [objc_opt_self() defaultCenter];
        sub_1E4206C14();

        OUTLINED_FUNCTION_2_118();
        sub_1E3B443D8(v31, v32);
        sub_1E42007B4();
        (*(v4 + 8))(v8, v2);
        OUTLINED_FUNCTION_4_0();
        swift_allocObject();
        OUTLINED_FUNCTION_52_24();
        OUTLINED_FUNCTION_11_86();
        sub_1E32752B0(v33, v34);
        OUTLINED_FUNCTION_31_40();
        OUTLINED_FUNCTION_16_5();

        v35 = OUTLINED_FUNCTION_74();
        v36(v35);
        *(v0 + v40) = v8;
      }

      goto LABEL_22;
    }
  }

  v39 = sub_1E41FFC94();
  sub_1E4206814();
  OUTLINED_FUNCTION_87_0();

  if (os_log_type_enabled(v39, v9))
  {
    v17 = OUTLINED_FUNCTION_6_21();
    v18 = OUTLINED_FUNCTION_100();
    v41 = v18;
    *v17 = 136315138;
    OUTLINED_FUNCTION_111();
    v20 = (*(v19 + 216))();
    sub_1E3270FC8(v20, v21, &v41);
    OUTLINED_FUNCTION_50();

    *(v17 + 4) = v0;
    _os_log_impl(&dword_1E323F000, v39, v9, "%s Not waiting for playback date availability because current media item is not a sporting event", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_6_0();

LABEL_22:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_25_2();
}

BOOL sub_1E3B3E9DC()
{
  v0 = sub_1E41FDF24();
  if (!v0)
  {
    v8 = 0u;
    v9 = 0u;
    goto LABEL_6;
  }

  v1 = v0;
  *&v8 = sub_1E4205F14();
  *(&v8 + 1) = v2;
  sub_1E4207414();
  sub_1E375D7E8(v7, v1, &v8);

  sub_1E375D84C(v7);
  if (!*(&v9 + 1))
  {
LABEL_6:
    sub_1E325F6F0(&v8, &unk_1ECF296E0);
    goto LABEL_7;
  }

  sub_1E3280A90(0, &qword_1EE23B280);
  if (swift_dynamicCast())
  {
    v3 = v7[0];
    goto LABEL_8;
  }

LABEL_7:
  v3 = 0;
LABEL_8:
  v4 = [objc_opt_self() playing];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {

      swift_unknownObjectRelease();
      return v5 == v3;
    }

    swift_unknownObjectRelease();
    return 0;
  }

  if (v4)
  {

    return 0;
  }

  return 1;
}

uint64_t sub_1E3B3EB34()
{
  OUTLINED_FUNCTION_156_0();
  sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  v1 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_52_24();
  OUTLINED_FUNCTION_2_118();
  sub_1E3B443D8(v2, v3);
  OUTLINED_FUNCTION_31_40();
  OUTLINED_FUNCTION_16_5();

  v4 = OUTLINED_FUNCTION_74();
  v5(v4);
  OUTLINED_FUNCTION_11_3();
  sub_1E42004C4();
  swift_endAccess();
}

void sub_1E3B3ECB4()
{
  OUTLINED_FUNCTION_31_1();
  v19[0] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v19 - v2;
  v4 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v12 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  sub_1E3280A90(0, &qword_1EE23B1D0);
  v13 = sub_1E4206A04();
  v19[1] = v13;
  v14 = sub_1E42069A4();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v14);
  OUTLINED_FUNCTION_2_118();
  sub_1E3B443D8(v15, v16);
  sub_1E3746800();
  sub_1E42007D4();
  sub_1E325F6F0(v3, &unk_1ECF2D2B0);

  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  sub_1E32752B0(&qword_1EE28A240, &unk_1ECF2CD00);
  sub_1E4200844();
  OUTLINED_FUNCTION_31_4();

  v17 = OUTLINED_FUNCTION_8_6();
  v18(v17);
  OUTLINED_FUNCTION_11_3();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B3EFE8()
{
  v2 = v0;
  v131 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v129 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_66_5();
  MEMORY[0x1EEE9AC00](v8);
  v130 = v121 - v9;
  v10 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_logger;

  v128 = v10;
  v11 = sub_1E41FFC94();
  v12 = sub_1E4206814();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_6_21();
    v14 = OUTLINED_FUNCTION_100();
    *&aBlock = v14;
    OUTLINED_FUNCTION_41_35(4.8149e-34);
    v16 = (*(v15 + 216))();
    v18 = sub_1E3270FC8(v16, v17, &aBlock);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1E323F000, v11, v12, "%s Removing any existing boundary time observers", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v19 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndBoundaryTimeObserverToken;
  OUTLINED_FUNCTION_5_0();
  sub_1E37E93E8(v0 + v19, &v136, &unk_1ECF296E0);
  if (*(&v137 + 1))
  {
    v20 = OUTLINED_FUNCTION_39_28();
    OUTLINED_FUNCTION_78_10(v20);
    swift_unknownObjectRelease();
    v137 = 0u;
    v136 = 0u;
    OUTLINED_FUNCTION_11_3();
    sub_1E37EB5D0(&v136, v0 + v19);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    sub_1E325F6F0(&v136, &unk_1ECF296E0);
  }

  v21 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndBoundaryTimeObserverToken;
  OUTLINED_FUNCTION_5_0();
  sub_1E37E93E8(v0 + v21, &v136, &unk_1ECF296E0);
  if (*(&v137 + 1))
  {
    v22 = OUTLINED_FUNCTION_39_28();
    OUTLINED_FUNCTION_78_10(v22);
    swift_unknownObjectRelease();
    v137 = 0u;
    v136 = 0u;
    OUTLINED_FUNCTION_11_3();
    sub_1E37EB5D0(&v136, v0 + v21);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    sub_1E325F6F0(&v136, &unk_1ECF296E0);
  }

  v23 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndTriggerDates;
  v24 = &OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss;
  if (!*(*(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndTriggerDates) + 16) && !*(*(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndTriggerDates) + 16))
  {

    v45 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_112();

    if (OUTLINED_FUNCTION_58_20())
    {
      OUTLINED_FUNCTION_6_21();
      v46 = OUTLINED_FUNCTION_36_6();
      *&aBlock = v46;
      LODWORD(OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss) = 136315138;
      v118 = (*(*v0 + 216))();
      v120 = sub_1E3270FC8(v118, v119, &aBlock);

      *(&OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss + 4) = v120;
      v52 = "%s Not adding boundary time observers because no date range metadata exists";
      goto LABEL_43;
    }

LABEL_44:

    goto LABEL_45;
  }

  v25 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player);
  v26 = [v25 playbackDate];
  if (!v26)
  {

    v45 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_112();

    if (OUTLINED_FUNCTION_58_20())
    {
      OUTLINED_FUNCTION_6_21();
      v46 = OUTLINED_FUNCTION_36_6();
      *&aBlock = v46;
      LODWORD(OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss) = 136315138;
      v47 = (*(*v0 + 216))();
      v49 = sub_1E3270FC8(v47, v48, &aBlock);

      *(&OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss + 4) = v49;
      v52 = "%s Not adding boundary time observers because playback date is nil";
LABEL_43:
      OUTLINED_FUNCTION_13_24(&dword_1E323F000, v50, v51, v52);
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_65_0();
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  v27 = v26;
  v123 = v19;
  v124 = v21;
  sub_1E41FE584();

  v127 = v25;
  [v25 elapsedTime];
  v29 = v28;
  v121[2] = v23;
  v30 = *(*(v2 + v23) + 16);
  v126 = v4;
  v125 = v2;
  if (v30)
  {
    v31 = *(v4 + 16);
    OUTLINED_FUNCTION_81();
    v34 = v32 + v33;
    v35 = *(v4 + 72);
    v36 = (v4 + 8);
    v122 = v32;

    v37 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_61_13();
      v31();
      sub_1E41FE4F4();
      v39 = v38;
      (*v36)(v1, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = OUTLINED_FUNCTION_27();
        v37 = sub_1E3B42BC0(v41, v42, v43, v37);
      }

      v21 = *(v37 + 2);
      v40 = *(v37 + 3);
      if (v21 >= v40 >> 1)
      {
        v44 = OUTLINED_FUNCTION_35(v40);
        v37 = sub_1E3B42BC0(v44, v21 + 1, 1, v37);
      }

      *(v37 + 2) = v21 + 1;
      *&v37[8 * v21 + 32] = v29 + v39;
      v34 += v35;
      --v30;
    }

    while (v30);

    v2 = v125;
    v4 = v126;
    v24 = &OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss;
  }

  v122 = v24[511];
  v53 = *(*(v2 + v122) + 16);
  if (v53)
  {
    v54 = *(v4 + 16);
    OUTLINED_FUNCTION_81();
    v57 = v55 + v56;
    v58 = *(v4 + 72);
    v121[1] = v55;

    v59 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_61_13();
      v54();
      sub_1E41FE4F4();
      v61 = v60;
      v62 = OUTLINED_FUNCTION_210();
      v63(v62);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = OUTLINED_FUNCTION_27();
        v59 = sub_1E3B42BC0(v66, v67, v68, v59);
      }

      v65 = *(v59 + 2);
      v64 = *(v59 + 3);
      if (v65 >= v64 >> 1)
      {
        v69 = OUTLINED_FUNCTION_35(v64);
        v59 = sub_1E3B42BC0(v69, v65 + 1, 1, v59);
      }

      *(v59 + 2) = v65 + 1;
      *&v59[8 * v65 + 32] = v29 + v61;
      v57 += v58;
      --v53;
    }

    while (v53);

    v2 = v125;
  }

  v70 = sub_1E41FFC94();
  v71 = sub_1E4206814();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = OUTLINED_FUNCTION_100();
    v129 = OUTLINED_FUNCTION_164_1();
    *&aBlock = v129;
    OUTLINED_FUNCTION_41_35(4.8152e-34);
    v74 = (*(v73 + 216))();
    sub_1E3270FC8(v74, v75, &aBlock);
    OUTLINED_FUNCTION_50();

    *(v72 + 4) = v2;
    *(v72 + 12) = 2080;

    v77 = MEMORY[0x1E6910C30](v76, MEMORY[0x1E69E63B0]);
    v79 = v78;

    v80 = sub_1E3270FC8(v77, v79, &aBlock);

    *(v72 + 14) = v80;
    *(v72 + 22) = 2080;

    v82 = MEMORY[0x1E6910C30](v81, v131);
    v84 = v83;

    v85 = sub_1E3270FC8(v82, v84, &aBlock);

    *(v72 + 24) = v85;
    OUTLINED_FUNCTION_76_9(&dword_1E323F000, v86, v87, "%s Adding game end boundary time observer for times/dates - %s %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v88 = sub_1E41FFC94();
  v89 = sub_1E4206814();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = OUTLINED_FUNCTION_100();
    v129 = OUTLINED_FUNCTION_164_1();
    *&aBlock = v129;
    OUTLINED_FUNCTION_41_35(4.8152e-34);
    v92 = (*(v91 + 216))();
    sub_1E3270FC8(v92, v93, &aBlock);
    OUTLINED_FUNCTION_50();

    *(v90 + 4) = v2;
    *(v90 + 12) = 2080;

    v95 = MEMORY[0x1E6910C30](v94, MEMORY[0x1E69E63B0]);
    v97 = v96;

    v98 = sub_1E3270FC8(v95, v97, &aBlock);

    *(v90 + 14) = v98;
    *(v90 + 22) = 2080;

    v100 = MEMORY[0x1E6910C30](v99, v131);
    v102 = v101;

    v103 = sub_1E3270FC8(v100, v102, &aBlock);

    *(v90 + 24) = v103;
    OUTLINED_FUNCTION_76_9(&dword_1E323F000, v104, v105, "%s Adding broadcast end boundary time observer for times/dates - %s %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v106 = v124;
  v107 = v123;

  sub_1E37EB640(v108);

  OUTLINED_FUNCTION_4_0();
  v109 = swift_allocObject();
  swift_weakInit();
  v134 = sub_1E3B445A0;
  v135 = v109;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v133 = sub_1E37EB82C;
  *(&v133 + 1) = &block_descriptor_64;
  _Block_copy(&aBlock);

  OUTLINED_FUNCTION_77_12();
  v110 = OUTLINED_FUNCTION_16_5();
  _Block_release(v110);
  if (v109)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v133 = 0u;
  }

  OUTLINED_FUNCTION_11_3();
  sub_1E37EB5D0(&aBlock, v2 + v107);
  swift_endAccess();

  sub_1E37EB640(v111);

  OUTLINED_FUNCTION_4_0();
  v112 = swift_allocObject();
  swift_weakInit();
  v134 = sub_1E3B445AC;
  v135 = v112;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v133 = sub_1E37EB82C;
  *(&v133 + 1) = &block_descriptor_42;
  _Block_copy(&aBlock);

  OUTLINED_FUNCTION_77_12();
  v113 = OUTLINED_FUNCTION_16_5();
  _Block_release(v113);
  if (v112)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
    v114 = OUTLINED_FUNCTION_43_34();
    v115(v114);
  }

  else
  {
    v116 = OUTLINED_FUNCTION_43_34();
    v117(v116);
    aBlock = 0u;
    v133 = 0u;
  }

  OUTLINED_FUNCTION_11_3();
  sub_1E37EB5D0(&aBlock, v2 + v106);
  swift_endAccess();

LABEL_45:
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3B3FC4C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  v4 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v121 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v114 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_88_2();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v114 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v123 = &v114 - v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  v122 = (&v114 - v19);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_66_5();
  *&v22 = MEMORY[0x1EEE9AC00](v21).n128_u64[0];
  v24 = &v114 - v23;
  v25 = *(v1 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player);
  v26 = [v25 currentMediaItem];
  if (!v26 || (v119 = v3, v120 = v11, v27 = [v26 hasTrait_], swift_unknownObjectRelease(), !v27) || *(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_hasPlaybackStartedAndHasPlaybackDate) != 1 || (v28 = objc_msgSend(v25, sel_playbackDate)) == 0)
  {
    v37 = 0;
    goto LABEL_11;
  }

  v29 = v28;
  v126 = v24;
  sub_1E41FE584();

  v117 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndTriggerDates;
  v118 = v0;
  v30 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndTriggerDates);
  v31 = *(v30 + 16);
  v124 = (v6 + 8);
  v125 = (v6 + 16);

  for (i = 0; ; ++i)
  {
    if (v31 == i)
    {

      v37 = 0;
LABEL_20:
      v64 = *(v118 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndTriggerDates);
      v65 = *(v64 + 16);

      v41 = 0;
      v39 = &qword_1ECF2F220;
      while (1)
      {
        if (v65 == v41)
        {

          OUTLINED_FUNCTION_55_24();
          switch(v37)
          {
            case 1:
              goto LABEL_32;
            case 2:
              goto LABEL_31;
            case 3:
              goto LABEL_29;
            default:

              goto LABEL_33;
          }
        }

        if (v41 >= *(v64 + 16))
        {
          break;
        }

        OUTLINED_FUNCTION_81();
        v67 = *(v6 + 16);
        v67(v15, v64 + v66 + *(v6 + 72) * v41, v4);
        OUTLINED_FUNCTION_0_150();
        sub_1E3B443D8(&qword_1ECF2F220, v68);
        if ((sub_1E4205E14() & 1) == 0)
        {

          v71 = v119;
          v67(v119, v126, v4);
          v41 = v120;
          v67(v120, v15, v4);

          v72 = sub_1E41FFC94();
          sub_1E4206814();
          OUTLINED_FUNCTION_83_6();
          if (os_log_type_enabled(v72, &qword_1ECF2F220))
          {
            v73 = OUTLINED_FUNCTION_100();
            v123 = OUTLINED_FUNCTION_164_1();
            v127 = v123;
            *v73 = 136315650;
            OUTLINED_FUNCTION_111();
            v75 = *(v74 + 216);
            v122 = v72;
            v76 = v75();
            OUTLINED_FUNCTION_58_0(v76, v77);
            LODWORD(v116) = &qword_1ECF2F220;
            OUTLINED_FUNCTION_33_12();
            *(v73 + 4) = &qword_1ECF2F220;
            *(v73 + 12) = 2080;
            OUTLINED_FUNCTION_0_150();
            v80 = sub_1E3B443D8(v78, v79);
            OUTLINED_FUNCTION_34();
            sub_1E4207944();
            v82 = v81;
            v83 = *v124;
            (*v124)(v71, v4);
            v84 = OUTLINED_FUNCTION_47_34();
            v86 = sub_1E3270FC8(v84, v82, v85);

            *(v73 + 14) = v86;
            *(v73 + 22) = 2080;
            OUTLINED_FUNCTION_34();
            sub_1E4207944();
            OUTLINED_FUNCTION_49_4();
            v83(v41, v4);
            v87 = OUTLINED_FUNCTION_47_34();
            sub_1E3270FC8(v87, v80, v88);
            OUTLINED_FUNCTION_31_4();

            *(v73 + 24) = v41;
            v89 = v122;
            _os_log_impl(&dword_1E323F000, v122, v116, "%s Current playback date %s is beyond event end trigger date %s", v73, 0x20u);
            v39 = v123;
            swift_arrayDestroy();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_6_0();

            v90 = OUTLINED_FUNCTION_8_6();
            (v83)(v90);
          }

          else
          {

            v91 = *v124;
            (*v124)(v41, v4);
            v91(v71, v4);
            v92 = OUTLINED_FUNCTION_8_6();
            (v91)(v92);
          }

LABEL_31:
          OUTLINED_FUNCTION_54_21();
          OUTLINED_FUNCTION_68_16();
          v37 = 2;
          goto LABEL_32;
        }

        ++v41;
        OUTLINED_FUNCTION_71_20();
        v69 = OUTLINED_FUNCTION_8_6();
        v70(v69);
      }

LABEL_45:
      __break(1u);
      return;
    }

    if (i >= *(v30 + 16))
    {
      __break(1u);
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_81();
    v34 = *(v6 + 16);
    v34(v2, v30 + v33 + *(v6 + 72) * i, v4);
    OUTLINED_FUNCTION_0_150();
    sub_1E3B443D8(&qword_1ECF2F220, v35);
    if ((sub_1E4205E14() & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_71_20();
    v36(v2, v4);
  }

  v38 = v122;
  v34(v122, v126, v4);
  v39 = v123;
  v34(v123, v2, v4);

  v40 = sub_1E41FFC94();
  v41 = sub_1E4206814();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = OUTLINED_FUNCTION_100();
    v115 = v41;
    v41 = v42;
    v116 = OUTLINED_FUNCTION_164_1();
    v127 = v116;
    *v41 = 136315650;
    OUTLINED_FUNCTION_111();
    v44 = *(v43 + 216);
    v114 = v40;
    v45 = v44();
    OUTLINED_FUNCTION_58_0(v45, v46);
    OUTLINED_FUNCTION_33_12();
    *(v41 + 4) = v39;
    *(v41 + 12) = 2080;
    OUTLINED_FUNCTION_0_150();
    v39 = sub_1E3B443D8(v47, v48);
    OUTLINED_FUNCTION_34();
    sub_1E4207944();
    v50 = v49;
    v51 = *v124;
    (*v124)(v38, v4);
    v52 = OUTLINED_FUNCTION_47_34();
    v54 = sub_1E3270FC8(v52, v50, v53);

    *(v41 + 14) = v54;
    *(v41 + 22) = 2080;
    v55 = v123;
    OUTLINED_FUNCTION_34();
    sub_1E4207944();
    OUTLINED_FUNCTION_49_4();
    v56 = OUTLINED_FUNCTION_45_1();
    (v51)(v56);
    v57 = v51;
    v58 = OUTLINED_FUNCTION_47_34();
    sub_1E3270FC8(v58, v39, v59);
    OUTLINED_FUNCTION_31_4();

    *(v41 + 24) = v55;
    v60 = v114;
    _os_log_impl(&dword_1E323F000, v114, v115, "%s Current playback date %s is beyond broadcast end trigger date %s", v41, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v57(v2, v4);
  }

  else
  {

    v61 = *v124;
    v62 = OUTLINED_FUNCTION_74();
    (v61)(v62);
    v61(v38, v4);
    v61(v2, v4);
  }

  v63 = OUTLINED_FUNCTION_42_40();

  if (v63)
  {
    v37 = 3;
    goto LABEL_20;
  }

LABEL_29:
  v37 = 3;
LABEL_32:
  OUTLINED_FUNCTION_42_40();
  OUTLINED_FUNCTION_112();

  if (v39)
  {
LABEL_33:
    if (*(*(v118 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndTriggerDates) + 16) || *(*(v118 + v117) + 16))
    {
      v93 = v121;
      (*v125)(v121, v126, v4);

      v94 = sub_1E41FFC94();
      v95 = sub_1E4206814();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = OUTLINED_FUNCTION_49_0();
        v127 = OUTLINED_FUNCTION_72_0();
        OUTLINED_FUNCTION_4_125(4.8151e-34);
        v98 = (*(v97 + 216))();
        OUTLINED_FUNCTION_58_0(v98, v99);
        OUTLINED_FUNCTION_33_12();
        *(v96 + 4) = v39;
        *(v96 + 12) = 2080;
        OUTLINED_FUNCTION_0_150();
        sub_1E3B443D8(v100, v101);
        sub_1E4207944();
        OUTLINED_FUNCTION_49_4();
        v102 = *v124;
        (*v124)(v93, v4);
        v103 = OUTLINED_FUNCTION_47_34();
        sub_1E3270FC8(v103, v39, v104);
        OUTLINED_FUNCTION_31_4();

        *(v96 + 14) = v93;
        _os_log_impl(&dword_1E323F000, v94, v95, "%s Current playback date %s is prior to all end dates", v96, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_21_0();
      }

      else
      {

        v102 = *v124;
        (*v124)(v93, v4);
      }

      v105 = OUTLINED_FUNCTION_45_1();
      (v102)(v105);
      v0 = v118;
    }

    else
    {

      v0 = v118;
      v107 = sub_1E41FFC94();
      v108 = sub_1E4206814();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = OUTLINED_FUNCTION_6_21();
        v127 = OUTLINED_FUNCTION_100();
        *v109 = 136315138;
        OUTLINED_FUNCTION_111();
        v111 = (*(v110 + 216))();
        OUTLINED_FUNCTION_58_0(v111, v112);
        OUTLINED_FUNCTION_14_52();
        *(v109 + 4) = v41;
        _os_log_impl(&dword_1E323F000, v107, v108, "%s No HLS end dates exist", v109, 0xCu);
        OUTLINED_FUNCTION_24_18();
        OUTLINED_FUNCTION_6_0();
      }

      OUTLINED_FUNCTION_71_20();
      v113(v126, v4);
    }

    v37 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_71_20();
    v106(v126, v4);
    v0 = v118;
  }

LABEL_11:
  (*(*v0 + 168))();
  if ((sub_1E389D688() & 1) == 0)
  {
    (*(*v0 + 176))(v37);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B408A0()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  v8 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_playbackDatePollTask;
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_playbackDatePollTask))
  {

    v9 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_53_26();
    if (os_log_type_enabled(v9, v1))
    {
      OUTLINED_FUNCTION_6_21();
      v18[1] = OUTLINED_FUNCTION_11_16();
      OUTLINED_FUNCTION_4_125(4.8149e-34);
      v11 = (*(v10 + 216))();
      OUTLINED_FUNCTION_58_0(v11, v12);
      OUTLINED_FUNCTION_14_52();
      *(v2 + 4) = v3;
      _os_log_impl(&dword_1E323F000, v9, v1, "%s Starting playback date poll task", v2, 0xCu);
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_21_0();
    }

    v13 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v13);
    OUTLINED_FUNCTION_4_0();
    v14 = swift_allocObject();
    swift_weakInit();
    sub_1E4206434();
    OUTLINED_FUNCTION_31_4();

    v15 = sub_1E4206424();
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v14;

    *(v4 + v8) = sub_1E37748D8(0, 0, v7, &unk_1E42BC8D0, v16);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B40A98()
{
  OUTLINED_FUNCTION_24();
  v0[13] = v1;
  v2 = sub_1E42075D4();
  v0[14] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v0[15] = v3;
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v4 = sub_1E42075E4();
  v0[18] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[19] = v5;
  v0[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v0[21] = swift_task_alloc();
  sub_1E4206434();
  v0[22] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v7 = sub_1E42063B4();
  v0[23] = v7;
  v0[24] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E3B40C14, v7, v6);
}

uint64_t sub_1E3B40C14()
{
  OUTLINED_FUNCTION_5_0();
  *(v0 + 200) = 1;
  Strong = swift_weakLoadStrong();
  *(v0 + 208) = Strong;
  if (!Strong)
  {
    goto LABEL_4;
  }

  v3 = Strong;
  if (sub_1E4206504())
  {

    goto LABEL_4;
  }

  v6 = [*(v3 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player) playbackDate];
  if (v6)
  {
    v7 = v6;
    v8 = *(v0 + 168);

    sub_1E41FE584();

    v9 = sub_1E41FE5D4();
    OUTLINED_FUNCTION_75_0(v9);
    sub_1E325F6F0(v8, &unk_1ECF28E20);

    v10 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_53_26();
    if (OUTLINED_FUNCTION_81_10())
    {
      OUTLINED_FUNCTION_6_21();
      OUTLINED_FUNCTION_11_16();
      OUTLINED_FUNCTION_4_125(4.8149e-34);
      v12 = *(v11 + 216);

      v12(v13);
      OUTLINED_FUNCTION_25_56();
      v14 = OUTLINED_FUNCTION_210();
      sub_1E3270FC8(v14, v15, v16);
      OUTLINED_FUNCTION_57_17();
      *(v1 + 4) = v3;
      OUTLINED_FUNCTION_15_87();
      _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_21_0();
    }

    *(v3 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_hasPlaybackStartedAndHasPlaybackDate) = 1;
    sub_1E3B41698();
    sub_1E3B3EFE8();
    sub_1E3B3FC4C();

    OUTLINED_FUNCTION_5_0();
    v22 = swift_weakLoadStrong();
    if (!v22)
    {
      goto LABEL_5;
    }

    *(v22 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_playbackDatePollTask) = 0;

LABEL_4:

LABEL_5:

    v4 = *(v0 + 8);

    return v4();
  }

  v23 = *(v0 + 168);
  v24 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_74_13(v24);
  sub_1E325F6F0(v23, &unk_1ECF28E20);

  v25 = sub_1E41FFC94();
  sub_1E4206814();
  OUTLINED_FUNCTION_53_26();
  if (OUTLINED_FUNCTION_81_10())
  {
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_11_16();
    OUTLINED_FUNCTION_4_125(4.8151e-34);
    v27 = *(v26 + 216);

    v27(v28);
    OUTLINED_FUNCTION_25_56();
    v29 = OUTLINED_FUNCTION_210();
    sub_1E3270FC8(v29, v30, v31);
    OUTLINED_FUNCTION_57_17();
    *(v1 + 4) = v3;
    *(v1 + 12) = 2048;
    *(v1 + 14) = 1;
    OUTLINED_FUNCTION_15_87();
    _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
    OUTLINED_FUNCTION_24_18();
    OUTLINED_FUNCTION_21_0();
  }

  sub_1E4207AA4();
  *(v0 + 88) = xmmword_1E42BC700;
  v37 = OUTLINED_FUNCTION_8_88();

  return MEMORY[0x1EEE6DFA0](v37, v38, v39);
}

uint64_t sub_1E3B40F9C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = sub_1E3B443D8(&unk_1ECF2C4D0, MEMORY[0x1E69E8820]);
  OUTLINED_FUNCTION_13_8();
  sub_1E4207A84();
  sub_1E3B443D8(&unk_1ECF2CCD0, MEMORY[0x1E69E87E8]);
  sub_1E42075F4();
  v5 = *(v2 + 8);
  v0[27] = v5;
  v0[28] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = sub_1E3B4111C;
  v8 = v0[17];
  v7 = v0[18];

  return MEMORY[0x1EEE6DE58](v8, v0 + 8, v7, v4);
}

uint64_t sub_1E3B4111C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[27];

    v4 = OUTLINED_FUNCTION_13_8();
    v3(v4);
    v5 = sub_1E3B41628;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v9 = v2[19];
    v8 = v2[20];
    v10 = v2[18];
    (v2[27])(v2[17], v2[14]);
    (*(v9 + 8))(v8, v10);
    v6 = v2[23];
    v7 = v2[24];
    v5 = sub_1E3B4128C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3B4128C()
{
  v2 = *(v0 + 200);

  if (v2 == 5)
  {
LABEL_2:

    OUTLINED_FUNCTION_5_0();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
LABEL_8:

      v7 = *(v0 + 8);

      return v7();
    }

    *(Strong + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_playbackDatePollTask) = 0;

LABEL_7:

    goto LABEL_8;
  }

  v4 = *(v0 + 200) + 1;
  *(v0 + 200) = v4;
  v5 = swift_weakLoadStrong();
  *(v0 + 208) = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  if (sub_1E4206504())
  {

    goto LABEL_7;
  }

  v9 = [*(v6 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player) playbackDate];
  if (v9)
  {
    v10 = v9;
    v11 = *(v0 + 168);

    sub_1E41FE584();

    v12 = sub_1E41FE5D4();
    OUTLINED_FUNCTION_75_0(v12);
    sub_1E325F6F0(v11, &unk_1ECF28E20);

    v13 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_53_26();
    if (OUTLINED_FUNCTION_81_10())
    {
      OUTLINED_FUNCTION_6_21();
      OUTLINED_FUNCTION_11_16();
      OUTLINED_FUNCTION_4_125(4.8149e-34);
      v15 = *(v14 + 216);

      v15(v16);
      OUTLINED_FUNCTION_25_56();
      v17 = OUTLINED_FUNCTION_210();
      sub_1E3270FC8(v17, v18, v19);
      OUTLINED_FUNCTION_57_17();
      *(v1 + 4) = v6;
      OUTLINED_FUNCTION_15_87();
      _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_21_0();
    }

    *(v6 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_hasPlaybackStartedAndHasPlaybackDate) = 1;
    sub_1E3B41698();
    sub_1E3B3EFE8();
    sub_1E3B3FC4C();
    goto LABEL_2;
  }

  v25 = *(v0 + 168);
  v26 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_74_13(v26);
  sub_1E325F6F0(v25, &unk_1ECF28E20);

  v27 = sub_1E41FFC94();
  sub_1E4206814();
  OUTLINED_FUNCTION_53_26();
  if (OUTLINED_FUNCTION_81_10())
  {
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_11_16();
    OUTLINED_FUNCTION_4_125(4.8151e-34);
    v29 = *(v28 + 216);

    v29(v30);
    OUTLINED_FUNCTION_25_56();
    v31 = OUTLINED_FUNCTION_210();
    sub_1E3270FC8(v31, v32, v33);
    OUTLINED_FUNCTION_57_17();
    *(v1 + 4) = v6;
    *(v1 + 12) = 2048;
    *(v1 + 14) = v4;
    OUTLINED_FUNCTION_15_87();
    _os_log_impl(v34, v35, v36, v37, v38, 0x16u);
    OUTLINED_FUNCTION_24_18();
    OUTLINED_FUNCTION_21_0();
  }

  v39 = sub_1E4207AA4();
  *(v0 + 88) = v4 * 0xDE0B6B3A7640000uLL;
  v40 = OUTLINED_FUNCTION_8_88(v39);

  return MEMORY[0x1EEE6DFA0](v40, v41, v42);
}

uint64_t sub_1E3B41628()
{
  OUTLINED_FUNCTION_24();
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[23];
  v2 = v0[24];

  return MEMORY[0x1EEE6DFA0](sub_1E3B44BD4, v1, v2);
}

void sub_1E3B41698()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_1E4205ED4();
  [v1 doubleForKey_];
  v4 = v3;

  v5 = [v0 standardUserDefaults];
  v6 = sub_1E4205ED4();
  [v5 doubleForKey_];
  v8 = v7;

  if (v4 == 0.0 && v8 == 0.0)
  {

    sub_1E3B417EC();
  }

  else
  {

    sub_1E3B41EE8(v4, v8);
  }
}

void sub_1E3B417EC()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  v2 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v83 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  v76 = v5;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v72 - v7;
  v8 = MEMORY[0x1E69E7CC0];
  v85 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndTriggerDates;
  *(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndTriggerDates) = MEMORY[0x1E69E7CC0];

  v81 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndTriggerDates;
  *(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndTriggerDates) = v8;

  if (![*(v0 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player) currentMediaItem] || (ObjectType = swift_getObjectType(), v10 = *MEMORY[0x1E69D5B38], v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF339F0), sub_1E4123588(ObjectType, v11), sub_1E4123590(v10, v11, &v86), swift_unknownObjectRelease(), !v86))
  {

    v65 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_83_6();
    if (OUTLINED_FUNCTION_58_20())
    {
      OUTLINED_FUNCTION_6_21();
      v66 = OUTLINED_FUNCTION_36_6();
      v86 = v66;
      *v1 = 136315138;
      OUTLINED_FUNCTION_111();
      v68 = (*(v67 + 216))();
      sub_1E3270FC8(v68, v69, &v86);
      OUTLINED_FUNCTION_50();

      *(v1 + 4) = v0;
      OUTLINED_FUNCTION_13_24(&dword_1E323F000, v70, v71, "%s Not parsing date range metadata because no date range metadata is available");
      __swift_destroy_boxed_opaque_existential_1(v66);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    goto LABEL_54;
  }

  v86 = sub_1E3B441AC(v12);
  sub_1E3B42FC4(&v86);

  v13 = v86;
  v14 = sub_1E32AE9B0(v86);
  if (!v14)
  {
LABEL_53:

LABEL_54:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v16 = v14;
  if (v14 >= 1)
  {
    v17 = 0;
    v84 = v13 & 0xC000000000000001;
    v79 = 0x80000001E4272340;
    v80 = v83 + 32;
    v78 = 0x80000001E42723A0;
    v74 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_logger;
    v75 = 0x80000001E4272370;
    *&v15 = 136315138;
    v72 = v15;
    v19 = v76;
    v18 = v77;
    v82 = v13;
    v73 = v2;
    while (1)
    {
      if (v84)
      {
        v20 = OUTLINED_FUNCTION_45_1();
        v21 = MEMORY[0x1E6911E60](v20);
      }

      else
      {
        v21 = *(v13 + 8 * v17 + 32);
      }

      v22 = v21;
      v23 = sub_1E3B4413C(v22);
      if (v24)
      {
        LOBYTE(v10) = v24;
        if (v23 == 0xD000000000000021 && v24 == v79)
        {

LABEL_24:
          v31 = [v22 startDate];
          sub_1E41FE584();

          v32 = v85;
          v10 = *(v0 + v85);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + v32) = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v57 = OUTLINED_FUNCTION_27();
            v10 = sub_1E3B42AD4(v57, v58, v59, v10);
            *(v0 + v85) = v10;
          }

          v35 = *(v10 + 16);
          v34 = *(v10 + 24);
          if (v35 >= v34 >> 1)
          {
            v60 = OUTLINED_FUNCTION_35(v34);
            v10 = sub_1E3B42AD4(v60, v35 + 1, 1, v10);
          }

          *(v10 + 16) = v35 + 1;
          OUTLINED_FUNCTION_81();
          (*(v37 + 32))(v10 + v36 + *(v37 + 72) * v35, v18, v2);
          *(v0 + v85) = v10;

LABEL_42:
          v13 = v82;
          goto LABEL_43;
        }

        v26 = sub_1E42079A4();

        if (v26)
        {

          goto LABEL_24;
        }
      }

      v27 = v22;
      v28 = sub_1E3B4413C(v27);
      if (v29)
      {
        if (v28 == 0xD000000000000021 && v29 == v78)
        {

          goto LABEL_37;
        }

        sub_1E42079A4();
        OUTLINED_FUNCTION_112();

        if (v10)
        {

LABEL_37:
          v41 = [v27 startDate];
          sub_1E41FE584();

          v42 = v81;
          v43 = *(v0 + v81);
          v44 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + v42) = v43;
          if ((v44 & 1) == 0)
          {
            v61 = OUTLINED_FUNCTION_27();
            v43 = sub_1E3B42AD4(v61, v62, v63, v43);
            *(v0 + v81) = v43;
          }

          v46 = *(v43 + 16);
          v45 = *(v43 + 24);
          v10 = v46 + 1;
          if (v46 >= v45 >> 1)
          {
            v64 = OUTLINED_FUNCTION_35(v45);
            v43 = sub_1E3B42AD4(v64, v46 + 1, 1, v43);
          }

          *(v43 + 16) = v10;
          OUTLINED_FUNCTION_81();
          (*(v48 + 32))(v43 + v47 + *(v48 + 72) * v46, v19, v2);
          *(v0 + v81) = v43;

          goto LABEL_42;
        }
      }

      v38 = sub_1E3B4413C(v27);
      if (v39)
      {
        if (v38 == 0xD000000000000024 && v39 == v75)
        {

LABEL_47:

          v10 = sub_1E41FFC94();
          v49 = sub_1E4206814();

          if (os_log_type_enabled(v10, v49))
          {
            v50 = OUTLINED_FUNCTION_6_21();
            v51 = OUTLINED_FUNCTION_100();
            v86 = v51;
            *v50 = v72;
            OUTLINED_FUNCTION_111();
            v53 = (*(v52 + 216))();
            v55 = OUTLINED_FUNCTION_58_0(v53, v54);

            *(v50 + 4) = v55;
            v13 = v82;
            _os_log_impl(&dword_1E323F000, v10, v49, "%s removing all existing trigger dates as a cancel tag is encountered", v50, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v51);
            v19 = v76;
            OUTLINED_FUNCTION_6_0();
            v2 = v73;
            OUTLINED_FUNCTION_6_0();
          }

          v18 = v77;
          v56 = MEMORY[0x1E69E7CC0];
          *(v0 + v85) = MEMORY[0x1E69E7CC0];

          *(v0 + v81) = v56;

          goto LABEL_43;
        }

        sub_1E42079A4();
        OUTLINED_FUNCTION_112();

        if (v10)
        {
          goto LABEL_47;
        }

        v18 = v77;
      }

      else
      {
      }

LABEL_43:
      if (v16 == ++v17)
      {
        goto LABEL_53;
      }
    }
  }

  __break(1u);

  __break(1u);
}

void sub_1E3B41EE8(double a1, double a2)
{
  v4 = v2;
  v7 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v87 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v79[-v13];
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_88_2();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v79[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v79[-v19];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v79[-v22];
  v24 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndTriggerDates;
  v25 = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_eventEndTriggerDates) = MEMORY[0x1E69E7CC0];

  v88 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndTriggerDates;
  *(v2 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_broadcastEndTriggerDates) = v25;

  v26 = [*(v2 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_player) playbackDate];
  if (v26)
  {
    v27 = v26;
    v86 = v17;
    sub_1E41FE584();

    v28 = v23;
    if (a1 != 0.0)
    {
      v29 = v9;
      v84 = v9;
      v85 = v28;
      v30 = *(v9 + 16);
      v30(v86);
      v31 = v7;
      v32 = v20;
      sub_1E41FE4E4();
      v82 = v30;
      v83 = v29 + 2;
      (v30)(v3, v20, v7);

      v33 = sub_1E41FFC94();
      v34 = sub_1E4206814();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = OUTLINED_FUNCTION_100();
        v81 = OUTLINED_FUNCTION_72_0();
        v90 = v81;
        *v35 = 136315650;
        OUTLINED_FUNCTION_111();
        v37 = *(v36 + 216);
        v80 = v34;
        v38 = v37();
        sub_1E3270FC8(v38, v39, &v90);
        OUTLINED_FUNCTION_33_12();
        *(v35 + 4) = "ractor";
        *(v35 + 12) = 2048;
        *(v35 + 14) = a1;
        *(v35 + 22) = 2080;
        OUTLINED_FUNCTION_0_150();
        sub_1E3B443D8(v40, v41);
        sub_1E4207944();
        OUTLINED_FUNCTION_49_4();
        v42 = OUTLINED_FUNCTION_37_37();
        v43(v42);
        sub_1E3270FC8(v3, "ractor", &v90);
        OUTLINED_FUNCTION_31_4();

        *(v35 + 24) = v3;
        _os_log_impl(&dword_1E323F000, v33, v80, "%s Overriding event end time to %f seconds after playback start (%s)", v35, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        v44 = v84;
        OUTLINED_FUNCTION_6_0();
      }

      else
      {

        v44 = v84;
        v52 = OUTLINED_FUNCTION_37_37();
        v53(v52);
      }

      v7 = v31;
      sub_1E3B42A48();
      v54 = *(*(v4 + v24) + 16);
      sub_1E3B42A94(v54);
      v55 = *(v4 + v24);
      *(v55 + 16) = v54 + 1;
      OUTLINED_FUNCTION_81();
      (v82)(v55 + v56 + *(v44 + 72) * v54, v32, v31);
      *(v4 + v24) = v55;
      v3(v32, v31);
      v28 = v85;
      v9 = v44;
    }

    if (a2 == 0.0)
    {
      (*(v9 + 8))(v28, v7);
    }

    else
    {
      v57 = v9;
      v58 = *(v9 + 16);
      v59 = v86;
      v85 = v28;
      (v58)(v86);
      v60 = v89;
      sub_1E41FE4E4();
      v61 = v87;
      v58(v87, v60, v7);

      v62 = sub_1E41FFC94();
      sub_1E4206814();
      OUTLINED_FUNCTION_87_0();

      if (os_log_type_enabled(v62, v59))
      {
        v63 = OUTLINED_FUNCTION_100();
        v86 = v58;
        v64 = v63;
        v84 = OUTLINED_FUNCTION_72_0();
        v90 = v84;
        *v64 = 136315650;
        OUTLINED_FUNCTION_111();
        v66 = *(v65 + 216);
        v83 = v62;
        v67 = v66();
        sub_1E3270FC8(v67, v68, &v90);
        OUTLINED_FUNCTION_33_12();
        *(v64 + 4) = v60;
        *(v64 + 12) = 2048;
        *(v64 + 14) = a2;
        *(v64 + 22) = 2080;
        OUTLINED_FUNCTION_0_150();
        sub_1E3B443D8(v69, v70);
        sub_1E4207944();
        OUTLINED_FUNCTION_49_4();
        LODWORD(v82) = v59;
        v71 = OUTLINED_FUNCTION_27_41();
        v57(v71);
        sub_1E3270FC8(v61, v60, &v90);
        OUTLINED_FUNCTION_31_4();

        *(v64 + 24) = v61;
        v72 = v83;
        _os_log_impl(&dword_1E323F000, v83, v82, "%s Overriding broadcast end time to %f seconds after playback start (%s)", v64, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        v58 = v86;
        OUTLINED_FUNCTION_6_0();
      }

      else
      {

        v73 = OUTLINED_FUNCTION_27_41();
        v57(v73);
      }

      v74 = v88;
      sub_1E3B42A48();
      v75 = *(*(v4 + v74) + 16);
      sub_1E3B42A94(v75);
      v76 = *(v4 + v74);
      *(v76 + 16) = v75 + 1;
      OUTLINED_FUNCTION_81();
      v58(v76 + v77 + *(v7 + 72) * v75, v89, v59);
      *(v4 + v74) = v76;
      v78 = OUTLINED_FUNCTION_74();
      v57(v78);
      (v57)(v85, v59);
    }

    goto LABEL_18;
  }

  v89 = sub_1E41FFC94();
  sub_1E4206814();
  OUTLINED_FUNCTION_87_0();

  if (os_log_type_enabled(v89, v17))
  {
    v45 = OUTLINED_FUNCTION_6_21();
    v46 = OUTLINED_FUNCTION_100();
    v90 = v46;
    *v45 = 136315138;
    OUTLINED_FUNCTION_111();
    v48 = (*(v47 + 216))();
    sub_1E3270FC8(v48, v49, &v90);
    OUTLINED_FUNCTION_50();

    *(v45 + 4) = v2;
    _os_log_impl(&dword_1E323F000, v89, v17, "%s Not parsing date range metadata from defaults because playback date is nil", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_6_0();

LABEL_18:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  OUTLINED_FUNCTION_54_0();
}

uint64_t type metadata accessor for PlayerLiveEventMonitor()
{
  result = qword_1EE29A410;
  if (!qword_1EE29A410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3B42718()
{
  sub_1E38C734C(319, &qword_1EE28A000, &type metadata for PlayerLiveEventMonitor.PlayheadPosition, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1E41FFCB4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PlayerLiveEventMonitor.PlayheadPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3B42920()
{
  sub_1E3B443D8(&qword_1ECF33A48, type metadata accessor for TVPMediaItemMetadataKey);
  sub_1E3B443D8(&unk_1ECF33A50, type metadata accessor for TVPMediaItemMetadataKey);

  return sub_1E4207764();
}

uint64_t sub_1E3B429DC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1E3280A90(0, &qword_1ECF339F8);
      result = sub_1E4206314();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

size_t sub_1E3B42A48()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E3B42AD4(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

size_t sub_1E3B42A94(size_t result)
{
  v2 = *(*v1 + 24);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1E3B42AD4(v2 > 1, result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

size_t sub_1E3B42AD4(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1E3B42CC0(v8, v7);
  v10 = *(sub_1E41FE5D4() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E3B42DBC(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_1E3B42BC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A080);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

size_t sub_1E3B42CC0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF339E0);
  v4 = *(sub_1E41FE5D4() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3B42DBC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1E41FE5D4(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1E41FE5D4();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1E3B42E90()
{
  v0 = sub_1E4205F14();
  v2 = v1;
  if (v0 == sub_1E4205F14() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E42079A4();
  }

  return v5 & 1;
}

BOOL sub_1E3B42F1C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v13 = *v6;
    v9 = v13;
    v10 = a1(&v13);
    if (v3)
    {

      return v7 != 0;
    }

    v11 = v10;

    ++v6;
  }

  while ((v11 & 1) == 0);
  return v7 != 0;
}

uint64_t sub_1E3B42FC4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1E34AF5E0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1E3B43040(v6);
  return sub_1E4207554();
}

void sub_1E3B43040(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1E4207914();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1E3B429DC(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1E3B4338C(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1E3B43120(0, v3, 1, a1);
  }
}

void sub_1E3B43120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = sub_1E41FE5D4();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v28 - v11;
  v29 = a2;
  if (a3 != a2)
  {
    v12 = *a4;
    v33 = (v10 + 8);
    v37 = v12;
    v13 = v12 + 8 * a3 - 8;
    v14 = a1 - a3;
    while (2)
    {
      v31 = v13;
      v32 = a3;
      v15 = *(v37 + 8 * a3);
      v30 = v14;
      v16 = v13;
      do
      {
        v17 = *v16;
        v18 = v15;
        v38 = v18;
        v19 = v17;
        v20 = [v18 startDate];
        v21 = v35;
        sub_1E41FE584();

        v22 = [v19 startDate];
        v23 = v36;
        sub_1E41FE584();

        sub_1E3B443D8(&qword_1ECF2F220, MEMORY[0x1E6969530]);
        v24 = v34;
        LOBYTE(v22) = sub_1E4205E14();
        v25 = *v33;
        (*v33)(v23, v24);
        v25(v21, v24);

        if (v22)
        {
          break;
        }

        if (!v37)
        {
          __break(1u);
          return;
        }

        v26 = *v16;
        v15 = *(v16 + 8);
        *v16 = v15;
        *(v16 + 8) = v26;
        v16 -= 8;
      }

      while (!__CFADD__(v14++, 1));
      a3 = v32 + 1;
      v13 = v31 + 8;
      v14 = v30 - 1;
      if (v32 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1E3B4338C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v118 = a1;
  v127 = sub_1E41FE5D4();
  MEMORY[0x1EEE9AC00](v127);
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v128 = &v114 - v10;
  v122 = a3;
  v11 = a3[1];
  if (v11 < 1)
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v130 = *v118;
    if (!v130)
    {
      goto LABEL_133;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v123;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_94:
      v107 = v13 + 16;
      v108 = *(v13 + 2);
      while (v108 >= 2)
      {
        if (!*v122)
        {
          goto LABEL_130;
        }

        v109 = v13;
        v110 = &v13[16 * v108];
        v111 = *v110;
        v13 = &v107[2 * v108];
        v112 = *(v13 + 1);
        sub_1E3B43CA4((*v122 + 8 * *v110), (*v122 + 8 * *v13), (*v122 + 8 * v112), v130);
        if (v4)
        {
          break;
        }

        if (v112 < v111)
        {
          goto LABEL_118;
        }

        if (v108 - 2 >= *v107)
        {
          goto LABEL_119;
        }

        *v110 = v111;
        *(v110 + 1) = v112;
        v113 = *v107 - v108;
        if (*v107 < v108)
        {
          goto LABEL_120;
        }

        v108 = *v107 - 1;
        memmove(v13, v13 + 16, 16 * v113);
        *v107 = v108;
        v13 = v109;
      }

LABEL_102:

      return;
    }

LABEL_127:
    v13 = sub_1E37FFF5C(v13);
    goto LABEL_94;
  }

  v115 = a4;
  v12 = 0;
  v126 = (v9 + 8);
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v14 = v12++;
    if (v12 < v11)
    {
      v116 = v13;
      v15 = *(*v122 + 8 * v12);
      v16 = v14;
      v17 = (*v122 + 8 * v14);
      v119 = (8 * v14);
      v19 = *v17;
      v18 = v17 + 2;
      v20 = v15;
      v130 = v20;
      v21 = v19;
      v124 = v21;
      v22 = [v20 startDate];
      v23 = v128;
      sub_1E41FE584();

      v24 = [v21 startDate];
      v25 = v129;
      sub_1E41FE584();

      v26 = sub_1E3B443D8(&qword_1ECF2F220, MEMORY[0x1E6969530]);
      v4 = v127;
      v121 = v26;
      LODWORD(v125) = sub_1E4205E14();
      v13 = v126;
      v27 = *v126;
      (*v126)(v25, v4);
      v120 = v27;
      (v27)(v23, v4);

      v117 = v16;
      v28 = (v16 + 2);
      while (1)
      {
        v29 = v28;
        v30 = (v12 + 1);
        if (v30 >= v11)
        {
          break;
        }

        v32 = *(v18 - 1);
        v31 = *v18;
        v130 = v29;
        v13 = v31;
        v33 = v32;
        v34 = [v13 startDate];
        v124 = v30;
        v35 = v128;
        sub_1E41FE584();

        v36 = [v33 startDate];
        v37 = v11;
        v38 = v129;
        sub_1E41FE584();

        v4 = v127;
        LODWORD(v36) = sub_1E4205E14() & 1;
        v39 = v120;
        (v120)(v38, v4);
        v40 = v35;
        v12 = v124;
        v39(v40, v4);
        v11 = v37;

        v29 = v130;
        ++v18;
        v28 = (v130 + 1);
        if ((v125 & 1) != v36)
        {
          goto LABEL_9;
        }
      }

      v12 = v11;
LABEL_9:
      if (v125)
      {
        v13 = v116;
        v14 = v117;
      }

      else
      {
        v14 = v117;
        if (v12 < v117)
        {
          goto LABEL_124;
        }

        if (v117 >= v12)
        {
          v13 = v116;
        }

        else
        {
          if (v11 >= v29)
          {
            v41 = v29;
          }

          else
          {
            v41 = v11;
          }

          v42 = 8 * v41 - 8;
          v43 = v12;
          v44 = v117;
          v13 = v116;
          v45 = v119;
          do
          {
            if (v44 != --v43)
            {
              v46 = *v122;
              if (!*v122)
              {
                goto LABEL_131;
              }

              v47 = *&v45[v46];
              *&v45[v46] = *(v46 + v42);
              *(v46 + v42) = v47;
            }

            ++v44;
            v42 -= 8;
            v45 += 8;
          }

          while (v44 < v43);
        }
      }
    }

    v48 = v122[1];
    if (v12 < v48)
    {
      if (__OFSUB__(v12, v14))
      {
        goto LABEL_123;
      }

      if (v12 - v14 < v115)
      {
        break;
      }
    }

LABEL_39:
    if (v12 < v14)
    {
      goto LABEL_122;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1E37FFF70(0, *(v13 + 2) + 1, 1, v13);
    }

    v64 = *(v13 + 2);
    v63 = *(v13 + 3);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v13 = sub_1E37FFF70((v63 > 1), v64 + 1, 1, v13);
    }

    *(v13 + 2) = v65;
    v66 = v13 + 32;
    v67 = &v13[16 * v64 + 32];
    *v67 = v14;
    *(v67 + 1) = v12;
    v130 = *v118;
    if (!v130)
    {
      goto LABEL_132;
    }

    if (v64)
    {
      while (1)
      {
        v68 = v65 - 1;
        v69 = &v66[16 * v65 - 16];
        v70 = &v13[16 * v65];
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v71 = *(v13 + 4);
          v72 = *(v13 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_59:
          if (v74)
          {
            goto LABEL_109;
          }

          v86 = *v70;
          v85 = *(v70 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_112;
          }

          v90 = *(v69 + 1);
          v91 = v90 - *v69;
          if (__OFSUB__(v90, *v69))
          {
            goto LABEL_115;
          }

          if (__OFADD__(v88, v91))
          {
            goto LABEL_117;
          }

          if (v88 + v91 >= v73)
          {
            if (v73 < v91)
            {
              v68 = v65 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v65 < 2)
        {
          goto LABEL_111;
        }

        v93 = *v70;
        v92 = *(v70 + 1);
        v81 = __OFSUB__(v92, v93);
        v88 = v92 - v93;
        v89 = v81;
LABEL_74:
        if (v89)
        {
          goto LABEL_114;
        }

        v95 = *v69;
        v94 = *(v69 + 1);
        v81 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v81)
        {
          goto LABEL_116;
        }

        if (v96 < v88)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v68 - 1 >= v65)
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*v122)
        {
          goto LABEL_129;
        }

        v100 = v13;
        v101 = &v66[16 * v68 - 16];
        v102 = *v101;
        v4 = v66;
        v13 = &v66[16 * v68];
        v103 = *(v13 + 1);
        v104 = v123;
        sub_1E3B43CA4((*v122 + 8 * *v101), (*v122 + 8 * *v13), (*v122 + 8 * v103), v130);
        v123 = v104;
        if (v104)
        {
          goto LABEL_102;
        }

        if (v103 < v102)
        {
          goto LABEL_104;
        }

        v105 = *(v100 + 2);
        if (v68 > v105)
        {
          goto LABEL_105;
        }

        *v101 = v102;
        *(v101 + 1) = v103;
        if (v68 >= v105)
        {
          goto LABEL_106;
        }

        v65 = v105 - 1;
        memmove(v13, v13 + 16, 16 * (v105 - 1 - v68));
        v13 = v100;
        *(v100 + 2) = v105 - 1;
        v66 = v4;
        if (v105 <= 2)
        {
          goto LABEL_88;
        }
      }

      v75 = &v66[16 * v65];
      v76 = *(v75 - 8);
      v77 = *(v75 - 7);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_107;
      }

      v80 = *(v75 - 6);
      v79 = *(v75 - 5);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_108;
      }

      v82 = *(v70 + 1);
      v83 = v82 - *v70;
      if (__OFSUB__(v82, *v70))
      {
        goto LABEL_110;
      }

      v81 = __OFADD__(v73, v83);
      v84 = v73 + v83;
      if (v81)
      {
        goto LABEL_113;
      }

      if (v84 >= v78)
      {
        v98 = *v69;
        v97 = *(v69 + 1);
        v81 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v81)
        {
          goto LABEL_121;
        }

        if (v73 < v99)
        {
          v68 = v65 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v11 = v122[1];
    if (v12 >= v11)
    {
      goto LABEL_92;
    }
  }

  v49 = (v14 + v115);
  if (__OFADD__(v14, v115))
  {
    goto LABEL_125;
  }

  if (v49 >= v48)
  {
    v49 = v122[1];
  }

  if (v49 < v14)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v12 == v49)
  {
    goto LABEL_39;
  }

  v116 = v13;
  v117 = v14;
  v125 = *v122;
  v50 = v125 + 8 * v12 - 8;
  v51 = (v14 - v12);
  v119 = v49;
LABEL_32:
  v124 = v12;
  v52 = *(v125 + 8 * v12);
  v120 = v51;
  v121 = v50;
  while (1)
  {
    v53 = *v50;
    v54 = v52;
    v130 = v54;
    v55 = v53;
    v56 = [v54 startDate];
    v57 = v128;
    sub_1E41FE584();

    v58 = [v55 startDate];
    v59 = v129;
    sub_1E41FE584();

    sub_1E3B443D8(&qword_1ECF2F220, MEMORY[0x1E6969530]);
    v4 = v127;
    LOBYTE(v58) = sub_1E4205E14();
    v60 = *v126;
    (*v126)(v59, v4);
    (v60)(v57, v4);

    if (v58)
    {
LABEL_37:
      v12 = (v124 + 1);
      v50 = v121 + 8;
      v51 = v120 - 1;
      if (v124 + 1 == v119)
      {
        v12 = v119;
        v13 = v116;
        v14 = v117;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v125)
    {
      break;
    }

    v61 = *v50;
    v52 = *(v50 + 8);
    *v50 = v52;
    *(v50 + 8) = v61;
    v50 -= 8;
    if (__CFADD__(v51++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
}

uint64_t sub_1E3B43CA4(id *a1, id *a2, id *a3, void **a4)
{
  v56 = sub_1E41FE5D4();
  v8 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v49 - v11;
  v12 = a2 - a1;
  v13 = a3 - a2;
  if (v12 < v13)
  {
    v14 = a4 == a1 && &a1[v12] > a4;
    v15 = a4;
    if (!v14)
    {
      memmove(a4, a1, 8 * v12);
    }

    v16 = &a4[v12];
    v52 = (v8 + 8);
    v53 = v16;
    for (i = a3; ; a3 = i)
    {
      if (v15 >= v16 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_38;
      }

      v59 = a1;
      v18 = *v15;
      v19 = *a2;
      v55 = v19;
      v20 = v18;
      v21 = [v19 startDate];
      v22 = v57;
      sub_1E41FE584();

      v23 = [v20 startDate];
      v24 = v58;
      sub_1E41FE584();

      sub_1E3B443D8(&qword_1ECF2F220, MEMORY[0x1E6969530]);
      v25 = a2;
      v26 = v56;
      LOBYTE(v23) = sub_1E4205E14();
      v27 = *v52;
      (*v52)(v24, v26);
      v27(v22, v26);

      if ((v23 & 1) == 0)
      {
        break;
      }

      v28 = v15;
      v29 = v59;
      v30 = v59 == v15++;
      a2 = v25;
      if (!v30)
      {
        goto LABEL_17;
      }

LABEL_18:
      a1 = v29 + 1;
      v16 = v53;
    }

    v28 = v25;
    a2 = v25 + 1;
    v29 = v59;
    if (v59 == v25)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v29 = *v28;
    goto LABEL_18;
  }

  if (a4 != a2 || &a2[v13] <= a4)
  {
    memmove(a4, a2, 8 * v13);
  }

  v16 = &a4[v13];
  v50 = (v8 + 8);
  v51 = a4;
  v15 = a4;
  v59 = a1;
LABEL_25:
  v32 = a2 - 1;
  v33 = a3 - 1;
  v52 = a2 - 1;
  v53 = a2;
  while (v16 > v15 && a2 > a1)
  {
    v35 = v33;
    v36 = *v32;
    v37 = *(v16 - 1);
    v55 = v37;
    v38 = v36;
    i = v38;
    v39 = [v37 startDate];
    v40 = v57;
    sub_1E41FE584();

    v41 = [v38 startDate];
    v42 = v58;
    sub_1E41FE584();

    sub_1E3B443D8(&qword_1ECF2F220, MEMORY[0x1E6969530]);
    v43 = v56;
    LOBYTE(v41) = sub_1E4205E14();
    v44 = *v50;
    (*v50)(v42, v43);
    v44(v40, v43);

    if ((v41 & 1) == 0)
    {
      a3 = v35;
      v45 = v52;
      a2 = v52;
      v15 = v51;
      a1 = v59;
      if (v35 + 1 != v53)
      {
        *v35 = *v52;
        a2 = v45;
      }

      goto LABEL_25;
    }

    if (v16 != v35 + 1)
    {
      *v35 = *(v16 - 1);
    }

    v33 = v35 - 1;
    --v16;
    v15 = v51;
    v32 = v52;
    a2 = v53;
    a1 = v59;
  }

LABEL_38:
  v46 = v16 - v15;
  if (a2 != v15 || a2 >= &v15[v46])
  {
    memmove(a2, v15, 8 * v46);
  }

  return 1;
}

uint64_t sub_1E3B4413C(void *a1)
{
  v2 = [a1 classifyingLabel];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E3B441AC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1E4207384();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1E37FEA14(v4, 0);
      sub_1E3B44240((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_1E3B44240(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1E3280A90(0, &qword_1ECF339F8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E32752B0(&unk_1ECF33A00, &qword_1ECF339F0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF339F0);
          v9 = sub_1E374111C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3B443D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3B44420()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3B444B0;

  return sub_1E3B40A98();
}

uint64_t sub_1E3B444B0()
{
  OUTLINED_FUNCTION_24();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E3B445B8(uint64_t a1, const char *a2)
{
  OUTLINED_FUNCTION_7_4();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;

    v7 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_53_26();
    if (os_log_type_enabled(v7, v2))
    {
      OUTLINED_FUNCTION_6_21();
      OUTLINED_FUNCTION_11_16();
      OUTLINED_FUNCTION_4_125(4.8149e-34);
      v9 = *(v8 + 216);

      v9(v10);
      OUTLINED_FUNCTION_25_56();
      v11 = OUTLINED_FUNCTION_210();
      sub_1E3270FC8(v11, v12, v13);
      OUTLINED_FUNCTION_57_17();
      *(v3 + 4) = v6;
      _os_log_impl(&dword_1E323F000, v7, v2, a2, v3, 0xCu);
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_21_0();
    }

    sub_1E3B3FC4C();
  }

  return result;
}

uint64_t sub_1E3B446DC()
{
  OUTLINED_FUNCTION_7_4();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_stateChangeObserver;
    if (*(result + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_stateChangeObserver))
    {

      sub_1E42004E4();
    }

    *(v1 + v2) = 0;

    sub_1E3B408A0();
  }

  return result;
}

uint64_t sub_1E3B44764()
{
  OUTLINED_FUNCTION_7_4();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;

    v3 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_83_6();
    if (OUTLINED_FUNCTION_58_20())
    {
      OUTLINED_FUNCTION_6_21();
      v4 = OUTLINED_FUNCTION_36_6();
      v16[0] = v4;
      *v0 = 136315138;
      OUTLINED_FUNCTION_111();
      v6 = *(v5 + 216);

      v8 = v6(v7);
      v10 = v9;

      v11 = sub_1E3270FC8(v8, v10, v16);

      *(v0 + 4) = v11;
      OUTLINED_FUNCTION_13_24(&dword_1E323F000, v12, v13, "%s Current media item did change");
      __swift_destroy_boxed_opaque_existential_1(v4);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    *(v2 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_hasPlaybackStartedAndHasPlaybackDate) = 0;
    v14 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_playbackDatePollTask;
    if (*(v2 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_playbackDatePollTask))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
      sub_1E42064D4();
    }

    *(v2 + v14) = 0;

    v15 = OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_stateChangeObserver;
    if (*(v2 + OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_stateChangeObserver))
    {

      sub_1E42004E4();
    }

    *(v2 + v15) = 0;

    sub_1E3B41698();
    sub_1E3B3FC4C();
    sub_1E3B3E4D4();
  }

  return result;
}

uint64_t sub_1E3B44940()
{
  OUTLINED_FUNCTION_7_4();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E3B3FC4C();
  }

  return result;
}

uint64_t sub_1E3B4498C()
{
  OUTLINED_FUNCTION_7_4();
  result = swift_weakLoadStrong();
  if (result)
  {

    v2 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_83_6();
    if (OUTLINED_FUNCTION_58_20())
    {
      OUTLINED_FUNCTION_6_21();
      v3 = OUTLINED_FUNCTION_36_6();
      v13[0] = v3;
      *v0 = 136315138;
      OUTLINED_FUNCTION_111();
      v5 = *(v4 + 216);

      v7 = v5(v6);
      v9 = v8;

      v10 = sub_1E3270FC8(v7, v9, v13);

      *(v0 + 4) = v10;
      OUTLINED_FUNCTION_13_24(&dword_1E323F000, v11, v12, "%s Received date range metadata groups");
      __swift_destroy_boxed_opaque_existential_1(v3);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    sub_1E3B41698();
    sub_1E3B3EFE8();
    sub_1E3B3FC4C();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_53_26()
{
}

uint64_t OUTLINED_FUNCTION_57_17()
{
}

BOOL OUTLINED_FUNCTION_58_20()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_74_13(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

id OUTLINED_FUNCTION_77_12()
{
  v4 = *(v2 - 304);

  return sub_1E37F9910(v0, v1, v4);
}

uint64_t OUTLINED_FUNCTION_83_6()
{
}

void *sub_1E3B44C90(uint64_t a1, __int16 *a2, uint64_t *a3, void *a4, __objc2_class **a5)
{
  v9 = (*a4 + 1584);
  v10 = *v9;
  (*v9)();
  if (sub_1E389CC78())
  {
    goto LABEL_2;
  }

  v10();
  if ((sub_1E389CC78() & 1) == 0)
  {
LABEL_9:
    v19 = a1;
    v12 = *a3;
    if (*a3 == 2)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v18[1] = 0;
      v18[2] = 0;
    }

    else
    {
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = *(a3 + 1);
      *(v13 + 40) = *(a3 + 3);
      *(v13 + 55) = *(a3 + 39);
      v15 = &off_1F5D621F8;
      v14 = &type metadata for CollectionViewCellContext;
    }

    v18[0] = v13;
    v18[3] = v14;
    v18[4] = v15;
    type metadata accessor for UIFactory();
    v16 = sub_1E3280A90(0, &qword_1EE23B120);
    sub_1E38E5240(a2, &v19, v18, 0, 0, v16, &v20);
    sub_1E325F748(v18, &qword_1ECF296C0);
    return v20;
  }

  if ((sub_1E373F6E0() & 1) == 0 && (sub_1E373F6E0() & 1) == 0)
  {
LABEL_2:
    if (TVAppFeature.isEnabled.getter(10))
    {
      goto LABEL_9;
    }
  }

  if (a1)
  {
    type metadata accessor for SearchListCell();
    v11 = swift_dynamicCastClass();
  }

  else
  {
    v11 = 0;
  }

  sub_1E3B44E70(a2, v11, a5);
  return v11;
}

uint64_t sub_1E3B44E70(__int16 *a1, void *a2, __objc2_class **a3)
{
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v196 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v191 = v17 - v16;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D250);
  MEMORY[0x1EEE9AC00](v198);
  v199 = &v189 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v189 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v25);
  v201 = &v189 - v26;
  if (!a2)
  {
    v180 = sub_1E324FBDC();
    (*(v8 + 16))(v12, v180, v6);

    v181 = v12;
    v182 = sub_1E41FFC94();
    v183 = sub_1E4206814();

    if (os_log_type_enabled(v182, v183))
    {
      v184 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      __src[0] = v185;
      *v184 = 136315138;
      sub_1E384EE08(a1[49]);
      v188 = sub_1E3270FC8(v186, v187, __src);

      *(v184 + 4) = v188;
      _os_log_impl(&dword_1E323F000, v182, v183, "SearchListCell: Failed to get correct cell for [%s]", v184, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v185);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v8 + 8))(v181, v6);
    OUTLINED_FUNCTION_15_88();
    v189 = 102;
    OUTLINED_FUNCTION_6_102();
    goto LABEL_72;
  }

  v27 = *(*a1 + 488);
  v28 = a2;
  v29 = v27();
  if (!v29)
  {
LABEL_12:

    v64 = v28;
    return a2;
  }

  if (!*(v29 + 16))
  {

    goto LABEL_12;
  }

  v202 = v29;
  if (a3 && *a3 == _TtC8VideosUI26LegacySearchListCellLayout)
  {
    v189 = a1;
    v193 = v22;
    OUTLINED_FUNCTION_9_87();
    v31 = *(v30 + 184);
    v32 = swift_retain_n();
    v31(v32);
    v190 = objc_opt_self();
    v33 = [v190 isSearchEnabled];
    v203 = a2;
    if (v33)
    {
      type metadata accessor for UIFactory();
      v34 = sub_1E373E010(16, v202);
      OUTLINED_FUNCTION_13_92();
      v36 = (*(v35 + 200))();
      OUTLINED_FUNCTION_3_124();
      v37 = sub_1E37BD068();
      sub_1E3280A90(0, &qword_1EE23AD40);
      sub_1E393D92C(v34, v36, __src, v37);

      sub_1E325F748(__src, &qword_1ECF296C0);
      OUTLINED_FUNCTION_9_87();
      v38 = OUTLINED_FUNCTION_4_126();
      v39(v38);
    }

    v40 = type metadata accessor for UIFactory();
    v41 = v202;
    v42 = sub_1E373E010(23, v202);
    OUTLINED_FUNCTION_9_87();
    v44 = (*(v43 + 224))();
    OUTLINED_FUNCTION_3_124();
    v45 = sub_1E374EA2C();
    sub_1E3280A90(0, &qword_1EE23AD40);
    sub_1E393D92C(v42, v44, __src, v45);

    sub_1E325F748(__src, &qword_1ECF296C0);
    OUTLINED_FUNCTION_13_92();
    v46 = OUTLINED_FUNCTION_4_126();
    v47(v46);
    v48 = sub_1E373E010(15, v41);
    OUTLINED_FUNCTION_13_92();
    v50 = (*(v49 + 248))();
    OUTLINED_FUNCTION_3_124();
    v200 = a3;
    v51 = sub_1E374EA94();
    v192 = v40;
    sub_1E393D92C(v48, v50, __src, v51);

    v52 = MEMORY[0x1E69E7D40];
    sub_1E325F748(__src, &qword_1ECF296C0);
    OUTLINED_FUNCTION_7_119();
    v53 = OUTLINED_FUNCTION_4_126();
    v54(v53);
    OUTLINED_FUNCTION_7_119();
    v56 = (*((*v52 & v55) + 0x110))();
    if (v56)
    {
      v57 = v56;
      v58 = [v56 latestImageURL];

      v59 = v199;
      v60 = v197;
      if (v58)
      {
        v61 = v195;
        sub_1E41FE3C4();

        v62 = 0;
        v63 = v193;
      }

      else
      {
        v62 = 1;
        v63 = v193;
        v61 = v195;
      }

      __swift_storeEnumTagSinglePayload(v61, v62, 1, v13);
      sub_1E327D738(v61, v60);
      if (OUTLINED_FUNCTION_18_59(v60) != 1)
      {
        sub_1E41FE3A4();
        (*(v196 + 8))(v60, v13);
        v65 = 0;
LABEL_18:
        v66 = v201;
        __swift_storeEnumTagSinglePayload(v201, v65, 1, v13);
        sub_1E3B46A74(v202, v63);
        v67 = *(v198 + 48);
        sub_1E38B2468(v63, v59);
        sub_1E38B2468(v66, v59 + v67);
        if (OUTLINED_FUNCTION_18_59(v59) == 1)
        {
          if (OUTLINED_FUNCTION_18_59(v59 + v67) == 1)
          {
            sub_1E325F748(v59, &unk_1ECF363C0);
            v68 = 0;
            goto LABEL_25;
          }
        }

        else
        {
          v69 = v194;
          sub_1E38B2468(v59, v194);
          if (OUTLINED_FUNCTION_18_59(v59 + v67) != 1)
          {
            v70 = v196;
            v71 = v191;
            (*(v196 + 32))(v191, v59 + v67, v13);
            sub_1E3B46C90();
            v72 = sub_1E4205E84();
            v73 = *(v70 + 8);
            v73(v71, v13);
            v73(v69, v13);
            sub_1E325F748(v59, &unk_1ECF363C0);
            v68 = v72 ^ 1;
LABEL_25:
            v74 = v68 & 1;
            v75 = j__OUTLINED_FUNCTION_18();
            v76 = j__OUTLINED_FUNCTION_18();
            sub_1E3DF9EB0(0, 0, 1, 0, 0, 1, v75 & 1, 0, __src, 0, 1, 2, 1, 0, v76 & 1, v74);
            sub_1E373E010(39, v202);
            OUTLINED_FUNCTION_7_119();
            v78 = *((*v52 & v77) + 0x110);
            v79 = v78();
            *(&v205 + 1) = &unk_1F5D869A0;
            v206 = &off_1F5D868A0;
            *&v204 = swift_allocObject();
            memcpy((v204 + 16), __src, 0x52uLL);
            sub_1E38A86A4();
            sub_1E3280A90(0, &qword_1EE23B360);
            v80 = OUTLINED_FUNCTION_2_119();
            v199 = v81;
            sub_1E393D92C(v80, v82, v83, v84);

            sub_1E325F748(&v204, &qword_1ECF296C0);
            v85 = OUTLINED_FUNCTION_4_126();
            v86(v85);
            v87 = *sub_1E38A86A4();
            (*(v87 + 552))(v208);
            v88 = *v208;
            v89 = *&v208[1];
            v90 = *&v208[2];
            v91 = *&v208[3];

            v93 = 0.0;
            if ((v209 & 1) == 0)
            {
              v93 = sub_1E3952BE8(v88, v89, v90, v91);
            }

            v94 = (v78)(v92);
            if (v94)
            {
              v95 = v94;
              v96 = [v94 vuiLayer];

              [v96 setCornerRadius_];
            }

            v97 = v202;
            sub_1E373E010(41, v202);
            a2 = v203;
            OUTLINED_FUNCTION_7_119();
            v98 = MEMORY[0x1E69E7D40];
            v100 = (*((*MEMORY[0x1E69E7D40] & v99) + 0x128))();
            OUTLINED_FUNCTION_4_3();
            sub_1E3AFF5D8();
            sub_1E3280A90(0, &unk_1EE23B2D0);
            v101 = OUTLINED_FUNCTION_14_98();
            v102 = v192;
            sub_1E393D92C(v101, v103, v104, v105);

            sub_1E325F748(&v204, &qword_1ECF296C0);
            OUTLINED_FUNCTION_7_119();
            v106 = OUTLINED_FUNCTION_4_126();
            v107(v106);
            v108 = sub_1E373E010(155, v97);
            if (v108)
            {
              v109 = v108;
              (*(*v108 + 488))();
              OUTLINED_FUNCTION_17_75();

              v100 = sub_1E373E010(53, v109);

              if (v100)
              {

                OUTLINED_FUNCTION_1_144();
                v111 = *(v110 + 392);

                v113 = v111(v112);
                OUTLINED_FUNCTION_4_3();
                v114 = sub_1E3AFF75C();
LABEL_34:
                v118 = v114;
                sub_1E3280A90(0, &qword_1EE23AE80);
                sub_1E393D92C(v100, v113, &v204, v118);
                OUTLINED_FUNCTION_17_75();

                sub_1E325F748(&v204, &qword_1ECF296C0);
                OUTLINED_FUNCTION_7_119();
                v119 = OUTLINED_FUNCTION_4_126();
                v120(v119);

LABEL_36:
                sub_1E3AFF6D0();
                OUTLINED_FUNCTION_11_87();
                v124 = v123;
                (*(v122 + 936))();
                OUTLINED_FUNCTION_12_81();
                if ((v100 == 2 || (v124 & 1) == 0) && (v125 = sub_1E373E010(67, v97)) != 0)
                {
                  LODWORD(v100) = v125;
                  OUTLINED_FUNCTION_1_144();
                  v127 = *(v126 + 344);

                  v129 = v127(v128);
                  if (v129)
                  {
                    v130 = v129;
                    type metadata accessor for ContextMenuButton();
                    v131 = swift_dynamicCastClass();
                    if (!v131)
                    {
                    }
                  }

                  else
                  {
                    v131 = 0;
                  }

                  OUTLINED_FUNCTION_4_3();
                  sub_1E3AFF6D0();
                  type metadata accessor for ContextMenuButton();
                  v150 = OUTLINED_FUNCTION_2_119();
                  sub_1E393D92C(v150, v151, v152, v153);
                  OUTLINED_FUNCTION_17_75();

                  sub_1E325F748(&v204, &qword_1ECF296C0);
                  if (v102)
                  {
                    v154 = OBJC_IVAR____TtC8VideosUI17ContextMenuButton_lockupViewModel;
                    swift_beginAccess();
                    *&v102[v154] = v189;
                    v155 = v102;
                  }

                  OUTLINED_FUNCTION_1_144();
                  v157 = *(v156 + 352);
                  v158 = v102;
                  v159 = OUTLINED_FUNCTION_4_126();
                  v157(v159);
                }

                else
                {
                  sub_1E3AFF644();
                  OUTLINED_FUNCTION_11_87();
                  v134 = v133;
                  (*(v132 + 936))();
                  OUTLINED_FUNCTION_12_81();
                  if ((v100 == 2 || (v134 & 1) == 0) && (v135 = sub_1E373E010(59, v97)) != 0)
                  {
                    LODWORD(v100) = v135;
                    OUTLINED_FUNCTION_1_144();
                    v136 += 43;
                    v137 = *v136;
                    v138 = (*v136)();
                    if (!v138 || (v139 = v138, type metadata accessor for ContextMenuButton(), v140 = swift_dynamicCastClass(), v139, v141 = 0, !v140))
                    {
                      v141 = v137();
                    }

                    OUTLINED_FUNCTION_4_3();

                    sub_1E3AFF644();
                    sub_1E3280A90(0, &qword_1EE23ACF0);
                    v142 = OUTLINED_FUNCTION_2_119();
                    sub_1E393D92C(v142, v143, v144, v145);
                    OUTLINED_FUNCTION_17_75();

                    sub_1E325F748(&v204, &qword_1ECF296C0);
                    if (v102)
                    {
                      [v102 setUsesSymbolPointerInteraction_];
                    }

                    OUTLINED_FUNCTION_13_92();
                    a2 = *(v146 - 256);
                    v147 = OUTLINED_FUNCTION_4_126();
                    v148(v147);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_1_144();
                    (*(v149 + 352))(0);
                  }
                }

                sub_1E38A8794();
                OUTLINED_FUNCTION_11_87();
                v162 = v161;
                (*(v160 + 936))();
                OUTLINED_FUNCTION_12_81();
                if (v100 == 2 || (v162 & 1) == 0)
                {
                  sub_1E373E010(31, v97);
                  OUTLINED_FUNCTION_7_119();
                  v164 = (*((*v98 & v163) + 0x140))();
                  OUTLINED_FUNCTION_4_3();
                  sub_1E38A8794();
                  v165 = OUTLINED_FUNCTION_14_98();
                  sub_1E393D92C(v165, v166, v167, v168);

                  sub_1E325F748(&v204, &qword_1ECF296C0);
                }

                OUTLINED_FUNCTION_1_144();
                v169 = OUTLINED_FUNCTION_4_126();
                v170(v169);
                if ([v190 isSearchEnabled])
                {
                  v171 = sub_1E373E010(79, v97);

                  if (v171 && (v173 = (*(*v171 + 488))(v172), , v173))
                  {
                    v174 = sub_1E373E010(9, v173);
                  }

                  else
                  {
                    v174 = 0;
                  }

                  OUTLINED_FUNCTION_1_144();
                  v176 = (*(v175 + 368))();
                  sub_1E3280A90(0, &qword_1EE23AE80);
                  v204 = 0u;
                  v205 = 0u;
                  v206 = 0;
                  sub_1E393D92C(v174, v176, &v204, 0);

                  sub_1E325F748(&v204, &qword_1ECF296C0);
                  OUTLINED_FUNCTION_7_119();
                  v177 = OUTLINED_FUNCTION_4_126();
                  v178(v177);
                }

                else
                {
                }

                sub_1E325F748(v193, &unk_1ECF363C0);
                sub_1E325F748(v201, &unk_1ECF363C0);
                return a2;
              }

              v100 = sub_1E373E010(54, v109);

              if (v100)
              {
                OUTLINED_FUNCTION_1_144();
                v116 = *(v115 + 392);

                v113 = v116(v117);
                OUTLINED_FUNCTION_4_3();
                v114 = sub_1E3AFF8D0();
                goto LABEL_34;
              }
            }

            OUTLINED_FUNCTION_1_144();
            (*(v121 + 400))(0);
            goto LABEL_36;
          }

          (*(v196 + 8))(v69, v13);
        }

        sub_1E325F748(v59, &qword_1ECF2D250);
        v68 = 1;
        goto LABEL_25;
      }
    }

    else
    {
      v60 = v197;
      __swift_storeEnumTagSinglePayload(v197, 1, 1, v13);
      v63 = v193;
      v59 = v199;
    }

    sub_1E325F748(v60, &unk_1ECF363C0);
    v65 = 1;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_15_88();
  v189 = 111;
  OUTLINED_FUNCTION_6_102();
LABEL_72:
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

uint64_t sub_1E3B46574(__int16 *a1, void *a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  if (!a2)
  {
    v23 = sub_1E324FBDC();
    v32 = v6;
    (*(v6 + 16))(v10, v23, v4);

    v24 = v10;
    v25 = sub_1E41FFC94();
    v26 = sub_1E4206814();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35[0] = v28;
      *v27 = 136315138;
      sub_1E384EE08(a1[49]);
      v31 = sub_1E3270FC8(v29, v30, v35);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1E323F000, v25, v26, "HintListCell: Failed to get correct cell for [%s]", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v32 + 8))(v24, v4);
    OUTLINED_FUNCTION_15_88();
    OUTLINED_FUNCTION_6_102();
    goto LABEL_24;
  }

  v11 = *(*a1 + 488);
  v12 = a2;
  v13 = v11();
  if (!v13)
  {
LABEL_13:

    v21 = v12;
    return a2;
  }

  v14 = v13;
  if (!*(v13 + 16))
  {

    goto LABEL_13;
  }

  if ((*(*a1 + 392))())
  {
    type metadata accessor for HintListCellLayout();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = v15;
      v17 = MEMORY[0x1E69E7D40];
      v18 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x80);

      v18(v16);
      v19 = sub_1E373E010(17, v14);

      if (v19)
      {
        if (*v19 == _TtC8VideosUI13TextViewModel && (*(*a1 + 552))(v20))
        {
          v35[3] = &unk_1F5D7BEF8;
          v35[4] = &off_1F5D7BC58;
          LOBYTE(v35[0]) = 3;
          sub_1E3F9F164(v35);

          if (!v37)
          {

            __swift_destroy_boxed_opaque_existential_1(v35);
            sub_1E325F748(v36, &unk_1ECF296E0);
            return a2;
          }

          if ((swift_dynamicCast() & 1) == 0)
          {

            __swift_destroy_boxed_opaque_existential_1(v35);
            return a2;
          }

          __swift_destroy_boxed_opaque_existential_1(v35);
          (*((*v17 & *v12) + 0xF0))(v33, v34, v19);
        }

        else
        {
        }
      }

      return a2;
    }
  }

  OUTLINED_FUNCTION_15_88();
  OUTLINED_FUNCTION_6_102();
LABEL_24:
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

uint64_t sub_1E3B46A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  if (*(a1 + 16) && (sub_1E3740AE8(39), (v7 & 1) != 0) && (type metadata accessor for ImageViewModel(), (v8 = swift_dynamicCastClass()) != 0) && (v9 = *(*v8 + 1016), , v9(7), v11 = v10, , v11))
  {
    sub_1E41FE404();

    v12 = sub_1E41FE414();
    if (__swift_getEnumTagSinglePayload(v6, 1, v12) == 1)
    {
      sub_1E325F748(v6, &unk_1ECF363C0);
      v13 = a2;
      v14 = 1;
    }

    else
    {
      sub_1E41FE3A4();
      (*(*(v12 - 8) + 8))(v6, v12);
      v13 = a2;
      v14 = 0;
    }

    return __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
  }

  else
  {
    v15 = sub_1E41FE414();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v15);
  }
}

unint64_t sub_1E3B46C90()
{
  result = qword_1ECF2D258;
  if (!qword_1ECF2D258)
  {
    sub_1E41FE414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D258);
  }

  return result;
}

double sub_1E3B46CE8@<D0>(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for LibMediaEntityTypeFactory();
  v7 = OUTLINED_FUNCTION_38();
  switch(sub_1E39CAC48(v7, a2))
  {
    case 1u:
      if (a2 >> 6)
      {
        if (a2 >> 6 == 1)
        {
          objc_opt_self();
          v25 = OUTLINED_FUNCTION_3_125();
          if (v25)
          {
            v26 = v25;
            v3 = type metadata accessor for LibSidebandShowMediaEntity();
            v27 = a1;
            v28 = sub_1E3A6723C(v26);
            v76 = v3;
            v29 = sub_1E3B475C4(&qword_1ECF33AC8, type metadata accessor for LibSidebandShowMediaEntity);
            v37 = v29;
            v77 = v29;
            v73 = v28;
            if (!v3)
            {
              goto LABEL_51;
            }

LABEL_49:
            v68 = OUTLINED_FUNCTION_4_127(v29, v30, v31, v32, v33, v34, v35, v36, v73);
            *(a3 + 24) = v3;
            v69 = *(v37 + 8);
            goto LABEL_50;
          }

          goto LABEL_35;
        }

        type metadata accessor for LibFamilySharingShowMediaEntity();
        OUTLINED_FUNCTION_38();

        v29 = sub_1E37C45E4();
        v44 = v29;
        if (v29)
        {
          v45 = &unk_1ECF33AC0;
          v46 = type metadata accessor for LibFamilySharingShowMediaEntity;
          goto LABEL_31;
        }

        v3 = 0;
        v37 = 0;
      }

      else
      {
        if ((a2 & 1) == 0)
        {
LABEL_35:
          OUTLINED_FUNCTION_28_0();
          goto LABEL_51;
        }

        v3 = type metadata accessor for LibMPShowMediaEntity();
        v29 = sub_1E37E9F8C(a1);
        v44 = v29;
        if (v29)
        {
          v45 = &unk_1EE26C480;
          v46 = type metadata accessor for LibMPShowMediaEntity;
LABEL_31:
          v29 = sub_1E3B475C4(v45, v46);
          v37 = v29;
          goto LABEL_48;
        }

        v37 = 0;
        v3 = 0;
      }

LABEL_48:
      v73 = v44;
      v74 = 0;
      v75 = 0;
      v76 = v3;
      v77 = v37;
      if (v3)
      {
        goto LABEL_49;
      }

LABEL_51:
      v43 = &qword_1ECF2A778;
LABEL_59:
      sub_1E325F748(&v73, v43);
      *(a3 + 32) = 0;
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    case 2u:
      if (a2 >> 6)
      {
        if (a2 >> 6 == 1)
        {
          objc_opt_self();
          v38 = OUTLINED_FUNCTION_3_125();
          if (v38)
          {
            v39 = v38;
            v3 = type metadata accessor for LibSidebandSeasonMediaEntity();
            v40 = a1;
            v41 = sub_1E3AF7C10(v39);
            if (v41)
            {
              v42 = sub_1E3B475C4(&qword_1ECF33AD8, type metadata accessor for LibSidebandSeasonMediaEntity);
            }

            else
            {
              v3 = 0;
              v42 = 0;
            }

            sub_1E3B47594(a1, a2);
            v73 = v41;
            goto LABEL_54;
          }

LABEL_36:
          OUTLINED_FUNCTION_28_0();
          goto LABEL_58;
        }

        type metadata accessor for LibFamilySharingSeasonMediaEntity();
        OUTLINED_FUNCTION_38();

        v47 = sub_1E414D398();
        v55 = v47;
        if (!v47)
        {
          v3 = 0;
          v42 = 0;
          goto LABEL_53;
        }

        v56 = &unk_1ECF33AD0;
        v57 = type metadata accessor for LibFamilySharingSeasonMediaEntity;
      }

      else
      {
        if ((a2 & 1) == 0)
        {
          goto LABEL_36;
        }

        v3 = type metadata accessor for LibMPSeasonMediaEntity();
        v47 = sub_1E3B6A35C(a1);
        v55 = v47;
        if (!v47)
        {
          v42 = 0;
          v3 = 0;
          goto LABEL_53;
        }

        v56 = &unk_1ECF33AE0;
        v57 = type metadata accessor for LibMPSeasonMediaEntity;
      }

      v47 = sub_1E3B475C4(v56, v57);
      v42 = v47;
LABEL_53:
      v73 = v55;
LABEL_54:
      v74 = 0;
      v75 = 0;
      v76 = v3;
      v77 = v42;
      if (v3)
      {
        v17 = OUTLINED_FUNCTION_4_127(v47, v48, v49, v50, v51, v52, v53, v54, v73);
        *(a3 + 24) = v3;
        v18 = *(v42 + 8);
        goto LABEL_56;
      }

LABEL_58:
      v43 = &qword_1ECF2D640;
      goto LABEL_59;
    case 3u:
      if (a2 >> 6)
      {
        if (a2 >> 6 != 1)
        {
          type metadata accessor for LibFamilySharingEpisodeMediaEntity();
          OUTLINED_FUNCTION_38();

          v58 = sub_1E3CEF970();
          v66 = v58;
          if (v58)
          {
            v58 = sub_1E3B475C4(&qword_1ECF33AE8, type metadata accessor for LibFamilySharingEpisodeMediaEntity);
            v67 = v58;
          }

          else
          {
            v3 = 0;
            v67 = 0;
          }

          v73 = v66;
          v74 = 0;
          v75 = 0;
          v76 = v3;
          v77 = v67;
          if (v3)
          {
            goto LABEL_39;
          }

LABEL_42:
          v43 = &qword_1ECF2CE70;
          goto LABEL_59;
        }

        objc_opt_self();
        v19 = OUTLINED_FUNCTION_3_125();
        if (v19)
        {
          v20 = v19;
          v3 = type metadata accessor for LibSidebandEpisodeMediaEntity();
          v21 = a1;
          v22 = sub_1E38F6A6C(v20);
          v76 = v3;
          v23 = &unk_1ECF32E30;
          v24 = type metadata accessor for LibSidebandEpisodeMediaEntity;
          goto LABEL_38;
        }

LABEL_20:
        OUTLINED_FUNCTION_28_0();
        goto LABEL_42;
      }

      if (a2)
      {
        goto LABEL_20;
      }

      v3 = type metadata accessor for LibMPEpisodeMediaEntity();
      v22 = sub_1E3D60BC8(a1);
      v76 = v3;
      v23 = &unk_1ECF33AF0;
      v24 = type metadata accessor for LibMPEpisodeMediaEntity;
LABEL_38:
      v58 = sub_1E3B475C4(v23, v24);
      v67 = v58;
      v77 = v58;
      v73 = v22;
      if (!v3)
      {
        goto LABEL_42;
      }

LABEL_39:
      v68 = OUTLINED_FUNCTION_4_127(v58, v59, v60, v61, v62, v63, v64, v65, v73);
      *(a3 + 24) = v3;
      v69 = *(*(v67 + 8) + 8);
LABEL_50:
      *(a3 + 32) = v69;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
      (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v68, v3);
LABEL_57:
      __swift_destroy_boxed_opaque_existential_1(&v73);
      return result;
    default:
      sub_1E3B472D0(a1, a2, &v73);
      v3 = v76;
      if (!v76)
      {
        v43 = &qword_1ECF2CEA0;
        goto LABEL_59;
      }

      v16 = v77;
      v17 = OUTLINED_FUNCTION_4_127(v8, v9, v10, v11, v12, v13, v14, v15, v73);
      *(a3 + 24) = v3;
      v18 = *(*(v16 + 8) + 8);
LABEL_56:
      *(a3 + 32) = v18;
      v71 = __swift_allocate_boxed_opaque_existential_1(a3);
      (*(*(v3 - 8) + 16))(v71, v17, v3);
      goto LABEL_57;
  }
}

double sub_1E3B472D0@<D0>(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t *a3@<X8>)
{
  if (!(a2 >> 6))
  {
    if (a2)
    {
      v7 = 0;
      v3 = 0;
      v10 = 0;
LABEL_11:
      *a3 = v7;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = v3;
      a3[4] = v10;
      return result;
    }

    v3 = type metadata accessor for LibMPMovieMediaEntity();
    v7 = sub_1E3A68300(a1);
    v8 = &unk_1ECF33B08;
    v9 = type metadata accessor for LibMPMovieMediaEntity;
LABEL_10:
    v10 = sub_1E3B475C4(v8, v9);
    goto LABEL_11;
  }

  if (a2 >> 6 != 1)
  {
    type metadata accessor for LibFamilySharingMovieMediaEntity();
    OUTLINED_FUNCTION_38();

    v10 = sub_1E41A9350();
    v7 = v10;
    if (!v10)
    {
      v3 = 0;
      goto LABEL_11;
    }

    v8 = &unk_1ECF33AF8;
    v9 = type metadata accessor for LibFamilySharingMovieMediaEntity;
    goto LABEL_10;
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_3_125())
  {
    v3 = type metadata accessor for LibSidebandMovieMediaEntity();
    v6 = a1;
    v7 = sub_1E3CDBA90();
    v8 = &unk_1ECF33B00;
    v9 = type metadata accessor for LibSidebandMovieMediaEntity;
    goto LABEL_10;
  }

  a3[4] = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

uint64_t sub_1E3B4744C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t sub_1E3B474A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 9))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1E3B474F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      return OUTLINED_FUNCTION_123(result, 2 * (((-a2 >> 2) & 0x1F) - 32 * a2));
    }
  }

  return result;
}

void sub_1E3B47594(id a1, unsigned __int8 a2)
{
  switch(a2 >> 6)
  {
    case 2:

      break;
    case 3:
      return;
    default:

      break;
  }
}

uint64_t sub_1E3B475C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3B47648()
{
  type metadata accessor for SportsClockTextLayout();
  swift_allocObject();
  return sub_1E3B48DD0();
}

void sub_1E3B476D4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  *v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  OUTLINED_FUNCTION_4_128();
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for SportsClockView(0);
  v15 = v14[5];
  *(v13 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  swift_storeEnumTagMultiPayload();
  v16 = v13 + v14[6];
  *v16 = v11;
  *(v16 + 1) = v9;
  v16[16] = v7;
  *(v13 + v14[7]) = v5;
  *(v13 + v14[8]) = v3;
  *(v13 + v14[9]) = v1;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B477B4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v88 = v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v78 = v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v83 = v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v72 - v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v75 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v72 - v15;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_41();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v86 = v19;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v79 = v21;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v82 = v23;
  v24 = type metadata accessor for SportsClockView(0);
  OUTLINED_FUNCTION_0_10();
  v73 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v72 - v30);
  v32 = v2;
  v33 = v2 + v24[6];
  v34 = *v33;
  switch(*(v33 + 16))
  {
    case 1:
      v64 = v32;
      if ((*(v32 + v24[7]) & 0xFE) == 2)
      {
        v65 = *v33;
      }

      else
      {
        v65 = *(v33 + 8);
      }

      if ((*(v64 + v24[9]) & 1) != 0 || (*(v64 + v24[7]) & 0xFE) != 2)
      {
        v89 = sub_1E4201B84();
        v90 = 0;
        v91 = 1;
        sub_1E37E658C();
      }

      else
      {
        v89 = sub_1E4201D44();
        v90 = 0;
        v91 = 1;
        sub_1E37E65E0();
      }

      *v31 = sub_1E4203E84();
      v89 = v65;
      swift_getKeyPath();
      sub_1E3B49868(v64, &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      v66 = (*(v73 + 80) + 16) & ~*(v73 + 80);
      v67 = swift_allocObject();
      sub_1E3B49AC0(&v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v67 + v66, type metadata accessor for SportsClockView);
      v68 = OUTLINED_FUNCTION_34();
      __swift_instantiateConcreteTypeFromMangledNameV2(v68);
      sub_1E32752B0(&qword_1EE23B5B8, &qword_1ECF2B6E8);
      sub_1E375BEF4();
      sub_1E3B49610();
      sub_1E4203B34();
      v40 = &qword_1ECF33B58;
      sub_1E3294EE4(v31, v79, &qword_1ECF33B58);
      swift_storeEnumTagMultiPayload();
      sub_1E3B494D4();
      v69 = v82;
      sub_1E4201F44();
      v70 = OUTLINED_FUNCTION_17_76();
      sub_1E3294EE4(v70, v71, &qword_1ECF33B50);
      swift_storeEnumTagMultiPayload();
      sub_1E3B49448();
      sub_1E3B497AC();
      OUTLINED_FUNCTION_8_89();
      sub_1E4201F44();
      sub_1E325F6F0(v69, &qword_1ECF33B50);
      v44 = v31;
      goto LABEL_13;
    case 2:
      v82 = *(v33 + 8);

      sub_1E3B483F0(v32, v34);
      v45 = *(v32 + v24[8]);
      KeyPath = swift_getKeyPath();
      v47 = &v10[*(v74 + 36)];
      *v47 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
      OUTLINED_FUNCTION_4_128();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_12_82();
      *(v47 + v48) = v45;
      sub_1E3B49190();

      v81 = v34;
      v49 = v75;
      sub_1E4203004();
      sub_1E325F6F0(v10, &qword_1ECF33B20);
      v50 = swift_getKeyPath();
      v51 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B70) + 36);
      *v51 = v50;
      *(v51 + 8) = 1;
      *(v51 + 16) = 0;
      *(v49 + *(v76 + 36)) = 257;
      sub_1E3294EE4(v49, v78, &qword_1ECF33B28);
      swift_storeEnumTagMultiPayload();
      sub_1E3B49010();
      v52 = v83;
      sub_1E4201F44();
      v53 = OUTLINED_FUNCTION_17_76();
      sub_1E3294EE4(v53, v54, &qword_1ECF33B18);
      swift_storeEnumTagMultiPayload();
      sub_1E3B49448();
      sub_1E3B497AC();
      OUTLINED_FUNCTION_8_89();
      sub_1E4201F44();
      sub_1E3827608(v81, v82, 2);
      sub_1E325F6F0(v52, &qword_1ECF33B18);
      v44 = v49;
      v55 = &qword_1ECF33B28;
      break;
    case 3:
      sub_1E4201C14();
      v56 = sub_1E4202C24();
      v58 = v57;
      v59 = v78;
      *v78 = v56;
      v59[1] = v57;
      v61 = v60 & 1;
      *(v59 + 16) = v60 & 1;
      v59[3] = v62;
      swift_storeEnumTagMultiPayload();
      sub_1E37E6F1C(v56, v58, v61);
      sub_1E3B49010();

      v63 = v83;
      sub_1E4201F44();
      sub_1E3294EE4(v63, v86, &qword_1ECF33B18);
      swift_storeEnumTagMultiPayload();
      sub_1E3B49448();
      sub_1E3B497AC();
      sub_1E4201F44();
      sub_1E37434B8(v56, v58, v61);

      v44 = v63;
      v55 = &qword_1ECF33B18;
      break;
    default:
      v35 = *(v32 + v24[8]);
      v36 = *(v33 + 8);

      OUTLINED_FUNCTION_18();
      sub_1E3F23370();
      v37 = swift_getKeyPath();
      v38 = &v16[*(v13 + 36)];
      *v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
      OUTLINED_FUNCTION_4_128();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_12_82();
      *(v38 + v39) = v35;
      sub_1E3B496D8();

      sub_1E4203004();
      sub_1E325F6F0(v16, &qword_1ECF33B30);
      *(v1 + *(v81 + 36)) = 257;
      v40 = &qword_1ECF33B38;
      sub_1E3294EE4(v1, v79, &qword_1ECF33B38);
      swift_storeEnumTagMultiPayload();
      sub_1E3B494D4();
      sub_1E3B49610();
      v41 = v82;
      sub_1E4201F44();
      v42 = OUTLINED_FUNCTION_17_76();
      sub_1E3294EE4(v42, v43, &qword_1ECF33B50);
      swift_storeEnumTagMultiPayload();
      sub_1E3B49448();
      sub_1E3B497AC();
      OUTLINED_FUNCTION_8_89();
      sub_1E4201F44();
      sub_1E3827608(v34, v36, 0);
      sub_1E325F6F0(v41, &qword_1ECF33B50);
      v44 = v1;
LABEL_13:
      v55 = v40;
      break;
  }

  sub_1E325F6F0(v44, v55);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B4823C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3C27024();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3B48268@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_34();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + *(type metadata accessor for SportsClockView(0) + 32));
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  KeyPath = swift_getKeyPath();
  v11 = &v8[*(v5 + 36)];
  *v11 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_12_82();
  *(v11 + v12) = v9;
  sub_1E3B496D8();

  sub_1E4203004();
  sub_1E325F6F0(v8, &qword_1ECF33B30);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33B38);
  *(a2 + *(result + 36)) = 257;
  return result;
}

uint64_t sub_1E3B483BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E3B4994C(a1, a3);
  result = OUTLINED_FUNCTION_12_82();
  *(a3 + v6) = a2;
  return result;
}

uint64_t sub_1E3B483F0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = sub_1E4205094();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = *(a1 + *(type metadata accessor for SportsClockView(0) + 28));

  if (v14 == 3)
  {
    sub_1E4205084();
    (*(v9 + 16))(v6, v13, v7);
    OUTLINED_FUNCTION_34();
    swift_storeEnumTagMultiPayload();
    sub_1E3B4938C();
    OUTLINED_FUNCTION_6_103();
    sub_1E3B493E0(v15, v16);
    OUTLINED_FUNCTION_24_49();
    return (*(v9 + 8))(v13, v7);
  }

  else
  {
    *v6 = sub_1E39E2164(a2, v14);
    *(v6 + 1) = v18;
    *(v6 + 2) = v19;
    OUTLINED_FUNCTION_34();
    swift_storeEnumTagMultiPayload();
    sub_1E3B4938C();
    OUTLINED_FUNCTION_6_103();
    sub_1E3B493E0(v20, v21);
    return OUTLINED_FUNCTION_24_49();
  }
}

uint64_t sub_1E3B485F0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_4_128();

  return swift_storeEnumTagMultiPayload();
}

void sub_1E3B48648()
{
  OUTLINED_FUNCTION_31_1();
  v37 = v2;
  v40 = v3;
  v39 = type metadata accessor for VibrantViewModifier(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = (v6 - v5);
  v8 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33BE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33BE8);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  OUTLINED_FUNCTION_12_82();
  v22 = *(v0 + v21);
  sub_1E3746E10(v1);
  sub_1E3E3B878();
  v24 = v23;
  (*(v10 + 8))(v1, v8);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33BF0);
  OUTLINED_FUNCTION_2();
  v27 = (*(v26 + 16))(v15, v37);
  v28 = &v15[*(v12 + 36)];
  *v28 = KeyPath;
  v28[1] = v24;
  v29 = (*(*v22 + 672))(v27);
  sub_1E3B499DC();
  sub_1E39B9138();

  v30 = sub_1E325F6F0(v15, &qword_1ECF33BE0);
  v31 = (*(*v22 + 2264))(v30);
  if (v31 == 3)
  {
    v32 = 0;
  }

  else
  {
    v42 = v31;
    v41 = 1;
    sub_1E376C468();
    v32 = sub_1E4205E84();
  }

  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8);
  OUTLINED_FUNCTION_4_128();
  swift_storeEnumTagMultiPayload();
  v33 = v38;
  *(v7 + *(v39 + 20)) = v32 & 1;
  v34 = v40;
  (*(v17 + 32))(v40, v20, v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33BF8);
  sub_1E3B49AC0(v7, v34 + *(v35 + 36), type metadata accessor for VibrantViewModifier);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B489F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E379EBAC(v1);
  v7 = (*(v5 + 88))(v1, v3);
  if (v7 == *MEMORY[0x1E697DBB8])
  {
    v8 = *MEMORY[0x1E6981DA0];
    sub_1E4203E94();
    OUTLINED_FUNCTION_2();
    return (*(v9 + 104))(a1, v8);
  }

  else
  {
    v11 = v7;
    v12 = *MEMORY[0x1E697DBA8];
    sub_1E4203E94();
    OUTLINED_FUNCTION_2();
    v14 = *(v13 + 104);
    if (v11 == v12)
    {
      return v14(a1, *MEMORY[0x1E6981DB8]);
    }

    else
    {
      v14(a1, *MEMORY[0x1E6981DF0]);
      return (*(v5 + 8))(v1, v3);
    }
  }
}

void sub_1E3B48B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  if (*(v20 + *(type metadata accessor for VibrantViewModifier(0) + 20)) == 1)
  {
    sub_1E3B489F8(&v31[*(v28 + 36)]);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C28);
    OUTLINED_FUNCTION_2();
    (*(v33 + 16))(v31, v24, v32);
    sub_1E3294EE4(v31, v27, &qword_1ECF33C20);
    swift_storeEnumTagMultiPayload();
    sub_1E3B4A0DC();
    OUTLINED_FUNCTION_0_121();
    sub_1E32752B0(v34, v35);
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();
    sub_1E325F6F0(v31, &qword_1ECF33C20);
  }

  else
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C28);
    OUTLINED_FUNCTION_2();
    (*(v37 + 16))(v27, v24, v36);
    swift_storeEnumTagMultiPayload();
    sub_1E3B4A0DC();
    OUTLINED_FUNCTION_0_121();
    sub_1E32752B0(v38, v39);
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B48DD0()
{
  v0 = sub_1E41144C8();
  LOBYTE(v46[0]) = 19;
  LOBYTE(v52) = 22;
  LOBYTE(v51) = 14;
  LOBYTE(v50) = 14;
  swift_retain_n();
  sub_1E3C2FC98();
  v1 = OUTLINED_FUNCTION_19_68();
  sub_1E3C3DE00(v1);
  v61 = v47;
  sub_1E3C2FCB8(v46, &v53);
  v2 = OUTLINED_FUNCTION_18_60();
  OUTLINED_FUNCTION_15_89(v2, v3, v4, v5, v6, v7, v8, v9, v43, v46[0]);
  sub_1E3C2FDFC();
  LOBYTE(v46[0]) = 11;
  LOBYTE(v52) = 10;
  sub_1E3C2FC98();
  LOBYTE(v50) = v51;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  v10 = OUTLINED_FUNCTION_19_68();
  sub_1E3C3DE00(v10);
  v61 = v47;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  v59 = v60;
  sub_1E3C2FCB8(v46, &v53);
  v11 = OUTLINED_FUNCTION_18_60();
  OUTLINED_FUNCTION_15_89(v11, v12, v13, v14, v15, v16, v17, v18, v44, v46[0]);
  sub_1E3C2FDFC();
  v19 = sub_1E3E5FDEC();
  v46[0] = *v19;
  v20 = v46[0];
  v21 = *sub_1E3E5FD88();
  v51 = v21;
  v52 = v21;
  v22 = *v19;
  v49 = v22;
  v50 = v22;
  v23 = sub_1E3755B54();
  v24 = v21;
  v25 = v22;
  v26 = v24;
  v27 = v25;
  sub_1E3C3DE00(v23);
  v47 = v48;
  sub_1E3C2FCB8(v46, &v53);
  v28 = v53;
  v29 = v54;
  v30 = v55;
  v31 = v56;
  v32 = v57;
  v33 = v58;
  v46[0] = v53;
  v46[1] = v54;
  v46[2] = v55;
  v46[3] = v56;
  v46[4] = v57;
  v46[5] = v58;
  v34 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_15_89(v34, v35, v36, v37, v38, v39, v40, v41, v45, v46[0]);
  sub_1E3C2FDFC();

  sub_1E41115A0();

  return v0;
}

unint64_t sub_1E3B49010()
{
  result = qword_1ECF33B60;
  if (!qword_1ECF33B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B28);
    sub_1E3B4909C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33B60);
  }

  return result;
}

unint64_t sub_1E3B4909C()
{
  result = qword_1ECF33B68;
  if (!qword_1ECF33B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B20);
    sub_1E3B49190();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE288770, &qword_1ECF2A238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33B68);
  }

  return result;
}

unint64_t sub_1E3B49190()
{
  result = qword_1ECF33B78;
  if (!qword_1ECF33B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B20);
    sub_1E3B4924C();
    sub_1E3B493E0(qword_1EE245440, type metadata accessor for RunningClockTextLayoutModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33B78);
  }

  return result;
}

unint64_t sub_1E3B4924C()
{
  result = qword_1ECF33B80;
  if (!qword_1ECF33B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B88);
    sub_1E3B492D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33B80);
  }

  return result;
}

unint64_t sub_1E3B492D0()
{
  result = qword_1ECF33B90;
  if (!qword_1ECF33B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B98);
    sub_1E3B4938C();
    sub_1E3B493E0(&qword_1EE23B688, MEMORY[0x1E69D3A48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33B90);
  }

  return result;
}

unint64_t sub_1E3B4938C()
{
  result = qword_1ECF33BA0;
  if (!qword_1ECF33BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33BA0);
  }

  return result;
}

uint64_t sub_1E3B493E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E3B49448()
{
  result = qword_1ECF33BA8;
  if (!qword_1ECF33BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B50);
    sub_1E3B494D4();
    sub_1E3B49610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33BA8);
  }

  return result;
}

unint64_t sub_1E3B494D4()
{
  result = qword_1ECF33BB0;
  if (!qword_1ECF33BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B58);
    sub_1E32752B0(&qword_1EE289DD0, &qword_1ECF2AAA0);
    sub_1E3B4958C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33BB0);
  }

  return result;
}

unint64_t sub_1E3B4958C()
{
  result = qword_1ECF33BB8;
  if (!qword_1ECF33BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33BC0);
    sub_1E3B49610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33BB8);
  }

  return result;
}

unint64_t sub_1E3B49610()
{
  result = qword_1ECF33BC8;
  if (!qword_1ECF33BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B30);
    sub_1E3B496D8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33BC8);
  }

  return result;
}

unint64_t sub_1E3B496D8()
{
  result = qword_1ECF33BD0;
  if (!qword_1ECF33BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B30);
    swift_getOpaqueTypeConformance2();
    sub_1E3B493E0(qword_1EE245440, type metadata accessor for RunningClockTextLayoutModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33BD0);
  }

  return result;
}

unint64_t sub_1E3B497AC()
{
  result = qword_1ECF33BD8;
  if (!qword_1ECF33BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33B18);
    sub_1E3B49010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33BD8);
  }

  return result;
}

uint64_t sub_1E3B49838()
{
  v0 = sub_1E41144CC();

  return MEMORY[0x1EEE6BDC0](v0, 98, 7);
}

uint64_t sub_1E3B49868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsClockView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3B498CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsClockView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E3B48268(v4, a1);
}

uint64_t sub_1E3B4994C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3B499DC()
{
  result = qword_1EE289A98;
  if (!qword_1EE289A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33BE0);
    sub_1E32752B0(&qword_1EE288920, &qword_1ECF33BF0);
    sub_1E32752B0(&qword_1EE2887A0, &qword_1ECF2A208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A98);
  }

  return result;
}

uint64_t sub_1E3B49AC0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_8VideosUI16SportsClockStateO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1E3B49B6C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_1E3B49BAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1E3B49BF0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void sub_1E3B49C40(uint64_t a1)
{
  OUTLINED_FUNCTION_7_120(a1, &qword_1EE289EB0);
  if (v1 <= 0x3F)
  {
    sub_1E3B4A070(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0]);
    if (v2 <= 0x3F)
    {
      sub_1E3B49D1C();
      if (v3 <= 0x3F)
      {
        type metadata accessor for TextLayout();
        if (v4 <= 0x3F)
        {
          OUTLINED_FUNCTION_72();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E3B49D1C()
{
  if (!qword_1ECF33C00)
  {
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF33C00);
    }
  }
}

void sub_1E3B49D94(uint64_t a1)
{
  OUTLINED_FUNCTION_7_120(a1, &qword_1EE289EB0);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TextLayout();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_72();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1E3B49E14()
{
  result = qword_1ECF33C08;
  if (!qword_1ECF33C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33C10);
    sub_1E3B49448();
    sub_1E3B497AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33C08);
  }

  return result;
}

unint64_t sub_1E3B49EA0()
{
  result = qword_1EE289940;
  if (!qword_1EE289940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33BF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33BE0);
    sub_1E3B499DC();
    swift_getOpaqueTypeConformance2();
    sub_1E3B49F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289940);
  }

  return result;
}

unint64_t sub_1E3B49F68()
{
  result = qword_1EE29DD00[0];
  if (!qword_1EE29DD00[0])
  {
    type metadata accessor for VibrantViewModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29DD00);
  }

  return result;
}

void sub_1E3B49FE8()
{
  sub_1E3B4A070(319, &qword_1EE289EC0, MEMORY[0x1E697DBD0]);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_72();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1E3B4A070(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4200B94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E3B4A0DC()
{
  result = qword_1EE289A88;
  if (!qword_1EE289A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33C20);
    sub_1E32752B0(&qword_1EE288900, &qword_1ECF33C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A88);
  }

  return result;
}

unint64_t sub_1E3B4A194()
{
  result = qword_1EE288F38;
  if (!qword_1EE288F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33C38);
    sub_1E3B4A0DC();
    sub_1E32752B0(&qword_1EE288900, &qword_1ECF33C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F38);
  }

  return result;
}

void sub_1E3B4A268(void *a1, void *a2)
{
  v4 = v2;
  v5 = *&v2[*a2];
  *&v2[*a2] = a1;
  v6 = a1;
  v7 = [v4 vuiView];
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  [v7 vui:*&v4[*a2] addSubview:v5 oldView:?];

  v9 = [v4 vuiView];
  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 vui_setNeedsLayout];
}

id sub_1E3B4A340()
{
  v1 = OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController____lazy_storage___backdropView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController____lazy_storage___backdropView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController____lazy_storage___backdropView];
LABEL_11:
    v15 = v2;
    return v3;
  }

  v4 = [v0 vuiTraitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 2)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_opt_self() effectWithStyle_];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  v9 = [v8 vuiLayer];
  if (v9)
  {
    v10 = v9;
    [v9 setMasksToBounds_];
  }

  result = [v0 view];
  if (result)
  {
    v12 = result;
    [result vui:v8 addSubview:0 oldView:?];

    result = [v0 view];
    if (result)
    {
      v13 = result;
      [result vui:v8 sendSubviewToBack:?];

      v14 = *&v0[v1];
      *&v0[v1] = v8;
      v3 = v8;

      v2 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1E3B4A4D8(uint64_t a1, void *a2)
{
  v3 = (*(*a1 + 488))(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  OUTLINED_FUNCTION_8();
  if (!(*(v5 + 392))())
  {

    return 0;
  }

  type metadata accessor for ConfirmationDialogLayout();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  if (a2)
  {
    type metadata accessor for ConfirmationDialogTemplateController();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = a2;
    }
  }

  else
  {
    v8 = 0;
  }

  v56 = v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C40);
  sub_1E4148C68(sub_1E3B4A8EC, v11, &v53);

  v12 = v53;
  type metadata accessor for UIFactory();
  sub_1E373E010(23, v4);
  v13 = sub_1E3280A90(0, &qword_1EE23AD40);
  v21 = OUTLINED_FUNCTION_2_120(v13, v14, v15, v16, v17, v18, v19, v20, v53, v54, v55);

  sub_1E373C624(&v53);
  sub_1E3B4A250(v21);
  sub_1E373E010(36, v4);
  v22 = sub_1E3280A90(0, &qword_1EE23B360);
  v30 = OUTLINED_FUNCTION_2_120(v22, v23, v24, v25, v26, v27, v28, v29, v53, v54, v55);

  sub_1E373C624(&v53);
  sub_1E3B4A25C(v30);
  v31 = sub_1E3B4A340();
  v32 = [v31 vuiLayer];

  if (v32)
  {
    OUTLINED_FUNCTION_47_0();
    v34 = *(v33 + 552);

    v34(&v53, v35);
    v36 = v53;
    v37 = v54;

    v38 = 0.0;
    if ((v55 & 1) == 0)
    {
      v38 = sub_1E3952BE8(*&v36, *(&v36 + 1), *&v37, *(&v37 + 1));
    }

    [v32 setCornerRadius_];
  }

  v10 = v12;
  result = [v10 vuiView];
  if (result)
  {
    v40 = result;

    v41 = [objc_opt_self() clearColor];
    [v40 setVuiBackgroundColor_];

    OUTLINED_FUNCTION_47_0();
    v43 = *(v42 + 200);

    v45 = v43(v44);
    if (v46)
    {
    }

    else
    {
      v47 = *&v45;
      OUTLINED_FUNCTION_47_0();
      v49 = COERCE_DOUBLE((*(v48 + 304))());
      v51 = v50;

      if ((v51 & 1) == 0)
      {
        [v10 setVuiPreferredContentSize_];
      }
    }

    *&v10[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_layout] = v7;

    v10[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_isTimerSet] = 0;
    v52 = *&v10[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_dismissTimer];
    [v52 invalidate];

    return v10;
  }

  __break(1u);
  return result;
}

id sub_1E3B4A8EC@<X0>(void *a1@<X8>)
{
  type metadata accessor for ConfirmationDialogTemplateController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

void sub_1E3B4A94C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ConfirmationDialogTemplateController();
  OUTLINED_FUNCTION_6_104(v8.super_class, sel_vui_viewWillAppear_, v1, v2, v3, v4, v5, v6, v8);
  v7 = [objc_opt_self() defaultCenter];
  [v7 addObserver:v0 selector:sel_onApplicationDidEnterBackground_ name:*MEMORY[0x1E69DF7E0] object:0];
}

void sub_1E3B4AA20()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ConfirmationDialogTemplateController();
  OUTLINED_FUNCTION_6_104(v10.super_class, sel_vui_viewDidAppear_, v1, v2, v3, v4, v5, v6, v10);
  v7 = OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_isTimerSet;
  if ((v0[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_isTimerSet] & 1) == 0)
  {
    v8 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:sel_dismissConfirmation selector:0 userInfo:0 repeats:1.5];
    v9 = *&v0[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_dismissTimer];
    *&v0[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_dismissTimer] = v8;

    v0[v7] = 1;
  }
}

id sub_1E3B4AB08()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ConfirmationDialogTemplateController();
  OUTLINED_FUNCTION_6_104(v8.super_class, sel_vui_viewWillDisappear_, v1, v2, v3, v4, v5, v6, v8);
  return [v0 vui:0 dismissViewControllerAnimated:0 completion:?];
}

id sub_1E3B4ABA4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x1E69DF7E0] object:0];

  v9.receiver = v0;
  v9.super_class = type metadata accessor for ConfirmationDialogTemplateController();
  return OUTLINED_FUNCTION_6_104(v9.super_class, sel_vui_viewDidDisappear_, v2, v3, v4, v5, v6, v7, v9);
}

id sub_1E3B4AC78()
{
  v1 = v0;
  v57.receiver = v0;
  v57.super_class = type metadata accessor for ConfirmationDialogTemplateController();
  objc_msgSendSuper2(&v57, sel_vui_viewDidLayoutSubviews);
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = sub_1E3B4A340();
    v56 = v11;
    [v12 setFrame_];

    v13 = OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_layout;
    if (!*&v1[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_layout] || (OUTLINED_FUNCTION_8(), v15 = *(v14 + 176), v16 = , v15(v58, v16), v18 = *v58, v17 = *&v58[1], v19 = *&v58[2], v20 = *&v58[3], , (v59 & 1) != 0))
    {
      v18 = *MEMORY[0x1E69DDCE0];
      v17 = *(MEMORY[0x1E69DDCE0] + 8);
      v19 = *(MEMORY[0x1E69DDCE0] + 16);
      v20 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    v55 = v18;
    v21 = OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_badgeView;
    v22 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = v56;
    if (*&v1[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_badgeView] && *&v1[v13])
    {
      OUTLINED_FUNCTION_8();
      v28 = *(v27 + 1704);

      v30 = v28(v29);

      v23 = (*(*v30 + 2288))(v31);
      v22 = v32;

      v26 = v56;
      v24 = (v9 - v23) * 0.5;
      v25 = v22 + 0.0;
    }

    v33 = OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_label;
    v34 = *&v1[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_label];
    if (v34 && *&v1[v13])
    {
      v35 = v9 - v17 - v20;
      v36 = v26 - v55 - v19;
      v37 = v17;
      v38 = v35;
      OUTLINED_FUNCTION_8();
      v40 = *(v39 + 1728);

      v41 = v34;
      v42 = v40();

      [v41 sizeThatFits_];
      v44 = v43;
      v45 = *(*v42 + 152);

      v45(v60, v46);

      v26 = v56;
      v47 = v60[0];
      if (v61)
      {
        v47 = 0.0;
      }

      v25 = v44 + v25 + v47;
    }

    else
    {
      v44 = 0.0;
      v37 = 0.0;
      v38 = 0.0;
    }

    v48 = (v26 - v25) * 0.5;
    v49 = *&v1[v21];
    if (v49)
    {
      [v49 setFrame_];
    }

    if (*&v1[v13])
    {
      OUTLINED_FUNCTION_8();
      v51 = *(v50 + 1728);

      v51(v52);

      OUTLINED_FUNCTION_47_0();
      (*(v53 + 152))(v62);

      v54 = v62[0];
      if (v63)
      {
        v54 = 0.0;
      }
    }

    else
    {
      v54 = 0.0;
    }

    result = *&v1[v33];
    if (result)
    {
      return [result setFrame_];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E3B4B0D0()
{

  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController____lazy_storage___backdropView);
}

id sub_1E3B4B13C()
{
  v1 = *&v0[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_dismissTimer];
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = type metadata accessor for ConfirmationDialogTemplateController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1E3B4B264(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_1_145(&OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_layout);
  if (v5)
  {
    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for ConfirmationDialogTemplateController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id sub_1E3B4B350(void *a1)
{
  OUTLINED_FUNCTION_1_145(&OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_layout);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ConfirmationDialogTemplateController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3B4B3EC()
{
  v0[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_isTimerSet] = 0;
  [*&v0[OBJC_IVAR____TtC8VideosUI36ConfirmationDialogTemplateController_dismissTimer] invalidate];

  return [v0 vui:0 dismissViewControllerAnimated:0 completion:?];
}

uint64_t sub_1E3B4B660(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_5_0();
  v3 = *v2;

  return v3;
}

uint64_t sub_1E3B4B6B8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1E3B4B760()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3B4B7D4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x180))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3B4B838(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x188);

  return v2(v3);
}

uint64_t sub_1E3B4B8A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_1E4200684();
  OUTLINED_FUNCTION_26_3();
  v2 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & v3) + 0x180))();
  OUTLINED_FUNCTION_26_3();
  v6 = (*((*v2 & v5) + 0x1B8))();
  v7 = sub_1E37D466C(v4, v6);

  OUTLINED_FUNCTION_26_3();
  return (*((*v2 & v8) + 0x1C0))(v7);
}

uint64_t (*sub_1E3B4BA04(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1E3B4B760();
  return sub_1E3B4BA4C;
}

uint64_t sub_1E3B4BA4C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1E3B4B8A4();
  }

  sub_1E3B4B8A4();
}

uint64_t sub_1E3B4BAA4()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3B4BB18(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C70);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_41();
  (*(v5 + 16))(v1, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68);
  sub_1E4200654();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*sub_1E3B4BC40(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C70);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3B4BD64;
}

void sub_1E3B4BD64(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_1E3B4BB18(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1E3B4BB18(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1E3B4BE18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C78);
  sub_1E32752B0(&qword_1EE28A168, &qword_1ECF33C78);
  return sub_1E42006B4();
}

uint64_t sub_1E3B4BEE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_phoneRecentlyPurchasedMenuItems;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
}

uint64_t sub_1E3B4BF78()
{
  v1 = OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_shouldShowConnectionErrorMessage;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3B4BFAC(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_shouldShowConnectionErrorMessage;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

id sub_1E3B4C038()
{
  v1 = OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_mediaLibrary;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1E3B4C07C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_mediaLibrary;
  OUTLINED_FUNCTION_37();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1E3B4C0F8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_41();
  v9 = [objc_opt_self() sharedInstance];
  if (!v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = v9;
  v11 = OUTLINED_FUNCTION_24_50();
  v13 = sub_1E3741090(v11, v12, v10);
  v15 = v14;

  if (!v15)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v16 = (v3 + OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_sourceTypeName);
  *v16 = v13;
  v16[1] = v15;
  v17 = OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource__menuItems;
  v18 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C60);
  sub_1E4200634();
  (*(v7 + 32))(v3 + v17, v2, v5);
  *(v3 + OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_phoneRecentlyPurchasedMenuItems) = v18;
  *(v3 + OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_shouldShowConnectionErrorMessage) = 0;
  v19 = OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_libraryConnectionQueue;
  *(v3 + v19) = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  v20 = OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_menuItemUpdateSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C78);
  swift_allocObject();
  *(v3 + v20) = sub_1E4200544();
  v21 = sub_1E32859C4(a1, &selRef_uniqueIdentifier);
  if (!v22)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v23 = (v3 + OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_id);
  *v23 = v21;
  v23[1] = v22;
  v24 = sub_1E32859C4(a1, &selRef_name);
  if (v25)
  {
    v26 = (v3 + OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_displayName);
    *v26 = v24;
    v26[1] = v25;
    *(v3 + OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_mediaLibrary) = a1;
    v27 = a1;
    sub_1E3AD25B8();
    v29 = *&v28[OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_libraryConnectionQueue];
    v30 = v28;
    [v29 setMaxConcurrentOperationCount_];

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1E3B4C374()
{

  v1 = OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource__menuItems;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
}

id sub_1E3B4C45C()
{
  [*&v0[OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_libraryConnectionQueue] cancelAllOperations];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibHomeSharingSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3B4C5C0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_26_3();
  v10 = MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & v11) + 0x188);

  v12(v13);
  v14 = *((*v10 & *v0) + 0x180);

  v16 = v14(v15);
  OUTLINED_FUNCTION_27_42(v16);

  sub_1E41A3110();
  v17 = OUTLINED_FUNCTION_18_61();
  v18(v17);

  v19 = sub_1E41FFC94();
  v20 = sub_1E4206814();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_6_21();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136315138;
    v23 = type metadata accessor for LibMenuItem();
    v24 = MEMORY[0x1E6910C30](v2, v23);
    v26 = sub_1E3270FC8(v24, v25, &v27);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_1E323F000, v19, v20, "LibHomeSharingSource:: update with menu items %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v9, v3);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B4C808()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_26_3();
  v9 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & v10) + 0x180);
  v11();
  OUTLINED_FUNCTION_21();
  v13 = (*(v12 + 232))();

  (*((*v9 & *v1) + 0x188))(v13);

  v15 = (v11)(v14);
  OUTLINED_FUNCTION_27_42(v15);

  v16 = sub_1E41A3110();
  v28 = v2;
  (*(v4 + 16))(v8, v16, v2);
  v17 = v1;
  v18 = sub_1E41FFC94();
  v19 = sub_1E4206814();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_6_21();
    v21 = swift_slowAlloc();
    v29 = v21;
    *v20 = 136315138;
    v22 = (v11)();
    v23 = type metadata accessor for LibMenuItem();
    v24 = MEMORY[0x1E6910C30](v22, v23);
    v26 = v25;

    v27 = sub_1E3270FC8(v24, v26, &v29);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_1E323F000, v18, v19, "LibHomeSharingSource:: did update downloaded menu, new menu items %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v8, v28);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B4CAD4(uint64_t a1)
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 384))();
  result = sub_1E32AE9B0(v2);
  v4 = result;
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, v2);
      v6 = result;
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v6 = *(v2 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E37D4BA4();
    sub_1E4206254();
    sub_1E4206254();
    if (v12 == v10 && v13 == v11)
    {

LABEL_16:

      (*(*v6 + 232))(a1);
      (*(*v6 + 264))(1);
    }

    v8 = sub_1E42079A4();

    if (v8)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_1E3B4CCE0(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v6 + 480))(0);
  OUTLINED_FUNCTION_26_3();
  v8 = *((*v5 & v7) + 0x1F0);
  v9 = v8();
  v10 = [objc_allocWithZone(VUIMPMediaLibraryConnectOperation) initWithMediaLibrary_];

  sub_1E3280A90(0, &qword_1EE23B2A0);
  OUTLINED_FUNCTION_10_9();
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = v10;
  v11[4] = a1;
  v11[5] = a2;
  v12 = v2;
  v13 = v10;

  v14 = sub_1E378A448(sub_1E3B4E470, v11);
  [v14 addDependency_];
  v15 = OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_libraryConnectionQueue;
  [*&v12[OBJC_IVAR____TtC8VideosUI20LibHomeSharingSource_libraryConnectionQueue] addOperation_];
  [*&v12[v15] addOperation_];
  v16 = [objc_opt_self() defaultCenter];
  v17 = *MEMORY[0x1E696FBB0];
  v18 = v8();
  [v16 addObserver:v12 selector:sel_mpMediaLibraryStatusChanged name:v17 object:v18];
}

void sub_1E3B4CF08()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v24 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v13 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_10_9();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v5;
  v15[4] = v3;
  v15[5] = v1;
  v25[4] = sub_1E3B4E760;
  v25[5] = v15;
  OUTLINED_FUNCTION_12_0();
  v25[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v25[2] = v16;
  v25[3] = &block_descriptor_51_0;
  v17 = _Block_copy(v25);
  v18 = v5;

  sub_1E4203FE4();
  v25[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_1_146();
  sub_1E3B4E6D0(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_4_129(&qword_1EE23B5D0);
  OUTLINED_FUNCTION_22_54();
  v21 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v21);
  _Block_release(v17);

  v22 = OUTLINED_FUNCTION_16_80();
  v23(v22);
  (*(v8 + 8))(v12, v24);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B4D188(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_0();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_5_10();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  OUTLINED_FUNCTION_21();
  v7 = *(v6 + 192);

  v7(sub_1E3B4E47C, v5);
}

void sub_1E3B4D26C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v24 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v13 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  OUTLINED_FUNCTION_10_9();
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v3;
  v16[4] = v1;
  v16[5] = v5;
  v25[4] = sub_1E3B4E754;
  v25[5] = v16;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v25[2] = v17;
  v25[3] = &block_descriptor_41;
  v18 = _Block_copy(v25);

  sub_1E4203FE4();
  v25[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_1_146();
  sub_1E3B4E6D0(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_4_129(&qword_1EE23B5D0);
  OUTLINED_FUNCTION_22_54();
  v21 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v21);
  _Block_release(v18);

  v22 = OUTLINED_FUNCTION_16_80();
  v23(v22);
  (*(v8 + 8))(v12, v24);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B4D524()
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
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x188);

    v13(v14);
    v15 = sub_1E41A3110();
    v25 = v4;
    (*(v6 + 16))(v10, v15, v4);

    v16 = sub_1E41FFC94();
    v17 = sub_1E4206814();

    if (os_log_type_enabled(v16, v17))
    {
      v24 = v3;
      v18 = OUTLINED_FUNCTION_6_21();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315138;
      v20 = type metadata accessor for LibMenuItem();
      v21 = MEMORY[0x1E6910C30](v1, v20);
      v23 = sub_1E3270FC8(v21, v22, &v26);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1E323F000, v16, v17, "LibHomeSharingSource:: fetched menu items %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_6_0();
      v3 = v24;
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v10, v25);
    v3(v1);
  }

  else
  {
    v3(MEMORY[0x1E69E7CC0]);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B4D778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  OUTLINED_FUNCTION_21();
  v8 = *(v7 + 200);

  v8(a1, sub_1E3B4E488, v6);
}

uint64_t sub_1E3B4D834(void *a1, char a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  sub_1E327F454(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780);
  type metadata accessor for LibMPShowMediaEntity();
  if (!swift_dynamicCast())
  {
    return a3(MEMORY[0x1E69E7CC0]);
  }

  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(*(v11 + 8) + 16))(v10);
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xD0);

  v16(v12, v14, a2 & 1, sub_1E3B4E4C8, v15);
}

void sub_1E3B4D9B0()
{
  OUTLINED_FUNCTION_31_1();
  v24 = v0;
  v25 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v26 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v15 = sub_1E4206A04();
  OUTLINED_FUNCTION_5_10();
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = v3;
  v16[4] = v7;
  v27[4] = v24;
  v27[5] = v16;
  OUTLINED_FUNCTION_12_0();
  v27[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v27[2] = v17;
  v27[3] = v25;
  v18 = _Block_copy(v27);

  sub_1E4203FE4();
  v27[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_1_146();
  sub_1E3B4E6D0(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_4_129(&qword_1EE23B5D0);
  OUTLINED_FUNCTION_22_54();
  v21 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v21);
  _Block_release(v18);

  v22 = OUTLINED_FUNCTION_16_80();
  v23(v22);
  (*(v10 + 8))(v14, v26);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B4DC04()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 312))();
}

uint64_t sub_1E3B4DC58()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 336))();
}

uint64_t sub_1E3B4DCAC()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 360))();
}

uint64_t sub_1E3B4DD00()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 384))();
}

uint64_t sub_1E3B4DD54()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 392))();
}

void (*sub_1E3B4DDA8(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  v2[4] = (*(v3 + 400))();
  return sub_1E37C55D4;
}

uint64_t sub_1E3B4DE44()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 432))();
}

uint64_t sub_1E3B4DE98()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 440))();
}

uint64_t sub_1E3B4DEEC()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 448))();
}

void (*sub_1E3B4DF40(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  v2[4] = (*(v3 + 456))();
  return sub_1E37C4BF8;
}

uint64_t sub_1E3B4DFDC()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 464))() & 1;
}

uint64_t sub_1E3B4E034()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 576))();
}

uint64_t sub_1E3B4E088()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 584))();
}

uint64_t sub_1E3B4E0DC()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 592))();
}

uint64_t sub_1E3B4E130()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 600))();
}

uint64_t sub_1E3B4E184()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 608))();
}

uint64_t sub_1E3B4E1D8@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  result = (*(v2 + 312))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1E3B4E234()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_1E41A3110();
  v8 = OUTLINED_FUNCTION_18_61();
  v9(v8);
  v10 = v0;
  v11 = sub_1E41FFC94();
  v12 = sub_1E4206814();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_6_21();
    *v13 = 134217984;
    v14 = (*((*MEMORY[0x1E69E7D40] & v10->isa) + 0x1F0))();
    v15 = [v14 status];

    *(v13 + 4) = v15;
    _os_log_impl(&dword_1E323F000, v11, v12, "LibHomeSharingSource::mpMediaLibraryStatusChanged. New status %ld", v13, 0xCu);
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v11 = v10;
  }

  (*(v3 + 8))(v7, v1);
  OUTLINED_FUNCTION_25_2();
}

uint64_t type metadata accessor for LibHomeSharingSource()
{
  result = qword_1EE29D730;
  if (!qword_1EE29D730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3B4E508(uint64_t a1)
{
  result = sub_1E3B4E6D0(&qword_1ECF33C80, type metadata accessor for LibHomeSharingSource);
  *(a1 + 8) = result;
  return result;
}

void sub_1E3B4E568()
{
  sub_1E3B4E63C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3B4E63C()
{
  if (!qword_1EE289FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33C60);
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289FA0);
    }
  }
}

uint64_t sub_1E3B4E6D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_27Tm_0()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

void sub_1E3B4E760()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [v1 success];
    if (v5)
    {
      (*((*MEMORY[0x1E69E7D40] & *v4) + 0xE0))();
    }

    else
    {
      (*((*MEMORY[0x1E69E7D40] & *v4) + 0x1E0))(1);
    }

    v2(v5);
  }
}

unint64_t sub_1E3B4E86C()
{
  result = qword_1EE26CAB8[0];
  if (!qword_1EE26CAB8[0])
  {
    type metadata accessor for LibDataSourceManager();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE26CAB8);
  }

  return result;
}

void *sub_1E3B4E8C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C88);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &__src[-v5];
  sub_1E3B4E9E8(a1, &__src[-v5]);
  sub_1E4203DA4();
  sub_1E42015C4();
  sub_1E32C6E40(v6, a2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C90);
  return memcpy((a2 + *(v7 + 36)), __src, 0x70uLL);
}

id sub_1E3B4E9E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v47 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33CC8);
  OUTLINED_FUNCTION_0_10();
  v45 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v43 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33CD0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33CD8);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - v14;
  v16 = (*(*a1 + 360))(v13);
  v17 = (*(*a1 + 456))();
  v18 = sub_1E32AE9B0(v17);

  if (v18 || ((*(*a1 + 216))(v19) & 1) == 0 && ((v16 ^ 1) & 1) == 0 || (v20 = *((*(*a1 + 696))() + 16), , v20 != 1))
  {
    sub_1E3B4F018();
    (*(v11 + 16))(v8, v15, v9);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F428);
    sub_1E3B4F72C();
    sub_1E32822E0();
    sub_1E3B4F780();
    OUTLINED_FUNCTION_2_121(&unk_1F5D78298);
    OUTLINED_FUNCTION_0_151(v41);
    v42 = sub_1E3B4F7E4();
    *&v49 = &type metadata for LibLoadingSpinner;
    *(&v49 + 1) = v42;
    OUTLINED_FUNCTION_1_147();
    OUTLINED_FUNCTION_3_126();
    sub_1E4201F44();
    return (*(v11 + 8))(v15, v9);
  }

  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v22 = result;
  v23 = sub_1E3741090(0xD000000000000015, 0x80000001E4267120, result);
  v25 = v24;

  *(&v50 + 1) = MEMORY[0x1E69E6158];
  if (v25)
  {
    v26 = v23;
  }

  else
  {
    v26 = 0;
  }

  OUTLINED_FUNCTION_2_121(v26);
  type metadata accessor for TextViewModel();
  v27 = sub_1E37BD068();
  v28 = sub_1E3C27638(23, &v49, 0, 0, v27);
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    goto LABEL_17;
  }

  v29 = result;
  v30 = sub_1E3741090(0xD000000000000017, 0x80000001E4267100, result);
  v32 = v31;

  *(&v50 + 1) = MEMORY[0x1E69E6158];
  if (v32)
  {
    v33 = v30;
  }

  else
  {
    v33 = 0;
  }

  OUTLINED_FUNCTION_2_121(v33);
  v34 = sub_1E374EA2C();
  v35 = sub_1E3C27638(15, &v49, 0, 0, v34);
  sub_1E39FA188(v28, v35, &v52);
  v56 = v53;
  v57 = v54;
  v55 = v52;
  v49 = v52;
  v50 = v53;
  v51 = v54;
  memset(v58, 0, sizeof(v58));
  v59 = 1;
  v36 = sub_1E3B4F7E4();
  v37 = v44;
  sub_1E3A6929C(5, 0, 0, 1, v58, &type metadata for LibLoadingSpinner, v36);
  sub_1E3B4F838(&v55);
  sub_1E3B4F838(&v55 + 8);
  sub_1E3B4F8A0(&v56);
  v38 = v45;
  v39 = v48;
  (*(v45 + 16))(v8, v37, v48);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F428);
  sub_1E3B4F72C();
  sub_1E32822E0();
  v40 = sub_1E3B4F780();
  *&v49 = &unk_1F5D78298;
  *(&v49 + 1) = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_0_151(v40);
  *&v49 = &type metadata for LibLoadingSpinner;
  *(&v49 + 1) = v36;
  OUTLINED_FUNCTION_1_147();
  OUTLINED_FUNCTION_3_126();
  sub_1E4201F44();
  return (*(v38 + 8))(v37, v39);
}

void sub_1E3B4F018()
{

  sub_1E3C0A0A4(__src);
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    sub_1E3741090(0xD000000000000016, 0x80000001E42726F0, v0);
    v3 = v2;

    if (v3)
    {
      type metadata accessor for LibDataSourceManager();
      sub_1E3B4E86C();
      sub_1E42010D4();
      swift_getKeyPath();
      sub_1E42010E4();

      MEMORY[0x1EEE9AC00](v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F428);
      sub_1E3B4F72C();
      sub_1E32822E0();
      sub_1E3B4F780();
      sub_1E4203454();

      memcpy(__dst, __src, sizeof(__dst));
      sub_1E3B4F8E0(__dst);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E3B4F234@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result & 1;
  return result;
}

void sub_1E3B4F2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F570);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - v7;
  v9 = [objc_opt_self() sharedInstance];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1E3741090(19279, 0xE200000000000000, v9);
    v13 = v12;

    if (v13)
    {
      v16[0] = v11;
      v16[1] = v13;
      sub_1E4200A14();
      v14 = sub_1E4200A34();
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
      v15 = swift_allocObject();
      v15[2] = a1;
      v15[3] = a2;
      v15[4] = a3;
      sub_1E32822E0();

      sub_1E4203974();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E3B4F454()
{
  type metadata accessor for LibDataSourceManager();
  sub_1E3B4E86C();
  v0 = sub_1E42010C4();
  type metadata accessor for LibRootViewLayout();
  sub_1E395AC4C();
  return v0;
}

unint64_t sub_1E3B4F4F8()
{
  result = qword_1ECF33C98;
  if (!qword_1ECF33C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33C90);
    sub_1E3B4F584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33C98);
  }

  return result;
}

unint64_t sub_1E3B4F584()
{
  result = qword_1ECF33CA0;
  if (!qword_1ECF33CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33C88);
    sub_1E3B4F608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33CA0);
  }

  return result;
}

unint64_t sub_1E3B4F608()
{
  result = qword_1ECF33CA8;
  if (!qword_1ECF33CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33CB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F428);
    sub_1E3B4F72C();
    sub_1E32822E0();
    sub_1E3B4F780();
    swift_getOpaqueTypeConformance2();
    sub_1E3B4F7E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33CA8);
  }

  return result;
}

unint64_t sub_1E3B4F72C()
{
  result = qword_1ECF33CB8;
  if (!qword_1ECF33CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33CB8);
  }

  return result;
}

unint64_t sub_1E3B4F780()
{
  result = qword_1EE288638;
  if (!qword_1EE288638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288638);
  }

  return result;
}

unint64_t sub_1E3B4F7E4()
{
  result = qword_1ECF33CC0;
  if (!qword_1ECF33CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33CC0);
  }

  return result;
}

uint64_t sub_1E3B4F838(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29088);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3B4F980()
{
  sub_1E4200554();
  sub_1E4200534();
  OUTLINED_FUNCTION_1_148();
  v0 = sub_1E42006B4();

  return v0;
}

uint64_t sub_1E3B4F9F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3B4FA6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1E3B4FAB8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 96);

  return v4(v2, v3);
}

uint64_t sub_1E3B4FB20()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

void (*sub_1E3B4FB9C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_1E4200664();
  return sub_1E3844B40;
}

uint64_t sub_1E3B4FC2C()
{
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3B4FC98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB20);
  OUTLINED_FUNCTION_1_2();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_1E3B4FDC0(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB20);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3B4FEDC;
}

void sub_1E3B4FEDC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = OUTLINED_FUNCTION_2_122();
    v8(v7);
    sub_1E3B4FC98(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1E3B4FC98(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1E3B4FF80()
{
  v1 = OBJC_IVAR____TtC8VideosUI25OptimizedObservableObject__optimizedId;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1E3B4FFE0()
{
  v1 = OBJC_IVAR____TtC8VideosUI25OptimizedObservableObject__optimizedId;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E3B5007C()
{
  v0 = swift_allocObject();
  sub_1E3B500B4();
  return v0;
}

uint64_t sub_1E3B500B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0);
  OUTLINED_FUNCTION_1_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v9 - v5;
  v7 = OBJC_IVAR____TtC8VideosUI25OptimizedObservableObject__optimizedId;
  v9[0] = 0xD000000000000019;
  v9[1] = 0x80000001E42BD300;
  sub_1E4200634();
  (*(v3 + 32))(v0 + v7, v6, v1);
  return v0;
}

uint64_t sub_1E3B501B8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for OptimizedObservableObject();
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

uint64_t sub_1E3B501F8()
{
  sub_1E4200554();
  OUTLINED_FUNCTION_1_148();
  return sub_1E42006B4();
}

uint64_t sub_1E3B5026C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1E3B502AC(a1);
  return v2;
}

uint64_t sub_1E3B502AC(uint64_t a1)
{
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 80);
  sub_1E4200554();
  *(v1 + v3) = sub_1E4200534();
  (*(*(v4 - 8) + 32))(v1 + *(*v1 + 96), a1, v4);
  return v1;
}

uint64_t sub_1E3B50380@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1E3B50420(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_1_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  v11 = *(v4 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v10, &v2[v11], v5);
  LOBYTE(v4) = sub_1E4205E84();
  v12 = *(v7 + 8);
  v12(v10, v5);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_3();
    (*(v7 + 24))(&v2[v11], a1, v5);
    swift_endAccess();

    sub_1E4200524();
  }

  return v12(a1, v5);
}

uint64_t sub_1E3B505EC()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

uint64_t sub_1E3B50678()
{
  sub_1E3B505EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for OptimizedObservableObject()
{
  result = qword_1EE296160;
  if (!qword_1EE296160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3B50734()
{
  sub_1E3846618();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E3B507C4()
{
  result = swift_checkMetadataState();
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

uint64_t sub_1E3B5087C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1E3B508D4()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_1E42074B4();

    v3 = sub_1E41E1364(v0);
    MEMORY[0x1E69109E0](v3);

    MEMORY[0x1E69109E0](41, 0xE100000000000000);
    v2 = 0xD000000000000020;
    *v1 = 0xD000000000000020;
    v1[1] = 0x80000001E4272890;
  }

  return v2;
}

id sub_1E3B509B4()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_metadataPresenter) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_mediaViewOffset);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_disableBackgroundExtension) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_7_121(&OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView____lazy_storage___logPrefix);
  *(v0 + OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_mediaView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_metadataView) = 0;
  v3 = OUTLINED_FUNCTION_2_0();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, ObjectType);
  [v6 setAccessibilityIgnoresInvertColors_];
  return v6;
}

void sub_1E3B50AB0()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_metadataPresenter) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_mediaViewOffset);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_disableBackgroundExtension) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_7_121(&OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView____lazy_storage___logPrefix);
  *(v0 + OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_mediaView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_metadataView) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3B50B98(uint64_t a1, double a2)
{
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E324FBDC();
  (*(v7 + 16))(v10, v11, v5);
  v12 = v2;
  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31[0] = v16;
    *v15 = 136315650;
    v17 = sub_1E3B508D4();
    v19 = sub_1E3270FC8(v17, v18, v31);
    v30 = v5;
    v20 = a1;
    v21 = v19;

    *(v15 + 4) = v21;
    a1 = v20;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v20;
    *(v15 + 22) = 2048;
    *(v15 + 24) = a2;
    _os_log_impl(&dword_1E323F000, v13, v14, "%s updateMediaMirroring: edges=%lu, percentage=%f", v15, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1E69143B0](v16, -1, -1);
    MEMORY[0x1E69143B0](v15, -1, -1);

    (*(v7 + 8))(v10, v30);
  }

  else
  {

    (*(v7 + 8))(v10, v5);
  }

  if ((a1 & 2) != 0)
  {
    v22 = a2;
  }

  else
  {
    v22 = 0.0;
  }

  if ((a1 & 8) != 0)
  {
    v23 = a2;
  }

  else
  {
    v23 = 0.0;
  }

  v24 = sub_1E3B50E6C();
  sub_1E3C41DF8(v22, v23);

  v25 = fmax(v22, v23);
  v12[OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_contentExtensionEnabled] = v25 > 0.0;
  [v12 setClipsToBounds_];
  v26 = OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_metadataView;
  OUTLINED_FUNCTION_5_0();
  v27 = *&v12[v26];
  if (v27)
  {
    v28 = *((*MEMORY[0x1E69E7D40] & *v27) + 0x198);
    v29 = v27;
    v28(a1, a2);
  }
}

_BYTE *sub_1E3B50E6C()
{
  v1 = OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView____lazy_storage___mediaContainerView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView____lazy_storage___mediaContainerView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView____lazy_storage___mediaContainerView];
  }

  else
  {
    type metadata accessor for BackgroundExtensionContainerView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_disableBackgroundExtension;
    OUTLINED_FUNCTION_5_0();
    LOBYTE(v5) = v0[v5];
    v6 = OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_disableBackgroundExtension;
    OUTLINED_FUNCTION_3_0();
    v4[v6] = v5;
    [v0 vui:v4 addSubview:0 oldView:?];
    [v0 vui:v4 sendSubviewToBack:?];
    v7 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1E3B50F58(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_mediaView;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = sub_1E3B50E6C();
  v7 = OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_mediaView;
  OUTLINED_FUNCTION_5_0();
  v8 = *(v1 + v7);
  v9 = v8;
  sub_1E3C41260(v8);
}

void sub_1E3B50FEC(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_metadataView;
  OUTLINED_FUNCTION_3_0();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;
  v6 = sub_1E39DFFC8();
  v7 = OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_metadataView;
  if (v6)
  {
    OUTLINED_FUNCTION_5_0();
    [v1 vui:*&v1[v7] addSubview:v4 oldView:?];
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5_0();
  v8 = *&v1[v7];
  if (v8)
  {
    if (v8 == v4)
    {
      goto LABEL_12;
    }

    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else if (!v4)
  {
    goto LABEL_12;
  }

  [v4 removeFromSuperview];
LABEL_9:
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v9 = OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_metadataView;
    OUTLINED_FUNCTION_5_0();
    v10 = *&v1[v9];
    if (v10)
    {
      v11 = v10;
      [v11 setTranslatesAutoresizingMaskIntoConstraints_];
      [v1 addSubview_];
      v12 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1E42A1E20;
      v14 = [v11 leadingAnchor];
      v15 = [v1 leadingAnchor];
      v16 = OUTLINED_FUNCTION_5_119();

      *(v13 + 32) = v16;
      v17 = [v11 trailingAnchor];
      v18 = [v1 trailingAnchor];
      v19 = OUTLINED_FUNCTION_5_119();

      *(v13 + 40) = v19;
      v20 = [v11 topAnchor];
      v21 = [v1 topAnchor];
      v22 = OUTLINED_FUNCTION_5_119();

      *(v13 + 48) = v22;
      v23 = [v11 bottomAnchor];

      v24 = [v1 bottomAnchor];
      v25 = [v23 constraintEqualToAnchor_];

      *(v13 + 56) = v25;
      sub_1E3B51B98();
      v26 = sub_1E42062A4();

      [v12 activateConstraints_];
    }
  }

LABEL_12:
}

id sub_1E3B512EC(void *a1, void *a2)
{
  v5 = a1;
  sub_1E3B50F58(a1);
  v6 = a2;
  sub_1E3B50FEC(a2);
  if (a2)
  {
    [v2 vui:v6 bringSubviewToFront:?];
  }

  if (sub_1E39DFFC8())
  {
    v7 = *(v2 + OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_contentExtensionEnabled) ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return [v2 setVuiClipsToBounds_];
}

void sub_1E3B5138C(void *a1)
{
  v2 = a1;

  sub_1E3B50FEC(a1);
}

void sub_1E3B513C4(double a1)
{
  OUTLINED_FUNCTION_1_14(OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_mediaViewOffset);
  OUTLINED_FUNCTION_3_0();
  *(v1 + 8) = a1;
  sub_1E3B5140C();
}

void sub_1E3B5140C()
{
  v1 = sub_1E3B50E6C();
  v2 = &v0[OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_mediaViewOffset];
  OUTLINED_FUNCTION_5_0();
  v3 = *v2;
  v4 = v2[1];
  [v0 bounds];
  [v1 setFrame_];
}

void sub_1E3B51490(double a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*&a1 & 0x7FF0000000000000) != 0 || (*&a1 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v13 = OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_mediaViewOffset;
    OUTLINED_FUNCTION_3_0();
    *(v1 + v13) = a1;
    sub_1E3B5140C();
  }

  else
  {
    v9 = sub_1E324FBDC();
    (*(v5 + 16))(v8, v9, v3);
    v10 = sub_1E41FFC94();
    v11 = sub_1E42067F4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = a1;
      _os_log_impl(&dword_1E323F000, v10, v11, "PaginatedSwipingContainerView:: updateMediaViewHorizontalOffset is NaN, %f", v12, 0xCu);
      MEMORY[0x1E69143B0](v12, -1, -1);
    }

    (*(v5 + 8))(v8, v3);
  }
}

void sub_1E3B5162C(double a1)
{
  v2 = sub_1E3B50E6C();
  [v2 setVuiAlpha_];
}

void sub_1E3B51680(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_metadataView;
  OUTLINED_FUNCTION_0_12();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x180);
    v6 = v4;
    v5(a1);
  }
}

void sub_1E3B51718(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_metadataView;
  OUTLINED_FUNCTION_0_12();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x100);
    v6 = v4;
    v7 = v5();

    if (v7)
    {
      [v7 setVuiAlpha_];
    }
  }
}

void sub_1E3B517CC(double a1, double a2)
{
  sub_1E3B51680(a1);

  sub_1E3B51490(a2);
}

double sub_1E3B51804(char a1, double a2, double a3)
{
  v4 = v3;
  v15.receiver = v4;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  if (a1)
  {
    return a2;
  }

  sub_1E3B5140C();
  v8 = OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_metadataView;
  OUTLINED_FUNCTION_5_0();
  if (!*&v4[v8])
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v9 = sub_1E392583C();

  if (v9)
  {
    v11 = (*(*v9 + 392))(v10);

    if (v11)
    {
      type metadata accessor for MediaShowcasingMetadataLayout();
      v9 = swift_dynamicCastClass();
      if (!v9)
      {
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_8:
  if (sub_1E39DFFC8())
  {
    goto LABEL_11;
  }

  if (v9)
  {
    v17 = v9[120];
    v16 = 6;
    sub_1E3B23B9C();
    if ((sub_1E4205E84() & 1) == 0)
    {
LABEL_13:

      return a2;
    }

LABEL_11:
    v12 = *&v4[v8];
    if (v12)
    {
      v13 = v12;
      [v4 bounds];
      [v13 setFrame_];
    }

    goto LABEL_13;
  }

  return a2;
}

uint64_t sub_1E3B51AA0(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_delegate;
  OUTLINED_FUNCTION_5_0();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 8))(a1, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_1E3B51B98()
{
  result = qword_1EE23B1A0;
  if (!qword_1EE23B1A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B1A0);
  }

  return result;
}

uint64_t sub_1E3B51BDC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  (*(v0 + 376))();
}

uint64_t sub_1E3B51C4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3B51CC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  OUTLINED_FUNCTION_13_93();
  if (v4 && a1)
  {
    v5 = OUTLINED_FUNCTION_13_8();
    v2 = sub_1E38BBA04(v5, v6);
  }

  if (v2)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_9_88();
    OUTLINED_FUNCTION_8_90();
    v9();
  }
}

uint64_t sub_1E3B51DE4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  (*(v0 + 376))();
}

uint64_t sub_1E3B51E54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3B51ECC(uint64_t a1)
{
  v4 = *(v1 + 24);
  OUTLINED_FUNCTION_13_93();
  if (v4 && a1)
  {
    v5 = OUTLINED_FUNCTION_13_8();
    v2 = sub_1E39C3764(v5, v6);
  }

  if (v2)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_9_88();
    OUTLINED_FUNCTION_8_90();
    v9();
  }
}

uint64_t sub_1E3B51FEC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  (*(v0 + 376))();
}

uint64_t sub_1E3B5205C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3B520D4(uint64_t a1)
{
  swift_getKeyPath();
  v5 = v1;
  v6 = a1;
  OUTLINED_FUNCTION_8();
  (*(v3 + 384))();
}

uint64_t sub_1E3B521A8()
{
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();
  swift_weakAssign();
}

uint64_t sub_1E3B52244()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  (*(v1 + 376))();

  OUTLINED_FUNCTION_5_0();
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_1E3B522C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1E3B5231C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 328);

  return v4(v2, v3);
}

uint64_t sub_1E3B5238C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();
  v5 = *(v2 + 56);
  if (v5 && a2)
  {
    v6 = *(v2 + 48) == a1 && v5 == a2;
    if (!v6 && (sub_1E42079A4() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v5 | a2)
  {
LABEL_8:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_8_90();
    v8();
  }

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

void (*sub_1E3B524C8(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_36();
  (*(v4 + 376))();

  v3[5] = OBJC_IVAR____TtC8VideosUI24ViewModelVariantResolver___observationRegistrar;
  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_123();
  v3[6] = sub_1E3B540C0(v5, v6);
  sub_1E41FE914();

  v3[7] = sub_1E3B521F4();
  return sub_1E3B525EC;
}

void sub_1E3B525EC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1E41FE904();

  free(v1);
}

uint64_t sub_1E3B52680()
{
  v0 = OUTLINED_FUNCTION_14_99();
  sub_1E3B526B0();
  return v0;
}

void *sub_1E3B526B0()
{
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  swift_weakInit();
  v0[6] = 0;
  v0[7] = 0;
  sub_1E41FE924();
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();
  swift_weakAssign();

  return v0;
}

uint64_t sub_1E3B52728(uint64_t a1)
{
  v3 = sub_1E41FFCB4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_36();
  result = (*(v7 + 272))();
  if (!result)
  {
    return result;
  }

  v9 = result;
  OUTLINED_FUNCTION_99();
  (*(v10 + 368))(a1);
  v70 = v3;
  if (!v11)
  {
    OUTLINED_FUNCTION_99();
    (*(v12 + 360))();
  }

  OUTLINED_FUNCTION_99();
  (*(v13 + 328))();
  v14 = swift_allocObject();
  v74 = v14;
  *(v14 + 16) = 0;
  v15 = (v14 + 16);
  v16 = swift_allocObject();
  v75 = v16;
  *(v16 + 16) = 0;
  v17 = (v16 + 16);
  v18 = *(*v9 + 720);
  v72 = *v9 + 720;
  v71 = v18;
  v18();
  OUTLINED_FUNCTION_30();
  v20 = (*(v19 + 96))();

  v76 = v17;
  if (!v20)
  {
    v33 = 0;
LABEL_29:
    v34 = sub_1E3B51CC4(v33);
    (v71)(v34);
    OUTLINED_FUNCTION_30();
    v36 = (*(v35 + 120))();

    if (v36)
    {
      MEMORY[0x1EEE9AC00](v37);
      v38 = v74;
      *(&v66 - 4) = v1;
      *(&v66 - 3) = v38;
      *(&v66 - 2) = v75;
      v39 = sub_1E3B53F3C(v36, sub_1E3B53DD4, &v66 - 6);
    }

    else
    {
      v39 = 0;
    }

    sub_1E3B51ECC(v39);
    OUTLINED_FUNCTION_99();
    v40 += 40;
    v41 = *v40;
    (*v40)();
    if (v42 && (, OUTLINED_FUNCTION_5_0(), *v15) || (v43 = v76, v44 = OUTLINED_FUNCTION_5_0(), *v43 < 1))
    {
    }

    else
    {
      v79 = *v43;
      v81 = (v41)(v44);
      v82 = v45;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
      sub_1E4148F70(sub_1E3B5305C, 0, v46, MEMORY[0x1E69E6158], &v83);

      v47 = v84;
      v77 = v83;
      v48 = v9;
      if (v84)
      {
        v49 = v84;
      }

      else
      {
        v49 = 0xE300000000000000;
      }

      v50 = sub_1E324FBDC();
      v51 = v70;
      (*(v4 + 16))(v6, v50, v70);

      v52 = sub_1E41FFC94();
      v53 = sub_1E4206814();

      LODWORD(v78) = v53;
      if (os_log_type_enabled(v52, v53))
      {
        if (v47)
        {
          v54 = v77;
        }

        else
        {
          v54 = 7104878;
        }

        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v83 = v56;
        *v55 = 136315906;
        OUTLINED_FUNCTION_99();
        v57 = sub_1E4207CE4();
        v59 = v6;
        v60 = sub_1E3270FC8(v57, v58, &v83);

        *(v55 + 4) = v60;
        *(v55 + 12) = 2080;
        v61 = sub_1E3270FC8(v54, v49, &v83);

        *(v55 + 14) = v61;
        *(v55 + 22) = 2080;
        v63 = (*(*v48 + 376))(v62);
        v65 = sub_1E3270FC8(v63, v64, &v83);

        *(v55 + 24) = v65;
        *(v55 + 32) = 2048;
        *(v55 + 34) = v79;

        _os_log_impl(&dword_1E323F000, v52, v78, "%s: no matches for current variant %s in %s: %ld children hidden", v55, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1E69143B0](v56, -1, -1);
        MEMORY[0x1E69143B0](v55, -1, -1);

        (*(v4 + 8))(v59, v70);
      }

      else
      {

        (*(v4 + 8))(v6, v51);
      }
    }
  }

  v67 = v9;
  v68 = v6;
  v69 = v4;
  v80 = MEMORY[0x1E69E7CC0];
  v79 = sub_1E32AE9B0(v20);
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_27_6();
  result = swift_beginAccess();
  v21 = 0;
  v73 = 0;
  v22 = 0;
  v78 = v20 & 0xC000000000000001;
  v77 = v20 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v79 == v21)
    {

      v33 = v80;
      v4 = v69;
      v6 = v68;
      v9 = v67;
      goto LABEL_29;
    }

    if (v78)
    {
      result = MEMORY[0x1E6911E60](v21, v20);
    }

    else
    {
      if (v21 >= *(v77 + 16))
      {
        goto LABEL_49;
      }
    }

    if (__OFADD__(v21, 1))
    {
      break;
    }

    v23 = v15;
    v85[3] = &unk_1F5D5DAC8;
    v85[4] = &off_1F5D5C998;
    LOBYTE(v85[0]) = 49;
    v24 = sub_1E39C29A4(v85);
    v26 = v25;
    __swift_destroy_boxed_opaque_existential_1(v85);
    if (!v26)
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_99();
    v28 = (*(v27 + 320))();
    if (v29)
    {
      if (v24 == v28 && v26 == v29)
      {
      }

      else
      {
        v31 = sub_1E42079A4();

        if ((v31 & 1) == 0)
        {

          goto LABEL_20;
        }
      }

      v32 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        goto LABEL_51;
      }

      ++v73;
      *v23 = v32;
LABEL_25:
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      result = sub_1E4207554();
      ++v21;
      v15 = v23;
    }

    else
    {

LABEL_20:
      if (__OFADD__(v22, 1))
      {
        goto LABEL_50;
      }

      *v76 = v22 + 1;
      ++v21;
      ++v22;
      v15 = v23;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1E3B5305C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1E69109E0](*a1, a1[1]);
  result = MEMORY[0x1E69109E0](39, 0xE100000000000000);
  *a2 = 39;
  a2[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_1E3B530C8()
{
  OUTLINED_FUNCTION_8();
  v0 += 34;
  v1 = *v0;
  v2 = &unk_1F5D5DAC8;
  if (!(*v0)())
  {
    goto LABEL_43;
  }

  v43 = &unk_1F5D5DAC8;
  v44 = &off_1F5D5C998;
  LOBYTE(v42[0]) = 52;
  sub_1E39C29A4(v42);
  v4 = v3;

  __swift_destroy_boxed_opaque_existential_1(v42);
  if (!v4)
  {
    goto LABEL_43;
  }

  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_1E4205ED4();

  v7 = [v5 stringForKey_];

  if (!v7)
  {
    goto LABEL_43;
  }

  v40 = sub_1E4205F14();
  v41 = v8;

  if (!v1() || (OUTLINED_FUNCTION_30(), v10 = (*(v9 + 720))(), v11 = , v12 = (*(*v10 + 96))(v11), , !v12))
  {
LABEL_23:
    if (v1())
    {
      OUTLINED_FUNCTION_30();
      v23 = (*(v22 + 720))();

      v25 = (*(*v23 + 120))(v24);

      if (v25)
      {
        v26 = v2;
        v39 = v1;
        v27 = 1 << *(v25 + 32);
        v28 = -1;
        if (v27 < 64)
        {
          v28 = ~(-1 << v27);
        }

        v29 = v28 & *(v25 + 64);
        v30 = (v27 + 63) >> 6;

        v31 = 0;
        while (v29)
        {
LABEL_33:
          v29 &= v29 - 1;
          v43 = v26;
          v44 = &off_1F5D5C998;
          LOBYTE(v42[0]) = 49;

          v33 = sub_1E39C29A4(v42);
          v35 = v34;
          __swift_destroy_boxed_opaque_existential_1(v42);
          if (v35)
          {
            if (v33 == v40 && v35 == v41)
            {

              goto LABEL_47;
            }

            v37 = sub_1E42079A4();

            if (v37)
            {

              goto LABEL_47;
            }
          }

          else
          {
          }
        }

        while (1)
        {
          v32 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v32 >= v30)
          {

            v1 = v39;
            v2 = v26;
            goto LABEL_43;
          }

          v29 = *(v25 + 64 + 8 * v32);
          ++v31;
          if (v29)
          {
            v31 = v32;
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        return result;
      }
    }

LABEL_43:
    result = v1();
    if (result)
    {
      v43 = v2;
      v44 = &off_1F5D5C998;
      LOBYTE(v42[0]) = 50;
      sub_1E39C29A4(v42);

      __swift_destroy_boxed_opaque_existential_1(v42);
      return OUTLINED_FUNCTION_13_8();
    }

    return result;
  }

  v38 = v1;
  result = sub_1E32AE9B0(v12);
  v14 = result;
  for (i = 0; ; ++i)
  {
    if (v14 == i)
    {

      v1 = v38;
      goto LABEL_23;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, v12);
    }

    else
    {
      if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_50;
    }

    v16 = v2;
    v43 = v2;
    v44 = &off_1F5D5C998;
    LOBYTE(v42[0]) = 49;
    v17 = sub_1E39C29A4(v42);
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1(v42);
    if (!v19)
    {

      goto LABEL_20;
    }

    if (v17 == v40 && v19 == v41)
    {
      break;
    }

    v21 = sub_1E42079A4();

    if (v21)
    {
      goto LABEL_47;
    }

LABEL_20:
    v2 = v16;
  }

LABEL_47:

  return v40;
}

uint64_t sub_1E3B535F8(uint64_t a1)
{
  sub_1E3294F34(a1, v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1E329505C(v3);
    return 0;
  }
}

uint64_t sub_1E3B536D0()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_1E3B5370C()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_1E3B53748()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
}

uint64_t sub_1E3B537CC()
{

  swift_weakDestroy();

  v1 = OBJC_IVAR____TtC8VideosUI24ViewModelVariantResolver___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1E3B53848()
{
  sub_1E3B537CC();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

BOOL sub_1E3B539A4()
{
  v1 = v0;
  OUTLINED_FUNCTION_12_83();
  v3 = sub_1E39C29A4(v2);
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (v5)
  {
    v7[3] = MEMORY[0x1E69E6158];
    v7[0] = v3;
    v7[1] = v5;
    (*(*v1 + 352))(v7);
    sub_1E329505C(v7);
  }

  return v5 != 0;
}

uint64_t sub_1E3B53A58()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 320))();
  v3 = v2;
  OUTLINED_FUNCTION_12_83();
  v5 = sub_1E39C29A4(v4);
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1(v11);
  if (v3)
  {
    if (v7)
    {
      if (v1 == v5 && v3 == v7)
      {

        v9 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_13_8();
        v9 = sub_1E42079A4();
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (!v7)
    {
      v9 = 1;
      return v9 & 1;
    }

    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1E3B53B7C()
{
  OUTLINED_FUNCTION_1_149();
  sub_1E3B540C0(v0, v1);
  return sub_1E41FE8F4();
}

uint64_t sub_1E3B53C14()
{
  OUTLINED_FUNCTION_1_149();
  sub_1E3B540C0(v0, v1);
  return sub_1E41FE8E4();
}

uint64_t sub_1E3B53CA8()
{
  v0 = OUTLINED_FUNCTION_14_99();
  sub_1E41FE924();
  sub_1E3B526B0();
  return v0;
}

uint64_t sub_1E3B53CE8()
{
  v1 = OBJC_IVAR____TtC8VideosUI26PickerValueVariantResolver___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1E3B53D44()
{
  sub_1E3B537CC();
  v1 = OBJC_IVAR____TtC8VideosUI26PickerValueVariantResolver___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_36();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t sub_1E3B53DD4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v16[3] = &unk_1F5D5DAC8;
  v16[4] = &off_1F5D5C998;
  LOBYTE(v16[0]) = 49;
  v4 = sub_1E39C29A4(v16);
  v6 = v5;
  v7 = __swift_destroy_boxed_opaque_existential_1(v16);
  if (!v6)
  {
    return 1;
  }

  v8 = (*(*v1 + 320))(v7);
  if (v9)
  {
    if (v4 == v8 && v6 == v9)
    {

      goto LABEL_14;
    }

    OUTLINED_FUNCTION_13_8();
    v11 = sub_1E42079A4();

    if (v11)
    {
LABEL_14:
      v13 = (v2 + 16);
      v12 = 1;
      OUTLINED_FUNCTION_27_6();
      result = swift_beginAccess();
      v15 = *(v2 + 16) + 1;
      if (!__OFADD__(*(v2 + 16), 1))
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v13 = (v3 + 16);
  OUTLINED_FUNCTION_27_6();
  result = swift_beginAccess();
  v15 = *(v3 + 16) + 1;
  if (!__OFADD__(*(v3 + 16), 1))
  {
    v12 = 0;
LABEL_15:
    *v13 = v15;
    return v12;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}