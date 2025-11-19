void sub_1E4A6C0D4(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_1E4AAA1C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42[-v12];
  v14 = OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_colorScheme;
  swift_beginAccess();
  (*(v7 + 16))(v13, v3 + v14, v6);
  v44 = a1;
  sub_1E4AAA2C0();
  sub_1E4A6C7C8(&qword_1EE043A20, MEMORY[0x1E697DBD0]);
  v15 = sub_1E4AAA860();
  v16 = *(v7 + 8);
  v16(v11, v6);
  v16(v13, v6);
  v43 = v15;
  if ((v15 & 1) == 0)
  {
    sub_1E4AAA2C0();
    swift_beginAccess();
    (*(v7 + 40))(v3 + v14, v13, v6);
    swift_endAccess();
  }

  v17 = v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot;
  v18 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 80);
  v19 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 112);
  v77 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 96);
  v78 = v19;
  v20 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 112);
  v79 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 128);
  v21 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 16);
  v22 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 48);
  v73 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 32);
  v74 = v22;
  v23 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 48);
  v24 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 80);
  v75 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 64);
  v76 = v24;
  v25 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 16);
  v72[0] = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot);
  v72[1] = v25;
  v69 = v77;
  v70 = v20;
  v71 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_posterEnvironmentSnapshot + 128);
  v65 = v73;
  v66 = v23;
  v67 = v75;
  v68 = v18;
  v63 = v72[0];
  v64 = v21;
  sub_1E4A49D24(v72, v81);
  sub_1E4A53380();
  sub_1E4AAA330();
  v51 = v60;
  v52 = v61;
  v53 = v62;
  v47 = v56;
  v48 = v57;
  v49 = v58;
  v50 = v59;
  v45 = v54;
  v46 = v55;
  v26 = _s12WallpaperKit27WKPosterEnvironmentSnapshotV2eeoiySbAC_ACtFZ_0(&v63, v45.f64);
  v80[6] = v51;
  v80[7] = v52;
  v80[8] = v53;
  v80[2] = v47;
  v80[3] = v48;
  v80[4] = v49;
  v80[5] = v50;
  v80[0] = v45;
  v80[1] = v46;
  sub_1E4A49CD0(v80);
  v81[6] = v69;
  v81[7] = v70;
  v81[8] = v71;
  v81[2] = v65;
  v81[3] = v66;
  v81[4] = v67;
  v81[5] = v68;
  v81[0] = v63;
  v81[1] = v64;
  sub_1E4A49CD0(v81);
  if ((v26 & 1) == 0)
  {
    v29 = *(v17 + 72);
    sub_1E4AAA330();
    v69 = v60;
    v70 = v61;
    v71 = v62;
    v65 = v56;
    v66 = v57;
    v67 = v58;
    v68 = v59;
    v63 = v54;
    v64 = v55;
    sub_1E4A49CD0(&v63);
    v30 = v29 != *(&v67 + 1);
    if (v29 != *(&v67 + 1))
    {
      *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_lastOrientation) = *(v17 + 72);
    }

    sub_1E4AAA330();
    v31 = *(v17 + 112);
    v60 = *(v17 + 96);
    v61 = v31;
    v62 = *(v17 + 128);
    v32 = *(v17 + 48);
    v56 = *(v17 + 32);
    v57 = v32;
    v33 = *(v17 + 80);
    v58 = *(v17 + 64);
    v59 = v33;
    v34 = *(v17 + 16);
    v54 = *v17;
    v55 = v34;
    v35 = v50;
    *(v17 + 64) = v49;
    *(v17 + 80) = v35;
    v36 = v52;
    *(v17 + 96) = v51;
    *(v17 + 112) = v36;
    *(v17 + 128) = v53;
    v37 = v48;
    *(v17 + 32) = v47;
    *(v17 + 48) = v37;
    v38 = v46;
    *v17 = v45;
    *(v17 + 16) = v38;
    sub_1E4A49CD0(&v54);
    v27 = (v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_rotationAngle);
    v39 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_rotationAngle);
    if (sub_1E4AAA5B0())
    {
      v40 = 0;
      goto LABEL_13;
    }

LABEL_12:
    *v27 = a2;
    v40 = 1;
LABEL_13:
    sub_1E4A68E28(v40, v30, a2);
    if (v43)
    {
      return;
    }

    goto LABEL_14;
  }

  v27 = (v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_rotationAngle);
  v28 = *(v3 + OBJC_IVAR____TtCV12WallpaperKit23WKAnimationPackageLayer11Coordinator_rotationAngle);
  if ((sub_1E4AAA5B0() & 1) == 0)
  {
    v30 = 0;
    goto LABEL_12;
  }

  if (v43)
  {
    return;
  }

  sub_1E4A68E28(0, 0, a2);
LABEL_14:
  v41 = [objc_opt_self() defaultCenter];
  if (qword_1EE0421A8 != -1)
  {
    swift_once();
  }

  [v41 postNotificationName:qword_1EE048B10 object:0];
}

uint64_t sub_1E4A6C5D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E678, qword_1E4AB1DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A6C690(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A6C6C8()
{
  sub_1E4A48ECC();
  if (v0 <= 0x3F)
  {
    sub_1E4A48E74();
    if (v1 <= 0x3F)
    {
      sub_1E4AA9FE0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E4A6C7C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4A6C880(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E4AAADA0() & 1;
  }
}

uint64_t sub_1E4A6C954(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E4AAA030();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WKPosterDynamicRotationState();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v66 - v14;
  if (qword_1EE0424A0 != -1)
  {
    swift_once();
  }

  v16 = sub_1E4AAA0E0();
  v75 = __swift_project_value_buffer(v16, qword_1EE048B40);
  v17 = sub_1E4AAA0C0();
  v18 = sub_1E4AAAA20();
  v19 = os_log_type_enabled(v17, v18);
  v73 = v4;
  v67 = v15;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v76 = v5;
    v74 = v9;
    v21 = v20;
    v77[0] = swift_slowAlloc();
    v72 = v2;
    v22 = v77[0];
    *v21 = 136446466;
    v23 = WKStringForInterfaceOrientation(a1);
    v24 = a1;
    v25 = sub_1E4AAA8A0();
    v27 = v26;

    v28 = v25;
    a1 = v24;
    v29 = sub_1E4A85938(v28, v27, v77);
    v15 = v67;

    *(v21 + 4) = v29;
    *(v21 + 12) = 2050;
    *(v21 + 14) = sub_1E4A93090(v24);
    _os_log_impl(&dword_1E4A23000, v17, v18, "Initial orientation of poster is %{public}s (%{public}f degrees)", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v30 = v22;
    v2 = v72;
    MEMORY[0x1E691FE80](v30, -1, -1);
    v31 = v21;
    v9 = v74;
    v5 = v76;
    MEMORY[0x1E691FE80](v31, -1, -1);
  }

  sub_1E4A7CA1C(a1, v15);
  v32 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_rotationState;
  swift_beginAccess();
  sub_1E4A6EB78(v15, &v2[v32]);
  swift_endAccess();
  v33 = *(*(v2 + 2) + 16);
  if (v33)
  {
    v34 = *&v15[*(v9 + 20)] * 0.0174532925;
    v69 = (v5 + 8);
    v70 = (v5 + 16);

    v36 = 32;
    *&v37 = 136446210;
    v68 = v37;
    v71 = v35;
    v72 = v13;
    do
    {
      v74 = v33;
      v48 = *(v35 + v36);
      sub_1E4A6EC98(v15, v13);
      swift_unknownObjectRetain();
      v49 = sub_1E4AAA0C0();
      v50 = sub_1E4AAAA20();
      v51 = os_log_type_enabled(v49, v50);
      v76 = v48;
      if (v51)
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v77[0] = v53;
        *v52 = v68;
        v54 = sub_1E4AA9FF0();
        v55 = v13;
        v57 = v56;
        sub_1E4A6EFA8(v55, type metadata accessor for WKPosterDynamicRotationState);
        v58 = sub_1E4A85938(v54, v57, v77);

        *(v52 + 4) = v58;
        _os_log_impl(&dword_1E4A23000, v49, v50, "Handling rotation animation %{public}s.", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        MEMORY[0x1E691FE80](v53, -1, -1);
        v59 = v52;
        v48 = v76;
        MEMORY[0x1E691FE80](v59, -1, -1);
      }

      else
      {

        sub_1E4A6EFA8(v13, type metadata accessor for WKPosterDynamicRotationState);
      }

      v60 = *(v48 + 176);
      if (sub_1E4AAA5B0())
      {
        *(v48 + 176) = v34;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v66 - 2) = v48;
        *(&v66 - 1) = v34;
        v77[0] = v48;
        sub_1E4A6F0B4(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
        sub_1E4AAA050();
      }

      v62 = v73;
      (*v70)(v8, v15, v73);
      v63 = sub_1E4AAA0C0();
      v64 = sub_1E4AAAA20();
      if (os_log_type_enabled(v63, v64))
      {
        v38 = v8;
        v39 = v62;
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v77[0] = v41;
        *v40 = v68;
        v42 = sub_1E4AA9FF0();
        v44 = v43;
        v45 = v39;
        v8 = v38;
        (*v69)(v38, v45);
        v46 = v42;
        v15 = v67;
        v47 = sub_1E4A85938(v46, v44, v77);

        *(v40 + 4) = v47;
        _os_log_impl(&dword_1E4A23000, v63, v64, "Completed rotation animation %{public}s.", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        MEMORY[0x1E691FE80](v41, -1, -1);
        MEMORY[0x1E691FE80](v40, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        (*v69)(v8, v62);
        swift_unknownObjectRelease();
      }

      v35 = v71;
      v13 = v72;
      v36 += 16;
      v33 = v74 - 1;
    }

    while (v74 != 1);
  }

  return sub_1E4A6EFA8(v15, type metadata accessor for WKPosterDynamicRotationState);
}

void sub_1E4A6D014(unint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for WKPosterDynamicRotationState();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E718, &unk_1E4AB19F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v75 - v12;
  v14 = v2 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_rotationState;
  swift_beginAccess();
  v15 = *(v14 + v6[8]);
  if (v15 != a1)
  {
    v16 = v2 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate;
    if (swift_unknownObjectWeakLoadStrong() && (v17 = *(v16 + 8), ObjectType = swift_getObjectType(), LOBYTE(v17) = (*(v17 + 8))(ObjectType, v17), swift_unknownObjectRelease(), (v17 & 1) != 0))
    {
      if (a2)
      {
        v19 = qword_1EE0424A0;
        v20 = a2;
        if (v19 != -1)
        {
          swift_once();
        }

        v21 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v21, qword_1EE048B40);
        v22 = sub_1E4AAA0C0();
        v23 = sub_1E4AAAA20();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v78 = v20;
          v25 = v24;
          v77 = swift_slowAlloc();
          v79[0] = v77;
          *v25 = 136446466;
          v26 = WKStringForInterfaceOrientation(v15);
          v76 = v23;
          v27 = v26;
          v28 = sub_1E4AAA8A0();
          v75 = v22;
          v30 = v29;

          v31 = sub_1E4A85938(v28, v30, v79);

          *(v25 + 4) = v31;
          *(v25 + 12) = 2082;
          v32 = WKStringForInterfaceOrientation(a1);
          v33 = sub_1E4AAA8A0();
          v35 = v34;

          v36 = sub_1E4A85938(v33, v35, v79);

          *(v25 + 14) = v36;
          v37 = v75;
          _os_log_impl(&dword_1E4A23000, v75, v76, "Starting animation of device orientation; currentOrientation=%{public}s, toOrientation=%{public}s", v25, 0x16u);
          v38 = v77;
          swift_arrayDestroy();
          MEMORY[0x1E691FE80](v38, -1, -1);
          v39 = v25;
          v20 = v78;
          MEMORY[0x1E691FE80](v39, -1, -1);
        }

        else
        {
        }

        v66 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_displayLink;
        [*(v3 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_displayLink) invalidate];
        v67 = *(v14 + v6[5]);
        v68 = type metadata accessor for WKPosterDynamicRotationAnimationState();
        *&v13[v68[7]] = v20;
        *&v13[v68[5]] = v15;
        *&v13[v68[6]] = a1;
        v69 = v20;
        sub_1E4AAA020();
        *&v13[v68[8]] = CFAbsoluteTimeGetCurrent();
        *&v13[v68[9]] = sub_1E4A93188(v15, a1, v67);
        *&v13[v68[10]] = v70;
        (*(*(v68 - 1) + 56))(v13, 0, 1, v68);
        v71 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_animationState;
        swift_beginAccess();
        sub_1E4A6EBDC(v13, v3 + v71);
        swift_endAccess();
        v72 = [objc_opt_self() displayLinkWithTarget:v3 selector:sel_displayLinkFired_];
        [v69 preferredFrameRateRange];
        [v72 setPreferredFrameRateRange_];
        v73 = [objc_opt_self() currentRunLoop];
        [v72 addToRunLoop:v73 forMode:*MEMORY[0x1E695DA28]];

        v74 = *(v3 + v66);
        *(v3 + v66) = v72;
      }

      else
      {
        if (qword_1EE0424A0 != -1)
        {
          swift_once();
        }

        v50 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v50, qword_1EE048B40);
        v51 = sub_1E4AAA0C0();
        v52 = sub_1E4AAAA20();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          LODWORD(v77) = v52;
          v54 = v53;
          v78 = swift_slowAlloc();
          v79[0] = v78;
          *v54 = 136446466;
          v55 = WKStringForInterfaceOrientation(v15);
          v56 = sub_1E4AAA8A0();
          v58 = v57;

          v59 = sub_1E4A85938(v56, v58, v79);

          *(v54 + 4) = v59;
          *(v54 + 12) = 2082;
          v60 = WKStringForInterfaceOrientation(a1);
          v61 = sub_1E4AAA8A0();
          v63 = v62;

          v64 = sub_1E4A85938(v61, v63, v79);

          *(v54 + 14) = v64;
          _os_log_impl(&dword_1E4A23000, v51, v77, "Updating orientation change without animating because animation settings were missing; orientation=%{public}s, newOrientation=%{public}s", v54, 0x16u);
          v65 = v78;
          swift_arrayDestroy();
          MEMORY[0x1E691FE80](v65, -1, -1);
          MEMORY[0x1E691FE80](v54, -1, -1);
        }

        sub_1E4AAA020();
        *&v9[v6[5]] = sub_1E4A93090(a1);
        *&v9[v6[6]] = 0x3FF0000000000000;
        *&v9[v6[7]] = v15;
        *&v9[v6[8]] = a1;
        sub_1E4A6DE68(v9);
        sub_1E4A6EFA8(v9, type metadata accessor for WKPosterDynamicRotationState);
      }
    }

    else
    {
      if (qword_1EE0424A0 != -1)
      {
        swift_once();
      }

      v40 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v40, qword_1EE048B40);
      v41 = sub_1E4AAA0C0();
      v42 = sub_1E4AAAA20();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v79[0] = v44;
        *v43 = 136446210;
        v45 = WKStringForInterfaceOrientation(a1);
        v46 = sub_1E4AAA8A0();
        v48 = v47;

        v49 = sub_1E4A85938(v46, v48, v79);

        *(v43 + 4) = v49;
        _os_log_impl(&dword_1E4A23000, v41, v42, "Rotation manager was not granted a rendering session; Skipping rotation to %{public}s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        MEMORY[0x1E691FE80](v44, -1, -1);
        MEMORY[0x1E691FE80](v43, -1, -1);
      }
    }
  }
}

uint64_t sub_1E4A6D7E8()
{
  v1 = v0;
  v2 = type metadata accessor for WKPosterDynamicRotationState();
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E718, &unk_1E4AB19F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - v8;
  if (qword_1EE0424A0 != -1)
  {
    swift_once();
  }

  v10 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v10, qword_1EE048B40);
  v11 = sub_1E4AAA0C0();
  v12 = sub_1E4AAAA20();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1E4A23000, v11, v12, "Rotation manager was invalidated", v13, 2u);
    MEMORY[0x1E691FE80](v13, -1, -1);
  }

  v14 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_displayLink;
  [*(v1 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_displayLink) invalidate];
  v15 = *(v1 + v14);
  *(v1 + v14) = 0;

  v16 = type metadata accessor for WKPosterDynamicRotationAnimationState();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_animationState;
  swift_beginAccess();
  sub_1E4A6EBDC(v9, v1 + v17);
  swift_endAccess();
  v18 = *(v1 + 16);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];

  *(v1 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  sub_1E4AAA020();
  *&v5[v2[5]] = 0;
  *&v5[v2[6]] = 0x3FF0000000000000;
  *&v5[v2[7]] = 0;
  *&v5[v2[8]] = 0;
  v19 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_rotationState;
  swift_beginAccess();
  sub_1E4A6F008(v5, v1 + v19);
  return swift_endAccess();
}

id sub_1E4A6DA90(void *a1)
{
  v3 = type metadata accessor for WKPosterDynamicRotationState();
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E718, &unk_1E4AB19F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for WKPosterDynamicRotationAnimationState();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_animationState;
  swift_beginAccess();
  sub_1E4A6EDDC(v1 + v16, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1E4A6EE4C(v10);
    if (qword_1EE0424A0 != -1)
    {
      swift_once();
    }

    v17 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v17, qword_1EE048B40);
    v18 = sub_1E4AAA0C0();
    v19 = sub_1E4AAAA00();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1E4A23000, v18, v19, "Display link fired with no animation state", v20, 2u);
      MEMORY[0x1E691FE80](v20, -1, -1);
    }

    return [a1 invalidate];
  }

  else
  {
    sub_1E4A6EF40(v10, v15, type metadata accessor for WKPosterDynamicRotationAnimationState);
    [*&v15[v11[7]] progressAtTime_];
    v23 = v22;
    v24 = *&v15[v11[9]];
    v25 = fmod(v24 + v23 * (*&v15[v11[10]] - v24), 360.0);
    v26 = v11[6];
    v27 = *&v15[v11[5]];
    v28 = *&v15[v26];
    v29 = sub_1E4AAA030();
    (*(*(v29 - 8) + 16))(v6, v15, v29);
    *&v6[v3[5]] = v25;
    *&v6[v3[6]] = v23;
    *&v6[v3[7]] = v27;
    *&v6[v3[8]] = v28;
    sub_1E4A6DE68(v6);
    sub_1E4A6EFA8(v6, type metadata accessor for WKPosterDynamicRotationState);
    return sub_1E4A6EFA8(v15, type metadata accessor for WKPosterDynamicRotationAnimationState);
  }
}

uint64_t sub_1E4A6DE68(uint64_t a1)
{
  v3 = sub_1E4AAA760();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1E4AAA780();
  v40 = *(v42 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WKPosterDynamicRotationState();
  v9 = v8 - 8;
  v37 = *(v8 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v45 = sub_1E4AAA7A0();
  v38 = *(v45 - 8);
  v11 = *(v38 + 64);
  v12 = MEMORY[0x1EEE9AC00](v45);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E718, &unk_1E4AB19F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v36 - v19;
  v21 = *(v1 + 16);
  v47 = a1;

  sub_1E4A6E458(sub_1E4A6EB44, v46, v21);

  v22 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_rotationState;
  swift_beginAccess();
  sub_1E4A6EB78(a1, v1 + v22);
  result = swift_endAccess();
  if (*(a1 + *(v9 + 32)) >= 1.0)
  {
    v24 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_displayLink;
    [*(v1 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_displayLink) invalidate];
    v25 = *(v1 + v24);
    *(v1 + v24) = 0;

    v26 = type metadata accessor for WKPosterDynamicRotationAnimationState();
    (*(*(v26 - 8) + 56))(v20, 1, 1, v26);
    v27 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_animationState;
    swift_beginAccess();
    sub_1E4A6EBDC(v20, v1 + v27);
    swift_endAccess();
    sub_1E4A6EC4C();
    v28 = sub_1E4AAAA50();
    sub_1E4AAA790();
    sub_1E4AAA7E0();
    v38 = *(v38 + 8);
    (v38)(v14, v45);
    v29 = swift_allocObject();
    swift_weakInit();
    sub_1E4A6EC98(a1, &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v30 = (*(v37 + 80) + 24) & ~*(v37 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    sub_1E4A6EF40(&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for WKPosterDynamicRotationState);
    aBlock[4] = sub_1E4A6ECFC;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E4A6E8B8;
    aBlock[3] = &block_descriptor_0;
    v32 = _Block_copy(aBlock);

    v33 = v39;
    sub_1E4AAA770();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E4A6F0B4(&qword_1EE042230, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E720, &qword_1E4AB33E0);
    sub_1E4A6ED78();
    v34 = v41;
    v35 = v44;
    sub_1E4AAAB40();
    MEMORY[0x1E691EE10](v16, v33, v34, v32);
    _Block_release(v32);

    (*(v43 + 8))(v34, v35);
    (*(v40 + 8))(v33, v42);
    return (v38)(v16, v45);
  }

  return result;
}

uint64_t sub_1E4A6E458(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;
      swift_unknownObjectRetain();
      v5(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E4A6E4F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WKPosterDynamicRotationState();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E718, &unk_1E4AB19F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v30 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_animationState;
    swift_beginAccess();
    sub_1E4A6EDDC(v12 + v13, v10);
    v14 = type metadata accessor for WKPosterDynamicRotationAnimationState();
    if ((*(*(v14 - 8) + 48))(v10, 1, v14) == 1)
    {
      sub_1E4A6EE4C(v10);
      if (qword_1EE0424A0 != -1)
      {
        swift_once();
      }

      v15 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v15, qword_1EE048B40);
      sub_1E4A6EC98(a2, v6);
      v16 = sub_1E4AAA0C0();
      v17 = sub_1E4AAAA20();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v30[0] = v19;
        *v18 = 136446210;
        v20 = WKStringForInterfaceOrientation(*&v6[*(v3 + 32)]);
        v21 = sub_1E4AAA8A0();
        v23 = v22;

        sub_1E4A6EFA8(v6, type metadata accessor for WKPosterDynamicRotationState);
        v24 = sub_1E4A85938(v21, v23, v30);

        *(v18 + 4) = v24;
        _os_log_impl(&dword_1E4A23000, v16, v17, "Completed animation of device orientation to %{public}s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1E691FE80](v19, -1, -1);
        MEMORY[0x1E691FE80](v18, -1, -1);
      }

      else
      {

        v25 = sub_1E4A6EFA8(v6, type metadata accessor for WKPosterDynamicRotationState);
      }

      v26 = *(v12 + 16);
      MEMORY[0x1EEE9AC00](v25);
      v30[-2] = a2;

      sub_1E4A6E458(sub_1E4A6EEB4, &v30[-4], v26);

      v27 = v12 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v28 = *(v27 + 8);
        ObjectType = swift_getObjectType();
        (*(v28 + 16))(ObjectType, v28);

        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      return sub_1E4A6EE4C(v10);
    }
  }

  return result;
}

uint64_t sub_1E4A6E8B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1E4A6E8FC()
{
  v1 = v0[2];

  sub_1E4A6EFA8(v0 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_rotationState, type metadata accessor for WKPosterDynamicRotationState);

  sub_1E4A6EE4C(v0 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_animationState);
  sub_1E4A6F06C(v0 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WKDynamicRotationManager()
{
  result = qword_1EE042C38;
  if (!qword_1EE042C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A6EA00()
{
  v0 = type metadata accessor for WKPosterDynamicRotationState();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1E4A6EAEC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E4A6EAEC()
{
  if (!qword_1EE0425F0)
  {
    type metadata accessor for WKPosterDynamicRotationAnimationState();
    v0 = sub_1E4AAAB00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0425F0);
    }
  }
}

uint64_t sub_1E4A6EB44(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return sub_1E4A760EC(v2);
}

uint64_t sub_1E4A6EB78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WKPosterDynamicRotationState();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A6EBDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E718, &unk_1E4AB19F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4A6EC4C()
{
  result = qword_1EE0421E0;
  if (!qword_1EE0421E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0421E0);
  }

  return result;
}

uint64_t sub_1E4A6EC98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WKPosterDynamicRotationState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A6ECFC()
{
  v1 = *(type metadata accessor for WKPosterDynamicRotationState() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1E4A6E4F0(v2, v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E4A6ED78()
{
  result = qword_1EE042200;
  if (!qword_1EE042200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E720, &qword_1E4AB33E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042200);
  }

  return result;
}

uint64_t sub_1E4A6EDDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E718, &unk_1E4AB19F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A6EE4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E718, &unk_1E4AB19F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E4A6EF08(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_1E4A6EF40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4A6EFA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4A6F008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WKPosterDynamicRotationState();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A6F0B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WKLayeredStillWallpaper.wallpaperValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKLayeredStillWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 1;
  return result;
}

uint64_t WKLayeredStillWallpaper.thumbnailImageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) thumbnailImageURL];
  if (v3)
  {
    v4 = v3;
    sub_1E4AA9FC0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E4AA9FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id WKLayeredStillWallpaper.thumbnailImage.getter()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

uint64_t WKLayeredStillWallpaper.init(identifier:name:backgroundThumbnailImageURL:foregroundThumbnailImageURL:floatingThumbnailImageURL:backgroundFullSizeImageURL:foregroundFullSizeImageURL:floatingFullSizeImageURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v57 = a3;
  v59 = a2;
  v60 = a1;
  v65 = a9;
  v66 = a10;
  v67 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v54 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v54 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v54 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v54 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v54 - v31;
  v64 = a4;
  sub_1E4A48054(a4, &v54 - v31);
  v63 = a5;
  sub_1E4A48054(a5, v30);
  v62 = a6;
  v55 = v27;
  sub_1E4A48054(a6, v27);
  v61 = a7;
  v56 = v24;
  sub_1E4A48054(a7, v24);
  v58 = v21;
  sub_1E4A48054(v67, v21);
  sub_1E4A48054(v66, v18);
  v59 = sub_1E4AAA870();

  v33 = sub_1E4AA9FE0();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v36 = 0;
  if (v35(v32, 1, v33) != 1)
  {
    v36 = sub_1E4AA9FA0();
    (*(v34 + 8))(v32, v33);
  }

  v57 = v36;
  if (v35(v30, 1, v33) == 1)
  {
    v37 = 0;
  }

  else
  {
    v37 = sub_1E4AA9FA0();
    (*(v34 + 8))(v30, v33);
  }

  v38 = v58;
  v39 = v55;
  if (v35(v55, 1, v33) == 1)
  {
    v40 = 0;
  }

  else
  {
    v40 = sub_1E4AA9FA0();
    (*(v34 + 8))(v39, v33);
  }

  v41 = v56;
  if (v35(v56, 1, v33) == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = sub_1E4AA9FA0();
    (*(v34 + 8))(v41, v33);
  }

  if (v35(v38, 1, v33) == 1)
  {
    v43 = 0;
  }

  else
  {
    v44 = sub_1E4AA9FA0();
    v45 = v38;
    v43 = v44;
    (*(v34 + 8))(v45, v33);
  }

  if (v35(v18, 1, v33) == 1)
  {
    v46 = 0;
  }

  else
  {
    v47 = sub_1E4AA9FA0();
    v48 = v18;
    v46 = v47;
    (*(v34 + 8))(v48, v33);
  }

  v49 = objc_allocWithZone(WKLayeredStillWallpaper);
  v50 = v59;
  v51 = v57;
  v52 = [v49 initWithIdentifier:v60 name:v59 backgroundThumbnailImageURL:v57 foregroundThumbnailImageURL:v37 floatingThumbnailImageURL:v40 backgroundFullSizeImageURL:v42 foregroundFullSizeImageURL:v43 floatingFullSizeImageURL:v46];

  sub_1E4A480C4(v66);
  sub_1E4A480C4(v67);
  sub_1E4A480C4(v61);
  sub_1E4A480C4(v62);
  sub_1E4A480C4(v63);
  sub_1E4A480C4(v64);
  type metadata accessor for WKLayeredStillWallpaper.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v52;
  *v65 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall WKLayeredStillWallpaper.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

id WKLayeredStillWallpaper.copyWallpaperContents(to:)()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 16);
  v2 = sub_1E4AA9FA0();
  v7[0] = 0;
  v3 = [v1 copyWallpaperContentsToDestinationDirectoryURL:v2 error:v7];

  if (v3)
  {
    result = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1E4AA9F60();

    result = swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E4A6F904@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKLayeredStillWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 1;
  return result;
}

uint64_t WKLayeredStillWallpaper.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKLayeredStillWallpaper.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

unint64_t sub_1E4A6FA6C(uint64_t a1)
{
  result = sub_1E4A6FA94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4A6FA94()
{
  result = qword_1EE0438C0;
  if (!qword_1EE0438C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0438C0);
  }

  return result;
}

double sub_1E4A6FB00()
{
  sub_1E4A6FB3C();
  sub_1E4AAA330();
  return v1;
}

unint64_t sub_1E4A6FB3C()
{
  result = qword_1EE043F80;
  if (!qword_1EE043F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043F80);
  }

  return result;
}

double sub_1E4A6FBB0@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EE043F90 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_1EE048C00;
  *a1 = xmmword_1EE048C00;
  return result;
}

uint64_t sub_1E4A6FC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E4A6FC78();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1E4A6FC78()
{
  result = qword_1ECF8E728;
  if (!qword_1ECF8E728)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E728);
  }

  return result;
}

uint64_t WKLayeredAnimationWallpaperInput.init(backgroundAnimationFileURL:foregroundAnimationFileURL:floatingAnimationFileURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v21 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  sub_1E4A48054(a1, &v21 - v16);
  sub_1E4A48054(a2, v15);
  sub_1E4A48054(a3, v12);
  v18 = objc_allocWithZone(WKLayeredAnimationWallpaperInput);
  v19 = sub_1E4A6FF84(v17, v15, v12);
  sub_1E4A480C4(a3);
  sub_1E4A480C4(a2);
  sub_1E4A480C4(a1);
  type metadata accessor for WKLayeredAnimationWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v19;
  *a4 = result;
  return result;
}

uint64_t WKLayeredAnimationWallpaperInput.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKLayeredAnimationWallpaperInput.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

uint64_t WKLayeredAnimationWallpaperInput.description.getter()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_1E4AAA8A0();

  return v2;
}

id sub_1E4A6FF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E4AA9FE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = 0;
  if (v10(a1, 1, v8) != 1)
  {
    v11 = sub_1E4AA9FA0();
    (*(v9 + 8))(a1, v8);
  }

  if (v10(a2, 1, v8) == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1E4AA9FA0();
    (*(v9 + 8))(a2, v8);
  }

  if (v10(a3, 1, v8) == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_1E4AA9FA0();
    (*(v9 + 8))(a3, v8);
  }

  v14 = [v4 initWithBackgroundAnimationFileURL:v11 foregroundAnimationFileURL:v12 floatingAnimationFileURL:v13];

  return v14;
}

unint64_t sub_1E4A70160()
{
  result = qword_1ECF8E730;
  if (!qword_1ECF8E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E730);
  }

  return result;
}

uint64_t sub_1E4A701C4()
{
  sub_1E4A5575C();
  if (sub_1E4AAAB10())
  {

    return 0;
  }

  else
  {
    v1 = sub_1E4AAAB10();

    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t dispatch thunk of WKWallpaperPosterEditingDelegate.editorFinalize(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 96);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1E4A5ECA0;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t type metadata accessor for WKAnimationPackageLayerState()
{
  result = qword_1EE042A50;
  if (!qword_1EE042A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A7071C()
{
  sub_1E4A707B0();
  if (v0 <= 0x3F)
  {
    sub_1E4A70808();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E4A707B0()
{
  if (!qword_1EE042468)
  {
    sub_1E4AAA1C0();
    v0 = sub_1E4AAAB00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE042468);
    }
  }
}

void sub_1E4A70808()
{
  if (!qword_1EE042A68)
  {
    v0 = sub_1E4AAAB00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE042A68);
    }
  }
}

uint64_t getEnumTagSinglePayload for WKAnimationPackageLayerState.DeviceOrientationStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for WKAnimationPackageLayerState.DeviceOrientationStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E4A70908@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WKAnimationPackageLayerState();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 20);
  v12 = sub_1E4AAA1C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(&v10[v11], 1, 1, v12);
  if (!a2)
  {
    if (qword_1EE042498 != -1)
    {
      swift_once();
    }

    v16 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v16, qword_1EE048B28);
    v17 = sub_1E4AAA0C0();
    v18 = sub_1E4AAAA00();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = a3;
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1E4A23000, v17, v18, "Unknown State encountered with no name.", v20, 2u);
      v21 = v20;
      a3 = v19;
      MEMORY[0x1E691FE80](v21, -1, -1);
    }

    v22 = sub_1E4AAA0C0();
    v23 = sub_1E4AAAA10();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1E4A23000, v22, v23, "Unknown State encountered with no name.", v24, 2u);
      MEMORY[0x1E691FE80](v24, -1, -1);
    }

    goto LABEL_11;
  }

  v46 = a3;
  if (sub_1E4AAA900())
  {
    sub_1E4A4DC88(&v10[v11], &qword_1ECF8E678, qword_1E4AB1DF0);
    v15 = MEMORY[0x1E697DBB8];
LABEL_14:
    (*(v13 + 104))(&v10[v11], *v15, v12);
    v27 = 0;
    goto LABEL_16;
  }

  v26 = sub_1E4AAA900();
  sub_1E4A4DC88(&v10[v11], &qword_1ECF8E678, qword_1E4AB1DF0);
  if (v26)
  {
    v15 = MEMORY[0x1E697DBA8];
    goto LABEL_14;
  }

  v27 = 1;
LABEL_16:
  v14(&v10[v11], v27, 1, v12);
  v28 = &v10[*(v6 + 24)];
  v49 = a1;
  v50 = a2;
  strcpy(v48, "LandscapeLeft");
  HIWORD(v48[3]) = -4864;
  sub_1E4A5575C();
  if (sub_1E4AAAB20())
  {
    *v28 = 4;
    v28[8] = 1;
    goto LABEL_24;
  }

  v49 = a1;
  v50 = a2;
  strcpy(v48, "LandscapeRight");
  HIBYTE(v48[3]) = -18;
  if (sub_1E4AAAB20())
  {
    v29 = 3;
LABEL_22:
    *v28 = v29;
    v30 = 1;
LABEL_23:
    v28[8] = v30;
    goto LABEL_24;
  }

  v49 = a1;
  v50 = a2;
  strcpy(v48, "PortraitDown");
  BYTE1(v48[3]) = 0;
  HIWORD(v48[3]) = -5120;
  if (sub_1E4AAAB20())
  {
    v29 = 2;
    goto LABEL_22;
  }

  v49 = a1;
  v50 = a2;
  strcpy(v48, "PortraitUp");
  HIBYTE(v48[2]) = 0;
  v48[3] = -369098752;
  if (sub_1E4AAAB20())
  {
    *v28 = 1;
    v28[8] = 1;
  }

  else
  {
    v49 = a1;
    v50 = a2;
    strcpy(v48, "Landscape");
    HIWORD(v48[2]) = 0;
    v48[3] = -385875968;
    if (sub_1E4AAAB20())
    {
      *v28 = 1;
      v28[8] = 0;
    }

    else
    {
      v49 = a1;
      v50 = a2;
      strcpy(v48, "Portrait");
      BYTE1(v48[2]) = 0;
      HIWORD(v48[2]) = 0;
      v48[3] = -402653184;
      v44 = sub_1E4AAAB20();
      *v28 = 0;
      if ((v44 & 1) == 0)
      {
        v30 = -1;
        goto LABEL_23;
      }

      v28[8] = 0;
    }
  }

LABEL_24:
  v31 = v46;
  if ((sub_1E4AAA8F0() & 1) == 0)
  {
    if (sub_1E4AAA8F0())
    {

      v32 = 1;
LABEL_31:
      *v10 = v32;
      goto LABEL_32;
    }

    if (sub_1E4AAA8F0() & 1) != 0 || (sub_1E4AAA8F0())
    {

      v32 = 2;
      goto LABEL_31;
    }

    if (qword_1EE042498 != -1)
    {
      swift_once();
    }

    v33 = sub_1E4AAA0E0();
    v34 = __swift_project_value_buffer(v33, qword_1EE048B28);

    v45[1] = v34;
    v35 = sub_1E4AAA0C0();
    v36 = sub_1E4AAAA00();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v49 = v38;
      *v37 = 136446210;
      *(v37 + 4) = sub_1E4A85938(a1, a2, &v49);
      _os_log_impl(&dword_1E4A23000, v35, v36, "Unknown State encountered '%{public}s'.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1E691FE80](v38, -1, -1);
      MEMORY[0x1E691FE80](v37, -1, -1);
    }

    v39 = sub_1E4AAA0C0();
    v40 = sub_1E4AAAA10();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v49 = v42;
      *v41 = 136446210;
      v43 = sub_1E4A85938(a1, a2, &v49);

      *(v41 + 4) = v43;
      _os_log_impl(&dword_1E4A23000, v39, v40, "Unknown State encountered '%{public}s'.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x1E691FE80](v42, -1, -1);
      MEMORY[0x1E691FE80](v41, -1, -1);
    }

    else
    {
    }

    a3 = v46;
LABEL_11:
    sub_1E4A4DC88(&v10[v11], &qword_1ECF8E678, qword_1E4AB1DF0);
    return (*(v47 + 56))(a3, 1, 1, v6);
  }

  *v10 = 0;
LABEL_32:
  sub_1E4A68864(v10, v31);
  (*(v47 + 56))(v31, 0, 1, v6);
  return sub_1E4A688C8(v10);
}

uint64_t sub_1E4A71104@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v97 = a5;
  v98 = a2;
  v100 = a1;
  v8 = sub_1E4AAA1C0();
  v94 = *(v8 - 8);
  v95 = v8;
  v9 = *(v94 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v91 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v90 - v12;
  v101 = type metadata accessor for WKAnimationPackageLayerState();
  v13 = *(v101 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v101);
  v99 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v104 = (&v90 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v90 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v90 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v90 - v25;
  IsLandscape = UIInterfaceOrientationIsLandscape(a3);
  v28 = 4;
  if (!IsLandscape)
  {
    v28 = 1;
  }

  v102 = v13;
  v103 = v28;
  v29 = *(a4 + 16);
  v96 = a4;
  v92 = v29;
  if (v29)
  {
    v30 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v31 = *(v13 + 72);
    v32 = a4 + v30;
    v33 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1E4A68864(v32, v26);
      if (*v26 == v100)
      {
        sub_1E4A68988(v26, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v106 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4A68824(0, *(v33 + 16) + 1, 1);
          v33 = v106;
        }

        v5 = *(v33 + 16);
        v35 = *(v33 + 24);
        if (v5 >= v35 >> 1)
        {
          sub_1E4A68824(v35 > 1, v5 + 1, 1);
          v33 = v106;
        }

        *(v33 + 16) = v5 + 1;
        IsLandscape = sub_1E4A68988(v24, v33 + v30 + v5 * v31);
      }

      else
      {
        IsLandscape = sub_1E4A688C8(v26);
      }

      v32 += v31;
      --v29;
    }

    while (v29);
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](IsLandscape);
  *(&v90 - 2) = v98;
  v36 = sub_1E4A721E0(sub_1E4A7326C, (&v90 - 4), v33);
  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = 0;
    v39 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v38 >= *(v36 + 16))
      {
        __break(1u);
LABEL_56:
        swift_once();
LABEL_33:
        v49 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v49, qword_1EE048B28);
        v50 = v93;
        v51 = v94;
        v52 = v95;
        (*(v94 + 16))(v93, v98, v95);

        v53 = sub_1E4AAA0C0();
        v54 = sub_1E4AAAA00();

        if (os_log_type_enabled(v53, v54))
        {
          LODWORD(v98) = v54;
          v104 = v53;
          v55 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v106 = v90;
          *v55 = 136446978;
          v56 = v91;
          (*(v51 + 104))(v91, *MEMORY[0x1E697DBB8], v52);
          v57 = sub_1E4AAA1B0();
          v58 = *(v51 + 8);
          v58(v56, v52);
          v59 = (v57 & 1) == 0;
          if (v57)
          {
            v60 = 0x746867696CLL;
          }

          else
          {
            v60 = 1802658148;
          }

          v61 = 0xE500000000000000;
          v62 = v50;
          if (v59)
          {
            v63 = 0xE400000000000000;
          }

          else
          {
            v63 = 0xE500000000000000;
          }

          v58(v62, v52);
          v64 = sub_1E4A85938(v60, v63, &v106);

          *(v55 + 4) = v64;
          *(v55 + 12) = 2082;
          v65 = WKStringForInterfaceOrientation(v103);
          v66 = sub_1E4AAA8A0();
          v68 = v67;

          v69 = sub_1E4A85938(v66, v68, &v106);

          *(v55 + 14) = v69;
          *(v55 + 22) = 2082;
          if (v100)
          {
            if (v100 == 1)
            {
              v61 = 0xE600000000000000;
              v70 = 0x64656B636F6CLL;
            }

            else
            {
              v61 = 0xE800000000000000;
              v70 = 0x64656B636F6C6E75;
            }
          }

          else
          {
            v70 = 0x7065656C73;
          }

          v71 = sub_1E4A85938(v70, v61, &v106);

          *(v55 + 24) = v71;
          *(v55 + 32) = 2082;
          v72 = MEMORY[0x1E69E7CC0];
          if (v92)
          {
            v103 = v55;
            v105 = MEMORY[0x1E69E7CC0];
            v73 = v92;
            sub_1E4A68844(0, v92, 0);
            v72 = v105;
            v74 = v96 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
            v75 = *(v37 + 72);
            do
            {
              v76 = v99;
              sub_1E4A68864(v74, v99);
              sub_1E4A71BCC();
              v77 = sub_1E4AAA8B0();
              v79 = v78;

              sub_1E4A688C8(v76);
              v105 = v72;
              v81 = *(v72 + 16);
              v80 = *(v72 + 24);
              if (v81 >= v80 >> 1)
              {
                sub_1E4A68844((v80 > 1), v81 + 1, 1);
                v72 = v105;
              }

              *(v72 + 16) = v81 + 1;
              v82 = v72 + 16 * v81;
              *(v82 + 32) = v77;
              *(v82 + 40) = v79;
              v74 += v75;
              --v73;
            }

            while (v73);
            v37 = v102;
            v55 = v103;
            v5 = v97;
          }

          v105 = v72;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E638, &qword_1E4AB1790);
          sub_1E4A68924();
          v83 = sub_1E4AAA850();
          v85 = v84;

          v86 = sub_1E4A85938(v83, v85, &v106);

          *(v55 + 34) = v86;
          v87 = v104;
          _os_log_impl(&dword_1E4A23000, v104, v98, "Failed to resolve the animation state for 'colorScheme: %{public}s' 'deviceOrientation: %{public}s' 'deviceState: %{public}s' out of the possible '%{public}s'.", v55, 0x2Au);
          v88 = v90;
          swift_arrayDestroy();
          MEMORY[0x1E691FE80](v88, -1, -1);
          MEMORY[0x1E691FE80](v55, -1, -1);
        }

        else
        {

          (*(v51 + 8))(v50, v52);
        }

        v48 = 1;
        return (*(v37 + 56))(v5, v48, 1, v101);
      }

      v40 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v41 = *(v102 + 72);
      sub_1E4A68864(v36 + v40 + v41 * v38, v21);
      v42 = &v21[*(v101 + 24)];
      v43 = *v42;
      v44 = v42[8];
      v45 = UIInterfaceOrientationIsLandscape(v103);
      if (v44 == 255)
      {
        break;
      }

      if (v44)
      {
        if (v43 == v103)
        {
          break;
        }
      }

      else if (v45 == (v43 & 1))
      {
        break;
      }

      sub_1E4A688C8(v21);
LABEL_17:
      if (v37 == ++v38)
      {
        goto LABEL_30;
      }
    }

    sub_1E4A68988(v21, v104);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v106 = v39;
    if ((v46 & 1) == 0)
    {
      sub_1E4A68824(0, *(v39 + 16) + 1, 1);
      v39 = v106;
    }

    v5 = *(v39 + 16);
    v47 = *(v39 + 24);
    if (v5 >= v47 >> 1)
    {
      sub_1E4A68824(v47 > 1, v5 + 1, 1);
      v39 = v106;
    }

    *(v39 + 16) = v5 + 1;
    sub_1E4A68988(v104, v39 + v40 + v5 * v41);
    goto LABEL_17;
  }

  v39 = MEMORY[0x1E69E7CC0];
LABEL_30:

  if (!*(v39 + 16))
  {
    v5 = v97;
    v37 = v102;
    if (qword_1EE042498 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_33;
  }

  v37 = v102;
  v5 = v97;
  sub_1E4A68864(v39 + ((*(v102 + 80) + 32) & ~*(v102 + 80)), v97);

  v48 = 0;
  return (*(v37 + 56))(v5, v48, 1, v101);
}

uint64_t sub_1E4A719FC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1E4AAAE00();
  if (v2)
  {
    MEMORY[0x1E691F1E0](1);
    MEMORY[0x1E691F1E0](v1);
  }

  else
  {
    MEMORY[0x1E691F1E0](0);
    sub_1E4AAAE20();
  }

  return sub_1E4AAAE40();
}

uint64_t sub_1E4A71A74()
{
  v1 = *v0;
  if (v0[1])
  {
    MEMORY[0x1E691F1E0](1);
    return MEMORY[0x1E691F1E0](v1);
  }

  else
  {
    MEMORY[0x1E691F1E0](0);
    return sub_1E4AAAE20();
  }
}

uint64_t sub_1E4A71AC8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1E4AAAE00();
  if (v2)
  {
    MEMORY[0x1E691F1E0](1);
    MEMORY[0x1E691F1E0](v1);
  }

  else
  {
    MEMORY[0x1E691F1E0](0);
    sub_1E4AAAE20();
  }

  return sub_1E4AAAE40();
}

uint64_t sub_1E4A71B3C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = *a2 ^ *a1 ^ 1;
  if (*(a2 + 8))
  {
    v3 = 0;
  }

  if (*(a1 + 8))
  {
    v3 = v2;
  }

  return v3 & 1;
}

unint64_t sub_1E4A71B78()
{
  result = qword_1ECF8E738;
  if (!qword_1ECF8E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E738);
  }

  return result;
}

uint64_t sub_1E4A71BCC()
{
  v1 = sub_1E4AAA1C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E678, qword_1E4AB1DF0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v52 - v12;
  v14 = type metadata accessor for WKAnimationPackageLayerState();
  v56 = *(v14 + 20);
  sub_1E4A6C5D8(&v0[v56], v13);
  v55 = v2;
  v15 = *(v2 + 48);
  v16 = v15(v13, 1, v1);
  sub_1E4A4DC88(v13, &qword_1ECF8E678, qword_1E4AB1DF0);
  if (v16 == 1 && v0[*(v14 + 24) + 8] == 255)
  {
    if (!*v0)
    {
      return 0x7065656C53;
    }

    if (*v0 == 1)
    {
      return 0x64656B636F4CLL;
    }

    return 0x6B636F6C6E55;
  }

  v17 = v15;
  v18 = *v0;
  v19 = sub_1E4A72C44(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  v22 = v21 + 1;
  if (v18)
  {
    v23 = 0xE400000000000000;
    if (v18 == 1)
    {
      v24 = 1801678668;
    }

    else
    {
      v24 = 1701670728;
    }
  }

  else
  {
    v23 = 0xE500000000000000;
    v24 = 0x7065656C53;
  }

  if (v20 >> 1 <= v21)
  {
    v52 = v21 + 1;
    v51 = sub_1E4A72C44((v20 > 1), v21 + 1, 1, v19);
    v22 = v52;
    v19 = v51;
  }

  *(v19 + 2) = v22;
  v25 = &v19[16 * v21];
  *(v25 + 4) = v24;
  *(v25 + 5) = v23;
  v26 = &v0[*(v14 + 24)];
  v27 = v26[8];
  if (v27 != 255)
  {
    v28 = *v26;
    v29 = v17;
    if (v27)
    {
      v30 = *(v19 + 3);
      v31 = v30 >> 1;
      v32 = v21 + 2;
      switch(v28)
      {
        case 2:
          v33 = 0x7469617274726F50;
          v34 = 0xEC0000006E776F44;
          if (v31 <= v22)
          {
            goto LABEL_42;
          }

          break;
        case 4:
          v33 = 0x70616373646E614CLL;
          v34 = 0xED00007466654C65;
          if (v31 <= v22)
          {
LABEL_42:
            v50 = v22;
            v19 = sub_1E4A72C44((v30 > 1), v32, 1, v19);
            v35 = v56;
            v22 = v50;
            goto LABEL_26;
          }

          break;
        case 3:
          v33 = 0x70616373646E614CLL;
          v34 = 0xEE00746867695265;
          if (v31 <= v22)
          {
            goto LABEL_42;
          }

          break;
        default:
          v33 = 0x7469617274726F50;
          v34 = 0xEA00000000007055;
          if (v31 <= v22)
          {
            goto LABEL_42;
          }

          break;
      }
    }

    else
    {
      if (v28)
      {
        v33 = 0x70616373646E614CLL;
      }

      else
      {
        v33 = 0x7469617274726F50;
      }

      if (v28)
      {
        v34 = 0xE900000000000065;
      }

      else
      {
        v34 = 0xE800000000000000;
      }

      v30 = *(v19 + 3);
      v32 = v21 + 2;
      if (v22 >= v30 >> 1)
      {
        goto LABEL_42;
      }
    }

    v35 = v56;
LABEL_26:
    *(v19 + 2) = v32;
    v36 = &v19[16 * v22];
    *(v36 + 4) = v33;
    *(v36 + 5) = v34;
    goto LABEL_27;
  }

  v29 = v17;
  v35 = v56;
LABEL_27:
  sub_1E4A6C5D8(&v0[v35], v11);
  if (v29(v11, 1, v1) == 1)
  {
    sub_1E4A4DC88(v11, &qword_1ECF8E678, qword_1E4AB1DF0);
  }

  else
  {
    v38 = v54;
    v37 = v55;
    (*(v55 + 32))(v54, v11, v1);
    v39 = v53;
    (*(v37 + 16))(v53, v38, v1);
    v40 = (*(v37 + 88))(v39, v1);
    v42 = *(v19 + 2);
    v41 = *(v19 + 3);
    v43 = v41 >> 1;
    v44 = v42 + 1;
    if (v40 == *MEMORY[0x1E697DBA8])
    {
      if (v43 <= v42)
      {
        v19 = sub_1E4A72C44((v41 > 1), v42 + 1, 1, v19);
      }

      (*(v55 + 8))(v54, v1);
      *(v19 + 2) = v44;
      v45 = &v19[16 * v42];
      *(v45 + 4) = 1802658116;
      *(v45 + 5) = 0xE400000000000000;
    }

    else
    {
      if (v43 <= v42)
      {
        v19 = sub_1E4A72C44((v41 > 1), v42 + 1, 1, v19);
      }

      v46 = *(v55 + 8);
      v46(v54, v1);
      *(v19 + 2) = v44;
      v47 = &v19[16 * v42];
      *(v47 + 4) = 0x746867694CLL;
      *(v47 + 5) = 0xE500000000000000;
      v46(v53, v1);
    }
  }

  v57 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E638, &qword_1E4AB1790);
  sub_1E4A68924();
  v48 = sub_1E4AAA850();

  return v48;
}

uint64_t sub_1E4A721E0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for WKAnimationPackageLayerState();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_1E4A68864(a3 + v16 + v17 * v14, v13);
      v18 = a1(v13);
      if (v3)
      {
        sub_1E4A688C8(v13);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1E4A68988(v13, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4A68824(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1E4A68824(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_1E4A68988(v25, v15 + v16 + v21 * v17);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_1E4A688C8(v13);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_1E4A72408(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4AAA1C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8EA30, &qword_1E4AB1F78);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E678, qword_1E4AB1DF0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v33 = &v29[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v29[-v18];
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v29[-v20];
  v22 = *(type metadata accessor for WKAnimationPackageLayerState() + 20);
  (*(v5 + 16))(v21, a2, v4);
  (*(v5 + 56))(v21, 0, 1, v4);
  v23 = *(v9 + 56);
  v34 = a1;
  v32 = v22;
  sub_1E4A6C5D8(a1 + v22, v12);
  sub_1E4A6C5D8(v21, &v12[v23]);
  v24 = *(v5 + 48);
  if (v24(v12, 1, v4) == 1)
  {
    sub_1E4A4DC88(v21, &qword_1ECF8E678, qword_1E4AB1DF0);
    v25 = 1;
    if (v24(&v12[v23], 1, v4) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1E4A6C5D8(v12, v19);
    if (v24(&v12[v23], 1, v4) != 1)
    {
      v27 = v31;
      (*(v5 + 32))(v31, &v12[v23], v4);
      sub_1E4A73214(&qword_1EE043A20, MEMORY[0x1E697DBD0]);
      v30 = sub_1E4AAA860();
      v28 = *(v5 + 8);
      v28(v27, v4);
      sub_1E4A4DC88(v21, &qword_1ECF8E678, qword_1E4AB1DF0);
      v28(v19, v4);
      sub_1E4A4DC88(v12, &qword_1ECF8E678, qword_1E4AB1DF0);
      if (v30)
      {
        return 1;
      }

      goto LABEL_7;
    }

    sub_1E4A4DC88(v21, &qword_1ECF8E678, qword_1E4AB1DF0);
    (*(v5 + 8))(v19, v4);
  }

  sub_1E4A4DC88(v12, &unk_1ECF8EA30, &qword_1E4AB1F78);
LABEL_7:
  v12 = v33;
  sub_1E4A6C5D8(v34 + v32, v33);
  v25 = v24(v12, 1, v4) == 1;
LABEL_8:
  sub_1E4A4DC88(v12, &qword_1ECF8E678, qword_1E4AB1DF0);
  return v25;
}

uint64_t sub_1E4A72838()
{
  v1 = v0;
  v2 = sub_1E4AAA1C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E678, qword_1E4AB1DF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - v9;
  *v1;
  sub_1E4AAA8C0();

  v11 = type metadata accessor for WKAnimationPackageLayerState();
  sub_1E4A6C5D8(&v1[*(v11 + 20)], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1E4AAAE20();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1E4AAAE20();
    sub_1E4A73214(&qword_1EE043A28, MEMORY[0x1E697DBD0]);
    sub_1E4AAA840();
    (*(v3 + 8))(v6, v2);
  }

  v12 = &v1[*(v11 + 24)];
  v13 = v12[8];
  if (v13 != 255)
  {
    v14 = *v12;
    sub_1E4AAAE20();
    if (v13)
    {
      MEMORY[0x1E691F1E0](1);
      return MEMORY[0x1E691F1E0](v14);
    }

    MEMORY[0x1E691F1E0](0);
  }

  return sub_1E4AAAE20();
}

uint64_t sub_1E4A72ADC()
{
  sub_1E4AAAE00();
  sub_1E4A72838();
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A72B20()
{
  sub_1E4AAAE00();
  sub_1E4A72838();
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A72B6C()
{
  sub_1E4A71BCC();
  v0 = sub_1E4AAA8B0();

  return v0;
}

char *sub_1E4A72C44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E648, &qword_1E4AB1798);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1E4A72D50(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E748, &unk_1E4AB1F80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E280, &qword_1E4AAEF20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

BOOL sub_1E4A72E98(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1E4AAA1C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E678, qword_1E4AB1DF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8EA30, &qword_1E4AB1F78);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  if (*a1 != *a2)
  {
    return 0;
  }

  v31 = type metadata accessor for WKAnimationPackageLayerState();
  v17 = *(v31 + 20);
  v18 = *(v13 + 48);
  sub_1E4A6C5D8(&a1[v17], v16);
  sub_1E4A6C5D8(&a2[v17], &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1E4A4DC88(v16, &qword_1ECF8E678, qword_1E4AB1DF0);
      goto LABEL_10;
    }

LABEL_7:
    sub_1E4A4DC88(v16, &unk_1ECF8EA30, &qword_1E4AB1F78);
    return 0;
  }

  sub_1E4A6C5D8(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_7;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_1E4A73214(&qword_1EE043A20, MEMORY[0x1E697DBD0]);
  v21 = sub_1E4AAA860();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_1E4A4DC88(v16, &qword_1ECF8E678, qword_1E4AB1DF0);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v23 = *(v31 + 24);
  v24 = &a1[v23];
  v25 = a1[v23 + 8];
  v26 = &a2[v23];
  v27 = a2[v23 + 8];
  if (v25 == 255)
  {
    return v27 == 255;
  }

  if (v27 == 255)
  {
    return 0;
  }

  v28 = *v24;
  v29 = *v26;
  if (v25)
  {
    if ((v27 & 1) == 0 || v28 != v29)
    {
      return 0;
    }
  }

  else if (v27 & 1) != 0 || ((v29 ^ v28))
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1E4A73214(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4A7329C()
{
  v1 = *v0;
  sub_1E4AAAE00();
  sub_1E4AAA8C0();

  return sub_1E4AAAE40();
}

uint64_t sub_1E4A73334()
{
  *v0;
  *v0;
  sub_1E4AAA8C0();
}

uint64_t sub_1E4A733B8()
{
  v1 = *v0;
  sub_1E4AAAE00();
  sub_1E4AAA8C0();

  return sub_1E4AAAE40();
}

uint64_t sub_1E4A73468()
{
  v1 = 0x64656B636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x64656B636F6C6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7065656C73;
  }
}

unint64_t sub_1E4A734C0()
{
  result = qword_1ECF8E750;
  if (!qword_1ECF8E750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E758, qword_1E4AB1FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E750);
  }

  return result;
}

unint64_t sub_1E4A73528()
{
  result = qword_1ECF8E760;
  if (!qword_1ECF8E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E760);
  }

  return result;
}

unint64_t sub_1E4A73580()
{
  result = qword_1EE0430A0;
  if (!qword_1EE0430A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0430A0);
  }

  return result;
}

__n128 __swift_memcpy185_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1E4A73610(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 185))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 176);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4A73658(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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
      *(result + 176) = (a2 - 1);
      return result;
    }

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E4A736F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[9];
  v27[8] = v1[8];
  v28 = v3;
  *v29 = v1[10];
  *&v29[9] = *(v1 + 169);
  v4 = v1[5];
  v27[4] = v1[4];
  v27[5] = v4;
  v5 = v1[7];
  v27[6] = v1[6];
  v27[7] = v5;
  v6 = v1[1];
  v27[0] = *v1;
  v27[1] = v6;
  v7 = v1[3];
  v27[2] = v1[2];
  v27[3] = v7;
  v8 = WKPosterCanvasSize();
  v10 = v9;
  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v30.size.width = v8;
  v30.size.height = v10;
  Height = CGRectGetHeight(v30);
  v12 = *(&v28 + 1);
  v13 = *&v29[8];
  [*(*&v29[16] + 16) stripeHeightFactor];
  v15 = Height * *v29 * v14;
  *a1 = sub_1E4AAA6F0();
  a1[1] = v16;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E768, &qword_1E4AB2168) + 44);
  v26 = &unk_1F5E999A8;
  v18 = swift_allocObject();
  v19 = v1[9];
  *(v18 + 144) = v1[8];
  *(v18 + 160) = v19;
  *(v18 + 176) = v1[10];
  *(v18 + 185) = *(v1 + 169);
  v20 = v1[5];
  *(v18 + 80) = v1[4];
  *(v18 + 96) = v20;
  v21 = v1[7];
  *(v18 + 112) = v1[6];
  *(v18 + 128) = v21;
  v22 = v1[1];
  *(v18 + 16) = *v1;
  *(v18 + 32) = v22;
  v23 = v1[3];
  *(v18 + 48) = v1[2];
  *(v18 + 64) = v23;
  *(v18 + 208) = Height * v12 + v15 * -3.0;
  *(v18 + 216) = v15;
  *(v18 + 224) = Height * v13;
  *(v18 + 232) = 0;
  *(v18 + 240) = 0;
  *(v18 + 248) = v8;
  *(v18 + 256) = v10;
  sub_1E4A73BC0(v27, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E770, &qword_1E4AB2170);
  sub_1E4A49E30(&qword_1EE042218, &qword_1ECF8E770, &qword_1E4AB2170);
  sub_1E4A73BF8();
  sub_1E4A73C4C();
  return sub_1E4AAA6D0();
}

unsigned __int8 *sub_1E4A73918@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, CGFloat a7@<D3>, CGFloat a8@<D4>, CGFloat a9@<D5>, CGFloat a10@<D6>)
{
  v17 = *result;
  v18 = 0.0;
  v19 = 0.5;
  if (byte_1F5E99A18 == v17)
  {
    goto LABEL_8;
  }

  v18 = 1.0;
  if (byte_1F5E99A19 == v17)
  {
    goto LABEL_8;
  }

  v18 = 2.0;
  if (byte_1F5E99A1A == v17)
  {
    goto LABEL_8;
  }

  v18 = 3.0;
  if (byte_1F5E99A1B == v17)
  {
    goto LABEL_8;
  }

  v18 = 4.0;
  if (byte_1F5E99A1C == v17)
  {
    goto LABEL_8;
  }

  if (byte_1F5E99A1D == v17)
  {
    v18 = 5.0;
    v19 = 0.0;
LABEL_8:
    v20 = v18 * a5 + a4;
    v40 = v19 * a5 + a5;
    v60.origin.x = a7;
    v60.origin.y = a8;
    v60.size.width = a9;
    v60.size.height = a10;
    MinX = CGRectGetMinX(v60);
    v61.origin.x = a7;
    v61.origin.y = a8;
    v61.size.width = a9;
    v61.size.height = a10;
    v39 = MinX - CGRectGetWidth(v61);
    v36 = v20 + a6;
    v62.origin.x = a7;
    v62.origin.y = a8;
    v62.size.width = a9;
    v62.size.height = a10;
    v22 = CGRectGetMinX(v62);
    v63.origin.x = a7;
    v63.origin.y = a8;
    v63.size.width = a9;
    v63.size.height = a10;
    v37 = v20 + a6 + v40;
    v38 = v22 - CGRectGetWidth(v63);
    v64.origin.x = a7;
    v64.origin.y = a8;
    v64.size.width = a9;
    v64.size.height = a10;
    MaxX = CGRectGetMaxX(v64);
    v65.origin.x = a7;
    v65.origin.y = a8;
    v65.size.width = a9;
    v65.size.height = a10;
    v24 = MaxX + CGRectGetWidth(v65);
    v25 = v20 - (a6 + a6);
    v66.origin.x = a7;
    v66.origin.y = a8;
    v66.size.width = a9;
    v66.size.height = a10;
    v26 = CGRectGetMaxX(v66);
    v67.origin.x = a7;
    v67.origin.y = a8;
    v67.size.width = a9;
    v67.size.height = a10;
    v27 = v26 + CGRectGetWidth(v67);
    v28 = *(a2 + 184);
    *&v41[0] = swift_getKeyPath();
    result = sub_1E4A4E620(v41);
    v56 = v46;
    v57 = v47;
    v58 = v48;
    LOBYTE(v59) = v49;
    v29 = v42;
    v52 = v42;
    v53 = v43;
    v54 = v44;
    v55 = v45;
    v50 = v41[0];
    v51 = v41[1];
    v30 = v47;
    *(a3 + 96) = v46;
    *(a3 + 112) = v30;
    *(a3 + 128) = v58;
    v31 = v59;
    v32 = v53;
    v33 = v54;
    v34 = v55;
    *(a3 + 32) = v29;
    *(a3 + 48) = v32;
    *(a3 + 64) = v33;
    *(a3 + 80) = v34;
    v35 = v51;
    *a3 = v50;
    *(a3 + 16) = v35;
    *(a3 + 144) = v31;
    *(a3 + 152) = 0;
    *(a3 + 160) = v17;
    *(a3 + 161) = v28;
    *(a3 + 168) = v39;
    *(a3 + 176) = v36;
    *(a3 + 184) = v38;
    *(a3 + 192) = v37;
    *(a3 + 200) = v24;
    *(a3 + 208) = v25;
    *(a3 + 216) = v27;
    *(a3 + 224) = v25 + v40;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E4A73BF8()
{
  result = qword_1EE043038;
  if (!qword_1EE043038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043038);
  }

  return result;
}

unint64_t sub_1E4A73C4C()
{
  result = qword_1EE043088;
  if (!qword_1EE043088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043088);
  }

  return result;
}

__n128 __swift_memcpy232_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1E4A73CEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 232))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 144);
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

uint64_t sub_1E4A73D34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 232) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 232) = 0;
    }

    if (a2)
    {
      *(result + 144) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E4A73DDC@<X0>(uint64_t a1@<X8>)
{
  v25 = v1[6];
  v26 = v1[7];
  v27 = v1[8];
  v21 = v1[2];
  v22 = v1[3];
  v23 = v1[4];
  v24 = v1[5];
  v19 = *v1;
  v20 = v1[1];
  v3 = *(v1 + 160);
  v4 = *(v1 + 21);
  v5 = *(v1 + 22);
  v6 = *(v1 + 23);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  v9 = *(v1 + 26);
  v10 = *(v1 + 27);
  v11 = *(v1 + 28);
  v28 = *(v1 + 18);
  v29 = *(v1 + 19);
  LODWORD(v30) = *(v1 + 161);
  *(&v30 + 3) = *(v1 + 41);
  v12 = sub_1E4A73F04();
  KeyPath = swift_getKeyPath();
  v14 = sub_1E4AAA730();
  v15 = sub_1E4AAA450();
  result = sub_1E4AAA740();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = KeyPath;
  *(a1 + 72) = v12;
  *(a1 + 80) = v3;
  *(a1 + 88) = v14;
  *(a1 + 96) = v15;
  *(a1 + 104) = v17;
  *(a1 + 112) = v18;
  *(a1 + 120) = 1;
  return result;
}

uint64_t sub_1E4A73F04()
{
  v1 = sub_1E4AAA320();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0[7];
  v7 = v0[5];
  v64 = v0[6];
  v65 = v6;
  v8 = v0[7];
  v66 = v0[8];
  v9 = v0[3];
  v10 = v0[1];
  v60 = v0[2];
  v61 = v9;
  v11 = v0[3];
  v12 = v0[5];
  v62 = v0[4];
  v63 = v12;
  v13 = v0[1];
  v58 = *v0;
  v59 = v13;
  v68[6] = v64;
  v68[7] = v8;
  v68[8] = v0[8];
  v68[2] = v60;
  v68[3] = v11;
  v68[4] = v62;
  v68[5] = v7;
  v67 = *(v0 + 144);
  v14 = *(v0 + 160);
  v15 = *(v0 + 161);
  v69 = *(v0 + 144);
  v68[0] = v58;
  v68[1] = v10;
  if (sub_1E4A49C60(v68) == 1)
  {
    nullsub_1(v68);
    v35 = v64;
    v36 = v65;
    v37 = v66;
    v38 = v67;
    v31 = v60;
    v32 = v61;
    v33 = v62;
    v34 = v63;
    v29 = v58;
    v30 = v59;
    v16 = nullsub_1(&v29);
    v49 = *v16;
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[4];
    v52 = v16[3];
    v53 = v19;
    v50 = v17;
    v51 = v18;
    v20 = v16[5];
    v21 = v16[6];
    v22 = v16[8];
    v56 = v16[7];
    v57 = v22;
    v54 = v20;
    v55 = v21;
    v48 = v67;
    v46 = v65;
    v47 = v66;
    v44 = v63;
    v45 = v64;
    v42 = v61;
    v43 = v62;
    v40 = v59;
    v41 = v60;
    v39 = v58;
    v23 = nullsub_1(&v39);
    sub_1E4A49D24(v23, v28);
  }

  else
  {
    nullsub_1(v68);
    v35 = v64;
    v36 = v65;
    v37 = v66;
    v38 = v67;
    v31 = v60;
    v32 = v61;
    v33 = v62;
    v34 = v63;
    v29 = v58;
    v30 = v59;
    v24 = *nullsub_1(&v29);
    v39 = v58;
    v40 = v59;
    v43 = v62;
    v44 = v63;
    v41 = v60;
    v42 = v61;
    v48 = v67;
    v46 = v65;
    v47 = v66;
    v45 = v64;
    v25 = *nullsub_1(&v39);

    sub_1E4AAAA10();
    v26 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v58);
    (*(v2 + 8))(v5, v1);
  }

  v45 = v55;
  v46 = v56;
  v47 = v57;
  v41 = v51;
  v42 = v52;
  v43 = v53;
  v44 = v54;
  v39 = v49;
  v40 = v50;
  sub_1E4A49CD0(&v39);
  if (((v14 == 0) & v15) == 1 && UIInterfaceOrientationIsLandscape(*(&v43 + 1)))
  {
    return sub_1E4AAA5E0();
  }

  else
  {
    return sub_1E4AA2CBC(v14);
  }
}

unint64_t sub_1E4A74248()
{
  result = qword_1EE0423A8;
  if (!qword_1EE0423A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E780, &qword_1E4AB2278);
    sub_1E4A74300();
    sub_1E4A49E30(&qword_1EE0422A8, &qword_1ECF8E790, &unk_1E4AB2290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423A8);
  }

  return result;
}

unint64_t sub_1E4A74300()
{
  result = qword_1EE042400;
  if (!qword_1EE042400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E788, &unk_1E4AB2280);
    sub_1E4A743B8();
    sub_1E4A49E30(&qword_1EE043998, &qword_1ECF8E228, &qword_1E4AAEE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042400);
  }

  return result;
}

unint64_t sub_1E4A743B8()
{
  result = qword_1EE042918;
  if (!qword_1EE042918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042918);
  }

  return result;
}

uint64_t sub_1E4A7440C()
{
  v1 = v0;
  swift_getKeyPath();
  v42 = v0;
  sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
  sub_1E4AAA060();

  v2 = *(v0 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  v4 = *(v1 + 16);

  if (![v3 valueBasedWallpaperForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"default"])
  {

    return 0;
  }

  sub_1E4A57768(v44);
  swift_unknownObjectRelease();

  v5 = v45;
  v6 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  (*(v6 + 24))(&v42, v5, v6);
  v7 = v42;
  v8 = v43;
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  if (v8 != 2)
  {
    sub_1E4A4EF3C(v7, v8);
    return 0;
  }

  swift_getKeyPath();
  v44[0] = v1;
  sub_1E4AAA060();

  v9 = *(v1 + 104);
  v10 = objc_opt_self();
  v11 = [v10 mainScreen];
  v12 = [v11 fixedCoordinateSpace];

  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  swift_unknownObjectRelease();
  swift_getKeyPath();
  v44[0] = v1;
  sub_1E4AAA060();

  v44[0] = v9;
  v44[1] = v14;
  v44[2] = v16;
  v45 = v18;
  v46 = v20;
  v21 = *(v1 + 128);
  v47 = *(v1 + 112);
  v48 = v21;
  swift_getKeyPath();
  v42 = v1;
  sub_1E4AAA060();

  swift_beginAccess();
  v22 = *(v1 + 200);
  if (*(v22 + 16))
  {
    v23 = *(v1 + 200);

    v24 = sub_1E4A8F274(v44);
    if (v25)
    {
      v26 = (*(v22 + 56) + 24 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];
      sub_1E4A4EF3C(v7, 2u);

      return v27;
    }
  }

  v31 = [v10 mainScreen];
  v32 = [v31 fixedCoordinateSpace];

  [v32 bounds];
  swift_unknownObjectRelease();
  v41 = v7;
  v33 = sub_1E4A768E4(&v41);
  v35 = v34;
  v37 = v36;
  swift_getKeyPath();
  v41 = v1;
  sub_1E4AAA060();

  v41 = v1;
  swift_getKeyPath();
  sub_1E4AAA080();

  swift_beginAccess();
  v38 = *(v1 + 200);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v1 + 200);
  *(v1 + 200) = 0x8000000000000000;
  sub_1E4A95424(v44, isUniquelyReferenced_nonNull_native, v33, v35, v37);
  *(v1 + 200) = v40;
  swift_endAccess();
  v41 = v1;
  swift_getKeyPath();
  sub_1E4AAA070();
  sub_1E4A4EF3C(v7, 2u);

  return *&v33;
}

double sub_1E4A748B0()
{
  swift_getKeyPath();
  sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
  sub_1E4AAA060();

  return *(v0 + 176);
}

uint64_t sub_1E4A74950@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
  sub_1E4AAA060();

  *a1 = *(v1 + 16);
}

uint64_t sub_1E4A749FC@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v16[0] = v1;
  sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
  sub_1E4AAA060();

  v3 = v1[7];
  v4 = v1[9];
  v21 = v1[8];
  v22 = v4;
  v5 = v1[9];
  v23 = v1[10];
  v6 = v1[3];
  v7 = v1[5];
  v17 = v1[4];
  v8 = v17;
  v18 = v7;
  v9 = v1[5];
  v10 = v1[7];
  v19 = v1[6];
  v11 = v19;
  v20 = v10;
  v12 = v1[3];
  v16[0] = v1[2];
  v13 = v16[0];
  v16[1] = v12;
  a1[6] = v21;
  a1[7] = v5;
  a1[8] = v1[10];
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v11;
  a1[5] = v3;
  *a1 = v13;
  a1[1] = v6;
  return sub_1E4A49D24(v16, &v15);
}

uint64_t sub_1E4A74B00()
{
  swift_getKeyPath();
  sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
  sub_1E4AAA060();

  return *(v0 + 192);
}

uint64_t sub_1E4A74BA0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  v5 = sub_1E4A76F94(v4, v2);

  if (v5)
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
    sub_1E4AAA050();
  }

  else
  {
    v7 = *(v1 + 16);
    *(v1 + 16) = v2;
  }
}

uint64_t sub_1E4A74CF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
}

uint64_t sub_1E4A74D30(float64x2_t *a1)
{
  v2 = a1[5];
  v3 = a1[7];
  v42 = a1[6];
  v43 = v3;
  v4 = a1[7];
  v44 = a1[8];
  v5 = a1[1];
  v6 = a1[3];
  v38 = a1[2];
  v39 = v6;
  v7 = a1[3];
  v8 = a1[5];
  v40 = a1[4];
  v41 = v8;
  v9 = a1[1];
  v36 = *a1;
  v37 = v9;
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1[6];
  v32 = v1[7];
  v33 = v10;
  v13 = v1[10];
  v34 = v11;
  v35 = v13;
  v14 = v1[4];
  v15 = v1[5];
  v16 = v1[2];
  v28 = v1[3];
  v29 = v14;
  v30 = v15;
  v31 = v12;
  v26[6] = v42;
  v26[7] = v4;
  v26[8] = a1[8];
  v27 = v16;
  v26[2] = v38;
  v26[3] = v7;
  v26[4] = v40;
  v26[5] = v2;
  v26[0] = v36;
  v26[1] = v5;
  if (_s12WallpaperKit27WKPosterEnvironmentSnapshotV2eeoiySbAC_ACtFZ_0(&v27, v26))
  {
    v17 = v1[9];
    v33 = v1[8];
    v34 = v17;
    v35 = v1[10];
    v18 = v1[5];
    v29 = v1[4];
    v30 = v18;
    v19 = v1[7];
    v31 = v1[6];
    v32 = v19;
    v20 = v1[3];
    v27 = v1[2];
    v28 = v20;
    v21 = v41;
    v1[6] = v40;
    v1[7] = v21;
    v22 = v43;
    v1[8] = v42;
    v1[9] = v22;
    v1[10] = v44;
    v23 = v39;
    v1[4] = v38;
    v1[5] = v23;
    v24 = v37;
    v1[2] = v36;
    v1[3] = v24;
    return sub_1E4A49CD0(&v27);
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    *&v27.f64[0] = v1;
    sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
    sub_1E4AAA050();
    sub_1E4A49CD0(&v36);
  }
}

uint64_t sub_1E4A74F20(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v12[6] = a1[8];
  v12[7] = v2;
  v12[8] = a1[10];
  v3 = a1[5];
  v12[2] = a1[4];
  v12[3] = v3;
  v4 = a1[7];
  v12[4] = a1[6];
  v12[5] = v4;
  v5 = a1[3];
  v12[0] = a1[2];
  v12[1] = v5;
  v6 = a2[5];
  a1[6] = a2[4];
  a1[7] = v6;
  v7 = a2[7];
  a1[8] = a2[6];
  a1[9] = v7;
  a1[10] = a2[8];
  v8 = a2[3];
  a1[4] = a2[2];
  a1[5] = v8;
  v9 = a2[1];
  a1[2] = *a2;
  a1[3] = v9;
  sub_1E4A49D24(a2, &v11);
  return sub_1E4A49CD0(v12);
}

double sub_1E4A74FB4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
  sub_1E4AAA060();

  result = *(v3 + 176);
  *a2 = result;
  return result;
}

uint64_t sub_1E4A75084(double a1)
{
  v3 = *(v1 + 176);
  result = sub_1E4AAA5B0();
  if (result)
  {
    *(v1 + 176) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
    sub_1E4AAA050();
  }

  return result;
}

uint64_t sub_1E4A751A8()
{
  swift_getKeyPath();
  sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
  sub_1E4AAA060();

  return *(v0 + 184);
}

uint64_t sub_1E4A75248(uint64_t result)
{
  if (*(v1 + 184) == (result & 1))
  {
    *(v1 + 184) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
    sub_1E4AAA050();
  }

  return result;
}

uint64_t sub_1E4A75360(uint64_t result)
{
  if (*(v1 + 192) != result)
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
    sub_1E4AAA050();
  }

  return result;
}

uint64_t sub_1E4A75464()
{
  swift_getKeyPath();
  sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
  sub_1E4AAA060();

  swift_beginAccess();
  v1 = *(v0 + 200);
}

uint64_t sub_1E4A7551C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
  sub_1E4AAA060();

  swift_beginAccess();
  *a2 = *(v3 + 200);
}

uint64_t sub_1E4A755DC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 200);

  v5 = sub_1E4A76734(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 200);
    *(v1 + 200) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
    sub_1E4AAA050();
  }
}

uint64_t sub_1E4A75724(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 200);
  *(a1 + 200) = a2;
}

uint64_t sub_1E4A7578C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E798, &qword_1E4AB24F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - v8;
  v10 = sub_1E4AAAA80();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7A0, &qword_1E4AB24F8);
  v33 = *(v15 - 8);
  v34 = v15;
  v16 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  v19 = *(a1 + 72);
  *(v3 + 16) = 0;
  *(v3 + 192) = 0;
  v20 = MEMORY[0x1E69E7CC0];
  *(v3 + 200) = sub_1E4A9039C(MEMORY[0x1E69E7CC0]);
  if (v20 >> 62 && sub_1E4AAAC80())
  {
    v21 = sub_1E4A771A8(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CD0];
  }

  *(v3 + 208) = v21;
  sub_1E4AAA090();
  v22 = *(a1 + 48);
  *(v3 + 64) = *(a1 + 32);
  *(v3 + 80) = v22;
  v23 = *(a1 + 64);
  v24 = *(a1 + 16);
  *(v3 + 32) = *a1;
  *(v3 + 48) = v24;
  *(v3 + 96) = v23;
  *(v3 + 104) = v19;
  v25 = *(a1 + 96);
  *(v3 + 112) = *(a1 + 80);
  *(v3 + 128) = v25;
  v26 = *(a1 + 128);
  *(v3 + 144) = *(a1 + 112);
  *(v3 + 160) = v26;
  *(v3 + 184) = a2 & 1;
  *(v3 + 176) = sub_1E4A93090(v19) * 0.0174532925;
  v27 = [objc_opt_self() defaultCenter];
  if (qword_1EE0421A8 != -1)
  {
    swift_once();
  }

  sub_1E4AAAA90();

  v28 = [objc_opt_self() mainRunLoop];
  v35 = v28;
  v29 = sub_1E4AAAAF0();
  (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  sub_1E4A77088();
  sub_1E4A7743C(&qword_1EE042198, MEMORY[0x1E6969F20]);
  sub_1E4A7743C(&qword_1EE042118, sub_1E4A77088);
  sub_1E4AAA170();
  sub_1E4A770D4(v9);

  (*(v11 + 8))(v14, v10);
  swift_allocObject();
  swift_weakInit();
  sub_1E4A77144();
  v30 = v34;
  sub_1E4AAA180();

  (*(v33 + 8))(v18, v30);
  swift_beginAccess();
  sub_1E4AAA100();
  swift_endAccess();

  return v3;
}

uint64_t sub_1E4A75C0C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
    sub_1E4AAA060();

    v2 = *(v1 + 16);

    if (v2)
    {
      if ([*(v2 + 16) isAppearanceAware])
      {
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v4 = Strong;
          swift_getKeyPath();
          sub_1E4AAA060();

          swift_getKeyPath();
          sub_1E4AAA080();

          v5 = *(v4 + 192);
          v6 = __OFADD__(v5, 1);
          v7 = v5 + 1;
          if (v6)
          {
            __break(1u);
            return result;
          }

          *(v4 + 192) = v7;
          swift_getKeyPath();
          sub_1E4AAA070();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E4A75DE8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 144);
  v13[6] = *(v0 + 128);
  v13[7] = v2;
  v13[8] = *(v0 + 160);
  v3 = *(v0 + 80);
  v13[2] = *(v0 + 64);
  v13[3] = v3;
  v4 = *(v0 + 112);
  v13[4] = *(v0 + 96);
  v13[5] = v4;
  v5 = *(v0 + 48);
  v13[0] = *(v0 + 32);
  v13[1] = v5;
  sub_1E4A49CD0(v13);
  v6 = *(v0 + 200);

  v7 = *(v0 + 208);

  v8 = OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterLayerViewModel___observationRegistrar;
  v9 = sub_1E4AAA0A0();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WKWallpaperPosterLayerViewModel()
{
  result = qword_1EE0428E8;
  if (!qword_1EE0428E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4A75F1C()
{
  result = sub_1E4AAA0A0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WKAdaptiveStripesBaseMetrics(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WKAdaptiveStripesBaseMetrics(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E4A76080(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4A760A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t sub_1E4A760EC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WKPosterDynamicRotationState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0424A0 != -1)
  {
    swift_once();
  }

  v8 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v8, qword_1EE048B40);
  sub_1E4A6EC98(a1, v7);
  v9 = sub_1E4AAA0C0();
  v10 = sub_1E4AAAA20();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446210;
    v13 = sub_1E4AA9FF0();
    v15 = v14;
    sub_1E4A76F28(v7);
    v16 = sub_1E4A85938(v13, v15, &v22);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1E4A23000, v9, v10, "Handling rotation animation %{public}s.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E691FE80](v12, -1, -1);
    MEMORY[0x1E691FE80](v11, -1, -1);
  }

  else
  {

    sub_1E4A76F28(v7);
  }

  v17 = *(a1 + *(v4 + 20)) * 0.0174532925;
  v18 = *(v2 + 176);
  result = sub_1E4AAA5B0();
  if (result)
  {
    *(v2 + 176) = v17;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v21 - 2) = v2;
    *(&v21 - 1) = v17;
    v22 = v2;
    sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
    sub_1E4AAA050();
  }

  return result;
}

uint64_t sub_1E4A763B8()
{
  MEMORY[0x1E691F1E0](*v0);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v18.origin.x = v1;
  v18.origin.y = v2;
  v18.size.width = v3;
  v18.size.height = v4;
  Width = CGRectGetWidth(v18);
  if (Width == 0.0)
  {
    Width = 0.0;
  }

  MEMORY[0x1E691F200](*&Width);
  v19.origin.x = v1;
  v19.origin.y = v2;
  v19.size.width = v3;
  v19.size.height = v4;
  Height = CGRectGetHeight(v19);
  if (Height == 0.0)
  {
    Height = 0.0;
  }

  MEMORY[0x1E691F200](*&Height);
  if (v1 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v1;
  }

  MEMORY[0x1E691F200](*&v7);
  if (v2 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v2;
  }

  MEMORY[0x1E691F200](*&v8);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = *(v0 + 56);
  v12 = *(v0 + 64);
  v20.origin.x = v9;
  v20.origin.y = v10;
  v20.size.width = v11;
  v20.size.height = v12;
  v13 = CGRectGetWidth(v20);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x1E691F200](*&v13);
  v21.origin.x = v9;
  v21.origin.y = v10;
  v21.size.width = v11;
  v21.size.height = v12;
  v14 = CGRectGetHeight(v21);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x1E691F200](*&v14);
  if (v9 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v9;
  }

  MEMORY[0x1E691F200](*&v15);
  if (v10 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v10;
  }

  return MEMORY[0x1E691F200](*&v16);
}

uint64_t sub_1E4A764E0()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  sub_1E4AAAE00();
  sub_1E4A763B8();
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A7653C()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  return sub_1E4A763B8();
}

uint64_t sub_1E4A76580()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  sub_1E4AAAE00();
  sub_1E4A763B8();
  return sub_1E4AAAE40();
}

BOOL sub_1E4A765D8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  result = CGRectEqualToRect(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    v11.origin.x = v2;
    v11.origin.y = v3;
    v11.size.width = v4;
    v11.size.height = v5;
    v12.origin.x = v6;
    v12.origin.y = v7;
    v12.size.width = v8;
    v12.size.height = v9;
    return CGRectEqualToRect(v11, v12);
  }

  return result;
}

unint64_t sub_1E4A766A8()
{
  result = qword_1EE042FF8;
  if (!qword_1EE042FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042FF8);
  }

  return result;
}

uint64_t sub_1E4A766FC()
{
  result = sub_1E4AAA870();
  qword_1EE048B10 = result;
  return result;
}

unint64_t sub_1E4A76734(unint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v10 = v9 | (v4 << 6);
LABEL_12:
    v13 = *(v3 + 48) + 72 * v10;
    v14 = *v13;
    v15 = *(v13 + 16);
    v16 = *(v13 + 32);
    v17 = *(v13 + 48);
    v18 = *(v13 + 64);
    v19 = (*(v3 + 56) + 24 * v10);
    v21 = *v19;
    v20 = v19[1];
    v22 = v19[2];
    v27[0] = v14;
    v27[1] = v15;
    v27[2] = v16;
    v27[3] = v17;
    v28 = v18;
    result = sub_1E4A8F274(v27);
    if (v23)
    {
      v24 = (*(a2 + 56) + 24 * result);
      v25 = *v24 == v21 && v24[1] == v20;
      if (v25 && v24[2] == v22)
      {
        continue;
      }
    }

    return 0;
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 64 + 8 * v11);
    ++v4;
    if (v12)
    {
      v7 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v11 << 6);
      v4 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

long double sub_1E4A768E4(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = WKPosterCanvasSize();
  v45 = v5;
  v6 = [objc_opt_self() mainScreen];
  v7 = [v6 fixedCoordinateSpace];

  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_1E4A7743C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
  sub_1E4AAA060();

  if (UIInterfaceOrientationIsLandscape(*(v2 + 104)))
  {
    v46.origin.x = v9;
    v46.origin.y = v11;
    v46.size.width = v13;
    v46.size.height = v15;
    Height = CGRectGetHeight(v46);
    v47.origin.x = v9;
    v47.origin.y = v11;
    v47.size.width = v13;
    v47.size.height = v15;
    Width = CGRectGetWidth(v47);
    if (Height > Width)
    {
      v18 = Height;
    }

    else
    {
      v18 = Width;
    }

    v48.origin.x = v9;
    v48.origin.y = v11;
    v48.size.width = v13;
    v48.size.height = v15;
    v19 = CGRectGetHeight(v48);
    v49.origin.x = v9;
    v49.origin.y = v11;
    v49.size.width = v13;
    v49.size.height = v15;
    v20 = CGRectGetWidth(v49);
    if (v20 >= v19)
    {
      v15 = v19;
    }

    else
    {
      v15 = v20;
    }

    v13 = v18;
  }

  UIRectCenteredRect();
  rect_24 = v22;
  v44 = v21;
  rect_8 = v24;
  rect_16 = v23;
  swift_getKeyPath();
  sub_1E4AAA060();

  v25 = v15;
  v26 = *(v2 + 112);
  v27 = *(v2 + 120);
  v28 = *(v2 + 128);
  v29 = *(v2 + 136);
  rect = v13 * v26;
  v50.origin.x = v26;
  v50.origin.y = v27;
  v50.size.width = v28;
  v50.size.height = v29;
  v30 = v13 * CGRectGetWidth(v50);
  v51.origin.x = v26;
  v51.origin.y = v27;
  v51.size.width = v28;
  v51.size.height = v29;
  v31 = v25 * CGRectGetHeight(v51);
  v52.origin.y = rect_24;
  v52.origin.x = v44;
  v52.size.height = rect_8;
  v52.size.width = rect_16;
  CGRectGetMinY(v52);
  v53.origin.x = rect;
  v53.origin.y = v25 * v27;
  v53.size.width = v30;
  v53.size.height = v31;
  CGRectGetMinY(v53);
  v54.origin.x = 0.0;
  v54.origin.y = 0.0;
  v54.size.width = v4;
  v54.size.height = v45;
  CGRectGetMidX(v54);
  v55.origin.x = 0.0;
  v55.origin.y = 0.0;
  v55.size.width = v4;
  v55.size.height = v45;
  MidY = CGRectGetMidY(v55);
  [*(v3 + 16) stripeAngleDegrees];
  v34 = v33;
  v56.origin.x = 0.0;
  v56.origin.y = 0.0;
  v56.size.width = v4;
  v56.size.height = v45;
  v35 = CGRectGetWidth(v56);
  swift_getKeyPath();
  sub_1E4AAA060();

  if (!UIInterfaceOrientationIsLandscape(*(v2 + 104)))
  {
    v36 = [objc_opt_self() currentDevice];
    [v36 userInterfaceIdiom];
  }

  v37 = v35 * 0.5 * tan(v34 * 0.0174532925);
  v57.origin.x = 0.0;
  v57.origin.y = 0.0;
  v57.size.width = v4;
  v57.size.height = v45;
  v38 = (MidY + v37) / CGRectGetHeight(v57);
  v58.origin.x = 0.0;
  v58.origin.y = 0.0;
  v58.size.width = v4;
  v58.size.height = v45;
  CGRectGetHeight(v58);
  v59.origin.x = 0.0;
  v59.origin.y = 0.0;
  v59.size.width = v4;
  v59.size.height = v45;
  CGRectGetHeight(v59);
  return v38;
}

void sub_1E4A76CF4(uint64_t a1)
{
  v2 = sub_1E4AAA030();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0424A0 != -1)
  {
    swift_once();
  }

  v7 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v7, qword_1EE048B40);
  (*(v3 + 16))(v6, a1, v2);
  v8 = sub_1E4AAA0C0();
  v9 = sub_1E4AAAA20();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    v12 = sub_1E4AA9FF0();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_1E4A85938(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1E4A23000, v8, v9, "Completed rotation animation %{public}s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E691FE80](v11, -1, -1);
    MEMORY[0x1E691FE80](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1E4A76F28(uint64_t a1)
{
  v2 = type metadata accessor for WKPosterDynamicRotationState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1E4A76F84()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 176) = result;
  return result;
}

uint64_t sub_1E4A76F94(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 16);
      v3 = *(a2 + 16);

      v4 = v2;
      v5 = v3;
      v6 = [v4 isEqual_];

      return v6 ^ 1;
    }

    return 1;
  }

  return a2 != 0;
}

uint64_t sub_1E4A77040()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

unint64_t sub_1E4A77088()
{
  result = qword_1EE042110;
  if (!qword_1EE042110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE042110);
  }

  return result;
}

uint64_t sub_1E4A770D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E798, &qword_1E4AB24F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4A77144()
{
  result = qword_1EE042488;
  if (!qword_1EE042488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E7A0, &qword_1E4AB24F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042488);
  }

  return result;
}

unint64_t sub_1E4A771A8(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1E4AAAC80();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7A8, &qword_1E4AB2500);
      result = sub_1E4AAABA0();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1E4AAAC80();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x1E691EFA0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    sub_1E4AAA110();
    sub_1E4A7743C(&qword_1ECF8E7B0, MEMORY[0x1E695BF10]);
    result = sub_1E4AAA830();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1E4A7743C(&qword_1ECF8E7B8, MEMORY[0x1E695BF10]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_1E4AAA860();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1E4A7743C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4A77484()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = v2[8];
  v16[5] = v2[7];
  v16[6] = v3;
  v4 = v2[10];
  v16[7] = v2[9];
  v16[8] = v4;
  v5 = v2[3];
  v6 = v2[5];
  v7 = v2[6];
  v16[2] = v2[4];
  v16[3] = v6;
  v16[4] = v7;
  v16[0] = v2[2];
  v16[1] = v5;
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[8];
  v2[9] = v1[7];
  v2[10] = v10;
  v2[7] = v8;
  v2[8] = v9;
  v12 = v1[3];
  v11 = v1[4];
  v13 = v1[2];
  v2[3] = v1[1];
  v2[4] = v13;
  v2[5] = v12;
  v2[6] = v11;
  v2[2] = *v1;
  sub_1E4A49D24(v1, &v15);
  return sub_1E4A49CD0(v16);
}

void sub_1E4A77558(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_1E4A2732C(a1, v7);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_1E4A95884(v7, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v6;
  }

  else
  {
    sub_1E4A4DC88(a1, &qword_1ECF8E7D0, &qword_1E4AB2590);
    sub_1E4A9EEB4(a2, v7);

    sub_1E4A4DC88(v7, &qword_1ECF8E7D0, &qword_1E4AB2590);
  }
}

uint64_t sub_1E4A7760C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v141 = v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v149 = v137 - v8;
  v145 = sub_1E4AAA030();
  v144 = *(v145 - 8);
  v9 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v143 = v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1E4AA9FE0();
  v147 = *(v151 - 8);
  v11 = *(v147 + 64);
  v12 = MEMORY[0x1EEE9AC00](v151);
  v142 = v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v148 = v137 - v14;
  LOBYTE(v15) = sub_1E4A785F4(a1);
  v16 = sub_1E4AAA8A0();
  v18 = v17;
  if (v16 == sub_1E4AAA8A0() && v18 == v19)
  {

    v22 = 1;
  }

  else
  {
    v21 = sub_1E4AAADA0();

    v22 = v21 & 1;
  }

  v23 = sub_1E4A904E8(MEMORY[0x1E69E7CC0]);
  v24 = @"default";
  v160 = v2;
  sub_1E4A787F0(v22, v15 & 1, v163);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v162 = v23;
  v26 = sub_1E4A9308C(a1);
  v28 = v27;
  data = v23->data;
  v30 = (v27 & 1) == 0;
  type metadata accessor for WKWallpaperLocation(0);
  v32 = v31;
  v33 = &data[v30];
  if (__OFADD__(data, v30))
  {
    goto LABEL_104;
  }

  length = v23->length;
  v140 = v32;
  if (length < v33)
  {
    sub_1E4A67008(v33, isUniquelyReferenced_nonNull_native);
    v23 = v162;
    v35 = sub_1E4A9308C(a1);
    if ((v28 & 1) != (v36 & 1))
    {
      goto LABEL_112;
    }

    v26 = v35;
    if (v28)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    if (v28)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_1E4A683B0();
  v23 = v162;
  if ((v28 & 1) == 0)
  {
LABEL_14:
    v37 = sub_1E4A905E0(MEMORY[0x1E69E7CC0]);
    sub_1E4A95364(v26, a1, v37, v23);
    v38 = a1;
  }

LABEL_15:
  v39 = v23[1].length + 8 * v26;
  v40 = v23;
  sub_1E4A77558(v163, v24);
  if ((v15 & 1) == 0)
  {
    v24 = 0;
    if (!v23->data)
    {
      goto LABEL_58;
    }

    goto LABEL_22;
  }

  v41 = @"dark";
  sub_1E4A787F0(v22, 2, v163);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v162 = v23;
  v44 = sub_1E4A9308C(a1);
  v45 = v23->data;
  v46 = (v43 & 1) == 0;
  v47 = &v45[v46];
  if (__OFADD__(v45, v46))
  {
    __break(1u);
    goto LABEL_109;
  }

  v48 = v43;
  if (v23->length < v47)
  {
    sub_1E4A67008(v47, v42);
    v40 = v162;
    v49 = sub_1E4A9308C(a1);
    if ((v48 & 1) == (v50 & 1))
    {
      v44 = v49;
      if (v48)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }

LABEL_112:
    result = sub_1E4AAADB0();
    __break(1u);
    return result;
  }

  if (v42)
  {
    if (v43)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  sub_1E4A683B0();
  v40 = v162;
  if ((v48 & 1) == 0)
  {
LABEL_56:
    v74 = sub_1E4A905E0(MEMORY[0x1E69E7CC0]);
    sub_1E4A95364(v44, a1, v74, v40);
    v75 = a1;
  }

LABEL_57:
  v76 = v40[1].length + 8 * v44;
  sub_1E4A77558(v163, v41);
  v24 = sub_1E4A7AB44;
  if (!v40->data)
  {
LABEL_58:
    v44 = v24;

    if (qword_1ECF8DD10 == -1)
    {
LABEL_59:
      v77 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v77, qword_1ECF92330);
      v78 = a1;
      v79 = sub_1E4AAA0C0();
      v80 = sub_1E4AAAA00();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v163[0] = v82;
        *v81 = 136315138;
        v83 = sub_1E4AAA8A0();
        v85 = sub_1E4A85938(v83, v84, v163);

        *(v81 + 4) = v85;
        _os_log_impl(&dword_1E4A23000, v79, v80, "No synthesized wallpapers, unable to create wallpaper bundle (wallpaperLocation: %s).", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v82);
        MEMORY[0x1E691FE80](v82, -1, -1);
        MEMORY[0x1E691FE80](v81, -1, -1);
      }

      v86 = v146;
      *(v146 + 32) = 0;
      *v86 = 0u;
      v86[1] = 0u;

      return sub_1E4A27344(v44);
    }

LABEL_109:
    swift_once();
    goto LABEL_59;
  }

LABEL_22:
  v150 = v40;
  v51 = 0x726353206B636F4CLL;
  if (v22)
  {
    v51 = 0x72635320656D6F48;
  }

  v137[1] = v51;
  v52 = &unk_1F5E99A50;
  if (v15)
  {
    v52 = &unk_1F5E99A20;
  }

  v139 = v52;
  v53 = [v160 dataStores];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C8, &qword_1E4AB2588);
  v54 = sub_1E4AAA950();

  v33 = v54;
  if (v54 >> 62)
  {
    goto LABEL_105;
  }

  v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:
  v138 = v24;
  if (v55)
  {
    v56 = 0;
    LODWORD(v160) = 0;
    if (v15)
    {
      v57 = &unk_1F5E99A30;
    }

    else
    {
      v57 = &unk_1F5E99A60;
    }

    v58 = *v57;
    v158 = v33 & 0xC000000000000001;
    v153 = v33 & 0xFFFFFFFFFFFFFF8;
    v154 = v33;
    v152 = v33 + 32;
    v59 = &unk_1F5E99A40;
    if ((v15 & 1) == 0)
    {
      v59 = &unk_1F5E99A70;
    }

    v155 = v59;
    v156 = v58;
    v15 = @"WKWallpaperKitDataWantsDeviceMotionKey";
    v24 = &unk_1E8767000;
    v157 = v55;
    while (1)
    {
      if (v158)
      {
        v33 = MEMORY[0x1E691EFA0](v56, v154);
        v60 = v33;
        v61 = __OFADD__(v56, 1);
        v62 = (&v56->isa + 1);
        if (v61)
        {
          goto LABEL_100;
        }
      }

      else
      {
        if (v56 >= *(v153 + 16))
        {
          goto LABEL_102;
        }

        v60 = *(v152 + 8 * v56);
        v33 = swift_unknownObjectRetain();
        v61 = __OFADD__(v56, 1);
        v62 = (&v56->isa + 1);
        if (v61)
        {
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          v135 = v33;
          v55 = sub_1E4AAAC80();
          v33 = v135;
          goto LABEL_28;
        }
      }

      v159 = v62;
      v63 = v155;
      for (i = v156; i; --i)
      {
        v65 = *v63++;
        v66 = [v60 wallpaperOptionsForVariant:v22 wallpaperMode:v65];
        if (v66)
        {
          v67 = v66;
          v68 = [v66 wallpaperKitData];
          if (v68)
          {
            v69 = v68;
            v70 = sub_1E4AAA810();

            v161 = @"WKWallpaperKitDataWantsDeviceMotionKey";
            type metadata accessor for WKWallpaperKitDataKey(0);
            sub_1E4A7ACE8(&qword_1ECF8E040, type metadata accessor for WKWallpaperKitDataKey);
            v71 = @"WKWallpaperKitDataWantsDeviceMotionKey";
            sub_1E4AAAB90();
            if (*(v70 + 16) && (v72 = sub_1E4A8F330(v163), (v73 & 1) != 0))
            {
              sub_1E4A479C0(*(v70 + 56) + 32 * v72, &v162);

              sub_1E4A60E2C(v163);

              if (swift_dynamicCast())
              {
                LODWORD(v160) = v160 | v161;
              }
            }

            else
            {

              sub_1E4A60E2C(v163);
            }
          }

          else
          {
          }
        }
      }

      v33 = swift_unknownObjectRelease();
      v56 = v159;
      if (v159 == v157)
      {

        goto LABEL_65;
      }
    }
  }

  LODWORD(v160) = 0;
LABEL_65:

  v88 = NSTemporaryDirectory();
  sub_1E4AAA8A0();

  v89 = v142;
  sub_1E4AA9F80();

  v90 = v143;
  sub_1E4AAA020();
  sub_1E4AA9FF0();
  (*(v144 + 8))(v90, v145);
  sub_1E4AA9FB0();

  v91 = v147;
  v92 = *(v147 + 8);
  v22 = v151;
  v143 = (v147 + 8);
  v142 = v92;
  (v92)(v89, v151);
  v139 = @"any";
  (*(v91 + 56))(v149, 1, 1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E3D0, &qword_1E4AB01E0);
  v93 = v150;
  v33 = sub_1E4AAACD0();
  v153 = v33;
  v94 = 0;
  isa = v93[2].isa;
  v24 = v93 + 2;
  v95 = isa;
  v145 = v24;
  v97 = 1 << LOBYTE(v24[-1].isa);
  if (v97 < 64)
  {
    v98 = ~(-1 << v97);
  }

  else
  {
    v98 = -1;
  }

  v99 = v98 & v95;
  v144 = (v97 + 63) >> 6;
  v152 = v33 + 64;
  if (v99)
  {
    while (1)
    {
      v100 = __clz(__rbit64(v99));
      v154 = (v99 - 1) & v99;
LABEL_75:
      v103 = v100 | (v94 << 6);
      v104 = v150[1].length;
      v105 = *&v150[1].data[8 * v103];
      v156 = v103;
      v15 = *(v104 + 8 * v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E3D8, &qword_1E4AB01E8);
      v106 = sub_1E4AAACD0();
      v107 = v106;
      v24 = (v15 + 64);
      v108 = 1 << *(v15 + 32);
      v109 = v108 < 64 ? ~(-1 << v108) : -1;
      v110 = v109 & *(v15 + 64);
      v111 = (v108 + 63) >> 6;
      v157 = v106 + 64;
      v155 = v105;
      v159 = v15;

      v22 = 0;
      v158 = v107;
      if (v110)
      {
        break;
      }

LABEL_80:
      v113 = v22;
      while (1)
      {
        v22 = v113 + 1;
        if (__OFADD__(v113, 1))
        {
          __break(1u);
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        if (v22 >= v111)
        {
          break;
        }

        v114 = *(&v24->isa + v22);
        ++v113;
        if (v114)
        {
          v112 = __clz(__rbit64(v114));
          v110 = (v114 - 1) & v114;
          goto LABEL_85;
        }
      }

      v121 = v156;
      *(v152 + ((v156 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v156;
      v122 = v153;
      *(*(v153 + 48) + 8 * v121) = v155;
      *(*(v122 + 56) + 8 * v121) = v107;
      v123 = *(v122 + 16);
      v61 = __OFADD__(v123, 1);
      v124 = v123 + 1;
      if (v61)
      {
        goto LABEL_103;
      }

      *(v122 + 16) = v124;
      v22 = v151;
      v99 = v154;
      if (!v154)
      {
        goto LABEL_70;
      }
    }

    while (1)
    {
      v112 = __clz(__rbit64(v110));
      v110 &= v110 - 1;
LABEL_85:
      v15 = v112 | (v22 << 6);
      v115 = *&v159[1].data[8 * v15];
      sub_1E4A4D9A0(v159[1].length + 40 * v15, v163);
      v116 = v164;
      __swift_project_boxed_opaque_existential_1(v163, v164);
      v117 = v115;
      v118 = sub_1E4A55888(v116);
      v33 = __swift_destroy_boxed_opaque_existential_1Tm(v163);
      v107 = v158;
      *(v157 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(v107[6] + 8 * v15) = v117;
      *(v107[7] + 8 * v15) = v118;
      v119 = v107[2];
      v61 = __OFADD__(v119, 1);
      v120 = v119 + 1;
      if (v61)
      {
        goto LABEL_101;
      }

      v107[2] = v120;
      if (!v110)
      {
        goto LABEL_80;
      }
    }
  }

LABEL_70:
  v101 = v94;
  while (1)
  {
    v94 = v101 + 1;
    if (__OFADD__(v101, 1))
    {
      goto LABEL_99;
    }

    if (v94 >= v144)
    {
      break;
    }

    v102 = *(v145 + 8 * v94);
    ++v101;
    if (v102)
    {
      v100 = __clz(__rbit64(v102));
      v154 = (v102 - 1) & v102;
      goto LABEL_75;
    }
  }

  v125 = sub_1E4AA9FA0();
  v126 = sub_1E4AAA870();

  v127 = v141;
  sub_1E4A48054(v149, v141);
  if ((*(v147 + 48))(v127, 1, v22) == 1)
  {
    v128 = 0;
  }

  else
  {
    v128 = sub_1E4AA9FA0();
    (v142)(v127, v22);
  }

  v129 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E3E0, &qword_1E4AB01F0);
  sub_1E4A7ACE8(&qword_1ECF8DF70, type metadata accessor for WKWallpaperLocation);
  v130 = sub_1E4AAA800();

  LOBYTE(v136) = 0;
  v131 = [v129 _createWallpaperBundleInDirectory_version_identifier_name_family_wantsDeviceMotion_isOffloaded_logicalScreenClass_thumbnailImageURL_adjustmentTraits_preferredProminentColors_preferredTitleColors_assetMapping_];

  sub_1E4A4DC88(v149, &qword_1ECF8E7C0, &qword_1E4AAEA40);
  if (v131)
  {
    type metadata accessor for WKWallpaperBundle.ImplementationWrapper();
    v132 = swift_allocObject();
    *(v132 + 16) = v131;
    v133 = v146;
    *(v146 + 24) = &type metadata for WKWallpaperBundle;
    v133[4] = sub_1E4A50754();
    *v133 = v132;
    (v142)(v148, v151);
  }

  else
  {
    (v142)(v148, v151);
    v134 = v146;
    *(v146 + 32) = 0;
    *v134 = 0u;
    v134[1] = 0u;
  }

  return sub_1E4A27344(v138);
}

BOOL sub_1E4A785F4(uint64_t a1)
{
  v3 = [v1 dataStores];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C8, &qword_1E4AB2588);
  v4 = sub_1E4AAA950();

  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_18:
    v6 = sub_1E4AAAC80();
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  do
  {
    v17 = v7;
    if (v6 == v7)
    {
      break;
    }

    if (v8)
    {
      v18 = MEMORY[0x1E691EFA0](v7, v4);
      if (__OFADD__(v17, 1))
      {
LABEL_15:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v18 = *(v4 + 8 * v7 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v17, 1))
      {
        goto LABEL_15;
      }
    }

    v19 = sub_1E4AAA8A0();
    v21 = v20;
    if (v19 == sub_1E4AAA8A0() && v21 == v22)
    {

      v15 = 1;
    }

    else
    {
      v9 = v4;
      v10 = v6;
      v11 = v8;
      v12 = v5;
      v13 = a1;
      v14 = sub_1E4AAADA0();

      v15 = v14 & 1;
      a1 = v13;
      v5 = v12;
      v8 = v11;
      v6 = v10;
      v4 = v9;
    }

    v16 = [v18 hasWallpaperImageForVariant:v15 wallpaperMode:2];
    swift_unknownObjectRelease();
    v7 = v17 + 1;
  }

  while (!v16);

  return v6 != v17;
}

void sub_1E4A787F0(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7D8, qword_1E4AB2598);
  v8 = *(*(v347 - 1) + 64);
  MEMORY[0x1EEE9AC00](v347);
  v351 = (&v327 - v9);
  v10 = sub_1E4AA9FE0();
  v354 = *(v10 - 8);
  v355 = v10;
  v11 = *(v354 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v327 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v335 = &v327 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v327 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v338 = &v327 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v348 = &v327 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v341 = &v327 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v349 = &v327 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v333 = &v327 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v334 = &v327 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v33);
  v35 = MEMORY[0x1EEE9AC00](&v327 - v34);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v346 = &v327 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v353 = &v327 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v345 = &v327 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = &v327 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v344 = &v327 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v50 = &v327 - v49;
  v51 = MEMORY[0x1EEE9AC00](v48);
  v52 = MEMORY[0x1EEE9AC00](v51);
  v54 = &v327 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52);
  v342 = &v327 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v59 = (&v327 - v58);
  v339 = v19;
  v337 = v14;
  v332 = v60;
  v340 = v61;
  v331 = v62;
  v336 = v57;
  v343 = v63;
  if (a2 == 2)
  {
    v64 = 30;
    if (a1 == 1)
    {
      v64 = 52;
    }

    v65 = a1 == 0;
    v66 = 42;
  }

  else if (a2 == 1)
  {
    v64 = 30;
    if (a1 == 1)
    {
      v64 = 51;
    }

    v65 = a1 == 0;
    v66 = 41;
  }

  else
  {
    if (a2)
    {
      v64 = 30;
      goto LABEL_17;
    }

    v64 = 30;
    if (a1 == 1)
    {
      v64 = 50;
    }

    v65 = a1 == 0;
    v66 = 40;
  }

  if (v65)
  {
    v64 = v66;
  }

LABEL_17:
  v350 = v64;
  v67 = [v4 wallpaperConfigurationForVariant:a1 includingValuesForTypes:63 wallpaperMode:a2];
  v68 = [v67 wallpaperType];
  v358 = a2;
  if (v68 == 2)
  {
    v69 = [v67 proceduralWallpaperOptions];
    if (v69)
    {
      v70 = v69;
      v71 = sub_1E4AAA810();

      v72 = *MEMORY[0x1E69B7E20];
      v359 = sub_1E4AAA8A0();
      v360 = v73;
      sub_1E4AAAB90();
      if (*(v71 + 16) && (v74 = sub_1E4A8F330(&v361), (v75 & 1) != 0))
      {
        sub_1E4A479C0(*(v71 + 56) + 32 * v74, v362);
        sub_1E4A60E2C(&v361);

        if (swift_dynamicCast())
        {
          v76 = sub_1E4A55254();
          sub_1E4A7AB74(6uLL, v358, a1);
          sub_1E4A53A18(v76);
          sub_1E4A541E0(v76);
          a3[3] = &type metadata for WKBokehWallpaper;
          a3[4] = &protocol witness table for WKBokehWallpaper;
          v77 = objc_allocWithZone(WKBokehWallpaper);
          v78 = sub_1E4AAA870();

          sub_1E4A47A2C(0, &qword_1EE042130, 0x1E69DC888);
          v79 = sub_1E4AAA940();

          v80 = sub_1E4AAA940();

          v81 = [v77 initWithIdentifier:v350 name:v78 backgroundColors:v79 bubbleColors:v80 bubbleCount:40 bubbleScale:0 parallaxMultiplier:1.0 thumbnailSeed:0.5];

          type metadata accessor for WKBokehWallpaper.ImplementationWrapper();
          v82 = swift_allocObject();
          *(v82 + 16) = v81;

          *a3 = v82;
          return;
        }
      }

      else
      {
LABEL_42:

        sub_1E4A60E2C(&v361);
      }
    }

    if (qword_1ECF8DD10 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_122;
  }

  v352 = v67;
  if ([v67 wallpaperType] == 4)
  {
    if (qword_1ECF8DD10 != -1)
    {
      swift_once();
    }

    v83 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v83, qword_1ECF92330);
    v84 = v352;
    v85 = sub_1E4AAA0C0();
    v86 = sub_1E4AAAA00();
    if (os_log_type_enabled(v85, v86))
    {
      v356 = a3;
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v361 = v88;
      *v87 = 136446722;
      v357 = a1;
      v89 = PBUIStringForWallpaperVariant();
      v90 = sub_1E4AAA8A0();
      v92 = v91;

      v93 = sub_1E4A85938(v90, v92, &v361);

      *(v87 + 4) = v93;
      *(v87 + 12) = 2082;
      v94 = PBUIStringForWallpaperMode();

      if (!v94)
      {
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      v95 = sub_1E4AAA8A0();
      v97 = v96;

      v98 = sub_1E4A85938(v95, v97, &v361);

      *(v87 + 14) = v98;
      *(v87 + 22) = 2082;
      [v84 wallpaperType];
      v99 = PBUIStringForWallpaperType();
      v100 = sub_1E4AAA8A0();
      v102 = v101;

      v103 = sub_1E4A85938(v100, v102, &v361);

      *(v87 + 24) = v103;
      _os_log_impl(&dword_1E4A23000, v85, v86, "Color wallpaper migration not supported. (variant: %{public}s, mode: %{public}s, type: %{public}s).", v87, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E691FE80](v88, -1, -1);
      MEMORY[0x1E691FE80](v87, -1, -1);

      a3 = v356;
    }

    else
    {
    }

    v130 = v84;
    v131 = sub_1E4AAA0C0();
    v132 = sub_1E4AAAA10();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v361 = v134;
      *v133 = 136446722;
      v173 = PBUIStringForWallpaperVariant();
      v174 = sub_1E4AAA8A0();
      v176 = v175;

      v177 = sub_1E4A85938(v174, v176, &v361);

      *(v133 + 4) = v177;
      *(v133 + 12) = 2082;
      v178 = PBUIStringForWallpaperMode();

      if (v178)
      {
        v179 = sub_1E4AAA8A0();
        v181 = v180;

        v182 = sub_1E4A85938(v179, v181, &v361);

        *(v133 + 14) = v182;
        *(v133 + 22) = 2082;
        [v130 wallpaperType];
        v183 = PBUIStringForWallpaperType();
        v184 = sub_1E4AAA8A0();
        v186 = v185;

        v187 = sub_1E4A85938(v184, v186, &v361);

        *(v133 + 24) = v187;
        v150 = "Color wallpaper migration not supported. (variant: %{public}s, mode: %{public}s, type: %{public}s).";
        goto LABEL_65;
      }

      goto LABEL_127;
    }

    goto LABEL_66;
  }

  v329 = v45;
  v330 = v50;
  v104 = [v4 dataStores];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C8, &qword_1E4AB2588);
  v105 = sub_1E4AAA950();

  v328 = v59;
  v356 = a3;
  v357 = a1;
  if (v105 >> 62)
  {
    v106 = sub_1E4AAAC80();
  }

  else
  {
    v106 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v327 = v54;
  if (!v106)
  {
LABEL_51:

    a3 = v356;
LABEL_52:
    v151 = v352;
    if (qword_1ECF8DD10 != -1)
    {
      swift_once();
    }

    v152 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v152, qword_1ECF92330);
    v153 = v151;
    v154 = sub_1E4AAA0C0();
    v155 = sub_1E4AAAA00();
    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v361 = v157;
      *v156 = 136446722;
      v158 = PBUIStringForWallpaperVariant();
      v159 = sub_1E4AAA8A0();
      v161 = v160;

      v162 = sub_1E4A85938(v159, v161, &v361);

      *(v156 + 4) = v162;
      *(v156 + 12) = 2082;
      v163 = PBUIStringForWallpaperMode();

      if (!v163)
      {
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      v164 = sub_1E4AAA8A0();
      v166 = v165;

      v167 = sub_1E4A85938(v164, v166, &v361);

      *(v156 + 14) = v167;
      *(v156 + 22) = 2082;
      [v153 wallpaperType];
      v168 = PBUIStringForWallpaperType();
      v169 = sub_1E4AAA8A0();
      v171 = v170;

      v172 = sub_1E4A85938(v169, v171, &v361);

      *(v156 + 24) = v172;
      _os_log_impl(&dword_1E4A23000, v154, v155, "No wallpaper directory data store found, migration not possible (variant: %{public}s, mode: %{public}s, type: %{public}s).", v156, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E691FE80](v157, -1, -1);
      MEMORY[0x1E691FE80](v156, -1, -1);

      a3 = v356;
    }

    else
    {
    }

    v130 = v153;
    v131 = sub_1E4AAA0C0();
    v132 = sub_1E4AAAA10();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v361 = v134;
      *v133 = 136446722;
      v188 = PBUIStringForWallpaperVariant();
      v189 = sub_1E4AAA8A0();
      v191 = v190;

      v192 = sub_1E4A85938(v189, v191, &v361);

      *(v133 + 4) = v192;
      *(v133 + 12) = 2082;
      v193 = PBUIStringForWallpaperMode();

      if (v193)
      {
        v194 = sub_1E4AAA8A0();
        v196 = v195;

        v197 = sub_1E4A85938(v194, v196, &v361);

        *(v133 + 14) = v197;
        *(v133 + 22) = 2082;
        [v130 wallpaperType];
        v198 = PBUIStringForWallpaperType();
        v199 = sub_1E4AAA8A0();
        v201 = v200;

        v202 = sub_1E4A85938(v199, v201, &v361);

        *(v133 + 24) = v202;
        v150 = "No wallpaper directory data store found, migration not possible (variant: %{public}s, mode: %{public}s, type: %{public}s).";
        goto LABEL_65;
      }

LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    goto LABEL_66;
  }

  v107 = 0;
  a3 = &qword_1ECF8E7E0;
  a1 = &unk_1E8767000;
  while (1)
  {
    if ((v105 & 0xC000000000000001) != 0)
    {
      v108 = MEMORY[0x1E691EFA0](v107, v105);
      v67 = (v107 + 1);
      if (__OFADD__(v107, 1))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    else
    {
      if (v107 >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_122:
        swift_once();
LABEL_44:
        v109 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v109, qword_1ECF92330);
        v110 = v67;
        v111 = sub_1E4AAA0C0();
        v112 = sub_1E4AAAA00();
        if (os_log_type_enabled(v111, v112))
        {
          v356 = a3;
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v361 = v114;
          *v113 = 136446722;
          v357 = a1;
          v115 = PBUIStringForWallpaperVariant();
          v116 = sub_1E4AAA8A0();
          v118 = v117;

          v119 = sub_1E4A85938(v116, v118, &v361);

          *(v113 + 4) = v119;
          *(v113 + 12) = 2082;
          v120 = PBUIStringForWallpaperMode();

          if (!v120)
          {
            __break(1u);
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          v121 = sub_1E4AAA8A0();
          v123 = v122;

          v124 = sub_1E4A85938(v121, v123, &v361);

          *(v113 + 14) = v124;
          *(v113 + 22) = 2082;
          [v110 wallpaperType];
          v125 = PBUIStringForWallpaperType();
          v126 = sub_1E4AAA8A0();
          v128 = v127;

          v129 = sub_1E4A85938(v126, v128, &v361);

          *(v113 + 24) = v129;
          _os_log_impl(&dword_1E4A23000, v111, v112, "No bokeh variant found (variant: %{public}s, mode: %{public}s, type: %{public}s).", v113, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1E691FE80](v114, -1, -1);
          MEMORY[0x1E691FE80](v113, -1, -1);

          a3 = v356;
        }

        else
        {
        }

        v130 = v110;
        v131 = sub_1E4AAA0C0();
        v132 = sub_1E4AAAA10();
        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v361 = v134;
          *v133 = 136446722;
          v135 = PBUIStringForWallpaperVariant();
          v136 = sub_1E4AAA8A0();
          v138 = v137;

          v139 = sub_1E4A85938(v136, v138, &v361);

          *(v133 + 4) = v139;
          *(v133 + 12) = 2082;
          v140 = PBUIStringForWallpaperMode();

          if (v140)
          {
            v141 = sub_1E4AAA8A0();
            v143 = v142;

            v144 = sub_1E4A85938(v141, v143, &v361);

            *(v133 + 14) = v144;
            *(v133 + 22) = 2082;
            [v130 wallpaperType];
            v145 = PBUIStringForWallpaperType();
            v146 = sub_1E4AAA8A0();
            v148 = v147;

            v149 = sub_1E4A85938(v146, v148, &v361);

            *(v133 + 24) = v149;
            v150 = "No bokeh variant found (variant: %{public}s, mode: %{public}s, type: %{public}s).";
LABEL_65:
            _os_log_impl(&dword_1E4A23000, v131, v132, v150, v133, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E691FE80](v134, -1, -1);
            MEMORY[0x1E691FE80](v133, -1, -1);

LABEL_67:
            a3[4] = 0;
            *a3 = 0u;
            *(a3 + 1) = 0u;
            return;
          }

          goto LABEL_125;
        }

LABEL_66:

        goto LABEL_67;
      }

      v108 = *(v105 + 8 * v107 + 32);
      swift_unknownObjectRetain();
      v67 = (v107 + 1);
      if (__OFADD__(v107, 1))
      {
        goto LABEL_41;
      }
    }

    sub_1E4A47A2C(0, &qword_1ECF8E7E0, 0x1E69B7DF8);
    if ([v108 isKindOfClass_])
    {
      break;
    }

    swift_unknownObjectRelease();
    ++v107;
    if (v67 == v106)
    {
      goto LABEL_51;
    }
  }

  objc_opt_self();
  v203 = swift_dynamicCastObjCClass();
  a3 = v356;
  if (!v203)
  {
    swift_unknownObjectRelease();
    goto LABEL_52;
  }

  v204 = v203;
  v205 = v358;
  v206 = [v203 wk:v357 wallpaperThumbnailURLForVariant:v358 wallpaperMode:?];
  if (v206)
  {
    v207 = v342;
    v208 = v206;
    sub_1E4AA9FC0();

    v209 = *(v354 + 56);
    v209(v207, 0, 1, v355);
  }

  else
  {
    v209 = *(v354 + 56);
    v207 = v342;
    v209(v342, 1, 1, v355);
  }

  v210 = v328;
  v211 = v327;
  sub_1E4A4EF94(v207, v328);
  v212 = [v204 wk:v357 wallpaperOriginalImageURLForVariant:v205 wallpaperMode:?];
  if (v212)
  {
    v213 = v343;
    v214 = v212;
    sub_1E4AA9FC0();

    v215 = 0;
  }

  else
  {
    v215 = 1;
    v213 = v343;
  }

  v216 = 1;
  v209(v213, v215, 1, v355);
  sub_1E4A4EF94(v213, v211);
  v217 = [v204 wk:v357 wallpaperImageURLForVariant:v205 wallpaperMode:?];
  v218 = v344;
  if (v217)
  {
    v219 = v217;
    sub_1E4AA9FC0();

    v216 = 0;
  }

  v220 = 1;
  v209(v218, v216, 1, v355);
  sub_1E4A4EF94(v218, v330);
  v221 = [v352 originalVideoURL];
  v222 = v345;
  if (v221)
  {
    v223 = v221;
    sub_1E4AA9FC0();

    v220 = 0;
  }

  v224 = 1;
  v209(v222, v220, 1, v355);
  sub_1E4A4EF94(v222, v329);
  v225 = [v352 videoURL];
  v226 = v346;
  if (v225)
  {
    v227 = v225;
    sub_1E4AA9FC0();

    v224 = 0;
  }

  v209(v226, v224, 1, v355);
  sub_1E4A4EF94(v226, v353);
  v228 = [v352 wallpaperOptions];
  if (v228)
  {
    v229 = v228;
    [v228 stillTimeInVideo];
    v231 = v230;
  }

  else
  {
    v231 = 0.0;
  }

  v232 = v330;
  v233 = v351 + v347[12];
  v234 = v351 + v347[16];
  v235 = (v351 + v347[20]);
  v236 = (v351 + v347[24]);
  sub_1E4A48054(v210, v351);
  sub_1E4A48054(v211, v233);
  sub_1E4A48054(v329, v234);
  sub_1E4A48054(v232, v235);
  sub_1E4A48054(v353, v236);
  v237 = v355;
  v238 = *(v354 + 48);
  if (v238(v233, 1, v355) != 1)
  {
    v239 = v336;
    sub_1E4A48054(v233, v336);
    if (v238(v234, 1, v237) == 1)
    {
      (*(v354 + 8))(v239, v237);
      goto LABEL_88;
    }

    v272 = v234;
    v347 = v236;
LABEL_107:
    sub_1E4A4EF94(v351, v340);
    v281 = v355;
    v282 = v239;
    v283 = *(v354 + 32);
    (v283)(v349, v282, v355);
    (v283)(v341, v272, v281);
    sub_1E4A4DC88(v347, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v235, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    v284 = v281;
    sub_1E4A4DC88(v233, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    v358 = sub_1E4A7AB74(1uLL, v358, v357);
    v285 = v334;
    sub_1E4A4EF94(v340, v334);
    if (v238(v285, 1, v281) == 1)
    {
      v357 = v283;
      v286 = v285;
      v287 = *(v354 + 16);
      v287(v338, v349, v281);
      if (v238(v286, 1, v281) != 1)
      {
        sub_1E4A4DC88(v286, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      }

      v288 = v338;
      v283 = v357;
    }

    else
    {
      v288 = v338;
      v283();
      v287 = *(v354 + 16);
    }

    v289 = v339;
    v287(v339, v349, v281);
    v290 = v335;
    (v283)(v335, v341, v281);
    v291 = v356;
    v356[3] = &type metadata for WKLiveWallpaper;
    v291[4] = &protocol witness table for WKLiveWallpaper;
    v292 = objc_allocWithZone(WKLiveWallpaper);
    v293 = sub_1E4AAA870();

    v294 = v288;
    v295 = sub_1E4AA9FA0();
    v296 = v284;
    v297 = sub_1E4AA9FA0();
    v298 = sub_1E4AA9FA0();
    v299 = [v292 initWithIdentifier:v350 name:v293 type:0 thumbnailImageURL:v295 fullsizeImageURL:v297 videoAssetURL:v298 stillTimeInVideo:v231];

    v300 = *(v354 + 8);
    v300(v290, v296);
    v300(v289, v296);
    v300(v294, v296);
    type metadata accessor for WKLiveWallpaper.ImplementationWrapper();
    v301 = swift_allocObject();
    *(v301 + 16) = v299;

    swift_unknownObjectRelease();
    *v356 = v301;
    v300(v349, v296);
LABEL_113:
    sub_1E4A4DC88(v353, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v329, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v330, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v327, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    v302 = v328;
    v303 = &qword_1ECF8E7C0;
    v304 = &qword_1E4AAEA40;
LABEL_114:
    sub_1E4A4DC88(v302, v303, v304);
    return;
  }

LABEL_88:
  if (v238(v235, 1, v237) != 1)
  {
    v239 = v331;
    sub_1E4A48054(v235, v331);
    if (v238(v236, 1, v237) != 1)
    {
      v272 = v236;
      v347 = v235;
      v235 = v234;
      goto LABEL_107;
    }

    (*(v354 + 8))(v239, v237);
  }

  v347 = v236;
  if (v238(v233, 1, v237) != 1)
  {
    v241 = v237;
    v242 = v233;
    v233 = v234;
    goto LABEL_99;
  }

  v240 = v238(v235, 1, v237);
  v241 = v237;
  v242 = v235;
  v235 = v234;
  if (v240 != 1)
  {
LABEL_99:
    v264 = v332;
    sub_1E4A4EF94(v351, v332);
    v351 = *(v354 + 32);
    v351(v348, v242, v241);
    sub_1E4A4DC88(v347, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v235, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v233, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A7AB74(0, v358, v357);
    v265 = v333;
    sub_1E4A4EF94(v264, v333);
    if (v238(v265, 1, v241) == 1)
    {
      v266 = v265;
      v267 = *(v354 + 16);
      v267(v337, v348, v241);
      if (v238(v266, 1, v241) != 1)
      {
        sub_1E4A4DC88(v266, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      }

      v269 = v355;
      v268 = v356;
      v270 = v354;
      v271 = v337;
    }

    else
    {
      v271 = v337;
      v351(v337, v265, v241);
      v270 = v354;
      v267 = *(v354 + 16);
      v269 = v241;
      v268 = v356;
    }

    v273 = v339;
    v267(v339, v348, v269);
    v268[3] = &type metadata for WKStillWallpaper;
    v268[4] = &protocol witness table for WKStillWallpaper;
    v274 = objc_allocWithZone(WKStillWallpaper);
    v275 = sub_1E4AAA870();

    v276 = sub_1E4AA9FA0();
    v277 = sub_1E4AA9FA0();
    v278 = [v274 initWithIdentifier:v350 name:v275 type:0 thumbnailImageURL:v276 fullsizeImageURL:v277];

    v279 = *(v270 + 8);
    v279(v273, v269);
    v279(v271, v269);
    type metadata accessor for WKStillWallpaper.ImplementationWrapper();
    v280 = swift_allocObject();
    *(v280 + 16) = v278;

    swift_unknownObjectRelease();
    *v268 = v280;
    v279(v348, v269);
    goto LABEL_113;
  }

  if (qword_1ECF8DD10 != -1)
  {
    swift_once();
  }

  v243 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v243, qword_1ECF92330);
  v244 = v352;
  v245 = sub_1E4AAA0C0();
  v246 = sub_1E4AAAA00();
  if (os_log_type_enabled(v245, v246))
  {
    v247 = swift_slowAlloc();
    v248 = swift_slowAlloc();
    v361 = v248;
    *v247 = 136446722;
    v249 = PBUIStringForWallpaperVariant();
    v250 = sub_1E4AAA8A0();
    v252 = v251;

    v253 = sub_1E4A85938(v250, v252, &v361);

    *(v247 + 4) = v253;
    *(v247 + 12) = 2082;
    v254 = PBUIStringForWallpaperMode();

    if (!v254)
    {
      goto LABEL_130;
    }

    v255 = sub_1E4AAA8A0();
    v257 = v256;

    v258 = sub_1E4A85938(v255, v257, &v361);

    *(v247 + 14) = v258;
    *(v247 + 22) = 2082;
    [v244 wallpaperType];
    v259 = PBUIStringForWallpaperType();
    v260 = sub_1E4AAA8A0();
    v262 = v261;

    v263 = sub_1E4A85938(v260, v262, &v361);

    *(v247 + 24) = v263;
    _os_log_impl(&dword_1E4A23000, v245, v246, "Synthesizing wallpaper failed (variant: %{public}s, mode: %{public}s, type: %{public}s).", v247, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v248, -1, -1);
    MEMORY[0x1E691FE80](v247, -1, -1);

    a3 = v356;
  }

  else
  {
  }

  v305 = v328;
  v306 = v327;
  v307 = v244;
  v308 = sub_1E4AAA0C0();
  v309 = sub_1E4AAAA10();
  if (!os_log_type_enabled(v308, v309))
  {

    swift_unknownObjectRelease();
    sub_1E4A4DC88(v353, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v329, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v330, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v306, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v305, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    goto LABEL_120;
  }

  v310 = swift_slowAlloc();
  v311 = swift_slowAlloc();
  v361 = v311;
  *v310 = 136446722;
  v312 = PBUIStringForWallpaperVariant();
  v313 = sub_1E4AAA8A0();
  v315 = v314;

  v316 = sub_1E4A85938(v313, v315, &v361);

  *(v310 + 4) = v316;
  *(v310 + 12) = 2082;
  v317 = PBUIStringForWallpaperMode();

  if (v317)
  {
    v318 = sub_1E4AAA8A0();
    v320 = v319;

    v321 = sub_1E4A85938(v318, v320, &v361);

    *(v310 + 14) = v321;
    *(v310 + 22) = 2082;
    [v307 wallpaperType];
    v322 = PBUIStringForWallpaperType();
    v323 = sub_1E4AAA8A0();
    v325 = v324;

    v326 = sub_1E4A85938(v323, v325, &v361);

    *(v310 + 24) = v326;
    _os_log_impl(&dword_1E4A23000, v308, v309, "Synthesizing wallpaper failed (variant: %{public}s, mode: %{public}s, type: %{public}s).", v310, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v311, -1, -1);
    MEMORY[0x1E691FE80](v310, -1, -1);

    swift_unknownObjectRelease();
    sub_1E4A4DC88(v353, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v329, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v330, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v327, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v328, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    a3 = v356;
LABEL_120:
    a3[4] = 0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
    v303 = &qword_1ECF8E7D8;
    v304 = qword_1E4AB2598;
    v302 = v351;
    goto LABEL_114;
  }

LABEL_131:
  __break(1u);
}

unint64_t sub_1E4A7AB44@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E4A905E0(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_1E4A7AB74(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xE500000000000000;
  v4 = 0x6B72614420;
  v5 = 0xE800000000000000;
  v6 = 0x6E776F6E6B6E5520;
  if (a2 == 1)
  {
    v6 = 0x746867694C20;
    v5 = 0xE600000000000000;
  }

  if (a2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  if (a2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9 = 0xEB000000006E6565;
  v10 = 0x726353206B636F4CLL;
  v11 = 0x80000001E4AB9280;
  v12 = 0xD000000000000011;
  if (a3 == 1)
  {
    v12 = 0x72635320656D6F48;
    v11 = 0xEB000000006E6565;
  }

  if (a3)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a3 == -1)
  {
    v13 = 1701736270;
  }

  else
  {
    v13 = v10;
  }

  if (a3 == -1)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = v9;
  }

  v15 = WKStringFromWallpaperType(a1);
  v16 = sub_1E4AAA8A0();

  MEMORY[0x1E691ECA0](32, 0xE100000000000000);
  MEMORY[0x1E691ECA0](v13, v14);

  MEMORY[0x1E691ECA0](v7, v8);

  return v16;
}

uint64_t sub_1E4A7ACE8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E4A7AD30()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 119.0;
  if (!v1)
  {
    v2 = 64.0;
  }

  qword_1EE048BF8 = *&v2;
}

id sub_1E4A7ADA8(char a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1E4AA9FE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v3[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_originalSize];
  *v12 = 0;
  v12[1] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *&v3[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_currentScaleEffect] = _Q0;
  v3[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_layerLevel] = a1;
  sub_1E4A7C1A8();
  (*(v8 + 16))(v11, a2, v7);
  v18 = *MEMORY[0x1E6979EF8];
  v19 = sub_1E4AAA8A0();
  *&v3[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_package] = sub_1E4A4B308(v11, v19, v20, 0);
  v24.receiver = v3;
  v24.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, v23);
  sub_1E4A7B0C8();

  (*(v8 + 8))(a2, v7);
  return v21;
}

void sub_1E4A7B0C8()
{
  [v0 setUserInteractionEnabled_];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  [v0 setClipsToBounds_];
  v2 = *&v0[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_package];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 rootLayer];
    if (v4)
    {
      v15 = v4;
      [v4 size];
      v6 = &v0[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_originalSize];
      v7 = *&v0[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_originalSize];
      v8 = *&v0[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_originalSize + 8];
      *v6 = v9;
      v6[1] = v5;
      if (v9 != v7 || v5 != v8)
      {
        [v0 layoutIfNeeded];
      }

      [v15 setContentsGravity_];
      [v15 setMasksToBounds_];
      [v15 setFillMode_];
      v11 = [v0 layer];
      [v11 setMasksToBounds_];

      v12 = [v0 layer];
      [v12 addSublayer_];

      v13 = [v0 layer];
      [v13 setGeometryFlipped_];

      [v0 layoutIfNeeded];
      v14 = v15;
    }

    else
    {
      v14 = v3;
    }
  }
}

void sub_1E4A7B414(double a1, double a2, double a3, double a4)
{
  v37.receiver = v4;
  v37.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v37, sel_drawRect_, a1, a2, a3, a4);
  [v4 frame];
  v12 = sub_1E4A7B768(v9, v10);
  v13 = v11;
  v14 = &v4[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_currentScaleEffect];
  if (v12 != *&v4[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_currentScaleEffect] || v11 != *&v4[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_currentScaleEffect + 8])
  {
    if (qword_1EE0424D0 != -1)
    {
      swift_once();
    }

    v16 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v16, qword_1EE048BA0);
    v17 = v4;
    v18 = sub_1E4AAA0C0();
    v19 = sub_1E4AAAA20();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36[0] = v21;
      *v20 = 136446466;
      v22 = sub_1E4AAAAB0();
      v24 = sub_1E4A85938(v22, v23, v36);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      v25 = *v14;
      v26 = *(v14 + 1);
      v27 = sub_1E4AAAAB0();
      v29 = sub_1E4A85938(v27, v28, v36);

      *(v20 + 14) = v29;
      _os_log_impl(&dword_1E4A23000, v18, v19, "New scale effect %{public}s isn't the same as the current scale effect %{public}s, applying.", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E691FE80](v21, -1, -1);
      MEMORY[0x1E691FE80](v20, -1, -1);
    }

    v30 = objc_opt_self();
    v31 = swift_allocObject();
    *(v31 + 16) = v17;
    *(v31 + 24) = v12;
    *(v31 + 32) = v13;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1E4A7C15C;
    *(v32 + 24) = v31;
    v36[4] = sub_1E4A7C168;
    v36[5] = v32;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 1107296256;
    v36[2] = sub_1E4A7BFCC;
    v36[3] = &block_descriptor_1;
    v33 = _Block_copy(v36);
    v34 = v17;

    [v30 performWithoutAnimation_];
    _Block_release(v33);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

double sub_1E4A7B768(double a1, double a2)
{
  if (a1 == 0.0 && a2 == 0.0 || (v3 = *&a1 & 0x7FF0000000000000, (*&a1 & 0xFFFFFFFFFFFFFLL) == 0) && v3 == 0x7FF0000000000000 || (v3 == 0x7FF0000000000000 ? (v10 = (*&a1 & 0xFFFFFFFFFFFFFLL) == 0) : (v10 = 1), !v10 ? (v11 = 0) : (v11 = 1), (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || !v11))
  {
    if (qword_1EE0424D0 != -1)
    {
      swift_once();
    }

    v4 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v4, qword_1EE048BA0);
    v5 = v2;
    v6 = sub_1E4AAA0C0();
    v7 = sub_1E4AAAA20();

    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_32;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v64 = v9;
    *v8 = 136446210;
    v5[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_layerLevel];
    v41 = sub_1E4AAA8B0();
    v43 = v42;

    v44 = sub_1E4A85938(v41, v43, &v64);

    *(v8 + 4) = v44;
    v45 = "Bounding size for %{public}s is zero.";
    goto LABEL_31;
  }

  v14 = WKStandardDisplayModeScreenSize();
  v16 = v15;
  if (qword_1EE043030 != -1)
  {
    swift_once();
  }

  v17 = *&qword_1EE048BF8;
  v18 = WKStandardDisplayModeScreenSize();
  if (a2 >= a1)
  {
    v19 = a1;
  }

  else
  {
    v19 = a2;
  }

  v20 = *&v2[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_originalSize];
  v21 = *&v2[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_originalSize + 8];
  if (v20 == v21)
  {
    v22 = round(sqrt(v16 * v16 + v14 * v14)) + v17 + v17;
    if (v20 != v22 || v21 != v22)
    {
      v24 = v22 / v20;
      v25 = v19 / v18;
      if (qword_1EE0424D0 != -1)
      {
        swift_once();
      }

      v26 = v25 * v24;
      v27 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v27, qword_1EE048BA0);
      v28 = v2;
      v29 = sub_1E4AAA0C0();
      v30 = sub_1E4AAAA20();

      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_47;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v64 = v32;
      *v31 = 136446466;
      v33 = sub_1E4AAA990();
      v35 = sub_1E4A85938(v33, v34, &v64);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2082;
      v28[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_layerLevel];
      v36 = sub_1E4AAA8B0();
      v38 = v37;

      v39 = sub_1E4A85938(v36, v38, &v64);

      *(v31 + 14) = v39;
      v40 = "[Square] Applying '%{public}s' scale to %{public}s";
LABEL_46:
      _os_log_impl(&dword_1E4A23000, v29, v30, v40, v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E691FE80](v32, -1, -1);
      MEMORY[0x1E691FE80](v31, -1, -1);
LABEL_47:

      return v26;
    }
  }

  if (v20 / v21 != a1 / a2)
  {
    if (a1 / v20 >= a2 / v21)
    {
      v49 = a1;
    }

    else
    {
      v49 = v20 * (a2 / v21);
    }

    if (qword_1EE0424D0 != -1)
    {
      v63 = *&v2[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_originalSize];
      swift_once();
      v20 = v63;
    }

    v26 = v49 / v20;
    v50 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v50, qword_1EE048BA0);
    v51 = v2;
    v29 = sub_1E4AAA0C0();
    v30 = sub_1E4AAAA20();

    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_47;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v64 = v32;
    *v31 = 136446466;
    v52 = sub_1E4AAA990();
    v54 = sub_1E4A85938(v52, v53, &v64);

    *(v31 + 4) = v54;
    *(v31 + 12) = 2082;
    v51[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_layerLevel];
    v59 = sub_1E4AAA8B0();
    v61 = v60;

    v62 = sub_1E4A85938(v59, v61, &v64);

    *(v31 + 14) = v62;
    v40 = "[Aspect Rectangle] Applying '%{public}s' scale to %{public}s";
    goto LABEL_46;
  }

  if (qword_1EE0424D0 != -1)
  {
    swift_once();
  }

  v47 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v47, qword_1EE048BA0);
  v48 = v2;
  v6 = sub_1E4AAA0C0();
  v7 = sub_1E4AAAA20();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v64 = v9;
    *v8 = 136446210;
    v48[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_layerLevel];
    v55 = sub_1E4AAA8B0();
    v57 = v56;

    v58 = sub_1E4A85938(v55, v57, &v64);

    *(v8 + 4) = v58;
    v45 = "Applying no scaling to %{public}s";
LABEL_31:
    _os_log_impl(&dword_1E4A23000, v6, v7, v45, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E691FE80](v9, -1, -1);
    MEMORY[0x1E691FE80](v8, -1, -1);
  }

LABEL_32:

  return 1.0;
}

id sub_1E4A7BF10(CGFloat a1, double a2)
{
  v4 = objc_opt_self();
  [v4 begin];
  v5 = [v4 disableActions];
  [v4 setDisableActions_];
  sub_1E4A9DC68(a1, a2, 0.5, 0.5);
  [v4 commit];

  return [v4 setDisableActions_];
}

uint64_t sub_1E4A7C168()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E4A7C1A8()
{
  result = qword_1EE042120;
  if (!qword_1EE042120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE042120);
  }

  return result;
}

_BYTE *WKPosterWakeState.init(screenState:progress:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = *result;
  *(a2 + 8) = a3;
  return result;
}

double *WKPosterWakeState.transitionDirection(from:)@<X0>(double *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  if (v3 != 3)
  {
    v4 = *(v2 + 8);
    v5 = result[1];
    if (v5 == v4)
    {
      *a2 = 3;
      return result;
    }

    LOBYTE(v3) = v5 >= v4;
  }

  *a2 = v3;
  return result;
}

uint64_t WKPosterWakeState.ScreenState.description.getter()
{
  v1 = 6710895;
  if (*v0 != 1)
  {
    v1 = 0x697469736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28271;
  }
}

uint64_t sub_1E4A7C360()
{
  v1 = 6710895;
  if (*v0 != 1)
  {
    v1 = 0x697469736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28271;
  }
}

unint64_t WKPosterWakeState.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1E4AAABC0();

  v3 = 0xE300000000000000;
  v4 = 6710895;
  if (v1 != 1)
  {
    v4 = 0x697469736E617274;
    v3 = 0xED0000676E696E6FLL;
  }

  if (v1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 28271;
  }

  if (v1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  MEMORY[0x1E691ECA0](v5, v6);

  MEMORY[0x1E691ECA0](0x6572676F7270202CLL, 0xEC000000203A7373);
  v7 = sub_1E4AAA990();
  MEMORY[0x1E691ECA0](v7);

  MEMORY[0x1E691ECA0](125, 0xE100000000000000);
  return 0xD000000000000021;
}

uint64_t WKPosterWakeState.ScreenState.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v1);
  return sub_1E4AAAE40();
}

uint64_t WKPosterWakeState.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1E691F1E0](*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1E691F200](*&v2);
}

uint64_t WKPosterWakeState.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1E691F200](*&v3);
  return sub_1E4AAAE40();
}

unint64_t sub_1E4A7C60C()
{
  result = qword_1ECF8E818;
  if (!qword_1ECF8E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E818);
  }

  return result;
}

unint64_t sub_1E4A7C664()
{
  result = qword_1ECF8E820;
  if (!qword_1ECF8E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E820);
  }

  return result;
}

CGSize __swiftcall CGSize.aspectFit(to:)(CGSize to)
{
  v3 = to.width / v1;
  v4 = to.height / v2;
  if (v4 >= v3)
  {
    v4 = v3;
  }

  v5 = v4 * v1;
  v6 = v4 * v2;
  result.height = v6;
  result.width = v5;
  return result;
}

CGSize __swiftcall CGSize.aspectFill(to:)(CGSize to)
{
  v3 = to.width / v1;
  if (to.width / v1 <= to.height / v2)
  {
    v3 = to.height / v2;
  }

  v4 = v3 * v1;
  if (v4 <= to.width)
  {
    to.width = v4;
  }

  if (v3 * v2 <= to.height)
  {
    to.height = v3 * v2;
  }

  return to;
}

BOOL sub_1E4A7C720(double a1, double a2, double a3, double a4)
{
  v4 = (~*&a1 & 0x7FF0000000000000) != 0 || (*&a1 & 0xFFFFFFFFFFFFFLL) == 0;
  if (!v4 || (~*&a2 & 0x7FF0000000000000) == 0 && (*&a2 & 0xFFFFFFFFFFFFFLL) != 0 || (~*&a3 & 0x7FF0000000000000) == 0 && (*&a3 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  if ((~*&a4 & 0x7FF0000000000000) != 0)
  {
    return 0;
  }

  return (*&a4 & 0xFFFFFFFFFFFFFLL) != 0;
}

uint64_t sub_1E4A7C788(double a1, double a2, double a3, double a4)
{
  v4 = fabs(a2) == INFINITY;
  v5 = fabs(a3) == INFINITY;
  result = 1;
  if (fabs(a1) != INFINITY && !v4)
  {
    v7 = (~*&a4 & 0x7FF0000000000000) == 0 && (*&a4 & 0xFFFFFFFFFFFFFLL) == 0;
    return v5 || v7;
  }

  return result;
}

BOOL sub_1E4A7C7E0()
{
  if ((~*v0 & 0x7FF0000000000000) != 0)
  {
    v1 = 1;
  }

  else
  {
    v1 = (*v0 & 0xFFFFFFFFFFFFFLL) == 0;
    *v0;
  }

  if (!v1)
  {
    return 1;
  }

  v2 = v0[1];
  v3 = ~v2 & 0x7FF0000000000000;
  v4 = v2 & 0xFFFFFFFFFFFFFLL;
  if (!v3 && v4 != 0)
  {
    return 1;
  }

  v6 = v0[2];
  if ((~v6 & 0x7FF0000000000000) == 0 && (v6 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  v7 = v0[3];
  if ((~v7 & 0x7FF0000000000000) == 0 && (v7 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  v8 = v0[4];
  if ((~v8 & 0x7FF0000000000000) == 0 && (v8 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  v10 = v0[5];
  return (~v10 & 0x7FF0000000000000) == 0 && (v10 & 0xFFFFFFFFFFFFFLL) != 0;
}

BOOL sub_1E4A7C878()
{
  if ((*v0 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    return 1;
  }

  if ((v0[1] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    return 1;
  }

  if ((v0[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    return 1;
  }

  if ((v0[3] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    return 1;
  }

  if ((v0[4] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    return 1;
  }

  v2 = v0[5];
  return (~v2 & 0x7FF0000000000000) == 0 && (v2 & 0xFFFFFFFFFFFFFLL) == 0;
}

uint64_t type metadata accessor for WKPosterDynamicRotationState()
{
  result = qword_1EE0429B8;
  if (!qword_1EE0429B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A7C988()
{
  sub_1E4AAA030();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIInterfaceOrientation(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

int *sub_1E4A7CA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4AAA030();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4AAA020();
  if (a1 == 2)
  {
    v16 = 180.0;
  }

  else
  {
    if (a1 == 3)
    {
      v14 = [objc_opt_self() sharedApplication];
      v15 = [v14 userInterfaceLayoutDirection];

      v11 = v15 == 1;
      v12 = 90.0;
      v13 = 270.0;
    }

    else
    {
      if (a1 != 4)
      {
        v16 = 0.0;
        goto LABEL_11;
      }

      v9 = [objc_opt_self() sharedApplication];
      v10 = [v9 userInterfaceLayoutDirection];

      v11 = v10 == 1;
      v12 = 270.0;
      v13 = 90.0;
    }

    if (v11)
    {
      v16 = v13;
    }

    else
    {
      v16 = v12;
    }
  }

LABEL_11:
  (*(v5 + 32))(a2, v8, v4);
  result = type metadata accessor for WKPosterDynamicRotationState();
  *(a2 + result[5]) = v16;
  *(a2 + result[6]) = 0x3FF0000000000000;
  *(a2 + result[7]) = a1;
  *(a2 + result[8]) = a1;
  return result;
}

uint64_t WKWallpaperAdjustmentTraitOffset.init(attributeDictionary:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = sub_1E4AAA800();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(WKWallpaperAdjustmentTraitOffset) initWithAttributeDictionary_];

  type metadata accessor for WKWallpaperAdjustmentTraitOffset.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall WKWallpaperAdjustmentTraitOffset.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

uint64_t WKWallpaperAdjustmentTraitOffset.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKWallpaperAdjustmentTraitOffset.description.getter()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_1E4AAA8A0();

  return v2;
}

uint64_t WKWallpaperAdjustmentTraitOffset.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

uint64_t WKWallpaperAdjustmentTraitOffset.screenScaleMode.getter()
{
  v1 = *v0;
  sub_1E4AAA040();
  v2 = *(v1 + 16);
  if (SFPerformSelector())
  {
    sub_1E4AAAB30();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1E4A7CF68(v7);
    return 0;
  }
}

uint64_t sub_1E4A7CF68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E690, &qword_1E4AB2790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WKWallpaperAdjustmentTraitOffset.screenScaleMode.setter(uint64_t a1, uint64_t a2)
{
  sub_1E4AAA040();
  v4 = *(*v2 + 16);
  v5 = v4;
  if (a2)
  {
    sub_1E4AAA870();
  }

  v6 = SFPerformSelector();

  swift_unknownObjectRelease();
  if (v6)
  {
    sub_1E4AAAB30();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  return sub_1E4A7CF68(v8);
}

uint64_t (*WKWallpaperAdjustmentTraitOffset.screenScaleMode.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v5 = *v1;
  *a1 = WKWallpaperAdjustmentTraitOffset.screenScaleMode.getter();
  a1[1] = v3;
  return sub_1E4A7D110;
}

uint64_t sub_1E4A7D110(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    return WKWallpaperAdjustmentTraitOffset.screenScaleMode.setter(*a1, v2);
  }

  v5 = a1[1];

  WKWallpaperAdjustmentTraitOffset.screenScaleMode.setter(v3, v2);
}

unint64_t sub_1E4A7D188()
{
  result = qword_1ECF8E828;
  if (!qword_1ECF8E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E828);
  }

  return result;
}

double sub_1E4A7D218@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4AAA320();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[7];
  v73 = v1[6];
  v74 = v8;
  v75 = v1[8];
  v76 = *(v1 + 144);
  v9 = v1[3];
  v69 = v1[2];
  v70 = v9;
  v10 = v1[5];
  v71 = v1[4];
  v72 = v10;
  v11 = v1[1];
  v67 = *v1;
  v68 = v11;
  v12 = *(v1 + 19);
  v63 = &type metadata for WKWallpaperBundle;
  v64 = sub_1E4A50754();
  *&v62 = v12;
  v13 = v1[7];
  v77[6] = v1[6];
  v77[7] = v13;
  v77[8] = v1[8];
  v78 = *(v1 + 144);
  v14 = v1[3];
  v77[2] = v1[2];
  v77[3] = v14;
  v15 = v1[5];
  v77[4] = v1[4];
  v77[5] = v15;
  v16 = v1[1];
  v77[0] = *v1;
  v77[1] = v16;
  if (sub_1E4A49C60(v77) == 1)
  {
    nullsub_1(v77);
    v49 = v73;
    v50 = v74;
    v51 = v75;
    v52 = v76;
    v45 = v69;
    v46 = v70;
    v47 = v71;
    v48 = v72;
    v43 = v67;
    v44 = v68;
    v17 = nullsub_1(&v43);
    v53 = *v17;
    v18 = v17[4];
    v20 = v17[1];
    v19 = v17[2];
    v56 = v17[3];
    v57 = v18;
    v54 = v20;
    v55 = v19;
    v21 = v17[8];
    v23 = v17[5];
    v22 = v17[6];
    v60 = v17[7];
    v61 = v21;
    v58 = v23;
    v59 = v22;

    sub_1E4A59240(&v67, v35);
  }

  else
  {
    nullsub_1(v77);
    v49 = v73;
    v50 = v74;
    v51 = v75;
    v52 = v76;
    v45 = v69;
    v46 = v70;
    v47 = v71;
    v48 = v72;
    v43 = v67;
    v44 = v68;
    v24 = *nullsub_1(&v43);

    sub_1E4A59240(&v67, v35);
    sub_1E4AAAA10();
    v25 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v67);
    (*(v4 + 8))(v7, v3);
  }

  v40 = v59;
  v41 = v60;
  v42 = v61;
  v36 = v55;
  v37 = v56;
  v38 = v57;
  v39 = v58;
  v35[0] = v53;
  v35[1] = v54;
  sub_1E4A49CD0(v35);
  if (BYTE8(v36))
  {
    v26 = 4;
  }

  else
  {
    v26 = 8;
  }

  KeyPath = swift_getKeyPath();
  v66 = 0;
  *&v43 = swift_getKeyPath();
  sub_1E4A4E620(&v43);
  *&v65[103] = v49;
  *&v65[119] = v50;
  *&v65[135] = v51;
  *&v65[39] = v45;
  *&v65[55] = v46;
  *&v65[71] = v47;
  *&v65[87] = v48;
  *&v65[7] = v43;
  v65[151] = v52;
  *&v65[23] = v44;
  v28 = swift_allocObject();
  sub_1E4A2732C(&v62, v28 + 16);
  v29 = *&v65[112];
  *(a1 + 105) = *&v65[96];
  *(a1 + 121) = v29;
  *(a1 + 137) = *&v65[128];
  v30 = *&v65[48];
  *(a1 + 41) = *&v65[32];
  *(a1 + 57) = v30;
  v31 = *&v65[80];
  *(a1 + 73) = *&v65[64];
  *(a1 + 89) = v31;
  result = *v65;
  v33 = *&v65[16];
  *(a1 + 9) = *v65;
  *(v28 + 56) = v26;
  v34 = v66;
  *a1 = KeyPath;
  *(a1 + 8) = v34;
  *(a1 + 153) = *&v65[144];
  *(a1 + 25) = v33;
  *(a1 + 168) = sub_1E4A592B0;
  *(a1 + 176) = v28;
  *(a1 + 184) = 0;
  return result;
}

void sub_1E4A7D600(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_1E4AAA1C0();
  v110 = *(v10 - 8);
  v11 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[7];
  v128 = a1[6];
  v129 = v14;
  v130 = a1[8];
  v15 = a1[3];
  v124 = a1[2];
  v125 = v15;
  v16 = a1[5];
  v126 = a1[4];
  v127 = v16;
  v17 = a1[1];
  v122 = *a1;
  v123 = v17;
  v18 = 0;
  if (sub_1E4A7E110(a3, a4))
  {
    v109 = a5;
    if (qword_1EE042498 != -1)
    {
      swift_once();
    }

    v19 = sub_1E4AAA0E0();
    v20 = __swift_project_value_buffer(v19, qword_1EE048B28);
    sub_1E4A49D24(&v122, v121);
    v108 = v20;
    v21 = sub_1E4AAA0C0();
    v22 = sub_1E4AAA9F0();
    sub_1E4A49CD0(&v122);
    v23 = os_log_type_enabled(v21, v22);
    v106[1] = a2;
    v107 = v10;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v106[0] = swift_slowAlloc();
      v120 = v106[0];
      *v24 = 136446210;
      v117 = v128;
      v118 = v129;
      v119 = v130;
      v113 = v124;
      v114 = v125;
      v115 = v126;
      v116 = v127;
      v111 = v122;
      v112 = v123;
      sub_1E4A49D24(&v122, v121);
      v25 = WKPosterEnvironmentSnapshot.description.getter();
      v27 = v26;
      v121[6] = v117;
      v121[7] = v118;
      v121[8] = v119;
      v121[2] = v113;
      v121[3] = v114;
      v121[4] = v115;
      v121[5] = v116;
      v121[0] = v111;
      v121[1] = v112;
      sub_1E4A49CD0(v121);
      v28 = sub_1E4A85938(v25, v27, &v120);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1E4A23000, v21, v22, "Resolving Layered Stripe against Traits: %{public}s.", v24, 0xCu);
      v29 = v106[0];
      __swift_destroy_boxed_opaque_existential_1Tm(v106[0]);
      MEMORY[0x1E691FE80](v29, -1, -1);
      MEMORY[0x1E691FE80](v24, -1, -1);
    }

    v30 = *&v123;
    v31 = *&v124;
    v32 = *(a4 + 32);
    v33 = WKWallpaperAppearanceDefault;
    if ((v32)(a3, a4))
    {
      v34 = *MEMORY[0x1E697DBA8];
      v106[0] = v32;
      v35 = v110;
      v36 = v107;
      (*(v110 + 104))(v13, v34, v107);
      v37 = sub_1E4AAA1B0();
      v32 = v106[0];
      (*(v35 + 8))(v13, v36);
      if (v37)
      {
        v33 = WKWallpaperAppearanceDark;
      }
    }

    v38 = *v33;
    sub_1E4A7E338(1u, a4, v121);

    v18 = *&v121[0];
    if (!*&v121[0])
    {
      v48 = sub_1E4AAA0C0();
      v49 = sub_1E4AAAA00();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        MEMORY[0x1E691FE80](v50, -1, -1);
      }

      v51 = sub_1E4AAA0C0();
      v52 = sub_1E4AAAA10();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        MEMORY[0x1E691FE80](v53, -1, -1);
      }

      v18 = 0;
      goto LABEL_34;
    }

    sub_1E4A7E338(0, a4, v121);
    v106[0] = *&v121[0];
    if (*&v121[0])
    {
      v39 = WKWallpaperAppearanceDefault;
      if ((v32)(a3, a4))
      {
        v40 = v13;
        v41 = v110;
        v42 = v107;
        (*(v110 + 104))(v40, *MEMORY[0x1E697DBA8], v107);
        v43 = sub_1E4AAA1B0();
        (*(v41 + 8))(v40, v42);
        if (v43)
        {
          v39 = WKWallpaperAppearanceDark;
        }
      }

      v44 = *v39;
      sub_1E4A7E338(2u, a4, v121);

      v45 = *&v121[0];
      if (*&v121[0])
      {
        v46 = v106[0];
        if (v30 == 0.0)
        {

          v47 = v46;
        }

        else if (WKFloatIsOne(v30))
        {

          v47 = v18;
        }

        else
        {
          [v46[2] stripeAngleDegrees];
          v61 = v60;
          [*(v18 + 16) stripeAngleDegrees];
          v63 = v62;
          [v46[2] stripeAngleDegrees];
          v65 = v61 + v30 * (v63 - v64);
          [v46[2] stripeHeightFactor];
          v67 = v66;
          [*(v18 + 16) stripeHeightFactor];
          v69 = v68;
          [v46[2] stripeHeightFactor];
          v71 = v67 + v30 * (v69 - v70);
          [v46[2] firstStripeOffsetScaleFactor];
          v73 = v72;
          [*(v18 + 16) firstStripeOffsetScaleFactor];
          v75 = v74;
          [v46[2] firstStripeOffsetScaleFactor];
          v77 = v73 + v30 * (v75 - v76);
          v78 = [v46[2] backgroundColor];
          v79 = [*(v18 + 16) backgroundColor];
          v80 = [v78 wk:v79 interpolatedToColor:v30 progress:?];

          v81 = [objc_allocWithZone(WKLayeredStripeWallpaperInput) initWithBackgroundColor:v80 stripeAngleDegrees:v65 stripeHeightFactor:v71 firstStripeOffsetScaleFactor:v77];
          type metadata accessor for WKLayeredStripeWallpaperInput.ImplementationWrapper();
          v47 = swift_allocObject();
          *(v47 + 16) = v81;
        }

        v82 = v47;
        if (v31 == 0.0 || (v82 = v45, WKFloatIsOne(v31)))
        {

          v18 = v82;
        }

        else
        {
          [*(v47 + 16) stripeAngleDegrees];
          v84 = v83;
          [*(v45 + 16) stripeAngleDegrees];
          v86 = v85;
          [*(v47 + 16) stripeAngleDegrees];
          v88 = v84 + v31 * (v86 - v87);
          [*(v47 + 16) stripeHeightFactor];
          v90 = v89;
          [*(v45 + 16) stripeHeightFactor];
          v92 = v91;
          [*(v47 + 16) stripeHeightFactor];
          v94 = v90 + v31 * (v92 - v93);
          [*(v47 + 16) firstStripeOffsetScaleFactor];
          v96 = v95;
          [*(v45 + 16) firstStripeOffsetScaleFactor];
          v98 = v97;
          [*(v47 + 16) firstStripeOffsetScaleFactor];
          v100 = v96 + v31 * (v98 - v99);
          v101 = [*(v47 + 16) backgroundColor];
          v102 = [*(v45 + 16) backgroundColor];
          v103 = [v101 wk:v102 interpolatedToColor:v31 progress:?];

          v104 = [objc_allocWithZone(WKLayeredStripeWallpaperInput) initWithBackgroundColor:v103 stripeAngleDegrees:v88 stripeHeightFactor:v94 firstStripeOffsetScaleFactor:v100];
          type metadata accessor for WKLayeredStripeWallpaperInput.ImplementationWrapper();
          v105 = swift_allocObject();
          *(v105 + 16) = v104;

          v18 = v105;
        }

LABEL_34:
        a5 = v109;
        goto LABEL_35;
      }
    }

    v54 = sub_1E4AAA0C0();
    v55 = sub_1E4AAAA00();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      MEMORY[0x1E691FE80](v56, -1, -1);
    }

    v57 = sub_1E4AAA0C0();
    v58 = sub_1E4AAAA10();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      MEMORY[0x1E691FE80](v59, -1, -1);
    }

    goto LABEL_34;
  }

LABEL_35:
  *a5 = v18;
}

uint64_t sub_1E4A7DFFC(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 120))(@"WKWallpaperLocationCoverSheet", a1, a2) == 1)
  {
    (*(a2 + 160))(&v7, @"WKWallpaperLocationCoverSheet", a1, a2);
    if (v8)
    {
      sub_1E4A2732C(&v7, v9);
      v4 = v10;
      v5 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v5 + 24))(&v7, v4, v5);
      if (BYTE8(v7) == 1)
      {
        sub_1E4A4EF3C(v7, BYTE8(v7));
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        return 1;
      }

      sub_1E4A4EF3C(v7, BYTE8(v7));
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
    }

    else
    {
      sub_1E4A7E8C4(&v7);
    }
  }

  return 0;
}

uint64_t sub_1E4A7E110(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 120))(@"WKWallpaperLocationCoverSheet", a1, a2) == 1)
  {
    (*(a2 + 160))(&v7, @"WKWallpaperLocationCoverSheet", a1, a2);
    if (v8)
    {
      sub_1E4A2732C(&v7, v9);
      v4 = v10;
      v5 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v5 + 24))(&v7, v4, v5);
      if (BYTE8(v7) == 2)
      {
        sub_1E4A4EF3C(v7, BYTE8(v7));
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        return 1;
      }

      sub_1E4A4EF3C(v7, BYTE8(v7));
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
    }

    else
    {
      sub_1E4A7E8C4(&v7);
    }
  }

  return 0;
}

uint64_t sub_1E4A7E224(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 120))(@"WKWallpaperLocationCoverSheet", a1, a2) == 1)
  {
    (*(a2 + 160))(&v7, @"WKWallpaperLocationCoverSheet", a1, a2);
    if (v8)
    {
      sub_1E4A2732C(&v7, v9);
      v4 = v10;
      v5 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v5 + 24))(&v7, v4, v5);
      if (BYTE8(v7) == 3)
      {
        sub_1E4A4EF3C(v7, BYTE8(v7));
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        return 1;
      }

      sub_1E4A4EF3C(v7, BYTE8(v7));
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
    }

    else
    {
      sub_1E4A7E8C4(&v7);
    }
  }

  return 0;
}

void sub_1E4A7E338(unsigned __int8 a1@<W0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  if (a1 > 1u)
  {
    v4 = WKWallpaperLocationHomeScreen;
  }

  else
  {
    v4 = WKWallpaperLocationCoverSheet;
  }

  (*(a2 + 168))(v11, *v4);
  v5 = v12;
  if (!v12)
  {
    sub_1E4A7E8C4(v11);
    goto LABEL_8;
  }

  v6 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v6 + 24))(&v9, v5, v6);
  v7 = v9;
  v8 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  if (v8 != 2)
  {
    sub_1E4A4EF3C(v7, v8);
LABEL_8:
    v7 = 0;
  }

  *a3 = v7;
}

void sub_1E4A7E41C(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = sub_1E4AAA1C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  if (sub_1E4A7E224(a1, a2))
  {
    if ((*(a2 + 32))(a1, a2))
    {
      (*(v7 + 104))(v10, *MEMORY[0x1E697DBA8], v6);
      v12 = sub_1E4AAA1B0();
      (*(v7 + 8))(v10, v6);
      if (v12)
      {
        (*(a2 + 168))(v22);
        v13 = v23;
        if (v23)
        {
          v14 = v24;
          __swift_project_boxed_opaque_existential_1(v22, v23);
          (*(v14 + 24))(&v20, v13, v14);
          v11 = v20;
          v15 = v21;
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
          if (v15 == 3)
          {
            goto LABEL_14;
          }

          sub_1E4A4EF3C(v11, v15);
        }

        else
        {
          sub_1E4A7E8C4(v22);
        }
      }
    }

    (*(a2 + 168))(v22, @"WKWallpaperLocationCoverSheet", @"default", a1, a2);
    v16 = v23;
    if (!v23)
    {
      sub_1E4A7E8C4(v22);
      goto LABEL_13;
    }

    v17 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v17 + 24))(&v20, v16, v17);
    v11 = v20;
    v18 = v21;
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    if (v18 != 3)
    {
      sub_1E4A4EF3C(v11, v18);
LABEL_13:
      v11 = 0;
    }
  }

LABEL_14:
  *a3 = v11;
}

uint64_t sub_1E4A7E6DC(uint64_t a1, uint64_t a2)
{
  sub_1E4AAABC0();
  MEMORY[0x1E691ECA0](0xD000000000000018, 0x80000001E4AB9440);
  v4 = (*(a2 + 48))(a1, a2);
  MEMORY[0x1E691ECA0](v4);

  MEMORY[0x1E691ECA0](0x203A656D616E202CLL, 0xE800000000000000);
  v5 = (*(a2 + 56))(a1, a2);
  MEMORY[0x1E691ECA0](v5);

  MEMORY[0x1E691ECA0](0xD000000000000012, 0x80000001E4AB9460);
  (*(a2 + 24))(a1, a2);
  sub_1E4AAA9B0();
  MEMORY[0x1E691ECA0](0xD000000000000016, 0x80000001E4AB9480);
  v7 = (*(a2 + 64))(a1, a2);
  type metadata accessor for WKWallpaperRepresentingLogicalScreenClass(0);
  sub_1E4AAAC60();

  MEMORY[0x1E691ECA0](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_1E4A7E8C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E830, &qword_1E4AB29C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E4A7E92C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.421333333 green:0.730196078 blue:0.27372549 alpha:1.0];
  qword_1EE048BD0 = result;
  return result;
}

id sub_1E4A7E97C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.12622222 green:0.722352941 blue:0.162745098 alpha:1.0];
  qword_1EE048BB8 = result;
  return result;
}

id sub_1E4A7E9CC()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.09955556 green:0.504705882 blue:0.109411765 alpha:1.0];
  qword_1EE048BC8 = result;
  return result;
}

id sub_1E4A7EA1C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.993333333 green:0.225490196 blue:0.243137255 alpha:1.0];
  qword_1EE048BE0 = result;
  return result;
}

id sub_1E4A7EA70()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.665777778 green:0.237254902 blue:0.593333333 alpha:1.0];
  qword_1EE048BC0 = result;
  return result;
}

id sub_1E4A7EAC0()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:-0.0128888889 green:0.617254902 blue:0.868627451 alpha:1.0];
  qword_1EE048BD8 = result;
  return result;
}

uint64_t WKWallpaperRepresentingCollectionsManager.__allocating_init(downloadManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  if (a1)
  {
    v3 = *(*(a1 + 16) + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(WKWallpaperRepresentingCollectionsManager) initWithDownloadManager_];

  type metadata accessor for WKWallpaperRepresentingCollectionsManager.ImplementationWrapper();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v2 + 16) = v5;
  return v2;
}

uint64_t sub_1E4A7EBB4()
{
  v0 = [objc_opt_self() defaultManager];
  type metadata accessor for WKWallpaperRepresentingCollectionsManager();
  v1 = swift_allocObject();
  type metadata accessor for WKWallpaperRepresentingCollectionsManager.ImplementationWrapper();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v1 + 16) = v2;
  return v1;
}

uint64_t WKWallpaperRepresentingCollectionsManager.init(downloadManager:)(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*(a1 + 16) + 16);
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(WKWallpaperRepresentingCollectionsManager) initWithDownloadManager_];

  type metadata accessor for WKWallpaperRepresentingCollectionsManager.ImplementationWrapper();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v1 + 16) = v4;
  return v1;
}

uint64_t sub_1E4A7ED0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [*(*(v2 + 16) + 16) wallpaperCollectionAtIndex_];
  type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_1E4A7ED6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*(v1 + 16) + 16);
  v4 = sub_1E4AAA000();
  v5 = [v3 wallpaperCollectionWithIdentifier_];

  result = 0;
  if (v5)
  {
    type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
    result = swift_allocObject();
    *(result + 16) = v5;
  }

  *a1 = result;
  return result;
}

uint64_t WKWallpaperRepresentingCollectionsManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t WKWallpaperRepresentingCollectionsManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1E4A7EEBC()
{
  result = qword_1ECF8E840;
  if (!qword_1ECF8E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E840);
  }

  return result;
}

uint64_t sub_1E4A7F018(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E850, &qword_1E4AB2A58);
    sub_1E4A7F210(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1E4A7F0A0(uint64_t a1, uint64_t a2)
{
  result = [*(*(v2 + 16) + 16) numberOfWallpaperCollections];
  if (a1 < 0 || result < a1)
  {
    __break(1u);
  }

  else
  {
    result = [*(*(v2 + 16) + 16) numberOfWallpaperCollections];
    if ((a2 & 0x8000000000000000) == 0 && result >= a2)
    {
      return (a2 - a1);
    }
  }

  __break(1u);
  return result;
}

void *sub_1E4A7F114@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    result = [*(*(*v2 + 16) + 16) numberOfWallpaperCollections];
    if ((v4 & 0x8000000000000000) == 0 && v4 < result)
    {
      *a2 = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1E4A7F178(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = [*(*(*v1 + 16) + 16) numberOfWallpaperCollections];
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4A7F210(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WKWallpaperRepresentingCollectionsManager();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4A7F290(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF8EB70, &qword_1E4AB2A50);
    sub_1E4A7EEBC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1E4A7F34C@<X0>(void *a1@<X8>)
{
  result = [*(*(*v1 + 16) + 16) numberOfWallpaperCollections];
  *a1 = result;
  return result;
}

uint64_t (*sub_1E4A7F388(uint64_t *a1, void *a2))(uint64_t *a1)
{
  v4 = [*(*(*v2 + 16) + 16) wallpaperCollectionAtIndex_];
  type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *a1 = v5;
  return sub_1E4A7F408;
}

uint64_t sub_1E4A7F410@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  result = [*(*(v6 + 16) + 16) numberOfWallpaperCollections];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v6;
}

unint64_t sub_1E4A7F48C@<X0>(void *a1@<X8>)
{
  result = [*(*(*v1 + 16) + 16) numberOfWallpaperCollections];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = result;
  }

  return result;
}

void *sub_1E4A7F4D8@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = [*(*(*v3 + 16) + 16) numberOfWallpaperCollections];
    if ((v5 & 0x8000000000000000) == 0 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

id sub_1E4A7F53C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  result = sub_1E4A9AAC8(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v8 & 1;
  return result;
}

uint64_t *sub_1E4A7F578(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_1E4A7F594(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1E4A7F5B0(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

id sub_1E4A7F5CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = [*(*(*v2 + 16) + 16) numberOfWallpaperCollections];
  if (v4 < 0 || v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 + 1;
  }

  return result;
}

id sub_1E4A7F628(uint64_t *a1)
{
  v3 = *v1;
  v4 = *a1;
  result = [*(*(v3 + 16) + 16) numberOfWallpaperCollections];
  if (v4 < 0 || v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4 + 1;
  }

  return result;
}

uint64_t sub_1E4A7F6CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1E4A7F728()
{
  v1 = sub_1E4A7F9D0(*v0);

  return v1;
}

void *sub_1E4A7F784(void *result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_11:
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    *v4 = v3;
    v4[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = a3;
    v8 = (a3 - 1);
    while (1)
    {
      if (v6 == [*(*(v3 + 16) + 16) numberOfWallpaperCollections])
      {
        a3 = v6;
        goto LABEL_14;
      }

      v9 = [*(*(v3 + 16) + 16) wallpaperCollectionAtIndex_];
      type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      result = [*(*(v3 + 16) + 16) numberOfWallpaperCollections];
      if (v6 >= result)
      {
        break;
      }

      *(a2 + 8 * v6) = v10;
      if (v8 == v6)
      {
        a3 = v7;
        goto LABEL_14;
      }

      if (__OFADD__(++v6, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4A7F9D0(uint64_t a1)
{
  v2 = [*(*(a1 + 16) + 16) numberOfWallpaperCollections];
  result = [*(*(a1 + 16) + 16) numberOfWallpaperCollections];
  if (result < 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  result = [*(*(a1 + 16) + 16) numberOfWallpaperCollections];
  if (v2 < 0 || result < v2)
  {
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = sub_1E4A9CA34(v2, 0);
    if ([*(*(a1 + 16) + 16) numberOfWallpaperCollections])
    {
      v5 = 0;
      v6 = v2 - 1;
      while (1)
      {
        v7 = [*(*(a1 + 16) + 16) wallpaperCollectionAtIndex_];
        type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        result = [*(*(a1 + 16) + 16) numberOfWallpaperCollections];
        if (v5 >= result)
        {
          break;
        }

        v4[v5 + 4] = v8;
        if (v6 == v5)
        {
          return v4;
        }

        if (++v5 == [*(*(a1 + 16) + 16) numberOfWallpaperCollections])
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_10:
    __break(1u);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1E4A7FB30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4AAA140();

  return v1;
}

uint64_t sub_1E4A7FBA4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4AAA140();

  return v1;
}

void sub_1E4A7FC1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel_type);
  v3 = *(v0 + OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel_wallpaperRepresenting + 24);
  v2 = *(v0 + OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel_wallpaperRepresenting + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel_wallpaperRepresenting), v3);
  if (v1 <= 3)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        v4 = sub_1E4A93BDC(v3, v2);
        if (v4)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v4 = sub_1E4A93C10(v3, v2);
        if (v4)
        {
          goto LABEL_24;
        }
      }
    }

    else if (v1)
    {
      v4 = sub_1E4A93A28(v3, v2);
      if (v4)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v4 = (*(*(v2 + 16) + 16))(v3);
      if (v4)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v1 <= 5)
  {
    if (v1 != 4)
    {
      v4 = sub_1E4A932B0(v3, v2);
      if (!v4)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    v4 = sub_1E4A944A0(v3, v2);
    if (v4)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v1 != 6)
    {
      if (v1 == 7)
      {
        v4 = sub_1E4A944B8(v3, v2);
        if (!v4)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v4 = sub_1E4A950A0(v3, v2);
        if (!v4)
        {
          goto LABEL_26;
        }
      }

LABEL_24:
      [v4 size];
      goto LABEL_26;
    }

    v4 = sub_1E4A944AC(v3, v2);
    if (v4)
    {
      goto LABEL_24;
    }
  }

LABEL_26:
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1E4AAA150();
  if (v4)
  {
    v5 = v4;
    sub_1E4AAA600();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1E4AAA150();
}

uint64_t sub_1E4A7FE54()
{
  v1 = OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel__image;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E898, &qword_1E4AB2D98);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel__imageSize;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E8A0, &qword_1E4AB2DA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC12WallpaperKit25WKWallpaperImageViewModel_wallpaperRepresenting));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WKWallpaperImageViewModel()
{
  result = qword_1EE043EF0;
  if (!qword_1EE043EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A7FFAC()
{
  sub_1E4A800B8(319, qword_1EE043A38, &qword_1ECF8E888, &unk_1E4AB2D20);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1E4A800B8(319, &qword_1EE043A30, &qword_1ECF8E890, qword_1E4AB5420);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E4A800B8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1E4AAA160();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1E4A80118@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1E4AAA120();
  *a1 = result;
  return result;
}

uint64_t sub_1E4A80214@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = type metadata accessor for WKBokehViewRepresentable();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v75 = (v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E8A8, &qword_1E4AB2F88);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v70 - v7;
  v9 = type metadata accessor for WKWallpaperPreviewImage();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1E4AAA320();
  v73 = *(v13 - 8);
  v74 = v13;
  v14 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v72 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E8B0, &qword_1E4AB2F90);
  v78 = *(v16 - 8);
  v17 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v76 = v70 - v18;
  v19 = v1[7];
  v137 = v1[6];
  v138 = v19;
  v139 = v1[8];
  v140 = *(v1 + 144);
  v20 = v1[3];
  v133 = v1[2];
  v134 = v20;
  v21 = v1[5];
  v135 = v1[4];
  v136 = v21;
  v22 = v1[1];
  v131 = *v1;
  v132 = v22;
  v23 = *(v1 + 19);
  v71 = *(v1 + 160);
  v24 = *(v1 + 21);
  v25 = swift_retain_n();
  if (sub_1E4A5A770(v25))
  {
    v26 = v1[7];
    v129[6] = v1[6];
    v129[7] = v26;
    v129[8] = v1[8];
    v130 = *(v1 + 144);
    v27 = v1[3];
    v129[2] = v1[2];
    v129[3] = v27;
    v28 = v1[5];
    v129[4] = v1[4];
    v129[5] = v28;
    v29 = v1[1];
    v129[0] = *v1;
    v129[1] = v29;
    v30 = sub_1E4A49C60(v129) == 1;
    v70[1] = v5;
    if (v30)
    {
      nullsub_1(v129);
      v106 = v137;
      v107 = v138;
      v108 = v139;
      v109 = v140;
      v102 = v133;
      v103 = v134;
      v104 = v135;
      v105 = v136;
      v100 = v131;
      v101 = v132;
      v31 = nullsub_1(&v100);
      v120 = *v31;
      v32 = v31[1];
      v33 = v31[2];
      v34 = v31[3];
      v124 = v31[4];
      v123 = v34;
      v121 = v32;
      v122 = v33;
      v35 = v31[5];
      v36 = v31[6];
      v37 = v31[7];
      v128 = v31[8];
      v127 = v37;
      v126 = v36;
      v125 = v35;
      v119 = v140;
      v117 = v138;
      v118 = v139;
      v115 = v136;
      v116 = v137;
      v113 = v134;
      v114 = v135;
      v111 = v132;
      v112 = v133;
      v110 = v131;
      v38 = nullsub_1(&v110);
      sub_1E4A49D24(v38, &v80);
    }

    else
    {
      nullsub_1(v129);
      v106 = v137;
      v107 = v138;
      v108 = v139;
      v109 = v140;
      v102 = v133;
      v103 = v134;
      v104 = v135;
      v105 = v136;
      v100 = v131;
      v101 = v132;
      v70[0] = *nullsub_1(&v100);
      v110 = v131;
      v111 = v132;
      v114 = v135;
      v115 = v136;
      v112 = v133;
      v113 = v134;
      v119 = v140;
      v117 = v138;
      v118 = v139;
      v116 = v137;
      v42 = *nullsub_1(&v110);

      sub_1E4AAAA10();
      v43 = v9;
      v44 = sub_1E4AAA4E0();
      sub_1E4AAA0B0();

      v9 = v43;
      v45 = v72;
      sub_1E4AAA310();
      swift_getAtKeyPath();
      sub_1E4A49C68(&v131);
      (*(v73 + 8))(v45, v74);
    }

    v99[6] = v126;
    v99[7] = v127;
    v99[8] = v128;
    v99[2] = v122;
    v99[3] = v123;
    v99[4] = v124;
    v99[5] = v125;
    v99[0] = v120;
    v99[1] = v121;
    sub_1E4A49CD0(v99);
    if (v99[0])
    {
      goto LABEL_12;
    }

    v46 = v9;

    if ((v71 & 1) == 0)
    {
      sub_1E4AAAA10();
      v47 = sub_1E4AAA4E0();
      sub_1E4AAA0B0();

      v48 = v72;
      sub_1E4AAA310();
      swift_getAtKeyPath();

      (*(v73 + 8))(v48, v74);
      v23 = v110;
    }

    swift_getKeyPath();
    *&v110 = v23;
    sub_1E4A80D40(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
    sub_1E4AAA060();

    v49 = *(v23 + 184);

    if (v49)
    {
LABEL_12:

      v50 = v76;
    }

    else
    {
      v116 = v137;
      v117 = v138;
      v118 = v139;
      v119 = v140;
      v112 = v133;
      v113 = v134;
      v114 = v135;
      v115 = v136;
      v110 = v131;
      v111 = v132;
      if (sub_1E4A49C60(&v110) == 1)
      {
        nullsub_1(&v110);
        v86 = v137;
        v87 = v138;
        v88 = v139;
        v89 = v140;
        v82 = v133;
        v83 = v134;
        v84 = v135;
        v85 = v136;
        v80 = v131;
        v81 = v132;
        v56 = nullsub_1(&v80);
        v90 = *v56;
        v57 = v56[1];
        v58 = v56[2];
        v59 = v56[4];
        v93 = v56[3];
        v94 = v59;
        v91 = v57;
        v92 = v58;
        v60 = v56[5];
        v61 = v56[6];
        v62 = v56[8];
        v97 = v56[7];
        v98 = v62;
        v95 = v60;
        v96 = v61;
        v109 = v140;
        v107 = v138;
        v108 = v139;
        v105 = v136;
        v106 = v137;
        v103 = v134;
        v104 = v135;
        v101 = v132;
        v102 = v133;
        v100 = v131;
        v63 = nullsub_1(&v100);
        sub_1E4A49D24(v63, &v79);
      }

      else
      {
        nullsub_1(&v110);
        v86 = v137;
        v87 = v138;
        v88 = v139;
        v89 = v140;
        v82 = v133;
        v83 = v134;
        v84 = v135;
        v85 = v136;
        v80 = v131;
        v81 = v132;
        v64 = *nullsub_1(&v80);
        v100 = v131;
        v101 = v132;
        v104 = v135;
        v105 = v136;
        v102 = v133;
        v103 = v134;
        v109 = v140;
        v107 = v138;
        v108 = v139;
        v106 = v137;
        v65 = *nullsub_1(&v100);

        sub_1E4AAAA10();
        v66 = sub_1E4AAA4E0();
        sub_1E4AAA0B0();

        v67 = v72;
        sub_1E4AAA310();
        swift_getAtKeyPath();
        sub_1E4A49C68(&v131);
        (*(v73 + 8))(v67, v74);
      }

      v50 = v76;
      v106 = v96;
      v107 = v97;
      v108 = v98;
      v102 = v92;
      v103 = v93;
      v104 = v94;
      v105 = v95;
      v100 = v90;
      v101 = v91;
      sub_1E4A49CD0(&v100);

      if (BYTE8(v102) == 1)
      {
        v68 = (v12 + v46[6]);
        v68[3] = &type metadata for WKWallpaperBundle;
        v68[4] = sub_1E4A50754();
        *v68 = v24;
        *v12 = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
        swift_storeEnumTagMultiPayload();
        v69 = v12 + v46[5];
        *v69 = swift_getKeyPath();
        *(v69 + 1) = 0;
        v69[16] = 0;
        *(v12 + v46[7]) = 1;
        v54 = type metadata accessor for WKWallpaperPreviewImage;
        sub_1E4A80DF8(v12, v8, type metadata accessor for WKWallpaperPreviewImage);
        goto LABEL_14;
      }
    }

    v12 = v75;
    v51 = v75 + *(v2 + 24);
    *(v51 + 3) = &type metadata for WKWallpaperBundle;
    *(v51 + 4) = sub_1E4A50754();
    *v51 = v24;
    *v12 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
    swift_storeEnumTagMultiPayload();
    v52 = v12 + *(v2 + 20);
    type metadata accessor for WKWallpaperPosterLayerViewModel();
    sub_1E4A80D40(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
    *v52 = sub_1E4AAA1E0();
    v52[8] = v53 & 1;
    v54 = type metadata accessor for WKBokehViewRepresentable;
    sub_1E4A80DF8(v12, v8, type metadata accessor for WKBokehViewRepresentable);
LABEL_14:
    swift_storeEnumTagMultiPayload();
    sub_1E4A80D40(qword_1EE042D40, type metadata accessor for WKWallpaperPreviewImage);
    sub_1E4A80D40(&qword_1EE042CF8, type metadata accessor for WKBokehViewRepresentable);
    sub_1E4AAA430();
    sub_1E4A80E60(v12, v54);
    v55 = v77;
    sub_1E4A80D88(v50, v77);
    return (*(v78 + 56))(v55, 0, 1, v16);
  }

  v39 = v77;
  v40 = *(v78 + 56);

  return v40(v39, 1, 1, v16);
}