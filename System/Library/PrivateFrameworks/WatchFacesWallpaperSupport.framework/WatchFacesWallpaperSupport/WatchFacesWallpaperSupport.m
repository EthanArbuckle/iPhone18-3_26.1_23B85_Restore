void *sub_1D96B4B34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D96B4B50()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D96B4B88(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

_OWORD *sub_1D96B4B98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D96B4BB8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D96B4C18()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D96B4C78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D96DA500();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D96B4D24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D96DA500();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D96B4DC8()
{
  MEMORY[0x1DA7360C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D96B4E00()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D96B4E3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D96B4E8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D96B4EE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1D96B4F2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

float sub_1D96B4F70@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 40);
  *a2 = result;
  return result;
}

uint64_t sub_1D96B4FB8(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_1D96B5004@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 88);
  return result;
}

uint64_t sub_1D96B504C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 88) = v2;
  return result;
}

uint64_t sub_1D96B5090()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D96B50CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D96B511C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  return swift_unknownObjectWeakAssign();
}

id sub_1D96B5174@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = *(*a1 + 32);
  if (result)
  {
    result = [result isPaused];
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D96B51B4(unsigned __int8 *a1, uint64_t a2)
{
  result = *(*a2 + 32);
  if (result)
  {
    return [result setPaused_];
  }

  __break(1u);
  return result;
}

id sub_1D96B51D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(*a1 + 32);
  if (result)
  {
    result = [result preferredFramesPerSecond];
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D96B5218(void *a1, uint64_t a2)
{
  result = *(*a2 + 32);
  if (result)
  {
    return [result setPreferredFramesPerSecond_];
  }

  __break(1u);
  return result;
}

id sub_1D96B523C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = *(*a1 + 32);
  if (result)
  {
    result = [result preferredFrameRateRange];
    *a2 = v4;
    a2[1] = v5;
    a2[2] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D96B5280(_DWORD *a1, uint64_t a2, double a3, double a4, double a5)
{
  result = *(*a2 + 32);
  if (result)
  {
    LODWORD(a4) = a1[1];
    LODWORD(a5) = a1[2];
    LODWORD(a3) = *a1;
    return [result setPreferredFrameRateRange_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D96B52B4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D96B52FC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D96B5334()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D96B536C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1D96BE658(v3 + 32, a2, &qword_1ECB3EC68, &unk_1D96DC150);
}

uint64_t sub_1D96B53CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t WallpaperMetalCoordination.EditingCoordinator.renderingType.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1D96B5448@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1D96BE658(v3 + 32, a2, &qword_1ECB3EC68, &unk_1D96DC150);
}

uint64_t sub_1D96B54A4(uint64_t a1, uint64_t *a2)
{
  sub_1D96BE658(a1, v5, &qword_1ECB3EC68, &unk_1D96DC150);
  v3 = *a2;
  swift_beginAccess();
  sub_1D96BDA2C(v5, v3 + 32);
  return swift_endAccess();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t static WallpaperMetalCoordination.EditingCoordinator.LookSelectionStyle.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (!v3)
  {
    if (!v4)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  return sub_1D96B5604(v3, v4);
}

uint64_t sub_1D96B5604(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D96DAAE0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D96B5694(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (!v3)
  {
    if (!v4)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  return sub_1D96B5604(v3, v4);
}

uint64_t sub_1D96B56F4()
{
  v0 = sub_1D96DA5D0();
  __swift_allocate_value_buffer(v0, qword_1ECB3EC28);
  __swift_project_value_buffer(v0, qword_1ECB3EC28);
  return sub_1D96DA5C0();
}

uint64_t WallpaperMetalCoordination.EditingCoordinator.__allocating_init(identifier:rendering:environment:initialLookIdentifier:lookSelectionStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v16 = swift_allocObject();
  WallpaperMetalCoordination.EditingCoordinator.init(identifier:rendering:environment:initialLookIdentifier:lookSelectionStyle:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t WallpaperMetalCoordination.EditingCoordinator.init(identifier:rendering:environment:initialLookIdentifier:lookSelectionStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v9 = v8;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  v13 = (v8 + 32);
  v14 = *a8;
  v13[17] = 0u;
  v13[18] = 0u;
  *(v13 + 76) = 0;
  *(v13 + 308) = -1;
  *(v13 + 39) = 0;
  *(v13 + 40) = 0;
  *(v13 + 328) = 1;
  *(v13 + 43) = 0;
  *(v13 + 44) = 0;
  *(v13 + 42) = 0x3FF0000000000000;
  *(v13 + 6) = a1;
  *(v13 + 7) = a2;
  *(v13 - 2) = a3;
  *(v13 - 1) = a4;
  *(v13 + 15) = a6;
  *(v13 + 16) = a7;
  *(v13 + 4) = 0;
  *(v13 + 5) = v14;
  v16 = qword_1EDB95EA8;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDB969E8;
  if (!qword_1EDB969E8)
  {
    goto LABEL_8;
  }

  v18 = *(qword_1EDB969E8 + OBJC_IVAR____TtCO26WatchFacesWallpaperSupport26WallpaperMetalCoordination9Resources_device);
  *(v9 + 96) = v18;
  *(v9 + 104) = *(v17 + OBJC_IVAR____TtCO26WatchFacesWallpaperSupport26WallpaperMetalCoordination9Resources_commandQueue);
  v44 = a6;
  v19 = v14;
  v20 = a7;
  v21 = *(a4 + 8);
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();

  v22 = v21(a3, a4);
  v23 = (*(a4 + 16))(a3, a4);
  v24 = objc_allocWithZone(type metadata accessor for WallpaperMetalView(0));
  v25 = sub_1D96BEB0C(v18, v22, v23);
  *(v9 + 112) = v25;
  v25[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically] = 0;
  *&v45 = v44;
  *(&v45 + 1) = v20;
  v46 = 0;
  v47[0] = 0;
  *(v47 + 5) = 0;

  v26 = swift_unknownObjectRetain();
  sub_1D96C7CA8(v26, &v45, v48);
  v27 = v48[4];
  *(v9 + 248) = v48[5];
  v28 = v48[7];
  *(v9 + 264) = v48[6];
  *(v9 + 280) = v28;
  v29 = v48[0];
  *(v9 + 184) = v48[1];
  v30 = v48[3];
  *(v9 + 200) = v48[2];
  *(v9 + 216) = v30;
  *(v9 + 232) = v27;
  *(v9 + 296) = v49;
  *(v9 + 168) = v29;
  v31 = MEMORY[0x1E69E7CC0];
  *(v9 + 120) = sub_1D96BDF24(MEMORY[0x1E69E7CC0], &qword_1ECB3EF68, &qword_1D96DC4E8);
  *(v9 + 128) = sub_1D96BD714(v31);
  *(v9 + 136) = sub_1D96BDF24(v31, &qword_1ECB3EF60, &qword_1D96DC4E0);
  *(v9 + 144) = sub_1D96BD81C(v31);

  if (!v19)
  {

LABEL_10:

    swift_unknownObjectRelease();

    v37 = *(v9 + 112);
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = &v37[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler];
    v40 = *&v37[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler];
    v41 = *&v37[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler + 8];
    *v39 = sub_1D96BD938;
    v39[1] = v38;
    v42 = v37;

    sub_1D96B4B88(v40);

    return v9;
  }

  v32 = v21(a3, a4);
  if ((v32 - 70) <= 0x2D && ((1 << (v32 - 70)) & 0x200000000C03) != 0)
  {
    goto LABEL_10;
  }

  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  sub_1D96DA9A0();
  MEMORY[0x1DA735440](0x6F66206C65786970, 0xED00002074616D72);
  v50 = v21(a3, a4);
  type metadata accessor for MTLPixelFormat(0);
  sub_1D96DAA30();
  v13 = &v45;
  MEMORY[0x1DA735440](0x1000000000000052, 0x80000001D96DE8E0);
  sub_1D96DAA40();
  __break(1u);
LABEL_8:

  sub_1D96BAB7C();
  swift_allocError();
  *v33 = 0;
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_1D96BE544(v13, &qword_1ECB3EC68, &unk_1D96DC150);
  v34 = *(v9 + 72);

  v35 = *(v9 + 88);

  v36 = *(v9 + 160);

  sub_1D96BABD0(*(v9 + 304), *(v9 + 312), *(v9 + 320), *(v9 + 328), *(v13 + 76) | (*(v13 + 308) << 32));

  type metadata accessor for WallpaperMetalCoordination.EditingCoordinator();
  swift_deallocPartialClassInstance();
  return v9;
}

uint64_t sub_1D96B5D4C(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D96B7450(a1);
  }

  return result;
}

uint64_t sub_1D96B5DAC(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (qword_1ECB3EC20 != -1)
  {
    swift_once();
  }

  v9 = sub_1D96DA5D0();
  __swift_project_value_buffer(v9, qword_1ECB3EC28);

  v10 = sub_1D96DA5B0();
  v11 = sub_1D96DA870();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v93[0] = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_1D96BB28C(a2, a3, v93);
    _os_log_impl(&dword_1D96B3000, v10, v11, "populating views for ”%{public}s”", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x1DA736010](v13, -1, -1);
    MEMORY[0x1DA736010](v12, -1, -1);
  }

  [a1 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v89 = a1;
  if (*(v5 + 360))
  {
    v22 = [objc_opt_self() mainScreen];
    [v22 nativeScale];
    v24 = v23;

    v97.origin.x = v15;
    v97.origin.y = v17;
    v97.size.width = v19;
    v97.size.height = v21;
    v25 = ceil(v24 * CGRectGetWidth(v97));
    v98.origin.x = v15;
    v98.origin.y = v17;
    v98.size.width = v19;
    v98.size.height = v21;
    v26 = ceil(v24 * CGRectGetHeight(v98));
    *(v5 + 344) = v25;
    *(v5 + 352) = v26;
    *(v5 + 360) = 0;
  }

  else
  {
    v25 = *(v5 + 344);
    v26 = *(v5 + 352);
  }

  swift_beginAccess();
  sub_1D96BE658(v5 + 32, v93, &qword_1ECB3EC68, &unk_1D96DC150);
  v27 = v94;
  sub_1D96BE544(v93, &qword_1ECB3EC68, &unk_1D96DC150);
  v90 = a2;
  if (v27)
  {
    goto LABEL_9;
  }

  v42 = *(v5 + 16);
  v43 = *(v5 + 24);
  result = (*(v43 + 24))(v42, v43);
  if (result)
  {
    v45 = [*(v5 + 104) commandBuffer];
    if (!v45)
    {
      sub_1D96BAB7C();
      swift_allocError();
      *v73 = 1;
      return swift_willThrow();
    }

    v46 = v45;
    v47 = sub_1D96DA690();
    [v46 setLabel_];

    result = swift_unknownObjectRetain();
  }

  else
  {
    v46 = 0;
  }

  if (v25 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_61;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_62;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
    return result;
  }

  v85 = a3;
  v49 = *(v5 + 88);
  v48 = *(v5 + 96);
  v50 = v46;
  v51 = *(v5 + 80);
  v87 = *(v43 + 40);
  v94 = v42;
  v95 = v43;
  __swift_allocate_boxed_opaque_existential_1(v93);
  swift_unknownObjectRetain();

  v87(v48, v51, v49, v25, v26, v50, v42, v43);
  if (v4)
  {
    swift_unknownObjectRelease();
    return __swift_deallocate_boxed_opaque_existential_1(v93);
  }

  swift_beginAccess();
  sub_1D96BDA2C(v93, v5 + 32);
  swift_endAccess();
  if (v50)
  {
    [v50 commit];
  }

  v72 = [*(v5 + 112) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setDrawableSize_];

  sub_1D96B7A74();
  swift_unknownObjectRelease();
  a3 = v86;
LABEL_9:
  v28 = v89;
  v29 = &_swift_FORCE_LOAD___swiftMetal___WatchFacesWallpaperSupport;
  if (*(v5 + 72))
  {
    swift_beginAccess();
    v30 = *(v5 + 120);
    if (*(v30 + 16))
    {
      v31 = *(v5 + 120);

      v32 = sub_1D96BB834(a2, a3);
      if (v33)
      {
        v34 = *(*(v30 + 56) + 8 * v32);

        v35 = sub_1D96DA5B0();
        v36 = sub_1D96DA870();

        if (os_log_type_enabled(v35, v36))
        {
          v88 = v34;
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v92[0] = v38;
          *v37 = 136446210;
          *(v37 + 4) = sub_1D96BB28C(a2, a3, v92);
          _os_log_impl(&dword_1D96B3000, v35, v36, "reusing snapshot layer for “%{public}s”", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v38);
          v39 = v38;
          v28 = v89;
          MEMORY[0x1DA736010](v39, -1, -1);
          v40 = v37;
          v34 = v88;
          MEMORY[0x1DA736010](v40, -1, -1);
        }

        v41 = v34;
        goto LABEL_34;
      }
    }

    v52 = sub_1D96DA5B0();
    v53 = sub_1D96DA870();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v92[0] = v55;
      *v54 = 136446210;
      *(v54 + 4) = sub_1D96BB28C(a2, a3, v92);
      _os_log_impl(&dword_1D96B3000, v52, v53, "creating snapshot layer for “%{public}s”", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      v56 = v55;
      v28 = v89;
      MEMORY[0x1DA736010](v56, -1, -1);
      MEMORY[0x1DA736010](v54, -1, -1);
    }

    v57 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
    [v57 setAnchorPoint_];
    v58 = qword_1EDB95BE0;
    v41 = v57;
    if (v58 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F200, &qword_1D96DC160);
    v59 = sub_1D96DA620();
    [v41 setActions_];

    swift_beginAccess();

    v60 = *(v5 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = *(v5 + 120);
    *(v5 + 120) = 0x8000000000000000;
    sub_1D96BCC14(v41, a2, a3, isUniquelyReferenced_nonNull_native, &qword_1ECB3EF68, &qword_1D96DC4E8);

    *(v5 + 120) = v91;
    swift_endAccess();
LABEL_34:
    v62 = 256;
    if (*(v5 + 296))
    {
      v62 = 264;
    }

    v63 = *(v5 + v62);
    swift_beginAccess();
    v64 = *(v5 + 128);
    if (*(v64 + 16) && (v65 = sub_1D96BB8AC(v63), (v66 & 1) != 0))
    {
      v67 = *(*(v64 + 56) + 8 * v65);
      v29 = &_swift_FORCE_LOAD___swiftMetal___WatchFacesWallpaperSupport;
      if (*(v67 + 16))
      {

        v68 = sub_1D96BB834(a2, a3);
        if (v69)
        {
          v70 = *(*(v67 + 56) + 8 * v68);

          v91 = v70;
          type metadata accessor for CGImage(0);
          v71 = sub_1D96DAAD0();

          goto LABEL_48;
        }
      }

      v71 = 0;
    }

    else
    {
      v71 = 0;
      v29 = &_swift_FORCE_LOAD___swiftMetal___WatchFacesWallpaperSupport;
    }

LABEL_48:
    [v41 setContents_];
    swift_unknownObjectRelease();
    [v41 v29[85]];
    v74 = [v28 layer];
    [v74 addSublayer_];

    swift_beginAccess();

    v75 = v28;
    v76 = *(v5 + 136);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v96 = *(v5 + 136);
    *(v5 + 136) = 0x8000000000000000;
    sub_1D96BCC14(v75, v90, a3, v77, &qword_1ECB3EF60, &qword_1D96DC4E0);

    *(v5 + 136) = v96;
    swift_endAccess();
    if (*(v5 + 152) == v90 && *(v5 + 160) == a3 || (sub_1D96DAAE0() & 1) != 0)
    {
      v78 = v29;

      v79 = sub_1D96DA5B0();
      v80 = a3;
      v81 = sub_1D96DA870();

      if (os_log_type_enabled(v79, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v91 = v83;
        *v82 = 136446210;
        *(v82 + 4) = sub_1D96BB28C(v90, v80, &v91);
        _os_log_impl(&dword_1D96B3000, v79, v81, "adding main view to background for “%{public}s”", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v83);
        MEMORY[0x1DA736010](v83, -1, -1);
        MEMORY[0x1DA736010](v82, -1, -1);
      }

      [v75 addSubview_];
      v29 = v78;
    }

    else
    {
    }

    goto LABEL_55;
  }

  [v89 addSubview_];
LABEL_55:
  v84 = *(v5 + 112);
  [v84 v29[85]];
  *(v84 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically) = 1;
  if (*(v5 + 80) == *(v5 + 152) && *(v5 + 88) == *(v5 + 160))
  {
    return [v84 setNeedsDisplay];
  }

  result = sub_1D96DAAE0();
  if (result)
  {
    return [v84 setNeedsDisplay];
  }

  return result;
}

uint64_t sub_1D96B6968(void *a1, void *a2)
{
  v5 = *(v2 + 160);
  *&v59[0] = *(v2 + 152);
  *(&v59[0] + 1) = v5;
  memset(&v59[1], 0, 21);
  swift_unknownObjectRetain();

  sub_1D96C7CA8(a1, v59, &v61);
  if (!a2)
  {
    if (*(v2 + 296) != 1)
    {
      goto LABEL_8;
    }

    v10 = *(v2 + 280);
    v9 = *(v2 + 288);
    if (CFAbsoluteTimeGetCurrent() > v9 + v10)
    {
      goto LABEL_8;
    }

    v7 = *(v2 + 256);
    v11 = *(v2 + 264);
    v12 = *(v2 + 272);
    v13 = *(v2 + 280);
    v14 = *(v2 + 288);
    v15 = *(v2 + 296);
    v23 = *(&v66 + 1);
    v24 = *(&v67 + 1);
    v52 = v68;
    v54 = v67;
    v51 = *(&v68 + 1);
    v50 = v69;
    sub_1D96BDB84(v7, v11, v12, v13, v14, v15);
    sub_1D96BDB84(v7, v11, v12, v13, v14, v15);
    sub_1D96BDB78(v23, v54, v24, v52, v51, v50);
    *(&v66 + 1) = v7;
    *&v67 = v11;
    *(&v67 + 1) = v12;
    *&v68 = v13;
    *(&v68 + 1) = v14;
LABEL_38:
    v69 = v15;
    goto LABEL_39;
  }

  v6 = 256;
  if (*(v2 + 296))
  {
    v6 = 264;
  }

  v7 = *(v2 + v6);
  v8 = a2;
  if ([a1 deviceOrientation] != v7)
  {
    v53 = v2;
    if (qword_1ECB3EC20 != -1)
    {
      swift_once();
    }

    v16 = sub_1D96DA5D0();
    __swift_project_value_buffer(v16, qword_1ECB3EC28);
    swift_unknownObjectRetain();
    v17 = sub_1D96DA5B0();
    v18 = sub_1D96DA870();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v17, v18))
    {

LABEL_35:
      v30 = v53;
      v11 = [a1 deviceOrientation];
      v12 = [v8 timingFunction];
      if (!v12)
      {
        v31 = *MEMORY[0x1E6979EB8];
        v32 = objc_opt_self();
        v33 = v31;
        v30 = v53;
        v12 = [v32 functionWithName_];
      }

      Current = CFAbsoluteTimeGetCurrent();
      [v8 delay];
      v36 = Current + v35;
      [v8 duration];
      v38 = v37;
      v13 = *&v36;
      v14 = v37;
      v39 = *(v30 + 112);
      v40 = v12;
      [v8 delay];
      v42 = v41;
      [v8 duration];
      sub_1D96BF0F8(v42 + v43);
      v2 = v53;

      sub_1D96BDB78(*(&v66 + 1), v67, *(&v67 + 1), v68, *(&v68 + 1), v69);
      *(&v66 + 1) = v7;
      *&v67 = v11;
      *(&v67 + 1) = v12;
      *&v68 = v36;
      *(&v68 + 1) = v38;
      v15 = 1;
      goto LABEL_38;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v59[0] = v20;
    *v19 = 136446466;
    if (v7 > 2)
    {
      if (v7 != 3)
      {
        if (v7 == 4)
        {
          v22 = 0x70616373646E614CLL;
          v21 = 0xEE007466654C2065;
          goto LABEL_24;
        }

        goto LABEL_21;
      }

      v22 = 0x70616373646E614CLL;
      v21 = 0xEF74686769522065;
    }

    else
    {
      if (v7 != 1)
      {
        if (v7 == 2)
        {
          v21 = 0x80000001D96DE980;
          v22 = 0xD000000000000014;
          goto LABEL_24;
        }

LABEL_21:
        v22 = 0xD000000000000013;
        v21 = 0x80000001D96DE960;
        goto LABEL_24;
      }

      v21 = 0xE800000000000000;
      v22 = 0x7469617274726F50;
    }

LABEL_24:
    v25 = sub_1D96BB28C(v22, v21, v59);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2082;
    v26 = [a1 deviceOrientation];
    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v28 = 0x70616373646E614CLL;
        v27 = 0xEF74686769522065;
        goto LABEL_34;
      }

      if (v26 == 4)
      {
        v28 = 0x70616373646E614CLL;
        v27 = 0xEE007466654C2065;
        goto LABEL_34;
      }
    }

    else
    {
      if (v26 == 1)
      {
        v27 = 0xE800000000000000;
        v28 = 0x7469617274726F50;
        goto LABEL_34;
      }

      if (v26 == 2)
      {
        v27 = 0x80000001D96DE980;
        v28 = 0xD000000000000014;
LABEL_34:
        v29 = sub_1D96BB28C(v28, v27, v59);

        *(v19 + 14) = v29;
        _os_log_impl(&dword_1D96B3000, v17, v18, "🔄 editor starting orientation transition %{public}s → %{public}s", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA736010](v20, -1, -1);
        MEMORY[0x1DA736010](v19, -1, -1);

        goto LABEL_35;
      }
    }

    v28 = 0xD000000000000013;
    v27 = 0x80000001D96DE960;
    goto LABEL_34;
  }

LABEL_8:
  [*(v2 + 112) setNeedsDisplay];
  v7 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
LABEL_39:
  v55[6] = v67;
  v55[7] = v68;
  v56 = v69;
  v55[2] = v63;
  v55[3] = v64;
  v55[4] = v65;
  v55[5] = v66;
  v55[0] = v61;
  v55[1] = v62;
  v44 = *(v2 + 248);
  v45 = *(v2 + 280);
  v57[6] = *(v2 + 264);
  v57[7] = v45;
  v58 = *(v2 + 296);
  v46 = *(v2 + 184);
  v47 = *(v2 + 216);
  v57[2] = *(v2 + 200);
  v57[3] = v47;
  v57[4] = *(v2 + 232);
  v57[5] = v44;
  v57[0] = *(v2 + 168);
  v57[1] = v46;
  *(v2 + 232) = v65;
  *(v2 + 248) = v66;
  v48 = v68;
  *(v2 + 264) = v67;
  *(v2 + 280) = v48;
  *(v2 + 296) = v69;
  *(v2 + 184) = v62;
  *(v2 + 200) = v63;
  *(v2 + 216) = v64;
  *(v2 + 168) = v61;
  sub_1D96BDAB0(v55, v59);
  sub_1D96BDB0C(v57);
  sub_1D96B7A74();
  sub_1D96BDB60(v7, v11, v12, v13, v14, v15);
  v59[6] = v67;
  v59[7] = v68;
  v60 = v69;
  v59[2] = v63;
  v59[3] = v64;
  v59[4] = v65;
  v59[5] = v66;
  v59[0] = v61;
  v59[1] = v62;
  return sub_1D96BDB0C(v59);
}

void sub_1D96B7044(uint64_t a1, uint64_t a2, double a3)
{
  if (!*(v3 + 72))
  {
    v5 = *(v3 + 368);
    if (v5 - a3 <= 0.9)
    {
      v11 = *(v3 + 160);
      v12 = a3;
      v13 = *(v3 + 304);
      v14 = *(v3 + 312);
      v15 = *(v3 + 320);
      v16 = *(v3 + 328);
      v17 = *(v3 + 336) | (*(v3 + 340) << 32);
      *(v3 + 304) = *(v3 + 152);
      *(v3 + 312) = v11;
      *(v3 + 320) = a1;
      *(v3 + 328) = a2;
      *(v3 + 336) = v12;
      *(v3 + 340) = 1;

      sub_1D96BABD0(v13, v14, v15, v16, v17);
      [*(v3 + 112) setNeedsDisplay];
    }

    else
    {
      v6 = v3;
      if (qword_1ECB3EC20 != -1)
      {
        swift_once();
      }

      v7 = sub_1D96DA5D0();
      __swift_project_value_buffer(v7, qword_1ECB3EC28);
      v8 = sub_1D96DA5B0();
      v9 = sub_1D96DA880();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134218240;
        *(v10 + 4) = v5;
        *(v10 + 12) = 2048;
        *(v10 + 14) = a3;
        _os_log_impl(&dword_1D96B3000, v8, v9, "got a nonsense transition-progress change (%f → %f), ignoring", v10, 0x16u);
        MEMORY[0x1DA736010](v10, -1, -1);
      }

      v3 = v6;
    }

    *(v3 + 368) = a3;
  }
}

id sub_1D96B71EC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1ECB3EC20 != -1)
  {
    swift_once();
  }

  v6 = sub_1D96DA5D0();
  __swift_project_value_buffer(v6, qword_1ECB3EC28);

  v7 = sub_1D96DA5B0();
  v8 = sub_1D96DA870();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1D96BB28C(a1, a2, &v29);
    _os_log_impl(&dword_1D96B3000, v7, v8, "finalized transition to “%{public}s”", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x1DA736010](v10, -1, -1);
    MEMORY[0x1DA736010](v9, -1, -1);
  }

  v11 = *(v3 + 160);
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;

  v12 = *(v3 + 216);
  v13 = *(v3 + 224);
  v14 = *(v3 + 232);
  v15 = *(v3 + 240);
  v16 = *(v3 + 248);
  v17 = *(v3 + 252);
  *(v3 + 216) = a1;
  *(v3 + 224) = a2;
  *(v3 + 232) = 0;
  *(v3 + 240) = 0;
  *(v3 + 245) = 0;
  swift_bridgeObjectRetain_n();
  sub_1D96BABE8(v12, v13, v14, v15, v16, v17);
  v18 = *(v3 + 304);
  v19 = *(v3 + 312);
  v20 = *(v3 + 320);
  v21 = *(v3 + 328);
  v22 = *(v3 + 336) | (*(v3 + 340) << 32);
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0;
  *(v3 + 340) = -1;
  sub_1D96BABD0(v18, v19, v20, v21, v22);
  if (*(v3 + 72))
  {
    swift_beginAccess();
    v23 = *(v3 + 136);
    if (*(v23 + 16))
    {
      v24 = *(v3 + 136);

      v25 = sub_1D96BB834(a1, a2);
      if (v26)
      {
        v27 = *(*(v23 + 56) + 8 * v25);

        [v27 addSubview_];
      }

      else
      {
      }
    }
  }

  return [*(v3 + 112) setNeedsDisplay];
}

void sub_1D96B7450(void *a1)
{
  swift_beginAccess();
  sub_1D96BE658(v1 + 32, &v67, &qword_1ECB3EC68, &unk_1D96DC150);
  if (*(&v68 + 1))
  {
    sub_1D96BE49C(&v67, v74);
    v3 = [*(v1 + 104) commandBuffer];
    if (v3)
    {
      v4 = v3;
      if (*(v1 + 340) == 255)
      {
        v5 = *(v1 + 280);
        *&v72[16] = *(v1 + 264);
        *&v72[32] = v5;
        v6 = *(v1 + 248);
        v71 = *(v1 + 232);
        *v72 = v6;
        v7 = *(v1 + 216);
        v73 = *(v1 + 296);
        v8 = *(v1 + 184);
        v69 = *(v1 + 200);
        v70 = v7;
        v67 = *(v1 + 168);
        v68 = v8;
        v50 = *&v72[8];
        v51 = *&v72[24];
        v9 = *&v72[40];
        v10 = v73;
        v52 = v7;
        v53 = v71;
        LODWORD(v11) = *v72;
        LOBYTE(v1) = v72[4];
        v12 = BYTE10(v69);
        v13 = BYTE9(v69);
        v48 = v8;
        v49 = BYTE8(v69);
        v14 = *(&v8 + 1);
        v15 = v69;
        v47 = v67;
        v16 = *(&v67 + 1);
        sub_1D96BDAB0(&v67, &v58);
      }

      else
      {
        v11 = *(v1 + 336) | (*(v1 + 340) << 32);
        v22 = *(v1 + 304);
        v21 = *(v1 + 320);
        v23 = *(v1 + 280);
        *&v72[16] = *(v1 + 264);
        *&v72[32] = v23;
        v24 = *(v1 + 248);
        v73 = *(v1 + 296);
        v25 = *(v1 + 200);
        v26 = *(v1 + 184);
        v67 = *(v1 + 168);
        v68 = v26;
        v27 = *(v1 + 216);
        v69 = v25;
        v70 = v27;
        v71 = *(v1 + 232);
        *v72 = v24;
        v50 = *&v72[8];
        v51 = *&v72[24];
        v46 = *&v72[40];
        v44 = BYTE10(v25);
        v45 = v73;
        v43 = BYTE9(v25);
        v47 = v67;
        v16 = *(&v67 + 1);
        v48 = v26;
        v49 = BYTE8(v25);
        v14 = *(&v26 + 1);
        v15 = v25;
        v28 = *(&v27 + 1);
        v42 = v27;
        v30 = *(&v71 + 1);
        v29 = v71;
        v31 = v24;
        v52 = v22;
        v53 = v21;
        v32 = v3;
        v33 = a1;
        v34 = BYTE4(v24);
        sub_1D96BE5A4(v22, *(&v22 + 1), v21, *(&v21 + 1), v11);
        sub_1D96BDAB0(&v67, &v58);
        v35 = v34 & 1;
        a1 = v33;
        v4 = v32;
        v36 = v28;
        v9 = v46;
        v1 = HIDWORD(v11) & 1;
        v37 = v29;
        v38 = v30;
        v12 = v44;
        v10 = v45;
        v39 = v31;
        v13 = v43;
        sub_1D96BABE8(v42, v36, v37, v38, v39, v35);
      }

      LOBYTE(v67) = v47;
      *(&v67 + 1) = v16;
      LOBYTE(v68) = v48;
      *(&v68 + 1) = v14;
      *&v69 = v15;
      BYTE8(v69) = v49;
      BYTE9(v69) = v13;
      BYTE10(v69) = v12;
      v70 = v52;
      v71 = v53;
      *v72 = v11;
      v72[4] = v1;
      *&v72[8] = v50;
      *&v72[24] = v51;
      *&v72[40] = v9;
      v73 = v10;
      v40 = v75;
      v41 = v76;
      __swift_project_boxed_opaque_existential_1(v74, v75);
      v64 = *&v72[16];
      v65 = *&v72[32];
      v66 = v73;
      v60 = v69;
      v61 = v70;
      v62 = v71;
      v63 = *v72;
      v58 = v67;
      v59 = v68;
      sub_1D96BDAB0(&v67, v56);
      v54 = 0;
      v55 = -1;
      (*(v41 + 48))(&v58, [a1 texture], &v54, v4, v40, v41);
      v56[7] = v65;
      v57 = v66;
      v56[2] = v60;
      v56[3] = v61;
      v56[5] = v63;
      v56[6] = v64;
      v56[4] = v62;
      v56[0] = v58;
      v56[1] = v59;
      sub_1D96BDB0C(v56);
      swift_unknownObjectRelease();
      [v4 commit];
      [v4 waitUntilScheduled];
      [a1 present];
      sub_1D96BDB0C(&v67);
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v74);
  }

  else
  {
    sub_1D96BE544(&v67, &qword_1ECB3EC68, &unk_1D96DC150);
    if (qword_1ECB3EC20 != -1)
    {
      swift_once();
    }

    v17 = sub_1D96DA5D0();
    __swift_project_value_buffer(v17, qword_1ECB3EC28);
    v18 = sub_1D96DA5B0();
    v19 = sub_1D96DA880();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D96B3000, v18, v19, "trying to update layer content with no renderer!", v20, 2u);
      MEMORY[0x1DA736010](v20, -1, -1);
    }
  }
}

void sub_1D96B7A74()
{
  v103 = v0[9];
  if (!v103)
  {
    return;
  }

  v1 = v0;
  v98 = *v0;
  swift_beginAccess();
  sub_1D96BE658((v0 + 4), &v142, &qword_1ECB3EC68, &unk_1D96DC150);
  if (*(&v143 + 1))
  {
    sub_1D96BE49C(&v142, v151);
    if (v0[45])
    {
      if (qword_1ECB3EC20 != -1)
      {
        swift_once();
      }

      v2 = sub_1D96DA5D0();
      __swift_project_value_buffer(v2, qword_1ECB3EC28);
      v3 = sub_1D96DA5B0();
      v4 = sub_1D96DA880();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_1D96B3000, v3, v4, "trying to generate snapshots with no known pixel size", v5, 2u);
        MEMORY[0x1DA736010](v5, -1, -1);
      }

      goto LABEL_82;
    }

    v11 = *(v0 + 43);
    v10 = *(v0 + 44);
    v150 = *(v0 + 296);
    v12 = *(v0 + 31);
    v13 = *(v0 + 23);
    v14 = *(v0 + 27);
    v144 = *(v0 + 25);
    v145 = v14;
    v146 = *(v0 + 29);
    v147 = v12;
    v142 = *(v0 + 21);
    v143 = v13;
    v15 = *(v0 + 35);
    v148 = *(v0 + 33);
    v149 = v15;
    v16 = *(&v147 + 1);
    v18 = *(&v148 + 1);
    v17 = v148;
    v20 = *(&v15 + 1);
    v19 = v15;
    v21 = v150;
    v22 = *(v1 + 27);
    v138 = *(v1 + 25);
    v139 = v22;
    v140 = *(v1 + 29);
    v141 = v1[31];
    v97 = v1;
    v23 = *(v1 + 23);
    v136 = *(v1 + 21);
    v137 = v23;
    v24 = v150;
    v135 = v150;

    sub_1D96BDAB0(&v142, &v129);
    if (v21 == 1)
    {
      sub_1D96BDB78(v16, v17, v18, v19, v20, 1);
      v24 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v135 = 0;
      v16 = v17;
      v17 = 0;
    }

    v131 = v138;
    v132 = v139;
    v133 = v140;
    v129 = v136;
    v130 = v137;
    *v134 = v141;
    *&v134[8] = v16;
    *&v134[16] = v17;
    *&v134[24] = v18;
    *&v134[32] = v19;
    *&v134[40] = v20;
    v134[48] = v24;
    if (v24)
    {
      v25 = v17;
    }

    else
    {
      v25 = v16;
    }

    v96 = v25;
    if (qword_1ECB3EC20 != -1)
    {
      swift_once();
    }

    v26 = v11;
    v27 = sub_1D96DA5D0();
    __swift_project_value_buffer(v27, qword_1ECB3EC28);
    v28 = sub_1D96DA5B0();
    v29 = sub_1D96DA870();
    if (!os_log_type_enabled(v28, v29))
    {
LABEL_33:

      if (v11 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v11 < 9.22337204e18)
      {
        if ((*&v11 & 0x7FF0000000000000) != 0x7FF0000000000000 && (*&v10 & 0x7FF0000000000000) != 0x7FF0000000000000)
        {
          v35 = v10;
          if (v10 > -9.22337204e18)
          {
            if (v10 < 9.22337204e18)
            {
              v36 = v11;
              v37 = v35;
              v94 = v97[3];
              v38 = (*(v94 + 8))();
              v39 = [objc_opt_self() texture2DDescriptorWithPixelFormat:v38 width:v11 height:v37 mipmapped:0];
              [v39 setUsage_];
              [v39 setStorageMode_];
              v40 = swift_allocObject();
              v95 = v38;
              v41 = sub_1D96C7F28(v38);
              v42 = v36 * v41;
              if ((v36 * v41) >> 64 == (v36 * v41) >> 63)
              {
                *(v40 + 16) = v42;
                if (v42 <= 0)
                {
                  v43 = -(-v42 & 0xF);
                }

                else
                {
                  v43 = v42 & 0xF;
                }

                if (v43)
                {
                  v44 = 16 - v43;
                  v45 = __OFADD__(v42, v44);
                  v42 += v44;
                  if (v45)
                  {
LABEL_94:
                    __break(1u);
                    goto LABEL_95;
                  }

                  *(v40 + 16) = v42;
                }

                v46 = v37 * v42;
                if ((v37 * v42) >> 64 == (v37 * v42) >> 63)
                {
                  v47 = *(v103 + 16);
                  if ((v47 * v46) >> 64 == (v47 * v46) >> 63)
                  {
                    v107 = [v97[12] newBufferWithLength_options_];
                    if (v107)
                    {
                      v48 = MEMORY[0x1E69E7CC0];
                      v92 = v37;
                      if (v47)
                      {
                        *&aBlock = MEMORY[0x1E69E7CC0];
                        sub_1D96DAA00();
                        v49 = 0;
                        while ((v46 * v49) >> 64 == (v46 * v49) >> 63)
                        {
                          ++v49;
                          v50 = *(v40 + 16);
                          [v107 newTextureWithDescriptor:v39 offset:? bytesPerRow:?];
                          sub_1D96DA9E0();
                          v51 = v46;
                          v52 = *(aBlock + 16);
                          sub_1D96DAA10();
                          v46 = v51;
                          sub_1D96DAA20();
                          sub_1D96DA9F0();
                          if (v47 == v49)
                          {
                            v53 = aBlock;
                            v48 = MEMORY[0x1E69E7CC0];
                            goto LABEL_58;
                          }
                        }

                        __break(1u);
                        goto LABEL_85;
                      }

                      v53 = MEMORY[0x1E69E7CC0];
LABEL_58:
                      v101 = [v97[13] commandBuffer];
                      if (v101)
                      {
                        v93 = v53;
                        v91 = v46;
                        sub_1D96DA540();
                        v90 = swift_allocBox();
                        *&aBlock = v48;
                        sub_1D96BE610(&qword_1ECB3EF78, MEMORY[0x1E6969B50]);
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF80, &qword_1D96DC4F8);
                        sub_1D96BE84C(&unk_1ECB3EF88, &qword_1ECB3EF80, &qword_1D96DC4F8);
                        sub_1D96DA940();
                        v102 = *(v103 + 16);
                        if (!v102)
                        {
LABEL_73:
                          v80 = (*(v94 + 16))();
                          if (v80)
                          {
                            v81 = v80;

                            v82 = v97;
LABEL_81:
                            v87 = swift_allocObject();
                            *(v87 + 2) = v96;
                            *(v87 + 3) = v82;
                            *(v87 + 4) = v107;
                            *(v87 + 5) = v103;
                            *(v87 + 6) = v90;
                            *(v87 + 7) = v91;
                            *(v87 + 8) = v26;
                            *(v87 + 9) = v92;
                            *(v87 + 10) = v40;
                            *(v87 + 11) = v81;
                            *(v87 + 12) = v95;
                            v87[13] = v98;
                            *&v119 = sub_1D96BE768;
                            *(&v119 + 1) = v87;
                            *&aBlock = MEMORY[0x1E69E9820];
                            *(&aBlock + 1) = 1107296256;
                            *&v118 = sub_1D96BA378;
                            *(&v118 + 1) = &block_descriptor;
                            v88 = _Block_copy(&aBlock);

                            swift_unknownObjectRetain();

                            v89 = v81;

                            [v101 addCompletedHandler_];
                            _Block_release(v88);
                            [v101 commit];

                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();

                            sub_1D96BDB0C(&v129);
                            goto LABEL_82;
                          }

                          v86 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
                          v82 = v97;
                          if (v86)
                          {
                            v81 = v86;

                            goto LABEL_81;
                          }

LABEL_96:
                          __break(1u);
                          return;
                        }

                        if (v102 <= *(v53 + 16))
                        {
                          v57 = 0;
                          v58 = (v103 + 40);
                          v99 = v40;
                          v100 = v39;
                          do
                          {
                            v60 = *(v58 - 1);
                            v59 = *v58;
                            v61 = *(v93 + 32 + 8 * v57);
                            if (v61)
                            {
                              v105 = v57;
                              v106 = v58;
                              v62 = v152;
                              v104 = v153;
                              __swift_project_boxed_opaque_existential_1(v151, v152);
                              v111 = v129;
                              v112 = v130;
                              v113 = v131;
                              v63 = v132;
                              v64 = v133;
                              v65 = *v134;
                              v66 = v134[4];
                              *(v128 + 12) = *&v134[33];
                              v127 = *&v134[5];
                              v128[0] = *&v134[21];
                              swift_bridgeObjectRetain_n();
                              swift_unknownObjectRetain();
                              sub_1D96BDAB0(&v129, &aBlock);
                              sub_1D96BABE8(v63, *(&v63 + 1), v64, *(&v64 + 1), v65, v66 & 1);
                              *&v116[5] = v127;
                              v126 = 0;
                              *&v114 = v60;
                              *(&v114 + 1) = v59;
                              v115 = 0uLL;
                              *v116 = 0;
                              v116[4] = 0;
                              *&v116[21] = v128[0];
                              *&v116[33] = *(v128 + 12);
                              v109 = 0;
                              v110 = -1;
                              (*(v104 + 48))(&v111, v61, &v109, v101, v62);
                              v123 = *&v116[16];
                              v124 = *&v116[32];
                              v125 = v116[48];
                              v119 = v113;
                              v120 = v114;
                              v121 = v115;
                              v122 = *v116;
                              aBlock = v111;
                              v118 = v112;
                              sub_1D96BDB0C(&aBlock);

                              v75 = sub_1D96DA5B0();
                              v76 = sub_1D96DA870();

                              if (os_log_type_enabled(v75, v76))
                              {
                                v77 = swift_slowAlloc();
                                v78 = swift_slowAlloc();
                                v108 = v78;
                                *v77 = 136446210;
                                v79 = sub_1D96BB28C(v60, v59, &v108);

                                *(v77 + 4) = v79;
                                _os_log_impl(&dword_1D96B3000, v75, v76, "snapshotted look “%{public}s”", v77, 0xCu);
                                __swift_destroy_boxed_opaque_existential_0Tm(v78);
                                MEMORY[0x1DA736010](v78, -1, -1);
                                MEMORY[0x1DA736010](v77, -1, -1);
                              }

                              else
                              {
                              }

                              swift_unknownObjectRelease();
                              v40 = v99;
                              v39 = v100;
                              v57 = v105;
                              v58 = v106;
                            }

                            else
                            {
                              v67 = *v58;

                              v68 = sub_1D96DA5B0();
                              v69 = sub_1D96DA880();
                              if (os_log_type_enabled(v68, v69))
                              {
                                v70 = swift_slowAlloc();
                                v71 = v57;
                                v72 = swift_slowAlloc();
                                *&aBlock = v72;
                                *v70 = 136446210;
                                v73 = sub_1D96BB28C(v60, v59, &aBlock);

                                *(v70 + 4) = v73;
                                _os_log_impl(&dword_1D96B3000, v68, v69, "couldn’t snapshot look “%{public}s”, didn’t get a texture from the buffer", v70, 0xCu);
                                __swift_destroy_boxed_opaque_existential_0Tm(v72);
                                v74 = v72;
                                v57 = v71;
                                MEMORY[0x1DA736010](v74, -1, -1);
                                MEMORY[0x1DA736010](v70, -1, -1);
                              }

                              else
                              {
                              }

                              sub_1D96DA520();
                            }

                            ++v57;
                            v58 += 2;
                          }

                          while (v102 != v57);
                          goto LABEL_73;
                        }

LABEL_95:
                        __break(1u);
                        goto LABEL_96;
                      }

                      v83 = sub_1D96DA5B0();
                      v84 = sub_1D96DA880();
                      if (os_log_type_enabled(v83, v84))
                      {
                        v85 = swift_slowAlloc();
                        *v85 = 0;
                        _os_log_impl(&dword_1D96B3000, v83, v84, "couldn’t make command buffer for look snapshotting", v85, 2u);
                        MEMORY[0x1DA736010](v85, -1, -1);
                      }

                      swift_unknownObjectRelease();
                    }

                    else
                    {

                      v54 = sub_1D96DA5B0();
                      v55 = sub_1D96DA880();
                      if (os_log_type_enabled(v54, v55))
                      {
                        v56 = swift_slowAlloc();
                        *v56 = 0;
                        _os_log_impl(&dword_1D96B3000, v54, v55, "couldn’t make buffer for look snapshots", v56, 2u);
                        MEMORY[0x1DA736010](v56, -1, -1);
                      }
                    }

                    sub_1D96BDB0C(&v129);

LABEL_82:
                    __swift_destroy_boxed_opaque_existential_0Tm(v151);
                    return;
                  }

                  goto LABEL_93;
                }

LABEL_92:
                __break(1u);
LABEL_93:
                __break(1u);
                goto LABEL_94;
              }

LABEL_91:
              __break(1u);
              goto LABEL_92;
            }

LABEL_90:
            __break(1u);
            goto LABEL_91;
          }

LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      __break(1u);
      goto LABEL_88;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&aBlock = v31;
    *v30 = 136315138;
    if (v96 <= 2)
    {
      if (v96 == 1)
      {
        v32 = 0xE800000000000000;
        v33 = 0x7469617274726F50;
        goto LABEL_32;
      }

      if (v96 == 2)
      {
        v32 = 0x80000001D96DE980;
        v33 = 0xD000000000000014;
LABEL_32:
        v34 = sub_1D96BB28C(v33, v32, &aBlock);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_1D96B3000, v28, v29, "generating look snapshots for orientation %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        MEMORY[0x1DA736010](v31, -1, -1);
        MEMORY[0x1DA736010](v30, -1, -1);
        goto LABEL_33;
      }

LABEL_28:
      v33 = 0xD000000000000013;
      v32 = 0x80000001D96DE960;
      goto LABEL_32;
    }

    if (v96 == 3)
    {
      v32 = 0xEF74686769522065;
    }

    else
    {
      if (v96 != 4)
      {
        goto LABEL_28;
      }

      v32 = 0xEE007466654C2065;
    }

    v33 = 0x70616373646E614CLL;
    goto LABEL_32;
  }

  sub_1D96BE544(&v142, &qword_1ECB3EC68, &unk_1D96DC150);
  if (qword_1ECB3EC20 != -1)
  {
LABEL_85:
    swift_once();
  }

  v6 = sub_1D96DA5D0();
  __swift_project_value_buffer(v6, qword_1ECB3EC28);
  v7 = sub_1D96DA5B0();
  v8 = sub_1D96DA880();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D96B3000, v7, v8, "trying to generate snapshots when there’s no renderer yet", v9, 2u);
    MEMORY[0x1DA736010](v9, -1, -1);
  }
}

void sub_1D96B8B0C(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v60 = a7;
  v61 = a8;
  v62 = a4;
  v63 = a5;
  v64 = a2;
  v58 = a12;
  v59 = a13;
  v15 = a11;
  v56 = a3;
  v57 = a9;
  v16 = sub_1D96DA5E0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00]();
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D96DA610();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00]();
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 status] == 4)
  {
    v53 = v22;
    if (qword_1ECB3EC20 != -1)
    {
      swift_once();
    }

    v54 = v21;
    v26 = sub_1D96DA5D0();
    __swift_project_value_buffer(v26, qword_1ECB3EC28);
    v27 = sub_1D96DA5B0();
    v28 = sub_1D96DA870();
    v29 = os_log_type_enabled(v27, v28);
    v55 = v17;
    v52 = v16;
    if (!v29)
    {

LABEL_25:
      sub_1D96BE7C4(0, &qword_1EDB95BF0, 0x1E69E9610);
      v39 = sub_1D96DA8D0();
      v40 = swift_allocObject();
      swift_weakInit();
      v41 = swift_allocObject();
      v42 = v62;
      v43 = v63;
      v41[2] = v40;
      v41[3] = v42;
      v41[4] = v43;
      v41[5] = a6;
      v44 = v61;
      v41[6] = v60;
      v41[7] = v44;
      v45 = v58;
      v41[8] = v57;
      v41[9] = a10;
      v41[10] = v15;
      v41[11] = v45;
      v46 = v59;
      v41[12] = v64;
      v41[13] = v46;
      aBlock[4] = sub_1D96BE80C;
      aBlock[5] = v41;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D96C7048;
      aBlock[3] = &block_descriptor_61;
      v47 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      v48 = v15;

      sub_1D96DA5F0();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D96BE610(&qword_1ECB3EF98, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EFA0, &qword_1D96DC500);
      sub_1D96BE84C(&qword_1ECB3EFA8, &qword_1ECB3EFA0, &qword_1D96DC500);
      v49 = v52;
      sub_1D96DA940();
      MEMORY[0x1DA7355F0](0, v25, v20, v47);
      _Block_release(v47);

      (*(v55 + 8))(v20, v49);
      (*(v53 + 8))(v25, v54);
      return;
    }

    v51 = a11;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136446210;
    v50 = a6;
    if (v64 <= 2)
    {
      if (v64 == 1)
      {
        v32 = 0xE800000000000000;
        v33 = 0x7469617274726F50;
        goto LABEL_24;
      }

      if (v64 == 2)
      {
        v32 = 0x80000001D96DE980;
        v33 = 0xD000000000000014;
LABEL_24:
        v38 = sub_1D96BB28C(v33, v32, aBlock);

        *(v30 + 4) = v38;
        _os_log_impl(&dword_1D96B3000, v27, v28, "snapshot rendering finished for %{public}s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        MEMORY[0x1DA736010](v31, -1, -1);
        MEMORY[0x1DA736010](v30, -1, -1);

        a6 = v50;
        v15 = v51;
        goto LABEL_25;
      }

LABEL_20:
      v33 = 0xD000000000000013;
      v32 = 0x80000001D96DE960;
      goto LABEL_24;
    }

    if (v64 == 3)
    {
      v32 = 0xEF74686769522065;
    }

    else
    {
      if (v64 != 4)
      {
        goto LABEL_20;
      }

      v32 = 0xEE007466654C2065;
    }

    v33 = 0x70616373646E614CLL;
    goto LABEL_24;
  }

  if (qword_1ECB3EC20 != -1)
  {
    swift_once();
  }

  v34 = sub_1D96DA5D0();
  __swift_project_value_buffer(v34, qword_1ECB3EC28);
  v64 = sub_1D96DA5B0();
  v35 = sub_1D96DA880();
  if (os_log_type_enabled(v64, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1D96B3000, v64, v35, "look-snapshotting command buffer did not complete successfully", v36, 2u);
    MEMORY[0x1DA736010](v36, -1, -1);
  }

  v37 = v64;
}

uint64_t sub_1D96B9150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, size_t a6, size_t a7, uint64_t a8, CGColorSpace *a9, unint64_t a10, uint64_t a11)
{
  v144 = a7;
  v143 = a6;
  v141 = a5;
  v14 = sub_1D96DA540();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00]();
  *&v154 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v155 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v19 = result;
  v20 = a11;
  v148 = [swift_unknownObjectRetain() contents];
  v21 = a2;
  v22 = *(a3 + 16);
  v138 = a2;
  v145 = a11;
  if (!v22)
  {
    v146 = 0;
    v119 = 256;
    if (*(v19 + 296))
    {
      v119 = 264;
    }

    v20 = *(v19 + v119);
    if (v20 == a11)
    {
LABEL_95:
      v128 = v145;
      sub_1D96BA3D8(v145);
LABEL_115:
      swift_beginAccess();
      swift_unknownObjectRetain();
      v132 = *(v19 + 144);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v157 = *(v19 + 144);
      *(v19 + 144) = 0x8000000000000000;
      sub_1D96BCDB0(a2, v128, isUniquelyReferenced_nonNull_native);
      *(v19 + 144) = v157;
      swift_endAccess();

      return sub_1D96B4B88(v146);
    }

LABEL_88:
    if (qword_1ECB3EC20 == -1)
    {
      goto LABEL_89;
    }

    goto LABEL_122;
  }

  v150 = v19;
  v140 = a10;
  v139 = a9;
  swift_beginAccess();
  swift_beginAccess();
  v146 = 0;
  v19 = 0;
  v152 = *(v15 + 16);
  v153 = v15 + 16;
  v151 = (v15 + 8);
  v135 = a3;
  v23 = (a3 + 40);
  v24 = v141;
  v147 = v14;
  v137 = v22;
  v136 = a8;
  while (1)
  {
    v25 = v154;
    v152(v154, v155, v14);
    v26 = sub_1D96DA530();
    (*v151)(v25, v14);
    if (v26)
    {
      goto LABEL_6;
    }

    if ((v19 * v24) >> 64 != (v19 * v24) >> 63)
    {
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
      swift_once();
LABEL_89:
      v120 = sub_1D96DA5D0();
      __swift_project_value_buffer(v120, qword_1ECB3EC28);
      v121 = sub_1D96DA5B0();
      v122 = sub_1D96DA870();
      if (!os_log_type_enabled(v121, v122))
      {

LABEL_114:
        v128 = v145;
        goto LABEL_115;
      }

      v123 = 0x7469617274726F50;
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v158[0] = v125;
      *v124 = 136446466;
      if (v20 > 2)
      {
        if (v20 != 3)
        {
          if (v20 == 4)
          {
            v127 = 0x70616373646E614CLL;
            v126 = 0xEE007466654C2065;
            goto LABEL_103;
          }

          goto LABEL_100;
        }

        v127 = 0x70616373646E614CLL;
        v126 = 0xEF74686769522065;
      }

      else
      {
        if (v20 != 1)
        {
          if (v20 == 2)
          {
            v126 = 0x80000001D96DE980;
            v127 = 0xD000000000000014;
            goto LABEL_103;
          }

LABEL_100:
          v127 = 0xD000000000000013;
          v126 = 0x80000001D96DE960;
          goto LABEL_103;
        }

        v126 = 0xE800000000000000;
        v127 = 0x7469617274726F50;
      }

LABEL_103:
      v129 = sub_1D96BB28C(v127, v126, v158);

      *(v124 + 4) = v129;
      *(v124 + 12) = 2082;
      if (v145 > 2)
      {
        if (v145 == 3)
        {
          v123 = 0x70616373646E614CLL;
          v130 = 0xEF74686769522065;
          goto LABEL_113;
        }

        if (v145 == 4)
        {
          v123 = 0x70616373646E614CLL;
          v130 = 0xEE007466654C2065;
          goto LABEL_113;
        }
      }

      else
      {
        if (v145 == 1)
        {
          v130 = 0xE800000000000000;
          goto LABEL_113;
        }

        if (v145 == 2)
        {
          v130 = 0x80000001D96DE980;
          v123 = 0xD000000000000014;
LABEL_113:
          v131 = sub_1D96BB28C(v123, v130, v158);

          *(v124 + 14) = v131;
          _os_log_impl(&dword_1D96B3000, v121, v122, "not applying snapshots (final orientation %{public}s, these are %{public}s)", v124, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA736010](v125, -1, -1);
          MEMORY[0x1DA736010](v124, -1, -1);

          a2 = v138;
          goto LABEL_114;
        }
      }

      v123 = 0xD000000000000013;
      v130 = 0x80000001D96DE960;
      goto LABEL_113;
    }

    v27 = CGDataProviderCreateWithData(0, &v148[v19 * v24], v24, nullsub_1);
    if (!v27)
    {
      if (qword_1ECB3EC20 != -1)
      {
        swift_once();
      }

      v31 = sub_1D96DA5D0();
      __swift_project_value_buffer(v31, qword_1ECB3EC28);
      v32 = sub_1D96DA5B0();
      v33 = sub_1D96DA880();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1D96B3000, v32, v33, "couldn’t create data provider", v34, 2u);
        MEMORY[0x1DA736010](v34, -1, -1);
      }

      goto LABEL_5;
    }

    v28 = v27;
    v29 = v140;
    if (v140 - 70 < 2)
    {
      v30 = 16389;
    }

    else if (v140 - 80 >= 2)
    {
      if (v140 != 115)
      {
        goto LABEL_125;
      }

      v30 = 261;
    }

    else
    {
      v30 = 8198;
    }

    v35 = CGImageCreate(v143, v144, 8uLL, 0x20uLL, *(a8 + 16), v139, v30, v27, 0, 0, kCGRenderingIntentDefault);
    if (!v35)
    {
      v32 = v28;
      if (qword_1ECB3EC20 != -1)
      {
        swift_once();
      }

      v51 = sub_1D96DA5D0();
      __swift_project_value_buffer(v51, qword_1ECB3EC28);
      v52 = sub_1D96DA5B0();
      v53 = sub_1D96DA880();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_1D96B3000, v52, v53, "couldn’t create image from data", v54, 2u);
        v55 = v54;
        v24 = v141;
        MEMORY[0x1DA736010](v55, -1, -1);
      }

      goto LABEL_5;
    }

    v36 = v35;
    v142 = v28;
    v37 = *v23;
    v149 = *(v23 - 1);
    v38 = v150;
    swift_beginAccess();

    sub_1D96B4B88(v146);
    v39 = *(v38 + 128);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v156 = *(v38 + 128);
    v41 = v156;
    *(v38 + 128) = 0x8000000000000000;
    v43 = sub_1D96BB8AC(v20);
    v44 = v41[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_118;
    }

    v47 = v42;
    if (v41[3] >= v46)
    {
      if ((v40 & 1) == 0)
      {
        sub_1D96BD1E4();
        v41 = v156;
      }
    }

    else
    {
      sub_1D96BC13C(v46, v40);
      type metadata accessor for UIInterfaceOrientation(0);
      v29 = v48;
      v41 = v156;
      v49 = sub_1D96BB8AC(v20);
      if ((v47 & 1) != (v50 & 1))
      {
        goto LABEL_124;
      }

      v43 = v49;
    }

    *(v150 + 128) = v41;
    if ((v47 & 1) == 0)
    {
      v56 = sub_1D96BDF24(MEMORY[0x1E69E7CC0], &qword_1ECB3EFB0, &qword_1D96DC508);
      v41[(v43 >> 6) + 8] |= 1 << v43;
      *(v41[6] + 8 * v43) = v20;
      *(v41[7] + 8 * v43) = v56;
      v57 = v41[2];
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_120;
      }

      v41[2] = v59;
    }

    v20 = v41[7];
    v32 = v36;
    v60 = *(v20 + 8 * v43);
    a2 = swift_isUniquelyReferenced_nonNull_native();
    v156 = *(v20 + 8 * v43);
    v61 = v156;
    *(v20 + 8 * v43) = 0x8000000000000000;
    v29 = sub_1D96BB834(v149, v37);
    v63 = v61[2];
    v64 = (v62 & 1) == 0;
    v65 = v63 + v64;
    if (__OFADD__(v63, v64))
    {
      goto LABEL_119;
    }

    v66 = v62;
    if (v61[3] < v65)
    {
      break;
    }

    if (a2)
    {
      v69 = v156;
      if ((v62 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_1D96BD354(&qword_1ECB3EFB0, &qword_1D96DC508);
      v69 = v156;
      if ((v66 & 1) == 0)
      {
LABEL_38:
        v69[(v29 >> 6) + 8] |= 1 << v29;
        v70 = (v69[6] + 16 * v29);
        *v70 = v149;
        v70[1] = v37;
        *(v69[7] + 8 * v29) = v32;
        v71 = v69[2];
        v58 = __OFADD__(v71, 1);
        v72 = v71 + 1;
        if (v58)
        {
          goto LABEL_121;
        }

        v69[2] = v72;
        goto LABEL_43;
      }
    }

LABEL_42:
    v73 = v69[7];
    v74 = *(v73 + 8 * v29);
    *(v73 + 8 * v29) = v32;

LABEL_43:
    *(v20 + 8 * v43) = v69;
    swift_endAccess();

    v146 = sub_1D96BA338;
    a2 = v138;
    v20 = v145;
    v22 = v137;
    a8 = v136;
    v24 = v141;
LABEL_5:

    v14 = v147;
LABEL_6:
    ++v19;
    v23 += 2;
    if (v22 == v19)
    {
      v19 = v150;
      v75 = 256;
      if (*(v150 + 296))
      {
        v75 = 264;
      }

      v76 = v20;
      v20 = *(v150 + v75);
      if (v20 == v76)
      {
        swift_beginAccess();
        swift_beginAccess();
        v153 = 0x80000001D96DE980;
        v152 = 0x80000001D96DE960;
        v77 = (v135 + 40);
        *&v78 = 136446210;
        v155 = v78;
        *&v78 = 136446466;
        v154 = v78;
        while (1)
        {
          v79 = *(v77 - 1);
          v80 = *v77;
          v81 = *(v19 + 120);
          v82 = *(v81 + 16);

          if (!v82)
          {
            goto LABEL_65;
          }

          v83 = sub_1D96BB834(v79, v80);
          if ((v84 & 1) == 0)
          {

LABEL_65:
            if (qword_1ECB3EC20 != -1)
            {
              swift_once();
            }

            v102 = sub_1D96DA5D0();
            __swift_project_value_buffer(v102, qword_1ECB3EC28);

            v103 = sub_1D96DA5B0();
            v104 = sub_1D96DA880();

            if (os_log_type_enabled(v103, v104))
            {
              v105 = swift_slowAlloc();
              v106 = v22;
              v107 = swift_slowAlloc();
              v158[0] = v107;
              *v105 = v155;
              v108 = sub_1D96BB28C(v79, v80, v158);

              *(v105 + 4) = v108;
              _os_log_impl(&dword_1D96B3000, v103, v104, "layer for the “%{public}s” snapshot does not exist!", v105, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v107);
              v109 = v107;
              v22 = v106;
              MEMORY[0x1DA736010](v109, -1, -1);
              MEMORY[0x1DA736010](v105, -1, -1);
            }

            else
            {
            }

            goto LABEL_52;
          }

          v85 = v22;
          v86 = *(*(v81 + 56) + 8 * v83);

          if (qword_1ECB3EC20 != -1)
          {
            swift_once();
          }

          v87 = sub_1D96DA5D0();
          __swift_project_value_buffer(v87, qword_1ECB3EC28);

          v88 = sub_1D96DA5B0();
          v89 = sub_1D96DA870();

          if (os_log_type_enabled(v88, v89))
          {
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v158[0] = v91;
            *v90 = v155;
            *(v90 + 4) = sub_1D96BB28C(v79, v80, v158);
            _os_log_impl(&dword_1D96B3000, v88, v89, "applying snapshot to layer for “%{public}s”", v90, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v91);
            MEMORY[0x1DA736010](v91, -1, -1);
            v92 = v90;
            v19 = v150;
            MEMORY[0x1DA736010](v92, -1, -1);
          }

          v93 = *(v19 + 128);
          if (!*(v93 + 16))
          {
            goto LABEL_70;
          }

          v94 = sub_1D96BB8AC(v145);
          if ((v95 & 1) == 0)
          {
            goto LABEL_70;
          }

          v96 = *(*(v93 + 56) + 8 * v94);
          if (!*(v96 + 16))
          {
            goto LABEL_70;
          }

          v97 = sub_1D96BB834(v79, v80);
          if ((v98 & 1) == 0)
          {
            break;
          }

          v99 = v97;

          v100 = *(*(v96 + 56) + 8 * v99);

          v101 = v100;
          [v86 setContents_];

          v22 = v85;
LABEL_52:
          v77 += 2;
          if (!--v22)
          {
            a2 = v138;
            goto LABEL_95;
          }
        }

LABEL_70:

        v110 = sub_1D96DA5B0();
        v111 = sub_1D96DA880();

        if (!os_log_type_enabled(v110, v111))
        {

LABEL_84:

          v22 = v85;
          [v86 setContents_];

          v19 = v150;
          goto LABEL_52;
        }

        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v158[0] = v113;
        *v112 = v154;
        v114 = sub_1D96BB28C(v79, v80, v158);

        *(v112 + 4) = v114;
        *(v112 + 12) = 2082;
        if (v145 > 2)
        {
          if (v145 == 3)
          {
            v115 = 0x70616373646E614CLL;
            v117 = 0xEF74686769522065;
            goto LABEL_83;
          }

          if (v145 == 4)
          {
            v115 = 0x70616373646E614CLL;
            v117 = 0xEE007466654C2065;
LABEL_83:
            v118 = sub_1D96BB28C(v115, v117, v158);

            *(v112 + 14) = v118;
            _os_log_impl(&dword_1D96B3000, v110, v111, "missing snapshot for “%{public}s” in orientation %{public}s — clearing contents", v112, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1DA736010](v113, -1, -1);
            MEMORY[0x1DA736010](v112, -1, -1);
            goto LABEL_84;
          }
        }

        else
        {
          if (v145 == 1)
          {
            v117 = 0xE800000000000000;
            v115 = 0x7469617274726F50;
            goto LABEL_83;
          }

          if (v145 == 2)
          {
            v115 = 0xD000000000000014;
            v116 = &v160;
LABEL_80:
            v117 = *(v116 - 32);
            goto LABEL_83;
          }
        }

        v115 = 0xD000000000000013;
        v116 = &v159;
        goto LABEL_80;
      }

      goto LABEL_88;
    }
  }

  sub_1D96BC3CC(v65, a2, &qword_1ECB3EFB0, &qword_1D96DC508);
  v67 = sub_1D96BB834(v149, v37);
  if ((v66 & 1) == (v68 & 1))
  {
    v29 = v67;
    v69 = v156;
    if ((v66 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_42;
  }

  sub_1D96DAB10();
  __break(1u);
LABEL_124:
  sub_1D96DAB10();
  __break(1u);
LABEL_125:
  v158[0] = 0;
  v158[1] = 0xE000000000000000;
  sub_1D96DA9A0();
  MEMORY[0x1DA735440](0xD000000000000018, 0x80000001D96DEBB0);
  v156 = v29;
  type metadata accessor for MTLPixelFormat(0);
  sub_1D96DAA30();
  result = sub_1D96DAA40();
  __break(1u);
  return result;
}

unint64_t sub_1D96BA338@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D96BDF24(MEMORY[0x1E69E7CC0], &qword_1ECB3EFB0, &qword_1D96DC508);
  *a1 = result;
  return result;
}

uint64_t sub_1D96BA378(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1D96BA3D8(uint64_t a1)
{
  v2 = a1;
  v3 = 256;
  if (*(v1 + 296))
  {
    v3 = 264;
  }

  if (*(v1 + v3) == a1)
  {
    v4 = v1;
    if (qword_1ECB3EC20 != -1)
    {
LABEL_61:
      swift_once();
    }

    v5 = sub_1D96DA5D0();
    __swift_project_value_buffer(v5, qword_1ECB3EC28);
    v6 = sub_1D96DA5B0();
    v7 = sub_1D96DA870();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_32;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v53[0] = v9;
    *v8 = 136446210;
    if (v2 > 2)
    {
      if (v2 == 3)
      {
        v11 = 0x70616373646E614CLL;
        v10 = 0xEF74686769522065;
        goto LABEL_31;
      }

      if (v2 == 4)
      {
        v11 = 0x70616373646E614CLL;
        v10 = 0xEE007466654C2065;
        goto LABEL_31;
      }
    }

    else
    {
      if (v2 == 1)
      {
        v11 = 0x7469617274726F50;
        v10 = 0xE800000000000000;
        goto LABEL_31;
      }

      if (v2 == 2)
      {
        v10 = 0x80000001D96DE980;
        v11 = 0xD000000000000014;
LABEL_31:
        v18 = sub_1D96BB28C(v11, v10, v53);

        *(v8 + 4) = v18;
        _os_log_impl(&dword_1D96B3000, v6, v7, "cleaning up non-%{public}s snapshots", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v9);
        MEMORY[0x1DA736010](v9, -1, -1);
        MEMORY[0x1DA736010](v8, -1, -1);
LABEL_32:

        v54 = sub_1D96BE360(&unk_1F5500EF0);
        sub_1D96D4FF4(v2);
        v19 = 0;
        v2 = v54;
        v20 = v54 + 56;
        v21 = 1 << *(v54 + 32);
        v22 = -1;
        if (v21 < 64)
        {
          v22 = ~(-1 << v21);
        }

        v23 = v22 & *(v54 + 56);
        v24 = (v21 + 63) >> 6;
        while (1)
        {
          if (!v23)
          {
            while (1)
            {
              v26 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                break;
              }

              if (v26 >= v24)
              {

                return;
              }

              v23 = *(v20 + 8 * v26);
              ++v19;
              if (v23)
              {
                v19 = v26;
                goto LABEL_42;
              }
            }

            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

LABEL_42:
          v27 = *(*(v2 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v23)))));
          swift_beginAccess();
          v28 = *(v4 + 128);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v30 = *(v4 + 128);
          *(v4 + 128) = 0x8000000000000000;
          v31 = sub_1D96BB8AC(v27);
          v33 = v30[2];
          v34 = (v32 & 1) == 0;
          v35 = __OFADD__(v33, v34);
          v36 = v33 + v34;
          if (v35)
          {
            goto LABEL_59;
          }

          v37 = v32;
          if (v30[3] < v36)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_47;
          }

          v41 = v31;
          sub_1D96BD1E4();
          v31 = v41;
          if (v37)
          {
LABEL_48:
            v39 = v30[7];
            v40 = *(v39 + 8 * v31);
            *(v39 + 8 * v31) = MEMORY[0x1E69E7CC8];

            goto LABEL_52;
          }

LABEL_50:
          v30[(v31 >> 6) + 8] |= 1 << v31;
          *(v30[6] + 8 * v31) = v27;
          *(v30[7] + 8 * v31) = MEMORY[0x1E69E7CC8];
          v42 = v30[2];
          v35 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v35)
          {
            goto LABEL_60;
          }

          v30[2] = v43;
LABEL_52:
          *(v4 + 128) = v30;
          swift_endAccess();
          swift_beginAccess();
          v44 = *(v4 + 144);
          v45 = sub_1D96BB8AC(v27);
          if (v46)
          {
            v47 = v45;
            v48 = *(v4 + 144);
            v49 = swift_isUniquelyReferenced_nonNull_native();
            v50 = *(v4 + 144);
            *(v4 + 144) = 0x8000000000000000;
            if (!v49)
            {
              sub_1D96BD088();
            }

            v25 = *(*(v50 + 56) + 8 * v47);
            swift_unknownObjectRelease();
            sub_1D96BC8D0(v47, v50);
            *(v4 + 144) = v50;
          }

          v23 &= v23 - 1;
          swift_endAccess();
        }

        sub_1D96BC13C(v36, isUniquelyReferenced_nonNull_native);
        v31 = sub_1D96BB8AC(v27);
        if ((v37 & 1) != (v38 & 1))
        {
          type metadata accessor for UIInterfaceOrientation(0);
          sub_1D96DAB10();
          __break(1u);
          return;
        }

LABEL_47:
        if (v37)
        {
          goto LABEL_48;
        }

        goto LABEL_50;
      }
    }

    v11 = 0xD000000000000013;
    v10 = 0x80000001D96DE960;
    goto LABEL_31;
  }

  if (qword_1ECB3EC20 != -1)
  {
    swift_once();
  }

  v12 = sub_1D96DA5D0();
  __swift_project_value_buffer(v12, qword_1ECB3EC28);
  oslog = sub_1D96DA5B0();
  v13 = sub_1D96DA880();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v53[0] = v15;
    *v14 = 136446210;
    if (v2 > 2)
    {
      if (v2 == 3)
      {
        v17 = 0x70616373646E614CLL;
        v16 = 0xEF74686769522065;
        goto LABEL_57;
      }

      if (v2 == 4)
      {
        v17 = 0x70616373646E614CLL;
        v16 = 0xEE007466654C2065;
        goto LABEL_57;
      }
    }

    else
    {
      if (v2 == 1)
      {
        v17 = 0x7469617274726F50;
        v16 = 0xE800000000000000;
        goto LABEL_57;
      }

      if (v2 == 2)
      {
        v16 = 0x80000001D96DE980;
        v17 = 0xD000000000000014;
LABEL_57:
        v51 = sub_1D96BB28C(v17, v16, v53);

        *(v14 + 4) = v51;
        _os_log_impl(&dword_1D96B3000, oslog, v13, "asked to clean up non-%{public}s snapshots while not in that orientation — skipping", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
        MEMORY[0x1DA736010](v15, -1, -1);
        MEMORY[0x1DA736010](v14, -1, -1);

        return;
      }
    }

    v17 = 0xD000000000000013;
    v16 = 0x80000001D96DE960;
    goto LABEL_57;
  }
}

uint64_t WallpaperMetalCoordination.EditingCoordinator.deinit()
{
  sub_1D96BE544(v0 + 32, &qword_1ECB3EC68, &unk_1D96DC150);
  v1 = *(v0 + 72);

  v2 = *(v0 + 88);

  v3 = *(v0 + 96);
  swift_unknownObjectRelease();
  v4 = *(v0 + 104);
  swift_unknownObjectRelease();

  v5 = *(v0 + 120);

  v6 = *(v0 + 128);

  v7 = *(v0 + 136);

  v8 = *(v0 + 144);

  v9 = *(v0 + 160);

  v10 = *(v0 + 248);
  v11 = *(v0 + 280);
  v15[6] = *(v0 + 264);
  v15[7] = v11;
  v16 = *(v0 + 296);
  v12 = *(v0 + 184);
  v13 = *(v0 + 216);
  v15[2] = *(v0 + 200);
  v15[3] = v13;
  v15[4] = *(v0 + 232);
  v15[5] = v10;
  v15[0] = *(v0 + 168);
  v15[1] = v12;
  sub_1D96BDB0C(v15);
  sub_1D96BABD0(*(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336) | (*(v0 + 340) << 32));

  return v0;
}

uint64_t WallpaperMetalCoordination.EditingCoordinator.__deallocating_deinit()
{
  WallpaperMetalCoordination.EditingCoordinator.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 392, 7);
}

unint64_t sub_1D96BAB7C()
{
  result = qword_1ECB3EC70;
  if (!qword_1ECB3EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3EC70);
  }

  return result;
}

uint64_t sub_1D96BABD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE4(a5) != 255)
  {
    return sub_1D96BABE8(result, a2, a3, a4, a5, BYTE4(a5) & 1);
  }

  return result;
}

uint64_t sub_1D96BABE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  if (a6)
  {
  }

  return result;
}

uint64_t sub_1D96BAC5C()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

uint64_t sub_1D96BACD0()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

uint64_t sub_1D96BAD1C(uint64_t a1, id *a2)
{
  result = sub_1D96DA6A0();
  *a2 = 0;
  return result;
}

uint64_t sub_1D96BAD94(uint64_t a1, id *a2)
{
  v3 = sub_1D96DA6B0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D96BAE14@<X0>(uint64_t *a1@<X8>)
{
  sub_1D96DA6C0();
  v2 = sub_1D96DA690();

  *a1 = v2;
  return result;
}

uint64_t sub_1D96BAE58()
{
  v1 = *v0;
  v2 = sub_1D96DA6C0();
  v3 = MEMORY[0x1DA7354A0](v2);

  return v3;
}

uint64_t sub_1D96BAE94()
{
  v1 = *v0;
  sub_1D96DA6C0();
  sub_1D96DA700();
}

uint64_t sub_1D96BAEE8()
{
  v1 = *v0;
  sub_1D96DA6C0();
  sub_1D96DAB70();
  sub_1D96DA700();
  v2 = sub_1D96DAB90();

  return v2;
}

uint64_t sub_1D96BAF5C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D96DA5A0();
}

uint64_t sub_1D96BAFA8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D96DA590();
}

uint64_t sub_1D96BB000()
{
  sub_1D96DAB70();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1D96DA590();
  return sub_1D96DAB90();
}

uint64_t sub_1D96BB068(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1D96DA6C0();
  v6 = v5;
  if (v4 == sub_1D96DA6C0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D96DAAE0();
  }

  return v9 & 1;
}

uint64_t sub_1D96BB0F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1D96DA580();
}

uint64_t sub_1D96BB15C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D96DA690();

  *a2 = v5;
  return result;
}

uint64_t sub_1D96BB1A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1D96DA6C0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1D96BB1D0(uint64_t a1)
{
  v2 = sub_1D96BE610(&qword_1ECB3EFE0, type metadata accessor for IOSurfacePropertyKey);
  v3 = sub_1D96BE610(&qword_1ECB3EFE8, type metadata accessor for IOSurfacePropertyKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D96BB28C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D96BB358(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1D96BE6C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_1D96BB358(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D96BB464(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1D96DA9D0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1D96BB464(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D96BB4B0(a1, a2);
  sub_1D96BB5E0(&unk_1F5500EC8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1D96BB4B0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D96BB6CC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D96DA9D0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D96DA740();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D96BB6CC(v10, 0);
        result = sub_1D96DA990();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D96BB5E0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1D96BB740(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D96BB6CC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF58, &qword_1D96DC4D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D96BB740(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF58, &qword_1D96DC4D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1D96BB834(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1D96DAB70();
  sub_1D96DA700();
  v6 = sub_1D96DAB90();

  return sub_1D96BBAA4(a1, a2, v6);
}

unint64_t sub_1D96BB8AC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1D96DAB70();
  MEMORY[0x1DA735890](a1);
  v4 = sub_1D96DAB90();

  return sub_1D96BBB5C(a1, v4);
}

unint64_t sub_1D96BB918(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1D96DA6C0();
  sub_1D96DAB70();
  sub_1D96DA700();
  v4 = sub_1D96DAB90();

  return sub_1D96BBBC8(a1, v4);
}

unint64_t sub_1D96BB9AC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1D96DAB70();
  type metadata accessor for CFString(0);
  sub_1D96BE610(&qword_1EDB95C48, type metadata accessor for CFString);
  sub_1D96DA590();
  v4 = sub_1D96DAB90();

  return sub_1D96BBCCC(a1, v4);
}

unint64_t sub_1D96BBA60(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1D96DA900();

  return sub_1D96BBDD8(a1, v5);
}

unint64_t sub_1D96BBAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1D96DAAE0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D96BBB5C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D96BBBC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1D96DA6C0();
      v9 = v8;
      if (v7 == sub_1D96DA6C0() && v9 == v10)
      {
        break;
      }

      v12 = sub_1D96DAAE0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D96BBCCC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1D96BE610(&qword_1EDB95C48, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1D96DA580();

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

unint64_t sub_1D96BBDD8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1D96BE7C4(0, &qword_1EDB95868, 0x1E696AEC0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1D96DA910();

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

uint64_t sub_1D96BBEAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF00, &qword_1D96DC490);
  v33 = a2;
  result = sub_1D96DAA80();
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
      if ((v33 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      v23 = *(v8 + 40);
      sub_1D96DAB70();
      MEMORY[0x1DA735890](v21);
      result = sub_1D96DAB90();
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

    if ((v33 & 1) == 0)
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

uint64_t sub_1D96BC13C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EEF8, &qword_1D96DC488);
  v33 = a2;
  result = sub_1D96DAA80();
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
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1D96DAB70();
      MEMORY[0x1DA735890](v21);
      result = sub_1D96DAB90();
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

    if ((v33 & 1) == 0)
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

uint64_t sub_1D96BC3CC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_1D96DAA80();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
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
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_1D96DAB70();
      sub_1D96DA700();
      result = sub_1D96DAB90();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1D96BC668(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF20, &qword_1D96DC4A8);
  result = sub_1D96DAA80();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
        v23 = v22;
        v24 = v21;
      }

      v25 = *(v8 + 40);
      result = sub_1D96DA900();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
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

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1D96BC8D0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D96DA950() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1D96DAB70();
      MEMORY[0x1DA735890](v10);
      result = sub_1D96DAB90();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D96BCA64(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D96DA950() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1D96DAB70();

      sub_1D96DA700();
      v13 = sub_1D96DAB90();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
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

LABEL_4:
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

  return result;
}

uint64_t sub_1D96BCC14(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1D96BB834(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_1D96BC3CC(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_1D96BB834(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_1D96DAB10();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v23 = v15;
      sub_1D96BD354(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

unint64_t sub_1D96BCDB0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D96BB8AC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1D96BBEAC(v14, a3 & 1);
      v18 = *v4;
      result = sub_1D96BB8AC(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        type metadata accessor for UIInterfaceOrientation(0);
        result = sub_1D96DAB10();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1D96BD088();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_1D96BCF10(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D96BBA60(a2);
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
      sub_1D96BC668(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1D96BBA60(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1D96BE7C4(0, &qword_1EDB95868, 0x1E696AEC0);
        sub_1D96DAB10();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v16 = v8;
      sub_1D96BD4B0();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return MEMORY[0x1EEE66C98]();
}

void *sub_1D96BD088()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF00, &qword_1D96DC490);
  v2 = *v0;
  v3 = sub_1D96DAA70();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
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

void *sub_1D96BD1E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EEF8, &qword_1D96DC488);
  v2 = *v0;
  v3 = sub_1D96DAA70();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

id sub_1D96BD354(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D96DAA70();
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
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

id sub_1D96BD4B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF20, &qword_1D96DC4A8);
  v2 = *v0;
  v3 = sub_1D96DAA70();
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
        v20 = v19;
        result = v18;
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

unint64_t sub_1D96BD610(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF70, &qword_1D96DC4F0);
    v3 = sub_1D96DAA90();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1D96BB834(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1D96BD714(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EEF8, &qword_1D96DC488);
  v3 = sub_1D96DAA90();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1D96BB8AC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1D96BB8AC(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D96BD81C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF00, &qword_1D96DC490);
  v3 = sub_1D96DAA90();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1D96BB8AC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;
    swift_unknownObjectRetain();
    v8 = sub_1D96BB8AC(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1DA736010);
  }

  return result;
}

uint64_t sub_1D96BDA2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EC68, &unk_1D96DC150);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D96BDB60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_1D96BDB78(result, a2, a3, a4, a5, a6 & 1);
  }

  return result;
}

uint64_t sub_1D96BDB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return MEMORY[0x1EEE66BE0]();
  }

  return result;
}

id sub_1D96BDB84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return a3;
  }

  return result;
}

uint64_t sub_1D96BDCC4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D96BDD14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D96BDD68(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1D96BDD84(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D96BDDCC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D96BDDEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Keyframe.Progress(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Keyframe.Progress(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_1D96BDF24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1D96DAA90();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1D96BB834(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D96BE020(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF40, &qword_1D96DC4C0);
    v3 = sub_1D96DAA90();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D96BE658(v4, &v11, &qword_1ECB3EF48, &qword_1D96DC4C8);
      v5 = v11;
      result = sub_1D96BB918(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D96B4B98(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D96BE148(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF28, &qword_1D96DC4B0);
    v3 = sub_1D96DAA90();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D96BE658(v4, &v11, &unk_1ECB3EF30, &qword_1D96DC4B8);
      v5 = v11;
      result = sub_1D96BB9AC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D96B4B98(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D96BE270(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF20, &qword_1D96DC4A8);
    v3 = sub_1D96DAA90();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = sub_1D96BBA60(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      *(v3[7] + 8 * result) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D96BE360(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3EF08, &qword_1D96DC498);
    v3 = sub_1D96DA980();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      sub_1D96DAB70();
      MEMORY[0x1DA735890](v10);
      result = sub_1D96DAB90();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D96BE49C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1D96BE544(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D96BE5A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE4(a5) != 255)
  {
    return sub_1D96BE5BC(result, a2, a3, a4, a5, BYTE4(a5) & 1);
  }

  return result;
}

uint64_t sub_1D96BE5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    v6 = vars8;
  }
}

uint64_t sub_1D96BE610(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D96BE658(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D96BE6C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D96BE7C4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1D96BE84C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_1D96BE940(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

char *sub_1D96BEB0C(uint64_t a1, uint64_t a2, CGColorSpace *a3)
{
  v7 = &v3[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler];
  *v7 = 0;
  v7[1] = 0;
  v3[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically] = 1;
  v8 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_log;
  v9 = sub_1D96DA5D0();
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);
  v3[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_wantsIndefiniteContinuousRendering] = 0;
  v10 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_displayLink;
  type metadata accessor for DisplayLink();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 32) = 0;
  v12 = [objc_opt_self() displayLinkWithTarget:v11 selector:sel__displayLinkFired];
  v13 = *(v11 + 32);
  *(v11 + 32) = v12;

  *&v3[v10] = v11;
  v3[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_linkActive] = 0;
  v14 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_timedRenderingInfo;
  v15 = type metadata accessor for WallpaperMetalView.TimedContinuousRenderingInfo(0);
  (*(*(v15 - 8) + 56))(&v3[v14], 1, 1, v15);
  v30.receiver = v3;
  v30.super_class = type metadata accessor for WallpaperMetalView(0);
  v16 = objc_msgSendSuper2(&v30, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v17 = [v16 layer];
  objc_opt_self();
  v18 = swift_dynamicCastObjCClassUnconditional();
  v19 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_displayLink;
  v20 = *&v16[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_displayLink];
  swift_beginAccess();
  *(v20 + 24) = &off_1F5501308;
  swift_unknownObjectWeakAssign();
  v21 = *&v16[v19];

  sub_1D96DA8A0();
  result = *(v21 + 32);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  [result setPreferredFrameRateRange_];

  result = *(*&v16[v19] + 32);
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  [result setPaused_];
  [v18 setDevice_];
  [v18 setPixelFormat_];
  v23 = [v16 layer];
  if (qword_1EDB95BE0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F200, &qword_1D96DC160);
  v24 = sub_1D96DA620();
  [v23 setActions_];

  v25 = [v16 layer];
  [v25 setPosition_];

  v26 = [v16 layer];
  [v26 setAnchorPoint_];

  v27 = a3;
  if (!a3)
  {
    v27 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  }

  v28 = a3;
  [v18 setColorspace_];

  v29 = v17;
  [v18 setAllowsDisplayCompositing_];
  [v18 setDelegate_];

  [v18 setPresentsWithTransaction_];
  swift_unknownObjectRelease();

  return v16;
}

id sub_1D96BEFA8()
{
  result = *(*&v0[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_displayLink] + 32);
  if (result)
  {
    [result invalidate];
    v2.receiver = v0;
    v2.super_class = type metadata accessor for WallpaperMetalView(0);
    return objc_msgSendSuper2(&v2, sel_dealloc);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D96BF0F8(double a1)
{
  v2 = v1;
  v4 = sub_1D96DA5D0();
  v5 = *(v4 - 8);
  v91 = v4;
  v92 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v85 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v82 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F188, &qword_1D96DC850);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v88 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v82 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F198, qword_1D96DC858);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v89 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = (&v82 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v82 - v22;
  v24 = sub_1D96DA500();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v82 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v82 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v82 - v36;
  sub_1D96DA4F0();
  sub_1D96DA4C0();
  v93 = *(v25 + 8);
  v94 = v25 + 8;
  v93(v35, v24);
  v38 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_timedRenderingInfo;
  swift_beginAccess();
  v95 = v38;
  v96 = v2;
  sub_1D96BE658(v2 + v38, v23, &qword_1ECB3F198, qword_1D96DC858);
  v39 = type metadata accessor for WallpaperMetalView.TimedContinuousRenderingInfo(0);
  v87 = *(v39 - 8);
  v40 = *(v87 + 48);
  v41 = v40(v23, 1, v39);
  v90 = v37;
  v86 = v39;
  if (v41)
  {
    v42 = v25;
    sub_1D96BE544(v23, &qword_1ECB3F198, qword_1D96DC858);
    v43 = v24;
LABEL_7:
    v51 = v92;
    sub_1D96BE658(v96 + v95, v21, &qword_1ECB3F198, qword_1D96DC858);
    v52 = v86;
    v53 = v42;
    if (v40(v21, 1, v86))
    {
      sub_1D96BE544(v21, &qword_1ECB3F198, qword_1D96DC858);
    }

    else
    {
      v54 = *v21;
      sub_1D96BE544(v21, &qword_1ECB3F198, qword_1D96DC858);
      [v54 invalidate];
    }

    v55 = objc_opt_self();
    v56 = swift_allocObject();
    v57 = v96;
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1D96C0BF8;
    aBlock[5] = v56;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D96BFBE4;
    aBlock[3] = &block_descriptor_0;
    v58 = _Block_copy(aBlock);

    v59 = [v55 scheduledTimerWithTimeInterval:0 repeats:v58 block:a1];
    _Block_release(v58);
    v60 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_log;
    swift_beginAccess();
    v61 = v57 + v60;
    v62 = v88;
    sub_1D96BE658(v61, v88, &unk_1ECB3F188, &qword_1D96DC850);
    v63 = v91;
    if ((*(v51 + 48))(v62, 1, v91))
    {
      sub_1D96BE544(v62, &unk_1ECB3F188, &qword_1D96DC850);
    }

    else
    {
      (*(v51 + 16))(v85, v62, v63);
      sub_1D96BE544(v62, &unk_1ECB3F188, &qword_1D96DC850);
      v64 = sub_1D96DA5B0();
      v65 = sub_1D96DA890();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = v43;
        v67 = swift_slowAlloc();
        *v67 = 134349056;
        *(v67 + 4) = a1;
        _os_log_impl(&dword_1D96B3000, v64, v65, "beginning timed continuous rendering for %{public}f seconds", v67, 0xCu);
        v68 = v67;
        v43 = v66;
        v51 = v92;
        MEMORY[0x1DA736010](v68, -1, -1);
      }

      (*(v51 + 8))(v85, v63);
    }

    v69 = v89;
    v70 = v90;
    (*(v53 + 16))(&v89[*(v52 + 20)], v90, v43);
    *v69 = v59;
    (*(v87 + 56))(v69, 0, 1, v52);
    v72 = v95;
    v71 = v96;
    swift_beginAccess();
    v73 = v59;
    sub_1D96C0C18(v69, v71 + v72);
    swift_endAccess();
    sub_1D96BFC4C();

    sub_1D96BE544(v69, &qword_1ECB3F198, qword_1D96DC858);
    return (v93)(v70, v43);
  }

  (*(v25 + 16))(v29, &v23[*(v39 + 20)], v24);
  sub_1D96BE544(v23, &qword_1ECB3F198, qword_1D96DC858);
  v42 = v25;
  (*(v25 + 32))(v32, v29, v24);
  v43 = v24;
  if ((sub_1D96DA4D0() & 1) == 0)
  {
    v93(v32, v24);
    goto LABEL_7;
  }

  v44 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_log;
  v45 = v96;
  swift_beginAccess();
  v46 = v84;
  sub_1D96BE658(v45 + v44, v84, &unk_1ECB3F188, &qword_1D96DC850);
  v47 = v91;
  v48 = v92;
  if ((*(v92 + 48))(v46, 1, v91))
  {
    v49 = v93;
    v93(v32, v24);
    v49(v90, v24);
    return sub_1D96BE544(v46, &unk_1ECB3F188, &qword_1D96DC850);
  }

  else
  {
    v74 = v24;
    v75 = v83;
    (*(v48 + 16))(v83, v46, v47);
    sub_1D96BE544(v46, &unk_1ECB3F188, &qword_1D96DC850);
    v76 = sub_1D96DA5B0();
    v77 = sub_1D96DA890();
    v78 = os_log_type_enabled(v76, v77);
    v79 = v90;
    if (v78)
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_1D96B3000, v76, v77, "display link already running and will stop later than requested: not updating timer", v80, 2u);
      MEMORY[0x1DA736010](v80, -1, -1);
    }

    (*(v48 + 8))(v75, v47);
    v81 = v93;
    v93(v32, v74);
    return v81(v79, v74);
  }
}

uint64_t sub_1D96BFAB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F198, qword_1D96DC858);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8[-v2];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for WallpaperMetalView.TimedContinuousRenderingInfo(0);
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_timedRenderingInfo;
    swift_beginAccess();
    sub_1D96C0C18(v3, v5 + v7);
    swift_endAccess();
    sub_1D96BFC4C();

    return sub_1D96BE544(v3, &qword_1ECB3F198, qword_1D96DC858);
  }

  return result;
}

void sub_1D96BFBE4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1D96BFC4C()
{
  v1 = sub_1D96DA5D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (MEMORY[0x1EEE9AC00])();
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F188, &qword_1D96DC850);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F198, qword_1D96DC858);
  v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v43 - v18;
  if (*(v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_wantsIndefiniteContinuousRendering) == 1)
  {
    v20 = (v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_linkActive);
    if (*(v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_linkActive))
    {
      return;
    }

    goto LABEL_6;
  }

  v43 = v6;
  v44 = v13;
  v21 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_timedRenderingInfo;
  swift_beginAccess();
  sub_1D96BE658(v0 + v21, v19, &qword_1ECB3F198, qword_1D96DC858);
  v22 = type metadata accessor for WallpaperMetalView.TimedContinuousRenderingInfo(0);
  v23 = (*(*(v22 - 8) + 48))(v19, 1, v22);
  sub_1D96BE544(v19, &qword_1ECB3F198, qword_1D96DC858);
  v20 = (v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_linkActive);
  if ((v23 != 1) != *(v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_linkActive))
  {
    if (v23 != 1)
    {
LABEL_6:
      v24 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_log;
      swift_beginAccess();
      sub_1D96BE658(v0 + v24, v15, &unk_1ECB3F188, &qword_1D96DC850);
      if ((*(v2 + 48))(v15, 1, v1))
      {
        sub_1D96BE544(v15, &unk_1ECB3F188, &qword_1D96DC850);
      }

      else
      {
        v25 = v0;
        (*(v2 + 16))(v8, v15, v1);
        sub_1D96BE544(v15, &unk_1ECB3F188, &qword_1D96DC850);
        v26 = sub_1D96DA5B0();
        v27 = sub_1D96DA890();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_1D96B3000, v26, v27, "🟢 starting display link", v28, 2u);
          MEMORY[0x1DA736010](v28, -1, -1);
        }

        (*(v2 + 8))(v8, v1);
        v0 = v25;
      }

      v29 = *(v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_displayLink);
      v30 = *(v29 + 32);
      if (v30)
      {
        [v30 setPaused_];
        v31 = [objc_opt_self() mainRunLoop];
        v32 = *(v29 + 32);
        if (v32)
        {
          [v32 addToRunLoop:v31 forMode:*MEMORY[0x1E695DA28]];

          *v20 = 1;
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_25;
    }

    v33 = *(v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_displayLink);
    v34 = [objc_opt_self() mainRunLoop];
    v35 = *(v33 + 32);
    if (!v35)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    [v35 removeFromRunLoop:v34 forMode:*MEMORY[0x1E695DA28]];

    v36 = *(v33 + 32);
    v37 = v44;
    if (!v36)
    {
LABEL_26:
      __break(1u);
      return;
    }

    [v36 setPaused_];
    v38 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_log;
    swift_beginAccess();
    sub_1D96BE658(v0 + v38, v37, &unk_1ECB3F188, &qword_1D96DC850);
    if ((*(v2 + 48))(v37, 1, v1))
    {
      sub_1D96BE544(v37, &unk_1ECB3F188, &qword_1D96DC850);
    }

    else
    {
      v39 = v43;
      (*(v2 + 16))(v43, v37, v1);
      sub_1D96BE544(v37, &unk_1ECB3F188, &qword_1D96DC850);
      v40 = sub_1D96DA5B0();
      v41 = sub_1D96DA890();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1D96B3000, v40, v41, "🛑 stopped display link", v42, 2u);
        MEMORY[0x1DA736010](v42, -1, -1);
      }

      (*(v2 + 8))(v39, v1);
    }

    *v20 = 0;
  }
}

void sub_1D96C0344()
{
  sub_1D96C0468(319, qword_1EDB95C60, MEMORY[0x1E69E9420]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1D96C0468(319, &unk_1EDB95D58, type metadata accessor for WallpaperMetalView.TimedContinuousRenderingInfo);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D96C0468(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D96DA920();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D96C04DC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D96C053C()
{
  result = sub_1D96BE7C4(319, &qword_1EDB95BD8, 0x1E695DFF0);
  if (v1 <= 0x3F)
  {
    result = sub_1D96DA500();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D96C05D4()
{
  v1 = (v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically) = 1;
  v2 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_log;
  v3 = sub_1D96DA5D0();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_wantsIndefiniteContinuousRendering) = 0;
  v4 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_displayLink;
  type metadata accessor for DisplayLink();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 32) = 0;
  v6 = [objc_opt_self() displayLinkWithTarget:v5 selector:sel__displayLinkFired];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  *(v0 + v4) = v5;
  *(v0 + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_linkActive) = 0;
  v8 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_timedRenderingInfo;
  v9 = type metadata accessor for WallpaperMetalView.TimedContinuousRenderingInfo(0);
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  sub_1D96DAA40();
  __break(1u);
}

void sub_1D96C0764()
{
  v2 = v0;
  v3 = sub_1D96DA5D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F188, &qword_1D96DC850);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically;
  if (v2[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_shouldDrawAutomatically] != 1)
  {
    goto LABEL_8;
  }

  v13 = *(*&v2[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_displayLink] + 32);
  if (!v13)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (![v13 isPaused])
  {
LABEL_8:
    v19 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_log;
    swift_beginAccess();
    sub_1D96BE658(&v2[v19], v11, &unk_1ECB3F188, &qword_1D96DC850);
    if ((*(v4 + 48))(v11, 1, v3))
    {
      sub_1D96BE544(v11, &unk_1ECB3F188, &qword_1D96DC850);
      return;
    }

    (*(v4 + 16))(v7, v11, v3);
    sub_1D96BE544(v11, &unk_1ECB3F188, &qword_1D96DC850);
    v1 = v2;
    v20 = sub_1D96DA5B0();
    v21 = sub_1D96DA870();
    if (!os_log_type_enabled(v20, v21))
    {

      v20 = v1;
      goto LABEL_14;
    }

    v22 = swift_slowAlloc();
    *v22 = 67109376;
    *(v22 + 4) = v2[v12];
    *(v22 + 8) = 1024;
    v23 = (*(&v1->isa + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_displayLink))[4];
    if (v23)
    {
      *(v22 + 10) = [v23 isPaused];

      _os_log_impl(&dword_1D96B3000, v20, v21, "skipping needs-display render: should auto-draw %{BOOL}d, link paused %{BOOL}d", v22, 0xEu);
      MEMORY[0x1DA736010](v22, -1, -1);
LABEL_14:

      (*(v4 + 8))(v7, v3);
      return;
    }

LABEL_21:

    __break(1u);
    return;
  }

  v14 = *&v2[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler];
  if (v14)
  {
    v15 = *&v2[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler + 8];

    v16 = [v2 layer];
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = [v17 nextDrawable];

      if (v18)
      {
        v14(v18);
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    sub_1D96BEAFC(v14);
  }
}

void sub_1D96C0B08()
{
  v1 = *&v0[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_drawingHandler + 8];

    v3 = [v0 layer];
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 nextDrawable];

      if (v5)
      {
        v1(v5);
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    sub_1D96BEAFC(v1);
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D96C0C18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F198, qword_1D96DC858);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double WallpaperMetalCoordination.WallpaperState.unlockState.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = result;
  return result;
}

double WallpaperMetalCoordination.WallpaperState.unlockState.setter(uint64_t a1)
{
  result = *(a1 + 8);
  *v1 = *a1;
  *(v1 + 8) = result;
  return result;
}

__n128 WallpaperMetalCoordination.WallpaperState.wakeState.getter@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 16);
  result = *(v1 + 24);
  *(a1 + 8) = result;
  return result;
}

__n128 WallpaperMetalCoordination.WallpaperState.wakeState.setter(uint64_t a1)
{
  *(v1 + 16) = *a1;
  result = *(a1 + 8);
  *(v1 + 24) = result;
  return result;
}

float sub_1D96C0DCC()
{
  v1 = *v0 - 2;
  if (*(v0 + 40))
  {
    v2 = *(v0 + 8);
    v3 = 0.0;
    v4 = 0.0;
    v5 = *v0 - 4 < 0;
    if (v1 <= 2)
    {
      v4 = flt_1D96DCB3C[v1];
    }

    if ((v2 - 2) <= 2)
    {
      v3 = flt_1D96DCB3C[v2 - 2];
    }

    v8 = *(v0 + 16);
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = (CFAbsoluteTimeGetCurrent() - v6) / v7;
    *&v9 = v9;
    if (*&v9 < 1.0)
    {
      if (*&v9 > 1.0)
      {
        *&v9 = 1.0;
      }

      [v8 _solveForInput_];
      v11 = fabsf(vabds_f32(v3, v4) + -3.1416);
      v12 = (v3 - v4) + 6.2832;
      if ((v3 - v4) >= -3.1416)
      {
        v12 = v3 - v4;
      }

      if ((v3 - v4) <= 3.1416)
      {
        v13 = v12;
      }

      else
      {
        v13 = (v3 - v4) + -6.2832;
      }

      if (v11 < 0.1)
      {
        v13 = 3.1416;
      }

      return v4 + (v10 * v13);
    }
  }

  else
  {
    v3 = 0.0;
    v5 = *v0 - 5 < 0;
    if (v1 < 3)
    {
      return flt_1D96DCB3C[v1];
    }
  }

  return v3;
}

float WallpaperMetalCoordination.WallpaperState.rotationLandscapeAmount.getter()
{
  v3 = *(v0 + 88);
  v2 = v0 + 88;
  v1 = v3;
  if (*(v2 + 40))
  {
    v4 = *(v2 + 8);
    if (v1 == 4)
    {
      result = 1.0;
      if (v4 == 3)
      {
        return result;
      }

LABEL_14:
      v6 = sub_1D96C0DCC() / 3.1416;
      v7 = floorf(v6);
      return vabds_f32(1.0, fabsf(((v6 - v7) + (v6 - v7)) + -1.0));
    }

    if (v4 == 4)
    {
      if (v1 != 3)
      {
        goto LABEL_14;
      }
    }

    else if (v1 == v4 || (v1 == 3) != (v4 == 3))
    {
      goto LABEL_14;
    }
  }

  else
  {
    result = 1.0;
    if (v1 == 4)
    {
      return result;
    }
  }

  result = 0.0;
  if (v1 == 3)
  {
    return 1.0;
  }

  return result;
}

uint64_t WallpaperMetalCoordination.WallpaperState.look.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 84);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 36) = v7;
  return sub_1D96BE5BC(v2, v3, v4, v5, v6, v7);
}

__n128 WallpaperMetalCoordination.WallpaperState.look.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  sub_1D96BABE8(*(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 84));
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v6;
  *(v1 + 80) = v3;
  *(v1 + 84) = v4;
  return result;
}

uint64_t sub_1D96C1090(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1D96C13D8(&v5, &v7) & 1;
}

void sub_1D96C10DC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69794A8]) init];
  [v0 setMass_];
  [v0 setStiffness_];
  [v0 setDamping_];
  v1 = v0;
  [v1 setDuration_];

  qword_1ECB3F210 = v1;
}

double WallpaperMetalCoordination.WallpaperState.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 24) = _Q0;
  *(a1 + 40) = 0;
  *(a1 + 42) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 48) = xmmword_1D96DC890;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 77) = 0;
  return result;
}

double WallpaperMetalCoordination.WallpaperState.init(unlockProgress:linearWakeProgress:isDarkMode:orientation:)@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = 0.0;
  if (a5 > 0.0)
  {
    v5 = 1.0;
    if (a5 < 0.9999)
    {
      v6 = a4;
      v7 = a1;
      v8 = a2;
      v9 = a3;
      if (qword_1ECB3EC40 != -1)
      {
        v15 = a5;
        swift_once();
        a5 = v15;
      }

      *&a4 = a5;
      v10 = a5;
      [qword_1ECB3F210 _solveForInput_];
      a5 = v10;
      v5 = v11;
      a3 = v9;
      a2 = v8;
      a1 = v7;
      a4 = v6;
    }
  }

  if (a4 >= 1.0)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (a4 <= 0.0)
  {
    v12 = 0;
  }

  *a3 = v12;
  *(a3 + 8) = a4;
  v13 = 2 * (v5 < 1.0);
  if (v5 <= 0.0)
  {
    v13 = 1;
  }

  *(a3 + 16) = v13;
  *(a3 + 24) = a5;
  *(a3 + 32) = v5;
  *(a3 + 40) = a1 & 1;
  *(a3 + 41) = 0;
  *(a3 + 48) = xmmword_1D96DC890;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 84) = 0;
  *(a3 + 88) = a2;
  result = 0.0;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  return result;
}

uint64_t WallpaperMetalCoordination.WallpaperState.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_1D96DA9A0();

  v3 = sub_1D96DA840();
  MEMORY[0x1DA735440](v3);

  MEMORY[0x1DA735440](0x2085949FF0202CLL, 0xA700000000000000);
  v4 = sub_1D96DA840();
  MEMORY[0x1DA735440](v4);

  return 0x2093949FF0;
}

uint64_t sub_1D96C13D8(double *a1, uint64_t a2)
{
  v2 = *a1;
  if ((a1[5] & 1) == 0)
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return *&v2 == *a2;
    }

    return 0;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (*&v2 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    v5 = *(a1 + 2);
    v6 = a1[3];
    v7 = a1[4];
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = *(a2 + 32);
    sub_1D96C1D10();
    v11 = sub_1D96DA910() & (v6 == v9);
    if (v7 == v10)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s26WatchFacesWallpaperSupport0C17MetalCoordinationO0C5StateV4LookO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 36);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 36);
  if ((v7 & 1) == 0)
  {
    if ((*(a2 + 36) & 1) == 0)
    {
      v29 = *(a1 + 24);
      if (v2 == v9 && v3 == v8)
      {
        v30 = *(a2 + 16);
        v31 = *(a2 + 24);
        v32 = *a1;
        sub_1D96BE5BC(*a1, v3, v30, v31, v12, 0);
        sub_1D96BE5BC(v32, v3, v5, v29, v6, 0);
        sub_1D96BABE8(v32, v3, v5, v29, v6, 0);
        sub_1D96BABE8(v32, v3, v30, v31, v12, 0);
        return 1;
      }

      else
      {
        v33 = *a1;
        v34 = v2;
        v39 = sub_1D96DAAE0();
        sub_1D96BE5BC(v9, v8, v11, v10, v12, 0);
        sub_1D96BE5BC(v34, v3, v5, v29, v6, 0);
        sub_1D96BABE8(v34, v3, v5, v29, v6, 0);
        sub_1D96BABE8(v9, v8, v11, v10, v12, 0);
        return v39 & 1;
      }
    }

    goto LABEL_10;
  }

  if ((*(a2 + 36) & 1) == 0)
  {
LABEL_10:
    v37 = *(a2 + 16);
    v38 = *(a2 + 8);
    v20 = *(a1 + 24);
    v21 = *a1;
    sub_1D96BE5BC(*a2, v38, v37, v10, v12, v13);
    sub_1D96BE5BC(v21, v3, v5, v20, v6, v7);
    sub_1D96BABE8(v21, v3, v5, v20, v6, v7);
    v22 = v9;
    v24 = v37;
    v23 = v38;
    v25 = v10;
    v26 = v12;
    v27 = v13;
LABEL_11:
    sub_1D96BABE8(v22, v23, v24, v25, v26, v27);
    return 0;
  }

  if (v2 != v9 || v3 != v8)
  {
    v14 = *a1;
    v15 = v4;
    v16 = v2;
    v17 = sub_1D96DAAE0();
    v2 = v16;
    v4 = v15;
    if ((v17 & 1) == 0)
    {
      sub_1D96BE5BC(v9, v8, v11, v10, v12, 1);
      sub_1D96BE5BC(v16, v3, v5, v15, v6, 1);
      sub_1D96BABE8(v16, v3, v5, v15, v6, 1);
      v22 = v9;
      v23 = v8;
      v24 = v11;
      v25 = v10;
      v26 = v12;
      v27 = 1;
      goto LABEL_11;
    }
  }

  v36 = v2;
  if (v5 == v11 && v4 == v10)
  {
    v18 = v4;
    v19 = *&v12;
    sub_1D96BE5BC(v9, v8, v5, v4, v12, 1);
    sub_1D96BE5BC(v36, v3, v5, v18, v6, 1);
    sub_1D96BABE8(v36, v3, v5, v18, v6, 1);
    sub_1D96BABE8(v9, v8, v5, v18, v12, 1);
    return *&v6 == v19;
  }

  v35 = v4;
  v19 = *&v12;
  v40 = sub_1D96DAAE0();
  sub_1D96BE5BC(v9, v8, v11, v10, v12, 1);
  sub_1D96BE5BC(v36, v3, v5, v35, v6, 1);
  sub_1D96BABE8(v36, v3, v5, v35, v6, 1);
  sub_1D96BABE8(v9, v8, v11, v10, v12, 1);
  result = 0;
  if (v40)
  {
    return *&v6 == v19;
  }

  return result;
}

uint64_t _s26WatchFacesWallpaperSupport0C17MetalCoordinationO0C5StateV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = 0;
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = a1[16];
  v9 = *(a1 + 3);
  v8 = *(a1 + 4);
  v10 = a1[40];
  v11 = a1[41];
  v12 = a1[42];
  v14 = *(a1 + 6);
  v13 = *(a1 + 7);
  v15 = *(a1 + 8);
  v16 = *(a1 + 9);
  v17 = *(a1 + 20);
  v18 = a1[84];
  v19 = *(a1 + 104);
  v49 = *(a1 + 88);
  v50[0] = v19;
  *(v50 + 9) = *(a1 + 113);
  v20 = *a2;
  v21 = *(a2 + 1);
  v22 = a2[16];
  v24 = *(a2 + 3);
  v23 = *(a2 + 4);
  v25 = a2[40];
  v26 = a2[41];
  v27 = a2[42];
  v28 = *(a2 + 6);
  v29 = *(a2 + 7);
  v30 = *(a2 + 8);
  v31 = *(a2 + 9);
  v32 = *(a2 + 20);
  v33 = *(a2 + 104);
  v51 = *(a2 + 88);
  v52[0] = v33;
  v34 = a2[84];
  *(v52 + 9) = *(a2 + 113);
  if (v5 == v20 && v6 == v21 && v7 == v22 && v9 == v24 && v8 == v23 && ((v10 ^ v25) & 1) == 0 && ((v11 ^ v26) & 1) == 0 && ((v12 ^ v27) & 1) == 0)
  {
    v43 = v14;
    v44 = v13;
    v45 = v15;
    v46 = v16;
    v47 = v17;
    v48 = v18;
    v37 = v28;
    v38 = v29;
    v39 = v30;
    v40 = v31;
    v41 = v32;
    v42 = v34;
    sub_1D96BE5BC(v14, v13, v15, v16, v17, v18);
    sub_1D96BE5BC(v28, v29, v30, v31, v32, v34);
    v35 = _s26WatchFacesWallpaperSupport0C17MetalCoordinationO0C5StateV4LookO2eeoiySbAG_AGtFZ_0(&v43, &v37);
    sub_1D96BABE8(v37, v38, v39, v40, v41, v42);
    sub_1D96BABE8(v43, v44, v45, v46, v47, v48);
    if (v35)
    {
      v4 = sub_1D96C13D8(&v49, &v51);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4 & 1;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D96C1AB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 129))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D96C1B0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D96C1B98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 37))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 36);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D96C1BE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *(result + 36) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D96C1C5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D96C1CA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D96C1D10()
{
  result = qword_1ECB3F218;
  if (!qword_1ECB3F218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB3F218);
  }

  return result;
}

uint64_t sub_1D96C1D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1D96BCEFC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1D96BB834(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_1D96BD340();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_1D96BCA64(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1D96C1E54()
{
  MEMORY[0x1DA7360C0](v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1D96C1E8C()
{
  v0 = sub_1D96DA5D0();
  __swift_allocate_value_buffer(v0, qword_1EDB958C0);
  __swift_project_value_buffer(v0, qword_1EDB958C0);
  return sub_1D96DA5C0();
}

uint64_t static Logger.supression.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDB958B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D96DA5D0();
  v3 = __swift_project_value_buffer(v2, qword_1EDB958C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void static RendererTokenManager.pushSupression()()
{
  v0 = qword_1EDB958E0 + 1;
  if (__OFADD__(qword_1EDB958E0, 1))
  {
    goto LABEL_39;
  }

  ++qword_1EDB958E0;
  if (v0 == 1)
  {
    if (qword_1EDB963E0 != -1)
    {
      goto LABEL_40;
    }

    while (1)
    {
      swift_beginAccess();
      v1 = qword_1EDB963E8;
      if (qword_1EDB963E8 >> 62)
      {
        v2 = sub_1D96DAA60();
        if (!v2)
        {
          return;
        }
      }

      else
      {
        v2 = *((qword_1EDB963E8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v2)
        {
          return;
        }
      }

      v3 = v1 & 0xC000000000000001;
      v30 = v1 + 32;
      v31 = v1 & 0xFFFFFFFFFFFFFF8;

      v4 = 0;
      v33 = v2;
      v34 = v1;
      v32 = v1 & 0xC000000000000001;
      while (v3)
      {
        MEMORY[0x1DA7356D0](v4, v1);
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_37;
        }

LABEL_14:
        Strong = swift_weakLoadStrong();
        if (!Strong)
        {
          goto LABEL_33;
        }

        v8 = Strong;
        swift_beginAccess();
        v9 = *(v8 + 16);
        if (*(v9 + 16))
        {
          v35 = v4;
          v10 = v9 + 64;
          v11 = 1 << *(v9 + 32);
          if (v11 < 64)
          {
            v12 = ~(-1 << v11);
          }

          else
          {
            v12 = -1;
          }

          v13 = v12 & *(v9 + 64);
          v14 = (v11 + 63) >> 6;

          v16 = 0;
          v17 = v15;
          v36 = v15;
          while (v13)
          {
            v18 = v16;
LABEL_27:
            v19 = (*(v17 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v13)))));
            v21 = *v19;
            v20 = v19[1];
            v22 = qword_1EDB958B8;

            if (v22 != -1)
            {
              swift_once();
            }

            v13 &= v13 - 1;
            v23 = sub_1D96DA5D0();
            __swift_project_value_buffer(v23, qword_1EDB958C0);

            v24 = sub_1D96DA5B0();
            v25 = sub_1D96DA890();

            if (os_log_type_enabled(v24, v25))
            {
              v26 = swift_slowAlloc();
              v27 = swift_slowAlloc();
              v37 = v27;
              *v26 = 136315138;
              v28 = sub_1D96BB28C(v21, v20, &v37);

              *(v26 + 4) = v28;
              _os_log_impl(&dword_1D96B3000, v24, v25, "Canceling render extension for reason: %s due to supression", v26, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v27);
              v29 = v27;
              v17 = v36;
              MEMORY[0x1DA736010](v29, -1, -1);
              MEMORY[0x1DA736010](v26, -1, -1);
            }

            else
            {
            }

            v16 = v18;
          }

          while (1)
          {
            v18 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
              goto LABEL_37;
            }

            if (v18 >= v14)
            {
              break;
            }

            v13 = *(v10 + 8 * v18);
            ++v16;
            if (v13)
            {
              goto LABEL_27;
            }
          }

          RendererTokenManager.invalidateAllTokens()();

          v2 = v33;
          v1 = v34;
          v3 = v32;
          v4 = v35;
          if (v35 == v33)
          {
            goto LABEL_34;
          }
        }

        else
        {

LABEL_33:

          if (v4 == v2)
          {
LABEL_34:

            return;
          }
        }
      }

      if (v4 >= *(v31 + 16))
      {
        goto LABEL_38;
      }

      v6 = *(v30 + 8 * v4);

      v5 = __OFADD__(v4++, 1);
      if (!v5)
      {
        goto LABEL_14;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      swift_once();
    }
  }
}

Swift::Void __swiftcall RendererTokenManager.invalidateAllTokens()()
{
  v1 = v0;
  if (qword_1EDB960E8 != -1)
  {
LABEL_16:
    swift_once();
  }

  v2 = sub_1D96DA5D0();
  __swift_project_value_buffer(v2, qword_1EDB96A10);

  v3 = sub_1D96DA5B0();
  v4 = sub_1D96DA890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    swift_beginAccess();
    v7 = *(v1 + 16);
    sub_1D96C30A0();

    v8 = sub_1D96DA650();
    v10 = v9;

    v11 = sub_1D96BB28C(v8, v10, &v23);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1D96B3000, v3, v4, "Invalidating all render extensions: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x1DA736010](v6, -1, -1);
    MEMORY[0x1DA736010](v5, -1, -1);
  }

  swift_beginAccess();
  v12 = *(v1 + 16);
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = *(v1 + 16);

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = *(*(v12 + 56) + ((v19 << 9) | (8 * v20)));
      [objc_msgSend(v21 assertion)];

      swift_unknownObjectRelease();
      if (!v15)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v19 >= v16)
    {
      break;
    }

    v15 = *(v12 + 64 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_12;
    }
  }

  v22 = *(v1 + 16);
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
}

void static RendererTokenManager.popSupression()()
{
  if (__OFSUB__(qword_1EDB958E0, 1))
  {
    __break(1u);
  }

  else
  {
    --qword_1EDB958E0;
  }
}

uint64_t RendererTokenManager.__allocating_init()()
{
  v0 = swift_allocObject();
  RendererTokenManager.init()();
  return v0;
}

uint64_t RendererTokenManager.init()()
{
  *(v0 + 16) = sub_1D96BDF10(MEMORY[0x1E69E7CC0]);
  if (qword_1EDB963E0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB3F220, &qword_1D96DCB60);
  swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v1 = swift_beginAccess();
  MEMORY[0x1DA7354C0](v1);
  if (*((qword_1EDB963E8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((qword_1EDB963E8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v3 = *((qword_1EDB963E8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1D96DA7D0();
  }

  sub_1D96DA7E0();
  swift_endAccess();
  return v0;
}

uint64_t RendererTokenManager.deinit()
{
  v1 = v0;
  if (qword_1EDB963E0 != -1)
  {
LABEL_20:
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EDB963E8;
  v11 = MEMORY[0x1E69E7CC0];
  if (qword_1EDB963E8 >> 62)
  {
    v3 = sub_1D96DAA60();
  }

  else
  {
    v3 = *((qword_1EDB963E8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA7356D0](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v8 = v11;
          goto LABEL_18;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_15;
        }
      }

      if (swift_weakLoadStrong())
      {

        sub_1D96DA9E0();
        v7 = *(v11 + 16);
        sub_1D96DAA10();
        sub_1D96DAA20();
        sub_1D96DA9F0();
      }

      else
      {
      }

      ++v4;
      if (v6 == v3)
      {
        goto LABEL_16;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_18:

  qword_1EDB963E8 = v8;

  v9 = *(v1 + 16);

  return v1;
}

uint64_t RendererTokenManager.__deallocating_deinit()
{
  RendererTokenManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void RendererTokenManager.requestExtension(from:for:)(void *a1, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  if (qword_1EDB958E0 < 1)
  {
    RendererTokenManager.invalidateToken(for:)(a2);
    if (qword_1EDB960E8 != -1)
    {
      swift_once();
    }

    v16 = sub_1D96DA5D0();
    __swift_project_value_buffer(v16, qword_1EDB96A10);
    v17 = a1;

    v18 = sub_1D96DA5B0();
    v19 = sub_1D96DA890();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      osloga = swift_slowAlloc();
      v33[0] = osloga;
      *v20 = 136315394;
      v21 = v17;
      v30 = v19;
      v22 = countAndFlagsBits;
      v23 = [v21 description];
      v24 = sub_1D96DA6C0();
      v26 = v25;

      countAndFlagsBits = v22;
      v27 = sub_1D96BB28C(v24, v26, v33);

      *(v20 + 4) = v27;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_1D96BB28C(v22, object, v33);
      _os_log_impl(&dword_1D96B3000, v18, v30, "Requesting render extension on %s for reason: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA736010](osloga, -1, -1);
      MEMORY[0x1DA736010](v20, -1, -1);
    }

    v28 = sub_1D96DA690();
    v29 = [v17 extendRenderingSessionForReason_];

    swift_beginAccess();
    sub_1D96C1D5C(v29, countAndFlagsBits, object);
    swift_endAccess();
  }

  else
  {
    if (qword_1EDB958B8 != -1)
    {
      swift_once();
    }

    v5 = sub_1D96DA5D0();
    __swift_project_value_buffer(v5, qword_1EDB958C0);
    v6 = a1;

    oslog = sub_1D96DA5B0();
    v7 = sub_1D96DA890();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v33[0] = v9;
      *v8 = 136315650;
      v10 = v6;
      v11 = [v10 description];
      v12 = sub_1D96DA6C0();
      v14 = v13;

      v15 = sub_1D96BB28C(v12, v14, v33);

      *(v8 + 4) = v15;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1D96BB28C(countAndFlagsBits, object, v33);
      *(v8 + 22) = 2048;
      *(v8 + 24) = qword_1EDB958E0;
      _os_log_impl(&dword_1D96B3000, oslog, v7, "Supressed requested render extension on %s for reason: %s because supression count is %ld", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA736010](v9, -1, -1);
      MEMORY[0x1DA736010](v8, -1, -1);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall RendererTokenManager.invalidateToken(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_1D96BB834(countAndFlagsBits, object), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = qword_1EDB960E8;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D96DA5D0();
    __swift_project_value_buffer(v10, qword_1EDB96A10);

    v11 = sub_1D96DA5B0();
    v12 = sub_1D96DA890();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1D96BB28C(countAndFlagsBits, object, &v16);
      _os_log_impl(&dword_1D96B3000, v11, v12, "Invalidating render extension of reason: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x1DA736010](v14, -1, -1);
      MEMORY[0x1DA736010](v13, -1, -1);
    }

    [objc_msgSend(v9 assertion)];
    swift_unknownObjectRelease();
    swift_beginAccess();
    v15 = sub_1D96C30EC(countAndFlagsBits, object);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }
}

Swift::Bool __swiftcall RendererTokenManager.hasExtension(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  if (*(*(v1 + 16) + 16))
  {
    sub_1D96BB834(countAndFlagsBits, object);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  swift_endAccess();
  return v5 & 1;
}

unint64_t sub_1D96C30A0()
{
  result = qword_1EDB960D8;
  if (!qword_1EDB960D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB960D8);
  }

  return result;
}

uint64_t sub_1D96C30EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1D96BB834(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D96BD340();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_1D96BCA64(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t RotationFrame.clockwise.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 1 && v2 == 4)
  {
    return 1;
  }

  v5 = v1 == 3 && v2 == 1;
  v7 = v1 == 2 && v2 == 3 || v5;
  if (v1 == 4 && v2 == 2)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

uint64_t RotationFrame.init(from:to:fraction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  return result;
}

uint64_t RotationFrame.init(orientation:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = result;
  a2[2] = 0x3FF0000000000000;
  return result;
}

uint64_t RotationFrame.description.getter()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_1D96DA9A0();
  MEMORY[0x1DA735440](0xD000000000000020, 0x80000001D96DEE90);
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        v6 = 0x70616373646E614CLL;
        v5 = 0xEE007466654C2065;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v6 = 0x70616373646E614CLL;
    v5 = 0xEF74686769522065;
  }

  else
  {
    if (v2 != 1)
    {
      if (v2 == 2)
      {
        v5 = 0x80000001D96DE980;
        v6 = 0xD000000000000014;
        goto LABEL_11;
      }

LABEL_8:
      v5 = 0x80000001D96DE960;
      v6 = 0xD000000000000013;
      goto LABEL_11;
    }

    v5 = 0xE800000000000000;
    v6 = 0x7469617274726F50;
  }

LABEL_11:
  MEMORY[0x1DA735440](v6, v5);

  MEMORY[0x1DA735440](0xD000000000000011, 0x80000001D96DEEC0);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v1 = 0x70616373646E614CLL;
      v7 = 0xEF74686769522065;
      goto LABEL_21;
    }

    if (v3 == 4)
    {
      v1 = 0x70616373646E614CLL;
      v7 = 0xEE007466654C2065;
      goto LABEL_21;
    }

LABEL_18:
    v7 = 0x80000001D96DE960;
    goto LABEL_21;
  }

  if (v3 == 1)
  {
    v7 = 0xE800000000000000;
    v1 = 0x7469617274726F50;
    goto LABEL_21;
  }

  if (v3 != 2)
  {
    goto LABEL_18;
  }

  v7 = 0x80000001D96DE980;
  v1 = 0xD000000000000014;
LABEL_21:
  MEMORY[0x1DA735440](v1, v7);

  MEMORY[0x1DA735440](0x697463617266202CLL, 0xEC000000203A6E6FLL);
  v8 = sub_1D96DA840();
  MEMORY[0x1DA735440](v8);

  MEMORY[0x1DA735440](41, 0xE100000000000000);
  return 0;
}

uint64_t _s26WatchFacesWallpaperSupport13RotationFrameV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 1);
  v4 = a1[2];
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v4 == v6 && *&v3 == v5 && v2 == v5)
  {
    return 1;
  }

  if (*&v3 == v5)
  {
    if (v4 == 1.0 - v6)
    {
      return 1;
    }
  }

  else
  {
    v10 = 1.0 - v6;
    if (v2 == *a2 && v4 == v10)
    {
      return 1;
    }
  }

  return 0;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RotationFrame(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RotationFrame(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t PosterLayout.LayoutType.hashValue.getter()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

uint64_t sub_1D96C36E0()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

uint64_t sub_1D96C3754()
{
  v1 = *v0;
  sub_1D96DAB70();
  MEMORY[0x1DA735890](v1);
  return sub_1D96DAB90();
}

void sub_1D96C3798()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (!v1)
  {
    v2 = 1;
LABEL_5:
    byte_1EDB95B90 = v2;
    return;
  }

  if (v1 == 1)
  {
    v2 = 0;
    goto LABEL_5;
  }

  sub_1D96DAA40();
  __break(1u);
}

uint64_t static PosterLayout.currentLayoutType.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EDB95B88 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_1EDB95B90;
  return result;
}

__n128 PosterLayout.Animation.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  result = *(v1 + 48);
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D96C3904()
{
  result = qword_1ECB3F228;
  if (!qword_1ECB3F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB3F228);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PosterLayout.LayoutType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PosterLayout.LayoutType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D96C3B18(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D96C3B38(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_1D96C3B8C()
{
  v0 = sub_1D96DA5D0();
  __swift_allocate_value_buffer(v0, qword_1EDB95890);
  __swift_project_value_buffer(v0, qword_1EDB95890);
  return sub_1D96DA5C0();
}

uint64_t static Logger.rotation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDB95880 != -1)
  {
    swift_once();
  }

  v2 = sub_1D96DA5D0();
  v3 = __swift_project_value_buffer(v2, qword_1EDB95890);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D96C3CB8()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (!v3)
    {
      return 1;
    }

    v4 = [v3 windowScene];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 interfaceOrientation];

      v3 = v5;
    }

    else
    {
      v6 = 1;
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PosterRotatingViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PosterRotatingViewController.init()()
{
  *&v0[OBJC_IVAR____TtC26WatchFacesWallpaperSupport28PosterRotatingViewController_rotatingResponders] = MEMORY[0x1E69E7CC0];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for PosterRotatingViewController();
  v1 = objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
  result = [v1 view];
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() blackColor];
    [v3 setBackgroundColor_];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PosterRotatingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t PosterRotatingViewController.init(coder:)(void *a1)
{
  v2 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport28PosterRotatingViewController_rotatingResponders;

  *(v1 + v2) = MEMORY[0x1E69E7CC0];
  type metadata accessor for PosterRotatingViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1D96C4150(void *a1, long double a2, double a3)
{
  v4 = v3;
  if (qword_1EDB95880 != -1)
  {
    swift_once();
  }

  v8 = sub_1D96DA5D0();
  __swift_project_value_buffer(v8, qword_1EDB95890);
  v9 = sub_1D96DA5B0();
  v10 = sub_1D96DA870();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315138;
    aBlock = a2;
    v33 = *&a3;
    type metadata accessor for CGSize(0);
    v13 = sub_1D96DA6E0();
    v15 = sub_1D96BB28C(v13, v14, &v30);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1D96B3000, v9, v10, "viewWillTransition to: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x1DA736010](v12, -1, -1);
    MEMORY[0x1DA736010](v11, -1, -1);
  }

  result = [v4 view];
  if (result)
  {
    v17 = result;
    [result transform];
    v18 = aBlock;
    v19 = *&v33;

    v20 = atan2(v19, v18);
    [a1 targetTransform];
    v21 = v20 - atan2(*&v33, aBlock);
    v22 = fmod(v21, 3.14159265);
    if (v21 > 3.14159265)
    {
      v21 = v22;
    }

    v23 = swift_allocObject();
    *(v23 + 16) = v4;
    *(v23 + 24) = a2;
    *(v23 + 32) = a3;
    *(v23 + 40) = v21;
    v36 = sub_1D96C4D10;
    v37 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1D96BA378;
    v35 = &block_descriptor_1;
    v24 = _Block_copy(&aBlock);
    v25 = v4;

    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = a2;
    *(v26 + 32) = a3;
    *(v26 + 40) = v21;
    v36 = sub_1D96C4D38;
    v37 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1D96BA378;
    v35 = &block_descriptor_6;
    v27 = _Block_copy(&aBlock);
    v28 = v25;

    [a1 animateAlongsideTransition:v24 completion:v27];
    _Block_release(v27);
    _Block_release(v24);
    v29 = type metadata accessor for PosterRotatingViewController();
    v31.receiver = v28;
    v31.super_class = v29;
    return objc_msgSendSuper2(&v31, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D96C44BC(void *a1, double a2, double a3, double a4)
{
  [a1 transitionDuration];
  v9 = v8;
  v10 = [a1 completionCurve];
  [a1 targetTransform];
  return sub_1D96C4D68(v10, v12, a2, a3, a4, v9);
}

double static PosterRotatingViewController.rotation(forOrientation:)(uint64_t a1)
{
  result = 0.0;
  if ((a1 - 2) <= 2)
  {
    return dbl_1D96DCF18[a1 - 2];
  }

  return result;
}

uint64_t sub_1D96C4600(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB95880 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v5 = sub_1D96DA5D0();
    __swift_project_value_buffer(v5, qword_1EDB95890);
    swift_unknownObjectRetain();
    v6 = v2;
    v7 = sub_1D96DA5B0();
    v8 = sub_1D96DA870();

    swift_unknownObjectRelease();
    v33 = a2;
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34[0] = v10;
      *v9 = 136315394;
      v38 = a1;
      v39 = a2;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F240, &qword_1D96DCDB0);
      v11 = sub_1D96DA6E0();
      v13 = sub_1D96BB28C(v11, v12, v34);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v14 = v6;
      v15 = [v14 description];
      v16 = sub_1D96DA6C0();
      v18 = v17;

      v19 = sub_1D96BB28C(v16, v18, v34);

      *(v9 + 14) = v19;
      _os_log_impl(&dword_1D96B3000, v7, v8, "Adding responder %s to rotatingViewController: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA736010](v10, -1, -1);
      MEMORY[0x1DA736010](v9, -1, -1);
    }

    a2 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport28PosterRotatingViewController_rotatingResponders;
    swift_beginAccess();
    v20 = *(v6 + a2);
    v21 = *(v20 + 16);

    if (!v21)
    {
      break;
    }

    v22 = 0;
    v23 = v20 + 32;
    v2 = MEMORY[0x1E69E7CC0];
    while (v22 < *(v20 + 16))
    {
      sub_1D96C594C(v23, v34);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1D96C59B4(v34, v35);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D96C59EC(0, v2[2] + 1, 1);
          v2 = v37;
        }

        v26 = v2[2];
        v25 = v2[3];
        if (v26 >= v25 >> 1)
        {
          sub_1D96C59EC((v25 > 1), v26 + 1, 1);
          v2 = v37;
        }

        v2[2] = v26 + 1;
        sub_1D96C59B4(v35, &v2[2 * v26 + 4]);
      }

      else
      {
        sub_1D96C5984(v34);
      }

      ++v22;
      v23 += 16;
      if (v21 == v22)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  v2 = MEMORY[0x1E69E7CC0];
LABEL_16:

  v27 = *(v6 + a2);
  *(v6 + a2) = v2;

  v36 = 0;
  swift_unknownObjectWeakInit();
  v36 = v33;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v28 = *(v6 + a2);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + a2) = v28;
  if ((v29 & 1) == 0)
  {
    v28 = sub_1D96C581C(0, v28[2] + 1, 1, v28);
    *(v6 + a2) = v28;
  }

  v31 = v28[2];
  v30 = v28[3];
  if (v31 >= v30 >> 1)
  {
    v28 = sub_1D96C581C((v30 > 1), v31 + 1, 1, v28);
  }

  v28[2] = v31 + 1;
  sub_1D96C59B4(v35, &v28[2 * v31 + 4]);
  *(v6 + a2) = v28;
  return swift_endAccess();
}

uint64_t sub_1D96C49F0(double a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_1D96C3CB8();
  if (qword_1EDB95880 != -1)
  {
    swift_once();
  }

  v9 = sub_1D96DA5D0();
  __swift_project_value_buffer(v9, qword_1EDB95890);
  v10 = sub_1D96DA5B0();
  v11 = sub_1D96DA870();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27[0] = v13;
    *v12 = 136315650;
    *&v27[2] = a1;
    *&v27[3] = a2;
    type metadata accessor for CGSize(0);
    v14 = sub_1D96DA6E0();
    v16 = sub_1D96BB28C(v14, v15, v27);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2048;
    *(v12 + 14) = a3;
    *(v12 + 22) = 2080;
    if (v8 <= 2)
    {
      if (v8 == 1)
      {
        v17 = 0xE800000000000000;
        v18 = 0x7469617274726F50;
        goto LABEL_15;
      }

      if (v8 == 2)
      {
        v17 = 0x80000001D96DE980;
        v18 = 0xD000000000000014;
LABEL_15:
        v19 = sub_1D96BB28C(v18, v17, v27);

        *(v12 + 24) = v19;
        _os_log_impl(&dword_1D96B3000, v10, v11, "Notifying rotating views apply size: %s rotation: %f orientation: %s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA736010](v13, -1, -1);
        MEMORY[0x1DA736010](v12, -1, -1);
        goto LABEL_16;
      }

LABEL_11:
      v18 = 0xD000000000000013;
      v17 = 0x80000001D96DE960;
      goto LABEL_15;
    }

    if (v8 == 3)
    {
      v17 = 0xEF74686769522065;
    }

    else
    {
      if (v8 != 4)
      {
        goto LABEL_11;
      }

      v17 = 0xEE007466654C2065;
    }

    v18 = 0x70616373646E614CLL;
    goto LABEL_15;
  }

LABEL_16:

  v20 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport28PosterRotatingViewController_rotatingResponders;
  result = swift_beginAccess();
  v22 = *(v4 + v20);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = v22 + 32;

    do
    {
      sub_1D96C594C(v24, v27);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v25 = v27[1];
        ObjectType = swift_getObjectType();
        (*(v25 + 8))(v8, ObjectType, v25, a1, a2, a3);
        swift_unknownObjectRelease();
      }

      sub_1D96C5984(v27);
      v24 += 16;
      --v23;
    }

    while (v23);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D96C4D38()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(v0 + 2);
  return sub_1D96C51A4(v1, v2, v3);
}

uint64_t sub_1D96C4D68(uint64_t a1, __int128 *a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = sub_1D96C3CB8();
  if (qword_1EDB95880 != -1)
  {
    swift_once();
  }

  v15 = sub_1D96DA5D0();
  __swift_project_value_buffer(v15, qword_1EDB95890);
  v16 = sub_1D96DA5B0();
  v17 = sub_1D96DA870();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v50[0] = v42;
    *v18 = 136316162;
    v43 = a3;
    v44 = a4;
    type metadata accessor for CGSize(0);
    v19 = sub_1D96DA6E0();
    v21 = sub_1D96BB28C(v19, v20, v50);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2048;
    *(v18 + 14) = a5;
    *(v18 + 22) = 2048;
    *(v18 + 24) = a6;
    *(v18 + 32) = 2080;
    v22 = 0xE700000000000000;
    v23 = 0x6E776F6E6B6E55;
    v24 = 0x80000001D96DF0D0;
    v25 = 0x80000001D96DF0B0;
    if (a1 == 3)
    {
      v26 = 0xD00000000000001ALL;
    }

    else
    {
      v26 = 0x6E776F6E6B6E55;
    }

    if (a1 != 3)
    {
      v25 = 0xE700000000000000;
    }

    if (a1 == 2)
    {
      v26 = 0xD00000000000001BLL;
    }

    else
    {
      v24 = v25;
    }

    if (a1 == 1)
    {
      v23 = 0xD00000000000001ALL;
      v22 = 0x80000001D96DF0F0;
    }

    if (!a1)
    {
      v23 = 0xD00000000000001DLL;
      v22 = 0x80000001D96DF110;
    }

    if (a1 <= 1)
    {
      v27 = v23;
    }

    else
    {
      v27 = v26;
    }

    if (a1 <= 1)
    {
      v28 = v22;
    }

    else
    {
      v28 = v24;
    }

    v29 = sub_1D96BB28C(v27, v28, v50);

    *(v18 + 34) = v29;
    *(v18 + 42) = 2080;
    if (v14 > 2)
    {
      if (v14 != 3)
      {
        v30 = v42;
        if (v14 == 4)
        {
          v31 = 0xEE007466654C2065;
          v32 = 0x70616373646E614CLL;
          goto LABEL_33;
        }

LABEL_29:
        v31 = 0x80000001D96DE960;
        v32 = 0xD000000000000013;
        goto LABEL_33;
      }

      v31 = 0xEF74686769522065;
      v32 = 0x70616373646E614CLL;
    }

    else
    {
      if (v14 != 1)
      {
        v30 = v42;
        if (v14 == 2)
        {
          v31 = 0x80000001D96DE980;
          v32 = 0xD000000000000014;
LABEL_33:
          v33 = sub_1D96BB28C(v32, v31, v50);

          *(v18 + 44) = v33;
          _os_log_impl(&dword_1D96B3000, v16, v17, "Notifying rotating views rotating to: %s rotation: %f duration: %f curve: %s orientation: %s", v18, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x1DA736010](v30, -1, -1);
          MEMORY[0x1DA736010](v18, -1, -1);
          goto LABEL_34;
        }

        goto LABEL_29;
      }

      v31 = 0xE800000000000000;
      v32 = 0x7469617274726F50;
    }

    v30 = v42;
    goto LABEL_33;
  }

LABEL_34:

  v34 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport28PosterRotatingViewController_rotatingResponders;
  result = swift_beginAccess();
  v36 = *(v7 + v34);
  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = v36 + 32;

    do
    {
      sub_1D96C594C(v38, v48);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v39 = v49;
        ObjectType = swift_getObjectType();
        v43 = a6;
        v44 = *&a1;
        v41 = a2[1];
        v45 = *a2;
        v46 = v41;
        v47 = a2[2];
        (*(v39 + 16))(&v43, v14, ObjectType, v39, a3, a4, a5);
        swift_unknownObjectRelease();
      }

      sub_1D96C5984(v48);
      v38 += 16;
      --v37;
    }

    while (v37);
  }

  return result;
}

uint64_t sub_1D96C51A4(double a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_1D96C3CB8();
  if (qword_1EDB95880 != -1)
  {
    swift_once();
  }

  v9 = sub_1D96DA5D0();
  __swift_project_value_buffer(v9, qword_1EDB95890);
  v10 = sub_1D96DA5B0();
  v11 = sub_1D96DA870();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27[0] = v13;
    *v12 = 136315650;
    *&v27[2] = a1;
    *&v27[3] = a2;
    type metadata accessor for CGSize(0);
    v14 = sub_1D96DA6E0();
    v16 = sub_1D96BB28C(v14, v15, v27);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2048;
    *(v12 + 14) = a3;
    *(v12 + 22) = 2080;
    if (v8 <= 2)
    {
      if (v8 == 1)
      {
        v17 = 0xE800000000000000;
        v18 = 0x7469617274726F50;
        goto LABEL_15;
      }

      if (v8 == 2)
      {
        v17 = 0x80000001D96DE980;
        v18 = 0xD000000000000014;
LABEL_15:
        v19 = sub_1D96BB28C(v18, v17, v27);

        *(v12 + 24) = v19;
        _os_log_impl(&dword_1D96B3000, v10, v11, "Notifying rotating views didRotate to: %s rotation: %f orientation: %s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA736010](v13, -1, -1);
        MEMORY[0x1DA736010](v12, -1, -1);
        goto LABEL_16;
      }

LABEL_11:
      v18 = 0xD000000000000013;
      v17 = 0x80000001D96DE960;
      goto LABEL_15;
    }

    if (v8 == 3)
    {
      v17 = 0xEF74686769522065;
    }

    else
    {
      if (v8 != 4)
      {
        goto LABEL_11;
      }

      v17 = 0xEE007466654C2065;
    }

    v18 = 0x70616373646E614CLL;
    goto LABEL_15;
  }

LABEL_16:

  v20 = OBJC_IVAR____TtC26WatchFacesWallpaperSupport28PosterRotatingViewController_rotatingResponders;
  result = swift_beginAccess();
  v22 = *(v4 + v20);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = v22 + 32;

    do
    {
      sub_1D96C594C(v24, v27);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v25 = v27[1];
        ObjectType = swift_getObjectType();
        (*(v25 + 24))(v8, ObjectType, v25, a1, a2, a3);
        swift_unknownObjectRelease();
      }

      sub_1D96C5984(v27);
      v24 += 16;
      --v23;
    }

    while (v23);
  }

  return result;
}

id PosterRotatingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D96DA690();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PosterRotatingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterRotatingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PosterOrientationDescription.description.getter()
{
  v1 = *v0;
  if (*v0 > 2)
  {
    if (v1 != 3 && v1 != 4)
    {
      return 0xD000000000000013;
    }

    return 0x70616373646E614CLL;
  }

  else
  {
    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0xD000000000000014;
      }

      return 0xD000000000000013;
    }

    return 0x7469617274726F50;
  }
}

uint64_t sub_1D96C56A8()
{
  v1 = *v0;
  if (*v0 > 2)
  {
    if (v1 != 3 && v1 != 4)
    {
      return 0xD000000000000013;
    }

    return 0x70616373646E614CLL;
  }

  else
  {
    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0xD000000000000014;
      }

      return 0xD000000000000013;
    }

    return 0x7469617274726F50;
  }
}

uint64_t UIInterfaceOrientation.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 != 3 && a1 != 4)
    {
      return 0xD000000000000013;
    }

    return 0x70616373646E614CLL;
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0xD000000000000014;
      }

      return 0xD000000000000013;
    }

    return 0x7469617274726F50;
  }
}

void *sub_1D96C581C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB3F260, &unk_1D96DCF08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}