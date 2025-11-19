void sub_1B387158C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_4_21();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a4();
  }
}

void sub_1B38715E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1B3875CA0();
  }
}

uint64_t sub_1B3871634(uint64_t a1)
{
  v2 = sub_1B3C97DB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1B3C97DA8();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

void sub_1B3871778()
{
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_renderEffect) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_unlockProgress) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_backlightProgress) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_isGeneratingPoster) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_enableOcclusion) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_enableGyroAnimator) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_occlusionLayerView) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_gyroAnimator) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneView) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_scene) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneData) = xmmword_1B3D092C0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_deviceOrientation) = 0;
  v1 = sub_1B3C98118();
  OUTLINED_FUNCTION_13_22(v1, v2, v3, v1);
  v4 = sub_1B3C9A3F8();
  OUTLINED_FUNCTION_13_22(v4, v5, v6, v4);
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_gyroDisabledAnimatorObservation) = 0u;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_zFocusAnimatorObservation) = 0u;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneMetadataObservation) = 0;
  sub_1B3C9A3D8();
  sub_1B3C9A0A8();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView__currentLayoutInfo) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_currentBacklightLuminance) = -1;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_hasAlwaysOnDisplayEnabled) = 1;
  if (!PLWallpaperGetLog())
  {
    __break(1u);
  }

  sub_1B3C9A568();
  OUTLINED_FUNCTION_8_22();
  __break(1u);
}

void sub_1B387193C()
{
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_renderEffect) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_unlockProgress) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_backlightProgress) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_isGeneratingPoster) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_enableOcclusion) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_enableGyroAnimator) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_occlusionLayerView) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_gyroAnimator) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneView) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_scene) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneData) = xmmword_1B3D092C0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_deviceOrientation) = 0;
  v1 = sub_1B3C98118();
  OUTLINED_FUNCTION_13_22(v1, v2, v3, v1);
  v4 = sub_1B3C9A3F8();
  OUTLINED_FUNCTION_13_22(v4, v5, v6, v4);
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_gyroDisabledAnimatorObservation) = 0u;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_zFocusAnimatorObservation) = 0u;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneMetadataObservation) = 0;
  sub_1B3C9A3D8();
  sub_1B3C9A0A8();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView__currentLayoutInfo) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_currentBacklightLuminance) = -1;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_hasAlwaysOnDisplayEnabled) = 1;
  if (!PLWallpaperGetLog())
  {
    __break(1u);
  }

  sub_1B3C9A568();
  OUTLINED_FUNCTION_8_22();
  __break(1u);
}

void sub_1B3871B58(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_parallaxSpatialPhotoLayer);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_parallaxSpatialPhotoLayer) = a1;
  v2 = a1;
  sub_1B3871BB8();
}

void sub_1B3871BB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_parallaxSpatialPhotoLayer);
  sub_1B3710718(0, &qword_1EB857718);
  v2 = v1;
  v3 = sub_1B3C9CFA8();

  if ((v3 & 1) == 0)
  {
    sub_1B3873C0C();

    sub_1B38761E4();
  }
}

void sub_1B3871C68(void *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PUParallaxSpatialPhotoLayerView();
  objc_msgSendSuper2(&v4, sel_layoutWithInfo_, a1);
  v3 = a1;
  sub_1B38738A4(a1);
}

id sub_1B3871D24(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for PUParallaxSpatialPhotoLayerView();
  v3 = objc_msgSendSuper2(&v11, sel_snapshotViewAfterScreenUpdates_, a1 & 1);
  v4 = [v1 currentLayoutInfo];
  if (v4)
  {
    v5 = v4;
    v6 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneView];
    if (v6)
    {
      v7 = v6;
      v8 = [v7 snapshotViewAfterScreenUpdates_];
      if (v8)
      {
        v9 = v8;
        [v3 addSubview_];
        sub_1B3875F50(v9, v5);

        v5 = v7;
        v7 = v9;
      }

      v5 = v7;
    }
  }

  return v3;
}

void *sub_1B3871E98()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView__currentLayoutInfo);
  v2 = v1;
  return v1;
}

void *sub_1B3871F3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneView);
  v2 = v1;
  return v1;
}

uint64_t sub_1B3871F6C(uint64_t a1)
{
  v3 = sub_1B3C9A3F8();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_25_8();
  sub_1B3872E94(a1);
  OUTLINED_FUNCTION_17_4();
  sub_1B3C9A098();
  swift_endAccess();
  sub_1B3C9A3D8();
  return sub_1B38736B8(v1);
}

uint64_t sub_1B387216C(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_unlockProgress);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_unlockProgress) = a1;
  return sub_1B3872184(v2);
}

uint64_t sub_1B3872184(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_unlockProgress) != a1)
  {
    return sub_1B3874DD0();
  }

  return result;
}

void sub_1B387222C(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_backlightProgress);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_backlightProgress) = a1;
  sub_1B3872244(v2);
}

void sub_1B3872244(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_backlightProgress) != a1)
  {
    sub_1B3874DD0();

    sub_1B38758FC();
  }
}

void sub_1B3872310(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_isGeneratingPoster);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_isGeneratingPoster) = a1;
  sub_1B3872328(v2);
}

void sub_1B3872328(char a1)
{
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_isGeneratingPoster;
  if (v1[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_isGeneratingPoster] != (a1 & 1))
  {
    v3 = v1;
    v4 = sub_1B3C9A538();
    v5 = sub_1B3C9CAE8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      aBlock[0] = v7;
      *v6 = 136315394;
      v8 = sub_1B3C9D828();
      v10 = sub_1B3749364(v8, v9, aBlock);

      *(v6 + 4) = v10;
      *(v6 + 12) = 1026;
      v11 = v1[v2];

      *(v6 + 14) = v11;
      _os_log_impl(&dword_1B36F3000, v4, v5, "PUParallaxSpatialPhotoLayerView[%s] isGeneratingPoster: %{BOOL,public}d", v6, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x1B8C6EC70](v7, -1, -1);
      MEMORY[0x1B8C6EC70](v6, -1, -1);
    }

    else
    {
    }

    v12 = *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_gyroDisabledAnimator];
    v13 = swift_allocObject();
    *(v13 + 16) = v3;
    aBlock[4] = sub_1B3876C28;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B372B6C8;
    aBlock[3] = &block_descriptor_79;
    v14 = _Block_copy(aBlock);
    v15 = v3;

    [v12 performChangesUsingDefaultSpringAnimationWithInitialVelocity:v14 changes:0.0];
    _Block_release(v14);
  }
}

void sub_1B38725DC(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_enableOcclusion);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_enableOcclusion) = a1;
  sub_1B38725F4(v2);
}

void sub_1B38725F4(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_enableOcclusion) != (a1 & 1))
  {
    sub_1B3874504();
  }
}

void sub_1B387269C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_enableGyroAnimator);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_enableGyroAnimator) = a1;
  sub_1B38726B4(v2);
}

void sub_1B38726B4(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_enableGyroAnimator) != (a1 & 1))
  {
    sub_1B3873930();
  }
}

void *sub_1B3872708()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_occlusionLayerView);
  v2 = v1;
  return v1;
}

void sub_1B38727B4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_occlusionLayerView);
  if (a1)
  {
    if (v2 == a1)
    {
      return;
    }

LABEL_5:
    sub_1B3874504();
    return;
  }

  if (v2)
  {
    goto LABEL_5;
  }
}

void sub_1B38727D8()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for PUParallaxSpatialPhotoLayerView();
  objc_msgSendSuper2(&v1, sel_didMoveToWindow);
  sub_1B3873930();
}

uint64_t sub_1B387285C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_scene;
  if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_scene))
  {
    sub_1B3C99E68();

    sub_1B3C99E48();
    sub_1B3C99E58();
  }

  v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneView);
  if (v3)
  {

    v4 = v3;
    sub_1B3C9A148();
  }

  sub_1B3874A04();
  if (*(v0 + v2))
  {
    sub_1B3710718(0, &qword_1EB84FE60);

    v5 = sub_1B3C9CC88();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v6 = sub_1B3C9A2F8();
  }

  else
  {
    v6 = 0;
  }

  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneMetadataObservation) = v6;
}

uint64_t sub_1B38729E0(uint64_t a1)
{
  sub_1B3C9C888();
  v2 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v5[2] = v2;
  v5[3] = a1;
  sub_1B36FA788(sub_1B3876C0C, v5);
}

void sub_1B3872AAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_scene);
    if (v5)
    {
      v6 = v5 == a2;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      sub_1B3874504();
      sub_1B3874A04();
    }
  }
}

uint64_t sub_1B3872B34(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_scene) = a1;

  sub_1B387285C();
}

void sub_1B3872B90(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855BF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8576E8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24[-v8];
  v10 = OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_deviceOrientation;
  if (*&v1[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_deviceOrientation] != a1)
  {
    if (a1)
    {
      v11 = v1;
      v12 = sub_1B3C9A538();
      v13 = sub_1B3C9CAE8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v27 = v11;
        v28[0] = v26;
        *v14 = 136315650;
        v25 = v13;
        v15 = sub_1B3C9D828();
        v17 = sub_1B3749364(v15, v16, v28);

        *(v14 + 4) = v17;
        *(v14 + 12) = 2048;
        *(v14 + 14) = a1;
        *(v14 + 22) = 2048;
        v18 = *&v2[v10];

        *(v14 + 24) = v18;
        _os_log_impl(&dword_1B36F3000, v12, v25, "PUParallaxSpatialPhotoLayerView[%s] orientation changed: %ld -> %ld", v14, 0x20u);
        v19 = v26;
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        MEMORY[0x1B8C6EC70](v19, -1, -1);
        MEMORY[0x1B8C6EC70](v14, -1, -1);
      }

      else
      {
      }

      v20 = OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_attitude;
      swift_beginAccess();
      v21 = sub_1B3C9A3F8();
      (*(*(v21 - 8) + 16))(v9, &v11[v20], v21);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v21);
      v22 = OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_previousDeviceOrientationAttitude;
      swift_beginAccess();
      sub_1B3876ADC(v9, &v11[v22]);
      swift_endAccess();
      sub_1B3C980F8();
      v23 = sub_1B3C98118();
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v23);
      sub_1B38731E0(v6);
    }

    sub_1B3874A04();
  }
}

void sub_1B3872E94(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_deviceOrientation);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_deviceOrientation) = a1;
  sub_1B3872B90(v2);
}

uint64_t sub_1B3872EAC(uint64_t a1)
{
  v3 = sub_1B3C98118();
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855BF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857708);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_deviceOrientationChangedDate;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_1B373C544(a1, v12, &unk_1EB855BF0);
  sub_1B373C544(v1 + v13, &v12[v14], &unk_1EB855BF0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v12[v14], 1, v3) == 1)
    {
      return sub_1B36FB21C(v12, &unk_1EB855BF0);
    }

    goto LABEL_6;
  }

  sub_1B373C544(v12, v8, &unk_1EB855BF0);
  if (__swift_getEnumTagSinglePayload(&v12[v14], 1, v3) == 1)
  {
    (*(v19 + 8))(v8, v3);
LABEL_6:
    result = sub_1B36FB21C(v12, &qword_1EB857708);
    return sub_1B3874504(result);
  }

  v16 = v19;
  (*(v19 + 32))(v5, &v12[v14], v3);
  sub_1B3876BBC(&qword_1EB857710, MEMORY[0x1E6969530]);
  v17 = sub_1B3C9C528();
  v18 = *(v16 + 8);
  v18(v5, v3);
  v18(v8, v3);
  result = sub_1B36FB21C(v12, &unk_1EB855BF0);
  if ((v17 & 1) == 0)
  {
    return sub_1B3874504(result);
  }

  return result;
}

uint64_t sub_1B38731E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855BF0);
  v4 = OUTLINED_FUNCTION_8_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13[-v5];
  v7 = OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_deviceOrientationChangedDate;
  OUTLINED_FUNCTION_4_21();
  sub_1B373C544(v1 + v7, v6, &unk_1EB855BF0);
  OUTLINED_FUNCTION_17_4();
  sub_1B3876B4C(a1, v1 + v7);
  swift_endAccess();
  sub_1B3872EAC(v6);
  OUTLINED_FUNCTION_22_7();
  sub_1B36FB21C(v8, v9);
  OUTLINED_FUNCTION_22_7();
  return sub_1B36FB21C(v10, v11);
}

void sub_1B38732D0()
{
  OUTLINED_FUNCTION_26_11();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8576E8);
  v4 = OUTLINED_FUNCTION_8_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25_8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855BF0);
  v6 = OUTLINED_FUNCTION_8_0(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_24_9();
  v11 = sub_1B3C98118();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  v18 = OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_deviceOrientationChangedDate;
  OUTLINED_FUNCTION_4_21();
  sub_1B373C544(v0 + v18, v0, &unk_1EB855BF0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v11) == 1)
  {
    sub_1B36FB21C(v0, &unk_1EB855BF0);
  }

  else
  {
    (*(v13 + 32))(v17, v0, v11);
    sub_1B3C980D8();
    if (fabs(v19) <= 1.0)
    {
      (*(v13 + 8))(v17, v11);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
      sub_1B38731E0(v9);
      (*(v13 + 8))(v17, v11);
      v20 = sub_1B3C9A3F8();
      __swift_storeEnumTagSinglePayload(v1, 1, 1, v20);
      v21 = OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_previousDeviceOrientationAttitude;
      OUTLINED_FUNCTION_17_4();
      sub_1B3876ADC(v1, v2 + v21);
      swift_endAccess();
    }
  }

  OUTLINED_FUNCTION_15_23();
}

uint64_t sub_1B3873558()
{
  v1 = v0;
  v2 = sub_1B3C9A3F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_attitude;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  sub_1B3876BBC(&qword_1EB857700, MEMORY[0x1E69C1C00]);
  v7 = sub_1B3C9C528();
  result = (*(v3 + 8))(v5, v2);
  if ((v7 & 1) == 0)
  {
    return sub_1B3874DD0();
  }

  return result;
}

uint64_t sub_1B38736B8(uint64_t a1)
{
  v3 = sub_1B3C9A3F8();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_attitude;
  OUTLINED_FUNCTION_4_21();
  (*(v5 + 16))(v9, v1 + v10, v3);
  OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_22_7();
  v11();
  swift_endAccess();
  sub_1B3873558();
  v12 = *(v5 + 8);
  v12(a1, v3);
  return (v12)(v9, v3);
}

void sub_1B38737EC(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView__currentLayoutInfo);
  if (a1)
  {
    if (v2)
    {
      v3 = a1;
      sub_1B3710718(0, &qword_1EB8576F8);
      v4 = v2;
      v5 = v3;
      LOBYTE(v3) = sub_1B3C9CFA8();

      if (v3)
      {
        return;
      }
    }
  }

  else if (!v2)
  {
    return;
  }

  sub_1B38761E4();
}

void sub_1B38738C4(void *a1, void *a2, void (*a3)(id))
{
  v6 = *(v3 + *a2);
  *(v3 + *a2) = a1;
  v5 = a1;
  a3(v6);
}

void sub_1B3873930()
{
  v2 = v0;
  v3 = sub_1B3C9A168();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_25_8();
  if (v0[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_enableGyroAnimator] == 1 && (v7 = [v0 window]) != 0)
  {

    v8 = OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_gyroAnimator;
    if (*&v0[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_gyroAnimator])
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1B3710718(0, &qword_1EB84FE60);

    sub_1B3C9CC88();
    (*(v5 + 104))(v1, *MEMORY[0x1E69C1B28], v3);
    sub_1B3C9A1B8();
    swift_allocObject();
    v9 = sub_1B3C9A1A8();

    *&v2[v8] = v9;
  }

  else
  {
    if (!*&v0[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_gyroAnimator])
    {
      goto LABEL_8;
    }

    *&v0[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_gyroAnimator] = 0;
  }

LABEL_8:
  if (*&v2[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_gyroAnimator])
  {

    v10 = [v2 window];
    if (v10)
    {

      sub_1B3C9A198();
    }

    else
    {
      sub_1B3C9A188();
    }
  }
}

void sub_1B3873B38(uint64_t a1, __n128 a2, __n128 a3)
{
  v11[0] = a2;
  v11[1] = a3;
  v4 = sub_1B3C9A3F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_gyroAnimator);
    if (v9)
    {
      v10 = v9 == a1;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      sub_1B3C9A3D8();
      sub_1B38736B8(v6);
    }
  }
}

uint64_t sub_1B3873C0C()
{
  v1 = objc_opt_self();
  OUTLINED_FUNCTION_20();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1B3876A34;
  *(v3 + 24) = v2;
  v8[4] = sub_1B375324C;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B37D35C4;
  v8[3] = &block_descriptor_68_0;
  v4 = _Block_copy(v8);
  v5 = v0;

  [v1 performWithoutAnimation_];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1B3873D68(char *a1)
{
  v2 = sub_1B3C9A1F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneView;
  v7 = *&a1[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneView];
  if (v7)
  {
    goto LABEL_9;
  }

  v8 = [objc_allocWithZone(sub_1B3C9A158()) initWithFrame_];
  if (qword_1EB850148 != -1)
  {
    swift_once();
  }

  sub_1B3C9A138();
  if (*&a1[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_renderEffect])
  {
    sub_1B3876BBC(&qword_1EB8576F0, type metadata accessor for PUParallaxSpatialPhotoInactiveEffect);
  }

  sub_1B3C9A0C8();
  v9 = *&a1[v6];
  *&a1[v6] = v8;
  v10 = v8;

  (*(v3 + 104))(v5, *MEMORY[0x1E69C1BB8], v2);
  sub_1B3C9A0F8();

  sub_1B3C9A148();
  [a1 addSubview_];
  v11 = [a1 currentLayoutInfo];
  if (v11)
  {
    v12 = v11;
    sub_1B3875F50(v10, v11);
  }

  sub_1B3874DD0();
  sub_1B3873930();
  sub_1B3874504();

  v7 = *&a1[v6];
  if (v7)
  {
LABEL_9:
    v13 = OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_parallaxSpatialPhotoLayer;
    v14 = *&a1[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_parallaxSpatialPhotoLayer];
    v15 = v7;
    v16 = [v14 scene];
    if (v16)
    {
      v17 = [v16 spatialPhotoScene];
      swift_unknownObjectRelease();
      if (v17)
      {
        sub_1B3C9D1E8();
        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0u;
        v45 = 0u;
      }

      v46 = v44;
      v47 = v45;
      if (*(&v45 + 1))
      {
        sub_1B3C9A368();
        if (swift_dynamicCast())
        {

          sub_1B3872B34(v18);
LABEL_36:

          goto LABEL_37;
        }

LABEL_18:
        v19 = &a1[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneData];
        v21 = *&a1[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneData];
        v20 = *&a1[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneData + 8];
        v22 = *&a1[v13];
        sub_1B3876AAC(v21, v20);
        v24 = sub_1B3876A3C(v22);
        v25 = v23;
        if (v20 >> 60 == 15)
        {
          if (v23 >> 60 == 15)
          {
            sub_1B3876AC0(v21, v20);
            goto LABEL_26;
          }
        }

        else if (v23 >> 60 != 15)
        {
          sub_1B3876AAC(v21, v20);
          sub_1B3876AAC(v24, v25);
          v32 = MEMORY[0x1B8C65610](v21, v20, v24, v25);
          sub_1B3876AC0(v24, v25);
          sub_1B3876AC0(v21, v20);
          sub_1B3876AC0(v24, v25);
          sub_1B3876AC0(v21, v20);
          if (v32)
          {
LABEL_26:
            v33 = *&a1[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_scene];
            if (v33)
            {
              v35 = *v19;
              v34 = v19[1];
              v36 = *&a1[v13];

              sub_1B3876AAC(v35, v34);
              v38 = sub_1B3876A3C(v36);
              v39 = v37;
              if (v34 >> 60 == 15)
              {
                if (v37 >> 60 == 15)
                {
                  sub_1B3876AC0(v35, v34);
                  goto LABEL_35;
                }
              }

              else if (v37 >> 60 != 15)
              {
                sub_1B3876AAC(v35, v34);
                sub_1B3876AAC(v38, v39);
                v43 = MEMORY[0x1B8C65610](v35, v34, v38, v39);
                sub_1B3876AC0(v38, v39);
                sub_1B3876AC0(v38, v39);
                sub_1B3876AC0(v35, v34);
                sub_1B3876AC0(v35, v34);
                if ((v43 & 1) == 0)
                {
                  goto LABEL_36;
                }

LABEL_35:
                [*&a1[v13] setSharedScene_];
                goto LABEL_36;
              }

              sub_1B3876AC0(v35, v34);
              sub_1B3876AC0(v38, v39);
            }

LABEL_37:
            sub_1B38761E4();

            return;
          }

LABEL_23:
          v26 = sub_1B3876A3C(*&a1[v13]);
          v27 = *v19;
          v28 = v19[1];
          *v19 = v26;
          v19[1] = v29;
          sub_1B3876AC0(v27, v28);
          v30 = v19[1];
          if (v30 >> 60 == 15)
          {
            v40 = 0;
          }

          else
          {
            v31 = *v19;
            sub_1B3C9A368();
            swift_allocObject();
            sub_1B3876AAC(v31, v30);
            sub_1B37FDE00(v31, v30);
            v40 = sub_1B3C9A308();
            sub_1B3C99E68();

            sub_1B3C99E48();
            sub_1B37FDE00(v31, v30);
            sub_1B3C99E58();
            sub_1B3876AC0(v31, v30);

            v41 = *&a1[v13];

            v42 = v41;
            [v42 setSharedScene_];
            sub_1B3876AC0(v31, v30);
          }

          sub_1B3C9A148();
          sub_1B3872B34(v40);
          goto LABEL_37;
        }

        sub_1B3876AC0(v21, v20);
        sub_1B3876AC0(v24, v25);
        goto LABEL_23;
      }
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
    }

    sub_1B36FB21C(&v46, &qword_1EB850170);
    goto LABEL_18;
  }

  __break(1u);
}

void sub_1B3874504()
{
  v1 = v0;
  v2 = sub_1B3C9A178();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v47 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_24_9();
  v12 = sub_1B3C9A1E8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - v19;
  v21 = *(v0->i64 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneView);
  if (v21)
  {
    v22 = *(v0->i64 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_renderEffect);
    v48 = v0;
    v49 = v18;
    if (v22)
    {
      LODWORD(v44) = *(v22 + 112) > 0.0;
    }

    else
    {
      LODWORD(v44) = 0;
    }

    v23 = v21;
    sub_1B38732D0();
    v46 = v24;
    v25 = OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_occlusionLayerView;
    if (*(v0->i64 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_occlusionLayerView) && (sub_1B3875E50() & 1) != 0)
    {
      if (qword_1EB850140 != -1)
      {
        swift_once();
      }

      v26 = v49;
      if (byte_1EB878FC9 == 1)
      {
        v27 = MEMORY[0x1E69C1BA0];
      }

      else
      {
        v27 = MEMORY[0x1E69C1BA8];
      }

      (*(v49 + 104))(v20, *v27, v12);
    }

    else
    {
      v26 = v49;
      (*(v49 + 104))(v20, *MEMORY[0x1E69C1BB0], v12);
    }

    (*(v26 + 16))(v16, v20, v12);
    sub_1B3C9A0D8();
    v28 = *(v1->i64 + v25);
    v45 = v12;
    if (v28)
    {
      v29 = *(v28 + OBJC_IVAR____TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView_secondarySceneView);
      v30 = v29;
    }

    else
    {
      v29 = 0;
    }

    v43 = v29;
    sub_1B3C9A0E8();
    v31 = *(v4 + 104);
    v32 = MEMORY[0x1E69C1B48];
    if (!(v44 & 1 | ((v46 & 1) == 0)))
    {
      v32 = MEMORY[0x1E69C1B30];
    }

    v33 = *v32;
    v34 = v48;
    v42 = *(v4 + 104);
    v31(v48, v33, v2);
    v44 = *(v4 + 16);
    v44(v10, v34, v2);
    sub_1B3C9A128();
    if (v29)
    {
      v35 = v47;
      sub_1B3C9A118();
      if (qword_1EB850138 != -1)
      {
        swift_once();
      }

      if (byte_1EB878FC8 == 1 && (sub_1B3C9A1D8() & 1) != 0 && (v46 & 1) != 0)
      {
        v36 = [objc_opt_self() currentDevice];
        v37 = [v36 userInterfaceIdiom];

        (*(v4 + 8))(v47, v2);
        v38 = v37 == 0;
        v35 = v47;
        v39 = 0.7;
        if (v38)
        {
          v39 = 0.5;
        }

        *v47 = vdupq_n_s64(0x3FA999999999999AuLL);
        v35[1].i64[0] = 0x3FECCCCCCCCCCCCDLL;
        *&v35[1].i64[1] = v39;
        v42(v35, *MEMORY[0x1E69C1B38], v2);
      }

      v44(v10, v35, v2);
      v40 = v43;
      sub_1B3C9A058();

      v41 = *(v4 + 8);
      v41(v35, v2);
      v41(v48, v2);
    }

    else
    {

      (*(v4 + 8))(v34, v2);
    }

    (*(v49 + 8))(v20, v45);
  }
}

void sub_1B3874A04()
{
  OUTLINED_FUNCTION_26_11();
  v1 = v0;
  v3 = v2;
  sub_1B3C9A1F8();
  OUTLINED_FUNCTION_0();
  v41 = v5;
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = sub_1B3C9A348();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  v16 = sub_1B3C9A258();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  v22 = v21 - v20;
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_scene))
  {
    v38 = v3;
    IsLandscape = UIInterfaceOrientationIsLandscape(*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_deviceOrientation));

    v39 = v18;
    v24 = MEMORY[0x1E69C1BD8];
    if (!IsLandscape)
    {
      v24 = MEMORY[0x1E69C1BD0];
    }

    v40 = v16;
    (*(v18 + 104))(v22, *v24, v16);
    v25 = sub_1B3875E50();
    sub_1B3C9A358();
    if (v25)
    {
      v26 = v22;
      v27 = sub_1B3C9A328();
    }

    else
    {
      (*(v41 + 104))(v8, *MEMORY[0x1E69C1BB8], v42);
      v26 = v22;
      v27 = sub_1B3C9A318();
      (*(v41 + 8))(v8, v42);
    }

    (*(v11 + 8))(v15, v9);
    if ((v27 & 0x100000000) != 0)
    {
      v29 = 0.0;
      v28 = v40;
    }

    else
    {
      v28 = v40;
      v29 = *&v27;
    }

    if (v38)
    {
      v30 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_zFocusAnimator);
      OUTLINED_FUNCTION_20();
      v31 = swift_allocObject();
      *(v31 + 16) = v29;
      OUTLINED_FUNCTION_6_27(v31);
      OUTLINED_FUNCTION_7_26(COERCE_DOUBLE(1107296256));
      v44 = v32;
      v45 = &block_descriptor_59_1;
      v33 = _Block_copy(v43);

      [v30 performChangesUsingDefaultSpringAnimationWithInitialVelocity:v33 changes:0.0];
      _Block_release(v33);
    }

    else
    {
      v34 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_zFocusAnimator);
      OUTLINED_FUNCTION_20();
      v35 = swift_allocObject();
      *(v35 + 16) = v29;
      OUTLINED_FUNCTION_6_27(v35);
      OUTLINED_FUNCTION_7_26(COERCE_DOUBLE(1107296256));
      v44 = v36;
      v45 = &block_descriptor_54;
      v37 = _Block_copy(v43);

      [v34 performChangesWithoutAnimation_];

      _Block_release(v37);
    }

    (*(v39 + 8))(v26, v28);
  }

  OUTLINED_FUNCTION_15_23();
}

uint64_t sub_1B3874DD0()
{
  v1 = v0;
  v93 = sub_1B3C9A348();
  OUTLINED_FUNCTION_0();
  v92 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v91 = v5 - v4;
  v108 = sub_1B3C9A258();
  OUTLINED_FUNCTION_0();
  v106 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_40();
  MEMORY[0x1EEE9AC00](v8);
  v110 = &v90 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8576E8);
  v11 = OUTLINED_FUNCTION_8_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v90 - v12;
  v14 = sub_1B3C9A3F8();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_40();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_22();
  OUTLINED_FUNCTION_2_40();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v90 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v90 - v23;
  v102 = sub_1B3C9A248();
  OUTLINED_FUNCTION_0();
  v100 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_40();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_14_22();
  OUTLINED_FUNCTION_2_40();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_14_22();
  OUTLINED_FUNCTION_2_40();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_14_22();
  OUTLINED_FUNCTION_2_40();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_22();
  v109 = v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v90 - v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_14_22();
  OUTLINED_FUNCTION_2_40();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v90 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v107 = &v90 - v40;
  v41 = OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_attitude;
  OUTLINED_FUNCTION_4_21();
  v105 = v16;
  v42 = *(v16 + 16);
  v111 = v14;
  v101 = v16 + 16;
  v97 = v42;
  v42(v24, &v1[v41], v14);
  v43 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_unlockProgress];
  v44 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_backlightProgress];
  sub_1B3C9A3E8();
  v104 = v38;
  sub_1B3C9A218();
  sub_1B38732D0();
  v99 = v24;
  if ((v45 & 1) == 0)
  {
    v46 = OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_previousDeviceOrientationAttitude;
    OUTLINED_FUNCTION_4_21();
    sub_1B373C544(&v1[v46], v13, &qword_1EB8576E8);
    if (__swift_getEnumTagSinglePayload(v13, 1, v111) == 1)
    {
      sub_1B36FB21C(v13, &qword_1EB8576E8);
    }

    else
    {
      v47 = v102;
      v48 = v105;
      v49 = v111;
      (*(v105 + 32))(v21, v13, v111);
      sub_1B3C9A3E8();
      sub_1B3C9A218();
      v90 = v21;
      v50 = v104;
      sub_1B3C9A228();
      v51 = *(v100 + 8);
      v51(v34, v47);
      (*(v48 + 8))(v90, v49);
      v51(v50, v47);
      OUTLINED_FUNCTION_22_7();
      v52();
    }

    v24 = v99;
  }

  sub_1B3C9A208();
  sub_1B3C9A208();
  sub_1B3C9A228();
  sub_1B3C9A228();
  v53 = v103;
  sub_1B3C9A238();
  v54 = &selRef_pixelHeight;
  [*&v1[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_gyroDisabledAnimator] presentationValue];
  PXFloatSaturate();
  v56 = v55;
  sub_1B3C9A228();
  v57 = v98;
  v58 = v97;
  if (v43 > 0.99 || v44 < 0.01)
  {
    OUTLINED_FUNCTION_17_4();
    sub_1B3C9A088();
    swift_endAccess();
  }

  IsLandscape = UIInterfaceOrientationIsLandscape(*&v1[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_deviceOrientation]);
  v60 = MEMORY[0x1E69C1BD8];
  if (!IsLandscape)
  {
    v60 = MEMORY[0x1E69C1BD0];
  }

  (*(v106 + 104))(v110, *v60, v108);
  v58(v57, v24, v111);
  v61 = v1;
  v62 = sub_1B3C9A538();
  v63 = sub_1B3C9CAB8();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v112[0] = swift_slowAlloc();
    *v64 = 136316162;
    v112[3] = v61;
    v65 = sub_1B3C9D828();
    v67 = sub_1B3749364(v65, v66, v112);
    v68 = v58;
    v69 = v111;
    v70 = v67;

    *(v64 + 4) = v70;
    *(v64 + 12) = 2080;
    v68(v94, v57, v69);
    v53 = v103;
    v71 = sub_1B3C9C608();
    v73 = v72;
    v74 = v69;
    v75 = *(v105 + 8);
    v75(v57, v74);
    v76 = sub_1B3749364(v71, v73, v112);
    v54 = &selRef_pixelHeight;

    *(v64 + 14) = v76;
    *(v64 + 22) = 2048;
    *(v64 + 24) = v44;
    *(v64 + 32) = 2048;
    *(v64 + 34) = v43;
    *(v64 + 42) = 2048;
    *(v64 + 44) = v56;
    _os_log_impl(&dword_1B36F3000, v62, v63, "SpatialPhoto[%s] update camera attitude:%s backlightProgress:%f unlockProgress:%f disabled:%f", v64, 0x34u);
    swift_arrayDestroy();
    v24 = v99;
    OUTLINED_FUNCTION_3_5();
    OUTLINED_FUNCTION_3_5();
  }

  else
  {

    v75 = *(v105 + 8);
    v75(v57, v111);
  }

  v77 = v100;
  v78 = *&v61[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneView];
  if (v78)
  {
    v79 = v78;
    sub_1B3C9A108();

    (*(v77 + 16))(v96, v107, v102);
    sub_1B3C9A298();
    (*(v106 + 16))(v95, v110, v108);
    sub_1B3C9A288();
    if (*&v61[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_scene])
    {

      v80 = v91;
      sub_1B3C9A358();

      v81 = (sub_1B3C9A328() >> 32) & 1;
      v82 = v80;
      v53 = v103;
      (*(v92 + 8))(v82, v93);
    }

    else
    {
      LOBYTE(v81) = 1;
    }

    LOBYTE(v112[0]) = v81;
    sub_1B3C9A278();
    [*&v61[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_zFocusAnimator] v54[376]];
    LOBYTE(v112[0]) = 0;
    sub_1B3C9A268();
  }

  (*(v106 + 8))(v110, v108);
  v83 = *(v77 + 8);
  v84 = v102;
  v83(v53, v102);
  v85 = OUTLINED_FUNCTION_23_9(&v115);
  (v83)(v85);
  v86 = OUTLINED_FUNCTION_23_9(&v114);
  (v83)(v86);
  v87 = OUTLINED_FUNCTION_23_9(&v113);
  (v83)(v87);
  v83(v109, v84);
  v88 = OUTLINED_FUNCTION_23_9(&v116);
  (v83)(v88);
  v75(v24, v111);
  return (v83)(v107, v84);
}

void sub_1B38758FC()
{
  OUTLINED_FUNCTION_26_11();
  v1 = v0;
  sub_1B3875AD4();
  v2 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_renderEffect];
  if (v2)
  {
    v3 = OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_hasAlwaysOnDisplayEnabled;
    v4 = 0.0;
    if (v0[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_hasAlwaysOnDisplayEnabled] == 1 && (v0[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_isLowPowerModeEnabled] & 1) == 0)
    {
      v5 = 1.0 - *&v0[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_backlightProgress];
      if (v5 > 0.0)
      {
        v6 = 1.0 - *&v0[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_backlightProgress];
      }

      else
      {
        v6 = 0.0;
      }

      v7 = v6 * 3.14159265 * 0.5;
      v8 = v5 <= 1.0;
      v9 = 1.57079633;
      if (v8)
      {
        v9 = v7;
      }

      v10 = sin(v9);
      if (v10 > 0.99)
      {
        v10 = 1.0;
      }

      if (v10 >= 0.01)
      {
        v4 = v10;
      }
    }

    v11 = v4;
    *(v2 + 112) = v11;
    v12 = v0;

    v13 = sub_1B3C9A538();
    v14 = sub_1B3C9CAB8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109888;
      *(v15 + 4) = v1[v3];
      *(v15 + 8) = 1024;
      *(v15 + 10) = *(&v12->isa + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_isLowPowerModeEnabled);

      *(v15 + 14) = 2048;
      *(v15 + 16) = *(v12 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_backlightProgress);
      *(v15 + 24) = 2048;
      *(v15 + 26) = v4;
      _os_log_impl(&dword_1B36F3000, v13, v14, "SpatialPhoto AOD renderEffect hasAlwaysOnDisplayEnabled:%{BOOL}d isLowPowerModeEnabled:%{BOOL}d backlightProgress:%f intensity:%f", v15, 0x22u);
      OUTLINED_FUNCTION_3_5();
    }

    else
    {

      v13 = v12;
    }

    sub_1B3874504();
    OUTLINED_FUNCTION_15_23();
  }

  else
  {
    OUTLINED_FUNCTION_15_23();
  }
}

void sub_1B3875AD4()
{
  v1 = [v0 traitCollection];
  v2 = [v1 _backlightLuminance];

  sub_1B3875C50(v2);
}

void sub_1B3875B3C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_currentBacklightLuminance;
  if (*&v1[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_currentBacklightLuminance] != a1)
  {
    v3 = v1;
    v5 = v1;
    v6 = sub_1B3C9A538();
    v7 = sub_1B3C9CAA8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = *&v3[v2];

      _os_log_impl(&dword_1B36F3000, v6, v7, "SpatialPhoto currentBacklightLuminance = %ld", v8, 0xCu);
      MEMORY[0x1B8C6EC70](v8, -1, -1);
    }

    else
    {

      v6 = v5;
    }

    v9 = a1 == 1 || *&v3[v2] == 1;
    sub_1B3875C68(v9);
  }
}

void sub_1B3875C50(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_currentBacklightLuminance);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_currentBacklightLuminance) = a1;
  sub_1B3875B3C(v2);
}

void sub_1B3875C68(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_hasAlwaysOnDisplayEnabled);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_hasAlwaysOnDisplayEnabled) = a1;
  sub_1B3875D10(v2, &OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_hasAlwaysOnDisplayEnabled, "SpatialPhoto hasAlwaysOnDisplayEnabled = %{BOOL}d");
}

void sub_1B3875CA0()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 isLowPowerModeEnabled];

  sub_1B3875E18(v1);
}

void sub_1B3875D10(char a1, uint64_t *a2, const char *a3)
{
  v4 = *a2;
  if (v3[*a2] != (a1 & 1))
  {
    v6 = v3;
    v7 = v3;
    oslog = sub_1B3C9A538();
    v8 = sub_1B3C9CAA8();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = OUTLINED_FUNCTION_27_10();
      *v9 = 67109120;
      *(v9 + 4) = v6[v4];

      _os_log_impl(&dword_1B36F3000, oslog, v8, a3, v9, 8u);
      OUTLINED_FUNCTION_3_5();
      v10 = oslog;
    }

    else
    {

      v10 = v7;
    }
  }
}

void sub_1B3875E18(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_isLowPowerModeEnabled);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_isLowPowerModeEnabled) = a1;
  sub_1B3875D10(v2, &OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_isLowPowerModeEnabled, "SpatialPhoto isLowPowerModeEnabled = %{BOOL}d");
}

uint64_t sub_1B3875E50()
{
  v2 = sub_1B3C9A348();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_25_8();
  if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_scene) && *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_enableOcclusion) == 1)
  {

    sub_1B3C9A358();
    v6 = sub_1B3C9A338();

    (*(v4 + 8))(v1, v2);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_1B3875F50(void *a1, void *a2)
{
  [*&v2[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_parallaxSpatialPhotoLayer] frame];
  [a2 viewFrameForLayerFrame_];
  OUTLINED_FUNCTION_6();
  if (PXRectIsValid() && ([a2 additionalContentTransform], OUTLINED_FUNCTION_17_1(v9, v10, v11, v12, v13, v14, v15, v16, v40, v42, v44, v46, v48[0]), PXAffineTransformIsValid()))
  {
    [a2 additionalContentTransform];
    OUTLINED_FUNCTION_17_1(v17, v18, v19, v20, v21, v22, v23, v24, v41, v43, v45, v47, v48[0]);
    v49.origin.x = OUTLINED_FUNCTION_17();
    v50 = CGRectApplyAffineTransform(v49, v25);
    [a1 setFrame_];
    if ([a2 visibilityEffects])
    {
      v26 = [a1 layer];
      [a2 visibilityAmount];
      *&v27 = v27;
      [v26 setOpacity_];
    }

    [a1 layoutIfNeeded];
    [v2 updatePortalViewGeometryAndEffects];
  }

  else
  {
    v28 = v2;
    v29 = sub_1B3C9A538();
    v30 = sub_1B3C9CAC8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = OUTLINED_FUNCTION_27_10();
      v33 = swift_slowAlloc();
      v48[0] = *&v33;
      *v31 = 138412546;
      *(v31 + 4) = v28;
      *v32 = v28;
      *(v31 + 12) = 2080;
      v34 = v28;
      v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v3, v4, v5, v6];
      v36 = sub_1B3C9C5E8();
      v38 = v37;

      v39 = sub_1B3749364(v36, v38, v48);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_1B36F3000, v29, v30, "%@ attempted to set invalid frame:%s", v31, 0x16u);
      sub_1B36FB21C(v32, &qword_1EB8567E0);
      OUTLINED_FUNCTION_3_5();
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_3_5();
    }
  }
}

void sub_1B38761E4()
{
  v5 = [v0 currentLayoutInfo];
  if (v5)
  {
    v6 = v5;
    [v5 additionalContentTransform];
    OUTLINED_FUNCTION_16_16(v7, v8, v9, v10, v11, v12, v13, v14, v42, v44, v46, v48, v50, *&v52, *&v53);
    if (PXAffineTransformIsValid() && ([v6 containerFrame], PXRectIsValid()))
    {
      v15 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneView];
      if (v15)
      {
        v16 = v15;
        sub_1B3875F50(v16, v6);
      }

      [v6 containerFrame];
      OUTLINED_FUNCTION_6();
      [v6 additionalTransform];
      [v0 setTransform_];
      PXRectWithSize();
      [v0 setBounds_];
      OUTLINED_FUNCTION_17();
      PXRectGetCenter();
      [v0 setCenter_];
    }

    else
    {
      v17 = v6;
      v18 = v0;
      v19 = sub_1B3C9A538();
      v20 = sub_1B3C9CAC8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = OUTLINED_FUNCTION_27_10();
        v52 = swift_slowAlloc();
        *v21 = 138412802;
        *(v21 + 4) = v18;
        *v22 = v18;
        *(v21 + 12) = 2080;
        v23 = v18;
        [v17 additionalContentTransform];
        OUTLINED_FUNCTION_16_16(v24, v25, v26, v27, v28, v29, v30, v31, v43, v45, v47, v49, v51, *&v52, *&v53);
        v32 = NSStringFromAffineTransform();

        if (!v32)
        {
          __break(1u);
          return;
        }

        v33 = sub_1B3C9C5E8();
        v35 = v34;

        v36 = sub_1B3749364(v33, v35, &v52);

        *(v21 + 14) = v36;
        *(v21 + 22) = 2080;
        [v17 containerFrame];
        OUTLINED_FUNCTION_6();
        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v1, v2, v3, v4];
        v38 = sub_1B3C9C5E8();
        v40 = v39;

        v41 = sub_1B3749364(v38, v40, &v52);

        *(v21 + 24) = v41;
        _os_log_impl(&dword_1B36F3000, v19, v20, "%@ Attempted to set invalid geometry transform:%s containerFrame:%s", v21, 0x20u);
        sub_1B36FB21C(v22, &qword_1EB8567E0);
        OUTLINED_FUNCTION_3_5();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_3_5();
        OUTLINED_FUNCTION_3_5();
      }

      else
      {
      }
    }
  }
}

id sub_1B3876520()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PUParallaxSpatialPhotoLayerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PUParallaxSpatialPhotoLayerView()
{
  result = qword_1EB84F4C8;
  if (!qword_1EB84F4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B3876788()
{
  sub_1B38769B8(319, &qword_1EB84FEC0, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_1B38769B8(319, &qword_1EB84F410, MEMORY[0x1E69C1C00]);
    if (v1 <= 0x3F)
    {
      sub_1B3C9A3F8();
      if (v2 <= 0x3F)
      {
        sub_1B3C9A0B8();
        if (v3 <= 0x3F)
        {
          sub_1B3C9A558();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1B38769B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B3C9D198();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B3876A3C(void *a1)
{
  v2 = [a1 sceneData];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B3C980A8();

  return v3;
}

uint64_t sub_1B3876AAC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B37FDE00(a1, a2);
  }

  return a1;
}

uint64_t sub_1B3876AC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B377659C(a1, a2);
  }

  return a1;
}

uint64_t sub_1B3876ADC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8576E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3876B4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855BF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3876BBC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1B3876C28(void *a1)
{
  v2 = 0.0;
  if (*(*(v1 + 16) + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_isGeneratingPoster))
  {
    v2 = 1.0;
  }

  return [a1 setValue_];
}

uint64_t OUTLINED_FUNCTION_6_27(uint64_t result)
{
  *(v2 - 112) = v1;
  *(v2 - 104) = result;
  *(v2 - 144) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_8_22()
{

  return sub_1B3C9D4C8();
}

uint64_t OUTLINED_FUNCTION_13_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(v5 + v4, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_27_10()
{

  return swift_slowAlloc();
}

BOOL sub_1B3876E2C()
{
  OUTLINED_FUNCTION_11_17();
  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *v3;
    v9[0] = *(v3 - 1);
    v9[1] = v5;

    v6 = v1(v9);
    if (v0)
    {

      return v4 != 0;
    }

    v7 = v6;
    v3 += 2;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

void sub_1B3876F04(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a4(a3);
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B8C6A930](v7, a3);
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v13 = v9;
    v11 = a1(&v13);

    if (!v4)
    {
      v7 = v8 + 1;
      if ((v11 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

BOOL sub_1B3876FFC(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_1B3C98298() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

id sub_1B38770D0(uint64_t a1, uint64_t a2)
{
  v5 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (!v5 && (sub_1B3C9D6A8() & 1) == 0)
  {
    v6 = a1 == 0x6E6564646968 && a2 == 0xE600000000000000;
    if (!v6 && (sub_1B3C9D6A8() & 1) == 0)
    {
      return [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }
  }

  v7 = sub_1B3C9C5A8();
  v16.receiver = v2;
  v16.super_class = type metadata accessor for PUVFXLayer();
  v14 = OUTLINED_FUNCTION_35_6(v16.super_class, sel_actionForKey_, v8, v9, v10, v11, v12, v13, v16);

  return v14;
}

void sub_1B3877268()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PUVFXLayer();
  objc_msgSendSuper2(&v3, sel_layoutSublayers);
  v1 = [v0 mask];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }
}

id PUVFXLayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PUVFXLayer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PUVFXLayer();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t PUVFXLayer.init(layer:)(void *a1)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_1B3C9D688();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PUVFXLayer();
  OUTLINED_FUNCTION_35_6(v9.super_class, sel_initWithLayer_, v2, v3, v4, v5, v6, v7, v9);
  OUTLINED_FUNCTION_18_20();
  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_36_7();
}

id PUVFXLayer.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PUVFXLayer.init(coder:)(void *a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for PUVFXLayer();
  v9 = OUTLINED_FUNCTION_35_6(v11.super_class, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v11);

  if (v9)
  {
  }

  return v9;
}

id sub_1B387754C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_28_0();
    v8 = sub_1B38775BC(v5, v6, v7);
    v9 = *(v1 + v2);
    *(v1 + v2) = v8;
    v4 = v8;

    v3 = 0;
  }

  v10 = v3;
  return v4;
}

id sub_1B38775BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = type metadata accessor for PUVFXLayer();
  v6 = [objc_allocWithZone(v5) init];
  v7 = *a2;
  v8 = *a3;
  v9 = v6;

  sub_1B387BDE8(v7, v8, v9);
  v10 = [objc_allocWithZone(v5) init];
  [v9 setMask_];

  v11 = [v9 mask];
  if (v11)
  {
    v12 = v11;
    v15 = *a2;
    v16 = *a3;

    MEMORY[0x1B8C69C10](0x6B73616D2DLL, 0xE500000000000000);
    sub_1B387BDE8(v15, v16, v12);
  }

  [v9 pu:1 setWantsHDR:{v15, v16}];
  sub_1B3710718(0, &qword_1EB852900);
  sub_1B3C9C5E8();
  v13 = sub_1B3754A40();
  [v9 setCompositingFilter_];

  [v9 setContentsGravity_];
  return v9;
}

void sub_1B38777E4()
{
  if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_blendAnimation))
  {
    if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_isThrottled) == 1)
    {
      v1 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_blendImages;
      swift_beginAccess();
      v2 = *(v0 + v1);
      if (v2 && sub_1B3711890(v2))
      {
        sub_1B37ED0BC(0, (v2 & 0xC000000000000001) == 0, v2);
        if ((v2 & 0xC000000000000001) != 0)
        {

          v3 = MEMORY[0x1B8C6A930](0, v2);
        }

        else
        {
          v3 = *(v2 + 32);
        }

        v4 = sub_1B3877524();
        [v4 setContents_];

        v5 = sub_1B3877538();
        [v5 setContents_];

        sub_1B3878564();
      }
    }

    else
    {
      v6 = sub_1B3877524();
      [v6 setContents_];

      v7 = sub_1B3877538();
      [v7 setContents_];

      sub_1B387857C();
    }
  }
}

uint64_t sub_1B387796C()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_isDimmed;
  OUTLINED_FUNCTION_7_0();
  return *(v0 + v1);
}

void sub_1B38779F4(char a1)
{
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_isDimmed;
  OUTLINED_FUNCTION_14_23();
  *(v1 + v3) = a1;
  sub_1B3877A3C();
}

void sub_1B3877A3C()
{
  v1 = sub_1B3877D5C();
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_isDimmed;
  swift_beginAccess();
  v3 = 0.0;
  if (*(v0 + v2))
  {
    v3 = 0.6;
  }

  GenericGray = CGColorCreateGenericGray(0.0, v3);
  [v1 setBackgroundColor_];
}

uint64_t sub_1B3877ACC(uint64_t a1)
{
  OUTLINED_FUNCTION_21_13(a1);
  OUTLINED_FUNCTION_2_30();
  return OUTLINED_FUNCTION_18_21();
}

void *sub_1B3877B64()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_foregroundMask;
  OUTLINED_FUNCTION_7_0();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B3877C1C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B3877BFC(v1);
}

void sub_1B3877C4C()
{
  sub_1B38785FC();
  v1 = sub_1B3877524();
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_foregroundMask;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = v3;
  sub_1B38788E4(v1, v3);

  LOBYTE(v1) = *(v0 + v2) != 0;
  v5 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_isDimmed;
  swift_beginAccess();
  *(v0 + v5) = v1;
  sub_1B3877A3C();
}

uint64_t sub_1B3877CF8(uint64_t a1)
{
  OUTLINED_FUNCTION_21_13(a1);
  OUTLINED_FUNCTION_2_30();
  return OUTLINED_FUNCTION_18_21();
}

id sub_1B3877D5C()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___dimmingLayer;
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___dimmingLayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___dimmingLayer);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for PUVFXLayer()) init];
    v5 = aDimminglayer[0];
    v6 = aDimminglayer[1];
    v7 = v4;

    sub_1B387BDE8(v5, v6, v7);
    GenericGray = CGColorCreateGenericGray(0.0, 0.6);
    [v7 setBackgroundColor_];

    [v7 pu:1 setWantsHDR:?];
    v9 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void *sub_1B3877E78()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_backgroundMask;
  OUTLINED_FUNCTION_7_0();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B3877F30(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B3877F10(v1);
}

void sub_1B3877F60()
{
  sub_1B38785FC();
  v1 = sub_1B3877538();
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_backgroundMask;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = v3;
  sub_1B38788E4(v1, v3);
}

uint64_t sub_1B3877FD4(uint64_t a1)
{
  OUTLINED_FUNCTION_21_13(a1);
  OUTLINED_FUNCTION_2_30();
  return OUTLINED_FUNCTION_18_21();
}

id sub_1B3878038()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___sourceImageLayer;
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___sourceImageLayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___sourceImageLayer);
  }

  else
  {
    swift_getObjectType();
    v4 = sub_1B38780A0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1B38780A0()
{
  v0 = type metadata accessor for PUVFXLayer();
  v1 = [objc_allocWithZone(v0) init];
  v2 = qword_1EB857740;
  v3 = off_1EB857748;
  v4 = v1;

  sub_1B387BDE8(v2, v3, v4);
  v5 = [objc_allocWithZone(v0) init];
  [v4 setMask_];

  v6 = [v4 mask];
  if (v6)
  {
    v7 = v6;
    v11 = qword_1EB857740;
    v12 = off_1EB857748;

    MEMORY[0x1B8C69C10](0x6B73616D2DLL, 0xE500000000000000);
    sub_1B387BDE8(v11, v12, v7);
  }

  v8 = [v4 mask];

  if (v8)
  {
    GenericGray = CGColorCreateGenericGray(0.0, 0.0);
    [v8 setBackgroundColor_];
  }

  [v4 pu:1 setWantsHDR:?];
  return v4;
}

void *sub_1B3878230()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_sourceImage;
  OUTLINED_FUNCTION_7_0();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B38782E8(void *a1, uint64_t *a2, void (*a3)(void))
{
  v6 = *a2;
  OUTLINED_FUNCTION_14_23();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;

  a3();
}

void sub_1B3878350(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B38782C8(v1);
}

void sub_1B3878380()
{
  v1 = sub_1B3878038();
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_sourceImage;
  swift_beginAccess();
  [v1 setContents_];
}

uint64_t sub_1B38783E8(uint64_t a1)
{
  OUTLINED_FUNCTION_21_13(a1);
  OUTLINED_FUNCTION_2_30();
  return OUTLINED_FUNCTION_18_21();
}

id sub_1B387844C(void *a1)
{
  CACurrentMediaTime();
  v2 = OUTLINED_FUNCTION_28_11();
  [v2 v3];
  v5 = v4;
  [a1 setSpeed_];

  return [a1 setTimeOffset_];
}

id sub_1B38784C0(void *a1)
{
  [a1 timeOffset];
  v3 = v2;
  LODWORD(v2) = 1.0;
  [a1 setSpeed_];
  [a1 setTimeOffset_];
  [a1 setBeginTime_];
  CACurrentMediaTime();
  v4 = OUTLINED_FUNCTION_28_11();
  [v4 v5];
  v7 = v6 - v3;

  return [a1 setBeginTime_];
}

void sub_1B3878594(void (*a1)(void))
{
  v2 = sub_1B3877524();
  a1();

  v3 = sub_1B3877538();
  a1();
}

void sub_1B38785FC()
{
  v2 = sub_1B3878038();
  v13 = [v2 superlayer];

  if (v13)
  {
  }

  else
  {
    v3 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___sourceImageLayer;
    [v0 addSublayer_];
    v4 = *&v0[v3];
    v5 = sub_1B3877538();
    OUTLINED_FUNCTION_13_23(v5);

    v6 = *&v0[v3];
    v7 = sub_1B3877524();
    OUTLINED_FUNCTION_13_23(v7);

    v8 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___backgroundLayer];
    v9 = sub_1B3877D5C();
    OUTLINED_FUNCTION_13_23(v9);

    [*&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___foregroundLayer] addSublayer_];

    OUTLINED_FUNCTION_28_0();

    sub_1B387BDE8(v10, v11, v12);
  }
}

void sub_1B387874C()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PUVFXDimmingBackgroundLayer();
  objc_msgSendSuper2(&v9, sel_layoutSublayers);
  v1 = sub_1B387BEA4(v0);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1B3711890(v1);
    if (v3)
    {
      v4 = v3;
      if (v3 < 1)
      {
        __break(1u);
        return;
      }

      v5 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1B8C6A930](v5, v2);
        }

        else
        {
          v6 = *(v2 + 8 * v5 + 32);
        }

        v7 = v6;
        ++v5;
        [v0 bounds];
        [v7 setFrame_];
      }

      while (v4 != v5);
    }

    sub_1B3877D5C();
    OUTLINED_FUNCTION_17_17();
    OUTLINED_FUNCTION_34_7();

    v8 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_scannerLayer];
    OUTLINED_FUNCTION_17_17();
    OUTLINED_FUNCTION_34_7();

    sub_1B3877524();
    OUTLINED_FUNCTION_17_17();
    OUTLINED_FUNCTION_34_7();

    sub_1B3877538();
    OUTLINED_FUNCTION_17_17();
    OUTLINED_FUNCTION_34_7();
  }
}

void sub_1B38788E4(void *a1, uint64_t a2)
{
  v5 = [a1 mask];
  [v5 setContents_];

  if (*(v2 + OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_isThrottled) == 1)
  {
    v6 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_blendImages;
    swift_beginAccess();
    v7 = *(v2 + v6);
    if (v7)
    {
      if (sub_1B3711890(v7))
      {
        sub_1B37ED0BC(0, (v7 & 0xC000000000000001) == 0, v7);
        if ((v7 & 0xC000000000000001) != 0)
        {

          v8 = MEMORY[0x1B8C6A930](0, v7);
        }

        else
        {
          v8 = *(v7 + 32);
        }

        [a1 setContents_];
      }
    }
  }

  if (a2)
  {
    v9 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_blendAnimation);
    if (v9)
    {
      v10 = v9;
      v11 = sub_1B387BE4C(a1);
      if (!v11 || (MEMORY[0x1EEE9AC00](v11), , v12 = sub_1B3876E2C(), , , !v12))
      {
        v13 = qword_1EB857770;
        v14 = off_1EB857778;

        sub_1B387BD6C(v10, v13, v14, a1);
      }
    }
  }

  else
  {
    v15 = qword_1EB857770;

    sub_1B3C9C5A8();
    OUTLINED_FUNCTION_18_20();

    [a1 removeAnimationForKey_];

    v16 = OUTLINED_FUNCTION_28_11();
    [v16 v17];
  }
}

double sub_1B3878B1C()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_blendAnimationDuration;
  OUTLINED_FUNCTION_7_0();
  return *(v0 + v1);
}

uint64_t sub_1B3878B50(double a1)
{
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_blendAnimationDuration;
  result = OUTLINED_FUNCTION_14_23();
  *(v1 + v3) = a1;
  return result;
}

void sub_1B3878BE0()
{
  sub_1B3877BFC(0);
  sub_1B3877F10(0);
  v1 = sub_1B3878038();
  v2 = [v1 mask];

  if (v2)
  {
    v3 = OUTLINED_FUNCTION_28_11();
    [v3 v4];
  }

  v5 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_currentBackground);
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_currentBackground) = 0;
}

void sub_1B3878CB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  v7 = sub_1B3711890(a1);
  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      v13 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_blendImages;
      swift_beginAccess();
      *(v14 + v13) = v15;

      sub_1B387943C();
      OUTLINED_FUNCTION_37_1();
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B8C6A930](v8, a1);
    }

    else
    {
      if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v9 = *(a1 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    [v9 extent];
    v12 = [a2 createCGImage:v10 fromRect:a3 format:a4 colorSpace:0 deferred:?];

    ++v8;
    if (v12)
    {
      MEMORY[0x1B8C69CE0]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B3C9C7E8();
      }

      sub_1B3C9C808();
      v15 = v17;
      v8 = v11;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_1B3878EF4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  [a1 extent];
  sub_1B3877BFC([a2 createCGImage:a1 fromRect:a3 format:a4 colorSpace:0 deferred:?]);
  v9 = *(v4 + OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_currentBackground);
  if (v9)
  {
    v28 = a4;
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 subtract];
    v13 = [v12 applyWithForeground:a1 background:v11];

    if (v13)
    {
      OUTLINED_FUNCTION_25_9();
      OUTLINED_FUNCTION_24_10();
      v14 = sub_1B3C9C5A8();
      v15 = [v13 imageByApplyingFilter_];

      if (v15)
      {
        v16 = [v10 componentMax];
        v17 = [v16 &selRef_assetChangesShouldAnimate + 5];

        if (v17)
        {
          OUTLINED_FUNCTION_24_10();
          OUTLINED_FUNCTION_25_9();
          v18 = sub_1B3C9C5A8();
          v27 = [v17 imageByApplyingFilter_];

          if (v27)
          {
            v19 = sub_1B3878038();
            v20 = [v19 mask];

            if (v20)
            {
              [v27 extent];
              v21 = [a2 &selRef:v27 cropTransformedImageViewWillEndTracking:{a3, v28, 0} + 2];
              [v20 setContents_];
            }

            [v15 extent];
            sub_1B3877F10([a2 &selRef:v15 cropTransformedImageViewWillEndTracking:{a3, v28, 0} + 2]);

            OUTLINED_FUNCTION_37_1();

            return;
          }
        }
      }
    }
  }

  v24 = sub_1B3878038();
  v25 = [v24 mask];

  if (v25)
  {
    v26 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_foregroundMask;
    swift_beginAccess();
    [v25 setContents_];
  }

  OUTLINED_FUNCTION_37_1();
}

void sub_1B3879288(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  [a1 extent];
  sub_1B3877F10([a2 createCGImage:a1 fromRect:a3 format:a4 colorSpace:0 deferred:?]);
  v9 = sub_1B3878038();
  v10 = [v9 mask];

  if (v10)
  {
    v11 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_backgroundMask;
    swift_beginAccess();
    [v10 setContents_];
  }

  v12 = *(v4 + OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_currentBackground);
  *(v4 + OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_currentBackground) = a1;
  v13 = a1;
}

void sub_1B387943C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_blendImages;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = sub_1B3711890(*(v0 + v2));
    v5 = MEMORY[0x1E69E7CC0];
    v28 = MEMORY[0x1E69E7CC0];
    v27 = sub_1B3711890(v3);
    v6 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_blendAnimationDuration;

    v26 = v6;
    swift_beginAccess();
    v7 = 0;
    v8 = v3 & 0xC000000000000001;
    while (v27 != v7)
    {
      if (v8)
      {
        v9 = MEMORY[0x1B8C6A930](v7, v3);
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v9 = *(v3 + 8 * v7 + 32);
      }

      v10 = v9;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (!v4)
      {
        goto LABEL_28;
      }

      if (v7 == 0x7FFFFFFFFFFFFFFFLL && v4 == -1)
      {
        goto LABEL_29;
      }

      v12 = (v7 + 1) % v4;
      if (v8)
      {
        v13 = MEMORY[0x1B8C6A930](v12, v3);
      }

      else
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v13 = *(v3 + 32 + 8 * v12);
      }

      v14 = v13;
      sub_1B3710718(0, &qword_1EB853080);
      v15 = sub_1B3755B70(0x73746E65746E6F63, 0xE800000000000000);
      [v15 setFromValue_];
      [v15 setToValue_];
      v16 = *(v1 + v26) * v7;
      v17 = v15;
      [v17 setBeginTime_];
      v18 = v1;
      [v17 setDuration_];

      v19 = v17;
      MEMORY[0x1B8C69CE0]();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B3C9C7E8();
      }

      sub_1B3C9C808();

      v5 = v28;
      ++v7;
      v1 = v18;
    }

    v3 = [objc_allocWithZone(MEMORY[0x1E6979308]) init];
    if (!(v5 >> 62))
    {

      sub_1B3C9D6B8();
      sub_1B3710718(0, &qword_1EB8528F8);
      v20 = v5;
      goto LABEL_24;
    }

LABEL_32:
    sub_1B3710718(0, &qword_1EB8528F8);

    v20 = sub_1B3C9D4D8();

LABEL_24:

    sub_1B3756668(v20, v3);
    swift_beginAccess();
    v21 = *(v1 + v26) * v4;
    v22 = v3;
    [v22 setDuration_];
    [v22 setRepeatDuration_];

    v23 = sub_1B3C9C5A8();

    v24 = sub_1B3C9C5A8();
    [v22 setValue:v23 forKey:v24];

    v25 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_blendAnimation);
    *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_blendAnimation) = v22;
  }
}

void sub_1B387988C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_blendImages;
  OUTLINED_FUNCTION_14_23();
  *(v1 + v3) = a1;

  sub_1B387943C();
}

uint64_t sub_1B38798DC(uint64_t a1)
{
  OUTLINED_FUNCTION_21_13(a1);
  OUTLINED_FUNCTION_2_30();
  return OUTLINED_FUNCTION_18_21();
}

uint64_t sub_1B3879940(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void sub_1B3879984(double a1, double a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_scannerLayer;
  v7 = [*(v2 + OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_scannerLayer) superlayer];
  v8 = sub_1B3877524();
  v9 = v8;
  if (!v7)
  {

    goto LABEL_5;
  }

  sub_1B3710718(0, &qword_1EB8528E8);
  v10 = sub_1B3C9CFA8();

  if ((v10 & 1) == 0)
  {
LABEL_5:
    [*(v3 + OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___foregroundLayer) addSublayer_];
  }

  v11 = *(v3 + v6);
  sub_1B387A7BC(a1, a2);
}

void sub_1B3879AE8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_scannerLayer;
  v3 = [*&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_scannerLayer] superlayer];
  if (!v3 || (v4 = v3, sub_1B3710718(0, &qword_1EB8528E8), v5 = v0, v6 = sub_1B3C9CFA8(), v4, v5, (v6 & 1) == 0))
  {
    [v1 addSublayer_];
  }

  [v1 bounds];
  MidX = CGRectGetMidX(v11);
  [v1 bounds];
  MaxY = CGRectGetMaxY(v12);
  v9 = *&v1[v2];
  sub_1B387A7BC(MidX, MaxY);
}

id PUVFXDimmingBackgroundLayer.init()()
{
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___foregroundLayer] = 0;
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___backgroundLayer] = 0;
  v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_isThrottled] = 0;
  v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_isDimmed] = 0;
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_foregroundMask] = 0;
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___dimmingLayer] = 0;
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_backgroundMask] = 0;
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___sourceImageLayer] = 0;
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_sourceImage] = 0;
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_blendAnimationDuration] = 0x3FE0000000000000;
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_scannerLayer;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for PUVFXScannerLayer()) init];
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_currentBackground] = 0;
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_blendAnimation] = 0;
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_blendImages] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PUVFXDimmingBackgroundLayer();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t PUVFXDimmingBackgroundLayer.init(layer:)()
{
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___foregroundLayer] = 0;
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___backgroundLayer] = 0;
  v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_isThrottled] = 0;
  v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_isDimmed] = 0;
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_foregroundMask] = 0;
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___dimmingLayer] = 0;
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_backgroundMask] = 0;
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___sourceImageLayer] = 0;
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_sourceImage] = 0;
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_blendAnimationDuration] = 0x3FE0000000000000;
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_scannerLayer;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for PUVFXScannerLayer()) init];
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_currentBackground] = 0;
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_blendAnimation] = 0;
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_blendImages] = 0;
  OUTLINED_FUNCTION_19_18();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PUVFXDimmingBackgroundLayer();
  OUTLINED_FUNCTION_35_6(v9.super_class, sel_initWithLayer_, v2, v3, v4, v5, v6, v7, v9);
  OUTLINED_FUNCTION_18_20();
  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_36_7();
}

id PUVFXDimmingBackgroundLayer.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___foregroundLayer] = 0;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___backgroundLayer] = 0;
  v1[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_isThrottled] = 0;
  v1[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_isDimmed] = 0;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_foregroundMask] = 0;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___dimmingLayer] = 0;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_backgroundMask] = 0;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer____lazy_storage___sourceImageLayer] = 0;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_sourceImage] = 0;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_blendAnimationDuration] = 0x3FE0000000000000;
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_scannerLayer;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for PUVFXScannerLayer()) init];
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_currentBackground] = 0;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_blendAnimation] = 0;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer_blendImages] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PUVFXDimmingBackgroundLayer();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1B3879FEC()
{
}

uint64_t sub_1B387A1B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B3C98158();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id sub_1B387A238(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  [v2 setLineWidth_];
  GenericGray = CGColorCreateGenericGray(1.0, 1.0);
  [v2 setStrokeColor_];

  v4 = CGColorCreateGenericGray(1.0, 0.0);
  [v2 setFillColor_];

  v5 = v2;
  [a1 bounds];
  [v5 setBounds_];
  [v5 setAnchorPoint_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852908);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B3CFA2E0;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 56) = 0x73646E756F62;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852910);
  v7 = sub_1B3C9C4D8();
  sub_1B375675C(v7, v5);
  v8 = CGColorCreateGenericGray(1.0, 1.0);
  [v5 setShadowColor_];

  [v5 setShadowRadius_];
  [v5 setShadowOffset_];
  LODWORD(v9) = 1.0;
  [v5 setShadowOpacity_];
  sub_1B387BDE8(0xD000000000000010, 0x80000001B3D1EBD0, v5);
  [v5 pu:1 setWantsHDR:?];
  sub_1B3710718(0, &qword_1EB852900);
  sub_1B3C9C5E8();
  v10 = sub_1B3754A40();
  [v5 setCompositingFilter_];

  [v5 setOpacity_];
  return v5;
}

id sub_1B387A504(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1B387A568()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6979430]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852908);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B3CFA2E0;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  v2 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  v3 = v0;
  *(inited + 48) = [v2 init];
  *(inited + 56) = 0x73646E756F62;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852910);
  v4 = sub_1B3C9C4D8();
  sub_1B375675C(v4, v3);
  [v3 setInstanceCount_];
  CATransform3DMakeScale(&v10, 1.01, 1.01, 1.0);
  [v3 setInstanceTransform_];
  LODWORD(v5) = -0.25;
  [v3 setInstanceAlphaOffset_];
  [v3 pu:1 setWantsHDR:?];
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1B3CFA2E0;
  *(v6 + 32) = 0x6E6F697469736F70;
  *(v6 + 40) = 0xE800000000000000;
  *(v6 + 48) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(v6 + 56) = 0x73646E756F62;
  *(v6 + 64) = 0xE600000000000000;
  *(v6 + 72) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v7 = sub_1B3C9C4D8();
  sub_1B375675C(v7, v3);

  v8 = sub_1B387A218();
  [v3 addSublayer_];

  return v3;
}

void sub_1B387A7BC(double a1, double a2)
{
  v3 = v2;
  v6 = sub_1B387A4E4();
  v7 = [v6 superlayer];

  if (v7)
  {
  }

  else
  {
    [v3 addSublayer_];
  }

  v8 = sub_1B387A218();
  [v8 setPosition_];

  sub_1B387BCF4(-3.14159265, 3.14159265);
  v10 = v9;
  CATransform3DMakeScale(&__src, 4.0, 4.0, 1.0);
  CATransform3DMakeRotation(&b, v10, 0.0, 0.0, 1.0);
  memcpy(&__dst, &__src, sizeof(__dst));
  CATransform3DConcat(&v25, &__dst, &b);
  sub_1B3710718(0, &qword_1EB853080);
  v11 = sub_1B3755B70(0x726F66736E617274, 0xE90000000000006DLL);
  [v11 setDuration_];
  v12 = sub_1B3C9CA78();
  [v11 setToValue_];

  CATransform3DMakeScale(&__dst, 0.01, 0.01, 1.0);
  v13 = sub_1B3C9CA78();
  [v11 setFromValue_];

  v14 = *MEMORY[0x1E6979EB0];
  v15 = objc_opt_self();
  v16 = [v15 functionWithName_];
  [v11 setTimingFunction_];

  v17 = OBJC_IVAR____TtC15PhotosUIPrivate17PUVFXScannerLayer____lazy_storage___pathLayer;
  [*&v3[OBJC_IVAR____TtC15PhotosUIPrivate17PUVFXScannerLayer____lazy_storage___pathLayer] addAnimation:v11 forKey:0];
  v18 = sub_1B3755B70(0x7974696361706FLL, 0xE700000000000000);
  [v18 setDuration_];
  v19 = sub_1B3C98328();
  [v18 setFromValue_];

  v20 = sub_1B3C9C9C8();
  [v18 setToValue_];

  v21 = [v15 functionWithName_];
  [v18 setTimingFunction_];

  [*&v3[v17] addAnimation:v18 forKey:0];
}

void sub_1B387AB44()
{
  type metadata accessor for PUVFXScannerLayer.BezPoint();
  OUTLINED_FUNCTION_0();
  v28 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857830);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v27 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857838);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v27 - v13);
  v15 = OBJC_IVAR____TtC15PhotosUIPrivate17PUVFXScannerLayer_points;
  if (!*(*&v0[OBJC_IVAR____TtC15PhotosUIPrivate17PUVFXScannerLayer_points] + 16))
  {
    return;
  }

  Mutable = CGPathCreateMutable();
  [v0 bounds];
  Width = CGRectGetWidth(v31);
  [v0 bounds];
  Height = CGRectGetHeight(v32);
  CGAffineTransformMakeScale(&v30, Width, Height);
  v27[1] = v0;
  v18 = *&v0[v15];
  v19 = *(v18 + 16);

  v20 = 0;
  while (1)
  {
    if (v20 == v19)
    {
      v21 = 1;
      v20 = v19;
      goto LABEL_8;
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v20 >= *(v18 + 16))
    {
      goto LABEL_16;
    }

    v22 = v18 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v20;
    v23 = *(v6 + 48);
    *v8 = v20;
    sub_1B387C6BC(v22, v8 + v23);
    sub_1B371CA48(v8, v11, &qword_1EB857830);
    v21 = 0;
    ++v20;
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, v21, 1, v6);
    sub_1B371CA48(v11, v14, &qword_1EB857838);
    if (__swift_getEnumTagSinglePayload(v14, 1, v6) == 1)
    {

      v25 = sub_1B387A218();
      v26 = Mutable;
      [v25 setPath_];

      return;
    }

    v24 = *v14;
    sub_1B387C720(v14 + *(v6 + 48), v5);
    if (v24)
    {
      sub_1B3C9CB48();
    }

    else
    {
      sub_1B3C9CB38();
    }

    sub_1B387C784(v5);
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1B387AE7C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PUVFXScannerLayer();
  objc_msgSendSuper2(&v3, sel_layoutSublayers);
  v1 = sub_1B387A218();
  [v0 bounds];
  [v1 setFrame_];

  v2 = sub_1B387A4E4();
  [v0 bounds];
  [v2 setFrame_];

  sub_1B387AB44();
}

id PUVFXScannerLayer.init()()
{
  sub_1B3C98158();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate17PUVFXScannerLayer____lazy_storage___pathLayer] = 0;
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate17PUVFXScannerLayer____lazy_storage___replicatorLayer] = 0;
  v36 = OBJC_IVAR____TtC15PhotosUIPrivate17PUVFXScannerLayer_points;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857808);
  v4 = (type metadata accessor for PUVFXScannerLayer.BezPoint() - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B3D093A0;
  v8 = v7 + v6;
  sub_1B3C98148();
  v9 = *(v2 + 32);
  OUTLINED_FUNCTION_28_0();
  v9();
  __asm { FMOV            V0.2D, #0.125 }

  v35 = _Q0;
  *(v8 + v4[7]) = _Q0;
  v15 = (v8 + v4[8]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v8 + v4[9]);
  *v16 = 0;
  v16[1] = 0;
  sub_1B3C98148();
  v17 = OUTLINED_FUNCTION_4_32();
  (v9)(v17);
  OUTLINED_FUNCTION_22_8(v4[7], xmmword_1B3D093B0);
  OUTLINED_FUNCTION_23_10(v18, xmmword_1B3D093C0);
  *(v8 + v5 + v19) = xmmword_1B3D093D0;
  sub_1B3C98148();
  v20 = OUTLINED_FUNCTION_4_32();
  (v9)(v20);
  OUTLINED_FUNCTION_22_8(v4[7], xmmword_1B3D093E0);
  OUTLINED_FUNCTION_23_10(v21, xmmword_1B3D093F0);
  v23 = (v8 + 2 * v5 + v22);
  *v23 = 0x3FC0000000000000;
  v23[1] = 0x3FE8000000000000;
  sub_1B3C98148();
  v24 = OUTLINED_FUNCTION_4_32();
  (v9)(v24);
  OUTLINED_FUNCTION_22_8(v4[7], xmmword_1B3D09400);
  OUTLINED_FUNCTION_23_10(v25, xmmword_1B3D09410);
  *(v8 + 3 * v5 + v26) = xmmword_1B3D09420;
  sub_1B3C98148();
  v27 = OUTLINED_FUNCTION_4_32();
  (v9)(v27);
  OUTLINED_FUNCTION_22_8(v4[7], xmmword_1B3D09430);
  OUTLINED_FUNCTION_23_10(v28, xmmword_1B3D09440);
  *(v8 + 4 * v5 + v29) = xmmword_1B3D09450;
  sub_1B3C98148();
  v30 = OUTLINED_FUNCTION_4_32();
  (v9)(v30);
  OUTLINED_FUNCTION_22_8(v4[7], xmmword_1B3D09460);
  OUTLINED_FUNCTION_23_10(v31, xmmword_1B3D09470);
  *(v8 + 5 * v5 + v32) = xmmword_1B3D09480;
  v33 = v8 + 6 * v5;
  sub_1B3C98148();
  OUTLINED_FUNCTION_28_0();
  v9();
  *(v33 + v4[7]) = v35;
  *(v33 + v4[8]) = xmmword_1B3D09490;
  *(v33 + v4[9]) = xmmword_1B3D094A0;
  *&v0[v36] = v7;
  v37.receiver = v0;
  v37.super_class = type metadata accessor for PUVFXScannerLayer();
  return objc_msgSendSuper2(&v37, sel_init);
}

uint64_t _s15PhotosUIPrivate10PUVFXLayerC5layerACyp_tcfC_0()
{
  [objc_allocWithZone(v0) initWithLayer_];
  OUTLINED_FUNCTION_18_20();
  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_36_7();
}

uint64_t PUVFXScannerLayer.init(layer:)()
{
  sub_1B3C98158();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate17PUVFXScannerLayer____lazy_storage___pathLayer] = 0;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate17PUVFXScannerLayer____lazy_storage___replicatorLayer] = 0;
  v30 = OBJC_IVAR____TtC15PhotosUIPrivate17PUVFXScannerLayer_points;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857808);
  type metadata accessor for PUVFXScannerLayer.BezPoint();
  OUTLINED_FUNCTION_26_12();
  v8 = *(v7 + 72);
  v9 = OUTLINED_FUNCTION_15_24();
  *(v9 + 16) = xmmword_1B3D093A0;
  v10 = v9 + v0;
  sub_1B3C98148();
  v11 = *(v5 + 32);
  OUTLINED_FUNCTION_34();
  v11();
  OUTLINED_FUNCTION_8_23();
  v12 = OUTLINED_FUNCTION_0_44();
  (v11)(v12);
  OUTLINED_FUNCTION_6_28(*(v2 + 28), xmmword_1B3D093B0);
  OUTLINED_FUNCTION_7_27(v13, xmmword_1B3D093C0);
  *(v3 + v14) = xmmword_1B3D093D0;
  sub_1B3C98148();
  v15 = OUTLINED_FUNCTION_0_44();
  (v11)(v15);
  OUTLINED_FUNCTION_6_28(*(v2 + 28), xmmword_1B3D093E0);
  OUTLINED_FUNCTION_7_27(v16, xmmword_1B3D093F0);
  OUTLINED_FUNCTION_32_6(v17, xmmword_1B3D094B0);
  v18 = OUTLINED_FUNCTION_0_44();
  (v11)(v18);
  OUTLINED_FUNCTION_6_28(*(v2 + 28), xmmword_1B3D09400);
  OUTLINED_FUNCTION_7_27(v19, xmmword_1B3D09410);
  *(v10 + 2 * v8 + v20) = xmmword_1B3D09420;
  sub_1B3C98148();
  v21 = OUTLINED_FUNCTION_0_44();
  (v11)(v21);
  OUTLINED_FUNCTION_6_28(*(v2 + 28), xmmword_1B3D09430);
  OUTLINED_FUNCTION_7_27(v22, xmmword_1B3D09440);
  OUTLINED_FUNCTION_33_5(v23, xmmword_1B3D09450);
  v24 = OUTLINED_FUNCTION_0_44();
  (v11)(v24);
  OUTLINED_FUNCTION_6_28(*(v2 + 28), xmmword_1B3D09460);
  OUTLINED_FUNCTION_7_27(v25, xmmword_1B3D09470);
  OUTLINED_FUNCTION_31_6(v26, xmmword_1B3D09480);
  OUTLINED_FUNCTION_34();
  v11();
  OUTLINED_FUNCTION_27_11();
  *(v10 + v27) = xmmword_1B3D09490;
  *(v10 + *(v2 + 36)) = xmmword_1B3D094A0;
  *&v1[v30] = v9;
  v28 = OUTLINED_FUNCTION_19_18();
  v31.receiver = v1;
  v31.super_class = type metadata accessor for PUVFXScannerLayer();
  objc_msgSendSuper2(&v31, sel_initWithLayer_, v28);
  OUTLINED_FUNCTION_18_20();
  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_36_7();
}

uint64_t sub_1B387B670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  swift_unknownObjectRetain();
  sub_1B3C9D1E8();
  swift_unknownObjectRelease();
  return a4(&v6);
}

id PUVFXScannerLayer.init(coder:)(void *a1)
{
  sub_1B3C98158();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate17PUVFXScannerLayer____lazy_storage___pathLayer] = 0;
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate17PUVFXScannerLayer____lazy_storage___replicatorLayer] = 0;
  v31 = OBJC_IVAR____TtC15PhotosUIPrivate17PUVFXScannerLayer_points;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857808);
  type metadata accessor for PUVFXScannerLayer.BezPoint();
  OUTLINED_FUNCTION_26_12();
  v9 = *(v8 + 72);
  v10 = OUTLINED_FUNCTION_15_24();
  *(v10 + 16) = xmmword_1B3D093A0;
  v11 = v10 + v1;
  sub_1B3C98148();
  v12 = *(v6 + 32);
  OUTLINED_FUNCTION_34();
  v12();
  OUTLINED_FUNCTION_8_23();
  v13 = OUTLINED_FUNCTION_0_44();
  (v12)(v13);
  OUTLINED_FUNCTION_6_28(*(v3 + 28), xmmword_1B3D093B0);
  OUTLINED_FUNCTION_7_27(v14, xmmword_1B3D093C0);
  *(v4 + v15) = xmmword_1B3D093D0;
  sub_1B3C98148();
  v16 = OUTLINED_FUNCTION_0_44();
  (v12)(v16);
  OUTLINED_FUNCTION_6_28(*(v3 + 28), xmmword_1B3D093E0);
  OUTLINED_FUNCTION_7_27(v17, xmmword_1B3D093F0);
  OUTLINED_FUNCTION_32_6(v18, xmmword_1B3D094B0);
  v19 = OUTLINED_FUNCTION_0_44();
  (v12)(v19);
  OUTLINED_FUNCTION_6_28(*(v3 + 28), xmmword_1B3D09400);
  OUTLINED_FUNCTION_7_27(v20, xmmword_1B3D09410);
  *(v11 + 2 * v9 + v21) = xmmword_1B3D09420;
  sub_1B3C98148();
  v22 = OUTLINED_FUNCTION_0_44();
  (v12)(v22);
  OUTLINED_FUNCTION_6_28(*(v3 + 28), xmmword_1B3D09430);
  OUTLINED_FUNCTION_7_27(v23, xmmword_1B3D09440);
  OUTLINED_FUNCTION_33_5(v24, xmmword_1B3D09450);
  v25 = OUTLINED_FUNCTION_0_44();
  (v12)(v25);
  OUTLINED_FUNCTION_6_28(*(v3 + 28), xmmword_1B3D09460);
  OUTLINED_FUNCTION_7_27(v26, xmmword_1B3D09470);
  OUTLINED_FUNCTION_31_6(v27, xmmword_1B3D09480);
  OUTLINED_FUNCTION_34();
  v12();
  OUTLINED_FUNCTION_27_11();
  *(v11 + v28) = xmmword_1B3D09490;
  *(v11 + *(v3 + 36)) = xmmword_1B3D094A0;
  *&v2[v31] = v10;
  v33.receiver = v2;
  v33.super_class = type metadata accessor for PUVFXScannerLayer();
  v29 = objc_msgSendSuper2(&v33, sel_initWithCoder_, a1);

  if (v29)
  {
  }

  return v29;
}

uint64_t sub_1B387BA08()
{
}

id sub_1B387BA70(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1B387BB04(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1B8C6EC90](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1B8C6EC90](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B387BB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B3C9D6A8() & 1;
  }
}

uint64_t sub_1B387BBD4()
{
  OUTLINED_FUNCTION_11_17();
  sub_1B3710718(0, &unk_1EB84F790);
  return OUTLINED_FUNCTION_30_5() & 1;
}

uint64_t sub_1B387BC20()
{
  OUTLINED_FUNCTION_11_17();
  sub_1B3710718(0, &qword_1EB852330);
  return OUTLINED_FUNCTION_30_5() & 1;
}

uint64_t sub_1B387BC6C()
{
  OUTLINED_FUNCTION_11_17();
  sub_1B3C98298();
  sub_1B387C674(&qword_1EB857828, MEMORY[0x1E6969C28]);
  return sub_1B3C9C528() & 1;
}

void sub_1B387BCF4(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_1B387BB04(0x20000000000001uLL);
  }
}

void sub_1B387BD6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1B3C9C5A8();

  [a4 addAnimation:a1 forKey:v6];
}

void sub_1B387BDE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B3C9C5A8();

  [a3 setName_];
}

uint64_t sub_1B387BE4C(void *a1)
{
  v1 = [a1 animationKeys];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B3C9C788();

  return v3;
}

uint64_t sub_1B387BEA4(void *a1)
{
  v1 = [a1 sublayers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1B3710718(0, &qword_1EB8528E8);
  v3 = sub_1B3C9C788();

  return v3;
}

uint64_t type metadata accessor for PUVFXScannerLayer.BezPoint()
{
  result = qword_1EB857810;
  if (!qword_1EB857810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B387C574()
{
  sub_1B3C98158();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGPoint(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B387C674(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B387C6BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PUVFXScannerLayer.BezPoint();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B387C720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PUVFXScannerLayer.BezPoint();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B387C784(uint64_t a1)
{
  v2 = type metadata accessor for PUVFXScannerLayer.BezPoint();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_8_23()
{
  v4 = v0[7];
  __asm { FMOV            V0.2D, #0.125 }

  *(v2 - 128) = _Q0;
  *(v1 + v4) = _Q0;
  v10 = (v1 + v0[8]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v1 + v0[9]);
  *v11 = 0;
  v11[1] = 0;

  return sub_1B3C98148();
}

id OUTLINED_FUNCTION_13_23(uint64_t a1)
{

  return [v1 (v2 + 1656)];
}

uint64_t OUTLINED_FUNCTION_14_23()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_24()
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_17_17()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_19_18()
{
  __swift_project_boxed_opaque_existential_0Tm(v0, v0[3]);

  return sub_1B3C9D688();
}

__n128 OUTLINED_FUNCTION_27_11()
{
  result = *(v2 - 128);
  *(v1 + *(v0 + 28)) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_5()
{

  return sub_1B3C9CFA8();
}

uint64_t OUTLINED_FUNCTION_31_6@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v2 + a1) = a2;

  return sub_1B3C98148();
}

uint64_t OUTLINED_FUNCTION_32_6@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v2 + a1) = a2;

  return sub_1B3C98148();
}

uint64_t OUTLINED_FUNCTION_33_5@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v2 + a1) = a2;

  return sub_1B3C98148();
}

id OUTLINED_FUNCTION_34_7()
{

  return [v0 (v1 + 2424)];
}

id OUTLINED_FUNCTION_35_6(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{

  return objc_msgSendSuper2(&a9, a2, v9);
}

uint64_t sub_1B387CA84(uint64_t a1)
{
  result = sub_1B3881450();
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1B3881490(result, v3, 0, a1);
  }
}

uint64_t sub_1B387CB1C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    OUTLINED_FUNCTION_18_3();
    (*(v7 + 16))(a3, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v6);
}

uint64_t sub_1B387CBC4(uint64_t a1)
{
  result = sub_1B388174C();
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1B388178C(&v5, result, v3, 0, a1);
  }
}

id AmbientPhotoFrameEditorController.init(editor:photoLibrary:)(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_environment];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = &v2[OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_posterConfiguration];
  *(v6 + 8) = 0;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v7 = &v2[OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_originalContentConfiguration];
  *v7 = 0u;
  *(v7 + 2) = 1;
  *(v7 + 24) = 0u;
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_backgroundView] = 0;
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_foregroundView] = 0;
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_floatingView] = 0;
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_keyAsset] = 0;
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_cloudToLocalIdentifiersCache] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_pickerContainerViewController] = 0;
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_peoplePickerHeight] = 0x406F400000000000;
  sub_1B3881120(a1, &v2[OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_editor]);
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_photoLibrary] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for AmbientPhotoFrameEditorController();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

void sub_1B387CE58()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v2 = sub_1B3C98158();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_environment;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  sub_1B3881678(v1 + v9, &v52, &qword_1EB8578A8);
  if (!v53)
  {
    sub_1B38816E4(&v52, &qword_1EB8578A8);
    goto LABEL_12;
  }

  sub_1B370EF10(&v52, v54);
  OUTLINED_FUNCTION_18_22();
  v10 = OUTLINED_FUNCTION_14_24();
  v11(v10);
  if (v51[1])
  {
    sub_1B38816E4(v51, &qword_1EB853B38);
    OUTLINED_FUNCTION_18_22();
    v12 = OUTLINED_FUNCTION_14_24();
    v13(v12);
    v14 = OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_posterConfiguration;
    swift_beginAccess();
    memcpy(v50, (v1 + v14), sizeof(v50));
    memcpy((v1 + v14), v49, 0x48uLL);
    v15 = v50;
LABEL_7:
    sub_1B38816E4(v15, &qword_1EB853B38);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_18_22();
  v16 = OUTLINED_FUNCTION_14_24();
  v17(v16);
  if (v50[1])
  {
    v18 = v50[4];
    v46 = v50[3];
    v44 = v50[2];
    v20 = v50[6];
    v19 = v50[7];
    v21 = v50[5];

    sub_1B3C98148();
    v22 = sub_1B3C98128();
    v42 = v23;
    sub_1B38816E4(v50, &qword_1EB853B30);
    (*(v4 + 8))(v8, v2);
    v18 &= 1u;
    v48 = v18;
    v24 = (v1 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_posterConfiguration);
    swift_beginAccess();
    memcpy(v49, v24, 0x48uLL);
    *v24 = v22;
    v24[1] = v42;
    *(v24 + 16) = v44;
    v24[3] = v46;
    *(v24 + 32) = v18;
    v24[5] = v21;
    v24[6] = v20;
    v24[7] = v19;
    v24[8] = 1;
    v15 = v49;
    goto LABEL_7;
  }

LABEL_8:
  v47 = v1;
  v25 = v1 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_posterConfiguration;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  OUTLINED_FUNCTION_32_7(v50);
  v26 = *&v50[1];
  v27 = v50[0];
  v28 = v50[3];
  v29 = v50[4];
  v30 = v50[5];
  v31 = v50[6];
  v32 = *&v50[7];
  if (v50[1])
  {
    v45 = v50[4] & 1;
    v33 = v50[7];
    v40 = *&v50[1];
    v41 = *&v50[7];

    v26 = v40;
    v32 = v41;
    v43 = v28;
    v34 = v30;
    v35 = v31;
  }

  else
  {
    v43 = 0;
    v45 = 0;
    v35 = 0;
    v33 = 0;
    v34 = 1;
  }

  v49[0] = v27;
  *&v49[1] = v26;
  v49[3] = v28;
  LOBYTE(v49[4]) = v29;
  *(&v49[4] + 1) = *(v25 + 33);
  HIDWORD(v49[4]) = *(v25 + 36);
  v49[5] = v30;
  v49[6] = v31;
  *&v49[7] = v32;
  sub_1B3881678(v50, &v48, &qword_1EB853B38);
  sub_1B38816E4(v49, &qword_1EB853B38);
  v36 = (v47 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_originalContentConfiguration);
  v37 = *(v47 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_originalContentConfiguration);
  v38 = *(v47 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_originalContentConfiguration + 8);
  v39 = *(v47 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_originalContentConfiguration + 16);
  *v36 = v43;
  v36[1] = v45;
  v36[2] = v34;
  v36[3] = v35;
  v36[4] = v33;
  sub_1B3795AC0(v37, v38, v39);
  __swift_destroy_boxed_opaque_existential_0Tm(v54);
LABEL_12:
  OUTLINED_FUNCTION_27();
}

void sub_1B387D250()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853970);
  OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - v4;
  v6 = sub_1B3C98068();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_environment;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  sub_1B3881678(v1 + v13, v32, &qword_1EB8578A8);
  v14 = *(&v33 + 1);
  if (!*(&v33 + 1))
  {
    sub_1B38816E4(v32, &qword_1EB8578A8);
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    goto LABEL_6;
  }

  v29 = v12;
  v15 = v34;
  v16 = __swift_project_boxed_opaque_existential_0Tm(v32, *(&v33 + 1));
  v17 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v20 = v19 - v18;
  (*(v17 + 16))(v19 - v18);
  sub_1B38816E4(v32, &qword_1EB8578A8);
  (*(v15 + 16))(v14, v15);
  (*(v17 + 8))(v20, v14);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
LABEL_6:
    sub_1B38816E4(v5, &qword_1EB853970);
    goto LABEL_8;
  }

  v21 = v8;
  v22 = *(v8 + 32);
  v23 = v29;
  v22(v29, v5, v6);
  v24 = (v1 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_posterConfiguration);
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  v25 = v24[1];
  if (v25)
  {
    v26 = *v24;
    v27 = *(v24 + 2);
    *&v31[16] = *(v24 + 1);
    *&v31[32] = v27;
    *&v31[48] = *(v24 + 3);
    *&v31[64] = v24[8];
    v32[0] = v26;
    *v31 = v26;
    *&v31[8] = v25;
    v32[1] = v25;
    v36 = *&v31[64];
    v33 = *&v31[16];
    v34 = v27;
    v35 = *&v31[48];
    sub_1B377B608(v32, v30);
    AmbientPhotoFramePosterConfiguration.save(toDirectory:)();
    memcpy(v30, v31, sizeof(v30));
    sub_1B377B640(v30);
  }

  (*(v21 + 8))(v23, v6);
LABEL_8:
  OUTLINED_FUNCTION_27();
}

void sub_1B387D6A8()
{
  v1 = (v0 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_posterConfiguration);
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  memcpy(__dst, v1, sizeof(__dst));
  v3 = __dst[0];
  v2 = __dst[1];
  if (__dst[1])
  {
    v12 = __dst[0];
    v13 = __dst[1];
    OUTLINED_FUNCTION_10_25();
    v4 = OUTLINED_FUNCTION_15_25();
    sub_1B3881678(v4, v5, v6);

    sub_1B38816E4(&v12, &qword_1EB853B38);
    sub_1B381284C(v3, v2);

    v7 = [objc_opt_self() standardUserDefaults];
    v8 = sub_1B3C9C5A8();

    [v7 removeObjectForKey_];
  }

  else
  {
    v12 = __dst[0];
    v13 = 0;
    OUTLINED_FUNCTION_10_25();
    v9 = OUTLINED_FUNCTION_15_25();
    sub_1B3881678(v9, v10, v11);
    sub_1B38816E4(&v12, &qword_1EB853B38);
  }
}

void sub_1B387D7F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20);
  OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  v4 = v0 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_posterConfiguration;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  OUTLINED_FUNCTION_32_7(&v52);
  if (!v53)
  {
    v43 = v52;
    v44 = 0;
    v15 = *(v4 + 32);
    v45 = *(v4 + 16);
    v46 = v15;
    v47 = *(v4 + 48);
    v48 = *(v4 + 64);
    OUTLINED_FUNCTION_34_8(&v52, v38);
    v16 = &v43;
LABEL_7:
    sub_1B38816E4(v16, &qword_1EB853B38);
    return;
  }

  v5 = *(v4 + 64);
  v51 = *(v4 + 56);
  v6 = *(v4 + 40);
  v49 = *(v4 + 24);
  v50 = v6;
  v38[0] = v52;
  v38[1] = v53;
  v7 = *(v4 + 32);
  v39 = *(v4 + 16);
  v40 = v7;
  v41 = *(v4 + 48);
  v42 = v5;
  sub_1B3881678(&v52, &v32, &qword_1EB853B38);
  sub_1B388150C(&v49, &v32);
  sub_1B38816E4(v38, &qword_1EB853B38);
  OUTLINED_FUNCTION_32_7(&v43);
  v8 = v43;
  v9 = *(v4 + 32);
  v28 = *(v4 + 16);
  v29 = v9;
  v30 = *(v4 + 48);
  v31 = *(v4 + 64);
  if (!v44)
  {
    OUTLINED_FUNCTION_34_8(&v43, &v32);
    sub_1B3881624(&v49);
    v32 = v8;
    v33 = 0;
    v34 = v28;
    v35 = v29;
    v36 = v30;
    v37 = v31;
    v16 = &v32;
    goto LABEL_7;
  }

  v32 = v43;
  v33 = v44;
  v10 = *(v4 + 32);
  v34 = *(v4 + 16);
  v35 = v10;
  v36 = *(v4 + 48);
  v37 = *(v4 + 64);

  sub_1B3881678(&v43, v26, &qword_1EB853B38);
  sub_1B38816E4(&v32, &qword_1EB853B38);
  v26[0] = v49;
  v26[1] = v50;
  v27 = v51;
  sub_1B37E8118();
  v12 = v11;

  v13 = OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_keyAsset;
  v14 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_keyAsset);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_keyAsset) = v12;

  if (*(v1 + v13))
  {
    sub_1B3881624(&v49);
  }

  else
  {
    v17 = dispatch_semaphore_create(0);
    sub_1B3C9C898();
    sub_1B3C9C8B8();
    OUTLINED_FUNCTION_20_1();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = v22;
    v24 = v50;
    *(v23 + 40) = v49;
    *(v23 + 56) = v24;
    *(v23 + 72) = v51;
    *(v23 + 80) = v17;
    v25 = v17;
    sub_1B3850B9C();

    sub_1B3C9CD38();
  }

  sub_1B387DE48();
}

uint64_t sub_1B387DB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B387DB7C, 0, 0);
}

uint64_t sub_1B387DB7C()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 88);
    v3 = *(v2 + 32);
    v4 = *(v2 + 16);
    *(v0 + 16) = *v2;
    *(v0 + 32) = v4;
    *(v0 + 48) = v3;
    v5 = *(Strong + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_photoLibrary);
    *(v0 + 112) = v5;
    v6 = v5;
    v7 = swift_task_alloc();
    *(v0 + 120) = v7;
    *v7 = v0;
    v7[1] = sub_1B387DC9C;

    return AmbientPhotoFrameContentConfiguration.fetchAssets(photoLibrary:keyAsset:countLimit:)(v6, 0, 1, 0);
  }

  else
  {
    OUTLINED_FUNCTION_1();

    return v9();
  }
}

uint64_t sub_1B387DC9C()
{
  OUTLINED_FUNCTION_0_0();
  v1 = *(*v0 + 112);
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  *(v5 + 128) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B387DDAC, 0, 0);
}

uint64_t sub_1B387DDAC()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = [v1 firstObject];

  v4 = *&v2[OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_keyAsset];
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_keyAsset] = v3;

  sub_1B3C9CD48();
  OUTLINED_FUNCTION_1();

  return v5();
}

void sub_1B387DE48()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_keyAsset);
  if (v1 && (v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_backgroundView)) != 0)
  {
    v3 = v1;
    v22 = v2;
    if ((sub_1B387E1F8(v22) & 1) == 0)
    {
      sub_1B387E330();
      v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
      swift_unknownObjectWeakAssign();
      v5 = v4;
      [v22 addSubview_];
      [v5 setTranslatesAutoresizingMaskIntoConstraints_];
      v6 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1B3D001A0;
      v8 = [v5 topAnchor];
      v9 = OUTLINED_FUNCTION_19_19([v22 topAnchor]);

      *(v7 + 32) = v9;
      v10 = [v5 leadingAnchor];

      v11 = OUTLINED_FUNCTION_3_41([v22 leadingAnchor]);
      *(v7 + 40) = v11;
      v12 = [v5 trailingAnchor];

      v13 = OUTLINED_FUNCTION_3_41([v22 trailingAnchor]);
      *(v7 + 48) = v13;
      v14 = [v5 bottomAnchor];

      v15 = OUTLINED_FUNCTION_3_41([v22 bottomAnchor]);
      *(v7 + 56) = v15;
      sub_1B3710718(0, &qword_1EB84FE50);
      v16 = sub_1B3C9C778();

      [v6 activateConstraints_];

      v17 = PXDisplayAssetFetchResultFromAsset();
      type metadata accessor for AmbientPhotoFrameStoryUtilities();
      v18 = sub_1B38128CC(v17, 1);
      v19 = [v22 traitCollection];
      [v19 displayScale];

      [v22 bounds];
      sub_1B3C98D48();
      [v5 setImage_];

      swift_unknownObjectRelease();
      v3 = v18;
    }

    OUTLINED_FUNCTION_72_0();
  }

  else
  {
    OUTLINED_FUNCTION_72_0();
  }
}

void *sub_1B387E1F8(id a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = [result image];
    if (v4)
    {
      v5 = v4;
      v6 = [v3 superview];
      if (v6)
      {
        v7 = v6;

        if (v7 == a1)
        {
          v8 = [a1 traitCollection];
          [v8 displayScale];

          [a1 bounds];
          PXSizeScale();
          PXSizeRoundToPixel();
          v10 = v9;
          v12 = v11;
          [v5 px_pixelSize];
          v14 = v13;
          v16 = v15;

          if (v14 == v10)
          {
            return (v16 == v12);
          }

          return 0;
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_1B387E330()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeFromSuperview];
  }

  v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_keyAsset);
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_keyAsset) = 0;
}

id sub_1B387E394(double a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
  result = [v4 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  v7 = [objc_opt_self() systemBackgroundColor];
  [v6 setBackgroundColor_];

  v8 = [objc_opt_self() px_contentLoadingView];
  [v8 setAutoresizingMask_];
  result = [v4 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = result;
  [result bounds];
  OUTLINED_FUNCTION_3_1();

  v10 = OUTLINED_FUNCTION_2_26();
  [v11 v12];
  result = [v4 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v13 = result;
  [result addSubview_];

  [v3 px:v4 addOrReplaceChildViewController:1 activateConstraints:?];
  v14 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_editor + 24);
  v15 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_editor + 32);
  __swift_project_boxed_opaque_existential_0Tm((v1 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_editor), v14);
  (*(v15 + 56))(v14, v15);
  OUTLINED_FUNCTION_3_1();
  Width = CGRectGetWidth(v19);
  v20.origin.x = OUTLINED_FUNCTION_2_26();
  v17 = CGRectGetHeight(v20) + -80.0;
  if (v17 <= a1)
  {
    v18 = v17;
  }

  else
  {
    v18 = a1;
  }

  [v3 setPreferredContentSize_];

  return v3;
}

void sub_1B387E5B4(void *a1, id a2)
{
  [a2 px:a1 addOrReplaceChildViewController:0 activateConstraints:?];
  v4 = [a1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [a2 view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B3D001A0;
  v10 = [v5 topAnchor];
  v11 = OUTLINED_FUNCTION_19_19([v7 topAnchor]);

  *(v9 + 32) = v11;
  v12 = [v5 leadingAnchor];
  v13 = OUTLINED_FUNCTION_3_41([v7 leadingAnchor]);

  *(v9 + 40) = v13;
  v14 = [v5 trailingAnchor];
  v15 = OUTLINED_FUNCTION_3_41([v7 trailingAnchor]);

  *(v9 + 48) = v15;
  v16 = [v5 bottomAnchor];
  v17 = OUTLINED_FUNCTION_3_41([v7 bottomAnchor]);

  *(v9 + 56) = v17;
  sub_1B3710718(0, &qword_1EB84FE50);
  v18 = sub_1B3C9C778();

  [v8 activateConstraints_];
}

void sub_1B387E82C()
{
  v1 = v0;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  OUTLINED_FUNCTION_32_7(&v13);
  v2 = v15;
  if (v14)
  {
    v11 = v13;
    v12 = v14;
    OUTLINED_FUNCTION_7_28();
    OUTLINED_FUNCTION_34_8(&v13, &v10);
    sub_1B38816E4(&v11, &qword_1EB853B38);
    if (v2 == 4)
    {
      sub_1B387EAEC();
    }

    else if (v2 == 5)
    {
      sub_1B387F828();
    }

    else
    {
      sub_1B3710718(0, &qword_1EB855F68);
      v6 = sub_1B3818CB4(0x726F727245, 0xE500000000000000, 0xD000000000000022, 0x80000001B3D1EE40, 1);
      sub_1B3710718(0, &unk_1EB855F70);
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = sub_1B3818E60(19279, 0xE200000000000000, 0, sub_1B38816DC, v7);
      [v6 addAction_];

      __swift_project_boxed_opaque_existential_0Tm((v1 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_editor), *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_editor + 24));
      OUTLINED_FUNCTION_14();
      v9();
    }
  }

  else
  {
    v11 = v13;
    v12 = 0;
    OUTLINED_FUNCTION_7_28();
    v3 = OUTLINED_FUNCTION_15_25();
    sub_1B3881678(v3, v4, v5);
    sub_1B38816E4(&v11, &qword_1EB853B38);
  }
}

uint64_t sub_1B387EA44()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1B3881120(result + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_editor, v4);

    v2 = v5;
    v3 = v6;
    __swift_project_boxed_opaque_existential_0Tm(v4, v5);
    (*(v3 + 48))(0, v2, v3);
    return __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  return result;
}

void sub_1B387EAEC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20);
  OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1B387E394(250.0);
  v5 = sub_1B3C9C5A8();
  v6 = PULocalizedString(v5);

  v7 = sub_1B3C9C5E8();
  v9 = v8;

  sub_1B373ED44(v7, v9, v4);
  __swift_project_boxed_opaque_existential_0Tm(&v1[OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_editor], *&v1[OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_editor + 24]);
  OUTLINED_FUNCTION_14();
  v10();
  v11 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_pickerContainerViewController];
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_pickerContainerViewController] = v4;
  v12 = v4;

  sub_1B3C9C898();
  sub_1B3C9C8B8();
  OUTLINED_FUNCTION_20_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v1;
  v18 = v1;
  sub_1B3850B9C();
}

uint64_t sub_1B387ECA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1B3C98068();
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B387ED30, 0, 0);
}

uint64_t sub_1B387ED30()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[3];
  sub_1B3710718(0, &qword_1EB8578C0);
  v2 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1B3C98038();

  v3 = sub_1B387F1C0(v1);
  v0[4] = v3;
  v4 = objc_allocWithZone(type metadata accessor for AmbientPhotoFrameCuratedPeopleRequester());
  v0[5] = sub_1B37F79F0(v3);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B387EE48;

  return sub_1B37F7A84();
}

uint64_t sub_1B387EE48(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (v2)
  {

    v9 = sub_1B387EF78;
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;
    v9 = sub_1B387F038;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1B387EF78()
{
  OUTLINED_FUNCTION_0_0();
  sub_1B3C9CAC8();
  if (qword_1EB8500A0 != -1)
  {
    OUTLINED_FUNCTION_6_1();
  }

  sub_1B3C9A438();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_1B387F038()
{
  OUTLINED_FUNCTION_0_0();
  sub_1B3C9C888();
  *(v0 + 72) = sub_1B3C9C878();
  v2 = sub_1B3C9C848();

  return MEMORY[0x1EEE6DFA0](sub_1B387F0C8, v2, v1);
}

uint64_t sub_1B387F0C8()
{
  OUTLINED_FUNCTION_9();

  sub_1B387F25C();

  return MEMORY[0x1EEE6DFA0](sub_1B387F158, 0, 0);
}

uint64_t sub_1B387F158()
{
  OUTLINED_FUNCTION_0_0();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_1();

  return v2();
}

id sub_1B387F1C0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1B3C98018();
  v4 = [v2 initWithPhotoLibraryURL_];

  v5 = sub_1B3C98068();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void sub_1B387F25C()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v56 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851CD8);
  OUTLINED_FUNCTION_8_0(v5);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v50 - v7;
  v58 = sub_1B3C9C458();
  OUTLINED_FUNCTION_0();
  v57 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = sub_1B3C9C328();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v20 = v19 - v18;
  v21 = sub_1B3C9C1D8();
  v22 = OUTLINED_FUNCTION_8_0(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  sub_1B3C9C348();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v24);
  v29 = &v50 - v28;
  v30 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_pickerContainerViewController);
  if (v30)
  {
    v51 = v27;
    v52 = OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_pickerContainerViewController;
    v53 = v26;
    v54 = v8;
    v55 = v25;
    v31 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_photoLibrary);
    v50 = v30;
    sub_1B3C9C2F8();
    sub_1B3C9C298();
    sub_1B3C9C278();
    sub_1B3C9C2E8();
    sub_1B3C9C1C8();
    sub_1B3C9C308();
    (*(v16 + 104))(v20, *MEMORY[0x1E6979060], v14);
    sub_1B3C9C338();
    sub_1B3C9C2C8();
    v62[0] = v4;

    v32 = v56;

    sub_1B37E74AC(v33);
    sub_1B3C9C438();
    v34 = (v1 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_posterConfiguration);
    OUTLINED_FUNCTION_14();
    swift_beginAccess();
    memcpy(v62, v34, 0x48uLL);
    v35 = v62[5];
    v36 = v13;
    if (v62[1])
    {
      v60 = v62[0];
      v61 = v62[1];
      OUTLINED_FUNCTION_8_24();
      sub_1B3881678(v62, v59, &qword_1EB853B38);

      sub_1B38816E4(&v60, &qword_1EB853B38);
      if (v35)
      {
        if (*(v35 + 16))
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v60 = v62[0];
      v61 = 0;
      OUTLINED_FUNCTION_8_24();
      OUTLINED_FUNCTION_34_8(v62, v59);
      sub_1B38816E4(&v60, &qword_1EB853B38);
    }

    if (!*(v4 + 16))
    {
      if (!v32[2])
      {
        sub_1B3C9CAC8();
        if (qword_1EB8500A0 != -1)
        {
          OUTLINED_FUNCTION_6_1();
        }

        sub_1B3C9A438();
        goto LABEL_13;
      }

      v38 = v32[4];
      v37 = v32[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851C50);
      v39 = OUTLINED_FUNCTION_33_6();
      *(v39 + 16) = xmmword_1B3CF6CE0;
      *(v39 + 32) = v38;
      *(v39 + 40) = v37;
    }

LABEL_12:
    sub_1B3C9C2D8();
LABEL_13:
    v40 = v57;
    v41 = v58;
    (*(v57 + 16))(v54, v13, v58);
    OUTLINED_FUNCTION_20_1();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
    sub_1B3C9C258();
    sub_1B3710718(0, &qword_1EB851CE0);
    v45 = v53;
    v46 = v55;
    (*(v53 + 16))(v51, v29, v55);
    v47 = sub_1B3C9CD88();
    [v47 setOverrideUserInterfaceStyle_];
    sub_1B38812F4();
    swift_unknownObjectRetain();
    sub_1B3C9CD98();
    v48 = v50;
    sub_1B387E5B4(v47, v50);

    (*(v40 + 8))(v36, v41);
    (*(v45 + 8))(v29, v46);
    v49 = *(v1 + v52);
    *(v1 + v52) = 0;
  }

  OUTLINED_FUNCTION_27();
}

void sub_1B387F828()
{
  OUTLINED_FUNCTION_39();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851CD8);
  OUTLINED_FUNCTION_8_0(v1);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  v76 = &v74 - v3;
  sub_1B3C9C458();
  OUTLINED_FUNCTION_0();
  v80 = v5;
  v81 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v83 = v7 - v6;
  v8 = sub_1B3C9C1D8();
  v9 = OUTLINED_FUNCTION_8_0(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v82 = sub_1B3C9C348();
  OUTLINED_FUNCTION_0();
  v78 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4();
  v75 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v74 - v15;
  v79 = v0;
  v17 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_photoLibrary);
  sub_1B3C9C2F8();
  sub_1B3C9C278();
  sub_1B3C9C2E8();
  sub_1B3C9C1C8();
  sub_1B3C9C308();
  sub_1B3C9C298();
  v77 = v16;
  sub_1B3C9C2C8();
  v18 = [v17 librarySpecificFetchOptions];
  v19 = MEMORY[0x1E69E7CC0];
  v87 = MEMORY[0x1E69E7CC0];
  v20 = objc_opt_self();
  v84 = v18;
  v21 = [v20 fetchAssetCollectionsWithType:2 subtype:203 options:?];
  v22 = [v21 firstObject];

  v23 = &selRef_item;
  v74 = v22;
  if (v22)
  {
    v24 = v22;
    v25 = [v24 localIdentifier];
    v26 = sub_1B3C9C5E8();
    v28 = v27;

    sub_1B370EE80();
    v30 = v29;
    v32 = *(v29 + 16);
    v31 = *(v29 + 24);
    if (v32 >= v31 >> 1)
    {
      OUTLINED_FUNCTION_26_13(v31);
      sub_1B370EE80();
      v30 = v73;
    }

    *(v30 + 16) = v32 + 1;
    v33 = v30 + 16 * v32;
    *(v33 + 32) = v26;
    *(v33 + 40) = v28;
    v87 = v30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1B3CF9810;
  v35 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v34 + 32) = sub_1B38810B4(0x657A696C61636F6CLL, 0xEE00656C74695464, 1);
  v36 = v34;
  v37 = v84;
  sub_1B3881270(v36, v84);
  v38 = [v20 fetchAssetCollectionsWithType:1 subtype:2 options:v37];

  v39 = [v38 fetchedObjects];
  if (!v39)
  {
    goto LABEL_18;
  }

  sub_1B3710718(0, &qword_1EB84F1A0);
  v40 = sub_1B3C9C788();

  v41 = sub_1B3711890(v40);
  if (!v41)
  {

    v44 = MEMORY[0x1E69E7CC0];
LABEL_17:
    sub_1B37E74AC(v44);
LABEL_18:
    v56 = v83;
    sub_1B3C9C438();
    v58 = v80;
    v57 = v81;
    (*(v80 + 16))(v76, v56, v81);
    OUTLINED_FUNCTION_20_1();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v57);
    v62 = v77;
    sub_1B3C9C248();
    sub_1B3710718(0, &qword_1EB851CE0);
    v63 = v78;
    (*(v78 + 16))(v75, v62, v82);
    v64 = sub_1B3C9CD88();
    [v64 setOverrideUserInterfaceStyle_];
    sub_1B38812F4();
    v65 = v79;
    swift_unknownObjectRetain();
    sub_1B3C9CD98();
    v66 = sub_1B387E394(300.0);
    v67 = sub_1B3C9C5A8();
    v68 = PULocalizedString(v67);

    v69 = sub_1B3C9C5E8();
    v71 = v70;

    sub_1B373ED44(v69, v71, v66);
    sub_1B387E5B4(v64, v66);
    __swift_project_boxed_opaque_existential_0Tm((v65 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_editor), *(v65 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_editor + 24));
    OUTLINED_FUNCTION_14();
    v72();

    (*(v58 + 8))(v83, v57);
    (*(v63 + 8))(v62, v82);
    OUTLINED_FUNCTION_27();
    return;
  }

  v42 = v41;
  v86 = v19;
  sub_1B37EABC0(0, v41 & ~(v41 >> 63), 0);
  if ((v42 & 0x8000000000000000) == 0)
  {
    v43 = 0;
    v44 = v86;
    v85 = v40 & 0xC000000000000001;
    v45 = v40;
    do
    {
      if (v85)
      {
        v46 = MEMORY[0x1B8C6A930](v43, v40);
      }

      else
      {
        v46 = *(v40 + 8 * v43 + 32);
      }

      v47 = v46;
      v48 = v23;
      v49 = [v46 v23[396]];
      v50 = sub_1B3C9C5E8();
      v52 = v51;

      v86 = v44;
      v54 = *(v44 + 16);
      v53 = *(v44 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1B37EABC0((v53 > 1), v54 + 1, 1);
        v44 = v86;
      }

      ++v43;
      *(v44 + 16) = v54 + 1;
      v55 = v44 + 16 * v54;
      *(v55 + 32) = v50;
      *(v55 + 40) = v52;
      v23 = v48;
      v40 = v45;
    }

    while (v42 != v43);

    goto LABEL_17;
  }

  __break(1u);
}

id AmbientPhotoFrameEditorController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AmbientPhotoFrameEditorController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientPhotoFrameEditorController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall AmbientPhotoFrameEditorController.picker(_:didFinishPicking:)(PHPickerViewController *_, Swift::OpaquePointer didFinishPicking)
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v59 = v4;
  v6 = v5;
  v7 = sub_1B3C9C228();
  OUTLINED_FUNCTION_0();
  v61 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851D08);
  OUTLINED_FUNCTION_8_0(v13);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  v17 = sub_1B3C9C348();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4();
  v57 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - v24;
  sub_1B3C9CD78();
  v26 = sub_1B3C9C268();
  v27 = *(v19 + 8);
  v58 = v19 + 8;
  v27(v25, v17);
  v28 = v27;
  if (v26 == 1)
  {
    v29 = sub_1B387CDF8();
    if (*(v30 + 8))
    {
      v51 = v30;
      v52 = v29;
      v53 = v27;
      v54 = v17;
      v55 = v6;
      v56 = v3;
      v31 = *(v59 + 16);
      if (v31)
      {
        v60 = *(v61 + 16);
        v61 += 16;
        v32 = v59 + ((*(v61 + 64) + 32) & ~*(v61 + 64));
        v59 = *(v61 + 56);
        v33 = (v61 - 8);
        v34 = MEMORY[0x1E69E7CC0];
        do
        {
          v60(v12, v32, v7);
          v35 = sub_1B3C9C208();
          v37 = v36;
          (*v33)(v12, v7);
          if (v37)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1B370EE80();
              v34 = v41;
            }

            v39 = *(v34 + 16);
            v38 = *(v34 + 24);
            if (v39 >= v38 >> 1)
            {
              OUTLINED_FUNCTION_26_13(v38);
              sub_1B370EE80();
              v34 = v42;
            }

            *(v34 + 16) = v39 + 1;
            v40 = v34 + 16 * v39;
            *(v40 + 32) = v35;
            *(v40 + 40) = v37;
          }

          v32 += v59;
          --v31;
        }

        while (v31);
      }

      else
      {
        v34 = MEMORY[0x1E69E7CC0];
      }

      *(v51 + 40) = v34;

      (v52)(v62, 0);
      v3 = v56;
      v28 = v53;
      v17 = v54;
    }

    else
    {
      (v29)(v62, 0);
    }
  }

  else
  {
    if (v26 != 2)
    {
      sub_1B3C9D4C8();
      __break(1u);
      return;
    }

    sub_1B387CB1C(v59, MEMORY[0x1E6979020], v16);
    if (__swift_getEnumTagSinglePayload(v16, 1, v7) == 1)
    {
      sub_1B38816E4(v16, &qword_1EB851D08);
      v43 = 0;
      v44 = 0;
    }

    else
    {
      v43 = sub_1B3C9C208();
      v44 = v45;
      (*(v61 + 8))(v16, v7);
    }

    sub_1B388058C(v43, v44);
  }

  v46 = v57;
  sub_1B3C9CD78();
  v47 = sub_1B3C9C288();
  v28(v46, v17);
  if (v47 == 1)
  {
    v48 = *(v3 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_editor + 24);
    v49 = *(v3 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_editor + 32);
    __swift_project_boxed_opaque_existential_0Tm((v3 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_editor), v48);
    (*(v49 + 48))(1, v48, v49);
  }

  OUTLINED_FUNCTION_27();
}

void sub_1B388058C(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v3 = v2;
  v44 = [*(v2 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_photoLibrary) librarySpecificFetchOptions];
  [v44 setWantsIncrementalChangeDetails_];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851C50);
  v7 = OUTLINED_FUNCTION_33_6();
  *(v7 + 16) = xmmword_1B3CF6CE0;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_1B3C9C778();

  v9 = [v6 fetchAssetCollectionsWithLocalIdentifiers:v8 options:v44];

  v10 = [v9 firstObject];
  if (v10)
  {
    if ([v10 px_isFavoritesSmartAlbum])
    {
      v11 = 0xE900000000000073;
      v12 = 0x657469726F766166;
    }

    else
    {
      v17 = OUTLINED_FUNCTION_33_6();
      *(v17 + 16) = xmmword_1B3CF6CE0;
      *(v17 + 32) = a1;
      *(v17 + 40) = a2;

      v18 = sub_1B3C9CAF8();

      sub_1B387CBC4(v18);
      v20 = v19;
      v22 = v21;
      v24 = v23;

      if (!v20)
      {
        __break(1u);
        return;
      }

      if (v24)
      {
        v25 = sub_1B3C9CAD8();
        if (qword_1EB8500A0 != -1)
        {
          OUTLINED_FUNCTION_6_1();
        }

        v26 = qword_1EB855DC0;
        if (os_log_type_enabled(qword_1EB855DC0, v25))
        {
          v27 = swift_slowAlloc();
          v46[0] = swift_slowAlloc();
          *v27 = 136315394;
          *(v27 + 4) = sub_1B3749364(a1, a2, v46);
          *(v27 + 12) = 2080;
          swift_getErrorValue();
          v28 = sub_1B3C9D748();
          v30 = sub_1B3749364(v28, v29, v46);

          *(v27 + 14) = v30;
          _os_log_impl(&dword_1B36F3000, v26, v25, "failed to get cloud identifier for album %s with error: %s", v27, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_3_5();
          OUTLINED_FUNCTION_3_5();
        }

        sub_1B3881740(v22);
        v32 = sub_1B387CDF8();
        if (*(v31 + 8))
        {
          *(v31 + 56) = 0;
        }

        (v32)(v46, 0);
        goto LABEL_25;
      }

      v33 = [v22 stringValue];
      v12 = sub_1B3C9C5E8();
      v11 = v34;

      sub_1B3881740(v22);
    }

    v36 = sub_1B387CDF8();
    if (*(v35 + 8))
    {
      v37 = v35;
      v38 = OUTLINED_FUNCTION_33_6();
      *(v38 + 16) = xmmword_1B3CF6CE0;
      *(v38 + 32) = v12;
      *(v38 + 40) = v11;
      *(v37 + 56) = v38;
    }

    (v36)(v46, 0);
LABEL_25:
    v40 = sub_1B387CDF8();
    if (*(v39 + 8))
    {
      *(v39 + 48) = 0;
    }

    (v40)(v46, 0);
    v41 = OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_environment;
    OUTLINED_FUNCTION_14();
    swift_beginAccess();
    sub_1B3881678(v3 + v41, v46, &qword_1EB8578A8);
    if (v46[3])
    {
      sub_1B3881120(v46, v45);
      sub_1B38816E4(v46, &qword_1EB8578A8);
      v42 = v45[4];
      __swift_project_boxed_opaque_existential_0Tm(v45, v45[3]);
      v43 = sub_1B38813EC(v10);
      (*(v42 + 40))(v43);

      __swift_destroy_boxed_opaque_existential_0Tm(v45);
    }

    else
    {

      sub_1B38816E4(v46, &qword_1EB8578A8);
    }

    return;
  }

  v13 = sub_1B3C9CAC8();
  if (qword_1EB8500A0 != -1)
  {
    OUTLINED_FUNCTION_6_1();
  }

  v14 = qword_1EB855DC0;
  if (os_log_type_enabled(qword_1EB855DC0, v13))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v46[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1B3749364(a1, a2, v46);
    _os_log_impl(&dword_1B36F3000, v14, v13, "could not find picker selected album %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    OUTLINED_FUNCTION_3_5();
    OUTLINED_FUNCTION_3_5();
  }

  else
  {
  }
}

void AmbientPhotoFrameEditorController.editor(_:didInitializeWith:)(uint64_t a1, uint64_t a2)
{
  sub_1B3881120(a2, v4);
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_environment;
  OUTLINED_FUNCTION_31_7();
  sub_1B3881180(v4, v2 + v3);
  swift_endAccess();
  sub_1B387CE58();
  sub_1B387E82C();
}

uint64_t AmbientPhotoFrameEditorController.editorDidInvalidate(_:)()
{
  sub_1B387E330();
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_environment;
  swift_beginAccess();
  sub_1B3881180(v3, v0 + v1);
  return swift_endAccess();
}

uint64_t AmbientPhotoFrameEditorController.editor(_:didUpdate:with:)(uint64_t a1, uint64_t a2)
{
  sub_1B3881120(a2, v5);
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_environment;
  OUTLINED_FUNCTION_31_7();
  sub_1B3881180(v5, v2 + v3);
  return swift_endAccess();
}

uint64_t AmbientPhotoFrameEditorController.editor(_:finalizeWithCompletion:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1B387D250();
  v3 = (v2 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_posterConfiguration);
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  memcpy(__dst, v3, 0x48uLL);
  v4 = *&__dst[1];
  v5 = __dst[0];
  v6 = __dst[3];
  v7 = __dst[4];
  v8 = __dst[5];
  v9 = __dst[6];
  v10 = *&__dst[7];
  if (__dst[1])
  {
    v11 = __dst[4] & 1;
    v45 = __dst[7];
    v40 = *&__dst[1];
    v41 = *&__dst[7];

    v4 = v40;
    v10 = v41;
    v43 = v6;
    v44 = v9;
    v12 = v8;
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v11 = 0;
    v45 = 0;
    v12 = 1;
  }

  v53 = v5;
  v54 = v4;
  v55 = v6;
  v56 = v7;
  *v57 = *(v3 + 33);
  *&v57[3] = v3[9];
  v58 = v8;
  v59 = v9;
  v60 = v10;
  sub_1B3881678(__dst, v52, &qword_1EB853B38);
  sub_1B38816E4(&v53, &qword_1EB853B38);
  v14 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_originalContentConfiguration);
  v13 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_originalContentConfiguration + 8);
  v15 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_originalContentConfiguration + 16);
  v16 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_originalContentConfiguration + 24);
  v17 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_originalContentConfiguration + 32);
  if (v12 != 1)
  {
    v52[0] = v43;
    v52[1] = v11;
    v18 = v11;
    v52[2] = v12;
    v52[3] = v44;
    v52[4] = v45;
    if (v15 != 1)
    {
      v47 = v14;
      v48 = v13 & 1;
      v49 = v15;
      v50 = v16;
      v51 = v17;
      v42 = static AmbientPhotoFrameContentConfiguration.== infix(_:_:)(v52, &v47);
      v31 = OUTLINED_FUNCTION_4_33();
      sub_1B38811F0(v31, v32, v33);
      v34 = OUTLINED_FUNCTION_5_30();
      sub_1B38811F0(v34, v35, v36);

      v37 = OUTLINED_FUNCTION_5_30();
      v19 = sub_1B3795AC0(v37, v38, v39);
      if (v42)
      {
        return a2(v19);
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_21_14();
    v20 = OUTLINED_FUNCTION_5_30();
    sub_1B38811F0(v20, v21, v22);

    v23 = v43;
LABEL_10:
    sub_1B3795AC0(v23, v18, v12);
    v27 = OUTLINED_FUNCTION_4_33();
    sub_1B3795AC0(v27, v28, v29);
LABEL_11:
    sub_1B387D6A8();
    return a2(v19);
  }

  v18 = v11;
  if (v15 != 1)
  {
    v24 = OUTLINED_FUNCTION_4_33();
    sub_1B38811F0(v24, v25, v26);
    v23 = v43;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_21_14();
  v19 = sub_1B3795AC0(v43, v11, 1);
  return a2(v19);
}

void AmbientPhotoFrameEditorController.editor(_:populateViews:for:)(int a1, id a2)
{
  v4 = [a2 backgroundView];
  v5 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_backgroundView);
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_backgroundView) = v4;
  v10 = v4;

  v6 = [a2 foregroundView];
  v7 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_foregroundView);
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_foregroundView) = v6;

  v8 = [a2 floatingView];
  v9 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_floatingView);
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate33AmbientPhotoFrameEditorController_floatingView) = v8;

  sub_1B387D7F8();
}

id sub_1B38810B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v5 = sub_1B3C9C5A8();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithKey:v5 ascending:a3 & 1];

  return v6;
}

uint64_t sub_1B3881120(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_18_3();
  (*v3)(a2);
  return a2;
}

uint64_t sub_1B3881180(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8578A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B38811F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

void sub_1B3881270(uint64_t a1, void *a2)
{
  sub_1B3710718(0, &qword_1EB8578B8);
  v3 = sub_1B3C9C778();

  [a2 setSortDescriptors_];
}

unint64_t sub_1B38812F4()
{
  result = qword_1EB8578B0;
  if (!qword_1EB8578B0)
  {
    type metadata accessor for AmbientPhotoFrameEditorController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8578B0);
  }

  return result;
}

uint64_t sub_1B3881348()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B388183C;
  v4 = OUTLINED_FUNCTION_28_12();

  return sub_1B387ECA0(v4, v5, v6, v2);
}

uint64_t sub_1B38813EC(void *a1)
{
  v1 = [a1 localizedTitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B3C9C5E8();

  return v3;
}

uint64_t sub_1B3881490(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1B3881568()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B374F8B4;
  v5 = OUTLINED_FUNCTION_28_12();

  return sub_1B387DB58(v5, v6, v7, v2, v8, v3);
}

uint64_t sub_1B3881678(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_18_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B38816E4(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_18_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B388178C(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(a5 + 56) + 16 * a2;
    v7 = *v6;
    v8 = *(v6 + 8);
    *result = *v6;
    *(result + 8) = v8;

    sub_1B3881830(v7);
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

id OUTLINED_FUNCTION_3_41(uint64_t a1)
{

  return [v1 (v2 + 3941)];
}

__n128 OUTLINED_FUNCTION_8_24()
{
  *(v2 - 240) = *(v1 + 16);
  *(v2 - 224) = *(v1 + 32);
  *(v2 - 216) = v0;
  result = *(v1 + 48);
  *(v2 - 208) = result;
  *(v2 - 192) = *(v1 + 64);
  return result;
}

id OUTLINED_FUNCTION_19_19(uint64_t a1)
{

  return [v1 constraintEqualToAnchor_];
}

uint64_t OUTLINED_FUNCTION_21_14()
{

  return sub_1B38811F0(v1, v0, 1);
}

uint64_t OUTLINED_FUNCTION_31_7()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_32_7(void *a1)
{

  return memcpy(a1, v1, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_33_6()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_34_8(uint64_t a1, uint64_t a2)
{

  return sub_1B3881678(a1, a2, v2);
}

uint64_t PUPickerConfiguration.localizedTitleForSearchScope.getter()
{
  result = sub_1B38824D4([v0 allPhotosVirtualCollection]);
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t PUPickerConfiguration.localizedPlaceholderForSearchScope.getter()
{
  v0 = sub_1B3C9C5A8();
  v1 = PULocalizedString(v0);

  v2 = sub_1B3C9C5E8();
  return v2;
}

id PUPickerConfiguration.fetchAssetsForSearchScope(options:)(void *a1)
{
  v3 = [v1 containerCollectionFetchResult];
  if (v3 && (v4 = v3, v5 = [v3 firstObject], v4, v5))
  {
    v6 = objc_opt_self();
    v7 = sub_1B3881B98(a1);
    v8 = [v6 fetchAssetsInAssetCollection:v5 options:v7];
  }

  else
  {
    v9 = objc_opt_self();
    v5 = sub_1B3881B98(a1);
    v8 = [v9 fetchAssetsWithOptions_];
  }

  return v8;
}

void *sub_1B3881B98(void *a1)
{
  [a1 copy];
  sub_1B3C9D1E8();
  swift_unknownObjectRelease();
  sub_1B3710718(0, &qword_1EB855D18);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8578C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B3CFA2E0;
  *(inited + 32) = [a1 internalPredicate];
  v4 = [v1 generatedFilter];
  v5 = [v4 assetPredicate];

  v6 = 0;
  *(inited + 40) = v5;
  v12 = MEMORY[0x1E69E7CC0];
  while (v6 != 2)
  {
    v7 = *(inited + 8 * v6++ + 32);
    if (v7)
    {
      v8 = v7;
      MEMORY[0x1B8C69CE0]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B3C9C7E8();
      }

      sub_1B3C9C808();
    }
  }

  sub_1B3710718(0, &qword_1EB84F188);
  swift_setDeallocating();
  sub_1B389E814();
  v9 = sub_1B3809B44();
  [v11 setInternalPredicate_];

  return v11;
}

id sub_1B3881E08(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    v9 = objc_allocWithZone(MEMORY[0x1E695DFB8]);

    return [v9 init];
  }

  v5 = [a1 librarySpecificFetchOptions];
  v6 = &selRef_fetchAssetsWithLocalIdentifiers_options_;
  switch(a3)
  {
    case 0:
      goto LABEL_42;
    case 1:
    case 3:
    case 4:
      v7 = [objc_opt_self() px_defaultDetectionTypes];
      sub_1B3710718(0, &qword_1EB852330);
      v8 = sub_1B3C9C788();

      sub_1B37FA6B4(v8, v5);
      v6 = &selRef_fetchPersonsWithLocalIdentifiers_options_;
      goto LABEL_42;
    case 2:
    case 6:
      v51 = objc_opt_self();
      sub_1B3710718(0, &unk_1EB850160);
      v11 = 0;
      v12 = MEMORY[0x1E69E7CC0];
      v50 = v3;
      v48 = v5;
      break;
    case 5:
      v6 = &selRef_fetchAssetCollectionsWithLocalIdentifiers_options_;
LABEL_42:
      v42 = objc_opt_self();
      v43 = sub_1B3C9C778();
      v44 = [v42 *v6];

      sub_1B3710718(0, &unk_1EB850160);
      sub_1B370BBD8(a2);
      v45 = sub_1B370BEEC();
      v46 = [v44 px:v45 fetchedObjectIDsSortedByLocalIdentifiers:?];

      sub_1B3710718(0, &unk_1EB855530);
      v12 = sub_1B3C9C788();

      goto LABEL_43;
    default:
      goto LABEL_51;
  }

  while (v11 != v3)
  {
    v13 = (a2 + 32 + 16 * v11);
    v15 = *v13;
    v14 = v13[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851C50);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B3CF6CE0;
    *(v16 + 32) = v15;
    *(v16 + 40) = v14;

    v17 = sub_1B3C9C778();

    v18 = [v51 fetchAssetCollectionsWithLocalIdentifiers:v17 options:v5];

    sub_1B370BBD8(a2);
    v19 = sub_1B370BEEC();
    v54 = v18;
    v20 = [v18 px:v19 fetchedObjectIDsSortedByLocalIdentifiers:?];

    sub_1B3710718(0, &unk_1EB855530);
    v21 = sub_1B3C9C788();

    if (v21 >> 62)
    {
      v22 = sub_1B3C9D2C8();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v12 >> 62;
    if (v12 >> 62)
    {
      v24 = sub_1B3C9D2C8();
    }

    else
    {
      v24 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v56 = v22;
    v25 = __OFADD__(v24, v22);
    v26 = v24 + v22;
    if (v25)
    {
      goto LABEL_45;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v23)
      {
        goto LABEL_21;
      }

LABEL_20:
      sub_1B3C9D2C8();
      goto LABEL_21;
    }

    if (v23)
    {
      goto LABEL_20;
    }

    v27 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v26 <= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v55 = v12;
      goto LABEL_22;
    }

LABEL_21:
    v55 = sub_1B3C9D3C8();
    v27 = v55 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
    v28 = *(v27 + 16);
    v29 = (*(v27 + 24) >> 1) - v28;
    v30 = v27 + 8 * v28;
    v53 = v27;
    if (v21 >> 62)
    {
      v32 = sub_1B3C9D2C8();
      if (v32)
      {
        v33 = v32;
        v34 = sub_1B3C9D2C8();
        if (v29 < v34)
        {
          goto LABEL_49;
        }

        if (v33 < 1)
        {
          goto LABEL_50;
        }

        v49 = v34;
        v35 = v30 + 32;
        sub_1B3882544();
        for (i = 0; i != v33; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855558);
          v37 = sub_1B37ECD30(v57, i, v21);
          v39 = *v38;
          v37(v57, 0);
          *(v35 + 8 * i) = v39;
        }

        v5 = v48;
        v31 = v49;
LABEL_32:

        v12 = v55;
        if (v31 < v56)
        {
          goto LABEL_46;
        }

        if (v31 > 0)
        {
          v40 = *(v53 + 16);
          v25 = __OFADD__(v40, v31);
          v41 = v40 + v31;
          if (v25)
          {
            goto LABEL_47;
          }

          *(v53 + 16) = v41;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v31 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
        if (v29 < v31)
        {
          goto LABEL_48;
        }

        swift_arrayInitWithCopy();
        goto LABEL_32;
      }
    }

    v12 = v55;
    if (v56 > 0)
    {
      goto LABEL_46;
    }

LABEL_37:
    ++v11;

    v3 = v50;
    if (v11 == v50)
    {
LABEL_43:
      sub_1B3710718(0, &unk_1EB850160);
      sub_1B370BA40(v12);

      v47 = sub_1B370BEEC();

      return v47;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = sub_1B3C9D4C8();
  __break(1u);
  return result;
}

uint64_t sub_1B38824D4(void *a1)
{
  v2 = [a1 localizedTitle];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B3C9C5E8();

  return v3;
}

unint64_t sub_1B3882544()
{
  result = qword_1EB855560;
  if (!qword_1EB855560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB855558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855560);
  }

  return result;
}

unint64_t sub_1B38825AC()
{
  result = qword_1EB8578D0;
  if (!qword_1EB8578D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8578D0);
  }

  return result;
}

unint64_t sub_1B3882604()
{
  result = qword_1EB8578D8;
  if (!qword_1EB8578D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8578D8);
  }

  return result;
}

uint64_t sub_1B3882674()
{
  v0 = sub_1B3C97F38();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C98188();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B3C9C598();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1B3C97F48();
  __swift_allocate_value_buffer(v6, qword_1EB878EF0);
  __swift_project_value_buffer(v6, qword_1EB878EF0);
  sub_1B3C9C538();
  sub_1B3C98178();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1B3C97F58();
}

uint64_t sub_1B3882860()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8578F8);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857900);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B3883A28();
  sub_1B3C97CA8();
  sub_1B3C97C98();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857908);
  sub_1B3C97C88();

  sub_1B3C97C98();
  sub_1B3C97CB8();
  return sub_1B3C97C78();
}

uint64_t sub_1B3882A04()
{
  OUTLINED_FUNCTION_0_0();
  v0[3] = v1;
  v0[4] = v2;
  sub_1B3C9C888();
  v0[5] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v0[6] = v4;
  v0[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B3882A98, v4, v3);
}

uint64_t sub_1B3882A98()
{
  OUTLINED_FUNCTION_0_0();
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[8] = v1;
  sub_1B3883A28();
  *v1 = v0;
  v1[1] = sub_1B3713898;
  v2 = v0[3];

  return MEMORY[0x1EEE2CA70](v2, 0, 0, 0, 0, 0, 1, &unk_1B3D09828);
}

uint64_t sub_1B3882B80(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1B3C9C598();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_1B3C97F48();
  v2[8] = swift_task_alloc();
  v4 = sub_1B3C97AE8();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  v2[12] = swift_task_alloc();
  sub_1B3C9C888();
  v2[13] = sub_1B3C9C878();
  v6 = sub_1B3C9C848();
  v2[14] = v6;
  v2[15] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B3882D34, v6, v5);
}

uint64_t sub_1B3882D34()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 96);
  v2 = sub_1B3C98638();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  sub_1B3C97B28();
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_1B3713CCC;

  return sub_1B3882E00();
}

uint64_t sub_1B3882E00()
{
  OUTLINED_FUNCTION_0_0();
  v0[3] = v1;
  v0[2] = v2;
  v3 = sub_1B3C9A558();
  v0[4] = v3;
  v0[5] = *(v3 - 8);
  v0[6] = swift_task_alloc();
  sub_1B3C9C888();
  v0[7] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v0[8] = v5;
  v0[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B3882EF4, v5, v4);
}

uint64_t sub_1B3882EF4()
{
  v17 = v0;
  v1 = sub_1B3C98D08();
  v3 = v2;
  sub_1B3C987F8();

  v4 = sub_1B3C9A538();
  v5 = sub_1B3C9CAE8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];
  if (v6)
  {
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 134218242;
    *(v11 + 4) = v10;
    *(v11 + 12) = 2082;
    v13 = sub_1B3749364(v1, v3, &v16);

    *(v11 + 14) = v13;
    _os_log_impl(&dword_1B36F3000, v4, v5, "Parameters: { value: %f, asset: %{public}s }", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x1B8C6EC70](v12, -1, -1);
    MEMORY[0x1B8C6EC70](v11, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);
  v0[10] = type metadata accessor for PXEditAppDependencyManager();
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_1B38830E8;

  return sub_1B37BD42C();
}

uint64_t sub_1B38830E8()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 96) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_1B3714674;
  }

  else
  {
    v7 = sub_1B3883218;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B3883218()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v2 = swift_allocObject();
  v0[13] = v2;
  *(v2 + 16) = xmmword_1B3CF9810;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = objc_allocWithZone(MEMORY[0x1E69C4250]);
  *(v2 + 32) = sub_1B388397C(sub_1B3883950, v3);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1B371450C;

  return sub_1B37BD81C();
}

uint64_t sub_1B3883340()
{
  sub_1B3C97CC8();
  OUTLINED_FUNCTION_0();
  v38 = v1;
  v39 = v0;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v37 = v3 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513E8);
  OUTLINED_FUNCTION_0();
  v35 = v5;
  v36 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  v34 = v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0);
  OUTLINED_FUNCTION_8_0(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  v33 = v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  OUTLINED_FUNCTION_8_0(v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  v32 = v31 - v13;
  v14 = sub_1B3C97F38();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v20 = v19 - v18;
  v21 = sub_1B3C98188();
  v22 = OUTLINED_FUNCTION_8_0(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  v23 = sub_1B3C9C598();
  v24 = OUTLINED_FUNCTION_8_0(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  v25 = sub_1B3C97F48();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_8();
  v31[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851400);
  sub_1B3C9C538();
  sub_1B3C98178();
  v26 = *MEMORY[0x1E6968DF0];
  v27 = *(v16 + 104);
  v27(v20, v26, v14);
  OUTLINED_FUNCTION_6_4();
  sub_1B3C9C538();
  sub_1B3C98178();
  v27(v20, v26, v14);
  v28 = v32;
  OUTLINED_FUNCTION_6_4();
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v25);
  v40 = 0;
  v41 = 1;
  v29 = sub_1B3C97AE8();
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v29);
  (*(v35 + 104))(v34, *MEMORY[0x1E695A178], v36);
  (*(v38 + 104))(v37, *MEMORY[0x1E695A500], v39);
  return sub_1B3C97BB8();
}

uint64_t sub_1B3883790@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB8500D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B3C97F48();
  v3 = __swift_project_value_buffer(v2, qword_1EB878EF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B388383C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B3714CE0;

  return sub_1B3882A04();
}

uint64_t sub_1B38838DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3883340();
  *a1 = result;
  return result;
}

uint64_t sub_1B3883904(uint64_t a1)
{
  v2 = sub_1B3883A28();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

double sub_1B3883950()
{
  result = *(v0 + 16) / 200.0;
  if (result <= -0.5)
  {
    result = -0.5;
  }

  if (result > 0.5)
  {
    return 0.5;
  }

  return result;
}

id sub_1B388397C(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B37F19D0;
  v6[3] = &block_descriptor_55;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithModifier_];
  _Block_release(v3);

  return v4;
}

unint64_t sub_1B3883A28()
{
  result = qword_1EB8578F0;
  if (!qword_1EB8578F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8578F0);
  }

  return result;
}

uint64_t sub_1B3883A7C()
{
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B3714CE0;

  return sub_1B3882B80(v3, v0);
}

char *sub_1B3883B18(void *a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for StoryMusicEditorSheetView(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a2;
  v38 = *(a2 + 8);
  v11 = *(a2 + 3);
  v12 = a2[32];
  v13 = *(a2 + 5);
  *(v3 + qword_1EB857928 + 8) = 0;
  swift_unknownObjectWeakInit();
  v42[0] = v10;
  *&v42[8] = v38;
  v43 = v11;
  v44 = v12;
  v45 = v13;
  v14 = objc_allocWithZone(type metadata accessor for StoryMusicEditorViewModel());
  v15 = a1;
  v16 = sub_1B3899610(v15, v42);
  *(v3 + qword_1EB857910) = v16;
  sub_1B38856AC(&qword_1EB854A60, type metadata accessor for StoryMusicEditorViewModel);
  v17 = v16;
  *v9 = sub_1B3C9AA58();
  v9[1] = v18;
  v19 = *(v7 + 28);
  *(v9 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851700);
  swift_storeEnumTagMultiPayload();
  v20 = v9 + *(v7 + 32);
  v39 = 0;
  v40 = 0;
  v41 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853510);
  sub_1B3C9BC88();
  v21 = v42[16];
  v22 = v43;
  *v20 = *v42;
  v20[16] = v21;
  *(v20 + 3) = v22;
  v23 = sub_1B3C98DF8();

  v24 = qword_1EB857910;
  v25 = *&v23[qword_1EB857910];
  OUTLINED_FUNCTION_20();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = &v25[OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_selectionHandler];
  v28 = *&v25[OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_selectionHandler];
  *v27 = sub_1B3885424;
  v27[1] = v26;
  v29 = v23;
  v30 = v25;

  sub_1B36F9DA0(v28);

  v31 = *&v23[v24];
  OUTLINED_FUNCTION_20();
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = &v31[OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_cancelHandler];
  v34 = *&v31[OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_cancelHandler];
  *v33 = sub_1B388542C;
  v33[1] = v32;
  v35 = v31;

  sub_1B36F9DA0(v34);

  v36 = *&v23[v24];

  *&v36[OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_actionPerformerDelegate + 8] = &off_1F2AC1050;
  swift_unknownObjectWeakAssign();

  return v29;
}

void sub_1B3883E44(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + qword_1EB857928;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v3, a1, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1B3883EF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + qword_1EB857928;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 16))(v1, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1B3883FA4(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for StoryMusicEditorViewController();
  objc_msgSendSuper2(&v7, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 presentationController];
  v4 = [v3 delegate];

  if (v4)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = [v1 presentationController];
    if (v5)
    {
      v6 = v5;
      [v5 setDelegate_];
    }
  }
}

uint64_t type metadata accessor for StoryMusicEditorViewController()
{
  result = qword_1EB857930;
  if (!qword_1EB857930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B38840B8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1B3883FA4(a3);
}

void sub_1B388410C()
{
  v1 = *(*(v0 + qword_1EB857910) + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_storyModel);
  v4[4] = sub_1B38841D4;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1B386A148;
  v4[3] = &block_descriptor_56;
  v2 = _Block_copy(v4);
  v3 = v1;
  [v3 performChanges_];
  _Block_release(v2);
}

uint64_t sub_1B3884214()
{
  v1 = v0 + qword_1EB857928;

  return sub_1B370A71C(v1);
}

id StoryMusicEditorViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryMusicEditorViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B388428C(uint64_t a1)
{
  v2 = a1 + qword_1EB857928;

  return sub_1B370A71C(v2);
}

void sub_1B38842D8(uint64_t a1)
{
  sub_1B388410C();
  if (a1 == 2)
  {

    sub_1B3884330();
  }

  else
  {

    sub_1B3884434();
  }
}

void sub_1B3884330()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69705F8]) initWithMediaTypes_];
  [v1 setShowsCatalogContent_];
  [v1 setAllowsPickingMultipleItems_];
  [v1 setShowsCloudItems_];
  [v1 setDelegate_];
  v2 = [v1 configuration];
  [v2 setAutomaticallyDrillsToLibrary_];
  [v2 setAlwaysShowSearchBarInLibrary_];
  [v0 presentViewController:v1 animated:1 completion:0];
}

void sub_1B3884434()
{
  v1 = v0;
  v2 = *&v0[qword_1EB857910];
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_storyViewModel;
  v4 = [*(v2 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_storyViewModel) mainConfiguration];
  v5 = [v4 appleMusicStatusProvider];

  v6 = sub_1B3C9C5A8();
  v7 = PULocalizedString(v6);

  v8 = sub_1B3C9C5E8();
  v10 = v9;

  v11 = *(v2 + v3);
  v15[0] = 0;
  v16 = v8;
  v17 = v10;
  v18 = 0;
  v19 = 1;
  v20 = v5;
  v12 = objc_allocWithZone(type metadata accessor for StoryMusicEditorViewController());
  v13 = v11;

  swift_unknownObjectRetain();
  v14 = sub_1B3883B18(v13, v15);
  *&v14[qword_1EB857928 + 8] = &off_1F2AC1078;
  swift_unknownObjectWeakAssign();
  [v14 setModalPresentationStyle_];
  [v1 presentViewController:v14 animated:1 completion:0];
  swift_unknownObjectRelease();
}

void sub_1B38845D4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_1EB857910);
  v6 = OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_storyViewModel;
  v7 = [*(v5 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_storyViewModel) actionPerformer];
  if (v7)
  {
    [v7 presentAppleMusicPreviewForSelectedSong:a1 curatedSongs:a2];

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B3C9CAC8();
    v8 = [*(v5 + v6) log];
    if (v8)
    {
      v9 = v8;
      sub_1B3C9A438();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1B3884720(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  StoryMusicEditorViewController.presentationControllerDidDismiss(_:)(v5);
}

Swift::Void __swiftcall StoryMusicEditorViewController.mediaPicker(_:didPickMediaItems:)(MPMediaPickerController *_, MPMediaItemCollection didPickMediaItems)
{
  v3 = [(objc_class *)didPickMediaItems.super.super.isa items];
  sub_1B3710718(0, &unk_1EB857918);
  v4 = sub_1B3C9C788();

  if (sub_1B3711890(v4))
  {
    sub_1B37ED0BC(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1B8C6A930](0, v4);
    }

    else
    {
      v5 = *(v4 + 32);
    }

    v6 = v5;

    if ([v6 valueForProperty_])
    {
      sub_1B3C9D1E8();
      swift_unknownObjectRelease();
      sub_1B36FA490(&v22);
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      sub_1B36FA490(&v22);
      v7 = [v6 playbackStoreID];
      sub_1B3C9C5E8();

      v8 = sub_1B3C9C678();

      if (v8 >= 2)
      {
        v9 = [v6 playbackStoreID];
        v10 = sub_1B3C9C5E8();
        v12 = v11;

        sub_1B3884AD0(v10, v12, _);

LABEL_19:

        return;
      }
    }

    if ([v6 valueForProperty_])
    {
      sub_1B3C9D1E8();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v22 = v20;
    v23 = v21;
    if (*(&v21 + 1))
    {
      if (swift_dynamicCast())
      {
        *&v22 = v19;
        v13 = sub_1B3C9D678();
        v15 = v14;
        OUTLINED_FUNCTION_20();
        v16 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v17 = swift_allocObject();
        *(v17 + 16) = v16;
        *(v17 + 24) = _;

        v18 = _;
        sub_1B389D240(v13, v15, sub_1B38853A4, v17);

        goto LABEL_19;
      }
    }

    else
    {
      sub_1B36FA490(&v22);
    }

    sub_1B3884AD0(0, 0, _);
    goto LABEL_19;
  }
}

void sub_1B3884AD0(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2)
  {
    sub_1B389D38C(a1, a2);
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a2 == 0;
  v7[4] = sub_1B38856F4;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1B370C014;
  v7[3] = &block_descriptor_20_2;
  v6 = _Block_copy(v7);

  [a3 dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
}

uint64_t sub_1B3884BC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v10 = sub_1B3C9C118();
  v25 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1B3C9C168();
  v13 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3710718(0, &qword_1EB84FE60);
  v23 = sub_1B3C9CC88();
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a3;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a5;
  aBlock[4] = sub_1B388569C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_14_2;
  v17 = _Block_copy(aBlock);

  v18 = a3;

  v19 = a5;

  sub_1B3C9C138();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B38856AC(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B37254F8();
  sub_1B3C9D278();
  v20 = v23;
  MEMORY[0x1B8C6A210](0, v15, v12, v17);
  _Block_release(v17);

  (*(v25 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v24);
}

void sub_1B3884EC0(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a2)
    {
      v11 = *(Strong + qword_1EB857910);
      v12 = a2;
      v13 = a2;
      v14 = v11;
      sub_1B389DE70(a2);
    }

    else
    {
      sub_1B3884AD0(a3, a4, a5);
    }
  }
}

void sub_1B3884F90(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  StoryMusicEditorViewController.mediaPicker(_:didPickMediaItems:)(v6, v7);
}

uint64_t sub_1B388500C(uint64_t result)
{
  if (result)
  {
    v1 = objc_opt_self();
    v3[4] = sub_1B3883B14;
    v3[5] = 0;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 1107296256;
    v3[2] = sub_1B37E137C;
    v3[3] = &block_descriptor_23_1;
    v2 = _Block_copy(v3);

    _Block_release(v2);
    result = swift_isEscapingClosureAtFileLocation();
    if (result)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1B3885104(void *a1)
{
  v2 = sub_1B3C9C5A8();
  v3 = PULocalizedString(v2);

  v4 = sub_1B3C9C5E8();
  v6 = v5;

  sub_1B3813F04(v4, v6, a1);
  v7 = sub_1B3C9C5A8();
  v8 = PULocalizedString(v7);

  v9 = sub_1B3C9C5E8();
  v11 = v10;

  sub_1B3813F10(v9, v11, a1);
}

void sub_1B3885208(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  StoryMusicEditorViewController.mediaPickerDidCancel(_:)(v4);
}

id sub_1B3885260(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = *(v3 + qword_1EB857910);
      swift_unknownObjectRetain();
      sub_1B388543C(v6, v7);
      sub_1B389A13C(v6);
      swift_unknownObjectRelease();
    }
  }

  return sub_1B3885304(a1);
}

id sub_1B3885304(void *a1)
{
  result = [a1 isBeingDismissed];
  if ((result & 1) == 0)
  {

    return [a1 dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

id sub_1B3885364(void *a1)
{
  sub_1B388410C();

  return sub_1B3885304(a1);
}

void sub_1B388543C(void *a1, uint64_t a2)
{
  v4 = sub_1B389C9D8();
  v5 = sub_1B3711890(v4);

  for (i = 0; v5 != i; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B8C6A930](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v7 = *(v4 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v8 = [v7 isEqual_];
    swift_unknownObjectRelease();
    if (v8)
    {
      swift_bridgeObjectRelease_n();
      return;
    }
  }

  sub_1B37EBC94(0, v4);
  if (sub_1B3711890(v4) < 0)
  {
    goto LABEL_26;
  }

  v9 = sub_1B3711890(v4);
  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
LABEL_27:
    __break(1u);
    return;
  }

  v11 = a1;
  sub_1B37ED0C0(v10, 1);
  sub_1B37EBF4C(0, 0, 1, v11);
  sub_1B389CAC4(v4);
  v12 = *(a2 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_songCollectionLoadingState);
  if ((v12 - 1) >= 2)
  {
    if (v12)
    {
      if (v12 == 3)
      {
        sub_1B389CC2C();
      }

      else
      {
        v15 = *(a2 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_songCollectionLoadingState);
        sub_1B3725570(v12);
        v13 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8518D0);
        sub_1B3710718(0, &unk_1EB855710);
        if (swift_dynamicCast())
        {
          sub_1B372555C(v12);
        }

        else
        {
          sub_1B372555C(v12);
        }
      }
    }

    else
    {

      sub_1B372555C(0);
    }
  }
}

uint64_t sub_1B38856AC(unint64_t *a1, void (*a2)(uint64_t))
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

id StoryThumbnailActionPerformer.init(model:)(void *a1)
{
  v3 = &v1[OBJC_IVAR___PUStoryThumbnailActionPerformer_presentPlayerAction];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR___PUStoryThumbnailActionPerformer_presentDetailsViewAction];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR___PUStoryThumbnailActionPerformer_exportHelper] = 0;
  swift_unknownObjectUnownedInit();
  v5 = [a1 currentAssetCollection];
  swift_unknownObjectUnownedInit();
  swift_unknownObjectRelease();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for StoryThumbnailActionPerformer();
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

uint64_t sub_1B3885960@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_1B38858A0();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1B38879CC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1B38859D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1B38879B8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1B370A6FC(v1);
  return sub_1B3885954(v4, v3);
}

id sub_1B3885AD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = a3();
  if (v5)
  {
    v9[4] = v5;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1B370C014;
    v9[3] = a4;
    v7 = _Block_copy(v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1B3885B84(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  v3 = *v2;
  sub_1B370A6FC(*v2);
  return v3;
}

uint64_t sub_1B3885C8C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  *v6 = a1;
  v6[1] = a2;
  return sub_1B36F9DA0(v7);
}

uint64_t sub_1B3885CE8@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_1B3885B78();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1B375324C;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1B3885D58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1B3887904;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1B370A6FC(v1);
  return sub_1B3885C80(v4, v3);
}

uint64_t sub_1B3885E38(char a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1B3C9C5E8();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  v11 = v3;
  sub_1B370A6FC(a2);
  sub_1B3886E68(v7, v9, sub_1B388602C, v10);
}

void sub_1B3885F18(char a1, uint64_t a2, char a3, void (*a4)(void))
{
  if (a1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v8 = swift_allocObject();
    *(v8 + 16) = a3 & 1;
    v10[4] = sub_1B386796C;
    v10[5] = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1B386A148;
    v10[3] = &block_descriptor_63_0;
    v9 = _Block_copy(v10);

    [Strong performChanges_];
    _Block_release(v9);
  }

  if (a4)
  {
    a4(a1 & 1);
  }
}

uint64_t sub_1B38860F8()
{
  v1 = v0;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = [Strong configuration];

  v4 = [v3 presentingViewController];
  v5 = v4;
  swift_unknownObjectRelease();
  if (v5)
  {
    swift_unknownObjectUnownedLoadStrong();
    type metadata accessor for StoryExportHelper();
    swift_allocObject();
    v6 = v5;
    OUTLINED_FUNCTION_14();
    *(v1 + OBJC_IVAR___PUStoryThumbnailActionPerformer_exportHelper) = sub_1B37DCC88(v7, v8, v9, v10);

    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1B37DCCFC(0, sub_1B3887244, v11);
  }

  else
  {
    sub_1B3C9CAC8();
    if (qword_1EB84FFB8 != -1)
    {
      OUTLINED_FUNCTION_3_39();
    }

    return sub_1B3C9A438();
  }
}

char *sub_1B38862D0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *&result[OBJC_IVAR___PUStoryThumbnailActionPerformer_exportHelper] = 0;
  }

  return result;
}

uint64_t sub_1B38863DC()
{
  sub_1B3C9C5E8();
  OUTLINED_FUNCTION_14();
  sub_1B3886E68(v0, v1, v2, v3);
}

uint64_t sub_1B3886468()
{
  sub_1B3C9C5E8();
  OUTLINED_FUNCTION_14();
  sub_1B3886E68(v0, v1, v2, v3);
}

void sub_1B3886510()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = [Strong configuration];

  v3 = [v2 presentingViewController];
  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v6 = v4;
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v6 = 0;
LABEL_6:
  v5 = v0;
  sub_1B38867F8(v6, v5, v5);
}

void sub_1B38865E8(__int16 a1, unint64_t a2, __int16 a3)
{
  v12 = [objc_allocWithZone(MEMORY[0x1E69C3940]) init];
  v13 = v12;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = [Strong configuration];

  v8 = [v7 containerTapToRadarDiagnosticsProvider];
  if (v8)
  {
    [v12 addDiagnosticProvider_];
    swift_unknownObjectRelease();
  }

  if (sub_1B3887420())
  {
    sub_1B3710718(0, &unk_1EB8579C8);
    swift_getObjectType();
    v9 = swift_unknownObjectRetain();
    v10 = sub_1B38875A4(v9);
    sub_1B3867960(0xD00000000000001CLL, 0x80000001B3D1F160, v10);
    [v10 setIsPrivateDataAllowed_];
    [v12 addDiagnosticProvider_];
    swift_unknownObjectRelease();
  }

  v11 = swift_unknownObjectUnownedLoadStrong();
  sub_1B37A0A90(&v13, a1 & 0x101, a2, a3 & 0x101, v11);
  swift_unknownObjectRelease();
  PXFileRadarWithConfiguration();
}

void sub_1B38867F8(void *a1, uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  sub_1B3710718(0, &qword_1EB84F200);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = a3;
  v21 = [ObjCClassFromMetadata sharedInstance];
  if (swift_unknownObjectUnownedLoadStrong())
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 isGenerative];
    }

    else
    {
      v9 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v21 includeImagesInVisualDiagnosticsForTTR];
  v11 = [v21 includeDeviceDiagnosticsForTTR];
  if (a1)
  {
    if (v11)
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }

    v13 = a1;
    sub_1B379E70C(v12 | v10, 0, v9, &v28);
    v14 = v28;
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = v21;
    v15[4] = sub_1B388792C;
    v15[5] = v5;
    v16 = v13;
    v17 = v21;

    sub_1B36F9DA0(v14);
    *&v23[0] = sub_1B3887940;
    *(&v23[0] + 1) = v15;
    v23[2] = v30;
    v23[3] = v31;
    v23[1] = v29;
    v24 = v23[0];
    v25 = v29;
    v26 = v30;
    v27 = v31;
    v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8572F0));
    sub_1B37A1810(v23, v22);
    v19 = sub_1B3C98DF8();
    [v16 presentViewController:v19 animated:1 completion:0];

    *&v24 = sub_1B3887940;
    *(&v24 + 1) = v15;
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1B3869A3C(&v24);
  }

  else
  {
    if (v11)
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    sub_1B38865E8(v20 | v10, 0, v9);
  }
}

void sub_1B3886AC8(char a1, __int16 a2, uint64_t a3, __int16 a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a6;
  *(v16 + 32) = a2 & 1;
  *(v16 + 33) = HIBYTE(a2) & 1;
  *(v16 + 40) = a3;
  *(v16 + 48) = a4 & 1;
  *(v16 + 49) = HIBYTE(a4) & 1;
  *(v16 + 56) = a7;
  *(v16 + 64) = a8;
  v19[4] = sub_1B3887958;
  v19[5] = v16;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1B370C014;
  v19[3] = &block_descriptor_51_0;
  v17 = _Block_copy(v19);
  v18 = a6;

  [a5 dismissViewControllerAnimated:1 completion:v17];
  _Block_release(v17);
}

uint64_t sub_1B3886C04(uint64_t result, id a2, unsigned int a3, uint64_t a4, __int16 a5, uint64_t (*a6)(void, uint64_t, void))
{
  if (result)
  {
    v9 = a3;
    v11 = (a3 >> 8) & 1;
    [a2 setIncludeImagesInVisualDiagnosticsForTTR_];
    [a2 setIncludeDeviceDiagnosticsForTTR_];
    return a6(v9 & 0x101, a4, a5 & 0x101);
  }

  return result;
}

void sub_1B3886C9C()
{
  if (!sub_1B3887420())
  {
    return;
  }

  sub_1B3710718(0, &unk_1EB8579C8);
  swift_getObjectType();
  v0 = swift_unknownObjectRetain();
  v1 = sub_1B38875A4(v0);
  sub_1B3867960(0xD00000000000001CLL, 0x80000001B3D1F160, v1);
  [v1 setIsPrivateDataAllowed_];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = [Strong configuration];

  v4 = [v3 presentingViewController];
  if (!v4)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v5 = 0;
  }

  v6 = v5;
  [objc_opt_self() showVisualDiagnosticsWithConfiguration:v1 fromViewController:v5 completionHandler:0];
  swift_unknownObjectRelease();
}

void sub_1B3886E68(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong currentAssetCollection];

  sub_1B3710718(0, &qword_1EB8571A8);
  swift_unknownObjectRetain();
  v8 = sub_1B385FEA4();
  v9 = swift_unknownObjectUnownedLoadStrong();
  v10 = v8;
  v11 = [v9 configuration];

  v12 = [v11 assetCollectionActionPerformerDelegate];
  [v10 setPerformerDelegate_];
  swift_unknownObjectRelease();

  v13 = sub_1B3C9C5A8();
  v14 = [v10 actionPerformerForActionType_];

  if (v14)
  {
    v15 = swift_unknownObjectUnownedLoadStrong();
    v16 = v14;
    v17 = [v15 configuration];

    v18 = [v17 presentingViewController];
    v19 = PXPresentationEnvironmentForSender();
    swift_unknownObjectRelease();
    [v16 setPresentationEnvironment_];

    swift_unknownObjectRelease();
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = a2;
    v20[4] = a3;
    v20[5] = a4;
    aBlock[4] = sub_1B3887998;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B3814B94;
    aBlock[3] = &block_descriptor_57_0;
    v21 = _Block_copy(aBlock);

    sub_1B370A6FC(a3);

    [v16 performActionWithCompletionHandler_];
    _Block_release(v21);
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = sub_1B3C9CAC8();
    if (qword_1EB84FFB8 != -1)
    {
      OUTLINED_FUNCTION_3_39();
    }

    v23 = qword_1EB878C60;
    if (os_log_type_enabled(qword_1EB878C60, v22))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1B3749364(a1, a2, aBlock);
      _os_log_impl(&dword_1B36F3000, v23, v22, "No action performer could be obtained for type %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x1B8C6EC70](v25, -1, -1);
      MEMORY[0x1B8C6EC70](v24, -1, -1);
    }

    if (a3)
    {
      a3(0);
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1B388724C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if ((result & 1) == 0)
  {
    v10 = sub_1B3C9CAC8();
    if (qword_1EB84FFB8 != -1)
    {
      swift_once();
    }

    v11 = qword_1EB878C60;
    result = os_log_type_enabled(qword_1EB878C60, v10);
    if (result)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_1B3749364(a3, a4, &v20);
      *(v12 + 12) = 2080;
      if (a2)
      {
        v14 = sub_1B3C97F18();
        v15 = [v14 debugDescription];

        v16 = sub_1B3C9C5E8();
        v18 = v17;
      }

      else
      {
        v18 = 0xE100000000000000;
        v16 = 63;
      }

      v19 = sub_1B3749364(v16, v18, &v20);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_1B36F3000, v11, v10, "failed to perform action %s: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C6EC70](v13, -1, -1);
      result = MEMORY[0x1B8C6EC70](v12, -1, -1);
    }
  }

  if (a5)
  {
    return a5(v6 & 1);
  }

  return result;
}

id sub_1B3887420()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [objc_allocWithZone(MEMORY[0x1E69C3AF8]) initWithModel_];

  return v1;
}

id StoryThumbnailActionPerformer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StoryThumbnailActionPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryThumbnailActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B38875A4(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRootProvider_];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1B3887958()
{
  if (*(v0 + 33))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 49))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1B3886C04(*(v0 + 16), *(v0 + 24), v1 | *(v0 + 32), *(v0 + 40), v2 | *(v0 + 48), *(v0 + 56));
}

uint64_t sub_1B38879E0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PUWallpaperShuffleConfigurationViewModel(0);
  OUTLINED_FUNCTION_10_26();
  sub_1B3891DCC(v2, v3);
  OUTLINED_FUNCTION_98_0();
  v4 = sub_1B3C9AA58();
  v6 = v5;
  sub_1B3C9BC88();
  sub_1B3C9BC88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857A38);
  result = sub_1B3C9BC88();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0x4038000000000000;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  return result;
}

void sub_1B3887B34()
{
  v0 = sub_1B3C9C5A8();
  v1 = PULocalizedString(v0);

  v2 = sub_1B3C9C5E8();
  v4 = v3;

  qword_1EB878F18 = v2;
  unk_1EB878F20 = v4;
}

void sub_1B3887BAC()
{
  v0 = sub_1B3C9C5A8();
  v1 = PULocalizedString(v0);

  v2 = sub_1B3C9C5E8();
  v4 = v3;

  qword_1EB878F28 = v2;
  unk_1EB878F30 = v4;
}

void sub_1B3887C24()
{
  v0 = sub_1B3C9C5A8();
  v1 = PULocalizedString(v0);

  v2 = sub_1B3C9C5E8();
  v4 = v3;

  qword_1EB878F38 = v2;
  unk_1EB878F40 = v4;
}

BOOL sub_1B3887CB0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1B3887C9C(v2 | *a1, v3 | *a2);
}

uint64_t sub_1B3887CE0@<X0>(uint64_t a1@<X8>)
{
  v3 = swift_allocObject();
  memcpy((v3 + 16), v1, 0x48uLL);
  sub_1B388CC00(v1, v5);
  result = sub_1B37C3154();
  *a1 = sub_1B388CBF8;
  *(a1 + 8) = v3;
  *(a1 + 16) = (result & 1) == 0;
  return result;
}

uint64_t sub_1B3887D70@<X0>(const void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1B3C9B4D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857A40);
  sub_1B388CC40();
  sub_1B3C9A7A8();
  v4 = swift_allocObject();
  memcpy((v4 + 16), a1, 0x48uLL);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857A90) + 36));
  *v5 = sub_1B388CE3C;
  v5[1] = v4;
  v5[2] = 0;
  v5[3] = 0;
  return sub_1B388CC00(a1, v7);
}

uint64_t sub_1B3887E64@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857A68);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857A58);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857A40);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29[-v14];
  sub_1B3C9A988();
  v17 = v16;
  *v9 = sub_1B3C9AFF8();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857A98);
  sub_1B38881D0(*&a2, a1, &v9[*(v18 + 44)]);
  v19 = sub_1B3C9B4F8();
  sub_1B3C9A738();
  v20 = &v9[*(v7 + 44)];
  *v20 = v19;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  sub_1B3C9A988();
  sub_1B3C9C008();
  sub_1B3C9AB98();
  sub_1B386D570(v9, v12, &qword_1EB857A68);
  memcpy(&v12[*(v10 + 36)], __src, 0x70uLL);
  v25 = swift_allocObject();
  memcpy((v25 + 16), a2, 0x48uLL);
  *(v25 + 88) = v17;
  v26 = swift_allocObject();
  memcpy((v26 + 16), a2, 0x48uLL);
  sub_1B386D570(v12, v15, &qword_1EB857A58);
  v27 = &v15[*(v13 + 36)];
  *v27 = sub_1B388CE54;
  v27[1] = v25;
  v27[2] = sub_1B388CE60;
  v27[3] = v26;
  sub_1B386D570(v15, a3, &qword_1EB857A40);
  sub_1B388CC00(a2, v30);
  return sub_1B388CC00(a2, v30);
}

uint64_t sub_1B38881D0@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v104 = a2;
  v136 = a3;
  v137 = a1;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853378);
  MEMORY[0x1EEE9AC00](v131);
  v135 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v133 = &v98 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853370);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v134 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v132 = &v98 - v9;
  v10 = sub_1B3C9BB38();
  v100 = *(v10 - 8);
  v101 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB8500E0 != -1)
  {
    swift_once();
  }

  *v148 = xmmword_1EB878F18;
  v12 = sub_1B371B158();

  v116 = v12;
  v13 = sub_1B3C9B7A8();
  v15 = v14;
  v17 = v16;
  sub_1B3C9B5F8();
  v18 = sub_1B3C9B778();
  v20 = v19;
  v22 = v21;

  sub_1B371B148(v13, v15, v17 & 1);

  sub_1B3C9B628();
  v23 = sub_1B3C9B738();
  v129 = v24;
  v130 = v23;
  LOBYTE(v13) = v25;
  v128 = v26;
  sub_1B371B148(v18, v20, v22 & 1);

  v127 = sub_1B3C9B518();
  sub_1B3C9A738();
  v125 = v28;
  v126 = v27;
  v123 = v30;
  v124 = v29;
  v121 = v13 & 1;
  LOBYTE(v143[0]) = v13 & 1;
  v146[0] = 0;
  v122 = sub_1B3C9B528();
  sub_1B3C9A738();
  v119 = v32;
  v120 = v31;
  v117 = v34;
  v118 = v33;
  v148[0] = 0;
  v35 = *&v137;
  v149 = *(*&v137 + 40);
  *v148 = *(*&v137 + 40);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852FC8);
  sub_1B3C9BC98();
  if (v143[0])
  {
    v115 = 0;
    v116 = 0;
    KeyPath = 0;
    v114 = 0;
    v108 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v111 = 0;
    v112 = 0;
    v109 = 0;
    v110 = 0;
  }

  else
  {
    v103 = v36;
    if (qword_1EB8500E8 != -1)
    {
      swift_once();
    }

    *v148 = xmmword_1EB878F28;

    v37 = sub_1B3C9B7A8();
    v39 = v38;
    v41 = v40;
    sub_1B3C9B5E8();
    v42 = sub_1B3C9B778();
    v44 = v43;
    v46 = v45;

    sub_1B371B148(v37, v39, v41 & 1);

    sub_1B3C9BBC8();
    v47 = sub_1B3C9B758();
    v115 = v48;
    v116 = v47;
    LOBYTE(v39) = v49;
    v114 = v50;

    sub_1B371B148(v42, v44, v46 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v37) = sub_1B3C9B528();
    sub_1B3C9A738();
    v111 = v52;
    v112 = v51;
    v109 = v54;
    v110 = v53;
    v148[0] = v39 & 1;
    LOBYTE(v143[0]) = 0;
    v107 = v39 & 1;
    v108 = 0x10000;
    v105 = 1;
    v106 = v37;
    v35 = *&v137;
  }

  *(v35 + 8);
  v55 = sub_1B37C291C();
  if (v55)
  {
    sub_1B3C9A988();
    v57 = v56 - (*(v35 + 32) + *(v35 + 32));
    sub_1B37C58F4();
    v60 = *&v58;
    v61 = *&v59;
    if (v58 == 0.0 || v59 == 0.0 || (v58 == *MEMORY[0x1E69BDDB0] ? (v62 = v59 == *(MEMORY[0x1E69BDDB0] + 8)) : (v62 = 0), v62))
    {
      v64 = MEMORY[0x1E69E9C10];
      v65 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
      {
        __os_log_helper_16_0_3_8_0_8_0_8_0(v148, v60, v61, 0x3FF0000000000000);
        _os_log_fault_impl(&dword_1B36F3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", v148, 0x20u);
      }

      v63 = 1.0;
    }

    else
    {
      v63 = fabs(v58 / v59);
    }

    v66 = v57 * 0.2638;
    v137 = v57 * 0.2638 / v63;
    *v148 = *(v35 + 16);

    sub_1B3C9BC98();
    v104 = LOBYTE(v143[0]);
    v67 = sub_1B3C9B528();
    *v148 = v149;
    sub_1B3C9BC98();
    sub_1B3C9A738();
    v102 = v68;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v148[0] = 0;
    v103 = 0;
    (*(v100 + 104))(v99, *MEMORY[0x1E69814D8], v101);
    v101 = sub_1B3C9BBD8();

    v75 = v67;
    v99 = 0x4020000000000000;
    v100 = 0x4014000000000000;
  }

  else
  {
    v100 = 0;
    v101 = 0;
    v99 = 0;
    v103 = 0;
    v104 = 0;
    v75 = 0;
    v137 = 0.0;
    v102 = 0;
    v70 = 0;
    v72 = 0;
    v74 = 0;
    v66 = 0.0;
  }

  v76 = v132;
  sub_1B3888C84();
  v77 = sub_1B37C291C();
  type metadata accessor for PUWallpaperShuffleConfigurationViewModel(0);
  sub_1B3891DCC(qword_1EB851490, type metadata accessor for PUWallpaperShuffleConfigurationViewModel);
  v78 = sub_1B3C9AA58();
  v80 = v79;
  v81 = sub_1B3C9B528();
  sub_1B3C9A738();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v148[0] = 0;
  v90 = swift_allocObject();
  memcpy((v90 + 16), v35, 0x48uLL);
  sub_1B388CC00(v35, v148);
  v91 = v133;
  sub_1B3C9BCE8();
  v92 = sub_1B3C9BB28();
  v93 = swift_getKeyPath();
  v94 = (v91 + *(v131 + 36));
  *v94 = v93;
  v94[1] = v92;
  v143[0] = v130;
  v143[1] = v129;
  LOBYTE(v143[2]) = v121;
  v143[3] = v128;
  LOBYTE(v143[4]) = v127;
  v143[5] = v126;
  v143[6] = v125;
  v143[7] = v124;
  v143[8] = v123;
  LOBYTE(v143[9]) = 0;
  LOBYTE(v143[10]) = v122;
  v143[11] = v120;
  v143[12] = v119;
  v143[13] = v118;
  v143[14] = v117;
  LOBYTE(v143[15]) = 0;
  v142[0] = v116;
  v142[1] = v115;
  v142[2] = v107;
  v142[3] = v114;
  v142[4] = KeyPath;
  v142[5] = v105;
  v142[6] = v106;
  v142[7] = v112;
  v142[8] = v111;
  v142[9] = v110;
  v142[10] = v109;
  BYTE2(v142[11]) = BYTE2(v108);
  LOWORD(v142[11]) = v108;
  v144[0] = v143;
  v144[1] = v142;
  v141[0] = v55;
  *&v141[1] = v66;
  *&v141[2] = v137;
  v141[3] = v104;
  v141[4] = 0;
  v141[5] = v75;
  v141[6] = v102;
  v141[7] = v70;
  v141[8] = v72;
  v141[9] = v74;
  v141[10] = v103;
  v141[11] = v101;
  v141[12] = v99;
  v141[13] = 0;
  v141[14] = v100;
  v144[2] = v141;
  v95 = v134;
  sub_1B37772C8(v76, v134, &qword_1EB853370);
  v139 = 0x402E000000000000;
  v140 = 0;
  v144[3] = v95;
  v144[4] = &v139;
  v138[0] = v78;
  v138[1] = v80;
  v138[2] = v77;
  LOBYTE(v138[3]) = v81;
  v138[4] = v83;
  v138[5] = v85;
  v138[6] = v87;
  v138[7] = v89;
  LOBYTE(v138[8]) = 0;
  v144[5] = v138;
  v96 = v135;
  sub_1B37772C8(v91, v135, &qword_1EB853378);
  v144[6] = v96;
  sub_1B375F22C(v144, v136);
  sub_1B371B36C(v91, &qword_1EB853378);
  sub_1B371B36C(v76, &qword_1EB853370);
  sub_1B371B36C(v96, &qword_1EB853378);
  memcpy(v145, v138, 0x41uLL);
  sub_1B371B36C(v145, &qword_1EB853398);
  sub_1B371B36C(v95, &qword_1EB853370);
  memcpy(v146, v141, sizeof(v146));
  sub_1B371B36C(v146, &qword_1EB853390);
  memcpy(v147, v142, 0x5BuLL);
  sub_1B371B36C(v147, &qword_1EB853388);
  memcpy(v148, v143, 0x79uLL);
  return sub_1B371B36C(v148, &qword_1EB853380);
}

void sub_1B3888C84()
{
  OUTLINED_FUNCTION_39();
  v59 = v1;
  v2 = sub_1B3C9B2B8();
  OUTLINED_FUNCTION_0();
  v56 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857AB0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857AB8);
  OUTLINED_FUNCTION_0();
  v53 = v11;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857AC0);
  OUTLINED_FUNCTION_0();
  v54 = v15;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857AC8);
  OUTLINED_FUNCTION_0();
  v21 = v20;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v22);
  v55 = &v46 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857AD0);
  OUTLINED_FUNCTION_0();
  v52 = v25;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v26);
  v50 = &v46 - v27;
  if (sub_1B37C2DC0())
  {

    v49 = v21;
    MEMORY[0x1EEE9AC00](v28);
    *(&v46 - 2) = v0;
    v48 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857AD8);
    v47 = v19;
    sub_1B370ED54(&qword_1EB857AE0, &qword_1EB857AD8);
    sub_1B3C9B718();
    v29 = v51;
    *&v10[*(v51 + 36)] = 256;
    sub_1B3C9B2A8();
    v30 = sub_1B3890400();
    v31 = MEMORY[0x1E697C750];
    sub_1B3C9BAE8();
    (*(v56 + 8))(v7, v2);
    sub_1B371B36C(v10, &qword_1EB857AB0);
    v60 = v29;
    v61 = v2;
    v62 = v30;
    v63 = v31;
    v32 = OUTLINED_FUNCTION_5_0();
    v33 = v57;
    sub_1B3C9B9D8();
    (*(v53 + 8))(v14, v33);
    v60 = v33;
    v61 = v32;
    v34 = OUTLINED_FUNCTION_5_0();
    v35 = v55;
    v36 = v58;
    sub_1B3C9BA18();
    (*(v54 + 8))(v18, v36);
    sub_1B3C9B508();
    v60 = v36;
    v61 = v34;
    OUTLINED_FUNCTION_5_0();
    v37 = v50;
    v38 = v47;
    sub_1B3C9B898();
    (*(v49 + 8))(v35, v38);
    v39 = v59;
    v40 = v48;
    (*(v52 + 32))(v59, v37, v48);
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v40);
    OUTLINED_FUNCTION_27();
  }

  else
  {
    OUTLINED_FUNCTION_27();

    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  }
}

void sub_1B38891F8(BOOL *a1@<X8>, double a2@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852FC8);
  sub_1B3C9BC98();
  if (v11)
  {
    v4 = 1;
  }

  else
  {
    sub_1B3C9A988();
    v4 = v5 > a2;
  }

  v6 = [objc_opt_self() px_mainScreen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  *a1 = v4;
  a1[1] = v10 < v8;
}

uint64_t sub_1B38892CC(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v8 = *(a2 + 40);
  LOBYTE(v7) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852FC8);
  sub_1B3C9BCA8();
  v8 = *(a2 + 56);
  v9 = *(&v8 + 1);
  v7 = *(a2 + 56);
  sub_1B37772C8(&v9, v6, &qword_1EB857AA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857AA8);
  sub_1B3C9BC98();
  if (v6[0] != 2 && ((v4 ^ v6[0]) & 1) == 0)
  {
    return sub_1B371B36C(&v8, &qword_1EB857AA8);
  }

  v7 = v8;
  v6[0] = v4;
  sub_1B3C9BCA8();
  sub_1B371B36C(&v8, &qword_1EB857AA8);
  result = sub_1B37C291C();
  if (result)
  {
    sub_1B37C59E0();
  }

  return result;
}

uint64_t sub_1B388940C(const void *a1)
{
  v2 = sub_1B3C9C118();
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B3C9C168();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B3C9C188();
  v21 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  sub_1B3739098();
  v19 = sub_1B3C9CC88();
  sub_1B3C9C178();
  sub_1B3C9C1B8();
  v20 = *(v9 + 8);
  v20(v11, v8);
  v15 = swift_allocObject();
  memcpy((v15 + 16), a1, 0x48uLL);
  aBlock[4] = sub_1B388CE44;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_58;
  v16 = _Block_copy(aBlock);
  sub_1B388CC00(a1, v25);

  sub_1B3C9C138();
  v25[0] = MEMORY[0x1E69E7CC0];
  sub_1B3891DCC(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B370ED54(&qword_1EB84FE90, &unk_1EB851AF0);
  sub_1B3C9D278();
  v17 = v19;
  MEMORY[0x1B8C6A1D0](v14, v7, v4, v16);
  _Block_release(v16);

  (*(v24 + 8))(v4, v2);
  (*(v22 + 8))(v7, v23);
  return (v20)(v14, v21);
}

void sub_1B3889844()
{
  v0 = sub_1B3C9C5A8();
  v1 = PULocalizedString(v0);

  v2 = sub_1B3C9C5E8();
  v4 = v3;

  qword_1EB878F48 = v2;
  unk_1EB878F50 = v4;
}

void sub_1B38898BC()
{
  v0 = sub_1B3C9C5A8();
  v1 = PULocalizedString(v0);

  v2 = sub_1B3C9C5E8();
  v4 = v3;

  qword_1EB878F58 = v2;
  unk_1EB878F60 = v4;
}

void sub_1B3889934()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v3 = v2;
  v52 = v4;
  v61 = v5;
  sub_1B3C9B428();
  OUTLINED_FUNCTION_0();
  v55 = v7;
  v56 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857E28);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857E30);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857E38);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857E40);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v21);
  v60 = &v52 - v22;
  v23 = sub_1B37C3968();
  v59 = v20;
  v53 = (v23 & 1) != 0 && v1 && (v24 = sub_1B37C5C84()) != 0 && (v25 = sub_1B3711890(v24), , !v25);
  v26 = swift_allocObject();
  v26[2] = v52;
  v26[3] = v3;
  v26[4] = v1;
  MEMORY[0x1EEE9AC00](v26);
  *(&v52 - 4) = v27;
  *(&v52 - 3) = v3;
  *(&v52 - 2) = v1;
  v28 = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857E48);
  sub_1B370ED54(&qword_1EB857E50, &qword_1EB857E48);
  sub_1B3C9BCE8();
  v29 = &v14[*(v11 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857520);
  sub_1B3C9ABB8();
  *v29 = swift_getKeyPath();
  sub_1B3C9B418();
  sub_1B3891CE8();
  sub_1B3891DCC(&qword_1EB857548, MEMORY[0x1E697CB70]);
  v30 = v56;
  sub_1B3C9B858();
  (*(v55 + 8))(v10, v30);
  sub_1B371B36C(v14, &qword_1EB857E28);
  v31 = &v17[*(v54 + 36)];
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852F70) + 28);
  v33 = *MEMORY[0x1E697DC10];
  sub_1B3C9A7D8();
  OUTLINED_FUNCTION_0_1();
  (*(v34 + 104))(v31 + v32, v33);
  *v31 = swift_getKeyPath();
  v35 = v53;
  if (v53)
  {
    KeyPath = swift_getKeyPath();
    v37 = v59;
    sub_1B386D570(v17, v59, &qword_1EB857E30);
    v38 = 0;
    v39 = (v37 + *(v57 + 36));
    *v39 = KeyPath;
    v39[1] = 0;
  }

  else
  {
    v40 = sub_1B3C9BB88();
    v41 = swift_getKeyPath();
    v37 = v59;
    sub_1B386D570(v17, v59, &qword_1EB857E30);
    v42 = (v37 + *(v57 + 36));
    *v42 = v41;
    v42[1] = v40;
    v38 = sub_1B3C9BB48();
  }

  v43 = swift_getKeyPath();
  v44 = v37;
  v45 = v60;
  sub_1B386D570(v44, v60, &qword_1EB857E38);
  v46 = (v45 + *(v58 + 36));
  *v46 = v43;
  v46[1] = v38;
  v47 = swift_getKeyPath();
  v48 = swift_allocObject();
  *(v48 + 16) = v35;
  v49 = v45;
  v50 = v61;
  sub_1B386D570(v49, v61, &qword_1EB857E40);
  v51 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857E70) + 36));
  *v51 = v47;
  v51[1] = sub_1B3891E14;
  v51[2] = v48;
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B3889ED4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1B3C9AF18();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857E78);
  return sub_1B3889F44(a1 + *(v2 + 44));
}

uint64_t sub_1B3889F44@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857E80);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - v5;
  v7 = sub_1B3C9AF18();
  v8 = &v6[*(v2 + 44)];
  *v8 = v7;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857E88);
  sub_1B388A254(&v8[*(v9 + 44)]);
  v10 = sub_1B3C9C008();
  v12 = v11;
  v13 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857E90) + 36)];
  *v13 = v10;
  v13[1] = v12;
  *v6 = 0;
  v6[8] = 1;
  if (sub_1B37C3968())
  {
    if (qword_1EB8500F8 != -1)
    {
      swift_once();
    }

    v14 = &qword_1EB878F48;
  }

  else
  {
    if (qword_1EB850100 != -1)
    {
      swift_once();
    }

    v14 = &qword_1EB878F58;
  }

  v15 = *v14;

  v37 = v15;
  v38 = v16;
  sub_1B371B158();
  v17 = sub_1B3C9B7A8();
  v19 = v18;
  v21 = v20;
  sub_1B3C9B6D8();
  v22 = sub_1B3C9B778();
  v24 = v23;
  LOBYTE(v15) = v25;
  v27 = v26;

  sub_1B371B148(v17, v19, v21 & 1);

  v28 = v36;
  sub_1B37772C8(v6, v36, &qword_1EB857E80);
  v29 = v35;
  sub_1B37772C8(v28, v35, &qword_1EB857E80);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857E98);
  v31 = v29 + *(v30 + 48);
  *v31 = v22;
  *(v31 + 8) = v24;
  LOBYTE(v15) = v15 & 1;
  *(v31 + 16) = v15;
  *(v31 + 24) = v27;
  v32 = v29 + *(v30 + 64);
  *v32 = 0;
  *(v32 + 8) = 1;
  sub_1B370EFD4(v22, v24, v15);

  sub_1B371B36C(v6, &qword_1EB857E80);
  sub_1B371B148(v22, v24, v15);

  return sub_1B371B36C(v28, &qword_1EB857E80);
}

uint64_t sub_1B388A254@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857EA0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857EA8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  if (sub_1B37C3154())
  {
    sub_1B3C9A828();
    v11 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857EB0) + 36)];
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852F70) + 28);
    v13 = *MEMORY[0x1E697DC20];
    v14 = sub_1B3C9A7D8();
    (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
    *v11 = swift_getKeyPath();
    v15 = sub_1B3C9BB88();
    KeyPath = swift_getKeyPath();
    v17 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857EB8) + 36)];
    *v17 = KeyPath;
    v17[1] = v15;
    LOBYTE(v15) = sub_1B3C9B558();
    sub_1B3C9A738();
    v18 = &v10[*(v5 + 36)];
    *v18 = v15;
    *(v18 + 1) = v19;
    *(v18 + 2) = v20;
    *(v18 + 3) = v21;
    *(v18 + 4) = v22;
    v18[40] = 0;
    sub_1B37772C8(v10, v7, &qword_1EB857EA8);
    *v4 = 0;
    v4[8] = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857EC0);
    sub_1B37772C8(v7, &v4[*(v23 + 48)], &qword_1EB857EA8);
    sub_1B371B36C(v10, &qword_1EB857EA8);
    sub_1B371B36C(v7, &qword_1EB857EA8);
    sub_1B3891E1C(v4, a1);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }
}

uint64_t sub_1B388A570@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB8500F0 != -1)
  {
    swift_once();
  }

  sub_1B371B158();

  v2 = sub_1B3C9B7A8();
  v4 = v3;
  v6 = v5;
  sub_1B3C9B6D8();
  v7 = sub_1B3C9B778();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_1B371B148(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_1B388A688@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857B00);
  v49 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857B08);
  v40 = *(v44 - 8);
  v7 = v40;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857B10);
  v43 = *(v12 - 8);
  v13 = v43;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  v52 = a1;
  sub_1B38904D4();
  v42 = v18;
  sub_1B3C9A818();
  v51 = a1;
  sub_1B3890528();
  v39 = v11;
  sub_1B3C9A818();
  v50 = a1;
  sub_1B3890584();
  v37 = v6;
  sub_1B3C9A818();
  v19 = *(v13 + 16);
  v41 = v15;
  v38 = v12;
  v19(v15, v18, v12);
  v36 = *(v7 + 16);
  v20 = v47;
  v21 = v44;
  v36(v47, v11, v44);
  v35 = *(v49 + 16);
  v22 = v45;
  v35(v48, v6, v45);
  v23 = v46;
  v19(v46, v15, v12);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857B30);
  v36(&v23[*(v24 + 48)], v20, v21);
  v25 = &v23[*(v24 + 64)];
  v26 = v48;
  v35(v25, v48, v22);
  v27 = *(v49 + 8);
  v28 = v22;
  v27(v37, v22);
  v29 = *(v40 + 8);
  v30 = v21;
  v29(v39, v21);
  v31 = *(v43 + 8);
  v32 = v38;
  v31(v42, v38);
  v27(v26, v28);
  v29(v47, v30);
  return (v31)(v41, v32);
}

uint64_t sub_1B388AB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  type metadata accessor for PUWallpaperShuffleConfigurationViewModel(0);
  OUTLINED_FUNCTION_10_26();
  sub_1B3891DCC(v4, v5);
  v6 = v3;
  result = sub_1B3C9AA58();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = 1;
  return result;
}

__n128 sub_1B388ABBC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + 8) + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_availableShuffleFrequencies);
  type metadata accessor for PUWallpaperShuffleConfigurationViewModel(0);
  sub_1B3891DCC(qword_1EB851490, type metadata accessor for PUWallpaperShuffleConfigurationViewModel);

  v4 = sub_1B3C9AA68();
  swift_getKeyPath();
  sub_1B3C9AA78();

  result = v6;
  *a2 = v3;
  *(a2 + 8) = v6;
  *(a2 + 24) = v7;
  return result;
}

void sub_1B388ACF0()
{
  v0 = sub_1B3C9C5A8();
  v1 = PULocalizedString(v0);

  v2 = sub_1B3C9C5E8();
  v4 = v3;

  qword_1EB878F68 = v2;
  unk_1EB878F70 = v4;
}

void sub_1B388AD68()
{
  v0 = sub_1B3C9C5A8();
  v1 = PULocalizedString(v0);

  v2 = sub_1B3C9C5E8();
  v4 = v3;

  qword_1EB878F78 = v2;
  unk_1EB878F80 = v4;
}

double sub_1B388ADE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  *a5 = sub_1B3C9B4B8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857CA8);
  sub_1B388AEBC(a1, a2, a3, a4, &a5[*(v10 + 44)]);
  v11 = sub_1B3C9B5E8();
  KeyPath = swift_getKeyPath();
  v13 = &a5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857CB0) + 36)];
  *v13 = KeyPath;
  v13[1] = v11;
  v14 = &a5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857CB8) + 36)];
  result = 0.0;
  *v14 = xmmword_1B3D099C0;
  *(v14 + 1) = xmmword_1B3D099C0;
  v14[32] = 0;
  return result;
}

uint64_t sub_1B388AEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857CC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857CC8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v32 - v24;
  *v25 = sub_1B3C9AF18();
  *(v25 + 1) = 0;
  v25[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857CD0);
  sub_1B388B214(a1, a2, a3, a4, &v25[*(v26 + 44)]);
  *v19 = sub_1B3C9B008();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857CD8);
  sub_1B388B63C(a1, a2, a3, a4, &v19[*(v27 + 44)]);
  *v16 = sub_1B3C9B008();
  *(v16 + 1) = 0;
  v16[16] = 0;
  sub_1B388BA5C(a1, a2, a3, a4, &v16[*(v27 + 44)]);
  v33 = v22;
  sub_1B37772C8(v25, v22, &qword_1EB857CC8);
  sub_1B37772C8(v19, v13, &qword_1EB857CC0);
  v28 = v34;
  sub_1B37772C8(v16, v34, &qword_1EB857CC0);
  v29 = v35;
  sub_1B37772C8(v22, v35, &qword_1EB857CC8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857CE0);
  sub_1B37772C8(v13, v29 + *(v30 + 48), &qword_1EB857CC0);
  sub_1B37772C8(v28, v29 + *(v30 + 64), &qword_1EB857CC0);
  sub_1B371B36C(v16, &qword_1EB857CC0);
  sub_1B371B36C(v19, &qword_1EB857CC0);
  sub_1B371B36C(v25, &qword_1EB857CC8);
  sub_1B371B36C(v28, &qword_1EB857CC0);
  sub_1B371B36C(v13, &qword_1EB857CC0);
  return sub_1B371B36C(v33, &qword_1EB857CC8);
}

uint64_t sub_1B388B214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857CE8);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857CF0);
  MEMORY[0x1EEE9AC00](v39);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  if (qword_1EB850108 != -1)
  {
    swift_once();
  }

  v17 = xmmword_1EB878F68;
  v44 = xmmword_1EB878F68;
  v18 = sub_1B371B158();
  swift_bridgeObjectRetain_n();
  v19 = sub_1B3C9B7A8();
  v35 = v20;
  v36 = v19;
  v37 = v21;
  v38 = v22;
  v46 = v17;
  *&v44 = a2;
  *(&v44 + 1) = a3;
  v45 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857CF8);
  v23 = sub_1B3C9BE18();
  v44 = v42;
  v45 = v43;
  MEMORY[0x1EEE9AC00](v23);
  *(&v34 - 4) = v34;
  *(&v34 - 3) = a2;
  type metadata accessor for PFPosterShuffleFrequency(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857D00);
  sub_1B3891DCC(&qword_1EB857D08, type metadata accessor for PFPosterShuffleFrequency);
  v32 = sub_1B38914E4();
  v33 = v18;
  sub_1B3C9BD68();
  sub_1B370ED54(&qword_1EB857D18, &qword_1EB857CE8);
  v24 = v41;
  sub_1B3C9B8D8();
  (*(v40 + 8))(v11, v24);
  v25 = sub_1B3C9B008();
  v26 = &v16[*(v39 + 36)];
  *v26 = v25;
  v26[1] = sub_1B388C090;
  v26[2] = 0;
  sub_1B37772C8(v16, v13, &qword_1EB857CF0);
  v28 = v35;
  v27 = v36;
  *a5 = v36;
  *(a5 + 8) = v28;
  v29 = v37 & 1;
  *(a5 + 16) = v37 & 1;
  *(a5 + 24) = v38;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857D48);
  sub_1B37772C8(v13, a5 + *(v30 + 64), &qword_1EB857CF0);
  sub_1B370EFD4(v27, v28, v29);

  sub_1B371B36C(v16, &qword_1EB857CF0);
  sub_1B371B36C(v13, &qword_1EB857CF0);
  sub_1B371B148(v27, v28, v29);
}

uint64_t sub_1B388B63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857CE8);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857CF0);
  MEMORY[0x1EEE9AC00](v39);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  if (qword_1EB850108 != -1)
  {
    swift_once();
  }

  v17 = xmmword_1EB878F68;
  v44 = xmmword_1EB878F68;
  v18 = sub_1B371B158();
  swift_bridgeObjectRetain_n();
  v19 = sub_1B3C9B7A8();
  v35 = v20;
  v36 = v19;
  v37 = v21;
  v38 = v22;
  v46 = v17;
  *&v44 = a2;
  *(&v44 + 1) = a3;
  v45 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857CF8);
  v23 = sub_1B3C9BE18();
  v44 = v42;
  v45 = v43;
  MEMORY[0x1EEE9AC00](v23);
  *(&v34 - 4) = v34;
  *(&v34 - 3) = a2;
  type metadata accessor for PFPosterShuffleFrequency(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857D00);
  sub_1B3891DCC(&qword_1EB857D08, type metadata accessor for PFPosterShuffleFrequency);
  v32 = sub_1B38914E4();
  v33 = v18;
  sub_1B3C9BD68();
  sub_1B370ED54(&qword_1EB857D18, &qword_1EB857CE8);
  v24 = v41;
  sub_1B3C9B8D8();
  (*(v40 + 8))(v11, v24);
  v25 = sub_1B3C9B008();
  v26 = &v16[*(v39 + 36)];
  *v26 = v25;
  v26[1] = sub_1B388C090;
  v26[2] = 0;
  sub_1B37772C8(v16, v13, &qword_1EB857CF0);
  v28 = v35;
  v27 = v36;
  *a5 = v36;
  *(a5 + 8) = v28;
  v29 = v37 & 1;
  *(a5 + 16) = v37 & 1;
  *(a5 + 24) = v38;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857D20);
  sub_1B37772C8(v13, a5 + *(v30 + 48), &qword_1EB857CF0);
  sub_1B370EFD4(v27, v28, v29);

  sub_1B371B36C(v16, &qword_1EB857CF0);
  sub_1B371B36C(v13, &qword_1EB857CF0);
  sub_1B371B148(v27, v28, v29);
}

uint64_t sub_1B388BA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857CE8);
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857CF0);
  MEMORY[0x1EEE9AC00](v38);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  if (qword_1EB850110 != -1)
  {
    swift_once();
  }

  v43 = xmmword_1EB878F78;
  v17 = sub_1B371B158();

  v18 = sub_1B3C9B7A8();
  v35 = v19;
  v36 = v18;
  v34 = v20;
  v37 = v21;
  if (qword_1EB850108 != -1)
  {
    swift_once();
  }

  v45 = xmmword_1EB878F68;
  *&v43 = a2;
  *(&v43 + 1) = a3;
  v44 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857CF8);
  v22 = sub_1B3C9BE18();
  v43 = v41;
  v44 = v42;
  MEMORY[0x1EEE9AC00](v22);
  *(&v33 - 4) = v33;
  *(&v33 - 3) = a2;
  type metadata accessor for PFPosterShuffleFrequency(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857D00);
  sub_1B3891DCC(&qword_1EB857D08, type metadata accessor for PFPosterShuffleFrequency);
  v31 = sub_1B38914E4();
  v32 = v17;
  sub_1B3C9BD68();
  sub_1B370ED54(&qword_1EB857D18, &qword_1EB857CE8);
  v23 = v40;
  sub_1B3C9B8D8();
  (*(v39 + 8))(v11, v23);
  v24 = sub_1B3C9B008();
  v25 = &v16[*(v38 + 36)];
  *v25 = v24;
  v25[1] = sub_1B388C090;
  v25[2] = 0;
  sub_1B37772C8(v16, v13, &qword_1EB857CF0);
  v27 = v35;
  v26 = v36;
  *a5 = v36;
  *(a5 + 8) = v27;
  v28 = v34 & 1;
  *(a5 + 16) = v34 & 1;
  *(a5 + 24) = v37;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857D20);
  sub_1B37772C8(v13, a5 + *(v29 + 48), &qword_1EB857CF0);
  sub_1B370EFD4(v26, v27, v28);

  sub_1B371B36C(v16, &qword_1EB857CF0);
  sub_1B371B36C(v13, &qword_1EB857CF0);
  sub_1B371B148(v26, v27, v28);
}

uint64_t sub_1B388BEB4()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857D28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857D30);
  sub_1B370ED54(&qword_1EB857D38, &qword_1EB857D28);
  type metadata accessor for PFPosterShuffleFrequency(255);
  sub_1B3891DCC(&qword_1EB857D08, type metadata accessor for PFPosterShuffleFrequency);
  swift_getOpaqueTypeConformance2();
  sub_1B38915DC();
  return sub_1B3C9BE98();
}

uint64_t sub_1B388C018@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1B371B158();

  result = sub_1B3C9B7A8();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 40) = 1;
  return result;
}

void sub_1B388C0CC()
{
  v0 = sub_1B3C9C5A8();
  v1 = PULocalizedString(v0);

  v2 = sub_1B3C9C5E8();
  v4 = v3;

  qword_1EB878F88 = v2;
  unk_1EB878F90 = v4;
}

void sub_1B388C144()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857B38);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  v14 = sub_1B37C2DC0();
  if (v14)
  {
    v22[1] = v14;
    v15 = swift_allocObject();
    *(v15 + 16) = v5;
    *(v15 + 24) = v3;
    *(v15 + 32) = v1 & 1;
    v16 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857B40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857B48);
    sub_1B370ED54(&qword_1EB857B50, &qword_1EB857B40);
    sub_1B38905E4();
    sub_1B38906C8();
    sub_1B3C9BE98();
    (*(v10 + 32))(v7, v13, v8);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    OUTLINED_FUNCTION_27();
  }

  else
  {
    OUTLINED_FUNCTION_27();

    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }
}

double sub_1B388C348@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v30 = a2;
  v9 = sub_1B3C9B6E8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[2];
  v15 = a1[3];
  v33 = a1[1];
  v34 = v15;
  v16 = a1[4];
  v31 = v14;
  v32 = v16;
  v35 = v13 == 1;

  v17 = (v13 & ~sub_1B37C2C60()) == 0;
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = v30;
  *(v18 + 24) = v30;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = v13;
  v36 = 0x4036000000000000;
  (*(v10 + 104))(v12, *MEMORY[0x1E6980EF8], v9);
  sub_1B37E5BC4();
  v20 = a3;
  sub_1B3C9A838();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857B68);
  v22 = (a5 + v21[9]);
  v23 = v31;
  *v22 = v33;
  v22[1] = v23;
  v24 = (a5 + v21[10]);
  v25 = v32;
  *v24 = v34;
  v24[1] = v25;
  *(a5 + v21[11]) = v17;
  *(a5 + v21[12]) = a4;
  sub_1B388C58C(v35, v17, v19, v20, a4, a5 + v21[13]);
  v26 = (a5 + v21[14]);
  *v26 = sub_1B389071C;
  v26[1] = v18;
  v27 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857B48) + 36);
  result = 0.0;
  *v27 = xmmword_1B3D099C0;
  *(v27 + 16) = xmmword_1B3D099C0;
  *(v27 + 32) = 0;
  return result;
}

uint64_t sub_1B388C58C@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a3;
  v30 = a6;
  v9 = sub_1B3C9AB68();
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857B88);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857B90);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v26 - v17;
  if (a1 & 1) != 0 && (a2)
  {
    v19 = swift_allocObject();
    v26[1] = v26;
    *(v19 + 16) = v28;
    *(v19 + 24) = a4;
    *(v19 + 32) = v27 & 1;
    MEMORY[0x1EEE9AC00](v19);
    v26[-4] = v20;
    v26[-3] = a4;
    LOBYTE(v26[-2]) = v21;
    v22 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857B98);
    sub_1B3890760();
    sub_1B3C9BCE8();
    v14[*(v12 + 36)] = 0;
    sub_1B3C9AB58();
    sub_1B3890900();
    sub_1B3891DCC(&unk_1EB854060, MEMORY[0x1E697C248]);
    sub_1B3C9B858();
    (*(v29 + 8))(v11, v9);
    sub_1B371B36C(v14, &qword_1EB857B88);
    v23 = v30;
    (*(v16 + 32))(v30, v18, v15);
    return __swift_storeEnumTagSinglePayload(v23, 0, 1, v15);
  }

  else
  {
    v25 = v30;

    return __swift_storeEnumTagSinglePayload(v25, 1, 1, v15);
  }
}

uint64_t sub_1B388C910@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857BD0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857BB0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  if (sub_1B37C34CC() < 1)
  {
    if (qword_1EB850118 != -1)
    {
      swift_once();
    }

    v10 = qword_1EB878F88;
    v12 = unk_1EB878F90;
  }

  else
  {
    v9 = PULocalizedWallpaperShuffleConfigurationPeopleCount();
    v10 = sub_1B3C9C5E8();
    v12 = v11;
  }

  v21[0] = v10;
  v21[1] = v12;
  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  sub_1B3C9B968();

  v13 = sub_1B3C9B5E8();
  KeyPath = swift_getKeyPath();
  (*(v3 + 32))(v8, v5, v2);
  v15 = &v8[*(v6 + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  v16 = [objc_opt_self() systemBlueColor];
  v17 = sub_1B3C9BAF8();
  v18 = swift_getKeyPath();
  sub_1B386D570(v8, a1, &qword_1EB857BB0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857B98);
  v20 = (a1 + *(result + 36));
  *v20 = v18;
  v20[1] = v17;
  return result;
}