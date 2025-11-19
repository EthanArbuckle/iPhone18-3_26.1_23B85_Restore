uint64_t sub_27487E194(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_274799304;

  return sub_27487DA50(a1, v4, v5, v6, (v1 + 5), (v1 + 13));
}

uint64_t sub_27487E258(uint64_t a1)
{
  v2 = type metadata accessor for ListButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27487E2B4()
{
  result = qword_28096C300;
  if (!qword_28096C300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C2F0);
    sub_27487E36C();
    sub_27472AB6C(&qword_280969028, &qword_280969030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C300);
  }

  return result;
}

unint64_t sub_27487E36C()
{
  result = qword_28096C308;
  if (!qword_28096C308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C2D0);
    sub_27487E424();
    sub_27472AB6C(&qword_280969038, &qword_280969040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C308);
  }

  return result;
}

unint64_t sub_27487E424()
{
  result = qword_28096C310;
  if (!qword_28096C310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C2C8);
    sub_27487E4DC();
    sub_27472AB6C(&qword_280969018, &qword_280969020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C310);
  }

  return result;
}

unint64_t sub_27487E4DC()
{
  result = qword_28096C318;
  if (!qword_28096C318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C2E8);
    sub_27487E598();
    sub_27487E738(&qword_28096C338, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C318);
  }

  return result;
}

unint64_t sub_27487E598()
{
  result = qword_28096C320;
  if (!qword_28096C320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C2E0);
    sub_27487E650();
    sub_27472AB6C(&qword_28096BA00, &qword_28096BA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C320);
  }

  return result;
}

unint64_t sub_27487E650()
{
  result = qword_28096C328;
  if (!qword_28096C328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C2D8);
    sub_27487E738(&qword_28096C330, type metadata accessor for SmartShortcutPickerSectionRowView);
    sub_27472AB6C(&unk_28096EC00, &qword_280969988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C328);
  }

  return result;
}

uint64_t sub_27487E738(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_27487E780(void *a1)
{
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C3B8);
  swift_allocObject();
  v2 = a1;
  MEMORY[0x277C5C9E0](&v8);
  v3 = [objc_opt_self() mainScreen];
  [v3 scale];

  sub_2749FAC74();
  v4 = sub_2749FAC64();
  v5 = v4;
  if (v4)
  {
    v6 = UIImagePNGRepresentation(v4);

    if (v6)
    {
      v5 = sub_2749F9094();
    }

    else
    {

      return 0;
    }
  }

  else
  {
  }

  return v5;
}

uint64_t sub_27487E89C()
{
  if (!sub_27487FC44())
  {
    v0 = sub_274880838();
    if (v1 >> 60 == 15)
    {
      return 1;
    }

    sub_2747BD018(v0, v1);
  }

  return 0;
}

uint64_t sub_27487E8DC()
{
  v1 = v0;
  v91 = sub_2749FCA74();
  OUTLINED_FUNCTION_43();
  v98 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v96 = v5 - v4;
  OUTLINED_FUNCTION_57_0();
  v97 = sub_2749FCAA4();
  OUTLINED_FUNCTION_43();
  v95 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v94 = v9 - v8;
  OUTLINED_FUNCTION_57_0();
  sub_2749FCAC4();
  OUTLINED_FUNCTION_43();
  v92 = v11;
  v93 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_39();
  v89 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v90 = v87 - v15;
  OUTLINED_FUNCTION_57_0();
  v88 = sub_2749F9EB4();
  OUTLINED_FUNCTION_43();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v22 = sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_39();
  v87[1] = v26 - v27;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = v87 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = v87 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = v87 - v35;
  sub_27471CF08(0, &qword_28096C340);
  v37 = static WFHomeScreenController.iconSize.getter();
  v39 = v38;
  v40 = sub_27487FC44();
  if (sub_27487E89C())
  {
    sub_2749FA3D4();
    v41 = sub_2749FA4D4();
    v42 = sub_2749FD2D4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_274719000, v41, v42, "User should not be allowed to add a nil image.", v43, 2u);
      OUTLINED_FUNCTION_31();
    }

    (*(v24 + 8))(v36, v22);
    goto LABEL_6;
  }

  if (v40)
  {
LABEL_6:
    v87[0] = v24;
    v44 = [objc_opt_self() sharedInstance];
    v45 = OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState_aggregatedEntry;
    v46 = sub_27487F448();
    v48 = v47;
    sub_27487F7A4(v21);
    v49 = sub_27488096C();
    WFHomeScreenController.add(entry:name:colorScheme:symbolName:)(v1 + v45, v46, v48, v21, v49, v50);
    (*(v17 + 8))(v21, v88);

LABEL_7:

    sub_27471CF08(0, &qword_28159E4E0);
    v51 = sub_2749FD404();
    v52 = v89;
    sub_2749FCAB4();
    v53 = v90;
    sub_2749FCB14();
    v54 = v93;
    v92 = *(v92 + 8);
    (v92)(v52, v93);
    aBlock[4] = sub_274881B58;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274760264;
    aBlock[3] = &block_descriptor_27;
    v55 = _Block_copy(aBlock);
    v56 = v94;
    sub_2749FCA94();
    v99 = MEMORY[0x277D84F90];
    sub_274882438(&qword_28159E580, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
    sub_27472AB6C(&qword_28159E530, &unk_28096DB60);
    v57 = v96;
    v58 = v91;
    sub_2749FD7B4();
    MEMORY[0x277C5F120](v53, v56, v57, v55);
    _Block_release(v55);

    (*(v98 + 8))(v57, v58);
    (*(v95 + 8))(v56, v97);
    return (v92)(v53, v54);
  }

  sub_274880838();
  if (v60 >> 60 == 15)
  {
    sub_2749FA3D4();
    v61 = sub_2749FA4D4();
    v62 = sub_2749FD2D4();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_274719000, v61, v62, "Unexpected nil image data, should not be possible.", v63, 2u);
      OUTLINED_FUNCTION_31();
    }

    return (*(v24 + 8))(v31, v22);
  }

  else
  {
    sub_27471CF08(0, &qword_280968030);
    v64 = OUTLINED_FUNCTION_5_26();
    sub_2747EC0F4(v64, v65);
    v66 = OUTLINED_FUNCTION_5_26();
    v68 = sub_2748813C0(v66, v67);
    if (v68)
    {
      v69 = v68;
      sub_27471CF08(0, &unk_28096B160);
      v70 = OUTLINED_FUNCTION_5_26();
      sub_2747EC0F4(v70, v71);
      OUTLINED_FUNCTION_5_26();
      v72 = sub_274881438();
      if (v72)
      {
        v73 = v72;
        v74 = objc_opt_self();
        v75 = [objc_allocWithZone(MEMORY[0x277D79FD0]) initWithImage_];
        v76 = [v74 loadIcon:v75 size:6 style:{v37, v39}];

        if (v76)
        {

          v69 = v76;
        }
      }

      v77 = [objc_opt_self() sharedInstance];
      sub_27487F448();
      sub_2749FD514();

      v83 = OUTLINED_FUNCTION_5_26();
      sub_2747BD018(v83, v84);

      goto LABEL_7;
    }

    sub_2749FA3D4();
    v78 = sub_2749FA4D4();
    v79 = sub_2749FD2D4();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_274719000, v78, v79, "Failed to convert data to image", v80, 2u);
      OUTLINED_FUNCTION_31();

      v81 = OUTLINED_FUNCTION_5_26();
      sub_2747BD018(v81, v82);
    }

    else
    {
      v85 = OUTLINED_FUNCTION_5_26();
      sub_2747BD018(v85, v86);
    }

    return (*(v24 + 8))(v34, v22);
  }
}

uint64_t sub_27487F32C(uint64_t a1, unint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__imageData);
  v6 = *(v2 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__imageData);
  v7 = *(v2 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__imageData + 8);
  sub_274882480(v6, v7);
  v8 = sub_274880468(v6, v7, a1, a2);
  sub_2747BD018(v6, v7);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_9_18();
    *(v10 - 32) = v2;
    *(v10 - 24) = a1;
    *(v10 - 16) = a2;
    OUTLINED_FUNCTION_17_15();
    sub_2747BD018(a1, a2);
  }

  else
  {
    v12 = *v5;
    v13 = v5[1];
    *v5 = a1;
    v5[1] = a2;

    return sub_2747BD018(v12, v13);
  }
}

uint64_t sub_27487F448()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_274882438(v0, v1);
  OUTLINED_FUNCTION_3_4();

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_27487F4E0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__title);
  v6 = *(v2 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__title) == a1 && *(v2 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__title + 8) == a2;
  if (v6 || (sub_2749FDCC4() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_9_18();
    *(v9 - 32) = v2;
    *(v9 - 24) = a1;
    *(v9 - 16) = a2;
    OUTLINED_FUNCTION_17_15();
  }
}

uint64_t sub_27487F5DC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_274882438(v1, v2);
  OUTLINED_FUNCTION_3_4();

  v3 = *(v0 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__symbol + 16);
  v4 = OUTLINED_FUNCTION_44();
  sub_274882394(v4, v5, v3);
  return OUTLINED_FUNCTION_44();
}

uint64_t sub_27487F680(uint64_t a1, uint64_t a2, char a3)
{
  v6 = v3 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__symbol;
  v7 = *(v3 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__symbol);
  v8 = *(v3 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__symbol + 8);
  v9 = *(v3 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__symbol + 16);
  v10 = a3 & 1;
  if (sub_274880400(v7, v8, v9, a1, a2, a3 & 1))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_9_18();
    *(v12 - 32) = v3;
    *(v12 - 24) = a1;
    *(v12 - 16) = a2;
    *(v12 - 8) = v10;
    OUTLINED_FUNCTION_17_15();
    sub_2747C6E20(a1, a2, v10);
  }

  else
  {
    *v6 = a1;
    *(v6 + 8) = a2;
    *(v6 + 16) = v10;

    return sub_2747C6E20(v7, v8, v9);
  }
}

uint64_t sub_27487F7A4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v8 = v1;
  OUTLINED_FUNCTION_0_27();
  sub_274882438(v3, v4);
  sub_2749F92D4();

  v5 = OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__colorScheme;
  swift_beginAccess();
  v6 = sub_2749F9EB4();
  return (*(*(v6 - 8) + 16))(a1, v8 + v5, v6);
}

uint64_t sub_27487F88C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2749F9EB4();
  OUTLINED_FUNCTION_43();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__colorScheme;
  swift_beginAccess();
  (*(v6 + 16))(v10, v1 + v11, v4);
  sub_274882438(&qword_280968680, MEMORY[0x277D7D388]);
  v12 = sub_2749FCD54();
  v13 = *(v6 + 8);
  v13(v10, v4);
  if (v12)
  {
    swift_beginAccess();
    (*(v6 + 24))(v2 + v11, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v16 - 2) = v2;
    *(&v16 - 1) = a1;
    sub_274880618();
  }

  return (v13)(a1, v4);
}

uint64_t sub_27487FA9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968D10);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_2749F9EB4();
  OUTLINED_FUNCTION_43();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = (v9 - v8);
  sub_2748823C0(v0 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState_appColorScheme, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2747359D0(v3, &qword_280968D10);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v10, v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967990);
    v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_274A0EF10;
    v12(v11 + v13, v10, v4);
  }

  return v11;
}

uint64_t sub_27487FC44()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_274882438(v1, v2);
  OUTLINED_FUNCTION_3_4();

  return *(v0 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__mode);
}

uint64_t sub_27487FCCC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__mode) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__mode) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_17_15();
  }

  return result;
}

uint64_t sub_27487FD74(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    return (a6 & 1) != 0 && a1 == a4;
  }

  else if (a6)
  {
    return 0;
  }

  else if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_2749FDCC4();
  }
}

uint64_t sub_27487FDC0@<X0>(uint64_t *a1@<X8>)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2749FA104();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[0] = sub_2749FA0B4();
  v7 = *(v39[0] - 8);
  MEMORY[0x28223BE20](v39[0]);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2749F9494();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v13, v1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x277D7BE70])
  {
    (*(v11 + 8))(v13, v10);
    v15 = sub_2749F9EB4();
    v16 = a1;
    v17 = 1;
    return __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
  }

  if (v14 == *MEMORY[0x277D7BE68])
  {
    (*(v11 + 96))(v13, v10);
    v18 = *v13;
    sub_2748824D8([*v13 underlyingAutoShortcut]);
    if (v19)
    {
    }

    else
    {
      v20 = [v18 underlyingAutoShortcut];
      v21 = [v20 bundleIdentifier];

      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    }

    v22 = [objc_allocWithZone(MEMORY[0x277D79DC8]) init];
    v23 = sub_2749FCD64();

    v40[0] = 0;
    v24 = [v22 colorsForBundleIdentifier:v23 error:v40];

    v25 = v40[0];
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v27 = v40[0];
      v28 = sub_2749F8FE4();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_274A11F70;
      *(v29 + 32) = [objc_opt_self() whiteColor];
      v30 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_];
      v31 = objc_allocWithZone(MEMORY[0x277D79DD0]);
      v25 = sub_2748822F8(v29, v30);

      v26 = v25;
    }

    v32 = v25;
    (*(v4 + 104))(v6, *MEMORY[0x277D7D640], v3);
    v33 = v24;
    sub_2749FA064();
    v34 = sub_2749FA074();
    v35 = sub_2749FA094();

    (*(v7 + 8))(v9, v39[0]);
    *a1 = v34;
    a1[1] = v35;
    v36 = *MEMORY[0x277D7D380];
    v37 = sub_2749F9EB4();
    (*(*(v37 - 8) + 104))(a1, v36, v37);
    v16 = a1;
    v17 = 0;
    v15 = v37;
    return __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
  }

  result = sub_2749FDCB4();
  __break(1u);
  return result;
}

uint64_t sub_274880334(uint64_t a1)
{
  v2 = sub_2749F9EB4();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_27487F88C(v4);
}

BOOL sub_274880400(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    v6 = (a6 & 1) != 0 && a1 == a4;
  }

  else if (a6)
  {
    v6 = 0;
  }

  else if (a1 == a4 && a2 == a5)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_2749FDCC4();
  }

  return (v6 & 1) == 0;
}

uint64_t sub_274880468(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    if (a4 >> 60 != 15)
    {
      sub_274882480(a1, a2);
      sub_274882480(a3, a4);
      v9 = MEMORY[0x277C5ADE0](a1, a2, a3, a4);
      sub_2747BD018(a3, a4);
      sub_2747BD018(a1, a2);
      v8 = v9 ^ 1;
      return v8 & 1;
    }

    goto LABEL_5;
  }

  if (a4 >> 60 != 15)
  {
LABEL_5:
    sub_274882480(a1, a2);
    sub_274882480(a3, a4);
    sub_2747BD018(a1, a2);
    sub_2747BD018(a3, a4);
    v8 = 1;
    return v8 & 1;
  }

  sub_274882480(a1, a2);
  sub_274882480(a3, a4);
  sub_2747BD018(a1, a2);
  v8 = 0;
  return v8 & 1;
}

uint64_t sub_27488057C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__colorScheme;
  swift_beginAccess();
  v5 = sub_2749F9EB4();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_274880618()
{
  OUTLINED_FUNCTION_0_27();
  sub_274882438(v0, v1);
  return sub_2749F92C4();
}

uint64_t sub_2748806C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_27487F4E0(v1, v2);
}

uint64_t sub_274880700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__title);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_274880748@<X0>(uint64_t a1@<X8>)
{
  result = sub_27487F5DC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_27488077C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_274882394(*a1, v2, v3);
  return sub_27487F680(v1, v2, v3);
}

uint64_t sub_2748807CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a1 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__symbol;
  v5 = *(a1 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__symbol);
  v6 = *(a1 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__symbol + 8);
  v7 = *(a1 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__symbol + 16);
  *v4 = a2;
  *(v4 + 8) = a3;
  *(v4 + 16) = a4 & 1;
  sub_274882394(a2, a3, a4 & 1);
  return sub_2747C6E20(v5, v6, v7);
}

uint64_t sub_274880838()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_274882438(v0, v1);
  OUTLINED_FUNCTION_3_4();

  v2 = OUTLINED_FUNCTION_44();
  sub_274882480(v2, v3);
  return OUTLINED_FUNCTION_44();
}

uint64_t sub_2748808D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_274882480(*a1, v2);
  return sub_27487F32C(v1, v2);
}

uint64_t sub_274880914(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__imageData);
  v4 = *(a1 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__imageData);
  v5 = *(a1 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__imageData + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_274882480(a2, a3);
  return sub_2747BD018(v4, v5);
}

uint64_t sub_27488096C()
{
  v0 = sub_27487F5DC();
  if (v1)
  {
    v2 = WFSystemImageNameForGlyphCharacter();
    if (v2)
    {
      v3 = v2;
      v0 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    }

    else
    {
      return 0x74732E322E707061;
    }
  }

  return v0;
}

uint64_t sub_2748809F8()
{
  sub_2749F9EB4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_0();
  v3 = v2 - v1;
  sub_27487F7A4(v2 - v1);
  v4 = OUTLINED_FUNCTION_45();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D7D378])
  {
    v7 = OUTLINED_FUNCTION_45();
    v8(v7);
    v9 = *v3;
    v10 = [*v3 paletteGradient];
    v11 = [objc_allocWithZone(MEMORY[0x277D79FC0]) initWithGradient_];

    v12 = objc_opt_self();
    v13 = v11;
    v14 = [v12 whiteColor];

LABEL_5:
    v19 = v14;
    v20 = sub_27488096C();
    v22 = v21;
    v23 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v24 = sub_274881D2C(v20, v22, v19, v13);

    return v24;
  }

  if (v6 == *MEMORY[0x277D7D380])
  {
    v15 = OUTLINED_FUNCTION_45();
    v16(v15);
    v14 = *v3;
    v17 = *(v3 + 8);
    v18 = [objc_allocWithZone(MEMORY[0x277D79FC0]) initWithGradient_];

    v13 = v18;
    goto LABEL_5;
  }

  result = sub_2749FDCB4();
  __break(1u);
  return result;
}

uint64_t sub_274880C08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2749F9494();
  OUTLINED_FUNCTION_43();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v90 = (v9 - v8);
  OUTLINED_FUNCTION_57_0();
  v10 = sub_2749F9EB4();
  OUTLINED_FUNCTION_43();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = (v15 - v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968D10);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_39();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = (&v89 - v22);
  v24 = v2 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__symbol;
  *v24 = xmmword_274A1CC60;
  *(v24 + 16) = 1;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__imageData) = xmmword_274A1CC70;
  sub_2749F9304();
  v91 = v6;
  v92 = v4;
  v25 = *(v6 + 16);
  v25(v2 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState_aggregatedEntry, a1, v4);
  v26 = sub_2749F9464();
  if (!v27)
  {
    v26 = sub_2749F9474();
  }

  v28 = (v2 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__title);
  *v28 = v26;
  v28[1] = v27;
  sub_27487FDC0(v23);
  v29 = OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState_appColorScheme;
  sub_2748825B8(v23, v2 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState_appColorScheme);
  sub_2748823C0(v2 + v29, v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v10) == 1)
  {
    *v16 = sub_2749F9454();
    (*(v12 + 104))(v16, *MEMORY[0x277D7D378], v10);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v10);
    v31 = v92;
    if (EnumTagSinglePayload != 1)
    {
      sub_2747359D0(v20, &qword_280968D10);
    }
  }

  else
  {
    v32 = OUTLINED_FUNCTION_98_0();
    v33(v32);
    v31 = v92;
  }

  (*(v12 + 32))(v2 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__colorScheme, v16, v10);
  v34 = sub_2749F9484();
  objc_opt_self();
  v35 = OUTLINED_FUNCTION_18_15();
  if (v35)
  {
    *(v2 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__mode) = 1;
    v36 = [v35 symbolName];
    v37 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v39 = v38;

    v40 = v37;
    v41 = v39;
    v42 = 0;
LABEL_11:
    sub_27487F680(v40, v41, v42);

    v44 = OUTLINED_FUNCTION_10_20();
    v45(v44);
    return v2;
  }

  objc_opt_self();
  v43 = OUTLINED_FUNCTION_18_15();
  if (v43)
  {
    *(v2 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__mode) = 1;
    v40 = [v43 glyph];
    v41 = 0;
    v42 = 1;
    goto LABEL_11;
  }

  objc_opt_self();
  v47 = OUTLINED_FUNCTION_18_15();
  if (!v47)
  {
    objc_opt_self();
    v62 = OUTLINED_FUNCTION_18_15();
    if (v62)
    {
      v63 = [objc_opt_self() loadIcon:v62 size:6 style:{180.0, 180.0}];
      if (v63)
      {
        v64 = v63;
        v65 = UIImagePNGRepresentation(v63);
        if (v65)
        {
          v66 = v65;
          sub_2749F9094();

          *(v2 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__mode) = 0;
          v67 = OUTLINED_FUNCTION_98_0();
          sub_2747EC0F4(v67, v68);
          v69 = OUTLINED_FUNCTION_98_0();
          sub_27487F32C(v69, v70);

          v71 = OUTLINED_FUNCTION_98_0();
          sub_2747BD02C(v71, v72);
          v73 = OUTLINED_FUNCTION_10_20();
          v74(v73);
          return v2;
        }
      }

      else
      {
        v64 = v34;
      }

      v87 = OUTLINED_FUNCTION_10_20();
      v88(v87);
    }

    else
    {

      v79 = OUTLINED_FUNCTION_10_20();
      v80(v79);
    }

    *(v2 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__mode) = 1;
    return v2;
  }

  v48 = v47;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__mode) = 0;
  v49 = v90;
  v25(v90, a1, v31);
  v50 = v91;
  v51 = &selRef_colorWithAlphaComponent_;
  if ((*(v91 + 88))(v49, v31) == *MEMORY[0x277D7BE68])
  {
    (*(v50 + 96))(v49, v31);
    v52 = *v49;
    if (qword_280966C18 != -1)
    {
      swift_once();
    }

    v53 = qword_2809891D0;
    v54 = [v52 underlyingAutoShortcut];
    v55 = [v54 actionIdentifier];

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v56 = OUTLINED_FUNCTION_5_26();
    LOBYTE(v53) = sub_2747A6F94(v56, v57, v53);

    if (v53)
    {
      v58 = v52;
      v51 = &selRef_colorWithAlphaComponent_;
      v59 = [v48 image];
      sub_27487E780(v59);
      v61 = v60;

      if (v61 >> 60 != 15)
      {
        v81 = OUTLINED_FUNCTION_98_0();
        sub_2747EC0F4(v81, v82);
        v83 = OUTLINED_FUNCTION_98_0();
        sub_27487F32C(v83, v84);

        v85 = OUTLINED_FUNCTION_98_0();
        sub_2747BD018(v85, v86);
        (*(v50 + 8))(a1);
        return v2;
      }
    }

    else
    {

      v51 = &selRef_colorWithAlphaComponent_;
    }
  }

  else
  {
    (*(v50 + 8))(v49, v31);
  }

  v75 = sub_274882548([v48 v51[433]]);
  sub_27487F32C(v75, v76);

  v77 = OUTLINED_FUNCTION_10_20();
  v78(v77);
  return v2;
}

double static WFHomeScreenController.iconSize.getter()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = 60.0;
  if (v4 == 1)
  {
    v5 = 72.0;
  }

  return v2 * v5;
}

id sub_2748813C0(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_2749F9074();
  v6 = [v4 initWithData_];

  sub_2747BD02C(a1, a2);
  return v6;
}

id sub_274881438()
{
  v0 = sub_2749F9074();
  v1 = [swift_getObjCClassFromMetadata() imageWithData_];

  v2 = OUTLINED_FUNCTION_45();
  sub_2747BD02C(v2, v3);
  return v1;
}

void WFHomeScreenController.add(entry:name:colorScheme:symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v95 = a2;
  v96 = a3;
  v94 = a1;
  v9 = sub_2749F9EB4();
  OUTLINED_FUNCTION_43();
  v98 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_39();
  v93 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v87 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithWhite:0.0 alpha:0.001];
  v18 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

  v19 = objc_opt_self();

  v20 = [v19 whiteColor];
  v21 = objc_allocWithZone(MEMORY[0x277D7A158]);
  v22 = v18;
  v99 = a5;
  v23 = OUTLINED_FUNCTION_15_15();
  v24 = v20;
  v25 = v98;
  v100 = v26;
  v28 = v9;
  v29 = sub_274881D2C(v23, v27, v24, v26);
  v30 = *(v25 + 16);
  v90 = v25 + 16;
  v91 = a4;
  v89 = v30;
  v30(v16, a4, v28);
  v88 = *(v25 + 88);
  v31 = v88(v16, v28);
  HIDWORD(v87) = *MEMORY[0x277D7D378];
  v97 = a6;
  v92 = v28;
  if (v31 == HIDWORD(v87))
  {
    v32 = OUTLINED_FUNCTION_12_19();
    v33(v32);
    v34 = *v16;

    v35 = v29;
    v36 = [v19 whiteColor];
    v37 = [v34 paletteGradient];
    v38 = [objc_allocWithZone(MEMORY[0x277D79FC0]) initWithGradient_];

    v39 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v40 = OUTLINED_FUNCTION_15_15();
    v42 = sub_274881D2C(v40, v41, v36, v38);

    v43 = v42;
    v44 = [v34 paletteGradient];
    v45 = [v44 darkBaseColor];

    v46 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v47 = OUTLINED_FUNCTION_15_15();
    v49 = sub_274881D2C(v47, v48, v45, v100);
    v50 = v93;
  }

  else
  {
    if (v31 != *MEMORY[0x277D7D380])
    {
      v86 = v29;
      goto LABEL_21;
    }

    v51 = OUTLINED_FUNCTION_12_19();
    v52(v51);
    v53 = *v16;
    v54 = *(v16 + 1);
    v55 = objc_allocWithZone(MEMORY[0x277D79FC0]);
    v56 = v97;

    v57 = v29;
    v34 = v53;
    v58 = [v55 initWithGradient_];
    v59 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v60 = v99;
    v61 = sub_274881D2C(v99, v56, v34, v58);
    v62 = [v19 whiteColor];
    sub_27471CF08(0, &qword_280968670);
    LOBYTE(v58) = sub_2749FD604();

    v50 = v93;
    if (v58)
    {
      v63 = [v54 baseColor];
    }

    else
    {
      v63 = v34;
    }

    v64 = v63;
    v65 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v66 = v97;

    v49 = sub_274881D2C(v60, v66, v64, v100);

    v43 = v61;
  }

  v67 = objc_opt_self();
  sub_27471CF08(0, &qword_28096C340);
  v68 = v49;
  v69 = [v67 loadIcon:v43 size:6 style:static WFHomeScreenController.iconSize.getter()];
  v70 = v43;
  v71 = v69;
  v72 = v70;

  v73 = [v67 loadIcon:v68 size:6 style:static WFHomeScreenController.iconSize.getter()];
  v74 = [v67 loadIcon:v29 size:6 style:static WFHomeScreenController.iconSize.getter()];

  if (!v71)
  {
    v77 = v92;
    v89(v50, v91, v92);
    v78 = v88(v50, v77);
    if (v78 == HIDWORD(v87))
    {
      v79 = OUTLINED_FUNCTION_8_21();
      v80(v79);
      v81 = *v50;
      v82 = v100;
LABEL_18:
      sub_2749FD504();

      return;
    }

    if (v78 == *MEMORY[0x277D7D380])
    {
      v83 = OUTLINED_FUNCTION_8_21();
      v84(v83);
      v85 = *(v50 + 8);

      v81 = [v85 baseColor];
      v82 = v100;
      goto LABEL_18;
    }

LABEL_21:
    sub_2749FDCB4();
    __break(1u);
    return;
  }

  v75 = v29;
  if (v73 && v74)
  {
    sub_2749FD4F4();
    v76 = v100;
  }

  else
  {
    sub_2749FD514();
  }
}

void sub_274881B58()
{
  v0 = [objc_opt_self() sharedContext];
  [v0 suspend];
}

uint64_t sub_274881BB8()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState_aggregatedEntry;
  sub_2749F9494();
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  sub_2747359D0(v0 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState_appColorScheme, &qword_280968D10);
  v3 = OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__colorScheme;
  sub_2749F9EB4();
  OUTLINED_FUNCTION_1_2();
  (*(v4 + 8))(v0 + v3);

  sub_2747C6E20(*(v0 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__symbol), *(v0 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__symbol + 8), *(v0 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__symbol + 16));
  sub_2747BD018(*(v0 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__imageData), *(v0 + OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState__imageData + 8));
  v5 = OBJC_IVAR____TtC10WorkflowUI19HomeScreenIconState___observationRegistrar;
  sub_2749F9314();
  OUTLINED_FUNCTION_1_2();
  (*(v6 + 8))(v0 + v5);
  return v0;
}

uint64_t sub_274881CD4()
{
  sub_274881BB8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id sub_274881D2C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_2749FCD64();

  v8 = [v4 initWithSymbolName:v7 symbolColor:a3 background:a4];

  return v8;
}

uint64_t type metadata accessor for HomeScreenIconState()
{
  result = qword_28096C378;
  if (!qword_28096C378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274881DF8()
{
  sub_2749F9494();
  if (v0 <= 0x3F)
  {
    sub_274881F60();
    if (v1 <= 0x3F)
    {
      sub_2749F9EB4();
      if (v2 <= 0x3F)
      {
        sub_2749F9314();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_274881F60()
{
  if (!qword_28096C388)
  {
    sub_2749F9EB4();
    v0 = sub_2749FD6C4();
    if (!v1)
    {
      atomic_store(v0, &qword_28096C388);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HomeScreenIconState.Mode(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for HomeScreenIconState.PickerType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2748821D4()
{
  result = qword_28096C3A0;
  if (!qword_28096C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C3A0);
  }

  return result;
}

unint64_t sub_27488222C()
{
  result = qword_28096C3A8;
  if (!qword_28096C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C3A8);
  }

  return result;
}

unint64_t sub_274882284()
{
  result = qword_28096C3B0;
  if (!qword_28096C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C3B0);
  }

  return result;
}

id sub_2748822F8(uint64_t a1, void *a2)
{
  sub_27471CF08(0, &qword_280968670);
  v4 = sub_2749FCF74();

  v5 = [v2 initWithComplementingColors:v4 tintColor:a2];

  return v5;
}

uint64_t sub_274882394(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2748823C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274882438(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_274882480(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2747EC0F4(a1, a2);
  }

  return a1;
}

uint64_t sub_2748824D8(void *a1)
{
  v2 = [a1 attributionBundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v3;
}

uint64_t sub_274882548(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2749F9094();

  return v3;
}

uint64_t sub_2748825B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968D10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_18_15()
{

  return swift_dynamicCastObjCClass();
}

uint64_t sub_274882640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_82();
  sub_2747B97A0(a3, v5, &unk_28096C960);
  v11 = sub_2749FD0E4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_27472ECBC(v5, &unk_28096C960);
  }

  else
  {
    sub_2749FD0D4();
    (*(*(v11 - 8) + 8))(v5, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v13)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_32_2();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968718);
    return swift_task_create();
  }

  swift_getObjectType();
  sub_2749FD044();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_2749FCE04();
  OUTLINED_FUNCTION_32_2();
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968718);
  v15 = swift_task_create();

  return v15;
}

uint64_t sub_2748828E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_82();
  sub_2747B97A0(a3, v5, &unk_28096C960);
  v11 = sub_2749FD0E4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_27472ECBC(v5, &unk_28096C960);
  }

  else
  {
    sub_2749FD0D4();
    (*(*(v11 - 8) + 8))(v5, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v13)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_32_2();
    v15 = swift_allocObject();
    *(v15 + 16) = a4;
    *(v15 + 24) = a5;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_2749FD044();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_2749FCE04();
  OUTLINED_FUNCTION_32_2();
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;

  v16 = swift_task_create();

  return v16;
}

uint64_t sub_274882B74(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C18);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t *sub_274882C00(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_274882B74(v6, a3);
  }

  if (a2)
  {
    return sub_274882BE0(v6, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_274882C98@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  sub_2749FB5D4();
  OUTLINED_FUNCTION_43();
  v28 = v3;
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v27 = sub_2749FBA94();
  OUTLINED_FUNCTION_43();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C410);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_82();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C418);
  OUTLINED_FUNCTION_43();
  v17 = v16;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  v20 = v26 - v19;
  v26[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C420);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  v23 = v26 - v22;
  sub_274882FC4(v1);
  sub_2749FBA64();
  v24 = sub_274886994();
  sub_2749FC1A4();
  (*(v8 + 8))(v12, v27);
  sub_27472ECBC(v1, &qword_28096C410);
  sub_2749FB5A4();
  v31 = v13;
  v32 = v24;
  swift_getOpaqueTypeConformance2();
  sub_2749FC1D4();
  (*(v28 + 8))(v6, v29);
  (*(v17 + 8))(v20, v15);
  sub_2749FB574();
  sub_2749FAE64();

  return sub_27474BA48(v23);
}

uint64_t sub_274882FC4@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v45 = sub_2749FA304();
  v40 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v37 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C4E8);
  MEMORY[0x28223BE20](v44);
  v46 = &v33 - v2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C478);
  MEMORY[0x28223BE20](v42);
  v35 = (&v33 - v3);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C4F0);
  MEMORY[0x28223BE20](v38);
  v41 = &v33 - v4;
  v43 = sub_2749FA2F4();
  v5 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2749FA2C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C458);
  MEMORY[0x28223BE20](v36);
  v34 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C448);
  MEMORY[0x28223BE20](v13);
  v39 = &v33 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C3F0);
  sub_2749FC7D4();
  v15 = sub_27487FC44();

  if (v15)
  {
    sub_2749FC7D4();
    sub_2748809F8();

    (*(v9 + 104))(v11, *MEMORY[0x277D7D680], v8);
    (*(v5 + 104))(v7, *MEMORY[0x277D7D6D0], v43);
    v16 = v37;
    sub_2749FA314();
    v17 = v40;
    v18 = v45;
    (*(v40 + 16))(v46, v16, v45);
    swift_storeEnumTagMultiPayload();
    sub_274886AD8();
    sub_2748871D0(&qword_28159E800, 255, MEMORY[0x277D7D6E0]);
    sub_2749FB7B4();
    return (*(v17 + 8))(v16, v18);
  }

  v37 = v11;
  v40 = v13;
  sub_2749FC7D4();
  v20 = sub_274880838();
  v22 = v21;

  if (v22 >> 60 == 15)
  {
    goto LABEL_7;
  }

  sub_27471CF08(0, &unk_28096B160);
  sub_2747EC0F4(v20, v22);
  v23 = sub_274881438();
  if (!v23)
  {
    sub_2747BD018(v20, v22);
LABEL_7:
    v32 = v35;
    sub_2748838B0(v35);
    sub_2747B97A0(v32, v41, &qword_28096C478);
    swift_storeEnumTagMultiPayload();
    sub_274886B64();
    sub_274886C50();
    v29 = v39;
    sub_2749FB7B4();
    v30 = v32;
    v31 = &qword_28096C478;
    goto LABEL_8;
  }

  v24 = v23;
  [objc_allocWithZone(MEMORY[0x277D79FD0]) initWithImage_];
  v35 = v20;
  (*(v9 + 104))(v37, *MEMORY[0x277D7D680], v8);
  (*(v5 + 104))(v7, *MEMORY[0x277D7D6D0], v43);
  v25 = v34;
  sub_2749FA314();
  v26 = sub_2749FC914();
  v27 = (v25 + *(v36 + 36));
  *v27 = sub_274883794;
  v27[1] = 0;
  v27[2] = v26;
  v27[3] = v28;
  sub_2747B97A0(v25, v41, &qword_28096C458);
  swift_storeEnumTagMultiPayload();
  sub_274886B64();
  sub_274886C50();
  v29 = v39;
  sub_2749FB7B4();

  sub_2747BD018(v35, v22);
  v30 = v25;
  v31 = &qword_28096C458;
LABEL_8:
  sub_27472ECBC(v30, v31);
  sub_2747B97A0(v29, v46, &qword_28096C448);
  swift_storeEnumTagMultiPayload();
  sub_274886AD8();
  sub_2748871D0(&qword_28159E800, 255, MEMORY[0x277D7D6E0]);
  sub_2749FB7B4();
  return sub_27472ECBC(v29, &qword_28096C448);
}

uint64_t sub_274883794@<X0>(uint64_t a1@<X8>)
{
  sub_2749FA324();
  v2 = sub_2749FC454();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C4F8);
  *(a1 + *(v3 + 52)) = v2;
  *(a1 + *(v3 + 56)) = 256;
  sub_2749FAC54();
  v4 = sub_2749FBC64();
  sub_2749FA9E4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C500) + 36);
  *v13 = v4;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  v14 = sub_2749FBC64();
  sub_2749FA9E4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C508);
  v24 = a1 + *(result + 36);
  *v24 = v14;
  *(v24 + 8) = v16;
  *(v24 + 16) = v18;
  *(v24 + 24) = v20;
  *(v24 + 32) = v22;
  *(v24 + 40) = 0;
  return result;
}

uint64_t sub_2748838B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2749FC404();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v35 - v7;
  v9 = sub_2749FC514();
  sub_2749FBD54();
  v10 = sub_2749FBD24();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  v11 = sub_2749FBD64();
  sub_27472ECBC(v8, &unk_28096C0A0);
  KeyPath = swift_getKeyPath();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v2);
  v13 = sub_2749FC4C4();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AC90) + 36);
  v15 = *MEMORY[0x277CE13A8];
  v16 = sub_2749FC994();
  (*(*(v16 - 8) + 104))(a1 + v14, v15, v16);
  *a1 = v9;
  a1[1] = KeyPath;
  a1[2] = v11;
  a1[3] = v13;
  sub_2749FC914();
  sub_2749FABB4();
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C4A8) + 36));
  v18 = v35[1];
  *v17 = v35[0];
  v17[1] = v18;
  v17[2] = v35[2];
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C498) + 36);
  sub_2749FC8A4();
  LOBYTE(v9) = sub_2749FBC64();
  v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C4E0) + 36)] = v9;
  v20 = *MEMORY[0x277D7A390] * 60.0;
  v21 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C488) + 36));
  v22 = *(sub_2749FAFC4() + 20);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_2749FB584();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = v20;
  v21[1] = v20;
  *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969C20) + 36)) = 256;
  LOBYTE(v23) = sub_2749FBC64();
  sub_2749FA9E4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C478);
  v34 = a1 + *(result + 36);
  *v34 = v23;
  *(v34 + 1) = v26;
  *(v34 + 2) = v28;
  *(v34 + 3) = v30;
  *(v34 + 4) = v32;
  v34[40] = 0;
  return result;
}

uint64_t sub_274883C84@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC10WorkflowUI20PreviewConfiguration11ContentView_configuration;
  swift_beginAccess();
  return sub_2747B960C(v1 + v3, a1);
}

uint64_t sub_274883CDC(__int128 *a1)
{
  v3 = OBJC_IVAR____TtCC10WorkflowUI20PreviewConfiguration11ContentView_configuration;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v1 + v3);
  sub_2747A45FC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_274883D44()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtCC10WorkflowUI20PreviewConfiguration11ContentView_backgroundImageView];
  [v2 setContentMode_];
  [v0 addSubview_];

  v9[3] = ObjectType;
  v9[0] = v0;
  v3 = objc_allocWithZone(MEMORY[0x277D75B80]);
  v0;
  v4 = sub_2748859DC(v9, sel_backgroundTapped);
  [v2 addGestureRecognizer_];
  [v2 setUserInteractionEnabled_];
  sub_27488431C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C48);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_274A0EF10;
  v6 = sub_2749FA5E4();
  v7 = MEMORY[0x277D74BF0];
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  *(swift_allocObject() + 16) = ObjectType;
  sub_2749FD564();

  swift_unknownObjectRelease();
}

void sub_274883EF4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtCC10WorkflowUI20PreviewConfiguration11ContentView_titleField);
  sub_274885D4C(a1, a2, v3);
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  [v3 setTextColor_];

  v6 = [v4 whiteColor];
  [v3 setTintColor_];

  v7 = objc_opt_self();
  v21 = [v7 preferredFontForTextStyle_];
  v8 = [v21 fontDescriptor];
  v9 = [v8 fontDescriptorWithSymbolicTraits_];

  if (v9)
  {
    [v21 pointSize];
    v10 = [v7 fontWithDescriptor:v9 size:?];

    v11 = v10;
  }

  else
  {
    v11 = v21;
  }

  v22 = v11;
  [v3 setFont_];
  [v3 setTextAlignment_];
  v12 = [v3 widthAnchor];
  v13 = [v12 constraintEqualToConstant_];

  [v13 setActive_];
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

  sub_274885CE8(v18, v20, v3);
}

id sub_2748841C4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_27471CF08(0, &qword_280968748);
  v1 = sub_2749FCF74();

  v2 = [v0 initWithArrangedSubviews_];

  return v2;
}

void sub_27488424C()
{
  *(v0 + OBJC_IVAR____TtCC10WorkflowUI20PreviewConfiguration11ContentView_posterBoardTask) = 0;
  v1 = OBJC_IVAR____TtCC10WorkflowUI20PreviewConfiguration11ContentView_backgroundImageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v2 = OBJC_IVAR____TtCC10WorkflowUI20PreviewConfiguration11ContentView_titleField;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
  sub_2749FDAE4();
  __break(1u);
}

uint64_t sub_27488431C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_2749FAA94();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v23 = OBJC_IVAR____TtCC10WorkflowUI20PreviewConfiguration11ContentView_posterBoardTask;
  if (*(v0 + OBJC_IVAR____TtCC10WorkflowUI20PreviewConfiguration11ContentView_posterBoardTask))
  {

    sub_2749FD0F4();
  }

  v12 = [objc_opt_self() currentTraitCollection];
  v13 = [v12 userInterfaceStyle];

  v14 = MEMORY[0x277CDF3C0];
  if (v13 != 2)
  {
    v14 = MEMORY[0x277CDF3D0];
  }

  (*(v6 + 104))(v11, *v14, v5);
  sub_2749FD0C4();
  v15 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v6 + 16))(v9, v11, v5);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  (*(v6 + 32))(v19 + v17, v9, v5);
  *(v19 + v18) = v16;
  v20 = sub_2748828E4(0, 0, v4, &unk_274A1D0C8, v19);
  sub_27472ECBC(v4, &unk_28096C960);
  (*(v6 + 8))(v11, v5);
  *(v1 + v23) = v20;
}

uint64_t sub_274884628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  v5[6] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[7] = v7;
  *v7 = v5;
  v7[1] = sub_2748846F8;

  return sub_274884940(a4);
}

uint64_t sub_2748846F8()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  *(v1 + 64) = v0;

  return MEMORY[0x2822009F8](sub_2748847F0, 0, 0);
}

uint64_t sub_2748847F0()
{
  OUTLINED_FUNCTION_28_10();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_16_11();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_2749FD0A4();
  v6 = v1;

  v7 = sub_2749FD094();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v4;
  v8[5] = v1;

  sub_2747995BC();

  OUTLINED_FUNCTION_48_0();

  return v10();
}

uint64_t sub_274884940(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_2749FA4E4();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v3 = sub_2749FAA94();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_274884A5C, 0, 0);
}

uint64_t sub_274884A5C()
{
  OUTLINED_FUNCTION_28_10();
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[19];
  v5 = [objc_allocWithZone(MEMORY[0x277D3EA00]) init];
  v0[26] = v5;
  (*(v2 + 16))(v1, v4, v3);
  v6 = (*(v2 + 88))(v1, v3);
  if (v6 == *MEMORY[0x277CDF3D0])
  {
    v7 = 37;
LABEL_5:
    v8 = objc_allocWithZone(MEMORY[0x277D3E948]);
    v9 = sub_274885934(1.0, 0, 0, 1, 1, v7, 1);
    v0[27] = v9;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_274884C7C;
    v10 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968B28);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_274882C00;
    v0[13] = &block_descriptor_28;
    v0[14] = v10;
    [v5 fetchPosterFocusSnapshotsWithRequest:v9 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  if (v6 == *MEMORY[0x277CDF3C0])
  {
    v7 = 21;
    goto LABEL_5;
  }

  return sub_2749FDCB4();
}

uint64_t sub_274884C7C()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 224) = v2;
  if (v2)
  {
    v3 = sub_274885048;
  }

  else
  {
    v3 = sub_274884D84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_274884D84()
{
  v1 = *(v0 + 144);
  v2 = [v1 snapshots];
  sub_27471CF08(0, &qword_280968B30);
  v3 = sub_2749FCF84();

  if (!sub_27472D918(v3))
  {
    v20 = *(v0 + 216);

LABEL_12:

LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  sub_2747B2790(0, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277C5F6D0](0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;

  v6 = [v5 surface];

  if (!v6)
  {
    v20 = *(v0 + 216);
    goto LABEL_12;
  }

  v7 = objc_allocWithZone(MEMORY[0x277CBF758]);
  v8 = v6;
  v9 = [v7 initWithIOSurface_];
  v10 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  [v9 extent];
  v11 = [v10 createCGImage:v9 fromRect:?];
  if (!v11)
  {
    v24 = *(v0 + 208);
    v23 = *(v0 + 216);

    goto LABEL_13;
  }

  v12 = v11;
  v13 = sub_2749FCD64();
  v14 = IOSurfaceCopyValue(v8, v13);

  v15 = 1.0;
  if (v14 && ([v14 respondsToSelector_] & 1) != 0)
  {
    [v14 doubleValue];
    v15 = v16;
  }

  v18 = *(v0 + 208);
  v17 = *(v0 + 216);
  v19 = [objc_allocWithZone(MEMORY[0x277D79FC8]) initWithCGImage:v12 scale:1 orientation:v15];

  swift_unknownObjectRelease();
LABEL_14:

  v21 = *(v0 + 8);

  return v21(v19);
}

uint64_t sub_274885048()
{
  v1 = v0[28];
  swift_willThrow();
  sub_2749FA3D4();
  v2 = v1;
  v3 = sub_2749FA4D4();
  v4 = sub_2749FD2C4();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_274719000, v3, v4, "Failed to fetch current lock screen poster snapshot with error: %@", v9, 0xCu);
    sub_27472ECBC(v10, &qword_28096A280);
    MEMORY[0x277C61040](v10, -1, -1);
    MEMORY[0x277C61040](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[21] + 8))(v0[22], v0[20]);

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_274885210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_2749FD0A4();
  v5[8] = sub_2749FD094();
  v7 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_2748852AC, v7, v6);
}

uint64_t sub_2748852AC()
{
  OUTLINED_FUNCTION_72();

  OUTLINED_FUNCTION_16_11();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    v3 = *(v0 + 56);
    v4 = *(Strong + OBJC_IVAR____TtCC10WorkflowUI20PreviewConfiguration11ContentView_backgroundImageView);

    if (v3)
    {
      v3 = [*(v0 + 56) platformImage];
    }

    [v4 setImage_];
  }

  **(v0 + 40) = v2 == 0;
  OUTLINED_FUNCTION_48_0();

  return v5();
}

id sub_27488538C()
{
  result = [*(v0 + OBJC_IVAR____TtCC10WorkflowUI20PreviewConfiguration11ContentView_titleField) text];
  if (result)
  {
    v2 = result;
    v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v5 = v4;

    v6 = OBJC_IVAR____TtCC10WorkflowUI20PreviewConfiguration11ContentView_configuration;
    swift_beginAccess();
    sub_2747B960C(v0 + v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096F9B0);
    type metadata accessor for PreviewConfiguration();
    if (swift_dynamicCast())
    {

      sub_27487F4E0(v3, v5);
    }

    else
    {
    }
  }

  return result;
}

id sub_2748855D0()
{
  v1 = *(v0 + OBJC_IVAR____TtCC10WorkflowUI20PreviewConfiguration11ContentView_titleField);
  v2 = [v1 isFirstResponder];
  v3 = &selRef_resignFirstResponder;
  if (!v2)
  {
    v3 = &selRef_becomeFirstResponder;
  }

  v4 = *v3;

  return [v1 v4];
}

uint64_t sub_274885794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821DCBC0](a1, ObjectType, a3);
}

char *sub_2748857E4()
{
  v0 = objc_allocWithZone(type metadata accessor for PreviewConfiguration.ContentView());

  v2 = sub_274885DA4(v1, v0);
  sub_2748871D0(&qword_28096C3E0, v3, type metadata accessor for PreviewConfiguration.ContentView);
  return v2;
}

uint64_t sub_274885864()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_274885908@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_27488585C();
  *a1 = v3;
  return result;
}

id sub_274885934(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (a3)
  {
    v14 = sub_2749FCD64();
  }

  else
  {
    v14 = 0;
  }

  v15 = [v8 initWithFocusModeUUID:v14 configurationType:a4 variant:a5 options:a6 imageScaleRelativeToScreen:a7 maxCount:a1];

  return v15;
}

id sub_2748859DC(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    MEMORY[0x28223BE20](v6);
    OUTLINED_FUNCTION_2_0();
    v10 = v9 - v8;
    (*(v7 + 16))(v9 - v8);
    v11 = sub_2749FDCA4();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_274885B18()
{
  OUTLINED_FUNCTION_72();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_18(v3);
  *v4 = v5;
  v4[1] = sub_274885C04;

  return v7(v1);
}

uint64_t sub_274885C04()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  v1 = *v0;
  OUTLINED_FUNCTION_8_1();
  *v2 = v1;

  OUTLINED_FUNCTION_48_0();

  return v3();
}

void sub_274885CE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();

  [a3 setPlaceholder_];
}

void sub_274885D4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();
  [a3 setText_];
}

char *sub_274885DA4(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_2749FA4E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HomeScreenPreviewIcon();
  MEMORY[0x28223BE20](v9 - 8);
  v57[3] = type metadata accessor for PreviewConfiguration();
  v57[4] = sub_2748871D0(&qword_280968D08, v10, type metadata accessor for PreviewConfiguration);
  v57[0] = a1;
  *&a2[OBJC_IVAR____TtCC10WorkflowUI20PreviewConfiguration11ContentView_posterBoardTask] = 0;
  v11 = OBJC_IVAR____TtCC10WorkflowUI20PreviewConfiguration11ContentView_backgroundImageView;
  *&a2[v11] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v12 = OBJC_IVAR____TtCC10WorkflowUI20PreviewConfiguration11ContentView_titleField;
  *&a2[v12] = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
  sub_2747B960C(v57, &a2[OBJC_IVAR____TtCC10WorkflowUI20PreviewConfiguration11ContentView_configuration]);
  v56.receiver = a2;
  v56.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v56, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2747B960C(v57, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096F9B0);
  if (swift_dynamicCast())
  {
    v14 = v54;
    sub_274883D44();
    v53 = v14;
    v15 = sub_27487F448();
    sub_274883EF4(v15, v16);

    v17 = OBJC_IVAR____TtCC10WorkflowUI20PreviewConfiguration11ContentView_titleField;
    v18 = *&v13[OBJC_IVAR____TtCC10WorkflowUI20PreviewConfiguration11ContentView_titleField];
    v19 = v13;
    [v18 addTarget:v19 action:sel_textDidChange forControlEvents:0x20000];
    v20 = *&v13[v17];
    [v20 setDelegate_];

    type metadata accessor for HomeScreenIconState();
    sub_2748871D0(&qword_280968B38, 255, type metadata accessor for HomeScreenIconState);

    sub_2749FC804();
    v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968B40));
    v22 = sub_2749FADF4();
    sub_27471CF08(0, &qword_28096C3E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_274A15450;
    *(v23 + 32) = v22;
    v24 = *&v13[v17];
    *(v23 + 40) = v24;
    v52 = v22;
    v25 = v24;
    v26 = sub_2748841C4();
    [v26 setAxis_];
    [v26 setAlignment_];
    [v26 setSpacing_];
    v27 = v19;
    v28 = v26;
    v29 = v27;
    v30 = v28;
    [v29 addSubview_];
    [v30 setTranslatesAutoresizingMaskIntoConstraints_];
    v31 = objc_opt_self();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_274A154D0;
    v33 = [v30 centerYAnchor];
    v34 = [v29 centerYAnchor];
    v35 = [v33 constraintEqualToAnchor_];

    *(v32 + 32) = v35;
    v36 = [v30 heightAnchor];

    v37 = [v29 heightAnchor];
    v38 = [v36 constraintLessThanOrEqualToAnchor_];

    *(v32 + 40) = v38;
    v39 = [v30 centerXAnchor];

    v40 = [v29 centerXAnchor];
    v41 = [v39 constraintEqualToAnchor_];

    *(v32 + 48) = v41;
    sub_27471CF08(0, &qword_280968040);
    v42 = sub_2749FCF74();

    [v31 activateConstraints_];

    v43 = [v29 heightAnchor];
    v44 = [v43 constraintEqualToConstant_];

    [v44 setActive_];
    v45 = [v29 layer];

    [v45 setCornerCurve_];
    v46 = [v29 layer];

    [v46 setCornerRadius_];
    [v29 setClipsToBounds_];
  }

  else
  {
    sub_2749FA3D4();
    v47 = sub_2749FA4D4();
    v48 = sub_2749FD2D4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_274719000, v47, v48, "Unexpected configuration type", v49, 2u);
      MEMORY[0x277C61040](v49, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_0(v57);
  return v13;
}

uint64_t type metadata accessor for HomeScreenPreviewIcon()
{
  result = qword_28096C3F8;
  if (!qword_28096C3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2748865A0()
{
  OUTLINED_FUNCTION_28_10();
  v1 = *(sub_2749FAA94() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_18(v3);
  *v4 = v5;
  v4[1] = sub_2747ED3A8;
  v6 = OUTLINED_FUNCTION_66_1();

  return sub_274884628(v6, v7, v8, v9, v2);
}

uint64_t sub_2748866A8()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_94();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return v4(v3);
}

uint64_t sub_274886738()
{
  OUTLINED_FUNCTION_28_10();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_18(v3);
  *v4 = v5;
  v4[1] = sub_2747F2F14;
  v6 = OUTLINED_FUNCTION_66_1();

  return sub_274885210(v6, v7, v8, v2, v1);
}

uint64_t sub_2748867FC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_94();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return v4(v3);
}

void sub_2748868B4()
{
  sub_274886920();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_274886920()
{
  if (!qword_28096C408)
  {
    type metadata accessor for HomeScreenIconState();
    v0 = sub_2749FC814();
    if (!v1)
    {
      atomic_store(v0, &qword_28096C408);
    }
  }
}

unint64_t sub_274886994()
{
  result = qword_28096C428;
  if (!qword_28096C428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C410);
    sub_274886A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C428);
  }

  return result;
}

unint64_t sub_274886A18()
{
  result = qword_28096C430;
  if (!qword_28096C430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C438);
    sub_274886AD8();
    sub_2748871D0(&qword_28159E800, 255, MEMORY[0x277D7D6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C430);
  }

  return result;
}

unint64_t sub_274886AD8()
{
  result = qword_28096C440;
  if (!qword_28096C440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C448);
    sub_274886B64();
    sub_274886C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C440);
  }

  return result;
}

unint64_t sub_274886B64()
{
  result = qword_28096C450;
  if (!qword_28096C450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C458);
    sub_2748871D0(&qword_28159E800, 255, MEMORY[0x277D7D6E0]);
    sub_27472AB6C(&qword_28096C460, &qword_28096C468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C450);
  }

  return result;
}

unint64_t sub_274886C50()
{
  result = qword_28096C470;
  if (!qword_28096C470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C478);
    sub_274886CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C470);
  }

  return result;
}

unint64_t sub_274886CDC()
{
  result = qword_28096C480;
  if (!qword_28096C480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C488);
    sub_274886D94();
    sub_27472AB6C(&qword_28159E720, &qword_280969C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C480);
  }

  return result;
}

unint64_t sub_274886D94()
{
  result = qword_28096C490;
  if (!qword_28096C490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C498);
    sub_274886E4C();
    sub_27472AB6C(&qword_28096C4D8, &qword_28096C4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C490);
  }

  return result;
}

unint64_t sub_274886E4C()
{
  result = qword_28096C4A0;
  if (!qword_28096C4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C4A8);
    sub_274886ED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C4A0);
  }

  return result;
}

unint64_t sub_274886ED8()
{
  result = qword_28096C4B0;
  if (!qword_28096C4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AC90);
    sub_274886F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C4B0);
  }

  return result;
}

unint64_t sub_274886F64()
{
  result = qword_28096C4B8;
  if (!qword_28096C4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C4C0);
    sub_27488701C();
    sub_27472AB6C(&qword_28159E5D0, &qword_28096A7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C4B8);
  }

  return result;
}

unint64_t sub_27488701C()
{
  result = qword_28096C4C8;
  if (!qword_28096C4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C4D0);
    sub_27472AB6C(&qword_28159E5C0, &unk_28096D8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C4C8);
  }

  return result;
}

unint64_t sub_2748870D4()
{
  result = qword_28096C510;
  if (!qword_28096C510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C410);
    sub_274886994();
    swift_getOpaqueTypeConformance2();
    sub_2748871D0(&qword_28159E5A0, 255, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C510);
  }

  return result;
}

uint64_t sub_2748871D0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SmartShortcutPickerSectionHeaderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C518);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &__dst[-v8];
  memcpy(__dst, v1, 0x7AuLL);
  *v9 = sub_2749FB524();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C520);
  sub_2748873D8(__dst, &v9[*(v10 + 44)]);
  sub_2749FBD54();
  sub_274887BA8();
  sub_2749FBFA4();
  sub_27472ECBC(v9, &qword_28096C518);
  v11 = sub_2749FBC54();
  sub_2749FA9E4();
  OUTLINED_FUNCTION_36();
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C530) + 36);
  *v12 = v11;
  *(v12 + 8) = v2;
  *(v12 + 16) = v3;
  *(v12 + 24) = v4;
  *(v12 + 32) = v5;
  *(v12 + 40) = 0;
  sub_2749FBC74();
  sub_274887D78();
  sub_2749FA9E4();
  OUTLINED_FUNCTION_36();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C538);
  OUTLINED_FUNCTION_4_25(v13);
  sub_2749FBC84();
  sub_274887ED0();
  sub_2749FA9E4();
  OUTLINED_FUNCTION_36();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C540);
  return OUTLINED_FUNCTION_4_25(v14);
}

uint64_t sub_2748873D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v77 = sub_2749FA2F4();
  v74 = *(v77 - 1);
  MEMORY[0x28223BE20](v77);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2749FA2C4();
  v5 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v7 = (&v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = sub_2749FA304();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C560);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v75 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v67 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v67 - v16;
  v18 = [*a1 hasClearBackground];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969B50) + 48);
  v20 = 24.0;
  if (v18)
  {
    v20 = 28.0;
  }

  *v7 = v20;
  v21 = *MEMORY[0x277D7D5B8];
  v22 = sub_2749FA034();
  (*(*(v22 - 8) + 104))(v7 + v19, v21, v22);
  (*(v5 + 104))(v7, *MEMORY[0x277D7D698], v71);
  *v4 = sub_274887C0C();
  v4[8] = 0;
  (*(v74 + 104))(v4, *MEMORY[0x277D7D6C0], v77);
  v23 = v70;
  sub_2749FA314();
  sub_2749FC914();
  sub_2749FABB4();
  (*(v72 + 32))(v15, v23, v73);
  v24 = &v15[*(v10 + 44)];
  v25 = v90;
  *v24 = v89;
  *(v24 + 1) = v25;
  *(v24 + 2) = v91;
  v77 = v17;
  sub_2748882A4(v15, v17);
  v26 = *(a1 + 16);
  v27 = a1;
  v79 = *(a1 + 8);
  v80 = v26;
  sub_27475D0D0();

  v28 = sub_2749FBEE4();
  v30 = v29;
  v32 = v31;
  sub_2749FBD94();
  v33 = sub_2749FBEC4();
  v35 = v34;
  v37 = v36;

  sub_27477656C(v28, v30, v32 & 1);

  LODWORD(v79) = sub_2749FB8B4();
  v38 = sub_2749FBE94();
  v73 = v39;
  LODWORD(v70) = v40;
  v74 = v41;
  sub_27477656C(v33, v35, v37 & 1);

  if (*(v27 + 24))
  {
    v72 = sub_2749FC514();
    v42 = sub_2749FB8C4();
    v71 = sub_2749FBDC4();
    KeyPath = swift_getKeyPath();
    v44 = sub_2749FBC94();
    sub_2749FA9E4();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    LOBYTE(v79) = 0;
    v69 = v44;
    v53 = v42;
  }

  else
  {
    v72 = 0;
    KeyPath = 0;
    v71 = 0;
    v69 = 0;
    v53 = 0;
    v46 = 0;
    v48 = 0;
    v50 = 0;
    v52 = 0;
  }

  v67 = v53;
  v68 = KeyPath;
  v54 = v75;
  sub_2747B97A0(v77, v75, &qword_28096C560);
  v55 = v76;
  sub_2747B97A0(v54, v76, &qword_28096C560);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C568);
  v57 = v55 + v56[12];
  v58 = v38;
  v59 = v73;
  *v57 = v38;
  *(v57 + 8) = v59;
  v60 = v70 & 1;
  *(v57 + 16) = v70 & 1;
  *(v57 + 24) = v74;
  v61 = v56[16];
  v62 = v72;
  __src[0] = v72;
  __src[1] = v53;
  __src[2] = KeyPath;
  v63 = v71;
  __src[3] = v71;
  v64 = v69;
  __src[4] = v69;
  __src[5] = v46;
  __src[6] = v48;
  __src[7] = v50;
  __src[8] = v52;
  LOBYTE(__src[9]) = 0;
  memcpy((v55 + v61), __src, 0x49uLL);
  v65 = v55 + v56[20];
  *v65 = 0;
  *(v65 + 8) = 1;
  sub_274754DBC(v58, v59, v60);

  sub_2747B97A0(__src, &v79, &qword_28096C570);
  sub_27472ECBC(v77, &qword_28096C560);
  v79 = v62;
  v80 = v67;
  v81 = v68;
  v82 = v63;
  v83 = v64;
  v84 = v46;
  v85 = v48;
  v86 = v50;
  v87 = v52;
  v88 = 0;
  sub_27472ECBC(&v79, &qword_28096C570);
  sub_27477656C(v58, v59, v60);

  return sub_27472ECBC(v54, &qword_28096C560);
}

unint64_t sub_274887BA8()
{
  result = qword_28096C528;
  if (!qword_28096C528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C528);
  }

  return result;
}

id sub_274887C0C()
{
  sub_2749FB4C4();
  OUTLINED_FUNCTION_1_35();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_28();
  if (v10)
  {
    OUTLINED_FUNCTION_9_19();
    OUTLINED_FUNCTION_7_18();
    sub_2747D2AC8(v7, &v6);
  }

  else
  {

    sub_2749FD2D4();
    v1 = sub_2749FBC14();
    OUTLINED_FUNCTION_3_36();

    sub_2749FB4B4();
    OUTLINED_FUNCTION_10_21();
    sub_27472ECBC(v9, &qword_280969BE0);
    v2 = OUTLINED_FUNCTION_6_22();
    v3(v2);
  }

  OUTLINED_FUNCTION_8_22();
  if (v8)
  {
    if (v8 == 1)
    {
      sub_2747D2B24(v7);
    }

    v4 = 1;
  }

  else
  {
    v4 = 4;
  }

  return [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_];
}

double sub_274887D78()
{
  sub_2749FB4C4();
  OUTLINED_FUNCTION_1_35();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_28();
  if (v9)
  {
    OUTLINED_FUNCTION_9_19();
    OUTLINED_FUNCTION_7_18();
    sub_2747D2AC8(v6, &v5);
  }

  else
  {

    sub_2749FD2D4();
    v1 = sub_2749FBC14();
    OUTLINED_FUNCTION_3_36();

    sub_2749FB4B4();
    OUTLINED_FUNCTION_10_21();
    sub_27472ECBC(v8, &qword_280969BE0);
    v2 = OUTLINED_FUNCTION_6_22();
    v3(v2);
  }

  OUTLINED_FUNCTION_8_22();
  if (!v7)
  {
    return 5.0;
  }

  if (v7 != 1)
  {
    return 0.0;
  }

  sub_2747D2B24(v6);
  return 7.0;
}

double sub_274887ED0()
{
  sub_2749FB4C4();
  OUTLINED_FUNCTION_1_35();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_28();
  if (v9)
  {
    OUTLINED_FUNCTION_9_19();
    OUTLINED_FUNCTION_7_18();
    sub_2747D2AC8(v6, &v5);
  }

  else
  {

    sub_2749FD2D4();
    v1 = sub_2749FBC14();
    OUTLINED_FUNCTION_3_36();

    sub_2749FB4B4();
    OUTLINED_FUNCTION_10_21();
    sub_27472ECBC(v8, &qword_280969BE0);
    v2 = OUTLINED_FUNCTION_6_22();
    v3(v2);
  }

  OUTLINED_FUNCTION_8_22();
  if (!v7)
  {
    return 11.0;
  }

  if (v7 != 1)
  {
    return 0.0;
  }

  sub_2747D2B24(v6);
  return 9.0;
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI28SmartShortcutPickerViewStyleO(uint64_t a1)
{
  if ((*(a1 + 88) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 88) & 3;
  }
}

uint64_t sub_274888078(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 122))
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

uint64_t sub_2748880B8(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 122) = 1;
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

    *(result + 122) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274888158(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2748881DC()
{
  result = qword_28096C558;
  if (!qword_28096C558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C530);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C518);
    sub_274887BA8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C558);
  }

  return result;
}

uint64_t sub_2748882A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27488837C()
{
  sub_27488E4A4(319, &qword_28096C588, type metadata accessor for WFGlyphCharacter, MEMORY[0x277CE11F8]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = type metadata accessor for GlyphPickerView.GridScrollBehavior(319);
    if (v3 <= 0x3F)
    {
      sub_274888930(319, &qword_28096C590, MEMORY[0x277CDF860]);
      v1 = v4;
      if (v5 <= 0x3F)
      {
        sub_274888564(319, &qword_28096C5A0, MEMORY[0x277CDF860]);
        v1 = v6;
        if (v7 <= 0x3F)
        {
          sub_274776B60();
          v1 = v8;
          if (v9 <= 0x3F)
          {
            sub_27488E508(319, &qword_28096B290, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
            v1 = v10;
            if (v11 <= 0x3F)
            {
              sub_27488E508(319, &qword_28096D840, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v13 > 0x3F)
              {
                return v12;
              }

              else
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

  return v1;
}

void sub_274888564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for GlyphRegistry();
    OUTLINED_FUNCTION_1_36();
    v8 = sub_2748885F0(v7);
    v9 = a3(a1, v6, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2748885F0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15_1(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_27488865C()
{
  sub_27488E4A4(319, &qword_28096C5C0, MEMORY[0x277CDDA30], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_148(*(a1 + 8));
  }

  type metadata accessor for GlyphPickerView.GridScrollBehavior(0);
  v3 = OUTLINED_FUNCTION_3_37();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_130();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    type metadata accessor for GlyphPickerView.GridScrollBehavior(0);
    v3 = OUTLINED_FUNCTION_3_37();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

void sub_274888814()
{
  sub_27488E4A4(319, &qword_28096C588, type metadata accessor for WFGlyphCharacter, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for GlyphPickerView.GridScrollBehavior(319);
    if (v1 <= 0x3F)
    {
      sub_274888930(319, &qword_28096C5D8, MEMORY[0x277CDF4A0]);
      if (v2 <= 0x3F)
      {
        sub_274888564(319, &qword_28096C5E0, MEMORY[0x277CDF4A0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_274888930(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2749F9DB4();
    OUTLINED_FUNCTION_2_29();
    v8 = sub_2748885F0(v7);
    v9 = a3(a1, v6, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_274888A2C(void (*a1)(__int16 *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), void (*a6)(void))
{
  v23 = a6;
  v24 = a1;
  v8 = v6;
  v25 = a2;
  v10 = *(a4(0) - 8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v14 = *(a3 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v27 = MEMORY[0x277D84F90];
  v22 = a5;
  a5(0, v14, 0);
  v15 = v27;
  v16 = (a3 + 32);
  while (1)
  {
    v17 = *v16++;
    v26 = v17;
    v24(&v26);
    if (v8)
    {
      break;
    }

    v8 = 0;
    v27 = v15;
    v19 = *(v15 + 16);
    v18 = *(v15 + 24);
    if (v19 >= v18 >> 1)
    {
      v22(v18 > 1, v19 + 1, 1);
      v15 = v27;
    }

    *(v15 + 16) = v19 + 1;
    sub_27488E104(v13, v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v19, v23);
    if (!--v14)
    {
      return v15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_274888BD4()
{
  sub_2749F9DB4();
  swift_allocObject();
  return sub_2749F9DA4();
}

uint64_t sub_274888C20(char a1, char a2)
{
  type metadata accessor for GlyphRegistry();
  swift_allocObject();
  return GlyphRegistry.init(useSystemGlyphsOnly:useOutlineGlyphsOnly:hiddenCategories:)(a1, a2, &unk_28838F7F8);
}

uint64_t sub_274888C74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = *v1;
  v44 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B5A0);
  sub_2749FC6E4();
  HIDWORD(v37) = v48;
  v4 = *(type metadata accessor for GlyphPickerView(0) + 20);
  v5 = type metadata accessor for GlyphPickerCachedView(0);
  sub_27488C804(v2 + v4, a1 + v5[5], type metadata accessor for GlyphPickerView.GridScrollBehavior);
  sub_2749F9DB4();
  OUTLINED_FUNCTION_2_29();
  sub_2748885F0(v6);
  sub_2749FAB04();
  type metadata accessor for GlyphRegistry();
  OUTLINED_FUNCTION_1_36();
  sub_2748885F0(v7);
  sub_2749FAB04();
  *a1 = v46;
  *(a1 + 8) = v47;
  *(a1 + 16) = v48;
  v8 = (a1 + v5[6]);
  *v8 = sub_2749FAD84();
  v8[1] = v9;
  v10 = (a1 + v5[7]);
  *v10 = sub_2749FAD84();
  v10[1] = v11;
  v12 = (a1 + v5[8]);
  *v12 = 0;
  v12[1] = 0;
  v13 = sub_2749FC5B4();
  OUTLINED_FUNCTION_16_12(v13, v14, v15, v16, v17, v18, v19, v20, v35, v37, v47, v46, v21, v41);
  v22 = a1 + v5[10];
  sub_2749FC5B4();
  *v22 = v42;
  *(v22 + 8) = v44;
  v23 = sub_2749FC5B4();
  OUTLINED_FUNCTION_16_12(v23, v24, v25, v26, v27, v28, v29, v30, v36, v38, v39, v40, v31, v42);
  v32 = (a1 + v5[12]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C760);
  v43 = sub_2749FCDC4();
  v45 = v33;

  MEMORY[0x277C5EBC0](0xD000000000000010, 0x8000000274A30D80);

  *v32 = v43;
  v32[1] = v45;
  return result;
}

uint64_t sub_274888F5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = sub_2749FBA94();
  OUTLINED_FUNCTION_43();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C5E8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C5F0);
  OUTLINED_FUNCTION_43();
  v30 = v14;
  v31 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  *v12 = sub_2749FB644();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C5F8);
  sub_274889250(v2, &v12[*(v18 + 44)]);
  sub_2749FBA84();
  v19 = sub_27488EE4C(&unk_28096C600);
  sub_2749FC1A4();
  (*(v5 + 8))(v8, v3);
  sub_27478C584(v12, &qword_28096C5E8);
  v20 = *(v2 + 8);
  v21 = *(v2 + 16);
  v34 = *v2;
  v35 = v20;
  v36 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B5A0);
  MEMORY[0x277C5E410](v33, v22);
  v23 = WFNameForGlyphCharacter();
  if (v23)
  {
    v24 = v23;
    v25 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xE000000000000000;
  }

  v34 = v25;
  v35 = v27;
  v33[0] = v9;
  v33[1] = v19;
  swift_getOpaqueTypeConformance2();
  sub_27475D0D0();
  v28 = v31;
  sub_2749FC104();

  return (*(v30 + 8))(v17, v28);
}

uint64_t sub_274889250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C608);
  MEMORY[0x28223BE20](v3 - 8);
  v98 = &v81[-v4];
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C610);
  MEMORY[0x28223BE20](v97);
  v102 = &v81[-v5];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C618);
  MEMORY[0x28223BE20](v100);
  v103 = &v81[-v6];
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C620);
  v7 = MEMORY[0x28223BE20](v101);
  v105 = &v81[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v96 = &v81[-v10];
  MEMORY[0x28223BE20](v9);
  v104 = &v81[-v11];
  v12 = type metadata accessor for GlyphPickerCachedView(0);
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v92 = v14;
  v15 = &v81[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C628);
  v16 = MEMORY[0x28223BE20](v94);
  v99 = &v81[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v95 = &v81[-v18];
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v19 = qword_28159E448;
  v20 = sub_2749FCD64();
  v21 = sub_2749FCD64();

  v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

  v91 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v90 = v23;

  v24 = a1 + v12[9];
  v25 = *v24;
  v26 = *(v24 + 16);
  *__dst = v25;
  *&__dst[16] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBC0);
  sub_2749FC5E4();
  v87 = __src[0];
  v85 = *(&__src[1] + 1);
  v86 = *&__src[1];
  v27 = (a1 + v12[10]);
  v89 = *v27;
  v88 = *(v27 + 1);
  __dst[0] = v89;
  *&__dst[8] = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5E4();
  v93 = v12;
  v83 = *(&__src[0] + 1);
  v84 = *&__src[0];
  v82 = LOBYTE(__src[1]);
  sub_27488C804(a1, v15, type metadata accessor for GlyphPickerCachedView);
  v28 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v29 = swift_allocObject();
  sub_27488E104(v15, v29 + v28, type metadata accessor for GlyphPickerCachedView);
  v30 = (a1 + v12[12]);
  v32 = *v30;
  v31 = v30[1];
  *&__src[0] = v91;
  *(&__src[0] + 1) = v90;
  __src[1] = v87;
  *&__src[2] = v86;
  *(&__src[2] + 1) = v85;
  *&__src[3] = v84;
  *(&__src[3] + 1) = v83;
  LOBYTE(__src[4]) = v82;
  *(&__src[4] + 1) = sub_27488C5C4;
  *&__src[5] = v29;
  *(&__src[5] + 1) = v32;
  *&__src[6] = v31;
  __dst[0] = v89;
  *&__dst[8] = v88;

  sub_2749FC5C4();
  sub_27488C804(a1, v15, type metadata accessor for GlyphPickerCachedView);
  v33 = swift_allocObject();
  sub_27488E104(v15, v33 + v28, type metadata accessor for GlyphPickerCachedView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C630);
  sub_27488EE4C(&unk_28096C638);
  v34 = v95;
  sub_2749FC304();

  memcpy(__dst, __src, sizeof(__dst));
  sub_27478C584(__dst, &qword_28096C630);
  LOBYTE(v22) = sub_2749FBC54();
  sub_2749FA9E4();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C640) + 36);
  *v43 = v22;
  *(v43 + 8) = v36;
  *(v43 + 16) = v38;
  *(v43 + 24) = v40;
  *(v43 + 32) = v42;
  *(v43 + 40) = 0;
  LOBYTE(v22) = sub_2749FBC74();
  sub_2749FA9E4();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C648) + 36);
  *v52 = v22;
  *(v52 + 8) = v45;
  *(v52 + 16) = v47;
  *(v52 + 24) = v49;
  *(v52 + 32) = v51;
  *(v52 + 40) = 0;
  LOBYTE(v22) = sub_2749FBC54();
  sub_2749FA9E4();
  v53 = v34 + *(v94 + 36);
  *v53 = v22;
  *(v53 + 8) = v54;
  *(v53 + 16) = v55;
  *(v53 + 24) = v56;
  *(v53 + 32) = v57;
  *(v53 + 40) = 0;
  v58 = v98;
  sub_27488A234(a1, v98);
  sub_2749FC914();
  sub_2749FB004();
  v59 = v102;
  sub_2747D31F8(v58, v102, &qword_28096C608);
  memcpy(&v59[*(v97 + 36)], __src, 0x70uLL);
  LOBYTE(v58) = sub_2749FBC84();
  sub_2749FA9E4();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v68 = v59;
  v69 = v103;
  sub_2747D31F8(v68, v103, &qword_28096C610);
  v70 = &v69[*(v100 + 36)];
  *v70 = v58;
  *(v70 + 1) = v61;
  *(v70 + 2) = v63;
  *(v70 + 3) = v65;
  *(v70 + 4) = v67;
  v70[40] = 0;
  KeyPath = swift_getKeyPath();
  v72 = *(a1 + v93[6] + 8);
  v73 = v96;
  sub_2747D31F8(v69, v96, &qword_28096C618);
  v74 = &v73[*(v101 + 36)];
  *v74 = KeyPath;
  v74[1] = v72;
  v75 = v104;
  sub_2747D31F8(v73, v104, &qword_28096C620);
  v76 = v99;
  sub_27473ADB8(v34, v99, &qword_28096C628);
  v77 = v105;
  sub_27473ADB8(v75, v105, &qword_28096C620);
  v78 = v106;
  sub_27473ADB8(v76, v106, &qword_28096C628);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C650);
  sub_27473ADB8(v77, v78 + *(v79 + 48), &qword_28096C620);

  sub_27478C584(v75, &qword_28096C620);
  sub_27478C584(v34, &qword_28096C628);
  sub_27478C584(v77, &qword_28096C620);
  return sub_27478C584(v76, &qword_28096C628);
}

uint64_t sub_274889CB4(uint64_t a1)
{
  v2 = type metadata accessor for GlyphPickerView.GridScrollBehavior(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2749FAF04();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GlyphPickerCachedView(0);
  v10 = (a1 + *(v9 + 36));
  v11 = *v10;
  v12 = *(v10 + 2);
  v17 = v11;
  v18 = v12;
  v16[1] = 0;
  v16[2] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBC0);
  sub_2749FC5D4();
  sub_27488C804(a1 + *(v9 + 20), v4, type metadata accessor for GlyphPickerView.GridScrollBehavior);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF10);
  if (__swift_getEnumTagSinglePayload(v4, 1, v13) == 1)
  {
    return sub_27488C948(v4);
  }

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return sub_27478C584(v4, &qword_28096BF10);
  }

  v15 = (*(v6 + 32))(v8, v4, v5);
  MEMORY[0x28223BE20](v15);
  v16[-2] = v8;
  v16[-1] = a1;
  sub_2749FC964();
  sub_2749FACF4();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_274889F30(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = type metadata accessor for GlyphPickerView.GridScrollBehavior(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2749FAF04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a2;
  result = type metadata accessor for GlyphPickerCachedView(0);
  v14 = result;
  v15 = (a3 + *(result + 32));
  if (*v15)
  {
    result = (*v15)(v12);
  }

  if (v12)
  {
    sub_27488C804(a3 + *(v14 + 20), v7, type metadata accessor for GlyphPickerView.GridScrollBehavior);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF10);
    if (__swift_getEnumTagSinglePayload(v7, 1, v16) == 1)
    {
      return sub_27488C948(v7);
    }

    else if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      return sub_27478C584(v7, &qword_28096BF10);
    }

    else
    {
      v17 = (*(v9 + 32))(v11, v7, v8);
      MEMORY[0x28223BE20](v17);
      *&v18[-16] = v11;
      *&v18[-8] = a3;
      sub_2749FC964();
      sub_2749FACF4();

      return (*(v9 + 8))(v11, v8);
    }
  }

  return result;
}

uint64_t sub_27488A194(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  type metadata accessor for GlyphPickerCachedView(0);

  a3(v4);
  sub_2749FAEF4();
}

uint64_t sub_27488A234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C658);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C660);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C668);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = type metadata accessor for GlyphPickerView.GridScrollBehavior(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for GlyphPickerCachedView(0);
  sub_27488C804(a1 + *(v17 + 20), v16, type metadata accessor for GlyphPickerView.GridScrollBehavior);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF10);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v18);
  if (EnumTagSinglePayload == 1)
  {
    v33 = &v31;
    MEMORY[0x28223BE20](EnumTagSinglePayload);
    *(&v31 - 2) = a1;
    v32 = sub_2749FBC44();
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C678);
    v31 = v3;
    v21 = v20;
    v22 = sub_2749FAF64();
    v23 = sub_27488ECE8(&unk_28096C680);
    v24 = sub_2748885F0(&qword_28159E6A0);
    v35 = v21;
    v36 = v22;
    v37 = v23;
    v38 = v24;
    swift_getOpaqueTypeConformance2();
    sub_2749FAA54();
    (*(v11 + 16))(v9, v13, v10);
    swift_storeEnumTagMultiPayload();
    sub_27488EE4C(&unk_28096C670);
    sub_2749FB7B4();
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    sub_27488A794(v6);
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    v33 = sub_27488EE4C(&unk_28096C670);
    v26 = v3;
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C678);
    v28 = sub_2749FAF64();
    v29 = sub_27488ECE8(&unk_28096C680);
    v30 = sub_2748885F0(&qword_28159E6A0);
    v35 = v27;
    v36 = v28;
    v37 = v29;
    v38 = v30;
    swift_getOpaqueTypeConformance2();
    sub_2749FB7B4();
    (*(v4 + 8))(v6, v26);
    return sub_27488C948(v16);
  }
}

uint64_t sub_27488A794@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = sub_2749FAF64();
  v48 = *(v1 - 8);
  v49 = v1;
  MEMORY[0x28223BE20](v1);
  v46 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2749FB864();
  MEMORY[0x28223BE20](v40);
  v39[1] = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2749FC874();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2749FC884();
  v9 = *(v8 - 8);
  v10 = v9;
  MEMORY[0x28223BE20](v8);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C6A0);
  v42 = *(v13 - 8);
  v43 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v39 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C678);
  MEMORY[0x28223BE20](v44);
  v45 = v39 - v16;
  *v7 = xmmword_274A1D450;
  (*(v5 + 104))(v7, *MEMORY[0x277CDF108], v4);
  sub_2749FC894();
  v17 = sub_2749FCFE4();
  *(v17 + 16) = 6;
  v18 = v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v19 = *(v9 + 16);
  v19(v18, v12, v8);
  v20 = *(v9 + 72);
  v19(v18 + v20, v12, v8);
  v19(v18 + 2 * v20, v12, v8);
  v19(v18 + 3 * v20, v12, v8);
  v19(v18 + 4 * v20, v12, v8);
  v21 = v15;
  (*(v10 + 32))(v18 + 5 * v20, v12, v8);
  sub_2749FB634();
  v50 = v41;
  LODWORD(v51) = 0;
  sub_2748885F0(&unk_28096C6A8);
  sub_2749FDED4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C6B0);
  sub_27488C9D0();
  sub_2749FC9A4();
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

  v51 = v26;
  v52 = v28;
  sub_27488EE4C(&unk_28096C698);
  sub_27475D0D0();
  v29 = v45;
  v30 = v43;
  sub_2749FC0F4();

  (*(v42 + 8))(v21, v30);
  LOBYTE(v25) = sub_2749FBC54();
  sub_2749FA9E4();
  v31 = v29 + *(v44 + 36);
  *v31 = v25;
  *(v31 + 8) = v32;
  *(v31 + 16) = v33;
  *(v31 + 24) = v34;
  *(v31 + 32) = v35;
  *(v31 + 40) = 0;
  v36 = v46;
  sub_2749FAF54();
  sub_27488ECE8(&unk_28096C680);
  sub_2748885F0(&qword_28159E6A0);
  v37 = v49;
  sub_2749FBFC4();
  (*(v48 + 8))(v36, v37);
  return sub_27478C584(v29, &qword_28096C678);
}

uint64_t sub_27488AE9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2749FB134();
  *a1 = result;
  return result;
}

uint64_t sub_27488AEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C718);
  v33 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v32 = &v29 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C720);
  MEMORY[0x28223BE20](v35);
  v37 = &v29 - v4;
  v5 = type metadata accessor for GlyphPickerCachedView(0);
  v6 = v5 - 8;
  v34 = *(v5 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C6C8);
  v31 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v30 = &v29 - v8;
  v9 = (a1 + *(v6 + 44));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v42 = *v9;
  v43 = v11;
  v44 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBC0);
  sub_2749FC5C4();
  v14 = v40;
  v13 = v41;

  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v42 = v10;
    v43 = v11;
    v44 = v12;
    sub_2749FC5C4();
    sub_2747B9BAC(v40, v41);
    v17 = v16;

    v42 = v17;
    swift_getKeyPath();
    sub_27488C804(a1, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GlyphPickerCachedView);
    v18 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v19 = swift_allocObject();
    sub_27488E104(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for GlyphPickerCachedView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968AE8);
    type metadata accessor for SelectGlyphButton(0);
    sub_27488EE4C(&unk_28096C728);
    sub_2748885F0(&unk_28096C730);
    sub_2748885F0(&unk_28096C708);
    v20 = v32;
    sub_2749FC754();
    v21 = v33;
    v22 = v39;
    (*(v33 + 16))(v37, v20, v39);
    swift_storeEnumTagMultiPayload();
    sub_27488CA74();
    sub_27488CCA4(&unk_28096C710);
    sub_2749FB7B4();
    return (*(v21 + 8))(v20, v22);
  }

  else
  {
    v42 = GlyphRegistry.categories.getter();
    sub_27488C804(a1, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GlyphPickerCachedView);
    v24 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v25 = swift_allocObject();
    sub_27488E104(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for GlyphPickerCachedView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968AD0);
    sub_2749F9164();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C6D8);
    sub_27488EE4C(&unk_28096C738);
    sub_27488CAF8();
    sub_2748885F0(&unk_28096C740);
    v26 = v30;
    sub_2749FC764();
    v27 = v31;
    v28 = v36;
    (*(v31 + 16))(v37, v26, v36);
    swift_storeEnumTagMultiPayload();
    sub_27488CA74();
    sub_27488CCA4(&unk_28096C710);
    sub_2749FB7B4();
    return (*(v27 + 8))(v26, v28);
  }
}

uint64_t sub_27488B5B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C6E8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = (a1 + *(type metadata accessor for WFGlyphCategory() + 20));
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = *(type metadata accessor for GlyphPickerCachedView.SectionHeaderView(0) + 20);
  *(v9 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  swift_storeEnumTagMultiPayload();

  LOBYTE(v11) = sub_2749FBC54();
  sub_2749FA9E4();
  v13 = v9 + *(v4 + 36);
  *v13 = v11;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  sub_27473ADB8(v9, v7, &qword_28096C6E8);
  v20 = a1;
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C700);
  sub_27488CBA8();
  sub_27488CCA4(&unk_28096C6F8);
  sub_2749FC784();
  return sub_27478C584(v9, &qword_28096C6E8);
}

uint64_t sub_27488B7A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlyphPickerCachedView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *(a1 + *(type metadata accessor for WFGlyphCategory() + 24));
  v12 = a1;
  v13 = sub_274888A2C(sub_27488CDC8, v11, v7, type metadata accessor for CategorizedGlyph, sub_27476DA00, type metadata accessor for CategorizedGlyph);
  swift_getKeyPath();
  sub_27488C804(a2, &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for GlyphPickerCachedView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_27488E104(&v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for GlyphPickerCachedView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C748);
  type metadata accessor for SelectGlyphButton(0);
  sub_27488EE4C(&unk_28096C750);
  sub_2748885F0(&unk_28096C758);
  sub_2748885F0(&unk_28096C708);
  return sub_2749FC754();
}

uint64_t sub_27488BA44@<X0>(__int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = sub_2749F9164();
  (*(*(v6 - 8) + 16))(a3, a2, v6);
  result = type metadata accessor for CategorizedGlyph(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

int *sub_27488BAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for GlyphPickerCachedView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v28 = *(a1 + *(type metadata accessor for CategorizedGlyph(0) + 20));
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v32 = *a2;
  v33 = v10;
  v34 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B5A0);
  sub_2749FC6E4();
  v12 = v30;
  v27 = v29;
  v26 = v31;
  v13 = a2 + *(v7 + 48);
  v14 = *v13;
  v15 = *(v13 + 8);
  LOBYTE(v29) = v14;
  v30 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5E4();
  v16 = v32;
  v17 = v33;
  v18 = v34;
  sub_27488C804(a2, &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for GlyphPickerCachedView);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  sub_27488E104(&v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v20 + v19, type metadata accessor for GlyphPickerCachedView);
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for SelectGlyphButton(0);
  *(a3 + result[5]) = v28;
  v22 = a3 + result[6];
  *v22 = v27;
  *(v22 + 1) = v12;
  *(v22 + 8) = v26;
  v23 = a3 + result[7];
  *v23 = v16;
  *(v23 + 1) = v17;
  v23[16] = v18;
  v24 = (a3 + result[8]);
  *v24 = sub_27488CEA4;
  v24[1] = v20;
  return result;
}

int *sub_27488BD10@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for GlyphPickerCachedView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v28 = *a1;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v32 = *a2;
  v33 = v10;
  v34 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B5A0);
  sub_2749FC6E4();
  v12 = v30;
  v27 = v29;
  v26 = v31;
  v13 = a2 + *(v7 + 48);
  v14 = *v13;
  v15 = *(v13 + 8);
  LOBYTE(v29) = v14;
  v30 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5E4();
  v16 = v32;
  v17 = v33;
  v18 = v34;
  sub_27488C804(a2, &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for GlyphPickerCachedView);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  sub_27488E104(&v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v20 + v19, type metadata accessor for GlyphPickerCachedView);
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for SelectGlyphButton(0);
  *(a3 + result[5]) = v28;
  v22 = a3 + result[6];
  *v22 = v27;
  *(v22 + 1) = v12;
  *(v22 + 8) = v26;
  v23 = a3 + result[7];
  *v23 = v16;
  *(v23 + 1) = v17;
  v23[16] = v18;
  v24 = (a3 + result[8]);
  *v24 = sub_27488EF74;
  v24[1] = v20;
  return result;
}

uint64_t sub_27488BF4C()
{
  type metadata accessor for GlyphPickerCachedView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBC0);
  return sub_2749FC5D4();
}

uint64_t sub_27488BFC0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2749FB524();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C7C0);
  sub_27488C164(v1, a1 + *(v3 + 44));
  v4 = sub_2749FBC94();
  sub_2749FA9E4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C7C8) + 36);
  *v13 = v4;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  v14 = sub_2749FBCC4();
  sub_2749FA9E4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C7D0) + 36);
  *v23 = v14;
  *(v23 + 8) = v16;
  *(v23 + 16) = v18;
  *(v23 + 24) = v20;
  *(v23 + 32) = v22;
  *(v23 + 40) = 0;
  v24 = sub_2749FBC54();
  sub_2749FA9E4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C7D8) + 36);
  *v33 = v24;
  *(v33 + 8) = v26;
  *(v33 + 16) = v28;
  *(v33 + 24) = v30;
  *(v33 + 32) = v32;
  *(v33 + 40) = 0;
  v34 = [objc_opt_self() systemBackgroundColor];
  v35 = sub_2749FC3E4();
  v36 = sub_2749FBC64();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C7E0);
  v38 = a1 + *(result + 36);
  *v38 = v35;
  *(v38 + 8) = v36;
  return result;
}

uint64_t sub_27488C164@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_2749FB5D4();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v42 - v6;
  v44 = sub_2749FBE14();
  v8 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CF90);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v46 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v45 = v42 - v14;
  v15 = *a1;
  v16 = a1[1];
  v51 = v15;
  v52 = v16;
  sub_27475D0D0();

  v17 = sub_2749FBEE4();
  v19 = v18;
  v21 = v20;
  sub_2749FC494();
  v22 = sub_2749FBE84();
  v42[1] = v24;
  v43 = v23;
  v26 = v25;

  sub_27477656C(v17, v19, v21 & 1);

  v27 = v44;
  (*(v8 + 104))(v10, *MEMORY[0x277CE0AC0], v44);
  v28 = sub_2749FBD24();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v28);
  sub_2749FBD74();
  sub_27478C584(v7, &unk_28096C0A0);
  (*(v8 + 8))(v10, v27);
  v29 = v43;
  v30 = sub_2749FBEC4();
  v32 = v31;
  LOBYTE(v7) = v33;
  v35 = v34;

  sub_27477656C(v22, v29, v26 & 1);

  v51 = v30;
  v52 = v32;
  v53 = v7 & 1;
  v54 = v35;
  v36 = v47;
  sub_2749FB5C4();
  v37 = v45;
  sub_2749FC1D4();
  (*(v48 + 8))(v36, v49);
  sub_27477656C(v30, v32, v7 & 1);

  v38 = v46;
  sub_27473ADB8(v37, v46, &qword_28096CF90);
  v39 = v50;
  sub_27473ADB8(v38, v50, &qword_28096CF90);
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C7E8) + 48);
  *v40 = 0;
  *(v40 + 8) = 1;
  sub_27478C584(v37, &qword_28096CF90);
  return sub_27478C584(v38, &qword_28096CF90);
}

uint64_t objectdestroyTm_7()
{
  type metadata accessor for GlyphPickerCachedView(0);
  OUTLINED_FUNCTION_23();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;

  v8 = v0[5];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF10);
  if (!__swift_getEnumTagSinglePayload(v1 + v4 + v8, 1, v9))
  {
    v10 = sub_2749FAF04();
    if (!__swift_getEnumTagSinglePayload(v7 + v8, 1, v10))
    {
      (*(*(v10 - 8) + 8))(v7 + v8, v10);
    }
  }

  OUTLINED_FUNCTION_17_16(v0[6]);

  OUTLINED_FUNCTION_17_16(v0[7]);

  if (*(v7 + v0[8]))
  {
  }

  OUTLINED_FUNCTION_17_16(v0[10]);

  OUTLINED_FUNCTION_17_16(v0[12]);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_27488C794(uint64_t a1, unsigned __int8 *a2)
{
  OUTLINED_FUNCTION_7_19();
  OUTLINED_FUNCTION_11_1();

  return sub_274889F30(a1, a2, v2 + v5);
}

uint64_t sub_27488C804(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

unint64_t sub_27488C860()
{
  result = qword_28096C688;
  if (!qword_28096C688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C690);
    sub_27488EE4C(&unk_28096C698);
    sub_2748885F0(&qword_28159E5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C688);
  }

  return result;
}

uint64_t sub_27488C948(uint64_t a1)
{
  v2 = type metadata accessor for GlyphPickerView.GridScrollBehavior(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27488C9D0()
{
  result = qword_28096C6B8;
  if (!qword_28096C6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C6B0);
    sub_27488CA74();
    sub_27488CCA4(&unk_28096C710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C6B8);
  }

  return result;
}

unint64_t sub_27488CA74()
{
  result = qword_28096C6C0;
  if (!qword_28096C6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C6C8);
    sub_27488CAF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C6C0);
  }

  return result;
}

unint64_t sub_27488CAF8()
{
  result = qword_28096C6D0;
  if (!qword_28096C6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C6D8);
    sub_27488CBA8();
    sub_27488CCA4(&unk_28096C6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C6D0);
  }

  return result;
}

unint64_t sub_27488CBA8()
{
  result = qword_28096C6E0;
  if (!qword_28096C6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C6E8);
    sub_2748885F0(&unk_28096C6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C6E0);
  }

  return result;
}

unint64_t sub_27488CCA4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15_1(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_108(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    sub_2748885F0(&unk_28096C708);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

int *sub_27488CD38@<X0>(unsigned __int16 *a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_7_19();
  OUTLINED_FUNCTION_11_1();

  return sub_27488BD10(a1, v2 + v5, a2);
}

uint64_t sub_27488CE00(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_7_19();
  OUTLINED_FUNCTION_11_1();

  return a2(a1, v2 + v4);
}

uint64_t sub_27488CEA8()
{
  v1 = type metadata accessor for SelectGlyphButton(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_27488C804(v0, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SelectGlyphButton);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_27488E104(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4, type metadata accessor for SelectGlyphButton);
  v8 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C7F0);
  sub_27488E94C();
  return sub_2749FC624();
}

uint64_t sub_27488D014(uint64_t a1)
{
  v2 = type metadata accessor for SelectGlyphButton(0);
  v3 = (a1 + v2[7]);
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = *(a1 + v2[5]);
  v14 = *v3;
  v4 = v14;
  v15 = v5;
  LOBYTE(v16) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096FDE0);
  MEMORY[0x277C5E410](&v13);
  sub_27488D128(v7, v13);
  v8 = (a1 + v2[6]);
  v9 = *v8;
  v10 = v8[1];
  LOWORD(v8) = *(v8 + 8);
  v14 = v9;
  v15 = v10;
  v16 = v8;
  v13 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B5A0);
  sub_2749FC6C4();
  v14 = v4;
  v15 = v5;
  LOBYTE(v16) = v6;
  LOBYTE(v13) = 0;
  result = sub_2749FC6C4();
  v12 = (a1 + v2[8]);
  if (*v12)
  {
    return (*v12)(result);
  }

  return result;
}

void sub_27488D128(uint64_t a1, char a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D7C4A0]) init];
  v4 = sub_2749FDC74();
  sub_27488EA48(v4, v5, v3);
  [v3 setSearchActive_];
  [v3 track];
}

uint64_t sub_27488D1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[1] = a2;
  v27 = sub_2749FB5D4();
  v26[0] = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C800);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v26 - v7;
  v9 = type metadata accessor for SelectGlyphButton(0);
  v10 = a1 + *(v9 + 24);
  v11 = *v10;
  v12 = *(v10 + 8);
  LOWORD(v10) = *(v10 + 16);
  v28 = v11;
  v29 = v12;
  LOWORD(v30) = v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B5A0);
  MEMORY[0x277C5E410](&v32, v13);
  v14 = v32;
  v15 = *(a1 + *(v9 + 20));
  v16 = v32 == v15;
  LOWORD(v32) = *(a1 + *(v9 + 20));
  BYTE2(v32) = v16;
  v17 = WFNameForGlyphCharacter();
  if (v17)
  {
    v18 = v17;
    v19 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  v28 = v19;
  v29 = v21;
  v22 = sub_2747C726C();
  v23 = sub_27475D0D0();
  sub_2749FC234();

  if (v14 == v15)
  {
    sub_2749FB594();
    v24 = v27;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
    sub_2748885F0(&unk_28159E630);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A468);
    sub_27488EE4C(&qword_28159E538);
    v24 = v27;
    sub_2749FD7B4();
  }

  v28 = &type metadata for SelectGlyphButton.Contents;
  v29 = MEMORY[0x277D837D0];
  v30 = v22;
  v31 = v23;
  swift_getOpaqueTypeConformance2();
  sub_2749FC1D4();
  (*(v26[0] + 8))(v4, v24);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_27488D530(int a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C808);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  v4 = (v13 - v3);
  *v4 = sub_2749FC914();
  v4[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C810);
  sub_27488D69C(a1 & 0x1FFFF, v4 + *(v6 + 44));
  v7 = WFNameForGlyphCharacter();
  if (v7)
  {
    v8 = v7;
    v9 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v13[0] = v9;
  v13[1] = v11;
  sub_27488EE4C(&unk_28096C818);
  sub_27475D0D0();
  sub_2749FC0F4();

  return sub_27478C584(v4, &qword_28096C808);
}

uint64_t sub_27488D69C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v80 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C820);
  MEMORY[0x28223BE20](v78);
  v77 = &v67 - v2;
  v74 = sub_2749FA2C4();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v4 = (&v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C828);
  MEMORY[0x28223BE20](v75);
  v6 = &v67 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C830);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v79 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v73 = &v67 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C838);
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C840);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v76 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v67 - v17;
  v19 = sub_2749FA2F4();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v69 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v67 - v23;
  v25 = [objc_opt_self() wf_systemGrayColor];
  v26 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithPlatformColor_];

  *v24 = v26;
  v27 = 1;
  v24[8] = 1;
  v28 = *MEMORY[0x277D7D6C0];
  v71 = v20;
  v29 = *(v20 + 104);
  v81 = v24;
  v30 = v24;
  v31 = v68;
  v32 = v19;
  v33 = v19;
  v34 = v18;
  v29(v30, v28, v33);
  sub_2749FC4A4();
  v35 = sub_2749FC484();

  if ((v31 & 0x10000) != 0)
  {
    v36 = *(sub_2749FAFC4() + 20);
    v37 = *MEMORY[0x277CE0118];
    v38 = sub_2749FB584();
    (*(*(v38 - 8) + 104))(&v13[v36], v37, v38);
    __asm { FMOV            V0.2D, #7.5 }

    *v13 = _Q0;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D130);
    *&v13[*(v44 + 52)] = v35;
    *&v13[*(v44 + 56)] = 256;

    LODWORD(v37) = sub_2749FB8D4();
    *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C868) + 36)] = v37;
    sub_2749FC914();
    sub_2749FABB4();
    v45 = &v13[*(v11 + 36)];
    v46 = v83;
    *v45 = v82;
    *(v45 + 1) = v46;
    *(v45 + 2) = v84;
    sub_27488EB94(v13, v34);
    v27 = 0;
  }

  v70 = v35;
  __swift_storeEnumTagSinglePayload(v34, v27, 1, v11);
  v47 = WFSystemImageNameForGlyphCharacter();
  if (v47)
  {
    v48 = v47;
    v49 = v34;
    v50 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v52 = v51;

    v53 = [objc_opt_self() clearColor];
    v54 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

    v55 = objc_allocWithZone(MEMORY[0x277D7A158]);
    sub_27491A250(v50, v52, v54);
    v56 = 34.0;
  }

  else
  {
    v49 = v34;
    v57 = [objc_opt_self() clearColor];
    v58 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

    [objc_allocWithZone(MEMORY[0x277D7A1D8]) initWithGlyph:v31 background:v58];
    v56 = 30.0;
  }

  *v4 = v56;
  v4[1] = v56;
  (*(v72 + 104))(v4, *MEMORY[0x277D7D690], v74);
  v59 = v71;
  v60 = *(v71 + 16);
  v67 = v32;
  v60(v69, v81, v32);
  sub_2749FA314();
  *&v6[*(v75 + 36)] = sub_2749FB8B4();
  sub_27473ADB8(v6, v77, &qword_28096C828);
  swift_storeEnumTagMultiPayload();
  sub_27488EAAC();
  v61 = v73;
  sub_2749FB7B4();
  sub_27478C584(v6, &qword_28096C828);
  v62 = v76;
  sub_27473ADB8(v49, v76, &qword_28096C840);
  v63 = v79;
  sub_27473ADB8(v61, v79, &qword_28096C830);
  v64 = v80;
  sub_27473ADB8(v62, v80, &qword_28096C840);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C860);
  sub_27473ADB8(v63, v64 + *(v65 + 48), &qword_28096C830);

  sub_27478C584(v61, &qword_28096C830);
  sub_27478C584(v49, &qword_28096C840);
  (*(v59 + 8))(v81, v67);
  sub_27478C584(v63, &qword_28096C830);
  return sub_27478C584(v62, &qword_28096C840);
}

BOOL sub_27488DEB8(uint64_t a1, uint64_t a2)
{
  if ((sub_2749F9134() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CategorizedGlyph(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_27488DF08()
{
  sub_2749F9164();
  sub_2748885F0(&qword_2809707C0);
  sub_2749FCD04();
  type metadata accessor for CategorizedGlyph(0);
  return sub_2749FDE24();
}

uint64_t sub_27488DF98()
{
  sub_2749FDDF4();
  sub_2749F9164();
  sub_2748885F0(&qword_2809707C0);
  sub_2749FCD04();
  type metadata accessor for CategorizedGlyph(0);
  sub_2749FDE24();
  return sub_2749FDE44();
}

uint64_t sub_27488E038()
{
  if (*(v0 + 2))
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  return sub_27488D530(v1 | *v0);
}

uint64_t sub_27488E064()
{
  sub_2749FDDF4();
  sub_2749F9164();
  sub_2748885F0(&qword_2809707C0);
  sub_2749FCD04();
  sub_2749FDE24();
  return sub_2749FDE44();
}

uint64_t sub_27488E104(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

uint64_t sub_27488E160()
{
  OUTLINED_FUNCTION_7_19();
  OUTLINED_FUNCTION_11_1();
  return sub_27488BF4C();
}

uint64_t __swift_memcpy3_2(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SelectGlyphButton.Contents(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for SelectGlyphButton.Contents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void sub_27488E354()
{
  sub_27488E4A4(319, &qword_280968A60, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for WFGlyphCharacter(319);
    if (v1 <= 0x3F)
    {
      sub_27488E4A4(319, &qword_28096C588, type metadata accessor for WFGlyphCharacter, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_27488E508(319, &qword_28096C778, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_274776B60();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_27488E4A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_27488E508(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_27488E580()
{
  sub_2749F9164();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WFGlyphCharacter(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27488E62C()
{
  sub_27488E4A4(319, &qword_280968A60, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_27488E6D8()
{
  result = qword_28096C7A0;
  if (!qword_28096C7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C7A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C5E8);
    sub_27488EE4C(&unk_28096C600);
    swift_getOpaqueTypeConformance2();
    sub_2748885F0(&qword_28159E5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C7A0);
  }

  return result;
}

uint64_t sub_27488E8CC(void (*a1)(void), uint64_t (*a2)(uint64_t))
{
  a1(0);
  OUTLINED_FUNCTION_11_1();

  return a2(v2 + v3);
}

unint64_t sub_27488E94C()
{
  result = qword_28096C7F8;
  if (!qword_28096C7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C7F0);
    sub_2747C726C();
    sub_27475D0D0();
    swift_getOpaqueTypeConformance2();
    sub_2748885F0(&qword_28159E5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C7F8);
  }

  return result;
}

void sub_27488EA48(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();

  [a3 setIdentifier_];
}

unint64_t sub_27488EAAC()
{
  result = qword_28096C848;
  if (!qword_28096C848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C828);
    sub_2748885F0(&qword_28159E800);
    sub_27488EE4C(&unk_28096C850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C848);
  }

  return result;
}

uint64_t sub_27488EB94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C838);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_27488EC04()
{
  result = qword_28096C870;
  if (!qword_28096C870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C7E0);
    sub_27488ECE8(&unk_28096C878);
    sub_27488EE4C(&unk_28096BFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C870);
  }

  return result;
}

unint64_t sub_27488ECE8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15_1(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_108(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27488ED94()
{
  result = qword_28096C888;
  if (!qword_28096C888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C7C8);
    sub_27488EE4C(&unk_28096C890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C888);
  }

  return result;
}

unint64_t sub_27488EE4C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15_1(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_108(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27488EE8C()
{
  result = qword_28096C8B0;
  if (!qword_28096C8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C8B8);
    sub_27488EE4C(&unk_28096C818);
    sub_2748885F0(&qword_28159E5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C8B0);
  }

  return result;
}

uint64_t sub_27488F01C()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_27488F064(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___WFTriggerSuggestionViewController_hostingController] = 0;
  v11 = OBJC_IVAR___WFTriggerSuggestionViewController_searchController;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x277D759F0]) init];
  *&v5[OBJC_IVAR___WFTriggerSuggestionViewController_trigger] = a1;
  v12 = &v5[OBJC_IVAR___WFTriggerSuggestionViewController_selectedEntryMetadataData];
  *v12 = a2;
  v12[1] = a3;
  *&v5[OBJC_IVAR___WFTriggerSuggestionViewController_selectedReference] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C9A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_274A0F610;
  type metadata accessor for SmartShortcutPickerPromotedActionsDataSource();
  OUTLINED_FUNCTION_132();
  v14 = a1;
  sub_274882480(a2, a3);
  v15 = a4;
  v16 = SmartShortcutPickerPromotedActionsDataSource.init()();
  v17 = sub_274891504(&qword_280969510, type metadata accessor for SmartShortcutPickerPromotedActionsDataSource);
  *(v13 + 32) = v16;
  *(v13 + 40) = v17;
  v18 = [objc_opt_self() defaultDatabase];
  type metadata accessor for SmartShortcutPickerUserLibraryDataSource();
  OUTLINED_FUNCTION_132();
  v19 = SmartShortcutPickerUserLibraryDataSource.init(database:)(v18);
  v20 = sub_274891504(&unk_28096C9B0, type metadata accessor for SmartShortcutPickerUserLibraryDataSource);
  *(v13 + 48) = v19;
  *(v13 + 56) = v20;
  v21 = [objc_allocWithZone(MEMORY[0x277D23B70]) init];
  __src[0] = 3;
  type metadata accessor for SmartShortcutPickerAppShortcutDataSource();
  OUTLINED_FUNCTION_132();
  v22 = SmartShortcutPickerAppShortcutDataSource.init(provider:options:denyListEnvironment:)(v21, __src, 1);
  v23 = sub_274891504(&qword_280969520, type metadata accessor for SmartShortcutPickerAppShortcutDataSource);
  *(v13 + 64) = v22;
  *(v13 + 72) = v23;
  type metadata accessor for SmartShortcutPickerTriggerSuggestionsDataSource();
  OUTLINED_FUNCTION_132();
  v24 = v14;
  v25 = SmartShortcutPickerTriggerSuggestionsDataSource.init(trigger:)(v24);
  v26 = sub_274891504(&unk_28096C9C0, type metadata accessor for SmartShortcutPickerTriggerSuggestionsDataSource);
  *(v13 + 80) = v25;
  *(v13 + 88) = v26;
  v32 = 5;
  __dst[191] = 1;
  sub_2747B9A5C(__src);
  memcpy(__dst, __src, 0xB9uLL);
  type metadata accessor for SmartShortcutPickerDataSource();
  OUTLINED_FUNCTION_132();
  SmartShortcutPickerDataSource.init(dataSources:appAvailabilityContext:appAvailabilityStrategy:selectedEntry:)();
  *&v5[OBJC_IVAR___WFTriggerSuggestionViewController_dataSource] = v27;
  v30.receiver = v5;
  v30.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v30, sel_initWithNibName_bundle_, 0, 0);

  sub_2747BD018(a2, a3);
  return v28;
}

void sub_27488F440()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___WFTriggerSuggestionViewController_hostingController) = 0;
  v1 = OBJC_IVAR___WFTriggerSuggestionViewController_searchController;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D759F0]) init];
  sub_2749FDAE4();
  __break(1u);
}

void sub_27488F500()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v0 setView_];

  v2 = [*&v0[OBJC_IVAR___WFTriggerSuggestionViewController_trigger] localizedDescriptionWithConfigurationSummary];
  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v5 = v4;

  sub_2747F9654(v3, v5, v0);
  v6 = [objc_opt_self() currentTraitCollection];
  v7 = [objc_opt_self() mainScreen];
  [v7 bounds];

  v8 = OUTLINED_FUNCTION_1_6();
  if (!v8)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  [v8 layoutMargins];

  objc_opt_self();
  v10 = OUTLINED_FUNCTION_4_0();
  v13 = [v11 v12];

  [v13 workflowSize];
  v58 = v14;
  [v13 workflowIconToLabelMargin];
  v57 = v15;
  [v13 workflowGlyphDimension];
  v17 = v16;
  [v13 workflowButtonDimension];
  v19 = v18;
  [v13 cornerRadius];
  v21 = v20;
  [v13 workflowContentEdgeInsets];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [v13 workflowSize];
  v31 = v30 + -28.0;
  [v13 interitemSpacing];
  v32 = *&v0[OBJC_IVAR___WFTriggerSuggestionViewController_dataSource];
  v61[0] = v58;
  *&v61[1] = v31;
  v61[2] = v33;
  v61[3] = v21;
  v61[4] = v23;
  v61[5] = v25;
  v61[6] = v27;
  v61[7] = v29;
  v61[8] = v57;
  v61[9] = v17;
  v61[10] = v19;
  v62 = 0;
  v59[0] = v58;
  *&v59[1] = v31;
  v59[2] = v33;
  v59[3] = v21;
  v59[4] = v23;
  v59[5] = v25;
  v59[6] = v27;
  v59[7] = v29;
  v59[8] = v57;
  v59[9] = v17;
  v59[10] = v19;
  v60 = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = v0;
  v35 = swift_allocObject();
  *(v35 + 16) = v0;
  type metadata accessor for SmartShortcutPickerSelectionCoordinator();
  swift_allocObject();
  v36 = v0;

  v37 = SmartShortcutPickerSelectionCoordinator.init(style:selectionHandler:errorHandler:)(v59, sub_27489137C, v34, sub_2748913A0, v35);
  v38 = objc_allocWithZone(type metadata accessor for SmartShortcutPickerViewController());
  v39 = SmartShortcutPickerViewController.init(dataSource:style:selectionCoordinator:)(v32, v61, v37);
  v40 = [v39 view];
  if (!v40)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v41 = v40;
  v42 = [v36 view];
  if (!v42)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v43 = v42;
  [v42 bounds];

  v44 = OUTLINED_FUNCTION_4_0();
  [v45 v46];

  v47 = OUTLINED_FUNCTION_1_6();
  if (!v47)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v48 = v47;
  [v47 setAutoresizingMask_];

  v49 = OUTLINED_FUNCTION_1_6();
  if (!v49)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v50 = v49;
  v51 = [objc_opt_self() systemGroupedBackgroundColor];
  [v50 setBackgroundColor_];

  v52 = [v36 view];
  if (!v52)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v53 = v52;
  v54 = OUTLINED_FUNCTION_1_6();
  if (!v54)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v55 = v54;
  [v53 addSubview_];

  [v36 addChildViewController_];
  [v39 didMoveToParentViewController_];

  v56 = *&v36[OBJC_IVAR___WFTriggerSuggestionViewController_hostingController];
  *&v36[OBJC_IVAR___WFTriggerSuggestionViewController_hostingController] = v39;
}

uint64_t sub_27488F9F8(const void *a1, uint64_t a2)
{
  v5 = type metadata accessor for SmartShortcutPickerSelectedEntry();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  v10 = OUTLINED_FUNCTION_34(v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v20[-v11];
  memcpy(v21, a1, 0xB9uLL);
  v13 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  sub_2747EBB34(a2, v8);
  sub_2749FD0A4();
  sub_2747EBB98(v21, v20);
  v14 = v2;
  v15 = sub_2749FD094();
  v16 = (*(v6 + 80) + 232) & ~*(v6 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v15;
  v17[3] = v18;
  memcpy(v17 + 4, v21, 0xB9uLL);
  v17[28] = v14;
  sub_2747EBD84(v8, v17 + v16);
  sub_27479930C();
}

void sub_27488FBE0()
{
  v1 = v0;
  sub_27471CF08(0, &unk_28096DB70);
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v2 = qword_28159E448;
  v3 = sub_2749FCD64();
  v4 = sub_2749FCD64();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;

  v9 = sub_274856E7C(0, 0, v6, v8, 1);
  sub_27471CF08(0, &qword_28096C980);
  sub_2749FCE14();
  v10 = sub_2749FCD64();
  v11 = sub_2749FCD64();

  v12 = [v2 localizedStringForKey:v10 value:v11 table:0];

  v13 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v15 = v14;

  v16 = sub_274856F34(v13, v15, 0, 0, 0);
  [v9 addAction_];

  v17 = [v1 presentedViewController];
  if (!v17)
  {
    v17 = v1;
  }

  v18 = v17;
  [v17 presentViewController:v9 animated:1 completion:0];
}

void sub_27488FE78()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  sub_27488FF68();
  v1 = *&v0[OBJC_IVAR___WFTriggerSuggestionViewController_searchController];
  [v1 setSearchResultsUpdater_];
  [v1 setObscuresBackgroundDuringPresentation_];
  [v1 setHidesNavigationBarDuringPresentation_];
  v2 = [v0 navigationItem];
  [v2 setSearchController_];

  v3 = [v0 navigationItem];
  [v3 setHidesSearchBarWhenScrolling_];
}

uint64_t sub_27488FF68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280969260);
  v2 = OUTLINED_FUNCTION_34(v1);
  result = MEMORY[0x28223BE20](v2);
  v5 = &v11[-v4 - 8];
  v6 = *(v0 + OBJC_IVAR___WFTriggerSuggestionViewController_selectedEntryMetadataData + 8);
  if (v6 >> 60 != 15)
  {
    v7 = *(v0 + OBJC_IVAR___WFTriggerSuggestionViewController_selectedReference);
    if (v7)
    {
      v8 = *(v0 + OBJC_IVAR___WFTriggerSuggestionViewController_selectedEntryMetadataData);
      sub_2749F8F24();
      OUTLINED_FUNCTION_132();
      sub_274882480(v8, v6);
      v9 = v7;
      sub_2749F8F14();
      sub_274891328();
      sub_2749F8F04();
      memcpy(v12, v13, 0xF0uLL);
      memcpy(v11, v13, sizeof(v11));
      sub_27477C198(v9, v5);

      SmartShortcutPickerDataSource.selection.setter(v5);
      sub_2747BD018(v8, v6);

      sub_27477CFB4(v12);
    }
  }

  return result;
}

uint64_t sub_274890160(int a1, int a2, int a3, void *__src, uint64_t a5, uint64_t a6)
{
  v6[366] = a6;
  v6[365] = a5;
  v6[364] = __src;
  memcpy(v6 + 122, __src, 0xB9uLL);
  v7 = sub_2749FA4E4();
  v6[367] = v7;
  v6[368] = *(v7 - 8);
  v6[369] = swift_task_alloc();
  v6[370] = swift_task_alloc();
  sub_2749FD0A4();
  v6[371] = sub_2749FD094();
  v9 = sub_2749FD044();
  v6[372] = v9;
  v6[373] = v8;

  return MEMORY[0x2822009F8](sub_27489027C, v9, v8);
}

uint64_t sub_27489027C()
{
  v46 = v0;
  memcpy((v0 + 1168), *(v0 + 2912), 0xB9uLL);
  switch(sub_274772AD0(v0 + 1168))
  {
    case 1u:
      v27 = *(v0 + 2928);
      v28 = *sub_274721C98(v0 + 1168);

      v29 = [v28 name];
      v30 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v32 = v31;

      *(v0 + 2720) = v30;
      *(v0 + 2728) = v32;
      *(v0 + 2736) = MEMORY[0x277D84F90];
      sub_2747EBF0C(v0 + 2720);
      v33 = *(v27 + 192);
      v34 = *(v27 + 200);
      LOBYTE(v32) = *(v27 + 208);
      memcpy((v0 + 2096), (v0 + 2720), 0x81uLL);
      *(v0 + 2232) = 0u;
      *(v0 + 2248) = v33;
      *(v0 + 2256) = v34;
      *(v0 + 2264) = v32;
      v35 = *(v27 + 216);
      memcpy((v0 + 496), (v0 + 2096), 0xA9uLL);
      *(v0 + 672) = 0u;
      *(v0 + 688) = 0u;
      *(v0 + 704) = 0u;
      *(v0 + 720) = -1;
      *(v0 + 728) = v35;
      sub_2749F8F54();
      OUTLINED_FUNCTION_132();
      sub_27477D408(v33, v34, v32);
      sub_27477BFFC(v0 + 2096, v0 + 2272);
      v36 = v35;
      sub_2749F8F44();
      memcpy((v0 + 736), (v0 + 496), 0xF0uLL);
      sub_2748914B0();
      v37 = sub_2749F8F34();
      v39 = v38;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v41 = Strong;
        v42 = *(v0 + 2920);
        v43 = sub_2749F9074();
        [v41 triggerSuggestionViewControllerDidFinish:v42 reference:v28 selectedEntryMetadata:v43];
        sub_27477C9FC(v0 + 2096);
        sub_2747BD02C(v37, v39);
        swift_unknownObjectRelease();

        sub_27477CFB4(v0 + 496);
      }

      else
      {
        sub_27477C9FC(v0 + 2096);
        sub_2747BD02C(v37, v39);

        sub_27477CFB4(v0 + 496);
      }

      goto LABEL_13;
    case 2u:
      v13 = sub_274721C98(v0 + 1168);
      memcpy((v0 + 1552), v13, 0xB9uLL);
      v14 = *(v0 + 1552);
      *(v0 + 2992) = v14;
      v15 = *(v0 + 1560);
      *(v0 + 3000) = v15;
      v16 = *(v0 + 1568);
      *(v0 + 3008) = v16;
      v17 = *(v0 + 1576);
      *(v0 + 3016) = v17;
      v18 = *(v0 + 1584);
      *(v0 + 3024) = v18;
      v19 = *(v0 + 1592);
      *(v0 + 3032) = v19;
      v20 = *(v0 + 1600);
      *(v0 + 1161) = v20;
      *(v0 + 2856) = v14;
      *(v0 + 2864) = v15;
      *(v0 + 2872) = v16;
      *(v0 + 2880) = v17;
      *(v0 + 2888) = v18;
      *(v0 + 2896) = v19;
      *(v0 + 2904) = v20;
      memcpy((v0 + 2448), (v0 + 1608), 0x81uLL);
      v21 = swift_task_alloc();
      *(v0 + 3040) = v21;
      *v21 = v0;
      v21[1] = sub_274890810;

      return SmartShortcutPickerActionTemplate.fullyFormedAction(with:)();
    case 3u:
      sub_274721C98(v0 + 1168);

      v23 = swift_unknownObjectWeakLoadStrong();
      if (v23)
      {
        v24 = v23;
        v25 = *(v0 + 2920);
        sub_27471CF08(0, &qword_28096D540);
        v26 = sub_2749FCF74();
        [v24 triggerSuggestionViewControllerDidFinish:v25 actions:v26 editable:1 selectedEntryMetadata:0];
        swift_unknownObjectRelease();
      }

      goto LABEL_13;
    default:
      v1 = *(v0 + 2912);
      v2 = sub_274721C98(v0 + 1168);
      v3 = *v2;
      v4 = v2[1];

      sub_2749FA3D4();
      memcpy((v0 + 1360), (v0 + 976), 0xB9uLL);
      sub_274721C98(v0 + 1360);

      v5 = sub_2749FA4D4();
      v6 = sub_2749FD2C4();
      sub_2747EBF14(v1);
      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 2952);
      v9 = *(v0 + 2944);
      v10 = *(v0 + 2936);
      if (v7)
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v45 = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_2747AF460(v3, v4, &v45);
        _os_log_impl(&dword_274719000, v5, v6, "Unknown custom entry detected: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x277C61040](v12, -1, -1);
        MEMORY[0x277C61040](v11, -1, -1);
      }

      (*(v9 + 8))(v8, v10);
LABEL_13:

      OUTLINED_FUNCTION_48_0();

      return v44();
  }
}

uint64_t sub_274890810(uint64_t a1)
{
  v3 = *v2;
  v3[381] = a1;
  v3[382] = v1;

  v4 = v3[373];
  v5 = v3[372];
  if (v1)
  {
    v6 = sub_274890D00;
  }

  else
  {
    v6 = sub_274890930;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_274890930()
{
  v42 = *(v0 + 3056);
  v1 = *(v0 + 1161);
  v2 = *(v0 + 3032);
  v3 = *(v0 + 3024);
  v41 = *(v0 + 3016);
  v4 = *(v0 + 3008);
  v5 = *(v0 + 3000);
  v38 = v5;
  v39 = v4;
  v40 = *(v0 + 2992);
  v6 = *(v0 + 2928);

  if (v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  if (v1)
  {
    v8 = v4;
  }

  else
  {
    v8 = v2;
  }

  v10 = *(v6 + 192);
  v9 = *(v6 + 200);
  v11 = *(v6 + 208);
  memcpy((v0 + 1744), (v0 + 1608), 0x81uLL);
  *(v0 + 1880) = v7;
  *(v0 + 1888) = v8;
  *(v0 + 1896) = v10;
  v12 = v10;
  *(v0 + 1904) = v9;
  *(v0 + 1912) = v11;
  v13 = *(v6 + 216);
  memcpy((v0 + 16), (v0 + 1744), 0xA9uLL);
  *(v0 + 192) = v40;
  *(v0 + 200) = v38;
  *(v0 + 208) = v39;
  *(v0 + 216) = v41;
  *(v0 + 224) = v3;
  *(v0 + 232) = v2;
  *(v0 + 240) = v1;
  *(v0 + 248) = v13;
  sub_2749F8F54();
  OUTLINED_FUNCTION_132();
  sub_274772B38(v0 + 1608, v0 + 2584);

  sub_27477D408(v12, v9, v11);
  sub_27477BFFC(v0 + 1744, v0 + 1920);
  sub_27477C094(v40, v38, v39, v41, v3, v2, v1);
  v14 = v13;
  sub_2749F8F44();
  memcpy((v0 + 256), (v0 + 16), 0xF0uLL);
  sub_2748914B0();
  v15 = v42;
  v16 = sub_2749F8F34();
  if (v42)
  {

    sub_27477C9FC(v0 + 1744);
    sub_27477CFB4(v0 + 16);
    sub_27488FBE0();
  }

  else
  {
    v18 = *(v0 + 1912);
    v19 = v16;
    v20 = v17;
    switch(v18)
    {
      case 1u:
        v21 = OUTLINED_FUNCTION_3_5();
        v23 = 1;
        goto LABEL_12;
      case 2u:
        v21 = OUTLINED_FUNCTION_3_5();
        v23 = 2;
LABEL_12:
        sub_27477D408(v21, v22, v23);

        v15 = 0;
        break;
      case 3u:
        v15 = *(v0 + 1896) != 0;
        break;
      default:
        break;
    }

    v24 = OUTLINED_FUNCTION_3_5();
    sub_27478C4DC(v24, v25, v18);
    sub_27478C4DC(1, 0, 3u);
    v26 = OUTLINED_FUNCTION_3_5();
    sub_27478C4DC(v26, v27, v18);
    Strong = swift_unknownObjectWeakLoadStrong();
    v29 = *(v0 + 3048);
    if (Strong)
    {
      v30 = Strong;
      v31 = *(v0 + 2920);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_274A11F70;
      *(v32 + 32) = v29;
      sub_27471CF08(0, &qword_28096D540);
      v33 = v29;
      v34 = sub_2749FCF74();

      v35 = sub_2749F9074();
      [v30 triggerSuggestionViewControllerDidFinish:v31 actions:v34 editable:v15 selectedEntryMetadata:v35];

      sub_2747BD02C(v19, v20);
      swift_unknownObjectRelease();

      sub_27477CFB4(v0 + 16);
      sub_27477C9FC(v0 + 1744);
    }

    else
    {

      sub_2747BD02C(v19, v20);

      sub_27477CFB4(v0 + 16);
      sub_27477C9FC(v0 + 1744);
    }
  }

  OUTLINED_FUNCTION_48_0();

  return v36();
}

uint64_t sub_274890D00()
{

  v1 = *(v0 + 3056);
  sub_27488FBE0();

  OUTLINED_FUNCTION_48_0();

  return v2();
}

uint64_t sub_274890D84(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  v4 = OUTLINED_FUNCTION_34(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  result = sub_2748911FC([a1 searchBar]);
  if (v8)
  {
    v9 = result;
    v10 = v8;
    v11 = sub_2749FD0E4();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
    sub_2749FD0A4();
    v12 = v1;
    v13 = sub_2749FD094();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v12;
    v14[5] = v9;
    v14[6] = v10;
    sub_27479930C();
  }

  return result;
}

uint64_t sub_274890EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_2749FD0A4();
  v6[5] = sub_2749FD094();
  v8 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_274890F54, v8, v7);
}

uint64_t sub_274890F54()
{

  SmartShortcutPickerDataSource.searchText.setter();

  OUTLINED_FUNCTION_48_0();

  return v0();
}

id sub_274891058(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR___WFTriggerSuggestionViewController_hostingController);
  if (result)
  {
    return [result contentScrollViewForEdge_];
  }

  return result;
}

uint64_t sub_2748911FC(void *a1)
{
  v2 = [a1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v3;
}

uint64_t sub_27489126C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_27482BFC8;
  v6 = OUTLINED_FUNCTION_66_1();

  return sub_274890EB8(v6, v7, v8, v2, v3, v4);
}

unint64_t sub_274891328()
{
  result = qword_28096C970;
  if (!qword_28096C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C970);
  }

  return result;
}

uint64_t sub_2748913C4()
{
  v2 = type metadata accessor for SmartShortcutPickerSelectedEntry();
  OUTLINED_FUNCTION_34(v2);
  v3 = *(v0 + 224);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2747E2AF4;
  v5 = OUTLINED_FUNCTION_66_1();

  return sub_274890160(v5, v6, v7, v8, v3, v9);
}

unint64_t sub_2748914B0()
{
  result = qword_28096C988;
  if (!qword_28096C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C988);
  }

  return result;
}

uint64_t sub_274891504(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27489154C(void *a1)
{
  v2 = sub_2749F9F04();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = a1;
  sub_2749F9EF4();
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C9D0));
  return sub_2749F9F34();
}

id sub_27489162C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartPromptHostingControllerFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_274891684()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartPromptHostingControllerFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2748916DC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.rootNavigator.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ShortcutFileImportView.init(importResult:completion:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 40) = swift_getKeyPath();
  *(a4 + 48) = 0;
  *(a4 + 56) = swift_getKeyPath();
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  v8 = a1;

  v9 = [v8 record];
  v10 = objc_allocWithZone(MEMORY[0x277D7CA60]);
  v11 = sub_2748925E8(v9, 0, 0);

  *(a4 + 24) = v11;
  *(a4 + 32) = 0;
  return result;
}

uint64_t ShortcutFileImportView.body.getter()
{
  v1 = sub_2749FB9A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C9E0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-v7];
  memcpy(__dst, v0, 0x49uLL);
  v17 = __dst;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C9E8);
  sub_2748926DC();
  sub_2749FAEC4();
  v9 = [objc_opt_self() systemGroupedBackgroundColor];
  v10 = sub_2749FC3E4();
  v11 = sub_2749FBC64();
  v12 = &v8[*(v5 + 36)];
  *v12 = v10;
  v12[8] = v11;
  sub_2749FB994();
  sub_274892990();
  OUTLINED_FUNCTION_1_37();
  sub_274892A74(v13, v14);
  sub_2749FBF54();
  (*(v2 + 8))(v4, v1);
  return sub_27472ECBC(v8, &qword_28096C9E0);
}

uint64_t sub_274891A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v25 = type metadata accessor for ShortcutNotarizedFileImportView();
  MEMORY[0x28223BE20](v25);
  v23 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CA68);
  MEMORY[0x28223BE20](v27);
  v5 = v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CA70);
  MEMORY[0x28223BE20](v6);
  v8 = v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CA10);
  MEMORY[0x28223BE20](v9);
  v26 = v22 - v10;
  v24 = type metadata accessor for ShortcutP2PFileImportView();
  MEMORY[0x28223BE20](v24);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a1 + 24);
  v36 = *(a1 + 32);
  v13 = *a1;
  sub_2747B97A0(&v35, v34, &qword_28096CA78);
  v14 = [v13 fileContentType];
  if (v36)
  {

    v15 = sub_2749FB634();
    v31 = 0;
    sub_274892134(a1, v34);
    memcpy(v32, v34, 0x79uLL);
    memcpy(v33, v34, 0x79uLL);
    sub_2747B97A0(v32, v29, &unk_28096CA80);
    sub_27472ECBC(v33, &unk_28096CA80);
    memcpy(&v30[7], v32, 0x79uLL);
    v16 = v31;
    v17 = sub_2749FBC64();
    v29[0] = 1;
    v34[0] = v15;
    v34[1] = 0x4010000000000000;
    LOBYTE(v34[2]) = v16;
    memcpy(&v34[2] + 1, v30, 0x80uLL);
    LOBYTE(v34[19]) = v17;
    memset(&v34[20], 0, 32);
    LOBYTE(v34[24]) = 1;
    memcpy(v5, v34, 0xC1uLL);
    swift_storeEnumTagMultiPayload();
    sub_2747B97A0(v34, v29, &qword_28096CA30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CA30);
    sub_2748927EC();
    sub_2748928D8();
    sub_2749FB7B4();
    sub_27472ECBC(&v35, &qword_28096CA78);
    return sub_27472ECBC(v34, &qword_28096CA30);
  }

  else
  {
    v19 = v14;
    v22[1] = v9;

    if ((v19 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {

      ShortcutP2PFileImportView.init(workflow:extractResult:completion:)();
      v20 = type metadata accessor for ShortcutP2PFileImportView;
      sub_274892B84(v12, v8, type metadata accessor for ShortcutP2PFileImportView);
      swift_storeEnumTagMultiPayload();
      sub_274892A74(&qword_28096D360, type metadata accessor for ShortcutP2PFileImportView);
      sub_274892A74(&qword_28096CA20, type metadata accessor for ShortcutNotarizedFileImportView);
      v21 = v26;
      sub_2749FB7B4();
      sub_2747B97A0(v21, v5, &unk_28096CA10);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CA30);
      sub_2748927EC();
      sub_2748928D8();
      sub_2749FB7B4();
    }

    else
    {
      sub_2747B97A0(&v35, v34, &qword_28096CA78);

      v12 = v23;
      ShortcutNotarizedFileImportView.init(workflow:extractResult:completion:)();
      v20 = type metadata accessor for ShortcutNotarizedFileImportView;
      sub_274892B84(v12, v8, type metadata accessor for ShortcutNotarizedFileImportView);
      swift_storeEnumTagMultiPayload();
      sub_274892A74(&qword_28096D360, type metadata accessor for ShortcutP2PFileImportView);
      sub_274892A74(&qword_28096CA20, type metadata accessor for ShortcutNotarizedFileImportView);
      v21 = v26;
      sub_2749FB7B4();
      sub_2747B97A0(v21, v5, &unk_28096CA10);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CA30);
      sub_2748927EC();
      sub_2748928D8();
      sub_2749FB7B4();
      sub_27472ECBC(&v35, &qword_28096CA78);
    }

    sub_27472ECBC(v21, &unk_28096CA10);
    return sub_274892BE4(v12, v20);
  }
}

uint64_t sub_274892134@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v3 = qword_28159E448;
  v4 = sub_2749FCD64();
  v5 = sub_2749FCD64();

  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_274A0EF10;
  v8 = sub_2747D5A24([*a1 record]);
  v10 = v9;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_27475C4F4();
  if (!v10)
  {
    v11 = [objc_opt_self() defaultName];
    v8 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v10 = v12;
  }

  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_2749FCD74();

  sub_27475D0D0();
  v13 = sub_2749FBEE4();
  v15 = v14;
  v17 = v16;
  sub_2749FBD84();
  v18 = sub_2749FBEC4();
  v38 = v19;
  v39 = v18;
  v35 = v20;
  v37 = v21;

  sub_27477656C(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  swift_getErrorValue();
  sub_2749FDD84();
  v22 = sub_2749FBEE4();
  v24 = v23;
  LOBYTE(v13) = v25;
  sub_2749FC4A4();
  v34 = sub_2749FBE84();
  v27 = v26;
  LOBYTE(v15) = v28;
  v30 = v29;
  v40 = v29;

  sub_27477656C(v22, v24, v13 & 1);

  v31 = swift_getKeyPath();
  v32 = swift_getKeyPath();
  v43[80] = v35 & 1;
  __src[0] = v34;
  __src[1] = v27;
  LOBYTE(__src[2]) = v15 & 1;
  *(&__src[2] + 1) = v46[0];
  HIDWORD(__src[2]) = *(v46 + 3);
  __src[3] = v30;
  LOWORD(__src[4]) = 256;
  *(&__src[4] + 2) = v44;
  HIWORD(__src[4]) = v45;
  __src[5] = v31;
  LOBYTE(__src[6]) = 1;
  HIDWORD(__src[6]) = *(v47 + 3);
  *(&__src[6] + 1) = v47[0];
  __src[7] = v32;
  __src[8] = 5;
  LOBYTE(__src[9]) = 0;
  memcpy(&v43[7], __src, 0x49uLL);
  *a2 = v39;
  *(a2 + 8) = v38;
  *(a2 + 16) = v35 & 1;
  *(a2 + 24) = v37;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  memcpy((a2 + 41), v43, 0x50uLL);
  v49[0] = v34;
  v49[1] = v27;
  v50 = v15 & 1;
  *v51 = v46[0];
  *&v51[3] = *(v46 + 3);
  v52 = v40;
  v53 = 256;
  v54 = v44;
  v55 = v45;
  v56 = v31;
  v57 = 1;
  *&v58[3] = *(v47 + 3);
  *v58 = v47[0];
  v59 = v32;
  v60 = 5;
  v61 = 0;
  sub_274754DBC(v39, v38, v35 & 1);

  sub_2747B97A0(__src, v42, &unk_28096CA90);
  sub_27472ECBC(v49, &unk_28096CA90);
  sub_27477656C(v39, v38, v35 & 1);
}

id sub_2748925E8(void *a1, void *a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v6 = [v3 initWithRecord:a1 reference:a2 storageProvider:a3 error:v10];
  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_2749F8FE4();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v6;
}

unint64_t sub_2748926DC()
{
  result = qword_28096C9F0;
  if (!qword_28096C9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C9E8);
    sub_274892760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C9F0);
  }

  return result;
}

unint64_t sub_274892760()
{
  result = qword_28096C9F8;
  if (!qword_28096C9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CA00);
    sub_2748927EC();
    sub_2748928D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C9F8);
  }

  return result;
}

unint64_t sub_2748927EC()
{
  result = qword_28096CA08;
  if (!qword_28096CA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096CA10);
    sub_274892A74(&qword_28096D360, type metadata accessor for ShortcutP2PFileImportView);
    sub_274892A74(&qword_28096CA20, type metadata accessor for ShortcutNotarizedFileImportView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CA08);
  }

  return result;
}

unint64_t sub_2748928D8()
{
  result = qword_28096CA28;
  if (!qword_28096CA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CA30);
    sub_27472AB6C(&qword_28096CA38, &qword_28096CA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CA28);
  }

  return result;
}

unint64_t sub_274892990()
{
  result = qword_28096CA48;
  if (!qword_28096CA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C9E0);
    sub_27472AB6C(&qword_28096CA50, &qword_28096CA58);
    sub_27472AB6C(&unk_28096BFB0, &qword_28096D7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CA48);
  }

  return result;
}

uint64_t sub_274892A74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_274892AE0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_274892B20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274892B84(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_274892BE4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

id sub_274892C40()
{
  result = [objc_allocWithZone(MEMORY[0x277D7C490]) init];
  qword_28096CAA0 = result;
  return result;
}

id sub_274892C74@<X0>(void *a1@<X8>)
{
  if (qword_280966C20 != -1)
  {
    swift_once();
  }

  v2 = qword_28096CAA0;
  *a1 = qword_28096CAA0;

  return v2;
}

uint64_t sub_274892CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_27489E554(&unk_28096CC38);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_274892D70()
{
  sub_27489DA88();
  sub_2749FB4D4();
  return v1;
}

uint64_t sub_274892DE8@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *v1;
  v11 = *(v1 + 8);
  v12 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 40);
  v4 = swift_allocObject();
  v5 = *(v1 + 16);
  v4[1] = *v1;
  v4[2] = v5;
  *(v4 + 41) = *(v1 + 25);
  *a1 = sub_27489A4BC;
  a1[1] = v4;
  v6 = v3;
  sub_27473ADB8(&v11, v8, &unk_28096CAB0);
  return sub_27473ADB8(&v9, v8, &qword_28096AA28);
}

uint64_t sub_274892EAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for GalleryPageContentView(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CAC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CAC8);
  MEMORY[0x28223BE20](v34);
  v10 = &v33 - v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CAD0);
  MEMORY[0x28223BE20](v36);
  v12 = &v33 - v11;
  v13 = *a1;
  sub_2749FAC54();
  v15 = v14;
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  *(v5 + 2) = swift_getKeyPath();
  *(v5 + 3) = 0;
  v5[32] = 0;
  v16 = v3[6];
  *&v5[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968AA8);
  swift_storeEnumTagMultiPayload();
  v17 = v3[7];
  *&v5[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200);
  swift_storeEnumTagMultiPayload();
  *&v5[v3[8]] = v13;
  *&v5[v3[9]] = v15;
  v35 = v13;
  v18 = sub_2747DDFD4(v13, &selRef_name);
  if (v19)
  {
    *&v41 = v18;
    *(&v41 + 1) = v19;
    v40[0] = 32;
    v40[1] = 0xE100000000000000;
    v38 = 45;
    v39 = 0xE100000000000000;
    sub_27475D0D0();
    v20 = sub_2749FD724();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  strcpy(&v41, "gallery.page.");
  HIWORD(v41) = -4864;
  MEMORY[0x277C5EBC0](v20, v22);

  sub_27489DC28(&unk_28096CAD8);
  sub_2749FC1F4();

  sub_27489DC68(v5, type metadata accessor for GalleryPageContentView);
  v38 = *(a1 + 8);
  LOBYTE(v39) = *(a1 + 16);
  v41 = *(a1 + 24);
  v42 = *(a1 + 40);
  v23 = swift_allocObject();
  v24 = *(a1 + 16);
  v23[1] = *a1;
  v23[2] = v24;
  *(v23 + 41) = *(a1 + 25);
  sub_2747D31F8(v8, v10, &qword_28096CAC0);
  v25 = &v10[*(v34 + 36)];
  *v25 = sub_27489D954;
  v25[1] = v23;
  v25[2] = 0;
  v25[3] = 0;
  v26 = swift_allocObject();
  v27 = *(a1 + 16);
  v26[1] = *a1;
  v26[2] = v27;
  *(v26 + 41) = *(a1 + 25);
  sub_2747D31F8(v10, v12, &qword_28096CAC8);
  v28 = v37;
  v29 = &v12[*(v36 + 36)];
  *v29 = 0;
  *(v29 + 1) = 0;
  *(v29 + 2) = sub_27489D9AC;
  *(v29 + 3) = v26;
  sub_2747D31F8(v12, v28, &qword_28096CAD0);
  v30 = v35;
  sub_27473ADB8(&v38, v40, &unk_28096CAB0);
  sub_27473ADB8(&v41, v40, &qword_28096AA28);
  v31 = v30;
  sub_27473ADB8(&v38, v40, &unk_28096CAB0);
  return sub_27473ADB8(&v41, v40, &qword_28096AA28);
}

void sub_2748933CC(uint64_t a1)
{
  v2 = sub_2749F9164();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2749FB4C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [*a1 isRoot];
  if (v10)
  {

    if (VCIsInternalBuild())
    {
      v19 = *(a1 + 16);
      v11 = *(a1 + 8);
      v18 = v11;
      if (v19 == 1)
      {
        v12 = v11;
      }

      else
      {

        sub_2749FD2D4();
        v13 = sub_2749FBC14();
        sub_2749FA424();

        sub_2749FB4B4();
        swift_getAtKeyPath();
        sub_2748A045C(&v18, &unk_28096CAB0);
        (*(v7 + 8))(v9, v6);
        v12 = v17[1];
      }

      sub_2749F9154();
      v14 = sub_2749F9114();
      v16 = v15;
      (*(v3 + 8))(v5, v2);
      sub_27489D9B4(v14, v16, v12);
    }
  }
}

void sub_274893628(uint64_t a1)
{
  v2 = sub_2749FB4C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*a1 isRoot];
  if (v6)
  {

    v19 = *(a1 + 16);
    v7 = *(a1 + 8);
    v18 = v7;
    v8 = v19;
    if (v19 == 1)
    {
      v9 = v7;
    }

    else
    {

      sub_2749FD2D4();
      v10 = sub_2749FBC14();
      sub_2749FA424();

      sub_2749FB4B4();
      swift_getAtKeyPath();
      sub_2748A045C(&v18, &unk_28096CAB0);
      (*(v3 + 8))(v5, v2);
      v9 = v17;
    }

    [v9 track];

    v11 = [objc_allocWithZone(MEMORY[0x277D7C480]) init];
    if (v8)
    {
      v12 = v7;
    }

    else
    {

      sub_2749FD2D4();
      v13 = sub_2749FBC14();
      sub_2749FA424();

      sub_2749FB4B4();
      swift_getAtKeyPath();
      sub_2748A045C(&v18, &unk_28096CAB0);
      (*(v3 + 8))(v5, v2);
      v12 = v17;
    }

    sub_27489DA18(v12);
    if (v14)
    {
      v15 = sub_2749FCD64();
    }

    else
    {
      v15 = 0;
    }

    [v11 setSessionIdentifier_];

    [v11 track];
  }
}

uint64_t sub_2748938DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274892D70();
  *a1 = result;
  return result;
}

uint64_t sub_274893938()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CBC0);
  OUTLINED_FUNCTION_43();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-v5];
  v7 = sub_2749FAE14();
  v8 = OUTLINED_FUNCTION_34(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = (v10 - v9);
  v12 = *(v0 + *(type metadata accessor for GalleryPageContentView(0) + 36));
  sub_2747B95BC();
  sub_2748A0890(v11, v21, v12);
  [objc_opt_self() pointSize];
  v18 = v0;
  v19 = v21;
  v20 = v14 * (v22 / v13);
  sub_2749FBC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CBC8);
  sub_2748A06D8(&unk_28096CBD0);
  sub_2749FAA54();
  OUTLINED_FUNCTION_4_26();
  sub_2748A06D8(v15);
  sub_2749FBF14();
  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_274893B60@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = sub_2749FB644();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CBE0);
  return sub_274893BD4(a1, a2, a3 + *(v8 + 44), a4);
}

uint64_t sub_274893BD4@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v76 = a3;
  v77 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CBE8);
  MEMORY[0x28223BE20](v68);
  v7 = &v62 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CBF0);
  MEMORY[0x28223BE20](v66);
  v9 = &v62 - v8;
  v10 = type metadata accessor for GalleryPageContentView(0);
  v11 = v10 - 8;
  v63 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v64 = v12;
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CBF8);
  MEMORY[0x28223BE20](v74);
  v67 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CC00);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v75 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v62 - v18;
  v20 = type metadata accessor for GalleryPageBannerView(0);
  v21 = MEMORY[0x28223BE20](v20);
  v73 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v62 - v24;
  MEMORY[0x28223BE20](v23);
  v78 = &v62 - v26;
  v27 = *(v11 + 40);
  v65 = a1;
  v28 = *(a1 + v27);
  v29 = [v28 banners];
  if (v29)
  {
    v30 = v29;
    sub_27471CF08(0, &qword_28096CB38);
    v31 = sub_2749FCF84();
  }

  else
  {
    v31 = 0;
  }

  *v25 = swift_getKeyPath();
  *(v25 + 1) = 0;
  v25[16] = 0;
  v32 = v20[5];
  *&v25[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968AA8);
  swift_storeEnumTagMultiPayload();
  *&v25[v20[6]] = v31;
  memcpy(&v25[v20[7]], v77, 0x80uLL);
  *&v25[v20[8]] = a4;
  sub_27489E28C(v25, v78, type metadata accessor for GalleryPageBannerView);
  sub_2749FC914();
  v33 = 1;
  sub_2749FABB4();
  v71 = v85;
  v72 = v83;
  v70 = v87;
  v69 = v88;
  v82 = 1;
  v81 = v84;
  v80 = v86;
  v34 = [v28 collections];
  if (v34)
  {
    v35 = v34;
    sub_27471CF08(0, &qword_28096CB30);
    v36 = sub_2749FCF84();

    if (sub_27472D918(v36))
    {
      if (sub_27472D918(v36) == 1)
      {
        sub_2747B2790(0, (v36 & 0xC000000000000001) == 0, v36);
        v37 = v67;
        if ((v36 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x277C5F6D0](0, v36);
        }

        else
        {
          v38 = *(v36 + 32);
        }

        v39 = v38;

        KeyPath = swift_getKeyPath();
        v79 = 0;
        sub_27489E230(v65, v13, type metadata accessor for GalleryPageContentView);
        v41 = (*(v63 + 80) + 16) & ~*(v63 + 80);
        v42 = (v64 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
        v43 = swift_allocObject();
        sub_27489E28C(v13, v43 + v41, type metadata accessor for GalleryPageContentView);
        *(v43 + v42) = v39;
        *v9 = KeyPath;
        *(v9 + 1) = 0;
        v9[16] = 0;
        *(v9 + 3) = v39;
        memcpy(v9 + 32, v77, 0x80uLL);
        *(v9 + 10) = xmmword_274A1DD20;
        *(v9 + 22) = sub_27489E4E0;
        *(v9 + 23) = v43;
        *(v9 + 24) = 0;
        *(v9 + 25) = 0;
        swift_storeEnumTagMultiPayload();
        v44 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CC10);
        sub_27489E344();
        sub_27489E424();
        sub_2749FB7B4();
      }

      else
      {
        *v7 = swift_getKeyPath();
        *(v7 + 1) = 0;
        v7[16] = 0;
        v45 = type metadata accessor for GalleryPageCollectionsView(0);
        v46 = v45[5];
        *&v7[v46] = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        *&v7[v45[6]] = v36;
        memcpy(&v7[v45[7]], v77, 0x80uLL);
        sub_27489E230(v65, v13, type metadata accessor for GalleryPageContentView);
        v47 = (*(v63 + 80) + 16) & ~*(v63 + 80);
        v48 = swift_allocObject();
        sub_27489E28C(v13, v48 + v47, type metadata accessor for GalleryPageContentView);
        v49 = &v7[*(v68 + 36)];
        *v49 = sub_27489E2E8;
        v49[1] = v48;
        v49[2] = 0;
        v49[3] = 0;
        sub_27473ADB8(v7, v9, &qword_28096CBE8);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CC10);
        sub_27489E344();
        sub_27489E424();
        v37 = v67;
        sub_2749FB7B4();
        sub_2748A045C(v7, &qword_28096CBE8);
      }

      sub_2747D31F8(v37, v19, &qword_28096CBF8);
      v33 = 0;
    }

    else
    {
    }
  }

  __swift_storeEnumTagSinglePayload(v19, v33, 1, v74);
  v50 = v78;
  v51 = v73;
  sub_27489E230(v78, v73, type metadata accessor for GalleryPageBannerView);
  v52 = v82;
  v53 = v81;
  v54 = v80;
  v55 = v75;
  sub_27473ADB8(v19, v75, &qword_28096CC00);
  v56 = v76;
  sub_27489E230(v51, v76, type metadata accessor for GalleryPageBannerView);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CC08);
  v58 = v56 + *(v57 + 48);
  *v58 = 0;
  *(v58 + 8) = v52;
  v59 = v71;
  *(v58 + 16) = v72;
  *(v58 + 24) = v53;
  *(v58 + 32) = v59;
  *(v58 + 40) = v54;
  v60 = v69;
  *(v58 + 48) = v70;
  *(v58 + 56) = v60;
  sub_27473ADB8(v55, v56 + *(v57 + 64), &qword_28096CC00);
  sub_2748A045C(v19, &qword_28096CC00);
  sub_27489DC68(v50, type metadata accessor for GalleryPageBannerView);
  sub_2748A045C(v55, &qword_28096CC00);
  return sub_27489DC68(v51, type metadata accessor for GalleryPageBannerView);
}

void sub_2748944E0(uint64_t a1, void *a2)
{
  v4 = sub_2749FB4C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D7C478]) init];
  v9 = *a1;
  if (*(a1 + 8) == 1)
  {
    v10 = v9;
  }

  else
  {

    sub_2749FD2D4();
    v11 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_27489A4B0(v9, 0);
    (*(v5 + 8))(v7, v4);
    v10 = v16[1];
  }

  sub_27489DA18(v10);
  if (v12)
  {
    v13 = sub_2749FCD64();
  }

  else
  {
    v13 = 0;
  }

  [v8 setSessionIdentifier_];

  sub_2747DDFD4(a2, &selRef_persistentIdentifier);
  if (v14)
  {
    v15 = sub_2749FCD64();
  }

  else
  {
    v15 = 0;
  }

  [v8 setGalleryCategoryIdentifier_];

  [v8 track];
}

void sub_2748946F0(uint64_t a1)
{
  v2 = sub_2749FB4C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D7C478]) init];
  v7 = *a1;
  if (*(a1 + 8) == 1)
  {
    v8 = v7;
  }

  else
  {

    sub_2749FD2D4();
    v9 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_27489A4B0(v7, 0);
    (*(v3 + 8))(v5, v2);
    v8 = v13[1];
  }

  sub_27489DA18(v8);
  if (v10)
  {
    v11 = sub_2749FCD64();
  }

  else
  {
    v11 = 0;
  }

  [v6 setSessionIdentifier_];

  v12 = [*(a1 + *(type metadata accessor for GalleryPageContentView(0) + 32)) persistentIdentifier];
  [v6 setGalleryCategoryIdentifier_];

  [v6 track];
}

uint64_t sub_274894918(uint64_t a1)
{
  sub_2749FAE34();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_2749FB1B4();
}

uint64_t sub_2748949D0()
{
  type metadata accessor for CollectionStateCache();
  v0 = swift_allocObject();
  type metadata accessor for CollectionWorkflowState(0);
  result = sub_2749FCCB4();
  *(v0 + 16) = result;
  qword_28096CAA8 = v0;
  return result;
}

uint64_t sub_274894A38(void *a1)
{
  v2 = v1;
  v4 = sub_27487C318(a1);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    swift_beginAccess();
    v8 = *(v2 + 16);

    v9 = sub_27494FB90(v6, v7, v8);

    if (v9)
    {
    }

    else
    {
      type metadata accessor for CollectionWorkflowState(0);
      swift_allocObject();
      v12 = a1;
      v9 = sub_2748DF444(a1);
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v13 = *(v2 + 16);
      sub_2748FA56C();
      *(v2 + 16) = v13;

      swift_endAccess();
    }

    return v9;
  }

  else
  {
    type metadata accessor for CollectionWorkflowState(0);
    swift_allocObject();
    v10 = a1;
    return sub_2748DF444(a1);
  }
}

uint64_t sub_274894B88()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
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

uint64_t sub_274894C04(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_274894C44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274894CAC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 56);
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

uint64_t sub_274894D00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_274894D90()
{
  v1 = type metadata accessor for GalleryPageCollectionsView(0);
  v2 = OUTLINED_FUNCTION_27(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v10[1] = *(v0 + *(MEMORY[0x28223BE20](v2) + 32));
  swift_getKeyPath();
  sub_27489E230(v0, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GalleryPageCollectionsView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_27489E28C(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for GalleryPageCollectionsView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CD48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CD50);
  sub_2748A06D8(&unk_28096DCF0);
  sub_27489E554(&unk_28096CD60);
  sub_2748A06D8(&unk_28096CD68);
  return sub_2749FC754();
}

uint64_t sub_274894FC8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v120 = a2;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CD70);
  MEMORY[0x28223BE20](v119);
  v116 = &v102 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CD78);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v102 - v10;
  v12 = type metadata accessor for GalleryCollectionHeaderView(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CD80);
  v110 = *(v15 - 8);
  v111 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v102 - v16;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CD88);
  v18 = MEMORY[0x28223BE20](v112);
  v113 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v102 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CD90);
  v23 = MEMORY[0x28223BE20](v22);
  v115 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v114 = &v102 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CD98);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v118 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v117 = &v102 - v29;
  v30 = *a1;
  if (sub_27489DCC8(v30))
  {
    v104 = v21;
    v106 = v22;
    v107 = v11;
    v108 = v9;
    v109 = a3;
    v31 = (v120 + *(type metadata accessor for GalleryPageCollectionsView(0) + 28));
    v32 = *(v31 + 2);
    *v14 = v30;
    v102 = *v31;
    *(v14 + 8) = v102;
    *(v14 + 3) = v32;
    memcpy(v14 + 32, v31 + 24, 0x68uLL);
    *(v14 + 17) = swift_getKeyPath();
    *(v14 + 18) = 0;
    v14[152] = 0;
    v33 = v30;
    v34 = *(v12 + 28);
    *&v14[v34] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200);
    v35 = swift_storeEnumTagMultiPayload();
    MEMORY[0x28223BE20](v35);
    type metadata accessor for GalleryPageCollectionsRowView(0);
    sub_27489DC28(&unk_28096CDB8);
    sub_27489DC28(&unk_28096CDC0);
    v105 = v33;
    v36 = v33;
    v103 = v17;
    v37 = v36;
    sub_2749FC784();

    v38 = sub_2747DDFD4(v37, &selRef_name);
    if (v39)
    {
      v125 = v38;
      v126 = v39;
      v123 = 32;
      v124 = 0xE100000000000000;
      v121 = 45;
      v122 = 0xE100000000000000;
      sub_27475D0D0();
      v40 = sub_2749FD724();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0xE000000000000000;
    }

    v22 = v106;
    v45 = v104;
    v125 = 0xD000000000000013;
    v126 = 0x8000000274A31010;
    MEMORY[0x277C5EBC0](v40, v42);

    sub_27489ED4C();
    v46 = v113;
    v47 = v111;
    v48 = v103;
    sub_2749FC1F4();

    (*(v110 + 8))(v48, v47);
    v49 = sub_2747DDFD4(v37, &selRef_name);
    if (v50)
    {
      v51 = v49;
    }

    else
    {
      v51 = 0;
    }

    if (v50)
    {
      v52 = v50;
    }

    else
    {
      v52 = 0xE000000000000000;
    }

    v125 = v51;
    v126 = v52;
    sub_27475D0D0();
    sub_2749FAE74();

    sub_2748A045C(v46, &qword_28096CD88);
    v53 = sub_2749FBC84();
    sub_2749FA9E4();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = v115;
    sub_2747D31F8(v45, v115, &qword_28096CD88);
    v63 = v62 + *(v22 + 36);
    *v63 = v53;
    *(v63 + 8) = v55;
    *(v63 + 16) = v57;
    *(v63 + 24) = v59;
    *(v63 + 32) = v61;
    *(v63 + 40) = 0;
    v64 = v114;
    sub_2747D31F8(v62, v114, &qword_28096CD90);
    v44 = v117;
    sub_2747D31F8(v64, v117, &qword_28096CD90);
    v43 = 0;
    a3 = v109;
    v9 = v108;
    v11 = v107;
    v30 = v105;
  }

  else
  {
    v43 = 1;
    v44 = v117;
  }

  __swift_storeEnumTagSinglePayload(v44, v43, 1, v22);
  v65 = type metadata accessor for GalleryPageCollectionsView(0);
  v66 = sub_274781538(*(v120 + *(v65 + 24)));
  if (v66 && (v67 = v66, sub_27471CF08(0, &qword_28096CB30), v68 = v30, v69 = sub_2749FD604(), v67, v68, (v69 & 1) != 0))
  {
    v70 = 1;
    v71 = v119;
  }

  else
  {
    v72 = v116;
    sub_2749FC734();
    v73 = sub_2749FBC94();
    sub_2749FA9E4();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v82 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CDA0) + 36);
    *v82 = v73;
    *(v82 + 8) = v75;
    *(v82 + 16) = v77;
    *(v82 + 24) = v79;
    *(v82 + 32) = v81;
    *(v82 + 40) = 0;
    v83 = sub_2749FBCB4();
    sub_2749FA9E4();
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CDA8) + 36);
    *v92 = v83;
    *(v92 + 8) = v85;
    *(v92 + 16) = v87;
    *(v92 + 24) = v89;
    *(v92 + 32) = v91;
    *(v92 + 40) = 0;
    v93 = sub_2749FBC84();
    sub_2749FA9E4();
    v71 = v119;
    v94 = v72 + *(v119 + 36);
    *v94 = v93;
    *(v94 + 8) = v95;
    *(v94 + 16) = v96;
    *(v94 + 24) = v97;
    *(v94 + 32) = v98;
    *(v94 + 40) = 0;
    sub_2747D31F8(v72, v11, &qword_28096CD70);
    v70 = 0;
  }

  __swift_storeEnumTagSinglePayload(v11, v70, 1, v71);
  v99 = v118;
  sub_27473ADB8(v44, v118, &qword_28096CD98);
  sub_27473ADB8(v11, v9, &qword_28096CD78);
  sub_27473ADB8(v99, a3, &qword_28096CD98);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CDB0);
  sub_27473ADB8(v9, a3 + *(v100 + 48), &qword_28096CD78);
  sub_2748A045C(v11, &qword_28096CD78);
  sub_2748A045C(v44, &qword_28096CD98);
  sub_2748A045C(v9, &qword_28096CD78);
  return sub_2748A045C(v99, &qword_28096CD98);
}

uint64_t sub_2748959A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for GalleryPageCollectionsView(0) + 28);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = type metadata accessor for GalleryPageCollectionsRowView(0);
  v8 = v7[5];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968AA8);
  swift_storeEnumTagMultiPayload();
  *(a3 + v7[6]) = 0;
  *(a3 + v7[7]) = a1;
  memcpy((a3 + v7[8]), (a2 + v6), 0x80uLL);
}

uint64_t sub_274895A7C@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = type metadata accessor for GalleryPageCollectionsRowView(0);
  v4 = OUTLINED_FUNCTION_27(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_27489E230(v1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GalleryPageCollectionsRowView);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  result = sub_27489E28C(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for GalleryPageCollectionsRowView);
  *a1 = sub_27489FBB4;
  a1[1] = v10;
  return result;
}

uint64_t sub_274895B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a1;
  v49 = a3;
  v4 = sub_2749FAF04();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  v45 = v5;
  v46 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GalleryPageCollectionsRowView(0);
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = v7;
  v42 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2749FBA54();
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CFE8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CFF0);
  v14 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v16 = &v34 - v15;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CFF8);
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v34 - v17;
  sub_2749FBC24();
  v43 = a2;
  v50 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D000);
  sub_27489FC28();
  sub_2749FAA54();
  sub_2749FBA44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274A0F620;
  v19 = sub_2749FBC44();
  *(inited + 32) = v19;
  v20 = sub_2749FBC24();
  *(inited + 33) = v20;
  sub_2749FBC34();
  sub_2749FBC34();
  if (sub_2749FBC34() != v19)
  {
    sub_2749FBC34();
  }

  sub_2749FBC34();
  if (sub_2749FBC34() != v20)
  {
    sub_2749FBC34();
  }

  v21 = sub_2748A06D8(&unk_28096D030);
  sub_2749FC0C4();
  (*(v35 + 8))(v9, v36);
  (*(v11 + 8))(v13, v10);
  v51 = v10;
  v52 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v37;
  v23 = v34;
  sub_2749FC144();
  (*(v14 + 8))(v16, v23);
  v24 = v42;
  sub_27489E230(v43, v42, type metadata accessor for GalleryPageCollectionsRowView);
  v26 = v46;
  v25 = v47;
  v27 = v48;
  (*(v47 + 16))(v46, v44, v48);
  v28 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v29 = (v41 + *(v25 + 80) + v28) & ~*(v25 + 80);
  v30 = swift_allocObject();
  sub_27489E28C(v24, v30 + v28, type metadata accessor for GalleryPageCollectionsRowView);
  (*(v25 + 32))(v30 + v29, v26, v27);
  v31 = v49;
  (*(v38 + 32))(v49, v22, v39);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D038);
  v33 = (v31 + *(result + 36));
  *v33 = sub_27489FD6C;
  v33[1] = v30;
  v33[2] = 0;
  v33[3] = 0;
  return result;
}

uint64_t sub_2748961E0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2749FB864();
  MEMORY[0x28223BE20](v2);
  type metadata accessor for GalleryPageCollectionsRowView(0);
  sub_2749FB524();
  sub_27489DC28(&unk_28096C6A8);
  sub_2749FDED4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D048);
  sub_27489FE88();
  sub_2749FAA34();
  v3 = sub_2749FBC94();
  sub_2749FA9E4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D018) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  v13 = sub_2749FBCB4();
  sub_2749FA9E4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D000);
  v23 = a1 + *(result + 36);
  *v23 = v13;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_2748963DC(uint64_t a1)
{
  v2 = type metadata accessor for GalleryPageCollectionsRowView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v8[1] = *(a1 + *(MEMORY[0x28223BE20](v2 - 8) + 36));
  swift_getKeyPath();
  sub_27489E230(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GalleryPageCollectionsRowView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_27489E28C(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for GalleryPageCollectionsRowView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D060);
  sub_2748A06D8(&unk_28096CD20);
  sub_27489E554(&unk_28096CD28);
  sub_27489FF0C();
  return sub_2749FC754();
}

uint64_t sub_2748965E8(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D080);
  MEMORY[0x28223BE20](v4);
  v6 = &v9[-v5];
  v7 = *a1;
  sub_274896730(v7, a2, &v9[-v5]);
  v10 = a2;
  v11 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D060);
  sub_27489FFF0(&unk_28096D078);
  sub_27489FF0C();
  sub_2749FBF44();
  return sub_2748A045C(v6, &qword_28096D080);
}

uint64_t sub_274896730@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 + *(type metadata accessor for GalleryPageCollectionsRowView(0) + 32);
  v6 = *(v5 + 120);
  v7 = *(v5 + 48);
  if (qword_280966C28 != -1)
  {
    swift_once();
  }

  sub_274894A38(a1);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = a1;
  *(a3 + 24) = *(v5 + 56);
  *(a3 + 40) = *(v5 + 72);
  *(a3 + 56) = *(v5 + 88);
  *(a3 + 72) = *(v5 + 104);
  *(a3 + 88) = v6;
  *(a3 + 96) = 0;
  *(a3 + 104) = v7;
  v8 = a1;
  sub_2749FC5B4();
  *(a3 + 112) = v12;
  *(a3 + 120) = *(&v12 + 1);
  sub_2749FC5B4();
  *(a3 + 128) = v12;
  *(a3 + 136) = *(&v12 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E6E0);
  sub_2749FC5B4();
  *(a3 + 144) = v12;
  *(a3 + 160) = v13;
  *(a3 + 168) = v14;
  type metadata accessor for CollectionWorkflowState(0);
  sub_27489DC28(&unk_28096CD40);
  *(a3 + 176) = sub_2749FAD84();
  *(a3 + 184) = v9;
  *(a3 + 192) = swift_getKeyPath();
  *(a3 + 200) = 0;
  *(a3 + 208) = swift_getKeyPath();
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  v10 = *(type metadata accessor for CollectionWorkflowView(0) + 60);
  *(a3 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_274896960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v20[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D088);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D070);
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  v13 = *(a2 + *(type metadata accessor for GalleryPageCollectionsRowView(0) + 28));
  if (sub_27472D918(v13) && ((sub_2747B2790(0, (v13 & 0xC000000000000001) == 0, v13), (v13 & 0xC000000000000001) != 0) ? (v14 = MEMORY[0x277C5F6D0](0, v13)) : (v14 = *(v13 + 32)), v15 = v14, sub_27471CF08(0, &unk_28096CD30), v16 = a3, v17 = sub_2749FD604(), v16, v15, (v17 & 1) != 0))
  {
    v18 = sub_2749FC9B4();
    sub_27473ADB8(a1, v12, &qword_28096D080);
    *&v12[*(v10 + 52)] = v18;
    sub_27473ADB8(v12, v9, &qword_28096D070);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D080);
    sub_2748A06D8(&unk_28096D068);
    sub_27489FFF0(&unk_28096D078);
    sub_2749FB7B4();
    return sub_2748A045C(v12, &qword_28096D070);
  }

  else
  {
    sub_27473ADB8(a1, v9, &qword_28096D080);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D080);
    sub_2748A06D8(&unk_28096D068);
    sub_27489FFF0(&unk_28096D078);
    return sub_2749FB7B4();
  }
}

uint64_t sub_274896CB0()
{
  v0 = sub_2749FAE34();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - v5;
  type metadata accessor for GalleryPageCollectionsRowView(0);
  sub_2747B95E4();
  (*(v1 + 104))(v4, *MEMORY[0x277CDFA90], v0);
  v7 = sub_2749FAE24();
  v8 = *(v1 + 8);
  v8(v4, v0);
  result = (v8)(v6, v0);
  if (v7)
  {
    v10[1] = sub_2749FC9B4();
    sub_27489FE2C();
    return sub_2749FAEF4();
  }

  return result;
}

uint64_t sub_274896E54@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CC90);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = &v69 - v8;
  sub_2749FB864();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v11 = sub_2749FC874();
  OUTLINED_FUNCTION_43();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = (v16 - v15);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CC98);
  OUTLINED_FUNCTION_43();
  v75 = v18;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_1(v20);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CCA0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_1();
  v74 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_10_1(&v69 - v24);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CCA8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_1(v26);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CCB0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_1(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CCB8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5_1();
  v81 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_1(&v69 - v33);
  memcpy(__dst, v1, sizeof(__dst));
  v34 = *(&__dst[1] + 1);
  if (sub_27489DCC8(*(&__dst[1] + 1)))
  {
    v70 = v29;
    v71 = v6;
    v72 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CCF0);
    v35 = sub_2749FC884();
    OUTLINED_FUNCTION_27(v35);
    *(swift_allocObject() + 16) = xmmword_274A0EF10;
    *v17 = __dst[10];
    (*(v13 + 104))(v17, *MEMORY[0x277CDF100], v11);
    sub_2749FC894();
    v36 = sub_2749FB644();
    MEMORY[0x28223BE20](v36);
    LODWORD(v88) = 0;
    sub_27489DC28(&unk_28096C6A8);
    sub_2749FDED4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CD00);
    sub_27489FFF0(&qword_28096CD08);
    v37 = v73;
    sub_2749FC9A4();

    v38 = sub_2747DDFD4(v34, &selRef_name);
    if (v39)
    {
      v40 = v38;
    }

    else
    {
      v40 = 0;
    }

    v41 = 0xE000000000000000;
    if (v39)
    {
      v42 = v39;
    }

    else
    {
      v42 = 0xE000000000000000;
    }

    v88 = v40;
    v89 = v42;
    sub_2748A06D8(&unk_28096CCE0);
    sub_27475D0D0();
    v43 = v76;
    sub_2749FC0F4();

    OUTLINED_FUNCTION_40_5();
    v44(v37, v43);
    v45 = sub_2747DDFD4(v34, &selRef_name);
    if (v46)
    {
      v88 = v45;
      v89 = v46;
      v86 = 32;
      v87 = 0xE100000000000000;
      v84 = 45;
      v85 = 0xE100000000000000;
      v47 = sub_2749FD724();
      v41 = v48;
    }

    else
    {
      v47 = 0;
    }

    v50 = v70;
    v88 = 0xD000000000000013;
    v89 = 0x8000000274A31010;
    MEMORY[0x277C5EBC0](v47, v41);

    sub_2749FAE94();

    OUTLINED_FUNCTION_31_2();
    sub_2748A045C(v51, v52);
    v53 = sub_2749FBC54();
    sub_2749FA9E4();
    OUTLINED_FUNCTION_36();
    v54 = v80;
    OUTLINED_FUNCTION_26_9();
    sub_2747D31F8(v55, v56, v57);
    v58 = v54 + *(v78 + 36);
    *v58 = v53;
    *(v58 + 8) = v2;
    *(v58 + 16) = v3;
    *(v58 + 24) = v4;
    *(v58 + 32) = v5;
    *(v58 + 40) = 0;
    sub_2749FBC74();
    sub_2749FA9E4();
    OUTLINED_FUNCTION_36();
    v59 = v82;
    sub_2747D31F8(v54, v82, &qword_28096CCA8);
    OUTLINED_FUNCTION_17_17(v59 + *(v79 + 36));
    sub_2749FBC84();
    sub_2749FA9E4();
    OUTLINED_FUNCTION_36();
    v60 = v81;
    sub_2747D31F8(v59, v81, &qword_28096CCB0);
    OUTLINED_FUNCTION_17_17(v60 + *(v50 + 36));
    OUTLINED_FUNCTION_26_9();
    sub_2747D31F8(v61, v62, v63);
    OUTLINED_FUNCTION_26_9();
    sub_27473ADB8(v64, v65, v66);
    swift_storeEnumTagMultiPayload();
    sub_27489EA04();
    sub_2749FB7B4();
    OUTLINED_FUNCTION_31_2();
    return sub_2748A045C(v67, v68);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_27489EA04();
    return sub_2749FB7B4();
  }
}

uint64_t sub_274897790(uint64_t a1, const void *a2)
{
  v6 = a1;
  swift_getKeyPath();
  v3 = swift_allocObject();
  memcpy((v3 + 16), a2, 0xB0uLL);

  sub_27489ECA0(a2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CD18);
  type metadata accessor for CollectionWorkflowView(0);
  sub_2748A06D8(&unk_28096CD20);
  sub_27489E554(&unk_28096CD28);
  sub_27489DC28(&unk_28096CD10);
  return sub_2749FC754();
}

uint64_t sub_274897924@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = sub_2748CA080(v5);
  v8 = v7;
  v9 = *(a2 + 80);
  v10 = *(a2 + 152);
  if (qword_280966C28 != -1)
  {
    swift_once();
  }

  sub_274894A38(v5);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *(a3 + 24) = *(a2 + 88);
  *(a3 + 40) = *(a2 + 104);
  *(a3 + 56) = *(a2 + 120);
  *(a3 + 72) = *(a2 + 136);
  *(a3 + 88) = v10;
  *(a3 + 96) = 0;
  *(a3 + 104) = v9;
  sub_2749FC5B4();
  *(a3 + 112) = v14;
  *(a3 + 120) = *(&v14 + 1);
  sub_2749FC5B4();
  *(a3 + 128) = v14;
  *(a3 + 136) = *(&v14 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E6E0);
  sub_2749FC5B4();
  *(a3 + 144) = v14;
  *(a3 + 160) = v15;
  *(a3 + 168) = v16;
  type metadata accessor for CollectionWorkflowState(0);
  sub_27489DC28(&unk_28096CD40);
  *(a3 + 176) = sub_2749FAD84();
  *(a3 + 184) = v11;
  *(a3 + 192) = swift_getKeyPath();
  *(a3 + 200) = 0;
  *(a3 + 208) = swift_getKeyPath();
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  v12 = *(type metadata accessor for CollectionWorkflowView(0) + 60);
  *(a3 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_274897B60@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CDD0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = v71 - v5;
  v83 = sub_2749FBA54();
  OUTLINED_FUNCTION_43();
  v81 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10_1(v10 - v9);
  v11 = sub_2749FBBB4();
  v12 = OUTLINED_FUNCTION_34(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v86 = sub_2749FBBD4();
  OUTLINED_FUNCTION_43();
  v71[5] = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CDD8);
  OUTLINED_FUNCTION_43();
  v71[4] = v18;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  v21 = v71 - v20;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CDE0);
  OUTLINED_FUNCTION_43();
  v75 = v22;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  v25 = v71 - v24;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CDE8);
  OUTLINED_FUNCTION_43();
  v74 = v26;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_1(v28);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CDF0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14();
  v82 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CDF8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_5_1();
  v80 = v33;
  MEMORY[0x28223BE20](v34);
  v84 = v71 - v35;
  v72 = type metadata accessor for GalleryPageBannerView(0);
  v36 = *(v72 + 24);
  v87 = v1;
  v37 = *(v1 + v36);
  if (v37 && sub_27472D918(*(v1 + v36)))
  {
    v71[0] = v31;
    v71[1] = v3;
    v71[2] = v6;
    v71[3] = a1;
    v38 = sub_2749FBC24();
    MEMORY[0x28223BE20](v38);
    v71[-2] = v87;
    v71[-1] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CE18);
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096CE20);
    v40 = sub_27489F060();
    v88 = v39;
    v89 = v40;
    swift_getOpaqueTypeConformance2();
    sub_2749FAA54();
    sub_2749FBBA4();
    sub_2749FBBC4();
    OUTLINED_FUNCTION_4_26();
    v42 = sub_2748A06D8(v41);
    v44 = v85;
    v43 = v86;
    sub_2749FC1B4();
    OUTLINED_FUNCTION_40_5();
    v45(v17, v43);
    OUTLINED_FUNCTION_40_5();
    v46(v21, v44);
    v47 = v78;
    sub_2749FBA44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CE40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_274A0F620;
    v49 = sub_2749FBC44();
    *(inited + 32) = v49;
    v50 = sub_2749FBC24();
    *(inited + 33) = v50;
    sub_2749FBC34();
    sub_2749FBC34();
    if (sub_2749FBC34() != v49)
    {
      sub_2749FBC34();
    }

    sub_2749FBC34();
    v51 = sub_2749FBC34();
    v52 = v82;
    if (v51 != v50)
    {
      sub_2749FBC34();
    }

    v88 = v85;
    v89 = v86;
    v90 = v42;
    v91 = MEMORY[0x277CDE478];
    swift_getOpaqueTypeConformance2();
    v53 = v73;
    v54 = v77;
    sub_2749FC0C4();
    (*(v81 + 8))(v47, v83);
    OUTLINED_FUNCTION_40_5();
    v55(v25, v54);
    sub_2749FBCC4();
    sub_2749FA9E4();
    OUTLINED_FUNCTION_36();
    (*(v74 + 32))(v52, v53, v76);
    OUTLINED_FUNCTION_17_17(v52 + *(v79 + 36));
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v56 = qword_28159E448;
    v57 = sub_2749FCD64();
    v58 = sub_2749FCD64();

    v59 = [v56 localizedStringForKey:v57 value:v58 table:0];

    v60 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v62 = v61;

    v88 = v60;
    v89 = v62;
    sub_27489EF00();
    sub_27475D0D0();
    sub_2749FC0F4();

    sub_2748A045C(v52, &qword_28096CDF0);
    sub_2749FAE94();
    OUTLINED_FUNCTION_31_2();
    sub_2748A045C(v63, v64);
    OUTLINED_FUNCTION_26_9();
    sub_27473ADB8(v65, v66, v67);
    swift_storeEnumTagMultiPayload();
    sub_27489EE44();
    sub_2749FB7B4();
    OUTLINED_FUNCTION_31_2();
    return sub_2748A045C(v68, v69);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_27489EE44();
    return sub_2749FB7B4();
  }
}

uint64_t sub_274898478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[1] = a3;
  v5 = type metadata accessor for GalleryPageBannerView(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CE20);
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  v12 = *(a1 + *(v6 + 36) + 32);
  *v11 = sub_2749FB524();
  *(v11 + 1) = v12;
  v11[16] = 0;
  v13 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CE48) + 44)];
  *&v25 = a2;
  v24[0] = swift_getKeyPath();
  sub_27489E230(a1, v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GalleryPageBannerView);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_27489E28C(v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for GalleryPageBannerView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CC80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CE50);
  sub_2748A06D8(&unk_28096CE58);
  sub_27489E554(&unk_28096CE60);
  sub_27489F2E0();
  sub_2749FC754();
  sub_2749FC914();
  sub_2749FABB4();
  v16 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CE88) + 36)];
  v17 = v26;
  *v16 = v25;
  *(v16 + 1) = v17;
  *(v16 + 2) = v27;
  LOBYTE(v12) = sub_2749FBC54();
  sub_2749FA9E4();
  v18 = &v11[*(v9 + 36)];
  *v18 = v12;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  sub_27489F060();
  sub_2749FC164();
  return sub_2748A045C(v11, &qword_28096CE20);
}

uint64_t sub_2748987C4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v5 = type metadata accessor for GalleryPageBannerView(0);
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CE70);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CE90);
  v38 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = *a1;
  v16 = [v15 detailPage];
  if (v16)
  {
    v17 = v16;
    v35 = v9;
    v33 = v14;
    v18 = v37;
    sub_27489E230(v37, &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GalleryPageBannerView);
    v19 = *(v36 + 80);
    v36 = v12;
    v20 = (v19 + 16) & ~v19;
    v34 = a3;
    v21 = (v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = v8;
    v22 = swift_allocObject();
    v23 = sub_27489E28C(v7, v22 + v20, type metadata accessor for GalleryPageBannerView);
    *(v22 + v21) = v15;
    *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
    MEMORY[0x28223BE20](v23);
    *(&v31 - 2) = v15;
    *(&v31 - 1) = v18;
    sub_27489F4C4();
    v24 = v15;
    v25 = v17;
    sub_2749FC624();
    sub_2748A06D8(&unk_28096CE78);
    sub_27489F3E8();
    v27 = v32;
    v26 = v33;
    sub_2749FBFD4();

    (*(v35 + 8))(v11, v27);
    v28 = v34;
    v29 = v36;
    (*(v38 + 32))(v34, v26, v36);
    return __swift_storeEnumTagSinglePayload(v28, 0, 1, v29);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v12);
  }
}

uint64_t sub_274898BB0(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for RootNavigationDestination();
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2749FB4C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a1 + 8);
  if (*(a1 + 16) != 1)
  {

    sub_2749FD2D4();
    v16 = sub_2749FBC14();
    v29 = v14;
    v17 = a2;
    v18 = a3;
    v19 = v16;
    sub_2749FA424();

    a3 = v18;
    a2 = v17;
    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_274830180(v13, v29, 0);
    result = (*(v10 + 8))(v12, v9);
    v14 = v31;
    if (!v30)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = swift_unknownObjectRetain();
  if (v13)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    v21 = sub_2747DDFD4(a2, &selRef_name);
    v23 = v22;
    v24 = [a3 recordName];
    v25 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v27 = v26;

    *v8 = v21;
    *(v8 + 1) = v23;
    *(v8 + 2) = v25;
    *(v8 + 3) = v27;
    v8[32] = 0;
    swift_storeEnumTagMultiPayload();
    (*(v14 + 16))(v8, ObjectType, v14);
    swift_unknownObjectRelease();
    return sub_27489DC68(v8, type metadata accessor for RootNavigationDestination);
  }

  return result;
}

id sub_274898E40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for GalleryPageBannerView(0);
  v6 = *(v5 + 28);
  v7 = *(a2 + *(v5 + 32));
  v8 = *(a2 + v6 + 8);
  v9 = *(a2 + v6 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CEA0);
  sub_2749FC5B4();
  *a3 = a1;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v12;

  return a1;
}

uint64_t sub_274898EF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2749FB964();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D090) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  sub_2749FB974();
  if (sub_2749FB984())
  {
    v13 = -0.08;
  }

  else
  {
    v13 = 0.0;
  }

  (*(v4 + 32))(v12, v8, v2);
  *&v12[*(v9 + 44)] = v13;
  sub_2749FB984();
  v14 = sub_2749FC984();
  v15 = sub_2749FB984();
  sub_2747D31F8(v12, a1, &qword_28096D090);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D098);
  v17 = a1 + *(result + 36);
  *v17 = v14;
  *(v17 + 8) = v15 & 1;
  return result;
}

uint64_t sub_2748990A4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CAF0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v5 = (&v30 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968310);
  OUTLINED_FUNCTION_43();
  v8 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = v1[1];
  v35[0] = *v1;
  v35[1] = v12;
  v13 = v1[3];
  v35[2] = v1[2];
  v35[3] = v13;
  v34[0] = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CB00);
  sub_2749FC5C4();
  v14 = v32;
  if (v32 >= 2)
  {
    v25 = swift_allocObject();
    OUTLINED_FUNCTION_34_6(v25);
    *v5 = v14;
    v5[1] = sub_27489DAF0;
    v5[2] = v26;
    swift_storeEnumTagMultiPayload();
    sub_27489DAF8(v35, v34);
    OUTLINED_FUNCTION_15_16(&qword_280968318);
    sub_27478E528();
    OUTLINED_FUNCTION_38_9();
  }

  else
  {
    v31 = a1;
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v15 = qword_28159E448;
    v16 = sub_2749FCD64();
    v17 = sub_2749FCD64();

    v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

    v19 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v21 = v20;

    *&v34[0] = v19;
    *(&v34[0] + 1) = v21;
    sub_27475D0D0();
    v22 = sub_2749FD704();
    v24 = v23;

    v32 = v22;
    v33 = v24;
    sub_2749FAB74();
    (*(v8 + 16))(v5, v11, v6);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_15_16(&qword_280968318);
    sub_27478E528();
    a1 = v31;
    OUTLINED_FUNCTION_38_9();
    (*(v8 + 8))(v11, v6);
  }

  v27 = swift_allocObject();
  OUTLINED_FUNCTION_34_6(v27);
  v28 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CB18) + 36));
  *v28 = sub_2748A0858;
  v28[1] = v27;
  v28[2] = 0;
  v28[3] = 0;
  return sub_27489DAF8(v35, v34);
}

void sub_274899444()
{
  v1 = v0[1];
  v26 = *v0;
  v27 = v1;
  v2 = v0[3];
  v28 = v0[2];
  v29 = v2;
  v3 = v26;
  v4 = v27;
  if (v27 < 0)
  {
    v12 = objc_opt_self();
    if (v27)
    {
      sub_2747A3168();
      v6 = [v12 sharedManager];
      v7 = sub_2749FCD64();
      v13 = swift_allocObject();
      v14 = v0[1];
      v13[1] = *v0;
      v13[2] = v14;
      v15 = v0[3];
      v13[3] = v0[2];
      v13[4] = v15;
      v24 = sub_27489DB30;
      v25 = v13;
      aBlock = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = sub_2748A0844;
      v23 = &block_descriptor_29;
      v11 = _Block_copy(&aBlock);
      sub_27489DAF8(&v26, v19);

      [v6 getCollectionForPersistentIdentifier:v7 completionHandler:v11];
    }

    else
    {
      sub_27489DB78(v26, *(&v26 + 1), v27);
      sub_2747A3168();
      v6 = [v12 sharedManager];
      sub_27471CF08(0, &unk_28096CB20);
      v7 = sub_2748997EC();
      v16 = swift_allocObject();
      v17 = v27;
      v16[1] = v26;
      v16[2] = v17;
      v18 = v29;
      v16[3] = v28;
      v16[4] = v18;
      v24 = sub_27489DB8C;
      v25 = v16;
      aBlock = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = sub_2748A0844;
      v23 = &block_descriptor_42_0;
      v11 = _Block_copy(&aBlock);
      sub_27489DAF8(&v26, v19);

      [v6 getCollectionForIdentifier:v7 completionHandler:v11];
    }

    sub_27489DADC(v3, *(&v3 + 1), v4);
  }

  else
  {
    v5 = objc_opt_self();

    v6 = [v5 sharedManager];
    sub_27471CF08(0, &unk_28096CB20);
    v7 = sub_2748997EC();
    v8 = swift_allocObject();
    v9 = v27;
    v8[1] = v26;
    v8[2] = v9;
    v10 = v29;
    v8[3] = v28;
    v8[4] = v10;
    v24 = sub_27489DC10;
    v25 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_2748A0844;
    v23 = &block_descriptor_48_0;
    v11 = _Block_copy(&aBlock);
    sub_27489DAF8(&v26, v19);

    [v6 getPageWithID:v7 completionHandler:v11];
  }

  _Block_release(v11);
}

id sub_2748997EC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2749FCD64();

  v2 = [v0 initWithRecordName_];

  return v2;
}

uint64_t sub_274899860(void *a1, void *a2, _OWORD *a3)
{
  v6 = sub_2749FCA74();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2749FCAA4();
  v9 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27471CF08(0, &qword_28159E4E0);
  v12 = sub_2749FD404();
  v13 = swift_allocObject();
  v14 = a3[1];
  *(v13 + 24) = *a3;
  *(v13 + 40) = v14;
  v15 = a3[3];
  *(v13 + 56) = a3[2];
  *(v13 + 16) = a1;
  *(v13 + 72) = v15;
  *(v13 + 88) = a2;
  aBlock[4] = sub_27489DC18;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274760264;
  aBlock[3] = &block_descriptor_54;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  sub_27489DAF8(a3, v22);
  v18 = a2;

  sub_2749FCA94();
  v22[0] = MEMORY[0x277D84F90];
  sub_27489DC28(&qword_28159E580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
  sub_2748A06D8(&qword_28159E530);
  sub_2749FD7B4();
  MEMORY[0x277C5F170](0, v11, v8, v16);
  _Block_release(v16);

  (*(v21 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v20);
}

void sub_274899B8C(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for RootNavigationDestination();
  MEMORY[0x28223BE20](v6);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2749FB4C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v24 = *(a2 + 24);
    v25 = *(a2 + 40);
    v13 = v24;
    if (v25)
    {
      v14 = *(&v24 + 1);
      v15 = a1;
      sub_27473ADB8(&v24, v23, &qword_28096AA28);
      if (v13)
      {
LABEL_4:
        ObjectType = swift_getObjectType();
        *v8 = a1;
        *(v8 + 1) = 0;
        *(v8 + 2) = 0;
        *(v8 + 3) = 0;
        v8[32] = 64;
        swift_storeEnumTagMultiPayload();
        v17 = *(v14 + 16);
        v18 = a1;
        v17(v8, ObjectType, v14);

        swift_unknownObjectRelease();
        sub_27489DC68(v8, type metadata accessor for RootNavigationDestination);
        return;
      }
    }

    else
    {
      v20 = a1;
      sub_27473ADB8(&v24, v23, &qword_28096AA28);
      sub_2749FD2D4();
      v21 = sub_2749FBC14();
      sub_2749FA424();

      sub_2749FB4B4();
      swift_getAtKeyPath();
      sub_2748A045C(&v24, &qword_28096AA28);
      (*(v10 + 8))(v12, v9);
      v14 = v23[1];
      if (v23[0])
      {
        goto LABEL_4;
      }
    }
  }

  else if (a3)
  {
    v24 = *(a2 + 48);
    v23[0] = a3;
    v19 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CB00);
    sub_2749FC5D4();
  }
}

void sub_274899E60(void *a1, void *a2)
{
  v5 = type metadata accessor for RootNavigationDestination();
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2749FB4C4();
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v27 = v9;
    v28 = v5;
    v12 = *(v2 + 24);
    v29 = *(v2 + 32);
    v13 = *(v2 + 40);
    v14 = a1;
    v15 = sub_2747DDFD4(v14, &selRef_name);
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_274A11F70;
    *(v18 + 32) = v14;
    objc_allocWithZone(MEMORY[0x277D7C470]);
    v30 = v14;
    v19 = sub_27489D7A4(0, v15, v17, 0, 0, 0, v18, 0, 0, 0, 0, 0);
    if (v13 == 1)
    {
      swift_unknownObjectRetain();
      v20 = v29;
      if (v12)
      {
LABEL_4:
        ObjectType = swift_getObjectType();
        *v7 = v19;
        *(v7 + 1) = 0;
        *(v7 + 2) = 0;
        *(v7 + 3) = 0;
        v7[32] = 64;
        swift_storeEnumTagMultiPayload();
        v22 = *(v20 + 16);
        v23 = v19;
        v22(v7, ObjectType, v20);

        swift_unknownObjectRelease();
        sub_27489DC68(v7, type metadata accessor for RootNavigationDestination);
        return;
      }
    }

    else
    {

      sub_2749FD2D4();
      v25 = sub_2749FBC14();
      sub_2749FA424();

      sub_2749FB4B4();
      swift_getAtKeyPath();
      sub_274830180(v12, v29, 0);
      (*(v27 + 8))(v11, v8);
      v20 = *(&v32 + 1);
      if (v32)
      {
        goto LABEL_4;
      }
    }
  }

  else if (a2)
  {
    v32 = *(v2 + 48);
    v31 = a2;
    v24 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CB00);
    sub_2749FC5D4();
  }
}

uint64_t sub_27489A1A4(void *a1, void *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_2749FCA74();
  OUTLINED_FUNCTION_43();
  v32 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v31 = sub_2749FCAA4();
  OUTLINED_FUNCTION_43();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  sub_27471CF08(0, &qword_28159E4E0);
  v30 = sub_2749FD404();
  v22 = swift_allocObject();
  v23 = a3[1];
  *(v22 + 16) = *a3;
  *(v22 + 32) = v23;
  v24 = a3[3];
  *(v22 + 48) = a3[2];
  *(v22 + 64) = v24;
  *(v22 + 80) = a1;
  *(v22 + 88) = a2;
  aBlock[4] = a5;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274760264;
  aBlock[3] = a6;
  v25 = _Block_copy(aBlock);
  sub_27489DAF8(a3, v33);
  v26 = a1;
  v27 = a2;

  sub_2749FCA94();
  v33[0] = MEMORY[0x277D84F90];
  sub_27489DC28(&qword_28159E580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
  sub_2748A06D8(&qword_28159E530);
  sub_2749FD7B4();
  MEMORY[0x277C5F170](0, v21, v15, v25);
  _Block_release(v25);

  (*(v32 + 8))(v15, v10);
  return (*(v17 + 8))(v21, v31);
}

void sub_27489A4B0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_27489A4E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  if (!a1)
  {
    v12 = 0;
    v17 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v28 = 0;
    v37 = 0;
    v33 = 0;
    goto LABEL_6;
  }

  sub_27475D0D0();

  v6 = sub_2749FBEE4();
  v8 = v7;
  v10 = v9;
  sub_2749FBD84();
  sub_2749FBD34();
  sub_2749FBDA4();

  v4 = sub_2749FBEC4();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_27477656C(v6, v8, v10 & 1);

  v17 = v14 & 1;
  sub_274754DBC(v4, v12, v14 & 1);

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_27475D0D0();

  v18 = sub_2749FBEE4();
  v20 = v19;
  v22 = v21;
  sub_2749FBDC4();
  v40 = v12;
  v41 = v4;
  v23 = sub_2749FBEC4();
  v25 = v24;
  v39 = v16;
  v27 = v26;

  sub_27477656C(v18, v20, v22 & 1);

  sub_2749FC4A4();
  v28 = sub_2749FBE84();
  v3 = v29;
  v31 = v30;
  v33 = v32;

  v34 = v27 & 1;
  v35 = v23;
  v4 = v41;
  v36 = v25;
  v16 = v39;
  v12 = v40;
  sub_27477656C(v35, v36, v34);

  v37 = v31 & 1;
  sub_274754DBC(v28, v3, v31 & 1);

LABEL_6:
  sub_2747FF76C(v4, v12, v17, v16);
  sub_2747FF76C(v28, v3, v37, v33);
  sub_2747FF7B8(v4, v12, v17, v16);
  sub_2747FF7B8(v28, v3, v37, v33);
  *a3 = v4;
  a3[1] = v12;
  a3[2] = v17;
  a3[3] = v16;
  a3[4] = v28;
  a3[5] = v3;
  a3[6] = v37;
  a3[7] = v33;
  sub_2747FF7B8(v28, v3, v37, v33);
  return sub_2747FF7B8(v4, v12, v17, v16);
}

uint64_t sub_27489A7B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26[1] = a1;
  v3 = sub_2749FBA94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D0A0);
  MEMORY[0x28223BE20](v7);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D0A8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v26 - v12;
  sub_27489AACC(v2);
  v14 = *v2;
  v15 = *(v2 + 32);
  v28 = *(v2 + 40);
  v29 = v15;
  v16 = swift_allocObject();
  v17 = *(v2 + 16);
  *(v16 + 1) = *v2;
  *(v16 + 2) = v17;
  *(v16 + 3) = *(v2 + 32);
  v18 = &v9[*(v7 + 36)];
  *v18 = sub_2748A01C4;
  v18[1] = v16;
  v18[2] = 0;
  v18[3] = 0;
  v19 = v14;
  sub_27473ADB8(&v29, v27, &unk_28096CEA0);
  sub_27473ADB8(&v28, v27, &qword_28096D0B0);
  sub_2749FBA74();
  v20 = sub_2748A01CC();
  sub_2749FC1A4();
  (*(v4 + 8))(v6, v3);
  sub_2748A045C(v9, &qword_28096D0A0);
  v21 = sub_2747DDFD4(v19, &selRef_name);
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  v27[0] = v23;
  v27[1] = v24;
  v26[2] = v7;
  v26[3] = v20;
  swift_getOpaqueTypeConformance2();
  sub_27475D0D0();
  sub_2749FC0F4();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_27489AACC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D0F8);
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D108);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D0E8);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v17 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D100);
  sub_2749FC5C4();
  v11 = v16;
  if (v16 >= 2)
  {
    *v4 = sub_2749FB644();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D110);
    sub_27489AE18(a1, v11, &v4[*(v14 + 44)]);
    sub_27473ADB8(v4, v7, &qword_28096D0F8);
    swift_storeEnumTagMultiPayload();
    sub_2748A06D8(&unk_28096D0E0);
    sub_2748A06D8(&unk_28096D0F0);
    sub_2749FB7B4();
    sub_2748A0430(v11);
    return sub_2748A045C(v4, &qword_28096D0F8);
  }

  else
  {
    *v10 = sub_2749FB644();
    *(v10 + 1) = 0;
    v10[16] = 0;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D118);
    sub_27489B2E8(a1, &v10[*(v12 + 44)]);
    sub_27473ADB8(v10, v7, &qword_28096D0E8);
    swift_storeEnumTagMultiPayload();
    sub_2748A06D8(&unk_28096D0E0);
    sub_2748A06D8(&unk_28096D0F0);
    sub_2749FB7B4();
    return sub_2748A045C(v10, &qword_28096D0E8);
  }
}

uint64_t sub_27489AE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v47[1] = a2;
  v51 = a3;
  v47[0] = sub_2749FC524();
  v4 = *(v47[0] - 8);
  MEMORY[0x28223BE20](v47[0]);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D158);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v50 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = (v47 - v11);
  v47[2] = a1;
  v13 = *a1;
  sub_2747DDFD4(*a1, &selRef_name);
  v15 = v14;
  sub_2747DDFD4(v13, &selRef_subtitle);
  v17 = v16;
  v49 = sub_2749FB644();
  v18 = *(a1 + 24);
  LOBYTE(v59[0]) = 0;
  v19 = v18 / 3.0;
  sub_27489A4E4(v15, v17, v56);

  *&v52[7] = v56[0];
  *&v52[23] = v56[1];
  *&v52[39] = v56[2];
  *&v52[55] = v56[3];
  v48 = LOBYTE(v59[0]);
  v20 = sub_2749FBC84();
  sub_2749FA9E4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  LOBYTE(v59[0]) = 0;
  sub_2749FD594();
  v29 = v47[0];
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v47[0]);
  v30 = sub_2749FC564();

  (*(v4 + 8))(v6, v29);
  v31 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D160) + 36);
  v32 = *(sub_2749FAFC4() + 20);
  v33 = *MEMORY[0x277CE0118];
  v34 = sub_2749FB584();
  (*(*(v34 - 8) + 104))(&v31[v32], v33, v34);
  __asm { FMOV            V0.2D, #19.0 }

  *v31 = _Q0;
  *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969C20) + 36)] = 256;
  *v12 = v30;
  sub_2749FC914();
  sub_2749FABB4();
  v40 = (v12 + *(v8 + 44));
  v41 = v54;
  *v40 = v53;
  v40[1] = v41;
  v40[2] = v55;
  v42 = v50;
  sub_27473ADB8(v12, v50, &qword_28096D158);
  v43 = v49;
  v58[0] = v49;
  *&v58[1] = v19;
  LOBYTE(v33) = v48;
  LOBYTE(v58[2]) = v48;
  memcpy(&v58[2] + 1, v52, 0x47uLL);
  LOBYTE(v58[11]) = v20;
  *(&v58[11] + 1) = *v57;
  HIDWORD(v58[11]) = *&v57[3];
  v58[12] = v22;
  v58[13] = v24;
  v58[14] = v26;
  v58[15] = v28;
  LOBYTE(v58[16]) = 0;
  v44 = v51;
  memcpy(v51, v58, 0x81uLL);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D170);
  sub_27473ADB8(v42, v44 + *(v45 + 48), &qword_28096D158);
  sub_27473ADB8(v58, v59, &qword_28096D150);
  sub_2748A045C(v12, &qword_28096D158);
  sub_2748A045C(v42, &qword_28096D158);
  v59[0] = v43;
  *&v59[1] = v19;
  v60 = v33;
  memcpy(v61, v52, 0x47uLL);
  v61[71] = v20;
  *v62 = *v57;
  *&v62[3] = *&v57[3];
  v63 = v22;
  v64 = v24;
  v65 = v26;
  v66 = v28;
  v67 = 0;
  return sub_2748A045C(v59, &qword_28096D150);
}

uint64_t sub_27489B2E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v3 = sub_2749FAFA4();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D120);
  MEMORY[0x28223BE20](v56);
  v7 = &v51[-v6];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D128);
  v53 = *(v58 - 8);
  v8 = v53;
  v9 = MEMORY[0x28223BE20](v58);
  v57 = &v51[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v51[-v11];
  v13 = *a1;
  sub_2747DDFD4(*a1, &selRef_name);
  v15 = v14;
  sub_2747DDFD4(v13, &selRef_subtitle);
  v17 = v16;
  v55 = sub_2749FB644();
  v18 = *(a1 + 24);
  LOBYTE(v69[0]) = 0;
  v19 = v18 / 3.0;
  sub_27489A4E4(v15, v17, v66);

  *&v62[7] = v66[0];
  *&v62[23] = v66[1];
  *&v62[39] = v66[2];
  *&v62[55] = v66[3];
  v54 = LOBYTE(v69[0]);
  v20 = sub_2749FBC84();
  LOBYTE(v17) = v20;
  v52 = v20;
  sub_2749FA9E4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  LOBYTE(v69[0]) = 0;
  v29 = *(sub_2749FAFC4() + 20);
  v30 = *MEMORY[0x277CE0118];
  v31 = sub_2749FB584();
  (*(*(v31 - 8) + 104))(&v7[v29], v30, v31);
  __asm { FMOV            V0.2D, #19.0 }

  *v7 = _Q0;
  v37 = sub_2749FC444();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D130);
  *&v7[*(v38 + 52)] = v37;
  *&v7[*(v38 + 56)] = 256;
  sub_2749FC914();
  sub_2749FABB4();
  v39 = &v7[*(v56 + 36)];
  v40 = v64;
  *v39 = v63;
  *(v39 + 1) = v40;
  *(v39 + 2) = v65;
  sub_2749FAF94();
  sub_2748A04AC();
  sub_2749FC324();
  (*(v59 + 8))(v5, v60);
  sub_2748A045C(v7, &qword_28096D120);
  v41 = *(v8 + 16);
  v43 = v57;
  v42 = v58;
  v44 = v12;
  v41(v57, v12, v58);
  v45 = v55;
  v68[0] = v55;
  *&v68[1] = v19;
  LOBYTE(v12) = v54;
  LOBYTE(v68[2]) = v54;
  memcpy(&v68[2] + 1, v62, 0x47uLL);
  LOBYTE(v68[11]) = v17;
  *(&v68[11] + 1) = *v67;
  HIDWORD(v68[11]) = *&v67[3];
  v68[12] = v22;
  v68[13] = v24;
  v68[14] = v26;
  v68[15] = v28;
  LOBYTE(v68[16]) = 0;
  v46 = v61;
  memcpy(v61, v68, 0x81uLL);
  v47 = &v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D148) + 48)];
  v48 = v43;
  v41(v47, v43, v42);
  sub_27473ADB8(v68, v69, &qword_28096D150);
  v49 = *(v53 + 8);
  v49(v44, v42);
  v49(v48, v42);
  v69[0] = v45;
  *&v69[1] = v19;
  v70 = v12;
  memcpy(v71, v62, 0x47uLL);
  v71[71] = v52;
  *v72 = *v67;
  *&v72[3] = *&v67[3];
  v73 = v22;
  v74 = v24;
  v75 = v26;
  v76 = v28;
  v77 = 0;
  return sub_2748A045C(v69, &qword_28096D150);
}