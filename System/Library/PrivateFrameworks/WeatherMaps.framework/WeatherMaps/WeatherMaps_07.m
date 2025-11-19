uint64_t sub_220EB33C0(uint64_t a1)
{
  sub_220EEBB30(a1, *v1, *(v1 + 8), *(v1 + 16));
  v2 = *(v1 + 40);
  MEMORY[0x223D9CFA0](*(v1 + 32));
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x223D9CFD0](*&v3);
}

uint64_t sub_220EB341C()
{
  sub_220FC3A40();
  sub_220EB33C0(v1);
  return sub_220FC3A90();
}

uint64_t sub_220EB3464()
{
  sub_220FC3A40();
  sub_220EB33C0(v1);
  return sub_220FC3A90();
}

void sub_220EB34BC()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_isPlaying] == 1)
  {
    v2 = OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_renderTimer;
    [*&v1[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_renderTimer] invalidate];
    v3 = *&v1[v2];
    *&v1[v2] = 0;

    if (sub_220F5FEB4())
    {
      v4 = 60;
    }

    else
    {
      v4 = 0;
    }

    [v1 setDesiredDisplayRate_];
    if (qword_27CF9BFA0 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v5 = sub_220FC17A0();
    __swift_project_value_buffer(v5, qword_27CF9CAF0);
    v6 = v1;
    oslog = sub_220FC1780();
    v7 = sub_220FC2E30();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134218240;
      *(v8 + 4) = [v6 desiredDisplayRate];
      *(v8 + 12) = 1024;
      *(v8 + 14) = sub_220F5FEB4() & 1;

      _os_log_impl(&dword_220E15000, oslog, v7, "Playing - Set desired display rate. rate=%ld, isAnimatable=%{BOOL}d", v8, 0x12u);
LABEL_13:
      OUTLINED_FUNCTION_15();
      v12 = oslog;
      goto LABEL_15;
    }
  }

  else
  {
    [v0 setDesiredDisplayRate_];
    if (qword_27CF9BFA0 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v9 = sub_220FC17A0();
    __swift_project_value_buffer(v9, qword_27CF9CAF0);
    v6 = v0;
    oslog = sub_220FC1780();
    v10 = sub_220FC2E30();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = [v6 desiredDisplayRate];

      _os_log_impl(&dword_220E15000, oslog, v10, "Paused - Set desired display rate. rate=%ld", v11, 0xCu);
      goto LABEL_13;
    }
  }

  v12 = v6;
LABEL_15:
}

unsigned __int8 *sub_220EB373C(char *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_220FC17A0();
  OUTLINED_FUNCTION_6();
  v10 = v9;
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  if (qword_27CF9BFA0 != -1)
  {
    OUTLINED_FUNCTION_0_11();
  }

  v16 = __swift_project_value_buffer(v8, qword_27CF9CAF0);
  (*(v10 + 16))(v15, v16, v8);
  sub_220FC1700();
  *&v4[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_defaultFramerate] = 60;
  *&v4[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_renderTimer] = 0;
  *&v4[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_previousVisibleTiles] = MEMORY[0x277D84FA0];
  v17 = &v4[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_delegate];
  *&v4[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_220EB5974();
  sub_220FC1430();
  v18 = OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_requiresTileScale;
  v4[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_requiresTileScale] = 0;
  v4[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_isPlaying] = 0;
  *&v4[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_dynamicOverlay] = a1;
  *&v4[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_overlayRenderer] = *&a1[OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_overlayRenderer];
  *(v17 + 1) = a4;
  swift_unknownObjectWeakAssign();
  v4[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_fallbackBehaviourEnabled] = a2 & 1;
  v4[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_renderToMetalTexture] = (a2 & 4) != 0;
  v4[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_useIOSurfaceCache] = (a2 & 2) != 0;
  v4[v18] = (a2 & 8) != 0;
  v19 = &v4[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_animationPosition];
  *v19 = 0;
  v19[1] = 0;
  v25.receiver = v4;
  v25.super_class = type metadata accessor for MapKitDynamicTileOverlayRenderer();
  v20 = a1;
  swift_unknownObjectRetain();
  v21 = objc_msgSendSuper2(&v25, sel_initWithOverlay_, v20);
  v22 = *&v20[OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_opacity];
  v23 = v21;
  [v23 setAlpha_];
  sub_220ECFE74(*&v20[OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_blendMode] | (v20[OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_blendMode + 4] << 32));
  [v23 setUsesTileScale_];

  swift_unknownObjectRelease();
  return v23;
}

void sub_220EB3A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __IOSurface *a5)
{
  v6 = v5;
  v70 = a5;
  v69 = a4;
  v67 = a3;
  v66 = a2;
  v65 = a1;
  v7 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  MEMORY[0x28223BE20](v7 - 8, v8);
  OUTLINED_FUNCTION_3();
  v68 = v10 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E2C8);
  OUTLINED_FUNCTION_6();
  v12 = v11;
  MEMORY[0x28223BE20](v13, v14);
  v63 = &v54 - v15;
  v71 = sub_220FC16F0();
  OUTLINED_FUNCTION_6();
  v17 = v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v54 - v24;
  sub_220FC1710();
  sub_220FC16D0();
  v26 = sub_220FC1710();
  v27 = sub_220FC3040();
  if (sub_220FC3360())
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = sub_220FC16E0();
    _os_signpost_emit_with_name_impl(&dword_220E15000, v26, v27, v29, "mkRenderTile", "", v28, 2u);
    OUTLINED_FUNCTION_15();
  }

  (*(v17 + 16))(v21, v25, v71);
  sub_220FC1760();
  swift_allocObject();
  sub_220FC1750();
  if (*(v5 + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_useIOSurfaceCache) == 1)
  {
    ID = IOSurfaceGetID(v70);
    v31 = *(v69 + OBJC_IVAR____TtC11WeatherMaps11OverlayTile_path);
    v30 = *(v69 + OBJC_IVAR____TtC11WeatherMaps11OverlayTile_path + 8);
    v32 = v63;
    v61 = v25;
    v33 = *(v69 + OBJC_IVAR____TtC11WeatherMaps11OverlayTile_path + 16);
    v34 = *(v69 + OBJC_IVAR____TtC11WeatherMaps11OverlayTile_path + 24);
    v35 = *(v6 + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_animationPosition);
    v55 = (v6 + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_animationPosition);
    v36 = *(v6 + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_animationPosition + 8);
    v37 = OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_ioSurfaceRefCache;
    swift_beginAccess();
    v38 = *(v12 + 16);
    v58 = v37;
    v39 = v6 + v37;
    v40 = v64;
    v38(v32, v39, v64);
    v60 = v31;
    *&v76 = v31;
    *(&v76 + 1) = v30;
    v59 = v30;
    v57 = v33;
    *&v77 = v33;
    v25 = v61;
    DWORD2(v77) = v34;
    v56 = v35;
    *&v78 = v35;
    *(&v78 + 1) = v36;
    sub_220FC1400();
    (*(v12 + 8))(v32, v40);
    if ((v75 & 1) != 0 || v74 != ID)
    {
      v41 = *(v6 + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_overlayRenderer + 8);
      swift_getObjectType();
      OUTLINED_FUNCTION_4_20(OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_timeConfiguration);
      v54 = *v55;
      v42 = OUTLINED_FUNCTION_5_14(OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_purpose);
      v43 = *(v41 + 64);
      sub_220E5AFB8(v42, v44, v45);
      v46 = OUTLINED_FUNCTION_3_21();
      v43(v46);
      OUTLINED_FUNCTION_6_13();
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      v79 = 1;
      v47 = ID;
      v72 = ID;
      swift_beginAccess();
      sub_220FC1420();
      v72 = v47;
      v73 = 0;
      *&v76 = v60;
      *(&v76 + 1) = v59;
      *&v77 = v57;
      DWORD2(v77) = v34;
      *&v78 = v56;
      *(&v78 + 1) = v36;
      sub_220FC1410();
      swift_endAccess();
    }
  }

  else
  {
    v48 = *(v5 + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_overlayRenderer + 8);
    swift_getObjectType();
    OUTLINED_FUNCTION_4_20(OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_timeConfiguration);
    v49 = OUTLINED_FUNCTION_5_14(OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_purpose);
    v50 = *(v48 + 64);
    sub_220E5AFB8(v49, v51, v52);
    v53 = OUTLINED_FUNCTION_3_21();
    v50(v53);
    OUTLINED_FUNCTION_6_13();
  }

  sub_220EB4500();

  (*(v17 + 8))(v25, v71);
  OUTLINED_FUNCTION_8_12();
}

id sub_220EB40EC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = a5;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  *&v8[3] = a4;
  LODWORD(a5) = 0.5;
  return [v5 drawTileAtPath:v8 withTile:v6 inIOSurface:a5 withTimestamp:? withTileScale:?];
}

uint64_t sub_220EB41E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, float a8)
{
  v45 = a4;
  v46 = a5;
  v43 = a2;
  v44 = a3;
  v42 = a1;
  v11 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  MEMORY[0x28223BE20](v11 - 8, v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = sub_220FC16F0();
  OUTLINED_FUNCTION_6();
  v18 = v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v40 - v25;
  sub_220FC1710();
  sub_220FC16D0();
  v27 = sub_220FC1710();
  v28 = sub_220FC3040();
  if (sub_220FC3360())
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = sub_220FC16E0();
    _os_signpost_emit_with_name_impl(&dword_220E15000, v27, v28, v30, "mkRenderTile", "", v29, 2u);
    OUTLINED_FUNCTION_15();
  }

  (*(v18 + 16))(v22, v26, v16);
  sub_220FC1760();
  swift_allocObject();
  sub_220FC1750();
  v31 = *(v8 + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_overlayRenderer + 8);
  ObjectType = swift_getObjectType();
  v41 = v16;
  v33 = *(v8 + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_dynamicOverlay);
  sub_220E5ADF8(v33 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_timeConfiguration, v15);
  v34 = *(v8 + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_animationPosition);
  v35 = *(v8 + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_animationPosition + 8);
  v36 = *(v33 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_purpose + 8);
  v37 = *(v33 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_purpose + 16);
  v47 = *(v33 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_purpose);
  v48 = v36;
  v49 = v37;
  v40 = v26;
  v38 = *(v31 + 64);
  sub_220E5AFB8(v47, v36, v37);
  v38(v42, v43, v44, v45, v46, 1, v15, v34, a6, a8, v35, &v47, 0, 0, ObjectType, v31);
  sub_220E5AE5C(v47, v48, v49);
  sub_220E83244(v15);
  sub_220EB4500();

  return (*(v18 + 8))(v40, v41);
}

uint64_t sub_220EB4500()
{
  v0 = sub_220FC1730();
  OUTLINED_FUNCTION_6();
  v2 = v1;
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = sub_220FC16F0();
  OUTLINED_FUNCTION_6();
  v10 = v9;
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = sub_220FC1710();
  sub_220FC1740();
  v17 = sub_220FC3030();
  if (sub_220FC3360())
  {

    sub_220FC1770();

    if ((*(v2 + 88))(v7, v0) == *MEMORY[0x277D85B00])
    {
      v18 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v7, v0);
      v18 = "";
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = sub_220FC16E0();
    _os_signpost_emit_with_name_impl(&dword_220E15000, v16, v17, v20, "mkRenderTile", v18, v19, 2u);
    OUTLINED_FUNCTION_15();
  }

  return (*(v10 + 8))(v15, v8);
}

uint64_t sub_220EB4848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  MEMORY[0x28223BE20](v10 - 8, v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = *(v5 + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_overlayRenderer + 8);
  ObjectType = swift_getObjectType();
  v17 = *(v5 + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_dynamicOverlay);
  sub_220E5ADF8(v17 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_timeConfiguration, v14);
  v18 = v5 + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_animationPosition;
  v19 = *(v5 + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_animationPosition);
  v20 = *(v18 + 8);
  v21 = *(v17 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_purpose + 8);
  v22 = *(v17 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_purpose + 16);
  v26 = *(v17 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_purpose);
  v27 = v21;
  v28 = v22;
  v23 = *(v15 + 56);
  sub_220E5AFB8(v26, v21, v22);
  LOBYTE(v23) = v23(a1, a2, a3, a4, v14, v19, &v26, ObjectType, a5, v20, v15);
  sub_220E5AE5C(v26, v27, v28);
  sub_220E83244(v14);
  return v23 & 1;
}

void sub_220EB4A40()
{
  v1 = sub_220FC2340();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = sub_220FC2390();
  OUTLINED_FUNCTION_6();
  v11 = v10;
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  if ((*(v0 + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_isPlaying) & 1) == 0)
  {
    sub_220E1AAEC();
    v17 = sub_220FC2FC0();
    v18 = swift_allocObject();
    *(v18 + 16) = v0;
    aBlock[4] = sub_220EB5A70;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_220F6DA78;
    aBlock[3] = &block_descriptor_8;
    v19 = _Block_copy(aBlock);
    v20 = v0;

    sub_220FC2350();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_220EA7330();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0);
    sub_220E62E38();
    sub_220FC3430();
    MEMORY[0x223D9C530](0, v16, v8, v19);
    _Block_release(v19);

    (*(v3 + 8))(v8, v1);
    (*(v11 + 8))(v16, v9);
  }
}

void sub_220EB4CAC(char *a1)
{
  if (![a1 desiredDisplayRate])
  {
    [a1 setDesiredDisplayRate_];
    if (qword_27CF9BFA0 != -1)
    {
      swift_once();
    }

    v2 = sub_220FC17A0();
    __swift_project_value_buffer(v2, qword_27CF9CAF0);
    v3 = a1;
    v4 = sub_220FC1780();
    v5 = sub_220FC2E30();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = [v3 desiredDisplayRate];

      _os_log_impl(&dword_220E15000, v4, v5, "Map requires overlay render update - set desired display rate. rate=%ld", v6, 0xCu);
      MEMORY[0x223D9DDF0](v6, -1, -1);
    }

    else
    {

      v4 = v3;
    }
  }

  v7 = OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_renderTimer;
  [*&a1[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_renderTimer] invalidate];
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13[4] = sub_220EB5A90;
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_220E7F8F4;
  v13[3] = &block_descriptor_35;
  v10 = _Block_copy(v13);

  v11 = [v8 scheduledTimerWithTimeInterval:0 repeats:v10 block:0.5];
  _Block_release(v10);
  v12 = *&a1[v7];
  *&a1[v7] = v11;
}

void sub_220EB4EE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(&Strong->isa + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_isPlaying))
    {
      v2 = Strong;
    }

    else
    {
      [Strong setDesiredDisplayRate:0];
      v3 = *(&v1->isa + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_renderTimer);
      *(&v1->isa + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_renderTimer) = 0;

      if (qword_27CF9BFA0 != -1)
      {
        swift_once();
      }

      v4 = sub_220FC17A0();
      __swift_project_value_buffer(v4, qword_27CF9CAF0);
      v2 = sub_220FC1780();
      v5 = sub_220FC2E30();
      if (os_log_type_enabled(v2, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_220E15000, v2, v5, "Map no longer requires overlay render update - set desired display rate. rate=0", v6, 2u);
        MEMORY[0x223D9DDF0](v6, -1, -1);
      }
    }
  }
}

uint64_t sub_220EB502C(uint64_t result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = MEMORY[0x277D84F90];
    if (a2)
    {
      v27 = MEMORY[0x277D84F90];
      sub_220F0B408(0, a2, 0);
      v6 = 0;
      v5 = v27;
      v7 = *(v27 + 16);
      v8 = 32 * v7;
      v9 = a2;
      do
      {
        v10 = *(v4 + v6);
        v11 = *(v4 + v6 + 16);
        v12 = *(v4 + v6 + 24);
        v28 = v5;
        v13 = *(v5 + 24);
        v14 = v7 + 1;
        if (v7 >= v13 >> 1)
        {
          v26 = *(v4 + v6);
          sub_220F0B408((v13 > 1), v7 + 1, 1);
          v10 = v26;
          v5 = v28;
        }

        v15 = v12;
        *(v5 + 16) = v14;
        v16 = v5 + v8 + v6;
        *(v16 + 32) = v10;
        *(v16 + 48) = v11;
        *(v16 + 56) = v15;
        v6 += 32;
        v7 = v14;
        --v9;
      }

      while (v9);
    }

    v17 = sub_220E5AA9C(v5);
    v18 = OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_previousVisibleTiles;

    v20 = sub_220EB5210(v19, v17);

    if ((v20 & 1) != 0 || (*(v2 + v18) = v17, , , v21 = v2 + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_delegate, !swift_unknownObjectWeakLoadStrong()))
    {
      OUTLINED_FUNCTION_8_12();
    }

    else
    {
      v22 = *(v21 + 8);
      ObjectType = swift_getObjectType();
      (*(v22 + 8))(v17, a2, ObjectType, v22);

      OUTLINED_FUNCTION_8_12();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_220EB5210(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 1 << *(a2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a2 + 56);
  v7 = 1 << *(result + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(result + 56);
  v10 = (v4 + 63) >> 6;
  v11 = (v7 + 63) >> 6;
  while (v6)
  {
    v12 = v2;
LABEL_14:
    v13 = 0;
    v14 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v15 = *(a2 + 48) + ((v12 << 11) | (32 * v14));
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    if (!v9)
    {
      goto LABEL_28;
    }

LABEL_15:
    if (v13)
    {
      return 0;
    }

LABEL_16:
    v20 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v21 = *(result + 48) + ((v3 << 11) | (32 * v20));
    if (v17 != *v21 || v16 != *(v21 + 8) || v18 != *(v21 + 16) || v19 != *(v21 + 24))
    {
      return 0;
    }
  }

  while (1)
  {
    v12 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v12 >= v10)
    {
      break;
    }

    v6 = *(a2 + 56 + 8 * v12);
    ++v2;
    if (v6)
    {
      v2 = v12;
      goto LABEL_14;
    }
  }

  v6 = 0;
  v17 = 0;
  v16 = 0;
  v18 = 0;
  v19 = 0.0;
  v13 = 1;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_28:
  while (1)
  {
    v25 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v25 >= v11)
    {
      return v13;
    }

    v9 = *(result + 56 + 8 * v25);
    ++v3;
    if (v9)
    {
      v3 = v25;
      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }

      return 0;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_220EB53C8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_overlayRenderer + 8);
  ObjectType = swift_getObjectType();
  return (*(v9 + 80))(a1, a2, a3, ObjectType, v9, a4);
}

uint64_t sub_220EB54C8(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_overlayRenderer + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 88))(a1, ObjectType, v3);
}

void sub_220EB5578(uint64_t a1, double a2)
{
  v3 = v2 + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_animationPosition;
  *v3 = a1;
  *(v3 + 8) = a2;
  sub_220EB4A40();
}

uint64_t sub_220EB5590()
{
  result = sub_220F5FD74();
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

id sub_220EB5650()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapKitDynamicTileOverlayRenderer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MapKitDynamicTileOverlayRenderer()
{
  result = qword_27CF9E2A0;
  if (!qword_27CF9E2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220EB57CC()
{
  sub_220FC1720();
  if (v0 <= 0x3F)
  {
    sub_220EB58F8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_220EB58F8()
{
  if (!qword_27CF9E2B0)
  {
    sub_220EB5974();
    v0 = sub_220FC1440();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF9E2B0);
    }
  }
}

unint64_t sub_220EB5974()
{
  result = qword_27CF9E2B8;
  if (!qword_27CF9E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E2B8);
  }

  return result;
}

unint64_t sub_220EB5A1C()
{
  result = qword_27CF9E2C0;
  if (!qword_27CF9E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E2C0);
  }

  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_6_13()
{
  sub_220E5AE5C(*(v1 - 224), *(v1 - 216), *(v1 - 208));

  return sub_220E83244(v0);
}

uint64_t sub_220EB5ADC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E2F8);
  result = sub_220FC1230();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for WeatherMapOverlayService(0);
    v17[3] = v9;
    v17[4] = &off_28347ED08;
    v17[0] = v8;
    v10 = type metadata accessor for WeatherMapOverlayCoverageManager();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_28347ED08;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_0(v17);
    result = __swift_destroy_boxed_opaque_existential_0(v18);
    a2[3] = v10;
    a2[4] = &off_283482E60;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_220EB5D00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E320);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_220EB5DF4(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220EB5E38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_220EB5DF4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_220EB5E64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220EB5E0C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_220EB5E90(uint64_t a1)
{
  *(v1 + 136) = a1;

  return sub_220EB5FD4();
}

uint64_t sub_220EB5ED0(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  *(v17 + 144) = a1;
  *(v17 + 152) = a2;
  *(v17 + 160) = a3;
  *(v17 + 168) = a4;
  *(v17 + 176) = a5;
  *(v17 + 184) = a6;
  *(v17 + 192) = a7;
  *(v17 + 200) = a8;
  *(v17 + 208) = a17;
  *(v17 + 212) = 1;
  return sub_220EB5FD4();
}

uint64_t sub_220EB5EF4@<X0>(uint64_t a1@<X8>, float64_t a2@<D0>, float64_t a3@<D1>)
{
  v6 = 0uLL;
  if (*(v3 + 120))
  {

    LODWORD(v8) = sub_220EC0A08(a2, a3).u32[0];
    v10 = v9;

    if (*(v3 + 120))
    {

      sub_220EC07C4(v17, v8, v10);
      v15 = v17[1];
      v16 = v17[0];
      v12 = v18;

      v13 = v15;
      v6 = v16;
      v14 = 0;
    }

    else
    {
      v12 = 0;
      v14 = 1;
      v13 = 0uLL;
      v6 = 0uLL;
    }
  }

  else
  {
    v12 = 0;
    v14 = 1;
    v13 = 0uLL;
  }

  *a1 = v6;
  *(a1 + 16) = v13;
  *(a1 + 32) = v12;
  *(a1 + 36) = v14;
  return result;
}

uint64_t sub_220EB5FD4()
{
  v1 = sub_220EB6CF0(*(v0 + 128), *(v0 + 136));
  if ((*(v0 + 212) & 1) != 0 || (v1 & 1) == 0)
  {
    v2 = *(v0 + 208);
    v3 = *(v0 + 160);
    v9[0] = *(v0 + 144);
    v9[1] = v3;
    v4 = *(v0 + 192);
    v9[2] = *(v0 + 176);
    v9[3] = v4;
    v10 = v2;
    v11 = 512;

    sub_220FB9C10(v9, v7);

    if ((v7[116] & 1) == 0)
    {
      memcpy(__dst, v7, 0x74uLL);
      type metadata accessor for FullField();
      swift_allocObject();
      sub_220EC0508(__dst);
      *(v0 + 120) = v5;
    }
  }

  *(v0 + 212) = 0;
  *(v0 + 128) = *(v0 + 136);
}

uint64_t sub_220EB60C4()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_220EB610C()
{
  v0 = sub_220EB60C4();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_220EB6158()
{
  swift_defaultActor_initialize();
  type metadata accessor for TiledField();
  v1 = swift_allocObject();
  *(v1 + 16) = 512;
  *(v0 + 112) = v1;
  *(v0 + 120) = 0;
  v2 = MEMORY[0x277D84FA0];
  *(v0 + 128) = MEMORY[0x277D84FA0];
  *(v0 + 136) = v2;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  v3 = *(MEMORY[0x277CD4BB0] + 16);
  *(v0 + 176) = *MEMORY[0x277CD4BB0];
  *(v0 + 192) = v3;
  *(v0 + 208) = 0x40000000;
  *(v0 + 212) = 0;
  type metadata accessor for VectorField();
  sub_220EB702C();
  v4 = sub_220FC2600();
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 216) = v4;
  return v0;
}

uint64_t sub_220EB6214(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = sub_220FC2AE0();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  v11 = OUTLINED_FUNCTION_3_22();
  sub_220F9BB1C(v11, v12, v8, v13, v10);
}

uint64_t sub_220EB630C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_220EB6330, 0, 0);
}

uint64_t sub_220EB6330(uint64_t a1)
{
  v2 = *(*(v1 + 16) + 16);
  *(v1 + 40) = v2;
  return OUTLINED_FUNCTION_0_32(a1, v2);
}

uint64_t sub_220EB634C()
{
  OUTLINED_FUNCTION_19();
  sub_220EB5E90(*(v0 + 24));
  OUTLINED_FUNCTION_32_0();

  return v1();
}

uint64_t sub_220EB63A8(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v28 = OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_8_13(v28);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v18;
  *(v29 + 40) = a1;
  *(v29 + 48) = a2;
  *(v29 + 56) = a3;
  *(v29 + 64) = a4;
  *(v29 + 72) = a5;
  *(v29 + 80) = a6;
  *(v29 + 88) = a7;
  *(v29 + 96) = a8;
  *(v29 + 104) = a17;

  v30 = OUTLINED_FUNCTION_3_22();
  sub_220F9BB1C(v30, v31, v17, v32, v29);
}

uint64_t sub_220EB64C4(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 96) = v14;
  *(v12 + 72) = a7;
  *(v12 + 80) = a8;
  *(v12 + 56) = a5;
  *(v12 + 64) = a6;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  *(v12 + 16) = a12;
  return MEMORY[0x2822009F8](sub_220EB6500, 0, 0);
}

uint64_t sub_220EB6500(uint64_t a1)
{
  v2 = *(*(v1 + 16) + 16);
  *(v1 + 88) = v2;
  return OUTLINED_FUNCTION_0_32(a1, v2);
}

uint64_t sub_220EB651C()
{
  OUTLINED_FUNCTION_19();
  sub_220EB5ED0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v1, v2, v3, v4, v5, v6, v7, v8, *(v0 + 96));
  OUTLINED_FUNCTION_32_0();

  return v9();
}

uint64_t sub_220EB658C(double a1, double a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_8_13(v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v3;
  *(v9 + 40) = a1;
  *(v9 + 48) = a2;

  v10 = OUTLINED_FUNCTION_3_22();
  sub_220F9BB1C(v10, v11, v2, v12, v9);
}

uint64_t sub_220EB665C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 128) = a1;
  *(v6 + 136) = a2;
  *(v6 + 120) = a6;
  return MEMORY[0x2822009F8](sub_220EB6680, 0, 0);
}

uint64_t sub_220EB6680(uint64_t a1)
{
  v2 = *(*(v1 + 120) + 16);
  *(v1 + 144) = v2;
  return OUTLINED_FUNCTION_0_32(a1, v2);
}

uint64_t sub_220EB669C()
{
  OUTLINED_FUNCTION_19();
  sub_220EB5EF4(v0 + 80, *(v0 + 128), *(v0 + 136));

  return MEMORY[0x2822009F8](sub_220EB6708, 0, 0);
}

uint64_t sub_220EB6708()
{
  if ((*(v0 + 116) & 1) == 0)
  {
    v2 = *(v0 + 128);
    v1 = *(v0 + 136);
    v3 = *(v0 + 112);
    v4 = *(v0 + 104);
    v10 = *(v0 + 88);
    v5 = *(*(v0 + 120) + 40);
    ObjectType = swift_getObjectType();
    *(v0 + 16) = *(v0 + 80);
    *(v0 + 24) = v10;
    *(v0 + 40) = v4;
    *(v0 + 48) = v3;
    *(v0 + 56) = v2;
    *(v0 + 64) = v1;
    *(v0 + 72) = 0;
    v7 = *(v5 + 16);
    swift_unknownObjectRetain();
    v7(v0 + 16, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_32_0();

  return v8();
}

uint64_t sub_220EB6800()
{
  v1 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  v8 = 1;
  memset(v5, 0, sizeof(v5));
  v6 = 0;
  v7 = 1;
  v3 = *(v1 + 16);
  swift_unknownObjectRetain();
  v3(v5, ObjectType, v1);

  return swift_unknownObjectRelease();
}

id sub_220EB68A0(id result, float *a2)
{
  v2 = *a2 * 512.0;
  if (v2 <= -9.2234e18)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= 9.2234e18)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = a2[1] * 512.0;
  v4 = COERCE_INT(fabs(v3)) > 2139095039;
  if (COERCE_INT(fabs(*a2 * 512.0)) > 2139095039 || v4)
  {
    goto LABEL_11;
  }

  if (v3 <= -9.2234e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 >= 9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  v6 = v2;
  v7 = v3;
  v8 = sub_220FC29E0();
  *(v8 + 16) = 1;
  *(v8 + 32) = 0;
  MTLRegionMake2D_0(v6, v7, &v9);
  result = [v5 getBytes:v8 + 32 bytesPerRow:512 fromRegion:&v9 mipmapLevel:0];
  if (*(v8 + 16))
  {
  }

LABEL_14:
  __break(1u);
  return result;
}

BOOL sub_220EB69EC()
{
  v1 = CACurrentMediaTime();
  v2 = *(v0 + 24) + 0.06;
  if (v2 < v1)
  {
    *(v0 + 24) = v1;
  }

  return v2 < v1;
}

uint64_t sub_220EB6A28(_OWORD *a1, float *a2, void *a3)
{
  sub_220EB68A0(a3, a2);
  v6 = v5;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_220F6AEB0(a1, a2, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220EB6AB0()
{

  swift_unknownObjectRelease();
  sub_220E22990(v0 + 48);
  return v0;
}

uint64_t sub_220EB6AE0()
{
  sub_220EB6AB0();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_220EB6B54(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220EB6B74(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PixelReaderTransformType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220EB6C9C()
{
  result = qword_27CF9E328;
  if (!qword_27CF9E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E328);
  }

  return result;
}

uint64_t sub_220EB6CF0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  if (v7)
  {
    do
    {
      v10 = __clz(__rbit64(v7));
      v25 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(v3 + 48) + 32 * (v10 | (v4 << 6));
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      sub_220FC3A40();
      MEMORY[0x223D9CFA0](v14);
      MEMORY[0x223D9CFA0](v15);
      MEMORY[0x223D9CFA0](v16);
      sub_220FC3A70();
      result = sub_220FC3A90();
      v18 = -1 << *(a2 + 32);
      v19 = result & ~v18;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }

      v20 = ~v18;
      while (1)
      {
        v21 = *(a2 + 48) + 32 * v19;
        v22 = *v21 == v14 && *(v21 + 8) == v15;
        v23 = v22 && *(v21 + 16) == v16;
        if (v23 && *(v21 + 24) == v17)
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          return 0;
        }
      }

      v7 = v25;
    }

    while (v25);
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v25 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_220EB6ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();

  return sub_220EB6F50(a1, a2, a3, v11, a5, a6);
}

void *sub_220EB6F50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for FieldData();
  swift_allocObject();
  a4[2] = sub_220EB6158();
  a4[3] = 0;
  a4[7] = 0;
  swift_unknownObjectWeakInit();
  a4[4] = a1;
  a4[5] = a6;
  a4[7] = a3;
  swift_unknownObjectWeakAssign();
  v11 = *(a6 + 40);
  swift_unknownObjectRetain();

  v11(v12, &off_283481718, a5, a6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return a4;
}

unint64_t sub_220EB702C()
{
  result = qword_27CF9E330;
  if (!qword_27CF9E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E330);
  }

  return result;
}

uint64_t sub_220EB7080()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_30(v4);

  return sub_220EB630C(v6, v7, v8, v9, v1, v2);
}

uint64_t sub_220EB712C()
{
  OUTLINED_FUNCTION_4_21();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_30(v3);

  return sub_220EB665C(v0, v1, v5, v6, v7, v8);
}

uint64_t sub_220EB71D4()
{
  OUTLINED_FUNCTION_19();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t objectdestroy_49Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_220EB730C()
{
  OUTLINED_FUNCTION_4_21();
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[10];
  v17 = v1[9];
  v10 = v1[11];
  v11 = v1[12];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_43(v12);
  *v13 = v14;
  v13[1] = sub_220EB7430;

  return sub_220EB64C4(v5, v6, v7, v8, v17, v9, v10, v11, v0, v2, v3, v4);
}

double MTLRegionMake2D_0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  result = 0.0;
  *(a3 + 16) = xmmword_220FC9A00;
  *(a3 + 32) = vdupq_n_s64(1uLL);
  return result;
}

uint64_t sub_220EB7434()
{
  result = UIAccessibilityIsVoiceOverRunning();
  if ((result & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v0 + 264), *(v0 + 288));
    return sub_220F1451C();
  }

  return result;
}

void sub_220EB7554(uint64_t a1, double a2)
{
  v5 = type metadata accessor for SnapshotManager.Options(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8, v8);
  v9 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v18 - v12;
  sub_220FC2AC0();
  v14 = sub_220FC2AE0();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_220EBE7C0(a1, v9);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_220EBE904(v9, v17 + v15);
  *(v17 + v16) = a2;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v2;

  sub_220E86434();
}

uint64_t sub_220EB7730(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 952) = a6;
  *(v6 + 944) = a2;
  *(v6 + 936) = a5;
  *(v6 + 928) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E340);
  *(v6 + 960) = swift_task_alloc();
  *(v6 + 968) = type metadata accessor for WeatherMapOverlay();
  *(v6 + 976) = swift_task_alloc();
  v7 = sub_220FC02B0();
  *(v6 + 984) = v7;
  *(v6 + 992) = *(v7 - 8);
  *(v6 + 1000) = swift_task_alloc();
  v8 = sub_220FC0FD0();
  *(v6 + 1008) = v8;
  *(v6 + 1016) = *(v8 - 8);
  *(v6 + 1024) = swift_task_alloc();
  v9 = type metadata accessor for SnapshotManager.Options(0);
  *(v6 + 1032) = v9;
  v10 = *(v9 - 8);
  *(v6 + 1040) = v10;
  *(v6 + 1048) = *(v10 + 64);
  *(v6 + 1056) = swift_task_alloc();
  *(v6 + 1064) = swift_task_alloc();
  *(v6 + 1072) = swift_task_alloc();
  *(v6 + 1080) = swift_task_alloc();
  *(v6 + 1088) = swift_task_alloc();
  *(v6 + 1096) = swift_task_alloc();
  v11 = sub_220FC02E0();
  *(v6 + 1104) = v11;
  *(v6 + 1112) = *(v11 - 8);
  *(v6 + 1120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220EB79BC, 0, 0);
}

uint64_t sub_220EB79BC()
{
  v71 = v0;
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1104);
  sub_220FC02D0();
  v4 = sub_220FC02C0();
  v6 = v5;
  log = v4;
  *(v0 + 1128) = v4;
  *(v0 + 1136) = v5;
  (*(v2 + 8))(v1, v3);
  if (qword_2812C5EF8 != -1)
  {
    OUTLINED_FUNCTION_5_15();
  }

  v7 = *(v0 + 1096);
  v8 = *(v0 + 1088);
  v9 = *(v0 + 1080);
  v10 = *(v0 + 1072);
  v11 = *(v0 + 1064);
  v12 = *(v0 + 936);
  v13 = sub_220FC17A0();
  *(v0 + 1144) = __swift_project_value_buffer(v13, qword_2812C5F00);
  sub_220EBE7C0(v12, v7);
  sub_220EBE7C0(v12, v8);
  sub_220EBE7C0(v12, v9);
  sub_220EBE7C0(v12, v10);
  sub_220EBE7C0(v12, v11);

  v14 = sub_220FC1780();
  v15 = sub_220FC2E30();

  v16 = OUTLINED_FUNCTION_53_2();
  v17 = *(v0 + 1088);
  v18 = *(v0 + 1080);
  v19 = *(v0 + 1072);
  if (v16)
  {
    v65 = *(v0 + 1064);
    v20 = *(v0 + 1032);
    v21 = *(v0 + 944);
    v10 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v10 = 136448003;
    *(v10 + 4) = sub_220E20FF8(log, v6, &v70);
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    loga = v14;
    v22 = sub_220FC1040();
    sub_220EBE818();
    v23 = OUTLINED_FUNCTION_0_30();
    sub_220E20FF8(v23, v24, v25);
    OUTLINED_FUNCTION_60_2();

    *(v10 + 24) = v22;
    *(v10 + 32) = 2050;
    v26 = *(v17 + v20[9]);
    sub_220EBE818();
    *(v10 + 34) = v26;
    *(v10 + 42) = 2050;
    v27 = *(v18 + v20[9] + 8);
    sub_220EBE818();
    *(v10 + 44) = v27;
    *(v10 + 52) = 2048;
    *(v10 + 54) = v21;
    *(v10 + 62) = 2082;
    *(v0 + 920) = *(v19 + v20[10]);
    type metadata accessor for UIUserInterfaceStyle(0);
    sub_220EBE6F4(&qword_2812C5C58, type metadata accessor for UIUserInterfaceStyle);
    v28 = sub_220FC38F0();
    sub_220EBE818();
    v29 = OUTLINED_FUNCTION_0_30();
    sub_220E20FF8(v29, v30, v31);
    OUTLINED_FUNCTION_60_2();

    *(v10 + 64) = v28;
    *(v10 + 72) = 2082;
    *(v0 + 427) = *(v65 + v20[6]);
    sub_220E561E0();
    v32 = sub_220FC38F0();
    sub_220EBE818();
    v33 = OUTLINED_FUNCTION_0_30();
    sub_220E20FF8(v33, v34, v35);
    OUTLINED_FUNCTION_60_2();

    *(v10 + 74) = v32;
    _os_log_impl(&dword_220E15000, loga, v15, "Start snapshot creating. uuid=%{public}s, location=%{private,mask.hash}s, size.width=%{public}f, size.height=%{public}f, delay=%f, userInterfaceStyle=%{public}s, overlayKind=%{public}s", v10, 0x52u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_32_1();
  }

  else
  {

    sub_220EBE818();
    sub_220EBE818();
    sub_220EBE818();
    sub_220EBE818();
    sub_220EBE818();
  }

  v36 = *(v0 + 936);
  v37 = &v36[*(*(v0 + 1032) + 36)];
  v38 = *v37;
  *(v0 + 1152) = *v37;
  if (v38 == 0.0 || (v39 = v37[1], *(v0 + 1160) = v39, v39 == 0.0))
  {

    sub_220EBEBA4();
    swift_allocError();
    *v40 = 1;
    OUTLINED_FUNCTION_2_23();
    swift_willThrow();

    OUTLINED_FUNCTION_8_14();
    OUTLINED_FUNCTION_51_2();

    __asm { BRAA            X1, X16 }
  }

  v43 = *(v0 + 952);
  *(v0 + 1168) = *(v43 + 24);
  sub_220FC1130();
  v44 = *(v43 + 40);
  v45 = *v36;
  if (v44 == 2)
  {
    v46 = 0;
  }

  else
  {
    v46 = v45 ^ v44;
  }

  *(v0 + 833) = v46 & 1;
  v47 = *(v0 + 944);
  *(v43 + 40) = v45;
  v48 = sub_220FC1140();
  if (v47 == 0.0)
  {
    sub_220FC2B50();
    v53 = *(v0 + 1160);
    v54 = *(v0 + 1152);
    v55 = *(v0 + 1136);
    v68 = *(v0 + 1128);
    v56 = *(v0 + 1056);
    OUTLINED_FUNCTION_38_4();
    v69 = v57;
    LOBYTE(v70) = *(v10 + v58);
    sub_220F83268(v10 + v59, &v69, v54, v53);
    v60 = sub_220FC13B0();
    OUTLINED_FUNCTION_33();
    sub_220FC1520();

    OUTLINED_FUNCTION_0_33();
    sub_220EBE7C0(v10, v56);
    v61 = swift_allocObject();
    *(v61 + 16) = v68;
    *(v61 + 24) = v55;
    OUTLINED_FUNCTION_22_5(v61);

    sub_220FC13B0();
    *(v0 + 1192) = OUTLINED_FUNCTION_27_7();

    v62 = swift_task_alloc();
    *(v0 + 1200) = v62;
    *v62 = v0;
    OUTLINED_FUNCTION_18_5(v62);
    OUTLINED_FUNCTION_51_2();

    return MEMORY[0x2821D23D8](v48);
  }

  v49 = *(v0 + 944) * 1000000000.0;
  if (COERCE__INT64(fabs(v49)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v49 <= -1.0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v49 >= 1.84467441e19)
  {
LABEL_27:
    __break(1u);
    return MEMORY[0x2821D23D8](v48);
  }

  v50 = swift_task_alloc();
  *(v0 + 1176) = v50;
  *v50 = v0;
  v50[1] = sub_220EB8174;
  OUTLINED_FUNCTION_51_2();

  return MEMORY[0x282200480](v51);
}

uint64_t sub_220EB8174()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_45_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 1184) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220EB826C()
{
  v21 = v0;
  v2 = *(v0 + 148);
  sub_220FC2B50();
  v3 = *(v0 + 142);
  v4 = *(v0 + 141);
  if (v2)
  {
    v5 = *(v0 + 119);
    v6 = *(v0 + 117);
    v0[113] = v0[146];
    v7 = swift_task_alloc();
    v7[2] = v4;
    v7[3] = v3;
    v7[4] = v2;
    v7[5] = v5;
    v7[6] = v6;
    sub_220FC1180();
    OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_1_31();

    OUTLINED_FUNCTION_6_14();
    swift_willThrow();

    OUTLINED_FUNCTION_32_0();

    return v8();
  }

  else
  {
    v10 = v0[145];
    v11 = v0[144];
    v12 = *(v0 + 132);
    OUTLINED_FUNCTION_38_4();
    v20[0] = v13;
    v20[1] = *(v1 + v14);
    sub_220F83268(v1 + v15, v20, v11, v10);
    v16 = sub_220FC13B0();
    OUTLINED_FUNCTION_33();
    sub_220FC1520();

    OUTLINED_FUNCTION_0_33();
    sub_220EBE7C0(v1, v12);
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    *(v17 + 24) = v3;
    OUTLINED_FUNCTION_22_5(v17);

    sub_220FC13B0();
    *(v0 + 149) = OUTLINED_FUNCTION_27_7();

    v18 = swift_task_alloc();
    *(v0 + 150) = v18;
    *v18 = v0;
    v19 = OUTLINED_FUNCTION_18_5(v18);

    return MEMORY[0x2821D23D8](v19);
  }
}

uint64_t sub_220EB8534()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_7_7();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1208) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_220EB8658()
{
  OUTLINED_FUNCTION_64_2();
  *(v0 + 832) = *(v0 + 872);
  v3 = v2[1];
  *(v0 + 800) = *v2;
  *(v0 + 816) = v3;

  v4 = sub_220FC1780();
  sub_220FC2E30();
  OUTLINED_FUNCTION_71_0();
  if (OUTLINED_FUNCTION_53_2())
  {
    OUTLINED_FUNCTION_20_6();
    OUTLINED_FUNCTION_50();
    *v1 = 136446210;
    v5 = OUTLINED_FUNCTION_35_0();
    *(v1 + 4) = sub_220E20FF8(v5, v6, v7);
    OUTLINED_FUNCTION_19_6(&dword_220E15000, v8, v9, "Received camera focus. uuid=%{public}s");
    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_32_1();
  }

  v10 = *(v0 + 1208);
  sub_220FC2B50();
  if (v10)
  {
    v17 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_52_2(v17);
    OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_1_31();

    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_61_2();
    swift_willThrow();

    OUTLINED_FUNCTION_8_14();
    OUTLINED_FUNCTION_68_0();

    __asm { BRAA            X1, X16 }
  }

  v11 = *(v0 + 1160);
  v12 = *(v0 + 1152);
  sub_220F43DF8();
  *(v0 + 1216) = v13;
  *(v0 + 1224) = v14;
  *(v0 + 1232) = v15;
  *(v0 + 1240) = v16;
  *(v0 + 1248) = sub_220F43DA4(v12, v11);
  sub_220FC2B50();
  v20 = *(v0 + 1024);
  v21 = *(v0 + 1016);
  v22 = *(v0 + 1008);
  sub_220FC0FF0();
  *(v0 + 1256) = sub_220FC0FA0();
  *(v0 + 1264) = v23;
  v24 = *(v21 + 8);
  *(v0 + 1272) = v24;
  *(v0 + 1280) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v20, v22);
  OUTLINED_FUNCTION_62_1();
  *(v0 + 1288) = sub_220FA23F4(v25, v26, v27);
  v28 = swift_task_alloc();
  *(v0 + 1296) = v28;
  *v28 = v0;
  v28[1] = sub_220EB8998;
  OUTLINED_FUNCTION_68_0();

  return MEMORY[0x2821D23D8]();
}

uint64_t sub_220EB8998()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  OUTLINED_FUNCTION_7_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 1304) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220EB8AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_64_2();
  memcpy((v18 + 224), (v18 + 16), 0xCAuLL);

  v20 = sub_220FC1780();
  sub_220FC2E30();
  OUTLINED_FUNCTION_71_0();
  if (OUTLINED_FUNCTION_53_2())
  {
    OUTLINED_FUNCTION_20_6();
    a14 = OUTLINED_FUNCTION_50();
    *v19 = 136446210;
    v21 = OUTLINED_FUNCTION_35_0();
    *(v19 + 4) = sub_220E20FF8(v21, v22, v23);
    OUTLINED_FUNCTION_19_6(&dword_220E15000, v24, v25, "Got metadata. uuid=%{public}s");
    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_32_1();
  }

  v26 = *(v18 + 1304);
  sub_220FC2B50();
  if (v26)
  {
    sub_220EBEB0C(v18 + 224);

    v27 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_52_2(v27);
    OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_1_31();

    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_6_14();
    swift_willThrow();

    OUTLINED_FUNCTION_8_14();
    OUTLINED_FUNCTION_33_4();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v66 = *(v18 + 1032);
    v37 = *(v18 + 1000);
    v38 = *(v18 + 976);
    v39 = *(v18 + 968);
    v40 = *(v18 + 952);
    sub_220FC0670();
    v41 = *(v18 + 408);
    v42 = *(v18 + 416);
    memcpy((v18 + 432), (v18 + 224), 0xB8uLL);
    v43 = *(v18 + 424);
    __swift_project_boxed_opaque_existential_1(v40 + 21, v40[24]);
    v44 = *(v39 + 28);
    sub_220EA10E4(v41, v42);
    sub_220E56868(v18 + 224, v18 + 616);
    sub_220F7AC60((v18 + 432), v37, v38 + v44);
    *v38 = v41;
    *(v38 + 8) = v42;
    memcpy((v38 + 16), (v18 + 432), 0xB8uLL);
    *(v38 + 200) = v43;
    __swift_project_boxed_opaque_existential_1(v40 + 28, v40[31]);
    sub_220FC0AB0();
    sub_220FC0A90();
    if (qword_2812CA238 != -1)
    {
      swift_once();
    }

    sub_220FC0A80();

    if (*(v18 + 426) == 1)
    {
      OUTLINED_FUNCTION_50_2();
      v47 = sub_220EA20A0(v45, v46);
    }

    else
    {
      OUTLINED_FUNCTION_50_2();
      v47 = sub_220F5F40C(v51, v52);
    }

    *(v18 + 218) = v48;
    *(v18 + 834) = v48 & 1;
    v53 = *(v18 + 976);
    v54 = *(v18 + 952);
    v55 = *(v18 + 936);
    *(v18 + 1312) = v50;
    *(v18 + 1320) = v49;
    *(v18 + 1328) = v47;
    v56 = swift_task_alloc();
    *(v18 + 1336) = v56;
    v56[2] = v54;
    v56[3] = v55;
    v56[4] = v53;
    v57 = swift_task_alloc();
    *(v18 + 1344) = v57;
    *v57 = v18;
    v57[1] = sub_220EB8E44;
    OUTLINED_FUNCTION_33_4();

    return v60(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, v66, sub_220EBA934, a14, a15, a16, a17, a18);
  }
}

void sub_220EB8E44()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  OUTLINED_FUNCTION_7_7();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1352) = v5;

  if (v0)
  {
  }

  else
  {
    sub_220EBEB0C(v3 + 224);

    OUTLINED_FUNCTION_33();

    MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_220EB8F7C()
{
  OUTLINED_FUNCTION_64_2();

  v2 = sub_220FC1780();
  sub_220FC2E30();
  OUTLINED_FUNCTION_71_0();
  if (OUTLINED_FUNCTION_53_2())
  {
    OUTLINED_FUNCTION_20_6();
    OUTLINED_FUNCTION_50();
    *v1 = 136446210;
    v3 = OUTLINED_FUNCTION_35_0();
    *(v1 + 4) = sub_220E20FF8(v3, v4, v5);
    OUTLINED_FUNCTION_19_6(&dword_220E15000, v6, v7, "Start base map capture. uuid=%{public}s");
    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_32_1();
  }

  v8 = *(v0 + 1352);
  v9 = *(v0 + 834);
  v10 = *(v0 + 218) & 0x100;
  v11 = v8;
  v12 = swift_task_alloc();
  *(v0 + 1360) = v12;
  *v12 = v0;
  v12[1] = sub_220EB90CC;
  v16 = OUTLINED_FUNCTION_55_1();
  v20 = *(v0 + 936);

  return sub_220EBAA98(v20, v13, v10 | v9, v14, v15, v8, v16, v17, v18, v19);
}

uint64_t sub_220EB90CC()
{
  OUTLINED_FUNCTION_32();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7_7();
  *v6 = v5;
  *(v3 + 1368) = v7;
  *(v3 + 1376) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_220EB9210()
{
  v1 = *(v0 + 1368);
  v2 = *(v0 + 960);
  v3 = *(v0 + 936);
  v4 = [v1 image];
  v5 = [v1 image];
  [v5 scale];

  v6 = sub_220FC17B0();
  OUTLINED_FUNCTION_8_13(v6);
  v7 = sub_220FC3230();

  sub_220E3B2DC(v2, &qword_27CF9E340);
  v8 = [v7 CGImage];
  *(v0 + 1384) = v8;

  if (!v8)
  {
    v19 = *(v0 + 1368);
    v20 = *(v0 + 1352);
    v21 = *(v0 + 1312);
    v22 = *(v0 + 1000);
    v23 = *(v0 + 992);
    v24 = *(v0 + 984);
    v25 = *(v0 + 976);

    sub_220EBEBA4();
    v26 = swift_allocError();
    *v27 = 0;
    v28 = v26;
    swift_willThrow();

    (*(v23 + 8))(v22, v24);
    OUTLINED_FUNCTION_3_23();
    sub_220EBE818();
    v29 = OUTLINED_FUNCTION_4_22();
    v29[2] = v21;
    v29[3] = v22;
    v29[4] = v28;
    v29[5] = v19;
    v29[6] = v25;
    sub_220FC1180();
    OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_1_31();

    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_61_2();
    swift_willThrow();

    OUTLINED_FUNCTION_8_14();
    OUTLINED_FUNCTION_72_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_64_2();

  v9 = sub_220FC1780();
  sub_220FC2E30();
  OUTLINED_FUNCTION_71_0();
  if (OUTLINED_FUNCTION_53_2())
  {
    OUTLINED_FUNCTION_20_6();
    OUTLINED_FUNCTION_50();
    *v3 = 136446210;
    v10 = OUTLINED_FUNCTION_35_0();
    *(v3 + 4) = sub_220E20FF8(v10, v11, v12);
    OUTLINED_FUNCTION_19_6(&dword_220E15000, v13, v14, "Finalise base map capture. uuid=%{public}s");
    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_32_1();
  }

  v15 = *(v0 + 1264);
  *(v0 + 880) = *(v0 + 1256);
  *(v0 + 888) = v15;
  *(v0 + 896) = 1;
  v16 = swift_task_alloc();
  *(v0 + 1392) = v16;
  *v16 = v0;
  v16[1] = sub_220EB95B8;
  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_72_0();

  return sub_220EBAF54();
}

uint64_t sub_220EB95B8()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  OUTLINED_FUNCTION_7_7();
  *v4 = v3;
  *v4 = *v1;
  v3[175] = v5;
  v3[176] = v6;
  v3[177] = v7;
  v3[178] = v8;
  v3[179] = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_220EB96D8()
{
  v3 = *(v0 + 1400);
  if (v3 == 1)
  {
    v4 = 0;
    v5 = 0;
    v77 = 0;
    v78 = 0xF000000000000000;
  }

  else
  {
    v6 = *(v0 + 1424);
    v7 = *(v0 + 1416);
    v8 = *(v0 + 1408);
    v9 = v8;
    v10 = v3;
    v11 = v9;
    v12 = v10;
    sub_220E567E8(v7, v6);
    sub_220EBEC48(v3, v8, v7, v6);
    v13 = v12;
    v77 = *(v0 + 1416);
    v78 = *(v0 + 1424);
    v5 = *(v0 + 1408);
    v4 = *(v0 + 1400);
  }

  v14 = sub_220EBB35C(v4);

  v75 = v5;
  if (v3 == 1)
  {
    v15 = 0;
  }

  else
  {

    v15 = v5;
  }

  v16 = sub_220EBB35C(v15);

  v68 = v16;
  v66 = v16;

  v71 = v14;
  v60 = v14;
  v17 = sub_220FC1780();
  sub_220FC2E30();

  if (OUTLINED_FUNCTION_53_2())
  {
    OUTLINED_FUNCTION_20_6();
    OUTLINED_FUNCTION_50();
    *v14 = 136446210;
    v18 = OUTLINED_FUNCTION_35_0();
    *(v14 + 1) = sub_220E20FF8(v18, v19, v20);
    OUTLINED_FUNCTION_19_6(&dword_220E15000, v21, v22, "Done making snapshot. uuid=%{public}s");
    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_32_1();
  }

  v69 = *(v0 + 1400);
  v23 = *(v0 + 1384);
  v24 = *(v0 + 1368);
  v64 = v24;
  v74 = *(v0 + 1352);
  v54 = *(v0 + 1320);
  v52 = *(v0 + 1328);
  v53 = *(v0 + 1312);
  v51 = *(v0 + 834);
  v59 = *(v0 + 1272);
  v25 = *(v0 + 1248);
  v65 = *(v0 + 1136);
  v62 = *(v0 + 1168);
  v63 = *(v0 + 1128);
  v76 = *(v0 + 1056);
  v55 = *(v0 + 1032);
  v56 = *(v0 + 1024);
  v57 = *(v0 + 1008);
  v70 = *(v0 + 992);
  v72 = *(v0 + 984);
  v73 = *(v0 + 1000);
  v26 = *(v0 + 976);
  v27 = *(v0 + 952);
  v28 = *(v0 + 219) & 1;
  v49 = *(v0 + 1232);
  v50 = *(v0 + 1216);
  v29 = *(v0 + 936);
  v30 = *(v0 + 928);
  sub_220FC0FE0();
  [v24 pointForCoordinate_];
  v31 = OUTLINED_FUNCTION_47_2();
  v32 = type metadata accessor for SnapshotManager.Snapshot(v31);
  OUTLINED_FUNCTION_24_5();
  sub_220EBE7C0(v26, v30 + v33);
  v34 = v32[10];
  sub_220EBE7C0(v29, v30 + v34);
  *v30 = v1;
  *(v30 + 8) = v2;
  *(v30 + 16) = v23;
  v35 = *(v0 + 832);
  v36 = *(v0 + 816);
  *(v30 + 24) = *(v0 + 800);
  *(v30 + 40) = v36;
  *(v30 + 56) = v35;
  v61 = v60;
  v58 = v66;
  v67 = v23;
  sub_220E567E8(v77, v78);
  sub_220FC0670();
  v37 = (v30 + v32[8]);
  *v37 = v71;
  v37[1] = v68;
  v38 = v30 + v32[11];
  *v38 = v52;
  *(v38 + 8) = v51;
  *(v38 + 9) = v28;
  *(v38 + 16) = v54;
  *(v38 + 24) = v53;
  v39 = (v30 + v32[12]);
  *v39 = v77;
  v39[1] = v78;
  *(v30 + v32[13]) = v25;
  v40 = (v30 + v32[14]);
  *v40 = v50;
  v40[1] = v49;
  __swift_project_boxed_opaque_existential_1(v27 + 16, v27[19]);
  sub_220EBE7C0(v30 + v34, v76);
  v41 = *(v55 + 20);
  sub_220FC0FF0();
  sub_220FC1070();
  OUTLINED_FUNCTION_2();
  (*(v42 + 8))(v76 + v41);
  v43 = sub_220FC0F70();
  v45 = v44;
  v59(v56, v57);
  __swift_project_boxed_opaque_existential_1(v27 + 33, v27[36]);
  sub_220F14068();
  sub_220E5E3D0(v43, v45);
  *(v0 + 912) = v62;
  v46 = swift_task_alloc();
  v46[2] = v63;
  v46[3] = v65;
  v46[4] = v27;
  v46[5] = v29;
  sub_220FC1180();

  sub_220FC1370();

  sub_220EBEC04(v69, v75);
  sub_220E56854(v77, v78);

  (*(v70 + 8))(v73, v72);
  *(v30 + *(type metadata accessor for SnapshotManager.SnapshotResult(0) + 20)) = 0;
  OUTLINED_FUNCTION_3_23();
  sub_220EBE818();

  OUTLINED_FUNCTION_32_0();

  return v47();
}

uint64_t sub_220EB9CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_39_2();
  v29 = *(v18 + 1184);
  v19 = OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_12_8(v19);
  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_1_31();

  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_6_14();
  OUTLINED_FUNCTION_54_2();

  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_33_4();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, v29, a15, a16, a17, a18);
}

uint64_t sub_220EB9DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_39_2();
  v29 = *(v18 + 1208);
  v19 = OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_12_8(v19);
  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_1_31();

  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_6_14();
  OUTLINED_FUNCTION_54_2();

  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_33_4();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, v29, a15, a16, a17, a18);
}

uint64_t sub_220EB9EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_39_2();
  v29 = *(v18 + 1304);
  v19 = OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_12_8(v19);
  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_1_31();

  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_6_14();
  OUTLINED_FUNCTION_54_2();

  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_33_4();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, v29, a15, a16, a17, a18);
}

uint64_t sub_220EB9FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_39_2();

  v19 = OUTLINED_FUNCTION_0_30();
  v20(v19);
  OUTLINED_FUNCTION_3_23();
  sub_220EBE818();
  v31 = *(v18 + 1376);
  v21 = OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_12_8(v21);
  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_1_31();

  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_6_14();
  OUTLINED_FUNCTION_54_2();

  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_33_4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, v31, a15, a16, a17, a18);
}

uint64_t sub_220EBA11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_39_2();
  v19 = *(v18 + 1384);
  v20 = *(v18 + 1352);
  v21 = *(v18 + 1000);
  v22 = *(v18 + 992);
  v23 = *(v18 + 984);

  (*(v22 + 8))(v21, v23);

  OUTLINED_FUNCTION_3_23();
  sub_220EBE818();
  v34 = *(v18 + 1432);
  v24 = OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_12_8(v24);
  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_1_31();

  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_6_14();
  OUTLINED_FUNCTION_54_2();

  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_33_4();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, v34, a15, a16, a17, a18);
}

double sub_220EBA270@<D0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (qword_2812C5EF8 != -1)
  {
    swift_once();
  }

  v11 = sub_220FC17A0();
  __swift_project_value_buffer(v11, qword_2812C5F00);

  v12 = a1;
  v13 = sub_220FC1780();
  v14 = sub_220FC2E10();

  if (os_log_type_enabled(v13, v14))
  {
    v24 = a5;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v26[0] = v16;
    *v15 = 136446466;
    *(v15 + 4) = sub_220E20FF8(a2, a3, v26);
    *(v15 + 12) = 2082;
    swift_getErrorValue();
    v17 = sub_220FC39D0();
    v19 = sub_220E20FF8(v17, v18, v26);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_220E15000, v13, v14, "Unable to determine best zoomLevel for Map Embed. uuid=%{public}s, error=%{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D9DDF0](v16, -1, -1);
    v20 = v15;
    a5 = v24;
    MEMORY[0x223D9DDF0](v20, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((a4 + 88), *(a4 + 112));
  v21 = type metadata accessor for SnapshotManager.Options(0);
  v29 = *(a5 + *(v21 + 24));
  v28 = *(a5 + *(v21 + 48));
  sub_220F83734(&v29, v26);
  result = *v26;
  v23 = v26[1];
  *a6 = v26[0];
  *(a6 + 16) = v23;
  *(a6 + 32) = v27;
  return result;
}

id sub_220EBA4A8(uint64_t a1, uint64_t (*a2)())
{
  v69 = a2;
  v4 = type metadata accessor for WeatherMapAnnotationViewModel();
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v53 - v11;
  v13 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  MEMORY[0x28223BE20](v13, v14);
  v72 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v53 - v18;
  v20 = type metadata accessor for SnapshotManager.Options(0);
  v21 = v20[5];
  v22 = sub_220FC1070();
  (*(*(v22 - 8) + 16))(v19, a1 + v21, v22);
  v68 = v19;
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  v23 = v20[6];
  v70 = a1;
  v71 = v23;
  v73 = *(a1 + v23);
  memcpy(v76, v69 + 16, sizeof(v76));
  sub_220F1505C(v74);
  memcpy(v75, v74, sizeof(v75));
  sub_220F6E0C4(v19, &v73, v75, 0, *(a1 + v20[10]), v8);
  sub_220E31784(v74);
  v24 = *v8;
  v57 = *(v8 + 1);
  v58 = v24;
  v54 = *(v8 + 2);
  v25 = v8[24];
  v26 = v8[25];
  v63 = v8[26];
  v64 = v26;
  v27 = *(v8 + 4);
  v28 = *(v8 + 5);
  v29 = *(v8 + 7);
  v66 = *(v8 + 6);
  v67 = v27;
  v59 = v29;
  v60 = v28;
  v65 = v8[64];
  sub_220EBE7C0(&v8[v5[11]], &v12[v5[11]]);
  v30 = *&v8[v5[12]];
  v55 = *&v8[v5[13]];
  v56 = v30;
  v31 = v5[15];
  v69 = *&v8[v5[14]];
  v32 = *&v8[v31];
  v33 = *&v8[v31 + 8];
  v34 = &v8[v5[16]];
  v35 = *(v34 + 1);
  v61 = *v34;
  v62 = v32;
  v36 = v54;
  sub_220E5696C();

  v56 = v56;
  v55 = v55;
  v37 = v69;
  v38 = v33;

  v39 = v60;

  v69 = type metadata accessor for WeatherMapAnnotationViewModel;
  sub_220EBE818();
  v40 = v57;
  *v12 = v58;
  *(v12 + 1) = v40;
  *(v12 + 2) = v36;
  v12[24] = v25;
  LOBYTE(v40) = v63;
  v12[25] = v64;
  v12[26] = v40;
  v12[27] = 0;
  v41 = v66;
  *(v12 + 4) = v67;
  *(v12 + 5) = v39;
  v42 = v59;
  *(v12 + 6) = v41;
  *(v12 + 7) = v42;
  v12[64] = v65;
  v43 = v55;
  *&v12[v5[12]] = v56;
  *&v12[v5[13]] = v43;
  *&v12[v5[14]] = v37;
  v44 = &v12[v5[15]];
  v45 = v61;
  *v44 = v62;
  *(v44 + 1) = v38;
  v46 = &v12[v5[16]];
  *v46 = v45;
  *(v46 + 1) = v35;
  v47 = v72;
  sub_220EBE7C0(v68, v72);
  v73 = *(v70 + v71);
  v48 = objc_allocWithZone(type metadata accessor for WeatherMapAnnotation());
  v49 = sub_220FBF76C(v47, &v73);
  sub_220EBE7C0(v12, v8);
  objc_allocWithZone(type metadata accessor for WeatherMapAnnotationView());
  v50 = v49;
  v51 = sub_220F86A3C(v50, v8, 0);
  [v51 _setSkipDrawingForSnapshots_];
  [v51 sizeToFit];

  sub_220EBE818();
  sub_220EBE818();
  return v51;
}

uint64_t sub_220EBA934(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_220EBA954, 0, 0);
}

uint64_t sub_220EBA954()
{
  OUTLINED_FUNCTION_19();
  sub_220FC2AB0();
  *(v0 + 40) = sub_220FC2AA0();
  OUTLINED_FUNCTION_60_2();
  v2 = sub_220FC2A30();

  return MEMORY[0x2822009F8](sub_220EBA9E0, v2, v1);
}

uint64_t sub_220EBA9E0()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[3];

  v1(v2);
  v3 = v0[2];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_220EBAA98(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  *(v11 + 88) = a6;
  *(v11 + 96) = v10;
  *(v11 + 72) = a4;
  *(v11 + 80) = a5;
  *(v11 + 152) = a3;
  *(v11 + 64) = a2;
  *(v11 + 48) = a9;
  *(v11 + 56) = a10;
  *(v11 + 32) = a7;
  *(v11 + 40) = a8;
  *(v11 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  *(v11 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220EBAB4C, 0, 0);
}

uint64_t sub_220EBAB4C()
{
  v1 = *(v0 + 88);
  v2 = sub_220EBB984(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  *(v0 + 112) = v2;
  if (v1)
  {
    v3 = *(v0 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DBB0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_220FC8F40;
    *(v4 + 32) = v3;
    v5 = v3;
    v6 = OUTLINED_FUNCTION_9();
    sub_220EBE73C(v6, v7);
  }

  v8 = *(v0 + 96);
  v9 = [objc_allocWithZone(MEMORY[0x277CD4EC0]) initWithOptions_];
  *(v0 + 120) = v9;
  v10 = sub_220FC2AE0();
  OUTLINED_FUNCTION_8_13(v10);
  sub_220FC2AB0();
  v11 = v9;

  v12 = sub_220FC2AA0();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  v13[5] = v8;
  sub_220E8644C();
  v16 = v15;
  *(v0 + 128) = v15;
  v17 = swift_task_alloc();
  *(v0 + 136) = v17;
  v18 = sub_220E1966C(0, &qword_2812C5CF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
  *v17 = v0;
  v17[1] = sub_220EBAD5C;
  v20 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 16, v16, v18, v19, v20);
}

uint64_t sub_220EBAD5C()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_45_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220EBAE70()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 120);

  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_220EBAEE8()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 120);

  OUTLINED_FUNCTION_32_0();

  return v2();
}

uint64_t sub_220EBAF54()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  *(v1 + 104) = v4;
  *(v1 + 112) = v0;
  *(v1 + 33) = v5;
  *(v1 + 96) = v6;
  *(v1 + 80) = v7;
  *(v1 + 88) = v8;
  *(v1 + 64) = v9;
  *(v1 + 72) = v10;
  *(v1 + 48) = v11;
  *(v1 + 56) = v12;
  *(v1 + 40) = v13;
  v14 = type metadata accessor for SnapshotOverlayComposeRequest();
  *(v1 + 120) = v14;
  OUTLINED_FUNCTION_8_0(v14);
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = *v3;
  *(v1 + 34) = *(v3 + 16);
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_220EBB008()
{
  v19 = *(v0 + 34);
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = *(v0 + 96);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v17 = *(v0 + 80);
  v18 = *(v0 + 64);
  OUTLINED_FUNCTION_24_5();
  sub_220EBE7C0(v11, v3 + v10);
  OUTLINED_FUNCTION_0_33();
  sub_220EBE7C0(v8, v3 + v12);
  *v3 = v9;
  *(v3 + 24) = v17;
  *(v3 + 8) = v18;
  v13 = (v3 + *(v4 + 28));
  *v13 = v7;
  v13[1] = v5;
  __swift_project_boxed_opaque_existential_1((v6 + 304), *(v6 + 328));
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = v19;

  v14 = v9;
  v15 = swift_task_alloc();
  *(v0 + 152) = v15;
  *v15 = v0;
  v15[1] = sub_220EBB160;

  return sub_220E69934();
}

uint64_t sub_220EBB160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_27_0();
  v11 = v10;
  OUTLINED_FUNCTION_7_7();
  *v12 = v11;
  v13 = *v5;
  OUTLINED_FUNCTION_8();
  *v14 = v13;
  v11[20] = v4;

  if (!v4)
  {
    v11[21] = a4;
    v11[22] = a3;
    v11[23] = a2;
    v11[24] = a1;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_220EBB290()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_26_5();

  v1 = v0[1];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];

  return v1(v2, v3, v4, v5);
}

uint64_t sub_220EBB2FC()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_26_5();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

id sub_220EBB35C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E340);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v13 - v4;
  if (!a1)
  {
    return 0;
  }

  v6 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v7 = a1;
  v8 = [v6 initWithCGImage_];
  [v8 size];
  [v8 scale];
  type metadata accessor for SnapshotManager.Options(0);
  v9 = sub_220FC17B0();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  v10 = sub_220FC3230();
  sub_220E3B2DC(v5, &qword_27CF9E340);
  v11 = [v10 CGImage];

  return v11;
}

uint64_t sub_220EBB4F0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SnapshotManager.Options.Key(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812C5EF8 != -1)
  {
    swift_once();
  }

  v11 = sub_220FC17A0();
  __swift_project_value_buffer(v11, qword_2812C5F00);

  v12 = sub_220FC1780();
  v13 = sub_220FC2E30();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_220E20FF8(a1, a2, v25);
    _os_log_impl(&dword_220E15000, v12, v13, "Clear out running task. uuid=%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223D9DDF0](v15, -1, -1);
    MEMORY[0x223D9DDF0](v14, -1, -1);
  }

  sub_220EBE7C0(a4, v10);
  swift_beginAccess();
  sub_220E96F68(v10, v16, v17, v18, v19, v20, v21, v22, v24, v25[0]);
  sub_220EBE818();
  swift_endAccess();
}

uint64_t sub_220EBB704(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for SnapshotManager.Options.Key(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812C5EF8 != -1)
  {
    swift_once();
  }

  v13 = sub_220FC17A0();
  __swift_project_value_buffer(v13, qword_2812C5F00);

  v14 = a3;
  v15 = sub_220FC1780();
  v16 = sub_220FC2E30();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32[0] = a5;
    v19 = v18;
    v33[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_220E20FF8(a1, a2, v33);
    *(v17 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_220FC39D0();
    v22 = sub_220E20FF8(v20, v21, v33);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_220E15000, v15, v16, "Clear out running task after error. uuid=%s, error=%s", v17, 0x16u);
    swift_arrayDestroy();
    v23 = v19;
    a5 = v32[0];
    MEMORY[0x223D9DDF0](v23, -1, -1);
    MEMORY[0x223D9DDF0](v17, -1, -1);
  }

  sub_220EBE7C0(a5, v12);
  swift_beginAccess();
  sub_220E96F68(v12, v24, v25, v26, v27, v28, v29, v30, v32[0], v32[1]);
  sub_220EBE818();
  swift_endAccess();
}

id sub_220EBB984(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = [objc_opt_self() currentTraitCollection];
  v11 = sub_220FC3000();

  v12 = [objc_allocWithZone(MEMORY[0x277CD4EB8]) init];
  [v12 setMapRect_];
  v13 = type metadata accessor for SnapshotManager.Options(0);
  if (*(a1 + v13[6]) == 5)
  {
    v14 = &selRef_configureForWeatherWind;
  }

  else
  {
    v14 = &selRef_configureForWeather;
  }

  [v12 *v14];
  sub_220E1966C(0, &qword_2812C5C10);
  v15 = sub_220FB94AC();
  [v12 setPointOfInterestFilter_];

  [v12 setScale_];
  [v12 setSize_];
  [v12 setTraitCollection_];
  [v12 _setShowsRoadLabels_];
  [v12 _setShowsRoadShields_];
  [v12 _setRendersInBackground_];

  return v12;
}

uint64_t sub_220EBBB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[19] = a1;
  sub_220FC2AB0();
  v5[22] = sub_220FC2AA0();
  v7 = sub_220FC2A30();
  v5[23] = v7;
  v5[24] = v6;

  return MEMORY[0x2822009F8](sub_220EBBC04, v7, v6);
}

uint64_t sub_220EBBC04()
{
  v1 = v0[20];
  v2 = *(v0[21] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_220EBBD30;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E350);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_220EBBF24;
  v0[13] = &block_descriptor_9;
  v0[14] = v3;
  [v1 startWithQueue:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_220EBBD30()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_45_2();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 200) = v4;
  v5 = v3[24];
  v6 = v3[23];
  if (v4)
  {
    v7 = sub_220EBBEB8;
  }

  else
  {
    v7 = sub_220EBBE50;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_220EBBE50()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 152);

  *v1 = *(v0 + 144);
  OUTLINED_FUNCTION_32_0();

  return v2();
}

uint64_t sub_220EBBEB8()
{
  OUTLINED_FUNCTION_32();

  swift_willThrow();
  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t *sub_220EBBF24(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_220EBBFB4(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_220EBC020(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220EBBFB4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_220EBC040(uint64_t a1)
{
  type metadata accessor for SnapshotManager.Options(0);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  return sub_220FC1860();
}

uint64_t sub_220EBC0BC()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 48);
  __swift_destroy_boxed_opaque_existential_0(v0 + 88);
  __swift_destroy_boxed_opaque_existential_0(v0 + 128);
  __swift_destroy_boxed_opaque_existential_0(v0 + 168);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 224);
  __swift_destroy_boxed_opaque_existential_0(v0 + 264);
  __swift_destroy_boxed_opaque_existential_0(v0 + 304);
  return v0;
}

uint64_t sub_220EBC12C()
{
  sub_220EBC0BC();

  return MEMORY[0x2821FE8D8](v0, 344, 7);
}

uint64_t getEnumTagSinglePayload for SnapshotManager.Options.Weather(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 7;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 6)
  {
    v7 = 6;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 7;
  if (v6 < 6)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SnapshotManager.Options.Weather(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_220EBC378()
{
  result = type metadata accessor for SnapshotManager.Options(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_220EBC42C()
{
  type metadata accessor for CGPoint(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGImage(319);
    if (v1 <= 0x3F)
    {
      sub_220FC02B0();
      if (v2 <= 0x3F)
      {
        type metadata accessor for WeatherMapOverlay();
        if (v3 <= 0x3F)
        {
          type metadata accessor for SnapshotManager.Options(319);
          if (v4 <= 0x3F)
          {
            sub_220EBC548();
            if (v5 <= 0x3F)
            {
              type metadata accessor for MKMapRect(319);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_220EBC548()
{
  if (!qword_2812CA298)
  {
    v0 = sub_220FC33A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2812CA298);
    }
  }
}

uint64_t sub_220EBC5E0()
{
  result = type metadata accessor for SnapshotManager.Snapshot(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220EBC654()
{
  OUTLINED_FUNCTION_19();
  v1[14] = v0;
  v1[13] = v2;
  v1[11] = v3;
  v1[12] = v4;
  v5 = type metadata accessor for SnapshotManager.Options.Key(0);
  OUTLINED_FUNCTION_8_0(v5);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D080);
  OUTLINED_FUNCTION_8_0(v6);
  v1[17] = swift_task_alloc();
  v7 = type metadata accessor for SnapshotManager.Snapshot(0);
  v1[18] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v1[19] = swift_task_alloc();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_220EBC74C()
{
  v2 = *(v0 + 17);
  v1 = *(v0 + 18);
  sub_220EBCE38(*(v0 + 12), v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 14);
    sub_220E3B2DC(*(v0 + 17), &qword_27CF9D080);
    sub_220FC1130();
    OUTLINED_FUNCTION_0_33();
    v5 = OUTLINED_FUNCTION_35_0();
    sub_220EBE7C0(v5, v6);
    swift_beginAccess();
    v7 = sub_220F62CF8(v3, *(v4 + 32));
    if (!v8)
    {
      v26 = *(v0 + 15);
      v27 = v0[13];
      v28 = *(v0 + 12);
      swift_endAccess();
      sub_220EBE818();
      sub_220EB7554(v28, v27);
      v30 = v29;
      OUTLINED_FUNCTION_0_33();
      sub_220EBE7C0(v28, v26);
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_65_0();
      sub_220E97B9C(1, v30, v26);
      *(v4 + 32) = v36;
      sub_220EBE818();
      swift_endAccess();

LABEL_13:
      *(v0 + 20) = v30;
      v31 = *(v0 + 14);
      v32 = *(v0 + 12);

      sub_220FC1140();
      v33 = swift_task_alloc();
      *(v0 + 21) = v33;
      *(v33 + 16) = v31;
      *(v33 + 24) = v32;
      v34 = swift_task_alloc();
      *(v0 + 22) = v34;
      type metadata accessor for SnapshotManager.SnapshotResult(0);
      *v34 = v0;
      v34[1] = sub_220EBCBE4;
      v35 = *(v0 + 11);

      return MEMORY[0x282200830](v35, &unk_220FCFC20);
    }

    v9 = v7;
    v10 = v8;
    swift_endAccess();

    OUTLINED_FUNCTION_23_4();
    sub_220EBE818();
    v11 = __OFADD__(v9, 1);
    v12 = v9 + 1;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      v13 = *(v0 + 15);
      OUTLINED_FUNCTION_0_33();
      sub_220EBE7C0(v14, v13);
      swift_beginAccess();
      swift_retain_n();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_65_0();
      v15 = OUTLINED_FUNCTION_35_0();
      sub_220E97B9C(v15, v16, v13);
      *(v4 + 32) = v36;
      OUTLINED_FUNCTION_23_4();
      sub_220EBE818();
      swift_endAccess();
      if (qword_2812C5EF8 == -1)
      {
LABEL_5:
        v17 = sub_220FC17A0();
        __swift_project_value_buffer(v17, qword_2812C5F00);

        v18 = sub_220FC1780();
        v19 = sub_220FC2E30();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 134217984;

          *(v20 + 4) = v12;

          _os_log_impl(&dword_220E15000, v18, v19, "Increment interest count to %ld", v20, 0xCu);
          OUTLINED_FUNCTION_15();
        }

        else
        {
        }

        v30 = v10;
        goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_5_15();
    goto LABEL_5;
  }

  v21 = *(v0 + 11);
  sub_220EBE904(*(v0 + 17), *(v0 + 19));
  v22 = OUTLINED_FUNCTION_0_30();
  sub_220EBE904(v22, v23);
  *(v21 + *(type metadata accessor for SnapshotManager.SnapshotResult(0) + 20)) = 1;

  OUTLINED_FUNCTION_32_0();

  return v24();
}

uint64_t sub_220EBCBE4()
{
  OUTLINED_FUNCTION_32();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_220EBCD1C()
{
  OUTLINED_FUNCTION_32();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t sub_220EBCDA8()
{
  OUTLINED_FUNCTION_32();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t sub_220EBCE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a2;
  v5 = type metadata accessor for SnapshotManager.Options(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_3();
  v45 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D080);
  v11 = OUTLINED_FUNCTION_8_0(v10);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v45 - v13;
  v48 = type metadata accessor for SnapshotManager.Snapshot(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_3();
  v46 = v18 - v17;
  v19 = sub_220FC0FD0();
  OUTLINED_FUNCTION_6();
  v21 = v20;
  MEMORY[0x28223BE20](v22, v23);
  OUTLINED_FUNCTION_3();
  v26 = v25 - v24;
  __swift_project_boxed_opaque_existential_1(v3 + 16, v3[19]);
  v47 = v5;
  sub_220FC0FF0();
  v27 = sub_220FC0F70();
  v29 = v28;
  (*(v21 + 8))(v26, v19);
  __swift_project_boxed_opaque_existential_1(v3 + 33, v3[36]);
  OUTLINED_FUNCTION_35_0();
  sub_220F13DB0();
  v30 = v27;
  v31 = v48;
  sub_220E5E3D0(v30, v29);
  if (__swift_getEnumTagSinglePayload(v14, 1, v31) == 1)
  {
    sub_220E3B2DC(v14, &qword_27CF9D080);
LABEL_5:
    v33 = 1;
    v34 = v49;
    return __swift_storeEnumTagSinglePayload(v34, v33, 1, v31);
  }

  OUTLINED_FUNCTION_25_6();
  v32 = v46;
  sub_220EBE904(v14, v46);
  if (*(a1 + *(v47 + 44)) != *(v32 + *(v31 + 40) + *(v47 + 44)))
  {
    __swift_project_boxed_opaque_existential_1(v3 + 33, v3[36]);
    sub_220F1451C();
    OUTLINED_FUNCTION_9_10();
    goto LABEL_5;
  }

  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v35 = sub_220FC17A0();
  __swift_project_value_buffer(v35, qword_2812C5ED0);
  OUTLINED_FUNCTION_0_33();
  sub_220EBE7C0(a1, v45);
  v36 = sub_220FC1780();
  v37 = sub_220FC2E30();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v50 = v39;
    *v38 = 141558275;
    *(v38 + 4) = 1752392040;
    *(v38 + 12) = 2081;
    sub_220FC1040();
    OUTLINED_FUNCTION_29_5();
    v40 = OUTLINED_FUNCTION_9();
    v43 = sub_220E20FF8(v40, v41, v42);

    *(v38 + 14) = v43;
    _os_log_impl(&dword_220E15000, v36, v37, "Return cached snapshot. location=%{private,mask.hash}s", v38, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v39);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  else
  {

    OUTLINED_FUNCTION_29_5();
  }

  v34 = v49;
  OUTLINED_FUNCTION_25_6();
  sub_220EBE904(v32, v34);
  v33 = 0;
  return __swift_storeEnumTagSinglePayload(v34, v33, 1, v31);
}

uint64_t sub_220EBD234(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for SnapshotManager.SnapshotResult(0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
  *v5 = v2;
  v5[1] = sub_220E5B0F0;
  v8 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a2, v6, v7, v8);
}

uint64_t sub_220EBD310(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnapshotManager.Options.Key(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v30 - v10;
  sub_220FC1130();
  if (qword_2812C5EF8 != -1)
  {
    swift_once();
  }

  v12 = sub_220FC17A0();
  __swift_project_value_buffer(v12, qword_2812C5F00);
  v13 = sub_220FC1780();
  v14 = sub_220FC2E30();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_220E15000, v13, v14, "Receive merged task cancellation request", v15, 2u);
    MEMORY[0x223D9DDF0](v15, -1, -1);
  }

  sub_220EBE7C0(a2, v11);
  swift_beginAccess();
  v16 = sub_220F62CF8(v11, *(a1 + 32));
  v18 = v17;
  if (v17)
  {
    v19 = v16;
    swift_endAccess();

    result = sub_220EBE818();
    v21 = v19 - 1;
    if (__OFSUB__(v19, 1))
    {
      __break(1u);
      return result;
    }

    v22 = sub_220FC1780();
    v23 = sub_220FC2E30();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;

      *(v24 + 4) = v21;

      _os_log_impl(&dword_220E15000, v22, v23, "Decrement interest count to %ld", v24, 0xCu);
      MEMORY[0x223D9DDF0](v24, -1, -1);
    }

    else
    {
    }

    v25 = sub_220FC1780();
    v26 = sub_220FC2E30();
    v27 = os_log_type_enabled(v25, v26);
    if (v21)
    {
      if (v27)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_220E15000, v25, v26, "Interest != 0 - don't cancel snapshot task yet", v28, 2u);
        MEMORY[0x223D9DDF0](v28, -1, -1);
      }

      sub_220EBE7C0(a2, v7);
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v30 = *(a1 + 32);
      sub_220E97B9C(v21, v18, v7);
      *(a1 + 32) = v30;
      sub_220EBE818();
      swift_endAccess();

      v18 = 0;
    }

    else
    {
      if (v27)
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_220E15000, v25, v26, "Cancel running snapshot task", v29, 2u);
        MEMORY[0x223D9DDF0](v29, -1, -1);
      }
    }
  }

  else
  {
    swift_endAccess();
    sub_220EBE818();
  }

  result = sub_220FC1140();
  if (v18)
  {
    type metadata accessor for SnapshotManager.SnapshotResult(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
    sub_220FC2B00();
  }

  return result;
}

BOOL sub_220EBD77C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_41_1();
  v6 = type metadata accessor for SnapshotManager.Options(v5);
  if ((sub_220FC1010() & 1) == 0)
  {
    return 0;
  }

  v7 = v6[6];
  v8 = *(v2 + v7);
  v9 = a2[v7];
  switch(v8)
  {
    case 5:
      if (v9 != 5)
      {
        return 0;
      }

      break;
    case 4:
      if (v9 != 4)
      {
        return 0;
      }

      break;
    case 3:
      if (v9 != 3)
      {
        return 0;
      }

      break;
    default:
      if (v8 != v9 || (v9 - 6) >= 0xFFFFFFFD)
      {
        return 0;
      }

      break;
  }

  OUTLINED_FUNCTION_46_3(v6[7]);
  if (!v15)
  {
    return 0;
  }

  OUTLINED_FUNCTION_46_3(v6[8]);
  if (!v15)
  {
    return 0;
  }

  v11 = v6[9];
  v12 = *(v2 + v11);
  v13 = *(v2 + v11 + 8);
  v14 = &a2[v11];
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 || *(v2 + v6[10]) != *&a2[v6[10]] || *(v2 + v6[11]) != a2[v6[11]])
  {
    return 0;
  }

  v16 = v6[12];
  v17 = *(v2 + v16);
  v18 = a2[v16];
  if (v17 != 6)
  {
    if (v17 == v18)
    {
      goto LABEL_33;
    }

    return 0;
  }

  if (v18 != 6)
  {
    return 0;
  }

LABEL_33:
  OUTLINED_FUNCTION_46_3(v6[13]);
  return v15;
}

uint64_t sub_220EBD8D4()
{
  sub_220FC3A60();
  v1 = type metadata accessor for SnapshotManager.Options(0);
  sub_220FC1070();
  sub_220EBE6F4(&unk_2812CA080, MEMORY[0x277D7AB60]);
  sub_220FC2650();
  v2 = *(v0 + v1[6]);
  if ((v2 - 3) >= 3u)
  {
    MEMORY[0x223D9CFA0](1);
  }

  else
  {
    v2 = qword_220FCFD30[(v2 - 3)];
  }

  MEMORY[0x223D9CFA0](v2);
  v3 = OUTLINED_FUNCTION_49_2(v1[7]);
  if (v4)
  {
    v3 = 0.0;
  }

  MEMORY[0x223D9CFD0](*&v3);
  v5 = OUTLINED_FUNCTION_49_2(v1[8]);
  if (v4)
  {
    v5 = 0.0;
  }

  MEMORY[0x223D9CFD0](*&v5);
  OUTLINED_FUNCTION_69_1();
  MEMORY[0x223D9CFA0](*(v0 + v1[10]));
  sub_220FC3A60();
  v6 = *(v0 + v1[12]);
  sub_220FC3A60();
  if (v6 != 6)
  {
    MEMORY[0x223D9CFA0](v6);
  }

  v7 = OUTLINED_FUNCTION_49_2(v1[13]);
  if (v4)
  {
    v7 = 0.0;
  }

  return MEMORY[0x223D9CFD0](*&v7);
}

uint64_t sub_220EBDA5C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 6)
  {
    if (v3 != 6)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_220EBDA8C()
{
  v1 = *v0;
  if (v1 == 6)
  {
    return sub_220FC3A60();
  }

  sub_220FC3A60();
  return MEMORY[0x223D9CFA0](v1);
}

uint64_t sub_220EBDAD8()
{
  v1 = *v0;
  sub_220FC3A40();
  sub_220FC3A60();
  if (v1 != 6)
  {
    MEMORY[0x223D9CFA0](v1);
  }

  return sub_220FC3A90();
}

uint64_t sub_220EBDB94()
{
  v1 = *v0;
  sub_220FC3A40();
  sub_220FC3A60();
  if (v1 != 6)
  {
    MEMORY[0x223D9CFA0](v1);
  }

  return sub_220FC3A90();
}

void sub_220EBDBFC()
{
  OUTLINED_FUNCTION_69_0();
  v1 = OUTLINED_FUNCTION_57_2();
  v2 = type metadata accessor for SnapshotManager.Options(v1);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = sub_220FC0ED0();
  OUTLINED_FUNCTION_6();
  v10 = v9;
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = *(v0 + v2[12]);
  sub_220FC3A60();
  if (v16 != 6)
  {
    MEMORY[0x223D9CFA0](v16);
  }

  v17 = OUTLINED_FUNCTION_49_2(v2[7]);
  if (v18)
  {
    v17 = 0.0;
  }

  MEMORY[0x223D9CFD0](*&v17);
  sub_220FC3A60();
  MEMORY[0x223D9CFA0](*(v0 + v2[10]));
  v19 = OUTLINED_FUNCTION_49_2(v2[13]);
  if (v18)
  {
    v19 = 0.0;
  }

  MEMORY[0x223D9CFD0](*&v19);
  sub_220FC3A60();
  v20 = *(v0 + v2[6]);
  if ((v20 - 3) >= 3u)
  {
    MEMORY[0x223D9CFA0](1);
  }

  else
  {
    v20 = qword_220FCFD30[(v20 - 3)];
  }

  MEMORY[0x223D9CFA0](v20);
  OUTLINED_FUNCTION_0_33();
  sub_220EBE7C0(v0, v7);
  v21 = v2[5];
  sub_220FC0FE0();
  OUTLINED_FUNCTION_47_2();
  sub_220FC1070();
  OUTLINED_FUNCTION_2();
  (*(v22 + 8))(v7 + v21);
  OUTLINED_FUNCTION_62_1();
  sub_220FC0EE0();
  sub_220EBE6F4(&qword_2812CA098, MEMORY[0x277D7AAE8]);
  sub_220FC2650();
  (*(v10 + 8))(v15, v8);
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_67();
}

void sub_220EBDE54()
{
  OUTLINED_FUNCTION_69_0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for SnapshotManager.Options(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = sub_220FC0ED0();
  OUTLINED_FUNCTION_6();
  v12 = v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v33 - v19;
  v21 = v4[12];
  v22 = v3[v21];
  v23 = v1[v21];
  if (v22 == 6)
  {
    if (v23 != 6)
    {
      goto LABEL_10;
    }
  }

  else if (v22 != v23)
  {
    goto LABEL_10;
  }

  if (*&v3[v4[7]] == *&v1[v4[7]] && *v3 == *v1 && *&v3[v4[10]] == *&v1[v4[10]] && *&v3[v4[13]] == *&v1[v4[13]] && v3[v4[11]] == v1[v4[11]])
  {
    v24 = v4[6];
    v25 = v3[v24];
    v26 = v1[v24];
    switch(v25)
    {
      case 5:
        if (v26 != 5)
        {
          goto LABEL_10;
        }

        break;
      case 4:
        if (v26 != 4)
        {
          goto LABEL_10;
        }

        break;
      case 3:
        if (v26 != 3)
        {
          goto LABEL_10;
        }

        break;
      default:
        if (v25 != v26 || (v26 - 6) >= 0xFFFFFFFD)
        {
          goto LABEL_10;
        }

        break;
    }

    OUTLINED_FUNCTION_0_33();
    v36 = v28;
    sub_220EBE7C0(v3, v9);
    v29 = v4[5];
    sub_220FC0FE0();
    OUTLINED_FUNCTION_47_2();
    v34 = sub_220FC1070();
    OUTLINED_FUNCTION_2();
    v33 = *(v30 + 8);
    v35 = v30 + 8;
    v33(v9 + v29);
    OUTLINED_FUNCTION_62_1();
    sub_220FC0EE0();
    sub_220EBE7C0(v1, v9);
    v31 = v4[5];
    sub_220FC0FE0();
    (v33)(v9 + v31, v34);
    OUTLINED_FUNCTION_62_1();
    sub_220FC0EE0();
    sub_220FC0EC0();
    v32 = *(v12 + 8);
    v32(v16, v10);
    v32(v20, v10);
  }

LABEL_10:
  OUTLINED_FUNCTION_67();
}

uint64_t sub_220EBE15C(void (*a1)(_BYTE *))
{
  sub_220FC3A40();
  a1(v3);
  return sub_220FC3A90();
}

uint64_t sub_220EBE1EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_220FC3A40();
  a4(v6);
  return sub_220FC3A90();
}

void sub_220EBE27C()
{
  OUTLINED_FUNCTION_69_0();
  v1 = v0;
  type metadata accessor for SnapshotManager.Snapshot(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v9 = v8;
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  sub_220FC0670();
  sub_220FC01B0();
  v16 = v15;
  (*(v9 + 8))(v14, v7);
  if (qword_2812C5EF8 != -1)
  {
    OUTLINED_FUNCTION_5_15();
  }

  v17 = sub_220FC17A0();
  __swift_project_value_buffer(v17, qword_2812C5F00);
  sub_220EBE7C0(v1, v6);
  v18 = sub_220FC1780();
  v19 = sub_220FC2E30();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v21;
    *v20 = 134349314;
    *(v20 + 4) = v16;
    *(v20 + 12) = 2082;
    sub_220E561E0();
    v22 = sub_220FC38F0();
    v24 = v23;
    OUTLINED_FUNCTION_9_10();
    v25 = sub_220E20FF8(v22, v24, &v26);

    *(v20 + 14) = v25;
    _os_log_impl(&dword_220E15000, v18, v19, "Checking cached snapshot for validity. age=%{public}f, overlayKind=%{public}s", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  else
  {

    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_67();
}

uint64_t sub_220EBE510(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  if (qword_2812C5EF8 != -1)
  {
    OUTLINED_FUNCTION_5_15();
  }

  v9 = sub_220FC17A0();
  __swift_project_value_buffer(v9, qword_2812C5F00);

  v10 = sub_220FC1780();
  v11 = sub_220FC2E30();

  if (os_log_type_enabled(v10, v11))
  {
    swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_50();
    *v5 = 141558275;
    *(v5 + 4) = 1752392040;
    *(v5 + 12) = 2081;
    *(v5 + 14) = sub_220E20FF8(a3, a4, &v13);
    _os_log_impl(&dword_220E15000, v10, v11, "CountryCode changed - Invalidating Map Snapshot Cache. newCountryCode=%{private,mask.hash}s", v5, 0x16u);
    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_32_1();
  }

  __swift_project_boxed_opaque_existential_1((v6 + 264), *(v6 + 288));
  return sub_220F1451C();
}

unint64_t sub_220EBE658()
{
  result = qword_27CF9E338;
  if (!qword_27CF9E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E338);
  }

  return result;
}

uint64_t sub_220EBE6F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_220EBE73C(uint64_t a1, void *a2)
{
  sub_220E1966C(0, &qword_2812C5CE0);
  v3 = sub_220FC2960();

  [a2 setAnnotationViews_];
}

uint64_t sub_220EBE7C0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_41_1();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_9();
  v6(v5);
  return a2;
}

uint64_t sub_220EBE818()
{
  v1 = OUTLINED_FUNCTION_57_2();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_220EBE86C()
{
  OUTLINED_FUNCTION_19();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43(v3);
  *v4 = v5;
  v4[1] = sub_220E5B490;

  return sub_220EBD234(v2, v0);
}

uint64_t sub_220EBE904(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_41_1();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_9();
  v6(v5);
  return a2;
}

uint64_t sub_220EBE95C()
{
  v1 = OUTLINED_FUNCTION_57_2();
  v2 = *(type metadata accessor for SnapshotManager.Options(v1) - 8);
  v3 = (*(v2 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_43(v6);
  *v7 = v8;
  v7[1] = sub_220E5B490;
  v9 = OUTLINED_FUNCTION_58();

  return sub_220EB7730(v9, v4, v10, v11, v12, v5);
}

double sub_220EBEA8C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SnapshotManager.Options(0);
  OUTLINED_FUNCTION_8_0(v5);
  return sub_220EBA270(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + ((*(v6 + 80) + 40) & ~*(v6 + 80)), a2);
}

id sub_220EBEB60@<X0>(void *a1@<X8>)
{
  result = sub_220EBA4A8(*(v1 + 24), *(v1 + 32));
  *a1 = result;
  return result;
}

unint64_t sub_220EBEBA4()
{
  result = qword_27CF9E348;
  if (!qword_27CF9E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E348);
  }

  return result;
}

void sub_220EBEC04(void *a1, void *a2)
{
  if (a1 != 1)
  {
  }
}

void *sub_220EBEC48(void *result, void *a2, uint64_t a3, unint64_t a4)
{
  if (result != 1)
  {

    return sub_220E56854(a3, a4);
  }

  return result;
}

uint64_t sub_220EBECA4()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43(v3);
  *v4 = v5;
  v4[1] = sub_220E5B0F0;
  v6 = OUTLINED_FUNCTION_58();

  return sub_220EBBB68(v6, v7, v8, v2, v1);
}

_BYTE *storeEnumTagSinglePayload for SnapshotManager.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220EBEE64()
{
  result = qword_27CF9E358;
  if (!qword_27CF9E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E358);
  }

  return result;
}

void OUTLINED_FUNCTION_19_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_20_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_22_5(uint64_t a1)
{
  *(a1 + 32) = v1;

  return sub_220EBE904(v2, a1 + v3);
}

uint64_t OUTLINED_FUNCTION_26_5()
{

  return sub_220EBE818();
}

uint64_t OUTLINED_FUNCTION_27_7()
{

  return sub_220FC1500();
}

uint64_t OUTLINED_FUNCTION_29_5()
{

  return sub_220EBE818();
}

void *OUTLINED_FUNCTION_38_4()
{
  v1 = *(v0 + 1032);
  result = __swift_project_boxed_opaque_existential_1((*(v0 + 952) + 88), *(*(v0 + 952) + 112));
  *(v0 + 220) = *(v1 + 20);
  *(v0 + 428) = *(v1 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_2()
{
  *(v0 + 904) = *(v0 + 1168);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_44_2()
{
}

uint64_t OUTLINED_FUNCTION_52_2(void *a1)
{
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v1;
  a1[5] = v4;
  a1[6] = v5;

  return sub_220FC1180();
}

BOOL OUTLINED_FUNCTION_53_2()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_54_2()
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_69_1()
{
  v3 = (v0 + *(v1 + 36));
  v4 = *v3;
  v5 = v3[1];

  return sub_220F21618(v4, v5);
}

uint64_t OUTLINED_FUNCTION_71_0()
{
}

uint64_t get_enum_tag_for_layout_string_11WeatherMaps0A10MapPurposeO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_220EBF2F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_220EBF330(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_220EBF374(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

id sub_220EBF3A0()
{
  result = sub_220EBF3C0();
  qword_27CFAF4F0 = result;
  return result;
}

id sub_220EBF3C0()
{
  v0 = sub_220FC03E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_220FC0380();
  v6 = sub_220FC0370();
  (*(v1 + 8))(v4, v0);
  [v5 setLocale_];

  v7 = sub_220FC26C0();
  [v5 setLocalizedDateFormatFromTemplate_];

  [v5 setFormattingContext_];
  return v5;
}

id sub_220EBF514()
{
  result = sub_220EBF99C(0x454545206D6D3A48, 0xE900000000000045, &selRef_setFormattingContext_, 4);
  qword_27CF9E360 = result;
  return result;
}

id sub_220EBF558()
{
  result = sub_220EBF99C(0x452061206D6D3A68, 0xEB00000000454545, &selRef_setFormattingContext_, 4);
  qword_27CF9E368 = result;
  return result;
}

void sub_220EBF5A0()
{
  v0 = sub_220FC03C0();
  OUTLINED_FUNCTION_6();
  v2 = v1;
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = sub_220FC03E0();
  OUTLINED_FUNCTION_6();
  v10 = v9;
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  if (qword_27CF9C0A8 != -1)
  {
    swift_once();
  }

  if (*algn_27CF9E378)
  {
    v16 = qword_27CF9E370;
  }

  else
  {
    v16 = 24936;
  }

  if (*algn_27CF9E378)
  {
    v17 = *algn_27CF9E378;
  }

  else
  {
    v17 = 0xE200000000000000;
  }

  sub_220FC0390();
  sub_220FC03D0();
  (*(v10 + 8))(v15, v8);
  v18 = sub_220FC03B0();
  (*(v2 + 8))(v7, v0);
  if (v18)
  {
    sub_220E921A4();
    v16 = sub_220FC33E0();
    v20 = v19;

    v17 = v20;
  }

  v21 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_220E65948(v16, v17, v21);
  qword_27CFAF4F8 = v21;
}

uint64_t sub_220EBF7E8()
{
  result = sub_220EBF80C();
  qword_27CF9E370 = result;
  *algn_27CF9E378 = v1;
  return result;
}

uint64_t sub_220EBF80C()
{
  v0 = sub_220FC03E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FC0390();
  v5 = objc_opt_self();
  v6 = sub_220FC26C0();
  v7 = sub_220FC0370();
  v8 = [v5 dateFormatFromTemplate:v6 options:0 locale:v7];

  if (v8)
  {
    v9 = sub_220FC2700();
  }

  else
  {
    v9 = 0;
  }

  (*(v1 + 8))(v4, v0);
  return v9;
}

id sub_220EBF960()
{
  result = sub_220EBF99C(0x6D6D3A6A6ALL, 0xE500000000000000, &selRef_setTimeStyle_, 1);
  qword_27CF9E380 = result;
  return result;
}

id sub_220EBF99C(uint64_t a1, uint64_t a2, SEL *a3, uint64_t a4)
{
  v6 = sub_220FC03E0();
  OUTLINED_FUNCTION_6();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_220FC0380();
  v15 = sub_220FC0370();
  (*(v8 + 8))(v13, v6);
  [v14 setLocale_];

  v16 = sub_220FC26C0();
  [v14 setLocalizedDateFormatFromTemplate_];

  [v14 *a3];
  return v14;
}

id sub_220EBFAE8()
{
  result = sub_220EBFB08();
  qword_27CF9E388 = result;
  return result;
}

id sub_220EBFB08()
{
  v0 = sub_220FC03E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_220FC0380();
  v6 = sub_220FC0370();
  (*(v1 + 8))(v4, v0);
  [v5 setLocale_];

  v7 = sub_220FC26C0();
  [v5 setLocalizedDateFormatFromTemplate_];

  sub_220EBFC70(0, 0xE000000000000000, v5, &selRef_setAMSymbol_);
  sub_220EBFC70(0, 0xE000000000000000, v5, &selRef_setPMSymbol_);
  return v5;
}

void sub_220EBFC70(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_220FC26C0();

  [a3 *a4];
}

uint64_t sub_220EBFCF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 200))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 176) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void sub_220EBFD38(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 200) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 200) = 0;
    }

    if (a2)
    {
      v4 = 2 * -a2;
      bzero((a1 + 16), 0xA0uLL);
      *(a1 + 184) = 0;
      *(a1 + 192) = 0;
      *(a1 + 176) = v4;
    }
  }
}

uint64_t sub_220EBFDE0(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  if (*(a1 + 8) == 1)
  {
    if (v3 != 1)
    {
LABEL_7:
      v6 = 0;
      return v6 & 1;
    }
  }

  else
  {
    if (v3 == 1)
    {
      goto LABEL_7;
    }

    v4 = *a2;

    v5 = sub_220FC0C10();
    sub_220E5E3D0(v4, v3);
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_0_34(__src);
  memcpy(v8, a2 + 2, sizeof(v8));
  v6 = sub_220F17000(__src);
  return v6 & 1;
}

uint64_t sub_220EBFEB0(uint64_t a1)
{
  if (*(v1 + 8) == 1)
  {
    sub_220FC3A60();
  }

  else
  {
    sub_220FC3A60();
    sub_220FC0C20();
  }

  memcpy(__dst, (v1 + 16), sizeof(__dst));
  return sub_220F1835C(a1);
}

uint64_t sub_220EBFF44()
{
  v1 = *(v0 + 8);
  sub_220FC3A40();
  sub_220FC3A60();
  if (v1 != 1)
  {
    sub_220FC0C20();
  }

  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_220F1835C(&v3);
  return sub_220FC3A90();
}

uint64_t sub_220EBFFEC()
{
  v1 = *(v0 + 8);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_220FC3A40();
  sub_220FC3A60();
  if (v1 != 1)
  {
    sub_220FC0C20();
  }

  sub_220F1835C(&v3);
  return sub_220FC3A90();
}

uint64_t sub_220EC0088@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
  inited = swift_initStackObject();
  v4 = inited;
  *(inited + 16) = xmmword_220FC8E10;
  *(inited + 32) = 0x437972746E756F63;
  *(inited + 40) = 0xEB0000000065646FLL;
  v9 = *v1;
  if (*(&v9 + 1) == 1)
  {
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 1701736302;
    *(inited + 56) = 0xE400000000000000;
  }

  else
  {
    *&__src[24] = MEMORY[0x277D7AA30];
    *__src = v9;
    sub_220E5D784(__src, (inited + 48));
  }

  v4[10] = 0x617461646174656DLL;
  v4[11] = 0xE800000000000000;
  OUTLINED_FUNCTION_0_34(__src);
  v4[15] = &type metadata for WeatherMapOverlayMetadata;
  v5 = swift_allocObject();
  v4[12] = v5;
  memcpy((v5 + 16), __src, 0xB8uLL);
  sub_220E4D214(&v9, v7, &qword_27CF9E3A8);
  sub_220E56868(__src, v7);
  sub_220FC2600();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E3B0);
  a1[4] = sub_220EC0450();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_220FC12A0();
}

uint64_t sub_220EC025C()
{
  sub_220EC04B4();

  return sub_220FC1290();
}

unint64_t sub_220EC02A0()
{
  result = qword_27CF9E390;
  if (!qword_27CF9E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E390);
  }

  return result;
}

uint64_t sub_220EC02F4()
{
  OUTLINED_FUNCTION_0_34(v6);
  switch(sub_220E435CC(v6))
  {
    case 1u:
      v1 = sub_220E22B0C(v6);
      OUTLINED_FUNCTION_0_34(v5);
      v2 = sub_220E22B0C(v5);
      v3 = &unk_27CF9E3A0;
      goto LABEL_5;
    case 2u:
      result = *sub_220E22B0C(v6);
      if (result < 0)
      {
        goto LABEL_8;
      }

      return result;
    case 4u:
      v1 = sub_220E22B0C(v6);
      OUTLINED_FUNCTION_0_34(v5);
      v2 = sub_220E22B0C(v5);
      v3 = &unk_27CF9E398;
LABEL_5:
      sub_220E4D214(v2, v4, v3);

      sub_220EC03FC(v1);
      result = *v1;
      if ((*v1 & 0x8000000000000000) == 0)
      {
        return result;
      }

LABEL_8:
      __break(1u);
      break;
    default:
      sub_220E22B0C(v6);
      result = 1;
      break;
  }

  return result;
}

unint64_t sub_220EC0450()
{
  result = qword_27CF9E3B8;
  if (!qword_27CF9E3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9E3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E3B8);
  }

  return result;
}

unint64_t sub_220EC04B4()
{
  result = qword_27CF9E3C0;
  if (!qword_27CF9E3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E3C0);
  }

  return result;
}

void sub_220EC0508(void *__src)
{
  memcpy((v1 + 16), __src, 0x74uLL);
  v13.origin.x = OUTLINED_FUNCTION_0_0();
  CGRectGetWidth(v13);
  OUTLINED_FUNCTION_1_32();
  if (!(v4 ^ v5 | v3))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v2 <= -9.22337204e18)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_2_24();
  if (!v4)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_4_23();
  if (!v3)
  {
    goto LABEL_32;
  }

  *(v1 + 136) = v6;
  v14.origin.x = OUTLINED_FUNCTION_0_0();
  CGRectGetHeight(v14);
  OUTLINED_FUNCTION_1_32();
  if (!(v4 ^ v5 | v3))
  {
    goto LABEL_33;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_2_24();
  if (!v4)
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_4_23();
  if (!v3)
  {
    goto LABEL_36;
  }

  *(v1 + 144) = v8;
  v15.origin.x = OUTLINED_FUNCTION_0_0();
  CGRectGetWidth(v15);
  OUTLINED_FUNCTION_1_32();
  if (!(v4 ^ v5 | v3))
  {
    goto LABEL_37;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_2_24();
  if (!v4)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_4_23();
  if (!v3)
  {
    goto LABEL_40;
  }

  *(v1 + 152) = 1.0 / v10;
  v16.origin.x = OUTLINED_FUNCTION_0_0();
  CGRectGetHeight(v16);
  OUTLINED_FUNCTION_1_32();
  if (!(v4 ^ v5 | v3))
  {
    goto LABEL_41;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_2_24();
  if (!v4)
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_4_23();
  if (v3)
  {
    *(v1 + 156) = 1.0 / v12;
    return;
  }

LABEL_44:
  __break(1u);
}

void sub_220EC0680(uint64_t a1)
{
  v2 = *(v1 + 120);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v13.origin.x = OUTLINED_FUNCTION_0_0();
  CGRectGetMinX(v13);
  OUTLINED_FUNCTION_1_32();
  if (!(v7 ^ v8 | v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 <= -9.22337204e18)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_2_24();
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = __OFSUB__(v4, v9);
  v10 = v4 - v9;
  if (v8)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v10 < 0 && __OFADD__(v10, v2))
  {
    goto LABEL_23;
  }

  v14.origin.x = OUTLINED_FUNCTION_0_0();
  CGRectGetMinY(v14);
  OUTLINED_FUNCTION_1_32();
  if (!(v7 ^ v8 | v6))
  {
    goto LABEL_19;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_2_24();
  if (v7)
  {
    if (!__OFSUB__(v3, v12))
    {
      v15.origin.x = OUTLINED_FUNCTION_0_0();
      CGRectGetWidth(v15);
      v16.origin.x = OUTLINED_FUNCTION_0_0();
      CGRectGetHeight(v16);
      return;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_220EC07C4(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>)
{
  v5 = *(v3 + 128);
  v6 = *(v3 + 112);
  v7 = *(v3 + 120);
  v8 = *(v3 + 104);
  v34.origin.x = OUTLINED_FUNCTION_3_11();
  CGRectGetMinX(v34);
  OUTLINED_FUNCTION_1_32();
  if (!(v11 ^ v12 | v10))
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v9 <= -9.22337204e18)
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_2_24();
  if (!v11)
  {
    goto LABEL_37;
  }

  v13 = v8;
  OUTLINED_FUNCTION_5_16();
  if (!(v11 ^ v12 | v10))
  {
    goto LABEL_38;
  }

  if (v15 <= -9.2234e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v15 >= 9.2234e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v17 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v30 = v16;
  v31 = v5;
  v18 = *(v3 + 156);
  v35.origin.x = OUTLINED_FUNCTION_3_11();
  CGRectGetMinY(v35);
  OUTLINED_FUNCTION_1_32();
  if (!(v11 ^ v12 | v10))
  {
    goto LABEL_42;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_2_24();
  if (!v11)
  {
    goto LABEL_44;
  }

  v20 = v18 * v13;
  OUTLINED_FUNCTION_5_16();
  if (!(v11 ^ v12 | v10))
  {
    goto LABEL_45;
  }

  if (v22 <= -9.2234e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v22 >= 9.2234e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v24 = v17;
  if (v17 >= v7)
  {
    v24 = v17 - v7;
    if (__OFSUB__(v17, v7))
    {
      goto LABEL_57;
    }
  }

  v36.origin.x = OUTLINED_FUNCTION_3_11();
  CGRectGetMinX(v36);
  OUTLINED_FUNCTION_1_32();
  if (!(v11 ^ v12 | v10))
  {
    goto LABEL_49;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_2_24();
  if (!v11)
  {
    goto LABEL_51;
  }

  v27 = v17 - v26;
  if (__OFSUB__(v17, v26))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v37.origin.x = OUTLINED_FUNCTION_3_11();
  CGRectGetMinY(v37);
  OUTLINED_FUNCTION_1_32();
  if (!(v11 ^ v12 | v10))
  {
    goto LABEL_53;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_2_24();
  if (v11)
  {
    if (!__OFSUB__(v23, v29))
    {
      *a1 = (a2 - (v30 * v27)) / v30;
      *(a1 + 4) = (a3 - (v20 * (v23 - v29))) / v20;
      *(a1 + 8) = v24;
      *(a1 + 16) = v23;
      *(a1 + 24) = v6;
      *(a1 + 32) = v31;
      return;
    }

    goto LABEL_56;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

float32x2_t sub_220EC0A08(float64_t a1, float64_t a2)
{
  v3 = *(v2 + 104);
  v11 = v3 / *(v2 + 64);
  v12.origin.x = OUTLINED_FUNCTION_0_0();
  Width = CGRectGetWidth(v12);
  v13.origin.x = OUTLINED_FUNCTION_0_0();
  Height = CGRectGetHeight(v13);
  v5.f64[0] = a1;
  v5.f64[1] = a2;
  v6 = vcvt_f32_f64(v5);
  v5.f64[0] = Width;
  v5.f64[1] = Height;
  return vdiv_f32(vmul_n_f32(vsub_f32(v6, vcvt_f32_f64(*(v2 + 48))), v11), vcvt_f32_f64(vmulq_n_f64(v5, v3)));
}

uint64_t sub_220EC0B14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 116))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220EC0B34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 116) = v3;
  return result;
}

uint64_t sub_220EC0BD8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps20OverlayRenderContext_colorMap;
  swift_beginAccess();
  return sub_220E4D214(v1 + v3, a1, &qword_27CF9F3B0);
}

uint64_t sub_220EC0C40()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_220EC0C80()
{
  sub_220EC0C40();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

id sub_220EC0D94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OverlayRenderContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_220EC0E6C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_220EC0EAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220EC100C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_220EC104C(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_220EC10DC(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_indicatorColor];
  *&v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_indicatorColor] = a1;
  v3 = a1;

  [v1 setNeedsDisplay];
}

id sub_220EC1140(double a1, double a2)
{
  v3 = &v2[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_scaleRange];
  *v3 = a1;
  v3[1] = a2;
  return [v2 setNeedsDisplay];
}

id sub_220EC117C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_colorsWithStops] = a1;

  return [v1 setNeedsDisplay];
}

id sub_220EC11C4()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_bottomMargin] = 0x4030000000000000;
  OUTLINED_FUNCTION_0_35(OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_circleRadius);
  *&v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_circleStrokeWidth] = 0x4010000000000000;
  *&v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_indicatorValue] = 0x4049000000000000;
  v2 = OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_indicatorColor;
  *&v0[v2] = [objc_opt_self() whiteColor];
  *&v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_scaleRange] = xmmword_220FD0320;
  v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_showIndicator] = 0;
  *&v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_colorsWithStops] = MEMORY[0x277D84F90];
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v7, sel_init);
  [v3 setNeedsDisplayOnBoundsChange_];
  v4 = [objc_opt_self() sharedApplication];
  sub_220FC2DD0();

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_220FC2510();
  [v3 setContentsScale_];

  __swift_destroy_boxed_opaque_existential_0(v6);
  return v3;
}

id sub_220EC1364(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_bottomMargin] = 0x4030000000000000;
  OUTLINED_FUNCTION_0_35(OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_circleRadius);
  *&v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_circleStrokeWidth] = 0x4010000000000000;
  *&v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_indicatorValue] = 0x4049000000000000;
  v4 = OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_indicatorColor;
  *&v1[v4] = [objc_opt_self() whiteColor];
  *&v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_scaleRange] = xmmword_220FD0320;
  v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_showIndicator] = 0;
  *&v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_colorsWithStops] = MEMORY[0x277D84F90];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_220FC3920();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithLayer_, v5);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

void sub_220EC14D8()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_bottomMargin) = 0x4030000000000000;
  OUTLINED_FUNCTION_0_35(OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_circleRadius);
  *(v0 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_circleStrokeWidth) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_indicatorValue) = 0x4049000000000000;
  v1 = OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_indicatorColor;
  *(v0 + v1) = [objc_opt_self() whiteColor];
  *(v0 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_scaleRange) = xmmword_220FD0320;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_showIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_colorsWithStops) = MEMORY[0x277D84F90];
  sub_220FC3740();
  __break(1u);
}

void sub_220EC15F8(uint64_t a1)
{
  v20.receiver = v1;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, sel_drawInContext_, a1);
  [v1 bounds];
  Width = CGRectGetWidth(v21);
  [v1 bounds];
  Height = CGRectGetHeight(v22);
  v5 = sub_220EC17F0();
  v7 = v6;
  v8 = *&v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_scaleRange + 8];
  if ((*&v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_indicatorValue] - *&v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_scaleRange]) / (v8 - *&v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_scaleRange]) < 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = (*&v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_indicatorValue] - *&v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_scaleRange]) / (v8 - *&v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_scaleRange]);
  }

  v10 = sub_220EC2278(v1);
  if (v10)
  {
    v11 = v10;
    v12 = sub_220F43CDC(v10);
    for (i = 0; ; ++i)
    {
      if (v12 == i)
      {

        goto LABEL_14;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x223D9CB30](i, v11);
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v14 = *(v11 + 8 * i + 32);
      }

      v15 = v14;
      if (__OFADD__(i, 1))
      {
        break;
      }

      [v14 removeFromSuperlayer];
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:
    v16 = Width * 0.5;
    v17 = Height * 0.5;
    v18 = sub_220EC1908(v5, v7, v16, v17);
    [v1 addSublayer_];

    if (v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_showIndicator] == 1)
    {
      v19 = sub_220EC1DBC(v16, v17, fmin(v9, 1.0), v5, v7);
      [v1 addSublayer_];
    }
  }
}

double sub_220EC17F0()
{
  [v0 bounds];
  v1 = CGRectGetHeight(v15) * 0.5;
  v2 = sub_220EC20D4();
  v3 = OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_circleStrokeWidth;
  v4 = v1 - v2 - *&v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_circleStrokeWidth];
  [v0 bounds];
  Height = CGRectGetHeight(v16);
  v6 = *&v0[v3];
  v7 = Height - (v6 + v6);
  if (*&v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_bottomMargin] < v7)
  {
    v7 = *&v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_bottomMargin];
  }

  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = v4 + v7 - v6;
  if (sub_220EC20D4() < v8)
  {
    v9 = sub_220EC20D4();
    v8 = -(v9 - (v8 - sub_220EC20D4()));
  }

  v10 = sub_220EC20D4();
  v11 = asin(v8 / v10);
  v12 = (*&v11 & 0xFFFFFFFFFFFFFLL) == 0 || (~*&v11 & 0x7FF0000000000000) != 0;
  v13 = 2.56039801;
  if (v12)
  {
    return 3.14159265 - v11;
  }

  return v13;
}

id sub_220EC1908(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_220EC20D4();
  v11 = OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_circleStrokeWidth;
  v12 = [objc_opt_self() bezierPathWithArcCenter:1 radius:a3 startAngle:a4 endAngle:v10 + *&v4[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_circleStrokeWidth] * 0.5 clockwise:{a1 + -0.01, a2 + 0.01}];
  v13 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  [v5 bounds];
  [v13 setFrame_];
  v38 = v12;
  v14 = [v12 CGPath];
  [v13 setPath_];

  [v13 setLineWidth_];
  v15 = objc_opt_self();
  v16 = [v15 clearColor];
  v17 = [v16 CGColor];

  [v13 setFillColor_];
  v18 = [v15 blackColor];
  v19 = [v18 CGColor];

  [v13 setStrokeColor_];
  [v13 setLineCap_];
  v20 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  [v20 setStartPoint_];
  [v20 setEndPoint_];
  [v20 setType_];
  v21 = OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_colorsWithStops;
  v22 = *&v5[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_colorsWithStops];
  v23 = *(v22 + 16);
  v24 = MEMORY[0x277D84F90];
  v39 = v5;
  if (v23)
  {
    v42 = MEMORY[0x277D84F90];

    sub_220F0B1A0(0, v23, 0);
    v25 = 40;
    v24 = v42;
    do
    {
      v26 = *(v22 + v25);
      v27 = [v26 CGColor];
      type metadata accessor for CGColor(0);
      v41 = v28;

      *&v40 = v27;
      v42 = v24;
      v30 = *(v24 + 16);
      v29 = *(v24 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_220F0B1A0((v29 > 1), v30 + 1, 1);
        v24 = v42;
      }

      *(v24 + 16) = v30 + 1;
      sub_220E5D784(&v40, (v24 + 32 * v30 + 32));
      v25 += 16;
      --v23;
    }

    while (v23);

    v5 = v39;
  }

  sub_220F85FE0(v24, v20);
  v31 = *&v5[v21];
  v32 = *(v31 + 16);
  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    v34 = (a1 + -1.57079633) / 6.28318531;
    *&v40 = MEMORY[0x277D84F90];

    sub_220FC3670();
    v35 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      sub_220FC3640();
      sub_220FC3680();
      sub_220FC3690();
      sub_220FC3650();
      v35 += 16;
      --v32;
    }

    while (v32);

    v5 = v39;
    v33 = v40;
  }

  sub_220ED17E0(v33, v20);
  v36 = v20;
  [v36 setMask_];

  [v5 bounds];
  [v36 setFrame_];

  return v36;
}

id sub_220EC1DBC(double a1, double a2, double a3, double a4, double a5)
{
  v6 = sub_220EC2130(fmin(a3, 1.0) * (6.28318531 - a4 + a5) + a4, a1);
  v10 = *(v5 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_circleStrokeWidth) * 0.5;
  v13 = v10 + v10;
  v30.origin.x = (v6 + v7) * 0.5 - v10;
  x = v30.origin.x;
  v30.origin.y = (v8 + v9) * 0.5 - v10;
  y = v30.origin.y;
  v30.size.width = v10 + v10;
  v30.size.height = v10 + v10;
  v31 = CGRectInset(v30, -v10, -v10);
  v14 = v31.origin.x;
  v15 = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  v29 = sub_220EC21B4();
  v18 = objc_opt_self();
  v19 = [v18 bezierPathWithOvalInRect_];
  v28 = [v18 bezierPathWithOvalInRect_];
  v20 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v21 = [v28 CGPath];
  [v20 setPath_];

  v22 = [*(v5 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_indicatorColor) CGColor];
  [v20 setFillColor_];

  v23 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v24 = [v19 CGPath];
  [v23 setPath_];

  v25 = [v29 CGColor];
  [v23 setFillColor_];

  v26 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  [v26 addSublayer_];
  [v26 addSublayer_];

  return v26;
}

CGFloat sub_220EC20D4()
{
  if ((v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_circleRadius + 8] & 1) == 0)
  {
    return *&v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_circleRadius];
  }

  [v0 bounds];
  return CGRectGetWidth(v2) * 0.5 - *&v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCircularGradientLayer_circleStrokeWidth];
}

double sub_220EC2130(double a1, double a2)
{
  v4 = sub_220EC20D4();
  sub_220EC20D4();
  return __sincos_stret(a1).__cosval * v4 + a2;
}

uint64_t sub_220EC21B4()
{

  v0 = sub_220FC2A00();

  return v0;
}

uint64_t sub_220EC2278(void *a1)
{
  v1 = [a1 sublayers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_220EC22D8();
  v3 = sub_220FC2970();

  return v3;
}

unint64_t sub_220EC22D8()
{
  result = qword_27CF9DD18;
  if (!qword_27CF9DD18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF9DD18);
  }

  return result;
}

uint64_t MKTileOverlayPath.shortDescription.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC9880;
  *(inited + 32) = 120;
  *(inited + 40) = 0xE100000000000000;
  v11 = MEMORY[0x277D83B88];
  *(inited + 48) = a1;
  *(inited + 72) = v11;
  *(inited + 80) = 121;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = a2;
  *(inited + 120) = v11;
  *(inited + 128) = 122;
  *(inited + 136) = 0xE100000000000000;
  *(inited + 144) = a3;
  *(inited + 168) = v11;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = 0x8000000220FDFCF0;
  *(inited + 216) = MEMORY[0x277D85048];
  *(inited + 192) = a5;
  sub_220FC2600();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E458);
  a4[4] = sub_220EC2478();
  __swift_allocate_boxed_opaque_existential_1(a4);
  type metadata accessor for MKTileOverlayPath(0);
  return sub_220FC12A0();
}

unint64_t sub_220EC2478()
{
  result = qword_27CF9E460;
  if (!qword_27CF9E460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9E458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E460);
  }

  return result;
}

uint64_t sub_220EC24EC()
{
  sub_220EC25B8(&qword_27CF9E470);

  return sub_220FC1290();
}

uint64_t sub_220EC25B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MKTileOverlayPath(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_220EC25FC(uint64_t a1, uint64_t a2)
{
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = a1;
  v2[5] = a2;
  return v2;
}

void sub_220EC260C()
{
  if (!*(v0 + 16))
  {
    v1 = [objc_opt_self() defaultCenter];
    v2 = sub_220FC0C50();
    v3 = [objc_opt_self() mainQueue];
    v4 = swift_allocObject();
    swift_weakInit();
    v20 = sub_220EC2A5C;
    v21 = v4;
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_0_36();
    v18 = v5;
    v19 = &block_descriptor_10;
    v6 = _Block_copy(v17);

    v7 = OUTLINED_FUNCTION_2_25();
    v9 = [v7 v8];
    _Block_release(v6);

    *(v0 + 16) = v9;
    swift_unknownObjectRelease();
  }

  if (!*(v0 + 24))
  {
    v10 = [objc_opt_self() defaultCenter];
    v11 = swift_allocObject();
    swift_weakInit();
    v20 = sub_220EC2A38;
    v21 = v11;
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_0_36();
    v18 = v12;
    v19 = &block_descriptor_14_0;
    v13 = _Block_copy(v17);

    v14 = OUTLINED_FUNCTION_2_25();
    v16 = [v14 v15];
    _Block_release(v13);

    *(v0 + 24) = v16;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_220EC2818()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 32);

    v1(v2);
  }

  return result;
}

void sub_220EC2890()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];

    swift_unknownObjectRelease();
    *(v0 + 16) = 0;
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + 24);
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver_];

    swift_unknownObjectRelease();
    *(v0 + 24) = 0;

    swift_unknownObjectRelease();
  }
}

uint64_t sub_220EC2998()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_220EC29C8()
{
  sub_220EC2998();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_220EC2A60()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  *&v4 = MEMORY[0x28223BE20](v2 - 8, v3).n128_u64[0];
  v6 = &v12 - v5;
  result = [*(v0 + 112) setEnabled_];
  if ((*(v0 + 121) & 1) == 0)
  {
    v8 = sub_220FC2AE0();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
    sub_220FC2AB0();

    v9 = sub_220FC2AA0();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v1;
    sub_220F9BB1C(0, 0, v6, &unk_220FD0830, v10);
  }

  return result;
}

uint64_t sub_220EC2B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_220FC2AB0();
  v4[4] = sub_220FC2AA0();

  return MEMORY[0x2822009F8](sub_220EC2BFC, a4, 0);
}

uint64_t sub_220EC2BFC()
{
  OUTLINED_FUNCTION_32();
  sub_220EC4208();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v0 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_220EC2C8C()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps13PixelSonifier____lazy_storage___disableMapOverlaySonification;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier____lazy_storage___disableMapOverlaySonification);
  if (v2 == 2)
  {
    if (qword_2812CA1B0 != -1)
    {
      swift_once();
    }

    type metadata accessor for PixelSonifier();
    OUTLINED_FUNCTION_0_37();
    sub_220ECD080(v3, v4);
    OUTLINED_FUNCTION_83();
    sub_220FC0A00();
    if (v7)
    {
      LOBYTE(v2) = 1;
    }

    else
    {
      if (qword_2812CA198 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_83();
      sub_220FC0A00();
      LOBYTE(v2) = v6;
    }

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

void sub_220EC2DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v7);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v32 - v10;
  swift_defaultActor_initialize();
  *(v3 + 112) = [objc_allocWithZone(MEMORY[0x277D757F8]) init];
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = 1;
  *(v3 + 152) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 160) = 0x3FE8000000000000;
  v12 = type metadata accessor for SonifierDataState.OverlayFrames(0);
  OUTLINED_FUNCTION_42();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = v3 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_gestureStart;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  *(v3 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier____lazy_storage___disableMapOverlaySonification) = 2;
  v17 = OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_overlayDataState;
  OUTLINED_FUNCTION_42();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v12);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);
  __swift_storeEnumTagSinglePayload(v3 + v17, 0, 3, v21);
  v22 = v3 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_liveModeState;
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 1;
  *(v3 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_audioSessionCategoryHasBeenSet) = 0;
  v23 = v3 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_hoverState;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *v23 = 0;
  *(v23 + 24) = 3;
  *(v3 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_hoverJitterThreshold) = 0x4014000000000000;
  *(v3 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_hoverInterval) = 0x3FE0000000000000;
  *(v3 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_isTrackingGesture) = 0;
  sub_220E1E30C(a1, v3 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_geocodeManager);
  sub_220E1E30C(a2, v3 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_locationMetadataManager);
  sub_220E1E30C(a3, v3 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_appConfigurationManager);
  sub_220FC2AE0();
  OUTLINED_FUNCTION_42();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  OUTLINED_FUNCTION_69();
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v3;

  v29 = OUTLINED_FUNCTION_3_22();
  sub_220F9BB1C(v29, v30, v11, v31, v28);

  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  OUTLINED_FUNCTION_35_4();
}

uint64_t sub_220EC3048()
{
  OUTLINED_FUNCTION_19();
  sub_220FC2AB0();
  *(v0 + 24) = OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_60_2();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v1 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_220EC30C0()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 16);

  sub_220EC3150();
  v2 = *(v1 + 112);
  [v2 setEnabled_];
  [v2 addTarget:v1 action:sel_handleGestureWithRecognizer_];
  OUTLINED_FUNCTION_32_0();

  return v3();
}

uint64_t sub_220EC3150()
{
  v16 = sub_220FC0E70();
  v1 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220FC0CA0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812C7508 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_appConfigurationManager), *(v0 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_appConfigurationManager + 24));

  sub_220FC0F40();
  sub_220FC0C90();
  (*(v6 + 8))(v9, v5);
  sub_220FC0E20();
  (*(v1 + 8))(v4, v16);
  sub_220EC2C8C();
  sub_220EDDC1C();
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v10 = sub_220FC17A0();
  __swift_project_value_buffer(v10, qword_2812C5ED0);

  v11 = sub_220FC1780();
  v12 = sub_220FC2E30();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = sub_220EDDB94() & 1;

    _os_log_impl(&dword_220E15000, v11, v12, "Enable map overlay sonification: %{BOOL}d", v13, 8u);
    MEMORY[0x223D9DDF0](v13, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_220EC3458(uint64_t a1)
{
  v4 = type metadata accessor for SonifierDataState(0);
  v5 = OUTLINED_FUNCTION_8_0(v4);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_45_3();
  v12 = OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_overlayDataState;
  swift_beginAccess();
  sub_220ECCF3C(a1, v2 + v12);
  swift_endAccess();
  OUTLINED_FUNCTION_7_11();
  sub_220ECCD30(a1, v8, v13);
  if (__swift_getEnumTagSinglePayload(v8, 3, v9))
  {
    OUTLINED_FUNCTION_8_15();
    return sub_220ECCD8C(v8, v14);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_48_3();
    sub_220ECCFA0(v16, v17);
    v18 = OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_frames;
    swift_beginAccess();
    sub_220ECD010(v1, v2 + v18);
    swift_endAccess();
    return sub_220E3B2DC(v1, &qword_27CF9D090);
  }
}

void sub_220EC35C4(uint64_t a1)
{
  v3 = type metadata accessor for SonifierDataState(0);
  v4 = OUTLINED_FUNCTION_29(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4, v9);
  v10 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v11);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v30 - v14;
  sub_220FC2AE0();
  OUTLINED_FUNCTION_42();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  OUTLINED_FUNCTION_7_11();
  sub_220ECCD30(a1, v10, v20);
  OUTLINED_FUNCTION_0_37();
  v23 = sub_220ECD080(v21, v22);
  v24 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v25 = (v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v1;
  *(v26 + 24) = v23;
  sub_220ECCDE4(v10, v26 + v24);
  *(v26 + v25) = v1;
  swift_retain_n();
  v27 = OUTLINED_FUNCTION_3_22();
  sub_220F9BB1C(v27, v28, v15, v29, v26);

  OUTLINED_FUNCTION_35_4();
}

uint64_t sub_220EC376C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_220EC378C, a5, 0);
}

uint64_t sub_220EC378C()
{
  OUTLINED_FUNCTION_32();
  sub_220F1FAC8();
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_220EC3840;
  v3 = OUTLINED_FUNCTION_48_3();

  return sub_220EC393C(v3, v4, 0x4010000000000000, 0);
}

uint64_t sub_220EC3840()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_32_0();

  return v3();
}

uint64_t sub_220EC393C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 80) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220EC39E4, v4, 0);
}

uint64_t sub_220EC39E4()
{
  OUTLINED_FUNCTION_38_0();
  if (qword_27CF9C008 != -1)
  {
    OUTLINED_FUNCTION_2_26();
  }

  v2 = *(v0 + 56);
  v3 = __swift_project_value_buffer(*(v0 + 48), qword_27CF9CBF8);
  sub_220ECC944(v3, v2, &qword_27CF9CF70);
  v4 = sub_220FC17A0();
  v5 = OUTLINED_FUNCTION_49();
  if (__swift_getEnumTagSinglePayload(v5, v6, v4) == 1)
  {
    sub_220E3B2DC(*(v0 + 56), &qword_27CF9CF70);
  }

  else
  {

    v7 = sub_220FC1780();
    v8 = sub_220FC2E30();

    if (os_log_type_enabled(v7, v8))
    {
      swift_slowAlloc();
      v24 = OUTLINED_FUNCTION_73_0();
      OUTLINED_FUNCTION_16_6(7.2225e-34);
      v9 = OUTLINED_FUNCTION_50_0();
      *(v1 + 14) = sub_220E20FF8(v9, v10, v11);
      OUTLINED_FUNCTION_57_3(&dword_220E15000, v12, v13, "Will post and wait for completion of accessibility announcement %{private,mask.hash}s");
      __swift_destroy_boxed_opaque_existential_0(v24);
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_50_3();
    }

    OUTLINED_FUNCTION_14_8();
    (*(v14 + 8))();
  }

  v15 = *(v0 + 80);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);
  v17 = *(v0 + 24);
  OUTLINED_FUNCTION_0_37();
  sub_220ECD080(v19, v20);
  v21 = swift_task_alloc();
  *(v0 + 64) = v21;
  *(v21 + 16) = v16;
  *(v21 + 24) = v15 & 1;
  *(v21 + 32) = v18;
  *(v21 + 40) = v17;
  v22 = swift_task_alloc();
  *(v0 + 72) = v22;
  *v22 = v0;
  v22[1] = sub_220EC3C6C;
  OUTLINED_FUNCTION_61_3();

  return MEMORY[0x2822007B8]();
}

uint64_t sub_220EC3C6C()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_46_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_220EC3D80()
{
  OUTLINED_FUNCTION_19();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

void sub_220EC3DD8()
{
  v1 = v0;
  v44[3] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v43[-v5];
  v7 = type metadata accessor for SonifierDataState(0);
  v8 = OUTLINED_FUNCTION_8_0(v7);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v43[-v14];
  v16 = OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_audioSessionCategoryHasBeenSet;
  if ((*(v1 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_audioSessionCategoryHasBeenSet) & 1) == 0)
  {
    v17 = [objc_opt_self() sharedInstance];
    v18 = *MEMORY[0x277CB8030];
    v19 = *MEMORY[0x277CB80A8];
    v44[0] = 0;
    v20 = [v17 setCategory:v18 mode:v19 options:1 error:v44];

    v21 = v44[0];
    if (v20)
    {
      *(v1 + v16) = 1;
      v22 = v21;
    }

    else
    {
      v23 = v44[0];
      v24 = sub_220FBFFE0();

      swift_willThrow();
      if (qword_27CF9C008 != -1)
      {
        OUTLINED_FUNCTION_2_26();
      }

      v25 = __swift_project_value_buffer(v2, qword_27CF9CBF8);
      sub_220ECC944(v25, v6, &qword_27CF9CF70);
      v26 = sub_220FC17A0();
      v27 = OUTLINED_FUNCTION_49();
      if (__swift_getEnumTagSinglePayload(v27, v28, v26) == 1)
      {

        sub_220E3B2DC(v6, &qword_27CF9CF70);
      }

      else
      {
        v29 = v24;
        v30 = sub_220FC1780();
        v31 = sub_220FC2E10();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = OUTLINED_FUNCTION_76_0();
          v33 = swift_slowAlloc();
          *v32 = 138412290;
          v34 = v24;
          v35 = _swift_stdlib_bridgeErrorToNSError();
          *(v32 + 4) = v35;
          *v33 = v35;
          _os_log_impl(&dword_220E15000, v30, v31, "Failed to begin live mode session. Unable to set audio session category: %@", v32, 0xCu);
          sub_220E3B2DC(v33, &qword_27CF9EF80);
          OUTLINED_FUNCTION_15();
          OUTLINED_FUNCTION_15();
        }

        else
        {
        }

        OUTLINED_FUNCTION_12();
        (*(v36 + 8))(v6, v26);
      }
    }
  }

  v37 = OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_overlayDataState;
  swift_beginAccess();
  OUTLINED_FUNCTION_7_11();
  sub_220ECCD30(v1 + v37, v15, v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);
  if (__swift_getEnumTagSinglePayload(v15, 3, v39))
  {
    sub_220ECCD30(v1 + v37, v11, type metadata accessor for SonifierDataState);
    sub_220EC35C4(v11);
    sub_220ECCD8C(v11, type metadata accessor for SonifierDataState);
  }

  else
  {
    OUTLINED_FUNCTION_8_15();
    sub_220ECCD8C(v15, v40);
    v41 = v1 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_liveModeState;
    if (*(v41 + 16) == 1)
    {
      OUTLINED_FUNCTION_81();
      if (!v42)
      {
        [objc_opt_self() start];
        *v41 = xmmword_220FD04A0;
        *(v41 + 16) = 1;
      }
    }
  }

  OUTLINED_FUNCTION_22();
}

void sub_220EC4208()
{
  OUTLINED_FUNCTION_64_3();
  if (!v1 || (OUTLINED_FUNCTION_81(), v2))
  {
    [objc_opt_self() stop];
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 16) = 1;
  }
}

void sub_220EC4260(double a1, double a2)
{
  OUTLINED_FUNCTION_64_3();
  if (!v6 || (OUTLINED_FUNCTION_81(), v7))
  {
    [objc_opt_self() updateValue_];
    *v2 = a1;
    *(v2 + 8) = a2;
    *(v2 + 16) = 0;
  }
}

double sub_220EC42EC()
{
  OUTLINED_FUNCTION_64_3();
  if (!v1 || (OUTLINED_FUNCTION_81(), v3))
  {
    [objc_opt_self() updateValue_];
    *&result = 2;
    *v0 = xmmword_220FD04B0;
    *(v0 + 16) = 1;
  }

  return result;
}

uint64_t sub_220EC4350(double a1, double a2)
{
  v5 = v2 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_hoverState;
  if (*(v2 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_hoverState + 24) - 2 >= 2)
  {
    v6 = *(v5 + 16);
    if (*(v2 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_hoverState + 24))
    {
      v8 = *v5;
      v7 = *(v5 + 8);

      sub_220FC2B00();
      sub_220ECC534(v8, v7, v6, 1);
    }

    else
    {
      [*(v5 + 16) invalidate];
    }
  }

  sub_220E1966C(0, &qword_27CF9E590);
  v19[3] = type metadata accessor for PixelSonifier();
  v19[0] = v2;
  v17 = 0u;
  v18 = 0u;

  sub_220F44BD8(v19, sel_hoverTimerFiredWithTimer_, &v17, 0, 0.5);
  v10 = v9;
  v11 = [objc_opt_self() mainRunLoop];
  [v11 addTimer:v10 forMode:*MEMORY[0x277CBE640]];

  v12 = *v5;
  v13 = *(v5 + 8);
  v14 = *(v5 + 16);
  *v5 = a1;
  *(v5 + 8) = a2;
  *(v5 + 16) = v10;
  v15 = *(v5 + 24);
  *(v5 + 24) = 0;

  return sub_220ECC534(v12, v13, v14, v15);
}

uint64_t sub_220EC44DC(double a1, double a2)
{
  if (*(v2 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_hoverState + 24) > 2u || sqrt((*(v2 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_hoverState + 8) - a2) * (*(v2 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_hoverState + 8) - a2) + (*(v2 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_hoverState) - a1) * (*(v2 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_hoverState) - a1)) > 5.0)
  {
    return sub_220EC4350(a1, a2);
  }

  return result;
}

uint64_t sub_220EC4524()
{
  v1 = v0 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_hoverState;
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_hoverState + 24) - 2 >= 2)
  {
    if (*(v0 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_hoverState + 24))
    {

      sub_220FC2B00();
      OUTLINED_FUNCTION_61_3();
      sub_220ECC534(v2, v3, v4, 1);
    }

    else
    {
      [*(v1 + 16) invalidate];
    }
  }

  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = 0;
  v8 = *(v1 + 24);
  *(v1 + 24) = 3;

  return sub_220ECC534(v5, v6, v7, v8);
}

uint64_t sub_220EC45E8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_45_3();
  v5 = v1 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_hoverState;
  v6 = *(v1 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_hoverState + 24);
  if (v6 == 1)
  {
    v8 = *(v5 + 8);
    v7 = *(v5 + 16);
    v9 = *v5;

    sub_220FC2B00();
    sub_220ECC534(v9, v8, v7, 1);
    v6 = *(v5 + 24);
  }

  if (v6 > 2)
  {

    return sub_220EC4524();
  }

  else
  {
    v11 = *v5;
    v10 = *(v5 + 8);
    sub_220FC2AE0();
    v12 = OUTLINED_FUNCTION_24_6();
    __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
    OUTLINED_FUNCTION_0_37();
    v17 = sub_220ECD080(v15, v16);
    v18 = swift_allocObject();
    v18[2] = v1;
    v18[3] = v17;
    v18[4] = v1;
    v18[5] = v11;
    v18[6] = v10;
    swift_retain_n();
    v19 = OUTLINED_FUNCTION_3_22();
    v22 = sub_220F9BB1C(v19, v20, v0, v21, v18);
    v24 = *v5;
    v23 = *(v5 + 8);
    v25 = *(v5 + 16);
    *v5 = v11;
    *(v5 + 8) = v10;
    *(v5 + 16) = v22;
    v26 = *(v5 + 24);
    *(v5 + 24) = 1;
    return sub_220ECC534(v24, v23, v25, v26);
  }
}

uint64_t sub_220EC47A8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 136) = a1;
  *(v6 + 144) = a2;
  *(v6 + 128) = a6;
  v7 = sub_220FC0FD0();
  *(v6 + 152) = v7;
  *(v6 + 160) = *(v7 - 8);
  *(v6 + 168) = swift_task_alloc();
  v8 = sub_220FC1070();
  *(v6 + 176) = v8;
  *(v6 + 184) = *(v8 - 8);
  *(v6 + 192) = swift_task_alloc();
  sub_220FC02B0();
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220EC4978, 0, 0);
}

uint64_t sub_220EC4978()
{
  OUTLINED_FUNCTION_19();
  sub_220FC2AB0();
  *(v0 + 272) = OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_60_2();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v1 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_220EC49F0()
{
  OUTLINED_FUNCTION_25();
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);

  sub_220EC6418(v3, (v0 + 448), v2, v1);
  *(v0 + 280) = 0;
  v4 = *(v0 + 128);
  *(v0 + 449) = *(v0 + 448);

  return MEMORY[0x2822009F8](sub_220EC4AC0, v4, 0);
}

uint64_t sub_220EC4AC0()
{
  v52 = v0;
  if (*(v0 + 449) == 1 && (v1 = sub_220EC65A0(*(v0 + 136), *(v0 + 144)), (v3 & 1) == 0))
  {
    v23 = v1;
    v24 = v2;
    *(v0 + 288) = v2;
    *(v0 + 296) = v1;
    if (qword_27CF9C008 != -1)
    {
      OUTLINED_FUNCTION_2_26();
    }

    v25 = *(v0 + 264);
    v26 = __swift_project_value_buffer(*(v0 + 208), qword_27CF9CBF8);
    *(v0 + 304) = v26;
    sub_220ECC944(v26, v25, &qword_27CF9CF70);
    v27 = sub_220FC17A0();
    *(v0 + 312) = v27;
    v28 = OUTLINED_FUNCTION_49();
    if (__swift_getEnumTagSinglePayload(v28, v29, v27) == 1)
    {
      sub_220E3B2DC(*(v0 + 264), &qword_27CF9CF70);
    }

    else
    {
      v30 = sub_220FC1780();
      v31 = sub_220FC2E30();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_20_0();
        *v32 = 0;
        _os_log_impl(&dword_220E15000, v30, v31, "Overlay sonifier hover triggered. Requesting model for hovered location.", v32, 2u);
        OUTLINED_FUNCTION_50_3();
      }

      OUTLINED_FUNCTION_12();
      v33 = OUTLINED_FUNCTION_50_0();
      v34(v33);
    }

    v35 = *(v0 + 128);
    sub_220E1966C(0, &qword_27CF9E4F8);
    sub_220FC0670();
    v36 = OUTLINED_FUNCTION_59_2();
    *(v0 + 320) = sub_220F44D90(v36, v37, v38, v39, v40, v41);
    OUTLINED_FUNCTION_0_37();
    v44 = sub_220ECD080(v42, v43);
    *(v0 + 328) = v44;
    v45 = swift_task_alloc();
    *(v0 + 336) = v45;
    v45[2] = v35;
    v45[3] = v23;
    v45[4] = v24;
    v46 = swift_task_alloc();
    *(v0 + 344) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E500);
    *v46 = v0;
    v46[1] = sub_220EC4FA4;
    OUTLINED_FUNCTION_47_3();

    return MEMORY[0x2822007B8](v0 + 112, v35, v44, v47, v48, v49, v45, v50);
  }

  else
  {
    if (qword_27CF9C008 != -1)
    {
      OUTLINED_FUNCTION_2_26();
    }

    v4 = *(v0 + 224);
    v5 = __swift_project_value_buffer(*(v0 + 208), qword_27CF9CBF8);
    sub_220ECC944(v5, v4, &qword_27CF9CF70);
    v6 = sub_220FC17A0();
    v7 = OUTLINED_FUNCTION_49();
    if (__swift_getEnumTagSinglePayload(v7, v8, v6) == 1)
    {
      sub_220E3B2DC(*(v0 + 224), &qword_27CF9CF70);
    }

    else
    {
      v9 = sub_220FC1780();
      v10 = sub_220FC2E30();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = *(v0 + 449);
        v13 = *(v0 + 136);
        v12 = *(v0 + 144);
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v51 = v15;
        *v14 = 67109378;
        *(v14 + 4) = v11;
        *(v14 + 8) = 2080;
        *(v0 + 96) = v13;
        *(v0 + 104) = v12;
        type metadata accessor for CGPoint(0);
        v16 = sub_220FC2750();
        v18 = sub_220E20FF8(v16, v17, &v51);

        *(v14 + 10) = v18;
        _os_log_impl(&dword_220E15000, v9, v10, "Invalidating hover state! isStillHovering=%{BOOL}d, potentialHoverPoint=%s", v14, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v15);
        OUTLINED_FUNCTION_32_1();
        OUTLINED_FUNCTION_14_0();
      }

      OUTLINED_FUNCTION_14_8();
      (*(v19 + 8))(v20);
    }

    sub_220EC4524();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_32_0();

    return v21();
  }
}

uint64_t sub_220EC4FA4()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_46_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_220EC50B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_38_0();
  v13 = *(v12 + 112);
  *(v12 + 352) = v13;
  if (!v13)
  {
    v18 = *(v12 + 312);
    sub_220ECC944(*(v12 + 304), *(v12 + 256), &qword_27CF9CF70);
    v19 = OUTLINED_FUNCTION_24_6();
    if (__swift_getEnumTagSinglePayload(v19, v20, v18) != 1)
    {
      v31 = sub_220FC1780();
      v32 = sub_220FC2E10();
      if (OUTLINED_FUNCTION_71_1(v32))
      {
        *OUTLINED_FUNCTION_20_0() = 0;
        OUTLINED_FUNCTION_60(&dword_220E15000, v33, v34, "Did not get a model for the requested location. This was not expected.");
        OUTLINED_FUNCTION_15();
      }

      OUTLINED_FUNCTION_14_8();
      v35 = OUTLINED_FUNCTION_48_3();
      goto LABEL_24;
    }

    v13 = *(v12 + 256);

LABEL_8:
    sub_220E3B2DC(v13, &qword_27CF9CF70);
LABEL_25:
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_19_2();

    return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12);
  }

  v14 = *(v12 + 280);
  sub_220FC2B50();
  *(v12 + 360) = v14;
  if (v14)
  {
    v15 = *(v12 + 320);

    v16 = OUTLINED_FUNCTION_80();
    sub_220ECC944(v16, v15, &qword_27CF9CF70);
    OUTLINED_FUNCTION_20_7();
    if (!v17)
    {
      v24 = v14;
      v25 = sub_220FC1780();
      sub_220FC2E30();
      OUTLINED_FUNCTION_88();
      if (OUTLINED_FUNCTION_53_2())
      {
        OUTLINED_FUNCTION_76_0();
        v27 = OUTLINED_FUNCTION_58_2();
        OUTLINED_FUNCTION_89(5.7779e-34);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_78(v28);
        OUTLINED_FUNCTION_35_5(&dword_220E15000, v29, v30, "Overlay sonifier hover task caught error %@.");
        sub_220E3B2DC(v27, &qword_27CF9EF80);
        OUTLINED_FUNCTION_32_1();
        OUTLINED_FUNCTION_14_0();
      }

      else
      {
      }

      v35 = OUTLINED_FUNCTION_17_5();
      v36 = *(v58 + 8);
LABEL_24:
      v36(v35);
      goto LABEL_25;
    }

    goto LABEL_8;
  }

  v21 = *(v12 + 312);
  sub_220ECC944(*(v12 + 304), *(v12 + 248), &qword_27CF9CF70);
  v22 = OUTLINED_FUNCTION_24_6();
  if (__swift_getEnumTagSinglePayload(v22, v23, v21) == 1)
  {
    sub_220E3B2DC(*(v12 + 248), &qword_27CF9CF70);
  }

  else
  {
    v37 = sub_220FC1780();
    v38 = sub_220FC2E30();
    if (OUTLINED_FUNCTION_71_1(v38))
    {
      *OUTLINED_FUNCTION_20_0() = 0;
      OUTLINED_FUNCTION_60(&dword_220E15000, v39, v40, "Requesting reverse geocoded location for hover point.");
      OUTLINED_FUNCTION_15();
    }

    OUTLINED_FUNCTION_14_8();
    v41 = OUTLINED_FUNCTION_48_3();
    v42(v41);
  }

  v44 = *(v12 + 288);
  v43 = *(v12 + 296);
  v45 = *(v12 + 128);
  v46 = swift_task_alloc();
  *(v12 + 368) = v46;
  v46[2] = v45;
  v46[3] = v43;
  v46[4] = v44;
  swift_task_alloc();
  OUTLINED_FUNCTION_18();
  *(v12 + 376) = v47;
  *v47 = v48;
  v47[1] = sub_220EC54B4;
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_19_2();

  return MEMORY[0x2822007B8](v49, v50, v51, v52, v53, v54, v55, v56);
}

uint64_t sub_220EC54B4()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_46_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_220EC55C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_38_0();
  v13 = v12[45];
  sub_220FC2B50();
  v12[48] = v13;
  if (v13)
  {
    v14 = v12[44];
    v15 = v12[40];
    v16 = OUTLINED_FUNCTION_63_2();
    v17(v16);

    v18 = OUTLINED_FUNCTION_80();
    sub_220ECC944(v18, v15, &qword_27CF9CF70);
    OUTLINED_FUNCTION_20_7();
    if (v19)
    {

      sub_220E3B2DC(v14, &qword_27CF9CF70);
    }

    else
    {
      v23 = v13;
      v24 = sub_220FC1780();
      sub_220FC2E30();
      OUTLINED_FUNCTION_88();
      if (OUTLINED_FUNCTION_53_2())
      {
        OUTLINED_FUNCTION_76_0();
        v26 = OUTLINED_FUNCTION_58_2();
        OUTLINED_FUNCTION_89(5.7779e-34);
        v27 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_78(v27);
        OUTLINED_FUNCTION_35_5(&dword_220E15000, v28, v29, "Overlay sonifier hover task caught error %@.");
        sub_220E3B2DC(v26, &qword_27CF9EF80);
        OUTLINED_FUNCTION_32_1();
        OUTLINED_FUNCTION_14_0();
      }

      else
      {
      }

      v40 = OUTLINED_FUNCTION_17_5();
      (*(v41 + 8))(v40);
    }

    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_19_2();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
  }

  else
  {
    v20 = v12[39];
    sub_220ECC944(v12[38], v12[30], &qword_27CF9CF70);
    v21 = OUTLINED_FUNCTION_24_6();
    if (__swift_getEnumTagSinglePayload(v21, v22, v20) == 1)
    {
      sub_220E3B2DC(v12[30], &qword_27CF9CF70);
    }

    else
    {
      v30 = sub_220FC1780();
      v31 = sub_220FC2E30();
      if (OUTLINED_FUNCTION_71_1(v31))
      {
        *OUTLINED_FUNCTION_20_0() = 0;
        OUTLINED_FUNCTION_60(&dword_220E15000, v32, v33, "Getting description for closest significant location to hover point.");
        OUTLINED_FUNCTION_15();
      }

      OUTLINED_FUNCTION_14_8();
      v34 = OUTLINED_FUNCTION_48_3();
      v35(v34);
    }

    v36 = swift_task_alloc();
    v12[49] = v36;
    *v36 = v12;
    v36[1] = sub_220EC58D4;
    OUTLINED_FUNCTION_19_2();

    return sub_220EC7108(v37);
  }
}

uint64_t sub_220EC58D4()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_17();
  *v2 = v1;
  v4 = *(v3 + 128);
  v5 = *v0;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v9 + 400) = v7;
  *(v9 + 408) = v8;

  return MEMORY[0x2822009F8](sub_220EC59D8, v4, 0);
}

void sub_220EC59D8()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[44];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC9EF0;
  sub_220FC0FF0();
  v8 = sub_220FC0FC0();
  v10 = v9;
  (*(v5 + 8))(v4, v6);
  *(inited + 32) = v8;
  *(inited + 40) = v10;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  v11 = *(v3 + OBJC_IVAR____TtC11WeatherMaps29MapLocationAccessibilityModel_accessibilityDescription + 8);
  *(inited + 64) = *(v3 + OBJC_IVAR____TtC11WeatherMaps29MapLocationAccessibilityModel_accessibilityDescription);
  *(inited + 72) = v11;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
LABEL_2:
  v14 = v12 - 1;
  v15 = 16 * v12 + 40;
  while (v14 != 2)
  {
    if (++v14 > 2)
    {
      __break(1u);
LABEL_43:
      __break(1u);
      return;
    }

    v16 = v15 + 16;
    v17 = *(inited + v15);
    v15 += 16;
    if (v17)
    {
      v18 = *(inited + v16 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220F36F34(0, *(v13 + 16) + 1, 1, v13);
        v13 = v22;
      }

      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_220F36F34(v19 > 1, v20 + 1, 1, v13);
        v13 = v23;
      }

      v12 = v14 + 1;
      *(v13 + 16) = v20 + 1;
      v21 = v13 + 16 * v20;
      *(v21 + 32) = v18;
      *(v21 + 40) = v17;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_220E56120();
  v24 = 0;
  v25 = *(v13 + 16);
  v26 = MEMORY[0x277D84F90];
LABEL_12:
  v27 = (v13 + 40 + 16 * v24);
  while (v25 != v24)
  {
    if (v24 >= *(v13 + 16))
    {
      goto LABEL_43;
    }

    v29 = *(v27 - 1);
    v28 = *v27;
    v27 += 2;
    ++v24;
    v30 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v30 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220F0B298(0, *(v26 + 16) + 1, 1);
      }

      v32 = *(v26 + 16);
      v31 = *(v26 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_220F0B298((v31 > 1), v32 + 1, 1);
      }

      *(v26 + 16) = v32 + 1;
      v33 = v26 + 16 * v32;
      *(v33 + 32) = v29;
      *(v33 + 40) = v28;
      goto LABEL_12;
    }
  }

  v34 = v0[48];

  v0[15] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D068);
  OUTLINED_FUNCTION_61_3();
  sub_220E453D4(v35, v36);
  v37 = sub_220FC2670();
  v39 = v38;

  v0[52] = v39;
  sub_220FC2B50();
  v0[53] = v34;
  if (v34)
  {
    v40 = v0[44];
    v41 = v0[40];
    v42 = OUTLINED_FUNCTION_63_2();
    v43(v42);

    v44 = OUTLINED_FUNCTION_80();
    sub_220ECC944(v44, v39, &qword_27CF9CF70);
    OUTLINED_FUNCTION_20_7();
    if (v45)
    {

      sub_220E3B2DC(v40, &qword_27CF9CF70);
    }

    else
    {
      v48 = v34;
      v49 = sub_220FC1780();
      sub_220FC2E30();
      OUTLINED_FUNCTION_88();
      if (OUTLINED_FUNCTION_53_2())
      {
        OUTLINED_FUNCTION_76_0();
        v51 = OUTLINED_FUNCTION_58_2();
        OUTLINED_FUNCTION_89(5.7779e-34);
        v52 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_78(v52);
        OUTLINED_FUNCTION_35_5(&dword_220E15000, v53, v54, "Overlay sonifier hover task caught error %@.");
        sub_220E3B2DC(v51, &qword_27CF9EF80);
        OUTLINED_FUNCTION_32_1();
        OUTLINED_FUNCTION_14_0();
      }

      else
      {
      }

      v62 = OUTLINED_FUNCTION_17_5();
      (*(v63 + 8))(v62);
    }

    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_32_0();

    v64();
  }

  else
  {
    v46 = v0[39];
    v47 = v0[29];
    sub_220ECC944(v0[38], v47, &qword_27CF9CF70);
    if (__swift_getEnumTagSinglePayload(v47, 1, v46) == 1)
    {
      sub_220E3B2DC(v0[29], &qword_27CF9CF70);
    }

    else
    {
      v55 = sub_220FC1780();
      v56 = sub_220FC2E30();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = OUTLINED_FUNCTION_20_0();
        *v57 = 0;
        _os_log_impl(&dword_220E15000, v55, v56, "About to send hover announcement.", v57, 2u);
        OUTLINED_FUNCTION_32_1();
      }

      v58 = v0[39];
      v59 = v0[29];

      OUTLINED_FUNCTION_12();
      (*(v60 + 8))(v59, v58);
    }

    v61 = swift_task_alloc();
    v0[54] = v61;
    *v61 = v0;
    v61[1] = sub_220EC5FF4;

    sub_220EC393C(v37, v39, 0, 1);
  }
}

uint64_t sub_220EC5FF4()
{
  OUTLINED_FUNCTION_32();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = swift_task_alloc();
  *(v2 + 440) = v5;
  *v5 = v4;
  v5[1] = sub_220EC6148;
  v6 = *(v1 + 128);

  return sub_220EC80C0(v6);
}

uint64_t sub_220EC6148()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_220EC6248, v2, 0);
}

uint64_t sub_220EC6248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_38_0();
  v13 = v12[53];
  sub_220FC2B50();
  v14 = v12[44];
  v15 = v12[40];
  v16 = OUTLINED_FUNCTION_63_2();
  v17(v16);

  if (v13)
  {
    v18 = OUTLINED_FUNCTION_80();
    sub_220ECC944(v18, v15, &qword_27CF9CF70);
    OUTLINED_FUNCTION_20_7();
    if (v19)
    {

      sub_220E3B2DC(v14, &qword_27CF9CF70);
    }

    else
    {
      v20 = v13;
      v21 = sub_220FC1780();
      sub_220FC2E30();
      OUTLINED_FUNCTION_88();
      if (OUTLINED_FUNCTION_53_2())
      {
        OUTLINED_FUNCTION_76_0();
        v23 = OUTLINED_FUNCTION_58_2();
        OUTLINED_FUNCTION_89(5.7779e-34);
        v24 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_78(v24);
        OUTLINED_FUNCTION_35_5(&dword_220E15000, v25, v26, "Overlay sonifier hover task caught error %@.");
        sub_220E3B2DC(v23, &qword_27CF9EF80);
        OUTLINED_FUNCTION_32_1();
        OUTLINED_FUNCTION_14_0();
      }

      else
      {
      }

      v27 = OUTLINED_FUNCTION_17_5();
      (*(v28 + 8))(v27);
    }
  }

  OUTLINED_FUNCTION_12_9();

  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_19_2();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

void sub_220EC6418(uint64_t a1@<X0>, BOOL *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  if (*(a1 + 121) != 1 || !swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_7;
  }

  v8 = *(a1 + 152);
  v9 = *(a1 + 112);
  v10 = [v9 view];
  if (!v10)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v11 = v10;
  [v9 locationInView_];
  v13 = v12;
  v15 = v14;
  ObjectType = swift_getObjectType();
  v17 = sub_220ECD080(&qword_27CF9D548, type metadata accessor for PixelSonifier);
  v18 = COERCE_DOUBLE((*(v8 + 8))(a1, v17, v11, ObjectType, v8, v13, v15));
  v20 = v19;
  LOBYTE(ObjectType) = v21;
  swift_unknownObjectRelease();

  if (ObjectType)
  {
LABEL_7:
    v22 = 0;
    goto LABEL_8;
  }

  v22 = sqrt((v18 - a3) * (v18 - a3) + (v20 - a4) * (v20 - a4)) <= 5.0;
LABEL_8:
  *a2 = v22;
}

uint64_t sub_220EC65A0(double a1, double a2)
{
  v5 = type metadata accessor for SonifierDataState.OverlayFrames(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v27 - v15;
  v17 = OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_frames;
  swift_beginAccess();
  sub_220ECC944(v2 + v17, v16, &qword_27CF9D090);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5))
  {
    v18 = v16;
LABEL_3:
    sub_220E3B2DC(v18, &qword_27CF9D090);
    return 0;
  }

  sub_220ECCD30(v16, v8, type metadata accessor for SonifierDataState.OverlayFrames);
  sub_220E3B2DC(v16, &qword_27CF9D090);
  v19 = &v8[*(v5 + 32)];
  v20 = *v19;
  v21 = v19[8];
  sub_220ECCD8C(v8, type metadata accessor for SonifierDataState.OverlayFrames);
  if (v21)
  {
    return 0;
  }

  sub_220ECC944(v2 + v17, v12, &qword_27CF9D090);
  if (__swift_getEnumTagSinglePayload(v12, 1, v5))
  {
    v18 = v12;
    goto LABEL_3;
  }

  sub_220ECCD30(v12, v8, type metadata accessor for SonifierDataState.OverlayFrames);
  sub_220E3B2DC(v12, &qword_27CF9D090);
  v23 = &v8[*(v5 + 24)];
  v25 = *v23;
  v24 = *(v23 + 1);
  v26 = v23[32];
  sub_220ECCD8C(v8, type metadata accessor for SonifierDataState.OverlayFrames);
  if (v26)
  {
    return 0;
  }

  v28.x = a1 / v20 + v25;
  v28.y = a2 / v20 + v24;
  return *&MKCoordinateForMapPoint(v28);
}

uint64_t sub_220EC6850(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E588);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v25 - v16;
  v18 = sub_220FC2AE0();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  (*(v9 + 16))(v13, a1, v8);
  v19 = sub_220ECD080(&qword_27CF9E4F0, type metadata accessor for PixelSonifier);
  v20 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v21 = (v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  *(v22 + 3) = v19;
  *(v22 + 4) = a2;
  (*(v9 + 32))(&v22[v20], v13, v8);
  v23 = &v22[v21];
  *v23 = a3;
  v23[1] = a4;
  swift_retain_n();
  sub_220F9BB1C(0, 0, v17, &unk_220FD0810, v22);
}

uint64_t sub_220EC6A80(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E588);
  *(v7 + 56) = v8;
  v9 = *(v8 - 8);
  *(v7 + 64) = v9;
  *(v7 + 72) = *(v9 + 64);
  *(v7 + 80) = swift_task_alloc();
  sub_220FC02B0();
  *(v7 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220EC6B84, 0, 0);
}

uint64_t sub_220EC6B84()
{
  OUTLINED_FUNCTION_19();
  sub_220FC2AB0();
  *(v0 + 96) = OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_60_2();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v1 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_220EC6BFC()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = v0[10];
    v2 = v0[8];
    v3 = v0[7];
    v4 = v0[3];
    v5 = v0[4];
    v21 = *(v4 + 152);
    sub_220E1966C(0, &qword_27CF9E4F8);
    sub_220FC0670();
    v6 = OUTLINED_FUNCTION_59_2();
    v12 = sub_220F44D90(v6, v7, v8, v9, v10, v11);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_0_37();
    v15 = sub_220ECD080(v13, v14);
    (*(v2 + 16))(v1, v5, v3);
    v16 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v17 = swift_allocObject();
    (*(v2 + 32))(v17 + v16, v1, v3);
    (*(v21 + 16))(v4, v15, v12, sub_220ECCCAC, v17, ObjectType);

    swift_unknownObjectRelease();
  }

  else
  {
    v0[2] = 0;
    sub_220FC2A50();
  }

  OUTLINED_FUNCTION_32_0();

  return v18();
}

uint64_t sub_220EC6DFC(uint64_t a1, void *a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E588);
  return sub_220FC2A50();
}

uint64_t sub_220EC6E4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E580);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_geocodeManager), *(a2 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_geocodeManager + 24));
  sub_220FC0EB0();
  sub_220E1966C(0, &qword_2812C5CA0);
  v9 = sub_220FC2FC0();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  sub_220FC1490();
}

uint64_t sub_220EC7020(uint64_t a1)
{
  v2 = sub_220FC1070();
  v4 = MEMORY[0x28223BE20](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E580);
  return sub_220FC2A50();
}

uint64_t sub_220EC7108(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E530);
  v2[9] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E538);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E540);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E548);
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = sub_220FC0350();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v7 = sub_220FC03E0();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E550);
  v2[26] = v8;
  v2[27] = *(v8 - 8);
  v2[28] = swift_task_alloc();
  v9 = sub_220FC0FD0();
  v2[29] = v9;
  v2[30] = *(v9 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = type metadata accessor for SonifierDataState.OverlayFrames(0);
  v2[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);
  v2[35] = swift_task_alloc();
  v10 = sub_220FC1070();
  v2[36] = v10;
  v2[37] = *(v10 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220EC757C, v1, 0);
}

uint64_t sub_220EC757C()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_25();
  v2 = v0[7];
  v1 = v0[8];
  OUTLINED_FUNCTION_0_37();
  sub_220ECD080(v3, v4);
  v5 = swift_task_alloc();
  v0[42] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_18();
  v0[43] = v6;
  *v6 = v7;
  v6[1] = sub_220EC768C;
  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_61_0();

  return MEMORY[0x2822007B8](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_220EC768C()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_46_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_220EC77A0()
{
  v1 = v0[36];
  sub_220ECC944(v0[41], v0[40], &unk_27CF9D6D0);
  v2 = OUTLINED_FUNCTION_49();
  if (__swift_getEnumTagSinglePayload(v2, v3, v1) == 1)
  {
    OUTLINED_FUNCTION_83();
    sub_220E3B2DC(v4, v5);
    OUTLINED_FUNCTION_83();
LABEL_15:
    sub_220E3B2DC(v6, v7);
    v95 = 0;
    v97 = 0;
    goto LABEL_16;
  }

  v8 = v0[35];
  v9 = v0[33];
  v10 = v0[8];
  (*(v0[37] + 32))(v0[38], v0[40], v0[36]);
  v11 = OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_frames;
  swift_beginAccess();
  sub_220ECC944(v10 + v11, v8, &qword_27CF9D090);
  v12 = OUTLINED_FUNCTION_24_6();
  if (__swift_getEnumTagSinglePayload(v12, v13, v9))
  {
    v14 = v0[41];
    v15 = v0[35];
    (*(v0[37] + 8))(v0[38], v0[36]);
    sub_220E3B2DC(v14, &unk_27CF9D6D0);
    v7 = &qword_27CF9D090;
    v6 = v15;
    goto LABEL_15;
  }

  v16 = v0[34];
  v17 = v0[35];
  v18 = v0[33];
  sub_220ECCD30(v17, v16, type metadata accessor for SonifierDataState.OverlayFrames);
  sub_220E3B2DC(v17, &qword_27CF9D090);
  v19 = v16 + *(v18 + 24);
  v20 = *(v19 + 16);
  v21 = *(v19 + 24);
  LOBYTE(v17) = *(v19 + 32);
  v22 = OUTLINED_FUNCTION_63_0();
  sub_220ECCD8C(v22, v23);
  if (v17)
  {
    goto LABEL_13;
  }

  v24 = v0[30];
  sub_220FC0FF0();
  v25 = sub_220FC0FC0();
  v27 = v26;
  v28 = *(v24 + 8);
  v29 = OUTLINED_FUNCTION_63_0();
  v28(v29);

  v30 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v30 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {
LABEL_13:
    v48 = v0[41];
    (*(v0[37] + 8))(v0[38], v0[36]);
LABEL_14:
    v7 = &unk_27CF9D6D0;
    v6 = v48;
    goto LABEL_15;
  }

  v31 = v0[31];
  v32 = v0[29];
  sub_220FC0FF0();
  v33 = sub_220FC0FC0();
  v35 = v34;
  (v28)(v31, v32);
  sub_220FC0FE0();
  MKMapPointForCoordinate(v99);
  v105.origin.x = OUTLINED_FUNCTION_62_1();
  v105.size.width = v20;
  v105.size.height = v21;
  if (!MKMapRectContainsPoint(v105, v104))
  {
    v48 = v0[41];

    v51 = OUTLINED_FUNCTION_63_0();
    v52(v51);
    goto LABEL_14;
  }

  v94 = v33;
  v96 = v35;
  v37 = v0[24];
  v36 = v0[25];
  v38 = v0[23];
  v40 = v0[20];
  v39 = v0[21];
  v41 = v0[19];
  v42 = v0[7];
  sub_220FC0FE0();
  MKMapPointForCoordinate(v100);
  [v42 coordinate];
  MKMapPointForCoordinate(v101);
  v102.x = OUTLINED_FUNCTION_62_1();
  MKMetersBetweenMapPoints(v102, v103);
  sub_220FC0390();
  sub_220FC0360();
  (*(v37 + 8))(v36, v38);
  sub_220FC0330();
  sub_220ECD080(&qword_27CF9E558, MEMORY[0x277CC9688]);
  OUTLINED_FUNCTION_48_3();
  v43 = sub_220FC26B0();
  v44 = *(v40 + 8);
  v44(v39, v41);
  if (v43 & 1) != 0 || (sub_220FC0320(), OUTLINED_FUNCTION_9(), v45 = sub_220FC26B0(), v46 = OUTLINED_FUNCTION_63_0(), (v44)(v46), (v45))
  {
    v44(v0[22], v0[19]);
    v47 = &selRef_miles;
  }

  else
  {
    v53 = v0[21];
    v54 = v0[19];
    sub_220FC0340();
    OUTLINED_FUNCTION_48_3();
    v55 = sub_220FC26B0();
    v44(v53, v54);
    v56 = OUTLINED_FUNCTION_9();
    (v44)(v56);
    if (v55)
    {
      v47 = &selRef_kilometers;
    }

    else
    {
      v47 = &selRef_meters;
    }
  }

  v57 = v0[18];
  v89 = v0[17];
  v58 = v0[15];
  v59 = v0[14];
  v84 = v0[13];
  v86 = v0[16];
  v61 = v0[11];
  v60 = v0[12];
  v62 = v0[9];
  v83 = v0[10];
  v91 = v0[7];
  v63 = [objc_opt_self() *v47];
  sub_220E1966C(0, &qword_27CF9E560);
  sub_220FBFC70();
  sub_220FBFCC0();
  sub_220FC0020();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E568);
  OUTLINED_FUNCTION_42();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
  sub_220FBFC10();
  sub_220E3B2DC(v62, &qword_27CF9E530);
  (*(v61 + 8))(v60, v83);
  (*(v59 + 8))(v58, v84);
  sub_220E453D4(&qword_27CF9E570, &qword_27CF9E548);
  sub_220FBFCF0();
  (*(v89 + 8))(v57, v86);
  v88 = v0[6];
  v90 = v0[5];
  sub_220FC0FE0();
  [v91 coordinate];
  v68 = OUTLINED_FUNCTION_62_1();
  v69 = MEMORY[0x223D9D350](v68);
  sub_220EC9E40(v69);
  v71 = v70;
  if (qword_2812C5B30 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v72 = v0[37];
  v92 = v0[38];
  v93 = v0[41];
  v73 = v0[27];
  v85 = v0[28];
  v87 = v0[36];
  v74 = v0[26];
  v75 = qword_2812CE4B0;
  OUTLINED_FUNCTION_25_7();
  sub_220FBFF80();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBD0);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_220FC9EF0;
  v77 = MEMORY[0x277D837D0];
  *(v76 + 56) = MEMORY[0x277D837D0];
  v78 = sub_220E69720();
  *(v76 + 64) = v78;
  *(v76 + 32) = v90;
  *(v76 + 40) = v88;
  v79 = sub_220EC9EEC(v71);
  *(v76 + 96) = v77;
  *(v76 + 104) = v78;
  *(v76 + 72) = v79;
  *(v76 + 80) = v80;
  *(v76 + 136) = v77;
  *(v76 + 144) = v78;
  *(v76 + 112) = v94;
  *(v76 + 120) = v96;
  v81 = sub_220FC26D0();
  v95 = v82;
  v97 = v81;

  (*(v73 + 8))(v85, v74);
  (*(v72 + 8))(v92, v87);
  sub_220E3B2DC(v93, &unk_27CF9D6D0);
LABEL_16:

  v49 = v0[1];

  return v49(v97, v95);
}

uint64_t sub_220EC80E0()
{
  OUTLINED_FUNCTION_19();
  swift_weakInit();
  sub_220FC2AB0();
  *(v0 + 32) = OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_60_2();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v1 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_220EC8164()
{
  OUTLINED_FUNCTION_32();

  sub_220EC822C();
  swift_weakDestroy();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_220EC822C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 152);
      ObjectType = swift_getObjectType();
      v4 = sub_220ECD080(&qword_27CF9D548, type metadata accessor for PixelSonifier);
      v5 = *(v2 + 56);

      v5(v6, v4, ObjectType, v2);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_220EC8328()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v31 - v10;
  if (qword_27CF9C008 != -1)
  {
    OUTLINED_FUNCTION_2_26();
  }

  v12 = __swift_project_value_buffer(v7, qword_27CF9CBF8);
  sub_220ECC944(v12, v11, &qword_27CF9CF70);
  v13 = sub_220FC17A0();
  v14 = OUTLINED_FUNCTION_49();
  if (__swift_getEnumTagSinglePayload(v14, v15, v13) == 1)
  {
    sub_220E3B2DC(v11, &qword_27CF9CF70);
  }

  else
  {
    v16 = sub_220FC1780();
    v17 = sub_220FC2E30();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_20_0();
      *v18 = 0;
      _os_log_impl(&dword_220E15000, v16, v17, "Sonifier hover timer fired.", v18, 2u);
      OUTLINED_FUNCTION_50_3();
    }

    OUTLINED_FUNCTION_12();
    (*(v19 + 8))(v11, v13);
  }

  sub_220FC2AE0();
  OUTLINED_FUNCTION_42();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  sub_220FC2AB0();
  OUTLINED_FUNCTION_60_2();

  v24 = sub_220FC2AA0();
  OUTLINED_FUNCTION_69();
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  v25[2] = v24;
  v25[3] = v26;
  v25[4] = v1;
  v27 = OUTLINED_FUNCTION_3_22();
  sub_220F9BB1C(v27, v28, v6, v29, v30);

  OUTLINED_FUNCTION_35_4();
}

uint64_t sub_220EC8568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_220FC2AB0();
  v4[4] = sub_220FC2AA0();

  return MEMORY[0x2822009F8](sub_220EC85E8, a4, 0);
}

uint64_t sub_220EC85E8()
{
  OUTLINED_FUNCTION_32();
  sub_220EC45E8();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v0 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_220EC8668()
{
  OUTLINED_FUNCTION_19();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

void sub_220EC870C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_45_3();
  v5 = OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_isTrackingGesture;
  if (*(v1 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_isTrackingGesture) == 1)
  {
    sub_220EC4208();
    sub_220EC4524();
    v6 = v1 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_gestureStart;
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 1;
    *(v1 + v5) = 0;
    sub_220FC2AE0();
    v7 = OUTLINED_FUNCTION_24_6();
    __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
    OUTLINED_FUNCTION_0_37();
    v12 = sub_220ECD080(v10, v11);
    OUTLINED_FUNCTION_69();
    v13 = swift_allocObject();
    v13[2] = v1;
    v13[3] = v12;
    v13[4] = v1;
    swift_retain_n();
    v14 = OUTLINED_FUNCTION_3_22();
    sub_220F9BB1C(v14, v15, v0, v16, v13);
  }
}

uint64_t sub_220EC8854()
{
  OUTLINED_FUNCTION_19();
  sub_220FC2AB0();
  *(v0 + 24) = OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_60_2();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v1 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_220EC88CC()
{
  OUTLINED_FUNCTION_19();

  sub_220EC8E94();
  OUTLINED_FUNCTION_32_0();

  return v0();
}

void sub_220EC8928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v10);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v33 - v13;
  if ((a1 - 3) >= 3)
  {
    if ((a1 - 1) < 2)
    {
      v16 = OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_isTrackingGesture;
      v17 = *(v5 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_isTrackingGesture);
      sub_220FC2AE0();
      OUTLINED_FUNCTION_42();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
      OUTLINED_FUNCTION_0_37();
      sub_220ECD080(v22, v23);
      if (v17)
      {
        v24 = swift_allocObject();
        OUTLINED_FUNCTION_54_3(v24);
        v25 = OUTLINED_FUNCTION_3_22();
        sub_220F9BB1C(v25, v26, v14, v27, v17);

        if ((a5 & 1) == 0)
        {
LABEL_8:
          v28 = v5 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_gestureStart;
          if (*(v5 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_gestureStart + 16) == 1)
          {
            *v28 = a3;
            *(v28 + 8) = a4;
            *(v28 + 16) = 0;
          }

          sub_220EC44DC(*&a3, *&a4);
          goto LABEL_13;
        }
      }

      else
      {
        v29 = swift_allocObject();
        OUTLINED_FUNCTION_54_3(v29);
        v30 = OUTLINED_FUNCTION_3_22();
        sub_220F9BB1C(v30, v31, v14, v32, v17);

        sub_220EC3DD8();
        sub_220EC4524();
        *(v5 + v16) = 1;
        if ((a5 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      sub_220EC42EC();
      sub_220EC4524();
    }

LABEL_13:
    OUTLINED_FUNCTION_22();
    return;
  }

  OUTLINED_FUNCTION_22();

  sub_220EC870C();
}

uint64_t sub_220EC8B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 48) = a7;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a4;
  return MEMORY[0x2822009F8](sub_220EC8B34, a4, 0);
}

uint64_t sub_220EC8B34()
{
  OUTLINED_FUNCTION_19();
  sub_220FC2AB0();
  *(v0 + 40) = OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_60_2();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v1 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_220EC8BAC()
{
  OUTLINED_FUNCTION_32();

  OUTLINED_FUNCTION_63_0();
  sub_220EC8D34();
  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t sub_220EC8C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 48) = a7;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a4;
  return MEMORY[0x2822009F8](sub_220EC8C48, a4, 0);
}

uint64_t sub_220EC8C48()
{
  OUTLINED_FUNCTION_19();
  sub_220FC2AB0();
  *(v0 + 40) = OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_60_2();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v1 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_220EC8CC0()
{
  OUTLINED_FUNCTION_32();

  OUTLINED_FUNCTION_63_0();
  sub_220EC8DE4();
  OUTLINED_FUNCTION_32_0();

  return v0();
}

void sub_220EC8D34()
{
  if (OUTLINED_FUNCTION_85())
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_0_37();
    sub_220ECD080(v0, v1);
    v2 = OUTLINED_FUNCTION_52_3();
    v3(v2);
    OUTLINED_FUNCTION_35_4();

    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_35_4();
  }
}

void sub_220EC8DE4()
{
  if (OUTLINED_FUNCTION_85())
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_0_37();
    sub_220ECD080(v0, v1);
    v2 = OUTLINED_FUNCTION_52_3();
    v3(v2);
    OUTLINED_FUNCTION_35_4();

    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_35_4();
  }
}

uint64_t sub_220EC8E94()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 152);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_0_37();
    v6 = sub_220ECD080(v4, v5);
    (*(v2 + 64))(v0, v6, ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_220EC8F44(void *a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v5);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_45_3();
  if (*(v2 + 121) == 1)
  {
    v8 = [a1 view];
    if (v8)
    {
      v9 = v8;
      v10 = [a1 state];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = *(v2 + 152);
        ObjectType = swift_getObjectType();
        OUTLINED_FUNCTION_0_37();
        v15 = sub_220ECD080(v13, v14);
        [a1 locationInView_];
        v16 = (*(v11 + 8))(v3, v15, v9, ObjectType, v11);
        v18 = v17;
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
        v18 = 0;
        v20 = 1;
      }

      v21 = [a1 modifierFlags];
      sub_220FC2AE0();
      v22 = OUTLINED_FUNCTION_24_6();
      __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      *(v25 + 24) = 0;
      *(v25 + 32) = v3;
      *(v25 + 40) = v10;
      *(v25 + 48) = (v21 & 0x80000) != 0;
      *(v25 + 56) = v16;
      *(v25 + 64) = v18;
      *(v25 + 72) = v20 & 1;

      OUTLINED_FUNCTION_3_22();
      sub_220F44E64();

      sub_220E3B2DC(v1, &unk_27CF9EB90);
    }
  }

  OUTLINED_FUNCTION_22();
}

uint64_t sub_220EC9158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 49) = v10;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 48) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  return MEMORY[0x2822009F8](sub_220EC918C, a4, 0);
}

uint64_t sub_220EC918C()
{
  OUTLINED_FUNCTION_19();
  sub_220EC8928(*(v0 + 24), 0, *(v0 + 32), *(v0 + 40), *(v0 + 49) & 1);
  OUTLINED_FUNCTION_32_0();

  return v1();
}

uint64_t sub_220EC9244()
{
  sub_220E22990(v0 + 144);
  sub_220E3B2DC(v0 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_frames, &qword_27CF9D090);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_geocodeManager);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_locationMetadataManager);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_appConfigurationManager);
  OUTLINED_FUNCTION_8_15();
  sub_220ECCD8C(v0 + v1, v2);
  sub_220ECC534(*(v0 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_hoverState), *(v0 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_hoverState + 8), *(v0 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_hoverState + 16), *(v0 + OBJC_IVAR____TtC11WeatherMaps13PixelSonifier_hoverState + 24));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_220EC92F4()
{
  sub_220EC9244();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for PixelSonifier()
{
  result = qword_27CF9E4E0;
  if (!qword_27CF9E4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220EC9374()
{
  sub_220EC94C4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SonifierDataState(319);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_220EC94C4()
{
  if (!qword_2812C6C78[0])
  {
    type metadata accessor for SonifierDataState.OverlayFrames(255);
    v0 = sub_220FC33A0();
    if (!v1)
    {
      atomic_store(v0, qword_2812C6C78);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11WeatherMaps13PixelSonifierC10HoverState33_F4B7238BD2860BCA488783C242A4217ALLO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_220EC9538(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 25))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_220EC9578(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_220EC95C0(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for WeatherMapDisplayMode.SnapshotSizingBehavior(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WeatherMapDisplayMode.SnapshotSizingBehavior(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_220EC963C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220EC9658(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_220EC96A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_220EC9700()
{
  type metadata accessor for PixelSonifier();

  return sub_220FC0A00();
}

uint64_t sub_220EC9758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for PixelSonifier();

  return MEMORY[0x2821D2860](a1, a2, v9, a6);
}

uint64_t sub_220EC97C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for PixelSonifier();

  return MEMORY[0x2821D2870](a1, a2, a3, v11, a7);
}

uint64_t sub_220EC9830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for PixelSonifier();

  return MEMORY[0x2821D2858](a1, a2, a3, a4, v13, a8);
}

uint64_t sub_220EC98B0(uint64_t a1)
{
  result = sub_220ECD080(&qword_27CF9E4F0, type metadata accessor for PixelSonifier);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_220EC9908()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_32_4();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_24(v3);

  return sub_220EC3028(v5, v6, v7, v1);
}

uint64_t sub_220EC999C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E578);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v21 - v13;
  v15 = sub_220FC2AE0();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  v16 = sub_220ECD080(&qword_27CF9E4F0, type metadata accessor for PixelSonifier);
  v17 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a2;
  *(v18 + 3) = v16;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  (*(v7 + 32))(&v18[v17], v10, v6);
  swift_retain_n();
  v19 = a3;
  sub_220F9BB1C(0, 0, v14, &unk_220FD07F8, v18);
}

uint64_t sub_220EC9BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  v6[5] = swift_task_alloc();
  v6[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220EC9C5C, 0, 0);
}

uint64_t sub_220EC9C5C()
{
  OUTLINED_FUNCTION_19();
  sub_220FC2AB0();
  *(v0 + 56) = OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_60_2();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v1 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_220EC9CD4()
{
  OUTLINED_FUNCTION_25();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = v0[2];
    v1 = v0[3];
    v3 = *(v2 + 152);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_0_37();
    v7 = sub_220ECD080(v5, v6);
    (*(v3 + 24))(v2, v7, v1, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_220FC1070();
    OUTLINED_FUNCTION_42();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

  v12 = v0[6];
  v13 = OUTLINED_FUNCTION_63_0();
  sub_220ECC944(v13, v14, &unk_27CF9D6D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E578);
  sub_220FC2A50();
  sub_220E3B2DC(v12, &unk_27CF9D6D0);

  OUTLINED_FUNCTION_32_0();

  return v15();
}

void sub_220EC9E40(double a1)
{
  if (a1 < 0.0)
  {
    a1 = a1 + 360.0;
  }

  v1 = fmod(a1 + 11.25, 360.0) / 22.5;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v1 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v1 > 0xF)
  {
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_220EC9EEC(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_2812C5B30 != -1)
      {
        goto LABEL_44;
      }

      goto LABEL_24;
    case 2:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_36;
    case 3:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    case 4:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    case 5:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_26;
      }

LABEL_45:
      OUTLINED_FUNCTION_1_0();
LABEL_26:
      OUTLINED_FUNCTION_55_2(qword_2812CE4B0);
      OUTLINED_FUNCTION_11_1();
      goto LABEL_35;
    case 6:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_47;
    case 7:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_48;
    case 8:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_48;
    case 9:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_34;
      }

LABEL_48:
      OUTLINED_FUNCTION_1_0();
LABEL_34:
      OUTLINED_FUNCTION_55_2(qword_2812CE4B0);
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_43_1();
      goto LABEL_35;
    case 10:
      if (qword_2812C5B30 != -1)
      {
LABEL_47:
        OUTLINED_FUNCTION_1_0();
      }

LABEL_32:
      v1 = OUTLINED_FUNCTION_55_2(qword_2812CE4B0);
      OUTLINED_FUNCTION_43_1();
      goto LABEL_35;
    case 11:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_28;
      }

      goto LABEL_46;
    case 12:
      if (qword_2812C5B30 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v1 = OUTLINED_FUNCTION_55_2(qword_2812CE4B0);
      goto LABEL_35;
    case 13:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_28;
      }

LABEL_46:
      OUTLINED_FUNCTION_1_0();
LABEL_28:
      OUTLINED_FUNCTION_55_2(qword_2812CE4B0);
      OUTLINED_FUNCTION_84();
      goto LABEL_35;
    case 14:
      if (qword_2812C5B30 != -1)
      {
LABEL_36:
        OUTLINED_FUNCTION_1_0();
      }

LABEL_5:
      v1 = OUTLINED_FUNCTION_55_2(qword_2812CE4B0);
      OUTLINED_FUNCTION_26_6();
      goto LABEL_35;
    case 15:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_44;
    default:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_24;
      }

LABEL_44:
      OUTLINED_FUNCTION_1_0();
LABEL_24:
      OUTLINED_FUNCTION_55_2(qword_2812CE4B0);
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_26_6();
LABEL_35:
      OUTLINED_FUNCTION_25_7();
      v2 = sub_220FBFF80();

      return v2;
  }
}