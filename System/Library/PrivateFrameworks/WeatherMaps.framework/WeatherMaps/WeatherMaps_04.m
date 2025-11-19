void sub_220E78680()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherMapStore.ViewModel(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_storeObserver;
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_storeObserver))
  {
    swift_beginAccess();
    sub_220E819BC();
    swift_beginAccess();
    sub_220E81FFC();
    swift_endAccess();

    sub_220F314C0();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D580);
    sub_220E818E0();
    v5 = sub_220FC1A10();

    *(v1 + v4) = v5;
  }
}

void sub_220E78844(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for InteractiveFocus();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = type metadata accessor for WeatherMapStore.ViewModel(0);
  v9 = *(a1 + v8[18]);
  v10 = v8[11];
  v11 = v2 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_lastViewModel;
  swift_beginAccess();
  sub_220E819BC();
  v12 = sub_220FAE714(a1 + v10, v7);
  sub_220E81964(v7, type metadata accessor for InteractiveFocus);
  if ((v12 & 1) == 0 || *(a1 + v8[12]) == 1)
  {
    v13 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
    swift_beginAccess();
    v14 = *(v2 + v13);
    if (v14)
    {
      v15 = v14;
      sub_220EF7604(a1 + v10, v9);
    }
  }

  if (*(a1 + v8[12]) == 1)
  {
    v16 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_store) + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
    swift_beginAccess();
    *(v16 + v8[12]) = 0;

    sub_220F318B0();
  }

  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  v21 = *v11;
  v20 = *(v11 + 8);
  v22 = *(v11 + 16);
  if ((v19 & 0x8000000000000000) == 0)
  {
    if (v22 < 0)
    {
      goto LABEL_23;
    }

    v23 = *(v11 + 24);
    v24 = *(a1 + 24);
    if ((v19 & 1) == 0)
    {
      if ((v22 & 1) == 0)
      {
        v25 = v17 == v21 && v18 == v20;
        if (v25 && v24 == v23)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_23;
    }

    LOBYTE(v20) = v22 & (v24 == v23);
    goto LABEL_13;
  }

  if ((v22 & 0x8000000000000000) == 0)
  {
    goto LABEL_23;
  }

  if (LOBYTE(v18))
  {
LABEL_13:
    if (LOBYTE(v20))
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (!(LOBYTE(v20) & 1 | (v17 != v21)))
  {
LABEL_25:
    sub_220E7B11C(a1);
    goto LABEL_26;
  }

LABEL_23:
  sub_220E79524(a1);
  v27 = *(v11 + 16);
  v31[0] = *v11;
  v31[1] = v27;
  v28 = *(a1 + 16);
  v30[0] = *a1;
  v30[1] = v28;
  sub_220E7ACCC(v31, v30, v9);
LABEL_26:
  sub_220E7ABF0(v2, a1, v9);
}

uint64_t sub_220E78AD0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_store) = a1;

  sub_220E78680();
}

void sub_220E78B2C()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_preferredMapSize + 16);
    v4 = &v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_preferredMapSize];
    *v4 = *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_preferredMapSize);
    v4[16] = v3;
    v5 = v2;
    sub_220EF8508();
  }
}

id sub_220E78BAC()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController____lazy_storage___supplementaryOverlayContainerView;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController____lazy_storage___supplementaryOverlayContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController____lazy_storage___supplementaryOverlayContainerView);
  }

  else
  {
    type metadata accessor for WeatherMapSupplementaryOverlayContainer();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_220E78C24(void *a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_supplementaryOverlayDebounceTimer;
  v4 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_supplementaryOverlayDebounceTimer);
  if (v4)
  {
    [v4 invalidate];
  }

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  v12[4] = sub_220E81FF4;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_220E7F8F4;
  v12[3] = &block_descriptor_84;
  v8 = _Block_copy(v12);
  v9 = a1;

  v10 = [v5 scheduledTimerWithTimeInterval:0 repeats:v8 block:0.3];
  _Block_release(v8);
  v11 = *(v1 + v3);
  *(v1 + v3) = v10;
}

void sub_220E78D78(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a3)
    {
      v6 = a3;
      [v6 willMoveToParentViewController_];
      [v6 removeFromParentViewController];
    }

    v7 = sub_220E78BAC();
    sub_220E84300();

    v8 = *&v5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_supplementaryOverlayViewController];
    if (v8)
    {
      v9 = v8;
      v10 = [v9 view];
      if (v10)
      {
        v11 = v10;
        v12 = v5;
        [v12 addChildViewController_];
        v13 = *&v12[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController____lazy_storage___supplementaryOverlayContainerView];
        sub_220E84350(v11);

        [v9 didMoveToParentViewController_];
        v9 = v12;
      }
    }
  }
}

void sub_220E78EB0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_supplementaryOverlayViewController);
  *(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_supplementaryOverlayViewController) = a1;
  v2 = a1;
  sub_220E78C24(v3);
}

uint64_t sub_220E78F10(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_2_3();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  if (*(v2 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_isResizing) == 1)
  {
    v6 = (v2 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_bannerUpdateBlock);
    v7 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_bannerUpdateBlock);
    *v6 = sub_220E81FB4;
    v6[1] = v5;
    v8 = a1;

    return sub_220E2DD2C(v7);
  }

  else
  {
    v10 = (v2 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_bannerUpdateBlock);
    v11 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_bannerUpdateBlock);
    *v10 = 0;
    v10[1] = 0;
    v12 = a1;

    sub_220E2DD2C(v11);
    sub_220E7903C();
  }
}

void sub_220E7903C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
  }
}

void sub_220E790A8()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_snapshotViewController) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationPickerViewController) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationPopoverViewController) = 0;
  v1 = (v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_previewViewController);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationActionHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canAddLocationHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canViewLocationHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_onMapEventHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_preferredMapSize;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController____lazy_storage___supplementaryOverlayContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_supplementaryOverlayDebounceTimer) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_supplementaryOverlayViewController) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_storeObserver) = 0;
  v7 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_viewModelToUpdate;
  v8 = type metadata accessor for WeatherMapStore.ViewModel(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_resizeTimer) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_isResizing) = 0;
  v9 = (v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_bannerUpdateBlock);
  *v9 = 0;
  v9[1] = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_isCrossfadingSnapshot) = 0;
  sub_220FC3740();
  __break(1u);
}

Swift::Void __swiftcall WeatherMapViewController.loadView()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v0 setView_];
}

Swift::Void __swiftcall WeatherMapViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for WeatherMapStore.ViewModel(0);
  v4 = OUTLINED_FUNCTION_8_0(v3);
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  if (qword_2812C6688 != -1)
  {
    swift_once();
  }

  sub_220EA8EC0(v1);
  v9 = &v1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_lastViewModel];
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  OUTLINED_FUNCTION_4_3();
  sub_220E819BC();
  sub_220E79524(v8);
  OUTLINED_FUNCTION_1_19();
  sub_220E81964(v8, v10);

  v11 = sub_220F314C0();

  OUTLINED_FUNCTION_2_3();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D580);
  sub_220E818E0();
  v12 = sub_220FC1A10();

  *&v1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_storeObserver] = v12;

  if ((*(v9 + 2) & 0x8000000000000000) != 0 && (*(v9 + 2) & 1) == 0)
  {
    sub_220E79C4C(0);
  }

  v13 = [v1 view];
  if (v13)
  {
    v14 = v13;
    v15 = sub_220E78BAC();
    [v14 addSubview_];
  }

  else
  {
    __break(1u);
  }
}

void sub_220E79524(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WeatherMapStore.ViewModel(0);
  MEMORY[0x28223BE20](v4, v5);
  if ((*(a1 + 16) & 0x8000000000000000) != 0)
  {
    v7 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
    swift_beginAccess();
    if (*(v1 + v7))
    {
LABEL_7:
      sub_220E7B11C(a1);
      return;
    }

    LODWORD(v54) = *(a1 + v4[21]);
    v23 = *(a1 + 48);
    memcpy(__dst, (a1 + v4[17]), sizeof(__dst));
    v24 = sub_220F31554();
    v25 = *(a1 + 32);
    v26 = *(a1 + v4[25]);
    v62 = 0;
    swift_unknownObjectWeakInit();
    v63 = 0;
    swift_unknownObjectWeakInit();
    v56[0] = v54;
    v56[1] = v23;
    v57 = 0x4024000000000000;
    memcpy(v58, __dst, sizeof(v58));
    v59 = v24;
    v60 = v25 & 1;
    v61 = v26;
    v62 = &off_28347DF98;
    swift_unknownObjectWeakAssign();
    v63 = &off_28347DF78;
    swift_unknownObjectWeakAssign();
    sub_220E8239C(v56, &v64);
    v27 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_resolver;
    swift_beginAccess();
    sub_220E1E2A8(v2 + v27, v55);
    __swift_project_boxed_opaque_existential_1(v55, v55[3]);
    type metadata accessor for InteractiveViewController();
    sub_220E7857C(&v64, v56);
    v28 = swift_allocObject();
    sub_220E8239C(v56, v28 + 16);
    v29 = sub_220FC1210();

    if (v29)
    {
      v30 = *(v2 + v7);
      *(v2 + v7) = v29;

      __swift_destroy_boxed_opaque_existential_0(v55);
      v31 = *(v2 + v7);
      if (v31)
      {
        *(v31 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_delegate + 8) = &off_28347DEF0;
        v32 = swift_unknownObjectWeakAssign();
        if (*(v2 + v7))
        {
          v34 = *(a1 + 40);
          MEMORY[0x28223BE20](v32, v33);
          *(&v53 - 2) = a1;
          v36 = v35;
          v37 = sub_220F0A84C(sub_220E8244C, (&v53 - 4), v34);
          sub_220EF7A74(v37);

          v38 = *(v2 + v7);
          if (v38)
          {
            v39 = v4[11];
            v40 = v38;
            sub_220EF7604(a1 + v39, 0);

            v41 = *(v2 + v7);
            if (v41)
            {
              v42 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_onMapEventHandler);
              v43 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_onMapEventHandler + 8);
              v44 = &v41[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_onMapEventHandler];
              v45 = *&v41[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_onMapEventHandler];
              *v44 = v42;
              v44[1] = v43;
              v46 = v41;
              sub_220E1AADC(v42);
              sub_220E2DD2C(v45);
            }
          }
        }
      }

      if (*(a1 + v4[23]) == 1)
      {
        v47 = *(v2 + v7);
        if (v47)
        {
          v48 = v47;
          sub_220F6AC30(0, 0);
        }
      }

      if (qword_2812C6688 != -1)
      {
        swift_once();
      }

      v49 = *(v2 + v7);
      if (v49)
      {
        v50 = v49;
        sub_220EA8EC0(v50);

        v51 = *(v2 + v7);
        sub_220FC2EE0();

        sub_220E7AB64();
        sub_220E78628(&v64);
        return;
      }

      goto LABEL_35;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  v6 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_snapshotViewController;
  if (*(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_snapshotViewController))
  {

    goto LABEL_7;
  }

  v8 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_resolver;
  swift_beginAccess();
  sub_220E1E2A8(v1 + v8, &v64);
  v54 = v67;
  __swift_project_boxed_opaque_existential_1(&v64, v66);
  type metadata accessor for SnapshotViewController(0);
  sub_220E819BC();
  swift_allocObject();
  sub_220E81EE4();
  v9 = sub_220FC1210();

  if (!v9)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v10 = *(v2 + v6);
  *(v2 + v6) = v9;

  __swift_destroy_boxed_opaque_existential_0(&v64);
  v11 = *(a1 + 16);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = *(v2 + v6);
    if (v12)
    {
      v64 = *a1;
      v65 = v11 & 1;
      v13 = v12;
      sub_220F545A8(&v64);
    }
  }

  if (qword_2812C6688 != -1)
  {
    swift_once();
  }

  v14 = *(v2 + v6);
  if (!v14)
  {
    goto LABEL_33;
  }

  v15 = v14;
  sub_220EA8EC0(v15);

  v16 = *(v2 + v6);
  if (v16)
  {
    v17 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_onMapEventHandler);
    v18 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_onMapEventHandler + 8);
    v19 = &v16[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_onMapEventHandler];
    v20 = *&v16[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_onMapEventHandler];
    *v19 = v17;
    v19[1] = v18;
    v21 = v16;
    sub_220E1AADC(v17);
    sub_220E2DD2C(v20);

    v22 = *(v2 + v6);
  }

  else
  {
    v22 = 0;
  }

  v52 = v22;
  sub_220FC2EE0();
}

void sub_220E79BF4(uint64_t a1)
{
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_220E78844(a1);
  }
}

void sub_220E79C4C(int a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D080);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v46 = &v40 - v6;
  v7 = type metadata accessor for SnapshotManager.Snapshot(0);
  MEMORY[0x28223BE20](v7, v8);
  v44 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220FC0FD0();
  v45 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v40 - v16;
  v18 = type metadata accessor for WeatherMapStore.ViewModel(0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_220FC1070();
  v47 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_isCrossfadingSnapshot])
  {
    return;
  }

  v26 = &v2[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_lastViewModel];
  swift_beginAccess();
  if (*(v26 + 2) & 0x8000000000000000) == 0 || (*(v26 + 2))
  {
    return;
  }

  v42 = a1;
  v43 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_store;
  swift_beginAccess();
  sub_220E819BC();
  sub_220F315B4();
  sub_220E81964(v21, type metadata accessor for WeatherMapStore.ViewModel);
  if (__swift_getEnumTagSinglePayload(v17, 1, v22) == 1)
  {
    sub_220E3B2DC(v17, &unk_27CF9D6D0);
    return;
  }

  (*(v47 + 32))(v25, v17, v22);
  v27 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_resolver;
  swift_beginAccess();
  sub_220E1E2A8(&v2[v27], v52);
  __swift_project_boxed_opaque_existential_1(v52, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D438);
  sub_220FC1230();
  if (!v51)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_220E1E72C(&v50, v54);
  __swift_destroy_boxed_opaque_existential_0(v52);
  sub_220E1E2A8(&v2[v27], &v50);
  __swift_project_boxed_opaque_existential_1(&v50, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D720);
  sub_220FC1230();
  if (!v49)
  {
LABEL_14:
    __break(1u);
    return;
  }

  sub_220E1E72C(&v48, v52);
  __swift_destroy_boxed_opaque_existential_0(&v50);
  __swift_project_boxed_opaque_existential_1(v52, v53);
  sub_220FC0FF0();
  v28 = sub_220FC0F70();
  v41 = v29;
  (*(v45 + 8))(v13, v10);
  v30 = sub_220FC1020();
  v32 = v31;
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  v33 = *&v2[v43] + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
  swift_beginAccess();
  LOBYTE(v48) = *(v33 + 48);
  v34 = [v2 traitCollection];
  v35 = [v34 userInterfaceStyle];

  v36 = v46;
  v45 = v30;
  v37 = v30;
  v38 = v41;
  sub_220F142A4(v37, v32, &v48, v28, v41, v35, v46);
  sub_220E5E3D0(v28, v38);
  if (__swift_getEnumTagSinglePayload(v36, 1, v7) == 1)
  {
    (*(v47 + 8))(v25, v22);

    sub_220E3B2DC(v36, &qword_27CF9D080);
  }

  else
  {
    v39 = v44;
    sub_220E81EE4();
    sub_220E7E778(v39, v45, v32, v42 & 1);

    sub_220E81964(v39, type metadata accessor for SnapshotManager.Snapshot);
    (*(v47 + 8))(v25, v22);
  }

  __swift_destroy_boxed_opaque_existential_0(v52);
  __swift_destroy_boxed_opaque_existential_0(v54);
}

Swift::Void __swiftcall WeatherMapViewController.willMove(toParent:)(UIViewController_optional *toParent)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  [(UIViewController_optional *)&v3 willMoveToParentViewController:toParent];
  *(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_isResizing) = 1;
}

Swift::Void __swiftcall WeatherMapViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidAppear_, a1);
  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];
    OUTLINED_FUNCTION_9_8();

    v9 = &v1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_lastViewBounds];
    *v9 = v2;
    *(v9 + 1) = v3;
    *(v9 + 2) = v4;
    *(v9 + 3) = v5;
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall WeatherMapViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v40.receiver = v0;
  v40.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v40, sel_viewDidLayoutSubviews);
  v2 = &v0[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_lastViewBounds];
  v3 = *&v0[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_lastViewBounds];
  v4 = *&v0[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_lastViewBounds + 8];
  v5 = *&v0[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_lastViewBounds + 16];
  v6 = *&v0[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_lastViewBounds + 24];
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v41.origin.x = OUTLINED_FUNCTION_0_0();
  v42.origin.x = v10;
  v42.origin.y = v12;
  v42.size.width = v14;
  v42.size.height = v16;
  if (CGRectEqualToRect(v41, v42) || (v17 = &v1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_lastViewModel], OUTLINED_FUNCTION_10(), swift_beginAccess(), v17[*(type metadata accessor for WeatherMapStore.ViewModel(0) + 68) + 48] != 1))
  {
LABEL_9:
    v23 = *&v1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_snapshotViewController];
    if (!v23)
    {
      goto LABEL_13;
    }

    v24 = [v23 view];
    if (v24)
    {
      v25 = v24;
      v26 = [v1 view];
      if (v26)
      {
        v27 = v26;
        [v26 bounds];
        OUTLINED_FUNCTION_9_8();

        v28 = OUTLINED_FUNCTION_0_0();
        [v29 v30];

LABEL_13:
        v31 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
        OUTLINED_FUNCTION_10();
        swift_beginAccess();
        v32 = *&v1[v31];
        if (!v32)
        {
LABEL_17:
          sub_220E7A8CC();
          return;
        }

        v33 = [v32 view];
        if (v33)
        {
          v34 = v33;
          v35 = [v1 view];
          if (v35)
          {
            v36 = v35;
            [v35 bounds];
            OUTLINED_FUNCTION_9_8();

            v37 = OUTLINED_FUNCTION_0_0();
            [v38 v39];

            goto LABEL_17;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = [v1 view];
  if (v18)
  {
    v19 = v18;
    [v18 bounds];
    OUTLINED_FUNCTION_9_8();

    *v2 = v3;
    *(v2 + 1) = v4;
    *(v2 + 2) = v5;
    *(v2 + 3) = v6;
    if ((v1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_prefersControlsHidden] & 1) == 0)
    {
      v20 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
      OUTLINED_FUNCTION_10();
      swift_beginAccess();
      v21 = *&v1[v20];
      if (v21)
      {
        v22 = v21;
        sub_220EF720C();
      }
    }

    sub_220E7A7A4();
    goto LABEL_9;
  }

LABEL_23:
  __break(1u);
}

void sub_220E7A7A4()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_isResizing) = 1;
  sub_220E7AA38();
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_220E82328;
  v6[5] = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_220E7F8F4;
  v6[3] = &block_descriptor_114;
  v3 = _Block_copy(v6);

  v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:0.15];
  _Block_release(v3);
  v5 = *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_resizeTimer);
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_resizeTimer) = v4;
}

void sub_220E7A8CC()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 safeAreaLayoutGuide];

    [v4 layoutFrame];
    v6 = v5;
    MaxY = v7;
    v10 = v9;
    v12 = v11;

    v13 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
    swift_beginAccess();
    v14 = *&v1[v13];
    if (v14)
    {
      v15 = *(v14 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsView);
      if (v15)
      {
        v16 = v15;
        sub_220EA4830();
        MaxY = CGRectGetMaxY(v18);

        v12 = v12 - MaxY;
      }
    }

    v17 = sub_220E78BAC();
    [v17 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

void sub_220E7AA38()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_resizeTimer;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_resizeTimer);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

void sub_220E7AA94()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_isResizing) = 0;
    v2 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
    if (*(Strong + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_prefersControlsHidden))
    {
      swift_beginAccess();
      v3 = *&v1[v2];
      if (v3)
      {
        v4 = v3;
        sub_220EF720C();
LABEL_7:
      }
    }

    else
    {
      swift_beginAccess();
      v5 = *&v1[v2];
      if (v5)
      {
        v4 = v5;
        sub_220EF7330(0, 0, 0);
        goto LABEL_7;
      }
    }

    sub_220E7AB64();
  }
}

void sub_220E7AB64()
{
  v1 = (v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_bannerUpdateBlock);
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_bannerUpdateBlock);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
    v4 = swift_beginAccess();
    if (*(v0 + v3))
    {
      *v1 = 0;
      v1[1] = 0;
      v2(v4);
      sub_220E2DD2C(v2);
    }
  }
}

void sub_220E7ABF0(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  sub_220E82188();
  swift_endAccess();
  sub_220E7B874(a2);
  if (a3)
  {
    v6 = *(a1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_store) + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
    swift_beginAccess();
    *(v6 + *(type metadata accessor for WeatherMapStore.ViewModel(0) + 72)) = 0;

    sub_220F318B0();
  }
}

void sub_220E7ACCC(uint64_t *a1, uint64_t *a2, char a3)
{
  v4 = a1[2];
  v5 = a2[2];
  if (((v5 ^ v4) & 0x8000000000000000) != 0)
  {
    v6 = v3;
    v8 = *a1;
    v35 = a1[1];
    oslog = a1[3];
    v10 = *a2;
    v9 = a2[1];
    v11 = a2[3];
    aBlock = *a2;
    v39 = v9;
    v40 = v5;
    v41 = v11;
    v12 = sub_220E7DF28(&aBlock);
    if (v12)
    {
      v13 = v12;
      v14 = [v12 parentViewController];
      if (!v14)
      {
        v14 = v13;
        sub_220FC2EE0();
      }

      aBlock = v8;
      v39 = v35;
      v40 = v4;
      v41 = oslog;
      v15 = sub_220E7DF28(&aBlock);
      v16 = [v13 view];
      v17 = v16;
      if (a3)
      {
        if (v16)
        {
          [v16 setAlpha_];

          v34 = objc_opt_self();
          v18 = swift_allocObject();
          *(v18 + 16) = v15;
          *(v18 + 24) = v13;
          v42 = sub_220E82310;
          v43 = v18;
          aBlock = MEMORY[0x277D85DD0];
          v39 = 1107296256;
          v40 = sub_220F6DA78;
          v41 = &block_descriptor_104;
          v19 = _Block_copy(&aBlock);
          v20 = v15;
          v21 = v13;

          v22 = swift_allocObject();
          v22[2] = v15;
          v22[3] = v6;
          v22[4] = v8;
          v22[5] = v35;
          v22[6] = v4;
          v22[7] = oslog;
          v42 = sub_220E82318;
          v43 = v22;
          aBlock = MEMORY[0x277D85DD0];
          v39 = 1107296256;
          v40 = sub_220EFF6B0;
          v41 = &block_descriptor_110;
          v23 = _Block_copy(&aBlock);
          v24 = v20;
          v25 = v6;

          [v34 animateWithDuration:v19 animations:v23 completion:0.3];
          _Block_release(v23);
          _Block_release(v19);

          return;
        }

        __break(1u);
        goto LABEL_20;
      }

      if (!v16)
      {
LABEL_20:
        __break(1u);
        return;
      }

      [v16 setAlpha_];

      if (v15)
      {
        v33 = v15;
        sub_220FC2EF0();
      }

      aBlock = v8;
      v39 = v35;
      v40 = v4;
      v41 = oslog;
      sub_220E7DDEC(&aBlock);
    }

    else
    {
      if (qword_2812C5EC8 != -1)
      {
        swift_once();
      }

      v26 = sub_220FC17A0();
      __swift_project_value_buffer(v26, qword_2812C5ED0);
      osloga = sub_220FC1780();
      v27 = sub_220FC2E10();
      if (os_log_type_enabled(osloga, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v44 = v29;
        *v28 = 136446210;
        aBlock = v10;
        v39 = v9;
        v40 = v5;
        v41 = v11;
        sub_220E822BC();
        v30 = sub_220FC38F0();
        v32 = sub_220E20FF8(v30, v31, &v44);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_220E15000, osloga, v27, "Attempted to transition to a view controller that wasn't created for displayMode=%{public}s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x223D9DDF0](v29, -1, -1);
        MEMORY[0x223D9DDF0](v28, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_220E7B11C(uint64_t a1)
{
  v3 = type metadata accessor for SnapshotViewController.SnapshotConfiguration(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v51[-1] - v7;
  v9 = type metadata accessor for WeatherMapStore.ViewModel(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v51[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v51[-1] - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6A0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v51[-1] - v19;
  if ((*(a1 + 16) & 0x8000000000000000) != 0)
  {
    v28 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
    swift_beginAccess();
    v29 = *(v1 + v28);
    if (v29)
    {
      sub_220E819BC();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v9);
      v30 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_viewModelToUpdate;
      swift_beginAccess();
      v31 = v29;
      sub_220E820A8(v20, v1 + v30);
      swift_endAccess();
      sub_220E81DA4(v1 + v30, v20);
      sub_220E7D858();

      sub_220E3B2DC(v20, &unk_27CF9D6A0);
      return;
    }

    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v43 = sub_220FC17A0();
    __swift_project_value_buffer(v43, qword_2812C5ED0);
    sub_220E819BC();
    v33 = sub_220FC1780();
    v44 = sub_220FC2E10();
    if (os_log_type_enabled(v33, v44))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v51[0] = v36;
      *v35 = 141558275;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      sub_220E82050();
      v45 = sub_220FC38F0();
      v47 = v46;
      sub_220E81964(v16, type metadata accessor for WeatherMapStore.ViewModel);
      v48 = sub_220E20FF8(v45, v47, v51);

      *(v35 + 14) = v48;
      v41 = "Interactive view controller was not initialised for viewModel = %{private,mask.hash}s.";
      v42 = v44;
      goto LABEL_16;
    }

    v49 = v16;
LABEL_19:
    sub_220E81964(v49, type metadata accessor for WeatherMapStore.ViewModel);
    return;
  }

  v21 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_snapshotViewController);
  if (!v21)
  {
    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v32 = sub_220FC17A0();
    __swift_project_value_buffer(v32, qword_2812C5ED0);
    sub_220E819BC();
    v33 = sub_220FC1780();
    v34 = sub_220FC2E10();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v52 = v36;
      *v35 = 141558275;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      sub_220E82050();
      v37 = sub_220FC38F0();
      v39 = v38;
      sub_220E81964(v12, type metadata accessor for WeatherMapStore.ViewModel);
      v40 = sub_220E20FF8(v37, v39, &v52);

      *(v35 + 14) = v40;
      v41 = "Snapshot view controller was not initialised for viewModel = %{private,mask.hash}s.";
      v42 = v34;
LABEL_16:
      _os_log_impl(&dword_220E15000, v33, v42, v41, v35, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x223D9DDF0](v36, -1, -1);
      MEMORY[0x223D9DDF0](v35, -1, -1);

      return;
    }

    v49 = v12;
    goto LABEL_19;
  }

  v22 = v21;
  sub_220E7D4FC(v8);
  sub_220E819BC();
  sub_220F545F8();
  v23 = *(a1 + 16);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v52 = *a1;
    v53 = v23 & 1;
    sub_220F545A8(&v52);
  }

  sub_220E81964(v8, type metadata accessor for SnapshotViewController.SnapshotConfiguration);
  v24 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_onMapEventHandler);
  v25 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_onMapEventHandler + 8);
  v26 = &v22[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_onMapEventHandler];
  v27 = *&v22[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_onMapEventHandler];
  *v26 = v24;
  v26[1] = v25;
  sub_220E1AADC(v24);
  sub_220E2DD2C(v27);
}

void *sub_220E7B724()
{
  v1 = type metadata accessor for WeatherMapPresentedPicker(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220E819BC();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D5B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 2, v5);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      v7 = *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationPickerViewController);
      v8 = v7;
    }

    else
    {
      sub_220E81964(v4, type metadata accessor for WeatherMapPresentedPicker);
      return 0;
    }
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationPopoverViewController);
    v9 = sub_220FC1070();
    v10 = *(*(v9 - 8) + 8);
    v11 = v7;
    v10(v4, v9);
  }

  return v7;
}

void sub_220E7B874(uint64_t a1)
{
  v2 = v1;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D398);
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188, v4);
  v183 = &v179 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v181 = &v179 - v8;
  MEMORY[0x28223BE20](v9, v10);
  v186 = &v179 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v184 = &v179 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v191 = &v179 - v17;
  v192 = sub_220FC05E0();
  v18 = *(v192 - 8);
  MEMORY[0x28223BE20](v192, v19);
  v182 = &v179 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v189 = &v179 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v190 = &v179 - v26;
  v203 = sub_220FC1070();
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203, v27);
  v185 = &v179 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v204 = &v179 - v31;
  v198 = sub_220FC1F90();
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198, v32);
  v196 = &v179 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for WeatherMapStore.ViewModel(0);
  v193 = *(v34 - 8);
  v35 = *(v193 + 64);
  MEMORY[0x28223BE20](v34, v36);
  v194 = &v179 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for LocationPicker();
  MEMORY[0x28223BE20](v195, v37);
  v199 = &v179 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v200 = (&v179 - v41);
  v42 = type metadata accessor for WeatherMapPresentedPicker(0);
  MEMORY[0x28223BE20](v42 - 8, v43);
  v45 = &v179 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v179 - v48;
  v201 = v34;
  v50 = *(v34 + 64);
  *&v205 = a1;
  v51 = sub_220E7B724();
  v52 = [v2 presentedViewController];
  if (v52)
  {
    v53 = v52;
    if ([v52 isBeingDismissed])
    {
      goto LABEL_17;
    }

    v179 = v18;
    v180 = v2;
    v54 = *&v2[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationPickerViewController];
    if (v54)
    {
      sub_220E1966C(0, &qword_2812C5CD8);
      v55 = v53;
      v56 = v54;
      v57 = sub_220FC3250();

      if (v57)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v58 = v53;
    }

    v2 = v180;
    v59 = *&v180[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationPopoverViewController];
    if (v59)
    {
      sub_220E1966C(0, &qword_2812C5CD8);
      v60 = v53;
      v61 = v59;
      v62 = sub_220FC3250();

      if (v62)
      {
LABEL_9:
        if (v51)
        {
          sub_220E1966C(0, &qword_2812C5CD8);
          v63 = v51;
          v64 = sub_220FC3250();

          v2 = v180;
          v18 = v179;
          if (v64)
          {
            goto LABEL_17;
          }
        }

        else
        {

          v2 = v180;
          v18 = v179;
        }

        [v2 dismissViewControllerAnimated:1 completion:{0, v179}];
LABEL_17:

        goto LABEL_18;
      }

      v2 = v180;
    }

    else
    {
    }

    v18 = v179;
    goto LABEL_17;
  }

LABEL_18:
  v65 = v18;
  if ((*(v205 + 16) & 0x8000000000000000) == 0)
  {
    v66 = [v2 presentedViewController];
    if (v66)
    {
      v67 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D700);
      v68 = swift_dynamicCastClass();

      if (v68)
      {
        [v2 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }

  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D5B0);
  __swift_storeEnumTagSinglePayload(v49, 2, 2, v69);
  static WeatherMapPresentedPicker.== infix(_:_:)(v205 + v50, v49, v70, v71, v72, v73, v74, v75, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190);
  v77 = v76;
  sub_220E81964(v49, type metadata accessor for WeatherMapPresentedPicker);
  if (v77)
  {
    goto LABEL_25;
  }

  v78 = [v2 presentedViewController];
  if (v78)
  {

LABEL_25:
    return;
  }

  sub_220E819BC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 2, v69);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload != 1)
    {
      goto LABEL_25;
    }

    v204 = v51;
    v80 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_resolver;
    swift_beginAccess();
    sub_220E1E2A8(&v2[v80], &aBlock);
    __swift_project_boxed_opaque_existential_1(&aBlock, v208);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6E0);
    sub_220FC1230();
    if (v214)
    {
      sub_220E1E72C(&v212, v215);
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      v81 = __swift_project_boxed_opaque_existential_1(v215, v215[3]);
      v82 = v205;
      LOBYTE(aBlock) = *(v205 + 48);
      MEMORY[0x28223BE20](v81, v83);
      *(&v179 - 2) = v82;
      sub_220F0A84C(sub_220E8244C, (&v179 - 4), v84);
      sub_220ECD4FC(&v212);

      v85 = v212;
      v86 = *(&v212 + 1);
      v87 = v213;
      LODWORD(v203) = v214;
      LODWORD(v202) = BYTE1(v214);
      sub_220E819BC();
      sub_220FC2AB0();
      v88 = sub_220FC2AA0();
      v89 = swift_allocObject();
      v90 = MEMORY[0x277D85700];
      *(v89 + 16) = v88;
      *(v89 + 24) = v90;
      sub_220E81EE4();
      v91 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v92 = sub_220FC2AA0();
      v93 = swift_allocObject();
      v93[2] = v92;
      v93[3] = v90;
      v93[4] = v91;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFD0);
      sub_220FC22C0();
      v205 = aBlock;
      v94 = v207;
      v95 = v208;
      v96 = swift_allocObject();
      v180 = v2;
      swift_unknownObjectWeakInit();
      KeyPath = swift_getKeyPath();
      v98 = v200;
      *(v200 + *(v195 + 36)) = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6F0);
      swift_storeEnumTagMultiPayload();
      *v98 = v85;
      *(v98 + 8) = v86;
      *(v98 + 16) = v87;
      *(v98 + 24) = v203;
      *(v98 + 25) = v202;
      *(v98 + 32) = v205;
      *(v98 + 48) = v94;
      *(v98 + 56) = v95;
      *(v98 + 64) = sub_220E82258;
      *(v98 + 72) = v96;
      v211 = 0x4032000000000000;
      v99 = *(v197 + 104);
      v100 = v196;
      v101 = v198;
      v99(v196, *MEMORY[0x277CE0AB0], v198);
      sub_220E82260();

      sub_220FC1B00();
      v211 = 0x4040000000000000;
      v99(v100, *MEMORY[0x277CE0A68], v101);
      sub_220FC1B00();

      if (sub_220FC2300())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D700);
        sub_220E819BC();
        v102 = sub_220FC1820();
      }

      else
      {
        sub_220E819BC();
        v113 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D700));
        v102 = sub_220FC1830();
      }

      v114 = v102;
      v115 = v180;
      if (qword_2812C6688 != -1)
      {
        swift_once();
      }

      v116 = v114;
      sub_220EA8EC0(v116);
      v117 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v209 = sub_220E822B4;
      v210 = v117;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v207 = sub_220F6DA78;
      v208 = &block_descriptor_98;
      v118 = _Block_copy(&aBlock);
      v119 = v116;

      [v119 setOnDisappear_];
      _Block_release(v118);

      [v115 presentViewController:v119 animated:1 completion:0];
      sub_220E81964(v98, type metadata accessor for LocationPicker);
      v120 = *&v115[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationPickerViewController];
      *&v115[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationPickerViewController] = v119;

      __swift_destroy_boxed_opaque_existential_0(v215);
      return;
    }

    __break(1u);
    goto LABEL_76;
  }

  v103 = v202;
  v104 = v204;
  v105 = v203;
  (*(v202 + 32))(v204, v45, v203);
  v106 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_store;
  v107 = *&v2[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_store] + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
  swift_beginAccess();
  v108 = *(v107 + *(v201 + 40));
  if (!v108)
  {
    goto LABEL_43;
  }

  v109 = sub_220FC1020();
  v110 = v191;
  sub_220F62B4C(v109, v111, v108, v191);

  v112 = sub_220FC0760();
  if (__swift_getEnumTagSinglePayload(v110, 1, v112) == 1)
  {
    sub_220E3B2DC(v110, &qword_27CF9CEE8);
LABEL_43:
    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v130 = sub_220FC17A0();
    __swift_project_value_buffer(v130, qword_2812C5ED0);
    v131 = sub_220FC1780();
    v132 = sub_220FC2E10();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      *v133 = 0;
      _os_log_impl(&dword_220E15000, v131, v132, "Weather map asked to present popover for location before weather has loaded for it", v133, 2u);
      MEMORY[0x223D9DDF0](v133, -1, -1);
    }

    (*(v103 + 8))(v104, v105);
    return;
  }

  v121 = v189;
  sub_220FC0700();
  v122 = *(v112 - 8);
  v200 = *(v122 + 8);
  v199 = (v122 + 8);
  v200(v110, v112);
  v123 = v190;
  v124 = v192;
  (*(v65 + 32))(v190, v121, v192);
  v125 = *&v2[v106] + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
  swift_beginAccess();
  v126 = *(v125 + *(v201 + 40));
  if (!v126)
  {
    (*(v65 + 8))(v123, v124);
    goto LABEL_42;
  }

  v127 = sub_220FC1020();
  v128 = v184;
  sub_220F62B4C(v127, v129, v126, v184);

  if (__swift_getEnumTagSinglePayload(v128, 1, v112) == 1)
  {
    (*(v65 + 8))(v190, v192);
    sub_220E3B2DC(v128, &qword_27CF9CEE8);
LABEL_42:
    v104 = v204;
    v103 = v202;
    v105 = v203;
    goto LABEL_43;
  }

  v134 = v181;
  sub_220FC0720();
  v200(v128, v112);
  (*(v187 + 32))(v186, v134, v188);
  v135 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
  swift_beginAccess();
  v136 = *&v2[v135];
  v137 = v204;
  v138 = v192;
  v139 = v203;
  if (v136 && (v140 = v136, sub_220EF77FC(), v142 = v141, v140, v142))
  {
    [v142 bounds];
    v217 = CGRectOffset(v216, 5.0, 0.0);
    x = v217.origin.x;
    y = v217.origin.y;
    width = v217.size.width;
    height = v217.size.height;
    v147 = v65;
    v148 = v190;
  }

  else
  {
    v149 = [v2 view];
    if (!v149)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v142 = v149;
    v150 = [v2 view];
    if (!v150)
    {
LABEL_77:
      __break(1u);
      return;
    }

    v151 = v150;
    v147 = v65;
    [v150 bounds];
    x = v152;
    y = v153;
    width = v154;
    height = v155;

    v148 = v190;
    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v156 = sub_220FC17A0();
    __swift_project_value_buffer(v156, qword_2812C5ED0);
    v157 = sub_220FC1780();
    v158 = sub_220FC2E10();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      *v159 = 0;
      _os_log_impl(&dword_220E15000, v157, v158, "Weather map asked to present popover for location without callout view", v159, 2u);
      v160 = v159;
      v138 = v192;
      MEMORY[0x223D9DDF0](v160, -1, -1);
    }
  }

  (*(v202 + 16))(v185, v137, v139);
  v161 = sub_220FC1020();
  v163 = (v205 + *(v201 + 36));
  v164 = v163[1];
  if (v164)
  {
    if (v161 == *v163 && v164 == v162)
    {
      v166 = 1;
    }

    else
    {
      v166 = sub_220FC3940();
    }
  }

  else
  {
    v166 = 0;
  }

  v167 = v182;
  (*(v147 + 16))(v182, v148, v138);
  v168 = v183;
  (*(v187 + 16))(v183, v186, v188);
  v169 = objc_allocWithZone(type metadata accessor for PopoverViewController());
  v170 = sub_220E66B50(v185, v166 & 1, v167, v168);
  if (qword_2812C6688 != -1)
  {
    swift_once();
  }

  v171 = v170;
  sub_220EA8EC0(v171);
  *&v171[OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_delegate + 8] = &off_28347DFA8;
  swift_unknownObjectWeakAssign();
  [v171 setModalPresentationStyle_];
  v172 = [v171 popoverPresentationController];
  if (v172)
  {
    v173 = v172;
    [v172 setSourceView_];
  }

  v174 = [v171 popoverPresentationController];

  v175 = v203;
  if (v174)
  {
    [v174 setPermittedArrowDirections_];
  }

  v176 = [v171 popoverPresentationController];

  [v176 setSourceRect_];
  v177 = [v171 popoverPresentationController];

  if (v177)
  {
    [v177 setDelegate_];
  }

  [v2 presentViewController:v171 animated:1 completion:0];

  (*(v187 + 8))(v186, v188);
  (*(v147 + 8))(v148, v192);
  (*(v202 + 8))(v137, v175);
  v178 = *&v2[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationPopoverViewController];
  *&v2[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationPopoverViewController] = v171;
}

uint64_t sub_220E7CFA4@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for WeatherMapStore.ViewModel(0) + 36));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

void sub_220E7CFF0(uint64_t *a1)
{
  v2 = type metadata accessor for InteractiveFocus();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = type metadata accessor for WeatherMapStore.ViewModel(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v19 - v10;
  v13 = *a1;
  v12 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v19 = v13;

    swift_beginAccess();
    sub_220E819BC();
    v16 = &v11[v4[9]];
    swift_bridgeObjectRetain_n();

    *v16 = v19;
    *(v16 + 1) = v12;
    sub_220F319DC();
    sub_220E81FFC();
    v11[v4[12]] = 1;
    v11[v4[18]] = 1;
    sub_220E819BC();
    sub_220F3196C(v7);
    sub_220E81964(v11, type metadata accessor for WeatherMapStore.ViewModel);
  }

  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    [v17 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_220E7D268()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_220E7D2CC()
{
  v0 = type metadata accessor for WeatherMapPresentedPicker(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D5B0);
    __swift_storeEnumTagSinglePayload(v3, 2, 2, v6);
    swift_beginAccess();
    type metadata accessor for WeatherMapStore.ViewModel(0);
    sub_220E82188();
    swift_endAccess();
    sub_220F318B0();

    return sub_220E81964(v3, type metadata accessor for WeatherMapPresentedPicker);
  }

  return result;
}

uint64_t sub_220E7D424(void *a1)
{
  v2 = type metadata accessor for SnapshotViewController.SnapshotConfiguration(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220E7D4FC(v5);
  sub_220FC11B0();
  return sub_220E81964(v5, type metadata accessor for SnapshotViewController.SnapshotConfiguration);
}

uint64_t sub_220E7D4FC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  OUTLINED_FUNCTION_8_0(v3);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v39[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  OUTLINED_FUNCTION_8_0(v8);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v39[-v11];
  v13 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v15 = v14;
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_4();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v39[-v23];
  sub_220F315B4();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_220E7EF18();
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      sub_220E3B2DC(v12, &unk_27CF9D6D0);
    }
  }

  else
  {
    (*(v15 + 32))(v24, v12, v13);
  }

  v25 = *(v1 + 16);
  v26 = *(v1 + 24);
  (*(v15 + 16))(v20, v24, v13);
  v40 = *(v1 + 48);
  v27 = type metadata accessor for WeatherMapStore.ViewModel(0);
  v28 = *(v1 + *(v27 + 76));
  v29 = *(v1 + *(v27 + 40));
  if (v29)
  {
    v30 = v28;
    v31 = sub_220FC1020();
    sub_220F62B4C(v31, v32, v29, v7);

    (*(v15 + 8))(v24, v13);
  }

  else
  {
    v33 = *(v15 + 8);
    v34 = v28;
    v33(v24, v13);
    sub_220FC0760();
    v35 = OUTLINED_FUNCTION_30_1();
    __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  }

  if (v25 < 0)
  {
    v26 = 0.0;
  }

  (*(v15 + 32))(a1, v20, v13);
  v37 = type metadata accessor for SnapshotViewController.SnapshotConfiguration(0);
  *(a1 + v37[5]) = v40;
  *(a1 + v37[6]) = v28;
  result = sub_220E82118(v7, a1 + v37[7]);
  *(a1 + v37[8]) = v26;
  return result;
}

void sub_220E7D858()
{
  OUTLINED_FUNCTION_29_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6A0);
  OUTLINED_FUNCTION_8_0(v7);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v46 - v10;
  v12 = type metadata accessor for WeatherMapStore.ViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_25_3();
  sub_220E81DA4(v4, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    sub_220E81EE4();
    v15 = *(v0 + v12[13]);
    if (*(v15 + 16) && (v16 = sub_220F1908C(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24)), (v17 & 1) != 0))
    {
      v18 = *(*(v15 + 56) + 8 * v16);
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    v19 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsView;
    v20 = *(v6 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsView);
    if (v20 && (sub_220F35358(*&v20[OBJC_IVAR____TtC11WeatherMaps12ControlsView_buttonGroups], v18) & 1) == 0)
    {
      v21 = v20;
      sub_220EA4A2C(v18);
    }

    else
    {
    }

    LOBYTE(v53[0]) = *(v0 + 48);
    if (sub_220E7DCF8(v53))
    {
      LOBYTE(v53[0]) = *(v0 + 48);
      sub_220F00994();
    }

    sub_220EF7B94(*(v0 + v12[19]));
    sub_220EF7BCC(*(v0 + v12[20]));
    MEMORY[0x28223BE20](v22, v23);
    *(&v46 - 2) = v0;
    v25 = sub_220F0A84C(sub_220E81E14, (&v46 - 2), v24);
    sub_220EF7A74(v25);

    v26 = *(v6 + v19);
    if (v26)
    {
      if (*(v0 + v12[15]))
      {
        v27 = 0;
        v28 = 0uLL;
        v29 = 0uLL;
        v30 = 0uLL;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
      }

      else
      {
        memcpy(v53, (v0 + v12[14]), 0x61uLL);
        v51 = v53[0];
        v50 = v53[1];
        v49 = v53[2];
        v48 = v53[3];
        v47 = v53[4];
        v46 = v53[5];
        v27 = v53[6];
        sub_220E81E34(v53, &v52);
        v33 = v46;
        v32 = v47;
        v31 = v48;
        v30 = v49;
        v29 = v50;
        v28 = v51;
      }

      v53[0] = v28;
      v53[1] = v29;
      v53[2] = v30;
      v53[3] = v31;
      v53[4] = v32;
      v53[5] = v33;
      LOBYTE(v53[6]) = v27;
      v34 = v26;
      sub_220EA4A74(v53);
    }

    sub_220EF7C04();
    sub_220EF7FF0(*(v0 + v12[25]));
    if (*(v0 + v12[23]) == 1)
    {
      sub_220F6AC30(0, 0);
    }

    v35 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_onMapEventHandler);
    v36 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_onMapEventHandler + 8);
    v37 = (v6 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_onMapEventHandler);
    v38 = *(v6 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_onMapEventHandler);
    *v37 = v35;
    v37[1] = v36;
    sub_220E1AADC(v35);
    sub_220E2DD2C(v38);
    v39 = *(v0 + v12[22]);
    if (*(v2 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_prefersControlsHidden) == v39)
    {
      goto LABEL_29;
    }

    *(v2 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_prefersControlsHidden) = v39;
    if (*(v2 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_isResizing) & 1) != 0 || (*(v6 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_isDismissing))
    {
      goto LABEL_29;
    }

    v40 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
    if (v39)
    {
      swift_beginAccess();
      v41 = *(v2 + v40);
      if (v41)
      {
        swift_endAccess();
        v42 = v41;
        sub_220EF720C();
LABEL_28:

LABEL_29:
        OUTLINED_FUNCTION_1_19();
        sub_220E81964(v0, v44);
        goto LABEL_30;
      }
    }

    else
    {
      swift_beginAccess();
      v43 = *(v2 + v40);
      if (v43)
      {
        swift_endAccess();
        v42 = v43;
        sub_220EF7330(0, 0, 0);
        goto LABEL_28;
      }
    }

    OUTLINED_FUNCTION_1_19();
    sub_220E81964(v0, v45);
    swift_endAccess();
    goto LABEL_30;
  }

  sub_220E3B2DC(v11, &unk_27CF9D6A0);
LABEL_30:
  OUTLINED_FUNCTION_22();
}

BOOL sub_220E7DCF8(_BYTE *a1)
{
  v2 = *a1;
  if ((v2 - 3) >= 3)
  {
    if (!*a1)
    {
      v5 = v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_lastViewModel;
      swift_beginAccess();
      if (*(v5 + 48) - 6 >= 0xFFFFFFFD)
      {
        v6 = v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_lastViewModel;
        swift_beginAccess();
        if (*(v6 + 48))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  v3 = v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_lastViewModel;
  swift_beginAccess();
  v4 = *(v3 + 48);
  if (v2 == 5)
  {
    if (v4 == 5)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == 4)
    {
      return v4 != 4;
    }

    if (v4 == 3)
    {
      return 0;
    }
  }

  return 1;
}

void sub_220E7DDEC(uint64_t a1)
{
  v2 = v1;
  if ((*(a1 + 16) & 0x8000000000000000) != 0)
  {
    v8 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
    swift_beginAccess();
    v9 = *(v1 + v8);
    if (v9)
    {
      v10 = qword_2812C6688;
      v11 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      sub_220EA8FFC(v11);

      v12 = *(v2 + v8);
      *(v2 + v8) = 0;
    }
  }

  else
  {
    v3 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_snapshotViewController;
    v4 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_snapshotViewController);
    if (v4)
    {
      v5 = qword_2812C6688;
      v6 = v4;
      if (v5 != -1)
      {
        swift_once();
      }

      sub_220EA8FFC(v6);

      v7 = *(v2 + v3);
      *(v2 + v3) = 0;
    }
  }
}

void *sub_220E7DF28(uint64_t a1)
{
  if ((*(a1 + 16) & 0x8000000000000000) != 0)
  {
    v5 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
    swift_beginAccess();
    v2 = *(v1 + v5);
    if (!v2)
    {
      return v2;
    }

    goto LABEL_3;
  }

  v2 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_snapshotViewController);
  if (v2)
  {
LABEL_3:
    v3 = v2;
  }

  return v2;
}

void sub_220E7DF94(void *a1, id a2)
{
  if (a1)
  {
    v3 = [a1 view];
    if (!v3)
    {
LABEL_9:
      __break(1u);
      return;
    }

    v4 = v3;
    [v3 setAlpha_];
  }

  v5 = [a2 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  [v5 setAlpha_];
}

void sub_220E7E03C(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (a2)
    {
      v11 = a2;
      sub_220FC2EF0();
    }

    v12[0] = a4;
    v12[1] = a5;
    v12[2] = a6;
    v12[3] = a7;
    sub_220E7DDEC(v12);
  }
}

id WeatherMapViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_220FC26C0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WeatherMapViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_220E7E32C()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_27CF9C050 != -1)
  {
    swift_once();
    v1 = v2;
  }

  [v1 addObserver:v0 selector:sel_mapSnapshotViewDidRetrieveSnapshot_ name:qword_27CFAF480 object:0];
}

uint64_t sub_220E7E3E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D080);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v19 - v3;
  v5 = type metadata accessor for SnapshotManager.Snapshot(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_store) + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
  swift_beginAccess();
  result = type metadata accessor for WeatherMapStore.ViewModel(0);
  v11 = (v9 + *(result + 36));
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;

    v14 = sub_220FBFDB0();
    if (v14)
    {
      v15 = v14;
      v19 = 0x6E6F697461636F6CLL;
      v20 = 0xEA00000000004449;
      sub_220FC3540();
      sub_220F62C94(v15, &v22);
      sub_220E81E90(v21);
      if (v23)
      {
        if (swift_dynamicCast())
        {
          if (v19 == v13 && v12 == v20)
          {
          }

          else
          {
            v17 = sub_220FC3940();

            if ((v17 & 1) == 0)
            {
            }
          }

          v19 = 0x746F687370616E73;
          v20 = 0xE800000000000000;
          sub_220FC3540();
          sub_220F62C94(v15, &v22);

          sub_220E81E90(v21);
          if (v23)
          {
            v18 = swift_dynamicCast();
            __swift_storeEnumTagSinglePayload(v4, v18 ^ 1u, 1, v5);
            if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
            {
              sub_220E81EE4();
              sub_220E7E778(v8, v13, v12, 1);

              return sub_220E81964(v8, type metadata accessor for SnapshotManager.Snapshot);
            }
          }

          else
          {

            sub_220E3B2DC(&v22, &unk_27CF9D6B0);
            __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
          }

          return sub_220E3B2DC(v4, &qword_27CF9D080);
        }
      }

      else
      {
        sub_220E3B2DC(&v22, &unk_27CF9D6B0);
      }
    }
  }

  return result;
}

void sub_220E7E778(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v6 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_isCrossfadingSnapshot;
  if ((v4[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_isCrossfadingSnapshot] & 1) == 0)
  {
    v11 = &v5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_lastViewModel];
    swift_beginAccess();
    if ((*(v11 + 2) & 0x8000000000000000) != 0 && (*(v11 + 2) & 1) == 0)
    {
      v12 = *v11;
      v5[v6] = 1;
      v13 = [objc_opt_self() defaultCenter];
      if (qword_2812C5C88 != -1)
      {
        swift_once();
      }

      v14 = qword_2812CE4C8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D088);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_220FC8E30;
      aBlock = 0x6E6F697461636F6CLL;
      v44 = 0xEA00000000004449;
      v16 = MEMORY[0x277D837D0];
      sub_220FC3540();
      *(inited + 96) = v16;
      *(inited + 72) = a2;
      *(inited + 80) = a3;

      v17 = sub_220FC2600();
      sub_220E56408(v14, 0, v17, v13);

      v18 = objc_opt_self();
      [v18 begin];
      [v18 setDisableActions_];
      type metadata accessor for WeatherMapSnapshotDisplayView();
      v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      sub_220E3B74C(a1, 0);
      v20 = v19;
      [v20 setUserInteractionEnabled_];
      v21 = [v5 view];
      if (v21)
      {
        v22 = v21;
        [v21 bounds];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;

        [v20 setFrame_];
        [v20 setAutoresizingMask_];
        v31 = 1.0;
        if (a4)
        {
          v31 = 0.0;
        }

        [v20 setAlpha_];

        v32 = [v5 view];
        if (v32)
        {
          v33 = v32;
          [v32 addSubview_];

          [v18 commit];
          v34 = objc_opt_self();
          v35 = swift_allocObject();
          *(v35 + 16) = v20;
          v36 = a4 & 1;
          *(v35 + 24) = a4 & 1;
          v47 = sub_220E81F38;
          v48 = v35;
          aBlock = MEMORY[0x277D85DD0];
          v44 = 1107296256;
          v45 = sub_220F6DA78;
          v46 = &block_descriptor_55;
          v37 = _Block_copy(&aBlock);
          v38 = v20;

          v39 = swift_allocObject();
          *(v39 + 16) = v5;
          *(v39 + 24) = a2;
          *(v39 + 32) = a3;
          *(v39 + 40) = v36;
          *(v39 + 48) = v38;
          v47 = sub_220E81F5C;
          v48 = v39;
          aBlock = MEMORY[0x277D85DD0];
          v44 = 1107296256;
          v45 = sub_220EFF6B0;
          v46 = &block_descriptor_61;
          v40 = _Block_copy(&aBlock);

          v41 = v38;
          v42 = v5;

          [v34 animateWithDuration:v37 animations:v40 completion:v12];
          _Block_release(v40);
          _Block_release(v37);

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
}

void sub_220E7ECF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  *(a2 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_isCrossfadingSnapshot) = 0;
  v10 = [objc_opt_self() defaultCenter];
  if (qword_2812C5C90 != -1)
  {
    swift_once();
  }

  v11 = qword_2812CE4D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D088);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E30;
  v13 = MEMORY[0x277D837D0];
  sub_220FC3540();
  *(inited + 96) = v13;
  *(inited + 72) = a3;
  *(inited + 80) = a4;

  v14 = sub_220FC2600();
  sub_220E56408(v11, 0, v14, v10);

  if ((a5 & 1) == 0)
  {
    [a6 removeFromSuperview];
  }
}

uint64_t sub_220E7EE70()
{
  result = sub_220FC26C0();
  qword_27CFAF480 = result;
  return result;
}

uint64_t sub_220E7EEA8()
{
  result = sub_220FC26C0();
  qword_2812CE4C8 = result;
  return result;
}

uint64_t sub_220E7EEE0()
{
  result = sub_220FC26C0();
  qword_2812CE4D0 = result;
  return result;
}

uint64_t sub_220E7EF18()
{
  v0 = type metadata accessor for WeatherMapStore.ViewModel(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v4 = sub_220FC17A0();
  __swift_project_value_buffer(v4, qword_2812C5ED0);
  sub_220E819BC();
  v5 = sub_220FC1780();
  v6 = sub_220FC2E10();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_220E82050();
    v9 = sub_220FC38F0();
    v11 = v10;
    sub_220E81964(v3, type metadata accessor for WeatherMapStore.ViewModel);
    v12 = sub_220E20FF8(v9, v11, &v15);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_220E15000, v5, v6, "Tried to make a snapshot with no location available for viewModel = %{private,mask.hash}s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223D9DDF0](v8, -1, -1);
    MEMORY[0x223D9DDF0](v7, -1, -1);
  }

  else
  {

    sub_220E81964(v3, type metadata accessor for WeatherMapStore.ViewModel);
  }

  return sub_220FC1060();
}

uint64_t sub_220E7F14C()
{
  v1 = OUTLINED_FUNCTION_4_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_viewModelToUpdate;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  sub_220E81DA4(v0 + v7, v6);
  sub_220E7D858();
  return sub_220E3B2DC(v6, &unk_27CF9D6A0);
}

uint64_t sub_220E7F210()
{
  v0 = sub_220FC1020();
  v2 = v1;
  if (v0 == sub_220FC1020() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_220FC3940();
  }

  return v5 & 1;
}

BOOL sub_220E7F2A8()
{
  v1 = [v0 presentingViewController];
  v2 = v1;
  if (v1)
  {
    [v1 dismissViewControllerAnimated:1 completion:0];
  }

  return v2 != 0;
}

void sub_220E7F308(uint64_t a1)
{
  v3 = v2;
  type metadata accessor for WeatherMap.LocationAction(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_25_3();
  *(a1 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_isDismissing) = 1;
  v7 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v8)
  {
    v9 = v8;
    sub_220EF8008();
  }

  v10 = *(v3 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationActionHandler);
  if (v10)
  {
    swift_storeEnumTagMultiPayload();

    v10(v1);
    sub_220E2DD2C(v10);
    OUTLINED_FUNCTION_6_8();
  }
}

id sub_220E7F404(uint64_t a1, uint64_t a2)
{
  if (qword_2812C5B30 != -1)
  {
    swift_once();
  }

  v3 = qword_2812CE4B0;
  v4 = sub_220FBFF80();
  v6 = v5;

  v7 = qword_2812CE4B0;
  v8 = sub_220FBFF80();
  v10 = v9;

  v11 = qword_2812CE4B0;
  v12 = sub_220FBFF80();
  v14 = v13;

  sub_220E1966C(0, &qword_27CF9D688);
  v15 = sub_220E7F734(v4, v6, v8, v10, 1);
  if (qword_2812C6688 != -1)
  {
    swift_once();
  }

  sub_220EA8EC0(v15);
  sub_220E1966C(0, &unk_27CF9D690);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  v17 = sub_220E7F7EC(v12, v14, 0, sub_220E451F0, v16);
  [v15 addAction_];

  v18 = qword_2812CE4B0;
  v19 = sub_220FBFF80();
  v21 = v20;

  v22 = sub_220E7F7EC(v19, v21, 0, 0, 0);
  [v15 addAction_];

  return v15;
}

id sub_220E7F734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_220FC26C0();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_220FC26C0();

LABEL_6:
  v9 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v7 message:v8 preferredStyle:a5];

  return v9;
}

id sub_220E7F7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_220FC26C0();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_220E7F8F4;
  v12[3] = &block_descriptor_3;
  v9 = _Block_copy(v12);

LABEL_6:
  v10 = [swift_getObjCClassFromMetadata() actionWithTitle:v8 style:a3 handler:v9];
  _Block_release(v9);

  return v10;
}

void sub_220E7F8F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_220E7F95C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DBB0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_220FC9160;
  if (qword_2812C5B30 != -1)
  {
    swift_once();
  }

  v2 = qword_2812CE4B0;
  OUTLINED_FUNCTION_4_13();
  sub_220FBFF80();

  sub_220E1966C(0, &qword_2812C5B50);
  sub_220F349B0();
  v18 = v1;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  sub_220E1966C(0, &qword_27CF9DBE0);
  OUTLINED_FUNCTION_2_3();
  v3 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_21_1();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_31_1();
  *(v17 + 32) = sub_220FC3260();
  v5 = qword_2812CE4B0;
  OUTLINED_FUNCTION_4_13();
  sub_220FBFF80();

  sub_220F349B0();
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  OUTLINED_FUNCTION_2_3();
  v6 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_21_1();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 4;
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_31_1();
  *(v17 + 40) = sub_220FC3260();
  v8 = qword_2812CE4B0;
  OUTLINED_FUNCTION_4_13();
  sub_220FBFF80();

  sub_220F349B0();
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  OUTLINED_FUNCTION_2_3();
  v9 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_21_1();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = 3;
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_31_1();
  *(v17 + 48) = sub_220FC3260();
  v11 = v18 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_lastViewModel;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  if (*(v11 + *(type metadata accessor for WeatherMapStore.ViewModel(0) + 96)) == 1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220FC8F40;
    v13 = qword_2812CE4B0;
    OUTLINED_FUNCTION_4_13();
    sub_220FBFF80();

    sub_220F349B0();
    OUTLINED_FUNCTION_10();
    swift_beginAccess();
    OUTLINED_FUNCTION_2_3();
    v14 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_21_1();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = 5;
    OUTLINED_FUNCTION_4_13();
    OUTLINED_FUNCTION_31_1();
    *(inited + 32) = sub_220FC3260();
    sub_220F34ADC(inited);
  }

  return v17;
}

void sub_220E7FFB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_opt_self();
  OUTLINED_FUNCTION_2_3();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v12[4] = a4;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_220F6DA78;
  v12[3] = a5;
  v10 = _Block_copy(v12);
  v11 = a1;

  [v8 animateWithDuration:v10 animations:0.3];
  _Block_release(v10);
}

void sub_220E8009C(void *a1, double a2)
{
  v3 = [a1 superview];
  if (v3)
  {
    v4 = v3;
    [v3 setAlpha_];
  }
}

uint64_t sub_220E80114(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = a3;
    sub_220F317A4(&v5);
  }

  return result;
}

void sub_220E80178()
{
  OUTLINED_FUNCTION_29_2();
  v65 = v0;
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_10_6();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v12 = v11;
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_4();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18, v19);
  MEMORY[0x28223BE20](v20, v21);
  v24 = *v4;
  v25 = *(v4 + 16);
  switch(*(v4 + 32))
  {
    case 1:
      if ((*v2 & 1) == 0)
      {
        goto LABEL_22;
      }

      if (!v25)
      {
        goto LABEL_23;
      }

      v25(v45);
      OUTLINED_FUNCTION_22();

      sub_220E2DD2C(v46);
      return;
    case 2:
      v36 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
      v37 = v65;
      OUTLINED_FUNCTION_10();
      swift_beginAccess();
      v38 = *&v65[v36];
      if (v38)
      {
        v38[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_isDismissing] = 1;
        v39 = v38;
        sub_220EF8008();

        v40 = *&v37[v36];
        if (v40)
        {
          v41 = v40;
          sub_220EF830C();
        }
      }

      sub_220E7E32C();
LABEL_22:
      v24();
      goto LABEL_23;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D5B0);
      v42 = OUTLINED_FUNCTION_30_1();
      __swift_storeEnumTagSinglePayload(v42, 1, 2, v43);
      swift_beginAccess();
      type metadata accessor for WeatherMapStore.ViewModel(0);

      OUTLINED_FUNCTION_2_13();
      sub_220E82188();
      swift_endAccess();
      sub_220F318B0();

      OUTLINED_FUNCTION_0_20();
      sub_220E81964(v9, v44);
      goto LABEL_23;
    default:
      if (v24)
      {
        v62 = v23;
        v63 = &v61 - v22;
        v61 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_store;
        v26 = *&v65[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_store] + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
        OUTLINED_FUNCTION_10();
        swift_beginAccess();
        v27 = *(v26 + 40);
        v28 = *(v27 + 16);
        v64 = v12 + 16;

        for (i = 0; v28 != i; ++i)
        {
          if (i >= *(v27 + 16))
          {
            __break(1u);
LABEL_34:
            OUTLINED_FUNCTION_16();
LABEL_28:
            v50 = sub_220FC17A0();
            __swift_project_value_buffer(v50, qword_2812C5ED0);
            v51 = sub_220FC1780();
            v52 = sub_220FC2E10();
            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              *v53 = 0;
              OUTLINED_FUNCTION_35_3(&dword_220E15000, v54, v55, "Client requested navigating to current location without providing a Location with kind == current");
              MEMORY[0x223D9DDF0](v53, -1, -1);
            }

            goto LABEL_23;
          }

          (*(v12 + 16))(v17, v27 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * i, v10);
          sub_220FC1030();
          v30 = sub_220FC0FB0();
          v32 = v31;
          if (v30 == sub_220FC0FB0() && v32 == v33)
          {

LABEL_32:

            v56 = *(v12 + 32);
            v57 = v62;
            v56(v62, v17, v10);
            v58 = v63;
            v56(v63, v57, v10);

            v59 = sub_220FC1020();
            MEMORY[0x28223BE20](v59, v60);
            OUTLINED_FUNCTION_19_3();
            sub_220F32B5C(sub_220E82424);

            (*(v12 + 8))(v58, v10);
LABEL_23:
            OUTLINED_FUNCTION_22();
            return;
          }

          v35 = sub_220FC3940();

          if (v35)
          {
            goto LABEL_32;
          }

          (*(v12 + 8))(v17, v10);
        }

        if (qword_2812C5EC8 != -1)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }

      [v65 presentViewController:sub_220E7F404(*(v4 + 8) animated:*(v4 + 16)) completion:{1, 0}];
      OUTLINED_FUNCTION_22();

      return;
  }
}

Swift::Bool __swiftcall WeatherMapViewController.popoverPresentationControllerShouldDismissPopover(_:)(UIPopoverPresentationController a1)
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_10_6();
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D5B0);
  __swift_storeEnumTagSinglePayload(v7, 2, 2, v8);
  swift_beginAccess();
  type metadata accessor for WeatherMapStore.ViewModel(0);

  OUTLINED_FUNCTION_2_13();
  sub_220E82188();
  swift_endAccess();
  sub_220F318B0();

  OUTLINED_FUNCTION_0_20();
  sub_220E81964(v7, v9);
  v10 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (v11)
  {
    v12 = v11;
    sub_220EF836C();
  }

  return 1;
}

uint64_t sub_220E808C0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeatherMap.LocationAction(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_25_3();
  v7 = OUTLINED_FUNCTION_10_6();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D5B0);
  v12 = OUTLINED_FUNCTION_30_1();
  __swift_storeEnumTagSinglePayload(v12, 2, 2, v13);
  OUTLINED_FUNCTION_28_3();
  type metadata accessor for WeatherMapStore.ViewModel(0);

  OUTLINED_FUNCTION_2_13();
  sub_220E82188();
  swift_endAccess();
  sub_220F318B0();

  OUTLINED_FUNCTION_0_20();
  result = sub_220E81964(v11, v14);
  v16 = *(v3 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationActionHandler);
  if (v16)
  {
    sub_220FC1070();
    OUTLINED_FUNCTION_2();
    (*(v17 + 16))(v2, a2);
    swift_storeEnumTagMultiPayload();

    v16(v2);
    sub_220E2DD2C(v16);
    return OUTLINED_FUNCTION_6_8();
  }

  return result;
}

void sub_220E80A70(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  type metadata accessor for WeatherMap.LocationAction(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_25_3();
  v8 = OUTLINED_FUNCTION_10_6();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D5B0);
  v13 = OUTLINED_FUNCTION_30_1();
  __swift_storeEnumTagSinglePayload(v13, 2, 2, v14);
  OUTLINED_FUNCTION_28_3();
  type metadata accessor for WeatherMapStore.ViewModel(0);

  OUTLINED_FUNCTION_2_13();
  sub_220E82188();
  swift_endAccess();
  sub_220F318B0();

  OUTLINED_FUNCTION_0_20();
  sub_220E81964(v12, v15);
  v16 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  v17 = *(v4 + v16);
  if (v17)
  {
    v18 = v17;
    sub_220EF836C();
  }

  v19 = *(v4 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationActionHandler);
  if (v19)
  {
    sub_220FC1070();
    OUTLINED_FUNCTION_2();
    (*(v20 + 16))(v2, a2);
    swift_storeEnumTagMultiPayload();

    v19(v2);
    sub_220E2DD2C(v19);
    OUTLINED_FUNCTION_6_8();
  }
}

void static WeatherMapPresentedPicker.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_2();
  a19 = v20;
  a20 = v21;
  v22 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v24 = v23;
  MEMORY[0x28223BE20](v25, v26);
  OUTLINED_FUNCTION_3();
  v29 = v28 - v27;
  v30 = OUTLINED_FUNCTION_10_6();
  MEMORY[0x28223BE20](v30, v31);
  OUTLINED_FUNCTION_3();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D5B8);
  OUTLINED_FUNCTION_8_0(v35);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v36, v37);
  v39 = &a9 - v38;
  v41 = *(v40 + 56);
  sub_220E819BC();
  sub_220E819BC();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D5B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 2, v42);
  if (!EnumTagSinglePayload)
  {
    OUTLINED_FUNCTION_13_4();
    sub_220E819BC();
    if (!OUTLINED_FUNCTION_27_3())
    {
      (*(v24 + 32))(v29, &v39[v41], v22);
      sub_220FC1010();
      v45 = *(v24 + 8);
      v45(v29, v22);
      v45(v34, v22);
      OUTLINED_FUNCTION_0_20();
      sub_220E81964(v39, v46);
      goto LABEL_10;
    }

    (*(v24 + 8))(v34, v22);
    goto LABEL_9;
  }

  if (EnumTagSinglePayload == 1)
  {
    if (OUTLINED_FUNCTION_27_3() != 1)
    {
      goto LABEL_9;
    }
  }

  else if (OUTLINED_FUNCTION_27_3() != 2)
  {
LABEL_9:
    sub_220E3B2DC(v39, &unk_27CF9D5B8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_0_20();
  sub_220E81964(v39, v44);
LABEL_10:
  OUTLINED_FUNCTION_22();
}

uint64_t WeatherMapPresentedPicker.description.getter()
{
  v0 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v2 = v1;
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = OUTLINED_FUNCTION_10_6();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_13_4();
  sub_220E819BC();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D5B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 2, v13);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      return 0x6E6F697461636F6CLL;
    }

    else
    {
      return 1701736302;
    }
  }

  else
  {
    (*(v2 + 32))(v7, v12, v0);
    sub_220FC35C0();

    v16 = sub_220FC1020();
    MEMORY[0x223D9BD60](v16);

    v15 = 0xD000000000000010;
    (*(v2 + 8))(v7, v0);
  }

  return v15;
}

void sub_220E810A8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  v6 = *(v3 + v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_220EF8494();
    [v8 startLinearZoomIn_];
  }
}

void WeatherMapViewController.didRequestStopLinearZoom(_:)()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_220EF8494();
    [v4 stopZoomingWithInertia];
  }
}

uint64_t sub_220E811B8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, double))
{
  v5 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
  OUTLINED_FUNCTION_10();
  result = swift_beginAccess();
  v7 = *(v3 + v5);
  if (v7)
  {
    v8 = *(v3 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_store);
    v9 = v7;

    v10 = sub_220EF8494();
    [v10 _zoomLevel];
    v12 = v11;

    a3(v13, v8, v12);
  }

  return result;
}

void WeatherMapViewController.didRequestZoomReset(_:)()
{
  OUTLINED_FUNCTION_29_2();
  v1 = type metadata accessor for InteractiveFocus();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_25_3();
  v4 = type metadata accessor for WeatherMapStore.ViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_4();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v21 - v12;
  v14 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  if (*(v0 + v14))
  {
    v15 = v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_lastViewModel;
    OUTLINED_FUNCTION_10();
    swift_beginAccess();
    v16 = (v15 + v4[9]);
    v18 = *v16;
    v17 = v16[1];
    OUTLINED_FUNCTION_10();
    swift_beginAccess();
    sub_220E819BC();
    v19 = &v13[v4[9]];
    swift_bridgeObjectRetain_n();

    *v19 = v18;
    *(v19 + 1) = v17;
    sub_220F319DC();
    sub_220E81FFC();
    v13[v4[12]] = 1;
    v13[v4[18]] = 0;
    sub_220E819BC();
    sub_220F3196C(v9);
    OUTLINED_FUNCTION_1_19();
    sub_220E81964(v13, v20);

    swift_bridgeObjectRelease_n();
  }

  OUTLINED_FUNCTION_22();
}

void WeatherMapViewController.didRequestGoToCurrentLocation(_:)()
{
  OUTLINED_FUNCTION_29_2();
  v1 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_4();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9, v10);
  v38 = v37 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v39 = v0;
  v40 = v37 - v14;
  v37[1] = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_store;
  v15 = *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_store) + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  v16 = *(v15 + 40);
  v17 = *(v16 + 16);
  v41 = v3 + 16;
  v42 = v17;

  for (i = 0; v42 != i; ++i)
  {
    if (i >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_18;
    }

    v19 = v1;
    (*(v3 + 16))(v8, v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * i, v1);
    sub_220FC1030();
    v20 = sub_220FC0FB0();
    v22 = v21;
    if (v20 == sub_220FC0FB0() && v22 == v23)
    {

LABEL_15:

      v32 = *(v3 + 32);
      v33 = v38;
      v32(v38, v8, v1);
      v34 = v40;
      v32(v40, v33, v19);

      v35 = sub_220FC1020();
      MEMORY[0x28223BE20](v35, v36);
      OUTLINED_FUNCTION_19_3();
      sub_220F32B5C(sub_220E81A10);

      (*(v3 + 8))(v34, v19);
      goto LABEL_16;
    }

    v25 = sub_220FC3940();

    if (v25)
    {
      goto LABEL_15;
    }

    (*(v3 + 8))(v8, v1);
  }

  if (qword_2812C5EC8 == -1)
  {
    goto LABEL_11;
  }

LABEL_18:
  OUTLINED_FUNCTION_16();
LABEL_11:
  v26 = sub_220FC17A0();
  __swift_project_value_buffer(v26, qword_2812C5ED0);
  v27 = sub_220FC1780();
  v28 = sub_220FC2E10();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    OUTLINED_FUNCTION_35_3(&dword_220E15000, v30, v31, "Client requested navigating to current location without providing a Location with kind == current");
    MEMORY[0x223D9DDF0](v29, -1, -1);
  }

LABEL_16:
  OUTLINED_FUNCTION_22();
}

uint64_t WeatherMapViewController.didRequestCurrentZoomLevel(_:)()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_220EF8494();
  [v4 _zoomLevel];
  v6 = v5;

  return v6;
}

unint64_t sub_220E818E0()
{
  result = qword_2812C5E98;
  if (!qword_2812C5E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CF9D580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5E98);
  }

  return result;
}

uint64_t sub_220E81964(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220E819BC()
{
  v1 = OUTLINED_FUNCTION_15_0();
  v2(v1);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_9();
  v4(v3);
  return v0;
}

uint64_t sub_220E81A20(uint64_t a1)
{
  v2 = sub_220FC1BA0();
  v4 = MEMORY[0x28223BE20](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_220FC1C40();
}

uint64_t sub_220E81B10()
{
  sub_220E81B68();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_220E81B68()
{
  if (!qword_2812CA090)
  {
    v0 = sub_220FC1070();
    if (!v1)
    {
      atomic_store(v0, &qword_2812CA090);
    }
  }
}

void sub_220E81BD8()
{
  type metadata accessor for WeatherMapStore.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_220E81D28();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_220E81D28()
{
  if (!qword_2812C7810)
  {
    type metadata accessor for WeatherMapStore.ViewModel(255);
    v0 = sub_220FC33A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C7810);
    }
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_220E81DA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E81EE4()
{
  v1 = OUTLINED_FUNCTION_15_0();
  v2(v1);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_9();
  v4(v3);
  return v0;
}

id sub_220E81F38()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(v0 + 16) setAlpha_];
}

uint64_t objectdestroy_76Tm()
{

  v1 = OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E81FFC()
{
  v1 = OUTLINED_FUNCTION_15_0();
  v2(v1);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_9();
  v4(v3);
  return v0;
}

unint64_t sub_220E82050()
{
  result = qword_27CF9D6C0;
  if (!qword_27CF9D6C0)
  {
    type metadata accessor for WeatherMapStore.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9D6C0);
  }

  return result;
}

uint64_t sub_220E820A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E82118(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E82188()
{
  v1 = OUTLINED_FUNCTION_15_0();
  v2(v1);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_9();
  v4(v3);
  return v0;
}

uint64_t sub_220E821DC@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for WeatherMapStore.ViewModel(0);
  OUTLINED_FUNCTION_8_0(v3);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_220E7CFA4(v5, a1);
}

unint64_t sub_220E82260()
{
  result = qword_2812C5FC8;
  if (!qword_2812C5FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5FC8);
  }

  return result;
}

unint64_t sub_220E822BC()
{
  result = qword_27CF9D710;
  if (!qword_27CF9D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9D710);
  }

  return result;
}

uint64_t sub_220E82330(void *a1)
{
  v2 = type metadata accessor for WeatherMapStore.ViewModel(0);
  OUTLINED_FUNCTION_8_0(v2);

  return sub_220E7D424(a1);
}

uint64_t OUTLINED_FUNCTION_6_8()
{

  return sub_220E81964(v0, type metadata accessor for WeatherMap.LocationAction);
}

uint64_t OUTLINED_FUNCTION_27_3()
{

  return __swift_getEnumTagSinglePayload(v0 + v2, 2, v1);
}

uint64_t OUTLINED_FUNCTION_28_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_34_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

void OUTLINED_FUNCTION_35_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_220E8256C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v76 = a4;
  v11 = sub_220FC10C0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5;
  sub_220FC2600();
  v17 = type metadata accessor for OverlayImmutableTileResourceProvider();
  swift_allocObject();
  v18 = OUTLINED_FUNCTION_0_21();
  v25 = sub_220FAD800(v19, v20, v21, v22, v23, v24, v18);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v73 = v17;
    v75 = v25;
    type metadata accessor for WeatherMapOverlayCoverageDataSource();
    sub_220FBA07C(a1, a2, a3);
    v74 = *(v27 + 24);
    v28 = OUTLINED_FUNCTION_1_20();
    v32 = sub_220FBAC28(v28, v29, v30, v31);
    v34 = v33;
    v35 = OUTLINED_FUNCTION_1_20();
    sub_220FBAB10(v35, v36, v37, v38);
    if (v39)
    {
      v71 = a1;
      v72 = a2;
      v40 = OBJC_IVAR____TtC11WeatherMaps11HashOverlay_tileSize;
      v41 = sub_220E82D34(*(v6 + OBJC_IVAR____TtC11WeatherMaps11HashOverlay_tileSize), *(v6 + OBJC_IVAR____TtC11WeatherMaps11HashOverlay_tileSize), 1.0);
      v42 = [objc_opt_self() whiteColor];
      v70 = a3;
      v43 = v42;
      sub_220FBA0BC(a3);
      v45 = v44;
      CGContextTranslateCTM(v41, -(v32 * v44), -(v34 * v44));
      CGContextScaleCTM(v41, v45, v45);
      v46 = [v43 CGColor];
      CGContextSetFillColorWithColor(v41, v46);

      v47 = v74;
      CGContextAddPath(v41, v74);
      (*(v12 + 104))(v15, *MEMORY[0x277CBF250], v11);
      sub_220FC2DC0();
      (*(v12 + 8))(v15, v11);
      Data = CGBitmapContextGetData(v41);
      if (Data)
      {
        v49 = Data;
        v69 = v43;
        v50 = [objc_opt_self() texture2DDescriptorWithPixelFormat:253 width:*(v6 + v40) height:*(v6 + v40) mipmapped:0];
        [v50 setSampleCount_];
        [v50 setTextureType_];
        [v50 setUsage_];
        v51 = [*(v6 + OBJC_IVAR____TtC11WeatherMaps11HashOverlay_device) newTextureWithDescriptor_];
        if (v51)
        {
          v52 = v51;
          MTLRegionMake2D(*(v6 + v40), *(v6 + v40), &v77);
          v53 = v79;
          v54 = v80;
          v68 = v77;
          v67 = v78;
          BytesPerRow = CGBitmapContextGetBytesPerRow(v41);
          v78 = v67;
          v77 = v68;
          v79 = v53;
          v80 = v54;
          [v52 replaceRegion:&v77 mipmapLevel:0 withBytes:v49 bytesPerRow:BytesPerRow];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D7B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_220FC8E30;
          *(inited + 32) = v76;
          *(inited + 40) = v52;
          *(inited + 80) = 1;
          swift_unknownObjectRetain();
          v57 = sub_220FC2600();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          OUTLINED_FUNCTION_2_14();
          v58 = v71;
          v59 = v72;
          v60 = v70;
          v61 = v16;
          v62 = 0;
          v63 = 4;
          v64 = v57;
          return sub_220FAD800(v58, v59, v60, v62, v63, v64, v61);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      return v75;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D7B0);
    v65 = swift_initStackObject();
    *(v65 + 16) = xmmword_220FC8E30;
    *(v65 + 32) = v76;
    *(v65 + 40) = 1065353216;
    *(v65 + 80) = 0;
    sub_220FC2600();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_2_14();
    v61 = OUTLINED_FUNCTION_0_21();
    return sub_220FAD800(v58, v59, v60, v62, v63, v64, v61);
  }

  return v25;
}

id sub_220E82B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  v32 = a8;
  v30 = a6;
  v31 = a5;
  v29 = a2;
  v28 = a9;
  v16 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a10;
  v27 = *(a10 + 8);
  HIDWORD(v26) = *(a10 + 16);
  *(v11 + OBJC_IVAR____TtC11WeatherMaps11HashOverlay_dataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + OBJC_IVAR____TtC11WeatherMaps11HashOverlay_tileSize) = a11;
  ObjectType = swift_getObjectType();
  (*(a4 + 24))(v36, ObjectType, a4);
  v22 = v37;
  v23 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  (*(v23 + 8))(v33, v22, v23);
  *(v11 + OBJC_IVAR____TtC11WeatherMaps11HashOverlay_device) = *(*__swift_project_boxed_opaque_existential_1(v33, v35) + 16);
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_0(v33);
  __swift_destroy_boxed_opaque_existential_0(v36);
  sub_220E1E2A8(a1, v36);
  sub_220E5ADF8(a7, v19);
  v33[0] = v20;
  v33[1] = v27;
  v34 = BYTE4(v26);
  v24 = sub_220F5F75C(v36, v29, a3, a4, v31, v30 & 0xFFFFFFFFFFLL, v19, v32, v28, v33);
  sub_220E83244(a7);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v24;
}

CGColorSpace *sub_220E82D34(double a1, double a2, CGFloat a3)
{
  result = CGColorSpaceCreateDeviceRGB();
  v7 = a1 * a3;
  if (a1 * a3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = a2 * a3;
  if (COERCE__INT64(fabs(a1 * a3)) > 0x7FEFFFFFFFFFFFFFLL || (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = CGBitmapContextCreate(0, v7, v8, 8uLL, 0, result, 1u);
  if (result)
  {
    v10 = result;
    CGContextTranslateCTM(result, 0.0, v8);
    CGContextScaleCTM(v10, a3, -a3);

    return v10;
  }

LABEL_14:
  __break(1u);
  return result;
}

void sub_220E82E40(uint64_t a1, uint64_t a2, unint64_t a3, double a4, uint64_t a5, void (**a6)(void, void, void, double))
{
  v11 = a4;
  v20[0] = a1;
  v20[1] = a2;
  v20[2] = a3;
  v21 = v11;
  v22 = xmmword_220FCB130;
  type metadata accessor for OverlayTileViewportManager();
  v12 = sub_220F5FF20();
  v13 = sub_220F0D01C(v20, v12);

  if (*(v13 + 16))
  {
    v14 = *(v13 + 32);

    v15 = sub_220E8256C(a1, a2, a3, v14, a4);
    v16 = sub_220FAD89C(v14, v19);
    if (v19[40] == 255)
    {
      a6[2](a6, 0, 0, v16);
      swift_unknownObjectRelease();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D7C0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_220FC8E30;
      *(v17 + 32) = v15;
      *(v17 + 40) = &off_2834886B0;
      objc_allocWithZone(type metadata accessor for OverlayTile());
      swift_unknownObjectRetain();
      v18 = sub_220E5E748(a1, a2, a3, v17, v11);
      (a6[2])(a6, v18, 0);
      swift_unknownObjectRelease();
    }

    sub_220E832A0(v19);
    _Block_release(a6);
  }

  else
  {

    (a6[2])(a6, 0, 0);

    _Block_release(a6);
  }
}

uint64_t sub_220E83108()
{
  swift_unknownObjectRelease();
  v1 = v0 + OBJC_IVAR____TtC11WeatherMaps11HashOverlay_dataSource;

  return sub_220E22990(v1);
}

uint64_t type metadata accessor for HashOverlay()
{
  result = qword_27CF9D7A0;
  if (!qword_27CF9D7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220E83244(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220E832A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220E8331C()
{
  memcpy(v0 + 2, (v0[25] + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_overlay + 16), 0xB8uLL);
  if (sub_220E435CC((v0 + 2)) == 1 && (v1 = v0[25], v2 = sub_220E4E5DC((v0 + 2)), v3 = OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer_dataSource, v0[26] = OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer_dataSource, !*(v1 + v3)))
  {
    v6 = *(v2 + 168);
    v7 = *(v2 + 176);
    __swift_project_boxed_opaque_existential_1((v0[25] + OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer_coverageManager), *(v0[25] + OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer_coverageManager + 24));
    v8 = swift_task_alloc();
    v0[27] = v8;
    *v8 = v0;
    v8[1] = sub_220E83460;

    return sub_220EF0338(v6, v7);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_220E83460(uint64_t a1)
{
  *(*v1 + 224) = a1;

  return MEMORY[0x2822009F8](sub_220E83560, 0, 0);
}

uint64_t sub_220E83560()
{
  *(v0[25] + v0[26]) = v0[28];

  v1 = v0[1];

  return v1();
}

unsigned __int8 *sub_220E835CC(uint64_t *a1, void *a2, char a3)
{
  v4 = v3;
  v5 = *a1;
  v6 = *(v3 + *a1);
  v7 = v6;
  if (v6 == 1)
  {
    v7 = *(v4 + *a2);
    if (v7)
    {
      type metadata accessor for MapKitDynamicTileOverlay();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = v9;
        objc_allocWithZone(type metadata accessor for MapKitDynamicTileOverlayRenderer());
        swift_unknownObjectRetain();

        v7 = sub_220EB373C(v10, a3, v4, &off_283483E00);
        v11 = *(v4 + v5);
LABEL_7:
        *(v4 + v5) = v7;
        v12 = v7;
        sub_220E83E94(v11);
        goto LABEL_8;
      }

      v7 = 0;
    }

    v11 = 1;
    goto LABEL_7;
  }

LABEL_8:
  sub_220E83EA4(v6);
  return v7;
}

uint64_t sub_220E836C4()
{
  v0[2] = MEMORY[0x277D84F90];
  if (*(v0[3] + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay))
  {
    swift_getObjectType();
    v1 = swift_unknownObjectRetain();
    sub_220F133B8(v1, v0 + 2);
  }

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_220E837A4;

  return sub_220E83308();
}

uint64_t sub_220E837A4()
{

  return MEMORY[0x2822009F8](sub_220E838A0, 0, 0);
}

uint64_t sub_220E838A0()
{
  v1 = v0[3];
  if (*(v1 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_effectTileOverlay))
  {
    type metadata accessor for HashOverlay();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = &off_283488BF0;
      if (!*(v1 + OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer_dataSource))
      {
        v3 = 0;
      }

      *(v2 + OBJC_IVAR____TtC11WeatherMaps11HashOverlay_dataSource + 8) = v3;
      swift_unknownObjectWeakAssign();
      v4 = swift_unknownObjectRetain();
      MEMORY[0x223D9BEA0](v4);
      if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_220FC29C0();
      }

      sub_220FC29F0();
    }
  }

  v5 = v0[2];
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_220E839BC(void (*a1)(uint64_t))
{
  if (*(v1 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_effectTileOverlay))
  {
    v3 = swift_unknownObjectRetain();
    a1(v3);
    swift_unknownObjectRelease();
  }

  if (*(v1 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay))
  {
    v4 = swift_unknownObjectRetain();
    a1(v4);
    swift_unknownObjectRelease();
  }

  *(v1 + OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer_dataSource) = 0;
}

unsigned __int8 *sub_220E83A64(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay);
  if (v3)
  {
    v4 = v3 == a1;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (result = sub_220E835CC(&OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer____lazy_storage___dynamicTileWeatherOverlayRenderer, &OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay, 1)) == 0)
  {
    v6 = *(v1 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_effectTileOverlay);
    if (v6)
    {
      v7 = v6 == a1;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      return sub_220E835CC(&OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer____lazy_storage___dynamicTileEffectOverlayRenderer, &OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_effectTileOverlay, 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_220E83AF8(char a1)
{
  v2 = sub_220E835CC(&OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer____lazy_storage___dynamicTileWeatherOverlayRenderer, &OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay, 1);
  if (v2)
  {
    v2[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_isPlaying] = a1 & 1;
    v3 = v2;
    sub_220EB34BC();
  }
}

void sub_220E83B80()
{
  v0 = sub_220E835CC(&OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer____lazy_storage___dynamicTileWeatherOverlayRenderer, &OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay, 1);
  if (v0)
  {
    v0[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_isPlaying] = 1;
    v1 = v0;
    sub_220EB34BC();
  }
}

void sub_220E83C04(uint64_t a1, double a2)
{
  v4 = v2 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_animationPosition;
  if (*(v2 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_animationPosition) != a1 || *(v2 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_animationPosition + 8) != a2)
  {
    *v4 = a1;
    *(v4 + 8) = a2;
    v7 = sub_220E835CC(&OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer____lazy_storage___dynamicTileWeatherOverlayRenderer, &OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay, 1);
    if (v7)
    {
      v8 = &v7[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_animationPosition];
      *v8 = a1;
      *(v8 + 1) = a2;
      v9 = v7;
      sub_220EB4A40();
    }
  }
}

uint64_t sub_220E83CCC()
{
  sub_220E83E94(*(v0 + OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer____lazy_storage___dynamicTileWeatherOverlayRenderer));
  sub_220E83E94(*(v0 + OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer____lazy_storage___dynamicTileEffectOverlayRenderer));
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer_coverageManager);
}

uint64_t sub_220E83D2C()
{
  v0 = sub_220F11AA0();
  sub_220E83E94(*(v0 + OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer____lazy_storage___dynamicTileWeatherOverlayRenderer));
  sub_220E83E94(*(v0 + OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer____lazy_storage___dynamicTileEffectOverlayRenderer));
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer_coverageManager);

  return v0;
}

uint64_t sub_220E83D94()
{
  v0 = sub_220E83D2C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RadarWithHashMapOverlayContainer()
{
  result = qword_27CF9D7E8;
  if (!qword_27CF9D7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220E83E94(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_220E83EA4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t type metadata accessor for WeatherMapAnnotationViewModel()
{
  result = qword_2812C8CC0;
  if (!qword_2812C8CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_220E83F38()
{
  result = type metadata accessor for WeatherMapAnnotationBackground(319);
  if (v1 <= 0x3F)
  {
    result = sub_220E31740();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_220E84004(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_220E84044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_220E840B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_220E840F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_220E84160()
{
  result = qword_27CF9D7F8;
  if (!qword_27CF9D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9D7F8);
  }

  return result;
}

_BYTE *sub_220E841B4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220E84294()
{
  result = qword_27CF9D800;
  if (!qword_27CF9D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9D800);
  }

  return result;
}

void sub_220E84300()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps39WeatherMapSupplementaryOverlayContainer_overlayView;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps39WeatherMapSupplementaryOverlayContainer_overlayView);
  if (v2)
  {
    [v2 removeFromSuperview];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

id sub_220E84350(void *a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps39WeatherMapSupplementaryOverlayContainer_overlayView;
  [*&v1[OBJC_IVAR____TtC11WeatherMaps39WeatherMapSupplementaryOverlayContainer_overlayView] removeFromSuperview];
  v4 = *&v1[v3];
  *&v1[v3] = a1;

  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor_];

  [v1 addSubview_];

  return [v1 setNeedsLayout];
}

id sub_220E84418(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC11WeatherMaps39WeatherMapSupplementaryOverlayContainer_overlayView] = 0;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor_];

  return v12;
}

void sub_220E84518()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps39WeatherMapSupplementaryOverlayContainer_overlayView) = 0;
  sub_220FC3740();
  __break(1u);
}

id sub_220E84598(uint64_t a1, double a2, double a3)
{
  v4 = *&v3[OBJC_IVAR____TtC11WeatherMaps39WeatherMapSupplementaryOverlayContainer_overlayView];
  if (!v4)
  {
    return 0;
  }

  v8 = v4;
  [v3 convertPoint:v8 toCoordinateSpace:{a2, a3}];
  v9 = [v8 hitTest:a1 withEvent:?];

  return v9;
}

void sub_220E846B4()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC11WeatherMaps39WeatherMapSupplementaryOverlayContainer_overlayView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    v4 = v3;
    v6 = v5;
    [v2 systemLayoutSizeFittingSize_];
    [v2 setFrame_];
  }
}

uint64_t get_enum_tag_for_layout_string_11WeatherMaps0A26MapOverlayMetadataInMemoryV8OverlaysV10AirQualityVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_11WeatherMaps0A26MapOverlayMetadataInMemoryV8OverlaysV18PrecipitationRadarVSg(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_220E84830(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 344))
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

uint64_t sub_220E84870(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 344) = 1;
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

    *(result + 344) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220E84930(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 336))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_220E84984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 336) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 336) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_220E84A3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_220E84A7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_220E84AE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_220E84B20(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_220E84B7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_220E84BBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220E84C20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_220E84C60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220E84CC0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_220E84D00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220E84D54()
{
  v0 = sub_220FC2700();
  v2 = v1;
  if (v0 == sub_220FC2700() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_13_5();
  }

  return v5 & 1;
}

uint64_t sub_220E84DD8()
{
  OUTLINED_FUNCTION_37_1();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x4D496D6F74737563;
    }

    if (v4 == 1)
    {
      v6 = 0x8000000220FDB3B0;
    }

    else
    {
      v6 = 0xE900000000000052;
    }
  }

  else
  {
    v5 = v3;
    v6 = v0;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_25_0();
    if (v8 == 1)
    {
      v3 = v9;
    }

    else
    {
      v3 = 0x4D496D6F74737563;
    }

    if (v8 == 1)
    {
      v0 = v7;
    }

    else
    {
      v0 = 0xE900000000000052;
    }
  }

  if (v5 == v3 && v6 == v0)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_31_2();
  }

  return v11 & 1;
}

uint64_t sub_220E84EB8(char a1, char a2)
{
  v3 = 0xD000000000000022;
  v4 = "n";
  v5 = "n";
  switch(a1)
  {
    case 1:
      v5 = "ibilityDescription";
      v3 = 0xD000000000000025;
      break;
    case 2:
      v5 = "essibilityDescription";
      v3 = 0xD000000000000023;
      break;
    case 3:
      v5 = "sibilityDescription";
      v3 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  v6 = 0xD000000000000022;
  switch(a2)
  {
    case 1:
      v4 = "ibilityDescription";
      v6 = 0xD000000000000025;
      break;
    case 2:
      v4 = "essibilityDescription";
      v6 = 0xD000000000000023;
      break;
    case 3:
      v4 = "sibilityDescription";
      v6 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_5();
  }

  return v8 & 1;
}

uint64_t sub_220E84FE0(char a1)
{
  if (a1)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  OUTLINED_FUNCTION_40_1();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_5();
  }

  return v8 & 1;
}

uint64_t sub_220E85060()
{
  OUTLINED_FUNCTION_37_1();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0x707553796C6C7566;
    }

    if (v4 == 1)
    {
      v6 = 0x8000000220FDB490;
    }

    else
    {
      v6 = 0xEE00646574726F70;
    }
  }

  else
  {
    v5 = v3;
    v6 = v0;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_25_0();
    if (v8 == 1)
    {
      v3 = v9;
    }

    else
    {
      v3 = 0x707553796C6C7566;
    }

    if (v8 == 1)
    {
      v0 = v7;
    }

    else
    {
      v0 = 0xEE00646574726F70;
    }
  }

  if (v5 == v3 && v6 == v0)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_31_2();
  }

  return v11 & 1;
}

uint64_t sub_220E85150(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_40_1();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_5();
  }

  return v8 & 1;
}

uint64_t sub_220E851D8()
{
  OUTLINED_FUNCTION_40_1();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_220FC3940();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_220E8523C(char a1, char a2)
{
  v2 = 0xEA00000000007375;
  v3 = 0x6F756E69746E6F63;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6574657263736964;
    }

    else
    {
      v4 = 0x6576697463616E69;
    }

    v5 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x6F756E69746E6F63;
    v5 = 0xEA00000000007375;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6574657263736964;
    }

    else
    {
      v3 = 0x6576697463616E69;
    }

    v2 = 0xE800000000000000;
  }

  if (v4 == v3 && v5 == v2)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_31_2();
  }

  return v7 & 1;
}

uint64_t sub_220E85330(unsigned __int8 a1, char a2)
{
  v2 = 5000257;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 5000257;
  switch(v4)
  {
    case 1:
      v3 = 0xE100000000000000;
      v5 = 67;
      break;
    case 2:
      v3 = 0xE100000000000000;
      v5 = 70;
      break;
    case 3:
      v3 = 0xE100000000000000;
      v5 = 75;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE100000000000000;
      v2 = 67;
      break;
    case 2:
      v6 = 0xE100000000000000;
      v2 = 70;
      break;
    case 3:
      v6 = 0xE100000000000000;
      v2 = 75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_5();
  }

  return v8 & 1;
}

uint64_t sub_220E85428(char a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x676E69646E6570;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6574656C706D6F63;
    }

    else
    {
      v4 = 0x656C6C65636E6163;
    }

    v5 = 0xE900000000000064;
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x676E69646E6570;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6574656C706D6F63;
    }

    else
    {
      v3 = 0x656C6C65636E6163;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  if (v4 == v3 && v5 == v2)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_31_2();
  }

  return v7 & 1;
}

uint64_t sub_220E85510(char a1)
{
  if (a1)
  {
    v1 = 0xEB00000000736574;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  OUTLINED_FUNCTION_40_1();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_5();
  }

  return v8 & 1;
}

uint64_t sub_220E855A0(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xEC0000006E6F6779;
  }

  OUTLINED_FUNCTION_40_1();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_5();
  }

  return v8 & 1;
}

uint64_t sub_220E85638(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x4554455243534944;
  }

  else
  {
    v3 = 0x4F554E49544E4F43;
  }

  if (v2)
  {
    v4 = 0xEA00000000005355;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x4554455243534944;
  }

  else
  {
    v5 = 0x4F554E49544E4F43;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA00000000005355;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_5();
  }

  return v8 & 1;
}

uint64_t sub_220E856D0()
{
  OUTLINED_FUNCTION_25_0();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x6C6172656E6567;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = v1;
  }

  if (v0)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0x6C6172656E6567;
  }

  if (v0)
  {
    v7 = v1;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_13_5();
  }

  return v9 & 1;
}

uint64_t sub_220E85764(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000079;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_40_1();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_5();
  }

  return v8 & 1;
}

uint64_t sub_220E857F8(unsigned __int8 a1, char a2)
{
  v2 = 0xED00006E6F697461;
  v3 = 0x7469706963657270;
  v4 = a1;
  v5 = 0x7469706963657270;
  v6 = 0xED00006E6F697461;
  switch(v4)
  {
    case 1:
      v5 = 0x696C617551726961;
      v6 = 0xEA00000000007974;
      break;
    case 2:
      v5 = 0x74617265706D6574;
      v6 = 0xEB00000000657275;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v5 = 1684957559;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x696C617551726961;
      v2 = 0xEA00000000007974;
      break;
    case 2:
      v3 = 0x74617265706D6574;
      v2 = 0xEB00000000657275;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v3 = 1684957559;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_31_2();
  }

  return v8 & 1;
}

uint64_t sub_220E8594C()
{
  OUTLINED_FUNCTION_25_0();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 0xD000000000000018;
  }

  else
  {
    v4 = 1701869940;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = v1;
  }

  if (v0)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v6 = 1701869940;
  }

  if (v0)
  {
    v7 = v1;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_13_5();
  }

  return v9 & 1;
}

uint64_t sub_220E859D8()
{
  OUTLINED_FUNCTION_25_0();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 0x694D7261656E696CLL;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (v3)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0xEC00000078614D6ELL;
  }

  if (v0)
  {
    v6 = 0x694D7261656E696CLL;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v0)
  {
    v7 = 0xEC00000078614D6ELL;
  }

  else
  {
    v7 = v1;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_13_5();
  }

  return v9 & 1;
}

uint64_t sub_220E85A74()
{
  sub_220FC0C00();
  sub_220E20470(&qword_2812CA0C0, MEMORY[0x277D7AA00]);
  sub_220FC2920();
  sub_220FC2920();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_220FC3940();
  }

  return v1 & 1;
}

void sub_220E85B54()
{
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_10_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v4);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v5, v6);
  v7 = OUTLINED_FUNCTION_6_9();
  sub_220E93294(v7, v8, &unk_27CF9EB90);
  v9 = sub_220FC2AE0();
  OUTLINED_FUNCTION_27_4(v9);
  if (&unk_220FC9CE0 == 1)
  {
    sub_220E3B2DC(v1, &unk_27CF9EB90);
  }

  else
  {
    sub_220FC2AD0();
    OUTLINED_FUNCTION_12();
    v10 = OUTLINED_FUNCTION_65();
    v11(v10);
  }

  v12 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (v12)
  {
    swift_getObjectType();
    sub_220FC2A30();
    OUTLINED_FUNCTION_56_1();
    if (v2)
    {
LABEL_6:
      sub_220FC2770();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D0B8);
      OUTLINED_FUNCTION_51_1();
      if (v13)
      {
        OUTLINED_FUNCTION_45_0();
      }

      OUTLINED_FUNCTION_33_1();

      sub_220E3B2DC(v3, &unk_27CF9EB90);

      goto LABEL_13;
    }
  }

  else if (v2)
  {
    goto LABEL_6;
  }

  sub_220E3B2DC(v3, &unk_27CF9EB90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D0B8);
  OUTLINED_FUNCTION_51_1();
  if (v14)
  {
    OUTLINED_FUNCTION_44_0();
  }

  OUTLINED_FUNCTION_33_1();
LABEL_13:
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_22();
}

void sub_220E85D5C()
{
  OUTLINED_FUNCTION_29_2();
  v5 = v4;
  OUTLINED_FUNCTION_10_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v6);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v7, v8);
  v9 = OUTLINED_FUNCTION_6_9();
  sub_220E93294(v9, v10, &unk_27CF9EB90);
  v11 = sub_220FC2AE0();
  v12 = OUTLINED_FUNCTION_49();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_220E3B2DC(v1, &unk_27CF9EB90);
  }

  else
  {
    sub_220FC2AD0();
    OUTLINED_FUNCTION_12();
    (*(v15 + 8))(v1, v11);
  }

  v16 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_220FC2A30();
    v19 = v18;
    swift_unknownObjectRelease();
    if (v2)
    {
LABEL_6:
      sub_220FC2770();
      v5(0);

      if (v19 | v17)
      {
        v21[0] = 0;
        v21[1] = 0;
        v20 = v21;
        v21[2] = v17;
        v21[3] = v19;
      }

      else
      {
        v20 = 0;
      }

      OUTLINED_FUNCTION_24_2(v20);
      swift_task_create();

      sub_220E3B2DC(v3, &unk_27CF9EB90);

      goto LABEL_14;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (v2)
    {
      goto LABEL_6;
    }
  }

  sub_220E3B2DC(v3, &unk_27CF9EB90);
  v5(0);
  if (v19 | v17)
  {
    v21[4] = 0;
    v21[5] = 0;
    v21[6] = v17;
    v21[7] = v19;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_22();
}

void sub_220E85FBC()
{
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_10_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v4);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v5, v6);
  v7 = OUTLINED_FUNCTION_6_9();
  sub_220E93294(v7, v8, &unk_27CF9EB90);
  v9 = sub_220FC2AE0();
  OUTLINED_FUNCTION_27_4(v9);
  if (&unk_220FC9CE0 == 1)
  {
    sub_220E3B2DC(v1, &unk_27CF9EB90);
  }

  else
  {
    sub_220FC2AD0();
    OUTLINED_FUNCTION_12();
    v10 = OUTLINED_FUNCTION_65();
    v11(v10);
  }

  v12 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (v12)
  {
    swift_getObjectType();
    sub_220FC2A30();
    OUTLINED_FUNCTION_56_1();
    if (v2)
    {
LABEL_6:
      sub_220FC2770();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9ED20);
      OUTLINED_FUNCTION_51_1();
      if (v13)
      {
        OUTLINED_FUNCTION_45_0();
      }

      OUTLINED_FUNCTION_33_1();

      sub_220E3B2DC(v3, &unk_27CF9EB90);

      goto LABEL_13;
    }
  }

  else if (v2)
  {
    goto LABEL_6;
  }

  sub_220E3B2DC(v3, &unk_27CF9EB90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9ED20);
  OUTLINED_FUNCTION_51_1();
  if (v14)
  {
    OUTLINED_FUNCTION_44_0();
  }

  OUTLINED_FUNCTION_33_1();
LABEL_13:
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_22();
}

void sub_220E861D4()
{
  OUTLINED_FUNCTION_29_2();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v6);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v7, v8);
  v10 = v21 - v9;
  sub_220E93294(v3, v21 - v9, &unk_27CF9EB90);
  v11 = sub_220FC2AE0();
  v12 = OUTLINED_FUNCTION_49();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_220E3B2DC(v10, &unk_27CF9EB90);
  }

  else
  {
    sub_220FC2AD0();
    OUTLINED_FUNCTION_12();
    (*(v15 + 8))(v10, v11);
  }

  v16 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_220FC2A30();
    v19 = v18;
    swift_unknownObjectRelease();
    if (v5)
    {
LABEL_6:
      v21[0] = v5;
      sub_220FC2770();

      if (v19 | v17)
      {
        v22[0] = 0;
        v22[1] = 0;
        v20 = v22;
        v22[2] = v17;
        v22[3] = v19;
      }

      else
      {
        v20 = 0;
      }

      OUTLINED_FUNCTION_24_2(v20);
      swift_task_create();

      sub_220E3B2DC(v3, &unk_27CF9EB90);

      goto LABEL_14;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_220E3B2DC(v3, &unk_27CF9EB90);
  if (v19 | v17)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v17;
    v22[7] = v19;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_22();
}

void sub_220E8644C()
{
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_10_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v4);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v5, v6);
  v7 = OUTLINED_FUNCTION_6_9();
  sub_220E93294(v7, v8, &unk_27CF9EB90);
  v9 = sub_220FC2AE0();
  OUTLINED_FUNCTION_27_4(v9);
  if (&unk_220FC9CE0 == 1)
  {
    sub_220E3B2DC(v1, &unk_27CF9EB90);
  }

  else
  {
    sub_220FC2AD0();
    OUTLINED_FUNCTION_12();
    v10 = OUTLINED_FUNCTION_65();
    v11(v10);
  }

  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = v13;
    sub_220FC2A30();
    OUTLINED_FUNCTION_56_1();
    if (v2)
    {
LABEL_6:
      sub_220FC2770();
      sub_220E1966C(0, &qword_2812C5CF0);

      if (v12 | v14)
      {
        OUTLINED_FUNCTION_45_0();
      }

      else
      {
        v15 = 0;
      }

      OUTLINED_FUNCTION_24_2(v15);
      swift_task_create();

      sub_220E3B2DC(v3, &unk_27CF9EB90);

      goto LABEL_14;
    }
  }

  else
  {
    v14 = 0;
    v12 = 0;
    if (v2)
    {
      goto LABEL_6;
    }
  }

  sub_220E3B2DC(v3, &unk_27CF9EB90);
  sub_220E1966C(0, &qword_2812C5CF0);
  OUTLINED_FUNCTION_51_1();
  if (v16)
  {
    OUTLINED_FUNCTION_44_0();
  }

  OUTLINED_FUNCTION_33_1();
LABEL_14:
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_220E86678()
{

  sub_220FC13E0();

  return v1;
}

uint64_t sub_220E866C0()
{

  sub_220FC13F0();
}

uint64_t sub_220E86778(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  swift_allocObject();
  *(v1 + 16) = sub_220FC13C0();
  return v1;
}

uint64_t sub_220E867C8()
{
  swift_beginAccess();

  sub_220FC13E0();

  return v1;
}

uint64_t sub_220E86820()
{
  swift_beginAccess();

  sub_220FC13E0();

  return v1;
}

uint64_t sub_220E86878()
{
  swift_beginAccess();

  sub_220FC13F0();
}

uint64_t sub_220E868D0()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF30);
  swift_allocObject();
  *(v0 + 16) = sub_220FC13C0();
  swift_endAccess();
  return v0;
}

uint64_t sub_220E86950()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D870);
  swift_allocObject();
  *(v0 + 16) = sub_220FC13C0();
  swift_endAccess();
  return v0;
}

uint64_t sub_220E869F0()
{
  sub_220E869D0();
  OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_220E86A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 104) = a8;
  *(v8 + 112) = v13;
  *(v8 + 65) = a7;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a1;
  *(v8 + 80) = a4;
  v9 = sub_220FC0620();
  *(v8 + 120) = v9;
  *(v8 + 128) = *(v9 - 8);
  *(v8 + 136) = swift_task_alloc();
  v10 = sub_220FC0660();
  *(v8 + 144) = v10;
  *(v8 + 152) = *(v10 - 8);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D818);
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220E86BEC, 0, 0);
}

uint64_t sub_220E86BEC()
{
  OUTLINED_FUNCTION_59_1();
  v36 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 65);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = (*(v0 + 80) + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_networkActivityProvider);
  v7 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  *&v34 = v5;
  *(&v34 + 1) = v4;
  v35 = v3;
  OUTLINED_FUNCTION_41_0();
  v8();
  v9 = OUTLINED_FUNCTION_63_0();
  sub_220E93294(v9, v10, v11);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_220E3B2DC(*(v0 + 176), &qword_27CF9D818);
  }

  else
  {
    (*(*(v0 + 152) + 32))(*(v0 + 168), *(v0 + 176), *(v0 + 144));
    if (qword_2812C5EF8 != -1)
    {
      swift_once();
    }

    v12 = sub_220FC17A0();
    __swift_project_value_buffer(v12, qword_2812C5F00);
    v13 = OUTLINED_FUNCTION_9();
    v14(v13);
    v15 = sub_220FC1780();
    v16 = sub_220FC2E30();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 128);
      v7 = *(v0 + 136);
      v33 = *(v0 + 120);
      v18 = swift_slowAlloc();
      *v18 = 134349056;
      sub_220FC0630();
      v19 = sub_220FC0610();
      (*(v17 + 8))(v7, v33);
      v20 = OUTLINED_FUNCTION_48_1();
      v7(v20);
      *(v18 + 4) = v19;
      _os_log_impl(&dword_220E15000, v15, v16, "Using network activity to track map metadata, label=%{public}ld.", v18, 0xCu);
      OUTLINED_FUNCTION_15();
    }

    else
    {
      v21 = OUTLINED_FUNCTION_48_1();
      v7(v21);
    }

    v22 = *(v0 + 168);
    v23 = *(v0 + 144);

    (v7)(v22, v23);
  }

  v24 = *(v0 + 184);
  v25 = *(v0 + 112);
  v26 = *(v0 + 65);
  *(v0 + 16) = *(v0 + 104);
  v27 = *(v0 + 80);
  *(v0 + 24) = v25;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 1;
  v34 = *(v0 + 88);
  v35 = v26;
  v28 = sub_220E871D0(v0 + 16, v27 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_source, &v34, MEMORY[0x277D84F90], v24);
  *(v0 + 192) = v28;
  v29 = swift_task_alloc();
  *(v0 + 200) = v29;
  *(v29 + 16) = v28;
  *(v29 + 24) = v27;
  v30 = swift_task_alloc();
  *(v0 + 208) = v30;
  type metadata accessor for WeatherMapOverlayServiceMetadataResponse(0);
  *v30 = v0;
  v30[1] = sub_220E86F64;
  OUTLINED_FUNCTION_68();

  return MEMORY[0x282200830]();
}

uint64_t sub_220E86F64()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220E8707C()
{
  OUTLINED_FUNCTION_76();
  sub_220E3B2DC(v0, &qword_27CF9D818);

  OUTLINED_FUNCTION_8_8();

  return v1();
}

uint64_t sub_220E87124()
{
  OUTLINED_FUNCTION_76();
  sub_220E3B2DC(v0, &qword_27CF9D818);

  OUTLINED_FUNCTION_32_0();

  return v1();
}

uint64_t sub_220E871D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v37 = a1;
  v38 = a4;
  v35 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D818);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v34 = &v31 - v8;
  v31 = sub_220FC0C00();
  v9 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v12;
  v13 = sub_220FC02E0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a3;
  v19 = *(a3 + 8);
  v20 = *(a3 + 16);
  sub_220FC02D0();
  sub_220FC02C0();
  (*(v14 + 8))(v17, v13);
  v21 = sub_220E8979C(8);
  v33 = MEMORY[0x223D9BD00](v21);
  v23 = v22;

  (*(v9 + 16))(v12, v35, v31);
  v40[0] = v18;
  v40[1] = v19;
  v41 = v20;
  v24 = v34;
  sub_220E93294(v36, v34, &qword_27CF9D818);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for WeatherMapOverlayServiceTask();
  swift_allocObject();

  v27 = v37;
  sub_220E92C30(v37, v39);
  sub_220E5AFB8(v18, v19, v20);
  v28 = v38;

  v29 = sub_220EE201C(v33, v23, v27, v32, v40, v28, v24, sub_220E92C0C, v25, sub_220E92C28, v26);
  sub_220EE1110();

  return v29;
}

uint64_t sub_220E87528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[51] = a1;
  v3[52] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  v3[53] = swift_task_alloc();
  v4 = sub_220FC02B0();
  v3[54] = v4;
  v3[55] = *(v4 - 8);
  v3[56] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[57] = v5;
  *v5 = v3;
  v5[1] = sub_220E87650;

  return sub_220EE0DF4();
}

uint64_t sub_220E87650()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_27_0();
  v5 = v4;
  OUTLINED_FUNCTION_17();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v5 + 464) = v3;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v5 + 472) = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
    *v11 = v7;
    v11[1] = sub_220E877F8;
    v13 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v5 + 376, v3, &type metadata for ServiceResponseData, v12, v13);
  }
}

uint64_t sub_220E877F8()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 480) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_220E87920()
{
  v19 = v0;
  v1 = v0[60];
  v2 = v0[47];
  sub_220FC2B50();
  if (v1)
  {

    v10 = OUTLINED_FUNCTION_61_1();
    sub_220E565AC(v10, v11);

    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    v3 = v0[53];
    sub_220FBFC40();
    swift_allocObject();
    sub_220FBFC30();
    sub_220E87C0C(v2, v3);
    if (OUTLINED_FUNCTION_77(v3) == 1)
    {
      v5 = v0[53];
      v4 = v0[54];
      sub_220FC02A0();
      OUTLINED_FUNCTION_64_1(v5, 1, v4);
      if (!v6)
      {
        sub_220E3B2DC(v0[53], &qword_27CF9EBC0);
      }
    }

    else
    {
      (*(v0[55] + 32))(v0[56], v0[53], v0[54]);
    }

    sub_220E92150();
    sub_220FBFC20();
    v8 = v0[55];
    v7 = v0[56];
    v9 = v0[54];
    v13 = v0[51];

    v14 = OUTLINED_FUNCTION_61_1();
    sub_220E565AC(v14, v15);
    memcpy(v18, v0 + 2, sizeof(v18));
    (*(v8 + 32))(v13, v7, v9);
    v16 = type metadata accessor for WeatherMapOverlayServiceMetadataResponse(0);
    memcpy((v13 + *(v16 + 20)), v18, 0x162uLL);

    OUTLINED_FUNCTION_8_8();
  }

  return v17();
}

uint64_t sub_220E87BA4()
{
  OUTLINED_FUNCTION_19();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

unsigned __int8 *sub_220E87C0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_220FC02B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_220FBFD40();
  v10 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v11);
  v13 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  v90 = v9;
  v16 = a1;
  v17 = sub_220FC26C0();
  v18 = [v15 valueForHTTPHeaderField_];

  if (!v18)
  {

LABEL_10:

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v5);
  }

  v88[0] = v6;
  v91 = v16;
  v92 = a2;
  v19 = sub_220FC2700();
  v21 = v20;

  v97 = v19;
  v98 = v21;
  v95 = 44;
  v96 = 0xE100000000000000;
  v93 = sub_220E921A4();
  v22 = sub_220FC33C0();

  v23 = *(v22 + 16);
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v89 = v5;
    v95 = MEMORY[0x277D84F90];
    sub_220F0B298(0, v23, 0);
    v25 = v95;
    v26 = (v10 + 8);
    v88[1] = v22;
    v27 = (v22 + 40);
    do
    {
      v28 = *v27;
      v97 = *(v27 - 1);
      v98 = v28;

      sub_220FBFD10();
      v29 = sub_220FC33D0();
      v31 = v30;
      (*v26)(v13, v94);

      v95 = v25;
      v2 = *(v25 + 16);
      v32 = *(v25 + 24);
      if (v2 >= v32 >> 1)
      {
        sub_220F0B298((v32 > 1), v2 + 1, 1);
        v25 = v95;
      }

      *(v25 + 16) = v2 + 1;
      v33 = v25 + 16 * v2;
      *(v33 + 32) = v29;
      *(v33 + 40) = v31;
      v27 += 2;
      --v23;
    }

    while (v23);

    v5 = v89;
    v24 = MEMORY[0x277D84F90];
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v35 = *(v25 + 16);
  if (v35)
  {
    v97 = v24;
    sub_220F0B298(0, v35, 0);
    v36 = v97;
    v2 = v25 + 40;
    do
    {
      v37 = sub_220FC2760();
      v39 = v38;
      v97 = v36;
      v13 = *(v36 + 16);
      v40 = *(v36 + 24);
      if (v13 >= v40 >> 1)
      {
        sub_220F0B298((v40 > 1), v13 + 1, 1);
        v36 = v97;
      }

      *(v36 + 16) = v13 + 1;
      v41 = v36 + 16 * v13;
      *(v41 + 32) = v37;
      *(v41 + 40) = v39;
      v2 += 16;
      --v35;
    }

    while (v35);
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  v42 = 0;
  v43 = *(v36 + 16);
  for (i = (v36 + 40); ; i += 2)
  {
    if (v43 == v42)
    {

      goto LABEL_106;
    }

    if (v42 >= *(v36 + 16))
    {
      __break(1u);
      goto LABEL_98;
    }

    v13 = *(i - 1);
    v2 = *i;

    if (sub_220FC2880())
    {
      break;
    }

    ++v42;
  }

  v97 = v13;
  v98 = v2;
  v95 = 61;
  v96 = 0xE100000000000000;
  v45 = sub_220FC33C0();
  if (v45[2] != 2)
  {

    if (qword_2812C5F20 != -1)
    {
      swift_once();
    }

    v58 = sub_220FC17A0();
    __swift_project_value_buffer(v58, qword_2812C5F28);

    v59 = sub_220FC1780();
    v60 = sub_220FC2E30();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v97 = v62;
      *v61 = 136446210;
      v63 = sub_220E20FF8(v13, v2, &v97);

      *(v61 + 4) = v63;
      v64 = "Unexpected max-age value. value=%{public}s";
      goto LABEL_103;
    }

    goto LABEL_104;
  }

  sub_220F22728(1uLL, 1, v45);
  v46 = v45[6];
  v47 = v45[7];

  v48 = HIBYTE(v47) & 0xF;
  v49 = v46 & 0xFFFFFFFFFFFFLL;
  if ((v47 & 0x2000000000000000) != 0)
  {
    v50 = HIBYTE(v47) & 0xF;
  }

  else
  {
    v50 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (!v50)
  {
LABEL_98:
    v53 = v5;

    goto LABEL_99;
  }

  v51 = v88[0];
  if ((v47 & 0x1000000000000000) != 0)
  {
    v53 = v5;
    v54 = sub_220E921F8(v46, v47, 10);
    v79 = v87;
    goto LABEL_94;
  }

  if ((v47 & 0x2000000000000000) != 0)
  {
    v97 = v46;
    v98 = v47 & 0xFFFFFFFFFFFFFFLL;
    if (v46 == 43)
    {
      if (!v48)
      {
        goto LABEL_113;
      }

      v53 = v5;
      if (--v48)
      {
        v54 = 0;
        v71 = &v97 + 1;
        while (1)
        {
          v72 = *v71 - 48;
          if (v72 > 9)
          {
            break;
          }

          v73 = 10 * v54;
          if ((v54 * 10) >> 64 != (10 * v54) >> 63)
          {
            break;
          }

          v54 = v73 + v72;
          if (__OFADD__(v73, v72))
          {
            break;
          }

          ++v71;
          if (!--v48)
          {
            goto LABEL_93;
          }
        }
      }
    }

    else if (v46 == 45)
    {
      if (!v48)
      {
        goto LABEL_111;
      }

      v53 = v5;
      if (--v48)
      {
        v54 = 0;
        v65 = &v97 + 1;
        while (1)
        {
          v66 = *v65 - 48;
          if (v66 > 9)
          {
            break;
          }

          v67 = 10 * v54;
          if ((v54 * 10) >> 64 != (10 * v54) >> 63)
          {
            break;
          }

          v54 = v67 - v66;
          if (__OFSUB__(v67, v66))
          {
            break;
          }

          ++v65;
          if (!--v48)
          {
            goto LABEL_93;
          }
        }
      }
    }

    else
    {
      v53 = v5;
      if (v48)
      {
        v54 = 0;
        v76 = &v97;
        while (1)
        {
          v77 = *v76 - 48;
          if (v77 > 9)
          {
            break;
          }

          v78 = 10 * v54;
          if ((v54 * 10) >> 64 != (10 * v54) >> 63)
          {
            break;
          }

          v54 = v78 + v77;
          if (__OFADD__(v78, v77))
          {
            break;
          }

          v76 = (v76 + 1);
          if (!--v48)
          {
            goto LABEL_93;
          }
        }
      }
    }

LABEL_92:
    v54 = 0;
    LOBYTE(v48) = 1;
    goto LABEL_93;
  }

  if ((v46 & 0x1000000000000000) != 0)
  {
    result = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_220FC3620();
  }

  v52 = *result;
  if (v52 == 43)
  {
    if (v49 < 1)
    {
      goto LABEL_112;
    }

    v53 = v5;
    v48 = v49 - 1;
    if (v49 == 1)
    {
      goto LABEL_92;
    }

    v54 = 0;
    if (!result)
    {
      goto LABEL_84;
    }

    v68 = result + 1;
    while (1)
    {
      v69 = *v68 - 48;
      if (v69 > 9)
      {
        goto LABEL_92;
      }

      v70 = 10 * v54;
      if ((v54 * 10) >> 64 != (10 * v54) >> 63)
      {
        goto LABEL_92;
      }

      v54 = v70 + v69;
      if (__OFADD__(v70, v69))
      {
        goto LABEL_92;
      }

      ++v68;
      if (!--v48)
      {
        goto LABEL_93;
      }
    }
  }

  if (v52 != 45)
  {
    v53 = v5;
    if (!v49)
    {
      goto LABEL_92;
    }

    v54 = 0;
    if (!result)
    {
      goto LABEL_84;
    }

    while (1)
    {
      v74 = *result - 48;
      if (v74 > 9)
      {
        goto LABEL_92;
      }

      v75 = 10 * v54;
      if ((v54 * 10) >> 64 != (10 * v54) >> 63)
      {
        goto LABEL_92;
      }

      v54 = v75 + v74;
      if (__OFADD__(v75, v74))
      {
        goto LABEL_92;
      }

      ++result;
      if (!--v49)
      {
        goto LABEL_84;
      }
    }
  }

  if (v49 >= 1)
  {
    v53 = v5;
    v48 = v49 - 1;
    if (v49 == 1)
    {
      goto LABEL_92;
    }

    v54 = 0;
    if (result)
    {
      v55 = result + 1;
      while (1)
      {
        v56 = *v55 - 48;
        if (v56 > 9)
        {
          goto LABEL_92;
        }

        v57 = 10 * v54;
        if ((v54 * 10) >> 64 != (10 * v54) >> 63)
        {
          goto LABEL_92;
        }

        v54 = v57 - v56;
        if (__OFSUB__(v57, v56))
        {
          goto LABEL_92;
        }

        ++v55;
        if (!--v48)
        {
          goto LABEL_93;
        }
      }
    }

LABEL_84:
    LOBYTE(v48) = 0;
LABEL_93:
    LOBYTE(v95) = v48;
    v79 = v48;
LABEL_94:

    if ((v79 & 1) == 0 && (v54 - 0x7FFFFFFFFFFFFFFFLL) >= 0x8000000000000002)
    {

      v80 = v90;
      sub_220FC02A0();
      v81 = v92;
      sub_220FC01C0();

      (*(v51 + 8))(v80, v53);
      v82 = v81;
      v83 = 0;
      v84 = v53;
      return __swift_storeEnumTagSinglePayload(v82, v83, 1, v84);
    }

LABEL_99:
    if (qword_2812C5F20 != -1)
    {
      swift_once();
    }

    v85 = sub_220FC17A0();
    __swift_project_value_buffer(v85, qword_2812C5F28);

    v59 = sub_220FC1780();
    v60 = sub_220FC2E30();

    v5 = v53;
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v97 = v62;
      *v61 = 136446210;
      v86 = sub_220E20FF8(v13, v2, &v97);

      *(v61 + 4) = v86;
      v64 = "Unconvertible max-age value. value=%{public}s";
LABEL_103:
      _os_log_impl(&dword_220E15000, v59, v60, v64, v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x223D9DDF0](v62, -1, -1);
      MEMORY[0x223D9DDF0](v61, -1, -1);
LABEL_105:

LABEL_106:
      v82 = v92;
      v83 = 1;
      v84 = v5;
      return __swift_storeEnumTagSinglePayload(v82, v83, 1, v84);
    }

LABEL_104:

    goto LABEL_105;
  }

  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
  return result;
}

void sub_220E886A8()
{
  OUTLINED_FUNCTION_29_2();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v8);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v9, v10);
  v11 = *v3;
  v12 = *(v3 + 8);
  LOBYTE(v3) = *(v3 + 16);
  sub_220FC2AE0();
  OUTLINED_FUNCTION_42();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v1;
  *(v17 + 40) = v11;
  *(v17 + 48) = v12;
  *(v17 + 56) = v3;
  *(v17 + 64) = v7;
  *(v17 + 72) = v5;

  sub_220E5AFB8(v11, v12, v3);

  sub_220E85D5C();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_220E887BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 104) = a8;
  *(v8 + 112) = v11;
  *(v8 + 65) = a7;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a1;
  *(v8 + 80) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D818);
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220E8886C, 0, 0);
}

uint64_t sub_220E8886C()
{
  OUTLINED_FUNCTION_59_1();
  v20 = v0;
  v1 = *(v0 + 120);
  v16 = *(v0 + 112);
  v2 = *(v0 + 65);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v5 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_networkActivityProvider + 24);
  v8 = *(v5 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_networkActivityProvider + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_networkActivityProvider), v7);
  v17 = v6;
  v18 = v4;
  v19 = v2;
  (*(v8 + 8))(&v17, v7, v8);
  *(v0 + 16) = v3;
  *(v0 + 24) = v16;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 2;
  v17 = v6;
  v18 = v4;
  v19 = v2;
  v9 = sub_220E871D0(v0 + 16, v5 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_source, &v17, MEMORY[0x277D84F90], v1);
  *(v0 + 128) = v9;
  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v5;
  v11 = swift_task_alloc();
  *(v0 + 144) = v11;
  type metadata accessor for WeatherMapOverlayServiceDataResponse(0);
  *v11 = v0;
  v11[1] = sub_220E88A1C;
  OUTLINED_FUNCTION_68();

  return MEMORY[0x282200830](v12, v13);
}

uint64_t sub_220E88A1C()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220E88B34()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 120);

  sub_220E3B2DC(v1, &qword_27CF9D818);

  OUTLINED_FUNCTION_8_8();

  return v2();
}

uint64_t sub_220E88BAC()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 120);

  sub_220E3B2DC(v1, &qword_27CF9D818);

  OUTLINED_FUNCTION_32_0();

  return v2();
}

uint64_t sub_220E88C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a1;
  v3[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  v3[8] = swift_task_alloc();
  v4 = sub_220FC02B0();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[12] = v5;
  *v5 = v3;
  v5[1] = sub_220E88D50;

  return sub_220EE0DF4();
}

uint64_t sub_220E88D50()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_27_0();
  v5 = v4;
  OUTLINED_FUNCTION_17();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v5 + 104) = v3;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v5 + 112) = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
    *v11 = v7;
    v11[1] = sub_220E88EF8;
    v13 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v5 + 16, v3, &type metadata for ServiceResponseData, v12, v13);
  }
}

uint64_t sub_220E88EF8()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_220E89020()
{
  OUTLINED_FUNCTION_38_0();
  v1 = v0[15];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  sub_220FC2B50();
  if (v1)
  {

    sub_220E565AC(v2, v4);

    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    v6 = v0[8];
    sub_220E87C0C(v3, v6);
    if (OUTLINED_FUNCTION_77(v6) == 1)
    {
      v8 = v0[8];
      v7 = v0[9];
      sub_220FC02A0();
      OUTLINED_FUNCTION_64_1(v8, 1, v7);
      if (!v9)
      {
        sub_220E3B2DC(v0[8], &qword_27CF9EBC0);
      }
    }

    else
    {
      (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
    }

    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    v13 = v0[6];
    sub_220E567FC(v2, v4);

    sub_220E565AC(v2, v4);
    v14 = type metadata accessor for WeatherMapOverlayServiceDataResponse(0);
    (*(v11 + 32))(v13 + *(v14 + 20), v10, v12);
    *v13 = v2;
    v13[1] = v4;

    OUTLINED_FUNCTION_8_8();
  }

  return v5();
}

uint64_t sub_220E891B8()
{
  OUTLINED_FUNCTION_19();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

void sub_220E89220()
{
  OUTLINED_FUNCTION_69_0();
  v1 = v0;
  v3 = v2;
  v32[0] = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D818);
  OUTLINED_FUNCTION_8_0(v15);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v16, v17);
  v19 = v32 - v18;
  v21 = *v3;
  v20 = v3[1];
  v22 = *(v3 + 16);
  if (v6 == 1)
  {
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = sub_220FC0C30();
    v24 = v25;
  }

  v37 = v14;
  v38 = v12;
  v39 = v10;
  v40 = v8;
  v41 = v23;
  v42 = v24;
  v43 = 0;
  v34 = v21;
  v35 = v20;
  v36 = v22;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_networkActivityProvider), *(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_networkActivityProvider + 24));
  v32[1] = v21;
  v32[2] = v20;
  v33 = v22;
  OUTLINED_FUNCTION_41_0();
  v27(v26);
  v28 = OUTLINED_FUNCTION_21_2();
  sub_220E871D0(v28, v29, v30, v31, v19);

  sub_220E3B2DC(v19, &qword_27CF9D818);
  OUTLINED_FUNCTION_67();
}

void sub_220E89398()
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_66(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D818);
  OUTLINED_FUNCTION_8_0(v6);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_38_1();
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_networkActivityProvider), *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_networkActivityProvider + 24));
  v9 = OUTLINED_FUNCTION_26_2();
  v10(v9);
  v11 = OUTLINED_FUNCTION_21_2();
  sub_220E871D0(v11, v12, v13, v14, v1);
  sub_220E3B2DC(v1, &qword_27CF9D818);
  OUTLINED_FUNCTION_67();
}

void sub_220E894AC()
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_66(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D818);
  OUTLINED_FUNCTION_8_0(v6);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_38_1();
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_networkActivityProvider), *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_networkActivityProvider + 24));
  v9 = OUTLINED_FUNCTION_26_2();
  v10(v9);
  v11 = OUTLINED_FUNCTION_21_2();
  sub_220E871D0(v11, v12, v13, v14, v1);
  sub_220E3B2DC(v1, &qword_27CF9D818);
  OUTLINED_FUNCTION_67();
}

void sub_220E895AC(char a1)
{
  if (sub_220FB66C8())
  {
    sub_220FB672C(a1 & 1);
    sub_220EE1068();
  }
}

uint64_t sub_220E89608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = a2;
  v6[4] = a3;

  sub_220F973C8(sub_220E91F50, v6);
}

uint64_t sub_220E896C0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *a1;
  v6 = *(a1 + 2);

  sub_220F97234(v11);

  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = v11[1];
  *(v7 + 32) = v11[0];
  *(v7 + 48) = v8;
  *(v7 + 64) = v12;
  *(v7 + 72) = v10;
  *(v7 + 88) = v6;

  sub_220FC15D0();
}

uint64_t sub_220E8979C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_220FC2800();
    v1 = sub_220FC28D0();

    return v1;
  }

  return result;
}

uint64_t sub_220E8985C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_220E89948();
    v1 = v0;
  }

  else
  {
    v1 = type metadata accessor for WeatherMapOverlayServiceError(0);
    sub_220E20470(qword_2812C8C10, type metadata accessor for WeatherMapOverlayServiceError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v1;
}

void sub_220E89948()
{
  OUTLINED_FUNCTION_29_2();
  v55 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D818);
  OUTLINED_FUNCTION_29(v3);
  v53 = v4;
  v54 = *(v5 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v43 - v8;
  v45 = &v43 - v8;
  v10 = sub_220FC0C00();
  v44 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v14 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v15);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v43 - v18;
  v20 = *(v2 + 24);
  v51 = *(v2 + 16);
  v52 = v19;
  v50 = v20;
  v21 = *(v2 + 48);
  v57 = *(v2 + 32);
  v58 = v21;
  v59 = *(v2 + 64);
  v60 = *(v2 + 80);
  v22 = OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_source;
  v23 = *(v2 + OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_purpose + 8);
  v49 = *(v2 + OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_purpose);
  v48 = v23;
  v46 = *(v2 + OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_options);
  v24 = OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_networkActivity;
  v47 = *(v2 + OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_purpose + 16);
  sub_220FC2AE0();
  OUTLINED_FUNCTION_42();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  (*(v11 + 16))(v14, v2 + v22, v10);
  sub_220E93294(v2 + v24, v9, &qword_27CF9D818);
  v29 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v30 = (v12 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 71) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
  v34 = (*(v53 + 80) + v33 + 17) & ~*(v53 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  (*(v11 + 32))(v35 + v29, v14, v44);
  *(v35 + v30) = v55;
  v36 = v35 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v36 + 48) = v60;
  v37 = v59;
  *(v36 + 16) = v58;
  *(v36 + 32) = v37;
  *v36 = v57;
  *(v35 + v31) = v46;
  v38 = (v35 + v32);
  v39 = v50;
  *v38 = v51;
  v38[1] = v39;
  v40 = v35 + v33;
  v41 = v49;
  v42 = v48;
  *v40 = v49;
  *(v40 + 8) = v42;
  LOBYTE(v14) = v47;
  *(v40 + 16) = v47;
  sub_220E93658(v45, v35 + v34, &qword_27CF9D818);

  sub_220E92C30(&v57, &v56);
  sub_220E5AFB8(v41, v42, v14);

  sub_220E861D4();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_220E89D04()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_220EE10C0();
  }

  return result;
}

uint64_t sub_220E89D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 584) = v21;
  *(v8 + 232) = v20;
  *(v8 + 240) = v22;
  *(v8 + 216) = v19;
  *(v8 + 200) = a7;
  *(v8 + 208) = a8;
  *(v8 + 184) = a5;
  *(v8 + 192) = a6;
  *(v8 + 168) = a1;
  *(v8 + 176) = a4;
  *(v8 + 585) = *(a6 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D828);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = type metadata accessor for WeatherMapOverlayServiceError(0);
  *(v8 + 264) = swift_task_alloc();
  v9 = sub_220FBFB90();
  *(v8 + 272) = v9;
  *(v8 + 280) = *(v9 - 8);
  *(v8 + 288) = swift_task_alloc();
  v10 = sub_220FBFC00();
  *(v8 + 296) = v10;
  *(v8 + 304) = *(v10 - 8);
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D288);
  *(v8 + 328) = swift_task_alloc();
  v11 = sub_220FC0090();
  *(v8 + 336) = v11;
  *(v8 + 344) = *(v11 - 8);
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  v12 = sub_220FBFD40();
  *(v8 + 368) = v12;
  *(v8 + 376) = *(v12 - 8);
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D830);
  *(v8 + 400) = swift_task_alloc();
  v13 = sub_220FBFDE0();
  *(v8 + 408) = v13;
  *(v8 + 416) = *(v13 - 8);
  *(v8 + 424) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D838);
  *(v8 + 432) = swift_task_alloc();
  v14 = sub_220FBFEA0();
  *(v8 + 440) = v14;
  *(v8 + 448) = *(v14 - 8);
  *(v8 + 456) = swift_task_alloc();
  v15 = sub_220FC0E70();
  *(v8 + 464) = v15;
  *(v8 + 472) = *(v15 - 8);
  *(v8 + 480) = swift_task_alloc();
  v16 = sub_220FC0CA0();
  *(v8 + 488) = v16;
  *(v8 + 496) = *(v16 - 8);
  *(v8 + 504) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220E8A228, 0, 0);
}

uint64_t sub_220E8A228()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v4 = *(v0 + 480);
  v3 = *(v0 + 488);
  v79 = *(v0 + 472);
  v82 = *(v0 + 464);
  v85 = *(v0 + 432);
  v88 = *(v0 + 440);
  v5 = *(v0 + 184);
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  OUTLINED_FUNCTION_63_0();
  sub_220FC0F40();
  sub_220FC0C90();
  v6 = *(v1 + 8);
  v6(v2, v3);
  sub_220E8B5A4();
  v76 = v7;
  v80 = *(v79 + 8);
  v80(v4, v82);
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  sub_220FC0F40();
  sub_220FC0C90();
  v6(v2, v3);
  sub_220E8B9A0();
  v80(v4, v82);
  OUTLINED_FUNCTION_64_1(v85, 1, v88);
  if (v8)
  {
    sub_220E3B2DC(*(v0 + 432), &qword_27CF9D838);
LABEL_13:
    OUTLINED_FUNCTION_0_24();
    sub_220E20470(v28, v29);
    OUTLINED_FUNCTION_53();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_24;
  }

  v9 = *(v0 + 200);
  v10 = *(v0 + 176);
  (*(*(v0 + 448) + 32))(*(v0 + 456), *(v0 + 432), *(v0 + 440));
  v11 = sub_220E64950(v10, v9);
  if (!v12)
  {
    (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  v16 = v13;
  *(v0 + 64) = v11;
  *(v0 + 72) = v12;
  *(v0 + 80) = 47;
  *(v0 + 88) = 0xE100000000000000;
  sub_220E92E7C();
  sub_220E92ED0();
  if (sub_220FC2660())
  {
    OUTLINED_FUNCTION_41_0();
    v20 = sub_220F2B804(v17, v18, v19);
    v14 = MEMORY[0x223D9BD00](v20);
    v15 = v21;

    MEMORY[0x223D993D0](0, 0xE000000000000000);
  }

  v22 = *(v0 + 585);
  *(v0 + 96) = sub_220FBFE70();
  *(v0 + 104) = v23;
  *(v0 + 112) = 47;
  *(v0 + 120) = 0xE100000000000000;
  sub_220E921A4();
  v24 = sub_220FC33C0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E30;
  *(inited + 32) = v14;
  *(inited + 40) = v15;
  sub_220F34C70(inited);
  *(v0 + 144) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D068);
  sub_220E56234();
  sub_220FC2670();

  v26 = OUTLINED_FUNCTION_65();
  MEMORY[0x223D993D0](v26);
  if (v22 <= 0xA && ((1 << v22) & 0x479) != 0)
  {
    v27 = *(v0 + 400);
    sub_220E8C034(v27);
    if (OUTLINED_FUNCTION_57_1(v27) != 1)
    {
      v31 = *(v0 + 416);
      v30 = *(v0 + 424);
      v32 = *(v0 + 408);
      (*(v31 + 32))(v30, *(v0 + 400), v32);
      sub_220FBFDF0();
      sub_220F34B88(v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D2C0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_220FC8E30;
      OUTLINED_FUNCTION_41_0();
      v34();
      sub_220F34B88(v33);
      sub_220FBFE00();
      (*(v31 + 8))(v30, v32);
      goto LABEL_15;
    }

    sub_220E3B2DC(*(v0 + 400), &qword_27CF9D830);
  }

  sub_220FBFDF0();
  sub_220F34B88(v16);
  sub_220FBFE00();
LABEL_15:
  v35 = *(v0 + 384);
  v36 = *(v0 + 368);
  v37 = *(v0 + 376);
  sub_220FBFD20();
  sub_220FBFD30();
  v38 = *(v37 + 8);
  *(v0 + 512) = v38;
  *(v0 + 520) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v35, v36);
  v40 = sub_220FBFE10();
  if (v39)
  {
    *(v0 + 128) = v40;
    *(v0 + 136) = v39;
    sub_220FC33F0();
  }

  v42 = *(v0 + 328);
  v41 = *(v0 + 336);
  OUTLINED_FUNCTION_63_0();
  sub_220FBFE20();
  sub_220FBFE40();
  OUTLINED_FUNCTION_64_1(v42, 1, v41);
  if (!v8)
  {
    v52 = *(v0 + 352);
    v53 = *(v0 + 360);
    v54 = v0;
    v55 = *(v0 + 344);
    v56 = *(v54 + 336);
    v57 = *(v54 + 200);
    (*(v55 + 32))(v53, *(v54 + 328), v56);
    (*(v55 + 16))(v52, v53, v56);
    sub_220FBFBD0();
    v58 = sub_220E8C0A8(v57);
    if (sub_220E656E4(v58 & 1))
    {
      sub_220FBFB70();
    }

    v59 = *(v54 + 320);
    (*(*(v54 + 280) + 104))(*(v54 + 288), *MEMORY[0x277D7AB88], *(v54 + 272));
    sub_220FBFBA0();
    v60 = OUTLINED_FUNCTION_63_0();
    v61(v60);
    sub_220FBFB50();
    sub_220E8C0E0(v59);
    if (v76)
    {
      sub_220FC2B50();
    }

    v64 = *(v54 + 312);
    v65 = *(v54 + 320);
    v66 = *(v54 + 296);
    v67 = *(v54 + 304);
    v89 = *(v54 + 240);
    v87 = *(v54 + 584);
    v68 = *(v54 + 224);
    v77 = *(v54 + 208);
    v78 = *(v54 + 232);
    v81 = *(v54 + 192);
    v84 = *(v54 + 216);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D840);
    OUTLINED_FUNCTION_2_3();
    swift_allocObject();
    v69 = sub_220E86778(&qword_27CF9D878);
    *(v54 + 528) = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D848);
    OUTLINED_FUNCTION_2_3();
    swift_allocObject();
    v70 = sub_220E868D0();
    *(v54 + 536) = v70;
    (*(v67 + 16))(v64, v65, v66);
    OUTLINED_FUNCTION_2_3();
    v71 = swift_allocObject();
    *(v54 + 544) = v71;
    swift_weakInit();
    v72 = swift_task_alloc();
    *(v54 + 552) = v72;
    *(v72 + 16) = v71;
    *(v72 + 24) = v64;
    *(v72 + 32) = v68;
    *(v72 + 40) = v78;
    *(v72 + 48) = v87;
    *(v72 + 56) = v77;
    *(v72 + 64) = v84;
    *(v72 + 72) = v69;
    *(v72 + 80) = v81;
    *(v72 + 88) = v76 & 1;
    *(v72 + 96) = v70;
    *(v72 + 104) = v89;
    v73 = swift_task_alloc();
    *(v54 + 560) = v73;
    *(v73 + 16) = v76 & 1;
    *(v73 + 24) = v69;
    *(v73 + 32) = v70;
    v74 = swift_task_alloc();
    *(v54 + 568) = v74;
    *v74 = v54;
    v74[1] = sub_220E8B060;
    v75 = *(v54 + 168);

    return MEMORY[0x282200830](v75, &unk_220FCBA88);
  }

  v43 = *(v0 + 448);
  v83 = *(v0 + 440);
  v86 = *(v0 + 456);
  v44 = *(v0 + 392);
  v45 = *(v0 + 368);
  v46 = *(v0 + 336);
  sub_220E3B2DC(*(v0 + 328), &qword_27CF9D288);
  OUTLINED_FUNCTION_0_24();
  sub_220E20470(v47, v48);
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_42();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v46);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v38(v44, v45);
  (*(v43 + 8))(v86, v83);
LABEL_24:
  OUTLINED_FUNCTION_49_1();

  OUTLINED_FUNCTION_32_0();

  return v62();
}

uint64_t sub_220E8B060()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 576) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_220E8B1C8()
{
  v1 = v0[56];
  v16 = v0[57];
  v14 = v0[64];
  v15 = v0[55];
  v13 = v0[49];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[43];
  v5 = v0[42];
  v6 = v0[40];
  v7 = v0[37];
  v8 = v0[38];

  v9 = *(v8 + 8);
  v9(v6, v7);
  (*(v4 + 8))(v2, v5);
  v14(v13, v3);
  (*(v1 + 8))(v16, v15);
  v10 = OUTLINED_FUNCTION_61_1();
  (v9)(v10);

  OUTLINED_FUNCTION_8_8();

  return v11();
}

uint64_t sub_220E8B3BC()
{
  v13 = v0[64];
  v1 = v0[56];
  v16 = v0[57];
  v12 = v0[49];
  v3 = v0[45];
  v2 = v0[46];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[40];
  v14 = v0[55];
  v15 = v0[39];
  v7 = v0[37];
  v8 = v0[38];

  v9 = *(v8 + 8);
  v9(v6, v7);
  (*(v4 + 8))(v3, v5);
  v13(v12, v2);
  (*(v1 + 8))(v16, v14);

  v9(v15, v7);
  OUTLINED_FUNCTION_49_1();

  OUTLINED_FUNCTION_32_0();

  return v10();
}

void sub_220E8B5A4()
{
  OUTLINED_FUNCTION_29_2();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D888);
  OUTLINED_FUNCTION_8_0(v4);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v41[-v7];
  v9 = sub_220FC0D90();
  OUTLINED_FUNCTION_6();
  v11 = v10;
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = sub_220FC0C00();
  OUTLINED_FUNCTION_6();
  v19 = v18;
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_4();
  v24 = v22 - v23;
  v27 = MEMORY[0x28223BE20](v25, v26);
  v29 = &v41[-v28];
  (*(v19 + 16))(&v41[-v28], v1, v17, v27);
  v30 = (*(v19 + 88))(v29, v17);
  if (v30 == *MEMORY[0x277D7A9D8])
  {
    sub_220FC0BF0();
    sub_220E8B5A4(v3);
    (*(v19 + 8))(v24, v17);
  }

  else
  {
    v31 = v30 == *MEMORY[0x277D7A9E8] || v30 == *MEMORY[0x277D7A9F8];
    if (v31 || v30 == *MEMORY[0x277D7A9E0] || v30 == *MEMORY[0x277D7A9C0] || v30 == *MEMORY[0x277D7A9D0])
    {
      v35 = sub_220FC0E60();
      MEMORY[0x28223BE20](v35, v36);
      *&v41[-16] = v1;
      sub_220EDBB24();

      OUTLINED_FUNCTION_64_1(v8, 1, v9);
      if (v31)
      {
        sub_220E3B2DC(v8, &qword_27CF9D888);
      }

      else
      {
        (*(v11 + 32))(v16, v8, v9);
        sub_220FC0D60();
        (*(v11 + 8))(v16, v9);
      }
    }

    else if (v30 != *MEMORY[0x277D7A9F0])
    {
      if (qword_2812C5F20 != -1)
      {
        OUTLINED_FUNCTION_2_15();
      }

      v37 = sub_220FC17A0();
      __swift_project_value_buffer(v37, qword_2812C5F28);
      v38 = sub_220FC1780();
      v39 = sub_220FC2E10();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_220E15000, v38, v39, "Unexpected WeatherMapOverlayServiceSource case for supportsCancellation", v40, 2u);
        OUTLINED_FUNCTION_15();
      }

      (*(v19 + 8))(v29, v17);
    }
  }

  OUTLINED_FUNCTION_22();
}

void sub_220E8B9A0()
{
  OUTLINED_FUNCTION_29_2();
  v1 = v0;
  v3 = v2;
  v76 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D288);
  OUTLINED_FUNCTION_8_0(v5);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v6, v7);
  v74 = &v70 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D838);
  OUTLINED_FUNCTION_8_0(v9);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v10, v11);
  v71 = &v70 - v12;
  v13 = sub_220FC0090();
  OUTLINED_FUNCTION_6();
  v75 = v14;
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_3();
  v73 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D888);
  OUTLINED_FUNCTION_8_0(v19);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v70 - v22;
  v24 = sub_220FC0D90();
  OUTLINED_FUNCTION_6();
  v72 = v25;
  MEMORY[0x28223BE20](v26, v27);
  OUTLINED_FUNCTION_3();
  v30 = v29 - v28;
  v31 = sub_220FC0C00();
  OUTLINED_FUNCTION_6();
  v33 = v32;
  MEMORY[0x28223BE20](v34, v35);
  OUTLINED_FUNCTION_4();
  v38 = v36 - v37;
  v41 = MEMORY[0x28223BE20](v39, v40);
  v43 = &v70 - v42;
  (*(v33 + 16))(&v70 - v42, v1, v31, v41);
  v44 = (*(v33 + 88))(v43, v31);
  if (v44 == *MEMORY[0x277D7A9D8])
  {
    sub_220FC0BF0();
    sub_220E8B9A0(v3);
    (*(v33 + 8))(v38, v31);
LABEL_3:
    OUTLINED_FUNCTION_22();
    return;
  }

  v45 = v44 == *MEMORY[0x277D7A9E8] || v44 == *MEMORY[0x277D7A9F8];
  if (v45 || v44 == *MEMORY[0x277D7A9E0] || v44 == *MEMORY[0x277D7A9C0] || v44 == *MEMORY[0x277D7A9D0])
  {
    v49 = v13;
    v50 = sub_220FC0E60();
    MEMORY[0x28223BE20](v50, v51);
    *(&v70 - 2) = v1;
    sub_220EDBB24();

    OUTLINED_FUNCTION_64_1(v23, 1, v24);
    if (v45)
    {
      sub_220E3B2DC(v23, &qword_27CF9D888);
      sub_220FBFEA0();
      OUTLINED_FUNCTION_42();
      __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
    }

    else
    {
      v60 = v72;
      (*(v72 + 32))(v30, v23, v24);
      v61 = v73;
      sub_220FC0D70();
      sub_220FBFE30();
      (*(v75 + 8))(v61, v49);
      (*(v60 + 8))(v30, v24);
    }

    goto LABEL_3;
  }

  if (v44 != *MEMORY[0x277D7A9F0])
  {
    if (qword_2812C5F20 != -1)
    {
      OUTLINED_FUNCTION_2_15();
    }

    v62 = sub_220FC17A0();
    __swift_project_value_buffer(v62, qword_2812C5F28);
    v63 = sub_220FC1780();
    v64 = sub_220FC2E10();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_220E15000, v63, v64, "Unexpected WeatherMapOverlayServiceSource case for urlComponents", v65, 2u);
      OUTLINED_FUNCTION_15();
    }

    sub_220FBFEA0();
    OUTLINED_FUNCTION_42();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
    (*(v33 + 8))(v43, v31);
    goto LABEL_3;
  }

  sub_220FC0AB0();
  sub_220FC0A90();
  sub_220FC09A0();
  sub_220FC0A80();

  sub_220FC0A90();
  sub_220FC09B0();
  sub_220FC0A80();

  v56 = v74;
  OUTLINED_FUNCTION_60_1();
  sub_220FC0080();
  OUTLINED_FUNCTION_64_1(v56, 1, v13);
  if (!v45)
  {

    v57 = v71;
    sub_220FBFE30();
    (*(v75 + 8))(v56, v13);
    sub_220FBFEA0();
    v58 = OUTLINED_FUNCTION_77(v57);
    v59 = v76;
    if (!v58)
    {
      sub_220FBFE90();
    }

    if (!OUTLINED_FUNCTION_77(v57))
    {
      MEMORY[0x223D993D0](0x4F70616D2F31762FLL, 0xEE0079616C726576);
    }

    sub_220E93658(v57, v59, &qword_27CF9D838);
    goto LABEL_3;
  }

  __break(1u);
}

uint64_t sub_220E8C034@<X0>(uint64_t a1@<X8>)
{
  sub_220FBFDD0();
  v2 = sub_220FBFDE0();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

uint64_t sub_220E8C0A8(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 16;
    v4 = *v1;
    v1 += 16;
    if ((v4 & 1) == 0)
    {
      v5 = *(v3 - 6);
      return v5 & 1;
    }
  }

  LOBYTE(v5) = 1;
  return v5 & 1;
}

uint64_t sub_220E8C0E0(uint64_t a1)
{
  v112 = sub_220FBFB90();
  v127 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v2);
  v109 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_220FC15F0();
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110, v4);
  v130 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220FC02B0();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v118 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v103 = &v94 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D838);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v104 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v113 = &v94 - v17;
  v115 = sub_220FBFEA0();
  v107 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v18);
  v105 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v106 = &v94 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D880);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v94 - v25;
  v128 = sub_220FC0C00();
  v116 = *(v128 - 8);
  MEMORY[0x28223BE20](v128, v27);
  v114 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_220FC0CA0();
  v119 = *(v29 - 8);
  v120 = v29;
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_220FC0E70();
  v124 = *(v33 - 8);
  v125 = v33;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_220FC16B0();
  v122 = *(v37 - 8);
  v123 = v37;
  MEMORY[0x28223BE20](v37, v38);
  v117 = &v94 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v102 = &v94 - v42;
  MEMORY[0x28223BE20](v43, v44);
  v129 = &v94 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D288);
  MEMORY[0x28223BE20](v46 - 8, v47);
  v101 = &v94 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v50);
  v52 = &v94 - v51;
  v53 = sub_220FC0090();
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v55);
  v57 = &v94 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58, v59);
  v100 = &v94 - v60;
  MEMORY[0x28223BE20](v61, v62);
  v64 = &v94 - v63;
  sub_220FBFBE0();
  if (__swift_getEnumTagSinglePayload(v52, 1, v53) == 1)
  {
    sub_220E3B2DC(v52, &qword_27CF9D288);
    type metadata accessor for WeatherMapOverlayServiceError(0);
    sub_220E20470(qword_2812C8C10, type metadata accessor for WeatherMapOverlayServiceError);
    swift_allocError();
    __swift_storeEnumTagSinglePayload(v65, 1, 1, v53);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v111 = a1;
  v99 = v54;
  v67 = *(v54 + 32);
  v121 = v53;
  v96 = v54 + 32;
  v95 = v67;
  v67(v64, v52, v53);
  __swift_project_boxed_opaque_existential_1((v131 + 16), *(v131 + 40));
  sub_220FC0F40();
  sub_220FC0C90();
  (*(v119 + 8))(v32, v120);
  sub_220FC0BE0();
  v68 = v128;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v128);
  v98 = v36;
  v97 = v64;
  if (EnumTagSinglePayload == 1)
  {
    sub_220E3B2DC(v26, &qword_27CF9D880);
  }

  else
  {
    v70 = v116;
    v71 = v114;
    (*(v116 + 32))(v114, v26, v68);
    v72 = v113;
    sub_220FBFE30();
    v73 = v115;
    if (__swift_getEnumTagSinglePayload(v72, 1, v115) == 1)
    {
      (*(v70 + 8))(v71, v68);
    }

    else
    {
      v74 = v71;
      v75 = v107;
      v76 = v106;
      v120 = *(v107 + 32);
      v120(v106, v72, v73);
      v72 = v104;
      sub_220E8B9A0();
      if (__swift_getEnumTagSinglePayload(v72, 1, v73) != 1)
      {
        v120(v105, v72, v73);
        v87 = sub_220FBFE50();
        MEMORY[0x223D993B0](v87);
        sub_220FC02A0();
        v88 = v101;
        sub_220FBFE40();
        v89 = v121;
        v90 = v76;
        if (__swift_getEnumTagSinglePayload(v88, 1, v121) == 1)
        {
          (*(v99 + 16))(v100, v64, v89);
          v91 = __swift_getEnumTagSinglePayload(v88, 1, v89);
          v79 = v127;
          v81 = v123;
          if (v91 != 1)
          {
            sub_220E3B2DC(v88, &qword_27CF9D288);
          }
        }

        else
        {
          v95(v100, v88, v89);
          v79 = v127;
          v81 = v123;
        }

        sub_220FBFB40();
        v78 = v102;
        sub_220FC16A0();
        v92 = *(v107 + 8);
        v93 = v115;
        v92(v105, v115);
        v92(v90, v93);
        (*(v116 + 8))(v114, v128);
        v80 = v122;
        v77 = v99;
        goto LABEL_11;
      }

      (*(v75 + 8))(v76, v73);
      (*(v116 + 8))(v74, v128);
    }

    sub_220E3B2DC(v72, &qword_27CF9D838);
  }

  sub_220FC02A0();
  v77 = v99;
  (*(v99 + 16))(v57, v64, v121);
  sub_220FBFB40();
  v78 = v117;
  sub_220FC16A0();
  v79 = v127;
  v80 = v122;
  v81 = v123;
LABEL_11:
  v82 = v129;
  (*(v80 + 32))(v129, v78, v81);
  v83 = v126;
  sub_220FC1630();
  if (v83)
  {
    type metadata accessor for WeatherMapOverlayServiceError(0);
    sub_220E20470(qword_2812C8C10, type metadata accessor for WeatherMapOverlayServiceError);
    swift_allocError();
    *v84 = v83;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v124 + 8))(v98, v125);
    (*(v80 + 8))(v82, v81);
    return (*(v77 + 8))(v97, v121);
  }

  else
  {
    sub_220FC15E0();
    v85 = v109;
    v86 = v112;
    (*(v79 + 104))(v109, *MEMORY[0x277D7AB80], v112);
    sub_220FBFBA0();

    (*(v79 + 8))(v85, v86);
    (*(v108 + 8))(v130, v110);
    (*(v124 + 8))(v98, v125);
    (*(v80 + 8))(v129, v81);
    return (*(v77 + 8))(v97, v121);
  }
}

uint64_t sub_220E8CE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v12;
  *(v8 + 120) = v13;
  *(v8 + 169) = v11;
  *(v8 + 96) = v10;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 168) = a6;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *(v8 + 40) = a1;
  return MEMORY[0x2822009F8](sub_220E8CEE4, 0, 0);
}

uint64_t sub_220E8CEE4()
{
  OUTLINED_FUNCTION_59_1();
  v1 = *(v0 + 169);
  v2 = *(v0 + 104);
  v3 = *(v0 + 168);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v13 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D850);
  OUTLINED_FUNCTION_2_3();
  swift_allocObject();
  v11 = *(v0 + 88);
  v12 = *(v0 + 112);
  v6 = sub_220E86950();
  *(v0 + 128) = v6;
  OUTLINED_FUNCTION_2_3();
  v7 = swift_allocObject();
  *(v0 + 136) = v7;
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  *(v8 + 32) = v13;
  *(v8 + 48) = v5;
  *(v8 + 56) = v3;
  *(v8 + 64) = v4;
  *(v8 + 72) = v11;
  *(v8 + 88) = v2;
  *(v8 + 96) = v1;
  *(v8 + 104) = v12;
  v9 = swift_task_alloc();
  *(v0 + 152) = v9;
  *v9 = v0;
  v9[1] = sub_220E8D0B8;
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_220E8D0B8()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  OUTLINED_FUNCTION_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220E8D1C4()
{
  OUTLINED_FUNCTION_19();

  OUTLINED_FUNCTION_8_8();

  return v0();
}

uint64_t sub_220E8D21C()
{
  OUTLINED_FUNCTION_19();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t sub_220E8D28C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, _OWORD *a11, char a12, uint64_t a13, uint64_t a14)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    type metadata accessor for WeatherMapServiceBackoff();
    swift_allocObject();
    v23 = sub_220F92B84(&unk_28347B6E8);
    sub_220E8D43C(v22, a3, a4, a5, a6, a7, a8, a9, a10, a11, a1, v23, a12 & 1, a13, a14);
  }

  else
  {
    type metadata accessor for WeatherMapOverlayServiceError(0);
    sub_220E20470(qword_2812C8C10, type metadata accessor for WeatherMapOverlayServiceError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D858);
    return sub_220FC2A40();
  }
}

uint64_t sub_220E8D43C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, _OWORD *a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15)
{
  v183 = a8;
  v168 = a7;
  v177 = a6;
  v176 = a5;
  v175 = a4;
  v174 = a3;
  v167 = a15;
  LODWORD(v178) = a13;
  v164 = a11;
  v161 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D860);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v142 = &v138 - v19;
  v141 = sub_220FC0620();
  MEMORY[0x28223BE20](v141, v20);
  v140 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_220FC0640();
  MEMORY[0x28223BE20](v139, v22);
  v138 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_220FC0660();
  v150 = *(v165 - 8);
  MEMORY[0x28223BE20](v165, v24);
  v149 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v148 = &v138 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v147 = &v138 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v152 = &v138 - v34;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  MEMORY[0x28223BE20](v143, v35);
  v144 = &v138 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D818);
  v158 = *(v37 - 8);
  MEMORY[0x28223BE20](v37 - 8, v38);
  v151 = &v138 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v39;
  MEMORY[0x28223BE20](v40, v41);
  v173 = &v138 - v42;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D858);
  v159 = *(v163 - 8);
  v156 = *(v159 + 64);
  MEMORY[0x28223BE20](v163, v43);
  v172 = &v138 - v44;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D288);
  MEMORY[0x28223BE20](v162, v45);
  v153 = &v138 - v46;
  v47 = sub_220FBFC00();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47, v50);
  v171 = &v138 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v138 - v53;
  aBlock[0] = *(a1 + 112);
  sub_220FC1180();

  sub_220FC1370();

  v155 = v185[0];
  v179 = v48;
  v154 = *(v48 + 16);
  v154(v54, v174, v47);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_reachabilityMonitor), *(a1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_reachabilityMonitor + 24));
  sub_220E1B804();
  sub_220FBFB60();
  v55 = *(*(a1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_urlSessionManager) + 32);

  v184 = v55;
  sub_220F96EB0();
  v185[0] = v175;
  v185[1] = v176;
  v186 = v177;
  v166 = sub_220FB6ACC();
  if (qword_2812C5F20 != -1)
  {
    swift_once();
  }

  v157 = a14;
  v170 = a12;
  v181 = a9;
  v146 = sub_220FC17A0();
  v56 = __swift_project_value_buffer(v146, qword_2812C5F28);
  v182 = a2;

  v57 = v183;

  v145 = v56;
  v58 = sub_220FC1780();
  v59 = sub_220FC2E30();

  v60 = os_log_type_enabled(v58, v59);
  v180 = v47;
  v169 = a1;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    aBlock[0] = v62;
    *v61 = 136446979;
    *(v61 + 4) = sub_220E20FF8(v168, v57, aBlock);
    *(v61 + 12) = 2048;
    *(v61 + 14) = sub_220E86820();

    *(v61 + 22) = 2048;
    *(v61 + 24) = 5;

    *(v61 + 32) = 2081;
    swift_beginAccess();
    sub_220FBFBE0();
    swift_endAccess();
    v63 = sub_220FC2750();
    v65 = sub_220E20FF8(v63, v64, aBlock);

    *(v61 + 34) = v65;
    _os_log_impl(&dword_220E15000, v58, v59, "Requesting. rid=%{public}s, tryCount=%ld/%ld, url=%{private}s", v61, 0x2Au);
    swift_arrayDestroy();
    v66 = v62;
    v47 = v180;
    MEMORY[0x223D9DDF0](v66, -1, -1);
    MEMORY[0x223D9DDF0](v61, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v162 = v54;
  v153 = sub_220FBFBB0();
  v67 = v159;
  v68 = v163;
  (*(v159 + 16))(v172, v164, v163);
  v154(v171, v174, v47);
  sub_220E93294(v167, v173, &qword_27CF9D818);
  v69 = (*(v67 + 80) + 128) & ~*(v67 + 80);
  v174 = (v69 + v156 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + v156 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = v179;
  v72 = (*(v179 + 80) + v70 + 8) & ~*(v179 + 80);
  v73 = (v49 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = (*(v158 + 80) + v73 + 17) & ~*(v158 + 80);
  v75 = swift_allocObject();
  v76 = v184;
  *(v75 + 16) = v181;
  *(v75 + 24) = v76;
  v77 = v169;
  *(v75 + 32) = v155;
  *(v75 + 40) = v77;
  v78 = v161;
  v79 = v161[1];
  *(v75 + 48) = *v161;
  *(v75 + 64) = v79;
  *(v75 + 80) = *(v78 + 32);
  *(v75 + 96) = *(v78 + 48);
  v80 = v182;
  v81 = v183;
  *(v75 + 104) = v168;
  *(v75 + 112) = v81;
  *(v75 + 120) = v80;
  (*(v67 + 32))(v75 + v69, v172, v68);
  v82 = v75 + v174;
  *v82 = v170;
  *(v82 + 8) = v178 & 1;
  *(v75 + v70) = v157;
  (*(v71 + 32))(v75 + v72, v171, v180);
  v83 = v75 + v73;
  v84 = v175;
  v85 = v176;
  *v83 = v175;
  *(v83 + 8) = v85;
  LOBYTE(v71) = v177;
  *(v83 + 16) = v177;
  sub_220E93658(v173, v75 + v74, &qword_27CF9D818);
  aBlock[4] = sub_220E9308C;
  aBlock[5] = v75;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220E911DC;
  aBlock[3] = &block_descriptor_4;
  v86 = _Block_copy(aBlock);

  v87 = v183;

  sub_220E92C30(v78, v185);

  sub_220E5AFB8(v84, v85, v71);

  v88 = v166;
  v89 = v153;
  v90 = [v166 dataTaskWithRequest:v153 completionHandler:v86];
  _Block_release(v86);

  if (v178 & 1) != 0 && (sub_220E867C8())
  {
    v178 = v90;
    if (qword_2812C5EE8 != -1)
    {
      swift_once();
    }

    v91 = __swift_project_value_buffer(v143, qword_27CF9CB98);
    v92 = v144;
    sub_220E93294(v91, v144, &qword_27CF9CF70);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v92, 1, v146);
    v94 = v162;
    v95 = v168;
    if (EnumTagSinglePayload == 1)
    {
      sub_220E3B2DC(v92, &qword_27CF9CF70);
      v96 = v180;
    }

    else
    {

      v132 = sub_220FC1780();
      v133 = sub_220FC2E30();

      if (os_log_type_enabled(v132, v133))
      {
        v134 = v87;
        v135 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v185[0] = v136;
        *v135 = 136446722;
        *(v135 + 4) = sub_220E20FF8(v95, v134, v185);
        *(v135 + 12) = 2048;
        *(v135 + 14) = sub_220E86820();

        *(v135 + 22) = 2048;
        *(v135 + 24) = 5;

        _os_log_impl(&dword_220E15000, v132, v133, "Cancelled. rid=%{public}s, tryCount=%ld/%ld", v135, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v136);
        v96 = v180;
        MEMORY[0x223D9DDF0](v136, -1, -1);
        MEMORY[0x223D9DDF0](v135, -1, -1);
      }

      else
      {

        v96 = v180;
      }

      (*(*(v146 - 8) + 8))(v92);
    }

    sub_220FC2A60();
    sub_220E20470(&qword_2812C5DE8, MEMORY[0x277D85678]);
    v137 = swift_allocError();
    sub_220FC2580();
    v185[0] = v137;
    sub_220FC2A40();

    return (*(v179 + 8))(v94, v96);
  }

  else
  {
    v97 = v151;
    sub_220E93294(v167, v151, &qword_27CF9D818);
    v98 = v165;
    if (__swift_getEnumTagSinglePayload(v97, 1, v165) == 1)
    {
      sub_220E3B2DC(v97, &qword_27CF9D818);
      v99 = v162;
      v100 = v180;
    }

    else
    {
      v178 = v90;
      v101 = v150;
      v102 = v152;
      (*(v150 + 32))(v152, v97, v98);
      v103 = *(v101 + 16);
      v104 = v147;
      v103(v147, v102, v98);
      v105 = v148;
      v103(v148, v102, v98);
      v106 = v149;
      v103(v149, v102, v98);
      v107 = sub_220FC1780();
      v108 = sub_220FC2E30();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        v185[0] = v183;
        *v109 = 136446722;
        LODWORD(v182) = v108;
        sub_220FC0650();
        v110 = sub_220FC2750();
        v112 = v111;
        v113 = v104;
        v114 = *(v101 + 8);
        v114(v113, v165);
        v115 = sub_220E20FF8(v110, v112, v185);

        *(v109 + 4) = v115;
        *(v109 + 12) = 2082;
        sub_220FC0630();
        v116 = sub_220FC2750();
        v118 = v117;
        v114(v105, v165);
        v119 = sub_220E20FF8(v116, v118, v185);

        *(v109 + 14) = v119;
        *(v109 + 22) = 2082;
        v120 = v142;
        sub_220FC05F0();
        v121 = sub_220FC02E0();
        LODWORD(v119) = __swift_getEnumTagSinglePayload(v120, 1, v121);
        sub_220E3B2DC(v120, &qword_27CF9D860);
        v122 = v119 == 1;
        if (v119 == 1)
        {
          v123 = 28526;
        }

        else
        {
          v123 = 7562617;
        }

        if (v122)
        {
          v124 = 0xE200000000000000;
        }

        else
        {
          v124 = 0xE300000000000000;
        }

        v114(v106, v165);
        v125 = sub_220E20FF8(v123, v124, v185);
        v98 = v165;

        *(v109 + 24) = v125;
        _os_log_impl(&dword_220E15000, v107, v182, "Attaching network activity. domain=%{public}s, label=%{public}s, hasParent=%{public}s", v109, 0x20u);
        v126 = v183;
        swift_arrayDestroy();
        v100 = v180;
        MEMORY[0x223D9DDF0](v126, -1, -1);
        MEMORY[0x223D9DDF0](v109, -1, -1);

        v99 = v162;
      }

      else
      {

        v127 = v104;
        v114 = *(v101 + 8);
        v114(v106, v98);
        v114(v105, v98);
        v114(v127, v98);
        v99 = v162;
        v100 = v180;
      }

      v128 = v152;
      sub_220FC0600();
      v90 = v178;
      v129 = v178;

      sub_220FC2EA0();

      v114(v128, v98);
      v88 = v166;
    }

    v130 = v90;
    sub_220E866C0();
    [v130 resume];

    return (*(v179 + 8))(v99, v100);
  }
}

void (*sub_220E8E7A4@<X0>(uint64_t *a1@<X8>))(_BYTE *, void)
{
  v2 = sub_220E86820();
  swift_beginAccess();

  result = sub_220FC13D0();
  if (__OFADD__(*v4, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v4;
    result(v5, 0);

    *a1 = v2;
  }

  return result;
}

void sub_220E8E844(uint64_t a1, unint64_t a2, char *a3, void *a4, char *a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, uint64_t a21)
{
  v250 = a3;
  v251 = a7;
  v249 = a6;
  v253 = a4;
  v231 = a2;
  v229 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D818);
  v221 = *(v23 - 8);
  v222 = *(v221 + 64);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v228 = v214 - v25;
  v226 = sub_220FBFC00();
  v223 = *(v226 - 8);
  MEMORY[0x28223BE20](v226, v26);
  v218 = v27;
  v225 = v214 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D858);
  v220 = *(v237 - 8);
  v217 = *(v220 + 64);
  MEMORY[0x28223BE20](v237, v28);
  v219 = v214 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v30 - 8, v31);
  v227 = v214 - v32;
  v246 = type metadata accessor for WeatherMapOverlayServiceError(0);
  MEMORY[0x28223BE20](v246, v33);
  v239 = v214 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v216 = v214 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v215 = v214 - v40;
  MEMORY[0x28223BE20](v41, v42);
  v240 = (v214 - v43);
  v44 = sub_220FC2740();
  MEMORY[0x28223BE20](v44 - 8, v45);
  v214[1] = v214 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  MEMORY[0x28223BE20](v233, v47);
  v230 = v214 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v50);
  v238 = v214 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D828);
  MEMORY[0x28223BE20](v52 - 8, v53);
  v235 = v214 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55, v56);
  v236 = v214 - v57;
  MEMORY[0x28223BE20](v58, v59);
  v232 = (v214 - v60);
  MEMORY[0x28223BE20](v61, v62);
  v245 = v214 - v63;
  v64 = sub_220FC1A20();
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v66);
  v68 = v214 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_220FC1670();
  v243 = *(v244 - 8);
  MEMORY[0x28223BE20](v244, v69);
  v71 = v214 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_220FBFD70();
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v74);
  v76 = v214 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = a5;
  v77 = sub_220E86678();
  v247 = a8;
  if (!v77)
  {
    v242 = 0;
    goto LABEL_10;
  }

  v78 = v77;
  v79 = v71;
  v80 = [v77 _incompleteTaskMetrics];

  if (!v80)
  {
    v242 = 0;
    goto LABEL_9;
  }

  v71 = v80;
  v81 = [v71 taskInterval];
  sub_220FBFD50();

  sub_220FBFD60();
  v83 = v82;
  v85 = *(v73 + 8);
  v84 = (v73 + 8);
  v85(v76, v72);
  v86 = v83 * 1000.0;
  if (COERCE__INT64(fabs(v83 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_79;
  }

  if (v86 <= -9.22337204e18)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v86 >= 9.22337204e18)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  sub_220F97060();
  v242 = v71;

LABEL_9:
  v71 = v79;
  a8 = v247;
LABEL_10:
  sub_220FC1660();
  v87 = sub_220E86678();
  v72 = v245;
  if (v87)
  {
    v88 = v87;
    v89 = [v87 &selRef_handleVoiceOverStatusDidChangeWithNotification_ + 6];
  }

  else
  {
    v89 = 0;
  }

  v234 = a13;
  v251 = a11;
  v248 = a10;
  v224 = a9;
  v90 = v253;
  sub_220E90740(a9, v250, v89, v253, v71);

  v91 = sub_220E86678();
  if (v91)
  {
    v93 = v91;
    v94 = sub_220FC2E90();

    if (v94)
    {
      v95 = MEMORY[0x277CD8AC8];
      if (v90)
      {
        v95 = MEMORY[0x277CD8AC0];
      }

      (*(v65 + 104))(v68, *v95, v64);
      sub_220FC1A30();

      v91 = (*(v65 + 8))(v68, v64);
    }
  }

  v241 = a12;
  v96 = *(*(a8 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_taskQueue) + 16);
  MEMORY[0x28223BE20](v91, v92);
  v97 = v251;
  v214[-4] = v248;
  v214[-3] = v97;
  v214[-2] = v98;
  os_unfair_lock_lock(v96 + 10);
  sub_220E93274(&v96[4], v254);
  v99 = v96 + 10;
  v84 = v253;
  os_unfair_lock_unlock(v99);
  v100 = v254[0];
  v101 = v246;
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v246);
  if (v84)
  {
    v102 = v84;
    v103 = sub_220FBFFD0();
    v104 = [v103 code];

    if (v104 == -999)
    {
      if (qword_2812C5EE8 == -1)
      {
LABEL_21:
        v105 = __swift_project_value_buffer(v233, qword_27CF9CB98);
        v106 = v238;
        sub_220E93294(v105, v238, &qword_27CF9CF70);
        v107 = sub_220FC17A0();
        if (__swift_getEnumTagSinglePayload(v106, 1, v107) == 1)
        {
          sub_220E3B2DC(v238, &qword_27CF9CF70);
        }

        else
        {

          v133 = v251;

          v134 = sub_220FC1780();
          v135 = sub_220FC2E30();

          if (os_log_type_enabled(v134, v135))
          {
            v136 = swift_slowAlloc();
            v137 = swift_slowAlloc();
            v250 = v71;
            v138 = v137;
            v254[0] = v137;
            *v136 = 136446722;
            *(v136 + 4) = sub_220E20FF8(v248, v133, v254);
            *(v136 + 12) = 2048;
            *(v136 + 14) = sub_220E86820();

            *(v136 + 22) = 2048;
            *(v136 + 24) = 5;

            _os_log_impl(&dword_220E15000, v134, v135, "Network Cancelled. rid=%{public}s, tryCount=%ld/%ld", v136, 0x20u);
            __swift_destroy_boxed_opaque_existential_0(v138);
            v139 = v138;
            v71 = v250;
            MEMORY[0x223D9DDF0](v139, -1, -1);
            MEMORY[0x223D9DDF0](v136, -1, -1);
          }

          else
          {
          }

          (*(*(v107 - 8) + 8))(v238, v107);
          v84 = v253;
        }

        sub_220F96EB0();
        sub_220FC2A60();
        sub_220E20470(&qword_2812C5DE8, MEMORY[0x277D85678]);
        v174 = swift_allocError();
        sub_220FC2580();
        v254[0] = v174;
        sub_220FC2A40();

        goto LABEL_71;
      }

LABEL_81:
      swift_once();
      goto LABEL_21;
    }

    sub_220F96EB0();
    swift_getErrorValue();
    v108 = v101;
    v109 = v100;
    v110 = v250;
    v111 = v250;
    v112 = sub_220FC39D0();
    v114 = v113;

    sub_220E3B2DC(v72, &qword_27CF9D828);
    v115 = v232;
    *v232 = v110;
    *(v115 + 8) = v112;
    v100 = v109;
    v101 = v108;
    *(v115 + 16) = v114;
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v115, 0, 1, v108);
    sub_220E93658(v115, v72, &qword_27CF9D828);
  }

  v116 = v236;
  sub_220E93294(v72, v236, &qword_27CF9D828);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v116, 1, v101);
  sub_220E3B2DC(v116, &qword_27CF9D828);
  v118 = v239;
  if (EnumTagSinglePayload == 1)
  {
    v119 = v231;
    if (v231 >> 60 == 15)
    {
      sub_220F96EB0();
      sub_220E3B2DC(v72, &qword_27CF9D828);
LABEL_39:
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v72, 0, 1, v101);
      goto LABEL_40;
    }

    v120 = v250;
    if (!v250 || (objc_opt_self(), (v121 = swift_dynamicCastObjCClass()) == 0))
    {
      v140 = v229;
      sub_220E567E8(v229, v119);
      sub_220F96EB0();
      sub_220E56854(v140, v119);
      sub_220E3B2DC(v72, &qword_27CF9D828);
      goto LABEL_39;
    }

    v122 = v121;
    v123 = v120;
    v124 = v229;
    sub_220E567E8(v229, v119);
    if ([v122 statusCode] >= 200 && objc_msgSend(v122, sel_statusCode) <= 299)
    {
      v253 = v100;
      v250 = v71;
      if (qword_2812C5F20 != -1)
      {
        swift_once();
      }

      v125 = sub_220FC17A0();
      __swift_project_value_buffer(v125, qword_2812C5F28);

      v252 = v123;
      v126 = v229;
      sub_220E567E8(v229, v119);
      v127 = sub_220FC1780();
      v128 = sub_220FC2E30();

      LODWORD(v246) = v128;
      if (os_log_type_enabled(v127, v128))
      {
        v240 = v127;
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v254[0] = v130;
        *v129 = 134219010;
        *(v129 + 4) = [v122 statusCode];

        *(v129 + 12) = 2048;
        v131 = 0;
        v132 = v248;
        switch(v119 >> 62)
        {
          case 1uLL:
            LODWORD(v131) = HIDWORD(v229) - v229;
            if (!__OFSUB__(HIDWORD(v229), v229))
            {
              v131 = v131;
              goto LABEL_76;
            }

            __break(1u);
            goto LABEL_83;
          case 2uLL:
            v210 = *(v229 + 16);
            v209 = *(v229 + 24);
            v211 = __OFSUB__(v209, v210);
            v131 = v209 - v210;
            if (!v211)
            {
              goto LABEL_76;
            }

LABEL_83:
            __break(1u);
            return;
          case 3uLL:
            goto LABEL_76;
          default:
            v131 = BYTE6(v231);
LABEL_76:
            *(v129 + 14) = v131;
            v208 = v229;
            v119 = v231;
            sub_220E56854(v229, v231);
            *(v129 + 22) = 2082;
            *(v129 + 24) = sub_220E20FF8(v132, v251, v254);
            *(v129 + 32) = 2048;
            *(v129 + 34) = sub_220E86820();

            *(v129 + 42) = 2048;
            *(v129 + 44) = 5;

            v212 = v240;
            _os_log_impl(&dword_220E15000, v240, v246, "Success (%ld, n=%ld). rid=%{public}s, tryCount=%ld/%ld", v129, 0x34u);
            __swift_destroy_boxed_opaque_existential_0(v130);
            MEMORY[0x223D9DDF0](v130, -1, -1);
            MEMORY[0x223D9DDF0](v129, -1, -1);

            goto LABEL_77;
        }
      }

      sub_220E56854(v126, v119);

      v208 = v126;
LABEL_77:
      sub_220F96EB0();
      v213 = sub_220E657BC();
      v254[0] = v122;
      v254[1] = v208;
      v254[2] = v119;
      v255 = v213;
      sub_220FC2A50();

      v202 = v72;
      goto LABEL_64;
    }

    sub_220F96EB0();
    v175 = v123;
    sub_220FC2730();
    v176 = sub_220FC2710();
    v178 = v177;
    sub_220E56854(v124, v119);

    sub_220E3B2DC(v72, &qword_27CF9D828);
    v179 = v232;
    *v232 = v122;
    *(v179 + 8) = v176;
    *(v179 + 16) = v178;
    v118 = v239;
    v101 = v246;
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v179, 0, 1, v101);
    sub_220E93658(v179, v72, &qword_27CF9D828);
  }

LABEL_40:
  v141 = v235;
  sub_220E93294(v72, v235, &qword_27CF9D828);
  if (__swift_getEnumTagSinglePayload(v141, 1, v101) == 1)
  {

    sub_220E3B2DC(v72, &qword_27CF9D828);
    (*(v243 + 8))(v71, v244);
    sub_220E3B2DC(v141, &qword_27CF9D828);
    return;
  }

  sub_220E935A4(v141, v240, type metadata accessor for WeatherMapOverlayServiceError);
  __swift_project_boxed_opaque_existential_1((v247 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_reachabilityMonitor), *(v247 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_reachabilityMonitor + 24));
  if (sub_220E1B804())
  {
    if (sub_220E86820() <= 4)
    {
      v250 = v71;
      v142 = a21;
      v233 = a17;
      if (qword_2812C5F20 != -1)
      {
        swift_once();
      }

      v253 = v100;
      LODWORD(v239) = a20;
      v238 = a19;
      v236 = a18;
      v249 = a16;
      LODWORD(v235) = a15;
      v246 = a14;
      v143 = sub_220FC17A0();
      __swift_project_value_buffer(v143, qword_2812C5F28);
      v144 = v215;
      sub_220E91FB8(v240, v215);

      v145 = v251;

      v146 = sub_220FC1780();
      v147 = sub_220FC2E10();

      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v254[0] = v149;
        *v148 = 136446978;
        *(v148 + 4) = sub_220E20FF8(v248, v145, v254);
        *(v148 + 12) = 2048;
        *(v148 + 14) = sub_220E86820();

        *(v148 + 22) = 2048;
        *(v148 + 24) = 5;

        *(v148 + 32) = 2082;
        sub_220E91FB8(v144, v216);
        v150 = sub_220FC2750();
        v152 = v151;
        sub_220E93600(v144, type metadata accessor for WeatherMapOverlayServiceError);
        v153 = sub_220E20FF8(v150, v152, v254);
        v142 = a21;

        *(v148 + 34) = v153;
        _os_log_impl(&dword_220E15000, v146, v147, "Request failed. rid=%{public}s, tryCount=%ld/%ld, exception=%{public}s", v148, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x223D9DDF0](v149, -1, -1);
        MEMORY[0x223D9DDF0](v148, -1, -1);
      }

      else
      {

        sub_220E93600(v144, type metadata accessor for WeatherMapOverlayServiceError);
      }

      v180 = v234;
      v181 = v221;
      v182 = v217;
      v183 = sub_220FC2AE0();
      __swift_storeEnumTagSinglePayload(v227, 1, 1, v183);
      v184 = v220;
      v185 = v219;
      (*(v220 + 16))(v219, v180, v237);
      v186 = v223;
      (*(v223 + 16))(v225, v233, v226);
      sub_220E93294(v142, v228, &qword_27CF9D818);
      v187 = (*(v184 + 80) + 88) & ~*(v184 + 80);
      v188 = (v182 + v187 + 7) & 0xFFFFFFFFFFFFFFF8;
      v189 = (*(v186 + 80) + v188 + 8) & ~*(v186 + 80);
      v233 = (v189 + v218 + 7) & 0xFFFFFFFFFFFFFFF8;
      v190 = (v189 + v218 + 31) & 0xFFFFFFFFFFFFFFF8;
      v191 = (v190 + 15) & 0xFFFFFFFFFFFFFFF8;
      v234 = (*(v181 + 80) + v191 + 49) & ~*(v181 + 80);
      v192 = swift_allocObject();
      *(v192 + 16) = 0;
      *(v192 + 24) = 0;
      v193 = v241;
      *(v192 + 32) = v246;
      *(v192 + 40) = v193;
      *(v192 + 48) = v235 & 1;
      v194 = v248;
      *(v192 + 56) = v249;
      *(v192 + 64) = v194;
      v195 = v247;
      *(v192 + 72) = v251;
      *(v192 + 80) = v195;
      (*(v184 + 32))(v192 + v187, v185, v237);
      *(v192 + v188) = v253;
      (*(v186 + 32))(v192 + v189, v225, v226);
      v196 = v192 + v233;
      v197 = v236;
      v198 = v238;
      *v196 = v236;
      *(v196 + 8) = v198;
      LOBYTE(v187) = v239;
      *(v196 + 16) = v239;
      *(v192 + v190) = v252;
      v199 = v192 + v191;
      v200 = v224;
      v201 = v224[1];
      *v199 = *v224;
      *(v199 + 16) = v201;
      *(v199 + 32) = *(v200 + 32);
      *(v199 + 48) = *(v200 + 48);
      sub_220E93658(v228, v192 + v234, &qword_27CF9D818);

      sub_220E5AFB8(v197, v198, v187);

      sub_220E92C30(v200, v254);
      sub_220F9BB1C(0, 0, v227, &unk_220FCBAC0, v192);

      sub_220E93600(v240, type metadata accessor for WeatherMapOverlayServiceError);
      v202 = v245;
LABEL_64:
      sub_220E3B2DC(v202, &qword_27CF9D828);
      (*(v243 + 8))(v250, v244);
      return;
    }

    if (qword_2812C5F20 != -1)
    {
      swift_once();
    }

    v157 = sub_220FC17A0();
    __swift_project_value_buffer(v157, qword_2812C5F28);
    sub_220E91FB8(v240, v118);

    v158 = v251;

    v159 = sub_220FC1780();
    v160 = sub_220FC2E10();

    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      v253 = swift_slowAlloc();
      v254[0] = v253;
      *v161 = 136446978;
      *(v161 + 4) = sub_220E20FF8(v248, v158, v254);
      *(v161 + 12) = 2048;
      *(v161 + 14) = sub_220E86820();

      *(v161 + 22) = 2048;
      *(v161 + 24) = 5;

      *(v161 + 32) = 2082;
      v162 = v239;
      sub_220E91FB8(v239, v216);
      v163 = sub_220FC2750();
      v165 = v164;
      sub_220E93600(v162, type metadata accessor for WeatherMapOverlayServiceError);
      v166 = sub_220E20FF8(v163, v165, v254);

      *(v161 + 34) = v166;
      _os_log_impl(&dword_220E15000, v159, v160, "Request failed: exceeded max attempts. rid=%{public}s, tryCount=%ld/%ld, exception=%{public}s", v161, 0x2Au);
      v167 = v253;
      swift_arrayDestroy();
      MEMORY[0x223D9DDF0](v167, -1, -1);
      MEMORY[0x223D9DDF0](v161, -1, -1);
    }

    else
    {

      sub_220E93600(v239, type metadata accessor for WeatherMapOverlayServiceError);
    }

    sub_220E20470(qword_2812C8C10, type metadata accessor for WeatherMapOverlayServiceError);
    v203 = swift_allocError();
    v204 = v240;
    sub_220E91FB8(v240, v205);
    v254[0] = v203;
    sub_220FC2A40();

    v206 = v204;
  }

  else
  {
    if (qword_2812C5EE8 != -1)
    {
      swift_once();
    }

    v154 = __swift_project_value_buffer(v233, qword_27CF9CB98);
    v155 = v230;
    sub_220E93294(v154, v230, &qword_27CF9CF70);
    v156 = sub_220FC17A0();
    if (__swift_getEnumTagSinglePayload(v155, 1, v156) == 1)
    {
      sub_220E3B2DC(v155, &qword_27CF9CF70);
    }

    else
    {

      v168 = v251;

      v169 = sub_220FC1780();
      v170 = sub_220FC2E30();

      if (os_log_type_enabled(v169, v170))
      {
        v171 = swift_slowAlloc();
        v253 = v100;
        v172 = v171;
        v252 = swift_slowAlloc();
        v254[0] = v252;
        *v172 = 136446722;
        *(v172 + 4) = sub_220E20FF8(v248, v168, v254);
        *(v172 + 12) = 2048;
        *(v172 + 14) = sub_220E86820();

        *(v172 + 22) = 2048;
        *(v172 + 24) = 5;

        _os_log_impl(&dword_220E15000, v169, v170, "Offline Cache Miss. rid=%{public}s, tryCount=%ld/%ld", v172, 0x20u);
        v173 = v252;
        __swift_destroy_boxed_opaque_existential_0(v252);
        MEMORY[0x223D9DDF0](v173, -1, -1);
        MEMORY[0x223D9DDF0](v172, -1, -1);
      }

      else
      {
      }

      (*(*(v156 - 8) + 8))(v230, v156);
    }

    sub_220E20470(qword_2812C8C10, type metadata accessor for WeatherMapOverlayServiceError);
    v207 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v254[0] = v207;
    sub_220FC2A40();

    v206 = v240;
  }

  sub_220E93600(v206, type metadata accessor for WeatherMapOverlayServiceError);
LABEL_71:
  sub_220E3B2DC(v72, &qword_27CF9D828);
  (*(v243 + 8))(v71, v244);
}