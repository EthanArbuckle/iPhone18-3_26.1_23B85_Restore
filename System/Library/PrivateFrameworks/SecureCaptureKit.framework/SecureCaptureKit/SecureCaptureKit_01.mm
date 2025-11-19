void sub_264F097B0()
{
  BSDispatchQueueAssertMain();
  v1 = OBJC_IVAR___SESecureCaptureSceneViewController_scenePresenter;
  v2 = *&v0[OBJC_IVAR___SESecureCaptureSceneViewController_scenePresenter];
  if (v2)
  {
    [v2 invalidate];
    v3 = *&v0[v1];
  }

  *&v0[v1] = 0;
  swift_unknownObjectRelease();
  v0[OBJC_IVAR___SESecureCaptureSceneViewController_sceneForeground] = 0;
  v4 = OBJC_IVAR___SESecureCaptureSceneViewController_activatedSceneView;
  v5 = *&v0[OBJC_IVAR___SESecureCaptureSceneViewController_activatedSceneView];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v0[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v0[v4] = 0;

  v7 = OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView;
  v8 = *&v0[OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView];
  if (v8)
  {
    [v8 removeFromSuperview];
    v9 = *&v0[v7];
  }

  else
  {
    v9 = 0;
  }

  *&v0[v7] = 0;

  v10 = OBJC_IVAR___SESecureCaptureSceneViewController_scene;
  v11 = *&v0[OBJC_IVAR___SESecureCaptureSceneViewController_scene];
  if (v11)
  {
    v12 = v11;
    v13 = [v12 layerManager];
    [v13 remove_];

    [v12 invalidate];
    [v12 setDelegate_];
    v14 = *&v0[v10];
    *&v0[v10] = 0;

    v15 = [v0 delegate];
    if (v15)
    {
      [v15 secureCaptureSceneViewController:v0 didDestroyScene:v12];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  if (MEMORY[0x277D84F90] >> 62 && sub_264F13584())
  {
    sub_264F02E9C(MEMORY[0x277D84F90]);
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  v17 = *&v0[OBJC_IVAR___SESecureCaptureSceneViewController_launchActions];
  *&v0[OBJC_IVAR___SESecureCaptureSceneViewController_launchActions] = v16;

  v18 = OBJC_IVAR___SESecureCaptureSceneViewController_assertion;
  v19 = *&v0[OBJC_IVAR___SESecureCaptureSceneViewController_assertion];
  if (v19)
  {
    [v19 invalidate];
    v20 = *&v0[v18];
  }

  else
  {
    v20 = 0;
  }

  *&v0[v18] = 0;

  v0[OBJC_IVAR___SESecureCaptureSceneViewController_invalidated] = 1;
}

Swift::Void __swiftcall SESecureCaptureSceneViewController.invalidate()()
{
  BSDispatchQueueAssertMain();
  v1 = OBJC_IVAR___SESecureCaptureSceneViewController_invalidated;
  if ((*(v0 + OBJC_IVAR___SESecureCaptureSceneViewController_invalidated) & 1) == 0)
  {
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v2 = sub_264F13154();
    __swift_project_value_buffer(v2, qword_27FFBE290);
    v3 = v0;
    v4 = sub_264F13134();
    v5 = sub_264F13424();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136446210;
      v8 = sub_264F048F4();
      v10 = sub_264F0C768(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_264EF1000, v4, v5, "[%{public}s] Capture Extension Scene Invalidated", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x266753530](v7, -1, -1);
      MEMORY[0x266753530](v6, -1, -1);
    }

    *(v0 + v1) = 1;
    sub_264F097B0();
  }
}

id SESecureCaptureSceneViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_264F13204();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

uint64_t sub_264F09C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_264F13314();
  v5[4] = sub_264F13304();
  v7 = sub_264F132D4();

  return MEMORY[0x2822009F8](sub_264F09CF4, v7, v6);
}

uint64_t sub_264F09CF4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = *(v3 + OBJC_IVAR___SESecureCaptureSceneViewController_currentPath);
  *(v3 + OBJC_IVAR___SESecureCaptureSceneViewController_currentPath) = v2;
  v5 = v2;

  v6 = v0[1];

  return v6();
}

uint64_t sub_264F09D78(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = *v2;
  v9 = sub_264F13334();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_264F13314();
  v10 = a2;
  v11 = v8;
  v12 = sub_264F13304();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  v13[5] = a2;
  sub_264EF30BC(0, 0, v7, &unk_264F153B8, v13);
}

void sub_264F09EA4(uint64_t a1, uint64_t a2)
{
  v5 = sub_264F13064();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___SESecureCaptureSceneViewController_assertion;
  if (!*&v2[OBJC_IVAR___SESecureCaptureSceneViewController_assertion])
  {
    v84 = v8;
    v12 = [v2 _scene];
    if (v12 && (v13 = v12, v14 = [v12 clientHandle], v13, v14) && (v15 = objc_msgSend(v14, sel_processHandle), v14, v15) && (v16 = objc_msgSend(v15, sel_identity), v15, v16))
    {
      if (qword_27FFBD950 != -1)
      {
        swift_once();
      }

      v17 = sub_264F13154();
      v18 = __swift_project_value_buffer(v17, qword_27FFBE290);
      v82 = v2;
      v19 = v2;
      v78 = v18;
      v20 = sub_264F13134();
      v21 = sub_264F13424();

      v22 = os_log_type_enabled(v20, v21);
      v83 = v16;
      v79 = a2;
      v77 = v19;
      if (v22)
      {
        v23 = v19;
        v24 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        aBlock = v81;
        *v24 = 136446466;
        v25 = sub_264F048F4();
        v27 = sub_264F0C768(v25, v26, &aBlock);

        *(v24 + 4) = v27;
        *(v24 + 12) = 2080;
        v28 = [objc_msgSend(v23 extensionProvider)];
        swift_unknownObjectRelease();
        v29 = sub_264F13214();
        v31 = v30;

        v16 = v83;
        v32 = sub_264F0C768(v29, v31, &aBlock);

        *(v24 + 14) = v32;
        _os_log_impl(&dword_264EF1000, v20, v21, "[%{public}s] Acquiring secure capture process assertion for bundle identifier: %s", v24, 0x16u);
        v33 = v81;
        swift_arrayDestroy();
        MEMORY[0x266753530](v33, -1, -1);
        MEMORY[0x266753530](v24, -1, -1);
      }

      v81 = [objc_opt_self() targetWithProcessIdentity_];
      v91 = MEMORY[0x277D84F90];
      sub_264F13054();
      aBlock = 0;
      v86 = 0xE000000000000000;
      sub_264F13634();

      aBlock = 0xD000000000000018;
      v86 = 0x8000000264F16550;
      sub_264F0E898(&qword_27FFBDF40, MEMORY[0x277CC95F0]);
      v34 = sub_264F136D4();
      MEMORY[0x2667528B0](v34);

      v35 = sub_264F13204();

      v36 = objc_opt_self();
      v37 = [v36 attributeWithTag_];

      MEMORY[0x2667528D0]();
      if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v74 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_264F132A4();
      }

      v80 = "com.apple.securecapture-";
      sub_264F132B4();
      sub_264EFA5BC(&unk_2876BFCB8);
      sub_264EFB174(&unk_2876BFCD8, &qword_27FFBDF48, &qword_264F153C8);
      v38 = sub_264F131C4();

      v39 = MKBGetDeviceLockState();

      if (v39 > 6 || ((1 << v39) & 0x46) == 0)
      {
        v40 = v77;
        v41 = sub_264F13134();
        v42 = sub_264F13424();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          aBlock = v44;
          *v43 = 136446210;
          LODWORD(v78) = v42;
          v45 = sub_264F048F4();
          v47 = sub_264F0C768(v45, v46, &aBlock);

          *(v43 + 4) = v47;
          _os_log_impl(&dword_264EF1000, v41, v78, "[%{public}s] Adding unlocked attribute tag for the process assertion", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v44);
          MEMORY[0x266753530](v44, -1, -1);
          MEMORY[0x266753530](v43, -1, -1);
        }

        v48 = sub_264F13204();
        v49 = [v36 attributeWithTag_];

        MEMORY[0x2667528D0]();
        if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v75 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_264F132A4();
        }

        sub_264F132B4();
      }

      v50 = objc_allocWithZone(MEMORY[0x277D46DB8]);
      v51 = v81;
      v52 = sub_264F13204();
      sub_264EFB608(0, &unk_27FFBDF50, 0x277D46DD8);
      v53 = sub_264F13284();

      v54 = [v50 initWithExplanation:v52 target:v51 attributes:v53];

      v55 = v82;
      v56 = *&v82[v11];
      *&v82[v11] = v54;

      v57 = *&v55[v11];
      if (v57)
      {
        if (a1)
        {
          v89 = a1;
          v90 = v79;
          aBlock = MEMORY[0x277D85DD0];
          v86 = 1107296256;
          v87 = sub_264F0A890;
          v88 = &block_descriptor_47;
          v58 = _Block_copy(&aBlock);
          v59 = v57;
          sub_264F0ED74(a1);
        }

        else
        {
          v59 = v57;
          v58 = 0;
        }

        [v59 acquireWithInvalidationHandler_];
        _Block_release(v58);
      }

      else
      {
      }

      (*(v6 + 8))(v10, v84);
    }

    else
    {
      if (qword_27FFBD950 != -1)
      {
        swift_once();
      }

      v60 = sub_264F13154();
      __swift_project_value_buffer(v60, qword_27FFBE290);
      v61 = v2;
      v84 = sub_264F13134();
      v62 = sub_264F13414();

      if (os_log_type_enabled(v84, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        aBlock = v64;
        *v63 = 136446466;
        v65 = sub_264F048F4();
        v67 = sub_264F0C768(v65, v66, &aBlock);

        *(v63 + 4) = v67;
        *(v63 + 12) = 2080;
        v68 = [objc_msgSend(v61 extensionProvider)];
        swift_unknownObjectRelease();
        v69 = sub_264F13214();
        v71 = v70;

        v72 = sub_264F0C768(v69, v71, &aBlock);

        *(v63 + 14) = v72;
        _os_log_impl(&dword_264EF1000, v84, v62, "[%{public}s] Failed to acquire secure capture process assertion for bundle identifier: %s, no process identity found for the scene", v63, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266753530](v64, -1, -1);
        MEMORY[0x266753530](v63, -1, -1);
      }

      else
      {
        v73 = v84;
      }
    }
  }
}

void sub_264F0A890(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

id SESecureCaptureSceneViewController.sceneDidActivate(_:)(void *a1)
{
  if (qword_27FFBD950 != -1)
  {
    swift_once();
  }

  v3 = sub_264F13154();
  __swift_project_value_buffer(v3, qword_27FFBE290);
  v4 = v1;
  v5 = sub_264F13134();
  v6 = sub_264F13424();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136446210;
    v9 = sub_264F048F4();
    v11 = sub_264F0C768(v9, v10, v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_264EF1000, v5, v6, "[%{public}s] Capture Scene did activate.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x266753530](v8, -1, -1);
    MEMORY[0x266753530](v7, -1, -1);
  }

  *(v4 + OBJC_IVAR___SESecureCaptureSceneViewController_sceneActivated) = 1;
  type metadata accessor for SecureCaptureSceneExtension();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for SecureCaptureSceneSessionPathHostComponent();
  result = [a1 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()];
  if (result)
  {
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = v14;
      v18[3] = type metadata accessor for SESecureCaptureSceneViewController(v14);
      v18[4] = &off_2876C0580;
      v18[0] = v4;
      v16 = OBJC_IVAR____TtC16SecureCaptureKit42SecureCaptureSceneSessionPathHostComponent_delegate;
      swift_beginAccess();
      v17 = v4;
      sub_264F0D04C(v18, v15 + v16);
      swift_endAccess();
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void SESecureCaptureSceneViewController.sceneDidDeactivate(_:withError:)(void *a1, NSObject *a2)
{
  v3 = v2;
  v4 = a1;
  v2[OBJC_IVAR___SESecureCaptureSceneViewController_sceneActivated] = 0;
  v5 = 0x27FFBD000;
  v6 = 0x27FFBD000uLL;
  if (!a2)
  {
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v25 = sub_264F13154();
    __swift_project_value_buffer(v25, qword_27FFBE290);
    v26 = v2;
    v7 = sub_264F13134();
    v27 = sub_264F13424();

    if (os_log_type_enabled(v7, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v103 = v29;
      *v28 = 136446210;
      v30 = sub_264F048F4();
      v32 = sub_264F0C768(v30, v31, &v103);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_264EF1000, v7, v27, "[%{public}s] Capture Scene did deactivate.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x266753530](v29, -1, -1);
      MEMORY[0x266753530](v28, -1, -1);
    }

    goto LABEL_27;
  }

  v7 = a2;
  v8 = a2;
  if (qword_27FFBD950 != -1)
  {
    swift_once();
  }

  v9 = sub_264F13154();
  __swift_project_value_buffer(v9, qword_27FFBE290);
  v10 = v7;
  v11 = v2;
  v12 = sub_264F13134();
  v13 = sub_264F13424();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v103 = v15;
    *v14 = 136446466;
    v16 = sub_264F048F4();
    v18 = sub_264F0C768(v16, v17, &v103);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    swift_getErrorValue();
    v19 = sub_264F13764();
    v21 = sub_264F0C768(v19, v20, &v103);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_264EF1000, v12, v13, "[%{public}s] Capture Scene did deactivate with error: %{public}s.", v14, 0x16u);
    swift_arrayDestroy();
    v22 = v15;
    v3 = v2;
    v5 = 0x27FFBD000uLL;
    MEMORY[0x266753530](v22, -1, -1);
    v23 = v14;
    v6 = 0x27FFBD000uLL;
    MEMORY[0x266753530](v23, -1, -1);
  }

  v24 = v7;
  v4 = a1;
  if (sub_264F0D200(v7))
  {
  }

  else
  {
    v33 = sub_264F0D0BC(v7);

    if ((v33 & 1) == 0)
    {
LABEL_27:

      goto LABEL_28;
    }
  }

  v34 = v5;
  v35 = *&v11[*(v5 + 3264)];
  if (!v35)
  {

    v5 = v34;
    goto LABEL_28;
  }

  sub_264EFB608(0, &qword_27FFBDD38, 0x277D82BB8);
  v36 = v35;
  if ((sub_264F13504() & 1) == 0)
  {
    goto LABEL_25;
  }

  v99 = v36;
  v37 = [a1 settings];
  v38 = [v37 isForeground];

  v5 = v34;
  if ((v11[OBJC_IVAR___SESecureCaptureSceneViewController_invalidated] & 1) != 0 || (v38 & 1) == 0)
  {

    goto LABEL_27;
  }

  v39 = v11;
  v40 = sub_264F13134();
  v41 = sub_264F13424();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v103 = v43;
    *v42 = 136446210;
    v44 = sub_264F048F4();
    v46 = v3;
    v47 = sub_264F0C768(v44, v45, &v103);

    *(v42 + 4) = v47;
    v3 = v46;
    _os_log_impl(&dword_264EF1000, v40, v41, "[%{public}s] Scene did deactivate but was foreground - reactivation needed.", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x266753530](v43, -1, -1);
    v48 = v42;
    v6 = 0x27FFBD000;
    MEMORY[0x266753530](v48, -1, -1);
  }

  v36 = v99;
  v49 = [v39 delegate];
  v4 = a1;
  if (!v49)
  {
LABEL_25:

    v5 = v34;
    goto LABEL_28;
  }

  v50 = v49;
  if (([v49 respondsToSelector_] & 1) == 0)
  {

    swift_unknownObjectRelease();
    v5 = v34;
LABEL_28:
    if (!*&v3[*(v5 + 3264)])
    {
      if (*(v6 + 2384) != -1)
      {
        swift_once();
      }

      v68 = sub_264F13154();
      __swift_project_value_buffer(v68, qword_27FFBE290);
      v69 = v3;
      v70 = v4;
      v71 = v4;
      v72 = sub_264F13134();
      v73 = sub_264F13414();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v103 = v75;
        *v74 = 136446466;
        v76 = sub_264F048F4();
        v78 = sub_264F0C768(v76, v77, &v103);

        *(v74 + 4) = v78;
        *(v74 + 12) = 2080;
        v79 = [v71 identifier];
        v80 = sub_264F13214();
        v82 = v81;

        v83 = sub_264F0C768(v80, v82, &v103);

        *(v74 + 14) = v83;
        _os_log_impl(&dword_264EF1000, v72, v73, "[%{public}s] No Capture Scene found: %s", v74, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266753530](v75, -1, -1);
        MEMORY[0x266753530](v74, -1, -1);
      }

      v4 = v70;
      goto LABEL_51;
    }

    v52 = *&v3[OBJC_IVAR___SESecureCaptureSceneViewController_currentPath];
    if (v52)
    {
      v53 = v52;
      v54 = [v53 finalizeTemporarySessionPathForExtension_];
      swift_unknownObjectRelease();
      if (v54)
      {

        if (*(v6 + 2384) != -1)
        {
          swift_once();
        }

        v55 = sub_264F13154();
        __swift_project_value_buffer(v55, qword_27FFBE290);
        v56 = v3;
        v57 = v53;
        v58 = sub_264F13134();
        v59 = sub_264F133F4();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v100 = v3;
          v61 = swift_slowAlloc();
          v102 = v4;
          v62 = swift_slowAlloc();
          v103 = v62;
          *v60 = 136446466;
          v63 = sub_264F048F4();
          v65 = sub_264F0C768(v63, v64, &v103);

          *(v60 + 4) = v65;
          *(v60 + 12) = 2112;
          *(v60 + 14) = v57;
          *v61 = v52;
          v66 = v57;
          v67 = "[%{public}s] Finalized path %@";
LABEL_48:
          _os_log_impl(&dword_264EF1000, v58, v59, v67, v60, 0x16u);
          sub_264EFB174(v61, &qword_27FFBDD30, &qword_264F15258);
          v97 = v61;
          v3 = v100;
          MEMORY[0x266753530](v97, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v62);
          v98 = v62;
          v4 = v102;
          MEMORY[0x266753530](v98, -1, -1);
          MEMORY[0x266753530](v60, -1, -1);

LABEL_51:
          sub_264F0B788(v3, v4);
          return;
        }
      }

      else
      {
        if (*(v6 + 2384) != -1)
        {
          swift_once();
        }

        v92 = sub_264F13154();
        __swift_project_value_buffer(v92, qword_27FFBE290);
        v93 = v3;
        v57 = v53;
        v58 = sub_264F13134();
        v59 = sub_264F13414();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v100 = v3;
          v61 = swift_slowAlloc();
          v102 = v4;
          v62 = swift_slowAlloc();
          v103 = v62;
          *v60 = 136446466;
          v94 = sub_264F048F4();
          v96 = sub_264F0C768(v94, v95, &v103);

          *(v60 + 4) = v96;
          *(v60 + 12) = 2112;
          *(v60 + 14) = v57;
          *v61 = v52;
          v66 = v57;
          v67 = "[%{public}s] Failed to finalize current path %@";
          goto LABEL_48;
        }
      }
    }

    else
    {
      if (*(v6 + 2384) != -1)
      {
        swift_once();
      }

      v84 = sub_264F13154();
      __swift_project_value_buffer(v84, qword_27FFBE290);
      v85 = v3;
      v58 = sub_264F13134();
      v86 = sub_264F13414();

      if (os_log_type_enabled(v58, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v103 = v88;
        *v87 = 136446210;
        v89 = sub_264F048F4();
        v91 = sub_264F0C768(v89, v90, &v103);

        *(v87 + 4) = v91;
        _os_log_impl(&dword_264EF1000, v58, v86, "[%{public}s] No current path to finalize on scene deactivation...", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v88);
        MEMORY[0x266753530](v88, -1, -1);
        MEMORY[0x266753530](v87, -1, -1);
      }
    }

    goto LABEL_51;
  }

  v51 = [v50 secureCaptureSceneViewController:v39 requestsSceneReactivation:a1];

  swift_unknownObjectRelease();
  v5 = v34;
  if ((v51 & 1) == 0)
  {
    goto LABEL_28;
  }
}

id sub_264F0B788(char *a1, uint64_t a2)
{
  v4 = *&a1[OBJC_IVAR___SESecureCaptureSceneViewController_currentPath];
  if (v4)
  {
    [v4 invalidate];
  }

  v5 = [objc_msgSend(a1 extensionProvider)];
  swift_unknownObjectRelease();
  if (!v5)
  {
LABEL_9:
    [objc_opt_self() removeContentsOfExtensionDataContainerForBundleProvider_];
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v6 = sub_264F13214();
  v8 = v7;

  if (v6 != 0xD000000000000010 || 0x8000000264F16600 != v8)
  {
    v10 = sub_264F136F4();

    if (v10)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_11:
  v11 = *&a1[OBJC_IVAR___SESecureCaptureSceneViewController_assertion];
  if (v11)
  {
    [v11 invalidate];
  }

  result = [a1 delegate];
  if (result)
  {
    v13 = result;
    if ([result respondsToSelector_])
    {
      [v13 secureCaptureSceneViewController:a1 sceneDidDeactivate:a2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id SESecureCaptureSceneViewController.sceneContentStateDidChange(_:)(void *a1)
{
  if (qword_27FFBD950 != -1)
  {
    swift_once();
  }

  v3 = sub_264F13154();
  __swift_project_value_buffer(v3, qword_27FFBE290);
  v4 = v1;
  v5 = a1;
  v6 = sub_264F13134();
  v7 = sub_264F13424();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446466;
    v10 = sub_264F048F4();
    v12 = sub_264F0C768(v10, v11, &v21);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v20 = [v5 contentState];
    type metadata accessor for FBSceneContentState(0);
    v13 = sub_264F13224();
    v15 = sub_264F0C768(v13, v14, &v21);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_264EF1000, v6, v7, "[%{public}s] Content state changed: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266753530](v9, -1, -1);
    MEMORY[0x266753530](v8, -1, -1);
  }

  if ([v5 contentState] == 2)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v4;
    v17 = v4;
    sub_264F09EA4(sub_264F0D4B0, v16);
  }

  result = [v4 delegate];
  if (result)
  {
    v19 = result;
    if ([result respondsToSelector_])
    {
      if ([v19 respondsToSelector_])
      {
        [v19 secureCaptureSceneViewController:v4 sceneContentStateDidChange:v5];
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_264F0BC64(void *a1, NSObject *a2, void *a3)
{
  if (a2)
  {
    v5 = a2;
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v6 = sub_264F13154();
    __swift_project_value_buffer(v6, qword_27FFBE290);
    v7 = a2;
    v8 = a3;
    v9 = sub_264F13134();
    v10 = sub_264F13414();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v36 = v12;
      *v11 = 136446466;
      v13 = sub_264F048F4();
      v15 = sub_264F0C768(v13, v14, &v36);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      swift_getErrorValue();
      v16 = sub_264F13764();
      v18 = sub_264F0C768(v16, v17, &v36);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_264EF1000, v9, v10, "[%{public}s] Failed to acquire assertion: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266753530](v12, -1, -1);
      MEMORY[0x266753530](v11, -1, -1);

      return;
    }

    v34 = a2;
  }

  else
  {
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v20 = sub_264F13154();
    __swift_project_value_buffer(v20, qword_27FFBE290);
    v21 = a3;
    v22 = a1;
    oslog = sub_264F13134();
    v23 = sub_264F13424();

    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36 = v25;
      *v24 = 136446466;
      v26 = sub_264F048F4();
      v28 = sub_264F0C768(v26, v27, &v36);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v29 = [v22 description];
      v30 = sub_264F13214();
      v32 = v31;

      v33 = sub_264F0C768(v30, v32, &v36);

      *(v24 + 14) = v33;
      _os_log_impl(&dword_264EF1000, oslog, v23, "[%{public}s] Runningboard assertion invalidated: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266753530](v25, -1, -1);
      MEMORY[0x266753530](v24, -1, -1);

      return;
    }

    v34 = oslog;
  }
}

void sub_264F0C0A4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_264F0C110(void *a1, id a2)
{
  if ([a2 canSendResponse])
  {
    if (a1)
    {
      a1 = sub_264F12FC4();
    }

    v4 = [objc_opt_self() responseForError_];

    [a2 sendResponse_];
  }
}

void sub_264F0C4AC(char *a1)
{
  v2 = OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionAssistant;
  if (![*&a1[OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionAssistant] shouldShield])
  {
    sub_264F0629C();
    return;
  }

  v3 = OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionViewController;
  if (*&a1[OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionViewController])
  {
    return;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D243C0]) initWithAssistant_];
  v5 = [v4 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5;
  v7 = [a1 view];
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v6 setFrame_];
  v17 = [v4 view];
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  [v17 setAutoresizingMask_];

  v19 = [a1 view];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v19;
  v21 = [v4 view];

  if (!v21)
  {
LABEL_17:
    __break(1u);
    return;
  }

  [v20 addSubview_];

  [a1 addChildViewController_];
  [v4 didMoveToParentViewController_];
  v22 = *&a1[v3];
  *&a1[v3] = v4;
}

uint64_t sub_264F0C71C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_264F0C768(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_264F0C834(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_264F0E9A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_264F0C834(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_264F0C940(a5, a6);
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
    result = sub_264F13654();
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

uint64_t sub_264F0C940(uint64_t a1, unint64_t a2)
{
  v4 = sub_264F0C98C(a1, a2);
  sub_264F0CABC(&unk_2876BFC90);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_264F0C98C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_264F0CBA8(v5, 0);
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

  result = sub_264F13654();
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
        v10 = sub_264F13264();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_264F0CBA8(v10, 0);
        result = sub_264F13624();
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

uint64_t sub_264F0CABC(uint64_t result)
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

  result = sub_264F0CC1C(result, v12, 1, v3);
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

void *sub_264F0CBA8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDF68, &qword_264F153D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_264F0CC1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDF68, &qword_264F153D8);
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

id sub_264F0CD10(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___SESecureCaptureSceneViewController_scene] = 0;
  v2[OBJC_IVAR___SESecureCaptureSceneViewController_sceneForeground] = 0;
  v2[OBJC_IVAR___SESecureCaptureSceneViewController_sceneActivated] = 0;
  v2[OBJC_IVAR___SESecureCaptureSceneViewController_invalidated] = 0;
  *&v2[OBJC_IVAR___SESecureCaptureSceneViewController_scenePresenter] = 0;
  *&v2[OBJC_IVAR___SESecureCaptureSceneViewController_activatedSceneView] = 0;
  *&v2[OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView] = 0;
  *&v2[OBJC_IVAR___SESecureCaptureSceneViewController_currentPath] = 0;
  *&v2[OBJC_IVAR___SESecureCaptureSceneViewController_assertion] = 0;
  *&v2[OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionViewController] = 0;
  *&v2[OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___clientSettingsDiffInspector] = 0;
  v5 = &v2[OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___logIdentifier];
  *v5 = 0;
  v5[1] = 0;
  *&v2[OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___queue] = 0;
  *&v2[OBJC_IVAR___SESecureCaptureSceneViewController__presentationMode] = 0;
  v2[OBJC_IVAR___SESecureCaptureSceneViewController__requestsIdleTimerDisabled] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___SESecureCaptureSceneViewController_extensionProvider] = a1;
  v6 = objc_allocWithZone(MEMORY[0x277D243E0]);
  swift_unknownObjectRetain();
  v7 = [v6 initWithExtension_];
  *&v2[OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionAssistant] = v7;
  *&v2[OBJC_IVAR___SESecureCaptureSceneViewController_launchActions] = a2;
  v9.receiver = v2;
  v9.super_class = SESecureCaptureSceneViewController;
  return objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
}

void _sSo34SESecureCaptureSceneViewControllerC06SecureB3KitE5coderABSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController_scene) = 0;
  *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController_sceneForeground) = 0;
  *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController_sceneActivated) = 0;
  *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController_invalidated) = 0;
  *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController_scenePresenter) = 0;
  *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController_activatedSceneView) = 0;
  *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView) = 0;
  *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController_currentPath) = 0;
  *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController_assertion) = 0;
  *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionViewController) = 0;
  *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___clientSettingsDiffInspector) = 0;
  v1 = (v0 + OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___logIdentifier);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___queue) = 0;
  *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController__presentationMode) = 0;
  *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController__requestsIdleTimerDisabled) = 0;
  swift_unknownObjectWeakInit();
  sub_264F13684();
  __break(1u);
}

uint64_t sub_264F0CFAC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264F0CFF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264F0D04C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDD20, &qword_264F15210);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_264F0D0BC(void *result)
{
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAB8, &qword_264F153D0);
    sub_264EFB608(0, &qword_27FFBDF60, 0x277CCA9B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v2 = [v11 domain];
    v3 = sub_264F13214();
    v5 = v4;

    v6 = *MEMORY[0x277D0AA48];
    if (v3 == sub_264F13214() && v5 == v7)
    {
    }

    else
    {
      v9 = sub_264F136F4();

      if ((v9 & 1) == 0)
      {

        return 0;
      }
    }

    v10 = [v11 code];

    return (v10 == 4);
  }

  return result;
}

void *sub_264F0D200(void *result)
{
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAB8, &qword_264F153D0);
    sub_264EFB608(0, &qword_27FFBDF60, 0x277CCA9B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v2 = [v11 domain];
    v3 = sub_264F13214();
    v5 = v4;

    v6 = *MEMORY[0x277D0AA48];
    if (v3 == sub_264F13214() && v5 == v7)
    {
    }

    else
    {
      v9 = sub_264F136F4();

      if ((v9 & 1) == 0)
      {

        return 0;
      }
    }

    v10 = [v11 code];

    return (v10 == 1);
  }

  return result;
}

void _sSo34SESecureCaptureSceneViewControllerC06SecureB3KitE18sceneDidInvalidateyySo7FBSceneCF_0()
{
  v0[OBJC_IVAR___SESecureCaptureSceneViewController_sceneActivated] = 0;
  if (qword_27FFBD950 != -1)
  {
    swift_once();
  }

  v1 = sub_264F13154();
  __swift_project_value_buffer(v1, qword_27FFBE290);
  v2 = v0;
  oslog = sub_264F13134();
  v3 = sub_264F13424();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    v6 = sub_264F048F4();
    v8 = sub_264F0C768(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_264EF1000, oslog, v3, "[%{public}s] Capture Scene did invalidate.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x266753530](v5, -1, -1);
    MEMORY[0x266753530](v4, -1, -1);
  }
}

void sub_264F0D4B8(uint64_t a1)
{
  if (qword_27FFBD950 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v3 = sub_264F13154();
    v4 = __swift_project_value_buffer(v3, qword_27FFBE290);
    v5 = v1;

    v1 = v4;
    v6 = sub_264F13134();
    v7 = sub_264F13424();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      aBlock = v9;
      *v8 = 136446467;
      v10 = sub_264F048F4();
      v12 = sub_264F0C768(v10, v11, &aBlock);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2081;
      sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
      sub_264EFB470();
      v13 = sub_264F13384();
      v1 = v14;
      v15 = sub_264F0C768(v13, v14, &aBlock);

      *(v8 + 14) = v15;
      _os_log_impl(&dword_264EF1000, v6, v7, "[%{public}s] Capture Scene did receive actions: %{private}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266753530](v9, -1, -1);
      MEMORY[0x266753530](v8, -1, -1);
    }

    if (*(v5 + OBJC_IVAR___SESecureCaptureSceneViewController_invalidated))
    {
      return;
    }

    v81[0] = MEMORY[0x277D84FA0];
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_264F13574();
      v1 = sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
      sub_264EFB470();
      sub_264F133A4();
      a1 = v81[1];
      v16 = v81[2];
      v17 = v81[3];
      v18 = v81[4];
      v19 = v81[5];
    }

    else
    {
      v20 = -1 << *(a1 + 32);
      v16 = a1 + 56;
      v17 = ~v20;
      v21 = -v20;
      v22 = v21 < 64 ? ~(-1 << v21) : -1;
      v19 = v22 & *(a1 + 56);

      v18 = 0;
    }

    v23 = (v17 + 64) >> 6;
    v67 = v16;
    v68 = a1;
    v74 = v5;
    v66 = v23;
    if (a1 < 0)
    {
      break;
    }

    while (1)
    {
      while (1)
      {
        v26 = v18;
        v27 = v19;
        for (i = v18; !v27; ++v26)
        {
          i = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_75;
          }

          if (i >= v23)
          {
            goto LABEL_71;
          }

          v27 = *(v16 + 8 * i);
        }

        v25 = (v27 - 1) & v27;
        v70 = i;
        v24 = *(*(a1 + 48) + ((i << 9) | (8 * __clz(__rbit64(v27)))));
        if (!v24)
        {
          goto LABEL_71;
        }

LABEL_22:
        objc_opt_self();
        v72 = swift_dynamicCastObjCClass();
        v69 = v25;
        if (!v72)
        {
          break;
        }

        v29 = v24;
        v30 = [v5 delegate];
        v71 = v29;

        if (!v30)
        {
          break;
        }

        v1 = [v72 launchActions];
        a1 = sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
        sub_264EFB470();
        v31 = sub_264F13374();

        if ((v31 & 0xC000000000000001) != 0)
        {
          sub_264F13574();
          sub_264F133A4();
          v31 = v81[6];
          v32 = v81[7];
          v33 = v81[8];
          v34 = v81[9];
          v35 = v81[10];
        }

        else
        {
          v34 = 0;
          v42 = -1 << *(v31 + 32);
          v32 = v31 + 56;
          v33 = ~v42;
          v43 = -v42;
          if (v43 < 64)
          {
            v44 = ~(-1 << v43);
          }

          else
          {
            v44 = -1;
          }

          v35 = v44 & *(v31 + 56);
        }

        v45 = (v33 + 64) >> 6;
        if ((v31 & 0x8000000000000000) == 0)
        {
          goto LABEL_40;
        }

LABEL_37:
        v1 = (v31 & 0x7FFFFFFFFFFFFFFFLL);
        if (sub_264F135A4())
        {
          swift_dynamicCast();
          v1 = aBlock;
          v46 = v34;
          v47 = v35;
          for (j = &_swift_FORCE_LOAD___swiftCompression___SecureCaptureKit; v1; j = &_swift_FORCE_LOAD___swiftCompression___SecureCaptureKit)
          {
            if ([v30 respondsToSelector_])
            {
              v51 = swift_allocObject();
              *(v51 + 16) = v72;
              v79 = sub_264F0F010;
              v80 = v51;
              aBlock = MEMORY[0x277D85DD0];
              v76 = 1107296256;
              v77 = sub_264F0C0A4;
              v78 = &block_descriptor_44;
              v52 = _Block_copy(&aBlock);
              v53 = v71;

              [v30 secureCaptureSceneViewController:v74 requestsLaunchWithAction:v1 completion:v52];

              _Block_release(v52);
              v34 = v46;
              v35 = v47;
              if (v31 < 0)
              {
                goto LABEL_37;
              }
            }

            else
            {
              if ([v30 respondsToSelector_])
              {
                [v30 secureCaptureSceneViewController:v74 requestsLaunchWithAction:v1];
              }

              v34 = v46;
              v35 = v47;
              if (v31 < 0)
              {
                goto LABEL_37;
              }
            }

LABEL_40:
            v49 = v34;
            v50 = v35;
            v46 = v34;
            if (!v35)
            {
              while (1)
              {
                v46 = v49 + 1;
                if (__OFADD__(v49, 1))
                {
                  break;
                }

                if (v46 >= v45)
                {
                  goto LABEL_69;
                }

                v50 = *(v32 + 8 * v46);
                ++v49;
                if (v50)
                {
                  goto LABEL_44;
                }
              }

              __break(1u);
              goto LABEL_74;
            }

LABEL_44:
            v47 = (v50 - 1) & v50;
            v1 = *(*(v31 + 48) + ((v46 << 9) | (8 * __clz(__rbit64(v50)))));
          }
        }

LABEL_69:
        sub_264F0E984();
        swift_unknownObjectRelease();

        v19 = v69;
        v18 = v70;
        v16 = v67;
        a1 = v68;
        v5 = v74;
        v23 = v66;
        if (v68 < 0)
        {
          goto LABEL_14;
        }
      }

      objc_opt_self();
      v73 = swift_dynamicCastObjCClass();
      if (v73)
      {
        v36 = v24;
        v37 = [v5 delegate];
        v71 = v36;

        if (v37)
        {
          break;
        }
      }

      v1 = v81;
      sub_264F02294(&aBlock, v24);

      v19 = v69;
      v18 = v70;
      if (a1 < 0)
      {
        goto LABEL_14;
      }
    }

    v1 = [v73 launchActions];
    sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
    sub_264EFB470();
    v38 = sub_264F13374();

    if ((v38 & 0xC000000000000001) != 0)
    {
      sub_264F13574();
      sub_264F133A4();
      v38 = v81[11];
      a1 = v81[12];
      v39 = v81[13];
      v40 = v81[14];
      v41 = v81[15];
    }

    else
    {
      v40 = 0;
      v54 = -1 << *(v38 + 32);
      a1 = v38 + 56;
      v39 = ~v54;
      v55 = -v54;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      else
      {
        v56 = -1;
      }

      v41 = v56 & *(v38 + 56);
    }

    v57 = (v39 + 64) >> 6;
    while (2)
    {
      if (v38 < 0)
      {
        v1 = (v38 & 0x7FFFFFFFFFFFFFFFLL);
        if (!sub_264F135A4())
        {
          goto LABEL_69;
        }

        swift_dynamicCast();
        v1 = aBlock;
        v60 = v40;
        v61 = v41;
        v62 = &_swift_FORCE_LOAD___swiftCompression___SecureCaptureKit;
        if (!aBlock)
        {
          goto LABEL_69;
        }

        goto LABEL_67;
      }

      v58 = v40;
      v59 = v41;
      v60 = v40;
      if (v41)
      {
LABEL_63:
        v61 = (v59 - 1) & v59;
        v1 = *(*(v38 + 48) + ((v60 << 9) | (8 * __clz(__rbit64(v59)))));
        v62 = &_swift_FORCE_LOAD___swiftCompression___SecureCaptureKit;
        if (!v1)
        {
          goto LABEL_69;
        }

LABEL_67:
        if ([v37 respondsToSelector_])
        {
          v63 = swift_allocObject();
          *(v63 + 16) = v73;
          v79 = sub_264F0E98C;
          v80 = v63;
          aBlock = MEMORY[0x277D85DD0];
          v76 = 1107296256;
          v77 = sub_264F0C0A4;
          v78 = &block_descriptor_38;
          v64 = _Block_copy(&aBlock);
          v65 = v71;

          [v37 v62[153]];

          _Block_release(v64);
        }

        else
        {
        }

        v40 = v60;
        v41 = v61;
        continue;
      }

      break;
    }

    while (1)
    {
      v60 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      if (v60 >= v57)
      {
        goto LABEL_69;
      }

      v59 = *(a1 + 8 * v60);
      ++v58;
      if (v59)
      {
        goto LABEL_63;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

LABEL_14:
  if (sub_264F135A4())
  {
    sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
    swift_dynamicCast();
    v24 = aBlock;
    v70 = v18;
    v25 = v19;
    if (aBlock)
    {
      goto LABEL_22;
    }
  }

LABEL_71:

  sub_264F0E984();
}

void _sSo34SESecureCaptureSceneViewControllerC06SecureB3KitE5scene_27didUpdateClientSettingsWith03oldkL017transitionContextySo7FBSceneC_So08FBSScenekL4DiffCSo0rkL0CSo0r10TransitionP0CSgtF_0(void *a1, void *a2)
{
  if (qword_27FFBD950 != -1)
  {
    swift_once();
  }

  v5 = sub_264F13154();
  __swift_project_value_buffer(v5, qword_27FFBE290);
  v6 = v2;
  v7 = a2;
  v8 = a1;
  v9 = sub_264F13134();
  v10 = sub_264F13424();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136446722;
    v13 = sub_264F048F4();
    v15 = sub_264F0C768(v13, v14, &v28);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = [v7 debugDescription];
    v17 = sub_264F13214();
    v19 = v18;

    v20 = sub_264F0C768(v17, v19, &v28);

    *(v11 + 14) = v20;
    *(v11 + 22) = 2080;
    v21 = [v8 settings];
    v22 = [v21 debugDescription];

    v23 = sub_264F13214();
    v25 = v24;

    v26 = sub_264F0C768(v23, v25, &v28);

    *(v11 + 24) = v26;
    _os_log_impl(&dword_264EF1000, v9, v10, "[%{public}s] Capture Scene did receive new client settings. clientSettings: %s, scene settings: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266753530](v12, -1, -1);
    MEMORY[0x266753530](v11, -1, -1);
  }

  v27 = sub_264F0461C();
  [v7 evaluateWithInspector:v27 context:0];
}

void sub_264F0E138(const char *a1)
{
  if (qword_27FFBD950 != -1)
  {
    swift_once();
  }

  v3 = sub_264F13154();
  __swift_project_value_buffer(v3, qword_27FFBE290);
  v4 = v1;
  oslog = sub_264F13134();
  v5 = sub_264F13404();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = sub_264F048F4();
    v10 = sub_264F0C768(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_264EF1000, oslog, v5, a1, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x266753530](v7, -1, -1);
    MEMORY[0x266753530](v6, -1, -1);
  }
}

uint64_t _sSo34SESecureCaptureSceneViewControllerC06SecureB3KitE52extensionAppProtectionAssistantShouldShieldDidChangeyySo012LCSExtensionijK0CF_0()
{
  v1 = sub_264F13194();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264F131B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264EFB608(0, &unk_27FFBDF20, 0x277D85C78);
  v11 = sub_264F13434();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_264F0E890;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264EFD564;
  aBlock[3] = &block_descriptor_26;
  v13 = _Block_copy(aBlock);
  v14 = v0;

  sub_264F131A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264F0E898(&unk_27FFBDBE0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFBDF30, &qword_264F14FC0);
  sub_264F0E8E0();
  sub_264F13544();
  MEMORY[0x266752AA0](0, v10, v5, v13);
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_264F0E560()
{
  result = qword_27FFBDD40;
  if (!qword_27FFBDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFBDD40);
  }

  return result;
}

void sub_264F0E5CC(unsigned int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  BSDispatchQueueAssertMain();
  sub_264F04BE8(v2, 0);
}

id sub_264F0E60C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 presentationMode];
  *a2 = result;
  return result;
}

id sub_264F0E660@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

id sub_264F0E6BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 extensionProvider];
  *a2 = result;
  return result;
}

uint64_t sub_264F0E738()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_264F0E788()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264F0E7D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_264EFB37C;

  return sub_264F09C5C(a1, v4, v5, v7, v6);
}

uint64_t sub_264F0E898(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_264F0E8E0()
{
  result = qword_27FFBDBF0;
  if (!qword_27FFBDBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FFBDF30, &qword_264F14FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFBDBF0);
  }

  return result;
}

uint64_t sub_264F0E944()
{
  MEMORY[0x2667535F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264F0E9A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_264F0EA04()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_264F0EA50()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t objectdestroy_68Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264F0EB14()
{
  v1 = *(v0 + 24);

  sub_264F0EB58(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

void sub_264F0EB58(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

id sub_264F0EB98(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t sub_264F0EBA4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

unint64_t sub_264F0EC0C()
{
  result = qword_27FFBDF70;
  if (!qword_27FFBDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFBDF70);
  }

  return result;
}

uint64_t sub_264F0EC60()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264F0ECD4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264F0ED18()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264F0ED74(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_264F0EDA4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264F0EDE4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_264F0EE14()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

double sub_264F0EE4C(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_264F087D4(a1, *(v1 + 16), *(v1 + 40));
  return result;
}

uint64_t sub_264F0EE5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_264F0EE84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_264F0EEDC()
{
  result = qword_27FFBDF78;
  if (!qword_27FFBDF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFBDF78);
  }

  return result;
}

void sub_264F0F018()
{
  v0 = objc_allocWithZone(MEMORY[0x277D0AAE8]);
  v1 = sub_264F13204();
  v2 = [v0 initWithIdentifier_];

  qword_27FFBE2A8 = v2;
}

id sub_264F0F088(void *a1, uint64_t a2)
{
  v4 = sub_264F13064();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264F13054();
  sub_264F13044();
  (*(v5 + 8))(v8, v4);
  v9 = sub_264F13204();

  [a1 setIdentifier_];

  v10 = [objc_allocWithZone(MEMORY[0x277D75180]) init];
  [a1 setSpecification_];

  return [a1 setClientIdentity_];
}

uint64_t sub_264F0F1E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

id sub_264F0F238(void *a1)
{
  v1 = [a1 identity];
  v2 = [objc_opt_self() extensionWithIdentity_];

  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v3 processIdentity];
  if (qword_27FFBD958 != -1)
  {
    swift_once();
  }

  v5 = qword_27FFBE2A8;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_264F0F498;
  *(v7 + 24) = v6;
  v14[4] = sub_264F0EE5C;
  v14[5] = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_264F0F1E4;
  v14[3] = &block_descriptor_3;
  v8 = _Block_copy(v14);
  v9 = v5;
  v10 = v4;

  v11 = [v9 createScene_];

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return 0;
  }

  return v11;
}

uint64_t sub_264F0F460()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264F0F4C8()
{
  v0 = sub_264F13124();
  __swift_allocate_value_buffer(v0, qword_27FFBE0A0);
  __swift_project_value_buffer(v0, qword_27FFBE0A0);
  return sub_264F13104();
}

void *sub_264F0F578()
{
  v1 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_264F0F624(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_264F0F67C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_264F0F73C()
{
  v1 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_rootViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_264F0F788(void *a1)
{
  v3 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_rootViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7)
  {
    v8 = *(v1 + v3);
    v9 = v7;
    [v9 setRootViewController_];
  }
}

void (*sub_264F0F840(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_rootViewController;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_264F0F8C8;
}

void sub_264F0F8C8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      [v6 setRootViewController_];
    }
  }

  free(v3);
}

void *sub_264F0F950()
{
  v1 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_sessionPath;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_264F0F99C(void *a1)
{
  v3 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_sessionPath;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  isEscapingClosureAtFileLocation = a1;

  if (a1)
  {
    v6 = *(v1 + OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_fbsScene);
    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = isEscapingClosureAtFileLocation;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_264F0FB84;
      *(v8 + 24) = v7;
      aBlock[4] = sub_264F0CFF8;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_264F084DC;
      aBlock[3] = &block_descriptor_4;
      v9 = _Block_copy(aBlock);
      v10 = isEscapingClosureAtFileLocation;
      v11 = v6;

      [v11 updateClientSettings_];

      _Block_release(v9);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }
}

uint64_t sub_264F0FB4C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*sub_264F0FBC8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_sessionPath;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_264F0FC50;
}

void sub_264F0FC50(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    goto LABEL_5;
  }

  v4 = v3[6];
  v5 = *(v4 + v3[7]);
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = *(v4 + OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_fbsScene);
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_264F11D88;
  *(v8 + 24) = v7;
  v3[4] = sub_264F0EF7C;
  v3[5] = v8;
  *v3 = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_264F084DC;
  v3[3] = &block_descriptor_14;
  v9 = _Block_copy(v3);
  v10 = v3[5];
  v11 = v5;
  v12 = v6;

  [v12 updateClientSettings_];

  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
LABEL_5:

    free(v3);
  }
}

uint64_t sub_264F0FDF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_urlContexts;
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD968, &qword_264F15510);
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_264F0FE90(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD968, &qword_264F15510);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_urlContexts;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_264F0FFB0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_urlContexts;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD968, &qword_264F15510);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_264F10044(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_urlContexts;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD968, &qword_264F15510);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id CaptureSceneDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CaptureSceneDelegate.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBE0E0, &qword_264F15518);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - v4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBE0E8, &qword_264F15520);
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v18);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD968, &qword_264F15510);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  *&v0[OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_rootViewController] = 0;
  *&v0[OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_fbsScene] = 0;
  *&v0[OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_sessionPath] = 0;
  sub_264F10430();
  (*(v2 + 104))(v5, *MEMORY[0x277D85778], v1);
  sub_264F13344();
  (*(v2 + 8))(v5, v1);
  (*(v11 + 32))(&v0[OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_urlContexts], v14, v10);
  (*(v6 + 32))(&v0[OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_urlContextsProducerContinuation], v9, v18);
  v15 = type metadata accessor for CaptureSceneDelegate();
  v19.receiver = v0;
  v19.super_class = v15;
  return objc_msgSendSuper2(&v19, sel_init);
}

unint64_t sub_264F10430()
{
  result = qword_27FFBE0F0;
  if (!qword_27FFBE0F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FFBE0F0);
  }

  return result;
}

uint64_t type metadata accessor for CaptureSceneDelegate()
{
  result = qword_27FFBE168;
  if (!qword_27FFBE168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_264F104F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    return [result setCaptureSessionPath_];
  }

  return result;
}

void sub_264F1065C()
{
  v1 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;
}

uint64_t sub_264F106F8(uint64_t a1)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFBE210, &qword_264F156A0);
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v23);
  v5 = &v22 - v4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_264F13574();
    sub_264F10430();
    sub_264F11C68();
    result = sub_264F133A4();
    a1 = v26;
    v7 = v27;
    v9 = v28;
    v8 = v29;
    v10 = v30;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v9 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v8 = 0;
  }

  v22 = v9;
  v14 = (v9 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v15 = v8;
    v16 = v10;
    v17 = v8;
    if (!v10)
    {
      break;
    }

LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(a1 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
      return sub_264F0E984();
    }

    while (1)
    {
      v25 = v19;
      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBE0E8, &qword_264F15520);
      sub_264F13354();

      result = (*(v2 + 8))(v5, v23);
      v8 = v17;
      v10 = v18;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v20 = sub_264F135A4();
      if (v20)
      {
        v24 = v20;
        sub_264F10430();
        swift_dynamicCast();
        v19 = v25;
        v17 = v8;
        v18 = v10;
        if (v25)
        {
          continue;
        }
      }

      return sub_264F0E984();
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      return sub_264F0E984();
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

id CaptureSceneDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CaptureSceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SecureCaptureExtension.configuration.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a1);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v4 + 32))(v8 + v7, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  return sub_264F130E4();
}

id SecureCaptureUIScene.init(content:)@<X0>(void (*a1)(id)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v31 = a2;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  if (qword_27FFBD960 != -1)
  {
    swift_once();
  }

  v14 = sub_264F13124();
  __swift_project_value_buffer(v14, qword_27FFBE0A0);
  v15 = sub_264F13114();
  v29 = v16;
  v30 = v15;
  v17 = [objc_allocWithZone(type metadata accessor for CaptureSceneDelegate()) init];
  v18 = type metadata accessor for SecureCaptureSession(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_264EF9E2C(v17);
  qword_27FFBD920 = v21;
  swift_retain_n();

  a1(v21);

  sub_264F13184();
  (*(v7 + 16))(v11, v13, a3);
  v22 = sub_264F13174();
  result = [v22 view];
  if (result)
  {
    v24 = result;
    v25 = [objc_opt_self() clearColor];
    [v24 setBackgroundColor_];

    sub_264F0F788(v22);

    result = (*(v7 + 8))(v13, a3);
    v26 = v29;
    v27 = v30;
    *a4 = v21;
    a4[1] = v27;
    a4[2] = v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SecureCaptureUIScene.body.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_allocObject();
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v5;
  swift_bridgeObjectRetain_n();

  return sub_264F130D4();
}

uint64_t sub_264F10FE0(void *a1, void *a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v6 = result;
    v7 = objc_allocWithZone(MEMORY[0x277D75DA0]);
    v8 = a1;
    v9 = [v7 initWithWindowScene_];
    v10 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_rootViewController;
    swift_beginAccess();
    [v9 setRootViewController_];
    [v9 makeKeyAndVisible];
    v11 = [a2 URLContexts];
    sub_264F10430();
    sub_264F11C68();
    v12 = sub_264F13374();

    sub_264F106F8(v12);

    v13 = &_swift_FORCE_LOAD___swiftCompression___SecureCaptureKit;
    v14 = [v8 _FBSScene];
    type metadata accessor for SecureCaptureSceneExtension();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    type metadata accessor for SecureCaptureSceneStatusBarHostComponent();
    v16 = [v14 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()];

    if (v16)
    {
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = v17;
        v35 = type metadata accessor for CaptureSceneDelegate();
        v36 = &off_2876C0F28;
        v34[0] = v2;
        v19 = OBJC_IVAR____TtC16SecureCaptureKit40SecureCaptureSceneStatusBarHostComponent_delegate;
        swift_beginAccess();
        v20 = v2;
        sub_264F11CD0(v34, v18 + v19);
        swift_endAccess();
      }

      swift_unknownObjectRelease();
    }

    v21 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_sessionPath;
    swift_beginAccess();
    v22 = *&v2[v21];
    if (v22)
    {
      v23 = v22;
      v24 = [v8 _FBSScene];
      v25 = swift_allocObject();
      *(v25 + 16) = v23;
      v26 = swift_allocObject();
      v27 = sub_264F11D88;
      *(v26 + 16) = sub_264F11D88;
      *(v26 + 24) = v25;
      v36 = sub_264F0EF7C;
      v37 = v26;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 1107296256;
      v34[2] = sub_264F084DC;
      v35 = &block_descriptor_44_0;
      v28 = _Block_copy(v34);
      v29 = v23;

      [v24 updateClientSettings_];

      _Block_release(v28);
      LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

      if (v24)
      {
        __break(1u);
        return result;
      }

      v13 = &_swift_FORCE_LOAD___swiftCompression___SecureCaptureKit;
    }

    else
    {
      v27 = 0;
    }

    v30 = [v8 v13[75]];

    v31 = *&v2[OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_fbsScene];
    *&v2[OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_fbsScene] = v30;

    v32 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window;
    swift_beginAccess();
    v33 = *&v2[v32];
    *&v2[v32] = v9;

    return sub_264F11CC0(v27);
  }

  return result;
}

uint64_t sub_264F113C0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264F11440()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 32))();
}

uint64_t sub_264F114A8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

id sub_264F114E8()
{
  v1 = *(*(v0 + 32) + 24);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t sub_264F1152C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_264F115C8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_264F0F788(v2);
}

id keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

void sub_264F11668(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_264F0F99C(v2);
}

void sub_264F116A8()
{
  sub_264F11AEC(319, &qword_27FFBE178, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_264F11AEC(319, qword_27FFBE180, MEMORY[0x277D85788]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_264F11AEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_264F10430();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_264F11B60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_264F11BBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_264F11C04(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_264F11C68()
{
  result = qword_27FFBE208;
  if (!qword_27FFBE208)
  {
    sub_264F10430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFBE208);
  }

  return result;
}

uint64_t sub_264F11CC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_264F11CD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDCA0, &qword_264F15218);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id SESecureCaptureOpenApplicationAction.init(url:responder:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_264F12FD4();
  v6 = [v4 initWithURL:v5 responder:a2];

  v7 = sub_264F13014();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

{
  v3 = v2;
  v6 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  v7 = sub_264F12FD4();
  [v6 setObject:v7 forSetting:0];

  v11.receiver = v3;
  v11.super_class = SESecureCaptureOpenApplicationAction;
  v8 = objc_msgSendSuper2(&v11, sel_initWithInfo_responder_, v6, a2);

  v9 = sub_264F13014();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

id SESecureCaptureOpenApplicationAction.init(userActivity:responder:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUserActivity:a1 responder:a2];

  return v4;
}

{
  v22 = a2;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_264F15080;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  [a1 setNeedsSave_];
  sub_264EFA0B8(MEMORY[0x277D84F90]);
  v6 = sub_264F131C4();

  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  aBlock[4] = sub_264F02E7C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264EF3C40;
  aBlock[3] = &block_descriptor_5;
  v8 = _Block_copy(aBlock);

  [a1 _createUserActivityDataWithOptions_completionHandler_];
  _Block_release(v8);

  swift_beginAccess();
  if (*(v5 + 16))
  {
    v9 = objc_msgSendSuper2(&v23, sel_initWithInfo_responder_, 0, 0, v22, v2, SESecureCaptureOpenApplicationAction);
LABEL_5:
    v11 = v9;
    goto LABEL_6;
  }

  swift_beginAccess();
  v10 = *(v4 + 24);
  if (v10 >> 60 == 15)
  {
    v26.receiver = v2;
    v26.super_class = SESecureCaptureOpenApplicationAction;
    v9 = objc_msgSendSuper2(&v26, sel_initWithInfo_responder_, 0, 0, v22, v23.receiver, v23.super_class);
    goto LABEL_5;
  }

  v14 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC60, &qword_264F15090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264F14DF0;
  *(inited + 32) = 7;
  v16 = inited + 32;
  *(inited + 40) = v14;
  *(inited + 48) = v10;
  v17 = sub_264EFA4B0(inited);
  swift_setDeallocating();
  sub_264EFB11C(v14, v10);
  sub_264EFB11C(v14, v10);
  sub_264EFB174(v16, &qword_27FFBDC68, &qword_264F15098);
  sub_264F01968(v17);

  v18 = objc_allocWithZone(MEMORY[0x277D750D8]);
  v19 = sub_264F131C4();

  v12 = [v18 initWithSettings_];

  if (v12)
  {
    v20 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
    [v20 setObject:v12 forSetting:1];
    v24.receiver = v2;
    v24.super_class = SESecureCaptureOpenApplicationAction;
    v21 = v20;
    v11 = objc_msgSendSuper2(&v24, sel_initWithInfo_responder_, v21, v22);
    sub_264EFB958(v14, v10);

    goto LABEL_7;
  }

  v25.receiver = v2;
  v25.super_class = SESecureCaptureOpenApplicationAction;
  v11 = objc_msgSendSuper2(&v25, sel_initWithInfo_responder_, 0, 0);
  sub_264EFB958(v14, v10);
LABEL_6:

  v12 = v22;
LABEL_7:

  return v11;
}

uint64_t sub_264F12544()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_264EFB818(*(v0 + 16), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264F1258C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id SESecureCaptureOpenApplicationAction.init(coder:)(void *a1)
{
  v4.super_class = SESecureCaptureOpenApplicationAction;
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

id SESecureCaptureOpenApplicationAction.init(xpcDictionary:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithXPCDictionary_];
  swift_unknownObjectRelease();
  return v1;
}

{
  v3.super_class = SESecureCaptureOpenApplicationAction;
  v1 = objc_msgSendSuper2(&v3, sel_initWithXPCDictionary_, a1);
  swift_unknownObjectRelease();
  if (v1)
  {
  }

  return v1;
}

uint64_t SESecureCaptureOpenApplicationAction.launchActions.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD980, &qword_264F14820);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_264F13014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MEMORY[0x277D84F90] >> 62 && sub_264F13584())
  {
    sub_264F02E9C(MEMORY[0x277D84F90]);
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  v27 = v11;
  v12 = [v1 info];
  if (!v12)
  {
    v25 = 0u;
    v26 = 0u;
LABEL_13:
    sub_264EFB174(&v25, &qword_27FFBDC70, &qword_264F150A0);
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_14;
  }

  v13 = v12;
  v14 = [v12 objectForSetting_];

  if (v14)
  {
    sub_264F13524();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (!*(&v24 + 1))
  {
    goto LABEL_13;
  }

  v15 = swift_dynamicCast();
  (*(v7 + 56))(v5, v15 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_14:
    sub_264EFB174(v5, &qword_27FFBD980, &qword_264F14820);
    goto LABEL_15;
  }

  (*(v7 + 32))(v10, v5, v6);
  v16 = objc_allocWithZone(MEMORY[0x277D777A8]);
  v17 = sub_264F12FD4();
  v18 = [v16 initWithURL_];

  if (v18)
  {
    sub_264F02294(&v25, v18);
  }

  (*(v7 + 8))(v10, v6);
LABEL_15:
  v19 = [v1 info];
  if (!v19)
  {
    v25 = 0u;
    v26 = 0u;
LABEL_23:
    sub_264EFB174(&v25, &qword_27FFBDC70, &qword_264F150A0);
    return v27;
  }

  v20 = v19;
  v21 = [v19 objectForSetting_];

  if (v21)
  {
    sub_264F13524();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (!*(&v24 + 1))
  {
    goto LABEL_23;
  }

  sub_264EFB608(0, &qword_27FFBDC78, 0x277D750D8);
  if (swift_dynamicCast())
  {
    sub_264F02294(&v25, v23);
  }

  return v27;
}

id SESecureCaptureOpenApplicationAction.init(info:responder:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:a1 responder:a2];

  return v4;
}

id SESecureCaptureOpenApplicationAction.init(info:timeout:forResponseOn:withHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a3)
  {
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_264F01334;
    v11[3] = &block_descriptor_9_0;
    v8 = _Block_copy(v11);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:a1 timeout:a2 forResponseOnQueue:v8 withHandler:a5];
  _Block_release(v8);

  return v9;
}

uint64_t sub_264F12EE0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}