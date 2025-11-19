void sub_10001687C(void *a1, void *a2, uint64_t a3)
{
  v30[1] = a3;
  v6 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v30 - v8;
  swift_unknownObjectWeakAssign();
  sub_100016D4C(a1);
  v10 = [a1 currentLook];
  swift_getObjectType();
  sub_10001B214(a2, v10, v3);
  if (qword_10003B910 != -1)
  {
    swift_once();
  }

  v11 = sub_100024B98();
  sub_10000C2CC(v11, qword_10003D268);
  v12 = v3;
  v13 = sub_100024B78();
  v14 = sub_100024DE8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31 = v16;
    *v15 = 136315138;
    v17 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_posterData;
    swift_beginAccess();
    sub_10001D704(&v12[v17], v9, &qword_10003C380, qword_100028B40);
    v18 = sub_100024CC8();
    v20 = sub_100010554(v18, v19, &v31);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "didUpdate with posterData: %s", v15, 0xCu);
    sub_10000C36C(v16);
  }

  v21 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_contentViewForLook;
  swift_beginAccess();
  v22 = *&v12[v21];

  v23 = sub_100014B08(v10, v22);

  if (v23)
  {
    v24 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_lastOrientation;
    v25 = *&v12[OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_lastOrientation];
    v26 = [objc_msgSend(a1 "environment")];
    swift_unknownObjectRelease();
    if (v25 == v26 || (v27 = [objc_msgSend(a1 "environment")], swift_unknownObjectRelease(), *&v12[v24] = v27, UIAccessibilityIsReduceMotionEnabled()))
    {
      v28 = v10;
      v10 = v23;
    }

    else
    {
      v29 = *&v23[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_rotationAnimator];
      sub_100024AE8();
      v28 = v23;
    }
  }
}

uint64_t sub_100016D4C(uint64_t a1)
{
  v2 = v1;
  v27[1] = a1;
  v3 = sub_10000AB70(&qword_10003C290, &qword_100028DA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v27 - v9;
  v11 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v27 - v16;
  sub_10000AB70(&unk_10003C280, &qword_100028CB0);
  v18 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_posterData;
  swift_beginAccess();
  v27[2] = v2;
  v19 = v2 + v18;
  v20 = v3;
  sub_10001D704(v19, v15, &qword_10003C380, qword_100028B40);
  sub_100024A78();
  sub_10000E2AC(v15, &qword_10003C380, qword_100028B40);
  (*(v4 + 16))(v8, v10, v3);
  v21 = (*(v4 + 88))(v8, v3);
  if (v21 == enum case for PosterDataComparisonResult.update<A>(_:) || v21 == enum case for PosterDataComparisonResult.fallback<A>(_:))
  {
    (*(v4 + 96))(v8, v3);
    sub_10000AA4C(v8, v17);
    v22 = type metadata accessor for KaleidoscopePosterData();
    (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
  }

  else
  {
    v24 = enum case for PosterDataComparisonResult.equal<A>(_:);
    v25 = v21;
    v26 = type metadata accessor for KaleidoscopePosterData();
    (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
    if (v25 != v24)
    {
      (*(v4 + 8))(v8, v20);
    }
  }

  sub_1000170AC(v17);
  (*(v4 + 8))(v10, v20);
  return sub_10000E2AC(v17, &qword_10003C380, qword_100028B40);
}

uint64_t sub_1000170AC(uint64_t a1)
{
  v3 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = type metadata accessor for KaleidoscopePosterData();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D704(a1, v9, &qword_10003C380, qword_100028B40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10000E2AC(v9, &qword_10003C380, qword_100028B40);
  }

  sub_10000AA4C(v9, v14);
  sub_10000AA4C(v14, v7);
  (*(v11 + 56))(v7, 0, 1, v10);
  v16 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_posterData;
  swift_beginAccess();
  sub_10001DD0C(v7, v1 + v16, &qword_10003C380, qword_100028B40);
  return swift_endAccess();
}

unint64_t sub_100017344(void *a1)
{
  v2 = v1;
  v4 = sub_10000AB70(&qword_10003B970, qword_100028490);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v60 - v6;
  v8 = type metadata accessor for KaleidoscopePosterData();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v60 - v13;
  v15 = sub_1000249A8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v19, enum case for WatchFacesWallpaperSupportFeatureFlags.catskill(_:), v15);
  v20 = sub_100024998();
  (*(v16 + 8))(v19, v15);
  if ((v20 & 1) == 0)
  {
    return 0xD000000000000010;
  }

  v60 = v12;
  sub_10000AB70(&unk_10003C280, &qword_100028CB0);
  sub_100024A98();
  v21 = *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_jewelLookNames);

  sub_10000CDE4();
  v22 = sub_100024CE8();
  v23 = v2;
  v25 = v24;

  v63[0] = v22;
  v63[1] = v25;
  __chkstk_darwin(v26);
  *(&v60 - 2) = v63;
  v27 = sub_10001917C(sub_10001DD78, (&v60 - 4), v21);

  *(v23 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_shouldShowAppearanceMenuButton) = v27 & 1;
  *(v23 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_currentlySelectedAppearanceStyle) = *&v14[*(v8 + 20)];
  sub_10001D704(v14, v7, &qword_10003B970, qword_100028490);
  v28 = sub_100024938();
  v29 = *(v28 - 8);
  LODWORD(v25) = (*(v29 + 48))(v7, 1, v28);
  sub_10000E2AC(v7, &qword_10003B970, qword_100028490);
  if (v25 == 1)
  {
    v30 = [objc_msgSend(a1 "environment")];
    swift_unknownObjectRelease();
    v63[0] = 0;
    v31 = [v30 loadUserInfoWithError:v63];
    swift_unknownObjectRelease();
    v32 = v63[0];
    if (!v31)
    {
      v48 = v63[0];
      sub_100024918();

      swift_willThrow();
      if (qword_10003B910 != -1)
      {
        swift_once();
      }

      v49 = sub_100024B98();
      sub_10000C2CC(v49, qword_10003D268);
      v50 = sub_100024B78();
      v51 = sub_100024E08();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "Kaleidoscope editor failed to load user info.", v52, 2u);
      }

      v40 = 0;
      v42 = 0xE000000000000000;
      goto LABEL_17;
    }

    v33 = sub_100024C08();
    v34 = v32;

    v61 = 0x746E6169726176;
    v62 = 0xE700000000000000;
    sub_100024EE8();
    if (*(v33 + 16) && (v35 = sub_10001E6E4(v63), (v36 & 1) != 0))
    {
      sub_10001149C(*(v33 + 56) + 32 * v35, v64);
      sub_10001D76C(v63);

      if (swift_dynamicCast())
      {
        v38 = v60;
        v37 = v61;
        (*(v29 + 56))(v60, 1, 1, v28);
        *(v38 + *(v8 + 20)) = 0;
        *(v38 + *(v8 + 24)) = v37;
        sub_10000C5F4();
        v40 = v39;
        v42 = v41;
        sub_10000AB14(v38);
LABEL_17:
        if (qword_10003B910 != -1)
        {
          swift_once();
        }

        v53 = sub_100024B98();
        sub_10000C2CC(v53, qword_10003D268);
        v54 = sub_100024B78();
        v55 = sub_100024DE8();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v63[0] = v57;
          *v56 = 136315138;

          v58 = sub_100010554(v40, v42, v63);

          *(v56 + 4) = v58;
          _os_log_impl(&_mh_execute_header, v54, v55, "Kaleidoscope loaded %s for a new poster.", v56, 0xCu);
          sub_10000C36C(v57);
        }

        sub_100017B5C(v40, v42);
        v47 = v59;

        sub_10000AB14(v14);

        return v47;
      }
    }

    else
    {

      sub_10001D76C(v63);
    }

    v40 = 0;
    v42 = 0xE000000000000000;
    goto LABEL_17;
  }

  sub_10000C5F4();
  sub_100017B5C(v44, v45);
  v47 = v46;

  sub_10000AB14(v14);
  return v47;
}

void sub_100017B5C(uint64_t a1, unint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_26;
  }

  v6 = Strong;
  v7 = sub_10001CE34();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_15:

    v2 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_17:

      return;
    }

LABEL_16:
    v32[0] = a1;
    v32[1] = a2;
    __chkstk_darwin(v19);
    v29[2] = v32;
    if (sub_10001917C(sub_10001D6E8, v29, v2))
    {
      goto LABEL_17;
    }

    if (qword_10003B910 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  v8 = sub_100025028();
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_4:
  v32[0] = _swiftEmptyArrayStorage;
  sub_10000A3C8(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a2;
    v9 = 0;
    v2 = v32[0];
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = sub_100024F48();
      }

      else
      {
        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 identifier];
      v13 = sub_100024C78();
      v15 = v14;

      v32[0] = v2;
      v17 = v2[2];
      v16 = v2[3];
      if (v17 >= v16 >> 1)
      {
        sub_10000A3C8((v16 > 1), v17 + 1, 1);
        v2 = v32[0];
      }

      ++v9;
      v2[2] = v17 + 1;
      v18 = &v2[2 * v17];
      v18[4] = v13;
      v18[5] = v15;
    }

    while (v8 != v9);

    a1 = v30;
    a2 = v31;
    if (!v2[2])
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_24:
  swift_once();
LABEL_19:
  v20 = sub_100024B98();
  sub_10000C2CC(v20, qword_10003D268);

  v21 = sub_100024B78();
  v22 = sub_100024E08();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v23 = 136315394;
    *(v23 + 4) = sub_100010554(a1, a2, v32);
    *(v23 + 12) = 2080;
    v24 = sub_100024D58();
    v26 = sub_100010554(v24, v25, v32);

    *(v23 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v21, v22, "The initial identifier %s was not found in all looks which consists of %s. Defaulting to first option.", v23, 0x16u);
    swift_arrayDestroy();
  }

  if (v2[2])
  {
    v28 = v2[4];
    v27 = v2[5];

    return;
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_100017F88(void *a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_currentlySelectedAppearanceStyle) = a2;
  v5 = sub_100014C6C();
  v7 = v6;
  v8 = type metadata accessor for KaleidoscopePosterData();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    *(v7 + *(v8 + 20)) = a2;
  }

  (v5)(&v12, 0);
  v9 = [a1 currentLook];
  v10 = [a1 environment];
  swift_getObjectType();
  v11 = swift_unknownObjectRetain();
  sub_10001B214(v11, v9, v2);
  swift_unknownObjectRelease_n();
  [a1 updateActions];
}

void *sub_100018134(void *a1)
{
  v2 = v1;
  v4 = sub_100024AC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000249A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, enum case for WatchFacesWallpaperSupportFeatureFlags.catskill(_:), v9);
  v14 = sub_100024998();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_shouldShowAppearanceMenuButton;
  v16 = enum case for PrivateFeatureFlags.catskillDesignTweaks(_:);
  v17 = *(v5 + 104);
  if ((*(v2 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_shouldShowAppearanceMenuButton) & 1) == 0)
  {
    v17(v8, enum case for PrivateFeatureFlags.catskillDesignTweaks(_:), v4);
    v18 = sub_100024AB8();
    (*(v5 + 8))(v8, v4);
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  v31 = v15;
  v19 = _swiftEmptyArrayStorage;
  v32 = _swiftEmptyArrayStorage;
  v17(v8, v16, v4);
  v20 = sub_100024AB8();
  (*(v5 + 8))(v8, v4);
  if (v20)
  {
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000147A8(0, &qword_10003C268, UIAction_ptr);
    v22 = sub_100024C68();
    v23 = [objc_opt_self() systemImageNamed:v22];

    sub_100024C68();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v21;

    v26 = sub_100024E88();
    sub_100024D28();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v29 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_100024D68();
    }

    sub_100024D78();

    v19 = v32;
  }

  if (*(v2 + v31) == 1)
  {
    v27 = [a1 appearanceMenu];
    sub_100024D28();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v30 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_100024D68();
    }

    sub_100024D78();
    return v32;
  }

  return v19;
}

void sub_1000185A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      sub_100018980(v2);

      v1 = v3;
    }
  }
}

void sub_1000186C8(float a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = Strong;
  v5 = [Strong currentLook];

  v6 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_contentViewForLook;
  swift_beginAccess();
  v7 = *(v1 + v6);

  v8 = sub_100014B08(v5, v7);

  if (!v8)
  {
    return;
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [v9 currentLook];

  v12 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_animationDriverForLook;
  swift_beginAccess();
  v13 = *(v1 + v12);

  v14 = sub_100014BBC(v11, v13);

  if (v14)
  {
    *(v14 + 80) = a1;
    sub_100011BE4(v14);
  }

  else
  {
  }
}

void sub_100018824(float a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = Strong;
  v5 = [Strong currentLook];

  v6 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_contentViewForLook;
  swift_beginAccess();
  v7 = *(v1 + v6);

  v8 = sub_100014B08(v5, v7);

  if (!v8)
  {
    return;
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [v9 currentLook];

  v12 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_animationDriverForLook;
  swift_beginAccess();
  v13 = *(v1 + v12);

  v14 = sub_100014BBC(v11, v13);

  if (v14)
  {
    sub_100011D08(a1);
    sub_100011BE4(v14);
  }

  else
  {
  }
}

uint64_t sub_100018980(void *a1)
{
  v2 = v1;
  v4 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin(v6);
  v10 = v42 - v9 + 16;
  if (qword_10003B910 != -1)
  {
    swift_once();
  }

  v11 = sub_100024B98();
  sub_10000C2CC(v11, qword_10003D268);
  v12 = sub_100024B78();
  v13 = sub_100024DE8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Slider button was tapped.", v14, 2u);
  }

  v15 = [a1 currentLook];
  v16 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_posterDataForLook;
  swift_beginAccess();
  v17 = *&v2[v16];
  if (*(v17 + 16))
  {

    v18 = sub_10001E6A0(v15);
    if (v19)
    {
      v20 = v18;
      v21 = *(v17 + 56);
      v22 = type metadata accessor for KaleidoscopePosterData();
      v23 = *(v22 - 8);
      sub_10000AAB0(v21 + *(v23 + 72) * v20, v10);

      (*(v23 + 56))(v10, 0, 1, v22);
      goto LABEL_11;
    }
  }

  else
  {
  }

  v24 = type metadata accessor for KaleidoscopePosterData();
  (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
LABEL_11:
  sub_10001D704(v10, v8, &qword_10003C380, qword_100028B40);
  v25 = objc_allocWithZone(type metadata accessor for PathProgressSliderViewController());
  v26 = sub_100022BE8(v8);
  v42[3] = type metadata accessor for KaleidoscopePosterEditor();
  v42[4] = &off_100035628;
  v42[0] = v2;
  v27 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_sliderDelegate;
  swift_beginAccess();
  v28 = v2;
  sub_10001DD0C(v42, v26 + v27, &qword_10003C250, &qword_100028D90);
  swift_endAccess();
  v29 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v26];
  v30 = [v29 sheetPresentationController];
  v31 = sub_100024C68();
  sub_1000147A8(0, &qword_10003C258, UISheetPresentationControllerDetent_ptr);
  v32 = v31;
  v33 = sub_100024E58();
  if (v30)
  {
    sub_10000AB70(&qword_10003C260, &unk_100028D98);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100028CE0;
    *(v34 + 32) = v33;
    v35 = v30;
    v36 = v33;
    isa = sub_100024D38().super.isa;

    [v35 setDetents:isa];

    v38 = v35;
    [v38 setLargestUndimmedDetentIdentifier:v32];

    v39 = v38;
    sub_100024E48();
  }

  else
  {
    [0 setLargestUndimmedDetentIdentifier:v32];
    v39 = v32;
  }

  [a1 presentViewController:v29 animated:1 completion:0];
  return sub_10000E2AC(v10, &qword_10003C380, qword_100028B40);
}

id sub_100018E8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KaleidoscopePosterEditor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for KaleidoscopePosterEditor()
{
  result = qword_10003C230;
  if (!qword_10003C230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100018FF4()
{
  sub_100011FEC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000190E0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_10001917C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_100019228(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_10001E6A0(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_10001A410(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_10001AFFC(&unk_10003C2E0, qword_100028DC8);
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_100024FF8();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_100024FE8();
  v8 = sub_1000194D8(v4, v7);

  v9 = sub_10001E6A0(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_10001A410(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_100019384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_10001E6A0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10001AC88();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for KaleidoscopePosterData();
    v20 = *(v13 - 8);
    sub_10000AA4C(v12 + *(v20 + 72) * v8, a2);
    sub_10001A59C(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for KaleidoscopePosterData();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

Swift::Int sub_1000194D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000AB70(&unk_10003C2E0, qword_100028DC8);
    v2 = sub_100025068();
    v19 = v2;
    sub_100024FD8();
    v3 = sub_100025008();
    if (v3)
    {
      v4 = v3;
      sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000147A8(0, &qword_10003C2D8, CLKUIAtlasBacking_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10001A1B0(v12 + 1, 1, &unk_10003C2E0, qword_100028DC8);
        }

        v2 = v19;
        result = sub_100024E68(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_100025008();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_100019734(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000AB70(&qword_10003C2B8, &qword_100028DB8);
    v2 = sub_100025068();
    v19 = v2;
    sub_100024FD8();
    v3 = sub_100025008();
    if (v3)
    {
      v4 = v3;
      sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for AnimationDriver();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100019F40(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_100024E68(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_100025008();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_100019968(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000AB70(&qword_10003C2C0, &qword_100028DC0);
    v2 = sub_100025068();
    v19 = v2;
    sub_100024FD8();
    v3 = sub_100025008();
    if (v3)
    {
      v4 = v3;
      sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for KaleidoscopeEditorContentView();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10001A1B0(v12 + 1, 1, &qword_10003C2C0, &qword_100028DC0);
        }

        v2 = v19;
        result = sub_100024E68(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_100025008();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_100019BB4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019BEC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100019C2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1000185A8();
}

uint64_t sub_100019C34(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for KaleidoscopePosterData();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_10000AB70(&qword_10003C2B0, &qword_100028DB0);
  v41 = a2;
  result = sub_100025058();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v40 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v41)
      {
        sub_10000AA4C(v28, v9);
      }

      else
      {
        sub_10000AAB0(v28, v9);
        v29 = v26;
      }

      result = sub_100024E68(*(v13 + 40));
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_10000AA4C(v9, *(v13 + 56) + v27 * v21);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_100019F40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000AB70(&qword_10003C2B8, &qword_100028DB8);
  result = sub_100025058();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = sub_100024E68(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10001A1B0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_10000AB70(a3, a4);
  result = sub_100025058();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v23;
        v26 = v24;
      }

      result = sub_100024E68(*(v10 + 40));
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v7 + 32);
      if (v34 >= 64)
      {
        bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v34;
      }

      *(v7 + 16) = 0;
    }

    v5 = v35;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

void sub_10001A410(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100024EB8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_100024E68(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_10001A59C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100024EB8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_100024E68(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for KaleidoscopePosterData() - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

id sub_10001A778(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_10001E6A0(a2);
  v10 = *(v7 + 16);
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = *(v7 + 24);
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_10001AC88();
      goto LABEL_7;
    }

    sub_100019C34(v12, a3 & 1);
    v19 = *v4;
    v20 = sub_10001E6A0(a2);
    if ((v13 & 1) == (v21 & 1))
    {
      v9 = v20;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);
    result = sub_1000250F8();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = v16 + *(*(type metadata accessor for KaleidoscopePosterData() - 8) + 72) * v9;

    return sub_100011544(a1, v17);
  }

LABEL_13:
  sub_10001ABF4(v9, a2, a1, v15);

  return a2;
}

id sub_10001A8DC(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10001E6A0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100019F40(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_10001E6A0(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);
        result = sub_1000250F8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_10001AE98();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

id sub_10001AA58(uint64_t a1, void *a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v11 = *v5;
  v12 = sub_10001E6A0(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      sub_10001A1B0(v17, a3 & 1, a4, a5);
      v21 = *v8;
      v12 = sub_10001E6A0(a2);
      if ((v18 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);
        sub_1000250F8();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v20 = v12;
      sub_10001AFFC(a4, a5);
      v12 = v20;
    }
  }

  v23 = *v8;
  if (v18)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v12);
    *(v24 + 8 * v12) = a1;

    return _objc_release_x1();
  }

  v23[(v12 >> 6) + 8] |= 1 << v12;
  *(v23[6] + 8 * v12) = a2;
  *(v23[7] + 8 * v12) = a1;
  v26 = v23[2];
  v16 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;

  return a2;
}

uint64_t sub_10001ABF4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for KaleidoscopePosterData();
  result = sub_10000AA4C(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

id sub_10001AC88()
{
  v1 = v0;
  v2 = type metadata accessor for KaleidoscopePosterData();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AB70(&qword_10003C2B0, &qword_100028DB0);
  v6 = *v0;
  v7 = sub_100025048();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_10000AAB0(*(v6 + 56) + v23, v5);
        *(*(v8 + 48) + 8 * v21) = v22;
        sub_10000AA4C(v5, *(v8 + 56) + v23);
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_10001AE98()
{
  v1 = v0;
  sub_10000AB70(&qword_10003C2B8, &qword_100028DB8);
  v2 = *v0;
  v3 = sub_100025048();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_10001AFFC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000AB70(a1, a2);
  v4 = *v2;
  v5 = sub_100025048();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_10001B14C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100025028();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

uint64_t sub_10001B1B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);
  return sub_100024E78() & 1;
}

uint64_t sub_10001B214(void *a1, void *a2, uint64_t a3)
{
  v64 = a3;
  v7 = sub_10000DDA8(a1, *(a3 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_currentlySelectedAppearanceStyle));
  v8 = sub_10000A6CC();
  v9 = v8;
  v10 = v8 & 0xFFFFFFFFFFFFFF8;
  v11 = v8 >> 62;
  if (v8 >> 62)
  {
    goto LABEL_49;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 6)
  {
    goto LABEL_3;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  if (v9 < 0)
  {
    v18 = v9;
  }

  else
  {
    v18 = v10;
  }

  if (sub_100025028() < 0)
  {
    goto LABEL_62;
  }

  if (sub_100025028() < 6)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v59 = v18;
    v60 = v3;
    goto LABEL_20;
  }

  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);

      sub_100024F38(0);
      sub_100024F38(1);
      sub_100024F38(2);
      sub_100024F38(3);
      sub_100024F38(4);
      sub_100024F38(5);
    }

    else
    {
    }

    v63 = v7;
    if (!v11)
    {
      v4 = 0;
      v59 = v9 & 0xFFFFFFFFFFFFFF8;
      v60 = v3;
      v5 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
      v11 = 6;
LABEL_20:
      v61 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_artfileManager;
      v62 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_editorContentViewsForEditingLooks;
      swift_beginAccess();
      v26 = v11 - v4;
      v27 = (v5 + 8 * v4);
      while (1)
      {
        v28 = *v27;
        v29 = [v28 identifier];
        v30 = sub_100024C78();
        v32 = v31;

        v33 = [a2 identifier];
        v34 = sub_100024C78();
        v36 = v35;

        if (v30 == v34 && v32 == v36)
        {
        }

        else
        {
          v38 = sub_1000250D8();

          if ((v38 & 1) == 0)
          {
            v39 = *(v64 + v62);
            if ((v39 & 0xC000000000000001) != 0)
            {
              if (v39 < 0)
              {
                v40 = *(v64 + v62);
              }

              v41 = v28;

              v42 = sub_100024FF8();

              if (v42)
              {
                v65 = v42;
                type metadata accessor for KaleidoscopeEditorContentView();
                swift_dynamicCast();
                v43 = v66;
                goto LABEL_37;
              }

LABEL_38:

LABEL_39:
              v43 = 0;
            }

            else
            {
              if (!*(v39 + 16))
              {
                goto LABEL_39;
              }

              v44 = *(v64 + v62);

              v45 = sub_10001E6A0(v28);
              if ((v46 & 1) == 0)
              {
                goto LABEL_38;
              }

              v43 = *(*(v39 + 56) + 8 * v45);
              v47 = v43;
LABEL_37:
            }

            v48 = v63;
            v49 = *(v64 + v61);
            v50 = sub_100013F1C(v28, v63);
            v51 = sub_100014314(v28, v48);
            if (v43)
            {
              v52 = v43;
              sub_1000115D0(v48, v50, v51);
            }

            else
            {
            }

            goto LABEL_22;
          }
        }

LABEL_22:
        ++v27;
        if (!--v26)
        {
          goto LABEL_46;
        }
      }
    }

    v18 = sub_100025038();
    v5 = v53;
    v4 = v54;
    v56 = v55;

    v11 = v56 >> 1;
    if (v4 == v56 >> 1)
    {
      break;
    }

    if (v4 < (v56 >> 1))
    {
      goto LABEL_63;
    }

    __break(1u);
LABEL_49:
    if (v9 < 0)
    {
      v18 = v9;
    }

    else
    {
      v18 = v10;
    }

    if (sub_100025028() < 0)
    {
      goto LABEL_61;
    }

    if (sub_100025028() < 6)
    {
      goto LABEL_54;
    }

LABEL_3:
    if ((v9 & 0xC000000000000001) != 0)
    {
      sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);

      sub_100024F38(0);
      sub_100024F38(1);
      sub_100024F38(2);
      sub_100024F38(3);
      sub_100024F38(4);
      sub_100024F38(5);
    }

    else
    {
    }

    if (v11)
    {
      v3 = sub_100025038();
      v4 = v14;
      v13 = v15;
      v5 = v16;
    }

    else
    {
      v13 = 0;
      v3 = v9 & 0xFFFFFFFFFFFFFF8;
      v4 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
      v5 = 13;
    }

    v67 = a2;
    __chkstk_darwin(v12);
    v58[2] = &v67;
    v17 = v13;
    v18 = 0;
    sub_10001B898(sub_10001B830, v58, v4, v17, v5);
    if (v19)
    {
      v20 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_editorContentViewsForEditingLooks;
      v21 = v64;
      swift_beginAccess();
      v22 = *(v21 + v20);

      v4 = sub_100014B08(a2, v22);

      v23 = *(v21 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_artfileManager);
      v18 = sub_100013F1C(a2, v7);
      v5 = sub_100014314(a2, v7);
      if (v4)
      {
        v24 = v4;
        sub_1000115D0(v7, v18, v5);
      }
    }

    v25 = sub_10000A6CC();
    v9 = v25;
    v10 = v25 & 0xFFFFFFFFFFFFFF8;
    v11 = v25 >> 62;
    if (v25 >> 62)
    {
      goto LABEL_55;
    }

    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) < 6)
    {
      goto LABEL_60;
    }
  }

LABEL_46:
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_10001B830(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);
  return sub_100024E78() & 1;
}

void sub_10001B898(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a5 >> 1;
  if (a5 >> 1 != a4)
  {
    if (a4 <= v6)
    {
      v8 = a5 >> 1;
    }

    else
    {
      v8 = a4;
    }

    v9 = v8 - a4;
    v10 = (a3 + 8 * a4);
    v11 = ~a4 + v6;
    while (v9)
    {
      v15 = *v10;
      v12 = v15;
      v13 = a1(&v15);

      if (!v5)
      {
        v14 = v11 != 0;
        --v9;
        ++v10;
        --v11;
        if (v14 & ~v13)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_10001B968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v177 = a3;
  v5 = sub_100024938();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v168 = &v157[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v169 = &v157[-v11];
  v12 = __chkstk_darwin(v10);
  v171 = &v157[-v13];
  __chkstk_darwin(v12);
  v175 = &v157[-v14];
  v15 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v157[-v17];
  v19 = type metadata accessor for KaleidoscopePosterData();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v167 = &v157[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v22);
  v170 = &v157[-v25];
  __chkstk_darwin(v24);
  v179 = &v157[-v26];
  v27 = sub_10000AB70(&qword_10003B970, qword_100028490);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v172 = &v157[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = __chkstk_darwin(v29);
  v33 = &v157[-v32];
  __chkstk_darwin(v31);
  v35 = &v157[-v34];
  v173 = a1;
  sub_100016D4C(a1);
  v178 = a2;
  v36 = sub_100014C6C();
  v38 = v37;
  v39 = *(v20 + 48);
  v40 = v39(v37, 1, v19);
  v176 = v5;
  v174 = v6;
  if (!v40)
  {
    sub_100024928();
    (*(v6 + 56))(v35, 0, 1, v5);
    sub_10001DD0C(v35, v38, &qword_10003B970, qword_100028490);
  }

  (v36)(v183, 0);
  v41 = v178;
  v42 = sub_100014C6C();
  v44 = v43;
  v45 = v39(v43, 1, v19);
  v46 = v179;
  if (!v45)
  {
    *(v44 + *(v19 + 20)) = *(v41 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_currentlySelectedAppearanceStyle);
  }

  (v42)(v183, 0);
  v47 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_posterData;
  swift_beginAccess();
  sub_10001D704(v41 + v47, v18, &qword_10003C380, qword_100028B40);
  if (v39(v18, 1, v19) != 1)
  {
    sub_10000AA4C(v18, v46);
    sub_10001D704(v46, v33, &qword_10003B970, qword_100028490);
    v51 = v174;
    v52 = *(v174 + 48);
    v53 = v176;
    if (v52(v33, 1, v176) == 1)
    {
      sub_10000AB14(v46);
      v48 = &qword_10003B970;
      v49 = qword_100028490;
      v50 = v33;
      goto LABEL_9;
    }

    v165 = v52;
    v59 = v175;
    v163 = *(v51 + 32);
    v163(v175, v33, v53);
    sub_10001DCC4(&qword_10003C2D0, type metadata accessor for KaleidoscopePosterData);
    v60 = sub_100024C28();
    if (!v60)
    {
      (*(v51 + 8))(v59, v53);
      sub_10000AB14(v46);
      goto LABEL_10;
    }

    v61 = v60;
    if (qword_10003B910 != -1)
    {
      swift_once();
    }

    v62 = sub_100024B98();
    v63 = sub_10000C2CC(v62, qword_10003D268);
    v64 = v170;
    sub_10000AAB0(v46, v170);
    v65 = *(v51 + 16);
    v66 = v171;
    v161 = v51 + 16;
    v160 = v65;
    v65(v171, v175, v53);
    v166 = v63;
    v67 = sub_100024B78();
    v68 = sub_100024DE8();
    v69 = os_log_type_enabled(v67, v68);
    v164 = v61;
    v162 = v51 + 32;
    if (v69)
    {
      v70 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v182[0] = v159;
      *v70 = 136315394;
      v158 = v68;
      sub_10000CDE4();
      v71 = sub_100024CE8();
      v73 = v72;

      sub_10000AB14(v64);
      v74 = sub_100010554(v71, v73, v182);

      *(v70 + 4) = v74;
      *(v70 + 12) = 2080;
      sub_10001DCC4(&qword_10003C2A8, &type metadata accessor for UUID);
      v75 = sub_1000250C8();
      v76 = v66;
      v78 = v77;
      v171 = *(v51 + 8);
      (v171)(v76, v53);
      v79 = sub_100010554(v75, v78, v182);

      *(v70 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v67, v158, "Poster with look %s generated uuid of %s in the editor", v70, 0x16u);
      swift_arrayDestroy();

      v46 = v179;
    }

    else
    {

      v171 = *(v51 + 8);
      (v171)(v66, v53);
      sub_10000AB14(v64);
    }

    v80 = sub_100024B78();
    v81 = sub_100024DE8();

    v82 = v51;
    if (os_log_type_enabled(v80, v81))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v182[0] = v84;
      *v83 = 136315138;
      v85 = sub_100024C18();
      v87 = sub_100010554(v85, v86, v182);

      *(v83 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v80, v81, "finalizeWithCompletion — will attempt to finalize with userInfo: %s", v83, 0xCu);
      sub_10000C36C(v84);
    }

    v88 = v173;
    v89 = v172;
    sub_10001D704(v46, v172, &qword_10003B970, qword_100028490);
    if (v165(v89, 1, v53) == 1)
    {
      sub_10000E2AC(v89, &qword_10003B970, qword_100028490);
      goto LABEL_36;
    }

    v90 = v169;
    v163(v169, v89, v53);
    v91 = v53;
    v92 = objc_allocWithZone(NSUserDefaults);
    v93 = sub_100024C68();
    v94 = [v92 initWithSuiteName:v93];

    if (v94)
    {
      v95 = [v88 currentLook];
      v96 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_contentViewForLook;
      v97 = v178;
      swift_beginAccess();
      v98 = *(v97 + v96);

      v99 = sub_100014B08(v95, v98);

      if (v99)
      {
        v100 = *&v99[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_animationDriver];

        if (v100)
        {
          v102 = *(v100 + 80);
          v101 = *(v100 + 88);
          v103 = sub_10001DCC4(&qword_10003C2A8, &type metadata accessor for UUID);
          v104 = v169;
          v105 = v176;
          v180 = sub_1000250C8();
          v181 = v106;
          v184._countAndFlagsBits = 0x6F697461746F722DLL;
          v184._object = 0xE90000000000006ELL;
          sub_100024D08(v184);
          v107 = sub_100024C68();

          [v94 setDouble:v107 forKey:v101];

          v178 = v103;
          v180 = sub_1000250C8();
          v181 = v108;
          v185._countAndFlagsBits = 0x736572676F72702DLL;
          v185._object = 0xE900000000000073;
          v46 = v179;
          sub_100024D08(v185);
          v109 = sub_100024C68();

          [v94 setDouble:v109 forKey:v102];

          v110 = v168;
          v160(v168, v104, v105);
          v111 = v167;
          sub_10000AAB0(v46, v167);
          v112 = sub_100024B78();
          v113 = sub_100024DE8();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            v172 = swift_slowAlloc();
            v180 = v172;
            *v114 = 134218754;
            *(v114 + 4) = v102;
            *(v114 + 12) = 2048;
            *(v114 + 14) = v101;
            *(v114 + 22) = 2080;
            v170 = v112;
            v115 = sub_1000250C8();
            v116 = v110;
            v118 = v117;
            v178 = v82 + 8;
            v119 = v105;
            v120 = v171;
            (v171)(v116, v119);
            v121 = sub_100010554(v115, v118, &v180);

            *(v114 + 24) = v121;
            *(v114 + 32) = 2080;
            v122 = v111;
            sub_10000CDE4();
            v123 = sub_100024CE8();
            v125 = v124;

            sub_10000AB14(v122);
            v126 = sub_100010554(v123, v125, &v180);

            *(v114 + 34) = v126;
            v127 = v170;
            _os_log_impl(&_mh_execute_header, v170, v113, "Path progress of %f and rotation of %f were saved for %s for look %s", v114, 0x2Au);
            swift_arrayDestroy();

            v46 = v179;

            v120(v169, v176);
          }

          else
          {

            sub_10000AB14(v111);
            v156 = v171;
            (v171)(v110, v105);
            v156(v169, v105);
          }

          v88 = v173;
        }

        else
        {
          (v171)(v169, v176);
        }

LABEL_36:
        v130 = [objc_msgSend(v88 "environment")];
        swift_unknownObjectRelease();
        isa = sub_100024BF8().super.isa;

        v180 = 0;
        v132 = [v130 storeUserInfo:isa error:&v180];

        v133 = v180;
        if (v132 && (v134 = v180, v135 = [objc_msgSend(v88 "environment")], swift_unknownObjectRelease(), v180 = 0, v136 = objc_msgSend(v135, "loadUserInfoWithError:", &v180), v135, v133 = v180, v136))
        {
          sub_100024C08();
          v137 = v133;

          v138 = sub_100024B78();
          v139 = sub_100024DE8();

          if (os_log_type_enabled(v138, v139))
          {
            v140 = swift_slowAlloc();
            v141 = swift_slowAlloc();
            v180 = v141;
            *v140 = 136315138;
            v142 = sub_100024C18();
            v144 = v143;

            v145 = sub_100010554(v142, v144, &v180);

            *(v140 + 4) = v145;
            _os_log_impl(&_mh_execute_header, v138, v139, "Successfully stored userInfo: %s", v140, 0xCu);
            sub_10000C36C(v141);
          }

          else
          {
          }
        }

        else
        {
          v146 = v133;
          sub_100024918();

          swift_willThrow();
          swift_errorRetain();
          v147 = sub_100024B78();
          v148 = sub_100024DF8();

          if (os_log_type_enabled(v147, v148))
          {
            v149 = swift_slowAlloc();
            v150 = v46;
            v151 = swift_slowAlloc();
            v180 = v151;
            *v149 = 136315138;
            swift_getErrorValue();
            v152 = sub_100025108();
            v154 = sub_100010554(v152, v153, &v180);

            *(v149 + 4) = v154;
            _os_log_impl(&_mh_execute_header, v147, v148, "Failed to store userInfo in editor.environment.targetConfiguration. %s", v149, 0xCu);
            sub_10000C36C(v151);

            (v171)(v175, v176);
            v155 = v150;
LABEL_46:
            sub_10000AB14(v155);
            return (*(v177 + 16))();
          }
        }

        (v171)(v175, v176);
        v155 = v46;
        goto LABEL_46;
      }

      v128 = v169;
      v129 = v176;
    }

    else
    {
      v128 = v90;
      v129 = v91;
    }

    (v171)(v128, v129);
    goto LABEL_36;
  }

  v48 = &qword_10003C380;
  v49 = qword_100028B40;
  v50 = v18;
LABEL_9:
  sub_10000E2AC(v50, v48, v49);
LABEL_10:
  if (qword_10003B910 != -1)
  {
    swift_once();
  }

  v54 = sub_100024B98();
  sub_10000C2CC(v54, qword_10003D268);
  v55 = sub_100024B78();
  v56 = sub_100024DF8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "Unable to finalize; failed to retrieve userInfo", v57, 2u);
  }

  return (*(v177 + 16))();
}

id sub_10001CD0C()
{
  v1 = v0;
  if (qword_10003B910 != -1)
  {
    swift_once();
  }

  v2 = sub_100024B98();
  sub_10000C2CC(v2, qword_10003D268);
  v3 = sub_100024B78();
  v4 = sub_100024DD8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "PosterEditor invalidated", v5, 2u);
  }

  swift_unknownObjectWeakAssign();
  result = *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_contentView);
  if (result)
  {

    return [result removeFromSuperview];
  }

  return result;
}

uint64_t sub_10001CE34()
{
  v0 = sub_10000AB70(&qword_10003B970, qword_100028490);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v68 - v2;
  v4 = type metadata accessor for KaleidoscopePosterData();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v68 - v9;
  v11 = sub_1000249A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, enum case for WatchFacesWallpaperSupportFeatureFlags.catskill(_:), v11);
  v16 = sub_100024998();
  (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    v19 = objc_allocWithZone(PREditingLook);
    v20 = sub_100024C68();
    v21 = sub_100024C68();
    v22 = [v19 initWithIdentifier:v20 displayName:v21];

    sub_10000AB70(&qword_10003C260, &unk_100028D98);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100028CE0;
    *(v17 + 32) = v22;
    return v17;
  }

  v17 = sub_10000A6CC();
  sub_10000AB70(&unk_10003C280, &qword_100028CB0);
  sub_100024A98();
  sub_10001D704(v10, v3, &qword_10003B970, qword_100028490);
  v18 = sub_100024938();
  if ((*(*(v18 - 8) + 48))(v3, 1, v18) == 1)
  {
    sub_10000AB14(v10);
    sub_10000E2AC(v3, &qword_10003B970, qword_100028490);
    return v17;
  }

  sub_10000E2AC(v3, &qword_10003B970, qword_100028490);
  v68 = v8;
  v69 = v17 >> 62;
  v23 = v17 & 0xFFFFFFFFFFFFFF8;
  if (v17 >> 62)
  {
    goto LABEL_41;
  }

  v24 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v70 = v17 & 0xC000000000000001;

  v71 = v17;
  v72 = -v24;
  v25 = 4;
  do
  {
    v26 = v25;
    if (v72 + v25 == 4)
    {

      if (qword_10003B910 != -1)
      {
        swift_once();
      }

      v39 = sub_100024B98();
      sub_10000C2CC(v39, qword_10003D268);
      v40 = v68;
      sub_10000AAB0(v10, v68);
      v41 = sub_100024B78();
      v42 = sub_100024E08();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *v43 = 136315394;
        sub_10000C5F4();
        v45 = v44;
        v47 = v46;
        sub_10000AB14(v40);
        v48 = sub_100010554(v45, v47, &v73);
        v17 = v71;

        *(v43 + 4) = v48;
        *(v43 + 12) = 2080;
        sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);

        v49 = sub_100024D58();
        v51 = v50;

        v52 = sub_100010554(v49, v51, &v73);

        *(v43 + 14) = v52;
        _os_log_impl(&_mh_execute_header, v41, v42, "Editing an existing poster, but failed to find a look identifier to replace. Target: %s All Looks: %s", v43, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10000AB14(v40);
      }

      goto LABEL_37;
    }

    v27 = v25 - 4;
    if (v70)
    {
      v28 = sub_100024F48();
    }

    else
    {
      if (v27 >= *(v23 + 16))
      {
        goto LABEL_40;
      }

      v28 = *(v17 + 8 * v25);
    }

    v29 = v28;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      v24 = sub_100025028();
      goto LABEL_7;
    }

    v30 = [v28 displayName];
    v31 = sub_100024C78();
    v33 = v32;

    sub_10000CDE4();
    v34 = sub_100024CE8();
    v36 = v35;

    if (v31 == v34 && v33 == v36)
    {
      v53 = v71;

      v54 = v53;
      goto LABEL_25;
    }

    v38 = sub_1000250D8();

    v25 = v26 + 1;
    v17 = v71;
  }

  while ((v38 & 1) == 0);

  v54 = v17;
LABEL_25:
  sub_10000C5F4();
  sub_10000CDE4();
  sub_100024CE8();

  v55 = objc_allocWithZone(PREditingLook);
  v56 = sub_100024C68();

  v57 = sub_100024C68();

  v58 = [v55 initWithIdentifier:v56 displayName:v57];

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  v17 = v54;
  if (v69 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v17 = sub_10001B14C(v54);
    v23 = v17 & 0xFFFFFFFFFFFFFF8;
  }

  if (v27 >= *(v23 + 16))
  {
    __break(1u);
  }

  else
  {
    v60 = *(v23 + 8 * v26);
    *(v23 + 8 * v26) = v58;

    if (qword_10003B910 == -1)
    {
      goto LABEL_30;
    }
  }

  swift_once();
LABEL_30:
  v61 = sub_100024B98();
  sub_10000C2CC(v61, qword_10003D268);
  v62 = sub_100024B78();
  v63 = sub_100024DE8();
  if (!os_log_type_enabled(v62, v63))
  {
LABEL_35:

LABEL_37:
    sub_10000AB14(v10);
    return v17;
  }

  v64 = swift_slowAlloc();
  result = swift_slowAlloc();
  v66 = result;
  *v64 = 134218242;
  *(v64 + 4) = v27;
  *(v64 + 12) = 2112;
  if ((v17 & 0xC000000000000001) != 0)
  {
    v67 = sub_100024F48();
LABEL_34:
    *(v64 + 14) = v67;
    *v66 = v67;
    _os_log_impl(&_mh_execute_header, v62, v63, "Kaleidoscope loaded all looks, and replaced position %ld with %@ and should be editing an existing poster.", v64, 0x16u);
    sub_10000E2AC(v66, &qword_10003B968, &unk_100028CA0);

    goto LABEL_35;
  }

  if (v27 < *(v23 + 16))
  {
    v67 = *(v17 + 8 * v26);
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001D704(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000AB70(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001D7C0(void *a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_jewelLookNames);

  v6 = [a2 displayName];
  v7 = sub_100024C78();
  v9 = v8;

  v56[0] = v7;
  v56[1] = v9;
  v53 = v56;
  LOBYTE(v6) = sub_10001917C(sub_10001DD78, v52, v5);

  *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_shouldShowAppearanceMenuButton) = v6 & 1;
  [a1 updateActions];
  v50 = a1;
  v10 = [a1 environment];
  swift_getObjectType();
  v51 = v2;
  v11 = *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_currentlySelectedAppearanceStyle);
  v12 = swift_unknownObjectRetain();
  v49 = sub_10000DDA8(v12, v11);
  swift_unknownObjectRelease_n();
  v13 = sub_10000A6CC();
  v14 = v13;
  if (v13 >> 62)
  {
    v15 = sub_100025028();
    if (v15)
    {
      goto LABEL_3;
    }
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
  }

LABEL_3:
  result = sub_1000147A8(0, &qword_10003C298, NSObject_ptr);
  if (v15 >= 1)
  {
    v17 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_editorContentViewsForEditingLooks;
    v47 = OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_artfileManager;
    v18 = v14 & 0xC000000000000001;
    swift_beginAccess();
    v19 = 0;
    v48 = v14;
    v46 = v14 & 0xC000000000000001;
    while (1)
    {
      if (v18)
      {
        v21 = sub_100024F48();
      }

      else
      {
        v21 = *(v14 + 8 * v19 + 32);
      }

      v20 = v21;
      if (sub_100024E78() & 1) != 0 || (v22 = [v50 currentLook], v23 = sub_100024E78(), v22, (v23))
      {
        v24 = *(v51 + v17);
        if ((v24 & 0xC000000000000001) != 0)
        {
          if (v24 < 0)
          {
            v25 = *(v51 + v17);
          }

          v26 = *(v51 + v17);

          v27 = v20;
          v28 = sub_100024FF8();

          if (v28)
          {
            v54 = v28;
            type metadata accessor for KaleidoscopeEditorContentView();
            swift_dynamicCast();
            v29 = v55;
            if (!v55)
            {
              goto LABEL_6;
            }

LABEL_21:
            v33 = *(v51 + v47);
            v34 = sub_100013F1C(v20, v49);
            v35 = sub_100014314(v20, v49);
            v18 = v46;
            sub_1000115D0(v49, v34, v35);

            v14 = v48;
            v20 = v34;
            goto LABEL_6;
          }

LABEL_5:
          v20 = v27;
          goto LABEL_6;
        }

        if (*(v24 + 16))
        {
          v30 = *(v51 + v17);

          v31 = sub_10001E6A0(v20);
          if ((v32 & 1) == 0)
          {
            goto LABEL_34;
          }

          v29 = *(*(v24 + 56) + 8 * v31);

          if (v29)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        v36 = *(v51 + v17);
        if ((v36 & 0xC000000000000001) != 0)
        {
          if (v36 < 0)
          {
            v37 = *(v51 + v17);
          }

          v27 = v20;

          v38 = sub_100024FF8();

          if (!v38)
          {
            goto LABEL_5;
          }

          v54 = v38;
          type metadata accessor for KaleidoscopeEditorContentView();
          swift_dynamicCast();
          v39 = v55;
          if (v55)
          {
            goto LABEL_31;
          }
        }

        else if (*(v36 + 16))
        {
          v40 = *(v51 + v17);

          v41 = sub_10001E6A0(v20);
          if ((v42 & 1) == 0)
          {
LABEL_34:

            goto LABEL_6;
          }

          v39 = *(*(v36 + 56) + 8 * v41);

          if (v39)
          {
LABEL_31:
            v43 = OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView;
            v44 = *&v39[OBJC_IVAR____TtC18KaleidoscopePoster29KaleidoscopeEditorContentView_liveKaleidoscopeContentView];
            if (v44)
            {
              v45 = v44;
              [v45 removeFromSuperview];
            }

            v20 = *&v39[v43];
            *&v39[v43] = 0;
          }
        }
      }

LABEL_6:
      ++v19;

      if (v15 == v19)
      {
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001DC6C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1000250D8() & 1;
  }
}

uint64_t sub_10001DCC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001DD0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000AB70(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

id sub_10001DD94()
{
  *&v0[OBJC_IVAR____TtC18KaleidoscopePoster31KaleidoscopeRenderingController_coordinator] = 0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for KaleidoscopeRenderingController();
  v1 = objc_msgSendSuper2(&v9, "init");
  v2 = qword_10003B918;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = sub_100024B98();
  sub_10000C2CC(v4, qword_10003D280);
  v5 = sub_100024B78();
  v6 = sub_100024DD8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "PosterRenderer created", v7, 2u);
  }

  return v3;
}

id sub_10001DECC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KaleidoscopeRenderingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001DF34(void *a1, void *a2)
{
  v49 = a1;
  v3 = type metadata accessor for KaleidoscopePosterData();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v48 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = &v47 - v8;
  v9 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v47 - v15;
  __chkstk_darwin(v14);
  v18 = &v47 - v17;
  v47 = [a2 deviceOrientation];
  v19 = [a2 contents];
  swift_getObjectType();
  sub_10001EBF0(&qword_10003BA18);
  sub_10001EBF0(&qword_10003C2D0);
  sub_100024E28();
  swift_unknownObjectRelease();
  sub_100012310(v18, v16);
  v20 = v4;
  v21 = *(v4 + 48);
  v22 = v21(v16, 1, v3);
  sub_100012544(v16);
  if (v22 == 1)
  {
    v23 = [a2 contents];
    v54[0] = 0;
    v24 = [v23 loadUserInfoWithError:v54];
    swift_unknownObjectRelease();
    v25 = v54[0];
    if (v24)
    {
      v26 = sub_100024C08();
      v27 = v25;

      v52 = 0x746E6169726176;
      v53 = 0xE700000000000000;
      sub_100024EE8();
      if (*(v26 + 16) && (v28 = sub_10001E6E4(v54), (v29 & 1) != 0))
      {
        sub_10001149C(*(v26 + 56) + 32 * v28, v55);
        sub_10001D76C(v54);

        if (swift_dynamicCast())
        {
          sub_100012544(v18);
          v30 = v52;
          v31 = sub_100024938();
          (*(*(v31 - 8) + 56))(v18, 1, 1, v31);
          *&v18[*(v3 + 20)] = 0;
          *&v18[*(v3 + 24)] = v30;
          (*(v20 + 56))(v18, 0, 1, v3);
        }
      }

      else
      {

        sub_10001D76C(v54);
      }
    }

    else
    {
      v32 = v54[0];
      sub_100024918();

      swift_willThrow();
    }
  }

  sub_100012310(v18, v13);
  if (v21(v13, 1, v3) == 1)
  {
    sub_100012544(v13);
    if (qword_10003B918 != -1)
    {
      swift_once();
    }

    v33 = sub_100024B98();
    sub_10000C2CC(v33, qword_10003D280);
    v34 = sub_100024B78();
    v35 = sub_100024DE8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Kaleidoscope completely failed to load posterData during initialization", v36, 2u);
    }
  }

  else
  {
    v37 = v51;
    sub_10000AA4C(v13, v51);
    v38 = v48;
    sub_10000AAB0(v37, v48);
    v39 = type metadata accessor for KaleidoscopeRenderingCoordinator();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v42 = v49;
    v43 = sub_100021AA8(v42, v38, v47);

    v44 = *(v50 + OBJC_IVAR____TtC18KaleidoscopePoster31KaleidoscopeRenderingController_coordinator);
    *(v50 + OBJC_IVAR____TtC18KaleidoscopePoster31KaleidoscopeRenderingController_coordinator) = v43;

    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      v45 = *(v43 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_rotationAnimator);
      sub_100024AF8();
      sub_10001ECDC(v42);
    }

    sub_10000AB14(v37);
  }

  return sub_100012544(v18);
}

unint64_t sub_10001E6A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024E68(*(v2 + 40));

  return sub_10001E728(a1, v4);
}

unint64_t sub_10001E6E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024EC8(*(v2 + 40));

  return sub_10001E7EC(a1, v4);
}

unint64_t sub_10001E728(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10001EC90();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100024E78();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10001E7EC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001EC34(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100024ED8();
      sub_10001D76C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10001E8B4(void *a1)
{
  v2 = v1;
  v4 = sub_1000249A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, enum case for WatchFacesWallpaperSupportFeatureFlags.catskill(_:), v4);
  v9 = sub_100024998();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v11 = *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster31KaleidoscopeRenderingController_coordinator);
    if (v11)
    {

      if (!UIAccessibilityIsReduceMotionEnabled())
      {
        v12 = *(v11 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_rotationAnimator);
        sub_100024AF8();
        sub_10001ECDC(a1);
      }
    }
  }

  return result;
}

uint64_t sub_10001EA0C()
{
  v1 = v0;
  v2 = sub_1000249A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for WatchFacesWallpaperSupportFeatureFlags.catskill(_:), v2);
  v7 = sub_100024998();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_10003B918 != -1)
    {
      swift_once();
    }

    v9 = sub_100024B98();
    sub_10000C2CC(v9, qword_10003D280);
    v10 = sub_100024B78();
    v11 = sub_100024DD8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "PosterRenderer invalidate", v12, 2u);
    }

    v13 = OBJC_IVAR____TtC18KaleidoscopePoster31KaleidoscopeRenderingController_coordinator;
    if (*(v1 + OBJC_IVAR____TtC18KaleidoscopePoster31KaleidoscopeRenderingController_coordinator))
    {
      v14 = *(v1 + OBJC_IVAR____TtC18KaleidoscopePoster31KaleidoscopeRenderingController_coordinator);

      sub_100020F50();

      v15 = *(v1 + v13);
    }

    *(v1 + v13) = 0;
  }

  return result;
}

uint64_t sub_10001EBF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for KaleidoscopePosterData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001EC90()
{
  result = qword_10003C270;
  if (!qword_10003C270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003C270);
  }

  return result;
}

void sub_10001ECDC(void *a1)
{
  v2 = sub_1000249A8();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = enum case for WatchFacesWallpaperSupportFeatureFlags.catskill(_:);
  v8 = v3[13];
  v8(v6, enum case for WatchFacesWallpaperSupportFeatureFlags.catskill(_:), v2);
  v9 = sub_100024998();
  v10 = v3[1];
  v10(v6, v2);
  if (v9)
  {
    v8(v6, v7, v2);
    v11 = sub_100024998();
    v10(v6, v2);
    if (v11)
    {
      if (sub_100024DA8())
      {
        sub_10001FB00(a1);
      }

      else
      {
        sub_1000200B8(a1);
      }
    }
  }

  else
  {
    type metadata accessor for KaleidoscopeEmptyView();
    v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v13 = [a1 backgroundView];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    [v12 setFrame:{v15, v17, v19, v21}];
    v22 = [a1 backgroundView];
    [v22 addSubview:v12];
  }
}

uint64_t sub_10001EF18(uint64_t a1)
{
  v112 = a1;
  v1 = sub_10000AB70(&qword_10003B970, qword_100028490);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v105 = &v98 - v3;
  v110 = sub_100024938();
  v106 = *(v110 - 8);
  v4 = *(v106 + 64);
  v5 = __chkstk_darwin(v110);
  v101 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v103 = &v98 - v7;
  v107 = sub_10000AB70(&qword_10003C5C8, &qword_100028E88);
  v8 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v108 = &v98 - v9;
  v10 = sub_1000249A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v109 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v104 = &v98 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v98 - v22;
  __chkstk_darwin(v21);
  v25 = &v98 - v24;
  v26 = type metadata accessor for KaleidoscopePosterData();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = __chkstk_darwin(v26);
  v100 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v102 = &v98 - v32;
  __chkstk_darwin(v31);
  v34 = &v98 - v33;
  sub_10001D704(v112, v25, &qword_10003C380, qword_100028B40);
  v35 = v27[6];
  v112 = v26;
  if (v35(v25, 1, v26) == 1)
  {
    return sub_10000E2AC(v25, &qword_10003C380, qword_100028B40);
  }

  sub_10000AA4C(v25, v34);
  (*(v11 + 104))(v14, enum case for WatchFacesWallpaperSupportFeatureFlags.catskill(_:), v10);
  v37 = sub_100024998();
  (*(v11 + 8))(v14, v10);
  if (v37)
  {
    v38 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_currentPosterData;
    v39 = v111;
    swift_beginAccess();
    v99 = v34;
    sub_10000AAB0(v34, v23);
    v40 = v27[7];
    v41 = v112;
    v98 = v27 + 7;
    v40(v23, 0, 1, v112);
    v42 = v40;
    v43 = *(v107 + 48);
    v44 = v39 + v38;
    v45 = v108;
    sub_10001D704(v44, v108, &qword_10003C380, qword_100028B40);
    v46 = v45;
    sub_10001D704(v23, &v45[v43], &qword_10003C380, qword_100028B40);
    if (v35(v45, 1, v41) == 1)
    {
      sub_10000E2AC(v23, &qword_10003C380, qword_100028B40);
      v47 = v35(&v45[v43], 1, v41);
      v48 = v110;
      if (v47 == 1)
      {
        sub_10000E2AC(v46, &qword_10003C380, qword_100028B40);
LABEL_24:
        v94 = v99;
        v95 = v109;
        sub_10000AAB0(v99, v109);
        v42(v95, 0, 1, v41);
        v96 = v111;
        swift_beginAccess();
        sub_100021A38(v95, v96 + v38);
        swift_endAccess();
        v97 = *(v96 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_contentView);
        sub_10000F1F4(v94);

        v49 = v94;
        return sub_10000AB14(v49);
      }
    }

    else
    {
      v50 = v104;
      sub_10001D704(v45, v104, &qword_10003C380, qword_100028B40);
      v51 = v35(&v45[v43], 1, v41);
      v48 = v110;
      if (v51 != 1)
      {
        v89 = v46 + v43;
        v90 = v102;
        sub_10000AA4C(v89, v102);
        v91 = v46;
        v92 = sub_10000DE10(v50, v90);
        sub_10000AB14(v90);
        sub_10000E2AC(v23, &qword_10003C380, qword_100028B40);
        sub_10000AB14(v50);
        sub_10000E2AC(v91, &qword_10003C380, qword_100028B40);
        if (v92)
        {
          goto LABEL_24;
        }

LABEL_11:
        v52 = v105;
        sub_10001D704(v99, v105, &qword_10003B970, qword_100028490);
        v53 = v106;
        if ((*(v106 + 48))(v52, 1, v48) == 1)
        {
          sub_10000E2AC(v52, &qword_10003B970, qword_100028490);
        }

        else
        {
          v54 = v103;
          (*(v53 + 32))(v103, v52, v48);
          sub_100020F50();
          v55 = objc_allocWithZone(NSUserDefaults);
          v56 = sub_100024C68();
          v57 = [v55 initWithSuiteName:v56];

          if (!v57)
          {
            goto LABEL_21;
          }

          sub_100022BA0(&qword_10003C2A8, &type metadata accessor for UUID);
          v113 = sub_1000250C8();
          v114 = v58;
          v115._countAndFlagsBits = 0x736572676F72702DLL;
          v115._object = 0xE900000000000073;
          sub_100024D08(v115);
          v59 = sub_100024C68();

          [v57 doubleForKey:v59];
          v61 = v60;

          v62 = objc_allocWithZone(NSUserDefaults);
          v63 = sub_100024C68();
          v64 = [v62 initWithSuiteName:v63];

          if (v64)
          {
            v113 = sub_1000250C8();
            v114 = v65;
            v116._countAndFlagsBits = 0x6F697461746F722DLL;
            v116._object = 0xE90000000000006ELL;
            sub_100024D08(v116);
            v66 = sub_100024C68();

            [v64 doubleForKey:v66];
            v68 = v67;

            v69 = *(v111 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_animationDriver);
            *(v69 + 80) = v61;
            *(v69 + 88) = v68;
            if (qword_10003B918 != -1)
            {
              swift_once();
            }

            v70 = sub_100024B98();
            sub_10000C2CC(v70, qword_10003D280);
            v71 = v106;
            v72 = v101;
            (*(v106 + 16))(v101, v54, v48);
            v73 = v100;
            sub_10000AAB0(v99, v100);
            v74 = sub_100024B78();
            v75 = sub_100024DE8();
            if (os_log_type_enabled(v74, v75))
            {
              v76 = swift_slowAlloc();
              v110 = v42;
              v77 = v72;
              v78 = v76;
              v107 = swift_slowAlloc();
              v113 = v107;
              *v78 = 136315906;
              LODWORD(v105) = v75;
              v79 = v73;
              v80 = sub_1000250C8();
              v82 = v81;
              v108 = *(v71 + 8);
              v83 = v77;
              v42 = v110;
              (v108)(v83, v48);
              v84 = sub_100010554(v80, v82, &v113);

              *(v78 + 4) = v84;
              *(v78 + 12) = 2080;
              sub_10000CDE4();
              v85 = sub_100024CE8();
              v87 = v86;

              sub_10000AB14(v79);
              v88 = sub_100010554(v85, v87, &v113);

              *(v78 + 14) = v88;
              *(v78 + 22) = 2048;
              *(v78 + 24) = v61;
              *(v78 + 32) = 2048;
              *(v78 + 34) = v68;
              _os_log_impl(&_mh_execute_header, v74, v105, "Poster %s which is look %s loaded path progress of %f and rotation %f in setPosterData", v78, 0x2Au);
              swift_arrayDestroy();

              (v108)(v103, v48);
            }

            else
            {

              sub_10000AB14(v73);
              v93 = *(v71 + 8);
              v93(v72, v48);
              v93(v54, v48);
            }
          }

          else
          {
LABEL_21:
            (*(v106 + 8))(v54, v48);
            *(*(v111 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_animationDriver) + 80) = 0;
          }
        }

        v41 = v112;
        goto LABEL_24;
      }

      sub_10000E2AC(v23, &qword_10003C380, qword_100028B40);
      sub_10000AB14(v50);
    }

    sub_10000E2AC(v46, &qword_10003C5C8, &qword_100028E88);
    goto LABEL_11;
  }

  v49 = v34;
  return sub_10000AB14(v49);
}

void sub_10001FB00(void *a1)
{
  v2 = v1;
  v4 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v54 - v6;
  v8 = type metadata accessor for KaleidoscopePosterData();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v54 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v54 - v14;
  __chkstk_darwin(v13);
  v55 = &v54 - v16;
  v17 = sub_10000AB70(&qword_10003C5C0, &qword_100028E80);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v54 - v19;
  v21 = a1;
  sub_100024A38();
  v22 = sub_100024A48();
  v23 = (*(*(v22 - 8) + 48))(v20, 1, v22);
  sub_10000E2AC(v20, &qword_10003C5C0, &qword_100028E80);
  if (v23 == 1)
  {
    goto LABEL_4;
  }

  v24 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_currentPosterData;
  swift_beginAccess();
  sub_10001D704(v2 + v24, v7, &qword_10003C380, qword_100028B40);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000E2AC(v7, &qword_10003C380, qword_100028B40);
LABEL_4:
    if (qword_10003B918 != -1)
    {
      swift_once();
    }

    v25 = sub_100024B98();
    sub_10000C2CC(v25, qword_10003D280);
    v26 = sub_100024B78();
    v27 = sub_100024DE8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "The snapshot failed to grab a poster data", v28, 2u);
    }

    return;
  }

  v29 = v55;
  sub_10000AA4C(v7, v55);
  v30 = *(v29 + *(v8 + 20));
  v31 = [v21 environment];
  swift_getObjectType();
  v32 = swift_unknownObjectRetain();
  v33 = sub_10000DDA8(v32, v30);
  swift_unknownObjectRelease_n();
  v34 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_contentView;
  v35 = *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_contentView);
  v36 = *&v35[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance];
  *&v35[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance] = v33;
  if (v33 != v36)
  {
    v37 = v35;
    sub_10000F310();
    v38 = *&v37[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView];
    if (v38)
    {
      v39 = v38;
      [v39 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
    }
  }

  v40 = *(v2 + v34);
  v41 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_animationDriver;
  v42 = *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_animationDriver);
  v43 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData;
  swift_beginAccess();
  sub_10000AAB0(v40 + v43, v15);
  v44 = v40;

  sub_10000F690(v45, v15);

  sub_10000AB14(v15);
  v46 = *(*(v2 + v34) + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView);
  if (v46)
  {
    [v46 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
  }

  v47 = v54;
  if (qword_10003B918 != -1)
  {
    swift_once();
  }

  v48 = sub_100024B98();
  sub_10000C2CC(v48, qword_10003D280);
  sub_10000AAB0(v29, v47);

  v49 = sub_100024B78();
  v50 = sub_100024DE8();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 134218496;
    v52 = *(v2 + v41);
    *(v51 + 4) = *(v52 + 80);
    *(v51 + 12) = 2048;
    *(v51 + 14) = *(v52 + 88);
    *(v51 + 22) = 2048;
    v53 = *(v47 + *(v8 + 24));
    sub_10000AB14(v47);
    *(v51 + 24) = v53;
    _os_log_impl(&_mh_execute_header, v49, v50, "The snapshot was generated with an animation driver set to %f %f for poster %ld", v51, 0x20u);
  }

  else
  {
    sub_10000AB14(v47);
  }

  sub_10000AB14(v29);
}

uint64_t sub_1000200B8(void *a1)
{
  v2 = v1;
  v105 = a1;
  v3 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v93 = &v87 - v5;
  v92 = type metadata accessor for KaleidoscopePosterData();
  v91 = *(v92 - 8);
  v6 = *(v91 + 64);
  __chkstk_darwin(v92);
  v95 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A28();
  v96 = *(v8 - 8);
  v9 = *(v96 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v87 - v13;
  v15 = sub_100024B68();
  v108 = *(v15 - 8);
  v16 = *(v108 + 64);
  v17 = __chkstk_darwin(v15);
  v94 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v87 - v20;
  __chkstk_darwin(v19);
  v23 = &v87 - v22;
  v24 = [objc_opt_self() mainScreen];
  [v24 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v106 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_contentView;
  [*(v2 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_contentView) bounds];
  v112.origin.x = v33;
  v112.origin.y = v34;
  v112.size.width = v35;
  v112.size.height = v36;
  v111.origin.x = v26;
  v111.origin.y = v28;
  v111.size.width = v30;
  v111.size.height = v32;
  if (!CGRectEqualToRect(v111, v112))
  {
    v37 = *(v2 + v106);
    [v37 setFrame:{v26, v28, v30, v32}];
    [v37 setNeedsLayout];
    [v37 setNeedsDisplay];
    [v37 layoutIfNeeded];
  }

  v38 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_wakeState;
  swift_beginAccess();
  v39 = v108;
  v40 = *(v108 + 16);
  v103 = v38;
  v102 = v108 + 16;
  v101 = v40;
  v40(v23, v2 + v38, v15);
  LOBYTE(v38) = sub_100024B38();
  v107 = *(v39 + 8);
  v108 = v39 + 8;
  v107(v23, v15);
  if (v38 & 1) != 0 || (v41 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_unlockState, swift_beginAccess(), v42 = v96, (*(v96 + 16))(v14, v2 + v41, v8), LOBYTE(v41) = sub_1000249F8(), (*(v42 + 8))(v14, v8), (v41))
  {
    v43 = *(v2 + v106);
    if (v43[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused] == 1)
    {
      v43[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused] = 0;
      v44 = v43;
      sub_10000E948();
    }
  }

  sub_100024DC8();
  sub_100020B04(v21);
  v45 = v21;
  v104 = v15;
  v107(v21, v15);
  sub_100024DB8();
  v46 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_unlockState;
  swift_beginAccess();
  v47 = v96;
  v48 = *(v96 + 16);
  v100 = v96 + 16;
  v99 = v48;
  v48(v14, v2 + v46, v8);
  sub_100022BA0(&qword_10003C5B0, &type metadata accessor for UnlockState);
  v49 = sub_100024C58();
  v50 = *(v47 + 8);
  v90 = v14;
  v98 = v50;
  v97 = v47 + 8;
  v50(v14, v8);
  if ((v49 & 1) == 0)
  {
    swift_beginAccess();
    (*(v47 + 24))(v2 + v46, v12, v8);
    swift_endAccess();
  }

  v51 = v98;
  v98(v12, v8);
  v52 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_animationDriver;
  v53 = *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_animationDriver);
  v89 = v8;
  v54 = v46;
  v55 = v104;
  v101(v45, v2 + v103, v104);

  sub_100024B48();
  v110 = v56;
  sub_1000219B4();
  sub_100024C38();
  v107(v45, v55);
  sub_10000E784(v109);

  v96 = v52;
  v57 = *(v2 + v52);
  v88 = v54;
  v58 = v2 + v54;
  v59 = v90;
  v60 = v89;
  v99(v90, v58, v89);

  sub_100024A18();
  v110 = v61;
  sub_100024C38();
  v51(v59, v60);
  sub_10000E808(v109);

  sub_10000AB70(&unk_10003C280, &qword_100028CB0);
  v62 = v95;
  v63 = v105;
  sub_100024AA8();
  v64 = v93;
  sub_10000AAB0(v62, v93);
  v65 = v92;
  (*(v91 + 56))(v64, 0, 1, v92);
  sub_10001EF18(v64);
  sub_10000E2AC(v64, &qword_10003C380, qword_100028B40);
  v66 = *(v62 + *(v65 + 20));
  v67 = [v63 environment];
  swift_getObjectType();
  v68 = swift_unknownObjectRetain();
  v69 = sub_10000DDA8(v68, v66);
  swift_unknownObjectRelease_n();
  v70 = v106;
  v71 = *(v2 + v106);
  v72 = *&v71[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance];
  *&v71[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance] = v69;
  if (v69 != v72)
  {
    v73 = v71;
    sub_10000F310();
    v74 = *&v73[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView];
    if (v74)
    {
      v75 = v74;
      [v75 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
    }
  }

  v76 = *(v2 + v96);
  v77 = *(v2 + v70);

  sub_10000F690(v78, v62);

  v79 = v94;
  v80 = v104;
  v101(v94, v2 + v103, v104);
  LOBYTE(v77) = sub_100024B38();
  v107(v79, v80);
  if ((v77 & 1) == 0)
  {
    v99(v59, v2 + v88, v60);
    v81 = sub_1000249F8();
    v98(v59, v60);
    if ((v81 & 1) == 0)
    {
      v82 = *(v2 + v70);
      if ((v82[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused] & 1) == 0)
      {
        v82[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused] = 1;
        v83 = v82;
        sub_10000E948();

        [v105 noteContentSignificantlyChanged];
      }
    }
  }

  v84 = *(v2 + v70);
  if (*(v84 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused) == 1)
  {
    v85 = *(v84 + OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView);
    if (v85)
    {
      [v85 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
    }
  }

  sub_100020F50();
  return sub_10000AB14(v62);
}

void sub_100020B04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024B68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v33 - v9;
  v11 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_wakeState;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v1 + v11, v4);
  sub_100022BA0(&qword_10003C598, &type metadata accessor for WakeState);
  v13 = sub_100024C58();
  v34 = *(v5 + 8);
  v34(v10, v4);
  if ((v13 & 1) == 0)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v11, a1, v4);
    swift_endAccess();
    v14 = a1;
    if (qword_10003B918 != -1)
    {
      swift_once();
    }

    v15 = sub_100024B98();
    sub_10000C2CC(v15, qword_10003D280);
    v16 = v35;
    v12(v35, v14, v4);
    v17 = sub_100024B78();
    v18 = sub_100024DD8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v33 = v14;
      v20 = v39;
      *v19 = 136315138;
      sub_100022BA0(&qword_10003C5A8, &type metadata accessor for WakeState);
      v21 = sub_1000250C8();
      v23 = v22;
      v34(v16, v4);
      v24 = sub_100010554(v21, v23, &v39);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Set wake state to %s", v19, 0xCu);
      sub_10000C36C(v20);
    }

    else
    {

      v34(v16, v4);
    }

    v25 = *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_contentView);
    sub_100024B48();
    v27 = *&v25[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView];
    if (v27)
    {
      v28 = v26;
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        v30 = v29;
        v39 = v28;
        sub_100021960();
        v31 = v27;
        sub_100024C48();
        v37 = v38;
        sub_100024C38();
        HIDWORD(v32) = HIDWORD(v36);
        *&v32 = v36;
        [v30 setAplFilterAmount:v32];
      }
    }
  }
}

uint64_t sub_100020F50()
{
  v1 = sub_10000AB70(&qword_10003B970, qword_100028490);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v56[-v3];
  v5 = sub_100024938();
  v64 = *(v5 - 8);
  v6 = *(v64 + 64);
  v7 = __chkstk_darwin(v5);
  v62 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v63 = &v56[-v9];
  v10 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v56[-v12];
  v14 = type metadata accessor for KaleidoscopePosterData();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v61 = &v56[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v20 = &v56[-v19];
  v21 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_currentPosterData;
  swift_beginAccess();
  sub_10001D704(v0 + v21, v13, &qword_10003C380, qword_100028B40);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_10000E2AC(v13, &qword_10003C380, qword_100028B40);
  }

  sub_10000AA4C(v13, v20);
  sub_10001D704(v20, v4, &qword_10003B970, qword_100028490);
  v23 = v64;
  if ((*(v64 + 48))(v4, 1, v5) == 1)
  {
    sub_10000AB14(v20);
    return sub_10000E2AC(v4, &qword_10003B970, qword_100028490);
  }

  v24 = v5;
  v25 = v63;
  (*(v23 + 32))(v63, v4, v24);
  v26 = objc_allocWithZone(NSUserDefaults);
  v27 = sub_100024C68();
  v28 = [v26 initWithSuiteName:v27];

  if (!v28)
  {
    (*(v23 + 8))(v25, v24);
LABEL_12:
    v54 = v20;
    return sub_10000AB14(v54);
  }

  v29 = *(v0 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_animationDriver);
  v31 = *(v29 + 80);
  v30 = *(v29 + 88);
  v32 = sub_100022BA0(&qword_10003C2A8, &type metadata accessor for UUID);
  v65 = sub_1000250C8();
  v66 = v33;
  v67._countAndFlagsBits = 0x736572676F72702DLL;
  v67._object = 0xE900000000000073;
  sub_100024D08(v67);
  v34 = sub_100024C68();

  [v28 setDouble:v34 forKey:v31];

  v60 = v32;
  v65 = sub_1000250C8();
  v66 = v35;
  v68._countAndFlagsBits = 0x6F697461746F722DLL;
  v68._object = 0xE90000000000006ELL;
  sub_100024D08(v68);
  v36 = sub_100024C68();

  [v28 setDouble:v36 forKey:v30];

  if (qword_10003B918 != -1)
  {
    swift_once();
  }

  v37 = sub_100024B98();
  sub_10000C2CC(v37, qword_10003D280);
  v38 = v62;
  (*(v23 + 16))(v62, v25, v24);
  v39 = v61;
  sub_10000AAB0(v20, v61);
  v40 = sub_100024B78();
  v41 = sub_100024DE8();
  if (!os_log_type_enabled(v40, v41))
  {

    sub_10000AB14(v39);
    v55 = *(v23 + 8);
    v55(v38, v24);
    v55(v25, v24);
    goto LABEL_12;
  }

  v42 = swift_slowAlloc();
  v59 = v20;
  v43 = v42;
  v58 = swift_slowAlloc();
  v65 = v58;
  *v43 = 136315906;
  v57 = v41;
  v44 = sub_1000250C8();
  v60 = v28;
  v45 = v39;
  v47 = v46;
  v48 = *(v23 + 8);
  v48(v38, v24);
  v49 = sub_100010554(v44, v47, &v65);

  *(v43 + 4) = v49;
  *(v43 + 12) = 2080;
  sub_10000CDE4();
  v50 = sub_100024CE8();
  v52 = v51;

  sub_10000AB14(v45);
  v53 = sub_100010554(v50, v52, &v65);

  *(v43 + 14) = v53;
  *(v43 + 22) = 2048;
  *(v43 + 24) = v31;
  *(v43 + 32) = 2048;
  *(v43 + 34) = v30;
  _os_log_impl(&_mh_execute_header, v40, v57, "Poster %s which is look %s saved path progress of %f and rotation of %f", v43, 0x2Au);
  swift_arrayDestroy();

  v48(v25, v24);
  v54 = v59;
  return sub_10000AB14(v54);
}

uint64_t sub_100021680()
{
  sub_10000E2AC(v0 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_currentPosterData, &qword_10003C380, qword_100028B40);
  v1 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_unlockState;
  v2 = sub_100024A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_wakeState;
  v4 = sub_100024B68();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_animationDriver);

  v6 = *(v0 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_rotationAnimator);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

uint64_t type metadata accessor for KaleidoscopeRenderingCoordinator()
{
  result = qword_10003C3E0;
  if (!qword_10003C3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100021810()
{
  sub_100011FEC();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_100024A28();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_100024B68();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void *sub_100021940(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

unint64_t sub_100021960()
{
  result = qword_10003C5A0;
  if (!qword_10003C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C5A0);
  }

  return result;
}

unint64_t sub_1000219B4()
{
  result = qword_10003C5B8;
  if (!qword_10003C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C5B8);
  }

  return result;
}

uint64_t sub_100021A08@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100021A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021AA8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v168 = a3;
  v7 = sub_10000AB70(&qword_10003B970, qword_100028490);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v158 = &v144 - v9;
  v10 = sub_100024938();
  v11 = *(v10 - 8);
  v163 = v10;
  v164 = v11;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v147 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v162 = &v144 - v15;
  v157 = sub_100024B68();
  v156 = *(v157 - 8);
  v16 = *(v156 + 64);
  __chkstk_darwin(v157);
  v155 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100024A28();
  v153 = *(v154 - 8);
  v18 = *(v153 + 64);
  v19 = __chkstk_darwin(v154);
  v151 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v152 = &v144 - v21;
  v22 = type metadata accessor for KaleidoscopePosterData();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v146 = &v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v150 = &v144 - v28;
  __chkstk_darwin(v27);
  v165 = &v144 - v29;
  v30 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v144 - v32;
  v34 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_currentPosterData;
  v35 = *(v23 + 56);
  v35(v3 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_currentPosterData, 1, 1, v22);
  sub_100024A08();
  sub_100024B58();
  v36 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_animationDriver;
  sub_10000E8DC();
  *(v4 + v36) = v37;
  v38 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_rotationAnimator;
  v39 = sub_100024B28();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  *(v4 + v38) = sub_100024B18();
  *(v4 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_renderer) = a1;
  *(v4 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_orientation) = v168;
  sub_10000AAB0(a2, v33);
  v161 = v23 + 56;
  v159 = v35;
  v35(v33, 0, 1, v22);
  swift_beginAccess();
  v42 = a1;
  v160 = v33;
  sub_100021A38(v33, v4 + v34);
  swift_endAccess();
  v167 = v22;
  v43 = *(a2 + *(v22 + 20));
  v44 = [v42 environment];
  swift_getObjectType();
  v45 = swift_unknownObjectRetain();
  v149 = sub_10000DDA8(v45, v43);
  swift_unknownObjectRelease_n();
  v166 = v42;
  v46 = [v42 backgroundView];
  [v46 bounds];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  v168 = a2;
  v55 = v165;
  sub_10000AAB0(a2, v165);
  v145 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_animationDriver;
  v56 = *(v4 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_animationDriver);
  v148 = type metadata accessor for KaleidoscopeContentView();
  v57 = objc_allocWithZone(v148);
  *&v57[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v57[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadView] = 0;
  v58 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_quadPathfinderMapTable;
  v59 = objc_allocWithZone(NSMapTable);

  *&v57[v58] = [v59 init];
  *&v57[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_loadedAssets] = &_swiftEmptySetSingleton;
  v60 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterResourceProviderKey;
  *&v57[v60] = [objc_allocWithZone(CLKUIResourceProviderKey) init];
  v61 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lastAppliedPathProgress;
  *&v57[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lastAppliedPathProgress] = 0;
  v62 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_zoomMultiplier;
  *&v57[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_zoomMultiplier] = 1063675494;
  v63 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_currentDriver;
  sub_10000E8DC();
  *&v57[v63] = v64;
  v65 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance;
  *&v57[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_appearance] = 0;
  *&v57[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_lumaBacking] = 0;
  *&v57[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_chromaBacking] = 0;
  *&v57[v63] = v56;

  v57[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_isPaused] = 1;
  sub_10000AAB0(v55, &v57[OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData]);
  *&v57[v61] = *(v56 + 80);
  *&v57[v65] = v149;
  v66 = [objc_opt_self() currentDevice];
  v67 = [v66 userInterfaceIdiom];

  v68 = 0.9;
  if (!v67)
  {
    v68 = 1.125;
  }

  *&v57[v62] = v68;
  v171.receiver = v57;
  v171.super_class = v148;
  v69 = objc_msgSendSuper2(&v171, "initWithFrame:", v48, v50, v52, v54);
  sub_10000ED8C();

  sub_10000AB14(v55);
  v70 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_contentView;
  *(v4 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_contentView) = v69;
  if (qword_10003B918 != -1)
  {
    swift_once();
  }

  v165 = v70;
  v71 = sub_100024B98();
  v72 = sub_10000C2CC(v71, qword_10003D280);
  v73 = v150;
  sub_10000AAB0(v168, v150);
  v149 = v72;
  v74 = sub_100024B78();
  v75 = sub_100024DE8();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v169 = v77;
    *v76 = 136315138;
    sub_10000C5F4();
    v172 = v78;
    v173 = v79;
    v174._countAndFlagsBits = 45;
    v174._object = 0xE100000000000000;
    sub_100024D08(v174);
    v80 = *(v73 + *(v167 + 24));
    v81 = v154;
    v82 = v152;
    if (qword_10003B8D8 != -1)
    {
      swift_once();
    }

    v83 = qword_10003D1C8;
    if (qword_10003D1C8 <= v80)
    {
      v83 = v80;
    }

    if (qword_10003D1D0 >= v83)
    {
      v84 = v83;
    }

    else
    {
      v84 = qword_10003D1D0;
    }

    v175._countAndFlagsBits = sub_10000B8CC(v84);
    sub_100024D08(v175);

    v85 = v172;
    v86 = v173;
    sub_10000AB14(v73);
    v87 = sub_100010554(v85, v86, &v169);

    *(v76 + 4) = v87;
    _os_log_impl(&_mh_execute_header, v74, v75, "didInitializeWith posterData: %s", v76, 0xCu);
    sub_10000C36C(v77);

    v88 = v153;
  }

  else
  {

    sub_10000AB14(v73);
    v81 = v154;
    v88 = v153;
    v82 = v152;
  }

  v89 = v166;
  sub_100024DB8();
  v90 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_unlockState;
  swift_beginAccess();
  v91 = v151;
  (*(v88 + 16))(v151, v4 + v90, v81);
  sub_100022BA0(&qword_10003C5B0, &type metadata accessor for UnlockState);
  v92 = sub_100024C58();
  v93 = v82;
  v94 = *(v88 + 8);
  v94(v91, v81);
  v95 = v162;
  if ((v92 & 1) == 0)
  {
    swift_beginAccess();
    (*(v88 + 24))(v4 + v90, v93, v81);
    swift_endAccess();
  }

  v94(v93, v81);
  v96 = v155;
  sub_100024DC8();
  sub_100020B04(v96);
  (*(v156 + 8))(v96, v157);
  v97 = OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_rotationAnimator;
  v98 = *(v4 + OBJC_IVAR____TtC18KaleidoscopePoster32KaleidoscopeRenderingCoordinator_rotationAnimator);
  v99 = v165;
  v100 = *(v4 + v165);
  sub_100022BA0(&qword_10003C2A0, type metadata accessor for KaleidoscopeContentView);

  v101 = v100;
  sub_100024B08();

  v102 = *(v4 + v97);

  [objc_msgSend(v89 "environment")];
  swift_unknownObjectRelease();
  sub_100024AD8();

  v103 = v168;
  v104 = v158;
  sub_10001D704(v168, v158, &qword_10003B970, qword_100028490);
  v106 = v163;
  v105 = v164;
  if ((*(v164 + 48))(v104, 1, v163) == 1)
  {
    sub_10000E2AC(v104, &qword_10003B970, qword_100028490);
  }

  else
  {
    (*(v105 + 32))(v95, v104, v106);
    v107 = objc_allocWithZone(NSUserDefaults);
    v108 = sub_100024C68();
    v109 = [v107 initWithSuiteName:v108];

    if (v109)
    {
      sub_100022BA0(&qword_10003C2A8, &type metadata accessor for UUID);
      v169 = sub_1000250C8();
      v170 = v110;
      v176._countAndFlagsBits = 0x736572676F72702DLL;
      v176._object = 0xE900000000000073;
      sub_100024D08(v176);
      v111 = sub_100024C68();

      [v109 doubleForKey:v111];
      v113 = v112;

      v114 = objc_allocWithZone(NSUserDefaults);
      v115 = sub_100024C68();
      v116 = [v114 initWithSuiteName:v115];

      if (v116)
      {
        v169 = sub_1000250C8();
        v170 = v117;
        v177._countAndFlagsBits = 0x6F697461746F722DLL;
        v177._object = 0xE90000000000006ELL;
        sub_100024D08(v177);
        v118 = sub_100024C68();

        [v116 doubleForKey:v118];
        v120 = v119;

        v121 = *(v4 + v145);
        *(v121 + 80) = v113;
        *(v121 + 88) = v120;
        v122 = v164;
        v123 = v147;
        (*(v164 + 16))(v147, v95, v106);
        v103 = v168;
        v124 = v146;
        sub_10000AAB0(v168, v146);
        v125 = sub_100024B78();
        v126 = sub_100024DE8();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = v122;
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          LODWORD(v157) = v126;
          v130 = v123;
          v158 = v129;
          v169 = v129;
          *v128 = 136315906;
          v131 = sub_1000250C8();
          v133 = v132;
          v164 = *(v127 + 8);
          (v164)(v130, v106);
          v134 = sub_100010554(v131, v133, &v169);

          *(v128 + 4) = v134;
          *(v128 + 12) = 2080;
          sub_10000CDE4();
          v135 = sub_100024CE8();
          v136 = v95;
          v138 = v137;

          sub_10000AB14(v124);
          v139 = sub_100010554(v135, v138, &v169);

          *(v128 + 14) = v139;
          *(v128 + 22) = 2048;
          *(v128 + 24) = v113;
          *(v128 + 32) = 2048;
          *(v128 + 34) = v120;
          _os_log_impl(&_mh_execute_header, v125, v157, "Poster %s which is look %s loaded path progress of %f and rotation of %f", v128, 0x2Au);
          swift_arrayDestroy();

          (v164)(v136, v106);
          v103 = v168;
        }

        else
        {

          sub_10000AB14(v124);
          v140 = *(v122 + 8);
          v140(v123, v106);
          v140(v95, v106);
        }
      }

      else
      {
        (*(v164 + 8))(v95, v106);
        v103 = v168;
      }
    }

    else
    {
      (*(v105 + 8))(v95, v106);
    }

    v99 = v165;
    v89 = v166;
  }

  v141 = [v89 backgroundView];
  [v141 addSubview:*(v4 + v99)];

  v142 = v160;
  sub_10000AAB0(v103, v160);
  v159(v142, 0, 1, v167);
  sub_10001EF18(v142);
  sub_10000AB14(v103);
  sub_10000E2AC(v142, &qword_10003C380, qword_100028B40);
  return v4;
}

uint64_t sub_100022BA0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100022BE8(uint64_t a1)
{
  v3 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v23 - v5;
  v7 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_posterData;
  v8 = type metadata accessor for KaleidoscopePosterData();
  v9 = *(v8 - 8);
  (*(v9 + 56))(&v1[v7], 1, 1, v8);
  v10 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathSlider;
  *&v1[v10] = [objc_allocWithZone(UISlider) init];
  v11 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomSlider;
  *&v1[v11] = [objc_allocWithZone(UISlider) init];
  v12 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathValueLabel;
  *&v1[v12] = [objc_allocWithZone(UILabel) init];
  v13 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomValueLabel;
  *&v1[v13] = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_backgroundView;
  *&v1[v14] = [objc_allocWithZone(UIView) init];
  v15 = &v1[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_sliderDelegate];
  *(v15 + 4) = 0;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  swift_beginAccess();
  sub_100024454(a1, &v1[v7]);
  swift_endAccess();
  sub_10001D704(a1, v6, &qword_10003C380, qword_100028B40);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_10000E2AC(v6, &qword_10003C380, qword_100028B40);
    v16 = 0;
  }

  else
  {
    v17 = *&v6[*(v8 + 24)];
    if (qword_10003B8D8 != -1)
    {
      swift_once();
    }

    v18 = qword_10003D1C8;
    if (qword_10003D1C8 <= v17)
    {
      v18 = v17;
    }

    if (qword_10003D1D0 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = qword_10003D1D0;
    }

    sub_10000AB14(v6);
    sub_10000BCE0(v19);
  }

  *&v1[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_startingPathProgress] = v16;
  v20 = type metadata accessor for PathProgressSliderViewController();
  v24.receiver = v1;
  v24.super_class = v20;
  v21 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", 0, 0);
  sub_10000E2AC(a1, &qword_10003C380, qword_100028B40);
  return v21;
}

void sub_100022F8C()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for PathProgressSliderViewController();
  objc_msgSendSuper2(&v18, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 clearColor];
  [v2 setBackgroundColor:v4];

  sub_1000233EC();
  sub_10002358C();
  sub_10002322C();
  v5 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_backgroundView];
  v6 = [v3 whiteColor];
  [v5 setBackgroundColor:v6];

  [v5 setAlpha:0.5];
  v7 = [v5 layer];
  [v7 setCornerRadius:10.0];

  v8 = [v0 view];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  [v8 addSubview:v5];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  [v10 addSubview:*&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathSlider]];

  v12 = [v0 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  [v12 addSubview:*&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomSlider]];

  v14 = [v0 view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v14;
  [v14 addSubview:*&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathValueLabel]];

  v16 = [v0 view];
  if (v16)
  {
    v17 = v16;
    [v16 addSubview:*&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomValueLabel]];

    return;
  }

LABEL_13:
  __break(1u);
}

id sub_10002322C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathValueLabel);
  sub_10000AB70(&qword_10003B958, &qword_100028398);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000282A0;
  [*(v0 + OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathSlider) value];
  *(v2 + 56) = &type metadata for Float;
  *(v2 + 64) = &protocol witness table for Float;
  *(v2 + 32) = v3;
  sub_100024C98();
  v4 = sub_100024C68();

  [v1 setText:v4];

  v5 = *(v0 + OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomValueLabel);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000282A0;
  [*(v0 + OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomSlider) value];
  *(v6 + 56) = &type metadata for Float;
  *(v6 + 64) = &protocol witness table for Float;
  *(v6 + 32) = v7;
  sub_100024C98();
  v8 = sub_100024C68();

  [v5 setText:v8];

  [v1 sizeToFit];

  return [v5 sizeToFit];
}

id sub_1000233EC()
{
  v1 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathSlider];
  [v1 setContinuous:1];
  [v1 setMinimumValue:0.0];
  LODWORD(v2) = 1.0;
  [v1 setMaximumValue:v2];
  LODWORD(v3) = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_startingPathProgress];
  [v1 setValue:v3];
  [v1 addTarget:v0 action:"sliderValueDidChangeWithSender:" forControlEvents:4096];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  [result bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v26.origin.x = v7;
  v26.origin.y = v9;
  v26.size.width = v11;
  v26.size.height = v13;
  Width = CGRectGetWidth(v26);
  result = [v0 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v27.origin.x = v17;
  v27.origin.y = v19;
  v27.size.width = v21;
  v27.size.height = v23;
  v24 = CGRectGetHeight(v27) * 0.5;

  return [v1 setCenter:{Width * 0.5, v24}];
}

id sub_10002358C()
{
  v1 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomSlider];
  [v1 setContinuous:1];
  LODWORD(v2) = 1050253722;
  [v1 setMinimumValue:v2];
  LODWORD(v3) = 1.5;
  [v1 setMaximumValue:v3];
  LODWORD(v4) = 1063675494;
  [v1 setValue:v4];
  [v1 addTarget:v0 action:"sliderValueDidChangeWithSender:" forControlEvents:4096];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  [result bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v27.origin.x = v8;
  v27.origin.y = v10;
  v27.size.width = v12;
  v27.size.height = v14;
  Width = CGRectGetWidth(v27);
  result = [v0 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v16 = result;
  [result bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v28.origin.x = v18;
  v28.origin.y = v20;
  v28.size.width = v22;
  v28.size.height = v24;
  v25 = CGRectGetHeight(v28) * 0.5;

  return [v1 setCenter:{Width * 0.5, v25}];
}

id sub_100023734()
{
  v85.receiver = v0;
  v85.super_class = type metadata accessor for PathProgressSliderViewController();
  objc_msgSendSuper2(&v85, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_backgroundView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v86.origin.x = v5;
  v86.origin.y = v7;
  v86.size.width = v9;
  v86.size.height = v11;
  [v1 setBounds:{0.0, 0.0, CGRectGetWidth(v86), 200.0}];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = result;
  [result center];
  v14 = v13;

  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v87.origin.x = v17;
  v87.origin.y = v19;
  v87.size.width = v21;
  v87.size.height = v23;
  Height = CGRectGetHeight(v87);
  [v1 bounds];
  [v1 setCenter:{v14, Height + CGRectGetHeight(v88) * -0.5 + -20.0}];
  v25 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathSlider];
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v26 = result;
  [result bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v89.origin.x = v28;
  v89.origin.y = v30;
  v89.size.width = v32;
  v89.size.height = v34;
  [v25 setBounds:{0.0, 0.0, CGRectGetWidth(v89) + -40.0, 50.0}];
  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v35 = result;
  [result bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v90.origin.x = v37;
  v90.origin.y = v39;
  v90.size.width = v41;
  v90.size.height = v43;
  v44 = CGRectGetWidth(v90) * 0.5;
  [v1 frame];
  v46 = v45;
  [v1 bounds];
  [v25 setCenter:{v44, v46 + CGRectGetHeight(v91) / 3.0}];
  v47 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomSlider];
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v48 = result;
  [result bounds];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  v92.origin.x = v50;
  v92.origin.y = v52;
  v92.size.width = v54;
  v92.size.height = v56;
  [v47 setBounds:{0.0, 0.0, CGRectGetWidth(v92) + -40.0, 50.0}];
  result = [v0 view];
  if (result)
  {
    v57 = result;
    [result bounds];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;

    v93.origin.x = v59;
    v93.origin.y = v61;
    v93.size.width = v63;
    v93.size.height = v65;
    v66 = CGRectGetWidth(v93) * 0.5;
    [v1 frame];
    v68 = v67;
    [v1 bounds];
    v69 = CGRectGetHeight(v94);
    [v47 setCenter:{v66, v68 + v69 / 3.0 + v69 / 3.0}];
    v70 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathValueLabel];
    [v1 frame];
    v72 = v71;
    [v70 bounds];
    v73 = v72 + CGRectGetWidth(v95) * 0.5 + 8.0;
    [v1 frame];
    v75 = v74;
    [v1 bounds];
    v76 = v75 + CGRectGetHeight(v96);
    [v70 bounds];
    [v70 setCenter:{v73, v76 - CGRectGetHeight(v97) * 0.5 + -8.0}];
    v77 = *&v0[OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomValueLabel];
    [v1 frame];
    v79 = v78;
    [v1 bounds];
    v80 = v79 + CGRectGetWidth(v98);
    [v77 bounds];
    v81 = v80 - CGRectGetWidth(v99) * 0.5 + -8.0;
    [v1 frame];
    v83 = v82;
    [v1 bounds];
    v84 = v83 + CGRectGetHeight(v100);
    [v70 bounds];
    return [v77 setCenter:{v81, v84 - CGRectGetHeight(v101) * 0.5 + -8.0}];
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_100023CA0(void *a1)
{
  v2 = v1;
  if (qword_10003B910 != -1)
  {
    swift_once();
  }

  v4 = sub_100024B98();
  sub_10000C2CC(v4, qword_10003D268);
  v5 = a1;
  v6 = sub_100024B78();
  v7 = sub_100024DD8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    [v5 value];
    *(v8 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v6, v7, "Slider changed value to %f", v8, 0xCu);
  }

  sub_1000241E4();
  v10 = *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathSlider);
  if (sub_100024E78())
  {
    v11 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_sliderDelegate;
    swift_beginAccess();
    sub_10001D704(v2 + v11, v23, &qword_10003C250, &qword_100028D90);
    if (v24)
    {
      sub_100024230(v23, v21);
      sub_10000E2AC(v23, &qword_10003C250, &qword_100028D90);
      v12 = sub_10000E134(v21, v22);
      [v5 value];
      v14 = *v12;
      sub_1000186C8(v13 - *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_startingPathProgress));
LABEL_11:
      sub_10000C36C(v21);
      return sub_10002322C();
    }

    goto LABEL_12;
  }

  v15 = *(v2 + OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomSlider);
  if (sub_100024E78())
  {
    v16 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_sliderDelegate;
    swift_beginAccess();
    sub_10001D704(v2 + v16, v23, &qword_10003C250, &qword_100028D90);
    if (v24)
    {
      sub_100024230(v23, v21);
      sub_10000E2AC(v23, &qword_10003C250, &qword_100028D90);
      v17 = sub_10000E134(v21, v22);
      [v5 value];
      v18 = *v17;
      sub_100018824(v19);
      goto LABEL_11;
    }

LABEL_12:
    sub_10000E2AC(v23, &qword_10003C250, &qword_100028D90);
  }

  return sub_10002322C();
}

id sub_100023FEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PathProgressSliderViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PathProgressSliderViewController()
{
  result = qword_10003C630;
  if (!qword_10003C630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100024128()
{
  sub_100011FEC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1000241E4()
{
  result = qword_10003C298;
  if (!qword_10003C298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003C298);
  }

  return result;
}

uint64_t sub_100024230(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1000242BC(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void sub_1000242F4()
{
  v1 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_posterData;
  v2 = type metadata accessor for KaleidoscopePosterData();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathSlider;
  *(v0 + v3) = [objc_allocWithZone(UISlider) init];
  v4 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomSlider;
  *(v0 + v4) = [objc_allocWithZone(UISlider) init];
  v5 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_pathValueLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_zoomValueLabel;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_backgroundView;
  *(v0 + v7) = [objc_allocWithZone(UIView) init];
  v8 = v0 + OBJC_IVAR____TtC18KaleidoscopePoster32PathProgressSliderViewController_sliderDelegate;
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  sub_100025018();
  __break(1u);
}

uint64_t sub_100024454(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AB70(&qword_10003C380, qword_100028B40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100024840(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[kaleidoscope pathfinder cache] insufficent path length %d", v2, 8u);
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}