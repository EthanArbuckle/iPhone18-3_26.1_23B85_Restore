uint64_t sub_1B37F0A84()
{
  OUTLINED_FUNCTION_0_0();
  v0[3] = v1;
  v0[4] = v2;
  sub_1B3C9C888();
  v0[5] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v0[6] = v4;
  v0[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B37F0B18, v4, v3);
}

uint64_t sub_1B37F0B18()
{
  OUTLINED_FUNCTION_0_0();
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[8] = v1;
  sub_1B37F1ACC();
  *v1 = v0;
  v1[1] = sub_1B3713898;
  v2 = v0[3];

  return MEMORY[0x1EEE2CA70](v2, 0, 0, 0, 0, 0, 1, &unk_1B3D046D0);
}

uint64_t sub_1B37F0C00(uint64_t a1, uint64_t a2)
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

  return MEMORY[0x1EEE6DFA0](sub_1B37F0DB4, v6, v5);
}

uint64_t sub_1B37F0DB4()
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

  return sub_1B37F0E80();
}

uint64_t sub_1B37F0E80()
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

  return MEMORY[0x1EEE6DFA0](sub_1B37F0F74, v5, v4);
}

uint64_t sub_1B37F0F74()
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
  v14[1] = sub_1B37F1168;

  return sub_1B37BD42C();
}

uint64_t sub_1B37F1168()
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
    v7 = sub_1B37F1298;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B37F1298()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v2 = swift_allocObject();
  v0[13] = v2;
  *(v2 + 16) = xmmword_1B3CF9810;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = objc_allocWithZone(MEMORY[0x1E69C4230]);
  *(v2 + 32) = sub_1B37F1A20(sub_1B3714E34, v3);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1B371450C;

  return sub_1B37BD81C();
}

uint64_t sub_1B37F13C0()
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

uint64_t sub_1B37F1810@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB850078 != -1)
  {
    swift_once();
  }

  v2 = sub_1B3C97F48();
  v3 = __swift_project_value_buffer(v2, qword_1EB878E68);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B37F18BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B3714CE0;

  return sub_1B37F0A84();
}

uint64_t sub_1B37F195C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B37F13C0();
  *a1 = result;
  return result;
}

uint64_t sub_1B37F1984(uint64_t a1)
{
  v2 = sub_1B37F1ACC();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

double sub_1B37F19D0(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);

  v5 = v3(v4, a2);

  return v5;
}

id sub_1B37F1A20(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B37F19D0;
  v6[3] = &block_descriptor_36;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithModifier_];
  _Block_release(v3);

  return v4;
}

unint64_t sub_1B37F1ACC()
{
  result = qword_1EB855740;
  if (!qword_1EB855740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855740);
  }

  return result;
}

uint64_t sub_1B37F1B20()
{
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B3714CE0;

  return sub_1B37F0C00(v3, v0);
}

BOOL static OneUpScreenshotInsetUtilities.cornerRadiusForAspectRatio(_:horizontalSizeClass:verticalSizeClass:)(_BOOL8 result, uint64_t a2, double a3)
{
  if (a3 > 0.0)
  {
    v4 = result;
    type metadata accessor for OneUpChromeToolbarVisibilityUtilities();
    return static OneUpChromeToolbarVisibilityUtilities.sizeClassSupportsVisibleToolbar(horizontalSizeClass:verticalSizeClass:)(v4, a2);
  }

  return result;
}

double static OneUpScreenshotInsetUtilities.cornerRadiusForAspectRatio(_:traitCollection:)(void *a1, double a2)
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = a1;
  v4 = [v3 horizontalSizeClass];
  v5 = [v3 verticalSizeClass];

  static OneUpScreenshotInsetUtilities.cornerRadiusForAspectRatio(_:horizontalSizeClass:verticalSizeClass:)(v4, v5, a2);
  return result;
}

id OneUpScreenshotInsetUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OneUpScreenshotInsetUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpScreenshotInsetUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id OneUpScreenshotInsetUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpScreenshotInsetUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B37F1FA8()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate26OneUpMockActionsController_trashActionEnabled;
  OUTLINED_FUNCTION_7_0();
  return *(v0 + v1);
}

uint64_t sub_1B37F1FDC(char a1)
{
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate26OneUpMockActionsController_trashActionEnabled;
  result = OUTLINED_FUNCTION_3_27();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B37F2140(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate26OneUpMockActionsController_performedActions;
  OUTLINED_FUNCTION_3_27();
  *(v1 + v3) = a1;
}

id OneUpMockActionsController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OneUpMockActionsController.init()()
{
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26OneUpMockActionsController_delegate] = 0;
  v0[OBJC_IVAR____TtC15PhotosUIPrivate26OneUpMockActionsController_trashActionEnabled] = 1;
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26OneUpMockActionsController_performedActions] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26OneUpMockActionsController_popoverHelper] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpMockActionsController();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1B37F2330(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_3_27();
  *(v2 + v4) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1B37F28F4(uint64_t result)
{
  if (result == 42)
  {
    v1 = OUTLINED_FUNCTION_0_29(18);
  }

  else
  {
    if (result != 40)
    {
      return result;
    }

    v2 = 16;
    v1 = &v2;
  }

  return sub_1B37F2B4C(v1);
}

uint64_t sub_1B37F2A20(uint64_t a1)
{
  switch(a1)
  {
    case 8:
      v4 = 11;
      v1 = &v4;
      goto LABEL_9;
    case 39:
      v1 = OUTLINED_FUNCTION_0_29(15);
      goto LABEL_9;
    case 38:
      v5 = 14;
      v1 = &v5;
      goto LABEL_9;
    case 15:
      v3 = 1;
      v1 = &v3;
LABEL_9:
      sub_1B37F2B4C(v1);
      break;
  }

  return 1;
}

uint64_t sub_1B37F2B4C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate26OneUpMockActionsController_performedActions;
  swift_beginAccess();
  sub_1B370EAF8();
  v4 = *(*(v1 + v3) + 16);
  sub_1B370ED9C();
  v5 = *(v1 + v3);
  *(v5 + 16) = v4 + 1;
  *(v5 + v4 + 32) = v2;
  *(v1 + v3) = v5;
  return swift_endAccess();
}

id OneUpMockActionsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpMockActionsController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MockOneUpAction.hashValue.getter()
{
  v1 = *v0;
  sub_1B3C9D7C8();
  MEMORY[0x1B8C6AD50](v1);
  return sub_1B3C9D7F8();
}

unint64_t sub_1B37F2D2C()
{
  result = qword_1EB855780;
  if (!qword_1EB855780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855780);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MockOneUpAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_30()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_27()
{

  return swift_beginAccess();
}

uint64_t sub_1B37F3A10(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1B37F3A50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1B37F3AB8@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() pu_PhotosUIFrameworkBundle];
  *a1 = sub_1B3C9AF78();
  *(a1 + 8) = v4;
  *(a1 + 16) = v3 & 1;
  *(a1 + 24) = v5;
  result = 1.91348595e45;
  *(a1 + 32) = xmmword_1B3D048A0;
  *(a1 + 48) = v2;
  return result;
}

unint64_t sub_1B37F3B3C()
{
  result = qword_1EB855800;
  if (!qword_1EB855800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855800);
  }

  return result;
}

unint64_t sub_1B37F3BA0()
{
  result = qword_1EB855808;
  if (!qword_1EB855808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855808);
  }

  return result;
}

uint64_t StoryViewModel.__allocating_init(storyViewController:)(char *a1)
{
  v2 = swift_allocObject();
  StoryViewModel.init(storyViewController:)(a1);
  return v2;
}

uint64_t StoryViewModel.init(storyViewController:)(char *a1)
{
  v23 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855810);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855818);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  *(v1 + 16) = [objc_allocWithZone(MEMORY[0x1E69C4590]) init];
  v13 = OBJC_IVAR____TtC15PhotosUIPrivate14StoryViewModel__readinessStatus;
  v24 = 1;
  v25 = 0;
  type metadata accessor for StoryViewModel(0);
  type metadata accessor for PXStoryPlaybackReadinessStatus(0);
  OUTLINED_FUNCTION_0_30();
  sub_1B37F3F9C(v14, v15);
  sub_1B37F3F9C(&qword_1EB855830, type metadata accessor for PXStoryPlaybackReadinessStatus);
  sub_1B3C99F88();
  (*(v9 + 32))(v1 + v13, v12, v7);
  v16 = OBJC_IVAR____TtC15PhotosUIPrivate14StoryViewModel__timelineAttributes;
  v24 = 1;
  v25 = 0;
  type metadata accessor for PXStoryComponentAttributes(0);
  sub_1B37F3F9C(&qword_1EB850AE0, type metadata accessor for PXStoryComponentAttributes);
  sub_1B3C99F88();
  (*(v3 + 32))(v1 + v16, v6, v22);
  swift_unknownObjectWeakInit();
  v17 = (v1 + OBJC_IVAR____TtC15PhotosUIPrivate14StoryViewModel_storyModelObservation);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + OBJC_IVAR____TtC15PhotosUIPrivate14StoryViewModel_storyViewModelObservation);
  *v18 = 0;
  v18[1] = 0;
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate14StoryViewModel_mainModel) = 0;
  v19 = v23;
  swift_unknownObjectWeakAssign();
  v20 = swift_allocObject();
  swift_weakInit();

  sub_1B3854C44(v19, v20);

  return v1;
}

uint64_t sub_1B37F3F9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B37F3FE4()
{
  OUTLINED_FUNCTION_3_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B37F46C0();
  }

  return result;
}

id sub_1B37F4030()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = OBJC_IVAR___PUStoryViewController_storyView;
  OUTLINED_FUNCTION_3_0();
  v3 = *&v1[v2];
  v4 = v3;

  if (!v3)
  {
    return 0;
  }

  v5 = [v4 viewModel];

  v6 = [v5 mainModel];
  v7 = [v6 visibleDisplayAssets];

  return v7;
}

id sub_1B37F4108()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = OBJC_IVAR___PUStoryViewController_storyView;
  OUTLINED_FUNCTION_3_0();
  v3 = *&v1[v2];
  v4 = v3;

  if (!v3)
  {
    return 0;
  }

  v5 = [v4 viewModel];

  v6 = [v5 mainAsset];
  return v6;
}

uint64_t sub_1B37F41C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B37F4214();
  *a1 = result;
  return result;
}

uint64_t sub_1B37F4214()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_30();
  sub_1B37F3F9C(v1, v2);

  OUTLINED_FUNCTION_2_31(v3, v4, v5, v6, v7, v8, v9, v10, v0);

  return v12;
}

uint64_t sub_1B37F42B4(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_30();
  sub_1B37F3F9C(v3, v4);

  return OUTLINED_FUNCTION_1_30(v5, v6, v7, v8, v9, v10, v11, v12, v1, a1);
}

uint64_t sub_1B37F433C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B37F4390();
  *a1 = result;
  return result;
}

uint64_t sub_1B37F4390()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_30();
  sub_1B37F3F9C(v1, v2);

  OUTLINED_FUNCTION_2_31(v3, v4, v5, v6, v7, v8, v9, v10, v0);

  return v12;
}

uint64_t sub_1B37F4430(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_30();
  sub_1B37F3F9C(v3, v4);

  return OUTLINED_FUNCTION_1_30(v5, v6, v7, v8, v9, v10, v11, v12, v1, a1);
}

uint64_t sub_1B37F44B8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate14StoryViewModel_mainModel);
  if (v2)
  {
    swift_allocObject();
    swift_weakInit();
    v3 = v2;

    v2 = sub_1B3C9CA58();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = (v1 + OBJC_IVAR____TtC15PhotosUIPrivate14StoryViewModel_storyModelObservation);
  *v6 = v2;
  v6[1] = v5;

  return swift_unknownObjectRelease();
}

uint64_t sub_1B37F4590(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B37F45F0(a2);
  }

  return result;
}

uint64_t sub_1B37F45F0(uint64_t result)
{
  v1 = result;
  if ((result & 0x200000) != 0)
  {
    result = sub_1B37F535C(&selRef_readinessStatus);
  }

  if ((v1 & 0x20000000) != 0)
  {
    return sub_1B37F535C(&selRef_timelineAttributes);
  }

  return result;
}

void sub_1B37F4668(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate14StoryViewModel_mainModel);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate14StoryViewModel_mainModel) = a1;
  v3 = a1;

  sub_1B37F44B8();
}

uint64_t sub_1B37F46C0()
{
  v1 = v0;
  v2 = sub_1B37F47D8();
  if (v2)
  {
    v3 = v2;
    swift_allocObject();
    swift_weakInit();

    v4 = sub_1B3C9CA58();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (v1 + OBJC_IVAR____TtC15PhotosUIPrivate14StoryViewModel_storyViewModelObservation);
  *v7 = v4;
  v7[1] = v6;
  swift_unknownObjectRelease();
  sub_1B37F52A0();
  sub_1B37F535C(&selRef_readinessStatus);
  return sub_1B37F535C(&selRef_timelineAttributes);
}

char *sub_1B37F47D8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR___PUStoryViewController_storyView;
    swift_beginAccess();
    v2 = *&Strong[v1];
    v3 = v2;

    if (v2)
    {
      Strong = [v3 viewModel];
    }

    else
    {
      return 0;
    }
  }

  return Strong;
}

uint64_t sub_1B37F487C(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a2 & 0x40) != 0)
    {
      sub_1B37F52A0();
    }
  }

  return result;
}

uint64_t StoryViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate14StoryViewModel__readinessStatus;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855818);
  OUTLINED_FUNCTION_6_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate14StoryViewModel__timelineAttributes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855810);
  OUTLINED_FUNCTION_6_0();
  (*(v4 + 8))(v0 + v3);
  MEMORY[0x1B8C6EDB0](v0 + OBJC_IVAR____TtC15PhotosUIPrivate14StoryViewModel_storyViewController);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t StoryViewModel.__deallocating_deinit()
{
  StoryViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B37F4A1C@<X0>(uint64_t *a1@<X8>)
{
  result = StoryViewModel.createMutator()();
  *a1 = result;
  a1[1] = &off_1F2ABB0E0;
  return result;
}

uint64_t StoryViewModel.createMutator()()
{
  type metadata accessor for StoryViewModel.Mutator(0);
  swift_allocObject();

  return sub_1B37F4C7C(v0);
}

uint64_t sub_1B37F4A9C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoryViewModel(0);
  result = sub_1B3C9A658();
  *a1 = result;
  return result;
}

uint64_t sub_1B37F4ADC()
{
  type metadata accessor for StoryViewModel(0);
  sub_1B37F3F9C(&qword_1EB855918, type metadata accessor for StoryViewModel);

  return sub_1B3C9A038();
}

id sub_1B37F4B68@<X0>(void *a1@<X8>)
{
  result = StoryViewModel.observable.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B37F4BF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryViewModel(0);
  v5 = sub_1B37F3F9C(&qword_1EB855828, type metadata accessor for StoryViewModel);

  return MEMORY[0x1EEE2D910](a1, a2, v4, v5);
}

uint64_t sub_1B37F4C7C(uint64_t a1)
{
  swift_getKeyPath();
  type metadata accessor for StoryViewModel.Mutator(0);
  sub_1B37F3F9C(&qword_1EB8558F8, type metadata accessor for StoryViewModel.Mutator);
  sub_1B3C99F58();
  swift_getKeyPath();
  sub_1B3C99F58();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_1B37F4D48()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B3C99F28();

  return v1;
}

uint64_t sub_1B37F4DBC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1B3C99F38();
}

uint64_t sub_1B37F4E2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B3C99F28();

  return v1;
}

uint64_t sub_1B37F4EA0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1B3C99F38();
}

uint64_t sub_1B37F4F10()
{

  v1 = OBJC_IVAR____TtCC15PhotosUIPrivate14StoryViewModelP33_6A5C5F7F1B14BF601058A3392DAE899B7Mutator__readinessStatus;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855908);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC15PhotosUIPrivate14StoryViewModelP33_6A5C5F7F1B14BF601058A3392DAE899B7Mutator__timelineAttributes;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855910);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1B37F4FD0()
{
  v0 = sub_1B37F4F10();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t (*sub_1B37F5038(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_1B3C99F18();
  return sub_1B37F50C8;
}

uint64_t (*sub_1B37F50D4(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_1B3C99F18();
  return sub_1B37F5CAC;
}

void sub_1B37F5164(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1B37F5234@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = StoryViewModelChangeDescriptor.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B37F5274@<X0>(uint64_t *a1@<X8>)
{
  result = StoryViewModelChangeDescriptor.rawValue.getter();
  *a1 = result;
  return result;
}

void sub_1B37F52A0()
{
  v0 = sub_1B37F47D8();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 mainModel];
  }

  else
  {
    v2 = 0;
  }

  sub_1B37F4668(v2);
}

uint64_t sub_1B37F5308(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 16))(a2, ObjectType, v3);
}

uint64_t sub_1B37F535C(SEL *a1)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate14StoryViewModel_mainModel))
  {
    v2 = [*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate14StoryViewModel_mainModel) *a1];
  }

  else
  {
    v2 = 0;
  }

  *(swift_allocObject() + 16) = v2;
  type metadata accessor for StoryViewModel(0);
  OUTLINED_FUNCTION_0_30();
  sub_1B37F3F9C(v3, v4);
  sub_1B3C9A038();
}

uint64_t sub_1B37F5424(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 40))(a2, ObjectType, v3);
}

unint64_t sub_1B37F5570()
{
  result = qword_1EB855878;
  if (!qword_1EB855878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB855878);
  }

  return result;
}

unint64_t sub_1B37F55B8()
{
  result = qword_1EB855880;
  if (!qword_1EB855880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855880);
  }

  return result;
}

unint64_t sub_1B37F5610()
{
  result = qword_1EB855888;
  if (!qword_1EB855888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855888);
  }

  return result;
}

unint64_t sub_1B37F5668()
{
  result = qword_1EB855890;
  if (!qword_1EB855890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855890);
  }

  return result;
}

unint64_t sub_1B37F56C0()
{
  result = qword_1EB855898;
  if (!qword_1EB855898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855898);
  }

  return result;
}

unint64_t sub_1B37F5718()
{
  result = qword_1EB8558A0;
  if (!qword_1EB8558A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8558A0);
  }

  return result;
}

unint64_t sub_1B37F5770()
{
  result = qword_1EB8558A8;
  if (!qword_1EB8558A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8558A8);
  }

  return result;
}

void sub_1B37F57CC()
{
  sub_1B37F59B8(319, &qword_1EB8558C0, type metadata accessor for PXStoryPlaybackReadinessStatus);
  if (v0 <= 0x3F)
  {
    sub_1B37F59B8(319, &qword_1EB8558C8, type metadata accessor for PXStoryComponentAttributes);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B37F59B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for StoryViewModel(255);
    a3(255);
    OUTLINED_FUNCTION_0_30();
    sub_1B37F3F9C(v5, v6);
    OUTLINED_FUNCTION_5_22();
    v7 = sub_1B3C99F98();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1B37F5A50()
{
  sub_1B37F5B60(319, &qword_1EB8558F0, type metadata accessor for PXStoryPlaybackReadinessStatus);
  if (v0 <= 0x3F)
  {
    sub_1B37F5B60(319, &qword_1EB855900, type metadata accessor for PXStoryComponentAttributes);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B37F5B60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for StoryViewModel.Mutator(255);
    a3(255);
    sub_1B37F3F9C(&qword_1EB8558F8, type metadata accessor for StoryViewModel.Mutator);
    OUTLINED_FUNCTION_5_22();
    v5 = sub_1B3C99F48();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x1EEE2D818](&a9, v9, v10, v11);
}

unint64_t sub_1B37F5CDC()
{
  result = qword_1EB855920;
  if (!qword_1EB855920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855920);
  }

  return result;
}

unint64_t sub_1B37F5D34()
{
  result = qword_1EB855928;
  if (!qword_1EB855928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855928);
  }

  return result;
}

unint64_t sub_1B37F5DD8()
{
  result = qword_1EB855930;
  if (!qword_1EB855930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855930);
  }

  return result;
}

uint64_t sub_1B37F5E2C()
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
  __swift_allocate_value_buffer(v6, qword_1EB878E80);
  __swift_project_value_buffer(v6, qword_1EB878E80);
  sub_1B3C9C538();
  sub_1B3C98178();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1B3C97F58();
}

uint64_t sub_1B37F601C()
{
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  v0[2] = sub_1B3C9C888();
  v0[3] = sub_1B3C9C878();
  v3 = swift_task_alloc();
  v0[4] = v3;
  sub_1B37F5DD8();
  *v3 = v0;
  v3[1] = sub_1B37120C8;

  return MEMORY[0x1EEE2CA70](v2, 0, 0, 0, 0, 0, 1, &unk_1B3D05008);
}

uint64_t sub_1B37F6110(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  v1[3] = swift_task_alloc();
  sub_1B3C9C888();
  v1[4] = sub_1B3C9C878();
  v3 = sub_1B3C9C848();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B37F61E0, v3, v2);
}

uint64_t sub_1B37F61E0()
{
  OUTLINED_FUNCTION_0_0();
  v1 = *(v0 + 24);
  v2 = sub_1B3C98638();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1B3712454;

  return sub_1B37F6290();
}

uint64_t sub_1B37F6290()
{
  OUTLINED_FUNCTION_0_0();
  v0[2] = v1;
  v2 = sub_1B3C9A558();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();
  sub_1B3C9C888();
  v0[6] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v0[7] = v4;
  v0[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B37F6380, v4, v3);
}

uint64_t sub_1B37F6380()
{
  v16 = v0;
  v1 = sub_1B3C98D08();
  v3 = v2;
  sub_1B3C987F8();

  v4 = sub_1B3C9A538();
  v5 = sub_1B3C9CAE8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136446210;
    v12 = sub_1B3749364(v1, v3, &v15);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_1B36F3000, v4, v5, "Parameters: { asset: %{public}s }", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x1B8C6EC70](v11, -1, -1);
    MEMORY[0x1B8C6EC70](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);
  v0[9] = type metadata accessor for PXEditAppDependencyManager();
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_1B37F655C;

  return sub_1B37BD42C();
}

uint64_t sub_1B37F655C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_1B3712CF0;
  }

  else
  {
    v7 = sub_1B37F6694;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B37F6694()
{
  OUTLINED_FUNCTION_0_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v1 = swift_allocObject();
  *(v0 + 96) = v1;
  *(v1 + 16) = xmmword_1B3CF9810;
  *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E69C41D8]) init];
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1B3712B7C;

  return sub_1B37BD81C();
}

uint64_t sub_1B37F677C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB850080 != -1)
  {
    swift_once();
  }

  v2 = sub_1B3C97F48();
  v3 = __swift_project_value_buffer(v2, qword_1EB878E80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B37F6824()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B3712F14;

  return sub_1B37F601C();
}

uint64_t sub_1B37F68BC(uint64_t a1)
{
  v2 = sub_1B37F5DD8();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

id AmbientPhotoFramePeoplePickerDataSource.__allocating_init(photoLibrary:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithPhotoLibrary_];

  return v3;
}

uint64_t sub_1B37F69A4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    a3();
    return a2;
  }

  else
  {

    return a4();
  }
}

id AmbientPhotoFramePeoplePickerDataSource.__allocating_init(photoLibrary:includePets:)(void *a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFramePeoplePickerDataSource_includePets] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_initWithPhotoLibrary_, a1);

  return v6;
}

id AmbientPhotoFramePeoplePickerDataSource.init(photoLibrary:includePets:)(void *a1, char a2)
{
  v2[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFramePeoplePickerDataSource_includePets] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for AmbientPhotoFramePeoplePickerDataSource();
  v4 = objc_msgSendSuper2(&v6, sel_initWithPhotoLibrary_, a1);

  return v4;
}

id AmbientPhotoFramePeoplePickerDataSource.init(photoLibrary:)(void *a1)
{
  v1[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFramePeoplePickerDataSource_includePets] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AmbientPhotoFramePeoplePickerDataSource();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPhotoLibrary_, a1);

  return v3;
}

uint64_t sub_1B37F6B70()
{
  sub_1B3710718(0, &unk_1EB855948);
  v0 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
  v4[3] = sub_1B3710718(0, &qword_1EB852330);
  v4[0] = v0;
  v1 = sub_1B37F6C38(v4);
  v4[0] = 0;
  sub_1B37F6CB0();
  result = sub_1B3C9C978();
  v3 = v4[0];
  if (v4[0])
  {

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B37F6C38(void *a1)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  v2 = sub_1B3C9D688();
  v3 = [swift_getObjCClassFromMetadata() setWithObject_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v3;
}

unint64_t sub_1B37F6CB0()
{
  result = qword_1EB855958;
  if (!qword_1EB855958)
  {
    sub_1B3710718(255, &qword_1EB852330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855958);
  }

  return result;
}

void sub_1B37F6D98(uint64_t a1)
{
  v3 = v1[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFramePeoplePickerDataSource_includePets];
  v4 = &unk_1F2AB3840;
  if (!v1[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFramePeoplePickerDataSource_includePets])
  {
    v4 = &unk_1F2AB3868;
  }

  v5 = *v4;
  v76 = v1[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFramePeoplePickerDataSource_includePets];
  if (*v4)
  {
    v83 = MEMORY[0x1E69E7CC0];
    sub_1B3C9D428();
    if (v3)
    {
      v6 = &unk_1F2AB3830;
    }

    else
    {
      v6 = &unk_1F2AB3858;
    }

    v7 = (v6 + 32);
    do
    {
      v8 = *v7++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
      sub_1B3C9D408();
      sub_1B3C9D438();
      sub_1B3C9D448();
      sub_1B3C9D418();
      --v5;
    }

    while (v5);

    v9 = v79;
  }

  else
  {
    v9 = v1;
  }

  v10 = objc_opt_self();
  sub_1B3710718(0, &qword_1EB852330);
  v11 = sub_1B3C9C778();

  v12 = [v9 photoLibrary];
  v80 = v10;
  v13 = [v10 fetchPersonLocalIdentifiersForSuggestionSubtypes:v11 photoLibrary:v12];

  sub_1B3C9C988();

  v78 = sub_1B37FA1A4(v14, a1);
  v15 = sub_1B3C9CAA8();
  if (qword_1EB8500A0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EB855DC0;
  oslog = qword_1EB855DC0;
  v75 = a1;
  if (os_log_type_enabled(qword_1EB855DC0, v15))
  {
    v17 = v16;
    v18 = OUTLINED_FUNCTION_9_0();
    v19 = OUTLINED_FUNCTION_8_2();
    v83 = v19;
    *v18 = 136315138;
    v20 = sub_1B3C9C998();
    v22 = v21;

    v23 = sub_1B3749364(v20, v22, &v83);

    *(v18 + 4) = v23;
    v24 = MEMORY[0x1E69E7CC0];
    _os_log_impl(&dword_1B36F3000, v17, v15, "[AmbientPhotoFramePeoplePickerDataSource] ambient people identifier: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    OUTLINED_FUNCTION_1_31();
    MEMORY[0x1B8C6EC70]();
    OUTLINED_FUNCTION_1_31();
    MEMORY[0x1B8C6EC70]();
    v25 = v76;
    v26 = &_OBJC_LABEL_PROTOCOL___PUPickerOnboardingHeaderViewDelegate;
  }

  else
  {

    v25 = v3;
    v26 = &_OBJC_LABEL_PROTOCOL___PUPickerOnboardingHeaderViewDelegate;
    v24 = MEMORY[0x1E69E7CC0];
  }

  v27 = &unk_1F2AB3890;
  if (!v25)
  {
    v27 = &unk_1F2AB38B8;
  }

  v28 = *v27;
  if (*v27)
  {
    v83 = v24;
    sub_1B3C9D428();
    if (v25)
    {
      v29 = &unk_1F2AB3880;
    }

    else
    {
      v29 = &unk_1F2AB38A8;
    }

    v30 = (v29 + 32);
    do
    {
      v31 = *v30++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
      sub_1B3C9D408();
      sub_1B3C9D438();
      sub_1B3C9D448();
      sub_1B3C9D418();
      --v28;
    }

    while (v28);
  }

  v32 = sub_1B3C9C778();

  v33 = v79;
  v34 = [v79 photoLibrary];
  v35 = [v80 v26[451]];

  sub_1B3C9C988();

  v37 = sub_1B37FA1A4(v36, v75);
  v38 = sub_1B3C9CAA8();
  if (os_log_type_enabled(oslog, v38))
  {
    v39 = OUTLINED_FUNCTION_9_0();
    v40 = OUTLINED_FUNCTION_8_2();
    v83 = v40;
    *v39 = 136315138;
    v41 = sub_1B3C9C998();
    v43 = v42;

    v44 = sub_1B3749364(v41, v43, &v83);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_1B36F3000, oslog, v38, "[AmbientPhotoFramePeoplePickerDataSource] wallpaper top people identifier: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    OUTLINED_FUNCTION_1_31();
    MEMORY[0x1B8C6EC70]();
    OUTLINED_FUNCTION_1_31();
    MEMORY[0x1B8C6EC70]();
  }

  else
  {
  }

  v45 = sub_1B37F9B08(v37, v78);

  v83 = v45;
  v46 = [v79 photoLibrary];
  v47 = [v80 fetchPersonLocalIdentifiersForSuggestionSubtype:805 photoLibrary:v46];

  v48 = sub_1B3C9C988();
  sub_1B37F77E4(v48);
  v49 = [v79 photoLibrary];
  v50 = [v49 librarySpecificFetchOptions];

  v82[0] = MEMORY[0x1E69E7CC0];
  sub_1B3C9D428();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  sub_1B3C9D408();
  OUTLINED_FUNCTION_4_25();
  sub_1B3C9D438();
  OUTLINED_FUNCTION_4_25();
  sub_1B3C9D448();
  sub_1B3C9D418();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  sub_1B3C9D408();
  OUTLINED_FUNCTION_4_25();
  sub_1B3C9D438();
  OUTLINED_FUNCTION_4_25();
  sub_1B3C9D448();
  sub_1B3C9D418();
  sub_1B37FA6B4(v82[0], v50);
  v51 = objc_opt_self();

  sub_1B370B940(v52);
  v53 = sub_1B3C9C778();

  v81 = v50;
  v54 = [v51 fetchPersonsWithLocalIdentifiers:v53 options:?];

  [v79 setVipPersonsFetchResult_];
  v55 = [v54 fetchedObjects];
  [v79 setVipPersons_];

  v56 = sub_1B3C9CAA8();
  if (os_log_type_enabled(oslog, v56))
  {
    v57 = OUTLINED_FUNCTION_9_0();
    v58 = OUTLINED_FUNCTION_8_2();
    v82[0] = v58;
    *v57 = 136315138;

    v59 = sub_1B3C9C998();
    v61 = v60;

    v62 = sub_1B3749364(v59, v61, v82);
    v33 = v79;

    *(v57 + 4) = v62;
    _os_log_impl(&dword_1B36F3000, oslog, v56, "[AmbientPhotoFramePeoplePickerDataSource] VIP: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    OUTLINED_FUNCTION_1_31();
    MEMORY[0x1B8C6EC70]();
    OUTLINED_FUNCTION_1_31();
    MEMORY[0x1B8C6EC70]();
  }

  sub_1B37F69A4(v63, v78, sub_1B37F8550, sub_1B37F8C90);

  sub_1B370B940(v64);
  v65 = sub_1B3C9C778();

  v66 = [v51 fetchPersonsWithLocalIdentifiers:v65 options:v81];

  [v33 setNonVIPPersonsFetchResult_];
  v67 = [v66 fetchedObjects];
  [v33 setNonVIPPersons_];

  v68 = sub_1B3C9CAA8();
  if (os_log_type_enabled(oslog, v68))
  {
    v69 = OUTLINED_FUNCTION_9_0();
    v70 = OUTLINED_FUNCTION_8_2();
    v82[0] = v70;
    *v69 = 136315138;
    v71 = sub_1B3C9C998();
    v73 = v72;

    v74 = sub_1B3749364(v71, v73, v82);

    *(v69 + 4) = v74;
    _os_log_impl(&dword_1B36F3000, oslog, v68, "[AmbientPhotoFramePeoplePickerDataSource] non-VIP: %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v70);
    OUTLINED_FUNCTION_1_31();
    MEMORY[0x1B8C6EC70]();
    OUTLINED_FUNCTION_1_31();
    MEMORY[0x1B8C6EC70]();
  }

  else
  {
  }
}

uint64_t sub_1B37F77E4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1B3734AC0(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

id sub_1B37F7970()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedPeopleRequester____lazy_storage___peoplePickerDataSource;
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedPeopleRequester____lazy_storage___peoplePickerDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedPeopleRequester____lazy_storage___peoplePickerDataSource);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for AmbientPhotoFramePeoplePickerDataSource()) initWithPhotoLibrary_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1B37F79F0(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedPeopleRequester____lazy_storage___peoplePickerDataSource] = 0;
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedPeopleRequester_assetsContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855998);
  __swift_storeEnumTagSinglePayload(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedPeopleRequester_photoLibrary] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AmbientPhotoFrameCuratedPeopleRequester();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1B37F7AA4()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8559C0);
  *v3 = v0;
  v3[1] = sub_1B37F7BAC;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0x5074736575716572, 0xEF2928656C706F65, sub_1B37FAA0C, v2, v4);
}

uint64_t sub_1B37F7BAC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1B37F7CE4;
  }

  else
  {

    v2 = sub_1B37F7CC8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B37F7CE4()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1B37F7D48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8559B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855998);
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedPeopleRequester_assetsContinuation;
  swift_beginAccess();
  sub_1B37FA99C(v6, a2 + v8);
  swift_endAccess();
  v9 = sub_1B37F7970();
  [v9 addChangeObserver_];

  return [*(a2 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedPeopleRequester____lazy_storage___peoplePickerDataSource) startBackgroundFetch];
}

char *sub_1B37F7E8C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855998);
  v46 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8559B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v45 - v8;
  v10 = sub_1B37F7970();
  v11 = sub_1B37FA640(v10, &selRef_vipPersons);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = v11;
    v14 = sub_1B3711890(v11);
    if (v14)
    {
      v15 = v14;
      v53 = v12;
      result = OUTLINED_FUNCTION_7_22(v14);
      if (v15 < 0)
      {
        __break(1u);
        goto LABEL_30;
      }

      v47 = v9;
      v48 = v6;
      v49 = v2;
      v50 = v0;
      v17 = 0;
      v12 = v53;
      do
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1B8C6A930](v17, v13);
        }

        else
        {
          v18 = *(v13 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = [v19 localIdentifier];
        v21 = sub_1B3C9C5E8();
        v23 = v22;

        v53 = v12;
        v25 = *(v12 + 16);
        v24 = *(v12 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1B37EABC0((v24 > 1), v25 + 1, 1);
          v12 = v53;
        }

        ++v17;
        *(v12 + 16) = v25 + 1;
        v26 = v12 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v23;
      }

      while (v15 != v17);

      v2 = v49;
      v1 = v50;
      v9 = v47;
      v6 = v48;
    }

    else
    {
    }
  }

  v27 = sub_1B37FA640(*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedPeopleRequester____lazy_storage___peoplePickerDataSource), &selRef_nonVIPPersons);
  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    v29 = v27;
    v30 = sub_1B3711890(v27);
    if (v30)
    {
      v31 = v30;
      v53 = v28;
      result = OUTLINED_FUNCTION_7_22(v30);
      if ((v31 & 0x8000000000000000) == 0)
      {
        v47 = v9;
        v48 = v6;
        v49 = v2;
        v50 = v1;
        v32 = 0;
        v28 = v53;
        do
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v33 = MEMORY[0x1B8C6A930](v32, v29);
          }

          else
          {
            v33 = *(v29 + 8 * v32 + 32);
          }

          v34 = v33;
          v35 = [v34 localIdentifier];
          v36 = sub_1B3C9C5E8();
          v38 = v37;

          v53 = v28;
          v40 = *(v28 + 16);
          v39 = *(v28 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_1B37EABC0((v39 > 1), v40 + 1, 1);
            v28 = v53;
          }

          ++v32;
          *(v28 + 16) = v40 + 1;
          v41 = v28 + 16 * v40;
          *(v41 + 32) = v36;
          *(v41 + 40) = v38;
        }

        while (v31 != v32);

        v2 = v49;
        v1 = v50;
        v9 = v47;
        v6 = v48;
        goto LABEL_25;
      }

LABEL_30:
      __break(1u);
      return result;
    }
  }

LABEL_25:
  v42 = OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedPeopleRequester_assetsContinuation;
  swift_beginAccess();
  sub_1B37FA8C4(v1 + v42, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v2))
  {

    sub_1B37FA934(v9);
  }

  else
  {
    v44 = v45;
    v43 = v46;
    (*(v46 + 16))(v45, v9, v2);
    sub_1B37FA934(v9);
    v51 = v12;
    v52 = v28;
    sub_1B3C9C868();
    (*(v43 + 8))(v44, v2);
  }

  __swift_storeEnumTagSinglePayload(v6, 1, 1, v2);
  swift_beginAccess();
  sub_1B37FA99C(v6, v1 + v42);
  return swift_endAccess();
}

id sub_1B37F83A4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1B37F8438(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(a1 + 48) + ((v9 << 9) | (8 * v10)));
        v12 = sub_1B374A554();

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_1B37F8550(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1B374A6CC(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1B37F867C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v62 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v5 = a1 + 56;
    v4 = *(a1 + 56);
    v6 = -1;
    v7 = -1 << *(a1 + 32);
    v54 = ~v7;
    if (-v7 < 64)
    {
      v8 = ~(-1 << -v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & v4;
    v10 = (63 - v7) >> 6;
    v55 = (a2 + 56);

    v12 = 0;
    v50 = v10;
    v56 = v3;
    v52 = v11;
    v51 = v5;
    if (v9)
    {
      while (2)
      {
        v13 = v12;
LABEL_11:
        v15 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v2 = *(*(v11 + 48) + ((v13 << 9) | (8 * v15)));
        v57 = v11;
        v58 = v5;
        v59 = v54;
        v60 = v13;
        v61 = v9;
        sub_1B3C9C5E8();
        sub_1B3C9D7C8();
        v53 = v2;
        sub_1B3C9C668();
        v16 = sub_1B3C9D7F8();

        v17 = ~(-1 << *(v3 + 32));
        while (1)
        {
          v5 = v16 & v17;
          v10 = v5 >> 6;
          v6 = 1 << v5;
          if (((1 << v5) & v55[v5 >> 6]) == 0)
          {
            break;
          }

          v18 = sub_1B3C9C5E8();
          v20 = v19;
          if (v18 == sub_1B3C9C5E8() && v20 == v21)
          {

LABEL_24:
            v3 = v56;
            v25 = *(v56 + 32);
            v47[0] = ((1 << v25) + 63) >> 6;
            v2 = (8 * v47[0]);
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_51;
            }

            while (1)
            {
              v47[1] = v47;
              MEMORY[0x1EEE9AC00](v24);
              v5 = v47 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v5, v55, v2);
              v26 = *(v5 + 8 * v10) & ~v6;
              v27 = *(v3 + 16);
              v49 = v5;
              *(v5 + 8 * v10) = v26;
              v28 = v27 - 1;
              v29 = v52;
              v30 = v51;
              v31 = v50;
LABEL_26:
              v48 = v28;
LABEL_27:
              while (v9)
              {
LABEL_32:
                v33 = __clz(__rbit64(v9));
                v9 &= v9 - 1;
                v34 = *(*(v29 + 48) + ((v13 << 9) | (8 * v33)));
                v57 = v29;
                v58 = v30;
                v59 = v54;
                v60 = v13;
                v61 = v9;
                sub_1B3C9C5E8();
                sub_1B3C9D7C8();
                v53 = v34;
                sub_1B3C9C668();
                v5 = sub_1B3C9D7F8();

                v35 = ~(-1 << *(v3 + 32));
                while (1)
                {
                  v2 = (v5 & v35);
                  v10 = (v5 & v35) >> 6;
                  v6 = 1 << (v5 & v35);
                  if ((v6 & v55[v10]) == 0)
                  {

                    v3 = v56;
                    v29 = v52;
                    v30 = v51;
                    v31 = v50;
                    goto LABEL_27;
                  }

                  v36 = sub_1B3C9C5E8();
                  v38 = v37;
                  v39 = sub_1B3C9C5E8();
                  v5 = v40;
                  if (v36 == v39 && v38 == v40)
                  {
                    break;
                  }

                  v42 = sub_1B3C9D6A8();

                  v5 = v2 + 1;
                  if (v42)
                  {

                    goto LABEL_42;
                  }
                }

LABEL_42:
                v43 = v49[v10];
                v49[v10] = v43 & ~v6;
                v3 = v56;
                v29 = v52;
                v30 = v51;
                v31 = v50;
                if ((v43 & v6) != 0)
                {
                  v28 = v48 - 1;
                  if (__OFSUB__(v48, 1))
                  {
                    __break(1u);
                  }

                  if (v48 == 1)
                  {

                    v3 = MEMORY[0x1E69E7CD0];
                    goto LABEL_47;
                  }

                  goto LABEL_26;
                }
              }

              while (1)
              {
                v32 = v13 + 1;
                if (__OFADD__(v13, 1))
                {
                  break;
                }

                if (v32 >= v31)
                {
                  v57 = v29;
                  v58 = v30;
                  v59 = v54;
                  v60 = v13;
                  v61 = 0;
                  v3 = sub_1B37F96B8(v49, v47[0], v48, v3);
                  goto LABEL_47;
                }

                v9 = *(v30 + 8 * v32);
                ++v13;
                if (v9)
                {
                  v13 = v32;
                  goto LABEL_32;
                }
              }

              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v45 = swift_slowAlloc();
            v46 = sub_1B37F95A8(v45, v47[0], v55, v47[0], v3, v5, &v57);

            MEMORY[0x1B8C6EC70](v45, -1, -1);
            v3 = v46;
            goto LABEL_47;
          }

          v23 = sub_1B3C9D6A8();

          if (v23)
          {

            goto LABEL_24;
          }

          v16 = v5 + 1;
        }

        v12 = v13;
        v3 = v56;
        v11 = v52;
        v5 = v51;
        v10 = v50;
        v6 = -1;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v14 = v12;
    while (1)
    {
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_50;
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = *(v5 + 8 * v13);
      ++v14;
      if (v9)
      {
        goto LABEL_11;
      }
    }

LABEL_47:
    sub_1B36FD718();
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v3;
}

uint64_t sub_1B37F8C90(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v56 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        sub_1B3C9D7C8();

        sub_1B3C9C668();
        v20 = sub_1B3C9D7F8();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v22 = (*(v5 + 48) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (sub_1B3C9D6A8() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = *(v5 + 32);
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v45 = &v43;
              MEMORY[0x1EEE9AC00](v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = *(v5 + 16);
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                sub_1B3C9D7C8();

                sub_1B3C9C668();
                v34 = sub_1B3C9D7F8();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (*(v5 + 48) + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = sub_1B3C9D6A8();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = MEMORY[0x1E69E7CD0];
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = sub_1B37F98F4(v48, v44, v46, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = sub_1B37F9630(v41, v44, (v5 + 56), v44, v5, v7, v52);

            MEMORY[0x1B8C6EC70](v41, -1, -1);
            v47 = v53;
            v5 = v42;
            goto LABEL_44;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_1B36FD718();
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v5;
}

void sub_1B37F9168(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v29 = a3 + 56;
  v27 = a5;
  while (2)
  {
    v25 = v7;
    do
    {
LABEL_3:
      v8 = a5[3];
      v9 = a5[4];
      if (!v9)
      {
        while (1)
        {
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v10 >= ((a5[2] + 64) >> 6))
          {
            a5[3] = v8;
            a5[4] = 0;

            sub_1B37F96B8(a1, a2, v25, a3);
            return;
          }

          v9 = *(a5[1] + 8 * v10);
          ++v8;
          if (v9)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

      v10 = a5[3];
LABEL_8:
      v11 = *(*(*a5 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));
      a5[3] = v10;
      a5[4] = (v9 - 1) & v9;
      sub_1B3C9C5E8();
      sub_1B3C9D7C8();
      v28 = v11;
      sub_1B3C9C668();
      v12 = sub_1B3C9D7F8();

      v13 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v14 = v12 & v13;
        v15 = (v12 & v13) >> 6;
        v16 = 1 << (v12 & v13);
        if ((v16 & *(v29 + 8 * v15)) == 0)
        {

          a5 = v27;
          goto LABEL_3;
        }

        v17 = sub_1B3C9C5E8();
        v19 = v18;
        if (v17 == sub_1B3C9C5E8() && v19 == v20)
        {
          break;
        }

        v22 = sub_1B3C9D6A8();

        v12 = v14 + 1;
        if (v22)
        {

          goto LABEL_18;
        }
      }

LABEL_18:
      a5 = v27;
      v23 = a1[v15];
      a1[v15] = v23 & ~v16;
    }

    while ((v23 & v16) == 0);
    v7 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
LABEL_24:
      __break(1u);
      return;
    }

    if (v25 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1B37F93BC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_1B3C9D7C8();

    sub_1B3C9C668();
    v16 = sub_1B3C9D7F8();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_1B3C9D6A8();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_1B37F98F4(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1B37F95A8(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1B37F9168(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1B37F9630(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1B37F93BC(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1B37F96B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8559A0);
  result = sub_1B3C9D358();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v28 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v29 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_1B3C9C5E8();
    sub_1B3C9D7C8();
    v17 = v16;
    sub_1B3C9C668();
    v18 = sub_1B3C9D7F8();

    v19 = -1 << *(v9 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v28;
    v10 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v29 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B37F98F4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852020);
  result = sub_1B3C9D358();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v17 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v18 = *v17;
    v19 = v17[1];
    sub_1B3C9D7C8();

    sub_1B3C9C668();
    result = sub_1B3C9D7F8();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v18;
    v28[1] = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    ++v14;
    if (a1[v11])
    {
      OUTLINED_FUNCTION_27_0();
      v10 = v16 & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B37F9B08(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1B383BC3C(0, v6, v8);
    v9 = sub_1B37F9E00(v8, v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1B37F9D70(v11, v6, a2, a1);

    MEMORY[0x1B8C6EC70](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_1B37F9CD0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    sub_1B37FA470(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_1B37F9D70(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1B37F9E00(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1B37F9E00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      sub_1B3C9D7C8();

      sub_1B3C9C668();
      v40 = sub_1B3C9D7F8();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = sub_1B3C9D6A8();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(v52 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        return sub_1B37F98F4(v52, a2, v53, v5);
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_1B3C9D7C8();

      sub_1B3C9C668();
      v18 = sub_1B3C9D7F8();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = sub_1B3C9D6A8();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      v52[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1B37FA1A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v42 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = (8 * v8);

  if (v7 > 0xD)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v35 = v3;
    v33 = &v33;
    MEMORY[0x1EEE9AC00](v10);
    v34 = v8;
    v36 = (&v33 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1B383BC3C(0, v8, v36);
    v37 = 0;
    v38 = v5;
    v11 = 0;
    v8 = v5;
    OUTLINED_FUNCTION_0_31();
    v3 = v13 >> 6;
LABEL_3:
    while (v12)
    {
      OUTLINED_FUNCTION_6_21();
LABEL_10:
      if (*(a2 + 16))
      {
        v39 = v14 | (v11 << 6);
        v40 = v15;
        v19 = (*(v5 + 48) + 16 * v39);
        v21 = *v19;
        v20 = v19[1];
        sub_1B3C9D7C8();

        sub_1B3C9C668();
        v9 = v41;
        sub_1B3C9D7F8();
        OUTLINED_FUNCTION_5_23();
        while (1)
        {
          v23 = v22 & v41;
          if (((*(a2 + 56 + (((v22 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & (&vars0 + 96))) & 1) == 0)
          {
            break;
          }

          v24 = (*(a2 + 48) + 16 * v23);
          if (*v24 != v21 || v24[1] != v20)
          {
            v26 = sub_1B3C9D6A8();
            v22 = v23 + 1;
            if ((v26 & 1) == 0)
            {
              continue;
            }
          }

          v5 = v38;
          v12 = v40;
          goto LABEL_3;
        }

        v5 = v38;
      }

      OUTLINED_FUNCTION_3_28();
      *(v36 + v27) |= v28;
      if (__OFADD__(v37++, 1))
      {
        __break(1u);
LABEL_23:
        v30 = sub_1B37F98F4(v36, v34, v37, v5);
        goto LABEL_24;
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_23;
      }

      ++v16;
      if (*(v8 + 8 * v11))
      {
        OUTLINED_FUNCTION_27_0();
        v15 = v18 & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_26:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v32 = swift_slowAlloc();

  v30 = sub_1B37F9CD0(v32, v8, v5, a2);

  OUTLINED_FUNCTION_1_31();
  MEMORY[0x1B8C6EC70]();
LABEL_24:
  swift_bridgeObjectRelease_n();
  return v30;
}

void sub_1B37FA470(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = 0;
  v6 = 0;
  OUTLINED_FUNCTION_0_31();
  v9 = v8 >> 6;
  v11 = v10 + 56;
LABEL_2:
  while (v7)
  {
    OUTLINED_FUNCTION_6_21();
LABEL_9:
    if (*(a4 + 16))
    {
      v33 = v13;
      v17 = (*(a3 + 48) + 16 * (v12 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      sub_1B3C9D7C8();

      sub_1B3C9C668();
      sub_1B3C9D7F8();
      OUTLINED_FUNCTION_5_23();
      while (1)
      {
        v21 = v20 & v32;
        if (((*(v11 + (((v20 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v32)) & 1) == 0)
        {
          break;
        }

        v22 = (*(a4 + 48) + 16 * v21);
        if (*v22 != v19 || v22[1] != v18)
        {
          v24 = sub_1B3C9D6A8();
          v20 = v21 + 1;
          if ((v24 & 1) == 0)
          {
            continue;
          }
        }

        v7 = v33;
        goto LABEL_2;
      }
    }

    OUTLINED_FUNCTION_3_28();
    *(a1 + v25) |= v26;
    if (__OFADD__(v30++, 1))
    {
      __break(1u);
LABEL_22:

      sub_1B37F98F4(a1, a2, v30, a3);

      return;
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v9)
    {
      goto LABEL_22;
    }

    ++v14;
    if (*(a3 + 8 * v6))
    {
      OUTLINED_FUNCTION_27_0();
      v13 = v16 & v15;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1B37FA640(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  sub_1B3710718(0, &qword_1EB8559B8);
  v4 = sub_1B3C9C788();

  return v4;
}

void sub_1B37FA6B4(uint64_t a1, void *a2)
{
  sub_1B3710718(0, &qword_1EB852330);
  v3 = sub_1B3C9C778();

  [a2 setIncludedDetectionTypes_];
}

uint64_t type metadata accessor for AmbientPhotoFrameCuratedPeopleRequester()
{
  result = qword_1EB855980;
  if (!qword_1EB855980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B37FA7B8()
{
  sub_1B37FA860();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B37FA860()
{
  if (!qword_1EB855990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB855998);
    v0 = sub_1B3C9D198();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB855990);
    }
  }
}

uint64_t sub_1B37FA8C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8559B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B37FA934(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8559B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B37FA99C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8559B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *OUTLINED_FUNCTION_7_22(uint64_t a1)
{

  return sub_1B37EABC0(0, a1 & ~(a1 >> 63), 0);
}

uint64_t sub_1B37FAA60(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8518D0);
  v4 = OUTLINED_FUNCTION_11_15();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1B37FAB04(void *a1)
{
  v1 = a1;
  v2 = PHPublicEventInfo.category.getter();

  return v2;
}

uint64_t PHPublicEventInfo.category.getter()
{
  LODWORD(result) = [v0 eventCategory];
  if (result >= 9)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1B37FAC00()
{
  v0 = sub_1B3C9A558();
  __swift_allocate_value_buffer(v0, qword_1EB84F650);
  __swift_project_value_buffer(v0, qword_1EB84F650);
  sub_1B3C9A518();
  return sub_1B3C9A548();
}

uint64_t sub_1B37FAC70()
{
  if (*(v0 + OBJC_IVAR___PUShazamEventsController_task))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855A70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8518D0);
    sub_1B3C9C8D8();
  }

  return result;
}

void *sub_1B37FAD3C()
{
  v1 = *(v0 + OBJC_IVAR___PUShazamEventsController_assetViewModel);
  v2 = v1;
  return v1;
}

void sub_1B37FAE90(void *a1)
{
  v1[OBJC_IVAR___PUShazamEventsController_isEnabled] = 0;
  *&v1[OBJC_IVAR___PUShazamEventsController_updater] = 0;
  *&v1[OBJC_IVAR___PUShazamEventsController_assetViewModelObservation] = 0;
  *&v1[OBJC_IVAR___PUShazamEventsController_browsingViewModelObservation] = 0;
  *&v1[OBJC_IVAR___PUShazamEventsController_task] = 0;
  *&v1[OBJC_IVAR___PUShazamEventsController_assetViewModel] = 0;
  *&v1[OBJC_IVAR___PUShazamEventsController_browsingViewModel] = a1;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for ShazamEventsController();
  v3 = a1;
  v15[3] = v16.super_class;
  v15[0] = objc_msgSendSuper2(&v16, sel_init);
  v4 = objc_allocWithZone(MEMORY[0x1E69C4600]);
  v5 = v15[0];
  v6 = sub_1B37FDB0C(v15, sel_setNeedsUpdate);
  v7 = OBJC_IVAR___PUShazamEventsController_updater;
  v8 = *&v5[OBJC_IVAR___PUShazamEventsController_updater];
  *&v5[OBJC_IVAR___PUShazamEventsController_updater] = v6;
  v9 = v6;

  if (v9)
  {
    [v9 addUpdateSelector:sel_updateAssetViewModel needsUpdate:{1, v15[0]}];

    v10 = *&v5[v7];
    if (v10)
    {
      [v10 addUpdateSelector:sel_updateCurrentEvent needsUpdate:1];
      v11 = *&v5[OBJC_IVAR___PUShazamEventsController_browsingViewModel];
      OUTLINED_FUNCTION_20();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      objc_allocWithZone(PUBrowsingViewModelObservation);
      v12 = v11;
      v13 = sub_1B37FD9DC();
      v14 = *&v5[OBJC_IVAR___PUShazamEventsController_browsingViewModelObservation];
      *&v5[OBJC_IVAR___PUShazamEventsController_browsingViewModelObservation] = v13;

      sub_1B37FC724();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1B37FB094()
{
  if (*&v0[OBJC_IVAR___PUShazamEventsController_task])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855A70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8518D0);
    sub_1B3C9C8D8();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShazamEventsController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B37FB1F0()
{
  OUTLINED_FUNCTION_0_0();
  v1[9] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20);
  v1[10] = swift_task_alloc();
  sub_1B3C9C888();
  v1[11] = sub_1B3C9C878();
  OUTLINED_FUNCTION_42();
  v3 = sub_1B3C9C848();
  v1[12] = v3;
  v1[13] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B37FB2B8, v3, v2);
}

uint64_t sub_1B37FB2B8()
{
  v1 = v0[9];
  if (*(v1 + OBJC_IVAR___PUShazamEventsController_isEnabled) != 1 || (v2 = OBJC_IVAR___PUShazamEventsController_task, *(v1 + OBJC_IVAR___PUShazamEventsController_task)))
  {

    OUTLINED_FUNCTION_1();
LABEL_4:

    return v3();
  }

  v5 = *(v1 + OBJC_IVAR___PUShazamEventsController_assetViewModel);
  v0[14] = v5;
  if (!v5)
  {

LABEL_24:
    sub_1B37FDB88();
    OUTLINED_FUNCTION_11_15();
    *v37 = 0;
    swift_willThrow();
LABEL_25:

    OUTLINED_FUNCTION_1();
    goto LABEL_4;
  }

  v6 = v5;
  v7 = [v6 asset];
  v0[15] = v7;
  if (!v7)
  {
    goto LABEL_22;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
LABEL_22:

LABEL_23:

    goto LABEL_24;
  }

  v9 = v8;
  v10 = sub_1B37FDBDC(v8);
  if (!v11)
  {

    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v12 = v10;
  v13 = v11;
  v14 = [v9 photoLibrary];
  if (!v14 || (v15 = v14, v16 = [v14 photoAnalysisClient], v0[16] = v16, v15, !v16))
  {

    swift_unknownObjectRelease();

    goto LABEL_23;
  }

  v18 = v0[9];
  v17 = v0[10];
  sub_1B3C9C898();
  v19 = sub_1B3C9C8B8();
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v16;
  v20[5] = v12;
  v20[6] = v13;
  v20[7] = v18;
  v20[8] = v6;
  v21 = v6;
  v22 = v16;
  v23 = v18;
  v24 = OUTLINED_FUNCTION_18_16();
  v28 = sub_1B37FC31C(v24, v25, v26, v27, v20);
  sub_1B37FDD04(v17);
  sub_1B37FAC70();
  *(v1 + v2) = v28;

  sub_1B3710718(0, &qword_1EB84F208);
  v29 = [swift_getObjCClassFromMetadata() sharedInstance];
  LOBYTE(v28) = [v29 canShowInternalUI];

  v30 = 0;
  if (v28)
  {
    sub_1B3710718(0, &qword_1EB84F860);
    v31 = [swift_getObjCClassFromMetadata() sharedInstance];
    v30 = [v31 forcePublicEventForAllAssets];
  }

  *(v0 + 160) = v30;
  v32 = *(v1 + v2);
  v0[17] = v32;
  if (!v32)
  {

    v38 = *(v0 + 160);
    v39 = v0[14];
    OUTLINED_FUNCTION_20();
    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = v38;
    OUTLINED_FUNCTION_3_29(v41);
    v0[2] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_2_32(COERCE_DOUBLE(1107296256));
    v0[4] = v42;
    v0[5] = &block_descriptor_54_0;
    v43 = _Block_copy(v0 + 2);

    [v39 performChanges_];
    _Block_release(v43);
    v44 = v0[16];
    v45 = v0[14];
    sub_1B37FDB88();
    v46 = OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_12_16(v46, v47);

    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v33 = swift_task_alloc();
  v0[18] = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855A70);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8518D0);
  *v33 = v0;
  v33[1] = sub_1B37FB7A4;
  v36 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 8, v32, v34, v35, v36);
}

uint64_t sub_1B37FB7A4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 152) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_1B37FBA8C;
  }

  else
  {
    v7 = sub_1B37FB8F4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B37FB8F4()
{
  OUTLINED_FUNCTION_15_18();

  v1 = *(v0 + 160);
  v2 = v0[14];
  v3 = v0[8];
  OUTLINED_FUNCTION_20();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v1;
  OUTLINED_FUNCTION_3_29(v5);
  v0[2] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_2_32(COERCE_DOUBLE(1107296256));
  v0[4] = v6;
  v0[5] = &block_descriptor_54_0;
  v7 = _Block_copy(v0 + 2);
  v8 = v3;

  [v2 performChanges_];
  _Block_release(v7);
  v9 = v0[16];
  v10 = v0[14];
  if (v3)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B37FDB88();
    v12 = OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_12_16(v12, v13);

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_1();

  return v11();
}

uint64_t sub_1B37FBA8C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_1B37FBB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[19] = a1;
  v8[20] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B37FBB3C, 0, 0);
}

uint64_t sub_1B37FBB3C()
{
  OUTLINED_FUNCTION_15_18();
  v1 = [objc_allocWithZone(MEMORY[0x1E69BE620]) initWithServiceProvider_];
  v0[25] = v1;
  v2 = sub_1B3C9C5A8();
  v0[26] = v2;
  v3 = sub_1B3C9C5A8();
  v0[27] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B37FBCCC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855A78);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B37FC294;
  v0[13] = &block_descriptor_57;
  v0[14] = v4;
  [v1 requestPublicEventDataForAssetUUID:v2 operationID:v3 reply:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B37FBCCC()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 224) = v4;
  if (v4)
  {
    v5 = sub_1B37FC214;
  }

  else
  {
    v5 = sub_1B37FBDD0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B37FBDD0()
{
  v25 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CC0];
  v5 = v2 + 40;
  v6 = *(v2 + 16);
  while (v6 != v3)
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
LABEL_20:
      MEMORY[0x1B8C6A930](0, v4);
      goto LABEL_11;
    }

    sub_1B3710718(0, &qword_1EB855A80);
    v7 = OUTLINED_FUNCTION_30();
    sub_1B3710718(v7, &qword_1EB855A88);
    v8 = OUTLINED_FUNCTION_13_16();
    sub_1B37FDE00(v8, v9);
    v0 = sub_1B3C9CC18();
    if (!v0)
    {
      v14 = *(v23 + 200);

      sub_1B37FDB88();
      v15 = OUTLINED_FUNCTION_11_15();
      OUTLINED_FUNCTION_12_16(v15, v16);
      v17 = OUTLINED_FUNCTION_13_16();
      sub_1B377659C(v17, v18);

      OUTLINED_FUNCTION_1();

      return v19();
    }

    v10 = OUTLINED_FUNCTION_13_16();
    v12 = sub_1B377659C(v10, v11);
    MEMORY[0x1B8C69CE0](v12);
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B3C9C7E8();
    }

    v1 = &v24;
    sub_1B3C9C808();
    v4 = v24;
    v5 += 16;
    ++v3;
  }

  if (sub_1B3711890(v4))
  {
    v1 = (v4 & 0xC000000000000001);
    sub_1B37ED0BC(0, (v4 & 0xC000000000000001) == 0, v4);
    v0 = v23;
    if ((v4 & 0xC000000000000001) != 0)
    {
      goto LABEL_20;
    }

    v13 = *(v4 + 32);
LABEL_11:
    OUTLINED_FUNCTION_42();

    goto LABEL_16;
  }

  v1 = 0;
  v0 = v23;
LABEL_16:
  *(v0 + 232) = v1;
  sub_1B3C9C888();
  *(v0 + 240) = sub_1B3C9C878();
  OUTLINED_FUNCTION_42();
  v22 = sub_1B3C9C848();

  return MEMORY[0x1EEE6DFA0](sub_1B37FC08C, v22, v21);
}

uint64_t sub_1B37FC08C()
{
  OUTLINED_FUNCTION_0_0();
  v1 = *(v0 + 184);

  v2 = *(v1 + OBJC_IVAR___PUShazamEventsController_assetViewModel);
  *(v0 + 248) = v2;
  v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B37FC10C, 0, 0);
}

uint64_t sub_1B37FC10C()
{
  v1 = *(v0 + 248);
  if (v1 && (v2 = *(v0 + 192), sub_1B3710718(0, &qword_1EB84F1F8), v3 = v2, v4 = sub_1B3C9CFA8(), v1, v3, (v4 & 1) != 0))
  {
    v5 = *(v0 + 232);
    v6 = *(v0 + 152);

    *v6 = v5;
    OUTLINED_FUNCTION_1();
  }

  else
  {
    v8 = *(v0 + 232);
    v9 = *(v0 + 200);
    sub_1B37FDB88();
    OUTLINED_FUNCTION_11_15();
    *v10 = 2;
    swift_willThrow();

    OUTLINED_FUNCTION_1();
  }

  return v7();
}

uint64_t sub_1B37FC214()
{
  v1 = v0[27];
  v3 = v0[25];
  v2 = v0[26];
  swift_willThrow();

  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_1B37FC294(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_1B37FAA60(v4, a3);
  }

  v6 = sub_1B3C9C788();

  return sub_1B37FAAE4(v4, v6);
}

uint64_t sub_1B37FC31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1B37FDD78(a3, v21 - v9);
  v11 = sub_1B3C9C8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B37FDD04(v10);
  }

  else
  {
    sub_1B3C9C8A8();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1B3C9C848();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1B3C9C638() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855A70);
      v18 = (v16 | v14);
      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855A70);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

void sub_1B37FC55C(uint64_t a1, void *a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR___PUShazamEventsController_assetViewModel);
    v8 = v7;

    if (v7)
    {
      if (a2)
      {
        v9 = a2;
      }

      else if (a3)
      {
        v9 = [objc_allocWithZone(type metadata accessor for PXSyntheticEventInfo()) init];
      }

      else
      {
        v9 = 0;
      }

      v10 = a2;
      [v8 setShazamEventInfo_];
      swift_unknownObjectRelease();
    }
  }
}

void sub_1B37FC654()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___PUShazamEventsController_updater);
    v3 = v2;

    if (v2)
    {
      [v3 updateIfNeeded];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1B37FC724()
{
  v1 = v0;
  v2 = [*&v0[OBJC_IVAR___PUShazamEventsController_browsingViewModel] assetViewModelForCurrentAssetReference];
  v3 = *&v0[OBJC_IVAR___PUShazamEventsController_assetViewModel];
  v38 = v2;
  if (v3)
  {
    if (!v2)
    {
      v27 = sub_1B37FD11C();
      v35 = OUTLINED_FUNCTION_10_18(v27, v28, v29, v30, v31, v32, v33, v34, v37, v38);

      v16 = 0;
      goto LABEL_10;
    }

    sub_1B3710718(0, &qword_1EB84F1F8);
    v4 = v3;
    v5 = v38;
    v6 = sub_1B3C9CFA8();

    if (v6)
    {
      goto LABEL_11;
    }

    v7 = sub_1B37FD11C();
    OUTLINED_FUNCTION_10_18(v7, v8, v9, v10, v11, v12, v13, v14, v37, v38);
    v15 = v5;

    v16 = v38;
    if (!v38)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v2)
    {
      goto LABEL_11;
    }

    v17 = sub_1B37FD11C();
    v25 = OUTLINED_FUNCTION_10_18(v17, v18, v19, v20, v21, v22, v23, v24, v37, v38);
  }

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = objc_allocWithZone(PUAssetViewModelObservation);
  v16 = sub_1B37FDA74();
LABEL_10:
  v36 = *&v1[OBJC_IVAR___PUShazamEventsController_assetViewModelObservation];
  *&v1[OBJC_IVAR___PUShazamEventsController_assetViewModelObservation] = v16;

LABEL_11:
  sub_1B37FC978();
}

void sub_1B37FC8C4(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = a1;
      sub_1B37FD038(v4);
    }
  }
}

uint64_t sub_1B37FC978()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_1B3C9C8B8();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  OUTLINED_FUNCTION_20();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B3C9C888();

  v6 = sub_1B3C9C878();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  v7[5] = ObjectType;

  OUTLINED_FUNCTION_18_16();
  sub_1B3850B9C();
}

uint64_t sub_1B37FCAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  sub_1B3C9C888();
  v4[13] = sub_1B3C9C878();
  v6 = sub_1B3C9C848();
  v4[14] = v6;
  v4[15] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B37FCB40, v6, v5);
}

uint64_t sub_1B37FCB40()
{
  OUTLINED_FUNCTION_0_0();
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_1B37FCC5C;

    return sub_1B37FB1F0();
  }

  else
  {

    OUTLINED_FUNCTION_4_26();
    if (swift_unknownObjectWeakLoadStrong())
    {
      OUTLINED_FUNCTION_30();
      sub_1B37FAC70();
      *&v1[OBJC_IVAR___PUShazamEventsController_task] = 0;
    }

    OUTLINED_FUNCTION_1();

    return v5();
  }
}

uint64_t sub_1B37FCC5C()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_1();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    v7 = *(v3 + 112);
    v8 = *(v3 + 120);
    v9 = sub_1B37FCDF4;
  }

  else
  {

    v7 = *(v3 + 112);
    v8 = *(v3 + 120);
    v9 = sub_1B37FCD68;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1B37FCD68()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_4_26();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_30();
    sub_1B37FAC70();
    *&v0[OBJC_IVAR___PUShazamEventsController_task] = 0;
  }

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_1B37FCDF4()
{
  OUTLINED_FUNCTION_15_18();
  v18 = v0;
  v1 = *(v0 + 128);

  if (qword_1EB84F648 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 144);
  v3 = sub_1B3C9A558();
  v4 = __swift_project_value_buffer(v3, qword_1EB84F650);
  v5 = v2;
  v6 = sub_1B3C9A538();
  v7 = sub_1B3C9CAC8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 144);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_1B3C9D748();
    v4 = v13;
    v14 = sub_1B3749364(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1B36F3000, v6, v7, "Failed to get event: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x1B8C6EC70](v11, -1, -1);
    MEMORY[0x1B8C6EC70](v10, -1, -1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_4_26();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_30();
    sub_1B37FAC70();
    *&v4[OBJC_IVAR___PUShazamEventsController_task] = 0;
  }

  OUTLINED_FUNCTION_1();

  return v15();
}

void sub_1B37FD038(void *a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = a1;
    if ([v2 currentAssetDidChange])
    {
      sub_1B37FD1C4();
      goto LABEL_8;
    }
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = a1;
  if ([v5 assetContentChanged])
  {
    sub_1B37FD234();
  }

LABEL_8:
}

uint64_t sub_1B37FD11C()
{
  v1 = OBJC_IVAR___PUShazamEventsController_task;
  if (*(v0 + OBJC_IVAR___PUShazamEventsController_task))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855A70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8518D0);
    sub_1B3C9C8D8();
  }

  sub_1B37FAC70();
  *(v0 + v1) = 0;
}

id sub_1B37FD1C4()
{
  result = *(v0 + OBJC_IVAR___PUShazamEventsController_updater);
  if (result)
  {
    return [result setNeedsUpdateOf_];
  }

  __break(1u);
  return result;
}

uint64_t sub_1B37FD254(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B3C9C168();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3710718(0, &qword_1EB84FE60);
  v14 = sub_1B3C9CC88();
  OUTLINED_FUNCTION_20();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = v19;
  v16 = _Block_copy(aBlock);

  sub_1B3C9C138();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1B37D49E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B37254F8();
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v13, v8, v16);
  _Block_release(v16);

  (*(v5 + 8))(v8, v3);
  (*(v10 + 8))(v13, v20);
}

void sub_1B37FD4D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___PUShazamEventsController_assetViewModel);
    if (v2)
    {
      v3 = swift_allocObject();
      *(v3 + 16) = v1;
      aBlock[4] = sub_1B37FD844;
      aBlock[5] = v3;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B370C014;
      aBlock[3] = &block_descriptor_27;
      v4 = _Block_copy(aBlock);
      v5 = v2;
      v6 = v1;

      [v5 performChanges_];
      _Block_release(v4);
    }

    sub_1B37FD11C();
    v7 = *&v1[OBJC_IVAR___PUShazamEventsController_updater];
    if (v7)
    {
      [v7 setNeedsUpdateOf_];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1B37FD620(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR___PUShazamEventsController_assetViewModel);
  if (result)
  {
    return [result setShazamEventInfo_];
  }

  return result;
}

id sub_1B37FD714(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1B3C9C5A8();
  OUTLINED_FUNCTION_42();

  return a1;
}

id sub_1B37FD77C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXSyntheticEventInfo();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1B37FD7D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXSyntheticEventInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B37FD84C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_8_18(v1);

  return sub_1B37FCAA8(v2, v3, v4, v5);
}

uint64_t sub_1B37FD8F8()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2_1();
  *v2 = v1;

  OUTLINED_FUNCTION_1();

  return v3();
}

id sub_1B37FD9DC()
{
  OUTLINED_FUNCTION_1_32();
  v5[1] = 1107296256;
  v5[2] = sub_1B37FDFD0;
  v5[3] = &block_descriptor_62;
  v2 = _Block_copy(v5);
  v3 = [v1 initWithViewModel:v0 changeHandler:v2];

  _Block_release(v2);

  return v3;
}

id sub_1B37FDA74()
{
  OUTLINED_FUNCTION_1_32();
  v5[1] = 1107296256;
  v5[2] = sub_1B37FDFD0;
  v5[3] = &block_descriptor_37_0;
  v2 = _Block_copy(v5);
  v3 = [v1 initWithViewModel:v0 changeHandler:v2];

  _Block_release(v2);

  return v3;
}

id sub_1B37FDB0C(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  v5 = [v2 initWithTarget:sub_1B3C9D688() needsUpdateSelector:a2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v5;
}

unint64_t sub_1B37FDB88()
{
  result = qword_1EB84F670;
  if (!qword_1EB84F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F670);
  }

  return result;
}

uint64_t sub_1B37FDBDC(void *a1)
{
  v1 = [a1 uuid];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B3C9C5E8();

  return v3;
}

uint64_t sub_1B37FDC40()
{
  OUTLINED_FUNCTION_15_18();
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_8_18(v6);

  return sub_1B37FBB14(v7, v8, v9, v10, v2, v3, v4, v5);
}

uint64_t sub_1B37FDD04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B37FDD78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B37FDE00(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ShazamEventsController.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B37FDF54()
{
  result = qword_1EB855A90;
  if (!qword_1EB855A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855A90);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_29(uint64_t result)
{
  *(v1 + 48) = sub_1B37FDD6C;
  *(v1 + 56) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = a10;
  *(v10 + v11) = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_15()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_12_16(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

unint64_t sub_1B37FE084()
{
  result = qword_1EB855AA0;
  if (!qword_1EB855AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855AA0);
  }

  return result;
}

unint64_t sub_1B37FE0DC()
{
  result = qword_1EB855AA8;
  if (!qword_1EB855AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855AA8);
  }

  return result;
}

uint64_t sub_1B37FE14C()
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
  __swift_allocate_value_buffer(v6, qword_1EB878EA0);
  __swift_project_value_buffer(v6, qword_1EB878EA0);
  sub_1B3C9C538();
  sub_1B3C98178();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1B3C97F58();
}

uint64_t sub_1B37FE338()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855AC8);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855AD0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B37FF5B4();
  sub_1B3C97CA8();
  sub_1B3C97C98();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855AD8);
  sub_1B3C97C88();

  sub_1B3C97C98();
  sub_1B3C97CB8();
  return sub_1B3C97C78();
}

uint64_t sub_1B37FE4D4()
{
  OUTLINED_FUNCTION_0_0();
  v0[3] = v1;
  v0[4] = v2;
  sub_1B3C9C888();
  v0[5] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v0[6] = v4;
  v0[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B37FE568, v4, v3);
}

uint64_t sub_1B37FE568()
{
  OUTLINED_FUNCTION_0_0();
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[8] = v1;
  sub_1B37FF5B4();
  *v1 = v0;
  v1[1] = sub_1B3713898;
  v2 = v0[3];

  return MEMORY[0x1EEE2CA70](v2, 0, 0, 0, 0, 0, 1, &unk_1B3D05328);
}

uint64_t sub_1B37FE650(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1B3C98638();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_1B3C9C888();
  v2[7] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v2[8] = v5;
  v2[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B37FE744, v5, v4);
}

uint64_t sub_1B37FE744()
{
  OUTLINED_FUNCTION_0_0();
  sub_1B3C97B28();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1B37FE7E0;

  return sub_1B37FEA44();
}

uint64_t sub_1B37FE7E0()
{
  v2 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  v5 = v2[6];
  v6 = v2[5];
  v7 = v2[4];
  *v4 = *v1;
  *(v3 + 88) = v0;

  (*(v6 + 8))(v5, v7);
  v8 = v2[9];
  v9 = v2[8];
  if (v0)
  {
    v10 = sub_1B37FE9E0;
  }

  else
  {
    v10 = sub_1B37FE970;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1B37FE970()
{
  OUTLINED_FUNCTION_0_0();

  sub_1B3C97B18();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37FE9E0()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37FEA44()
{
  OUTLINED_FUNCTION_0_0();
  v0[2] = v1;
  v2 = sub_1B3C9A558();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  OUTLINED_FUNCTION_8_0(v3);
  v0[6] = swift_task_alloc();
  sub_1B3C9C888();
  v0[7] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v0[8] = v5;
  v0[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B37FEB68, v5, v4);
}

uint64_t sub_1B37FEB68()
{
  v20 = v0;
  v1 = v0[6];
  v2 = v0[2];
  v3 = sub_1B3C98638();
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 16))(v1, v2, v3);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  v5 = sub_1B3C98D08();
  v7 = v6;
  sub_1B3713154(v1);
  sub_1B3C987F8();

  v8 = sub_1B3C9A538();
  v9 = sub_1B3C9CAE8();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[3];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136446210;
    v16 = sub_1B3749364(v5, v7, &v19);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_1B36F3000, v8, v9, "Parameters: { asset: %{public}s }", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x1B8C6EC70](v15, -1, -1);
    MEMORY[0x1B8C6EC70](v14, -1, -1);
  }

  else
  {
  }

  (*(v12 + 8))(v11, v13);
  type metadata accessor for PXEditAppDependencyManager();
  v0[10] = sub_1B3C98628();
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_1B37FEDAC;

  return sub_1B37BF4B0();
}

uint64_t sub_1B37FEDAC()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    v7 = *(v3 + 64);
    v8 = *(v3 + 72);
    v9 = sub_1B37FEF20;
  }

  else
  {

    v7 = *(v3 + 64);
    v8 = *(v3 + 72);
    v9 = sub_1B37FEEB0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1B37FEEB0()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37FEF20()
{

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_1B37FEFA8()
{
  sub_1B3C97CC8();
  OUTLINED_FUNCTION_0();
  v40 = v1;
  v41 = v0;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v39 = v3 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0);
  v5 = OUTLINED_FUNCTION_8_0(v4);
  MEMORY[0x1EEE9AC00](v5);
  v38 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  OUTLINED_FUNCTION_8_0(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v10);
  v36 = v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  OUTLINED_FUNCTION_8_0(v12);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  v35 = v34 - v14;
  v15 = sub_1B3C97F38();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v21 = v20 - v19;
  v22 = sub_1B3C98188();
  v23 = OUTLINED_FUNCTION_8_0(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v24 = sub_1B3C9C598();
  v25 = OUTLINED_FUNCTION_8_0(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_8();
  v26 = sub_1B3C97F48();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_8();
  v34[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852758);
  sub_1B3C9C538();
  sub_1B3C98178();
  v28 = *MEMORY[0x1E6968DF0];
  v29 = *(v17 + 104);
  v29(v21, v28, v15);
  OUTLINED_FUNCTION_4_27();
  sub_1B3C9C538();
  sub_1B3C98178();
  v29(v21, v28, v15);
  v30 = v35;
  OUTLINED_FUNCTION_4_27();
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v26);
  v31 = sub_1B3C98638();
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v31);
  v32 = sub_1B3C97AE8();
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v32);
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v32);
  (*(v40 + 104))(v39, *MEMORY[0x1E695A500], v41);
  sub_1B374FC40();
  return sub_1B3C97B78();
}

uint64_t sub_1B37FF3F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB850090 != -1)
  {
    swift_once();
  }

  v2 = sub_1B3C97F48();
  v3 = __swift_project_value_buffer(v2, qword_1EB878EA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B37FF4A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B3714CE0;

  return sub_1B37FE4D4();
}

uint64_t sub_1B37FF540@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B37FEFA8();
  *a1 = result;
  return result;
}

uint64_t sub_1B37FF568(uint64_t a1)
{
  v2 = sub_1B37FF5B4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1B37FF5B4()
{
  result = qword_1EB855AC0;
  if (!qword_1EB855AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855AC0);
  }

  return result;
}

uint64_t sub_1B37FF608()
{
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B3714CE0;

  return sub_1B37FE650(v3, v0);
}

id OneUpActivitySharingActionPerformer.__allocating_init(actionsController:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___PUOneUpActivitySharingActionPerformer_actionsController] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id OneUpActivitySharingActionPerformer.init(actionsController:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___PUOneUpActivitySharingActionPerformer_actionsController] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Bool __swiftcall OneUpActivitySharingActionPerformer.performAction(forActivityType:assetsByAssetCollection:)(Swift::String forActivityType, Swift::OpaquePointer assetsByAssetCollection)
{
  object = forActivityType._object;
  sub_1B3C9C5E8();
  OUTLINED_FUNCTION_1_33();
  v6 = v6 && v5 == object;
  if (v6)
  {

    goto LABEL_23;
  }

  v7 = OUTLINED_FUNCTION_0_32();

  if (v7)
  {
LABEL_23:
    [*(v2 + OBJC_IVAR___PUOneUpActivitySharingActionPerformer_actionsController) performSimpleActionWithActionType_];
    return 1;
  }

  sub_1B3C9C5E8();
  OUTLINED_FUNCTION_1_33();
  if (v6 && v8 == object)
  {
  }

  else
  {
    v10 = OUTLINED_FUNCTION_0_32();

    if ((v10 & 1) == 0)
    {
      sub_1B3C9C5E8();
      OUTLINED_FUNCTION_1_33();
      if (v6 && v11 == object)
      {
      }

      else
      {
        v13 = OUTLINED_FUNCTION_0_32();

        if ((v13 & 1) == 0)
        {
          sub_1B3C9C5E8();
          OUTLINED_FUNCTION_1_33();
          if (v6 && v14 == object)
          {
          }

          else
          {
            v16 = OUTLINED_FUNCTION_0_32();

            result = 0;
            if ((v16 & 1) == 0)
            {
              return result;
            }
          }

          v20 = *(v2 + OBJC_IVAR___PUOneUpActivitySharingActionPerformer_actionsController);
          sub_1B37FF9B4(assetsByAssetCollection._rawValue);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8557F0);
          v19 = sub_1B3C9C4A8();

          [v20 performDuplicateActionWithAssetsByAssetCollection_];
          goto LABEL_30;
        }
      }

      v18 = *(v2 + OBJC_IVAR___PUOneUpActivitySharingActionPerformer_actionsController);
      sub_1B37FF9B4(assetsByAssetCollection._rawValue);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8557F0);
      v19 = sub_1B3C9C4A8();

      [v18 performActionType:40 assetsByAssetCollection:v19];
LABEL_30:

      return 1;
    }
  }

  [*(v2 + OBJC_IVAR___PUOneUpActivitySharingActionPerformer_actionsController) performSimpleActionWithActionType_];
  return 1;
}

uint64_t sub_1B37FF9B4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855AF0);
    v2 = sub_1B3C9D538();
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
    v11 = *(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v5)))));
    sub_1B37FFE2C();
    v12 = v11;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8540F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8557F0);
    swift_dynamicCast();
    result = sub_1B3C9D2F8();
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
    *(*(v2 + 56) + 8 * v16) = v25;
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

id OneUpActivitySharingActionPerformer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OneUpActivitySharingActionPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B37FFE2C()
{
  result = qword_1EB84F1A0;
  if (!qword_1EB84F1A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB84F1A0);
  }

  return result;
}

unint64_t sub_1B37FFE70()
{
  result = qword_1EB84F198;
  if (!qword_1EB84F198)
  {
    sub_1B37FFE2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F198);
  }

  return result;
}

id sub_1B37FFEC8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR___PUVitalityTransformProducer_photoKitAsset) = 0;
  *(v2 + OBJC_IVAR___PUVitalityTransformProducer_videoAsset) = 0;
  *(v2 + OBJC_IVAR___PUVitalityTransformProducer_limitingAllowed) = 0;
  v3 = (v2 + OBJC_IVAR___PUVitalityTransformProducer_assetMetadataTransform);
  v4 = *MEMORY[0x1E69E9B10];
  v5 = *(MEMORY[0x1E69E9B10] + 16);
  v6 = *(MEMORY[0x1E69E9B10] + 32);
  *v3 = *MEMORY[0x1E69E9B10];
  v3[1] = v5;
  v3[2] = v6;
  *(v2 + OBJC_IVAR___PUVitalityTransformProducer_hasProducedAssetMetadataTransform) = 0;
  v7 = (v2 + OBJC_IVAR___PUVitalityTransformProducer_computedTransform);
  *v7 = v4;
  v7[1] = v5;
  v7[2] = v6;
  *(v2 + OBJC_IVAR___PUVitalityTransformProducer_computedIsLimitingAllowed) = 0;
  v8 = (v2 + OBJC_IVAR___PUVitalityTransformProducer_didChangeHandler);
  *v8 = a1;
  v8[1] = a2;
  v10.super_class = PUVitalityTransformProducer;
  return objc_msgSendSuper2(&v10, sel_init);
}

void *sub_1B3800018()
{
  v1 = *(v0 + OBJC_IVAR___PUVitalityTransformProducer_photoKitAsset);
  v2 = v1;
  return v1;
}

void sub_1B38000C0(void *a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR___PUVitalityTransformProducer_photoKitAsset];
  if (v4)
  {
    if (a1)
    {
      sub_1B3710718(0, &qword_1EB84F770);
      v5 = v4;
      v6 = a1;
      v7 = sub_1B3C9CFA8();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  [v2 updateAssetMetadataTransform];
}

void *sub_1B38001BC()
{
  v1 = *(v0 + OBJC_IVAR___PUVitalityTransformProducer_videoAsset);
  v2 = v1;
  return v1;
}

void sub_1B3800264(void *a1, void *a2, void (*a3)(id))
{
  v6 = *(v3 + *a2);
  *(v3 + *a2) = a1;
  v5 = a1;
  a3(v6);
}

id sub_1B38002D0(id result)
{
  v2 = *&v1[OBJC_IVAR___PUVitalityTransformProducer_videoAsset];
  if (v2)
  {
    if (v2 == result)
    {
      return result;
    }

    return [v1 produceVitalityTransform];
  }

  if (result)
  {
    return [v1 produceVitalityTransform];
  }

  return result;
}

id sub_1B3800350@<X0>(_OWORD *a1@<X8>)
{
  result = [v1 computedTransform];
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  return result;
}

uint64_t sub_1B3800494()
{
  v1 = *(v0 + OBJC_IVAR___PUVitalityTransformProducer_didChangeHandler);

  return v1;
}

__n128 sub_1B38004E8@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR___PUVitalityTransformProducer_assetMetadataTransform);
  v3 = *(v1 + OBJC_IVAR___PUVitalityTransformProducer_assetMetadataTransform + 16);
  v4 = *(v1 + OBJC_IVAR___PUVitalityTransformProducer_assetMetadataTransform + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  return result;
}

id sub_1B3800560(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR___PUVitalityTransformProducer_assetMetadataTransform];
  v3 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v3;
  *(v2 + 2) = a1[2];
  return [v1 setHasProducedAssetMetadataTransform_];
}

id sub_1B380061C(id result)
{
  v2 = v1[OBJC_IVAR___PUVitalityTransformProducer_hasProducedAssetMetadataTransform];
  v1[OBJC_IVAR___PUVitalityTransformProducer_hasProducedAssetMetadataTransform] = result;
  if (v2 != v1[OBJC_IVAR___PUVitalityTransformProducer_hasProducedAssetMetadataTransform])
  {
    return [v1 produceVitalityTransform];
  }

  return result;
}

void sub_1B3800650()
{
  v1 = [v0 videoAsset];
  if (v1)
  {
    v10 = v1;
    if ([v0 hasProducedAssetMetadataTransform])
    {
      [v0 assetMetadataTransform];
      v8 = v3;
      v9 = v2;
      v7 = v4;
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1B38018D4;
      aBlock[5] = v5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B3800B1C;
      aBlock[3] = &block_descriptor_14_1;
      v6 = _Block_copy(aBlock);

      [v10 pu:v6 loadNormalizedVitalityPerspectiveTransformWithAdditionalNormalizedTransform:v9 completion:{v8, v7}];
      _Block_release(v6);
    }

    else
    {
    }
  }
}

uint64_t sub_1B38007A0(_OWORD *a1, char a2, uint64_t a3)
{
  v6 = sub_1B3C9C118();
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B3C9C168();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3710718(0, &qword_1EB84FE60);
  v12 = sub_1B3C9CC88();
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  v14 = a1[1];
  *(v13 + 32) = *a1;
  *(v13 + 48) = v14;
  *(v13 + 64) = a1[2];
  *(v13 + 80) = a2;
  aBlock[4] = sub_1B38018DC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_20_1;
  v15 = _Block_copy(aBlock);

  sub_1B3C9C138();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B37390DC(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v11, v8, v15);
  _Block_release(v15);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_1B3800AA0(uint64_t a1, __int128 *a2, char a3)
{
  v7 = a2[1];
  v8 = *a2;
  v6 = a2[2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong handleTransform:a3 & 1 limitingAllowed:{*&v8, *&v7, *&v6}];
  }
}

uint64_t sub_1B3800B1C(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5)
{
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v6 = *(a1 + 32);

  v6(v8, a2);
}

void sub_1B3800BCC(float32x4_t *a1, char a2)
{
  v16 = a1[1];
  v17 = *a1;
  v15 = a1[2];
  [v2 transform];
  v5 = *v16.i64;
  v4 = *v17.i64;
  v8 = vandq_s8(vceqq_f32(v17, v6), vceqq_f32(v16, v7));
  v10 = vceqq_f32(v15, v9);
  v11 = *v15.i64;
  v12 = vandq_s8(v8, v10);
  v12.i32[3] = v12.i32[2];
  if ((vminvq_u32(v12) & 0x80000000) == 0 || (v13 = [v2 limitingAllowed], v11 = *v15.i64, v5 = *v16.i64, v4 = *v17.i64, v13 != (a2 & 1)))
  {
    [v2 setComputedTransform_];
    [v2 setComputedIsLimitingAllowed_];
    v14 = [v2 didChangeHandler];
    v14[2]();

    _Block_release(v14);
  }
}

__n128 sub_1B3800D94@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR___PUVitalityTransformProducer_computedTransform);
  v3 = *(v1 + OBJC_IVAR___PUVitalityTransformProducer_computedTransform + 16);
  v4 = *(v1 + OBJC_IVAR___PUVitalityTransformProducer_computedTransform + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  return result;
}

__n128 sub_1B3800DEC(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR___PUVitalityTransformProducer_computedTransform;
  v3 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v3;
  result = *(a1 + 32);
  *(v2 + 32) = result;
  return result;
}

id sub_1B3800E7C()
{
  v1 = sub_1B3C9C118();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B3C9C168();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 photoKitAsset];
  if (result)
  {
    v11 = result;
    v17 = v6;
    v18 = v5;
    v19 = v2;
    if (qword_1EB84F7B8 != -1)
    {
      swift_once();
    }

    v16[1] = qword_1EB84F7C0;
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;
    aBlock[4] = sub_1B38018B8;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B370C014;
    aBlock[3] = &block_descriptor_38;
    v14 = _Block_copy(aBlock);

    v15 = v11;
    sub_1B3C9C138();
    v20 = MEMORY[0x1E69E7CC0];
    sub_1B37390DC(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
    sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
    sub_1B3C9D278();
    MEMORY[0x1B8C6A210](0, v9, v4, v14);
    _Block_release(v14);

    (*(v19 + 8))(v4, v1);
    (*(v17 + 8))(v9, v18);
  }

  return result;
}

uint64_t sub_1B38011D0(uint64_t a1, void *a2)
{
  v3 = sub_1B3C9C118();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B3C9C168();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    [a2 pu_vitalityPerspectiveTransform];
    v22 = v14;
    v23 = v13;
    v21 = v15;
    sub_1B3710718(0, &qword_1EB84FE60);
    v24 = sub_1B3C9CC88();
    v16 = swift_allocObject();
    *(v16 + 16) = v12;
    v17 = v22;
    *(v16 + 32) = v23;
    *(v16 + 48) = v17;
    *(v16 + 64) = v21;
    aBlock[4] = sub_1B38018C8;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B370C014;
    aBlock[3] = &block_descriptor_10;
    v18 = _Block_copy(aBlock);
    *&v23 = v7;
    v19 = v18;
    *&v22 = v12;

    sub_1B3C9C138();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B37390DC(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
    sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
    sub_1B3C9D278();
    v20 = v24;
    MEMORY[0x1B8C6A210](0, v10, v6, v19);
    _Block_release(v19);

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v23);
  }

  return result;
}

uint64_t sub_1B380156C()
{
  v7 = sub_1B3C9CC78();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B3C9CC48();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1B3C9C168();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1B3710718(0, &qword_1EB84FE60);
  sub_1B3C9C148();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1B37390DC(&qword_1EB84FE70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854940);
  sub_1B3739124(&qword_1EB84FE80, &unk_1EB854940);
  sub_1B3C9D278();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1B3C9CCA8();
  qword_1EB84F7C0 = result;
  return result;
}

id PUVitalityTransformProducer.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unsigned __int8 *sub_1B380190C(char a1, char *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_15();
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_messageFadeAnimationDuration) = 0x3FE06A7EF9DB22D1;
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_isActive) = 0;
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_animationPhase) = 6;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_15();
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_animationStateController) = 0;
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_snapshotMode) = a1;
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_posterKind) = v4;
  v11 = type metadata accessor for AmbientPhotoFrameContentUnavailableView();
  OUTLINED_FUNCTION_1_16();
  v7 = objc_msgSendSuper2(v5, v6, v2, v11);
  v8 = v7[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_posterKind];
  v9 = v7;
  if (v8 != 5)
  {
    sub_1B3802A3C();
  }

  sub_1B3801B00();
  if (v9[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_posterKind] == 5)
  {
    sub_1B3801E4C();
  }

  else
  {
    sub_1B38024D0();
  }

  return v9;
}

void sub_1B3801A24()
{
  OUTLINED_FUNCTION_15();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_messageFadeAnimationDuration) = 0x3FE06A7EF9DB22D1;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_isActive) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_animationPhase) = 6;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_15();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_animationStateController) = 0;
  sub_1B3C9D4C8();
  __break(1u);
}

void sub_1B3801B00()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = [objc_opt_self() secondaryLabelColor];
  [v1 setTextColor_];

  [v1 setNumberOfLines_];
  [v1 setTextAlignment_];
  v3 = v1;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  swift_unknownObjectWeakAssign();
  [v0 addSubview_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v6 = [v3 bottomAnchor];
    v7 = [v0 bottomAnchor];
    v8 = [v6 constraintEqualToAnchor:v7 constant:-48.0];
  }

  else
  {
    v6 = [v3 centerYAnchor];
    v9 = [v0 layoutMarginsGuide];
    v7 = [v9 centerYAnchor];

    v8 = [v6 constraintEqualToAnchor_];
  }

  v10 = v8;

  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B3CFB680;
  v18 = v10;
  v13 = [v3 widthAnchor];

  v14 = [v0 safeAreaLayoutGuide];
  v15 = [v14 widthAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v12 + 32) = v16;
  *(v12 + 40) = v18;
  sub_1B3710718(0, &qword_1EB84FE50);
  v17 = sub_1B3C9C778();

  [v11 activateConstraints_];
}

void *sub_1B3801E4C()
{
  if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_posterKind) == 5)
  {
    v1 = sub_1B3C9C5A8();
    v2 = PULocalizedString(v1);

    v3 = sub_1B3C9C5E8();
    v5 = v4;
  }

  else if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_animationPhase) == 6)
  {
    v3 = 0;
    v5 = 0;
  }

  else
  {
    v3 = sub_1B3802138();
    v5 = v6;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_31;
  }

  result = sub_1B38037E4(result, &selRef_text);
  if (!v5)
  {
    if (!v8)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (!v8)
  {
LABEL_16:

    goto LABEL_17;
  }

  if (v3 == result && v5 == v8)
  {
    swift_bridgeObjectRelease_n();
LABEL_27:
  }

  v10 = sub_1B3C9D6A8();

  if (v10)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_snapshotMode) == 1)
  {
    v11 = v3;
    v12 = v5;
    v13 = 0;
LABEL_26:
    sub_1B3802298(v11, v12, v13);
    goto LABEL_27;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  sub_1B38037E4(result, &selRef_text);
  if (!v14)
  {
    v11 = v3;
    v12 = v5;
    v13 = 1;
    goto LABEL_26;
  }

  sub_1B3710718(0, &unk_1EB84F790);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_20();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v3;
  v16[4] = v5;

  OUTLINED_FUNCTION_1_16();
  sub_1B3C9CF58();
}

uint64_t sub_1B3802138()
{
  v0 = sub_1B3C9C5A8();

  v1 = PULocalizedString(v0);

  v2 = sub_1B3C9C5E8();
  return v2;
}

void sub_1B3802224(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1B3802298(a3, a4, 1);
  }
}

void sub_1B3802298(uint64_t a1, void *a2, char a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = Strong;
  if (a2)
  {
    a2 = sub_1B3C9C5A8();
  }

  [v6 setText_];

  if (a3)
  {
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      [v7 setAlpha_];

      sub_1B3710718(0, &unk_1EB84F790);
      OUTLINED_FUNCTION_20();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_1_16();
      sub_1B3C9CF58();

      return;
    }

LABEL_11:
    __break(1u);
  }
}

void sub_1B38023E4(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      [v4 setAlpha_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1B3802474(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_isActive) == 1 && (a1 & 1) == 0 && *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_posterKind) != 5 && (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_snapshotMode) & 1) == 0)
  {
    sub_1B38024D0();
  }
}

void sub_1B38024B8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_isActive);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_isActive) = a1;
  sub_1B3802474(v2);
}

void sub_1B38024D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_animationPhase);
  if (v1 == 6)
  {
    sub_1B38024E8(0);
  }

  else
  {
    sub_1B38024E8(v1);
  }
}

void sub_1B38024E8(char a1)
{
  v3 = sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  v29 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3C9C168();
  OUTLINED_FUNCTION_0();
  v27 = v8;
  v28 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B3C9C188();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - v19;
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_posterKind) != 5)
  {
    sub_1B38029D8(a1);
    if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_isActive) == 1 && (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_snapshotMode) & 1) == 0)
    {
      sub_1B3710718(0, &qword_1EB84FE60);
      v25 = sub_1B3C9CC88();
      sub_1B3C9C178();
      sub_1B3C9C1B8();
      v26 = *(v14 + 8);
      v26(v17, v12);
      OUTLINED_FUNCTION_20();
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1B3803850;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B370C014;
      aBlock[3] = &block_descriptor_39;
      v22 = _Block_copy(aBlock);

      sub_1B3C9C138();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      v24 = sub_1B37D49E4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
      sub_1B370ED54(&qword_1EB84FE90, &unk_1EB851AF0);
      sub_1B3C9D278();
      v23 = v25;
      MEMORY[0x1B8C6A1D0](v20, v11, v7, v22);
      _Block_release(v22);

      (*(v29 + 8))(v7, v3);
      (*(v28 + 8))(v11, v27);
      v26(v20, v12);
    }
  }
}

void sub_1B38028DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_isActive) == 1)
    {
      v2 = *(Strong + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_animationPhase);
      if (v2 == 6)
      {
        v3 = 0;
      }

      else
      {
        v3 = sub_1B3802964(v2);
      }

      sub_1B38024E8(v3);
    }
  }
}

void sub_1B3802980(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_animationPhase);
  if (v2 == 6)
  {
    if (a1 == 6)
    {
      return;
    }
  }

  else if (v2 == a1)
  {
    return;
  }

  sub_1B3801E4C();

  sub_1B3802FB0();
}

void sub_1B38029D8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_animationPhase);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_animationPhase) = a1;
  sub_1B3802980(v2);
}

void *sub_1B38029FC@<X0>(void *a1@<X8>)
{
  result = sub_1B38029F0();
  *a1 = result;
  return result;
}

void sub_1B3802A3C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853970);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_1B3C98068();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = sub_1B3803690(0xD00000000000001BLL, 0x80000001B3D19810, 1918984547, 0xE400000000000000, v15);

  if (!v16)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1B3C98038();

  (*(v7 + 32))(v13, v10, v5);
  (*(v7 + 16))(v4, v13, v5);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  v17 = sub_1B3C9C4D8();
  v18 = objc_allocWithZone(MEMORY[0x1E69DD3B0]);
  v19 = sub_1B3803590(v4, v17);
  if (!v19)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v20 = v19;
  [v19 setUserInteractionEnabled_];
  [v20 setAccessibilityElementsHidden_];
  v21 = sub_1B3803724(0x79614C20746F6F52, 0xEA00000000007265, v20);
  if (!v21)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v22 = v21;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  [v1 addSubview_];
  v23 = [v22 layer];
  v24 = [objc_allocWithZone(MEMORY[0x1E69794D0]) initWithLayer_];

  if (v24)
  {

    (*(v7 + 8))(v13, v5);
    v25 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_animationStateController];
    *&v1[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_animationStateController] = v24;

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1B3802D88()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for AmbientPhotoFrameContentUnavailableView();
  objc_msgSendSuper2(&v19, sel_layoutSubviews);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v0 bounds];
      MaxY = CGRectGetMaxY(v20);
      v6 = swift_unknownObjectWeakLoadStrong();
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      [v6 frame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v21.origin.x = v9;
      v21.origin.y = v11;
      v21.size.width = v13;
      v21.size.height = v15;
      v16 = MaxY - CGRectGetMinY(v21);
      [v0 bounds];
      CGRectInset(v22, 0.0, v16);
      OUTLINED_FUNCTION_6();
      [v2 bounds];
      PXSizeGetAspectRatio();
      PXRectWithAspectRatioFittingRect();
      OUTLINED_FUNCTION_6();
      v17 = v4;
      [v2 bounds];
      [v17 convertRect:v2 fromCoordinateSpace:?];
      PXAffineTransformMakeFromRects();
      [v17 setTransform_];
      [v17 setFrame_];

      v2 = v17;
    }
  }
}

void sub_1B3802FB0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_animationPhase);
  v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameContentUnavailableView_animationStateController);
  if (!v3)
  {
LABEL_30:

    return;
  }

  v22 = Strong;
  v4 = v3;
  v5 = [v22 layer];
  v6 = sub_1B3803788(v5);
  if (!v6)
  {
LABEL_41:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = *(v6 + 16);
  if (!v8)
  {

    goto LABEL_34;
  }

  v20 = v5;
  v21 = v4;
  v9 = 0;
  v10 = v6 + 32;
  while (2)
  {
    if (v9 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    sub_1B37106B4(v10, v25);
    sub_1B37106B4(v25, v24);
    sub_1B3710718(0, &qword_1EB855BA8);
    if (swift_dynamicCast())
    {
      Strong = sub_1B38037E4(v23, &selRef_name);
      v12 = v11;
    }

    else
    {
      Strong = 0;
      v12 = 0;
    }

    ++v9;
    v13 = 0xED00006465727574;
    v14 = 0x61654620656C6449;
    switch(v2)
    {
      case 0:
        goto LABEL_19;
      case 1:
        v13 = 0xE600000000000000;
        v14 = 0x656C706F6550;
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_20;
      case 2:
        v13 = 0xE400000000000000;
        v14 = 1937007952;
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_20;
      case 3:
        v13 = 0xE600000000000000;
        v14 = 0x65727574614ELL;
LABEL_19:
        if (v12)
        {
          goto LABEL_20;
        }

        goto LABEL_27;
      case 4:
        v13 = 0xE600000000000000;
        v14 = 0x736569746943;
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_20;
      case 5:
        v13 = 0xE500000000000000;
        v14 = 0x7465736552;
        if (!v12)
        {
LABEL_27:

LABEL_28:
          __swift_destroy_boxed_opaque_existential_0Tm(v25);
          v10 += 32;
          if (v8 == v9)
          {

LABEL_34:

            return;
          }

          continue;
        }

LABEL_20:
        if (Strong != v14 || v12 != v13)
        {
          v16 = sub_1B3C9D6A8();

          if (v16)
          {
            goto LABEL_36;
          }

          goto LABEL_28;
        }

LABEL_36:

        sub_1B370ED44(v25, &v26);
        v17 = v20;
        if (swift_dynamicCast())
        {
          v18 = *&v25[0];
          v17 = v20;
          LODWORD(v19) = 1.0;
          [v21 setState:v18 ofLayer:v17 transitionSpeed:v19];
        }

        else
        {
        }

        return;
      default:
        goto LABEL_30;
    }
  }
}

id sub_1B3803354()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientPhotoFrameContentUnavailableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for AmbientPhotoFrameContentUnavailableView.AnimationPhase(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B380353C()
{
  result = qword_1EB855BA0;
  if (!qword_1EB855BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855BA0);
  }

  return result;
}

id sub_1B3803590(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B3C98068();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v6) != 1)
  {
    v7 = sub_1B3C98018();
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  if (a2)
  {
    v8 = sub_1B3C9C4A8();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 initWithContentsOfURL:v7 publishedObjectViewClassMap:v8];

  return v9;
}

id sub_1B3803690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1B3C9C5A8();

  v7 = sub_1B3C9C5A8();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

id sub_1B3803724(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B3C9C5A8();

  v5 = [a3 publishedViewWithName_];

  return v5;
}

uint64_t sub_1B3803788(void *a1)
{
  v1 = [a1 states];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B3C9C788();

  return v3;
}

uint64_t sub_1B38037E4(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1B3C9C5E8();

  return v4;
}

uint64_t OneUpDefaultChromeActionsDelegate.__allocating_init(actionsController:chromeEnvironment:)()
{
  OUTLINED_FUNCTION_14_18();
  v0 = OUTLINED_FUNCTION_6_22();

  return sub_1B380577C(v0, v1, v2, v3, v4);
}

uint64_t sub_1B3803978@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_33();
  v5 = sub_1B3805A68(v3, v4);
  OUTLINED_FUNCTION_1_34(v5, v6, v7, v8, v9, v10, v11, v12, v14, v1);
  sub_1B3C982D8();

  OUTLINED_FUNCTION_3_0();
  return sub_1B3805834(v1 + 40, a1);
}

uint64_t sub_1B3803A14(uint64_t a1)
{
  swift_beginAccess();
  sub_1B3805834(v1 + 40, v6);
  v3 = sub_1B3805568(v6, a1);
  sub_1B36FB21C(v6, &qword_1EB857300);
  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_34_4();
    sub_1B38054C0();
  }

  else
  {
    sub_1B3805834(a1, v6);
    swift_beginAccess();
    sub_1B38060F4(v6, v1 + 40);
    swift_endAccess();
  }

  return sub_1B36FB21C(a1, &qword_1EB857300);
}

uint64_t sub_1B3803B3C(uint64_t a1, uint64_t a2)
{
  sub_1B3805834(a2, v4);
  swift_beginAccess();
  sub_1B38060F4(v4, a1 + 40);
  return swift_endAccess();
}

uint64_t sub_1B3803BA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3803BF8();
  *a1 = result;
  return result;
}

uint64_t sub_1B3803BF8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_33();
  v3 = sub_1B3805A68(v1, v2);
  OUTLINED_FUNCTION_1_34(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1B3C982D8();

  return *(v0 + 80);
}

uint64_t sub_1B3803C80(uint64_t result)
{
  if (*(v1 + 80) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_34_4();
    sub_1B38054C0();
  }

  return result;
}

uint64_t OneUpDefaultChromeActionsDelegate.init(actionsController:chromeEnvironment:)()
{
  OUTLINED_FUNCTION_14_18();
  v0 = OUTLINED_FUNCTION_6_22();

  return sub_1B38058A4(v0, v1, v2, v3, v4);
}

uint64_t sub_1B3803D54()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_16();
}

uint64_t sub_1B3803DC4(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_16();
  sub_1B36F9DA0(a1);
}

uint64_t sub_1B3803E90@<X0>(void *a1@<X8>)
{
  v2 = sub_1B3803F64();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = sub_1B3806208;
  a1[1] = result;
  return result;
}

uint64_t sub_1B3803EF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return sub_1B3803D54();
}

uint64_t sub_1B3803F64()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_33();
  v3 = sub_1B3805A68(v1, v2);
  OUTLINED_FUNCTION_1_34(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1B3C982D8();

  OUTLINED_FUNCTION_3_0();
  v11 = *(v0 + 88);

  return v11;
}

uint64_t sub_1B3804004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 88) = a2;
  *(a1 + 96) = a3;
}

void (*sub_1B3804070(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC15PhotosUIPrivate33OneUpDefaultChromeActionsDelegate___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_33();
  v6 = sub_1B3805A68(v4, v5);
  OUTLINED_FUNCTION_5_25(v6);

  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_19();

  v3[7] = sub_1B3803E40();
  return sub_1B3804158;
}

uint64_t sub_1B38041B4@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_1B38042B4();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1B38061A8;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1B3804224(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1B3806180;
  }

  else
  {
    v4 = 0;
  }

  sub_1B370A6FC(v1);
  return sub_1B3803DC4(v4);
}

uint64_t sub_1B38042B4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_33();
  v3 = sub_1B3805A68(v1, v2);
  OUTLINED_FUNCTION_1_34(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1B3C982D8();

  OUTLINED_FUNCTION_3_0();
  v11 = *(v0 + 104);
  sub_1B370A6FC(v11);
  return v11;
}

uint64_t sub_1B3804358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 104);
  *(a1 + 104) = a2;
  *(a1 + 112) = a3;
  sub_1B370A6FC(a2);
  return sub_1B36F9DA0(v6);
}

void (*sub_1B38043D4(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC15PhotosUIPrivate33OneUpDefaultChromeActionsDelegate___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_33();
  v6 = sub_1B3805A68(v4, v5);
  OUTLINED_FUNCTION_5_25(v6);

  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_19();

  v3[7] = sub_1B3804164();
  return sub_1B38044BC;
}

void sub_1B38044C8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  OUTLINED_FUNCTION_5_1();
  sub_1B3C982E8();

  free(v1);
}

uint64_t sub_1B3804558()
{
  sub_1B3C995D8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = OUTLINED_FUNCTION_3_30(v2, v12);
  v4(v3);
  v5 = OUTLINED_FUNCTION_5_1();
  v7 = v6(v5);
  if (v7 == *MEMORY[0x1E69C2B68])
  {
    return [*(v0 + 16) shouldEnableLikeAction];
  }

  if (v7 == *MEMORY[0x1E69C2B40])
  {
    return [*(v0 + 16) shouldEnableToggleDetailsAction];
  }

  if (v7 == *MEMORY[0x1E69C2B70])
  {
    return [*(v0 + 16) shouldEnableSimpleActionWithActionType_];
  }

  if (v7 == *MEMORY[0x1E69C2AF8])
  {
    return [*(v0 + 16) shouldEnableSimpleActionWithActionType_];
  }

  if (v7 == *MEMORY[0x1E69C2AF0])
  {
    return [*(v0 + 16) shouldEnableToggleDetailsAction];
  }

  if (v7 == *MEMORY[0x1E69C2B78])
  {
    return [*(v0 + 16) shouldEnableSimpleActionWithActionType_];
  }

  if (v7 == *MEMORY[0x1E69C2B60])
  {
    return [*(v0 + 16) shouldEnableSimpleActionWithActionType_];
  }

  if (v7 == *MEMORY[0x1E69C2AE8] || v7 == *MEMORY[0x1E69C2AB8])
  {
    return [*(v0 + 16) shouldEnableSimpleActionWithActionType_];
  }

  if (v7 == *MEMORY[0x1E69C2B10])
  {
    return [*(v0 + 16) shouldEnableSimpleActionWithActionType_];
  }

  if (v7 != *MEMORY[0x1E69C2B18])
  {
    v10 = OUTLINED_FUNCTION_5_1();
    v11(v10);
  }

  return 1;
}

uint64_t sub_1B380479C()
{
  sub_1B3C995D8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = OUTLINED_FUNCTION_3_30(v2, v10);
  v4(v3);
  v5 = OUTLINED_FUNCTION_5_1();
  if (v6(v5) == *MEMORY[0x1E69C2B78])
  {
    return [*(v0 + 16) canPerformTrashAction];
  }

  v8 = OUTLINED_FUNCTION_5_1();
  v9(v8);
  return 1;
}

id sub_1B3804890(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B3C995D8();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (OneUpChromeAction.requiresDeviceUnlock.getter())
  {
    v10 = sub_1B3803F64();
    v11 = v10();

    if ((v11 & 1) == 0)
    {
      v21 = sub_1B38042B4();
      if (v21)
      {
        v22 = v21;
        v21(a1);
        return sub_1B36F9DA0(v22);
      }

      sub_1B3805AB0();
      swift_allocError();
      return swift_willThrow();
    }
  }

  v12 = *(v6 + 16);
  v12(v9, a1, v4);
  v13 = OUTLINED_FUNCTION_13_17();
  v15 = v14(v13);
  if (v15 == *MEMORY[0x1E69C2B68])
  {
    v16 = OUTLINED_FUNCTION_13_17();
    v17(v16);
    return [*(v2 + 16) performLikeActionWithLike_];
  }

  if (v15 == *MEMORY[0x1E69C2B40])
  {
    v19 = OUTLINED_FUNCTION_13_17();
    v20(v19);
    return [*(v2 + 16) performToggleCommentsActionAndBeginEditing_];
  }

  if (v15 == *MEMORY[0x1E69C2B70])
  {
    return [*(v2 + 16) performShareAction];
  }

  if (v15 == *MEMORY[0x1E69C2AC0])
  {
    return [*(v2 + 16) dismissOneUp];
  }

  if (v15 == *MEMORY[0x1E69C2AF8])
  {
    return [*(v2 + 16) performToggleFavoriteAction];
  }

  if (v15 == *MEMORY[0x1E69C2AF0])
  {
    return [*(v2 + 16) performToggleDetailsAction];
  }

  if (v15 == *MEMORY[0x1E69C2B78])
  {
    return [*(v2 + 16) performTrashAction];
  }

  if (v15 == *MEMORY[0x1E69C2B60])
  {
    return [*(v2 + 16) performSimpleActionWithActionType_];
  }

  if (v15 == *MEMORY[0x1E69C2B30])
  {
    return [*(v2 + 16) performToggleMuteAction];
  }

  if (v15 == *MEMORY[0x1E69C2AE8])
  {
    return [*(v2 + 16) performShowInLibraryAction];
  }

  if (v15 == *MEMORY[0x1E69C2B80])
  {
    return [*(v2 + 16) performSimpleActionWithActionType_];
  }

  if (v15 == *MEMORY[0x1E69C2B50])
  {
    return [*(v2 + 16) performSimpleActionWithActionType_];
  }

  if (v15 == *MEMORY[0x1E69C2B58])
  {
    return [*(v2 + 16) performSimpleActionWithActionType_];
  }

  if (v15 == *MEMORY[0x1E69C2B88])
  {
    return [*(v2 + 16) performSimpleActionWithActionType_];
  }

  if (v15 == *MEMORY[0x1E69C2B90])
  {
    return [*(v2 + 16) performSimpleActionWithActionType_];
  }

  if (v15 == *MEMORY[0x1E69C2AC8])
  {
    return [*(v2 + 16) performSimpleActionWithActionType_];
  }

  if (v15 == *MEMORY[0x1E69C2B00])
  {
    return [*(v2 + 16) performMergeDuplicatesAction];
  }

  if (v15 == *MEMORY[0x1E69C2B08])
  {
    return [*(v2 + 16) performSyndicationSaveAction];
  }

  if (v15 == *MEMORY[0x1E69C2B20])
  {
    return [*(v2 + 16) toggleSelectionMode];
  }

  if (v15 == *MEMORY[0x1E69C2AD8])
  {
    return [*(v2 + 16) performSimpleActionWithActionType_];
  }

  if (v15 == *MEMORY[0x1E69C2B28])
  {
    return [*(v2 + 16) togglePlayback];
  }

  if (v15 == *MEMORY[0x1E69C2AE0])
  {
    return [*(v2 + 16) performCancelEditingAction];
  }

  if (v15 == *MEMORY[0x1E69C2AD0])
  {
    return [*(v2 + 16) performDoneEditingAction];
  }

  if (v15 == *MEMORY[0x1E69C2B38])
  {
    return [*(v2 + 16) performSimpleActionWithActionType_];
  }

  if (v15 == *MEMORY[0x1E69C2AB8])
  {
    return [*(v2 + 16) performSimpleActionWithActionType_];
  }

  if (v15 == *MEMORY[0x1E69C2B10])
  {
    v23 = sub_1B3C99CC8();
    OUTLINED_FUNCTION_2_33();
    sub_1B3805A68(v24, v25);
    swift_allocError();
    v27 = v26;
    v12(v26, a1, v4);
    (*(*(v23 - 8) + 104))(v27, *MEMORY[0x1E69C2E18], v23);
    return swift_willThrow();
  }

  if (v15 == *MEMORY[0x1E69C2B18])
  {
    return [*(v2 + 16) performToggleSpatialAction];
  }

  if (v15 == *MEMORY[0x1E69C2B48])
  {
    return [*(v2 + 16) internalToggleGainMapImage];
  }

  v28 = sub_1B3C99CC8();
  OUTLINED_FUNCTION_2_33();
  sub_1B3805A68(v29, v30);
  swift_allocError();
  (*(*(v28 - 8) + 104))(v31, *MEMORY[0x1E69C2E10], v28);
  swift_willThrow();
  v32 = OUTLINED_FUNCTION_13_17();
  return v33(v32);
}

uint64_t OneUpDefaultChromeActionsDelegate.Error.hashValue.getter()
{
  sub_1B3C9D7C8();
  MEMORY[0x1B8C6AD50](0);
  return sub_1B3C9D7F8();
}

void sub_1B3805038()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_clipboardChanged name:*MEMORY[0x1E69DE270] object:0];
}

uint64_t sub_1B38050B4()
{
  swift_getObjectType();
  sub_1B3C999A8();
  return sub_1B3803A14(v1);
}

uint64_t sub_1B380510C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_33();
  sub_1B3805A68(v1, v2);
  sub_1B3C982D8();

  swift_getKeyPath();
  sub_1B3C982F8();

  ++*(v0 + 80);
  swift_getKeyPath();
  sub_1B3C982E8();
}

uint64_t sub_1B380520C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_33();
  v3 = sub_1B3805A68(v1, v2);
  OUTLINED_FUNCTION_1_34(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1B3C982D8();
}

uint64_t sub_1B38052C4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_16();
}

uint64_t sub_1B380532C(uint64_t a1, uint64_t a2)
{
  *(a1 + 120) = a2;
}

uint64_t sub_1B38053C4()
{
  sub_1B3C9D7C8();
  MEMORY[0x1B8C6AD50](0);
  return sub_1B3C9D7F8();
}

uint64_t sub_1B3805410()
{
  sub_1B3C9D7C8();
  MEMORY[0x1B8C6AD50](0);
  return sub_1B3C9D7F8();
}

void *sub_1B3805458@<X0>(void *a1@<X8>)
{
  result = sub_1B3805390();
  *a1 = result;
  return result;
}

uint64_t sub_1B38054C0()
{
  OUTLINED_FUNCTION_0_33();
  sub_1B3805A68(v0, v1);
  return sub_1B3C982C8();
}

uint64_t sub_1B3805568(uint64_t a1, uint64_t a2)
{
  sub_1B3805834(a1, v9);
  sub_1B3805834(a2, &v11);
  if (!v10)
  {
    if (!*(&v12 + 1))
    {
      sub_1B36FB21C(v9, &qword_1EB857300);
      v4 = 0;
      return v4 & 1;
    }

LABEL_7:
    sub_1B36FB21C(v9, &qword_1EB8541B8);
    v4 = 1;
    return v4 & 1;
  }

  sub_1B3805834(v9, v8);
  if (!*(&v12 + 1))
  {
    sub_1B3720D10(v8);
    goto LABEL_7;
  }

  v6[0] = v11;
  v6[1] = v12;
  v7 = v13;
  v3 = MEMORY[0x1B8C6A880](v8, v6);
  sub_1B3720D10(v6);
  sub_1B3720D10(v8);
  sub_1B36FB21C(v9, &qword_1EB857300);
  v4 = v3 ^ 1;
  return v4 & 1;
}

uint64_t OneUpDefaultChromeActionsDelegate.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1B36FB21C(v0 + 40, &qword_1EB857300);

  sub_1B36F9DA0(*(v0 + 104));

  v1 = OBJC_IVAR____TtC15PhotosUIPrivate33OneUpDefaultChromeActionsDelegate___observationRegistrar;
  sub_1B3C98318();
  OUTLINED_FUNCTION_6_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t OneUpDefaultChromeActionsDelegate.__deallocating_deinit()
{
  OneUpDefaultChromeActionsDelegate.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B380577C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for OneUpDefaultChromeActionsDelegate();
  v9 = swift_allocObject();

  return sub_1B38058A4(a1, a2, v9, a4, a5);
}

uint64_t type metadata accessor for OneUpDefaultChromeActionsDelegate()
{
  result = qword_1EB84F968;
  if (!qword_1EB84F968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B3805834(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B38058A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8526B0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  *(a3 + 72) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 88) = OUTLINED_FUNCTION_17_3;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  sub_1B3C98308();
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = a5;
  swift_unknownObjectRetain();
  sub_1B3805038();
  (*(v10 + 104))(v12, *MEMORY[0x1E69C4410], v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8526B8);
  swift_allocObject();

  sub_1B3C9A048();
  sub_1B38052C4();
  swift_unknownObjectRelease();
  return a3;
}

uint64_t sub_1B3805A68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B3805AB0()
{
  result = qword_1EB855BB8;
  if (!qword_1EB855BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855BB8);
  }

  return result;
}

unint64_t sub_1B3805B08()
{
  result = qword_1EB855BC0;
  if (!qword_1EB855BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855BC0);
  }

  return result;
}

uint64_t sub_1B3805BAC()
{
  result = sub_1B3C98318();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *sub_1B3805EB0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B3805F60()
{
  result = qword_1EB84F8A8;
  if (!qword_1EB84F8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB855BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F8A8);
  }

  return result;
}

unint64_t sub_1B3805FC8()
{
  result = qword_1EB84F990;
  if (!qword_1EB84F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F990);
  }

  return result;
}

unint64_t sub_1B3806020()
{
  result = qword_1EB84F9A0;
  if (!qword_1EB84F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F9A0);
  }

  return result;
}

unint64_t sub_1B3806078()
{
  result = qword_1EB84F998;
  if (!qword_1EB84F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F998);
  }

  return result;
}

uint64_t sub_1B38060F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857300);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3806208@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return sub_1B38054C0();
}

uint64_t OUTLINED_FUNCTION_10_19()
{

  return sub_1B3C982F8();
}

uint64_t OUTLINED_FUNCTION_14_18()
{

  return swift_getObjectType();
}

id OneUpTitleModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B3806344(_OWORD *a1)
{
  v2 = (v1 + OBJC_IVAR___PUOneUpTitleModel_input);
  v4 = *(v1 + OBJC_IVAR___PUOneUpTitleModel_input);
  v3 = *(v1 + OBJC_IVAR___PUOneUpTitleModel_input + 8);
  v5 = *(v1 + OBJC_IVAR___PUOneUpTitleModel_input + 16);
  v6 = a1[1];
  *v2 = *a1;
  v2[1] = v6;
  sub_1B3807A04(v4, v3, v5);
  sub_1B3806554();
  sub_1B3C99FA8();
}

uint64_t sub_1B38063BC()
{
  sub_1B3806554();
  sub_1B3C99FB8();

  if (v3 != 1)
  {

    v0 = OUTLINED_FUNCTION_2_3();
    sub_1B3806638(v0, v1);
  }

  return OUTLINED_FUNCTION_2_3();
}

id sub_1B3806454(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    OUTLINED_FUNCTION_2_3();
    v7 = sub_1B3C9C5A8();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1B38064D0()
{
  sub_1B3806554();
  sub_1B3C99FB8();

  if (v2 != 1)
  {

    sub_1B3806638(v1, v2);
  }

  return OUTLINED_FUNCTION_2_3();
}

uint64_t sub_1B3806554()
{
  v1 = OBJC_IVAR___PUOneUpTitleModel____lazy_storage___updater;
  if (*(v0 + OBJC_IVAR___PUOneUpTitleModel____lazy_storage___updater))
  {
    v2 = *(v0 + OBJC_IVAR___PUOneUpTitleModel____lazy_storage___updater);
  }

  else
  {
    v3 = v0;
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    v4 = swift_unknownObjectWeakInit();
    sub_1B3847274(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855BE8);
    swift_allocObject();
    v2 = sub_1B3C99FD8();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1B3806638(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_1B3806680(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___PUOneUpTitleModel_input);
    v5 = *(Strong + OBJC_IVAR___PUOneUpTitleModel_input + 8);
    v6 = *(Strong + OBJC_IVAR___PUOneUpTitleModel_input + 16);
    v7 = *(Strong + OBJC_IVAR___PUOneUpTitleModel_input + 24);
    v8 = swift_allocObject();
    v8[2] = v4;
    v8[3] = v5;
    v8[4] = v6;
    v8[5] = v7;
    sub_1B3807B14(v4, v5, v6);
    sub_1B3807B14(v4, v5, v6);

    static OneUpTitleProducer.generateTitles(infoProvider:completion:)(sub_1B3807B00, v8, sub_1B3807B0C, a1);

    sub_1B3807A04(v4, v5, v6);
  }
}

uint64_t sub_1B38067A8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 != 1)
  {
    if (a4)
    {
      v7 = a4();
      if (!a2)
      {
        return 0;
      }
    }

    else
    {
      v9 = sub_1B3C98118();
      v7 = __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
      if (!a2)
      {
        return 0;
      }
    }

    return a2(v7);
  }

  v5 = sub_1B3C98118();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v5);
  return 0;
}

uint64_t sub_1B3806850(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  sub_1B3C99FC8();
  return sub_1B3806638(v2, v3);
}

uint64_t static OneUpTitleProducer.generateTitles(infoProvider:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B3C9C168();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB84FB10 != -1)
  {
    swift_once();
  }

  v22[1] = qword_1EB84FB20;
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  aBlock[4] = sub_1B38073D0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_40;
  v20 = _Block_copy(aBlock);

  sub_1B3C9C138();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1B37390DC(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v18, v13, v20);
  _Block_release(v20);
  (*(v10 + 8))(v13, v8);
  (*(v15 + 8))(v18, v23);
}

id OneUpTitleModel.init()()
{
  v1 = &v0[OBJC_IVAR___PUOneUpTitleModel_input];
  *v1 = 1;
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0;
  *&v0[OBJC_IVAR___PUOneUpTitleModel____lazy_storage___updater] = 0;
  sub_1B3C98308();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for OneUpTitleModel();
  return objc_msgSendSuper2(&v3, sel_init);
}

id OneUpTitleModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpTitleModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static OneUpTitleInfo.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_1B3C9D6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v4 == v7 && v5 == v8)
      {
        return 1;
      }

      OUTLINED_FUNCTION_87();
      if (sub_1B3C9D6A8())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1B3806E04(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = sub_1B3C9C118();
  v35 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B3C9C168();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855BE0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v30 - v13;
  v15 = (&v30 + *(v12 + 56) - v13);
  v16 = a1(&v30 - v13);
  *v15 = v16;
  v15[1] = v17;
  v18 = static OneUpTitleFormatter.formattedStrings(forAssetCreationDate:localizedGeoDescription:)(v14, v16, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_1B3739098();
  v25 = sub_1B3C9CC88();
  v26 = swift_allocObject();
  v26[2] = v31;
  v26[3] = a4;
  v26[4] = v18;
  v26[5] = v20;
  v26[6] = v22;
  v26[7] = v24;
  aBlock[4] = sub_1B3807A50;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_33;
  v27 = _Block_copy(aBlock);

  sub_1B3C9C138();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B37390DC(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
  v28 = v32;
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v10, v7, v27);
  _Block_release(v27);

  (*(v35 + 8))(v7, v28);
  (*(v33 + 8))(v10, v34);
  return sub_1B3807A90(v14);
}

uint64_t sub_1B3807180()
{
  v7 = sub_1B3C9CC78();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B3C9CC48();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1B3C9C168();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1B3739098();
  sub_1B3C9C148();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1B37390DC(&qword_1EB84FE70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854940);
  sub_1B3739124(&qword_1EB84FE80, &unk_1EB854940);
  sub_1B3C9D278();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1B3C9CCA8();
  qword_1EB84FB20 = result;
  return result;
}

uint64_t type metadata accessor for OneUpTitleModel()
{
  result = qword_1EB84FBD0;
  if (!qword_1EB84FBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OneUpTitleModelInput.init(datePromise:geoDescriptionPromise:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[2] = result;
  a5[3] = a2;
  *a5 = a3;
  a5[1] = a4;
  return result;
}

uint64_t sub_1B380743C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855BF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  if (a1)
  {
    v7 = [a1 localCreationDate];
    if (v7)
    {
      v8 = v7;
      sub_1B3C980E8();

      v9 = sub_1B3C98118();
      v10 = 0;
    }

    else
    {
      v9 = sub_1B3C98118();
      v10 = 1;
    }

    __swift_storeEnumTagSinglePayload(v6, v10, 1, v9);
    v13 = OUTLINED_FUNCTION_2_3();
    return sub_1B3807B60(v13, v14);
  }

  else
  {
    v11 = sub_1B3C98118();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v11);
  }
}

uint64_t sub_1B3807558(void *a1)
{
  if (a1)
  {
    v1 = [a1 localizedGeoDescription];
    if (v1)
    {
      v2 = v1;
      sub_1B3C9C5E8();
    }
  }

  return OUTLINED_FUNCTION_87();
}

uint64_t OneUpTitleModel.setInputAsset(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_20();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  OUTLINED_FUNCTION_20();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *&v5 = sub_1B37B1238;
  *(&v5 + 1) = v3;
  v6 = sub_1B37B1230;
  v7 = v2;
  swift_unknownObjectRetain_n();
  return sub_1B3806344(&v5);
}

uint64_t sub_1B380765C()
{
  result = sub_1B3C98318();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B3807780(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1B38077D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpTitleProducer(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B38078E4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B3807938(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B3807A04(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 1)
  {
    sub_1B36F9DA0(result);

    return sub_1B36F9DA0(a3);
  }

  return result;
}

uint64_t sub_1B3807A50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v4[0] = *(v0 + 32);
  v4[1] = v2;
  return v1(v4);
}

uint64_t sub_1B3807A90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B3807B14(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 1)
  {
    sub_1B370A6FC(result);

    return sub_1B370A6FC(a3);
  }

  return result;
}

uint64_t sub_1B3807B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855BF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3807BE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1B3C97F38();
  OUTLINED_FUNCTION_15_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = sub_1B3C98188();
  v10 = OUTLINED_FUNCTION_8_0(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v11 = sub_1B3C9C598();
  v12 = OUTLINED_FUNCTION_8_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v13 = sub_1B3C97F48();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13_0();
  sub_1B3C9C538();
  sub_1B3C98178();
  (*(v4 + 104))(v8, *MEMORY[0x1E6968DF0], v2);
  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
  return sub_1B3C97CF8();
}

uint64_t sub_1B3807E00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852788);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  v49 = &v39[-v2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  OUTLINED_FUNCTION_8_0(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v39[-v5];
  v42 = sub_1B3C97F38();
  OUTLINED_FUNCTION_15_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = sub_1B3C98188();
  v13 = OUTLINED_FUNCTION_8_0(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v14 = sub_1B3C9C598();
  v15 = OUTLINED_FUNCTION_8_0(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v46 = sub_1B3C97F48();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855CB8);
  v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855CC0) - 8);
  v18 = *v17;
  v45 = *(*v17 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v47 = v20;
  *(v20 + 16) = xmmword_1B3CFA2E0;
  v21 = (v20 + v19);
  v44 = v17[14];
  *v21 = 0;
  OUTLINED_FUNCTION_13_0();
  sub_1B3C9C538();
  sub_1B3C98178();
  v40 = *MEMORY[0x1E6968DF0];
  v22 = *(v7 + 104);
  v41 = v7 + 104;
  v43 = v22;
  v22(v11);
  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_5_2();
  v23 = v46;
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v46);
  v27 = sub_1B3C97C48();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  OUTLINED_FUNCTION_12_17();
  v31 = &v21[v45];
  v45 = v17[14];
  *v31 = 1;
  sub_1B3C9C538();
  sub_1B3C98178();
  v43(v11, v40, v42);
  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v23);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v27);
  OUTLINED_FUNCTION_12_17();
  sub_1B3C97C68();
  sub_1B3808774();
  return sub_1B3C9C4D8();
}

uint64_t sub_1B3808214()
{
  v0 = sub_1B3C9D568();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B3808268(char a1)
{
  if (a1)
  {
    return 0x6C616D726F6ELL;
  }

  else
  {
    return 2003790963;
  }
}

unint64_t sub_1B38082A4()
{
  result = qword_1EB855C00;
  if (!qword_1EB855C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855C00);
  }

  return result;
}

uint64_t sub_1B3808310@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B3808214();
  *a1 = result;
  return result;
}

uint64_t sub_1B3808340@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3808268(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1B3808370()
{
  result = qword_1EB855C08;
  if (!qword_1EB855C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855C08);
  }

  return result;
}

unint64_t sub_1B38083C8()
{
  result = qword_1EB855C10;
  if (!qword_1EB855C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855C10);
  }

  return result;
}

unint64_t sub_1B3808420()
{
  result = qword_1EB855C18;
  if (!qword_1EB855C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855C18);
  }

  return result;
}

unint64_t sub_1B3808478()
{
  result = qword_1EB855C20;
  if (!qword_1EB855C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855C20);
  }

  return result;
}

unint64_t sub_1B38084CC()
{
  result = qword_1EB855C28;
  if (!qword_1EB855C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855C28);
  }

  return result;
}

unint64_t sub_1B3808520()
{
  result = qword_1EB855C30;
  if (!qword_1EB855C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855C30);
  }

  return result;
}

unint64_t sub_1B3808578()
{
  result = qword_1EB855C38;
  if (!qword_1EB855C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855C38);
  }

  return result;
}

unint64_t sub_1B3808620()
{
  result = qword_1EB855C40;
  if (!qword_1EB855C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855C40);
  }

  return result;
}

uint64_t sub_1B3808674(uint64_t a1)
{
  v2 = sub_1B3808620();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1B38086C4()
{
  result = qword_1EB855C48;
  if (!qword_1EB855C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855C48);
  }

  return result;
}

unint64_t sub_1B380871C()
{
  result = qword_1EB855C50;
  if (!qword_1EB855C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855C50);
  }

  return result;
}

unint64_t sub_1B3808774()
{
  result = qword_1EB855C58;
  if (!qword_1EB855C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855C58);
  }

  return result;
}

uint64_t sub_1B38087CC(uint64_t a1)
{
  v2 = sub_1B3808578();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1B3808870()
{
  result = qword_1EB855C70;
  if (!qword_1EB855C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855C70);
  }

  return result;
}

unint64_t sub_1B38088C8()
{
  result = qword_1EB855C78;
  if (!qword_1EB855C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855C78);
  }

  return result;
}

uint64_t sub_1B3808938()
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
  __swift_allocate_value_buffer(v6, qword_1EB878EB8);
  __swift_project_value_buffer(v6, qword_1EB878EB8);
  sub_1B3C9C538();
  sub_1B3C98178();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1B3C97F58();
}

uint64_t sub_1B3808B2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855CA0);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855CA8);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B3809A30();
  sub_1B3C97CA8();
  OUTLINED_FUNCTION_13_0();
  sub_1B3C97C98();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855CB0);
  sub_1B3C97C88();

  sub_1B3C97C98();
  sub_1B3C97CB8();
  OUTLINED_FUNCTION_0_34();
  return sub_1B3C97C78();
}

uint64_t sub_1B3808CB0()
{
  OUTLINED_FUNCTION_0_0();
  v0[3] = v1;
  v0[4] = v2;
  sub_1B3C9C888();
  v0[5] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v0[6] = v4;
  v0[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B3808D44, v4, v3);
}

uint64_t sub_1B3808D44()
{
  *(v0 + 16) = *(v0 + 32);
  sub_1B3C97B28();
  v1 = *(v0 + 80);
  *(v0 + 81) = v1;
  if (v1)
  {
    v2 = 0x6C616D726F6ELL;
  }

  else
  {
    v2 = 2003790963;
  }

  if (v1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  sub_1B3809A30();
  *v4 = v0;
  v4[1] = sub_1B3808E74;
  v5 = *(v0 + 24);

  return MEMORY[0x1EEE2CA70](v5, 0, 0, v2, v3, 0, 1, &unk_1B3D05E58);
}

uint64_t sub_1B3808E74()
{
  OUTLINED_FUNCTION_0_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  v2[9] = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_1B3808F94;
  }

  else
  {

    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_1B3713994;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1B3808F94()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B3809008(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  v2[4] = swift_task_alloc();
  v3 = sub_1B3C9A558();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_1B3C9C888();
  v2[8] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v2[9] = v5;
  v2[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B3809134, v5, v4);
}

uint64_t sub_1B3809134()
{
  v26 = v0;
  sub_1B3C987F8();

  v1 = sub_1B3C9A538();
  v2 = sub_1B3C9CAE8();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 134218242;
    sub_1B3C97B28();
    v8 = 0.25;
    if (*(v0 + 113))
    {
      v8 = 1.0;
    }

    *(v6 + 4) = v8;
    *(v6 + 12) = 2082;
    sub_1B3C97B28();
    if (*(v0 + 114))
    {
      v9 = 0x6C616D726F6ELL;
    }

    else
    {
      v9 = 2003790963;
    }

    if (*(v0 + 114))
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    v11 = sub_1B3749364(v9, v10, &v25);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_1B36F3000, v1, v2, "Parameters: { playbackRate: %f, aka. %{public}s }", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1B8C6EC70](v7, -1, -1);
    MEMORY[0x1B8C6EC70](v6, -1, -1);

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v13 = *(v0 + 48);
    v12 = *(v0 + 56);
    v14 = *(v0 + 40);

    (*(v13 + 8))(v12, v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v15 = swift_allocObject();
  *(v0 + 88) = v15;
  *(v15 + 16) = xmmword_1B3CF9810;
  sub_1B3C97B28();
  if (*(v0 + 112))
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 0.25;
  }

  v17 = objc_allocWithZone(MEMORY[0x1E69C4210]);
  *&v18 = v16;
  *(v15 + 32) = [v17 initWithPlaybackRate_];
  sub_1B3C98638();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  type metadata accessor for PXEditAppDependencyManager();
  v23 = swift_task_alloc();
  *(v0 + 96) = v23;
  *v23 = v0;
  v23[1] = sub_1B3758424;

  return sub_1B37BD81C();
}

uint64_t sub_1B3809410()
{
  sub_1B3C97CC8();
  OUTLINED_FUNCTION_15_0();
  v34 = v1;
  v35 = v0;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v33 = v3 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0);
  v5 = OUTLINED_FUNCTION_8_0(v4);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  OUTLINED_FUNCTION_8_0(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1B3C97F38();
  OUTLINED_FUNCTION_15_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  v16 = sub_1B3C98188();
  v17 = OUTLINED_FUNCTION_8_0(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v18 = sub_1B3C9C598();
  v19 = OUTLINED_FUNCTION_8_0(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  v20 = sub_1B3C97F48();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855C98);
  OUTLINED_FUNCTION_13_0();
  sub_1B3C9C538();
  sub_1B3C98178();
  (*(v11 + 104))(v15, *MEMORY[0x1E6968DF0], v9);
  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v20);
  v25 = sub_1B3C97AE8();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v25);
  (*(v34 + 104))(v33, *MEMORY[0x1E695A500], v35);
  sub_1B3808620();
  return sub_1B3C97B58();
}