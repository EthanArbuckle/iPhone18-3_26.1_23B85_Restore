uint64_t sub_1E38A4C94()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_54();

  return v2();
}

void sub_1E38A4DB8()
{
  OUTLINED_FUNCTION_108_2();
  v1 = v0;
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8))())
  {
    v2 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_isShowingShelf;
    OUTLINED_FUNCTION_14_0();
    *(v1 + v2) = 0;
    sub_1E38A3710();
  }

  v3 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController;
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController);
  if (!v4)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_88_0();
  v6 = *(v5 + 1888);
  v8 = v7;
  v6();

  v9 = *(v1 + v3);
  if (!v9)
  {
    goto LABEL_9;
  }

  [v9 vui:0 willMoveToParentViewController:?];
  v10 = *(v1 + v3);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = [v10 vuiView];
  if (v11)
  {
    v12 = v11;
    [v11 vui_removeFromSuperView];

    v13 = *(v1 + v3);
    if (v13)
    {
      [v13 vui_removeFromParentViewController];
      v4 = *(v1 + v3);
LABEL_10:
      *(v1 + v3) = 0;

      OUTLINED_FUNCTION_109_4();
      return;
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1E38A4F08()
{
  sub_1E38A524C();

  sub_1E38A32E8(0);
}

uint64_t sub_1E38A4F94(void *a1)
{
  if ([a1 currentMediaItem])
  {
    ObjectType = swift_getObjectType();
    v2 = *MEMORY[0x1E69D5B98];
    swift_unknownObjectRetain();
    v3 = MEMORY[0x1E69E6158];
    sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]);
    sub_1E4123590(v2, v3, v8);
    swift_unknownObjectRelease();
    v4 = v8[0];
    v5 = v8[1];
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = sub_1E414A784(0xD000000000000010, 0x80000001E4264AE0, v4, v5);
  swift_unknownObjectRelease();

  return v6;
}

void sub_1E38A5080(void *a1)
{
  v3 = v1;
  v4 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_51_11())
  {
    OUTLINED_FUNCTION_6_21();
    v5 = OUTLINED_FUNCTION_9_44();
    OUTLINED_FUNCTION_48_16(5.7779e-34);
    *v6 = v3;
    v7 = v3;
    OUTLINED_FUNCTION_7_28(&dword_1E323F000, v8, v9, "%@ Starting playback prefetching");
    sub_1E325F6F0(v5, &unk_1ECF28E30);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_65_0();
  }

  v10 = sub_1E38A4F94(a1);
  v12 = v11;
  v13 = objc_allocWithZone(VUIPlayer);
  v14 = sub_1E38A6730(v10, v12);
  v15 = MEMORY[0x1E69E7D40];
  v16 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x108))(v14);
  v17 = *((*v15 & *v3) + 0x100);
  v18 = (v17)(v16);
  if (v18)
  {
    v19 = v18;
    [v18 setPlaylist_];
  }

  v20 = v17();
  [v20 pause];
}

void sub_1E38A524C()
{
  v2 = v0;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playbackPrefetchTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    OUTLINED_FUNCTION_78_3();
  }

  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x100))();
  if (v4)
  {
    v12 = v4;
    v5 = v0;
    v6 = OUTLINED_FUNCTION_66_11();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_51_11())
    {
      OUTLINED_FUNCTION_6_21();
      v7 = OUTLINED_FUNCTION_9_44();
      OUTLINED_FUNCTION_55_11(5.7779e-34);
      *v8 = v2;
      v9 = v1;
      OUTLINED_FUNCTION_7_28(&dword_1E323F000, v10, v11, "%@ Invalidating prefetch player");
      sub_1E325F6F0(v7, &unk_1ECF28E30);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    [v12 stop];
    [v12 invalidate];
    (*((*v3 & *v1) + 0x108))(0);
  }
}

uint64_t sub_1E38A5438()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CC00);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  *&v4 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v6 = &v15 - v5;
  if (![*(v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player) currentMediaItem] || (ObjectType = swift_getObjectType(), v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770), sub_1E4123588(ObjectType, v8), v9 = OUTLINED_FUNCTION_24_4(), sub_1E4123590(v9, v8, v10), swift_unknownObjectRelease(), (v11 = v16) == 0))
  {
    v11 = sub_1E4205CB4();
  }

  sub_1E3B1BEB8(v11, v6);
  PolicyVMa = _s28LivePostPlayShelfFetchPolicyVMa();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, PolicyVMa);
  v13 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfFetchPolicy;
  OUTLINED_FUNCTION_11_3();
  sub_1E38A7C94(v6, v1 + v13);
  return swift_endAccess();
}

void sub_1E38A55BC(char a1)
{
  v5 = v1;
  if (*(v1 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController))
  {
    OUTLINED_FUNCTION_88_0();
    v8 = *(v7 + 1776);
    v10 = v9;
    v11 = v8();
  }

  else
  {
    v11 = 0.0;
  }

  v16 = *(v5 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playerViewController);
  if (v16)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      if (a1)
      {
        v14 = v16;
        sub_1E3952C94();
        OUTLINED_FUNCTION_3();
      }

      else
      {
        v11 = *MEMORY[0x1E69DDCE0];
        v2 = *(MEMORY[0x1E69DDCE0] + 8);
        v3 = *(MEMORY[0x1E69DDCE0] + 16);
        v4 = *(MEMORY[0x1E69DDCE0] + 24);
        v15 = v16;
      }

      [v13 setLegibleContentInsets_];
    }
  }
}

id sub_1E38A5720()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isFullscreenPlaybackUIBeingShown];

  return v1;
}

BOOL sub_1E38A5778()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 activePlayer];

  if (!v3)
  {
    return 0;
  }

  return v1 == v3;
}

void sub_1E38A5934()
{
  v2 = v0;
  v3 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_67_5())
  {
    OUTLINED_FUNCTION_6_21();
    v4 = OUTLINED_FUNCTION_32_27();
    *v1 = 138412290;
    *(v1 + 4) = v2;
    *v4 = v2;
    v5 = v2;
    OUTLINED_FUNCTION_136();
    OUTLINED_FUNCTION_103_0(v6, v7, v8, v9);
    sub_1E325F6F0(v4, &unk_1ECF28E30);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_7_9();
  }

  if (*(v2 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfFetchTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    OUTLINED_FUNCTION_80_4();
  }

  v11 = MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x100);
  v13 = (v12)(v10);
  [v13 stop];

  v14 = v12();
  [v14 invalidate];

  (*((*v11 & *v2) + 0x108))(0);
  if (*(v2 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playbackPrefetchTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    OUTLINED_FUNCTION_80_4();
  }

  if (*(v2 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_inactivityTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    OUTLINED_FUNCTION_80_4();
  }

  if (*(v2 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_dismissPlaybackTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    OUTLINED_FUNCTION_80_4();
  }

  sub_1E38A32E8(0);
  sub_1E38A4D0C();
  sub_1E38A4DB8();
}

void sub_1E38A5C24()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v9 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v31 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  if (sub_1E389D9E8())
  {
    v15 = v0;
    v16 = sub_1E41FFC94();
    v17 = sub_1E4206814();

    if (os_log_type_enabled(v16, v17))
    {
      v29 = v7;
      v18 = swift_slowAlloc();
      v28 = v9;
      v19 = OUTLINED_FUNCTION_160();
      *v18 = 138412546;
      *(v18 + 4) = v15;
      *v19 = v15;
      *(v18 + 12) = 1024;
      *(v18 + 14) = v4 & 1;
      v20 = v15;
      _os_log_impl(&dword_1E323F000, v16, v17, "%@ Player controls visibility did change to %{BOOL}d", v18, 0x12u);
      sub_1E325F6F0(v19, &unk_1ECF28E30);
      v9 = v28;
      OUTLINED_FUNCTION_6_0();
      v7 = v29;
      OUTLINED_FUNCTION_6_0();
    }
  }

  v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playerControlsOrTabsVisible] = v4 & 1;
  if ((v4 & 1) == 0 && v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss] == 1)
  {
    v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss] = 0;
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v30 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32[4] = sub_1E38A6AB0;
    v32[5] = v21;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v32[2] = v22;
    v32[3] = &block_descriptor_12_0;
    v23 = _Block_copy(v32);

    sub_1E4203FE4();
    v32[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_4_59();
    sub_1E3274A24(v24, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    OUTLINED_FUNCTION_47();
    sub_1E32752B0(v26, v27);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v14, v1, v23);
    _Block_release(v23);

    (*(v7 + 8))(v1, v5);
    (*(v31 + 8))(v14, v9);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38A6014(void *a1, double a2, double a3)
{
  OUTLINED_FUNCTION_4_0();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_83_1(v7);
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  v16 = sub_1E38A6AFC;
  v17 = v8;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1E37C7850;
  v15 = &block_descriptor_19;
  v9 = _Block_copy(&v12);

  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_1E38A6D7C;
  v17 = v10;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1E37C7850;
  v15 = &block_descriptor_23;
  v11 = _Block_copy(&v12);

  [a1 animateAlongsideTransition:v9 completion:v11];
  _Block_release(v11);
  _Block_release(v9);
}

uint64_t sub_1E38A63A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8D0);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1E329504C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1E329504C(v29, v30);
    result = sub_1E42073F4();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = *(v2 + 48) + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_1E329504C(v30, (*(v2 + 56) + 32 * v16));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_1E38A666C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1E4205ED4();

  v9 = sub_1E4205ED4();

  if (a6)
  {
    v10 = sub_1E4205ED4();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithCanonicalId:v8 playablePassthrough:v9 broadcastLocale:v10];

  return v11;
}

id sub_1E38A6730(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1E4205ED4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithName_];

  return v4;
}

uint64_t sub_1E38A6794()
{
  OUTLINED_FUNCTION_134();
  v2 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v3 = v2;
  v5 = v4[12];
  v6 = v4[11];
  v7 = v4[8];
  v8 = *v1;
  OUTLINED_FUNCTION_31();
  *v9 = v8;
  *(v2 + 120) = v0;

  v5(v6, v7);
  if (v0)
  {
    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {

    OUTLINED_FUNCTION_15_12();

    return v13();
  }
}

void sub_1E38A6934()
{
  v1 = sub_1E38A75A8(*(v0 + 16));
  if (v1)
  {
    v2 = v1;
    if (sub_1E32AE9B0(v1))
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x1E6911E60](0, v2);
      }

      else
      {
        if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v3 = *(v2 + 32);
      }

      v4 = v3;

      [objc_opt_self() recordPlay:v4 isLaunchingExtras:0];
    }

    else
    {
    }
  }
}

uint64_t sub_1E38A6A14()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64_0(v1);

  return sub_1E389F474();
}

void sub_1E38A6AB0()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E38A1FA8();
  }
}

void sub_1E38A6AFC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    OUTLINED_FUNCTION_64();
    v3 = (*(v2 + 456))();
    v4 = v1;
    v5 = sub_1E41FFC94();
    sub_1E4206814();

    v6 = OUTLINED_FUNCTION_67_5();
    if (v3)
    {
      if (v6)
      {
        OUTLINED_FUNCTION_49_0();
        v7 = OUTLINED_FUNCTION_9_44();
        v8 = OUTLINED_FUNCTION_100();
        v30 = v8;
        OUTLINED_FUNCTION_48_16(5.778e-34);
        *v7 = v1;
        *(v3 + 12) = 2080;
        v9 = v4;
        v10 = sub_1E4206E54();
        v12 = sub_1E3270FC8(v10, v11, &v30);

        *(v3 + 14) = v12;
        OUTLINED_FUNCTION_136();
        _os_log_impl(v13, v14, v15, v16, v3, 0x16u);
        sub_1E325F6F0(v7, &unk_1ECF28E30);
        OUTLINED_FUNCTION_55();
        __swift_destroy_boxed_opaque_existential_1(v8);
        OUTLINED_FUNCTION_21_0();
        OUTLINED_FUNCTION_65_0();
      }

      v17 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController;
      v18 = *&v4[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController];
      if (!v18)
      {
        goto LABEL_13;
      }

      v19 = [v18 view];
      if (v19)
      {
        v20 = v19;
        [v19 frame];

        v21 = *&v4[v17];
        if (!v21)
        {
LABEL_13:

          return;
        }

        v22 = [v21 view];
        if (v22)
        {
          v23 = v22;
          OUTLINED_FUNCTION_98_3(v22, sel_setFrame_);
          v5 = v4;
          v4 = v23;
LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    if (v6)
    {
      OUTLINED_FUNCTION_6_21();
      v24 = OUTLINED_FUNCTION_9_44();
      OUTLINED_FUNCTION_48_16(5.7779e-34);
      *v25 = v1;
      v4 = v4;
      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_50_6(v26, v27, v28, v29);
      sub_1E325F6F0(v24, &unk_1ECF28E30);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    goto LABEL_12;
  }
}

void sub_1E38A6D7C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong;
    v4 = OUTLINED_FUNCTION_105();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_51_11())
    {
      OUTLINED_FUNCTION_6_21();
      v5 = OUTLINED_FUNCTION_9_44();
      OUTLINED_FUNCTION_48_16(5.7779e-34);
      *v6 = v2;
      v7 = v0;
      OUTLINED_FUNCTION_7_28(&dword_1E323F000, v8, v9, "%@ update post play shelf visibility after player view transition has completed");
      sub_1E325F6F0(v5, &unk_1ECF28E30);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    v10 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_gameEndShelfAlreadyDisplayed;
    v11 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_broadcastEndShelfAlreadyDisplayed;
    v12 = *(v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_gameEndShelfAlreadyDisplayed);
    v13 = *(v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_broadcastEndShelfAlreadyDisplayed);
    v14 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8);
    if (v14())
    {
      *(v0 + v10) = 0;
      *(v0 + v11) = 0;
      sub_1E38A1FA8();
      if (v14())
      {
        *(v0 + v10) = v12;
        *(v0 + v11) = v13;
      }
    }

    else
    {
      sub_1E38A1FA8();
    }
  }
}

unint64_t sub_1E38A6EEC()
{
  result = qword_1ECF2CC08;
  if (!qword_1ECF2CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CC08);
  }

  return result;
}

void sub_1E38A6F48()
{
  sub_1E41FFCB4();
  if (v0 <= 0x3F)
  {
    sub_1E38A7080();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E38A7080()
{
  if (!qword_1EE261238[0])
  {
    _s28LivePostPlayShelfFetchPolicyVMa();
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, qword_1EE261238);
    }
  }
}

uint64_t getEnumTagSinglePayload for LivePostPlayController.ShelfDisplayFailureReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LivePostPlayController.ShelfDisplayFailureReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E38A723C()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E38A8524;

  return sub_1E38A44F0();
}

unint64_t sub_1E38A72C8()
{
  result = qword_1ECF339D0;
  if (!qword_1ECF339D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF339D0);
  }

  return result;
}

unint64_t sub_1E38A731C()
{
  result = qword_1EE260AA0;
  if (!qword_1EE260AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE260AA0);
  }

  return result;
}

id sub_1E38A7370()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  result = [v1 vuiView];
  if (result)
  {
    v4 = result;
    [result frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;

    result = [v1 vuiView];
    if (result)
    {
      v11 = result;
      [result setFrame_];

      return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x758))(1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E38A747C()
{
  OUTLINED_FUNCTION_108_2();
  v1 = v0;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      v4 = sub_1E389D8C4();
      v5 = MEMORY[0x1E69E7D40];
      if (v4)
      {
        OUTLINED_FUNCTION_71();
        OUTLINED_FUNCTION_64();
        v7 = *(v6 + 2192);
        v8 = v3;
        v7(v3, &off_1F5D60F78);
      }

      v9 = sub_1E389D8C4();
      if (v9)
      {
        v10 = v9;
        v11 = OUTLINED_FUNCTION_83_3();
        (*((*v5 & *v10) + 0x980))(v11 & 1);
      }

      sub_1E38A3A5C();
      sub_1E38A4D00();
      sub_1E38A2E40();
      sub_1E38A55BC(1);
    }
  }

  OUTLINED_FUNCTION_109_4();
}

uint64_t sub_1E38A75A8(void *a1)
{
  v1 = [a1 videosPlayables];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3280A90(0, &qword_1EE23B1C0);
  v3 = sub_1E42062B4();

  return v3;
}

id sub_1E38A7618(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1E4205C44();

  v8 = [a4 createWithPageId:a1 andPageType:a2 andEventData:v7];

  return v8;
}

uint64_t objectdestroy_84Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_16_0();

  return swift_deallocObject();
}

uint64_t sub_1E38A76FC()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64_0(v1);

  return sub_1E38A1270();
}

uint64_t sub_1E38A7790(uint64_t a1, uint64_t a2)
{
  PolicyVMa = _s28LivePostPlayShelfFetchPolicyVMa();
  (*(*(PolicyVMa - 8) + 32))(a2, a1, PolicyVMa);
  return a2;
}

uint64_t sub_1E38A77F4(uint64_t a1)
{
  PolicyVMa = _s28LivePostPlayShelfFetchPolicyVMa();
  (*(*(PolicyVMa - 8) + 8))(a1, PolicyVMa);
  return a1;
}

void sub_1E38A7850()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v4 frame];

      v6 = *&v3[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_presentationView];
      if (v6)
      {
        [v6 frame];
      }

      v7 = [v1 vuiView];
      if (v7)
      {
        v8 = v7;
        OUTLINED_FUNCTION_98_3(v7, sel_setFrame_);

        (*((*MEMORY[0x1E69E7D40] & *v1) + 0x758))(0);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1E38A7998()
{
  OUTLINED_FUNCTION_108_2();
  v2 = v1;
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v6 = Strong;
  if ((v2 & 1) == 0)
  {
LABEL_8:

LABEL_9:
    OUTLINED_FUNCTION_109_4();
    return;
  }

  sub_1E38A4D0C();
  v7 = [v3 vuiView];
  if (v7)
  {
    v8 = v7;
    [v7 setHidden_];

    sub_1E38A55BC(0);
    OUTLINED_FUNCTION_21_6();
    v10 = *(v9 + 168);

    v12 = v10(v11);

    if (!(v4 & 1 | ((OUTLINED_FUNCTION_101_1() & 1) == 0)))
    {
      v13 = v6;
      v14 = OUTLINED_FUNCTION_66_11();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_51_11())
      {
        OUTLINED_FUNCTION_6_21();
        v15 = OUTLINED_FUNCTION_9_44();
        OUTLINED_FUNCTION_55_11(5.7779e-34);
        *v16 = v6;
        v17 = v12;
        OUTLINED_FUNCTION_7_28(&dword_1E323F000, v18, v19, "%@ stopping player so that playback is dismissed cause shelf was dismissed in broadcast end range");
        sub_1E325F6F0(v15, &unk_1ECF28E30);
        OUTLINED_FUNCTION_21_0();
        OUTLINED_FUNCTION_65_0();
      }

      [*&v12[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player] stop];
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1E38A7B24()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64_0(v1);

  return sub_1E38A3D34();
}

uint64_t sub_1E38A7BAC()
{
  OUTLINED_FUNCTION_24();
  v1 = *v0;
  OUTLINED_FUNCTION_31();
  *v2 = v1;

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E38A7C94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CC00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1E38A7D04()
{
  OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong;
    v4 = OUTLINED_FUNCTION_105();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_51_11())
    {
      OUTLINED_FUNCTION_6_21();
      v5 = OUTLINED_FUNCTION_9_44();
      OUTLINED_FUNCTION_48_16(5.7779e-34);
      *v6 = v2;
      v7 = v0;
      OUTLINED_FUNCTION_7_28(&dword_1E323F000, v8, v9, "%@ watch modal will appear notification received");
      sub_1E325F6F0(v5, &unk_1ECF28E30);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    if (*&v0[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_inactivityTask])
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
      OUTLINED_FUNCTION_80_4();
    }

    if (*&v0[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_dismissPlaybackTask])
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
      OUTLINED_FUNCTION_80_4();
    }
  }

  OUTLINED_FUNCTION_109_4();
}

void sub_1E38A7E64()
{
  OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong;
    v4 = OUTLINED_FUNCTION_105();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_51_11())
    {
      OUTLINED_FUNCTION_6_21();
      v5 = OUTLINED_FUNCTION_9_44();
      OUTLINED_FUNCTION_48_16(5.7779e-34);
      *v6 = v2;
      v7 = v0;
      OUTLINED_FUNCTION_7_28(&dword_1E323F000, v8, v9, "%@ watch modal did disappear notification received");
      sub_1E325F6F0(v5, &unk_1ECF28E30);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    sub_1E38A3A5C();
  }

  OUTLINED_FUNCTION_109_4();
}

void sub_1E38A7F44()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 isFullscreenPlaybackUIBeingShown];

    if ((v3 & 1) == 0)
    {
      v1[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playerControlsOrTabsVisible] = 0;
    }

    sub_1E38A1FA8();
  }
}

void sub_1E38A7FE0()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player;
    v3 = &selRef_collectionViewCanBecomeFocused_;
    if ([*(Strong + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player) currentMediaItem] && (ObjectType = swift_getObjectType(), v5 = *MEMORY[0x1E69D5DC0], v6 = MEMORY[0x1E69E6158], sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]), sub_1E4123590(v5, v6, &v22), swift_unknownObjectRelease(), (v7 = *(&v22 + 1)) != 0))
    {
      v8 = v22;
    }

    else
    {

      v7 = 0xE300000000000000;
      v8 = 7104878;
    }

    v9 = v1;

    v10 = sub_1E41FFC94();
    v11 = sub_1E4206814();

    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_49_0();
      v12 = OUTLINED_FUNCTION_26_22();
      v13 = OUTLINED_FUNCTION_100();
      *&v22 = v13;
      LODWORD(selRef_collectionViewCanBecomeFocused_) = 138412546;
      *(&selRef_collectionViewCanBecomeFocused_ + 4) = v9;
      *v12 = v1;
      WORD2(selRef_collectionViewHeight) = 2080;
      v14 = v9;
      v15 = sub_1E3270FC8(v8, v7, &v22);

      *(&selRef_collectionViewHeight + 6) = v15;
      _os_log_impl(&dword_1E323F000, v10, v11, "%@ Media item changed to %s", &selRef_collectionViewCanBecomeFocused_, 0x16u);
      sub_1E325F6F0(v12, &unk_1ECF28E30);
      OUTLINED_FUNCTION_79();
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_7_7();
      v3 = &selRef_collectionViewCanBecomeFocused_;
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    [v9 cleanup];
    v9[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_didEnterStreamInBroadcastEndRange] = 0;
    sub_1E38A5438();
    v16 = [*&v1[v2] v3[273]];
    if (v16)
    {
      v17 = [v16 mediaItemMetadataForProperty_];
      swift_unknownObjectRelease();
      if (v17)
      {
        sub_1E4207264();
        swift_unknownObjectRelease();
      }

      else
      {
        *v20 = 0u;
        v21 = 0u;
      }

      v22 = *v20;
      v23 = v21;
      if (*(&v21 + 1))
      {
        sub_1E3280A90(0, &qword_1EE23ADD0);
        if (swift_dynamicCast())
        {
          [v20[0] doubleValue];
          v19 = v18;

LABEL_19:
          *&v9[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_dismissPlaybackDelay] = v19;

          goto LABEL_20;
        }

LABEL_18:
        v19 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    sub_1E325F6F0(&v22, &unk_1ECF296E0);
    goto LABEL_18;
  }

LABEL_20:
  OUTLINED_FUNCTION_96_5();
}

void sub_1E38A8318()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_dismissPlaybackTask))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
      OUTLINED_FUNCTION_78_3();
    }

    v3 = (sub_1E389D688() & 1) != 0 && (sub_1E389D688() & 1) != 0;
    v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_didEnterStreamInBroadcastEndRange] = v3;
    v4 = v2;
    v5 = sub_1E41FFC94();
    v6 = sub_1E4206814();
    if (os_log_type_enabled(v5, v6))
    {
      swift_slowAlloc();
      v7 = OUTLINED_FUNCTION_36_8();
      *v0 = 138412546;
      *(v0 + 4) = v4;
      *v7 = v2;
      *(v0 + 12) = 1024;
      *(v0 + 14) = v4[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_didEnterStreamInBroadcastEndRange];
      _os_log_impl(&dword_1E323F000, v5, v6, "%@ didEnterStreamInBroadcastEndRange - %{BOOL}d", v0, 0x12u);
      sub_1E325F6F0(v7, &unk_1ECF28E30);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_55();
    }

    else
    {
    }

    if (sub_1E389D688() & 1) != 0 && (sub_1E389D688())
    {
      sub_1E38A01C0();
    }

    else
    {
      sub_1E38A1FA8();
    }
  }
}

uint64_t OUTLINED_FUNCTION_32_27()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_53_15(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_56_10()
{

  return swift_unknownObjectWeakInit();
}

id OUTLINED_FUNCTION_58_11(void *a1, float a2)
{
  *v2 = a2;
  *(v2 + 4) = v3;
  *a1 = v3;

  return v3;
}

id OUTLINED_FUNCTION_79_8(void *a1, float a2)
{
  *v4 = a2;
  *(v4 + 4) = v3;
  *a1 = v2;

  return v3;
}

uint64_t OUTLINED_FUNCTION_80_4()
{

  return sub_1E42064D4();
}

BOOL OUTLINED_FUNCTION_82_5(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_log_t oslog)
{

  return os_log_type_enabled(oslog, v9);
}

uint64_t OUTLINED_FUNCTION_83_3()
{

  return sub_1E389D688();
}

id OUTLINED_FUNCTION_100_1()
{

  return [v0 (v1 + 2867)];
}

uint64_t sub_1E38A86A4()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 128) = v1;
  }

  return v1;
}

id sub_1E38A8718()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 136);
  }

  else
  {
    v3 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
    v4 = *(v0 + 136);
    *(v0 + 136) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1E38A8788(uint64_t a1)
{
  v2 = *(v1 + 136);
  *(v1 + 136) = a1;
}

uint64_t sub_1E38A8794()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 144) = v1;
  }

  return v1;
}

uint64_t sub_1E38A8808()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    type metadata accessor for TextLayout();
    v1 = sub_1E383BCC0();
    *(v0 + 152) = v1;
  }

  return v1;
}

uint64_t sub_1E38A8870()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    type metadata accessor for TextLayout();
    v1 = sub_1E383BCC0();
    *(v0 + 160) = v1;
  }

  return v1;
}

uint64_t sub_1E38A88D8()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for ImageLayout();
    v5 = sub_1E3BD61D8();
    sub_1E41E1A64(&v5, sub_1E38A8984, v3, &v6);

    v1 = v6;
    *(v2 + 168) = v6;
  }

  return v1;
}

uint64_t sub_1E38A8984()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1760))(0x4097700000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v1 + 336))(0x4038000000000000, 0);
  sub_1E3952C94();
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v11 = 0;
  OUTLINED_FUNCTION_8();
  (*(v6 + 160))(v10);
  v22 = 1;
  sub_1E3C2FC98();
  v20 = v21;
  sub_1E3C3DE00(&unk_1F5D99680);
  v18 = v19;
  sub_1E3C3DE00(&unk_1F5D99680);
  v16 = v17;
  sub_1E3C3DE00(&unk_1F5D99680);
  v14 = v15;
  sub_1E3C3DE00(&unk_1F5D99680);
  v12 = v13;
  sub_1E3C2FCB8(&v22, &v23);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  return (*(v7 + 1600))(&v23, 12, v8 & 1, &unk_1F5D99680);
}

void sub_1E38A8BA8(double a1)
{
  if (a1 >= 375.0 && a1 >= 415.0 && a1 < 727.0)
  {
    [objc_opt_self() isPad];
  }

  sub_1E3952C64();
}

uint64_t sub_1E38A8C88(double a1)
{
  result = swift_beginAccess();
  *(v1 + 176) = a1;
  return result;
}

double sub_1E38A8CC8(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = [objc_opt_self() isSUIEnabled] == 0;
    result = 40.0;
    v4 = 43.0;
  }

  else
  {
    if (sub_1E373F630())
    {
      return 52.0;
    }

    v2 = (sub_1E373F630() & 1) == 0;
    result = 48.0;
    v4 = 52.0;
  }

  if (!v2)
  {
    return v4;
  }

  return result;
}

double sub_1E38A8D58()
{
  v0 = sub_1E373F630();
  result = 30.0;
  if ((v0 & 1) == 0)
  {
    v2 = sub_1E373F630();
    result = 24.0;
    if (v2)
    {
      return 30.0;
    }
  }

  return result;
}

double sub_1E38A8DA4()
{
  v0 = sub_1E373F630();
  result = 30.0;
  if ((v0 & 1) == 0)
  {
    v2 = sub_1E373F630();
    result = 32.0;
    if (v2)
    {
      return 30.0;
    }
  }

  return result;
}

uint64_t sub_1E38A8E28()
{
  *(v0 + 168) = 0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 176) = xmmword_1E42A7D80;
  *(v0 + 192) = 0x4061000000000000;
  v1 = sub_1E3C2F9A0();
  v2 = *(*v1 + 1880);

  v3 = v2();
  sub_1E3952C58();
  [v3 setMargin_];

  sub_1E38A9890();
  OUTLINED_FUNCTION_9_2();
  v5 = *(v4 + 1928);
  v5();
  v6 = sub_1E38AA69C();
  OUTLINED_FUNCTION_4_60(v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v7 = OUTLINED_FUNCTION_13_50();
  v8(v7);

  (v5)(v9);
  OUTLINED_FUNCTION_2_1();
  v10 = OUTLINED_FUNCTION_10_7();
  v11(v10);

  (v5)(v12);
  OUTLINED_FUNCTION_2_1();
  (*(v13 + 1696))(1);

  (v5)(v14);
  OUTLINED_FUNCTION_2_1();
  (*(v15 + 1792))(10);

  v17 = (v5)(v16);
  v18 = *sub_1E3E5FD88();
  v19 = *(*v17 + 680);
  v20 = v18;
  v19(v18);

  (v5)(v21);
  OUTLINED_FUNCTION_2_1();
  v22 = OUTLINED_FUNCTION_10_7();
  v23(v22);

  OUTLINED_FUNCTION_9_2();
  v25 = *(v24 + 1952);
  v25();
  v26 = sub_1E38AA69C();
  OUTLINED_FUNCTION_4_60(v26);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v27 = OUTLINED_FUNCTION_13_50();
  v28(v27);

  (v25)(v29);
  OUTLINED_FUNCTION_2_1();
  v30 = OUTLINED_FUNCTION_10_7();
  v31(v30);

  v33 = (v25)(v32);
  v34 = *sub_1E3E5FDEC();
  v35 = *(*v33 + 680);
  v36 = v34;
  v35(v34);

  (v25)(v37);
  OUTLINED_FUNCTION_2_1();
  (*(v38 + 1696))(2);

  (v25)(v39);
  OUTLINED_FUNCTION_2_1();
  v40 = OUTLINED_FUNCTION_10_7();
  v41(v40);

  (v25)(v42);
  OUTLINED_FUNCTION_2_1();
  (*(v43 + 2224))(0);

  OUTLINED_FUNCTION_9_2();
  v45 = *(v44 + 1808);
  v45();
  sub_1E3952C94();
  OUTLINED_FUNCTION_15_46();
  OUTLINED_FUNCTION_7_11(v46, v47, v48, v49);
  type metadata accessor for UIEdgeInsets();
  v51 = v50;
  sub_1E3C2FC98();
  v129 = v132;
  v130 = v133;
  v131 = v134;
  sub_1E3C3DE00(v51);
  v123 = v126;
  v124 = v127;
  v125 = v128;
  sub_1E3C3DE00(v51);
  v117 = v120;
  v118 = v121;
  v119 = v122;
  sub_1E3C3DE00(v51);
  v103 = v114;
  v106 = v115;
  LOBYTE(v109) = v116;
  sub_1E3C2FCB8(__dst, __src);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v60 = OUTLINED_FUNCTION_14_47(v52, v53, v54, v55, v56, v57, v58, v59, v103, *(&v103 + 1), v106, *(&v106 + 1), v109, v111, __dst[0]);
  v61(v60);

  (v45)(v62);
  OUTLINED_FUNCTION_2_1();
  (*(v63 + 360))(0x4041000000000000, 0);

  (v45)(v64);
  OUTLINED_FUNCTION_2_1();
  (*(v65 + 1808))(1);

  OUTLINED_FUNCTION_9_2();
  v67 = *(v66 + 1832);
  v67();
  OUTLINED_FUNCTION_2_1();
  (*(v68 + 1984))(1);

  (v67)(v69);
  OUTLINED_FUNCTION_2_1();
  (*(v70 + 2056))(1, 0);

  (v67)(v71);
  OUTLINED_FUNCTION_2_1();
  (*(v72 + 1696))(2);

  (v67)(v73);
  OUTLINED_FUNCTION_2_1();
  (*(v74 + 1792))(10);

  v76 = (v67)(v75);
  v77 = *sub_1E3E5FD88();
  v78 = *(*v76 + 680);
  v79 = v77;
  v78(v77);

  (v67)(v80);
  OUTLINED_FUNCTION_2_1();
  v81 = OUTLINED_FUNCTION_10_7();
  v82(v81);

  (v67)(v83);
  sub_1E3952C94();
  OUTLINED_FUNCTION_15_46();
  OUTLINED_FUNCTION_7_11(v84, v85, v86, v87);
  sub_1E3952C94();
  *&v132 = v88;
  *(&v132 + 1) = v89;
  *&v133 = v90;
  *(&v133 + 1) = v91;
  v134 = 0;
  sub_1E3C2FC98();
  v126 = v129;
  v127 = v130;
  v128 = v131;
  sub_1E3C3DE00(v51);
  v120 = v123;
  v121 = v124;
  v122 = v125;
  sub_1E3C3DE00(v51);
  v114 = v117;
  v115 = v118;
  v116 = v119;
  sub_1E3C2FCB8(__dst, __src);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v100 = OUTLINED_FUNCTION_14_47(v92, v93, v94, v95, v96, v97, v98, v99, v104, v105, v107, v108, v110, v112, __dst[0]);
  v101(v100);

  return v1;
}

uint64_t sub_1E38A9890()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B858);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v27 - v2;
  if ([objc_opt_self() isSUIEnabled])
  {
    v4 = (*v0 + 1904);
    v5 = *v4;
    v6 = (*v4)();
    v7 = *sub_1E3E5FD88();
    v8 = *(*v6 + 680);
    v9 = v7;
    v8(v7);

    (v5)(v10);
    sub_1E42028C4();
    OUTLINED_FUNCTION_36();
    (*(v11 + 2120))();

    (v5)(v12);
    OUTLINED_FUNCTION_2_1();
    (*(v13 + 2168))(6);

    (v5)(v14);
    sub_1E4201DE4();
    v15 = sub_1E4201DF4();
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v15);
    OUTLINED_FUNCTION_36();
    (*(v16 + 2192))(v3);
  }

  else
  {
    v18 = *sub_1E3E5FD88();
    v19 = objc_opt_self();
    v20 = [v19 configurationWithHierarchicalColor_];
    v21 = [v19 configurationWithWeight_];
    v22 = [v19 configurationWithTextStyle_];
    v23 = [v22 configurationByApplyingConfiguration_];
    OUTLINED_FUNCTION_9_2();
    (*(v24 + 1904))();
    v25 = [v21 configurationByApplyingConfiguration_];
    OUTLINED_FUNCTION_36();
    (*(v26 + 1952))();
  }
}

uint64_t sub_1E38A9C34(uint64_t a1, void *a2)
{
  sub_1E3C35CF4(a1, a2);
  OUTLINED_FUNCTION_36();
  (*(v3 + 1784))();
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_3_5();
  v5(v4);

  (*(*v2 + 1976))(v6);
  OUTLINED_FUNCTION_2_1();
  v7 = OUTLINED_FUNCTION_3_5();
  v8(v7);

  (*(*v2 + 1856))(v9);
  OUTLINED_FUNCTION_2_1();
  v10 = OUTLINED_FUNCTION_3_5();
  v11(v10);
}

uint64_t sub_1E38A9DEC()
{
  OUTLINED_FUNCTION_8();
  v0 += 232;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 440))(0x3FFC71C71C71C71CLL, 0);

  type metadata accessor for LayoutGrid();
  v1();
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 1560))();

  v4 = sub_1E3A25914();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = (v1)();
  sub_1E39537A8();
  v20[0] = v12;
  v20[1] = v13;
  v20[2] = v14;
  v20[3] = v15;
  v21 = 0;
  (*(*v11 + 560))(v20);

  sub_1E3952BE0(v4, v6, v8, v10);
  v1();
  OUTLINED_FUNCTION_8();
  (*(v16 + 208))();

  (v1)(v17);
  OUTLINED_FUNCTION_2_1();
  (*(v18 + 1808))(1);
}

uint64_t sub_1E38AA060(double a1, double a2, double a3)
{
  v3 = a1 / (a3 * 0.44);
  OUTLINED_FUNCTION_8();
  v4 += 223;
  v5 = *v4;
  v6 = (*v4)();
  (*(*v6 + 440))(*&v3, 0);

  v8 = *(v5)(v7);
  v9 = COERCE_DOUBLE((*(v8 + 432))());
  v11 = v10;

  if ((v11 & 1) == 0 && v9 > 0.0)
  {
    (v5)(v12);
    OUTLINED_FUNCTION_8();
    (*(v13 + 312))();
  }

  v14 = sub_1E39DFFC8();
  if (v14)
  {
    v5();
    sub_1E3952C94();
    v24[0] = v15;
    v24[1] = v16;
    v24[2] = v17;
    v24[3] = v18;
    v25 = 0;
    OUTLINED_FUNCTION_8();
    (*(v19 + 160))(v24);
  }

  (v5)(v14);
  OUTLINED_FUNCTION_8();
  (*(v20 + 208))();

  (v5)(v21);
  OUTLINED_FUNCTION_2_1();
  (*(v22 + 1808))(3);
}

void sub_1E38AA2E8(char a1, char a2)
{
  OUTLINED_FUNCTION_8();
  v4 += 235;
  v5 = *v4;
  v6 = (*v4)();
  if (a1 & 1) == 0 || (a2)
  {
    v7 = MEMORY[0x1E6979D40];
    v8 = sub_1E3E5FD88();
  }

  else
  {
    v7 = MEMORY[0x1E6979CF8];
    v8 = sub_1E3E5FDEC();
  }

  v9 = v8;
  [v6 setBadgeTintColor_];

  v10 = v5();
  [v10 setCompositingFilter_];

  v11 = v5();
  v12 = [v11 textLayout];

  [v12 setColor_];
}

uint64_t sub_1E38AA408()
{
  type metadata accessor for LayoutGrid();
  OUTLINED_FUNCTION_8();
  v0 += 226;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 1560))();

  v3 = sub_1E3A25914();
  v1(v3);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 256))(0x406FE00000000000, 0);

  (v1)(v5);
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 360))(0x404E000000000000, 0);
}

uint64_t sub_1E38AA570()
{
}

uint64_t sub_1E38AA5D8()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E38AA648()
{
  v0 = sub_1E38AA5D8();

  return MEMORY[0x1EEE6BDC0](v0, 200, 7);
}

unint64_t sub_1E38AA69C()
{
  v1 = 1;
  sub_1E3C2FC98();
  sub_1E3C3DE00(&unk_1F5D54CA8);
  sub_1E3C3DE00(&unk_1F5D54CA8);
  sub_1E3C3DE00(&unk_1F5D54CA8);
  sub_1E3C3DE00(&unk_1F5D54CA8);
  sub_1E3C2FCB8(&v1, &v2);
  return v2 | (v3 << 32);
}

uint64_t sub_1E38AA764()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    type metadata accessor for TextLayout();
    v1 = sub_1E38AA7C4();
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E38AA7C4()
{
  type metadata accessor for TextLayout();
  v0 = sub_1E383BCC0();
  (*(*v0 + 1984))(4);

  v1 = *sub_1E3E5FD88();
  v2 = *(*v0 + 680);
  v3 = v1;
  v2(v1);

  OUTLINED_FUNCTION_36();
  (*(v4 + 1792))(7);
  OUTLINED_FUNCTION_36();
  (*(v5 + 2176))(4, 0);
  OUTLINED_FUNCTION_36();
  (*(v6 + 2056))(2, 0);
  OUTLINED_FUNCTION_36();
  (*(v7 + 2080))(2, 0);
  OUTLINED_FUNCTION_36();
  (*(v8 + 2104))(2, 0);
  OUTLINED_FUNCTION_36();
  (*(v9 + 2128))(0x3FE6666666666666, 0);
  OUTLINED_FUNCTION_36();
  (*(v10 + 1696))(6);
  v38[32] = 1;
  sub_1E3952C88();
  OUTLINED_FUNCTION_3_57(v11, v12, v13, v14);
  sub_1E3952C88();
  OUTLINED_FUNCTION_5_60();
  v58 = 1;
  type metadata accessor for UIEdgeInsets();
  v16 = v15;
  sub_1E3C3DE00(v15);
  OUTLINED_FUNCTION_4_10(v17, v18, v19, v20, v21, v22, v23, v24, 0.0, 0.0, 0.0, 0.0, *&v38[32], *&v38[40], *&v38[48], *&v38[56], *&v38[64], *&v38[72], *&v38[80], *&v38[88], *&v38[96], *&v38[104], *&v38[112], *&v38[120], *&v38[128], *&v38[136], *&v38[144], *&v38[152], *&v38[160], *&v38[168], *&v38[176], *&v38[184], *&v38[192], *&v38[200], *&v38[208], *&v38[216], *&v38[224], *&v38[232], v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57[0]);
  sub_1E3C3DE00(v16);
  OUTLINED_FUNCTION_0_62(v25, v26, v27, v28, v29, v30, v31, v32, *v38, *&v38[8], *&v38[16], *&v38[24], *&v38[32], *&v38[40], *&v38[48], *&v38[56], *&v38[64], *&v38[72], *&v38[80], *&v38[88], *&v38[96], *&v38[104], *&v38[112], *&v38[120], *&v38[128], *&v38[136], *&v38[144], *&v38[152], *&v38[160], *&v38[168], *&v38[176], *&v38[184], *&v38[192], *&v38[200], *&v38[208], *&v38[216], *&v38[224], *&v38[232], v39, v40, v41, v42, v43, v44, v45);
  sub_1E3C2FCB8(v33, v34);
  memcpy(v38, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v35 + 1600))(v38, 0, v36 & 1, v16);
  return v0;
}

uint64_t sub_1E38AAAF8()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    v1 = sub_1E3BBD964(6, v3 & 1, v4, v5 & 1);
    *(v2 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E38AABB8()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  v1 = sub_1E3C2F9A0();
  v2 = *(*v1 + 1728);

  v2();
  v34[32] = 1;
  sub_1E3952C88();
  OUTLINED_FUNCTION_3_57(v3, v4, v5, v6);
  sub_1E3952C88();
  OUTLINED_FUNCTION_5_60();
  v54 = 1;
  type metadata accessor for UIEdgeInsets();
  v8 = v7;
  sub_1E3C3DE00(v7);
  OUTLINED_FUNCTION_4_10(v9, v10, v11, v12, v13, v14, v15, v16, 0.0, 0.0, 0.0, 0.0, *&v34[32], *&v34[40], *&v34[48], *&v34[56], *&v34[64], *&v34[72], *&v34[80], *&v34[88], *&v34[96], *&v34[104], *&v34[112], *&v34[120], *&v34[128], *&v34[136], *&v34[144], *&v34[152], *&v34[160], *&v34[168], *&v34[176], *&v34[184], *&v34[192], *&v34[200], *&v34[208], *&v34[216], *&v34[224], *&v34[232], v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53[0]);
  sub_1E3C3DE00(v8);
  OUTLINED_FUNCTION_0_62(v17, v18, v19, v20, v21, v22, v23, v24, *v34, *&v34[8], *&v34[16], *&v34[24], *&v34[32], *&v34[40], *&v34[48], *&v34[56], *&v34[64], *&v34[72], *&v34[80], *&v34[88], *&v34[96], *&v34[104], *&v34[112], *&v34[120], *&v34[128], *&v34[136], *&v34[144], *&v34[152], *&v34[160], *&v34[168], *&v34[176], *&v34[184], *&v34[192], *&v34[200], *&v34[208], *&v34[216], *&v34[224], *&v34[232], v35, v36, v37, v38, v39, v40, v41);
  sub_1E3C2FCB8(v25, v26);
  memcpy(v34, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v27 + 1600))(v34, 0, v28 & 1, v8);

  v30 = (*(*v1 + 1704))(v29);
  sub_1E3C37CBC(v30, 23);

  v32 = (v2)(v31);
  sub_1E3C37CBC(v32, 62);

  return v1;
}

uint64_t sub_1E38AADA0()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E38AADEC(char a1)
{
  if (!a1)
  {
    return 0x6465726F6E6769;
  }

  if (a1 == 1)
  {
    return 0x6574656C706D6F63;
  }

  return 0xD000000000000016;
}

unint64_t sub_1E38AAE5C()
{
  result = qword_1ECF2CD18;
  if (!qword_1ECF2CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CD18);
  }

  return result;
}

uint64_t sub_1E38AAEB0(unsigned __int8 a1, char a2)
{
  v2 = 0x6465726F6E6769;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6574656C706D6F63;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (v3 == 1)
    {
      v5 = 0xE900000000000064;
    }

    else
    {
      v5 = 0x80000001E4264CE0;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x6465726F6E6769;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6574656C706D6F63;
    }

    else
    {
      v2 = 0xD000000000000016;
    }

    if (a2 == 1)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0x80000001E4264CE0;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E38AAFD0()
{
  sub_1E4206014();
}

uint64_t sub_1E38AB06C()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E38AB114@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E38AADA0();
  *a1 = result;
  return result;
}

uint64_t sub_1E38AB144@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E38AADEC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DocumentEventUpdateResult(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_1E38AB24C()
{
  type metadata accessor for UpNextInteractor();
  OUTLINED_FUNCTION_0_63();
  sub_1E38ADA68(v0, v1);
  sub_1E4200BC4();
  sub_1E4179AAC();

  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1E4205ED4();
    v5 = [v3 localizedStringForKey_];

    if (v5)
    {
      sub_1E4205F14();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E38AB38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(v142) = 4;
  OUTLINED_FUNCTION_26_0();
  v5 = *(v4 + 776);

  v12 = OUTLINED_FUNCTION_15_47(v6, &unk_1F5D5D0A8, &off_1F5D5C758, v7, v8, v9, v10, v11, v88, v95, v102, v109, v116, v123, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, 4);
  v13 = v5(v12);
  if (!v155)
  {

    sub_1E325F6F0(v154, &unk_1ECF296E0);

LABEL_50:
    a1 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v59 = 0;
    v55 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
LABEL_51:
    *a2 = a1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = v81;
    *(a2 + 32) = v82;
    *(a2 + 40) = v83;
    *(a2 + 48) = v84;
    *(a2 + 56) = v59;
    *(a2 + 64) = v55;
    *(a2 + 72) = v85;
    *(a2 + 80) = v86;
    *(a2 + 88) = v87;
    return result;
  }

  OUTLINED_FUNCTION_18_24(v13, v14, v15, MEMORY[0x1E69E6158], v16, v17, v18, v19, v89, v96, v103, v110, v117, v124, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
  v20 = swift_dynamicCast();
  if ((v20 & 1) == 0)
  {
LABEL_49:

    goto LABEL_50;
  }

  v27 = v142;
  v26 = v143;
  v28 = OUTLINED_FUNCTION_15_47(v20, &unk_1F5D5D0A8, &off_1F5D5C758, v21, v22, v23, v24, v25, v90, v97, v104, v111, v118, v125, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, 5);
  v29 = v5(v28);
  OUTLINED_FUNCTION_18_24(v29, v30, v31, MEMORY[0x1E69E6158], v32, v33, v34, v35, v91, v98, v105, v112, v119, v126, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
  v36 = swift_dynamicCast();
  if ((v36 & 1) == 0)
  {
LABEL_48:

    goto LABEL_49;
  }

  v43 = v142;
  v42 = v143;
  v44 = OUTLINED_FUNCTION_15_47(v36, &unk_1F5D5D0A8, &off_1F5D5C758, v37, v38, v39, v40, v41, v92, v99, v106, v113, v120, v127, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, 6);
  v45 = v5(v44);
  OUTLINED_FUNCTION_18_24(v45, v46, v47, MEMORY[0x1E69E6370], v48, v49, v50, v51, v93, v100, v107, v114, v121, v128, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_48;
  }

  v52 = v142;
  v53 = swift_allocObject();
  *(v53 + 16) = v27;
  *(v53 + 24) = v26;
  *(v53 + 32) = v43;
  *(v53 + 40) = v42;
  v94 = v53;
  *(v53 + 48) = v52;
  v166 = 0;
  v54 = (*(*a1 + 464))();

  v55 = MEMORY[0x1E69E7CC0];
  if (v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = MEMORY[0x1E69E7CC0];
  }

  v164 = MEMORY[0x1E69E7CC0];
  v165 = MEMORY[0x1E69E7CC0];
  v129 = v56;
  result = sub_1E32AE9B0(v56);
  if (!result)
  {
    v59 = v55;
LABEL_53:
    v82 = 0x80000001E4264D00;
    v84 = 0x80000001E4264D20;
    v83 = 0xD000000000000017;

    v142 = a1;
    v143 = 0;
    v81 = 0xD00000000000001ALL;
    v144 = 0;
    v145 = 0xD00000000000001ALL;
    v146 = 0x80000001E4264D00;
    v147 = 0xD000000000000017;
    v148 = 0x80000001E4264D20;
    v149 = v59;
    v85 = sub_1E38AB938;
    v150 = v55;
    v151 = sub_1E38AB938;
    v152 = v94;
    v153 = v166;
    v87 = v166;
    v154[0] = a1;
    v154[1] = 0;
    v154[2] = 0;
    v155 = 0xD00000000000001ALL;
    v156 = 0x80000001E4264D00;
    v157 = 0xD000000000000017;
    v158 = 0x80000001E4264D20;
    v159 = v59;
    v160 = v55;
    v161 = sub_1E38AB938;
    v162 = v94;
    v163 = v166;
    sub_1E38AD6D8(&v142, &v130);
    result = sub_1E38AD710(v154);
    v86 = v94;
    goto LABEL_51;
  }

  if (result >= 1)
  {
    v58 = 0;
    v108 = v129 & 0xC000000000000001;
    v115 = @"added";
    v101 = @"removed";
    v59 = v55;
    v122 = result;
    while (1)
    {
      if (v108)
      {
        v60 = MEMORY[0x1E6911E60](v58, v129);
      }

      else
      {
        v60 = *(v129 + 8 * v58 + 32);
      }

      LOBYTE(v142) = 28;
      v61 = (*(*v60 + 776))(v154, &v142, &unk_1F5D5DAC8, &off_1F5D5C998);
      if (v155)
      {
        OUTLINED_FUNCTION_18_24(v61, v62, v63, v64, v65, v66, v67, v68, v94, v101, v108, v115, v122, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
        if (swift_dynamicCast())
        {
          v70 = v142;
          v69 = v143;
          goto LABEL_19;
        }
      }

      else
      {
        sub_1E325F6F0(v154, &unk_1ECF296E0);
      }

      v70 = 0;
      v69 = 0;
LABEL_19:
      v71 = sub_1E4205F14();
      if (v69)
      {
        if (v70 == v71 && v69 == v72)
        {

LABEL_35:

          MEMORY[0x1E6910BF0](v79);
          if (*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v165 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            OUTLINED_FUNCTION_12_21();
          }

          sub_1E4206324();

          v59 = v165;
          goto LABEL_44;
        }

        v74 = OUTLINED_FUNCTION_21_33();

        if (v74)
        {
          goto LABEL_35;
        }
      }

      else
      {
      }

      v75 = sub_1E4205F14();
      if (v69)
      {
        if (v70 == v75 && v69 == v76)
        {

LABEL_41:

          MEMORY[0x1E6910BF0](v80);
          if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            OUTLINED_FUNCTION_12_21();
          }

          sub_1E4206324();

          v55 = v164;
          goto LABEL_44;
        }

        v78 = OUTLINED_FUNCTION_21_33();

        if (v78)
        {
          goto LABEL_41;
        }
      }

      else
      {
      }

LABEL_44:
      if (v122 == ++v58)
      {
        goto LABEL_53;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E38AB938()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  if (sub_1E4205F14() != v1 || v3 != v2)
  {
    sub_1E42079A4();
  }

  type metadata accessor for UpNextInteractor();

  j__OUTLINED_FUNCTION_18();
  return sub_1E4179BE8();
}

void sub_1E38AB9F4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v52 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v47 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD28);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD30);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - v16;
  v18 = (*(**v0 + 392))(v15);
  if (!v18)
  {
    goto LABEL_7;
  }

  v19 = v18;
  type metadata accessor for ButtonLayout();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {

    goto LABEL_7;
  }

  v48 = v17;
  v49 = v13;
  v21 = *v20;
  v50 = v1;
  v22 = *(v21 + 2336);

  v24 = v19;
  v25 = v22(v23);
  v47 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_7:
    sub_1E38ABE84();
    (*(v8 + 16))(v5, v11, v6);
    swift_storeEnumTagMultiPayload();
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CD38);
    v40 = type metadata accessor for ViewModel();
    v41 = sub_1E38AD740();
    OUTLINED_FUNCTION_2_58();
    v44 = sub_1E38ADA68(v42, v43);
    v55 = v39;
    v56 = v40;
    v57 = v41;
    v58 = v44;
    v45 = OUTLINED_FUNCTION_8_41();
    v46 = sub_1E32822E0();
    v55 = v6;
    v56 = MEMORY[0x1E69E6158];
    v57 = v45;
    v58 = v46;
    OUTLINED_FUNCTION_7_66();
    sub_1E4201F44();

    (*(v8 + 8))(v11, v6);
    goto LABEL_8;
  }

  sub_1E38ABE84();
  sub_1E38AB24C();
  v53 = v26;
  v54 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CD38);
  v29 = type metadata accessor for ViewModel();
  v30 = sub_1E38AD740();
  OUTLINED_FUNCTION_2_58();
  v33 = sub_1E38ADA68(v31, v32);
  v55 = v28;
  v56 = v29;
  v57 = v30;
  v58 = v33;
  v34 = OUTLINED_FUNCTION_8_41();
  v35 = sub_1E32822E0();
  v36 = v48;
  sub_1E4203414();

  (*(v8 + 8))(v11, v6);
  v37 = v49;
  v38 = v51;
  (*(v49 + 16))(v5, v36, v51);
  swift_storeEnumTagMultiPayload();
  v55 = v6;
  v56 = MEMORY[0x1E69E6158];
  v57 = v34;
  v58 = v35;
  OUTLINED_FUNCTION_7_66();
  sub_1E4201F44();

  (*(v37 + 8))(v36, v38);
LABEL_8:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38ABE84()
{
  OUTLINED_FUNCTION_31_1();
  v28 = v1;
  v27 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD50);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - v11;
  v26[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD38);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v26 - v18;
  v20 = swift_allocObject();
  memcpy((v20 + 16), v0, 0x59uLL);
  v29 = v0;
  sub_1E38AD6D8(v0, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD70);
  sub_1E38ADADC();
  sub_1E4203964();
  sub_1E38AB24C();
  v31[0] = v21;
  v31[1] = v22;
  sub_1E32752B0(&qword_1ECF2CD48, &qword_1ECF2CD50);
  sub_1E32822E0();
  sub_1E4203114();

  (*(v9 + 8))(v12, v7);
  sub_1E4201C54();
  sub_1E4201384();
  (*(v3 + 8))(v6, v27);
  sub_1E325F6F0(v16, &qword_1ECF2CD38);
  v30 = *v0;
  v23 = swift_allocObject();
  memcpy((v23 + 16), v0, 0x59uLL);
  sub_1E38AD6D8(v0, v31);
  type metadata accessor for ViewModel();
  sub_1E38AD740();
  OUTLINED_FUNCTION_2_58();
  sub_1E38ADA68(v24, v25);

  sub_1E4203524();

  sub_1E325F6F0(v19, &qword_1ECF2CD38);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38AC258()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10[-v3];
  v5 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_1E4206434();
  sub_1E38AD6D8(v0, v10);
  v6 = sub_1E4206424();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  memcpy(v7 + 4, v1, 0x59uLL);
  sub_1E376FE58(0, 0, v4, &unk_1E42A8098, v7);
}

void sub_1E38AC36C()
{
  OUTLINED_FUNCTION_31_1();
  v9[1] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v9 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v9 - v5;
  type metadata accessor for UpNextInteractor();
  OUTLINED_FUNCTION_0_63();
  sub_1E38ADA68(v7, v8);
  sub_1E4200BC4();
  sub_1E4179AAC();

  sub_1E38AC51C();
  sub_1E37E93E8(v6, v3, &qword_1ECF2CD88);
  swift_storeEnumTagMultiPayload();
  sub_1E38ADB60();
  sub_1E4201F44();
  sub_1E325F6F0(v6, &qword_1ECF2CD88);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38AC51C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v68 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v67 = v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v72 = v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v70 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v69 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v77 = v14;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v82 = v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v76 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210);
  MEMORY[0x1EEE9AC00](v19 - 8);
  OUTLINED_FUNCTION_4_6();
  v74 = v20 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v75 = v66 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938);
  MEMORY[0x1EEE9AC00](v24 - 8);
  OUTLINED_FUNCTION_4_6();
  v73 = v25 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v66 - v28;
  v30 = sub_1E32AE9B0(v1);
  v31 = 0;
  v32 = v1 & 0xC000000000000001;
  v83 = v12;
  while (1)
  {
    if (v30 == v31)
    {
      v34 = v3;
      v35 = 0;
      goto LABEL_12;
    }

    if (v32)
    {
      MEMORY[0x1E6911E60](v31, v1);
    }

    else
    {
      if (v31 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }
    }

    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return;
    }

    type metadata accessor for ImageViewModel();
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      break;
    }

    ++v31;
  }

  v35 = v33;
  v34 = v3;
LABEL_12:
  for (i = 0; v30 != i; ++i)
  {
    if (v32)
    {
      v37 = MEMORY[0x1E6911E60](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v37 = *(v1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_40;
    }

    if (*v37 == _TtC8VideosUI13TextViewModel)
    {
      goto LABEL_22;
    }
  }

  v37 = 0;
LABEL_22:
  if (TVAppFeature.isEnabled.getter(20))
  {
    v38 = v29;
    if (v35)
    {

      sub_1E38AD5A4();
      sub_1E3EB9BB4(v84);
      v39 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_17_32(v39, v84, v40, v39 & 1);

      sub_1E375C31C(v84);
      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    v47 = v74;
    v48 = 1;
    __swift_storeEnumTagSinglePayload(v38, v41, 1, v79);
    v66[1] = v34;
    if (v37)
    {

      sub_1E38AD5A4();
      OUTLINED_FUNCTION_18();
      v49 = v75;
      sub_1E3F23370();

      v48 = 0;
    }

    else
    {
      v49 = v75;
    }

    __swift_storeEnumTagSinglePayload(v49, v48, 1, v78);
    v58 = v73;
    sub_1E37E93E8(v38, v73, &qword_1ECF29938);
    v79 = v38;
    sub_1E37E93E8(v49, v47, &qword_1ECF29210);
    v59 = v76;
    sub_1E37E93E8(v58, v76, &qword_1ECF29938);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDD8);
    sub_1E37E93E8(v47, v59 + *(v60 + 48), &qword_1ECF29210);
    sub_1E325F6F0(v47, &qword_1ECF29210);
    sub_1E325F6F0(v58, &qword_1ECF29938);
    sub_1E37E93E8(v59, v82, &qword_1ECF2CD98);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_1();
    sub_1E32752B0(v61, &qword_1ECF2CD98);
    sub_1E38ADC18();
    sub_1E4201F44();

    sub_1E325F6F0(v59, &qword_1ECF2CD98);
    sub_1E325F6F0(v49, &qword_1ECF29210);
    v62 = v79;
    v63 = &qword_1ECF29938;
  }

  else
  {
    if (v37)
    {

      sub_1E38AD5A4();
      OUTLINED_FUNCTION_18();
      v42 = v69;
      sub_1E3F23370();
      v43 = v70;
      v44 = v78;
      (*(v70 + 16))(v72, v42, v78);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_21();
      OUTLINED_FUNCTION_6_15();
      v45 = v77;
      sub_1E4201F44();

      (*(v43 + 8))(v42, v44);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDB8);
      __swift_storeEnumTagSinglePayload(v45, 0, 1, v46);
    }

    else
    {
      v45 = v77;
      if (v35)
      {

        sub_1E38AD5A4();
        sub_1E3EB9BB4(v84);
        v50 = OUTLINED_FUNCTION_18();
        v51 = v67;
        OUTLINED_FUNCTION_17_32(v50, v84, v52, v50 & 1);
        sub_1E375C31C(v84);
        v53 = v68;
        v54 = v79;
        (*(v68 + 16))(v72, v51, v79);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_0_21();
        OUTLINED_FUNCTION_6_15();
        sub_1E4201F44();

        (*(v53 + 8))(v51, v54);
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDB8);
        v56 = v45;
        v57 = 0;
      }

      else
      {
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDB8);
        v56 = v45;
        v57 = 1;
      }

      __swift_storeEnumTagSinglePayload(v56, v57, 1, v55);
    }

    sub_1E37E93E8(v45, v82, &qword_1ECF2CDA8);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_1();
    sub_1E32752B0(v64, v65);
    sub_1E38ADC18();
    sub_1E4201F44();

    v62 = v45;
    v63 = &qword_1ECF2CDA8;
  }

  sub_1E325F6F0(v62, v63);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38ACE98()
{
  OUTLINED_FUNCTION_24();
  v0[24] = v1;
  sub_1E4206434();
  v0[25] = sub_1E4206424();
  v3 = sub_1E42063B4();
  v0[26] = v3;
  v0[27] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E38ACF2C, v3, v2);
}

uint64_t sub_1E38ACF2C()
{
  v1 = **(v0 + 192);
  v2 = (*(*v1 + 576))();
  if (v2)
  {
    v3 = v2;
    OUTLINED_FUNCTION_26_0();
    v5 = (*(v4 + 176))();
    if (v5)
    {
      v6 = v5;
      type metadata accessor for UpNextInteractor();
      OUTLINED_FUNCTION_0_63();
      sub_1E38ADA68(v7, v8);
      sub_1E4200BC4();
      sub_1E4179AAC();

      v9 = sub_1E4205F14();
      v11 = v10;
      v12 = sub_1E4205F14();
      v14 = v13;
      *(v0 + 40) = MEMORY[0x1E69E6158];
      *(v0 + 16) = v9;
      *(v0 + 24) = v11;
      sub_1E329504C((v0 + 16), (v0 + 48));

      swift_isUniquelyReferenced_nonNull_native();
      sub_1E32A87C0((v0 + 48), v12, v14);

      v15 = (*(*v3 + 184))(v6);
      v16 = (*(*v3 + 200))(v15);
      if (v16)
      {
        v17 = v16;
        v18 = sub_1E4205F14();
        v20 = v19;
        *(v0 + 104) = MEMORY[0x1E69E6158];
        *(v0 + 80) = v9;
        *(v0 + 88) = v11;
        sub_1E329504C((v0 + 80), (v0 + 112));
        swift_isUniquelyReferenced_nonNull_native();
        sub_1E32A87C0((v0 + 112), v18, v20);

        (*(*v3 + 208))(v17);
      }

      else
      {
      }

      type metadata accessor for Router();
      if (sub_1E40C43F8())
      {
        OUTLINED_FUNCTION_26_0();
        if ((*(v21 + 368))())
        {
          OUTLINED_FUNCTION_26_0();
          (*(v22 + 216))(v1);
        }
      }
    }
  }

  v23 = *(v0 + 192);
  *(v0 + 224) = *(v23 + 72);
  *(v0 + 232) = *(v23 + 80);
  *(v0 + 272) = *(v23 + 88);
  *(v0 + 240) = type metadata accessor for UpNextInteractor();
  OUTLINED_FUNCTION_0_63();
  *(v0 + 248) = sub_1E38ADA68(v24, v25);
  *(v0 + 256) = sub_1E4200BC4();
  v26 = swift_task_alloc();
  *(v0 + 264) = v26;
  *v26 = v0;
  v26[1] = sub_1E38AD328;

  return sub_1E417A84C();
}

uint64_t sub_1E38AD328()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v1 + 216);
  v5 = *(v1 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1E38AD464, v5, v4);
}

uint64_t sub_1E38AD464()
{

  v0 = sub_1E4200BC4();
  v1 = OBJC_IVAR____TtC8VideosUI16UpNextInteractor_dismissOnSelect;
  swift_beginAccess();
  LODWORD(v1) = *(v0 + v1);

  if (v1 == 1)
  {
    v2 = sub_1E40C4340();
    swift_beginAccess();
    if (*v2)
    {
      v3 = *v2;
      v4 = j__OUTLINED_FUNCTION_51_1();
      (*((*MEMORY[0x1E69E7D40] & *v3) + 0x208))(v4 & 1, 0, 0);
    }
  }

  OUTLINED_FUNCTION_54();

  return v5();
}

uint64_t sub_1E38AD5A4()
{
  OUTLINED_FUNCTION_26_0();
  v0 += 49;
  v1 = *v0;
  v2 = (*v0)();
  if (v2)
  {
    OUTLINED_FUNCTION_26_0();
    (*(v3 + 680))(0);
  }

  if ((v1)(v2))
  {
    OUTLINED_FUNCTION_26_0();
    (*(v4 + 872))(0);
  }
}

unint64_t sub_1E38AD740()
{
  result = qword_1ECF2CD40;
  if (!qword_1ECF2CD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CD38);
    sub_1E32752B0(&qword_1ECF2CD48, &qword_1ECF2CD50);
    sub_1E38ADA68(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CD40);
  }

  return result;
}

uint64_t sub_1E38AD858(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E38AD898(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E38AD900()
{
  result = qword_1ECF2CD58;
  if (!qword_1ECF2CD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CD60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CD28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CD38);
    type metadata accessor for ViewModel();
    sub_1E38AD740();
    sub_1E38ADA68(&qword_1EE23BA60, type metadata accessor for ViewModel);
    swift_getOpaqueTypeConformance2();
    sub_1E32822E0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CD58);
  }

  return result;
}

uint64_t sub_1E38ADA68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E38ADADC()
{
  result = qword_1ECF2CD78;
  if (!qword_1ECF2CD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CD70);
    sub_1E38ADB60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CD78);
  }

  return result;
}

unint64_t sub_1E38ADB60()
{
  result = qword_1ECF2CD80;
  if (!qword_1ECF2CD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CD88);
    sub_1E32752B0(&qword_1ECF2CD90, &qword_1ECF2CD98);
    sub_1E38ADC18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CD80);
  }

  return result;
}

unint64_t sub_1E38ADC18()
{
  result = qword_1ECF2CDA0;
  if (!qword_1ECF2CDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CDA8);
    sub_1E38ADC9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CDA0);
  }

  return result;
}

unint64_t sub_1E38ADC9C()
{
  result = qword_1ECF2CDB0;
  if (!qword_1ECF2CDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CDB8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CDB0);
  }

  return result;
}

uint64_t sub_1E38ADD58(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  type metadata accessor for UpNextInteractor();
  OUTLINED_FUNCTION_0_63();
  sub_1E38ADA68(v3, v4);
  sub_1E4200BC4();
  sub_1E417A604(v2, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1E38ADDF8()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E37E1058;

  return sub_1E38ACE98();
}

uint64_t sub_1E38ADECC()
{
  result = sub_1E39DFFC0();
  v1 = 0x80000001E4264FF0;
  v2 = 0xD000000000000011;
  if (result)
  {
    v2 = 0x6B726F77747261;
    v1 = 0xE700000000000000;
  }

  qword_1ECF71358 = v2;
  unk_1ECF71360 = v1;
  return result;
}

uint64_t sub_1E38AE06C()
{
  v1 = sub_1E41FE624();
  MEMORY[0x1EEE9AC00](v1);
  if (!*(v0 + 24))
  {
    sub_1E3277E60(25705, 0xE200000000000000, *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_familySharingDict), &v10);
    if (v11)
    {
      if (OUTLINED_FUNCTION_21_4())
      {
        v2 = v8;
        v3 = v9;
LABEL_7:
        *(v0 + 16) = v2;
        *(v0 + 24) = v3;

        goto LABEL_8;
      }
    }

    else
    {
      sub_1E325F6F0(&v10, &unk_1ECF296E0);
    }

    sub_1E41FE614();
    v2 = sub_1E41FE5E4();
    v3 = v4;
    v5 = OUTLINED_FUNCTION_57();
    v6(v5);
    goto LABEL_7;
  }

LABEL_8:

  return OUTLINED_FUNCTION_75();
}

uint64_t sub_1E38AE1E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_11_10();
}

uint64_t sub_1E38AE1EC(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E38AE06C();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E38AE22C(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
}

uint64_t sub_1E38AE240()
{
  if (*(v0 + 40) == 1)
  {
    sub_1E3277E60(25705, 0xE200000000000000, *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_familySharingDict), &v10);
    if (v11)
    {
      if (OUTLINED_FUNCTION_8_17())
      {
        v1 = v8;
        v2 = v9;
LABEL_7:
        v3 = *(v0 + 32);
        v4 = *(v0 + 40);
        *(v0 + 32) = v1;
        *(v0 + 40) = v2;

        sub_1E37E9E48(v3, v4);
        goto LABEL_8;
      }
    }

    else
    {
      sub_1E325F6F0(&v10, &unk_1ECF296E0);
    }

    v1 = 0;
    v2 = 0;
    goto LABEL_7;
  }

LABEL_8:
  v5 = OUTLINED_FUNCTION_27_0();
  sub_1E37EA628(v5, v6);
  return OUTLINED_FUNCTION_75();
}

uint64_t sub_1E38AE320(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return OUTLINED_FUNCTION_0_64(v3);
}

uint64_t sub_1E38AE32C(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E38AE240();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E38AE36C()
{
  OUTLINED_FUNCTION_26_7();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  if (v3)
  {

    v4 = OUTLINED_FUNCTION_57();
    sub_1E37E9E48(v4, v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_57();

    return sub_1E37E9E48(v7, v8);
  }
}

uint64_t sub_1E38AE3E8()
{
  if (!*(v0 + 56))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict);
    if (v1)
    {
      sub_1E3277E60(1701667182, 0xE400000000000000, v1, &v7);
      if (*(&v8 + 1))
      {
        if (OUTLINED_FUNCTION_8_17())
        {
          v2 = v5;
          v3 = v6;
LABEL_9:
          *(v0 + 48) = v2;
          *(v0 + 56) = v3;

          goto LABEL_10;
        }

LABEL_8:
        v2 = 0;
        v3 = 0xE000000000000000;
        goto LABEL_9;
      }
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    sub_1E325F6F0(&v7, &unk_1ECF296E0);
    goto LABEL_8;
  }

LABEL_10:

  return OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1E38AE4C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return OUTLINED_FUNCTION_11_10();
}

uint64_t sub_1E38AE4D0(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E38AE3E8();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E38AE510(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  *(v1 + 48) = *a1;
  *(v1 + 56) = v2;
}

uint64_t sub_1E38AE524()
{
  v1 = *(v0 + 64);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + 64) = 0;
  }

  return v1 & 1;
}

_BYTE *(*sub_1E38AE548(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = sub_1E38AE524() & 1;
  return sub_1E38AE594;
}

uint64_t sub_1E38AE5A4()
{
  if (*(v0 + 80) == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict);
    if (v1)
    {
      sub_1E3277E60(0x7470697263736564, 0xEB000000006E6F69, v1, &v11);
      if (*(&v12 + 1))
      {
        if (OUTLINED_FUNCTION_8_17())
        {
          v2 = v9;
          v3 = v10;
LABEL_9:
          v4 = *(v0 + 72);
          v5 = *(v0 + 80);
          *(v0 + 72) = v2;
          *(v0 + 80) = v3;

          sub_1E37E9E48(v4, v5);
          goto LABEL_10;
        }

LABEL_8:
        v2 = 0;
        v3 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    sub_1E325F6F0(&v11, &unk_1ECF296E0);
    goto LABEL_8;
  }

LABEL_10:
  v6 = OUTLINED_FUNCTION_27_0();
  sub_1E37EA628(v6, v7);
  return OUTLINED_FUNCTION_75();
}

uint64_t sub_1E38AE6A4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 72);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return OUTLINED_FUNCTION_0_64(v3);
}

uint64_t sub_1E38AE6B0(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E38AE5A4();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E38AE6F0()
{
  OUTLINED_FUNCTION_26_7();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  if (v3)
  {

    v4 = OUTLINED_FUNCTION_57();
    sub_1E37E9E48(v4, v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_57();

    return sub_1E37E9E48(v7, v8);
  }
}

id sub_1E38AE76C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = v3;
  v8 = v4;
  v9 = *(v1 + 120);
  v10 = v5;
  v11 = v6;
  v12 = *(v1 + 120);
  if (v9 == 254)
  {
    v26 = *(v1 + 104);
    v27 = *(v1 + 96);
    v28 = *(v1 + 88);
    v13 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict);
    v14 = 0uLL;
    if (!v13)
    {
      v12 = -1;
      v17 = 0uLL;
      goto LABEL_12;
    }

    v15 = sub_1E38AE948(*(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict));
    if (v15)
    {
      v16 = v15;
LABEL_5:
      type metadata accessor for LibFamilySharingBaseMediaEntity();
      sub_1E38AEAB0(v16, &v34);
      v29 = v34;
      v31 = v35;
      v12 = v36;

      v14 = v29;
      v17 = v31;
LABEL_12:
      v30 = v14;
      v32 = v17;
      v34 = v14;
      v35 = v17;
      v36 = v12;
      v20 = *(v1 + 88);
      v21 = *(v1 + 96);
      v23 = *(v1 + 104);
      v22 = *(v1 + 112);
      *(v1 + 88) = v14;
      *(v1 + 104) = v17;
      v24 = *(v1 + 120);
      *(v1 + 120) = v12;
      sub_1E3294EE4(&v34, v33, &qword_1ECF2A450);
      sub_1E37C52A4(v20, v21, v23, v22, v24);
      v8 = *(&v30 + 1);
      v7 = v30;
      v11 = *(&v32 + 1);
      v10 = v32;
      v4 = v27;
      v3 = v28;
      v5 = v26;
      goto LABEL_13;
    }

    v18 = OUTLINED_FUNCTION_22_21();
    sub_1E3277E60(v18, v19, v13, &v34);
    if (*(&v35 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if (OUTLINED_FUNCTION_21_4())
      {
        v16 = v33[0];
        goto LABEL_5;
      }
    }

    else
    {
      sub_1E325F6F0(&v34, &unk_1ECF296E0);
    }

    v12 = -1;
    v17 = 0uLL;
    v14 = 0uLL;
    goto LABEL_12;
  }

LABEL_13:
  result = sub_1E37C55C0(v3, v4, v5, v6, v9);
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  return result;
}

uint64_t sub_1E38AE948(uint64_t a1)
{
  if (qword_1ECF4EDA0 != -1)
  {
    OUTLINED_FUNCTION_2_59();
  }

  sub_1E3277E60(qword_1ECF71358, unk_1ECF71360, a1, &v6);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (OUTLINED_FUNCTION_14_48())
    {
      v2 = v5;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    sub_1E325F6F0(&v6, &unk_1ECF296E0);
    v2 = 0;
  }

  sub_1E3277E60(0x777472416C6C6174, 0xEB000000006B726FLL, a1, &v6);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (OUTLINED_FUNCTION_14_48())
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
    sub_1E325F6F0(&v6, &unk_1ECF296E0);
    v3 = 0;
  }

  if (sub_1E39DFFC0())
  {
    if (!v3)
    {
      return v2;
    }
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

uint64_t sub_1E38AEAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3277E60(7107189, 0xE300000000000000, a1, &v15);
  if (v16)
  {
    v4 = OUTLINED_FUNCTION_14_48();
    if (v4)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

    if (v4)
    {
      v6 = v14;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    sub_1E325F6F0(&v15, &unk_1ECF296E0);
    v5 = 0;
    v6 = 0;
  }

  sub_1E3277E60(0x726F6C6F436762, 0xE700000000000000, a1, &v15);
  if (v16)
  {
    v7 = OUTLINED_FUNCTION_14_48();
    if (v7)
    {
      v8 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v14;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    sub_1E325F6F0(&v15, &unk_1ECF296E0);
    v8 = 0;
    v9 = 0;
  }

  result = sub_1E41494A8(v8, v9);
  if (result)
  {

    v11 = 0;
    v12 = 0;
LABEL_21:
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = 2;
    return result;
  }

  *&v15 = 35;
  *(&v15 + 1) = 0xE100000000000000;
  if (v9)
  {
    MEMORY[0x1E69109E0](v8, v9);

    v12 = *(&v15 + 1);
    v11 = v15;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void sub_1E38AEC28(uint64_t a1)
{
  v3 = *(v1 + 88);
  v2 = *(v1 + 96);
  v4 = *(a1 + 16);
  *(v1 + 88) = *a1;
  v5 = *(a1 + 32);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  *(v1 + 104) = v4;
  v8 = *(v1 + 120);
  *(v1 + 120) = v5;
  sub_1E37C52A4(v3, v2, v6, v7, v8);
}

void (*sub_1E38AEC50(void *a1))(void ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  sub_1E38AE76C(v3);
  return sub_1E38AECB4;
}

void sub_1E38AECB4(void ***a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[5];
  v5 = **a1;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(v3 + 32);
  v10 = *(v4 + 13);
  v11 = *(v4 + 14);
  v12 = *(v4 + 120);
  *(v4 + 11) = v5;
  *(v4 + 12) = v6;
  *(v4 + 13) = v7;
  *(v4 + 14) = v8;
  *(v4 + 120) = v9;
  if (a2)
  {
    sub_1E37C5358(v5, v6, v7, v8, v9);
    v13 = OUTLINED_FUNCTION_57();
    sub_1E37C52A4(v13, v14, v10, v11, v12);
    sub_1E37C52B8(*v3, v3[1], v3[2], v3[3], *(v3 + 32));
  }

  else
  {
    v15 = OUTLINED_FUNCTION_57();
    sub_1E37C52A4(v15, v16, v10, v11, v12);
  }

  free(v3);
}

uint64_t sub_1E38AED68()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = (v0 + 128);
  if (v2 == 1)
  {
    *v3 = 0;
    v3[1] = 0;
  }

  sub_1E37EA628(v1, v2);
  return OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1E38AEDB4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 128);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return OUTLINED_FUNCTION_0_64(v3);
}

uint64_t sub_1E38AEDC0(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E38AED68();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E38AEE00()
{
  OUTLINED_FUNCTION_26_7();
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  if (v3)
  {

    v4 = OUTLINED_FUNCTION_57();
    sub_1E37E9E48(v4, v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_57();

    return sub_1E37E9E48(v7, v8);
  }
}

uint64_t sub_1E38AEE7C@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDE0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  v9 = OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___addedDate;
  OUTLINED_FUNCTION_31_19();
  sub_1E3294EE4(v2 + v9, v8, &qword_1ECF2CDE0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return sub_1E3889AF0(v8, a1);
  }

  sub_1E325F6F0(v8, &qword_1ECF2CDE0);
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  sub_1E3294EE4(a1, v1, &unk_1ECF28E20);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v10);
  OUTLINED_FUNCTION_30_17();
  OUTLINED_FUNCTION_29_18();
  return swift_endAccess();
}

void (*sub_1E38AF000(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  a1[2] = v6;
  sub_1E38AEE7C(v6);
  return sub_1E38AF098;
}

uint64_t sub_1E38AF0B0@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDE0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___releaseDate;
  OUTLINED_FUNCTION_31_19();
  sub_1E3294EE4(v2 + v9, v8, &qword_1ECF2CDE0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return sub_1E3889AF0(v8, a1);
  }

  sub_1E325F6F0(v8, &qword_1ECF2CDE0);
  sub_1E38AF21C(v2, a1);
  sub_1E3294EE4(a1, v1, &unk_1ECF28E20);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v10);
  OUTLINED_FUNCTION_30_17();
  OUTLINED_FUNCTION_29_18();
  return swift_endAccess();
}

uint64_t sub_1E38AF21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity__releaseDate;
  swift_beginAccess();
  sub_1E3294EE4(a1 + v11, v10, &unk_1ECF28E20);
  v12 = sub_1E41FE5D4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v12);
  sub_1E325F6F0(v10, &unk_1ECF28E20);
  if (EnumTagSinglePayload != 1)
  {
    return sub_1E3294EE4(a1 + v11, a2, &unk_1ECF28E20);
  }

  v14 = *(a1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict);
  if (!v14)
  {
    v21 = 0u;
    v22 = 0u;
    goto LABEL_10;
  }

  sub_1E3277E60(0x44657361656C6572, 0xEB00000000657461, v14, &v21);
  if (!*(&v22 + 1))
  {
LABEL_10:
    sub_1E325F6F0(&v21, &unk_1ECF296E0);
    return sub_1E3294EE4(a1 + v11, a2, &unk_1ECF28E20);
  }

  if (OUTLINED_FUNCTION_21_4())
  {
    if (_MergedGlobals_164 != -1)
    {
      swift_once();
    }

    v15 = qword_1EE28B568;
    v16 = sub_1E4205ED4();

    v17 = [v15 dateFromString_];

    if (v17)
    {
      sub_1E41FE584();

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    __swift_storeEnumTagSinglePayload(v7, v18, 1, v12);
    swift_beginAccess();
    sub_1E37FA198(v7, a1 + v11, &unk_1ECF28E20);
    swift_endAccess();
  }

  return sub_1E3294EE4(a1 + v11, a2, &unk_1ECF28E20);
}

uint64_t sub_1E38AF4CC(uint64_t a1, uint64_t *a2)
{
  v5 = OUTLINED_FUNCTION_75();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1E3889AF0(a1, &v13 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  v11 = *a2;
  swift_beginAccess();
  sub_1E37FA198(v9, v2 + v11, &qword_1ECF2CDE0);
  return swift_endAccess();
}

void (*sub_1E38AF5BC(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  a1[2] = v6;
  sub_1E38AF0B0(v6);
  return sub_1E38AF654;
}

void sub_1E38AF66C(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    sub_1E3294EE4(*(a1 + 16), v4, &unk_1ECF28E20);
    a3(v4);
    sub_1E325F6F0(v5, &unk_1ECF28E20);
  }

  else
  {
    a3(*(a1 + 16));
  }

  free(v5);

  free(v4);
}

uint64_t sub_1E38AF714()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___genre);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___genre);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___genre + 8) == 1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict);
    if (v3)
    {
      if (*(v3 + 16))
      {
        v4 = sub_1E327D33C(0x6D614E65726E6567, 0xEA00000000007365);
        if (v5)
        {
          sub_1E328438C(*(v3 + 56) + 32 * v4, v13);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
          if (OUTLINED_FUNCTION_8_17())
          {
            if (v12[2])
            {
              v2 = v12[4];
              v6 = v12[5];

LABEL_10:
              v7 = *v1;
              v8 = v1[1];
              *v1 = v2;
              v1[1] = v6;

              sub_1E37E9E48(v7, v8);
              goto LABEL_11;
            }
          }
        }
      }
    }

    v2 = 0;
    v6 = 0;
    goto LABEL_10;
  }

LABEL_11:
  v9 = OUTLINED_FUNCTION_27_0();
  sub_1E37EA628(v9, v10);
  return v2;
}

uint64_t sub_1E38AF844(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___genre);
  v4 = *(v2 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___genre);
  *v3 = a1;
  v3[1] = a2;
  return OUTLINED_FUNCTION_0_64(v4);
}

uint64_t sub_1E38AF85C(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E38AF714();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E38AF89C()
{
  OUTLINED_FUNCTION_26_7();
  v2 = (v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___genre);
  *v2 = v3;
  v2[1] = v0;
  if (v4)
  {

    v5 = OUTLINED_FUNCTION_57();
    sub_1E37E9E48(v5, v6);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_57();

    return sub_1E37E9E48(v8, v9);
  }
}

uint64_t sub_1E38AF924()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict);
  if (v1 && *(v1 + 16) && (v2 = sub_1E327D33C(0x696C696261706163, 0xEC00000073656974), (v3 & 1) != 0) && (sub_1E328438C(*(v1 + 56) + 32 * v2, v6), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420), (OUTLINED_FUNCTION_8_17() & 1) != 0))
  {
    return sub_1E32772D8(v5);
  }

  else
  {
    return 0;
  }
}

void sub_1E38AF9D0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1E3768E10(0x2D4D4D2D79797979, 0xEA00000000006464, v0);
  qword_1EE28B568 = v0;
}

uint64_t sub_1E38AFA6C(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 2;
  *(v1 + 72) = xmmword_1E4297170;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = -2;
  *(v1 + 128) = xmmword_1E4297170;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
  *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___genre) = xmmword_1E4297170;
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_familySharingDict) = a1;

  sub_1E3277E60(0x7475626972747461, 0xEA00000000007365, a1, &v18);

  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    v14 = OUTLINED_FUNCTION_21_4();
    v15 = v17;
    if (!v14)
    {
      v15 = 0;
    }
  }

  else
  {
    sub_1E325F6F0(&v18, &unk_1ECF296E0);
    v15 = 0;
  }

  *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict) = v15;
  return v1;
}

uint64_t sub_1E38AFC04()
{

  sub_1E37E9E48(*(v0 + 32), *(v0 + 40));

  sub_1E37E9E48(*(v0 + 72), *(v0 + 80));
  sub_1E37C52A4(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
  sub_1E37E9E48(*(v0 + 128), *(v0 + 136));
  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___addedDate, &qword_1ECF2CDE0);
  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___releaseDate, &qword_1ECF2CDE0);
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___genre), *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___genre + 8));

  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity__releaseDate, &unk_1ECF28E20);
  return v0;
}

uint64_t sub_1E38AFCF0()
{
  sub_1E38AFC04();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1E38AFECC(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 272))();
  return sub_1E37C55D4;
}

double sub_1E38AFF90@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5_2();
  (*(v2 + 312))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

void (*sub_1E38B0080(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 352))();
  return sub_1E37C4BF8;
}

uint64_t sub_1E38B01E8(uint64_t a1)
{
  OUTLINED_FUNCTION_116();
  WitnessTable = swift_getWitnessTable();

  return sub_1E3B8DF5C(a1, WitnessTable);
}

unint64_t sub_1E38B0238(uint64_t a1)
{
  result = sub_1E38B0260();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E38B0260()
{
  result = qword_1ECF2CDE8;
  if (!qword_1ECF2CDE8)
  {
    type metadata accessor for LibFamilySharingBaseMediaEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CDE8);
  }

  return result;
}

uint64_t type metadata accessor for LibFamilySharingBaseMediaEntity()
{
  result = qword_1EE292860;
  if (!qword_1EE292860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E38B032C()
{
  sub_1E38B0440();
  if (v0 <= 0x3F)
  {
    sub_1E3273C28();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E38B0440()
{
  if (!qword_1EE28A448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF28E20);
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE28A448);
    }
  }
}

uint64_t sub_1E38B04B4()
{
  sub_1E3280A90(0, &qword_1EE23AE20);
  v0 = sub_1E4206F24();
  v1 = sub_1E4206F24();
  type metadata accessor for CGPoint(0);
  result = sub_1E4205CB4();
  qword_1EE28B598 = 0x406C200000000000;
  unk_1EE28B5A0 = 0x406C200000000000;
  qword_1EE28B5A8 = v0;
  qword_1EE28B5B0 = v1;
  qword_1EE28B5B8 = result;
  return result;
}

uint64_t sub_1E38B0578(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v118 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v111 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v111 - v15;
  if (!a4 && !(*(*a1 + 392))(v14))
  {
    return 0;
  }

  type metadata accessor for MonogramLayout();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {

    return 0;
  }

  v18 = v17;
  v114 = a2;
  v19 = *(*a1 + 488);

  v21 = v19(v20);
  v117 = v16;
  if (!v21)
  {
    type metadata accessor for ViewModel();
    sub_1E37414E0();
    v21 = sub_1E4205CB4();
  }

  v22 = v21;
  v23 = sub_1E41FE414();
  __swift_storeEnumTagSinglePayload(v117, 1, 1, v23);
  v115 = v118[9];
  if (v115 == 1 || (v119 = *v118, LOBYTE(v120) = *(v118 + 16), v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD70), sub_1E38B22AC(), v25 = &v119, sub_1E4149AF0(v24, &v122), v123 == 1))
  {
    v26 = *(*v18 + 200);

    v28 = COERCE_DOUBLE(v26(v27));
    v30 = 0.0;
    if (v29)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = v28;
    }

    v32 = COERCE_DOUBLE((*(*v18 + 304))());
    v25 = v33;

    if ((v25 & 1) == 0)
    {
      v30 = v32;
    }
  }

  else
  {
    v30 = *(&v122 + 1);
    v31 = *&v122;
  }

  if (sub_1E373E010(39, v22))
  {
    type metadata accessor for ImageViewModel();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_30();
      v35 = (*(v34 + 1000))(0, v31, v30);
      if (v36 != -1)
      {
        v37 = v36;
        v116 = v35;

        switch(v37)
        {
          case 1:
            if ([objc_opt_self() makeImageProxyWithDescriptor_])
            {
              sub_1E4207264();
              swift_unknownObjectRelease();
            }

            else
            {
              v122 = 0u;
              v123 = 0u;
            }

            OUTLINED_FUNCTION_3_58();
            if (v54)
            {
              sub_1E3280A90(0, &qword_1EE23B340);
              if (swift_dynamicCast())
              {
                v49 = v124;
                if (v124)
                {
                  if ([v124 object])
                  {
                    sub_1E4207264();
                    swift_unknownObjectRelease();
                    sub_1E325F748(v117, &unk_1ECF363C0);
                  }

                  else
                  {
                    sub_1E325F748(v117, &unk_1ECF363C0);
                    v122 = 0u;
                    v123 = 0u;
                  }

                  OUTLINED_FUNCTION_3_58();
                  if (v110)
                  {
                    v56 = swift_dynamicCast() ^ 1;
                    v55 = v10;
LABEL_43:
                    __swift_storeEnumTagSinglePayload(v55, v56, 1, v23);
                    v57 = v10;
                    v46 = v117;
                    v58 = sub_1E327D738(v57, v117);
                    v111 = (*(*v25 + 904))(v58);
                    v51 = v59;
                    v60 = *(*v25 + 392);

                    v62 = v60(v61);

                    if (v62)
                    {
                      type metadata accessor for ImageLayout();
                      v63 = swift_dynamicCastClass();
                      if (v63)
                      {
                        v64 = (*(*v63 + 1968))();

                        v50 = v64;

                        sub_1E379098C(v116, 1u);
LABEL_86:
                        v43 = v111;
                        goto LABEL_51;
                      }
                    }

                    sub_1E379098C(v116, 1u);

                    v50 = 0;
                    goto LABEL_86;
                  }

LABEL_42:
                  sub_1E325F748(&v119, &unk_1ECF296E0);
                  v55 = v10;
                  v56 = 1;
                  goto LABEL_43;
                }
              }
            }

            else
            {
              sub_1E325F748(&v119, &unk_1ECF296E0);
            }

            sub_1E325F748(v117, &unk_1ECF363C0);
            v49 = 0;
            v119 = 0u;
            v120 = 0u;
            goto LABEL_42;
          case 2:

            v52 = v116;
            v53 = 2;
            goto LABEL_49;
          case 3:

            v52 = v116;
            v53 = 3;
            goto LABEL_49;
          default:
            v38 = [v116 type];
            if (!v38)
            {
              v65 = sub_1E3F52F38();
              v41 = *v65;
              v40 = *(v65 + 1);

              v42 = [v116 name];
              goto LABEL_47;
            }

            if (v38 == 1)
            {
              v39 = sub_1E3F52F2C();
              v41 = *v39;
              v40 = *(v39 + 1);

              v42 = [v116 name];
LABEL_47:
              v66 = v42;
              v67 = sub_1E4205F14();
              v69 = v68;

              *&v119 = v41;
              *(&v119 + 1) = v40;

              MEMORY[0x1E69109E0](v67, v69);

              sub_1E41FE404();

              sub_1E379098C(v116, 0);

              v46 = v117;
              sub_1E325F748(v117, &unk_1ECF363C0);
              sub_1E327D738(v13, v46);
              goto LABEL_29;
            }

            v52 = v116;
            v53 = 0;
LABEL_49:
            sub_1E379098C(v52, v53);
            v50 = 0;
            v43 = 0;
            break;
        }

LABEL_50:
        v51 = 0;
        v49 = 0;
        v46 = v117;
        goto LABEL_51;
      }
    }
  }

  v43 = sub_1E373E010(39, v22);

  if (!v43)
  {
    v50 = 0;
    goto LABEL_50;
  }

  v44 = type metadata accessor for LibImageViewModel();
  v45 = swift_dynamicCastClass();
  v46 = v117;
  if (v45)
  {
    *(&v120 + 1) = v44;
    *&v119 = v45;

    v47 = *sub_1E39FAF00();
    objc_allocWithZone(MEMORY[0x1E69DF730]);
    v48 = v47;
    v49 = sub_1E38B2064(&v119, v47, 0);

    v50 = 0;
    v43 = 0;
    v51 = 0;
  }

  else
  {

LABEL_29:
    v50 = 0;
    v43 = 0;
    v51 = 0;
    v49 = 0;
  }

LABEL_51:
  v70 = sub_1E38B14E8(a1, v46, v18, v118);
  if (!v70)
  {
    sub_1E325F748(v46, &unk_1ECF363C0);

    return 0;
  }

  v116 = v49;
  v111 = v43;
  v113 = v51;
  v71 = v70;
  LOBYTE(v119) = (*(*v18 + 1720))(v70);
  LOBYTE(v122) = 4;
  sub_1E38B23EC();
  v72 = [objc_allocWithZone(VUIMonogramViewConfiguration) initWithShadowImages_];
  (*(*v18 + 1744))();
  OUTLINED_FUNCTION_2_1();
  v74 = (*(v73 + 1272))();
  v76 = v75;

  v77 = *&v74;
  if (v76)
  {
    v77 = 0.0;
  }

  v78 = (*(*v18 + 672))([v72 setFocusedSizeIncrease_]);
  *&v122 = v78;
  *&v120 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC50);
  sub_1E4148DE0(sub_1E38B2440);

  v79 = (*(*v18 + 864))();
  v124 = v79;
  *&v123 = v72;
  sub_1E4148DE0(sub_1E38B2454);

  if (v50)
  {
    [v71 setShouldFallBackToSilhouette_];
  }

  v80 = v114;
  v81 = [v114 setConfiguration_];
  *&v122 = v80;
  MEMORY[0x1EEE9AC00](v81);
  *(&v111 - 2) = v72;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDF0);
  sub_1E4148C68(sub_1E38B1CBC, v82, &v119);
  v83 = v119;
  [v119 setImageProxy_];
  v114 = v71;
  v84 = [v83 setMonogramDescription_];
  if (v50)
  {
    type metadata accessor for GraphicsUtilities();
    v85 = v50;
    v86 = sub_1E418A59C();
    v88 = sub_1E418A5A8(v85, v86, v87);
    OUTLINED_FUNCTION_5_61(v88, sel_setPlaceholderImage_);

    v89 = v116;
  }

  else
  {
    (*(*v18 + 1744))(v84);
    OUTLINED_FUNCTION_30();
    v91 = (*(v90 + 1992))();

    if (v91 == 3)
    {
      v88 = 0;
    }

    else
    {
      v92 = sub_1E3B64FB0();
      v88 = v92;
    }

    v89 = v116;
    OUTLINED_FUNCTION_5_61(v92, sel_setPlaceholderImage_);
  }

  if (!v89)
  {
    v119 = 0u;
    v120 = 0u;
LABEL_72:
    sub_1E325F748(&v119, &unk_1ECF296E0);
    goto LABEL_73;
  }

  if ([v89 imageLoader])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v122 = 0u;
    v123 = 0u;
  }

  OUTLINED_FUNCTION_3_58();
  if (!v93)
  {
    goto LABEL_72;
  }

  type metadata accessor for LibImageLoader();
  if (swift_dynamicCast())
  {

    [v114 setIsUsingLibraryImageLoader_];
  }

LABEL_73:
  OUTLINED_FUNCTION_51_1();
  sub_1E3ACF3E8();
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v100 = sub_1E39C1F18();
  result = sub_1E32AE9B0(v100);
  v112 = v50;
  if (!result)
  {
    v103 = v89;

    v102 = 0;
    goto LABEL_79;
  }

  if ((v100 & 0xC000000000000001) != 0)
  {
    v102 = MEMORY[0x1E6911E60](0, v100);
    goto LABEL_77;
  }

  if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v102 = *(v100 + 32);

LABEL_77:
    v103 = v89;

LABEL_79:
    type metadata accessor for UIFactory();
    v104 = [v83 overlayView];
    *(&v120 + 1) = &type metadata for OverlayFactoryContext;
    v121 = &off_1F5D6F838;
    *&v119 = v95;
    *(&v119 + 1) = v97;
    LOWORD(v120) = v99 & 0x101;
    v105 = sub_1E3280A90(0, &qword_1EE23AE80);
    v106 = sub_1E393D92C(v102, v104, &v119, 0, v105);

    v107 = sub_1E325F748(&v119, &qword_1ECF296C0);
    OUTLINED_FUNCTION_5_61(v107, sel_setOverlayView_);

    v108 = [v83 vui:1 isAccessibilityElement:?];
    if (v113)
    {
      v109 = sub_1E4205ED4();
    }

    else
    {
      v109 = 0;
    }

    OUTLINED_FUNCTION_5_61(v108, sel_vui_setAccessibilityText_);

    sub_1E325F748(v117, &unk_1ECF363C0);
    return v83;
  }

  __break(1u);
  return result;
}

id sub_1E38B14E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v69 - v10;
  if (!a1)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v12 = (*(*a1 + 488))(v9);
  if (v12)
  {
    v13 = sub_1E373E010(17, v12);

    if (v13)
    {
      if (*v13 == _TtC8VideosUI13TextViewModel)
      {
        v12 = sub_1E3C27024();
        v15 = v14;

        goto LABEL_9;
      }
    }

    goto LABEL_7;
  }

LABEL_8:
  v15 = 0;
LABEL_9:
  v16 = objc_opt_self();
  OUTLINED_FUNCTION_111();
  (*(v17 + 1768))();
  OUTLINED_FUNCTION_2_1();
  v19 = (*(v18 + 2408))();

  v20 = [v16 vui:v19 fontFromTextLayout:?];

  sub_1E38B2468(a2, v11);
  objc_allocWithZone(VUIMonogramDescription);
  v21 = v20;
  v22 = sub_1E38B21C4(v12, v15, v11, v20);
  if (v22)
  {
    if (a4[9] != 1 && (a4[2] & 1) == 0)
    {
      v24 = *a4;
      v23 = a4[1];
      OUTLINED_FUNCTION_111();
      v25 += 218;
      v26 = *v25;
      (*v25)();
      OUTLINED_FUNCTION_30();
      (*(v27 + 208))(v24, 0);

      (v26)(v28);
      OUTLINED_FUNCTION_2_1();
      (*(v29 + 312))(v23, 0);
    }

    OUTLINED_FUNCTION_111();
    v30 += 218;
    v31 = *v30;
    (*v30)();
    OUTLINED_FUNCTION_30();
    v33 = (*(v32 + 1992))();

    if (v33 != 3)
    {
      v34 = [v22 setShouldFallBackToSilhouette_];
    }

    (v31)(v34);
    OUTLINED_FUNCTION_30();
    v36 = (*(v35 + 2288))();
    v38 = v37;

    [v22 setSize_];
    if (_MergedGlobals_165 != -1)
    {
      swift_once();
    }

    [v22 setDefaultImageSize_];
    v39 = sub_1E38B1DA0(qword_1EE28B5B8);
    sub_1E38B24D8(v39, v22);
    v40 = *(v31)();
    v41 = (*(v40 + 1800))();

    if (v41 != 5)
    {
      v42 = [v22 setScaleMode_];
    }

    (v31)(v42);
    OUTLINED_FUNCTION_30();
    (*(v43 + 176))(v69);
    v44 = *v69;
    v45 = *&v69[1];
    v46 = *&v69[2];
    v47 = *&v69[3];

    if (v70)
    {
      v44 = *MEMORY[0x1E69DDCE0];
      v45 = *(MEMORY[0x1E69DDCE0] + 8);
      v46 = *(MEMORY[0x1E69DDCE0] + 16);
      v47 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    v48 = (*(*a3 + 744))([v22 setPadding_]);
    [v22 setBackgroundColor_];

    v49 = [v22 size];
    if (v51 == 0.0 && v50 == 0.0)
    {
      OUTLINED_FUNCTION_111();
      v53 = COERCE_DOUBLE((*(v52 + 200))());
      if (v54)
      {
        v55 = 0.0;
      }

      else
      {
        v55 = v53;
      }

      v56 = COERCE_DOUBLE((*(*a3 + 304))());
      if (v57)
      {
        v58 = 0.0;
      }

      else
      {
        v58 = v56;
      }

      v49 = [v22 setSize_];
    }

    (v31)(v49);
    OUTLINED_FUNCTION_30();
    (*(v59 + 1848))(v71);

    if ((v72 & 1) == 0)
    {
      v60 = [v22 setBorderWidth_];
    }

    v61 = (v31)(v60);
    v62 = (*(*v61 + 1824))();

    if (v62)
    {
      [v22 setBorderColor_];
    }

    OUTLINED_FUNCTION_111();
    v64 = (*(v63 + 1792))();
    if (v64 != 2)
    {
      [v22 setOptimizedImageRendering_];
    }

    OUTLINED_FUNCTION_111();
    v66 = (*(v65 + 672))();
    if (v66)
    {
      v67 = v66;
      [v22 setFillColor_];
    }

    [v22 setGradientStartColor_];
    [v22 setGradientEndColor_];
  }

  return v22;
}

id sub_1E38B1CBC@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(VUIMonogramView) initWithFrame:*(v1 + 16) configuration:{0.0, 0.0, 0.0, 0.0}];
  *a1 = result;
  return result;
}

void sub_1E38B1D18(char a1)
{
  v3 = [v1 overlayView];
  if (v3)
  {
    v4 = v3;
    [v3 setHidden_];
  }
}

uint64_t sub_1E38B1DA0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8D0);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    type metadata accessor for CGPoint(0);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1E329504C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1E329504C(v29, v30);
    result = sub_1E42073F4();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = *(v2 + 48) + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_1E329504C(v30, (*(v2 + 56) + 32 * v16));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_1E38B2064(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1[3];
  if (v7)
  {
    v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v10 = *(v7 - 8);
    MEMORY[0x1EEE9AC00](v9);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_1E4207994();
    (*(v10 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v4 initWithObject:v13 imageLoader:a2 groupType:a3];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v14;
}

id sub_1E38B21C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1E4205ED4();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1E41FE414();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v9) != 1)
  {
    v10 = sub_1E41FE364();
    (*(*(v9 - 8) + 8))(a3, v9);
  }

  v11 = [v5 initWithText:v8 imageURL:v10 font:a4];

  return v11;
}

unint64_t sub_1E38B22AC()
{
  result = qword_1EE23AEA0;
  if (!qword_1EE23AEA0)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23AEA0);
  }

  return result;
}

uint64_t sub_1E38B230C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 82))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 72);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E38B2360(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

unint64_t sub_1E38B23EC()
{
  result = qword_1ECF2CDF8;
  if (!qword_1ECF2CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CDF8);
  }

  return result;
}

uint64_t sub_1E38B2468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1E38B24D8(uint64_t a1, void *a2)
{
  v3 = sub_1E4205C44();

  [a2 setSpecialOffsetByFirstLetter_];
}

uint64_t sub_1E38B2578()
{
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  swift_unknownObjectWeakInit();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = sub_1E38B2A10();
  *v2 = v0;
  v2[1] = sub_1E38B2684;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x67616D4964616F6CLL, 0xEB00000000292865, sub_1E38B2A08, v1, v3);
}

uint64_t sub_1E38B2684()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1E38B27BC;
  }

  else
  {

    v2 = sub_1E38B27A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E38B27BC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1E38B2820(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock[-1] - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(v3 + 16))(v5, a1, v2);
    v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v9 = swift_allocObject();
    (*(v3 + 32))(v9 + v8, v5, v2);
    aBlock[4] = sub_1E38B2B58;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E38B2C5C;
    aBlock[3] = &block_descriptor_23;
    v10 = _Block_copy(aBlock);

    [v7 setCompletionHandler_];
    _Block_release(v10);
    [v7 load];
  }
}

unint64_t sub_1E38B2A10()
{
  result = qword_1ECF2CE00;
  if (!qword_1ECF2CE00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF2CE00);
  }

  return result;
}

unint64_t sub_1E38B2A58()
{
  result = qword_1ECF2CE08;
  if (!qword_1ECF2CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CE08);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ImageProxyError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1E38B2B58(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE10);
  if (a1)
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE10);
    return sub_1E42063D4();
  }

  else
  {
    if (!a2)
    {
      sub_1E38B2CF0();
      swift_allocError();
    }

    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE10);
    return sub_1E42063C4();
  }
}

void sub_1E38B2C5C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a3;
  v7(a2, a3, a4);
}

unint64_t sub_1E38B2CF0()
{
  result = qword_1ECF2CE18;
  if (!qword_1ECF2CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CE18);
  }

  return result;
}

uint64_t sub_1E38B2D44(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_viewModel] = a1;

  if ([v1 vuiIsViewLoaded])
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      type metadata accessor for MediaShowcaseHostingView();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = v4;
        v6 = *&v1[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_viewModel];
        v7 = OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_viewModel;
        OUTLINED_FUNCTION_3_0();
        *(v5 + v7) = v6;
      }
    }
  }
}

uint64_t sub_1E38B2E2C()
{
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_viewModel))
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8();
  v2 = *(v1 + 1040);

  v4 = v2(v3);

  if (!v4)
  {
    goto LABEL_10;
  }

  result = sub_1E32AE9B0(v4);
  if (!result)
  {

    goto LABEL_10;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v4);
LABEL_7:

    OUTLINED_FUNCTION_8();
    v7 = (*(v6 + 872))();

    if (v7)
    {
      return v7;
    }

LABEL_10:

    return MEMORY[0x1E69E7CC0];
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E38B2F44@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_collectionImpressioner;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return sub_1E38B9460(v1 + v3, a1);
}

uint64_t sub_1E38B2F98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_collectionImpressioner;
  OUTLINED_FUNCTION_11_3();
  sub_1E38B94D0(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_1E38B2FF0()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_1E42074B4();

    v3 = sub_1E41E1364(v0);
    MEMORY[0x1E69109E0](v3);

    MEMORY[0x1E69109E0](8250, 0xE200000000000000);

    v4 = OUTLINED_FUNCTION_27_0();
    MEMORY[0x1E69109E0](v4);

    MEMORY[0x1E69109E0](41, 0xE100000000000000);
    v2 = 0xD000000000000010;
    *v1 = 0xD000000000000010;
    v1[1] = 0x80000001E4265380;
  }

  return v2;
}

_BYTE *sub_1E38B310C()
{
  v1 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController);
  }

  else
  {
    v4 = v0;
    v5 = type metadata accessor for PaginatedMediaController();
    v6 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_collectionImpressioner;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E38B9460(v4 + v6, v12);
    swift_unknownObjectRetain();
    sub_1E3C487D0(0, 0, MEMORY[0x1E69E7CC0], 0, 0, v4, &off_1F5D61820, v12, 0, 0);
    v7 = OUTLINED_FUNCTION_70_3();
    sub_1E3C47874(v7);
    sub_1E3C52B94(1);
    sub_1E3C52CF0(2);
    sub_1E3C52848(0);
    sub_1E3C53324(1);
    sub_1E3C52908(0);
    v8 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldAdjustCaptionPosition;
    OUTLINED_FUNCTION_3_0();
    v5[v8] = 1;
    sub_1E3C52DB4(1);
    sub_1E3C4770C(1);
    sub_1E3C535A8(1);
    v9 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1E38B3250()
{
  v1 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___toolBar;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___toolBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___toolBar);
  }

  else
  {
    v4 = sub_1E3FC1E24();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1E38B32B0()
{
  OUTLINED_FUNCTION_52_11();
  if (v1 && (*(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_shouldShowMuteButton);
  }

  else
  {
    v2 = 0;
  }

  v4 = sub_1E38B3250();
  v3 = j__OUTLINED_FUNCTION_51_1();
  sub_1E3FBEA98(v2, v3 & 1);
}

uint64_t sub_1E38B3338()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___isAudioMuted);
  if (v1 == 2)
  {
    LOBYTE(v1) = 1;
    *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___isAudioMuted) = 1;
  }

  return v1 & 1;
}

void sub_1E38B335C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_navigationButtonsHiddenFromOffset);
  *(v1 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_navigationButtonsHiddenFromOffset) = a1;
  v3 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_navigationButtonsHiddenFromOffset;
  if (v2 != *(v1 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_navigationButtonsHiddenFromOffset))
  {
    OUTLINED_FUNCTION_52_11();
    if (v4)
    {
      v5 = sub_1E38B3250();
      v6 = *(v1 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___toolBar);
      v7 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_navigationItem;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v8 = *(v6 + v7);
      v9 = *(v1 + v3);
      v10 = v8;
      v11 = j__OUTLINED_FUNCTION_51_1();
      sub_1E3FBFC94(v8, (v9 & 1) == 0, v11 & 1);
    }
  }
}

id sub_1E38B3424()
{
  v1 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___mediaShowcaseConfig;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___mediaShowcaseConfig);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___mediaShowcaseConfig);
  }

  else
  {
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 mediaShowcaseConfig];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

double sub_1E38B34C8()
{
  type metadata accessor for MediaShowcaseHostingView();
  OUTLINED_FUNCTION_50();

  v1 = sub_1E40037C8(v0);

  return v1;
}

id sub_1E38B351C()
{
  swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_viewModel) = 0;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v1 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_notificationObservers) = v1;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_metadataViewTopOffsetObserver) = 0;
  v2 = v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_collectionImpressioner;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  OUTLINED_FUNCTION_63_7(OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isTabbarChild);
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasViewDisappeared) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isStoppedForSideBarEditing) = 0;
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___logPrefix);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_initializedPageViewModels) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___toolBar) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_toolBarOffsetY) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_lastViewWidth) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_lastSizeClass) = 7;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_didSetupView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isControlButtonsVisible) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___isAudioMuted) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_shouldShowMuteButton) = v4;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hideMuteButtonTimer) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_showingButtonsInNavigationItem) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_navigationButtonsHiddenFromOffset) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___mediaShowcaseConfig) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasLayedOutSubviews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_accountSettingViewModel) = 0;
  result = sub_1E4207944();
  v6 = (v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_name);
  *v6 = result;
  v6[1] = v7;
  if (__OFADD__(qword_1EE291530, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1EE291530;
    OUTLINED_FUNCTION_25();
    return objc_msgSendSuper2(v8, v9);
  }

  return result;
}

void sub_1E38B36F8()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_viewModel) = 0;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v1 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_notificationObservers) = v1;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_metadataViewTopOffsetObserver) = 0;
  v2 = v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_collectionImpressioner;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isTabbarChild) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasViewDisappeared) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isStoppedForSideBarEditing) = 0;
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___logPrefix);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_initializedPageViewModels) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___toolBar) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_toolBarOffsetY) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_lastViewWidth) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_lastSizeClass) = 7;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_didSetupView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isControlButtonsVisible) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___isAudioMuted) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_shouldShowMuteButton) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hideMuteButtonTimer) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_showingButtonsInNavigationItem) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_navigationButtonsHiddenFromOffset) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___mediaShowcaseConfig) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasLayedOutSubviews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_accountSettingViewModel) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E38B388C()
{
  type metadata accessor for MediaShowcaseHostingView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = sub_1E38B34C8();
  v3 = OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_widthThresholdForIpadLayout;
  OUTLINED_FUNCTION_3_0();
  *&v1[v3] = v2;
  v4 = v1;
  [v4 vui:2 setOverrideUserInterfaceStyle:?];
  v5 = [objc_opt_self() blackColor];
  [v4 setVuiBackgroundColor_];

  v6 = *&v0[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_viewModel];
  v7 = OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_viewModel;
  OUTLINED_FUNCTION_3_0();
  *&v4[v7] = v6;

  [v0 setVuiView_];
}

void sub_1E38B3A08()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  sub_1E38B3ABC();
  if ([objc_opt_self() isPad])
  {
    v1 = sub_1E39DFFC8();
    v2 = [v0 vuiView];
    v3 = v2;
    if (v1)
    {
      if (v2)
      {
LABEL_6:
        [v2 setClipsToBounds_];

        return;
      }

      __break(1u);
    }

    if (!v2)
    {
      __break(1u);
      return;
    }

    goto LABEL_6;
  }
}

void sub_1E38B3ABC()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_0_10();
  v58 = v1;
  v59 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v53 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_12();
  v6 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00);
  OUTLINED_FUNCTION_0_10();
  v70 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  v68 = objc_opt_self();
  v17 = [v68 defaultCenter];
  sub_1E4206C14();

  v18 = sub_1E32ADE38();
  v19 = sub_1E4206A04();
  v71 = v19;
  v20 = sub_1E42069A4();
  v60 = v20;
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v20);
  v69 = sub_1E38B96D8(&qword_1EE23B130, MEMORY[0x1E6969F20]);
  v67 = sub_1E38B96D8(&qword_1EE23B1E0, sub_1E32ADE38);
  OUTLINED_FUNCTION_30_18();
  v61 = v6;
  sub_1E42007D4();
  sub_1E325F748(v0, &unk_1ECF2D2B0);

  v21 = *(v8 + 8);
  v63 = v8 + 8;
  v66 = v21;
  v21(v12, v6);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_25_26();
  v65 = sub_1E32752B0(&qword_1EE28A240, &unk_1ECF2CD00);
  sub_1E4200844();
  OUTLINED_FUNCTION_73_3();
  v22 = *(v70 + 8);
  v70 += 8;
  v64 = v22;
  v23 = OUTLINED_FUNCTION_27_0();
  v24(v23);
  OUTLINED_FUNCTION_15_48();
  sub_1E42004C4();
  swift_endAccess();

  v25 = [v68 defaultCenter];
  v26 = *MEMORY[0x1E69DF7E0];
  sub_1E4206C14();

  v27 = sub_1E4206A04();
  v28 = OUTLINED_FUNCTION_6_48(v27);
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v20);
  OUTLINED_FUNCTION_30_18();
  v31 = v61;
  OUTLINED_FUNCTION_65_9();
  sub_1E325F748(v0, &unk_1ECF2D2B0);

  v66(v12, v31);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_25_26();
  OUTLINED_FUNCTION_44_21();
  OUTLINED_FUNCTION_73_3();
  v32 = OUTLINED_FUNCTION_27_0();
  v64(v32);
  OUTLINED_FUNCTION_15_48();
  sub_1E42004C4();
  swift_endAccess();

  v33 = [v68 defaultCenter];
  v34 = *MEMORY[0x1E69DF7D8];
  sub_1E4206C14();

  v35 = sub_1E4206A04();
  v36 = OUTLINED_FUNCTION_6_48(v35);
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v60);
  OUTLINED_FUNCTION_30_18();
  v56 = v18;
  OUTLINED_FUNCTION_65_9();
  sub_1E325F748(v0, &unk_1ECF2D2B0);

  v54 = v12;
  v66(v12, v31);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_25_26();
  OUTLINED_FUNCTION_44_21();
  OUTLINED_FUNCTION_73_3();
  v55 = v16;
  v39 = OUTLINED_FUNCTION_27_0();
  v64(v39);
  OUTLINED_FUNCTION_15_48();
  sub_1E42004C4();
  swift_endAccess();

  sub_1E38D25EC();
  OUTLINED_FUNCTION_51_12();
  v40 = v57;
  sub_1E38D2768();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_25_26();
  OUTLINED_FUNCTION_11_9();
  sub_1E32752B0(v41, &qword_1ECF3D8F0);
  v42 = v58;
  sub_1E4200844();
  OUTLINED_FUNCTION_73_3();
  (*(v59 + 8))(v40, v42);
  OUTLINED_FUNCTION_15_48();
  sub_1E42004C4();
  swift_endAccess();

  if ([objc_opt_self() isPad])
  {
    v43 = [v68 defaultCenter];
    sub_1E396B128();

    v44 = sub_1E4205ED4();

    v45 = v54;
    sub_1E4206C14();

    v46 = sub_1E4206A04();
    v47 = OUTLINED_FUNCTION_6_48(v46);
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v60);
    v50 = v55;
    v51 = v61;
    sub_1E42007D4();
    sub_1E325F748(v0, &unk_1ECF2D2B0);

    v66(v45, v51);
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v52 = v62;
    sub_1E4200844();

    (v64)(v50, v52);
    OUTLINED_FUNCTION_11_3();
    sub_1E42004C4();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38B4324()
{
  v1 = v0;
  v80.receiver = v0;
  v80.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v80, sel_vui_viewDidLayoutSubviews);
  v0[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasLayedOutSubviews] = 1;
  if (v0[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_didSetupView])
  {
LABEL_26:
    v71 = sub_1E38B310C();
    v72 = [v71 vuiView];

    if (v72)
    {
      v73 = OUTLINED_FUNCTION_35_18();
      if (v73)
      {
        v74 = v73;
        [v73 bounds];
        OUTLINED_FUNCTION_3();

        v75 = OUTLINED_FUNCTION_6();
        [v76 v77];

        if ((v1[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasViewDisappeared] & 1) == 0)
        {
          sub_1E38B4B28();
        }

        v78 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_initializedPageViewModels;
        v79 = OUTLINED_FUNCTION_35_18();
        if (v79)
        {
          OUTLINED_FUNCTION_50_7(v79);
          OUTLINED_FUNCTION_70_8();
          OUTLINED_FUNCTION_17_4();
          sub_1E38B4E78();
          v1[v78] = 1;
          return;
        }

        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v0[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_didSetupView] = 1;
  sub_1E38D25EC();
  OUTLINED_FUNCTION_51_12();
  v2 = sub_1E38D262C();

  v0[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___isAudioMuted] = v2 & 1;
  v3 = OUTLINED_FUNCTION_35_18();
  if (!v3)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_50_7(v3);
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_17_4();
  sub_1E38B5B8C();
  if (sub_1E39DFFC8())
  {
    sub_1E38B310C();
    v4 = OUTLINED_FUNCTION_18_26();
    sub_1E3C479B0(v4);

    v5 = *&v0[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
    v6 = OUTLINED_FUNCTION_18_26();
    sub_1E3C47A74(v6);
  }

  v7 = sub_1E38B310C();
  sub_1E38D25EC();
  OUTLINED_FUNCTION_51_12();
  v8 = sub_1E38D262C();

  sub_1E3C53038(v8 & 1);

  v9 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController;
  v10 = *&v0[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
  OUTLINED_FUNCTION_39_2();
  v11 = sub_1E38B3424();
  [v11 backgroundVolume];

  sub_1E3C53200();
  v12 = *&v1[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___mediaShowcaseConfig];
  v13 = *&v1[v9];
  [v12 foregroundVolume];
  v14 = v13;
  sub_1E3C53218();

  v15 = OUTLINED_FUNCTION_48_17();
  [v14 animationTransitionDuration];
  v16 = v15;
  sub_1E3C53230();

  v17 = OUTLINED_FUNCTION_48_17();
  [v16 volumeTransitionAnimationDuration];
  v18 = v17;
  sub_1E3C53248();

  v19 = OUTLINED_FUNCTION_48_17();
  v20 = [v18 numberOfVolumeIncrements];
  v21 = v19;
  sub_1E3C53260(v20);

  v22 = OUTLINED_FUNCTION_48_17();
  [v21 playbackDelayInterval];
  v23 = v22;
  sub_1E3C52AD4();

  v24 = *&v1[v9];
  v25 = OUTLINED_FUNCTION_18_26();
  sub_1E3C4770C(v25);

  v26 = OUTLINED_FUNCTION_48_17();
  sub_1E3C467F8([v23 carouselBehaviorEnabled]);

  [v1 vui:*&v1[v9] addChildViewController:?];
  v27 = [*&v1[v9] vuiView];
  if (!v27)
  {
    goto LABEL_37;
  }

  v28 = v27;
  v29 = OUTLINED_FUNCTION_35_18();
  if (!v29)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v30 = v29;
  [v29 bounds];
  OUTLINED_FUNCTION_3();

  v31 = OUTLINED_FUNCTION_6();
  [v32 v33];

  v34 = OUTLINED_FUNCTION_35_18();
  if (!v34)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v35 = v34;
  v36 = [*&v1[v9] vuiView];
  if (!v36)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v37 = v36;
  [v35 addSubview_];

  [*&v1[v9] vui:v1 didMoveToParentViewController:?];
  sub_1E38B310C();
  OUTLINED_FUNCTION_18_26();
  sub_1E3C51644();

  v38 = OUTLINED_FUNCTION_35_18();
  if (!v38)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_50_7(v38);
  v40 = v39;

  sub_1E38B5EE0(v40);
  v41 = sub_1E38B3250();
  [v41 setMaximumContentSizeCategory_];

  v42 = OUTLINED_FUNCTION_35_18();
  if (!v42)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v43 = v42;
  v44 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___toolBar;
  [v42 addSubview_];

  v45 = sub_1E38B2E2C();
  sub_1E32AE9B0(v45);
  OUTLINED_FUNCTION_11_5();

  v46 = sub_1E38B310C();
  v47 = sub_1E3C465D8();

  sub_1E38B6168(v47);
  v48 = *&v1[v44];
  OUTLINED_FUNCTION_4_0();
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = &v48[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_onMutePressed];
  OUTLINED_FUNCTION_3_0();
  v51 = *v50;
  *v50 = sub_1E38B9660;
  v50[1] = v49;

  v52 = v48;
  sub_1E34AF594(v51);

  v53 = *&v1[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_viewModel];

  if (!v53 || (OUTLINED_FUNCTION_8(), !(*(v54 + 552))()))
  {
    v84 = 0u;
    v85 = 0u;
    goto LABEL_21;
  }

  v82 = &unk_1F5D7BE68;
  v83 = &off_1F5D7BC48;
  LOBYTE(v81) = 13;
  sub_1E3F9F164(&v81);

  __swift_destroy_boxed_opaque_existential_1(&v81);
  if (!*(&v85 + 1))
  {
LABEL_21:
    v63 = &v84;
LABEL_22:
    sub_1E325F748(v63, &unk_1ECF296E0);
    goto LABEL_23;
  }

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v56 = v81;
  sub_1E384EE08(62);
  sub_1E3277E60(v57, v58, v56, &v81);

  if (!v82)
  {
    v63 = &v81;
    goto LABEL_22;
  }

  if (swift_dynamicCast())
  {
    v59 = v84;
    sub_1E384EE08(62);
    v82 = v55;
    *&v81 = v59;
    v62 = sub_1E3A7CD30(v60, v61, &v81, v53);

    __swift_destroy_boxed_opaque_existential_1(&v81);
    goto LABEL_24;
  }

LABEL_23:
  v62 = 0;
LABEL_24:

  *&v1[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_accountSettingViewModel] = v62;

  v64 = *&v1[v44];
  sub_1E3FC03AC(v62);

  v65 = OUTLINED_FUNCTION_35_18();
  if (v65)
  {
    OUTLINED_FUNCTION_50_7(v65);

    sub_1E38B6754();
    v66 = *&v1[v44];
    v67 = objc_opt_self();
    v68 = v66;
    v69 = [v67 sharedInstance];
    v70 = [v69 autoPlayConfig];

    LOBYTE(v69) = [v70 autoPlayVideoSound];
    sub_1E3FBDD44(v69 ^ 1);

    goto LABEL_26;
  }

LABEL_43:
  __break(1u);
}

void sub_1E38B4B28()
{
  v1 = v0;
  v2 = sub_1E38B3250();
  sub_1E3FC6D18();
  sub_1E3FC0A14();

  v3 = OUTLINED_FUNCTION_67_4();
  if (!v3)
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v41.origin.x = v6;
  v41.origin.y = v8;
  v41.size.width = v10;
  v41.size.height = v12;
  CGRectGetWidth(v41);
  sub_1E3FC6D24();
  v13 = OUTLINED_FUNCTION_67_4();
  if (!v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v14 = v13;
  type metadata accessor for MediaShowcaseCollectionLayout();
  [v14 bounds];
  v16 = v15;
  v18 = v17;

  v19 = sub_1E38B34C8();
  v20 = sub_1E3FC706C(v16, v18, v19);
  if (v1[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isTabbarChild] == 1 && ((v21 = v20, v22 = objc_opt_self(), ([v22 isPhone] & 1) != 0) || objc_msgSend(v22, sel_isPad) && (sub_1E3A24FDC(v21) & 1) != 0))
  {
    if ([v22 isPhone])
    {
      sub_1E3FC6D30();
    }

    else
    {
      sub_1E3FC6D3C();
    }

    v36 = sub_1E38B3250();
    sub_1E3FC02FC();
  }

  else
  {
    v23 = OUTLINED_FUNCTION_67_4();
    if (!v23)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v24 = v23;
    v25 = [v23 window];

    if (v25)
    {
      v26 = [v25 windowScene];

      if (v26)
      {
        v27 = [v26 statusBarManager];

        if (v27)
        {
          [v27 statusBarFrame];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;

          v42.origin.x = v29;
          v42.origin.y = v31;
          v42.size.width = v33;
          v42.size.height = v35;
          CGRectGetHeight(v42);
        }
      }
    }

    sub_1E3FC6CDC();
  }

  v39 = *&v1[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___toolBar];
  v37 = OUTLINED_FUNCTION_67_4();
  if (!v37)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v38 = v37;
  [v37 bounds];

  [v1 vuiIsRTL];
  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  [v39 setFrame_];
}

void sub_1E38B4E78()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  if ((v8 != 0.0 || v6 != 0.0) && *&v2[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_lastViewWidth] != v8)
  {
    v39 = v4;
    v38 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_lastViewWidth;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v13(v1);
    v14 = v2;
    v15 = sub_1E41FFC94();
    v16 = sub_1E4206814();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v40 = OUTLINED_FUNCTION_72_0();
      *v17 = 136315650;
      v18 = sub_1E38B2FF0();
      v20 = sub_1E3270FC8(v18, v19, &v40);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      OUTLINED_FUNCTION_17_4();
      v21 = sub_1E4206E54();
      v23 = sub_1E3270FC8(v21, v22, &v40);

      *(v17 + 14) = v23;
      *(v17 + 22) = 1024;
      *(v17 + 24) = v4 & 1;
      _os_log_impl(&dword_1E323F000, v15, v16, "%s sizeDidChange: %s, shouldInitPageViewModels: %{BOOL}d", v17, 0x1Cu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_7_7();
    }

    (*(v11 + 8))(v1, v9);
    OUTLINED_FUNCTION_17_4();
    sub_1E38B5B8C();
    OUTLINED_FUNCTION_17_4();
    sub_1E38B79E8();
    v24 = sub_1E38B310C();
    v25 = sub_1E38B3424();
    v26 = [v25 carouselBehaviorEnabled];

    sub_1E3C467F8(v26);
    type metadata accessor for MediaShowcaseCollectionLayout();
    sub_1E38B34C8();
    v27 = OUTLINED_FUNCTION_17_4();
    v30 = sub_1E3FC706C(v27, v28, v29);
    v31 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_lastSizeClass;
    v32 = v14[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_lastSizeClass];
    v42 = v30;
    if (v32 == 7 || (v41 = v32, sub_1E37F99D4(), (sub_1E4205E84() & 1) == 0))
    {
      sub_1E38B5EE0(v8);
      v34 = *&v14[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
      if (v39)
      {
        v35 = sub_1E38B2E2C();
      }

      else
      {
        v35 = 0;
      }

      sub_1E3C50DD4(v30, v35);

      v14[v31] = v30;
    }

    else
    {
      v33 = *&v14[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
      sub_1E3C50E7C();
    }

    sub_1E38B6754();
    if (TVAppFeature.isEnabled.getter(20))
    {
      v36 = *&v14[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
      v37 = sub_1E3C58330();

      sub_1E38B6168(v37);
    }

    *&v2[v38] = v8;
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1E38B523C(char a1)
{
  v2 = v1;
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_vui_viewWillDisappear_, a1 & 1);
  v2[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasViewDisappeared] = 1;
  if ((v2[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused] & 1) == 0)
  {
    v4 = sub_1E38B310C();
    v5 = sub_1E3C52774();

    if ((v5 & 1) == 0)
    {
      v6 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController;
      v7 = *&v2[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
      sub_1E3C53C48();

      v8 = *&v2[v6];
      OUTLINED_FUNCTION_70_3();
      sub_1E3C51644();

      v9 = *&v2[v6];
      v10 = OUTLINED_FUNCTION_70_3();
      sub_1E3C475BC(v10);
    }
  }

  sub_1E38B310C();
  v11 = OUTLINED_FUNCTION_70_3();
  sub_1E3C52DB4(v11);
}

void sub_1E38B536C(char a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_vui_viewDidAppear_, a1 & 1);
  *(v2 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasViewDisappeared) = 0;
  v4 = 0;
  if ([objc_opt_self() isPad])
  {
    v5 = [objc_opt_self() sharedInstance];
    v6 = [v5 splitViewController];

    if (v6)
    {
      v4 = [v6 isSidebarEditing];

      if (v4)
      {
        v4 = [v2 isViewInTopMostVisibleViewController];
      }
    }

    else
    {
      v4 = 0;
    }

    *(v2 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isStoppedForSideBarEditing) = v4;
  }

  if ((*(v2 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused) & 1) == 0)
  {
    v7 = sub_1E38B310C();
    v8 = sub_1E3C52774();

    if (((v8 | v4) & 1) == 0)
    {
      v9 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController;
      v10 = *(v2 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController);
      OUTLINED_FUNCTION_18_26();
      sub_1E3C51644();

      v11 = *&v9[v2];
      OUTLINED_FUNCTION_39_2();
      v12 = sub_1E38B3424();
      v13 = [v12 isAutoAdvanceToNextPageEnabled];

      sub_1E3C475BC(v13);
    }
  }

  sub_1E38B310C();
  v14 = OUTLINED_FUNCTION_18_26();
  sub_1E3C52DB4(v14);

  sub_1E38B4B28();
}

uint64_t sub_1E38B555C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE28);
  sub_1E4148C68(sub_1E38B55D8, v0, &v4);
  v1 = v4;

  sub_1E38B2D44(v2);
  return v1;
}

id sub_1E38B55D8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for MediaShowcaseHostingViewController()) init];
  *a1 = result;
  return result;
}

void sub_1E38B5610()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v10 = sub_1E324FBDC();
  (*(v8 + 16))(v1, v10, v6);
  v11 = v3;
  v12 = v0;
  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();

  v35 = v12;
  if (os_log_type_enabled(v13, v14))
  {
    v34 = v3;
    v15 = swift_slowAlloc();
    v33 = v6;
    v16 = swift_slowAlloc();
    v36 = OUTLINED_FUNCTION_100();
    *v15 = 136315650;
    v17 = sub_1E38B2FF0();
    OUTLINED_FUNCTION_49_1(v17, v18);
    OUTLINED_FUNCTION_11_5();

    *(v15 + 4) = v12;
    *(v15 + 12) = 1024;
    *(v15 + 14) = v5 & 1;
    *(v15 + 18) = 2112;
    *(v15 + 20) = v11;
    *v16 = v34;
    v19 = v11;
    _os_log_impl(&dword_1E323F000, v13, v14, "%s showNavigationBarButtons: show = %{BOOL}d, item: %@", v15, 0x1Cu);
    sub_1E325F748(v16, &unk_1ECF28E30);
    OUTLINED_FUNCTION_6_0();
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_6_0();
    v3 = v34;
    OUTLINED_FUNCTION_6_0();

    (*(v8 + 8))(v1, v33);
  }

  else
  {

    (*(v8 + 8))(v1, v6);
  }

  if (sub_1E39DFFC8())
  {
    v20 = v12;
    if (*(v12 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_showingButtonsInNavigationItem))
    {
      v21 = sub_1E38B3250();
      v22 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_navigationItem;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v23 = *&v21[v22];
      v24 = v23;

      if (v3)
      {
        if (v23)
        {

          if (v23 == v3)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        if (!v23)
        {
          goto LABEL_23;
        }
      }
    }

    *(v12 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_showingButtonsInNavigationItem) = 1;
    v31 = sub_1E38B3250();
    [v31 setHidden_];

    goto LABEL_21;
  }

  v20 = v12;
  if (![objc_opt_self() isPad])
  {
    goto LABEL_23;
  }

  if (*(v12 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_showingButtonsInNavigationItem) != (v5 & 1))
  {
LABEL_12:
    v35[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_showingButtonsInNavigationItem] = v5 & 1;
    v25 = sub_1E38B3250();
    [v25 setHidden_];

    if ((v5 & 1) == 0)
    {
      v26 = 0;
LABEL_22:
      v32 = *&v20[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___toolBar];
      sub_1E3FBFC94(v3, v26 & 1, 0);

      goto LABEL_23;
    }

LABEL_21:
    v26 = v20[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_navigationButtonsHiddenFromOffset] ^ 1;
    goto LABEL_22;
  }

  v27 = sub_1E38B3250();
  v28 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_navigationItem;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v29 = *&v27[v28];
  v30 = v29;

  if (!v3)
  {
    if (!v29)
    {
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  if (!v29)
  {
    goto LABEL_12;
  }

  if (v29 != v3)
  {
    goto LABEL_12;
  }

LABEL_23:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38B5B8C()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v6 = v5;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v8(v1);
  v9 = v0;
  v10 = sub_1E41FFC94();
  v11 = sub_1E42067D4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_72_0();
    *v12 = 136446466;
    v13 = sub_1E38B2FF0();
    OUTLINED_FUNCTION_49_1(v13, v14);
    OUTLINED_FUNCTION_34_3();
    v15 = OUTLINED_FUNCTION_45_15();
    OUTLINED_FUNCTION_49_1(v15, v16);
    OUTLINED_FUNCTION_34_3();
    *(v12 + 14) = v2;
    OUTLINED_FUNCTION_66_12(&dword_1E323F000, v17, v18, "%{public}s updateViewLayoutSizeClass, size = %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_21_0();
  }

  v19 = OUTLINED_FUNCTION_74();
  v20(v19);
  type metadata accessor for MediaShowcaseCollectionLayout();
  OUTLINED_FUNCTION_39_2();
  v21 = sub_1E38B34C8();
  sub_1E3FC706C(v6, v4, v21);
  v22 = [v9 traitCollection];
  sub_1E3C2AE10();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = *&v9[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_viewModel];
  if (v29)
  {
    v30 = *(*v29 + 392);

    v32 = v30(v31);

    if (v32)
    {
      OUTLINED_FUNCTION_8();
      (*(v33 + 1640))(v24, v26, v28);
    }
  }

  v34 = sub_1E38B2E2C();
  v35 = sub_1E32AE9B0(v34);
  if (!v35)
  {
    goto LABEL_15;
  }

  v36 = v35;
  if (v35 >= 1)
  {
    for (i = 0; i != v36; ++i)
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x1E6911E60](i, v34);
      }

      else
      {
        v38 = *(v34 + 8 * i + 32);
      }

      v39 = (*(*v38 + 392))();
      if (v39)
      {
        (*(*v39 + 1640))(v24, v26, v28);
      }
    }

LABEL_15:

    OUTLINED_FUNCTION_54_0();
    return;
  }

  __break(1u);
}

void sub_1E38B5EE0(double a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35A30);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_41();
  type metadata accessor for MediaShowcaseCollectionLayout();
  v5 = sub_1E38B34C8();
  v6 = sub_1E3FC7038(a1, v5);
  v7 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_metadataViewTopOffsetObserver;
  v8 = *&v1[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_metadataViewTopOffsetObserver];
  if (v6)
  {
    if (v8)
    {

      sub_1E42004E4();
    }

    *&v2[v7] = 0;

    sub_1E3FC6C48();
    if (([v2 vuiIsRTL] & 1) == 0)
    {
      sub_1E3FC6C3C();
    }

    sub_1E3FC6C8C();
    if ([v2 vuiIsRTL])
    {
      sub_1E3FC6C3C();
    }

    v15 = sub_1E38B310C();
    sub_1E3C534D0();
  }

  else
  {
    if (v8)
    {

      sub_1E42004E4();
    }

    v9 = sub_1E38B310C();
    sub_1E3C47C20();

    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_11_9();
    sub_1E32752B0(v10, v11);
    v12 = sub_1E4200844();

    v13 = OUTLINED_FUNCTION_74();
    v14(v13);
    *&v2[v7] = v12;
  }
}

void sub_1E38B6168(uint64_t a1)
{
  v2 = sub_1E38B2E2C();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7[1] = v2;
    v5 = a1;
    v6 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
    sub_1E32752B0(&qword_1EE23B540, &unk_1ECF2C790);
    sub_1E38D2054(&v5, v7);
    v3 = v7[0];

    if (v3)
    {
      v4 = sub_1E38B3250();
      sub_1E3FBFE0C(v3);
    }
  }
}

void sub_1E38B6250()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_1E324FBDC();
    (*(v5 + 16))(v0, v9, v3);
    v10 = v8;
    v11 = sub_1E41FFC94();
    v12 = sub_1E42067E4();

    if (os_log_type_enabled(v11, v12))
    {
      v31 = v3;
      v13 = OUTLINED_FUNCTION_42_9();
      v30 = OUTLINED_FUNCTION_100();
      v32 = v30;
      *v13 = 136315394;
      v14 = sub_1E38B2FF0();
      sub_1E3270FC8(v14, v15, &v32);
      OUTLINED_FUNCTION_11_5();

      *(v13 + 4) = v10;
      *(v13 + 12) = 1024;
      *(v13 + 14) = v2 & 1;
      _os_log_impl(&dword_1E323F000, v11, v12, "%s Toggle mute button, isMuted = %{BOOL}d", v13, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v5 + 8))(v0, v31);
    }

    else
    {

      (*(v5 + 8))(v0, v3);
    }

    sub_1E38B65BC();
    sub_1E38D25EC();
    OUTLINED_FUNCTION_51_12();
    sub_1E38D27DC(v2 & 1);

    v16 = [objc_opt_self() sharedInstance];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BD0;
    v32 = sub_1E4205F14();
    v33 = v18;
    v19 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_41_20();
    v20 = sub_1E4205F14();
    *(inited + 96) = v19;
    *(inited + 72) = v20;
    *(inited + 80) = v21;
    v32 = sub_1E4205F14();
    v33 = v22;
    OUTLINED_FUNCTION_41_20();
    v23 = sub_1E4205F14();
    *(inited + 168) = v19;
    *(inited + 144) = v23;
    *(inited + 152) = v24;
    v32 = sub_1E4205F14();
    v33 = v25;
    OUTLINED_FUNCTION_41_20();
    v26 = sub_1E4205F14();
    *(inited + 240) = v19;
    *(inited + 216) = v26;
    *(inited + 224) = v27;
    v28 = v10;
    OUTLINED_FUNCTION_74();
    sub_1E4205CB4();
    v29 = sub_1E4205C44();

    [v16 recordClick_];
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38B65BC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_2_26();
  v11(v10);
  v12 = v0;
  v13 = sub_1E41FFC94();
  sub_1E42067E4();

  if (OUTLINED_FUNCTION_75_3())
  {
    OUTLINED_FUNCTION_42_9();
    OUTLINED_FUNCTION_26_8();
    *v1 = 136315394;
    v14 = sub_1E38B2FF0();
    OUTLINED_FUNCTION_58_0(v14, v15);
    OUTLINED_FUNCTION_40_18();
    *(v1 + 4) = v3;
    OUTLINED_FUNCTION_56_11();
    *(v1 + 14) = v3 & 1;
    OUTLINED_FUNCTION_14_6(&dword_1E323F000, v16, v17, "%s updateAudio isMuted=%{BOOL}d");
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_7_7();
  }

  (*(v6 + 8))(v10, v4);
  v18 = sub_1E38B310C();
  sub_1E3C53038(v3 & 1);

  sub_1E38B7DA4();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38B6754()
{
  if ([objc_opt_self() isPad])
  {
    v1 = [v0 vuiTraitCollection];
    v2 = [v1 horizontalSizeClass];

    v3 = [objc_opt_self() sharedInstance];
    v4 = [v3 accountConfig];

    LODWORD(v3) = [v4 showAccountSettingOnSidebar];
    if (v3)
    {
      v5 = sub_1E38B3250();
      if (v2 == 1)
      {
        v6 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isTabbarChild);
      }

      else
      {
        v6 = 0;
      }

      v7 = v5;
      sub_1E3FC0934(v6);
    }
  }
}

void sub_1E38B6880()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v60 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v60 - v12;
  sub_1E41FDF14();
  if (!v67)
  {
    sub_1E325F748(v66, &unk_1ECF296E0);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v27(v7);
    v28 = sub_1E41FFC94();
    v29 = sub_1E42067E4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_125_0();
      *v30 = 0;
      _os_log_impl(&dword_1E323F000, v28, v29, "MediaShowcase:: VUIUpNextRequestDidFinish does't contain canonicalID, ignore the event", v30, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v4 + 8))(v7, v2);
    goto LABEL_11;
  }

  v14 = *(&v68 + 1);
  v15 = v68;
  v16 = sub_1E41FDF24();
  if (v16)
  {
    v64 = sub_1E4205F14();
    v65 = v17;

    sub_1E4207414();
    sub_1E375D7E8(v66, v16, &v68);

    sub_1E375D84C(v66);
    if (*(&v69 + 1))
    {

      sub_1E325F748(&v68, &unk_1ECF296E0);
      sub_1E324FBDC();
      OUTLINED_FUNCTION_4_32();
      v18(v13);

      v19 = sub_1E41FFC94();
      v20 = sub_1E42067E4();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = OUTLINED_FUNCTION_100();
        v66[0] = v22;
        *v21 = 136315138;
        v23 = OUTLINED_FUNCTION_13_8();
        v26 = sub_1E3270FC8(v23, v24, v25);

        *(v21 + 4) = v26;
        _os_log_impl(&dword_1E323F000, v19, v20, "MediaShowcase:: UpNext request for %s has occurred error, ignore the event", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        OUTLINED_FUNCTION_7_7();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v4 + 8))(v13, v2);
LABEL_11:
      OUTLINED_FUNCTION_25_2();
      return;
    }
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  sub_1E325F748(&v68, &unk_1ECF296E0);
  if (!v16)
  {
    v68 = 0u;
    v69 = 0u;
    goto LABEL_45;
  }

  v64 = sub_1E4205F14();
  v65 = v31;
  sub_1E4207414();
  sub_1E375D7E8(v66, v16, &v68);

  sub_1E375D84C(v66);
  if (!*(&v69 + 1))
  {
LABEL_45:
    sub_1E325F748(&v68, &unk_1ECF296E0);
    goto LABEL_46;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_46:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v51(v10);

    v52 = sub_1E41FFC94();
    v53 = sub_1E42067E4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = OUTLINED_FUNCTION_100();
      v66[0] = v55;
      *v54 = 136315138;
      v56 = OUTLINED_FUNCTION_13_8();
      v59 = sub_1E3270FC8(v56, v57, v58);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_1E323F000, v52, v53, "MediaShowcase:: UpNext request for %s doesn't contain action key, ignore the event", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_21_0();
    }

    else
    {
    }

    (*(v4 + 8))(v10, v2);
    goto LABEL_11;
  }

  v62 = v1;
  v63 = v15;
  v32 = v66[0];
  v33 = sub_1E38B2E2C();
  v34 = sub_1E32AE9B0(v33);
  v35 = 0;
  v36 = &VUIUpNextRemovedState;
  if (!v32)
  {
    v36 = VUIUpNextAddedState;
  }

  v60[1] = *v36;
  v61 = v14;
  while (1)
  {
    if (v34 == v35)
    {

      goto LABEL_11;
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x1E6911E60](v35, v33);
      v37 = v38;
    }

    else
    {
      if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      v37 = *(v33 + 8 * v35 + 32);
    }

    if (__OFADD__(v35, 1))
    {
      break;
    }

    v39 = (*(*v37 + 488))(v38);
    if (!v39)
    {
      goto LABEL_42;
    }

    v40 = v39;
    if (*(v39 + 16) && (v41 = sub_1E3740AE8(65), (v42 & 1) != 0))
    {
      v43 = *(*(v40 + 56) + 8 * v41);

      LOBYTE(v68) = 4;
      (*(*v43 + 776))(v66, &v68, &unk_1F5D5D0A8, &off_1F5D5C758);
      if (!v67)
      {
        sub_1E325F748(v66, &unk_1ECF296E0);
LABEL_34:

        goto LABEL_42;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_34;
      }

      if (v63 == v68 && v14 == *(&v68 + 1))
      {
      }

      else
      {
        v45 = sub_1E42079A4();

        if ((v45 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v46 = sub_1E4205F14();
      LOBYTE(v68) = 5;
      v67 = MEMORY[0x1E69E6158];
      v66[0] = v46;
      v66[1] = v47;
      (*(*v43 + 784))(&v68, v66, &unk_1F5D5D0A8, &off_1F5D5C758);
      sub_1E325F748(v66, &unk_1ECF296E0);
      v48 = sub_1E38B310C();
      v49 = sub_1E3C465D8();

      if (v35 == v49)
      {
        v50 = sub_1E38B3250();
        sub_1E3FBFE0C(v37);
      }

      v14 = v61;
    }

    else
    {
    }

LABEL_42:

    ++v35;
  }

  __break(1u);
LABEL_54:
  __break(1u);
}

void sub_1E38B7080()
{
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_4_36();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_41_13(v4))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_24_2(&dword_1E323F000, v5, v6, "MediaShowcase:: ApplicationDidEnterBackgroundNotification");
    OUTLINED_FUNCTION_21_0();
  }

  v7 = OUTLINED_FUNCTION_22_4();
  v8(v7);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([Strong isViewInTopMostVisibleViewController])
    {
      v11 = sub_1E38B310C();
      v12 = sub_1E3C515D0();

      if (v12)
      {
        v13 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController;
        v14 = *&v10[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
        v15 = OUTLINED_FUNCTION_70_3();
        sub_1E3C475BC(v15);

        v16 = *&v10[v13];
        OUTLINED_FUNCTION_70_3();
        sub_1E3C51644();
      }
    }
  }
}

void sub_1E38B7200()
{
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_4_36();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_41_13(v4))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_24_2(&dword_1E323F000, v5, v6, "MediaShowcase:: ApplicationDidBecomeActiveNotification");
    OUTLINED_FUNCTION_21_0();
  }

  v7 = OUTLINED_FUNCTION_22_4();
  v8(v7);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused) & 1) == 0)
    {
      v11 = sub_1E38B310C();
      v12 = sub_1E3C52774();

      if ((v12 & 1) == 0 && (*(v10 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasViewDisappeared) & 1) == 0 && [v10 isViewInTopMostVisibleViewController] && (*(v10 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isStoppedForSideBarEditing) & 1) == 0)
      {
        v13 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController;
        v14 = *(v10 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController);
        OUTLINED_FUNCTION_18_26();
        sub_1E3C51644();

        v15 = *&v13[v10];
        OUTLINED_FUNCTION_39_2();
        v16 = sub_1E38B3424();
        v17 = [v16 isAutoAdvanceToNextPageEnabled];

        sub_1E3C475BC(v17);
      }
    }
  }
}

void sub_1E38B73D8()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v8 = *v3;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v11(v0);
    v12 = v10;
    v13 = sub_1E41FFC94();
    sub_1E42067E4();

    if (OUTLINED_FUNCTION_75_3())
    {
      OUTLINED_FUNCTION_42_9();
      v18 = OUTLINED_FUNCTION_26_8();
      *v4 = 136315394;
      v14 = sub_1E38B2FF0();
      sub_1E3270FC8(v14, v15, &v18);
      OUTLINED_FUNCTION_40_18();
      *(v4 + 4) = v1;
      OUTLINED_FUNCTION_56_11();
      *(v4 + 14) = v8;
      OUTLINED_FUNCTION_14_6(&dword_1E323F000, v16, v17, "%s AudioConfig isAudioMuted did change: isMuted=%{BOOL}d");
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_7_7();

      (*(v6 + 8))(v0, v4);
    }

    else
    {

      (*(v6 + 8))(v0, v4);
    }

    sub_1E38B757C();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38B757C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2 & 1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  if ((sub_1E38B3338() & 1) == v3)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v9(v7);
    v10 = v0;
    v11 = sub_1E41FFC94();
    v12 = sub_1E42067E4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_42_9();
      v19 = OUTLINED_FUNCTION_100();
      *v13 = 136315394;
      v14 = sub_1E38B2FF0();
      OUTLINED_FUNCTION_58_0(v14, v15);
      OUTLINED_FUNCTION_34_3();
      *(v13 + 4) = v1;
      *(v13 + 12) = 1024;
      v16 = v10[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___isAudioMuted];

      *(v13 + 14) = v16 & 1;
      _os_log_impl(&dword_1E323F000, v11, v12, "%s Ignore mute configuration change since they are the same: isAudioMuted = %{BOOL}d", v13, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_21_0();
    }

    else
    {
    }

    v17 = OUTLINED_FUNCTION_13_8();
    v18(v17);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    sub_1E38B65BC();
  }
}

void sub_1E38B7754()
{
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_4_36();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_41_13(v4))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_24_2(&dword_1E323F000, v5, v6, "MediaShowcase:: SidebarEditingDidChangeNotification");
    OUTLINED_FUNCTION_21_0();
  }

  v7 = OUTLINED_FUNCTION_22_4();
  v8(v7);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([objc_opt_self() isPad])
    {
      v11 = [objc_opt_self() sharedInstance];
      v12 = [v11 splitViewController];

      if (v12)
      {
        v13 = [v12 isSidebarEditing];

        if (v13)
        {
          if ([v10 isViewInTopMostVisibleViewController])
          {
            sub_1E38B310C();
            OUTLINED_FUNCTION_70_3();
            sub_1E3C51644();

            v14 = *&v10[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
            v15 = OUTLINED_FUNCTION_70_3();
            sub_1E3C475BC(v15);

            OUTLINED_FUNCTION_63_7(OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isStoppedForSideBarEditing);
            v10[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused] = 0;
            sub_1E38B32B0();
          }
        }

        else
        {
          v16 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isStoppedForSideBarEditing;
          if (v10[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isStoppedForSideBarEditing] == 1 && (v10[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasViewDisappeared] & 1) == 0 && [v10 isViewInTopMostVisibleViewController])
          {
            sub_1E38B310C();
            OUTLINED_FUNCTION_18_26();
            sub_1E3C51644();

            v17 = *&v10[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
            OUTLINED_FUNCTION_39_2();
            v18 = sub_1E38B3424();
            v19 = [v18 isAutoAdvanceToNextPageEnabled];

            sub_1E3C475BC(v19);
          }

          v10[v16] = 0;
        }
      }
    }
  }
}

void sub_1E38B79E8()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v5 = v4;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v10(v9);
  v11 = v0;
  v12 = sub_1E41FFC94();
  v13 = sub_1E42067D4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_72_0();
    *v14 = 136446466;
    v15 = sub_1E38B2FF0();
    OUTLINED_FUNCTION_49_1(v15, v16);
    OUTLINED_FUNCTION_34_3();
    v17 = OUTLINED_FUNCTION_45_15();
    OUTLINED_FUNCTION_49_1(v17, v18);
    OUTLINED_FUNCTION_34_3();
    *(v14 + 14) = v1;
    OUTLINED_FUNCTION_66_12(&dword_1E323F000, v19, v20, "%{public}s updateMetadataLayout, size = %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_21_0();
  }

  v21 = OUTLINED_FUNCTION_13_8();
  v22(v21);
  v23 = sub_1E38B2E2C();
  v24 = sub_1E32AE9B0(v23);
  if (!v24)
  {
    goto LABEL_25;
  }

  v25 = v24;
  if (v24 >= 1)
  {
    for (i = 0; i != v25; ++i)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1E6911E60](i, v23);
      }

      else
      {
        v27 = *(v23 + 8 * i + 32);
      }

      v28 = (*(*v27 + 488))();
      if (v28)
      {
        v29 = v28;
        if (*(v28 + 16) && (v30 = sub_1E3740AE8(224), (v31 & 1) != 0))
        {
          v32 = *(*(v29 + 56) + 8 * v30);

          if ((*(*v32 + 392))(v33))
          {
            type metadata accessor for MediaShowcasingMetadataLayout();
            v34 = swift_dynamicCastClass();
            if (v34)
            {
              v35 = v34;
              v36 = (*(*v32 + 488))();
              v37 = v36;
              if (v36)
              {
                if (*(v36 + 16) && (sub_1E3740AE8(234), (v38 & 1) != 0))
                {

                  type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
                  v37 = swift_dynamicCastClass() != 0;
                }

                else
                {

                  v37 = 0;
                }
              }

              (*(*v35 + 2192))(v37, v5, v3);
            }

            else
            {
            }
          }
        }

        else
        {
        }
      }
    }

LABEL_25:

    OUTLINED_FUNCTION_54_0();
    return;
  }

  __break(1u);
}

void sub_1E38B7DA4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v11, v4);
  v12 = v0;
  v13 = sub_1E41FFC94();
  sub_1E42067E4();

  if (OUTLINED_FUNCTION_75_3())
  {
    OUTLINED_FUNCTION_42_9();
    OUTLINED_FUNCTION_26_8();
    *v1 = 136315394;
    v14 = sub_1E38B2FF0();
    OUTLINED_FUNCTION_58_0(v14, v15);
    OUTLINED_FUNCTION_40_18();
    *(v1 + 4) = v3;
    OUTLINED_FUNCTION_56_11();
    *(v1 + 14) = v3 & 1;
    OUTLINED_FUNCTION_14_6(&dword_1E323F000, v16, v17, "%s handleAudioMuteDidChange isMuted=%{BOOL}d");
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_7_7();

    (*(v6 + 8))(v10, v4);
  }

  else
  {

    v18 = OUTLINED_FUNCTION_53();
    v20(v18, v19);
  }

  v12[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___isAudioMuted] = v3 & 1;
  v21 = sub_1E38B310C();
  sub_1E3C531D0((v3 & 1) == 0);

  if (v3)
  {
    v22 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hideMuteButtonTimer;
    v23 = *&v12[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hideMuteButtonTimer];
    if (v23)
    {
      [v23 invalidate];
      v24 = *&v12[v22];
    }

    else
    {
      v24 = 0;
    }

    *&v12[v22] = 0;

    OUTLINED_FUNCTION_63_7(OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_shouldShowMuteButton);
    sub_1E38B32B0();
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E38B7F94()
{
  sub_1E38B8968();
  v2 = v1;
  v3 = sub_1E38B3424();
  [v3 titleViewTransitionDistance];
  v5 = v4;

  [*(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___mediaShowcaseConfig) navigationBarTransitionDistance];
  return v2 + v5 - v6;
}

double sub_1E38B8004()
{
  v0 = sub_1E38B3424();
  [v0 titleViewTransitionDistance];
  v2 = v1;

  return v2;
}

void sub_1E38B8048()
{
  OUTLINED_FUNCTION_52_11();
  if (v1)
  {
    v2 = v0;
    v3 = sub_1E38B310C();
    sub_1E3C47690();

    v4 = *(v2 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController);
    sub_1E3C51644();
  }
}

void sub_1E38B80D8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = sub_1E324FBDC();
  v37 = *(v3 + 16);
  v38 = v10;
  v37(v9);
  v11 = v0;
  v12 = sub_1E41FFC94();
  v13 = sub_1E42067E4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v36 = v3;
    v15 = v14;
    v35 = OUTLINED_FUNCTION_100();
    v39[0] = v35;
    *v15 = 136315138;
    v16 = sub_1E38B2FF0();
    sub_1E3270FC8(v16, v17, v39);
    OUTLINED_FUNCTION_11_5();

    *(v15 + 4) = v6;
    _os_log_impl(&dword_1E323F000, v12, v13, "%s dispatchSelectEvent", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_6_0();
    v3 = v36;
    OUTLINED_FUNCTION_6_0();
  }

  v18 = *(v3 + 8);
  v18(v9, v1);
  v19 = sub_1E38B310C();
  v20 = sub_1E3C46500();

  if (v20)
  {
    v21 = v11 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_collectionImpressioner;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (*(v21 + 24))
    {
      sub_1E327F454(v21, v39);
      __swift_project_boxed_opaque_existential_1(v39, v39[3]);
      v22 = OUTLINED_FUNCTION_50();
      v24 = v23(v22);
      __swift_destroy_boxed_opaque_existential_1(v39);
    }

    else
    {
      v24 = 0;
    }

    v34 = [v11 view];
    (*(*v20 + 800))(2, v24, v34, 0);
  }

  else
  {
    (v37)(v6, v38, v1);
    v25 = v11;
    v26 = sub_1E41FFC94();
    v27 = sub_1E42067F4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_49_0();
      v39[0] = OUTLINED_FUNCTION_100();
      *v28 = 136446466;
      v29 = sub_1E38B2FF0();
      sub_1E3270FC8(v29, v30, v39);
      v38 = v6;
      OUTLINED_FUNCTION_11_5();

      *(v28 + 4) = v6;
      *(v28 + 12) = 2048;
      v31 = sub_1E38B310C();
      v32 = sub_1E3C465D8();

      *(v28 + 14) = v32;
      _os_log_impl(&dword_1E323F000, v26, v27, "%{public}s Trying to open current page but no viewModel, index = %lu", v28, 0x16u);
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_6_0();

      v33 = v38;
    }

    else
    {

      v33 = v6;
    }

    v18(v33, v1);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38B84EC()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_2_26();
  v7(v6);
  v8 = v0;

  v9 = sub_1E41FFC94();
  v10 = sub_1E42067E4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_49_0();
    v42[0] = OUTLINED_FUNCTION_72_0();
    *v11 = 136315394;
    v12 = sub_1E38B2FF0();
    sub_1E3270FC8(v12, v13, v42);
    OUTLINED_FUNCTION_40_18();
    *(v11 + 4) = v2;
    v14 = v2;
    *(v11 + 12) = 2080;
    if (*(v2 + 24))
    {
      v15 = *(v2 + 16);
      v16 = *(v14 + 24);
    }

    else
    {
      v15 = 0;
      v16 = 0xE000000000000000;
    }

    sub_1E3270FC8(v15, v16, v42);
    OUTLINED_FUNCTION_40_18();
    *(v11 + 14) = v15;
    _os_log_impl(&dword_1E323F000, v9, v10, "%s did replace view model id = %s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v19 = OUTLINED_FUNCTION_53();
    v20(v19);
  }

  else
  {

    v17 = OUTLINED_FUNCTION_53();
    v18(v17);
  }

  type metadata accessor for CollectionViewModel();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    goto LABEL_21;
  }

  swift_retain_n();
  sub_1E38B2D44(v21);
  v22 = OUTLINED_FUNCTION_69_5();
  if (v22)
  {
    v23 = v22;
    type metadata accessor for MediaShowcaseHostingView();
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v25 = v24;
      v26 = sub_1E38B34C8();
      v27 = OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_widthThresholdForIpadLayout;
      OUTLINED_FUNCTION_3_0();
      *(v25 + v27) = v26;
    }
  }

  v28 = OUTLINED_FUNCTION_69_5();
  if (!v28)
  {
    __break(1u);
    goto LABEL_23;
  }

  [v28 bounds];
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_17_4();
  sub_1E38B5B8C();
  v29 = OUTLINED_FUNCTION_69_5();
  if (!v29)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v29 bounds];
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_17_4();
  sub_1E38B79E8();
  v30 = OUTLINED_FUNCTION_69_5();
  if (v30)
  {
    v31 = v30;
    [v30 bounds];
    v33 = v32;

    sub_1E38B5EE0(v33);
    v34 = sub_1E38B310C();
    sub_1E3C4666C();

    v35 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController;
    v36 = *&v8[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
    sub_1E38B2E2C();
    sub_1E3C4E814();

    v37 = *&v8[v35];
    v38 = sub_1E3C465D8();

    v39 = sub_1E38B2E2C();
    v40 = sub_1E32AE9B0(v39);

    if (v40 >= 1 && v38 < v40)
    {
      sub_1E38B6168(v38);
    }

    sub_1E38B8048();

LABEL_21:
    OUTLINED_FUNCTION_54_0();
    return;
  }

LABEL_24:
  __break(1u);
}

void sub_1E38B88E0()
{
  v0 = sub_1E38B310C();
  if (sub_1E41FE844() < 0)
  {
    __break(1u);
  }

  else
  {
    j__OUTLINED_FUNCTION_51_1();
    sub_1E3C4FCE0();

    sub_1E38B8048();
  }
}

void sub_1E38B8968()
{
  v2 = v1;
  if (![v1 vuiView])
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_9_5();
  v3 = type metadata accessor for MediaShowcaseCollectionLayout();
  [v0 bounds];
  OUTLINED_FUNCTION_3();

  v12.origin.x = OUTLINED_FUNCTION_6();
  Width = CGRectGetWidth(v12);
  v5 = sub_1E38B34C8();
  sub_1E3FC7038(Width, v5);
  v6 = [v1 vuiView];
  if (!v6)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_50_7(v6);
  OUTLINED_FUNCTION_3();

  v13.origin.x = OUTLINED_FUNCTION_6();
  Height = CGRectGetHeight(v13);
  if (*(v1 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasLayedOutSubviews))
  {
    return;
  }

  v8 = [v1 vuiView];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [v2 vuiView];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 bounds];
  OUTLINED_FUNCTION_3();

  v14.origin.x = OUTLINED_FUNCTION_6();
  [v9 sizeThatFits_];
}

double sub_1E38B8AEC()
{
  v0 = sub_1E38B3424();
  [v0 navigationBarTransitionDistance];
  v2 = v1;

  return v2;
}

id sub_1E38B8B30(double a1, double a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_52_11();
  if (v7)
  {
    v8 = v6;
    result = [v2 vuiView];
    if (result)
    {
      v10 = result;
      [result bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v48.origin.x = v12;
      v48.origin.y = v14;
      v48.size.width = v16;
      v48.size.height = v18;
      Height = CGRectGetHeight(v48);
      if (Height >= v8)
      {
        Height = v8;
      }

      if (Height < 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = Height;
      }

      v21 = sub_1E38B310C();
      sub_1E3C50ED4(v20);

      v22 = sub_1E38B310C();
      v23 = sub_1E3C478B4();

      v24 = sub_1E38B3424();
      [v24 visibleVideoHeightPercentage];
      v26 = v25;

      if (v26 < 0.0 || v26 > 1.0)
      {
        if (v23 >= v20)
        {
LABEL_21:
          if (v3[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused] == 1 && (v3[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isStoppedForSideBarEditing] & 1) == 0)
          {
            v3[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused] = 0;
            sub_1E38B32B0();
            sub_1E38B310C();
            OUTLINED_FUNCTION_18_26();
            sub_1E3C51644();

            v32 = *&v3[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
            sub_1E3C53B10();
LABEL_25:

            goto LABEL_26;
          }

          goto LABEL_26;
        }

LABEL_15:
        if ((v3[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused] & 1) == 0 && (v3[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isStoppedForSideBarEditing] & 1) == 0)
        {
          OUTLINED_FUNCTION_63_7(OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused);
          sub_1E38B32B0();
          v28 = sub_1E38B310C();
          v29 = sub_1E3C512E0();

          v30 = v29 - 2;
          v31 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController;
          v32 = *&v3[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
          if (v30 > 2)
          {
            sub_1E3C47690();

            v36 = *&v3[v31];
            OUTLINED_FUNCTION_70_3();
            sub_1E3C51644();
          }

          else
          {
            sub_1E3C53BEC();
          }

          goto LABEL_25;
        }

LABEL_26:
        v37 = sub_1E39DFFC8();
        v38 = sub_1E39DFFC8();
        if (v37)
        {
          if ((v38 & 1) == 0)
          {
            goto LABEL_33;
          }

          v39 = *sub_1E3FC6E5C() > a1;
        }

        else
        {
          if ((v38 & 1) != 0 || ![objc_opt_self() isPad])
          {
            goto LABEL_33;
          }

          v39 = *sub_1E3FC6D30() <= v20;
        }

        sub_1E38B335C(v39);
        goto LABEL_33;
      }

      result = [v3 view];
      if (result)
      {
        v33 = result;
        [result bounds];
        v35 = v34;

        if (1.0 - v20 / v35 >= v26)
        {
          goto LABEL_21;
        }

        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_33:
  sub_1E38B8968();
  v41 = v40 - a2;
  sub_1E38B8968();
  v43 = (1.0 - a1) * v42;
  if (v43 < 0.0 || v43 > v41)
  {
    if (v41 > v43)
    {
      v45 = 0.0;
    }

    else
    {
      v45 = 1.0;
    }
  }

  else
  {
    v45 = v43 / v41;
  }

  v46 = [objc_opt_self() whiteColor];
  v47 = [v46 vui:*sub_1E3E60700() blendWithColor:v45 percentage:?];

  return v47;
}

id sub_1E38B8E84()
{
  v0 = sub_1E38B3424();
  v1 = [v0 isRubberBandingEnabled];

  return v1;
}

void sub_1E38B8FA8()
{
  v1 = v0;
  v2 = sub_1E38B310C();
  v3 = sub_1E3C46500();

  if (v3)
  {
    type metadata accessor for Accessibility();
    OUTLINED_FUNCTION_50();
    sub_1E40A8408();
    v5 = v4;
    v6 = [v1 vuiView];
    if (v6)
    {
      v7 = v6;
      if (v5)
      {
        OUTLINED_FUNCTION_53();
        v8 = sub_1E4205ED4();
      }

      else
      {
        v8 = 0;
      }

      [v7 setVuiAccessibilityIdentifier_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E38B90B0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isControlButtonsVisible) = 0;
  sub_1E38B32B0();
  sub_1E38B6168(a2);

  sub_1E38B8FA8();
}

void sub_1E38B90F8()
{
  v1 = [v0 vuiView];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;

    sub_1E38B5EE0(v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1E38B9168()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v8 = sub_1E38B310C();
  v9 = sub_1E3C5300C();

  v10 = sub_1E324FBDC();
  (*(v6 + 16))(v1, v10, v4);
  v11 = v3;
  v12 = sub_1E41FFC94();
  sub_1E42067E4();

  if (OUTLINED_FUNCTION_75_3())
  {
    OUTLINED_FUNCTION_42_9();
    OUTLINED_FUNCTION_26_8();
    *v4 = 136315394;
    v13 = sub_1E38B2FF0();
    OUTLINED_FUNCTION_58_0(v13, v14);
    OUTLINED_FUNCTION_40_18();
    *(v4 + 4) = v2;
    OUTLINED_FUNCTION_56_11();
    *(v4 + 14) = v9 & 1;
    OUTLINED_FUNCTION_14_6(&dword_1E323F000, v15, v16, "%s paginatedMediaControllerDidUpdateAudioMuteInBackground isMuted = %{BOOL}d");
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_7_7();
  }

  (*(v6 + 8))(v1, v4);
  v17 = sub_1E38B3250();
  sub_1E3FBDD44(v9 & 1);

  sub_1E38B7DA4();
  sub_1E38D25EC();
  OUTLINED_FUNCTION_51_12();
  sub_1E38D27DC(v9 & 1);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38B9338()
{
  OUTLINED_FUNCTION_11_5();
  swift_getObjectType();

  return nullsub_1(v0, v1);
}

uint64_t sub_1E38B9384()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_53();

  return nullsub_1(v0, v1);
}

float sub_1E38B93F8()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_74();

  return sub_1E3C45E90();
}

uint64_t sub_1E38B9460(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E38B94D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1E38B9564()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1E38B310C();
    v3 = [v2 view];

    if (v3)
    {
      [v3 bounds];
      OUTLINED_FUNCTION_3();

      v5.origin.x = OUTLINED_FUNCTION_6();
      CGRectGetHeight(v5);
      sub_1E3FC6C48();
      v4 = *&v1[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
      sub_1E3C534D0();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E38B9668()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_50();
    sub_1E38B6880();
  }
}

uint64_t sub_1E38B96D8(unint64_t *a1, void (*a2)(uint64_t))
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

id OUTLINED_FUNCTION_48_17()
{
  v3 = *(v0 + v1);

  return v3;
}

id OUTLINED_FUNCTION_69_5()
{

  return [v1 (v0 + 2867)];
}

void OUTLINED_FUNCTION_70_8()
{
}

uint64_t sub_1E38B9774()
{
  v0 = sub_1E4207A04();

  if (v0 >= 0x38)
  {
    return 56;
  }

  else
  {
    return v0;
  }
}

void sub_1E38B97C8(char a1)
{
  switch(a1)
  {
    case 12:
    case 39:
    case 40:
    case 41:
    case 42:
    case 52:
      OUTLINED_FUNCTION_23();
      break;
    case 13:
    case 14:
      return;
    default:
      OUTLINED_FUNCTION_2_60();
      break;
  }
}

uint64_t sub_1E38B9CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E38B9D9C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_1E4207B44();
  a2(a1);
  OUTLINED_FUNCTION_18_0();

  return sub_1E4207BA4();
}

uint64_t sub_1E38B9E14(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_1E4206014();
}

uint64_t sub_1E38B9E9C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1E4207B44();
  a3(a2);
  OUTLINED_FUNCTION_18_0();

  return sub_1E4207BA4();
}

uint64_t sub_1E38B9EF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E38B9774();
  *a1 = result;
  return result;
}

void sub_1E38B9F20(void *a1@<X8>)
{
  sub_1E38B97C8(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1E38B9F4C()
{
  v0 = sub_1E4207A04();

  if (v0 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v0;
  }
}

void sub_1E38B9FA0(char a1)
{
  switch(a1)
  {
    case 3:
    case 4:
    case 13:
      OUTLINED_FUNCTION_23();
      break;
    default:
      return;
  }
}

uint64_t sub_1E38BA330@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E38B9F4C();
  *a1 = result;
  return result;
}

void sub_1E38BA360(void *a1@<X8>)
{
  sub_1E38B9FA0(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1E38BA390(char a1, void *a2)
{
  sub_1E38B97C8(a1);

  return sub_1E3741090(v3, v4, a2);
}

uint64_t sub_1E38BA3C8(char a1, uint64_t a2, void *a3)
{
  sub_1E38B97C8(a1);
  v7 = sub_1E3741090(v5, v6, a3);
  v9 = v8;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 64);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  while (1)
  {
    v16 = v9;
    if (!v12)
    {
      break;
    }

    v17 = v12;
LABEL_10:
    v9 = 0;
    v12 = (v17 - 1) & v17;
    if (v16)
    {
      sub_1E38B9FA0(*(*(a2 + 48) + (__clz(__rbit64(v17)) | (v15 << 6))));
      sub_1E32822E0();

      v7 = sub_1E42071F4();
      v9 = v19;

      swift_bridgeObjectRelease_n();
    }
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v13)
    {

      return v7;
    }

    v17 = *(a2 + 64 + 8 * v18);
    ++v15;
    if (v17)
    {
      v15 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E38BA560(char a1, uint64_t a2, void *a3)
{
  sub_1E38B97C8(a1);
  v6 = v5;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E4298880;
  *(v9 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];

  return sub_1E38BA968(v6, v8, v9, a3);
}

uint64_t sub_1E38BA610(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  sub_1E38BAA20(a1, &v15 - v8);
  v10 = sub_1E4205BF4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
LABEL_2:
    v11 = 3;
    goto LABEL_9;
  }

  sub_1E38BAA20(v9, v6);
  v12 = *(v10 - 8);
  v13 = (*(v12 + 88))(v6, v10);
  if (v13 != *MEMORY[0x1E69D3D88])
  {
    if (v13 == *MEMORY[0x1E69D3D70])
    {
      v11 = 4;
      goto LABEL_9;
    }

    if (v13 != *MEMORY[0x1E69D3D78])
    {
      (*(v12 + 8))(v6, v10);
    }

    goto LABEL_2;
  }

  if (a2)
  {
    v11 = 6;
  }

  else
  {
    v11 = 5;
  }

LABEL_9:
  sub_1E38BAA90(v9);
  return v11;
}

uint64_t sub_1E38BA7D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE30);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  sub_1E38BAA20(a1, &v13 - v6);
  v8 = sub_1E4205BF4();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    sub_1E38BAA20(v7, v5);
    v10 = *(v8 - 8);
    v11 = (*(v10 + 88))(v5, v8);
    if (v11 == *MEMORY[0x1E69D3D70])
    {
      v9 = 9;
      goto LABEL_7;
    }

    if (v11 == *MEMORY[0x1E69D3D78])
    {
      v9 = 10;
      goto LABEL_7;
    }

    (*(v10 + 8))(v5, v8);
  }

  v9 = 56;
LABEL_7:
  sub_1E38BAA90(v7);
  return v9;
}

uint64_t sub_1E38BA968(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_1E4205ED4();

  sub_1E376948C();
  v6 = sub_1E42062A4();

  v7 = [a4 localizedStringForKey:v5 withCounts:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_1E4205F14();

  return v8;
}