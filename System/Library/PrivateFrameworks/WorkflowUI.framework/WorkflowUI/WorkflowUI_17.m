void sub_2748B6910(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2749FA3C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v44 = Strong;
  v10 = sub_2747D5A24([Strong workflow]);
  if (v11)
  {
    if (v10 == a2 && v11 == a3)
    {

      return;
    }

    v13 = sub_2749FDCC4();

    if (v13)
    {
      goto LABEL_14;
    }
  }

  v14 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v14 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
LABEL_14:
    v20 = v44;

    return;
  }

  v15 = [v44 workflow];
  (*(v6 + 104))(v8, *MEMORY[0x277D79BC0], v5);
  v16 = sub_2749FA3B4();
  (*(v6 + 8))(v8, v5);
  if (v16)
  {
    v17 = sub_2749FCD64();
    v45[0] = 0;
    v18 = [v15 renameWorkflowTo:v17 error:v45];

    if (!v18)
    {
      v32 = v45[0];
      v33 = sub_2749F8FE4();

      swift_willThrow();
      v34 = WFUserInterfaceFromViewController();
      sub_27471CF08(0, &qword_28096D720);
      v35 = v33;
      v36 = sub_2748FCEE0(v33);
      [v34 presentAlert_];
      swift_unknownObjectRelease();

      return;
    }

    v19 = v45[0];
  }

  else
  {
    v21 = [v15 reference];
    if (v21)
    {
      v22 = v21;
      v23 = [v15 database];
      if (v23)
      {
        v24 = v23;
        v25 = sub_2749FCD64();
        v45[0] = 0;
        v26 = [v24 renameReference:v22 to:v25 error:v45];

        if (!v26)
        {
          v39 = v45[0];
          v40 = sub_2749F8FE4();

          swift_willThrow();
          v41 = WFUserInterfaceFromViewController();
          sub_27471CF08(0, &qword_28096D720);
          v42 = v40;
          v43 = sub_2748FCEE0(v40);
          [v41 presentAlert_];
          swift_unknownObjectRelease();

          return;
        }

        v27 = v45[0];
        v28 = [v26 name];
        v29 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v31 = v30;

        sub_274926558(v29, v31, v15);
        [v15 save];
      }

      else
      {
      }
    }
  }

  v37 = [objc_allocWithZone(MEMORY[0x277D7C808]) init];
  sub_27484DB24(0xD000000000000013, 0x8000000274A31AA0, v37, &selRef_setKey_);
  v38 = @"ShortcutSourceEditorDocumentMenu";
  [v37 setSource_];

  [v37 track];
}

void sub_2748B6EF0()
{
  aBlock[7] = *MEMORY[0x277D85DE8];
  v0 = sub_2749FA4E4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v29 = [Strong workflow];
  v6 = [v29 reference];
  if (v6)
  {
    v28 = v6;
    v7 = [v29 database];
    if (v7)
    {
      v8 = v7;
      aBlock[0] = 0;
      v9 = [v7 duplicateReference:v28 error:aBlock];
      v10 = aBlock[0];
      if (v9)
      {
        v11 = v9;
        v12 = swift_allocObject();
        v12[2] = v5;
        v12[3] = v11;
        v12[4] = v29;
        aBlock[4] = sub_2748B961C;
        aBlock[5] = v12;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_274760264;
        aBlock[3] = &block_descriptor_37;
        v13 = _Block_copy(aBlock);
        v14 = v10;
        v15 = v5;
        v16 = v11;
        v17 = v29;

        [v15 dismissViewControllerAnimated:1 completion:v13];

        _Block_release(v13);
      }

      else
      {
        v19 = aBlock[0];
        v20 = sub_2749F8FE4();

        swift_willThrow();
        sub_2749FA3D4();
        v21 = v20;
        v22 = sub_2749FA4D4();
        v23 = sub_2749FD2C4();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = 138412290;
          v26 = v20;
          v27 = _swift_stdlib_bridgeErrorToNSError();
          *(v24 + 4) = v27;
          *v25 = v27;
          _os_log_impl(&dword_274719000, v22, v23, "Unable to duplicate workflow in editor: %@", v24, 0xCu);
          sub_2747BC7EC(v25, &qword_28096A280);
          MEMORY[0x277C61040](v25, -1, -1);
          MEMORY[0x277C61040](v24, -1, -1);
        }

        else
        {
        }

        (*(v1 + 8))(v3, v0);
      }

      return;
    }

    v18 = v28;
  }

  else
  {

    v18 = v29;
  }
}

void sub_2748B7344(void *a1, uint64_t a2, void *a3)
{
  v6 = [a1 delegate];
  if (v6)
  {
    v7 = v6;
    if ([v6 respondsToSelector_])
    {
      [v7 composeViewController:a1 didDuplicateWorkflow:a2];
    }

    swift_unknownObjectRelease();
  }

  v12 = [objc_allocWithZone(MEMORY[0x277D7C0E8]) init];
  v8 = [a3 actions];
  sub_27471CF08(0, &qword_28096D540);
  v9 = sub_2749FCF84();

  v10 = sub_27472D918(v9);

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(v10))
  {
LABEL_11:
    __break(1u);
    return;
  }

  [v12 setActionCount_];
  v11 = @"ShortcutSourceEditorDocumentMenu";
  [v12 setShortcutSource_];

  [v12 track];
}

uint64_t sub_2748B7530(double a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = swift_allocObject();
    *(v13 + 16) = a6;
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = a2;
    v14[4] = a3;
    v14[5] = a4;
    if (!a6)
    {
      v15 = [*&v12[OBJC_IVAR___WFComposeViewController_editorHostingViewController] navigationController];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 navigationBar];
      }

      else
      {
        v17 = 0;
      }

      *(v13 + 16) = v17;
      *(v14 + 1) = xmmword_274A1F120;
      v14[4] = 0.0;
      v14[5] = 0.0;
    }

    v54 = v13;
    v18 = objc_opt_self();
    v19 = a6;
    v20 = [v18 alertWithPreferredStyle_];
    v21 = [objc_opt_self() sourceWithView_];
    [v20 setPresentationSource_];

    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v22 = qword_28159E448;
    v23 = sub_2749FCD64();
    v24 = sub_2749FCD64();

    v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

    v26 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v28 = v27;

    sub_2748B8E2C(v26, v28, v20);
    sub_2749FCE14();
    v29 = sub_2749FCD64();
    v30 = sub_2749FCD64();

    v31 = [v22 localizedStringForKey:v29 value:v30 table:0];

    v32 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v34 = v33;

    sub_2748FE6A0(v32, v34, v20);
    sub_27471CF08(0, &qword_28096D710);
    sub_2749FCE14();
    v35 = sub_2749FCD64();
    v36 = sub_2749FCD64();

    v37 = [v22 localizedStringForKey:v35 value:v36 table:0];

    v38 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v40 = v39;

    v41 = swift_allocObject();
    v41[2] = v12;
    v41[3] = v13;
    v41[4] = v14;
    v42 = v12;

    v43 = sub_274760C44(v38, v40, 0, 0, sub_2748B95C4, v41);
    sub_2749FCE14();
    v44 = sub_2749FCD64();
    v45 = sub_2749FCD64();

    v46 = [v22 localizedStringForKey:v44 value:v45 table:0];

    v47 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v49 = v48;

    v50 = swift_allocObject();
    v50[2] = v42;
    v50[3] = v54;
    v50[4] = v14;
    v51 = v42;

    v52 = sub_274760C44(v47, v49, 0, 0, sub_2748B9610, v50);
    [v20 addButton_];
    [v20 addButton_];
    v53 = [objc_opt_self() cancelButtonWithHandler_];
    [v20 addButton_];

    [WFUserInterfaceFromViewController() presentAlert_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2748B7AF0(uint64_t a1, void *a2, uint64_t a3, double *a4)
{
  v8 = sub_2748B5938(0);
  [v8 setSelectedMode_];
  [v8 setSelectedDestination_];
  [v8 _customizationsDidChange];
  v9 = [v8 popoverPresentationController];
  v10 = v9;
  if (v9)
  {
    [v9 setCanOverlapSourceViewRect_];
    swift_beginAccess();
    [v10 setSourceView_];
    swift_beginAccess();
    [v10 setSourceRect_];
  }

  [a2 presentViewController:v8 animated:1 completion:0];
}

void sub_2748B7CF4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v11 = [Strong workflow];
  v2 = [v11 reference];
  if (v2)
  {
    v10 = v2;
    v3 = [v11 database];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for MoveToFolderCoordinator();
      swift_allocObject();
      v5 = MoveToFolderCoordinator.init(database:)(v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_274A11F70;
      *(v6 + 32) = v10;
      v7 = v4;
      v8 = v10;
      sub_2748FD264(v6, v1, 10);

      *&v1[OBJC_IVAR___WFComposeViewController_moveCoordinator] = v5;

      return;
    }

    v9 = v10;
  }

  else
  {

    v9 = v11;
  }
}

void sub_2748B7F18()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong presentIconPicker];
}

void sub_2748B7FD0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v11 = [Strong workflow];
    v2 = [v11 reference];
    if (v2)
    {
      v3 = v2;
      v4 = objc_allocWithZone(type metadata accessor for AddToHomeScreenActivity());
      v5 = v3;
      v6 = AddToHomeScreenActivity.init(reference:)(v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00);
      *(swift_initStackObject() + 16) = xmmword_274A0EF10;
      [v11 copy];
      sub_2749FD774();
      swift_unknownObjectRelease();
      swift_setDeallocating();
      sub_2747A355C();
      v7 = *&v1[OBJC_IVAR___WFComposeViewController_addToHomeScreenActivity];
      *&v1[OBJC_IVAR___WFComposeViewController_addToHomeScreenActivity] = v6;
      v8 = v6;

      v9 = AddToHomeScreenActivity.activityViewController.getter();
      if (v9)
      {
        v10 = v9;
        [v1 presentViewController:v9 animated:1 completion:0];
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_2748B81D4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong[OBJC_IVAR___WFComposeViewController_layoutMode];

    v2 = v1 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id sub_2748B8274(uint64_t a1)
{
  if (![v1 shouldShowShareButtonForDocumentMenu_])
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = sub_2748B5938(0);

  return v4;
}

id sub_2748B8364()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong isEditingNewWorkflow];

  return v2;
}

void sub_2748B8408(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2 == 1)
    {
      v4 = OBJC_IVAR___WFComposeViewController_settingsViewController;
      v5 = *&Strong[OBJC_IVAR___WFComposeViewController_settingsViewController];
      v18 = Strong;
      if (v5)
      {
        v6 = *&Strong[OBJC_IVAR___WFComposeViewController_settingsViewController];
LABEL_13:
        v16 = v5;
        sub_274817338(v6);

        return;
      }

      v10 = [Strong workflow];
      v11 = [v10 database];

      if (v11)
      {
        v12 = [v18 workflow];
        v13 = objc_allocWithZone(type metadata accessor for WorkflowSettingsViewController());
        v14 = WorkflowSettingsViewController.init(workflow:database:hideNavigationBar:)(v12, v11, 1);
        swift_beginAccess();
        swift_unknownObjectWeakAssign();
        v15 = *&v18[v4];
        *&v18[v4] = v14;
        v6 = v14;

        v5 = 0;
        goto LABEL_13;
      }

      Strong = v18;
    }

    else
    {
      if (a2)
      {
        sub_2749FDD24();
        __break(1u);
        return;
      }

      v7 = *&Strong[OBJC_IVAR___WFComposeViewController_drawerCoordinator];
      v8 = *&v7[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController];
      if (v8)
      {
        v19 = Strong;
        v9 = v8;
        v17 = v7;
        sub_274817338(v9);

        Strong = v17;
      }
    }
  }
}

Swift::Void __swiftcall WFComposeViewController.performScrollingTest(named:)(Swift::String named)
{
  object = named._object;
  countAndFlagsBits = named._countAndFlagsBits;
  v3 = sub_2749FCA74();
  OUTLINED_FUNCTION_43();
  v50 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  sub_2749FCAA4();
  OUTLINED_FUNCTION_43();
  v51 = v10;
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v13 = (v12 - v11);
  v14 = sub_2749FCAC4();
  OUTLINED_FUNCTION_43();
  v16 = v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v45 - v21;
  if (OUTLINED_FUNCTION_14_14())
  {
    sub_27471CF08(0, &qword_28159E4E0);
    v47 = sub_2749FD404();
    sub_2749FCAB4();
    sub_2749FCB14();
    v48 = *(v16 + 8);
    v48(v20, v14);
    v23 = swift_allocObject();
    v24 = countAndFlagsBits;
    v25 = object;
    v26 = v49;
    v23[2] = v49;
    v23[3] = v24;
    v23[4] = v25;
    OUTLINED_FUNCTION_5_21(v23);
    OUTLINED_FUNCTION_49_1(COERCE_DOUBLE(1107296256));
    v54 = v27;
    v55 = &block_descriptor_6_3;
    v28 = _Block_copy(aBlock);
    v29 = v26;

    sub_2749FCA94();
    aBlock[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_4_28();
    sub_274720F00(v30, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
    sub_27473FCD0();
    OUTLINED_FUNCTION_9_21();
    v32 = v47;
    MEMORY[0x277C5F120](v22, v13, v8, v28);
    _Block_release(v28);

    (*(v50 + 8))(v8, v3);
    (*(v51 + 8))(v13, v52);
    v48(v22, v14);
  }

  else
  {
    v48 = v13;
    if (OUTLINED_FUNCTION_14_14())
    {
      sub_27471CF08(0, &qword_28159E4E0);
      v46 = sub_2749FD404();
      sub_2749FCAB4();
      v45 = v22;
      sub_2749FCB14();
      v47 = *(v16 + 8);
      v47(v20, v14);
      v33 = swift_allocObject();
      v34 = v49;
      v33[2] = v49;
      v33[3] = countAndFlagsBits;
      v33[4] = object;
      OUTLINED_FUNCTION_5_21(v33);
      OUTLINED_FUNCTION_49_1(COERCE_DOUBLE(1107296256));
      v54 = v35;
      v55 = &block_descriptor_31;
      v36 = _Block_copy(aBlock);
      v37 = v50;
      v38 = v36;
      v39 = v34;

      v40 = v48;
      sub_2749FCA94();
      aBlock[0] = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_4_28();
      sub_274720F00(v41, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
      sub_27473FCD0();
      OUTLINED_FUNCTION_9_21();
      v44 = v45;
      v43 = v46;
      MEMORY[0x277C5F120](v45, v40, v8, v38);
      _Block_release(v38);

      (*(v37 + 8))(v8, v3);
      (*(v51 + 8))(v40, v52);
      v47(v44, v14);
    }
  }
}

id sub_2748B8D4C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2748B8D9C(uint64_t a1, void *a2)
{
  sub_27471CF08(0, &qword_280968428);
  v4 = sub_2749FCF74();

  v5 = [v2 initWithBarButtonItems:v4 representativeItem:a2];

  return v5;
}

void sub_2748B8E38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();
  [a3 setTitle_];
}

void sub_2748B8EB4(uint64_t a1, void *a2)
{
  sub_27471CF08(0, &qword_280968428);
  v3 = sub_2749FCF74();

  [a2 setRightBarButtonItems_];
}

char *sub_2748B8F60(void *a1, char a2, uint64_t a3)
{
  *(a3 + OBJC_IVAR___WFPreviewNavigationController_iconTitleSpacing) = 0x4014000000000000;
  v6 = a3 + OBJC_IVAR___WFPreviewNavigationController____lazy_storage___previewScale;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = OBJC_IVAR___WFPreviewNavigationController_navigationBarBackgroundView;
  type metadata accessor for WFPickerNavigationBarBackgroundView();
  *(a3 + v7) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR___WFPreviewNavigationController_navigationButtons;
  *(a3 + v8) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  *(a3 + OBJC_IVAR___WFPreviewNavigationController_visualEffectView) = 0;
  v9 = OBJC_IVAR___WFPreviewNavigationController_titleLabel;
  *(a3 + v9) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = OBJC_IVAR___WFPreviewNavigationController_grabberView;
  *(a3 + v10) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(a3 + OBJC_IVAR___WFPreviewNavigationController_rootViewController) = a1;
  v11 = a1;
  v12 = [v11 iconPreview];
  *(a3 + OBJC_IVAR___WFPreviewNavigationController_iconPreview) = v12;
  *(a3 + OBJC_IVAR___WFPreviewNavigationController_isInSheetView) = a2;
  v13 = 0.0;
  if (a2)
  {
    v13 = 13.0;
  }

  *(a3 + OBJC_IVAR___WFPreviewNavigationController_grabberWithTopPaddingHeight) = v13;
  *(a3 + OBJC_IVAR___WFPreviewNavigationController_previewPadding) = 0x403E000000000000;
  v14 = OBJC_IVAR___WFPreviewNavigationController_navigationBarHeight;
  if (a2)
  {
    *(a3 + OBJC_IVAR___WFPreviewNavigationController_navigationBarHeight) = 0x4054000000000000;
    [v11 previewDimension];
    v16 = v15;

    v17 = v16 + 60.0 + 6.5;
  }

  else
  {
    *(a3 + OBJC_IVAR___WFPreviewNavigationController_navigationBarHeight) = 0x4053000000000000;
    [v11 previewDimension];
    v19 = v18;

    v17 = v19 + 60.0;
  }

  *(a3 + OBJC_IVAR___WFPreviewNavigationController_additionContainedScrollViewTopInset) = v17 - *(a3 + v14);
  v24 = type metadata accessor for WFPreviewNavigationController();
  OUTLINED_FUNCTION_24();
  v22 = objc_msgSendSuper2(v20, v21, a3, v24);
  [*&v22[OBJC_IVAR___WFPreviewNavigationController_rootViewController] setPreviewNavigationController_];
  return v22;
}

char *sub_2748B91A0(void *a1, char a2, char *a3)
{
  v6 = objc_allocWithZone(type metadata accessor for InspectorPaneSegmentedControlHostingView());
  *&a3[OBJC_IVAR____TtC10WorkflowUIP33_E347E1AA1954460EC7F8E0E5C834597928DrawerNavigationBarTitleView_hostingView] = sub_2748DDA58(a1, a2, v6);
  v27.receiver = a3;
  v27.super_class = type metadata accessor for DrawerNavigationBarTitleView();
  v7 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v7 setHideStandardTitle_];
  [v7 setPreferredContentAlignment_];
  v8 = OBJC_IVAR____TtC10WorkflowUIP33_E347E1AA1954460EC7F8E0E5C834597928DrawerNavigationBarTitleView_hostingView;
  v9 = *&v7[OBJC_IVAR____TtC10WorkflowUIP33_E347E1AA1954460EC7F8E0E5C834597928DrawerNavigationBarTitleView_hostingView];
  v10 = v7;
  [v10 addSubview_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v7[v8] setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_274A108E0;
  v13 = [*&v7[v8] centerXAnchor];
  v14 = [v10 centerXAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v12 + 32) = v15;
  v16 = [*&v7[v8] centerYAnchor];
  v17 = [v10 centerYAnchor];

  v18 = [v16 constraintEqualToAnchor_];
  *(v12 + 40) = v18;
  v19 = [*&v7[v8] widthAnchor];
  v20 = [v10 widthAnchor];

  v21 = [v19 constraintEqualToAnchor_];
  *(v12 + 48) = v21;
  v22 = [*&v7[v8] heightAnchor];
  v23 = [v10 heightAnchor];

  v24 = [v22 constraintEqualToAnchor_];
  *(v12 + 56) = v24;
  sub_27471CF08(0, &qword_280968040);
  v25 = sub_2749FCF74();

  [v11 activateConstraints_];

  return v10;
}

uint64_t sub_2748B94D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_10()
{

  v1 = OUTLINED_FUNCTION_3_32();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t objectdestroy_27Tm()
{

  v1 = OUTLINED_FUNCTION_3_32();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void *sub_2748B9628()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_2748B9708()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v5 = sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = v0 + *(type metadata accessor for ShortcutP2PFileImportView() + 32);
  v13 = *v12;
  if (v12[8] == 1)
  {
    swift_unknownObjectRetain();
    if (!v13)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_2749FD2D4();
  v14 = sub_2749FBC14();
  sub_2749FA424();

  sub_2749FB4B4();
  swift_getAtKeyPath();
  sub_274877EBC(v13, 0);
  (*(v7 + 8))(v11, v5);
  v13 = v19;
  if (v19)
  {
LABEL_5:
    v15 = *v0;
    v16 = [objc_opt_self() defaultDatabase];
    v17 = [v15 record];
    v18 = [objc_allocWithZone(MEMORY[0x277D7CA68]) initWithRecord_];

    sub_2747D4BAC(v13, v4, v2);

    swift_unknownObjectRelease();
  }

LABEL_6:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_2748B9918(void (*a1)(void *, uint64_t), uint64_t a2)
{
  v5 = sub_2749FB4C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(type metadata accessor for ShortcutNotarizedFileImportView() + 48);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    result = swift_unknownObjectRetain();
    if (!v10)
    {
      return result;
    }
  }

  else
  {

    sub_2749FD2D4();
    v12 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_274877EBC(v10, 0);
    result = (*(v6 + 8))(v8, v5);
    v10 = v19;
    if (!v19)
    {
      return result;
    }
  }

  v13 = *v2;
  if ((*(v2 + 8) - 1) >= 3)
  {
    v14 = -1;
  }

  else
  {
    v14 = *(v2 + 8) + 6;
  }

  v15 = [objc_opt_self() defaultDatabase];
  v16 = [v13 record];
  v17 = [objc_allocWithZone(MEMORY[0x277D7CA68]) initWithRecord_];

  v19 = v17;
  v20 = v15;
  v21 = v14;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v25 = 0;
  sub_2747D4BAC(v10, a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_2748B9B64()
{
  OUTLINED_FUNCTION_17_19();
  v1 = sub_2749FAF84();
  v2 = OUTLINED_FUNCTION_34(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  v0(v5);
  MEMORY[0x277C5E410](v3);
  sub_2749FAF74();
  sub_2749FC6C4();
  return sub_27472ECBC(v7, &qword_28096B2A0);
}

uint64_t sub_2748B9C68(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  a3();
  v8 = type metadata accessor for ShortcutP2PFileImportView();
  return (*(a5 + *(v8 + 28)))(a1, a2 & 1);
}

uint64_t sub_2748B9CC8(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  a3();
  v8 = type metadata accessor for ShortcutNotarizedFileImportView();
  return (*(a5 + *(v8 + 40)))(a1, a2 & 1);
}

void ShortcutNotarizedFileImportView.init(workflow:extractResult:completion:)()
{
  OUTLINED_FUNCTION_48();
  v50 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_2749F90F4();
  OUTLINED_FUNCTION_43();
  v49 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v48 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D2F0);
  v15 = OUTLINED_FUNCTION_34(v14);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v48 - v19;
  v21 = type metadata accessor for ShortcutNotarizedFileImportView();
  v22 = v21[11];
  *(v8 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  swift_storeEnumTagMultiPayload();
  v23 = v8 + v21[12];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = v21[13];
  *(v8 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D770);
  swift_storeEnumTagMultiPayload();
  v51 = 0;
  OUTLINED_FUNCTION_19_15();
  OUTLINED_FUNCTION_18_2();
  v51 = 0;
  OUTLINED_FUNCTION_19_15();
  OUTLINED_FUNCTION_18_2();
  v51 = 0;
  OUTLINED_FUNCTION_19_15();
  OUTLINED_FUNCTION_18_2();
  *v8 = v6;
  v25 = v6;
  v8[1] = [v4 fileContentType];
  v8[2] = sub_2747DDFD4(v4, &selRef_iCloudIdentifier);
  v8[3] = v26;
  v27 = [v4 sharedDate];
  if (v27)
  {
    v28 = v27;
    sub_2749F90D4();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  __swift_storeEnumTagSinglePayload(v20, v29, 1, v9);
  v30 = v21[7];
  sub_2747D31F8(v20, v8 + v30, &unk_28096D2F0);
  v31 = (v8 + v21[10]);
  v32 = v50;
  *v31 = v2;
  v31[1] = v32;
  v33 = sub_2747DDFD4(v25, &selRef_name);
  v35 = v34;

  if (!v35)
  {
    v36 = [objc_opt_self() defaultName];
    v33 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v35 = v37;
  }

  v38 = (v8 + v21[8]);
  *v38 = v33;
  v38[1] = v35;
  sub_27473ADB8(v8 + v30, v18, &unk_28096D2F0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v9) == 1)
  {

    v39 = 0;
    v40 = 0;
  }

  else
  {
    v41 = v48;
    v42 = v49;
    (*(v49 + 32))(v48, v18, v9);
    v43 = objc_opt_self();
    v44 = sub_2749F90B4();
    v45 = [v43 localizedStringFromDate:v44 dateStyle:2 timeStyle:0];

    v39 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v40 = v46;

    (*(v42 + 8))(v41, v9);
  }

  v47 = (v8 + v21[9]);
  *v47 = v39;
  v47[1] = v40;
  OUTLINED_FUNCTION_46();
}

uint64_t type metadata accessor for ShortcutNotarizedFileImportView()
{
  result = qword_28096D7F8;
  if (!qword_28096D7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2748BA160()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v4 = sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_21_16();
  v12 = type metadata accessor for ShortcutNotarizedFileImportView();
  sub_27473ADB8(v0 + *(v12 + 44), v1, &qword_28096BF50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2747D31F8(v1, v3, &qword_28096B2A0);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    (*(v6 + 8))(v10, v4);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_2748BA30C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D770);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ShortcutNotarizedFileImportView();
  sub_27473ADB8(v1 + *(v10 + 52), v9, &qword_28096D770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2747D31F8(v9, a1, &qword_28096DDE0);
  }

  sub_2749FD2D4();
  v12 = sub_2749FBC14();
  sub_2749FA424();

  sub_2749FB4B4();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

void ShortcutNotarizedFileImportView.body.getter()
{
  OUTLINED_FUNCTION_48();
  v44 = v0;
  v53 = v1;
  v2 = type metadata accessor for ShortcutNotarizedFileImportView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v47 = v5;
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D778);
  OUTLINED_FUNCTION_43();
  v49 = v7;
  v50 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = v40 - v10;
  v42 = v40 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D780);
  OUTLINED_FUNCTION_43();
  v51 = v12;
  v52 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  v54 = v40 - v15;
  sub_2748BAA3C(v11);
  OUTLINED_FUNCTION_24_13((v0 + *(v3 + 64)));
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5E4();
  v40[1] = v55;
  v40[4] = v56;
  v41 = v57;
  v40[2] = v6;
  v43 = type metadata accessor for ShortcutNotarizedFileImportView;
  sub_2748C0DA8();
  v16 = *(v4 + 80);
  v45 = (v16 + 16) & ~v16;
  v46 = v16;
  swift_allocObject();
  sub_2748C0E54();
  v17 = type metadata accessor for GalleryShortcutActionsView();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D788);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D790);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D798);
  v21 = type metadata accessor for ReportShortcutView(255);
  v22 = sub_2748BF974();
  OUTLINED_FUNCTION_3_39();
  v25 = sub_2748C0D60(v23, v24);
  v55 = v20;
  v56 = v21;
  v57 = v22;
  v58 = v25;
  OUTLINED_FUNCTION_9_22();
  v40[3] = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_2_31();
  v29 = sub_27472AB6C(v28, &qword_28096D790);
  v55 = v18;
  v56 = v19;
  v57 = OpaqueTypeConformance2;
  v58 = v29;
  OUTLINED_FUNCTION_8_24();
  v30 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_7_22();
  v33 = sub_2748C0D60(v31, v32);
  v34 = v49;
  v35 = v42;
  sub_2749FC274();

  (*(v50 + 8))(v35, v34);
  OUTLINED_FUNCTION_24_13((v44 + *(v3 + 68)));
  sub_2749FC5E4();
  LODWORD(v50) = v57;
  sub_2748C0DA8();
  swift_allocObject();
  sub_2748C0E54();
  type metadata accessor for GalleryImportView();
  v55 = v34;
  v56 = v17;
  v57 = v30;
  v58 = v33;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_10_26();
  sub_2748C0D60(v36, v37);
  v38 = v54;
  v39 = v51;
  sub_2749FC274();

  (*(v52 + 8))(v38, v39);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_2748BAA3C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v74 = a1;
  v66 = type metadata accessor for ShortcutNotarizedFileImportView();
  OUTLINED_FUNCTION_43();
  v69 = v4;
  MEMORY[0x28223BE20](v5);
  v70 = v6;
  v71 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DDE0);
  OUTLINED_FUNCTION_34(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21_16();
  v9 = sub_2749FB924();
  OUTLINED_FUNCTION_43();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D7C0) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D7B0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  v22 = &v65 - v21;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D798);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  v25 = &v65 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D788);
  OUTLINED_FUNCTION_43();
  v72 = v27;
  v73 = v26;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  v68 = &v65 - v29;
  *v19 = sub_2749FB634();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D858);
  sub_2748BB4BC(v3, &v19[*(v30 + 44)]);
  v31 = sub_2749FBC54();
  sub_2749FA9E4();
  v32 = &v19[*(v16 + 44)];
  *v32 = v31;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  v37 = sub_2749FBC84();
  v75 = v3;
  sub_2748BA30C(v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
  {
    (*(v11 + 104))(v15, *MEMORY[0x277CE0558], v9);
    if (__swift_getEnumTagSinglePayload(v2, 1, v9) != 1)
    {
      sub_27472ECBC(v2, &qword_28096DDE0);
    }
  }

  else
  {
    (*(v11 + 32))(v15, v2, v9);
  }

  sub_2748A0E0C();
  (*(v11 + 8))(v15, v9);
  sub_2749FA9E4();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_2747D31F8(v19, v22, &qword_28096D7C0);
  v46 = &v22[*(v65 + 36)];
  *v46 = v37;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  v47 = [objc_opt_self() systemGroupedBackgroundColor];
  v48 = sub_2749FC3E4();
  v49 = sub_2749FBC64();
  sub_2747D31F8(v22, v25, &qword_28096D7B0);
  v50 = v67;
  v51 = &v25[*(v67 + 36)];
  *v51 = v48;
  v51[8] = v49;
  v52 = v75 + *(v66 + 64);
  v53 = *v52;
  v54 = *(v52 + 1);
  v80 = v53;
  v81 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5E4();
  sub_2748C0DA8();
  swift_allocObject();
  sub_2748C0E54();
  v55 = type metadata accessor for ReportShortcutView(0);
  v56 = sub_2748BF974();
  OUTLINED_FUNCTION_3_39();
  v59 = sub_2748C0D60(v57, v58);
  v60 = v68;
  sub_2749FC274();

  v61 = sub_27472ECBC(v25, &qword_28096D798);
  MEMORY[0x28223BE20](v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D790);
  v76 = v50;
  v77 = v55;
  v78 = v56;
  v79 = v59;
  OUTLINED_FUNCTION_9_22();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_2_31();
  sub_27472AB6C(v62, &qword_28096D790);
  v63 = v73;
  sub_2749FC2C4();
  return (*(v72 + 8))(v60, v63);
}

id sub_2748BB108@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v3 = *(type metadata accessor for GalleryShortcutActionsView() + 20);
  *(a2 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  swift_storeEnumTagMultiPayload();
  *a2 = v5;

  return v5;
}

id sub_2748BB190@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ShortcutNotarizedFileImportView() - 8;
  MEMORY[0x28223BE20](v4);
  v8 = *a1;
  sub_2748C0DA8();
  v5 = swift_allocObject();
  sub_2748C0E54();
  v6 = *(type metadata accessor for GalleryImportView() + 32);
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  swift_storeEnumTagMultiPayload();
  a2[4] = 0;
  a2[5] = 0;
  a2[2] = v5;
  a2[3] = 0;
  *a2 = v8;
  a2[1] = sub_2748BFE3C;

  return v8;
}

uint64_t sub_2748BB30C()
{
  v0 = type metadata accessor for ShortcutNotarizedFileImportView();
  v1 = MEMORY[0x28223BE20](v0 - 8);
  MEMORY[0x28223BE20](v1);
  sub_2748C0DA8();
  v2 = swift_allocObject();
  sub_2748C0E54();
  sub_2748C0DA8();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2748BFE54;
  *(v3 + 24) = v2;
  sub_2748C0E54();

  sub_2748B9918(sub_2748BFE58, v3);
}

uint64_t sub_2748BB4BC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a1;
  v148 = a2;
  v142 = sub_2749FBAE4();
  v140 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v139 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ShortcutNotarizedFileImportView();
  v132 = *(v4 - 8);
  v5 = v4 - 8;
  *&v123 = v4 - 8;
  MEMORY[0x28223BE20](v4 - 8);
  v133 = v6;
  v134 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D868);
  v136 = *(v7 - 8);
  v137 = v7;
  MEMORY[0x28223BE20](v7);
  v135 = &v115 - v8;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D870);
  v9 = MEMORY[0x28223BE20](v138);
  v147 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v145 = &v115 - v11;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096ECE0);
  v12 = MEMORY[0x28223BE20](v125);
  v146 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v143 = (&v115 - v14);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D880);
  v15 = MEMORY[0x28223BE20](v124);
  v144 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v141 = (&v115 - v17);
  v18 = (a1 + *(v5 + 40));
  v19 = v18[1];
  *&__dst[0] = *v18;
  *(&__dst[0] + 1) = v19;
  v20 = sub_27475D0D0();

  v122 = v20;
  v21 = sub_2749FBEE4();
  v23 = v22;
  v25 = v24;
  sub_2749FBD14();
  v26 = sub_2749FBEC4();
  v28 = v27;
  v30 = v29;

  v31 = v25 & 1;
  v32 = v116;
  sub_27477656C(v21, v23, v31);

  v33 = sub_2749FBEB4();
  v130 = v34;
  v131 = v33;
  LOBYTE(v20) = v35;
  v129 = v36;
  sub_27477656C(v26, v28, v30 & 1);

  KeyPath = swift_getKeyPath();
  v127 = sub_2749FBC84();
  sub_2749FA9E4();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v126 = v20 & 1;
  LOBYTE(__dst[0]) = v20 & 1;
  LOBYTE(v154[0]) = 0;
  v45 = (v32 + *(v123 + 44));
  v46 = v45[1];
  if (v46)
  {
    v47 = *v45;

    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v48 = qword_28159E448;
    v49 = sub_2749FCD64();
    v50 = sub_2749FCD64();

    v51 = [v48 localizedStringForKey:v49 value:v50 table:0];

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_274A0EF10;
    *(v52 + 56) = MEMORY[0x277D837D0];
    *(v52 + 64) = sub_27475C4F4();
    *(v52 + 32) = v47;
    *(v52 + 40) = v46;
    v53 = sub_2749FCD74();
    v55 = v54;

    *&__dst[0] = v53;
    *(&__dst[0] + 1) = v55;
    v56 = sub_2749FBEE4();
    v58 = v57;
    LOBYTE(v49) = v59;
    v61 = v60;
    v62 = swift_getKeyPath();
    v63 = sub_2749FC4A4();
    v64 = swift_getKeyPath();
    LOBYTE(v49) = v49 & 1;
    LOBYTE(__dst[0]) = v49;
    v65 = swift_getKeyPath();
    v156[0] = 0;
    v154[0] = v56;
    v154[1] = v58;
    LOBYTE(v154[2]) = v49;
    v154[3] = v61;
    v154[4] = v62;
    LOBYTE(v154[5]) = 1;
    v154[6] = v64;
    v154[7] = v63;
    v154[8] = v65;
    v154[9] = 0;
    LOBYTE(v154[10]) = 1;
    *(&v154[10] + 1) = 256;
    BYTE3(v154[10]) = 0;
  }

  else
  {
    v66 = sub_2748BFFA0([*v32 record]);
    if (!v67)
    {
      v122 = 0;
      v118 = 0;
      v123 = 0u;
      v117 = -16777216;
      v120 = 0u;
      v121 = 0u;
      v119 = 0u;
      goto LABEL_8;
    }

    *&__dst[0] = v66;
    *(&__dst[0] + 1) = v67;
    v68 = sub_2749FBEE4();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v75 = swift_getKeyPath();
    v76 = sub_2749FC4A4();
    v77 = swift_getKeyPath();
    v72 &= 1u;
    LOBYTE(__dst[0]) = v72;
    v78 = swift_getKeyPath();
    v156[0] = 1;
    v154[0] = v68;
    v154[1] = v70;
    LOBYTE(v154[2]) = v72;
    v154[3] = v74;
    v154[4] = v75;
    LOBYTE(v154[5]) = 1;
    v154[6] = v77;
    v154[7] = v76;
    v154[8] = v78;
    v154[9] = 0;
    LOBYTE(v154[10]) = 1;
    *(&v154[10] + 1) = 256;
    BYTE3(v154[10]) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D918);
  sub_2748C02B0();
  sub_2749FB7B4();
  v123 = __dst[0];
  v119 = __dst[3];
  v120 = __dst[2];
  v121 = __dst[1];
  v118 = *(&__dst[4] + 1);
  v122 = *&__dst[4];
  v117 = __dst[5];
LABEL_8:
  v79 = sub_2749FB524();
  v80 = v141;
  *v141 = v79;
  *(v80 + 8) = 0;
  *(v80 + 16) = 1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096E030);
  sub_2748BC180(v32, (v80 + *(v81 + 44)));
  v82 = sub_2749FBC74();
  sub_2749FA9E4();
  v83 = v80 + *(v124 + 36);
  *v83 = v82;
  *(v83 + 8) = v84;
  *(v83 + 16) = v85;
  *(v83 + 24) = v86;
  *(v83 + 32) = v87;
  *(v83 + 40) = 0;
  v88 = sub_2749FB644();
  v89 = v143;
  *v143 = v88;
  *(v89 + 8) = 0;
  *(v89 + 16) = 0;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D890);
  sub_2748BC954(v32, v89 + *(v90 + 44));
  v91 = sub_2749FBC84();
  sub_2749FA9E4();
  v92 = v89 + *(v125 + 36);
  *v92 = v91;
  *(v92 + 8) = v93;
  *(v92 + 16) = v94;
  *(v92 + 24) = v95;
  *(v92 + 32) = v96;
  *(v92 + 40) = 0;
  sub_2748C0DA8();
  swift_allocObject();
  v97 = sub_2748C0E54();
  MEMORY[0x28223BE20](v97);
  *(&v115 - 2) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DEB0);
  sub_2748C0030();
  v98 = v135;
  sub_2749FC624();
  v99 = v139;
  sub_2749FBAD4();
  sub_27472AB6C(&unk_28096DF00, &qword_28096D868);
  sub_2748C0D60(&qword_28096D440, MEMORY[0x277CDE400]);
  v100 = v145;
  v101 = v137;
  v102 = v142;
  sub_2749FBFC4();
  (*(v140 + 8))(v99, v102);
  (*(v136 + 8))(v98, v101);
  v103 = sub_2749FC434();
  v104 = swift_getKeyPath();
  *&__dst[0] = v103;
  v105 = sub_2749FABC4();
  v106 = (v100 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DF10) + 36));
  *v106 = v104;
  v106[1] = v105;
  v107 = (v100 + *(v138 + 36));
  v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D900) + 28);
  v109 = *MEMORY[0x277CDF420];
  v110 = sub_2749FAAA4();
  (*(*(v110 - 8) + 104))(v107 + v108, v109, v110);
  *v107 = swift_getKeyPath();
  v154[0] = v131;
  v154[1] = v130;
  LOBYTE(v154[2]) = v126;
  v154[3] = v129;
  v154[4] = KeyPath;
  LOBYTE(v154[5]) = 1;
  LOBYTE(v154[6]) = v127;
  v154[7] = v38;
  v154[8] = v40;
  v154[9] = v42;
  v154[10] = v44;
  LOBYTE(v154[11]) = 0;
  *v153 = v123;
  *&v153[16] = v121;
  *&v153[32] = v120;
  *&v153[48] = v119;
  *&v153[64] = v122;
  *&v153[72] = v118;
  *&v153[80] = v117;
  v155[0] = v154;
  v155[1] = v153;
  v151 = 0;
  v152 = 1;
  v155[2] = &v151;
  v111 = v144;
  sub_27473ADB8(v80, v144, &unk_28096D880);
  v149 = 0;
  v150 = 1;
  v155[3] = v111;
  v155[4] = &v149;
  v112 = v146;
  sub_27473ADB8(v89, v146, &unk_28096ECE0);
  v155[5] = v112;
  v113 = v147;
  sub_27473ADB8(v100, v147, &unk_28096D870);
  v155[6] = v113;
  sub_2748E8F10(v155, v148);
  sub_27472ECBC(v100, &unk_28096D870);
  sub_27472ECBC(v89, &unk_28096ECE0);
  sub_27472ECBC(v80, &unk_28096D880);
  sub_27472ECBC(v113, &unk_28096D870);
  sub_27472ECBC(v112, &unk_28096ECE0);
  sub_27472ECBC(v111, &unk_28096D880);
  memcpy(v156, v153, 0x54uLL);
  sub_27472ECBC(v156, &unk_28096D908);
  memcpy(__dst, v154, 0x59uLL);
  return sub_27472ECBC(__dst, &qword_28096C180);
}

uint64_t sub_2748BC180@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for ShortcutNotarizedFileImportView();
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v5 = type metadata accessor for ShortcutChiclet(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v52 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DA50);
  v10 = MEMORY[0x28223BE20](v55);
  v58 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v52 - v13;
  MEMORY[0x28223BE20](v12);
  v57 = &v52 - v15;
  v16 = (a1 + *(v4 + 40));
  v17 = v16[1];
  v54 = *v16;
  v18 = *a1;

  v19 = [v18 icon];
  v65[3] = sub_27471CF08(0, &qword_28159E520);
  v65[4] = &protocol witness table for WFWorkflowIcon;
  v65[0] = v19;
  v20 = [v18 associatedAppBundleIdentifier];
  if (v20)
  {
    v21 = v20;
    v53 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v52 = v22;
  }

  else
  {
    v53 = 0;
    v52 = 0;
  }

  v64 = 7;
  sub_2748C0DA8();
  v23 = swift_allocObject();
  sub_2748C0E54();
  v60 = xmmword_274A17800;
  v61 = xmmword_274A17810;
  __asm { FMOV            V1.2D, #22.0 }

  v62 = xmmword_274A17820;
  v63 = _Q1;
  type metadata accessor for ShortcutChiclet.Model(0);
  swift_allocObject();
  ShortcutChiclet.Model.init(metrics:isSelected:isHovered:isEditing:isGallery:isGalleryDetail:isAddedToLibrary:isDownloading:buttonType:buttonAction:)(&v60, 0, 0, 0, 0, 1, 0, 0, &v64, sub_2748C0C7C, v23);
  *(v8 + 16) = swift_getKeyPath();
  v8[136] = 0;
  *(v8 + 18) = swift_getKeyPath();
  v8[152] = 0;
  v29 = v5[15];
  *&v8[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  swift_storeEnumTagMultiPayload();
  v30 = v5[16];
  *&v8[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60);
  swift_storeEnumTagMultiPayload();
  v31 = &v8[v5[17]];
  LOBYTE(v64) = 0;
  sub_2749FC5B4();
  v32 = *(&v60 + 1);
  *v31 = v60;
  *(v31 + 1) = v32;
  v33 = &v8[v5[18]];
  LOBYTE(v64) = 0;
  sub_2749FC5B4();
  v34 = *(&v60 + 1);
  *v33 = v60;
  *(v33 + 1) = v34;
  v35 = &v8[v5[19]];
  v36 = &v8[v5[20]];
  v37 = &v8[v5[21]];
  *v8 = v54;
  *(v8 + 1) = v17;
  sub_2748C0D00(v65, (v8 + 16));
  v38 = [objc_opt_self() whiteColor];
  v8[89] = 1;
  v39 = v53;
  *(v8 + 7) = v38;
  *(v8 + 8) = v39;
  *(v8 + 9) = v52;
  *(v8 + 10) = 0;
  sub_2748C0D60(&qword_2815A0440, type metadata accessor for ShortcutChiclet.Model);

  *(v8 + 12) = sub_2749FAD84();
  *(v8 + 13) = v40;
  type metadata accessor for ShortcutChiclet.Progress(0);
  swift_allocObject();
  ShortcutChiclet.Progress.init()();
  sub_2748C0D60(&qword_2815A0130, type metadata accessor for ShortcutChiclet.Progress);
  v41 = sub_2749FAD84();
  v43 = v42;

  *(v8 + 14) = v41;
  *(v8 + 15) = v43;
  *v35 = 0;
  *(v35 + 1) = 0;
  *v36 = 0;
  *(v36 + 1) = 0;
  *v37 = 0;
  *(v37 + 1) = 0;
  v8[88] = 0;
  sub_2748C0DA8();
  __swift_destroy_boxed_opaque_existential_0(v65);
  sub_2748C0DFC(v8, type metadata accessor for ShortcutChiclet);
  if (qword_280966C30 != -1)
  {
    swift_once();
  }

  sub_2749FC914();
  sub_2749FABB4();
  sub_2748C0E54();
  v44 = &v14[*(v55 + 36)];
  v45 = v61;
  *v44 = v60;
  *(v44 + 1) = v45;
  *(v44 + 2) = v62;
  v46 = v57;
  sub_2747D31F8(v14, v57, &unk_28096DA50);
  v47 = v58;
  sub_27473ADB8(v46, v58, &unk_28096DA50);
  v48 = v59;
  *v59 = 0;
  *(v48 + 8) = 1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA68);
  sub_27473ADB8(v47, v48 + *(v49 + 48), &unk_28096DA50);
  v50 = v48 + *(v49 + 64);
  *v50 = 0;
  v50[8] = 1;
  sub_27472ECBC(v46, &unk_28096DA50);
  return sub_27472ECBC(v47, &unk_28096DA50);
}

uint64_t sub_2748BC8A8()
{
  type metadata accessor for ShortcutNotarizedFileImportView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5C4();
  sub_2749FC5D4();
}

uint64_t sub_2748BC954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D990);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v108 = &v88 - v8;
  v97 = sub_2749FBA94();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v93 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D998);
  MEMORY[0x28223BE20](v89);
  v90 = (&v88 - v10);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D9A0);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v92 = &v88 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D9A8);
  MEMORY[0x28223BE20](v12);
  v91 = &v88 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D9B0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v107 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v88 - v17;
  v105 = sub_2749FB5D4();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D9B8);
  MEMORY[0x28223BE20](v19);
  v21 = &v88 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D9C0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v106 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v88 - v25;
  v27 = objc_opt_self();
  v28 = [v27 isSiriEnabled];
  v111 = v4;
  v110 = v7;
  v112 = v26;
  if (v28 && ([v27 isHeySiriEnabled] & 1) != 0 || (v29 = *(sub_2748BD598() + 16), , v29))
  {
    v98 = v27;
    v99 = v19;
    v100 = v12;
    v101 = a1;
    v102 = v3;
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v30 = qword_28159E448;
    v31 = sub_2749FCD64();
    v32 = sub_2749FCD64();

    v33 = [v30 localizedStringForKey:v31 value:v32 table:0];

    v34 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v36 = v35;

    __src[0] = v34;
    __src[1] = v36;
    sub_27475D0D0();
    v37 = sub_2749FBEE4();
    v39 = v38;
    LOBYTE(v36) = v40;
    sub_2749FBE04();
    v41 = sub_2749FBEC4();
    v43 = v42;
    v45 = v44;

    sub_27477656C(v37, v39, v36 & 1);

    sub_2749FC4A4();
    v46 = sub_2749FBE84();
    v48 = v47;
    LOBYTE(v39) = v49;
    v51 = v50;

    sub_27477656C(v41, v43, v45 & 1);

    __src[0] = v46;
    __src[1] = v48;
    LOBYTE(__src[2]) = v39 & 1;
    __src[3] = v51;
    v52 = v103;
    sub_2749FB5C4();
    sub_2749FC1D4();
    (*(v104 + 8))(v52, v105);
    sub_27477656C(v46, v48, v39 & 1);

    LOBYTE(v37) = sub_2749FBC94();
    sub_2749FA9E4();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v61 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D9C8) + 36)];
    *v61 = v37;
    *(v61 + 1) = v54;
    *(v61 + 2) = v56;
    *(v61 + 3) = v58;
    *(v61 + 4) = v60;
    v61[40] = 0;
    LOBYTE(v37) = sub_2749FBC84();
    sub_2749FA9E4();
    v19 = v99;
    v62 = &v21[*(v99 + 36)];
    *v62 = v37;
    *(v62 + 1) = v63;
    *(v62 + 2) = v64;
    *(v62 + 3) = v65;
    *(v62 + 4) = v66;
    v62[40] = 0;
    v26 = v112;
    sub_2747D31F8(v21, v112, &qword_28096D9B8);
    v67 = 0;
    v3 = v102;
    a1 = v101;
    v12 = v100;
    v27 = v98;
  }

  else
  {
    v67 = 1;
  }

  v68 = 1;
  __swift_storeEnumTagSinglePayload(v26, v67, 1, v19);
  if ([v27 isSiriEnabled] && objc_msgSend(v27, sel_isHeySiriEnabled))
  {
    v69 = sub_2749FB524();
    v70 = v90;
    *v90 = v69;
    *(v70 + 8) = 0;
    *(v70 + 16) = 0;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA18);
    sub_2748BD818(a1, v70 + *(v71 + 44));
    v72 = v93;
    sub_2749FBA74();
    sub_27472AB6C(&qword_28096DA20, &qword_28096D998);
    v73 = v92;
    sub_2749FC1A4();
    (*(v96 + 8))(v72, v97);
    sub_27472ECBC(v70, &qword_28096D998);
    sub_2749FC924();
    sub_2749FB004();
    v74 = v91;
    (*(v94 + 32))(v91, v73, v95);
    memcpy((v74 + *(v12 + 36)), __src, 0x70uLL);
    sub_2747D31F8(v74, v113, &qword_28096D9A8);
    v68 = 0;
  }

  v75 = v113;
  __swift_storeEnumTagSinglePayload(v113, v68, 1, v12);
  v114 = sub_2748BD598();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D9D8);
  sub_27472AB6C(&qword_28096D9E0, &qword_28096D9D0);
  sub_2748C07D8();
  sub_2748C0854();
  v76 = v108;
  sub_2749FC754();
  v77 = v106;
  sub_27473ADB8(v26, v106, &qword_28096D9C0);
  v78 = v75;
  v79 = v107;
  sub_27473ADB8(v78, v107, &qword_28096D9B0);
  v80 = v111;
  v81 = *(v111 + 16);
  v82 = v110;
  v81(v110, v76, v3);
  v83 = v3;
  v84 = v109;
  sub_27473ADB8(v77, v109, &qword_28096D9C0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA10);
  sub_27473ADB8(v79, v84 + *(v85 + 48), &qword_28096D9B0);
  v81((v84 + *(v85 + 64)), v82, v83);
  v86 = *(v80 + 8);
  v86(v76, v83);
  sub_27472ECBC(v113, &qword_28096D9B0);
  sub_27472ECBC(v112, &qword_28096D9C0);
  v86(v82, v83);
  sub_27472ECBC(v79, &qword_28096D9B0);
  return sub_27472ECBC(v77, &qword_28096D9C0);
}

uint64_t sub_2748BD598()
{
  v1 = [*v0 record];
  v2 = [v1 workflowTypes];

  type metadata accessor for WFWorkflowTypeName(0);
  v3 = sub_2749FCF84();

  v4 = sub_27479BCA0(v3);

  v6 = 0;
  v7 = *(v4 + 16);
  v8 = v4 + 32;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v7 == v6)
    {

      return v9;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    sub_2748C0D00(v8, &v25);
    __swift_project_boxed_opaque_existential_1(&v25, v26);
    sub_2749F9D54();
    if (v10 && (, __swift_project_boxed_opaque_existential_1(&v25, v26), (v11 = sub_2749F9D64()) != 0))
    {

      sub_2747A45FC(&v25, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27476DA58(0, *(v9 + 16) + 1, 1);
        v9 = v27;
      }

      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_27476DA58((v13 > 1), v14 + 1, 1);
      }

      v15 = v23;
      v16 = v24;
      v17 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      MEMORY[0x28223BE20](v17);
      v19 = &v22[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v20 + 16))(v19);
      sub_2748C0950(v14, v19, &v27, v15, v16);
      result = __swift_destroy_boxed_opaque_existential_0(v22);
      v9 = v27;
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_0(&v25);
    }

    v8 += 40;
    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2748BD818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v57 = a2;
  v2 = sub_2749FA2F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2749FA2C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA28);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v56 - v15;
  sub_27471CF08(0, &qword_28096BB10);
  sub_274903E28();
  (*(v7 + 104))(v9, *MEMORY[0x277D7D6A0], v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D7D6D0], v2);
  sub_2749FA314();
  v17 = sub_2749FBCC4();
  sub_2749FA9E4();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969E48) + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_2749FBCB4();
  sub_2749FA9E4();
  v28 = &v16[*(v11 + 44)];
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v33 = qword_28159E448;
  v34 = sub_2749FCD64();
  v35 = sub_2749FCD64();

  v36 = [v33 localizedStringForKey:v34 value:v35 table:{0, v56}];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_274A0EF10;
  v38 = objc_opt_self();
  type metadata accessor for ShortcutNotarizedFileImportView();
  v39 = sub_2749FCD64();
  v40 = [v38 localizedTriggerPhraseWithMessage_];

  v41 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v43 = v42;

  *(v37 + 56) = MEMORY[0x277D837D0];
  *(v37 + 64) = sub_27475C4F4();
  *(v37 + 32) = v41;
  *(v37 + 40) = v43;
  v44 = sub_2749FCD74();
  v46 = v45;

  v58 = v44;
  v59 = v46;
  sub_27475D0D0();
  v47 = sub_2749FBEE4();
  v49 = v48;
  LOBYTE(v46) = v50;
  v52 = v51;
  sub_27473ADB8(v16, v14, &qword_28096DA28);
  v53 = v57;
  sub_27473ADB8(v14, v57, &qword_28096DA28);
  v54 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DA30) + 48);
  *v54 = v47;
  *(v54 + 8) = v49;
  *(v54 + 16) = v46 & 1;
  *(v54 + 24) = v52;
  sub_274754DBC(v47, v49, v46 & 1);

  sub_27472ECBC(v16, &qword_28096DA28);
  sub_27477656C(v47, v49, v46 & 1);

  return sub_27472ECBC(v14, &qword_28096DA28);
}

uint64_t sub_2748BDD60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_2749F9D54();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *sub_2748BDDA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v17 = sub_2749FBA94();
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA00);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DFB0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  *v8 = sub_2749FB524();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DA40);
  sub_2748BE07C(a1, &v8[*(v13 + 44)]);
  sub_2749FBA74();
  sub_27472AB6C(&qword_28096DA08, &qword_28096DA00);
  sub_2749FC1A4();
  (*(v3 + 8))(v5, v17);
  sub_27472ECBC(v8, &qword_28096DA00);
  sub_2749FC924();
  sub_2749FB004();
  v14 = v18;
  (*(v10 + 32))(v18, v12, v9);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D9D8);
  return memcpy((v14 + *(v15 + 36)), __src, 0x70uLL);
}

uint64_t sub_2748BE07C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DFC0);
  MEMORY[0x28223BE20](v58);
  v57 = &v51 - v4;
  v5 = sub_2749FA2F4();
  v53 = *(v5 - 1);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2749FA2C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA28);
  v12 = MEMORY[0x28223BE20](v55);
  v56 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_2749F9D64();
  if (v16)
  {
    v17 = v16;
    v52 = a2;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v18 = sub_2749F9D54();
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      (*(v9 + 104))(v11, *MEMORY[0x277D7D6A0], v8);
      (*(v53 + 104))(v7, *MEMORY[0x277D7D6D0], v54);
      v54 = v17;
      sub_2749FA314();
      v22 = sub_2749FBCC4();
      sub_2749FA9E4();
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v31 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969E48) + 36)];
      *v31 = v22;
      *(v31 + 1) = v24;
      *(v31 + 2) = v26;
      *(v31 + 3) = v28;
      *(v31 + 4) = v30;
      v31[40] = 0;
      v32 = sub_2749FBCB4();
      sub_2749FA9E4();
      v33 = &v15[*(v55 + 36)];
      *v33 = v32;
      *(v33 + 1) = v34;
      *(v33 + 2) = v35;
      *(v33 + 3) = v36;
      *(v33 + 4) = v37;
      v33[40] = 0;
      v59 = v20;
      v60 = v21;
      sub_27475D0D0();
      v38 = sub_2749FBEE4();
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v45 = v56;
      sub_27473ADB8(v15, v56, &qword_28096DA28);
      v46 = v57;
      sub_27473ADB8(v45, v57, &qword_28096DA28);
      v47 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DA30) + 48);
      v42 &= 1u;
      sub_274754DBC(v38, v40, v42);

      *v47 = v38;
      *(v47 + 8) = v40;
      *(v47 + 16) = v42;
      *(v47 + 24) = v44;
      sub_27472ECBC(v15, &qword_28096DA28);
      sub_27477656C(v38, v40, v42);

      sub_27472ECBC(v45, &qword_28096DA28);
      v48 = v52;
      sub_2747D31F8(v46, v52, &unk_28096DFC0);
      return __swift_storeEnumTagSinglePayload(v48, 0, 1, v58);
    }

    a2 = v52;
  }

  v50 = v58;

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v50);
}

uint64_t sub_2748BE540(id *a1)
{
  v2 = type metadata accessor for ShortcutNotarizedFileImportView();
  v3 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v4 = [*a1 importQuestions];
  sub_27471CF08(0, &qword_28096EA30);
  v5 = sub_2749FCF84();

  v6 = sub_27472D918(v5);

  if (v6)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
    sub_2749FC5C4();
    sub_2749FC5D4();
  }

  else
  {
    sub_2748C0DA8();
    v7 = swift_allocObject();
    sub_2748C0E54();
    sub_2748C0DA8();
    v8 = swift_allocObject();
    *(v8 + 16) = sub_2748C0EA8;
    *(v8 + 24) = v7;
    sub_2748C0E54();

    sub_2748B9918(sub_2748C0EAC, v8);
  }
}

void *sub_2748BE7CC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &__src[-v5];
  v7 = sub_2749FBE14();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &__src[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D8B0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &__src[-v13];
  sub_2748BEA84(a1, &__src[-v13]);
  (*(v8 + 104))(v10, *MEMORY[0x277CE0AC0], v7);
  v15 = sub_2749FBD24();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v15);
  sub_2749FBD74();
  sub_27472ECBC(v6, &unk_28096C0A0);
  (*(v8 + 8))(v10, v7);
  sub_2749FBD54();
  v16 = sub_2749FBDA4();

  KeyPath = swift_getKeyPath();
  v18 = &v14[*(v12 + 44)];
  *v18 = KeyPath;
  v18[1] = v16;
  sub_2749FC914();
  sub_2749FB004();
  sub_2747D31F8(v14, a2, &unk_28096D8B0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DEB0);
  return memcpy((a2 + *(v19 + 36)), __src, 0x70uLL);
}

uint64_t sub_2748BEA84@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D980);
  MEMORY[0x28223BE20](v4);
  v6 = v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D8E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v32 - v9;
  v11 = [*a1 importQuestions];
  sub_27471CF08(0, &qword_28096EA30);
  v12 = sub_2749FCF84();

  v13 = sub_27472D918(v12);

  if (v13)
  {
    sub_2749FCE14();
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v14 = qword_28159E448;
    v15 = sub_2749FCD64();

    v16 = sub_2749FCD64();

    v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

    v18 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v20 = v19;

    v33 = v18;
    v34 = v20;
    sub_27475D0D0();
    *v6 = sub_2749FBEE4();
    *(v6 + 1) = v21;
    v6[16] = v22 & 1;
    *(v6 + 3) = v23;
    swift_storeEnumTagMultiPayload();
    sub_27472AB6C(&unk_28096DEF0, &unk_28096D8E0);
    return sub_2749FB7B4();
  }

  else
  {
    v32[1] = a2;
    sub_2749FCE14();
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v25 = qword_28159E448;
    v26 = sub_2749FCD64();

    v27 = sub_2749FCD64();

    v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

    v29 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v31 = v30;

    v33 = v29;
    v34 = v31;
    sub_27475D0D0();
    sub_2749FC594();
    (*(v8 + 16))(v6, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_27472AB6C(&unk_28096DEF0, &unk_28096D8E0);
    sub_2749FB7B4();
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_2748BEF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ShortcutNotarizedFileImportView();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = *a1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  sub_2748C0DA8();
  v8 = swift_allocObject();
  sub_2748C0E54();

  v9 = v5;
  return sub_274861808(v5, v6, v7, 1, sub_2748BFF38, v8, a2);
}

uint64_t sub_2748BF07C()
{
  type metadata accessor for ShortcutNotarizedFileImportView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  return sub_2749FC5D4();
}

uint64_t sub_2748BF0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D860);
  MEMORY[0x28223BE20](v17[0]);
  v4 = v17 - v3;
  v5 = sub_2749FB834();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B350);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  sub_2749FB814();
  v17[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CFC0);
  sub_27472AB6C(&unk_28096B360, &unk_28096CFC0);
  sub_2749FAB44();
  sub_2749FB804();
  v17[4] = a1;
  sub_2749FAB44();
  v13 = *(v17[0] + 48);
  v14 = *(v7 + 16);
  v14(v4, v12, v6);
  v14(&v4[v13], v10, v6);
  sub_2749FB694();
  v15 = *(v7 + 8);
  v15(v10, v6);
  return (v15)(v12, v6);
}

uint64_t sub_2748BF3AC()
{
  v0 = type metadata accessor for ShortcutNotarizedFileImportView();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2748C0DA8();
  swift_allocObject();
  sub_2748C0E54();
  return sub_2749FC624();
}

void sub_2748BF4F4(uint64_t a1)
{
  v2 = sub_2749FAF84();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0);
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - v4;
  v6 = type metadata accessor for ShortcutNotarizedFileImportView();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2748C0DA8();
  sub_2748BA160();
  MEMORY[0x277C5E410](v3);
  sub_2749FAF74();
  sub_2749FC6C4();
  sub_27472ECBC(v5, &qword_28096B2A0);
  sub_2748C0DFC(v9, type metadata accessor for ShortcutNotarizedFileImportView);
  v10 = *(a1 + *(v7 + 48));
  v11 = [objc_opt_self() userCancelledError];
  v10();
}

uint64_t sub_2748BF6D4()
{
  v0 = type metadata accessor for ShortcutNotarizedFileImportView();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v1 = qword_28159E448;
  v2 = sub_2749FCD64();
  v3 = sub_2749FCD64();

  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_2748C0DA8();
  swift_allocObject();
  sub_2748C0E54();
  sub_27475D0D0();
  return sub_2749FC644();
}

uint64_t sub_2748BF8DC()
{
  type metadata accessor for ShortcutNotarizedFileImportView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  return sub_2749FC5D4();
}

unint64_t sub_2748BF974()
{
  result = qword_28096D7A0;
  if (!qword_28096D7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D798);
    sub_2748BFA2C();
    sub_27472AB6C(&unk_28096BFB0, &qword_28096D7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D7A0);
  }

  return result;
}

unint64_t sub_2748BFA2C()
{
  result = qword_28096D7A8;
  if (!qword_28096D7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D7B0);
    sub_2748BFAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D7A8);
  }

  return result;
}

unint64_t sub_2748BFAB8()
{
  result = qword_28096D7B8;
  if (!qword_28096D7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D7C0);
    sub_27472AB6C(&qword_28096D7C8, &unk_28096D7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D7B8);
  }

  return result;
}

uint64_t sub_2748BFBA4(uint64_t a1)
{
  result = sub_2748C0D60(&qword_28096CA20, type metadata accessor for ShortcutNotarizedFileImportView);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2748BFC24()
{
  v0 = sub_27471CF08(319, &qword_28096BF80);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WFShortcutFileContentType(319);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_27472CC90(319, &qword_28096D810, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      v0 = v4;
      if (v5 <= 0x3F)
      {
        sub_2748A954C();
        if (v7 > 0x3F)
        {
          return v6;
        }

        else
        {
          v0 = sub_27478CEF4();
          if (v8 <= 0x3F)
          {
            sub_2747B70E4(319, &qword_28096D3A0, &qword_28096B2A0);
            v0 = v9;
            if (v10 <= 0x3F)
            {
              sub_2747B70E4(319, &unk_28096D390, &qword_28096BF90);
              v0 = v11;
              if (v12 <= 0x3F)
              {
                sub_2747B70E4(319, &qword_28096D830, &qword_28096DDE0);
                v0 = v13;
                if (v14 <= 0x3F)
                {
                  sub_27472CC90(319, &qword_28096D840, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                  v0 = v15;
                  if (v16 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_2748BFE74(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for ShortcutNotarizedFileImportView();
  OUTLINED_FUNCTION_34(v2);
  OUTLINED_FUNCTION_11_1();

  return a1(v1 + v3);
}

uint64_t sub_2748BFF38()
{
  v0 = type metadata accessor for ShortcutNotarizedFileImportView();
  OUTLINED_FUNCTION_34(v0);
  OUTLINED_FUNCTION_11_1();

  return sub_2748BF07C();
}

uint64_t sub_2748BFFA0(void *a1)
{
  v2 = [a1 workflowSubtitle];

  if (!v2)
  {
    return 0;
  }

  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v3;
}

unint64_t sub_2748C0030()
{
  result = qword_28096D8A0;
  if (!qword_28096D8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096DEB0);
    sub_2748C00BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D8A0);
  }

  return result;
}

unint64_t sub_2748C00BC()
{
  result = qword_28096DEC0;
  if (!qword_28096DEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096D8B0);
    sub_2748C0174();
    sub_27472AB6C(&qword_28159E5C0, &unk_28096D8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096DEC0);
  }

  return result;
}

unint64_t sub_2748C0174()
{
  result = qword_28096DED0;
  if (!qword_28096DED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096D8C0);
    sub_2748C01F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096DED0);
  }

  return result;
}

unint64_t sub_2748C01F8()
{
  result = qword_28096DEE0;
  if (!qword_28096DEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096D8D0);
    sub_27472AB6C(&unk_28096DEF0, &unk_28096D8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096DEE0);
  }

  return result;
}

unint64_t sub_2748C02B0()
{
  result = qword_28096D920;
  if (!qword_28096D920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D918);
    sub_2748C033C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D920);
  }

  return result;
}

unint64_t sub_2748C033C()
{
  result = qword_28096E080;
  if (!qword_28096E080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096D930);
    sub_2748C03F4();
    sub_27472AB6C(&qword_28159E5A8, &unk_28096D970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E080);
  }

  return result;
}

unint64_t sub_2748C03F4()
{
  result = qword_28096E090;
  if (!qword_28096E090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096D940);
    sub_274776C14();
    sub_27472AB6C(&unk_28159E5B0, &unk_28096CFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E090);
  }

  return result;
}

uint64_t sub_2748C04AC()
{
  v0 = type metadata accessor for ShortcutNotarizedFileImportView();
  OUTLINED_FUNCTION_34(v0);
  OUTLINED_FUNCTION_11_1();
  return sub_2748B9B64();
}

uint64_t objectdestroy_31Tm()
{
  type metadata accessor for ShortcutNotarizedFileImportView();
  OUTLINED_FUNCTION_23();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);

  v7 = v1 + v4;

  v8 = sub_2749F90F4();
  if (!OUTLINED_FUNCTION_20_4(v8))
  {
    OUTLINED_FUNCTION_9_3();
    v9 = OUTLINED_FUNCTION_22_17();
    v10(v9);
  }

  OUTLINED_FUNCTION_6_26(v0[8]);

  OUTLINED_FUNCTION_6_26(v0[9]);

  OUTLINED_FUNCTION_6_26(v0[10]);

  v11 = v7 + v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0) + 32);
    sub_2749FAF84();
    OUTLINED_FUNCTION_9();
    (*(v14 + 8))(v11 + v13);
  }

  sub_274877EBC(*(v7 + v0[12]), *(v7 + v0[12] + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_2749FB924();
    if (!OUTLINED_FUNCTION_20_4(v15))
    {
      OUTLINED_FUNCTION_9_3();
      v16 = OUTLINED_FUNCTION_22_17();
      v17(v16);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_26(v0[14]);

  OUTLINED_FUNCTION_6_26(v0[15]);

  OUTLINED_FUNCTION_6_26(v0[16]);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_2748C0758(uint64_t a1, char a2)
{
  v5 = type metadata accessor for ShortcutNotarizedFileImportView();
  OUTLINED_FUNCTION_34(v5);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_2748B9CC8(a1, a2 & 1, v7, v8, v9);
}

unint64_t sub_2748C07D8()
{
  result = qword_28096D9E8;
  if (!qword_28096D9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D9E8);
  }

  return result;
}

unint64_t sub_2748C0854()
{
  result = qword_28096D9F8;
  if (!qword_28096D9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D9D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DA00);
    sub_27472AB6C(&qword_28096DA08, &qword_28096DA00);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D9F8);
  }

  return result;
}

uint64_t sub_2748C0950(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_2747A45FC(&v12, v10 + 40 * a1 + 32);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t objectdestroyTm_11()
{
  type metadata accessor for ShortcutNotarizedFileImportView();
  OUTLINED_FUNCTION_23();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;

  v8 = sub_2749F90F4();
  if (!OUTLINED_FUNCTION_20_4(v8))
  {
    OUTLINED_FUNCTION_9_3();
    v9 = OUTLINED_FUNCTION_22_17();
    v10(v9);
  }

  OUTLINED_FUNCTION_6_26(v0[8]);

  OUTLINED_FUNCTION_6_26(v0[9]);

  OUTLINED_FUNCTION_6_26(v0[10]);

  v11 = v7 + v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0) + 32);
    sub_2749FAF84();
    OUTLINED_FUNCTION_9();
    (*(v14 + 8))(v11 + v13);
  }

  sub_274877EBC(*(v7 + v0[12]), *(v7 + v0[12] + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_2749FB924();
    if (!OUTLINED_FUNCTION_20_4(v15))
    {
      OUTLINED_FUNCTION_9_3();
      v16 = OUTLINED_FUNCTION_22_17();
      v17(v16);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_26(v0[14]);

  OUTLINED_FUNCTION_6_26(v0[15]);

  OUTLINED_FUNCTION_6_26(v0[16]);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_2748C0C94(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for ShortcutNotarizedFileImportView();
  OUTLINED_FUNCTION_34(v2);
  OUTLINED_FUNCTION_11_1();

  return a1(v1 + v3);
}

uint64_t sub_2748C0D00(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_9_3();
  (*v3)(a2);
  return a2;
}

uint64_t sub_2748C0D60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2748C0DA8()
{
  v1 = OUTLINED_FUNCTION_17_19();
  v2(v1);
  OUTLINED_FUNCTION_9();
  v3 = OUTLINED_FUNCTION_44();
  v4(v3);
  return v0;
}

uint64_t sub_2748C0DFC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2748C0E54()
{
  v1 = OUTLINED_FUNCTION_17_19();
  v2(v1);
  OUTLINED_FUNCTION_9();
  v3 = OUTLINED_FUNCTION_44();
  v4(v3);
  return v0;
}

uint64_t NameIconComposeViewController.Mode.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result != 0;
  return result;
}

uint64_t sub_2748C0EC4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return sub_2748C0F4C(v2, v1);
}

uint64_t sub_2748C0F00()
{
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_2748C0F4C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2748C0FB8(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_2747F5D2C;
}

id sub_2748C10B8(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id sub_2748C111C(void *a1)
{
  v2 = sub_2748C2AC8();
  v3 = [v2 heightAnchor];

  result = [a1 view];
  if (result)
  {
    v5 = result;
    v6 = [result heightAnchor];

    v7 = [v3 constraintEqualToAnchor:v6 multiplier:0.4];
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2748C122C(uint64_t a1, uint64_t (*a2)(void), SEL *a3, uint64_t (*a4)(void))
{
  v6 = a2();
  v7 = [v6 *a3];

  v8 = a4();
  v9 = [v8 *a3];

  v10 = [v7 constraintEqualToAnchor_];
  return v10;
}

id sub_2748C12F8(void *a1)
{
  v2 = sub_2748C1638();
  v3 = [v2 heightAnchor];

  result = [a1 view];
  if (result)
  {
    v5 = result;
    v6 = [result heightAnchor];

    v7 = [v3 constraintEqualToAnchor_];
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2748C13CC(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [a1 view];
  if (result)
  {
    v4 = result;
    [result addSubview_];

    v5 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_274A154D0;
    v7 = [v2 leadingAnchor];
    v8 = sub_2748C2DF4();
    v9 = [v8 leadingAnchor];

    v10 = [v7 constraintEqualToAnchor_];
    *(v6 + 32) = v10;
    v11 = [v2 topAnchor];
    v12 = sub_2748C2DF4();
    v13 = [v12 topAnchor];

    v14 = [v11 constraintEqualToAnchor_];
    *(v6 + 40) = v14;
    v15 = [v2 trailingAnchor];

    v16 = sub_2748C2DF4();
    v17 = [v16 trailingAnchor];

    v18 = [v15 constraintEqualToAnchor_];
    *(v6 + 48) = v18;
    sub_27471CF08(0, &qword_280968040);
    v19 = sub_2749FCF74();

    [v5 activateConstraints_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2748C1658(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = sub_2748C13AC();
  [v3 addSubview_];

  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_274A15460;
  v6 = [v2 widthAnchor];
  v7 = sub_2748C2DF4();
  v8 = [v7 widthAnchor];

  v9 = [v6 constraintEqualToAnchor_];
  *(v5 + 32) = v9;
  v10 = [v2 topAnchor];
  v11 = OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___scrollView;
  v12 = [*(a1 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___scrollView) topAnchor];
  v13 = [v10 constraintEqualToAnchor_];

  *(v5 + 40) = v13;
  v14 = [v2 leadingAnchor];
  v15 = [*(a1 + v11) leadingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v5 + 48) = v16;
  v17 = [v2 trailingAnchor];
  v18 = [*(a1 + v11) trailingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v5 + 56) = v19;
  v20 = [v2 bottomAnchor];
  v21 = [*(a1 + v11) bottomAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v5 + 64) = v22;
  sub_27471CF08(0, &qword_280968040);
  v23 = sub_2749FCF74();

  [v4 activateConstraints_];

  return v2;
}

id sub_2748C196C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = sub_2748C1638();
  [v3 addSubview_];

  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_274A108E0;
  v6 = [v2 leadingAnchor];
  v7 = OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___contentView;
  v8 = [*(a1 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___contentView) leadingAnchor];
  v9 = [v6 constraintEqualToAnchor_];

  *(v5 + 32) = v9;
  v10 = [v2 topAnchor];
  v11 = [*(a1 + v7) topAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v5 + 40) = v12;
  v13 = [v2 trailingAnchor];
  v14 = [*(a1 + v7) trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v5 + 48) = v15;
  v16 = [v2 bottomAnchor];
  v17 = sub_2748C2AC8();
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:-8.0];
  *(v5 + 56) = v19;
  sub_27471CF08(0, &qword_280968040);
  v20 = sub_2749FCF74();

  [v4 activateConstraints_];

  return v2;
}

id sub_2748C1C30(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = sub_2748C194C();
  [v3 addSubview_];

  v4 = [v2 heightAnchor];
  v5 = OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___iconTextFieldOuterContainer;
  v6 = [*(a1 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___iconTextFieldOuterContainer) heightAnchor];
  v7 = [v4 constraintGreaterThanOrEqualToAnchor:v6 multiplier:0.7];

  LODWORD(v8) = 1144750080;
  [v7 setPriority_];
  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_274A15460;
  v11 = [v2 centerXAnchor];
  v12 = [*(a1 + v5) centerXAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v10 + 32) = v13;
  v14 = [v2 centerYAnchor];
  v15 = [*(a1 + v5) centerYAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v10 + 40) = v16;
  v17 = [v2 widthAnchor];
  v18 = [*(a1 + v5) widthAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v10 + 48) = v19;
  *(v10 + 56) = v7;
  v20 = v7;
  v21 = [v2 heightAnchor];
  v22 = [*(a1 + v5) heightAnchor];
  v23 = [v21 constraintLessThanOrEqualToAnchor_];

  *(v10 + 64) = v23;
  sub_27471CF08(0, &qword_280968040);
  v24 = sub_2749FCF74();

  [v9 activateConstraints_];

  return v2;
}

id sub_2748C1F74(uint64_t a1)
{
  v2 = [objc_allocWithZone(WFGlyphView) init];
  [v2 setGlyphCharacter_];
  v3 = [objc_opt_self() systemGrayColor];
  [v2 setGlyphColor_];

  v4 = v2;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v5) = 1132068864;
  [v4 setContentCompressionResistancePriority:1 forAxis:v5];
  [v4 setOutline_];
  v6 = sub_2748C1C10();
  [v6 addSubview_];

  v7 = [v4 heightAnchor];
  v8 = [v7 constraintGreaterThanOrEqualToConstant_];

  LODWORD(v9) = 1144750080;
  [v8 setPriority_];
  v26 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_274A15460;
  v11 = [v4 topAnchor];
  v12 = OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___iconTextFieldInnerContainer;
  v13 = [*(a1 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___iconTextFieldInnerContainer) topAnchor];
  v14 = [v11 constraintEqualToAnchor_];

  *(v10 + 32) = v14;
  v15 = [v4 centerXAnchor];
  v16 = [*(a1 + v12) centerXAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v10 + 40) = v17;
  v18 = [v4 heightAnchor];
  v19 = [v18 constraintLessThanOrEqualToConstant_];

  *(v10 + 48) = v19;
  *(v10 + 56) = v8;
  v20 = v8;
  v21 = [v4 heightAnchor];
  v22 = [v4 widthAnchor];

  v23 = [v21 constraintEqualToAnchor_];
  *(v10 + 64) = v23;
  sub_27471CF08(0, &qword_280968040);
  v24 = sub_2749FCF74();

  [v26 activateConstraints_];

  return v4;
}

id sub_2748C2308(_BYTE *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setAdjustsFontForContentSizeCategory_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 addSubview_];
  v4 = sub_2748C1C10();
  [v4 addSubview_];

  v5 = [v2 layer];
  [v5 setCornerRadius_];

  v6 = [v2 layer];
  [v6 setCornerCurve_];

  v7 = [objc_opt_self() secondarySystemBackgroundColor];
  [v2 setBackgroundColor_];

  [v2 setTextAlignment_];
  v8 = &a1[OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_mode];
  if (a1[OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_mode + 8] == 1)
  {
    v9 = *v8;
    v10 = [*v8 name];
    v11 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v13 = v12;

    sub_2748205A0(v11, v13, v2);
    sub_2748C5110(v9, 1);
  }

  v14 = objc_opt_self();
  v15 = *MEMORY[0x277D76A20];
  v16 = [a1 traitCollection];
  v61 = [v14 preferredFontForTextStyle:v15 compatibleWithTraitCollection:v16];

  [v2 setFont_];
  [v2 setReturnKeyType_];
  [v2 setDelegate_];
  [v2 systemLayoutSizeFittingSize_];
  v17 = OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_textFieldMinHeight;
  *&a1[OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_textFieldMinHeight] = v18;
  v19 = [v2 heightAnchor];
  v59 = [v19 constraintGreaterThanOrEqualToConstant_];

  LODWORD(v20) = 1148846080;
  [v59 setPriority_];
  v21 = [v2 heightAnchor];
  v22 = sub_2748C1F54();
  v23 = [v22 heightAnchor];

  v58 = [v21 constraintLessThanOrEqualToAnchor:v23 multiplier:0.4];
  LODWORD(v24) = 1144750080;
  [v58 setPriority_];
  v60 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_274A1F7F0;
  v26 = [v3 topAnchor];
  v27 = [*&a1[OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___iconView] bottomAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v25 + 32) = v28;
  v29 = [v3 bottomAnchor];
  v30 = OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___iconTextFieldInnerContainer;
  v31 = [*&a1[OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___iconTextFieldInnerContainer] bottomAnchor];
  v32 = [v29 constraintEqualToAnchor_];

  *(v25 + 40) = v32;
  v33 = [v3 leadingAnchor];
  v34 = [*&a1[v30] leadingAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v25 + 48) = v35;
  v36 = [v3 trailingAnchor];
  v37 = [*&a1[v30] trailingAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v25 + 56) = v38;
  v39 = [v2 leadingAnchor];
  v40 = [v3 leadingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:16.0];

  *(v25 + 64) = v41;
  v42 = [v2 trailingAnchor];
  v43 = [v3 trailingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:-16.0];

  *(v25 + 72) = v44;
  v45 = [v2 topAnchor];
  v46 = [v3 topAnchor];
  v47 = [v45 constraintLessThanOrEqualToAnchor:v46 constant:32.0];

  *(v25 + 80) = v47;
  v48 = [v2 topAnchor];
  v49 = [v3 topAnchor];
  v50 = [v48 constraintGreaterThanOrEqualToAnchor_];

  *(v25 + 88) = v50;
  *(v25 + 96) = v59;
  *(v25 + 104) = v58;
  v51 = v59;
  v52 = v58;
  v53 = [v2 bottomAnchor];

  v54 = [v3 bottomAnchor];
  v55 = [v53 constraintEqualToAnchor_];

  *(v25 + 112) = v55;
  sub_27471CF08(0, &qword_280968040);
  v56 = sub_2749FCF74();

  [v60 activateConstraints_];

  return v2;
}

id sub_2748C2AE8(char *a1)
{
  result = [a1 view];
  if (result)
  {
    v3 = result;
    [result frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v27.origin.x = v5;
    v27.origin.y = v7;
    v27.size.width = v9;
    v27.size.height = v11;
    v12 = [objc_allocWithZone(WFGlyphPicker) initWithControl:1 glyphDimension:1 sectionInset:1 useSystemGlyphsOnly:fmin(CGRectGetWidth(v27) * 0.13 useOutlineGlyphsOnly:{54.0), 15.0, 15.0, 15.0, 15.0}];
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    [v12 setSelectedGlyphCharacter_];
    [v12 setDelegate_];
    v13 = sub_2748C1638();
    [v13 addSubview_];

    v14 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_274A154D0;
    v16 = [v12 leadingAnchor];
    v17 = OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___contentView;
    v18 = [*&a1[OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___contentView] leadingAnchor];
    v19 = [v16 constraintEqualToAnchor_];

    *(v15 + 32) = v19;
    v20 = [v12 trailingAnchor];
    v21 = [*&a1[v17] trailingAnchor];
    v22 = [v20 constraintEqualToAnchor_];

    *(v15 + 40) = v22;
    v23 = [v12 bottomAnchor];

    v24 = [*&a1[v17] bottomAnchor];
    v25 = [v23 constraintEqualToAnchor_];

    *(v15 + 48) = v25;
    sub_27471CF08(0, &qword_280968040);
    v26 = sub_2749FCF74();

    [v14 activateConstraints_];

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2748C2DF4()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result safeAreaLayoutGuide];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NameIconComposeViewController.init(_:glyphCharacter:)(uint64_t *a1, __int16 a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  *(v2 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_viewDidAppear) = 0;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_textFieldMinHeight) = 0;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___scrollViewBottomConstraint) = 0;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___glyphPickerHeightConstraint) = 0;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___contentViewScrollViewEqualHeightConstraint) = 0;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___contentViewViewEqualHeightConstraint) = 0;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___scrollView) = 0;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___contentView) = 0;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___iconTextFieldOuterContainer) = 0;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___iconTextFieldInnerContainer) = 0;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___iconView) = 0;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___textField) = 0;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___glyphPicker) = 0;
  v6 = OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_isIPad;
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  *(v2 + v6) = v8 == 1;
  v9 = v2 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_mode;
  *v9 = v4;
  *(v9 + 8) = v5;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_glyphCharacter) = a2;
  v13 = type metadata accessor for NameIconComposeViewController();
  OUTLINED_FUNCTION_24();
  return objc_msgSendSuper2(v10, v11, v2, v13);
}

void sub_2748C301C()
{
  *(v0 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_viewDidAppear) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_textFieldMinHeight) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___scrollViewBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___glyphPickerHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___contentViewScrollViewEqualHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___contentViewViewEqualHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___scrollView) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___contentView) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___iconTextFieldOuterContainer) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___iconTextFieldInnerContainer) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___iconView) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___textField) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___glyphPicker) = 0;
  v1 = OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_isIPad;
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  *(v0 + v1) = v3 == 1;
  sub_2749FDAE4();
  __break(1u);
}

void sub_2748C319C()
{
  v1 = type metadata accessor for NameIconComposeViewController();
  v46.receiver = v0;
  v46.super_class = v1;
  objc_msgSendSuper2(&v46, sel_viewDidLoad);
  v2 = OUTLINED_FUNCTION_1_0();
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor_];

  v5 = [v0 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 navigationBar];

    v8 = OUTLINED_FUNCTION_1_0();
    if (v8)
    {
      v9 = v8;
      v10 = [v8 backgroundColor];

      [v7 setBarTintColor_];
      goto LABEL_5;
    }

LABEL_16:
    __break(1u);
    return;
  }

LABEL_5:
  v11 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  v12 = [v0 navigationController];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 navigationBar];

    [v14 setShadowImage_];
  }

  v15 = [v0 navigationController];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 navigationBar];

    [v17 setBackgroundImage:v11 forBarMetrics:0];
  }

  v18 = [v0 navigationItem];
  v45 = v1;
  v44[0] = v0;
  objc_allocWithZone(MEMORY[0x277D751E0]);
  v19 = v0;
  sub_2747F93B4(1, v44, sel_cancel);
  v21 = v20;
  [v18 setLeftBarButtonItem_];

  v22 = [v19 navigationItem];
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v23 = qword_28159E448;
  v24 = sub_2749FCD64();
  v25 = sub_2749FCD64();

  v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

  v27 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v29 = v28;

  v45 = v1;
  v44[0] = v19;
  objc_allocWithZone(MEMORY[0x277D751E0]);
  v30 = v19;
  v31 = sub_2748C4E24(v27, v29, 2, v44, sel_done);
  [v22 setRightBarButtonItem_];

  v32 = sub_2748C1098();
  LODWORD(v33) = 1144750080;
  [v32 setPriority_];

  v34 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_274A154D0;
  *(v35 + 32) = sub_2748C1044();
  v36 = *&v30[OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___glyphPickerHeightConstraint];
  *(v35 + 40) = v36;
  v37 = v36;
  *(v35 + 48) = sub_2748C11D8();
  sub_27471CF08(0, &qword_280968040);
  v38 = sub_2749FCF74();

  [v34 activateConstraints_];

  v39 = sub_2748C22E8();
  [v39 addTarget:v30 action:sel_updateIsModalInPresentation forControlEvents:0x20000];

  v40 = sub_2748C13AC();
  [v40 setKeyboardDismissMode_];

  [*&v30[OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___scrollView] setAlwaysBounceVertical_];
  v41 = [v30 navigationController];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 presentationController];

    if (v43)
    {
      [v43 setDelegate_];
    }
  }
}

id sub_2748C3734()
{
  v1 = sub_2748C22E8();
  v2 = sub_2748911FC(v1);
  if (v3)
  {
    v4 = v2;
    v5 = v3;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return [v0 setModalInPresentation_];
}

void sub_2748C37F8(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for NameIconComposeViewController();
  objc_msgSendSuper2(&v4, sel_viewWillAppear_, a1 & 1);
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v1 selector:sel_keyboardWillChange_ name:*MEMORY[0x277D7BE00] object:0];
}

uint64_t sub_2748C38E0()
{
  v1 = sub_2749FCA74();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = sub_2749FCAA4();
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  sub_27471CF08(0, &qword_28159E4E0);
  v15 = sub_2749FD404();
  OUTLINED_FUNCTION_86();
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  aBlock[4] = sub_2748C512C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_2_2();
  aBlock[2] = v17;
  aBlock[3] = &block_descriptor_36_0;
  v18 = _Block_copy(aBlock);
  v19 = v0;

  sub_2749FCA94();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27473FC78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
  sub_27473FCD0();
  sub_2749FD7B4();
  MEMORY[0x277C5F170](0, v14, v7, v18);
  _Block_release(v18);

  (*(v3 + 8))(v7, v1);
  return (*(v10 + 8))(v14, v8);
}

double sub_2748C3BA4()
{
  v1 = sub_2748C2AC8();
  v2 = [v1 segmentedControl];

  if (v2)
  {
    [v2 frame];
    OUTLINED_FUNCTION_36();

    v11.origin.x = OUTLINED_FUNCTION_4_0();
    MaxY = CGRectGetMaxY(v11);
  }

  else
  {
    MaxY = 0.0;
  }

  v4 = OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___glyphPicker;
  [*(v0 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___glyphPicker) sectionInset];
  v6 = v5;
  [*(v0 + v4) sectionInset];
  v8 = MaxY + v6 + v7;
  [*(v0 + v4) glyphDimension];
  return v8 + v9;
}

void sub_2748C3C70()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    OUTLINED_FUNCTION_36();

    v9.origin.x = OUTLINED_FUNCTION_4_0();
    v3 = CGRectGetHeight(v9) * 0.4;
    v4 = sub_2748C22E8();
    [v4 frame];
    OUTLINED_FUNCTION_36();

    v10.origin.x = OUTLINED_FUNCTION_4_0();
    v5 = CGRectGetHeight(v10) - *&v0[OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_textFieldMinHeight];
    v6 = v3 - sub_2748C3BA4();
    v7 = sub_2748C1098();
    [v7 setConstant_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2748C3D6C()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedKeyboard];
  v3 = OUTLINED_FUNCTION_1_0();
  if (!v3)
  {
    __break(1u);
    goto LABEL_29;
  }

  v4 = v3;
  [v2 keyboardFrameInView_];
  OUTLINED_FUNCTION_36();

  v5 = OUTLINED_FUNCTION_1_0();
  if (!v5)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = v5;
  [v5 frame];
  OUTLINED_FUNCTION_12_22();

  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_11_21();
  v90 = CGRectIntersection(v89, v92);
  Height = CGRectGetHeight(v90);
  v8 = [objc_opt_self() sharedContext];
  v9 = WFApplicationContext.isIPadInSplitScreen.getter();

  if (Height > 0.0)
  {
    if (v0[OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_isIPad])
    {
      v10 = sub_2748C13AC();
      [v10 contentInset];
      v12 = v11;

      if (v12 != Height)
      {
        sub_2748C11D8();
        OUTLINED_FUNCTION_5_30();
        [v13 v14];

        v15 = sub_2748C12D8();
        [v15 &selRef_fileType];

        v16 = OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___scrollView;
        [*&v0[OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___scrollView] contentInset];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        [*&v0[v16] verticalScrollIndicatorInsets];
        [*&v0[v16] setVerticalScrollIndicatorInsets_];
        [*&v0[v16] setContentInset_];
        if (v9)
        {
          v23 = sub_2748C22E8();
          v24 = [v23 isFirstResponder];

          if (v24)
          {
            sub_2748C3C70();
            goto LABEL_25;
          }
        }

        goto LABEL_13;
      }

      goto LABEL_25;
    }

    v41 = sub_2748C22E8();
    v42 = [v41 isFirstResponder];

    if (v42)
    {
      sub_2748C3C70();
      v43 = sub_2748C13AC();
      [v43 verticalScrollIndicatorInsets];
      v87 = v44;
      v46 = v45;
      v48 = v47;
      v50 = v49;

      v51 = sub_2748C2AC8();
      [v51 frame];
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v59 = v58;

      v91.origin.x = v53;
      v91.origin.y = v55;
      v91.size.width = v57;
      v91.size.height = v59;
      v60 = ceil(CGRectGetHeight(v91));
      v61 = ceil(sub_2748C3BA4());
      v62 = [v0 traitCollection];
      v63 = [v62 horizontalSizeClass];

      v64 = v63 == 1;
      v65 = v60 >= v61;
      v66 = v64 & v65;
      if (v64 && v65)
      {
        v67 = v48;
      }

      else
      {
        v67 = Height;
      }

      sub_2748C11D8();
      OUTLINED_FUNCTION_5_30();
      [v68 v69];

      v70 = sub_2748C12D8();
      [v70 &selRef_fileType];

      [*&v0[OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___scrollView] setVerticalScrollIndicatorInsets_];
      v71 = sub_2748C1044();
      v72 = OUTLINED_FUNCTION_1_0();
      if (v72)
      {
        v73 = v72;
        if (v66)
        {
          v74 = 0.0;
        }

        else
        {
          v74 = 8.0;
        }

        v75 = 0.0 - Height;
        [v72 safeAreaInsets];
        v77 = v76;

        [v71 setConstant_];
        goto LABEL_25;
      }

LABEL_30:
      __break(1u);
      return;
    }

LABEL_23:
    v78 = sub_2748C1044();
    [v78 setConstant_];

    v40 = sub_2748C1098();
    [v40 setConstant_];
    goto LABEL_24;
  }

  if (!v0[OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_isIPad])
  {
    goto LABEL_23;
  }

  v25 = sub_2748C13AC();
  [v25 contentInset];
  v27 = v26;

  if (v27 != 0.0)
  {
    sub_2748C12D8();
    OUTLINED_FUNCTION_5_30();
    [v28 v29];

    v30 = sub_2748C11D8();
    [v30 &selRef_fileType];

    v31 = OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___scrollView;
    [*&v0[OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController____lazy_storage___scrollView] contentInset];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    [*&v0[v31] setScrollIndicatorInsets_];
    [*&v0[v31] setContentInset_];
    if (v9)
    {
      v38 = sub_2748C22E8();
      v39 = [v38 isFirstResponder];

      if ((v39 & 1) == 0)
      {
LABEL_13:
        v40 = sub_2748C1098();
        [v40 setConstant_];
LABEL_24:
      }
    }
  }

LABEL_25:
  v79 = [v1 sharedKeyboard];
  [v79 animationDuration];
  v81 = v80;

  if (v81 <= 0.0)
  {
    v81 = 0.25;
  }

  v82 = objc_opt_self();
  OUTLINED_FUNCTION_86();
  v83 = swift_allocObject();
  *(v83 + 16) = v0;
  aBlock[4] = sub_2748C511C;
  aBlock[5] = v83;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_2_2();
  aBlock[2] = v84;
  aBlock[3] = &block_descriptor_32;
  v85 = _Block_copy(aBlock);
  v86 = v0;

  [v82 animateWithDuration:v85 animations:v81];
  _Block_release(v85);
}

uint64_t WFApplicationContext.isIPadInSplitScreen.getter()
{
  v0 = [objc_opt_self() sharedContext];
  v1 = [v0 keyWindow];

  if (v1)
  {
    [v1 frame];
    OUTLINED_FUNCTION_36();
  }

  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  OUTLINED_FUNCTION_12_22();

  if (!v1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_11_21();
  v3 = CGRectEqualToRect(v5, v6);

  return !v3;
}

void sub_2748C4424(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2748C4480()
{
  v1 = v0 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_delegate;
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2748C4554()
{
  v1 = v0;
  v2 = sub_2748C1F54();
  v3 = [v2 glyphCharacter];

  v4 = objc_allocWithZone(MEMORY[0x277D7A1E0]);
  v5 = sub_27490C76C(0, v3, 0, 0xF000000000000000);
  v6 = v1 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_delegate;
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v9 = *(v1 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_mode + 8);
    v13 = *(v1 + OBJC_IVAR____TtC10WorkflowUI29NameIconComposeViewController_mode);
    v14 = v9;
    sub_2748C5104(v13, v9);
    v10 = sub_2748C22E8();
    v11 = sub_2748911FC(v10);
    (*(v7 + 16))(v1, &v13, v11, v12, v5, ObjectType, v7);

    swift_unknownObjectRelease();

    sub_2748C5110(v13, v14);
  }

  else
  {
  }
}

void sub_2748C4748()
{
  sub_27471CF08(0, &unk_28096DB70);
  OUTLINED_FUNCTION_24();
  v40 = sub_274856E7C(v1, v2, v3, v4, 0);
  sub_27471CF08(0, &qword_28096C980);
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v5 = sub_2749FCD64();
  v6 = sub_2749FCD64();

  v7 = OUTLINED_FUNCTION_4_29();
  v9 = [v7 v8];

  v10 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v12 = v11;

  OUTLINED_FUNCTION_86();
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  v14 = v0;
  v15 = sub_274856F34(v10, v12, 0, sub_2748C5150, v13);
  [v40 addAction_];

  sub_2749FCE14();
  v16 = sub_2749FCD64();
  v17 = sub_2749FCD64();

  v18 = OUTLINED_FUNCTION_4_29();
  v20 = [v18 v19];

  v21 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v23 = v22;

  OUTLINED_FUNCTION_86();
  v24 = swift_allocObject();
  *(v24 + 16) = v14;
  v25 = v14;
  v26 = sub_274856F34(v21, v23, 2, sub_2748C5174, v24);
  [v40 addAction_];

  sub_2749FCE14();
  v27 = sub_2749FCD64();
  v28 = sub_2749FCD64();

  v29 = OUTLINED_FUNCTION_4_29();
  v31 = [v29 v30];

  v32 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v34 = v33;

  v35 = sub_274856F34(v32, v34, 1, 0, 0);
  [v40 addAction_];

  v36 = [v40 popoverPresentationController];
  if (v36)
  {
    v37 = v36;
    v38 = [v25 navigationItem];
    v39 = [v38 leftBarButtonItem];

    [v37 setBarButtonItem_];
  }

  [v25 presentViewController:v40 animated:1 completion:0];
}

id NameIconComposeViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2749FCD64();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id NameIconComposeViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NameIconComposeViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void NameIconComposeViewController.glyphPicker(_:didSelectGlyphWith:)(uint64_t a1, unsigned __int16 a2)
{
  v3 = sub_2748C1F54();
  [v3 setGlyphCharacter_];
}

id sub_2748C4E24(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v10 = sub_2749FCD64();
  }

  else
  {
    v10 = 0;
  }

  v11 = a4[3];
  if (v11)
  {
    __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    OUTLINED_FUNCTION_3_0();
    v13 = v12;
    MEMORY[0x28223BE20](v14);
    OUTLINED_FUNCTION_2_0();
    v17 = v16 - v15;
    (*(v13 + 16))(v16 - v15);
    v18 = sub_2749FDCA4();
    (*(v13 + 8))(v17, v11);
    __swift_destroy_boxed_opaque_existential_0(a4);
  }

  else
  {
    v18 = 0;
  }

  v19 = [v6 initWithTitle:v10 style:a3 target:v18 action:a5];

  swift_unknownObjectRelease();
  return v19;
}

id sub_2748C5104(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_2748C5110(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2748C51A0@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = type metadata accessor for GallerySearchResultsView(0);
  v39 = *(v2 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DBC0);
  OUTLINED_FUNCTION_43();
  v38 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v37 = &v36 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DBC8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DBD0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DBD8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  if (*v1)
  {

    v16 = sub_2748C851C();
    v41 = v17;
    v19 = v18;

    if (v19)
    {
      if (v19 == 1)
      {
        sub_2748CA3C8(v1, &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GallerySearchResultsView);
        v20 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v21 = swift_allocObject();
        v22 = v41;
        *(v21 + 16) = v16;
        *(v21 + 24) = v22;
        sub_2748CA424(&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for GallerySearchResultsView);
        v45 = sub_2748C9AB4;
        v46 = v21;
        v47 = 0;
        v48 = 0;
        v49 = 1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DBE8);
        OUTLINED_FUNCTION_2_32();
        sub_27472AB6C(v23, &qword_28096DBE8);
        sub_2749FB7B4();
        OUTLINED_FUNCTION_8_25();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DBF8);
        sub_2748C9B38();
        sub_2748C9BF0();
        OUTLINED_FUNCTION_5_31();
        sub_2749FB7B4();
      }

      else if (v16 | v41)
      {
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_30(&qword_28159E718, &qword_28096DBC0);
        sub_2749FB7B4();
        sub_27473ADB8(v15, v9, &unk_28096DBD8);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DBF8);
        sub_2748C9B38();
        sub_2748C9BF0();
        OUTLINED_FUNCTION_5_31();
        sub_2749FB7B4();
        return sub_27472ECBC(v15, &unk_28096DBD8);
      }

      else
      {
        v33 = v37;
        sub_2749FAB64();
        v34 = v38;
        v35 = v40;
        (*(v38 + 16))(v12, v33, v40);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_30(&qword_28159E718, &qword_28096DBC0);
        sub_2749FB7B4();
        sub_27473ADB8(v15, v9, &unk_28096DBD8);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DBF8);
        sub_2748C9B38();
        sub_2748C9BF0();
        OUTLINED_FUNCTION_5_31();
        sub_2749FB7B4();
        sub_27472ECBC(v15, &unk_28096DBD8);
        return (*(v34 + 8))(v33, v35);
      }
    }

    else
    {
      swift_getErrorValue();
      v50 = sub_2749FDD84();
      v51 = v25;
      sub_27475D0D0();
      v26 = sub_2749FBEE4();
      v28 = v27;
      v45 = v26;
      v46 = v27;
      v30 = v29 & 1;
      v47 = v29 & 1;
      v48 = v31;
      v49 = 0;
      sub_274754DBC(v26, v27, v29 & 1);

      sub_274754DBC(v26, v28, v30);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DBE8);
      OUTLINED_FUNCTION_2_32();
      sub_27472AB6C(v32, &qword_28096DBE8);
      sub_2749FB7B4();
      OUTLINED_FUNCTION_8_25();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DBF8);
      sub_2748C9B38();
      sub_2748C9BF0();
      OUTLINED_FUNCTION_5_31();
      sub_2749FB7B4();
      sub_2748C9CA8(v16, v41, 0);
      sub_27477656C(v26, v28, v30);

      sub_27477656C(v26, v28, v30);
    }
  }

  else
  {
    type metadata accessor for GallerySearchManager(0);
    sub_274728F18(&qword_28159F478, type metadata accessor for GallerySearchManager);
    result = sub_2749FB074();
    __break(1u);
  }

  return result;
}

uint64_t sub_2748C58BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27[1] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DC20);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DC28);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v27 - v17;
  v27[4] = a2;
  v27[5] = a3;
  v27[6] = a1;
  v27[7] = a4;
  sub_2749FBC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DC30);
  sub_2748C9D10();
  sub_2749FAA54();
  sub_27472AB6C(&qword_28096DC60, &qword_28096DC20);
  sub_2749FC1F4();
  (*(v10 + 8))(v12, v9);
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v19 = qword_28159E448;
  v20 = sub_2749FCD64();
  v21 = sub_2749FCD64();

  v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

  v23 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v25 = v24;

  v27[8] = v23;
  v27[9] = v25;
  sub_27475D0D0();
  sub_2749FAE74();

  sub_27472ECBC(v16, &qword_28096DC28);
  sub_2748C9E54();
  sub_2749FBF14();
  return sub_27472ECBC(v18, &qword_28096DC28);
}

void *sub_2748C5C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DC48);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &__src[-v12];
  *v13 = sub_2749FB644();
  *(v13 + 1) = 0x402E000000000000;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DC78);
  sub_2748C5DB0(a1, a2, a3, a4, &v13[*(v14 + 44)]);
  LOBYTE(a4) = sub_2749FBC64();
  sub_2749FA9E4();
  v15 = &v13[*(v11 + 44)];
  *v15 = a4;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  sub_2749FC924();
  sub_2749FB004();
  sub_2747D31F8(v13, a5, &qword_28096DC48);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DC30);
  return memcpy((a5 + *(v20 + 36)), __src, 0x70uLL);
}

uint64_t sub_2748C5DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37[2] = a4;
  v37[1] = a3;
  v38 = a2;
  v39 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DC80);
  MEMORY[0x28223BE20](v6);
  v8 = v37 - v7;
  v9 = sub_2749FAE14();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DC88);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DC90);
  MEMORY[0x28223BE20](v18);
  v20 = v37 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DC98);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v37 - v25;
  if (sub_27472D918(a1))
  {
    *v20 = sub_2749FB644();
    *(v20 + 1) = 0x4020000000000000;
    v20[16] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DCA0);
    sub_2748C61DC(a1, &v20[*(v27 + 44)]);
    sub_2747D31F8(v20, v26, &qword_28096DC90);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = 1;
  __swift_storeEnumTagSinglePayload(v26, v28, 1, v18);
  v30 = v38;
  if (sub_27472D918(v38))
  {
    sub_2749FAC54();
    v32 = v31;
    type metadata accessor for GallerySearchResultsView(0);
    sub_2747B95BC();
    sub_2748A0890(v11, v40, v32);
    *v8 = sub_2749FB644();
    *(v8 + 1) = 0x4020000000000000;
    v8[16] = 0;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DCA8);
    sub_2748C6B24(v30, v40, &v8[*(v33 + 44)]);
    sub_2747D31F8(v8, v17, &qword_28096DC80);
    v29 = 0;
  }

  __swift_storeEnumTagSinglePayload(v17, v29, 1, v6);
  sub_27473ADB8(v26, v24, &qword_28096DC98);
  sub_27473ADB8(v17, v15, &qword_28096DC88);
  v34 = v39;
  sub_27473ADB8(v24, v39, &qword_28096DC98);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DCB0);
  sub_27473ADB8(v15, v34 + *(v35 + 48), &qword_28096DC88);
  sub_27472ECBC(v17, &qword_28096DC88);
  sub_27472ECBC(v26, &qword_28096DC98);
  sub_27472ECBC(v15, &qword_28096DC88);
  return sub_27472ECBC(v24, &qword_28096DC98);
}

uint64_t sub_2748C61DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v72 = a2;
  v2 = sub_2749FBA94();
  v66 = *(v2 - 8);
  v67 = v2;
  MEMORY[0x28223BE20](v2);
  v62 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DCC8);
  MEMORY[0x28223BE20](v63);
  v60 = (&v54 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DCD0);
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = &v54 - v6;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DCD8);
  v7 = MEMORY[0x28223BE20](v68);
  v71 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v70 = &v54 - v9;
  v56 = sub_2749FB5D4();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF90);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v69 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v73 = &v54 - v15;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v16 = qword_28159E448;
  v58 = qword_28159E448;
  v17 = sub_2749FCD64();
  v18 = sub_2749FCD64();

  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  v20 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v22 = v21;

  v74 = v20;
  v75 = v22;
  v57 = sub_27475D0D0();
  v23 = sub_2749FBEE4();
  v25 = v24;
  LOBYTE(v22) = v26;
  sub_2749FBD84();
  sub_2749FBD04();

  v27 = sub_2749FBEC4();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_27477656C(v23, v25, v22 & 1);

  v74 = v27;
  v75 = v29;
  v31 &= 1u;
  v76 = v31;
  v77 = v33;
  sub_2749FB5C4();
  sub_2749FC1D4();
  (*(v55 + 8))(v11, v56);
  sub_27477656C(v27, v29, v31);

  v34 = sub_2749FB644();
  v35 = v60;
  *v60 = v34;
  *(v35 + 8) = 0x4024000000000000;
  *(v35 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DCE0);
  v74 = v59;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CD48);
  type metadata accessor for CollectionButton(0);
  sub_27472AB6C(&qword_28096DCF0, &qword_28096CD48);
  sub_2747DE510(&qword_28096CD60, &qword_28096CB30);
  sub_274728F18(&qword_28096DCF8, type metadata accessor for CollectionButton);
  sub_2749FC754();
  v36 = v62;
  sub_2749FBA84();
  v37 = sub_27472AB6C(&qword_28096DD00, &qword_28096DCC8);
  v38 = v61;
  v39 = v63;
  sub_2749FC1A4();
  (*(v66 + 8))(v36, v67);
  sub_27472ECBC(v35, &qword_28096DCC8);
  v74 = v39;
  v75 = v37;
  swift_getOpaqueTypeConformance2();
  v40 = v71;
  v41 = v65;
  sub_2749FC1F4();
  (*(v64 + 8))(v38, v41);
  sub_2749FCE14();
  v42 = sub_2749FCD64();
  v43 = sub_2749FCD64();

  v44 = [v58 localizedStringForKey:v42 value:v43 table:0];

  v45 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v47 = v46;

  v74 = v45;
  v75 = v47;
  v48 = v70;
  sub_2749FAE74();

  sub_27472ECBC(v40, &qword_28096DCD8);
  v49 = v73;
  v50 = v69;
  sub_27473ADB8(v73, v69, &qword_28096CF90);
  sub_27473ADB8(v48, v40, &qword_28096DCD8);
  v51 = v72;
  sub_27473ADB8(v50, v72, &qword_28096CF90);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DD08);
  sub_27473ADB8(v40, v51 + *(v52 + 48), &qword_28096DCD8);
  sub_27472ECBC(v48, &qword_28096DCD8);
  sub_27472ECBC(v49, &qword_28096CF90);
  sub_27472ECBC(v40, &qword_28096DCD8);
  return sub_27472ECBC(v50, &qword_28096CF90);
}

id sub_2748C6A88@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  *a2 = *a1;
  *(a2 + 8) = swift_getKeyPath();
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(type metadata accessor for CollectionButton(0) + 24);
  *(a2 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  swift_storeEnumTagMultiPayload();

  return v5;
}

uint64_t sub_2748C6B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a1;
  v61 = a2;
  v72 = a3;
  v63 = sub_2749FB864();
  MEMORY[0x28223BE20](v63);
  v66 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2749FC874();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v57 = (&v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CC98);
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x28223BE20](v6);
  v62 = &v53 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CCA0);
  v8 = MEMORY[0x28223BE20](v68);
  v71 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = &v53 - v10;
  v54 = sub_2749FB5D4();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF90);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v69 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v67 = &v53 - v16;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v17 = qword_28159E448;
  v56 = qword_28159E448;
  v18 = sub_2749FCD64();
  v19 = sub_2749FCD64();

  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  v21 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v23 = v22;

  v73 = v21;
  v74 = v23;
  v55 = sub_27475D0D0();
  v24 = sub_2749FBEE4();
  v26 = v25;
  LOBYTE(v23) = v27;
  sub_2749FBD84();
  sub_2749FBD04();

  v28 = sub_2749FBEC4();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  sub_27477656C(v24, v26, v23 & 1);

  v73 = v28;
  v74 = v30;
  v75 = v32 & 1;
  v76 = v34;
  sub_2749FB5C4();
  v35 = v67;
  sub_2749FC1D4();
  (*(v53 + 8))(v12, v54);
  sub_27477656C(v28, v30, v32 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CCF0);
  sub_2749FC884();
  *(swift_allocObject() + 16) = xmmword_274A0EF10;
  v37 = v57;
  v36 = v58;
  *v57 = xmmword_274A1DD20;
  (*(v36 + 104))(v37, *MEMORY[0x277CDF100], v59);
  sub_2749FC894();
  v38 = sub_2749FB644();
  MEMORY[0x28223BE20](v38);
  LODWORD(v73) = 0;
  sub_274728F18(&qword_28096C6A8, MEMORY[0x277CE0428]);
  sub_2749FDED4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CD00);
  sub_2748C9FC4();
  v39 = v62;
  sub_2749FC9A4();
  sub_27472AB6C(&unk_28096CCE0, &qword_28096CC98);
  v40 = v71;
  v41 = v65;
  sub_2749FC1F4();
  (*(v64 + 8))(v39, v41);
  sub_2749FCE14();
  v42 = sub_2749FCD64();
  v43 = sub_2749FCD64();

  v44 = [v56 localizedStringForKey:v42 value:v43 table:0];

  v45 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v47 = v46;

  v73 = v45;
  v74 = v47;
  v48 = v70;
  sub_2749FAE74();

  sub_27472ECBC(v40, &qword_28096CCA0);
  v49 = v69;
  sub_27473ADB8(v35, v69, &qword_28096CF90);
  sub_27473ADB8(v48, v40, &qword_28096CCA0);
  v50 = v72;
  sub_27473ADB8(v49, v72, &qword_28096CF90);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DCC0);
  sub_27473ADB8(v40, v50 + *(v51 + 48), &qword_28096CCA0);
  sub_27472ECBC(v48, &qword_28096CCA0);
  sub_27472ECBC(v35, &qword_28096CF90);
  sub_27472ECBC(v40, &qword_28096CCA0);
  return sub_27472ECBC(v49, &qword_28096CF90);
}

uint64_t sub_2748C73E0(uint64_t a1, const void *a2)
{
  swift_getKeyPath();
  v3 = swift_allocObject();
  memcpy((v3 + 16), a2, 0x80uLL);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CD18);
  type metadata accessor for CollectionWorkflowView(0);
  sub_27472AB6C(&qword_28096CD20, &qword_28096CD18);
  sub_2747DE510(&qword_28096CD28, &unk_28096CD30);
  sub_274728F18(&qword_28096CD10, type metadata accessor for CollectionWorkflowView);
  return sub_2749FC754();
}

uint64_t sub_2748C7554@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = sub_2748CA080(v5);
  v8 = v7;
  v9 = *(a2 + 120);
  v10 = *(a2 + 48);
  type metadata accessor for CollectionWorkflowState(0);
  swift_allocObject();
  v11 = v5;
  sub_2748DF444(v5);
  *a3 = v11;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *(a3 + 24) = *(a2 + 56);
  *(a3 + 40) = *(a2 + 72);
  *(a3 + 56) = *(a2 + 88);
  *(a3 + 72) = *(a2 + 104);
  *(a3 + 88) = v9;
  *(a3 + 96) = 0;
  *(a3 + 104) = v10;
  sub_2749FC5B4();
  *(a3 + 112) = v15;
  *(a3 + 120) = *(&v15 + 1);
  sub_2749FC5B4();
  *(a3 + 128) = v15;
  *(a3 + 136) = *(&v15 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E6E0);
  sub_2749FC5B4();
  *(a3 + 144) = v15;
  *(a3 + 160) = v16;
  *(a3 + 168) = v17;
  sub_274728F18(&qword_28096CD40, type metadata accessor for CollectionWorkflowState);
  *(a3 + 176) = sub_2749FAD84();
  *(a3 + 184) = v12;
  *(a3 + 192) = swift_getKeyPath();
  *(a3 + 200) = 0;
  *(a3 + 208) = swift_getKeyPath();
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  v13 = *(type metadata accessor for CollectionWorkflowView(0) + 60);
  *(a3 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2748C777C@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = sub_2749FAF64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CollectionButton(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DD40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  sub_2748CA3C8(v1, v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CollectionButton);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_2748CA424(v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for CollectionButton);
  v17 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DD48);
  sub_2748CA4E8();
  sub_2749FC624();
  sub_2749FAF54();
  sub_27472AB6C(&qword_28096DD88, &qword_28096DD40);
  sub_274728F18(&qword_28159E6A0, MEMORY[0x277CDDB18]);
  sub_2749FBFC4();
  (*(v3 + 8))(v5, v2);
  return (*(v10 + 8))(v12, v9);
}

void sub_2748C7AB4(uint64_t a1)
{
  v2 = type metadata accessor for RootNavigationDestination();
  MEMORY[0x28223BE20](v2);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2749FB4C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = [*a1 identifier];
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v25[1] = v2;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  if (*(a1 + 24) != 1)
  {

    sub_2749FD2D4();
    v19 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_274830180(v12, v13, 0);
    (*(v6 + 8))(v8, v5);
    v13 = v25[3];
    if (v25[2])
    {
      goto LABEL_4;
    }

LABEL_7:

    return;
  }

  swift_unknownObjectRetain();
  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_4:
  v14 = [v9 name];
  if (v14)
  {
    v15 = v14;
    v16 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  ObjectType = swift_getObjectType();
  v21 = [v11 recordName];
  v22 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v24 = v23;

  *v4 = v16;
  *(v4 + 1) = v18;
  *(v4 + 2) = v22;
  *(v4 + 3) = v24;
  v4[32] = 32;
  swift_storeEnumTagMultiPayload();
  (*(v13 + 16))(v4, ObjectType, v13);
  swift_unknownObjectRelease();

  sub_27475C498(v4);
}

double sub_2748C7D64@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v37 = sub_2749FAA94();
  v4 = *(v37 - 8);
  v5 = MEMORY[0x28223BE20](v37);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = sub_2749FAFC4();
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D130);
  MEMORY[0x28223BE20](v38);
  v15 = &v34 - v14;
  v39 = sub_2749FB524();
  v43 = 1;
  sub_2748C8170(a1, v41);
  memcpy(v44, v41, sizeof(v44));
  memcpy(__dst, v41, 0x80uLL);
  sub_27473ADB8(v44, v40, &unk_28096DD90);
  sub_27472ECBC(__dst, &unk_28096DD90);
  memcpy(&v42[7], v44, 0x80uLL);
  v35 = v43;
  v36 = sub_2749FBC64();
  v40[0] = 1;
  v16 = *(v11 + 28);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_2749FB584();
  (*(*(v18 - 8) + 104))(&v13[v16], v17, v18);
  __asm { FMOV            V0.2D, #12.0 }

  *v13 = _Q0;
  type metadata accessor for CollectionButton(0);
  sub_27473B1B4();
  v24 = v37;
  (*(v4 + 104))(v7, *MEMORY[0x277CDF3C0], v37);
  LOBYTE(v17) = sub_2749FAA84();
  v25 = *(v4 + 8);
  v25(v7, v24);
  v25(v9, v24);
  if (v17)
  {
    sub_2749FC474();
  }

  else
  {
    sub_2749FC454();
  }

  v26 = sub_2749FC484();

  sub_2748CA424(v13, v15, MEMORY[0x277CDFC08]);
  v27 = v38;
  *&v15[*(v38 + 52)] = v26;
  *&v15[*(v27 + 56)] = 256;
  v28 = sub_2749FC914();
  v30 = v29;
  v31 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DD48) + 36);
  sub_2747D31F8(v15, v31, &qword_28096D130);
  v32 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DD80) + 36));
  *v32 = v28;
  v32[1] = v30;
  *a2 = v39;
  *(a2 + 8) = 0;
  *(a2 + 16) = v35;
  memcpy((a2 + 17), v42, 0x87uLL);
  *(a2 + 152) = v36;
  *(a2 + 153) = v41[0];
  *(a2 + 156) = *(v41 + 3);
  result = 0.0;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 1;
  return result;
}

uint64_t sub_2748C8170@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2749FB644();
  LOBYTE(v13[0]) = 1;
  sub_2748C82BC(a1, v11);
  *&__src[7] = v11[0];
  *&__src[23] = v11[1];
  *&__src[39] = v11[2];
  *&__src[55] = v11[3];
  v5 = v13[0];
  v6 = sub_2749FC514();
  v7 = sub_2749FC4A4();
  KeyPath = swift_getKeyPath();
  v12[0] = v4;
  v12[1] = 0;
  LOBYTE(v12[2]) = v5;
  memcpy(&v12[2] + 1, __src, 0x47uLL);
  memcpy(a2, v12, 0x58uLL);
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 104) = v6;
  *(a2 + 112) = KeyPath;
  *(a2 + 120) = v7;
  sub_27473ADB8(v12, v13, &qword_28096B3E8);
  v13[0] = v4;
  v13[1] = 0;
  v14 = v5;
  memcpy(v15, __src, sizeof(v15));
  return sub_27472ECBC(v13, &qword_28096B3E8);
}

uint64_t sub_2748C82BC@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 name];
  if (v4)
  {
    v5 = v4;
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

    sub_27475D0D0();

    v6 = sub_2749FBEE4();
    v8 = v7;
    v10 = v9;
    v11 = sub_2749FBEB4();
    v13 = v12;
    LOBYTE(v5) = v14;
    v33 = v15;
    sub_27477656C(v6, v8, v10 & 1);

    v16 = v5 & 1;
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v16 = 0;
    v33 = 0;
  }

  v17 = [v3 collectionDescription];
  if (v17)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

    sub_27475D0D0();
    swift_bridgeObjectRetain_n();
    v18 = sub_2749FBEE4();
    v20 = v19;
    v32 = v11;
    v22 = v21;
    sub_2749FC4A4();
    v17 = sub_2749FBE84();
    v24 = v23;
    v31 = v25;
    v27 = v26;

    v28 = v22 & 1;
    v11 = v32;
    sub_27477656C(v18, v20, v28);
    swift_bridgeObjectRelease_n();

    v29 = v31 & 1;
  }

  else
  {
    v24 = 0;
    v29 = 0;
    v27 = 0;
  }

  *a2 = v11;
  a2[1] = v13;
  a2[2] = v16;
  a2[3] = v33;
  a2[4] = v17;
  a2[5] = v24;
  a2[6] = v29;
  a2[7] = v27;
  sub_2747FF76C(v11, v13, v16, v33);
  sub_2747FF76C(v17, v24, v29, v27);
  sub_2747FF7B8(v17, v24, v29, v27);
  return sub_2747FF7B8(v11, v13, v16, v33);
}

uint64_t sub_2748C851C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_2748C8594()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

uint64_t sub_2748C861C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2748C8674();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2748C8674()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_2748C86E8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

void (*sub_2748C8758(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_2749FA8F4();
  return sub_2747AA744;
}

uint64_t sub_2748C87E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return sub_2748C8930(v4);
}

uint64_t sub_2748C88BC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  sub_2749FA8D4();
  return swift_endAccess();
}

uint64_t sub_2748C8930(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  OUTLINED_FUNCTION_43();
  v4 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  (*(v4 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  sub_2749FA8E4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_2748C8A58(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  sub_2749FA8D4();
  swift_endAccess();
  return sub_2748C8B7C;
}

void sub_2748C8B7C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_2748C8930(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_2748C8930(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_2748C8C30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2748C8D44(v1, v2);
}

void sub_2748C8C70(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10WorkflowUI20GallerySearchManager_searchTerm);
  swift_beginAccess();
  v6 = *v5 == a1 && v5[1] == a2;
  if (!v6 && (sub_2749FDCC4() & 1) == 0)
  {
    sub_2748C8EF4();
  }
}

uint64_t sub_2748C8CEC()
{
  v1 = (v0 + OBJC_IVAR____TtC10WorkflowUI20GallerySearchManager_searchTerm);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_2748C8D44(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10WorkflowUI20GallerySearchManager_searchTerm);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_2748C8C70(v6, v7);
}

void (*sub_2748C8DB8(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  v4 = (v1 + OBJC_IVAR____TtC10WorkflowUI20GallerySearchManager_searchTerm);
  swift_beginAccess();
  v5 = v4[1];
  v3[3] = *v4;
  v3[4] = v5;

  return sub_2748C8E44;
}

void sub_2748C8E44(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    sub_2748C8D44(v3, v4);
  }

  else
  {
    sub_2748C8D44(*(*a1 + 24), v4);
  }

  free(v2);
}

uint64_t GallerySearchManager.__allocating_init()()
{
  v0 = swift_allocObject();
  GallerySearchManager.init()();
  return v0;
}

void sub_2748C8EF4()
{
  v1 = (v0 + OBJC_IVAR____TtC10WorkflowUI20GallerySearchManager_searchTerm);
  swift_beginAccess();
  v2 = v1[1];
  v3 = *v1 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  if (v3)
  {
    sub_2748C8594();
    v4 = OBJC_IVAR____TtC10WorkflowUI20GallerySearchManager_currentTask;
    [*(v0 + OBJC_IVAR____TtC10WorkflowUI20GallerySearchManager_currentTask) cancel];
    v5 = [objc_opt_self() sharedManager];

    v6 = sub_2749FCD64();

    aBlock[4] = sub_2748CA100;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2748C9544;
    aBlock[3] = &block_descriptor_33;
    v7 = _Block_copy(aBlock);

    v8 = [v5 searchWorkflowsAndCollections:v6 completionHandler:v7];
    _Block_release(v7);

    v9 = *(v0 + v4);
    *(v0 + v4) = v8;
  }

  else
  {
    sub_2748C8594();
  }
}

uint64_t sub_2748C909C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_2749FCA74();
  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2749FCAA4();
  v11 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27471CF08(0, &qword_28159E4E0);
  v20 = sub_2749FD404();
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a2;
  v14[5] = a1;
  aBlock[4] = sub_2748CA110;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274760264;
  aBlock[3] = &block_descriptor_51_0;
  v15 = _Block_copy(aBlock);
  v16 = a3;

  sub_2749FCA94();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274728F18(&qword_28159E580, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
  sub_27472AB6C(&qword_28159E530, &unk_28096DB60);
  sub_2749FD7B4();
  v17 = v20;
  MEMORY[0x277C5F170](0, v13, v10, v15);
  _Block_release(v15);

  (*(v22 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v21);
}

void sub_2748C93BC(void *a1)
{
  if (a1)
  {
    _s3__C4CodeOMa_0(0);
    v2 = a1;
    sub_274728F18(&qword_2809672D8, _s3__C4CodeOMa_0);
    if ((sub_2749F8EF4() & 1) == 0)
    {
      type metadata accessor for Code(0);
      v3 = a1;
      sub_274728F18(&qword_28096DD10, type metadata accessor for Code);
      v4 = sub_2749F8EF4();

      if ((v4 & 1) == 0)
      {
        v5 = a1;
      }

      sub_2748C8594();
    }
  }

  else
  {

    sub_2748C8594();
  }
}

uint64_t sub_2748C9544(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_27471CF08(0, &unk_28096CD30);
    v6 = sub_2749FCF84();
  }

  if (a3)
  {
    sub_27471CF08(0, &qword_28096CB30);
    a3 = sub_2749FCF84();
  }

  v8 = a4;
  v7(v6, a3, a4);
}

uint64_t GallerySearchManager.deinit()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI20GallerySearchManager__state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB88);
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC10WorkflowUI20GallerySearchManager__isActive;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_9();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t GallerySearchManager.__deallocating_deinit()
{
  GallerySearchManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2748C9748@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GallerySearchManager(0);
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

void sub_2748C9948()
{
  sub_2748C99E8();
  if (v0 <= 0x3F)
  {
    sub_2748CA2CC(319, &qword_28096CB80, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2748C99E8()
{
  if (!qword_28096DBB0)
  {
    type metadata accessor for GallerySearchManager(255);
    sub_274728F18(&qword_28159F478, type metadata accessor for GallerySearchManager);
    v0 = sub_2749FB094();
    if (!v1)
    {
      atomic_store(v0, &qword_28096DBB0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI20GallerySearchManagerC5StateO(uint64_t a1)
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

uint64_t sub_2748C9AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GallerySearchResultsView(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_2748C58BC(a1, v6, v7, v8, a2);
}

unint64_t sub_2748C9B38()
{
  result = qword_28096DC00;
  if (!qword_28096DC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096DBD8);
    sub_27472AB6C(&qword_28159E718, &qword_28096DBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096DC00);
  }

  return result;
}

unint64_t sub_2748C9BF0()
{
  result = qword_28096DC10;
  if (!qword_28096DC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DBF8);
    sub_27472AB6C(&qword_28096DBF0, &qword_28096DBE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096DC10);
  }

  return result;
}

void sub_2748C9CA8(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

unint64_t sub_2748C9D10()
{
  result = qword_28096DC38;
  if (!qword_28096DC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DC30);
    sub_2748C9D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096DC38);
  }

  return result;
}

unint64_t sub_2748C9D9C()
{
  result = qword_28096DC40;
  if (!qword_28096DC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DC48);
    sub_27472AB6C(&qword_28096DC50, &qword_28096DC58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096DC40);
  }

  return result;
}

unint64_t sub_2748C9E54()
{
  result = qword_28096DC68;
  if (!qword_28096DC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DC28);
    sub_27472AB6C(&qword_28096DC60, &qword_28096DC20);
    sub_274728F18(&qword_28159E5A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096DC68);
  }

  return result;
}

uint64_t sub_2748C9F3C@<X0>(uint64_t a1@<X8>)
{
  result = sub_2748C851C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return result;
}

unint64_t sub_2748C9FC4()
{
  result = qword_28096CD08;
  if (!qword_28096CD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CD00);
    sub_274728F18(&qword_28096CD10, type metadata accessor for CollectionWorkflowView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CD08);
  }

  return result;
}

uint64_t sub_2748CA080(void *a1)
{
  v1 = [a1 shortDescription];
  if (v1)
  {
    v2 = v1;
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  return OUTLINED_FUNCTION_44();
}

id sub_2748CA11C(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {

    return result;
  }

  return result;
}

void sub_2748CA1A0()
{
  sub_27471CF08(319, &qword_28096CB30);
  if (v0 <= 0x3F)
  {
    sub_2748CA268();
    if (v1 <= 0x3F)
    {
      sub_2748CA2CC(319, &qword_280968A60, MEMORY[0x277CDF3E0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2748CA268()
{
  if (!qword_28096CB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096CB70);
    v0 = sub_2749FAAB4();
    if (!v1)
    {
      atomic_store(v0, &qword_28096CB68);
    }
  }
}

void sub_2748CA2CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2749FAAB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2748CA320()
{
  result = qword_28096DD30;
  if (!qword_28096DD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DD38);
    sub_2748C9B38();
    sub_2748C9BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096DD30);
  }

  return result;
}

uint64_t sub_2748CA3C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

uint64_t sub_2748CA424(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

void sub_2748CA480()
{
  v1 = *(type metadata accessor for CollectionButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_2748C7AB4(v2);
}

unint64_t sub_2748CA4E8()
{
  result = qword_28096DD50;
  if (!qword_28096DD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DD48);
    sub_2748CA5A0();
    sub_27472AB6C(&qword_28096DD78, &qword_28096DD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096DD50);
  }

  return result;
}

unint64_t sub_2748CA5A0()
{
  result = qword_28096DD58;
  if (!qword_28096DD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DD60);
    sub_27472AB6C(&qword_28096DD68, &qword_28096DD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096DD58);
  }

  return result;
}

uint64_t sub_2748CA660()
{
  OUTLINED_FUNCTION_69_0();
  v2 = sub_2749FB4C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DDA0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = type metadata accessor for GalleryShortcutPageiOSView();
  sub_2748D2E58(v1 + *(v9 + 32), v8, &qword_28096DDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAC44();
    OUTLINED_FUNCTION_0_31();
    return (*(v10 + 32))(v0, v8);
  }

  else
  {
    sub_2749FD2D4();
    v12 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_2748CA850()
{
  v1 = sub_2749FB4C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for GalleryShortcutPageiOSView() + 36);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_2749FD2D4();
    v7 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_274877EBC(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_2748CA9B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for GalleryShortcutPageiOSView();
  sub_2748D2E58(v1 + *(v10 + 40), v9, &unk_28096C200);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2749FAE14();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2748CABB8()
{
  v1 = sub_2749FB4C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for GalleryShortcutPageiOSView() + 44);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 16) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_2749FD2D4();
    v8 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_274830180(v6, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return v6;
}

uint64_t sub_2748CAD28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D770);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for GalleryShortcutPageiOSView();
  sub_2748D2E58(v1 + *(v10 + 48), v9, &qword_28096D770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2748D2EA0(v9, a1, &qword_28096DDE0);
  }

  sub_2749FD2D4();
  v12 = sub_2749FBC14();
  sub_2749FA424();

  sub_2749FB4B4();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t GalleryShortcutPageiOSView.body.getter()
{
  OUTLINED_FUNCTION_69_0();
  v2 = type metadata accessor for GalleryShortcutPageiOSView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2748D3554(v1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GalleryShortcutPageiOSView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  result = sub_2748D35AC(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for GalleryShortcutPageiOSView);
  *v0 = sub_2748CB248;
  v0[1] = v6;
  return result;
}

uint64_t type metadata accessor for GalleryShortcutPageiOSView()
{
  result = qword_28096DDA8;
  if (!qword_28096DDA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2748CB068(uint64_t a1, uint64_t a2)
{
  v3 = sub_2749FAE14();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2749FAC54();
  v7 = v6;
  sub_2748CA9B0(v5);
  sub_2748A0890(v5, v22, v7);
  v16 = a2;
  v17 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DE10);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DE18);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DE20);
  v10 = sub_2748D2A9C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DE60);
  v12 = sub_27472AC38(&qword_28096DE68, &qword_28096DE60);
  v18 = v11;
  v19 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return sub_2749FAEC4();
}

uint64_t sub_2748CB248(uint64_t a1)
{
  v3 = type metadata accessor for GalleryShortcutPageiOSView();
  OUTLINED_FUNCTION_34(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_2748CB068(a1, v5);
}

uint64_t sub_2748CB2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v5 = type metadata accessor for GalleryShortcutPageiOSView();
  v6 = *(v5 - 8);
  v62 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DE48);
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v41 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DE40);
  v52 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v59 = &v41 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DE30);
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v61 = &v41 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DE18);
  MEMORY[0x28223BE20](v55);
  v51 = &v41 - v12;
  v65 = a1;
  v66 = a2;
  sub_2749FBC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DE70);
  sub_27472AC38(&qword_28096DE78, &qword_28096DE70);
  sub_2749FAA54();
  v13 = *(a1 + 40);
  v46 = *(a1 + 32);
  v45 = v13;
  v44 = type metadata accessor for GalleryShortcutPageView.PageState();
  sub_2748D350C(&unk_28096DDD0, type metadata accessor for GalleryShortcutPageView.PageState);
  sub_2749FAD94();
  swift_getKeyPath();
  sub_2749FADA4();

  v14 = a1;
  v42 = a1;
  v57 = v8;
  v58 = type metadata accessor for GalleryShortcutPageiOSView;
  sub_2748D3554(a1, v8, type metadata accessor for GalleryShortcutPageiOSView);
  v60 = *(v6 + 80);
  v15 = (v60 + 16) & ~v60;
  v16 = swift_allocObject();
  sub_2748D35AC(v8, v16 + v15, type metadata accessor for GalleryShortcutPageiOSView);
  v43 = type metadata accessor for GalleryShortcutActionsView();
  v17 = sub_27472AC38(&qword_28096DE50, &qword_28096DE48);
  v18 = sub_2748D350C(&qword_28096D7E8, type metadata accessor for GalleryShortcutActionsView);
  v19 = v48;
  v20 = v47;
  sub_2749FC274();

  (*(v49 + 8))(v20, v19);
  sub_2749FAD94();
  swift_getKeyPath();
  sub_2749FADA4();

  v21 = v14;
  v22 = v57;
  v23 = v58;
  sub_2748D3554(v21, v57, v58);
  v24 = swift_allocObject();
  sub_2748D35AC(v22, v24 + v15, v23);
  v25 = type metadata accessor for GalleryImportView();
  v67 = v19;
  v68 = v43;
  v69 = v17;
  v70 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_2748D350C(&qword_28096D7F0, type metadata accessor for GalleryImportView);
  v28 = v50;
  v29 = v59;
  sub_2749FC274();

  (*(v52 + 8))(v29, v28);
  v30 = v42;
  v64 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DE38);
  v67 = v28;
  v68 = v25;
  v69 = OpaqueTypeConformance2;
  v70 = v27;
  swift_getOpaqueTypeConformance2();
  sub_27472AC38(&qword_28096DE58, &qword_28096DE38);
  v31 = v51;
  v32 = v53;
  v33 = v61;
  sub_2749FC2C4();
  (*(v54 + 8))(v33, v32);
  v34 = v57;
  v35 = v58;
  sub_2748D3554(v30, v57, v58);
  v36 = swift_allocObject();
  sub_2748D35AC(v34, v36 + v15, v35);
  v37 = (v31 + *(v55 + 36));
  *v37 = sub_2748D2DB0;
  v37[1] = v36;
  v37[2] = 0;
  v37[3] = 0;
  v63 = v30;
  sub_2749FB634();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DE20);
  sub_2748D2A9C();
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DE60);
  v39 = sub_27472AC38(&qword_28096DE68, &qword_28096DE60);
  v67 = v38;
  v68 = v39;
  swift_getOpaqueTypeConformance2();
  sub_2749FC034();
  return sub_27478C584(v31, &qword_28096DE18);
}

uint64_t sub_2748CBC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v73 = a2;
  v77 = a3;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DEA0);
  MEMORY[0x28223BE20](v74);
  v5 = &v70 - v4;
  v6 = sub_2749FAE14();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v70 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DEA8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v76 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v70 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E020);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v75 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v70 - v20;
  v82 = sub_2749FB634();
  v101 = 1;
  sub_2748CC3E4(a1, v84);
  memcpy(v102, v84, 0xB4uLL);
  memcpy(v103, v84, 0xB4uLL);
  sub_2748D2E58(v102, v83, &qword_28096E028);
  sub_27478C584(v103, &qword_28096E028);
  memcpy(&v100[7], v102, 0xB4uLL);
  v80 = v101;
  v81 = sub_2749FBC84();
  sub_2749FA9E4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  LOBYTE(v84[0]) = 0;
  v79 = sub_2749FBC54();
  sub_2749FA9E4();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  *v21 = sub_2749FB524();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096E030);
  sub_2748CCB88(a1, v73, &v21[*(v38 + 44)]);
  sub_2748CA9B0(v12);
  (*(v7 + 104))(v10, *MEMORY[0x277CDF988], v6);
  sub_2748D350C(&qword_28096CF58, MEMORY[0x277CDFA28]);
  v39 = sub_2749FCD34();
  v40 = *(v7 + 8);
  v40(v10, v6);
  v40(v12, v6);
  v41 = v74;
  v42 = 1;
  if ((v39 & 1) == 0)
  {
    *v5 = sub_2749FB644();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DF20);
    sub_2748D031C(a1, &v5[*(v43 + 44)]);
    v44 = sub_2749FBC84();
    sub_2749FA9E4();
    v72 = v33;
    v73 = v31;
    v45 = v23;
    v47 = v46;
    v48 = v25;
    v50 = v49;
    v70 = v37;
    v71 = v35;
    v51 = v27;
    v53 = v52;
    v54 = v29;
    v56 = v55;
    v57 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DF28) + 36)];
    *v57 = v44;
    *(v57 + 1) = v47;
    *(v57 + 2) = v50;
    v23 = v45;
    v25 = v48;
    v33 = v72;
    v31 = v73;
    *(v57 + 3) = v53;
    *(v57 + 4) = v56;
    v27 = v51;
    v29 = v54;
    v37 = v70;
    v35 = v71;
    v57[40] = 0;
    v58 = sub_2749FBC54();
    sub_2749FA9E4();
    v59 = &v5[*(v41 + 36)];
    *v59 = v58;
    *(v59 + 1) = v60;
    *(v59 + 2) = v61;
    *(v59 + 3) = v62;
    *(v59 + 4) = v63;
    v59[40] = 0;
    sub_2748D2EA0(v5, v78, &qword_28096DEA0);
    v42 = 0;
  }

  v64 = v78;
  __swift_storeEnumTagSinglePayload(v78, v42, 1, v41);
  v65 = v75;
  sub_2748D2E58(v21, v75, &qword_28096E020);
  v66 = v76;
  sub_2748D2E58(v64, v76, &qword_28096DEA8);
  v83[0] = v82;
  v83[1] = 0;
  v74 = v21;
  LOBYTE(v83[2]) = v80;
  memcpy(&v83[2] + 1, v100, 0xBBuLL);
  LOBYTE(v83[26]) = v81;
  *(&v83[26] + 1) = v106[0];
  HIDWORD(v83[26]) = *(v106 + 3);
  v83[27] = v23;
  v83[28] = v25;
  v83[29] = v27;
  v83[30] = v29;
  LOBYTE(v83[31]) = 0;
  *(&v83[31] + 1) = *v105;
  HIDWORD(v83[31]) = *&v105[3];
  LOBYTE(v83[32]) = v79;
  *(&v83[32] + 1) = *v104;
  HIDWORD(v83[32]) = *&v104[3];
  v83[33] = v31;
  v83[34] = v33;
  v83[35] = v35;
  v83[36] = v37;
  LOBYTE(v83[37]) = 0;
  v67 = v77;
  memcpy(v77, v83, 0x129uLL);
  v67[38] = 0;
  *(v67 + 312) = 1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E040);
  sub_2748D2E58(v65, v67 + *(v68 + 64), &qword_28096E020);
  sub_2748D2E58(v66, v67 + *(v68 + 80), &qword_28096DEA8);
  sub_2748D2E58(v83, v84, &qword_28096E048);
  sub_27478C584(v64, &qword_28096DEA8);
  sub_27478C584(v74, &qword_28096E020);
  sub_27478C584(v66, &qword_28096DEA8);
  sub_27478C584(v65, &qword_28096E020);
  v84[0] = v82;
  v84[1] = 0;
  LOBYTE(v84[2]) = v80;
  memcpy(&v84[2] + 1, v100, 0xBBuLL);
  v85 = v81;
  *v86 = v106[0];
  *&v86[3] = *(v106 + 3);
  v87 = v23;
  v88 = v25;
  v89 = v27;
  v90 = v29;
  v91 = 0;
  *v92 = *v105;
  *&v92[3] = *&v105[3];
  v93 = v79;
  *v94 = *v104;
  *&v94[3] = *&v104[3];
  v95 = v31;
  v96 = v33;
  v97 = v35;
  v98 = v37;
  v99 = 0;
  return sub_27478C584(v84, &qword_28096E048);
}

uint64_t sub_2748CC3E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v65 = *a1;
  v2 = *(a1 + 8);
  v76 = sub_27487934C(*a1, v2);
  v77 = v3;
  sub_27475D0D0();
  v4 = sub_2749FBEE4();
  v6 = v5;
  v8 = v7;
  sub_2749FBD14();
  v9 = sub_2749FBEC4();
  v11 = v10;
  v13 = v12;

  sub_27477656C(v4, v6, v8 & 1);

  v14 = sub_2749FBEB4();
  v68 = v15;
  v69 = v14;
  LOBYTE(v4) = v16;
  v18 = v17;
  sub_27477656C(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  v67 = sub_2749FBC84();
  sub_2749FA9E4();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v66 = v4 & 1;
  LOBYTE(v76) = v4 & 1;
  LOBYTE(v73[0]) = 0;
  v71 = v18;
  if (v2)
  {
    goto LABEL_2;
  }

  v48 = v65;
  sub_27487C324(v48);
  if (v49)
  {
LABEL_13:

    v52 = sub_2749FBEE4();
    v54 = v53;
    v56 = v55;
    sub_2749FC4A4();
    v57 = sub_2749FBE84();
    v59 = v58;
    v61 = v60;
    v63 = v62;

    sub_27477656C(v52, v54, v56 & 1);

    LOBYTE(v73[0]) = 1;
    __dst[0] = 0;
    v76 = v57;
    v77 = v59;
    v78 = v61 & 1;
    v80 = v63;
    v81 = swift_getKeyPath();
    v82 = 1;
    v84 = swift_getKeyPath();
    v85 = 0;
    v86[0] = 1;
    *&v86[1] = 256;
    *&v86[3] = v73[0];
    v86[19] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096E050);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D918);
    sub_2748D3604(&qword_28096E060, &unk_28096E050, &unk_274A20578, sub_2748D3684);
    sub_2748D3604(&qword_28096D920, &qword_28096D918, &unk_274A20580, sub_2748C033C);
    sub_2749FB7B4();
    v18 = v71;
    goto LABEL_14;
  }

  v50 = [v48 shortDescription];
  if (v50)
  {
    v51 = v50;
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

    goto LABEL_13;
  }

LABEL_2:
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v28 = qword_28159E448;
  v29 = sub_2749FCD64();
  v30 = sub_2749FCD64();

  v31 = [v28 localizedStringForKey:v29 value:v30 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_274A0EF10;
  sub_2748793FC();
  v34 = v33;
  v36 = v35;
  *(v32 + 56) = MEMORY[0x277D837D0];
  *(v32 + 64) = sub_27475C4F4();
  if (v36)
  {
    v37 = v34;
  }

  else
  {
    v37 = 0;
  }

  v38 = 0xE000000000000000;
  if (v36)
  {
    v38 = v36;
  }

  *(v32 + 32) = v37;
  *(v32 + 40) = v38;
  sub_2749FCD74();

  v39 = sub_2749FBEE4();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = swift_getKeyPath();
  v47 = sub_2749FC4A4();
  LOBYTE(v73[0]) = 1;
  v74[0] = 1;
  v76 = v39;
  v77 = v41;
  v78 = v43 & 1;
  v80 = v45;
  v81 = v46;
  v82 = 1;
  v84 = swift_getKeyPath();
  v85 = v47;
  *v86 = swift_getKeyPath();
  *&v86[8] = 0;
  v86[16] = 1;
  *&v86[17] = 256;
  v86[19] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096E050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D918);
  sub_2748D3604(&qword_28096E060, &unk_28096E050, &unk_274A20578, sub_2748D3684);
  sub_2748D3604(&qword_28096D920, &qword_28096D918, &unk_274A20580, sub_2748C033C);
  sub_2749FB7B4();
LABEL_14:
  memcpy(__dst, __src, 0x54uLL);
  *&v73[0] = v69;
  *(&v73[0] + 1) = v68;
  LOBYTE(v73[1]) = v66;
  *(&v73[1] + 1) = *v90;
  DWORD1(v73[1]) = *&v90[3];
  *(&v73[1] + 1) = v18;
  *&v73[2] = KeyPath;
  BYTE8(v73[2]) = 1;
  *(&v73[2] + 9) = *v89;
  HIDWORD(v73[2]) = *&v89[3];
  LOBYTE(v73[3]) = v67;
  *(&v73[3] + 1) = *v88;
  DWORD1(v73[3]) = *&v88[3];
  *(&v73[3] + 1) = v21;
  *&v73[4] = v23;
  *(&v73[4] + 1) = v25;
  *&v73[5] = v27;
  BYTE8(v73[5]) = 0;
  memcpy(v72, v73, 0x59uLL);
  memcpy(v74, __src, 0x54uLL);
  memcpy(&v72[96], __src, 0x54uLL);
  memcpy(a2, v72, 0xB4uLL);
  sub_2748D2E58(v73, &v76, &qword_28096C180);
  sub_2748D2E58(v74, &v76, &qword_28096E098);
  sub_27478C584(__dst, &qword_28096E098);
  v76 = v69;
  v77 = v68;
  v78 = v66;
  *v79 = *v90;
  *&v79[3] = *&v90[3];
  v80 = v71;
  v81 = KeyPath;
  v82 = 1;
  *v83 = *v89;
  *&v83[3] = *&v89[3];
  LOBYTE(v84) = v67;
  *(&v84 + 1) = *v88;
  HIDWORD(v84) = *&v88[3];
  v85 = v21;
  *v86 = v23;
  *&v86[8] = v25;
  *&v86[16] = v27;
  v87 = 0;
  return sub_27478C584(&v76, &qword_28096C180);
}

uint64_t sub_2748CCB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v63 = a3;
  v5 = type metadata accessor for GalleryShortcutPageiOSView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = type metadata accessor for ShortcutChiclet(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v55 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DA50);
  v13 = MEMORY[0x28223BE20](v59);
  v62 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  MEMORY[0x28223BE20](v15);
  v61 = &v55 - v18;
  v19 = sub_27487934C(*a1, *(a1 + 8));
  v57 = v20;
  v58 = v19;
  v21 = *(a1 + 16);
  v22 = [v21 icon];
  v69[3] = sub_27471CF08(0, &qword_28159E520);
  v69[4] = &protocol witness table for WFWorkflowIcon;
  v69[0] = v22;
  v23 = [v21 associatedAppBundleIdentifier];
  if (v23)
  {
    v24 = v23;
    v56 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v55 = v25;
  }

  else
  {
    v56 = 0;
    v55 = 0;
  }

  v26 = *(a2 + 72);
  v65 = *(a2 + 56);
  v66 = v26;
  v27 = *(a2 + 104);
  v67 = *(a2 + 88);
  v68 = v27;
  v64 = 7;
  sub_2748D3554(a1, &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GalleryShortcutPageiOSView);
  v28 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v29 = swift_allocObject();
  sub_2748D35AC(&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for GalleryShortcutPageiOSView);
  type metadata accessor for ShortcutChiclet.Model(0);
  swift_allocObject();
  ShortcutChiclet.Model.init(metrics:isSelected:isHovered:isEditing:isGallery:isGalleryDetail:isAddedToLibrary:isDownloading:buttonType:buttonAction:)(&v65, 0, 0, 0, 0, 1, 0, 0, &v64, sub_2748D34F8, v29);
  *(v11 + 16) = swift_getKeyPath();
  v11[136] = 0;
  *(v11 + 18) = swift_getKeyPath();
  v11[152] = 0;
  v30 = v8[15];
  *&v11[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  swift_storeEnumTagMultiPayload();
  v31 = v8[16];
  *&v11[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60);
  swift_storeEnumTagMultiPayload();
  v32 = &v11[v8[17]];
  LOBYTE(v64) = 0;
  sub_2749FC5B4();
  v33 = *(&v65 + 1);
  *v32 = v65;
  *(v32 + 1) = v33;
  v34 = &v11[v8[18]];
  LOBYTE(v64) = 0;
  sub_2749FC5B4();
  v35 = *(&v65 + 1);
  *v34 = v65;
  *(v34 + 1) = v35;
  v36 = &v11[v8[19]];
  v37 = &v11[v8[20]];
  v38 = &v11[v8[21]];
  v39 = v57;
  *v11 = v58;
  *(v11 + 1) = v39;
  sub_2747B960C(v69, (v11 + 16));
  v40 = [objc_opt_self() whiteColor];
  v11[89] = 1;
  v41 = v56;
  *(v11 + 7) = v40;
  *(v11 + 8) = v41;
  *(v11 + 9) = v55;
  *(v11 + 10) = 0;
  sub_2748D350C(&qword_2815A0440, type metadata accessor for ShortcutChiclet.Model);

  *(v11 + 12) = sub_2749FAD84();
  *(v11 + 13) = v42;
  type metadata accessor for ShortcutChiclet.Progress(0);
  swift_allocObject();
  ShortcutChiclet.Progress.init()();
  sub_2748D350C(&qword_2815A0130, type metadata accessor for ShortcutChiclet.Progress);
  v43 = sub_2749FAD84();
  v45 = v44;

  *(v11 + 14) = v43;
  *(v11 + 15) = v45;
  *v36 = 0;
  *(v36 + 1) = 0;
  *v37 = 0;
  *(v37 + 1) = 0;
  *v38 = 0;
  *(v38 + 1) = 0;
  v11[88] = 0;
  v46 = v60;
  sub_2748D3554(v11, v60, type metadata accessor for ShortcutChiclet);
  __swift_destroy_boxed_opaque_existential_0(v69);
  sub_2747226B0(v11, type metadata accessor for ShortcutChiclet);
  if (qword_280966C30 != -1)
  {
    swift_once();
  }

  sub_2749FC914();
  sub_2749FABB4();
  sub_2748D35AC(v46, v17, type metadata accessor for ShortcutChiclet);
  v47 = &v17[*(v59 + 36)];
  v48 = v66;
  *v47 = v65;
  *(v47 + 1) = v48;
  *(v47 + 2) = v67;
  v49 = v61;
  sub_2748D2EA0(v17, v61, &unk_28096DA50);
  v50 = v62;
  sub_2748D2E58(v49, v62, &unk_28096DA50);
  v51 = v63;
  *v63 = 0;
  *(v51 + 8) = 1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA68);
  sub_2748D2E58(v50, v51 + *(v52 + 48), &unk_28096DA50);
  v53 = v51 + *(v52 + 64);
  *v53 = 0;
  v53[8] = 1;
  sub_27478C584(v49, &unk_28096DA50);
  return sub_27478C584(v50, &unk_28096DA50);
}

id sub_2748CD2AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 16);
  v3 = *(type metadata accessor for GalleryShortcutActionsView() + 20);
  *(a2 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  swift_storeEnumTagMultiPayload();
  *a2 = v5;

  return v5;
}

id sub_2748CD334@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for GalleryShortcutPageiOSView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v13 = *(a1 + 16);
  sub_2748D3554(a1, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GalleryShortcutPageiOSView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2748D35AC(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for GalleryShortcutPageiOSView);
  v9 = *(type metadata accessor for GalleryImportView() + 32);
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  swift_storeEnumTagMultiPayload();
  v10 = v13;
  a2[4] = 0;
  a2[5] = 0;
  a2[2] = v8;
  a2[3] = 0;
  *a2 = v10;
  a2[1] = sub_2748D31D0;

  return v10;
}

uint64_t sub_2748CD4B0(uint64_t a1)
{
  v2 = type metadata accessor for GalleryShortcutPageiOSView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (*(a1 + 8))
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_274879704(*a1, *(a1 + 8));
  v10 = v9;
  v11 = [objc_opt_self() defaultDatabase];
  v12 = [v6 record];
  v13 = [objc_allocWithZone(MEMORY[0x277D7CA68]) initWithRecord_];

  v18[1] = v13;
  v18[2] = v11;
  v19 = v7;
  v20 = v8;
  v21 = v10;
  v22 = 0;
  v23 = 0;
  result = sub_2748CA850();
  if (result)
  {
    v15 = result;
    sub_2748D3554(a1, v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GalleryShortcutPageiOSView);
    v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v17 = swift_allocObject();
    sub_2748D35AC(v5, v17 + v16, type metadata accessor for GalleryShortcutPageiOSView);
    sub_2747D4BAC(v15, sub_2748D31E8, v17);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2748CD6B0()
{
  v0 = sub_2749FAC44();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = sub_2749FA8F4();
  *v5 = !*v5;
  v4(v7, 0);

  sub_2748CA660();
  sub_2749FAC34();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2748CD804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DFD8);
  MEMORY[0x28223BE20](v19);
  v17 = &v17 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DFE0);
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = &v17 - v5;
  v7 = sub_2749FB834();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DFE8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  sub_2749FB814();
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DFF0);
  sub_27472AC38(&qword_280968460, &unk_28096DFF0);
  sub_2749FAB44();
  sub_2749FB7F4();
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E000);
  sub_2748D2F9C();
  sub_2749FAB44();
  v12 = *(v19 + 48);
  v13 = v17;
  (*(v9 + 16))(v17, v11, v8);
  v14 = &v13[v12];
  v15 = v18;
  (*(v4 + 16))(v14, v6, v18);
  sub_2749FB694();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2748CDB50(uint64_t a1)
{
  v2 = type metadata accessor for GalleryShortcutPageiOSView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_2749FA9C4();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749FA9A4();
  sub_2748D3554(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GalleryShortcutPageiOSView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_2748D35AC(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for GalleryShortcutPageiOSView);
  return MEMORY[0x277C5E390](v7, sub_2748D31B8, v9);
}

uint64_t sub_2748CDCC8(uint64_t a1)
{
  v16 = sub_2749FB4C4();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DDA0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_2749FAC44();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GalleryShortcutPageiOSView();
  sub_2748D2E58(a1 + *(v12 + 32), v7, &qword_28096DDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_2749FAC34();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2748CDF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_2749FB954();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v35 = (v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for GalleryShortcutPageiOSView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966E10);
  v39 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E018);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  v43 = v32 - v10;
  sub_2748D3554(a1, v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GalleryShortcutPageiOSView);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  sub_2748D35AC(v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for GalleryShortcutPageiOSView);
  sub_2749FC624();
  type metadata accessor for GalleryShortcutPageView.PageState();
  sub_2748D350C(&unk_28096DDD0, type metadata accessor for GalleryShortcutPageView.PageState);
  sub_2749FAD94();
  swift_getKeyPath();
  sub_2749FADA4();

  v32[1] = v46;
  sub_2748D3554(a1, v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GalleryShortcutPageiOSView);
  v13 = swift_allocObject();
  sub_2748D35AC(v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11, type metadata accessor for GalleryShortcutPageiOSView);
  v14 = sub_2749FC604();
  v15 = v35;
  *v35 = v14;
  v17 = v37;
  v16 = v38;
  (*(v37 + 104))(v15, *MEMORY[0x277CDE248], v38);
  v18 = sub_27472AC38(&qword_280966E18, &qword_280966E10);
  v19 = sub_274754D68();
  v34 = v18;
  v20 = v36;
  v21 = v33;
  sub_2749FC014();

  (*(v17 + 8))(v15, v16);
  (*(v39 + 8))(v21, v20);
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v22 = qword_28159E448;
  v23 = sub_2749FCD64();
  v24 = sub_2749FCD64();

  v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

  v26 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v28 = v27;

  v48 = v26;
  v49 = v28;
  v44 = v20;
  v45 = &type metadata for GalleryShareHostingView;
  v46 = v34;
  v47 = v19;
  swift_getOpaqueTypeConformance2();
  sub_27475D0D0();
  v29 = v41;
  v30 = v43;
  sub_2749FC0F4();

  return (*(v40 + 8))(v30, v29);
}

uint64_t sub_2748CE560()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v0 = sub_2749FA8F4();
  *v1 = !*v1;
  v0(&v3, 0);
}

uint64_t sub_2748CE5FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2749FC514();
  *a1 = result;
  return result;
}

uint64_t sub_2748CE63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  type metadata accessor for GalleryShortcutPageiOSView();
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DFD0);
  sub_2749FC5C4();
  result = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = CGSizeMake;
  *(a2 + 56) = 0;
  return result;
}

void sub_2748CE704(uint64_t a1)
{
  v2 = type metadata accessor for GalleryShortcutPageiOSView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = [objc_opt_self() sharedManager];
  sub_2748D3554(a1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GalleryShortcutPageiOSView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_2748D35AC(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for GalleryShortcutPageiOSView);
  aBlock[4] = sub_2748D2F00;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2748CE93C;
  aBlock[3] = &block_descriptor_34;
  v8 = _Block_copy(aBlock);

  [v5 getCurrentUserIdentifierWithCompletionHandler_];
  _Block_release(v8);
}

uint64_t sub_2748CE8B4()
{
  type metadata accessor for GalleryShortcutPageiOSView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DFD0);
  return sub_2749FC5D4();
}

uint64_t sub_2748CE93C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t sub_2748CE9D4(uint64_t a1)
{
  v2 = sub_2749FB5F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DE60);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  *v8 = sub_2749FB634();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DE80);
  sub_2748CEB94(a1, &v8[*(v9 + 44)]);
  sub_2749FB5E4();
  sub_27472AC38(&qword_28096DE68, &qword_28096DE60);
  sub_2749FC154();
  (*(v3 + 8))(v5, v2);
  return sub_27478C584(v8, &qword_28096DE60);
}

uint64_t sub_2748CEB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DDE0);
  MEMORY[0x28223BE20](v3 - 8);
  v117 = &v99 - v4;
  v5 = sub_2749FB924();
  v118 = *(v5 - 8);
  v119 = v5;
  MEMORY[0x28223BE20](v5);
  v116 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2749FBAE4();
  v108 = *(v7 - 8);
  v109 = v7;
  MEMORY[0x28223BE20](v7);
  v107 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GalleryShortcutPageiOSView();
  v100 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v101 = v10;
  v102 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D868);
  v105 = *(v11 - 8);
  v106 = v11;
  MEMORY[0x28223BE20](v11);
  v104 = &v99 - v12;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DE90);
  MEMORY[0x28223BE20](v110);
  v103 = &v99 - v13;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DE98);
  v14 = MEMORY[0x28223BE20](v113);
  v115 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v112 = &v99 - v17;
  MEMORY[0x28223BE20](v16);
  v114 = &v99 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DEA0);
  MEMORY[0x28223BE20](v19);
  v21 = &v99 - v20;
  v22 = sub_2749FAE14();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v99 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DEA8);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v111 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v99 - v32;
  v34 = a1;
  sub_2748CA9B0(v28);
  (*(v23 + 104))(v26, *MEMORY[0x277CDF988], v22);
  LOBYTE(a1) = sub_2749FAE04();
  v35 = *(v23 + 8);
  v35(v26, v22);
  v35(v28, v22);
  if (a1)
  {
    *v21 = sub_2749FB644();
    *(v21 + 1) = 0;
    v21[16] = 0;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DF20);
    sub_2748D031C(v34, &v21[*(v36 + 44)]);
    v37 = sub_2749FBC84();
    sub_2749FA9E4();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DF28) + 36)];
    *v46 = v37;
    *(v46 + 1) = v39;
    *(v46 + 2) = v41;
    *(v46 + 3) = v43;
    *(v46 + 4) = v45;
    v46[40] = 0;
    v47 = sub_2749FBC54();
    sub_2749FA9E4();
    v48 = &v21[*(v19 + 36)];
    *v48 = v47;
    *(v48 + 1) = v49;
    *(v48 + 2) = v50;
    *(v48 + 3) = v51;
    *(v48 + 4) = v52;
    v48[40] = 0;
    sub_2748D2EA0(v21, v33, &qword_28096DEA0);
    v53 = 0;
  }

  else
  {
    v53 = 1;
  }

  v54 = v33;
  __swift_storeEnumTagSinglePayload(v33, v53, 1, v19);
  v55 = v102;
  sub_2748D3554(v34, v102, type metadata accessor for GalleryShortcutPageiOSView);
  v56 = (*(v100 + 80) + 16) & ~*(v100 + 80);
  v57 = swift_allocObject();
  v58 = sub_2748D35AC(v55, v57 + v56, type metadata accessor for GalleryShortcutPageiOSView);
  MEMORY[0x28223BE20](v58);
  *(&v99 - 2) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DEB0);
  sub_2748C0030();
  v59 = v104;
  sub_2749FC624();
  v60 = v107;
  sub_2749FBAD4();
  sub_27472AC38(&unk_28096DF00, &qword_28096D868);
  sub_2748D350C(&qword_28096D440, MEMORY[0x277CDE400]);
  v61 = v103;
  v62 = v106;
  v63 = v109;
  sub_2749FBFC4();
  (*(v108 + 8))(v60, v63);
  (*(v105 + 8))(v59, v62);
  v64 = sub_2749FC434();
  KeyPath = swift_getKeyPath();
  v121 = v64;
  v66 = sub_2749FABC4();
  v67 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DF10) + 36));
  *v67 = KeyPath;
  v67[1] = v66;
  v68 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D870) + 36));
  v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D900) + 28);
  v70 = *MEMORY[0x277CDF420];
  v71 = sub_2749FAAA4();
  (*(*(v71 - 8) + 104))(v68 + v69, v70, v71);
  *v68 = swift_getKeyPath();
  LOBYTE(v70) = sub_2749FBC54();
  sub_2749FA9E4();
  v72 = v61 + *(v110 + 36);
  *v72 = v70;
  *(v72 + 8) = v73;
  *(v72 + 16) = v74;
  *(v72 + 24) = v75;
  *(v72 + 32) = v76;
  *(v72 + 40) = 0;
  v77 = sub_2749FBC84();
  v78 = v117;
  sub_2748CAD28(v117);
  v79 = v119;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78, 1, v119);
  v81 = v116;
  if (EnumTagSinglePayload == 1)
  {
    v82 = v118;
    (*(v118 + 104))(v116, *MEMORY[0x277CE0558], v79);
    if (__swift_getEnumTagSinglePayload(v78, 1, v79) != 1)
    {
      sub_27478C584(v78, &qword_28096DDE0);
    }
  }

  else
  {
    v82 = v118;
    (*(v118 + 32))(v116, v78, v79);
  }

  sub_2748A0E0C();
  (*(v82 + 8))(v81, v79);
  sub_2749FA9E4();
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = v112;
  sub_2748D2EA0(v61, v112, &qword_28096DE90);
  v92 = v114;
  v93 = v91 + *(v113 + 36);
  *v93 = v77;
  *(v93 + 8) = v84;
  *(v93 + 16) = v86;
  *(v93 + 24) = v88;
  *(v93 + 32) = v90;
  *(v93 + 40) = 0;
  sub_2748D2EA0(v91, v92, &qword_28096DE98);
  v94 = v111;
  sub_2748D2E58(v54, v111, &qword_28096DEA8);
  v95 = v115;
  sub_2748D2E58(v92, v115, &qword_28096DE98);
  v96 = v120;
  sub_2748D2E58(v94, v120, &qword_28096DEA8);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DF18);
  sub_2748D2E58(v95, v96 + *(v97 + 48), &qword_28096DE98);
  sub_27478C584(v92, &qword_28096DE98);
  sub_27478C584(v54, &qword_28096DEA8);
  sub_27478C584(v95, &qword_28096DE98);
  return sub_27478C584(v94, &qword_28096DEA8);
}

uint64_t sub_2748CF6F4(uint64_t a1)
{
  v2 = type metadata accessor for GalleryShortcutPageiOSView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = [v6 importQuestions];
  sub_27471CF08(0, &qword_28096EA30);
  v8 = sub_2749FCF84();

  v9 = sub_27472D918(v8);

  if (v9)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = sub_2749FA8F4();
    *v11 = !*v11;
    v10(v24, 0);
  }

  else
  {
    if (*(a1 + 8))
    {
      v13 = 3;
    }

    else
    {
      v13 = 1;
    }

    v14 = sub_274879704(*a1, *(a1 + 8));
    v16 = v15;
    v17 = [objc_opt_self() defaultDatabase];
    v18 = [v6 record];
    v19 = [objc_allocWithZone(MEMORY[0x277D7CA68]) initWithRecord_];

    v24[0] = v19;
    v24[1] = v17;
    v25 = v13;
    v26 = v14;
    v27 = v16;
    v28 = 0;
    v29 = 0;
    result = sub_2748CA850();
    if (result)
    {
      v20 = result;
      sub_2748D3554(a1, &v24[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GalleryShortcutPageiOSView);
      v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v22 = swift_allocObject();
      sub_2748D35AC(v5, v22 + v21, type metadata accessor for GalleryShortcutPageiOSView);
      sub_2747D4BAC(v20, sub_2748D2EE8, v22);

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2748CF9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for RootNavigationDestination();
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2749FAC44();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2748CA660();
  sub_2749FAC34();
  result = (*(v8 + 8))(v10, v7);
  if (*(a3 + 8) == 1)
  {
    LODWORD(v17) = 257;
    BYTE4(v17) = 1;
    v18 = 0uLL;
    *(&v17 + 1) = 0;
    if (sub_2748CABB8())
    {
      v13 = v12;
      ObjectType = swift_getObjectType();
      swift_storeEnumTagMultiPayload();
      v15 = v17;
      v16 = v18;
      (*(v13 + 32))(v6, &v15, 0, 0, ObjectType, v13);
      swift_unknownObjectRelease();
      sub_2747A371C(v15, *(&v15 + 1), v16);
      return sub_2747226B0(v6, type metadata accessor for RootNavigationDestination);
    }

    else
    {
      return sub_2747A48E8(&v17);
    }
  }

  return result;
}

void *sub_2748CFBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &__src[-v5];
  v7 = sub_2749FBE14();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &__src[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D8B0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &__src[-v13];
  sub_2748CFE78(a1, &__src[-v13]);
  (*(v8 + 104))(v10, *MEMORY[0x277CE0AC0], v7);
  v15 = sub_2749FBD24();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v15);
  sub_2749FBD74();
  sub_27478C584(v6, &unk_28096C0A0);
  (*(v8 + 8))(v10, v7);
  sub_2749FBD54();
  v16 = sub_2749FBDA4();

  KeyPath = swift_getKeyPath();
  v18 = &v14[*(v12 + 44)];
  *v18 = KeyPath;
  v18[1] = v16;
  sub_2749FC914();
  sub_2749FB004();
  sub_2748D2EA0(v14, a2, &unk_28096D8B0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DEB0);
  return memcpy((a2 + *(v19 + 36)), __src, 0x70uLL);
}

uint64_t sub_2748CFE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D980);
  MEMORY[0x28223BE20](v4);
  v6 = v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D8E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v32 - v9;
  v11 = [*(a1 + 16) importQuestions];
  sub_27471CF08(0, &qword_28096EA30);
  v12 = sub_2749FCF84();

  v13 = sub_27472D918(v12);

  if (v13)
  {
    sub_2749FCE14();
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v14 = qword_28159E448;
    v15 = sub_2749FCD64();

    v16 = sub_2749FCD64();

    v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

    v18 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v20 = v19;

    v33 = v18;
    v34 = v20;
    sub_27475D0D0();
    *v6 = sub_2749FBEE4();
    *(v6 + 1) = v21;
    v6[16] = v22 & 1;
    *(v6 + 3) = v23;
    swift_storeEnumTagMultiPayload();
    sub_27472AC38(&unk_28096DEF0, &unk_28096D8E0);
    return sub_2749FB7B4();
  }

  else
  {
    v32[1] = a2;
    sub_2749FCE14();
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v25 = qword_28159E448;
    v26 = sub_2749FCD64();

    v27 = sub_2749FCD64();

    v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

    v29 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v31 = v30;

    v33 = v29;
    v34 = v31;
    sub_27475D0D0();
    sub_2749FC594();
    (*(v8 + 16))(v6, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_27472AC38(&unk_28096DEF0, &unk_28096D8E0);
    sub_2749FB7B4();
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_2748D031C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DF30);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v100 = &v80 - v8;
  v89 = sub_2749FBA94();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v85 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DF38);
  MEMORY[0x28223BE20](v81);
  v82 = (&v80 - v10);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DF40);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v84 = &v80 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DF48);
  MEMORY[0x28223BE20](v12);
  v83 = &v80 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DF50);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v99 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v105 = &v80 - v17;
  v97 = sub_2749FB5D4();
  v95 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D9C8);
  MEMORY[0x28223BE20](v20);
  v96 = &v80 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DF60);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v98 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v80 - v25;
  v27 = objc_opt_self();
  v28 = [v27 isSiriEnabled];
  v102 = v7;
  v103 = v4;
  v104 = v26;
  if (v28 && ([v27 isHeySiriEnabled] & 1) != 0 || (sub_2748D0ED0(), v30 = *(v29 + 16), , v30))
  {
    v90 = v27;
    v91 = v20;
    v92 = v12;
    v93 = a1;
    v94 = v3;
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v31 = qword_28159E448;
    v32 = sub_2749FCD64();
    v33 = sub_2749FCD64();

    v34 = [v31 localizedStringForKey:v32 value:v33 table:0];

    v35 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v37 = v36;

    __src[0] = v35;
    __src[1] = v37;
    sub_27475D0D0();
    v38 = sub_2749FBEE4();
    v40 = v39;
    LOBYTE(v37) = v41;
    sub_2749FBE04();
    v42 = sub_2749FBEC4();
    v44 = v43;
    v46 = v45;

    sub_27477656C(v38, v40, v37 & 1);

    sub_2749FC4A4();
    v47 = sub_2749FBE84();
    v49 = v48;
    LOBYTE(v40) = v50;
    v52 = v51;

    sub_27477656C(v42, v44, v46 & 1);

    __src[0] = v47;
    __src[1] = v49;
    LOBYTE(__src[2]) = v40 & 1;
    __src[3] = v52;
    sub_2749FB5C4();
    v53 = v96;
    sub_2749FC1D4();
    (*(v95 + 8))(v19, v97);
    sub_27477656C(v47, v49, v40 & 1);

    LOBYTE(v38) = sub_2749FBC84();
    sub_2749FA9E4();
    v20 = v91;
    v54 = v53 + *(v91 + 36);
    *v54 = v38;
    *(v54 + 8) = v55;
    *(v54 + 16) = v56;
    *(v54 + 24) = v57;
    *(v54 + 32) = v58;
    *(v54 + 40) = 0;
    v26 = v104;
    sub_2748D2EA0(v53, v104, &qword_28096D9C8);
    v59 = 0;
    v3 = v94;
    a1 = v93;
    v12 = v92;
    v27 = v90;
  }

  else
  {
    v59 = 1;
  }

  v60 = 1;
  __swift_storeEnumTagSinglePayload(v26, v59, 1, v20);
  if ([v27 isSiriEnabled] && objc_msgSend(v27, sel_isHeySiriEnabled))
  {
    v61 = sub_2749FB524();
    v62 = v82;
    *v82 = v61;
    *(v62 + 8) = 0x4018000000000000;
    *(v62 + 16) = 0;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DF98);
    sub_2748D1144(a1, v62 + *(v63 + 44));
    v64 = v85;
    sub_2749FBA74();
    sub_27472AC38(&qword_28096DFA0, &qword_28096DF38);
    v65 = v84;
    sub_2749FC1A4();
    (*(v88 + 8))(v64, v89);
    sub_27478C584(v62, &qword_28096DF38);
    sub_2749FC924();
    sub_2749FB004();
    v66 = v83;
    (*(v86 + 32))(v83, v65, v87);
    memcpy((v66 + *(v12 + 36)), __src, 0x70uLL);
    sub_2748D2EA0(v66, v105, &qword_28096DF48);
    v60 = 0;
  }

  v67 = v105;
  __swift_storeEnumTagSinglePayload(v105, v60, 1, v12);
  sub_2748D0ED0();
  v106 = v68;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DF70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D9D8);
  sub_27472AC38(&unk_28096DF80, &unk_28096DF70);
  sub_2748C0854();
  v69 = v100;
  sub_2749FC754();
  v70 = v98;
  sub_2748D2E58(v26, v98, &unk_28096DF60);
  v71 = v99;
  sub_2748D2E58(v67, v99, &unk_28096DF50);
  v72 = v102;
  v73 = v103;
  v74 = *(v103 + 16);
  v74(v102, v69, v3);
  v75 = v3;
  v76 = v101;
  sub_2748D2E58(v70, v101, &unk_28096DF60);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DF90);
  sub_2748D2E58(v71, v76 + *(v77 + 48), &unk_28096DF50);
  v74((v76 + *(v77 + 64)), v72, v75);
  v78 = *(v73 + 8);
  v78(v69, v75);
  sub_27478C584(v105, &unk_28096DF50);
  sub_27478C584(v104, &unk_28096DF60);
  v78(v72, v75);
  sub_27478C584(v71, &unk_28096DF50);
  return sub_27478C584(v70, &unk_28096DF60);
}

void sub_2748D0ED0()
{
  v1 = [*(v0 + 24) workflowTypes];
  type metadata accessor for WFWorkflowTypeName(0);
  v2 = sub_2749FCF84();

  v3 = 0;
  v4 = *(v2 + 16);
  v25 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v4 == v3)
    {

      return;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    v5 = *(v2 + 8 * v3 + 32);
    v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v8 = v7;
    if (v6 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v8 == v9)
    {
      v21 = v5;

      goto LABEL_13;
    }

    v11 = sub_2749FDCC4();
    v12 = v5;

    if (v11)
    {
LABEL_13:
      sub_27471CF08(0, &qword_28096BB10);
      v20 = sub_274903E28();
LABEL_14:

      WFWorkflowTypeName.appearsInName.getter();
      if (!v22)
      {

        goto LABEL_16;
      }

      v23 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_27476DA78();
        v23 = v25;
      }

      v24 = *(v23 + 16);
      if (v24 >= *(v23 + 24) >> 1)
      {
        sub_27476DA78();
        v23 = v25;
      }

      ++v3;
      *(v23 + 16) = v24 + 1;
      v25 = v23;
      *(v23 + 8 * v24 + 32) = v5;
    }

    else
    {
      v13 = WFWorkflowTypeName.symbolName.getter();
      if (v14)
      {
        v15 = v13;
        v16 = v14;
        v17 = WFWorkflowTypeName.symbolBackground.getter();
        if (v17)
        {
          v18 = v17;
          v19 = objc_allocWithZone(MEMORY[0x277D7A158]);
          v20 = sub_27491A250(v15, v16, v18);
          goto LABEL_14;
        }
      }

      else
      {
      }

LABEL_16:
      ++v3;
    }
  }

  __break(1u);
}

uint64_t sub_2748D1144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v47 = a2;
  v2 = sub_2749FA2F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2749FA2C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969E48);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  sub_27471CF08(0, &qword_28096BB10);
  sub_274903E28();
  (*(v7 + 104))(v9, *MEMORY[0x277D7D6A0], v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D7D6D0], v2);
  sub_2749FA314();
  v17 = sub_2749FBCC4();
  sub_2749FA9E4();
  v18 = &v16[*(v11 + 44)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v23 = qword_28159E448;
  v24 = sub_2749FCD64();
  v25 = sub_2749FCD64();

  v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_274A0EF10;
  v28 = objc_opt_self();
  sub_27487934C(*v46, *(v46 + 8));
  v29 = sub_2749FCD64();

  v30 = [v28 localizedTriggerPhraseWithMessage_];

  v31 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v33 = v32;

  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = sub_27475C4F4();
  *(v27 + 32) = v31;
  *(v27 + 40) = v33;
  v34 = sub_2749FCD74();
  v36 = v35;

  v48 = v34;
  v49 = v36;
  sub_27475D0D0();
  v37 = sub_2749FBEE4();
  v39 = v38;
  LOBYTE(v34) = v40;
  v42 = v41;
  sub_2748D2E58(v16, v14, &qword_280969E48);
  v43 = v47;
  sub_2748D2E58(v14, v47, &qword_280969E48);
  v44 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DFA8) + 48);
  *v44 = v37;
  *(v44 + 8) = v39;
  *(v44 + 16) = v34 & 1;
  *(v44 + 24) = v42;
  sub_274754DBC(v37, v39, v34 & 1);

  sub_27478C584(v16, &qword_280969E48);
  sub_27477656C(v37, v39, v34 & 1);

  return sub_27478C584(v14, &qword_280969E48);
}

void *sub_2748D1634@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v15 = sub_2749FBA94();
  v1 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA00);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DFB0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  *v6 = sub_2749FB524();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DA40);
  sub_2748D1910(&v6[*(v11 + 44)]);
  sub_2749FBA74();
  sub_27472AC38(&qword_28096DA08, &qword_28096DA00);
  sub_2749FC1A4();
  (*(v1 + 8))(v3, v15);
  sub_27478C584(v6, &qword_28096DA00);
  sub_2749FC924();
  sub_2749FB004();
  v12 = v16;
  (*(v8 + 32))(v16, v10, v7);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D9D8);
  return memcpy((v12 + *(v13 + 36)), __src, 0x70uLL);
}

uint64_t sub_2748D1910@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DFC0);
  MEMORY[0x28223BE20](v55);
  v54 = &v51 - v1;
  v2 = sub_2749FA2F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2749FA2C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA28);
  v11 = MEMORY[0x28223BE20](v10);
  v53 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - v13;
  v15 = WFWorkflowTypeName.icon.getter();
  if (v15)
  {
    v16 = v15;
    v17 = WFWorkflowTypeName.appearsInName.getter();
    if (v18)
    {
      v19 = v18;
      v20 = *MEMORY[0x277D7D6A0];
      v21 = *(v7 + 104);
      v51 = v17;
      v21(v9, v20, v6);
      (*(v3 + 104))(v5, *MEMORY[0x277D7D6D0], v2);
      v52 = v16;
      sub_2749FA314();
      v22 = sub_2749FBCC4();
      sub_2749FA9E4();
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v31 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969E48) + 36)];
      *v31 = v22;
      *(v31 + 1) = v24;
      *(v31 + 2) = v26;
      *(v31 + 3) = v28;
      *(v31 + 4) = v30;
      v31[40] = 0;
      v32 = sub_2749FBCB4();
      sub_2749FA9E4();
      v33 = &v14[*(v10 + 36)];
      *v33 = v32;
      *(v33 + 1) = v34;
      *(v33 + 2) = v35;
      *(v33 + 3) = v36;
      *(v33 + 4) = v37;
      v33[40] = 0;
      v57 = v51;
      v58 = v19;
      sub_27475D0D0();
      v38 = sub_2749FBEE4();
      v40 = v39;
      LOBYTE(v19) = v41;
      v43 = v42;
      v44 = v53;
      sub_2748D2E58(v14, v53, &qword_28096DA28);
      v45 = v54;
      sub_2748D2E58(v44, v54, &qword_28096DA28);
      v46 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DA30) + 48);
      LOBYTE(v19) = v19 & 1;
      sub_274754DBC(v38, v40, v19);

      *v46 = v38;
      *(v46 + 8) = v40;
      *(v46 + 16) = v19;
      *(v46 + 24) = v43;
      sub_27478C584(v14, &qword_28096DA28);
      sub_27477656C(v38, v40, v19);

      sub_27478C584(v44, &qword_28096DA28);
      v47 = v56;
      sub_2748D2EA0(v45, v56, &unk_28096DFC0);
      return __swift_storeEnumTagSinglePayload(v47, 0, 1, v55);
    }
  }

  v50 = v55;
  v49 = v56;

  return __swift_storeEnumTagSinglePayload(v49, 1, 1, v50);
}

id sub_2748D1DA0()
{
  v1 = v0;
  v2 = sub_2749F9064();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  v9 = *(v0 + 8);
  v10 = *v0;
  v11 = [v10 sharingURL];
  v12 = (v3 + 16);
  if (v9)
  {
    sub_2749F9034();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00);
    v13 = swift_allocObject();
    v35 = xmmword_274A0F620;
    *(v13 + 16) = xmmword_274A0F620;
    *(v13 + 56) = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 32));
    v36 = *v12;
    v36(boxed_opaque_existential_1, v6, v2);
    v34 = sub_27471CF08(0, &qword_28096B810);
    *(v13 + 88) = v34;
    *(v13 + 64) = v10;
    v15 = objc_allocWithZone(MEMORY[0x277D546D8]);
    v16 = v10;
    v17 = sub_2748D28F0(v13, 0);
    v18 = sub_2748D299C(v16);
    v20 = v1[3];
    if (v19)
    {
      if (v20)
      {
        if (v18 == v1[2] && v19 == v20)
        {

LABEL_16:
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_274A11F70;
          *(v28 + 32) = [objc_allocWithZone(WFStopSharingWorkflowActivity) init];
          goto LABEL_17;
        }

        v22 = sub_2749FDCC4();

        if (v22)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    else if (!v20)
    {
      goto LABEL_16;
    }

    v33 = v1[6];
    objc_allocWithZone(type metadata accessor for ReportShortcutActivity());
    v26 = v16;

    v27 = ReportShortcutActivity.init(shortcut:completion:)();
    swift_unknownObjectWeakAssign();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_274A11F70;
    *(v28 + 32) = v27;
LABEL_17:
    v29 = swift_allocObject();
    *(v29 + 16) = v35;
    *(v29 + 56) = v2;
    v30 = __swift_allocate_boxed_opaque_existential_1((v29 + 32));
    v36(v30, v6, v2);
    *(v29 + 88) = v34;
    *(v29 + 64) = v16;
    v31 = v16;
    v10 = sub_2749FCF74();

    sub_2748D2A00(v10, v28, v17);

    goto LABEL_18;
  }

  sub_2749F9034();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_274A0EF10;
  *(v23 + 56) = v2;
  v24 = __swift_allocate_boxed_opaque_existential_1((v23 + 32));
  (*v12)(v24, v8, v2);
  v25 = objc_allocWithZone(MEMORY[0x277D546D8]);
  v17 = sub_2748D28F0(v23, 0);
  v6 = v8;
LABEL_18:

  (*(v3 + 8))(v6, v2);
  return v17;
}

uint64_t sub_2748D2284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2748D289C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2748D22E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2748D289C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2748D234C()
{
  sub_2748D289C();
  sub_2749FBB74();
  __break(1u);
}

uint64_t WFSharedShortcut.id.getter()
{
  v1 = [v0 identifier];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 recordName];

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_2748D2414@<X0>(uint64_t *a1@<X8>)
{
  result = WFSharedShortcut.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_2748D2468()
{
  sub_27471CF08(319, &qword_28096BF80);
  if (v0 <= 0x3F)
  {
    sub_27471CF08(319, &qword_28096DDC0);
    if (v1 <= 0x3F)
    {
      sub_2748D26AC();
      if (v2 <= 0x3F)
      {
        sub_2748D2740(319, &qword_28096BEC0, MEMORY[0x277CDD848]);
        if (v3 <= 0x3F)
        {
          sub_2748D2794(319, &unk_28096D390, &qword_28096BF90, &unk_274A1C040, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_2748D2740(319, &qword_28096CB80, MEMORY[0x277CDFA28]);
            if (v5 <= 0x3F)
            {
              sub_2748D2794(319, &qword_28096CB68, &unk_28096CB70, &unk_274A1FEF0, MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_2748D2794(319, &qword_28096D830, &qword_28096DDE0, &unk_274A195A0, MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_2748D2794(319, &qword_28096DDE8, &qword_28096C210, &unk_274A12840, MEMORY[0x277CE10B8]);
                  if (v8 <= 0x3F)
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
  }
}

void sub_2748D26AC()
{
  if (!qword_28096DDC8)
  {
    type metadata accessor for GalleryShortcutPageView.PageState();
    sub_2748D350C(&unk_28096DDD0, type metadata accessor for GalleryShortcutPageView.PageState);
    v0 = sub_2749FADB4();
    if (!v1)
    {
      atomic_store(v0, &qword_28096DDC8);
    }
  }
}

void sub_2748D2740(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2749FAAB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2748D2794(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2748D27F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_2748D2838(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2748D289C()
{
  result = qword_28096DE08;
  if (!qword_28096DE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096DE08);
  }

  return result;
}

id sub_2748D28F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2749FCF74();

  if (a2)
  {
    sub_27471CF08(0, &qword_28096A4E0);
    v5 = sub_2749FCF74();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v2 initWithActivityItems:v4 applicationActivities:v5];

  return v6;
}

uint64_t sub_2748D299C(void *a1)
{
  v1 = [a1 createdBy];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v3;
}

void sub_2748D2A00(uint64_t a1, uint64_t a2, void *a3)
{
  sub_27471CF08(0, &qword_28096A4E0);
  v5 = sub_2749FCF74();

  [a3 _updateActivityItems_applicationActivities_];
}

unint64_t sub_2748D2A9C()
{
  result = qword_28096DE28;
  if (!qword_28096DE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DE18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DE30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DE38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DE40);
    type metadata accessor for GalleryImportView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DE48);
    type metadata accessor for GalleryShortcutActionsView();
    sub_27472AC38(&qword_28096DE50, &qword_28096DE48);
    sub_2748D350C(&qword_28096D7E8, type metadata accessor for GalleryShortcutActionsView);
    swift_getOpaqueTypeConformance2();
    sub_2748D350C(&qword_28096D7F0, type metadata accessor for GalleryImportView);
    swift_getOpaqueTypeConformance2();
    sub_27472AC38(&qword_28096DE58, &qword_28096DE38);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096DE28);
  }

  return result;
}

uint64_t sub_2748D2D34(uint64_t (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_69_0();
  v1 = type metadata accessor for GalleryShortcutPageiOSView();
  OUTLINED_FUNCTION_34(v1);
  v3 = OUTLINED_FUNCTION_10_23(*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2748D2DE8(uint64_t (*a1)(uint64_t))
{
  v1 = type metadata accessor for GalleryShortcutPageiOSView();
  OUTLINED_FUNCTION_34(v1);
  v3 = OUTLINED_FUNCTION_10_23(*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2748D2E58(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_47(a1, a2, a3);
  OUTLINED_FUNCTION_0_31();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return v3;
}

uint64_t sub_2748D2EA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_47(a1, a2, a3);
  OUTLINED_FUNCTION_0_31();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return v3;
}

uint64_t sub_2748D2F00()
{
  v0 = type metadata accessor for GalleryShortcutPageiOSView();
  OUTLINED_FUNCTION_34(v0);

  return sub_2748CE8B4();
}

unint64_t sub_2748D2F9C()
{
  result = qword_28096E008;
  if (!qword_28096E008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280966E10);
    sub_27472AC38(&qword_280966E18, &qword_280966E10);
    sub_274754D68();
    swift_getOpaqueTypeConformance2();
    sub_2748D350C(&qword_28159E5A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E008);
  }

  return result;
}

uint64_t sub_2748D30F0()
{
  v0 = type metadata accessor for GalleryShortcutPageiOSView();
  OUTLINED_FUNCTION_34(v0);
  OUTLINED_FUNCTION_10_23(*(v1 + 80));
  return sub_2748CE560();
}

uint64_t sub_2748D3158()
{
  OUTLINED_FUNCTION_69_0();
  v1 = type metadata accessor for GalleryShortcutPageiOSView();
  OUTLINED_FUNCTION_34(v1);
  v3 = OUTLINED_FUNCTION_10_23(*(v2 + 80));

  return sub_2748CE63C(v3, v0);
}

uint64_t sub_2748D3200(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void, uint64_t))
{
  v6 = type metadata accessor for GalleryShortcutPageiOSView();
  OUTLINED_FUNCTION_34(v6);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a3(a1, a2 & 1, v8);
}

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for GalleryShortcutPageiOSView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAC44();
    OUTLINED_FUNCTION_9();
    (*(v7 + 8))(v5 + v6);
  }

  else
  {
  }

  sub_274877EBC(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v8 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAE14();
    OUTLINED_FUNCTION_9();
    (*(v9 + 8))(v5 + v8);
  }

  else
  {
  }

  sub_274830180(*(v5 + v1[11]), *(v5 + v1[11] + 8), *(v5 + v1[11] + 16));
  v10 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2749FB924();
    if (!__swift_getEnumTagSinglePayload(v5 + v10, 1, v11))
    {
      (*(*(v11 - 8) + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2748D350C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2748D3554(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_31();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

uint64_t sub_2748D35AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_31();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

uint64_t sub_2748D3604(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_108(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2748D3684()
{
  result = qword_28096E068;
  if (!qword_28096E068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096E070);
    sub_274776C14();
    sub_27472AC38(&qword_28159E5A8, &unk_28096D970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E068);
  }

  return result;
}

uint64_t TriggerEmptyStateView.init(handler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t TriggerEmptyStateView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_2749FC914();
  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E0A0);
  return sub_2748D37A0(v4, v3, a1 + *(v6 + 44));
}

uint64_t sub_2748D37A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E0B8);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - v11;
  v13 = [objc_opt_self() systemGroupedBackgroundColor];
  v28 = sub_2749FC3E4();
  v27 = sub_2749FAED4();
  v26 = sub_2749FBC64();
  v29 = a1;
  v30 = a2;
  v25[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D8E0);
  v25[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E0C0);
  sub_27472AB6C(&unk_28096DEF0, &unk_28096D8E0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E0C8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E0D0);
  v16 = sub_2749FBAE4();
  v17 = sub_2748D422C();
  v18 = sub_2747808A0();
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v14;
  v32 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_2749FB8A4();
  v20 = *(v7 + 16);
  v20(v10, v12, v6);
  v21 = v27;
  *a3 = v28;
  *(a3 + 8) = v21;
  *(a3 + 16) = v26;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096E0E0);
  v20((a3 + *(v22 + 48)), v10, v6);
  v23 = *(v7 + 8);

  v23(v12, v6);
  v23(v10, v6);
}

uint64_t sub_2748D3B60@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967710);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_2748D4310();
  sub_2748D3C8C();
  sub_2749FC574();
  sub_2749FB664();
  v5 = sub_2749FB684();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  v6 = sub_2749FC544();

  result = sub_2747BC7EC(v4, &qword_280967710);
  *a1 = v6;
  return result;
}

id sub_2748D3C8C()
{
  v0 = sub_2749FCD64();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v1;
}

uint64_t sub_2748D3D00@<X0>(uint64_t a1@<X8>)
{
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v2 = qword_28159E448;
  v3 = sub_2749FCD64();
  v4 = sub_2749FCD64();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_27475D0D0();
  result = sub_2749FBEE4();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_2748D3E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v31 = a2;
  v34 = a3;
  v3 = sub_2749FBAE4();
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E0D0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E0C8);
  v9 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v11 = &v29 - v10;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v12 = qword_28159E448;
  v13 = sub_2749FCD64();
  v14 = sub_2749FCD64();

  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  v16 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v18 = v17;

  v35 = v16;
  v36 = v18;
  v19 = swift_allocObject();
  v20 = v31;
  *(v19 + 16) = v30;
  *(v19 + 24) = v20;
  sub_27475D0D0();

  sub_2749FC644();
  v21 = &v8[*(v6 + 36)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D900) + 28);
  v23 = *MEMORY[0x277CDF420];
  v24 = sub_2749FAAA4();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  sub_2749FBAD4();
  v25 = sub_2748D422C();
  v26 = sub_2747808A0();
  sub_2749FBFC4();
  (*(v32 + 8))(v5, v3);
  sub_2747BC7EC(v8, &qword_28096E0D0);
  sub_2749FBD54();
  v35 = v6;
  v36 = v3;
  v37 = v25;
  v38 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v33;
  sub_2749FBFA4();
  return (*(v9 + 8))(v11, v27);
}

unint64_t sub_2748D422C()
{
  result = qword_28096E0D8;
  if (!qword_28096E0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E0D0);
    sub_27472AB6C(&unk_28096B360, &unk_28096CFC0);
    sub_27472AB6C(&qword_28096C070, &qword_28096D900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E0D8);
  }

  return result;
}

unint64_t sub_2748D4310()
{
  result = qword_280967ED8;
  if (!qword_280967ED8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280967ED8);
  }

  return result;
}

uint64_t sub_2748D43A0()
{
  result = _UISolariumEnabled();
  v1 = 27.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_28096E0F0 = *&v1;
  return result;
}

char *SmartShortcutPickerViewController.init(dataSource:style:selectionCoordinator:)(uint64_t a1, const void *a2, uint64_t a3)
{
  memcpy(__dst, a2, 0x59uLL);
  *(v3 + OBJC_IVAR____TtC10WorkflowUI33SmartShortcutPickerViewController_progressiveView) = 0;
  *(v3 + OBJC_IVAR____TtC10WorkflowUI33SmartShortcutPickerViewController_searchBar) = 0;
  v15 = 0;

  v6 = sub_2747DEC58(a1, __dst, &v15, a3);
  v7 = *&v6[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_smartShortcutPickerDataSource];
  OUTLINED_FUNCTION_86();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *(v7 + 136);
  *(v7 + 136) = sub_2748D45F0;
  *(v7 + 144) = v8;
  v10 = v6;

  sub_27471F8A4(v9);

  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  [v12 addObserver:v10 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

  v13 = [v11 defaultCenter];
  [v13 addObserver:v10 selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];

  return v10;
}

void sub_2748D4594()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2748D6B10();
  }
}

id SmartShortcutPickerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SmartShortcutPickerViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC10WorkflowUI33SmartShortcutPickerViewController_progressiveView) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI33SmartShortcutPickerViewController_searchBar) = 0;
  sub_2749FDAE4();
  __break(1u);
}

void sub_2748D46C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI33SmartShortcutPickerViewController_searchBar);
}

id SmartShortcutPickerViewController.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SmartShortcutPickerViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2748D4814()
{
  v0 = sub_2749FB624();
  OUTLINED_FUNCTION_43();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E1F8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = (&v13 - v8);
  *v9 = sub_2749FC8F4();
  v9[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E200);
  sub_2748D499C((v9 + *(v11 + 44)));
  (*(v2 + 104))(v6, *MEMORY[0x277CE0270], v0);
  sub_2748D7824();
  sub_2749FBF04();
  (*(v2 + 8))(v6, v0);
  return sub_27472ECBC(v9, &qword_28096E1F8);
}

id sub_2748D499C@<X0>(uint64_t *a1@<X8>)
{
  v52 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E220);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v39 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  if (qword_280966C78 != -1)
  {
    swift_once();
  }

  v51 = qword_280970D00;

  sub_2749FC914();
  sub_2749FABB4();
  v46 = v64;
  v45 = v65;
  v47 = v67;
  v50 = v68;
  v48 = v66;
  v49 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096E228);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_274A0F620;
  sub_2749FC454();
  sub_2749FC484();

  *(v10 + 32) = sub_2749FC844();
  *(v10 + 40) = v11;
  sub_2749FC454();
  *(v10 + 48) = sub_2749FC844();
  *(v10 + 56) = v12;
  v13 = sub_2749FC854();
  sub_2749FC914();
  sub_2749FABB4();
  *&v62[6] = v70;
  *&v62[22] = v71;
  *&v62[38] = v72;
  sub_2749FC914();
  sub_2749FB004();
  v14 = sub_2749FBC74();
  sub_2749FA9E4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v63 = 0;
  v23 = *(v1 + 36);
  v24 = *MEMORY[0x277CE13C0];
  v25 = sub_2749FC994();
  (*(*(v25 - 8) + 104))(&v7[v23], v24, v25);
  *v7 = v13;
  *(v7 + 4) = 256;
  *(v7 + 10) = *v62;
  *(v7 + 26) = *&v62[16];
  *(v7 + 42) = *&v62[32];
  *(v7 + 7) = *&v62[46];
  memcpy(v7 + 64, v61, 0x70uLL);
  v7[176] = v14;
  *(v7 + 177) = *v60;
  *(v7 + 45) = *&v60[3];
  *(v7 + 23) = v16;
  *(v7 + 24) = v18;
  *(v7 + 25) = v20;
  *(v7 + 26) = v22;
  v7[216] = 0;
  sub_2748D78DC(v7, v9);
  sub_27471CF08(0, &qword_280968030);
  type metadata accessor for SmartShortcutPickerDataSource();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass_];
  result = sub_2748340B4(0xD000000000000024, 0x8000000274A2EF50, v27);
  if (result)
  {
    v29 = result;
    sub_2749FC914();
    sub_2749FABB4();
    v42 = v75;
    v43 = v73;
    v40 = v78;
    v41 = v77;
    v55 = v74;
    v54 = v76;
    sub_2747B97A0(v9, v4, &qword_28096E220);
    v30 = v55;
    v31 = v54;
    v44 = v9;
    v32 = v52;
    v33 = v46;
    *v52 = v51;
    v32[1] = v33;
    *(v32 + 16) = v45 & 1;
    v32[3] = v48;
    *(v32 + 32) = v47 & 1;
    v34 = v49;
    v32[5] = v50;
    v32[6] = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E238);
    sub_2747B97A0(v4, v32 + *(v35 + 48), &qword_28096E220);
    v36 = (v32 + *(v35 + 64));
    *&v56 = 0x4022000000000000;
    *(&v56 + 1) = v29;
    *&v57 = v43;
    BYTE8(v57) = v30;
    *&v58 = v42;
    BYTE8(v58) = v31;
    *&v59 = v41;
    *(&v59 + 1) = v40;
    v37 = v57;
    *v36 = v56;
    v36[1] = v37;
    v38 = v59;
    v36[2] = v58;
    v36[3] = v38;

    sub_2747B97A0(&v56, &v53, &unk_28096E240);
    sub_27472ECBC(v44, &qword_28096E220);

    sub_27472ECBC(v4, &qword_28096E220);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2748D4EEC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E108);
  v3 = OUTLINED_FUNCTION_34(v2);
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  v5 = OUTLINED_FUNCTION_34(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = type metadata accessor for SmartShortcutPickerViewController();
  v38.receiver = v0;
  v38.super_class = v8;
  objc_msgSendSuper2(&v38, sel_viewDidLoad);
  v9 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  OUTLINED_FUNCTION_86();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  sub_2748D5794(0, 0, v7, &unk_274A206C8, v11);

  sub_27472ECBC(v7, &unk_28096C960);
  v12 = *&v0[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_collectionView];
  [*&v1[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_collectionView] setDelegate_];
  v13 = type metadata accessor for CollectionViewHeaderView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = *MEMORY[0x277D767D8];
  v37 = v13;
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969288);
  sub_2749FCDC4();
  v17 = sub_2749FCD64();

  [v12 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v16 withReuseIdentifier:v17];

  v18 = type metadata accessor for ListCell();
  v19 = swift_getObjCClassFromMetadata();
  v37 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E110);
  sub_2749FCDC4();
  v20 = sub_2749FCD64();

  [v12 registerClass:v19 forCellWithReuseIdentifier:v20];

  sub_2747DF82C();
  [v1 setContentScrollView:v12 forEdge:15];
  if (v1[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_style + 88] != 1)
  {
    goto LABEL_11;
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_2748D4814();
    v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E118));
    v22 = sub_2749FADF4();
    v23 = [v1 view];
    if (!v23)
    {
      goto LABEL_13;
    }

    v24 = v23;
    v25 = v22;
    [v24 addSubview_];

    v26 = *&v1[OBJC_IVAR____TtC10WorkflowUI33SmartShortcutPickerViewController_progressiveView];
    *&v1[OBJC_IVAR____TtC10WorkflowUI33SmartShortcutPickerViewController_progressiveView] = v25;
  }

  v27 = [objc_allocWithZone(WFSearchBar) initWithStyle_];
  v28 = [v27 searchTextField];
  v29 = [v28 backgroundView];

  if (v29)
  {
    [objc_allocWithZone(MEMORY[0x277D76220]) initWithScrollView:v12 edge:1 style:1];
    v30 = [v29 interactions];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096E180);
    v31 = sub_2749FCF84();

    v37 = v31;
    MEMORY[0x277C5ECC0]();
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2749FCFB4();
    }

    sub_2749FCFF4();
    v32 = sub_2749FCF74();

    [v29 setInteractions_];
  }

  [v27 setDelegate_];
  v33 = [v1 view];
  if (v33)
  {
    v34 = v33;
    [v33 addSubview_];

    v35 = *&v1[OBJC_IVAR____TtC10WorkflowUI33SmartShortcutPickerViewController_searchBar];
    *&v1[OBJC_IVAR____TtC10WorkflowUI33SmartShortcutPickerViewController_searchBar] = v27;

LABEL_11:
    OUTLINED_FUNCTION_46();
    return;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_2748D5408()
{
  OUTLINED_FUNCTION_79();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v0[7] = *(Strong + OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_dataSource);

    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_2748D550C;

    return SmartShortcutPickerDataSource.load()();
  }

  else
  {
    OUTLINED_FUNCTION_48_0();

    return v4();
  }
}

uint64_t sub_2748D550C()
{
  OUTLINED_FUNCTION_79();
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2748D5680;
  }

  else
  {

    v2 = sub_2748D5624;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2748D5624()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_48_0();

  return v1();
}

uint64_t sub_2748D5680()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_48_0();

  return v2();
}

uint64_t sub_2748D56E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2747C70B4;

  return sub_2748D53E8(a1, v4, v5, v6);
}

uint64_t sub_2748D5794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_2747B97A0(a3, v21 - v9, &unk_28096C960);
  v11 = sub_2749FD0E4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_27472ECBC(v10, &unk_28096C960);
  }

  else
  {
    sub_2749FD0D4();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_2749FD044();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_2749FCE04() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

void sub_2748D5A2C(char a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SmartShortcutPickerViewController();
  objc_msgSendSuper2(&v3, sel_viewIsAppearing_, a1 & 1);
  sub_2747E0084(0);
}

uint64_t sub_2748D5ACC(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SmartShortcutPickerViewController();
  objc_msgSendSuper2(&v4, sel_viewDidDisappear_, a1 & 1);
  [*&v1[OBJC_IVAR____TtC10WorkflowUI33SmartShortcutPickerViewController_searchBar] reset];
  return SmartShortcutPickerDataSource.searchText.setter();
}

void sub_2748D5B98()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for SmartShortcutPickerViewController();
  objc_msgSendSuper2(&v16, sel_viewDidLayoutSubviews);
  [*&v0[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_collectionView] setAutoresizingMask_];
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v1 bounds];
  OUTLINED_FUNCTION_19_16();
  v2 = OUTLINED_FUNCTION_4_0();
  [v3 v4];
  if (v0[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_style + 88] != 1)
  {
    return;
  }

  v5 = *&v0[OBJC_IVAR____TtC10WorkflowUI33SmartShortcutPickerViewController_progressiveView];
  if (v5)
  {
    v6 = v5;
    v7 = [v0 view];
    if (v7)
    {
      [v7 bounds];
      OUTLINED_FUNCTION_19_16();
      v17.origin.x = OUTLINED_FUNCTION_4_0();
      [v6 setFrame_];

      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_6:
  v8 = *&v0[OBJC_IVAR____TtC10WorkflowUI33SmartShortcutPickerViewController_searchBar];
  if (v8)
  {
    v9 = qword_280966C38;
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = *&qword_28096E0F0;
    v12 = [v0 view];
    if (v12)
    {
      v13 = v12;
      [v12 bounds];
      v15 = v14;

      [v10 setFrame_];
      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
    return;
  }

LABEL_11:
  sub_2748D7470();
}

void sub_2748D5DE4(void *a1, uint64_t a2)
{
  v86 = a1;
  v4 = sub_2749FCA74();
  OUTLINED_FUNCTION_43();
  v100 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v98 = v8 - v7;
  OUTLINED_FUNCTION_57_0();
  v99 = sub_2749FCAA4();
  OUTLINED_FUNCTION_43();
  v97 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v96 = v12 - v11;
  OUTLINED_FUNCTION_57_0();
  sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v91 = v14;
  v92 = v13;
  MEMORY[0x28223BE20](v13);
  v89 = v15;
  v90 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_57_0();
  v104 = sub_2749FCAC4();
  OUTLINED_FUNCTION_43();
  v95 = v16;
  v18 = MEMORY[0x28223BE20](v17);
  v88 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v94 = &v86 - v20;
  OUTLINED_FUNCTION_57_0();
  v21 = type metadata accessor for SmartShortcutPickerEntry();
  v22 = OUTLINED_FUNCTION_34(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item(0);
  OUTLINED_FUNCTION_43();
  v27 = v26;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = (&v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v105 = &v86 - v32;
  v103 = v2;
  v33 = *&v2[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_smartShortcutPickerDataSource];
  v34 = sub_2749F9274();
  sub_2747CF414(v34, &aBlock);
  v101 = aBlock;
  LODWORD(v102) = v112;
  v35 = *(&v112 + 1);
  v93 = a2;
  v36 = sub_2749F9264();
  if ((v36 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v36 >= *(v35 + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v87 = v4;
  v37 = v105;
  sub_2747E2C38(v35 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v36, v105);
  sub_2747E2C38(v37, v31);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_10_27();
    v54 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968E90) + 48);
    v55 = *v54;
    v56 = *(v54 + 1);
    v57 = v54[16];
    sub_2748605C4(v31, v25);
    v58 = v103;
    v106[0] = v55;
    v106[1] = v56;
    v107 = v57;
    sub_27493FEF8(v106, v110);
    sub_27478C4DC(v55, v56, v57);
    v112 = v110[1];
    *v113 = v110[2];
    aBlock = v110[0];
    *&v113[9] = *(&v110[2] + 9);
    v108 = v110[0];
    v109 = v110[1];
    v114 = *(&v110[2] + 8);
    LOBYTE(v115) = BYTE8(v110[3]);
    if (!*&v110[2])
    {
      OUTLINED_FUNCTION_6_27();
LABEL_21:
      OUTLINED_FUNCTION_5_32();
      goto LABEL_22;
    }

    v110[0] = v108;
    v110[1] = v109;
    *(&v110[2] + 8) = v114;
    BYTE8(v110[3]) = v115;
    v53 = v93;
    v59 = sub_2749F9224();
    v60 = [v86 cellForItemAtIndexPath_];

    sub_2748AA1A4(v25, v110, v58, v60, 0, 0);
    OUTLINED_FUNCTION_6_27();
    sub_27472ECBC(&aBlock, &qword_280969280);
    v61 = v87;
    v63 = v91;
    v62 = v92;
LABEL_20:
    sub_27471CF08(0, &qword_28159E4E0);
    v102 = sub_2749FD404();
    v75 = v88;
    sub_2749FCAB4();
    v76 = v94;
    sub_2749FCB14();
    v103 = *(v95 + 8);
    (v103)(v75, v104);
    OUTLINED_FUNCTION_86();
    v77 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v78 = v90;
    (*(v63 + 16))(v90, v53, v62);
    v79 = (*(v63 + 80) + 24) & ~*(v63 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v77;
    (*(v63 + 32))(v80 + v79, v78, v62);
    *v113 = sub_2748D76B8;
    *&v113[8] = v80;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    OUTLINED_FUNCTION_2_2();
    *&v112 = v81;
    *(&v112 + 1) = &block_descriptor_35;
    v82 = _Block_copy(&aBlock);

    v83 = v96;
    sub_2749FCA94();
    *&aBlock = MEMORY[0x277D84F90];
    sub_27473FC78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
    sub_27472AB6C(&qword_28159E530, &unk_28096DB60);
    v84 = v98;
    sub_2749FD7B4();
    v85 = v102;
    MEMORY[0x277C5F120](v76, v83, v84, v82);
    _Block_release(v82);

    (*(v100 + 8))(v84, v61);
    (*(v97 + 8))(v83, v99);
    (v103)(v76, v104);
    goto LABEL_21;
  }

  v38 = v31[1];
  v114 = *v31;
  v115 = v38;
  v116[0] = v31[2];
  *(v116 + 9) = *(v31 + 41);
  v39 = v103;
  *&aBlock = *&v103[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_layout];

  v40 = sub_2749175A4(v33);

  aBlock = v114;
  v112 = v115;
  *v113 = v116[0];
  *&v113[9] = *(v116 + 9);
  if (!(*(*v40 + 152))(&aBlock))
  {
    OUTLINED_FUNCTION_5_32();

    sub_2747D21CC(&v114);
    OUTLINED_FUNCTION_10_27();
LABEL_22:
    OUTLINED_FUNCTION_46();
    return;
  }

  v41 = &v39[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_style];
  if (v39[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_style + 88])
  {
    OUTLINED_FUNCTION_18_17();
    memcpy(v110, v41, 0x59uLL);
    v42 = objc_allocWithZone(type metadata accessor for SmartShortcutPickerDetailViewController());

    sub_2747D2AC8(&aBlock, &v108);
    v43 = OUTLINED_FUNCTION_12_23();
    v44 = sub_2749FCD64();
    [v43 setTitle_];

    v45 = [v43 view];
    v46 = v87;
    if (v45)
    {
      v47 = v45;
      v48 = [v39 view];
      if (v48)
      {
        v49 = v48;
        OUTLINED_FUNCTION_10_27();
        v50 = [v49 backgroundColor];

        [v47 setBackgroundColor_];
        v51 = [v43 navigationItem];
        [v51 setLargeTitleDisplayMode_];

        v52 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
        [v39 presentViewController:v52 animated:1 completion:0];

        sub_2747D21CC(&v114);

        v53 = v93;
LABEL_19:
        v63 = v91;
        v62 = v92;
        v61 = v46;
        goto LABEL_20;
      }

      goto LABEL_26;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_18_17();
  memcpy(v110, v41, 0x59uLL);
  v64 = objc_allocWithZone(type metadata accessor for SmartShortcutPickerDetailViewController());

  sub_2747D2AC8(&aBlock, &v108);
  v65 = OUTLINED_FUNCTION_12_23();
  v66 = sub_2749FCD64();
  [v65 setTitle_];

  v67 = [v65 view];
  v46 = v87;
  if (!v67)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v68 = v67;
  v69 = [v39 view];
  if (v69)
  {
    v70 = v69;
    OUTLINED_FUNCTION_10_27();
    v71 = [v70 backgroundColor];

    [v68 setBackgroundColor_];
    v72 = [v65 navigationItem];

    [v72 setLargeTitleDisplayMode_];
    v73 = [v39 navigationController];
    if (v73)
    {
      v74 = v73;
      [v73 pushViewController:v65 animated:1];

      sub_2747D21CC(&v114);
    }

    else
    {

      sub_2747D21CC(&v114);
    }

    v53 = v93;
    goto LABEL_19;
  }

LABEL_28:
  __break(1u);
}