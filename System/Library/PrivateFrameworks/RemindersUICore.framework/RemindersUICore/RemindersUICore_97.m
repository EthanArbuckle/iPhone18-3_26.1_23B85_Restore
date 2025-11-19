uint64_t storeEnumTagSinglePayload for TTRReminderCellTextReplacement(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t destroy for TTRReminderHashtagData()
{
}

void *sub_21D9FDC9C(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRReminderCellTextHighlights(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRReminderCellTextHighlights(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderCellTextHighlights.Highlight(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t destroy for TTRReminderCellTextEditingAugmentation(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

__n128 initializeWithCopy for TTRReminderCellTextEditingAugmentation(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = v2;
    v3 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v3;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  return result;
}

void *assignWithCopy for TTRReminderCellTextEditingAugmentation(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      a1[3] = a2[3];
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      return a1;
    }

LABEL_7:
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  sub_21DBF8E0C();

  a1[3] = a2[3];
  sub_21DBF8E0C();

  return a1;
}

_OWORD *assignWithTake for TTRReminderCellTextEditingAugmentation(_OWORD *result, uint64_t a2)
{
  if (*(result + 1) < 0xFFFFFFFFuLL)
  {
    v5 = *(a2 + 16);
    *result = *a2;
    result[1] = v5;
  }

  else
  {
    v3 = *(a2 + 8);
    if (v3 < 0xFFFFFFFF)
    {
      v4 = result;

      v6 = *(a2 + 16);
      *v4 = *a2;
      v4[1] = v6;
    }

    else
    {
      *result = *a2;
      *(result + 1) = v3;
      v4 = result;

      v4[1] = *(a2 + 16);
    }

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRReminderCellTextEditingAugmentation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for TTRReminderCellTextEditingAugmentation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
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

void *sub_21D9FE11C(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t initializeWithCopy for TTRReminderCellParagraphStyleUpdate.ParagraphStyleAndRange(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_21D749C9C(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithCopy for TTRReminderCellParagraphStyleUpdate.ParagraphStyleAndRange(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_21D749C9C(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  v9 = *(a1 + 16);
  *(a1 + 16) = v6;
  sub_21D228468(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for TTRReminderCellParagraphStyleUpdate.ParagraphStyleAndRange(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = *a2;
  v7 = *(a1 + 16);
  *(a1 + 16) = v4;
  sub_21D228468(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderCellParagraphStyleUpdate.ParagraphStyleAndRange(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 40))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderCellParagraphStyleUpdate.ParagraphStyleAndRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_21D9FE328(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D749C9C(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRReminderCellParagraphStyleUpdate.ParagraphStyleAndRange.ParagraphStyleWithOrderInfo(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D749C9C(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_21D228468(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TTRReminderCellParagraphStyleUpdate.ParagraphStyleAndRange.ParagraphStyleWithOrderInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_21D228468(v4, v5, v6);
  return a1;
}

void *sub_21D9FE424(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRParticipantAvatarResult(void *a1, void *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  a1[1] = a2[1];
  a1[2] = a2[2];
  sub_21DBF8E0C();

  return a1;
}

void *assignWithTake for TTRParticipantAvatarResult(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  return a1;
}

void *assignWithCopy for TTRReminderCellHashtagTextUpdate.HashtagAndRange(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  a1[2] = a2[2];
  return a1;
}

uint64_t assignWithTake for TTRReminderCellHashtagTextUpdate.HashtagAndRange(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t sub_21D9FE5DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D9FE624(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D9FE684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D9FE6EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

int *sub_21D9FE790(uint64_t a1)
{
  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F110) + 36);
  result = type metadata accessor for TTRIRemindersListItemIntermediateViewModel();
  v4 = *(v2 + result[9]);
  if (v4 != v1[OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_isTargetOfContextualPresentation])
  {
    v1[OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_isTargetOfContextualPresentation] = v4;

    return [v1 setTintAdjustmentMode_];
  }

  return result;
}

uint64_t sub_21D9FE864(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_viewModelObserver;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

id TTRIRemindersListIntermediateViewModelObservingCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *TTRIRemindersListIntermediateViewModelObservingCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_viewModelObserver] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_isTargetOfContextualPresentation] = 0;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for TTRIRemindersListIntermediateViewModelObservingCell();
  v9 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A78);
  v11 = swift_allocObject();
  v12 = *(*v11 + 88);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F110);
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  v14 = (v11 + *(*v11 + 104));
  v14[1] = 0;
  v14[2] = 0;
  *v14 = 0;
  *(v11 + *(*v11 + 112)) = 0;
  v15 = (v11 + *(*v11 + 96));
  *v15 = sub_21D9FED58;
  v15[1] = v10;
  v16 = OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_viewModelObserver;
  swift_beginAccess();
  *&v9[v16] = v11;

  return v9;
}

uint64_t sub_21D9FEB20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F268);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F110);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_viewModelObserver;
    result = swift_beginAccess();
    v12 = *(v10 + v11);
    if (v12)
    {
      v13 = *(*v12 + 88);
      swift_beginAccess();
      sub_21D9FF094(v12 + v13, v4);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {

        v14 = &qword_27CE5F268;
        v15 = v4;
      }

      else
      {
        sub_21D9FF104(v4, v8);
        (*((*MEMORY[0x277D85000] & *v10) + 0xA8))(v8, a1);

        v14 = &unk_27CE5F110;
        v15 = v8;
      }

      return sub_21D0CF7E0(v15, v14);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id TTRIRemindersListIntermediateViewModelObservingCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TTRIRemindersListIntermediateViewModelObservingCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_viewModelObserver) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_isTargetOfContextualPresentation) = 0;
  sub_21DBFC31C();
  __break(1u);
}

uint64_t sub_21D9FEEB0()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TTRIRemindersListIntermediateViewModelObservingCell();
  objc_msgSendSuper2(&v5, sel_prepareForReuse);
  v1 = OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_viewModelObserver;
  result = swift_beginAccess();
  v3 = *&v0[v1];
  if (v3)
  {
    v4 = *(*v3 + 112);
    if (*(v3 + v4))
    {

      sub_21DBF901C();
    }

    else
    {
    }

    *(v3 + v4) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id TTRIRemindersListIntermediateViewModelObservingCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIRemindersListIntermediateViewModelObservingCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D9FF094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F268);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D9FF104(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F110);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D9FF174()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64A80);
  v1 = __swift_project_value_buffer(v0, qword_27CE64A80);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRRemindersListCurrentTipCapability.visibleTip.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_activeTip;
  swift_beginAccess();
  v8 = 1;
  if (!(*(v4 + 48))(v1 + v7, 1, v3))
  {
    sub_21D9FF418(v1 + v7, v6, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    v9 = v6[*(v3 + 24)];
    if (v9 != 2 && (v9 & 1) != 0 && v6[*(v3 + 20)] == 1)
    {
      sub_21D9FF418(v6, a1, type metadata accessor for TTRRemindersListTip);
      v8 = 0;
    }

    sub_21DA035F8(v6, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
  }

  v10 = type metadata accessor for TTRRemindersListTip(0);
  return (*(*(v10 - 8) + 56))(a1, v8, 1, v10);
}

uint64_t sub_21D9FF418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D9FF480@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E6070;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4);
}

uint64_t sub_21D9FF514(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t TTRRemindersListCurrentTipCapability.visibleTipDidChange.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_21D0D0E78(v1);
  return v1;
}

uint64_t TTRRemindersListCurrentTipCapability.visibleTipDidChange.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_21D0D0E88(v5);
}

uint64_t TTRRemindersListCurrentTipCapability.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_activeTip;
  v2 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_pendingTip, 1, 1, v2);
  return v0;
}

uint64_t TTRRemindersListCurrentTipCapability.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_activeTip;
  v2 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_pendingTip, 1, 1, v2);
  return v0;
}

uint64_t TTRRemindersListCurrentTipCapability.deinit()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_pendingTip;
  swift_beginAccess();
  v2 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v3 = *(*(v2 - 8) + 48);
  if (!v3(v1, 1, v2))
  {
    v4 = *(v2 + 28);
    if (*(v1 + v4))
    {
      sub_21DBFA96C();
    }

    *(v1 + v4) = 0;
  }

  swift_endAccess();
  v5 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_activeTip;
  swift_beginAccess();
  if (!v3(v5, 1, v2))
  {
    v6 = *(v2 + 28);
    if (*(v5 + v6))
    {
      sub_21DBFA96C();
    }

    *(v5 + v6) = 0;
  }

  swift_endAccess();
  sub_21D0D0E88(*(v0 + 16));
  sub_21D0CF7E0(v5, &qword_27CE64A98);
  sub_21D0CF7E0(v1, &qword_27CE64A98);
  return v0;
}

uint64_t TTRRemindersListCurrentTipCapability.__deallocating_deinit()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_pendingTip;
  swift_beginAccess();
  v2 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v3 = *(*(v2 - 8) + 48);
  if (!v3(v1, 1, v2))
  {
    v4 = *(v2 + 28);
    if (*(v1 + v4))
    {
      sub_21DBFA96C();
    }

    *(v1 + v4) = 0;
  }

  swift_endAccess();
  v5 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_activeTip;
  swift_beginAccess();
  if (!v3(v5, 1, v2))
  {
    v6 = *(v2 + 28);
    if (*(v5 + v6))
    {
      sub_21DBFA96C();
    }

    *(v5 + v6) = 0;
  }

  swift_endAccess();
  sub_21D0D0E88(*(v0 + 16));
  sub_21D0CF7E0(v5, &qword_27CE64A98);
  sub_21D0CF7E0(v1, &qword_27CE64A98);
  return swift_deallocClassInstance();
}

uint64_t TTRRemindersListCurrentTipCapability.requestShowTip(_:)(uint64_t a1)
{
  v137 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v2 - 8);
  v136 = &v112 - v3;
  v4 = type metadata accessor for TTRRemindersListTips(0);
  v127 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v129 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v135 = &v112 - v7;
  MEMORY[0x28223BE20](v8);
  v117 = &v112 - v9;
  v128 = v10;
  MEMORY[0x28223BE20](v11);
  v116 = &v112 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA0);
  MEMORY[0x28223BE20](v13 - 8);
  v132 = (&v112 - v14);
  v131 = type metadata accessor for TTRRemindersListTip(0);
  v133 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v126 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v123 = &v112 - v17;
  MEMORY[0x28223BE20](v18);
  v115 = &v112 - v19;
  MEMORY[0x28223BE20](v20);
  v114 = &v112 - v21;
  v125 = v22;
  MEMORY[0x28223BE20](v23);
  v119 = &v112 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA8);
  MEMORY[0x28223BE20](v25);
  v122 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v112 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A98);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v120 = &v112 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v112 - v36;
  v38 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v124 = &v112 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v118 = &v112 - v42;
  MEMORY[0x28223BE20](v43);
  v121 = &v112 - v44;
  MEMORY[0x28223BE20](v45);
  v47 = &v112 - v46;
  v48 = OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_activeTip;
  swift_beginAccess();
  v138 = v1;
  v130 = v48;
  sub_21D0D3954(v1 + v48, v37, &qword_27CE64A98);
  v49 = v38;
  v134 = *(v39 + 48);
  if (v134(v37, 1, v38) == 1)
  {
    v50 = v25;
    sub_21D0CF7E0(v37, &qword_27CE64A98);
  }

  else
  {
    v113 = v39;
    sub_21DA03424(v37, v47, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    v50 = v25;
    v51 = *(v25 + 48);
    sub_21D9FF418(v137, v29, type metadata accessor for TTRRemindersListTip);
    sub_21D9FF418(v47, &v29[v51], type metadata accessor for TTRRemindersListTip);
    v52 = *v29;
    v53 = v29[v51];
    sub_21DA035F8(&v29[v51], type metadata accessor for TTRRemindersListTips);
    sub_21DA035F8(v29, type metadata accessor for TTRRemindersListTips);
    if (v52 == v53)
    {
      v67 = v49;
      v47[v49[5]] = 1;
      v68 = v138 + OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_pendingTip;
      swift_beginAccess();
      v69 = v134(v68, 1, v49);
      v70 = v113;
      if (!v69)
      {
        v71 = v67[7];
        if (*(v68 + v71))
        {
          sub_21DBFA96C();
        }

        *(v68 + v71) = 0;
      }

      sub_21D0CF7E0(v68, &qword_27CE64A98);
      v72 = *(v70 + 56);
      v72(v68, 1, 1, v67);
      swift_endAccess();
      v73 = v120;
      sub_21D9FF418(v47, v120, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
      v72(v73, 0, 1, v67);
      sub_21DA00A10(v73);
      sub_21D0CF7E0(v73, &qword_27CE64A98);
      v74 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState;
      v75 = v47;
      return sub_21DA035F8(v75, v74);
    }

    sub_21DA035F8(v47, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
  }

  v54 = v49;
  v55 = v134;
  v56 = OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_pendingTip;
  v57 = v138;
  swift_beginAccess();
  sub_21D0D3954(v57 + v56, v32, &qword_27CE64A98);
  v58 = v55(v32, 1, v49);
  v59 = v133;
  if (v58 == 1)
  {
    sub_21D0CF7E0(v32, &qword_27CE64A98);
  }

  else
  {
    v60 = v121;
    sub_21DA03424(v32, v121, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    v61 = *(v50 + 48);
    v62 = v122;
    sub_21D9FF418(v137, v122, type metadata accessor for TTRRemindersListTip);
    sub_21D9FF418(v60, &v62[v61], type metadata accessor for TTRRemindersListTip);
    v63 = *v62;
    v64 = v62[v61];
    sub_21DA035F8(&v62[v61], type metadata accessor for TTRRemindersListTips);
    sub_21DA035F8(v62, type metadata accessor for TTRRemindersListTips);
    if (v63 == v64)
    {
      *(v60 + v54[5]) = 1;
      sub_21DA01404(v60);
      v74 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState;
      v75 = v60;
      return sub_21DA035F8(v75, v74);
    }

    sub_21DA035F8(v60, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
  }

  v65 = v130;
  if (v55((v138 + v130), 1, v54))
  {
    v66 = v132;
    (*(v59 + 56))(v132, 1, 1, v131);
LABEL_23:
    sub_21D0CF7E0(v66, &qword_27CE64AA0);
LABEL_24:
    v81 = v137;
    v82 = v124;
    sub_21D9FF418(v137, v124, type metadata accessor for TTRRemindersListTip);
    *(v82 + v54[5]) = 1;
    v83 = v54[6];
    v134 = v54[7];
    v84 = v123;
    sub_21D9FF418(v81, v123, type metadata accessor for TTRRemindersListTip);
    v132 = type metadata accessor for TTRRemindersListTips;
    v85 = v84;
    v86 = v135;
    sub_21DA03424(v85, v135, type metadata accessor for TTRRemindersListTips);
    *(v82 + v83) = 2;
    v87 = sub_21DBFA89C();
    (*(*(v87 - 8) + 56))(v136, 1, 1, v87);
    v88 = swift_allocObject();
    swift_weakInit();
    v89 = v129;
    sub_21D9FF418(v86, v129, type metadata accessor for TTRRemindersListTips);
    v90 = v126;
    sub_21D9FF418(v81, v126, type metadata accessor for TTRRemindersListTip);
    sub_21DBFA84C();

    v91 = sub_21DBFA83C();
    v92 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    v93 = (v128 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
    v94 = (*(v59 + 80) + v93 + 8) & ~*(v59 + 80);
    v95 = swift_allocObject();
    v96 = MEMORY[0x277D85700];
    *(v95 + 16) = v91;
    *(v95 + 24) = v96;
    sub_21DA03424(v89, v95 + v92, v132);
    *(v95 + v93) = v88;
    sub_21DA03424(v90, v95 + v94, type metadata accessor for TTRRemindersListTip);

    v97 = sub_21D1B5178(0, 0, v136, &unk_21DC36098, v95);
    sub_21DA035F8(v135, type metadata accessor for TTRRemindersListTips);
    *(v134 + v82) = v97;
    sub_21DA01404(v82);
    v74 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState;
    v75 = v82;
    return sub_21DA035F8(v75, v74);
  }

  v76 = v118;
  sub_21D9FF418(v138 + v65, v118, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
  v77 = *(v76 + v54[6]);
  v66 = v132;
  if (v77 != 2 && (v77 & 1) != 0 && *(v76 + v54[5]) == 1)
  {
    sub_21D9FF418(v76, v132, type metadata accessor for TTRRemindersListTip);
    v78 = 0;
  }

  else
  {
    v78 = 1;
  }

  sub_21DA035F8(v76, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
  v79 = v78;
  v80 = v131;
  (*(v59 + 56))(v66, v79, 1, v131);
  if ((*(v59 + 48))(v66, 1, v80) == 1)
  {
    goto LABEL_23;
  }

  v99 = v66;
  v100 = v119;
  sub_21DA03424(v99, v119, type metadata accessor for TTRRemindersListTip);
  v101 = v114;
  sub_21D9FF418(v100, v114, type metadata accessor for TTRRemindersListTip);
  v102 = v116;
  sub_21DA03424(v101, v116, type metadata accessor for TTRRemindersListTips);
  v103 = *v102;
  sub_21DA035F8(v102, type metadata accessor for TTRRemindersListTips);
  v104 = v115;
  sub_21D9FF418(v137, v115, type metadata accessor for TTRRemindersListTip);
  v105 = v104;
  v106 = v117;
  sub_21DA03424(v105, v117, type metadata accessor for TTRRemindersListTips);
  v107 = *v106;
  sub_21DA035F8(v106, type metadata accessor for TTRRemindersListTips);
  if ((v107 & 1) != 0 || !v103)
  {
    sub_21DA035F8(v119, type metadata accessor for TTRRemindersListTip);
    goto LABEL_24;
  }

  if (qword_27CE56F58 != -1)
  {
    swift_once();
  }

  v108 = sub_21DBF84BC();
  __swift_project_value_buffer(v108, qword_27CE64A80);
  v109 = sub_21DBF84AC();
  v110 = sub_21DBFAE9C();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 0;
    _os_log_impl(&dword_21D0C9000, v109, v110, "TTRRemindersListCurrentTipCapability#requestShowTip: existing tip has higher priority over the new one", v111, 2u);
    MEMORY[0x223D46520](v111, -1, -1);
  }

  v74 = type metadata accessor for TTRRemindersListTip;
  v75 = v119;
  return sub_21DA035F8(v75, v74);
}

uint64_t sub_21DA00A10(uint64_t a1)
{
  v77 = a1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA8);
  MEMORY[0x28223BE20](v71);
  v72 = &v70 - v2;
  v3 = type metadata accessor for TTRRemindersListTip(0);
  v82 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v70 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AB0);
  MEMORY[0x28223BE20](v78);
  v6 = (&v70 - v5);
  v7 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v74 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v70 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA0);
  MEMORY[0x28223BE20](v73);
  v76 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v80 = &v70 - v15;
  MEMORY[0x28223BE20](v16);
  v75 = &v70 - v17;
  MEMORY[0x28223BE20](v18);
  v81 = &v70 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v70 - v21;
  v23 = OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_activeTip;
  swift_beginAccess();
  v24 = *(v8 + 48);
  v25 = 1;
  v26 = v24(v1 + v23, 1, v7);
  v27 = v82;
  if (!v26)
  {
    v79 = v24;
    sub_21D9FF418(v1 + v23, v12, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    v28 = v12[*(v7 + 24)];
    if (v28 != 2 && (v28 & 1) != 0 && v12[*(v7 + 20)] == 1)
    {
      sub_21D9FF418(v12, v22, type metadata accessor for TTRRemindersListTip);
      v25 = 0;
    }

    sub_21DA035F8(v12, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    v27 = v82;
    v24 = v79;
  }

  v79 = v6;
  v29 = v27;
  v30 = v25;
  v31 = *(v27 + 56);
  v31(v22, v30, 1, v3);
  swift_beginAccess();
  sub_21DA03C98(v77, v1 + v23);
  swift_endAccess();
  v82 = v1;
  v32 = v24(v1 + v23, 1, v7);
  v33 = 1;
  v34 = v81;
  if (!v32)
  {
    v35 = v74;
    sub_21D9FF418(v82 + v23, v74, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    v36 = *(v35 + *(v7 + 24));
    if (v36 != 2 && (v36 & 1) != 0 && *(v35 + *(v7 + 20)) == 1)
    {
      sub_21D9FF418(v35, v34, type metadata accessor for TTRRemindersListTip);
      v33 = 0;
    }

    sub_21DA035F8(v35, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
  }

  v31(v34, v33, 1, v3);
  v37 = v79;
  v38 = *(v78 + 48);
  sub_21D0D3954(v22, v79, &qword_27CE64AA0);
  sub_21D0D3954(v34, v37 + v38, &qword_27CE64AA0);
  v39 = *(v29 + 48);
  if (v39(v37, 1, v3) == 1)
  {
    v40 = v39(v37 + v38, 1, v3);
    v41 = v80;
    if (v40 == 1)
    {
      sub_21D0CF7E0(v34, &qword_27CE64AA0);
      sub_21D0CF7E0(v22, &qword_27CE64AA0);
      return sub_21D0CF7E0(v37, &qword_27CE64AA0);
    }

    goto LABEL_18;
  }

  v43 = v75;
  sub_21D0D3954(v37, v75, &qword_27CE64AA0);
  v44 = v39(v37 + v38, 1, v3);
  v41 = v80;
  if (v44 == 1)
  {
    sub_21DA035F8(v43, type metadata accessor for TTRRemindersListTip);
LABEL_18:
    sub_21D0CF7E0(v37, &qword_27CE64AB0);
    goto LABEL_19;
  }

  v62 = v70;
  sub_21DA03424(v37 + v38, v70, type metadata accessor for TTRRemindersListTip);
  v63 = v72;
  v64 = *(v71 + 48);
  sub_21D9FF418(v43, v72, type metadata accessor for TTRRemindersListTip);
  sub_21DA03424(v62, &v63[v64], type metadata accessor for TTRRemindersListTip);
  v65 = v22;
  v66 = *v63;
  v67 = v43;
  v68 = v63[v64];
  sub_21DA035F8(&v63[v64], type metadata accessor for TTRRemindersListTips);
  sub_21DA035F8(v63, type metadata accessor for TTRRemindersListTips);
  sub_21DA035F8(v67, type metadata accessor for TTRRemindersListTip);
  sub_21D0CF7E0(v37, &qword_27CE64AA0);
  v69 = v66 == v68;
  v22 = v65;
  if (v69)
  {
    goto LABEL_28;
  }

LABEL_19:
  if (qword_27CE56F58 != -1)
  {
    swift_once();
  }

  v45 = sub_21DBF84BC();
  __swift_project_value_buffer(v45, qword_27CE64A80);
  sub_21D0D3954(v22, v41, &qword_27CE64AA0);
  v46 = v76;
  sub_21D0D3954(v34, v76, &qword_27CE64AA0);
  v47 = sub_21DBF84AC();
  v48 = sub_21DBFAE9C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v83[0] = v50;
    *v49 = 136315394;
    v51 = sub_21DBFBA5C();
    v53 = v52;
    sub_21D0CF7E0(v41, &qword_27CE64AA0);
    v54 = sub_21D0CDFB4(v51, v53, v83);

    *(v49 + 4) = v54;
    *(v49 + 12) = 2080;
    v55 = sub_21DBFBA5C();
    v57 = v56;
    v34 = v81;
    sub_21D0CF7E0(v46, &qword_27CE64AA0);
    v58 = sub_21D0CDFB4(v55, v57, v83);

    *(v49 + 14) = v58;
    _os_log_impl(&dword_21D0C9000, v47, v48, "TTRRemindersListCurrentTipCapability: visible tip changes {from: %s, to: %s}", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v50, -1, -1);
    MEMORY[0x223D46520](v49, -1, -1);
  }

  else
  {

    sub_21D0CF7E0(v46, &qword_27CE64AA0);
    sub_21D0CF7E0(v41, &qword_27CE64AA0);
  }

  v59 = v82;
  swift_beginAccess();
  v60 = *(v59 + 16);
  if (v60)
  {
    swift_endAccess();

    v60(v61);
    sub_21D0D0E88(v60);
LABEL_28:
    sub_21D0CF7E0(v34, &qword_27CE64AA0);
    return sub_21D0CF7E0(v22, &qword_27CE64AA0);
  }

  sub_21D0CF7E0(v34, &qword_27CE64AA0);
  sub_21D0CF7E0(v22, &qword_27CE64AA0);
  return swift_endAccess();
}

uint64_t sub_21DA01404(uint64_t a1)
{
  v50 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A98);
  MEMORY[0x28223BE20](v2 - 8);
  v53 = &v42 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA8);
  MEMORY[0x28223BE20](v45);
  v46 = &v42 - v4;
  v5 = type metadata accessor for TTRRemindersListTip(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AB0);
  MEMORY[0x28223BE20](v49);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA0);
  MEMORY[0x28223BE20](v10 - 8);
  v47 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v43 = v1;
  v18 = v1 + OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_pendingTip;
  swift_beginAccess();
  v19 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v51 = *(v19 - 8);
  v52 = v19;
  v20 = 1;
  v48 = *(v51 + 48);
  if (!v48(v18, 1))
  {
    sub_21D9FF418(v18, v17, type metadata accessor for TTRRemindersListTip);
    v20 = 0;
  }

  v21 = *(v6 + 56);
  v21(v17, v20, 1, v5);
  v22 = v50;
  sub_21D9FF418(v50, v14, type metadata accessor for TTRRemindersListTip);
  v21(v14, 0, 1, v5);
  v23 = *(v49 + 48);
  sub_21DA03D08(v17, v9);
  sub_21DA03D08(v14, &v9[v23]);
  v24 = *(v6 + 48);
  v25 = v22;
  if (v24(v9, 1, v5) == 1)
  {
    v26 = v24(&v9[v23], 1, v5);
    v27 = v53;
    v28 = v51;
    if (v26 == 1)
    {
      sub_21D0CF7E0(v9, &qword_27CE64AA0);
      v29 = v52;
      goto LABEL_14;
    }
  }

  else
  {
    v30 = v47;
    sub_21D0D3954(v9, v47, &qword_27CE64AA0);
    if (v24(&v9[v23], 1, v5) != 1)
    {
      v35 = v44;
      sub_21DA03424(&v9[v23], v44, type metadata accessor for TTRRemindersListTip);
      v36 = *(v45 + 48);
      v37 = v30;
      v38 = v30;
      v39 = v46;
      sub_21D9FF418(v37, v46, type metadata accessor for TTRRemindersListTip);
      sub_21DA03424(v35, &v39[v36], type metadata accessor for TTRRemindersListTip);
      LODWORD(v35) = *v39;
      v40 = v39[v36];
      sub_21DA035F8(&v39[v36], type metadata accessor for TTRRemindersListTips);
      sub_21DA035F8(v39, type metadata accessor for TTRRemindersListTips);
      sub_21DA035F8(v38, type metadata accessor for TTRRemindersListTip);
      sub_21D0CF7E0(v9, &qword_27CE64AA0);
      v41 = v35 == v40;
      v29 = v52;
      v27 = v53;
      v28 = v51;
      if (v41)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    sub_21DA035F8(v30, type metadata accessor for TTRRemindersListTip);
    v27 = v53;
    v28 = v51;
  }

  sub_21D0CF7E0(v9, &qword_27CE64AB0);
  v29 = v52;
LABEL_9:
  swift_beginAccess();
  if (!(v48)(v18, 1, v29))
  {
    v31 = v29[7];
    if (*(v18 + v31))
    {
      sub_21DBFA96C();
    }

    *(v18 + v31) = 0;
  }

  sub_21D0CF7E0(v18, &qword_27CE64A98);
  (*(v28 + 56))(v18, 1, 1, v29);
  swift_endAccess();
LABEL_14:
  sub_21D9FF418(v25, v27, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
  v32 = *(v28 + 56);
  v32(v27, 0, 1, v29);
  swift_beginAccess();
  sub_21DA03D78(v27, v18);
  result = swift_endAccess();
  v34 = *(v25 + v29[6]);
  if (v34 != 2 && (v34 & 1) != 0 && *(v25 + v29[5]) == 1)
  {
    v32(v27, 1, 1, v29);
    swift_beginAccess();
    sub_21DA03D78(v27, v18);
    swift_endAccess();
    sub_21D9FF418(v25, v27, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    v32(v27, 0, 1, v29);
    sub_21DA00A10(v27);
    return sub_21D0CF7E0(v27, &qword_27CE64A98);
  }

  return result;
}

uint64_t sub_21DA01B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C460);
  v6[12] = swift_task_alloc();
  v7 = sub_21DBF8EFC();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C468);
  v6[17] = swift_task_alloc();
  v6[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C470);
  v6[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C478);
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C480);
  v6[23] = v9;
  v6[24] = *(v9 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = sub_21DBFA84C();
  v6[27] = sub_21DBFA83C();
  v11 = sub_21DBFA7CC();
  v6[28] = v11;
  v6[29] = v10;

  return MEMORY[0x2822009F8](sub_21DA01DB0, v11, v10);
}

uint64_t sub_21DA01DB0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  type metadata accessor for TTRRemindersListTips(0);
  sub_21DBF8D7C();
  sub_21DA03DE8();
  sub_21DBF8D8C();
  MEMORY[0x223D44910](v3);
  sub_21D0D0F1C(&qword_27CE5C490, &qword_27CE5C468);
  sub_21DBFA9BC();
  sub_21DBFC17C();
  (*(v2 + 8))(v1, v3);
  sub_21DBFC18C();
  swift_beginAccess();
  v4 = sub_21DBFA83C();
  v0[30] = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_21DBFA7CC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v0[31] = v5;
  v0[32] = v7;

  return MEMORY[0x2822009F8](sub_21DA01F70, v5, v7);
}

uint64_t sub_21DA01F70()
{
  v1 = v0[30];
  v0[33] = sub_21DBFC16C();
  sub_21D0D0F1C(&qword_27CE5C498, &qword_27CE5C470);
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_21DA02074;
  v3 = v0[12];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v3, v1, v4);
}

uint64_t sub_21DA02074()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 248);
    v4 = *(v2 + 256);
    v5 = sub_21DA0235C;
  }

  else
  {
    (*(v2 + 264))();
    v3 = *(v2 + 248);
    v4 = *(v2 + 256);
    v5 = sub_21DA0219C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21DA0219C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_21D0CF7E0(v3, &qword_27CE5C460);
    v4 = v0[28];
    v5 = v0[29];

    return MEMORY[0x2822009F8](sub_21DA026F4, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[15], v3, v1);
    v6 = sub_21DBFC17C();
    v0[35] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[36] = v8;
    *v8 = v0;
    v8[1] = sub_21DA02374;
    v9 = v0[15];

    return (v11)(v0 + 37, v9);
  }
}

uint64_t sub_21DA02374()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);

  (*(v3 + 8))(v2, v4);
  *(v1 + 297) = *(v1 + 296);
  v5 = *(v1 + 256);
  v6 = *(v1 + 248);

  return MEMORY[0x2822009F8](sub_21DA02520, v6, v5);
}

uint64_t sub_21DA02520()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return MEMORY[0x2822009F8](sub_21DA02584, v1, v2);
}

uint64_t sub_21DA02584()
{
  if (swift_weakLoadStrong())
  {
    sub_21DA027C8(*(v0 + 297), *(v0 + 88));

    v1 = sub_21DBFA83C();
    *(v0 + 240) = v1;
    if (v1)
    {
      swift_getObjectType();
      v2 = sub_21DBFA7CC();
      v4 = v3;
    }

    else
    {
      v2 = 0;
      v4 = 0;
    }

    *(v0 + 248) = v2;
    *(v0 + 256) = v4;

    return MEMORY[0x2822009F8](sub_21DA01F70, v2, v4);
  }

  else
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_21DA026F4()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21DA027C8(int a1, uint64_t a2)
{
  v3 = v2;
  v68 = a2;
  v70 = a1;
  v4 = type metadata accessor for TTRRemindersListTips(0);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListTip(0);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA8);
  MEMORY[0x28223BE20](v8);
  v65 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A98);
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v61 - v19;
  v21 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v66 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v61 - v25;
  v27 = OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_pendingTip;
  swift_beginAccess();
  v69 = v3;
  sub_21D0D3954(v3 + v27, v20, &qword_27CE64A98);
  v63 = v22;
  v28 = *(v22 + 48);
  v29 = v21;
  v30 = v28(v20, 1, v21);
  v67 = v8;
  if (v30 == 1)
  {
    v31 = v70;
    sub_21D0CF7E0(v20, &qword_27CE64A98);
  }

  else
  {
    sub_21DA03424(v20, v26, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    v32 = *(v8 + 48);
    sub_21D9FF418(v26, v12, type metadata accessor for TTRRemindersListTip);
    sub_21D9FF418(v68, &v12[v32], type metadata accessor for TTRRemindersListTip);
    v33 = *v12;
    v34 = v12[v32];
    sub_21DA035F8(&v12[v32], type metadata accessor for TTRRemindersListTips);
    sub_21DA035F8(v12, type metadata accessor for TTRRemindersListTips);
    if (v33 == v34)
    {
      v26[*(v29 + 24)] = v70 & 1;
      sub_21DA01404(v26);
      v53 = v26;
      return sub_21DA035F8(v53, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    }

    sub_21DA035F8(v26, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    v31 = v70;
  }

  v35 = v29;
  v36 = OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_activeTip;
  v37 = v69;
  swift_beginAccess();
  sub_21D0D3954(v37 + v36, v17, &qword_27CE64A98);
  v38 = v28(v17, 1, v29);
  v39 = v67;
  if (v38 == 1)
  {
    return sub_21D0CF7E0(v17, &qword_27CE64A98);
  }

  v41 = v66;
  sub_21DA03424(v17, v66, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
  v42 = *(v39 + 48);
  v43 = v65;
  sub_21D9FF418(v41, v65, type metadata accessor for TTRRemindersListTip);
  v44 = v68;
  sub_21D9FF418(v68, &v43[v42], type metadata accessor for TTRRemindersListTip);
  v45 = *v43;
  v46 = v43[v42];
  sub_21DA035F8(&v43[v42], type metadata accessor for TTRRemindersListTips);
  sub_21DA035F8(v43, type metadata accessor for TTRRemindersListTips);
  if (v45 == v46)
  {
    if ((v31 & 1) == 0)
    {
      v47 = v61;
      sub_21D9FF418(v44, v61, type metadata accessor for TTRRemindersListTip);
      v48 = v62;
      sub_21DA03424(v47, v62, type metadata accessor for TTRRemindersListTips);
      if (*v48)
      {
        if (qword_27CE56F58 != -1)
        {
          swift_once();
        }

        v49 = sub_21DBF84BC();
        __swift_project_value_buffer(v49, qword_27CE64A80);
        v50 = sub_21DBF84AC();
        v51 = sub_21DBFAEDC();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_21D0C9000, v50, v51, "TTRRemindersListCurrentTipCapability: Dismissed a section rename tip", v52, 2u);
          MEMORY[0x223D46520](v52, -1, -1);
        }
      }

      else
      {
        if (qword_27CE56F58 != -1)
        {
          swift_once();
        }

        v54 = sub_21DBF84BC();
        __swift_project_value_buffer(v54, qword_27CE64A80);
        v55 = sub_21DBF84AC();
        v56 = sub_21DBFAEDC();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_21D0C9000, v55, v56, "TTRRemindersListCurrentTipCapability: TTRUserDefault groceryTipDismissed set to true after dismissing a grocery tip", v57, 2u);
          MEMORY[0x223D46520](v57, -1, -1);
        }

        if (qword_280D1AA10 != -1)
        {
          swift_once();
        }

        v58 = *(qword_280D1AA18 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
        if (v58)
        {
          v59 = sub_21DBFA12C();
          [v58 setBool:1 forKey:v59];
        }

        v50 = [objc_opt_self() daemonUserDefaults];
        [v50 setGroceryTipDismissed:1];
      }

      sub_21DA035F8(v48, type metadata accessor for TTRRemindersListTips);
    }

    *(v41 + *(v35 + 24)) = v31 & 1;
    v60 = v64;
    sub_21D9FF418(v41, v64, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    (*(v63 + 56))(v60, 0, 1, v35);
    sub_21DA00A10(v60);
    sub_21D0CF7E0(v60, &qword_27CE64A98);
  }

  v53 = v41;
  return sub_21DA035F8(v53, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
}

Swift::Void __swiftcall TTRRemindersListCurrentTipCapability.requestSetCurrentTipHidden(_:)(Swift::Bool a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A98);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_activeTip;
  swift_beginAccess();
  sub_21D0D3954(v1 + v13, v8, &qword_27CE64A98);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE64A98);
  }

  else
  {
    sub_21DA03424(v8, v12, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    v12[*(v9 + 20)] = !a1;
    sub_21D9FF418(v12, v5, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    (*(v10 + 56))(v5, 0, 1, v9);
    sub_21DA00A10(v5);
    sub_21D0CF7E0(v5, &qword_27CE64A98);
    sub_21DA035F8(v12, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
  }
}

Swift::Void __swiftcall TTRRemindersListCurrentTipCapability.requestDismissTip()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A98);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_pendingTip;
  swift_beginAccess();
  v5 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1, v5))
  {
    v7 = *(v5 + 28);
    if (*(v4 + v7))
    {
      sub_21DBFA96C();
    }

    *(v4 + v7) = 0;
  }

  sub_21D0CF7E0(v4, &qword_27CE64A98);
  v8 = *(v6 + 56);
  v8(v4, 1, 1, v5);
  swift_endAccess();
  v8(v3, 1, 1, v5);
  sub_21DA00A10(v3);
  sub_21D0CF7E0(v3, &qword_27CE64A98);
}

uint64_t sub_21DA03424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DA0348C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRRemindersListTips(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for TTRRemindersListTip(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_21D1B795C;

  return sub_21DA01B34(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_21DA035F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21DA03680()
{
  sub_21DA03748();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21DA03748()
{
  if (!qword_280D0FE20)
  {
    type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(255);
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_280D0FE20);
    }
  }
}

char *sub_21DA037A0(char *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
    v8 = sub_21DBF8D7C();
    (*(*(v8 - 8) + 16))(&v3[v7], &a2[v7], v8);
    v9 = a3[6];
    v3[a3[5]] = a2[a3[5]];
    v3[v9] = a2[v9];
    *&v3[a3[7]] = *&a2[a3[7]];
  }

  return v3;
}

uint64_t sub_21DA03890(uint64_t a1)
{
  v2 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v3 = sub_21DBF8D7C();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
}

_BYTE *sub_21DA03918(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v7 = sub_21DBF8D7C();
  (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
  v8 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  a1[v8] = a2[v8];
  *&a1[a3[7]] = *&a2[a3[7]];

  return a1;
}

_BYTE *sub_21DA039C0(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v7 = sub_21DBF8D7C();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  a1[a3[5]] = a2[a3[5]];
  a1[a3[6]] = a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];

  return a1;
}

_BYTE *sub_21DA03A78(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v7 = sub_21DBF8D7C();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  a1[v8] = a2[v8];
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

_BYTE *sub_21DA03B1C(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v7 = sub_21DBF8D7C();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  v8 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  a1[v8] = a2[v8];
  *&a1[a3[7]] = *&a2[a3[7]];

  return a1;
}

uint64_t sub_21DA03BF0()
{
  result = type metadata accessor for TTRRemindersListTips(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21DA03C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A98);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DA03D08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DA03D78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DA03DE8()
{
  result = qword_27CE64AB8;
  if (!qword_27CE64AB8)
  {
    sub_21DBF8D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64AB8);
  }

  return result;
}

uint64_t TTRSECreateRemindersTreeViewModelUpdateContext.itemToStartEditing.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext() + 20);

  return sub_21D589C24(v3, a1);
}

uint64_t type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext()
{
  result = qword_27CE64AC0;
  if (!qword_27CE64AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTRSECreateRemindersTreeViewModelUpdateContext.init(itemToStartEditing:viewUpdateType:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a2;
  v4 = &a3[*(type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext() + 20)];

  return sub_21DA03F2C(a1, v4);
}

uint64_t sub_21DA03F2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRSECreateRemindersTreeViewModelUpdateContext(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v4 + 16) & ~v4));

    return v3;
  }

  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E4D0);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v32 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v33 = *(v32 - 8);
            if ((*(v33 + 48))(v7, 1, v32))
            {
              v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(v6, v7, *(*(v34 - 8) + 64));
            }

            else
            {
              *v6 = *v7;
              v115 = v9;
              v43 = *(v32 + 20);
              v44 = sub_21DBF6C1C();
              v106 = *(*(v44 - 8) + 16);
              sub_21DBF8E0C();
              v45 = v6 + v43;
              v46 = v7 + v43;
              v9 = v115;
              v106(v45, v46, v44);
              (*(v33 + 56))(v6, 0, 1, v32);
            }

            v47 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v48 = (v6 + v47);
            v49 = (v7 + v47);
            v50 = v49[1];
            if (v50)
            {
              *v48 = *v49;
              v48[1] = v50;
              v51 = v49[2];
              v48[2] = v51;
              sub_21DBF8E0C();
              v52 = v51;
            }

            else
            {
              *v48 = *v49;
              v48[2] = v49[2];
            }

            goto LABEL_131;
          case 7:
            v38 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v39 = *(v38 - 8);
            if ((*(v39 + 48))(v7, 1, v38))
            {
              v40 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(v6, v7, *(*(v40 - 8) + 64));
            }

            else
            {
              v54 = sub_21DBF563C();
              (*(*(v54 - 8) + 16))(v6, v7, v54);
              *(v6 + *(v38 + 20)) = *(v7 + *(v38 + 20));
              (*(v39 + 56))(v6, 0, 1, v38);
            }

            v55 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(v6 + *(v55 + 20)) = *(v7 + *(v55 + 20));
            goto LABEL_131;
          case 8:
            *v6 = *v7;
            v14 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v15 = sub_21DBF8D7C();
            (*(*(v15 - 8) + 16))(v6 + v14, v7 + v14, v15);
LABEL_131:
            swift_storeEnumTagMultiPayload();
            goto LABEL_132;
        }

LABEL_37:
        memcpy(v6, v7, *(*(v12 - 8) + 64));
LABEL_132:
        *(v6 + *(v8 + 48)) = *(v7 + *(v8 + 48));
        (*(v9 + 56))(v6, 0, 1, v8);
        return v3;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *v6 = *v7;
        *(v6 + 8) = *(v7 + 8);
        *(v6 + 9) = *(v7 + 9);
        v24 = v7[2];
        v6[2] = v24;
        v25 = v24;
        goto LABEL_131;
      }

      v113 = v9;
      v35 = *v7;
      *v6 = *v7;
      v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v21 = *(v20 - 8);
      v36 = *(v21 + 48);
      v37 = v35;
      if (v36(v7 + v19, 1, v20))
      {
LABEL_30:
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v6 + v19, v7 + v19, *(*(v31 - 8) + 64));
        v9 = v113;
        goto LABEL_131;
      }

      v53 = swift_getEnumCaseMultiPayload();
      if (v53 > 4)
      {
        if (v53 <= 7)
        {
          if (v53 == 5 || v53 == 6)
          {
            goto LABEL_116;
          }

          goto LABEL_129;
        }

        if (v53 != 8 && v53 != 9)
        {
          goto LABEL_129;
        }

LABEL_115:
        v93 = *(v7 + v19);
        *(v6 + v19) = v93;
        v94 = v93;
        swift_storeEnumTagMultiPayload();
LABEL_130:
        (*(v21 + 56))(v6 + v19, 0, 1, v20);
        goto LABEL_131;
      }

      if (v53 <= 2)
      {
        if (v53 != 1)
        {
          if (v53 == 2)
          {
            goto LABEL_116;
          }

LABEL_129:
          memcpy(v6 + v19, v7 + v19, *(v21 + 64));
          goto LABEL_130;
        }

        goto LABEL_115;
      }

LABEL_116:
      v95 = sub_21DBF563C();
      (*(*(v95 - 8) + 16))(v6 + v19, v7 + v19, v95);
      swift_storeEnumTagMultiPayload();
      goto LABEL_130;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v113 = v9;
        v28 = *v7;
        *v6 = *v7;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        v29 = *(v21 + 48);
        v30 = v28;
        if (v29(v7 + v19, 1, v20))
        {
          goto LABEL_30;
        }

        v42 = swift_getEnumCaseMultiPayload();
        if (v42 > 4)
        {
          if (v42 <= 7)
          {
            if (v42 == 5 || v42 == 6)
            {
              goto LABEL_116;
            }

            goto LABEL_129;
          }

          if (v42 != 8 && v42 != 9)
          {
            goto LABEL_129;
          }

          goto LABEL_115;
        }

        if (v42 > 2)
        {
          goto LABEL_116;
        }

        if (v42 == 1)
        {
          goto LABEL_115;
        }

        if (v42 != 2)
        {
          goto LABEL_129;
        }
      }

      else
      {
        v113 = v9;
        v18 = *v7;
        *v6 = *v7;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        v22 = *(v21 + 48);
        v23 = v18;
        if (v22(v7 + v19, 1, v20))
        {
          goto LABEL_30;
        }

        v41 = swift_getEnumCaseMultiPayload();
        if (v41 > 4)
        {
          if (v41 <= 7)
          {
            if (v41 == 5 || v41 == 6)
            {
              goto LABEL_116;
            }

            goto LABEL_129;
          }

          if (v41 != 8 && v41 != 9)
          {
            goto LABEL_129;
          }

          goto LABEL_115;
        }

        if (v41 > 2)
        {
          goto LABEL_116;
        }

        if (v41 == 1)
        {
          goto LABEL_115;
        }

        if (v41 != 2)
        {
          goto LABEL_129;
        }
      }

      goto LABEL_116;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_37;
      }

      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = swift_getEnumCaseMultiPayload();
      v112 = v9;
      v111 = v8;
      if (v17 <= 4)
      {
        if (v17 > 2)
        {
LABEL_67:
          v56 = sub_21DBF563C();
          (*(*(v56 - 8) + 16))(v6, v7, v56);
          swift_storeEnumTagMultiPayload();
          goto LABEL_94;
        }

        if (v17 != 1)
        {
          if (v17 == 2)
          {
            goto LABEL_67;
          }

          goto LABEL_93;
        }

LABEL_70:
        v57 = *v7;
        *v6 = *v7;
        v58 = v57;
        swift_storeEnumTagMultiPayload();
        goto LABEL_94;
      }

      if (v17 > 7)
      {
        if (v17 == 8 || v17 == 9)
        {
          goto LABEL_70;
        }
      }

      else if (v17 == 5 || v17 == 6)
      {
        goto LABEL_67;
      }

LABEL_93:
      memcpy(v6, v7, *(*(v16 - 8) + 64));
LABEL_94:
      v62 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v63 = v62[5];
      v64 = v6 + v63;
      v65 = v7 + v63;
      v66 = *(v7 + v63 + 8);
      if (v66)
      {
        v103 = v6;
        *v64 = *v65;
        *(v64 + 1) = v66;
        v67 = *(v65 + 2);
        v68 = *(v65 + 3);
        v70 = *(v65 + 4);
        v69 = *(v65 + 5);
        v71 = *(v65 + 6);
        v99 = *(v65 + 7);
        v107 = v65[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v67, v68, v70, v69, v71, v99, v107);
        *(v64 + 2) = v67;
        *(v64 + 3) = v68;
        *(v64 + 4) = v70;
        *(v64 + 5) = v69;
        *(v64 + 6) = v71;
        *(v64 + 7) = v99;
        v64[64] = v107;
        *(v64 + 65) = *(v65 + 65);
        v72 = v65[120];
        if (v72 == 255)
        {
          *(v64 + 72) = *(v65 + 72);
          *(v64 + 88) = *(v65 + 88);
          *(v64 + 104) = *(v65 + 104);
          v64[120] = v65[120];
        }

        else
        {
          v73 = *(v65 + 9);
          v74 = *(v65 + 10);
          v75 = *(v65 + 12);
          v108 = *(v65 + 11);
          v76 = *(v65 + 13);
          v100 = *(v65 + 14);
          v77 = v72 & 1;
          sub_21D0FB960(v73, v74, v108, v75, v76, v100, v72 & 1);
          *(v64 + 9) = v73;
          *(v64 + 10) = v74;
          *(v64 + 11) = v108;
          *(v64 + 12) = v75;
          *(v64 + 13) = v76;
          *(v64 + 14) = v100;
          v64[120] = v77;
        }

        v8 = v111;
        v9 = v112;
        v64[121] = v65[121];
        v6 = v103;
        goto LABEL_100;
      }

LABEL_97:
      v78 = *(v65 + 5);
      *(v64 + 4) = *(v65 + 4);
      *(v64 + 5) = v78;
      *(v64 + 6) = *(v65 + 6);
      *(v64 + 106) = *(v65 + 106);
      v79 = *(v65 + 1);
      *v64 = *v65;
      *(v64 + 1) = v79;
      v80 = *(v65 + 3);
      *(v64 + 2) = *(v65 + 2);
      *(v64 + 3) = v80;
LABEL_100:
      *(v6 + v62[6]) = *(v7 + v62[6]);
      *(v6 + v62[7]) = *(v7 + v62[7]);
      *(v6 + v62[8]) = *(v7 + v62[8]);
      *(v6 + v62[9]) = *(v7 + v62[9]);
      *(v6 + v62[10]) = *(v7 + v62[10]);
      v81 = v62[11];
      v82 = *(v7 + v81);
      *(v6 + v81) = v82;
      v83 = v82;
      goto LABEL_131;
    }

    v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v27 = swift_getEnumCaseMultiPayload();
    v114 = v9;
    if (v27 <= 4)
    {
      if (v27 > 2)
      {
LABEL_71:
        v59 = sub_21DBF563C();
        (*(*(v59 - 8) + 16))(v6, v7, v59);
        swift_storeEnumTagMultiPayload();
        goto LABEL_102;
      }

      if (v27 != 1)
      {
        if (v27 == 2)
        {
          goto LABEL_71;
        }

        goto LABEL_101;
      }

LABEL_74:
      v60 = *v7;
      *v6 = *v7;
      v61 = v60;
      swift_storeEnumTagMultiPayload();
      goto LABEL_102;
    }

    if (v27 > 7)
    {
      if (v27 == 8 || v27 == 9)
      {
        goto LABEL_74;
      }
    }

    else if (v27 == 5 || v27 == 6)
    {
      goto LABEL_71;
    }

LABEL_101:
    memcpy(v6, v7, *(*(v26 - 8) + 64));
LABEL_102:
    v62 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v84 = v62[5];
    v64 = v6 + v84;
    v65 = v7 + v84;
    v85 = *(v7 + v84 + 8);
    if (v85)
    {
      *v64 = *v65;
      *(v64 + 1) = v85;
      v86 = *(v65 + 2);
      v87 = *(v65 + 3);
      v88 = *(v65 + 4);
      v97 = *(v65 + 5);
      v104 = *(v65 + 7);
      v109 = *(v65 + 6);
      v101 = v65[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v86, v87, v88, v97, v109, v104, v101);
      *(v64 + 2) = v86;
      *(v64 + 3) = v87;
      *(v64 + 4) = v88;
      *(v64 + 5) = v97;
      *(v64 + 6) = v109;
      *(v64 + 7) = v104;
      v64[64] = v101;
      *(v64 + 65) = *(v65 + 65);
      v89 = v65[120];
      if (v89 == 255)
      {
        *(v64 + 72) = *(v65 + 72);
        *(v64 + 88) = *(v65 + 88);
        *(v64 + 104) = *(v65 + 104);
        v64[120] = v65[120];
      }

      else
      {
        v105 = *(v65 + 10);
        v110 = *(v65 + 9);
        v90 = *(v65 + 12);
        v91 = *(v65 + 13);
        v98 = *(v65 + 14);
        v102 = *(v65 + 11);
        v92 = v89 & 1;
        sub_21D0FB960(v110, v105, v102, v90, v91, v98, v89 & 1);
        *(v64 + 9) = v110;
        *(v64 + 10) = v105;
        *(v64 + 11) = v102;
        *(v64 + 12) = v90;
        *(v64 + 13) = v91;
        *(v64 + 14) = v98;
        v64[120] = v92;
      }

      v9 = v114;
      v64[121] = v65[121];
      goto LABEL_100;
    }

    goto LABEL_97;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C0);
  memcpy(v6, v7, *(*(v10 - 8) + 64));
  return v3;
}

void destroy for TTRSECreateRemindersTreeViewModelUpdateContext(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E4D0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    return;
  }

  type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload > 1)
    {
      return;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 > 4)
    {
      if (v9 <= 7)
      {
        if (v9 != 5 && v9 != 6)
        {
          goto LABEL_43;
        }

        goto LABEL_39;
      }

      if (v9 != 8 && v9 != 9)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v9 > 2)
      {
        goto LABEL_39;
      }

      if (v9 != 1)
      {
        if (v9 != 2)
        {
LABEL_43:
          v21 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v22 = v2 + *(v21 + 20);
          if (*(v22 + 8))
          {

            sub_21D179EF0(*(v22 + 16), *(v22 + 24), *(v22 + 32), *(v22 + 40), *(v22 + 48), *(v22 + 56), *(v22 + 64));
            v23 = *(v22 + 120);
            if (v23 != 255)
            {
              sub_21D1078C0(*(v22 + 72), *(v22 + 80), *(v22 + 88), *(v22 + 96), *(v22 + 104), *(v22 + 112), v23 & 1);
            }
          }

          v10 = *(v2 + *(v21 + 44));
          goto LABEL_47;
        }

LABEL_39:
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 8))(v2, v20);
        goto LABEL_43;
      }
    }

    goto LABEL_43;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v10 = *(v2 + 16);
LABEL_47:

      return;
    }

LABEL_19:

    v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v12 - 8) + 48))(v2 + v11, 1, v12))
    {
      return;
    }

    v13 = swift_getEnumCaseMultiPayload();
    if (v13 > 4)
    {
      if (v13 <= 7)
      {
        if (v13 != 5 && v13 != 6)
        {
          return;
        }

        goto LABEL_50;
      }

      if (v13 != 8 && v13 != 9)
      {
        return;
      }
    }

    else
    {
      if (v13 > 2)
      {
LABEL_50:
        v6 = sub_21DBF563C();
        v7 = *(*(v6 - 8) + 8);
        v8 = v2 + v11;
LABEL_51:

        v7(v8, v6);
        return;
      }

      if (v13 != 1)
      {
        if (v13 != 2)
        {
          return;
        }

        goto LABEL_50;
      }
    }

    v10 = *(v2 + v11);
    goto LABEL_47;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v18 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if ((*(*(v18 - 8) + 48))(v2, 1, v18))
      {
        return;
      }

      v19 = sub_21DBF563C();
      v7 = *(*(v19 - 8) + 8);
      v6 = v19;
      v8 = v2;
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        return;
      }

      v5 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v6 = sub_21DBF8D7C();
      v7 = *(*(v6 - 8) + 8);
      v8 = v2 + v5;
    }

    goto LABEL_51;
  }

  v14 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v14 - 8) + 48))(v2, 1, v14))
  {

    v15 = *(v14 + 20);
    v16 = sub_21DBF6C1C();
    (*(*(v16 - 8) + 8))(v2 + v15, v16);
  }

  v17 = v2 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v17 + 8))
  {

    v10 = *(v17 + 16);
    goto LABEL_47;
  }
}

_BYTE *initializeWithCopy for TTRSECreateRemindersTreeViewModelUpdateContext(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1;
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = &a1[v4];
  v6 = &a2[v4];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E4D0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v30 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v31 = *(v30 - 8);
            if ((*(v31 + 48))(v6, 1, v30))
            {
              v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(v5, v6, *(*(v32 - 8) + 64));
            }

            else
            {
              *v5 = *v6;
              v114 = v8;
              v41 = *(v30 + 20);
              v42 = sub_21DBF6C1C();
              v105 = *(*(v42 - 8) + 16);
              sub_21DBF8E0C();
              v43 = v5 + v41;
              v44 = v6 + v41;
              v8 = v114;
              v105(v43, v44, v42);
              (*(v31 + 56))(v5, 0, 1, v30);
            }

            v45 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v46 = (v5 + v45);
            v47 = (v6 + v45);
            v48 = v47[1];
            if (v48)
            {
              *v46 = *v47;
              v46[1] = v48;
              v49 = v47[2];
              v46[2] = v49;
              sub_21DBF8E0C();
              v50 = v49;
            }

            else
            {
              *v46 = *v47;
              v46[2] = v47[2];
            }

            goto LABEL_129;
          case 7:
            v36 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v37 = *(v36 - 8);
            if ((*(v37 + 48))(v6, 1, v36))
            {
              v38 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(v5, v6, *(*(v38 - 8) + 64));
            }

            else
            {
              v52 = sub_21DBF563C();
              (*(*(v52 - 8) + 16))(v5, v6, v52);
              *(v5 + *(v36 + 20)) = *(v6 + *(v36 + 20));
              (*(v37 + 56))(v5, 0, 1, v36);
            }

            v53 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(v5 + *(v53 + 20)) = *(v6 + *(v53 + 20));
            goto LABEL_129;
          case 8:
            *v5 = *v6;
            v12 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v13 = sub_21DBF8D7C();
            (*(*(v13 - 8) + 16))(v5 + v12, v6 + v12, v13);
LABEL_129:
            swift_storeEnumTagMultiPayload();
            goto LABEL_130;
        }

LABEL_35:
        memcpy(v5, v6, *(*(v10 - 8) + 64));
LABEL_130:
        *(v5 + *(v7 + 48)) = *(v6 + *(v7 + 48));
        (*(v8 + 56))(v5, 0, 1, v7);
        return v3;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *v5 = *v6;
        *(v5 + 8) = *(v6 + 8);
        *(v5 + 9) = *(v6 + 9);
        v22 = v6[2];
        v5[2] = v22;
        v23 = v22;
        goto LABEL_129;
      }

      v112 = v8;
      v33 = *v6;
      *v5 = *v6;
      v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v19 = *(v18 - 8);
      v34 = *(v19 + 48);
      v35 = v33;
      if (v34(v6 + v17, 1, v18))
      {
LABEL_28:
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v5 + v17, v6 + v17, *(*(v29 - 8) + 64));
        v8 = v112;
        goto LABEL_129;
      }

      v51 = swift_getEnumCaseMultiPayload();
      if (v51 > 4)
      {
        if (v51 <= 7)
        {
          if (v51 == 5 || v51 == 6)
          {
            goto LABEL_114;
          }

          goto LABEL_127;
        }

        if (v51 != 8 && v51 != 9)
        {
          goto LABEL_127;
        }

LABEL_113:
        v93 = *(v6 + v17);
        *(v5 + v17) = v93;
        v94 = v93;
        swift_storeEnumTagMultiPayload();
LABEL_128:
        (*(v19 + 56))(v5 + v17, 0, 1, v18);
        goto LABEL_129;
      }

      if (v51 <= 2)
      {
        if (v51 != 1)
        {
          if (v51 == 2)
          {
            goto LABEL_114;
          }

LABEL_127:
          memcpy(v5 + v17, v6 + v17, *(v19 + 64));
          goto LABEL_128;
        }

        goto LABEL_113;
      }

LABEL_114:
      v95 = sub_21DBF563C();
      (*(*(v95 - 8) + 16))(v5 + v17, v6 + v17, v95);
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v112 = v8;
        v26 = *v6;
        *v5 = *v6;
        v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v19 = *(v18 - 8);
        v27 = *(v19 + 48);
        v28 = v26;
        if (v27(v6 + v17, 1, v18))
        {
          goto LABEL_28;
        }

        v40 = swift_getEnumCaseMultiPayload();
        if (v40 > 4)
        {
          if (v40 <= 7)
          {
            if (v40 == 5 || v40 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v40 != 8 && v40 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v40 > 2)
        {
          goto LABEL_114;
        }

        if (v40 == 1)
        {
          goto LABEL_113;
        }

        if (v40 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v112 = v8;
        v16 = *v6;
        *v5 = *v6;
        v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v19 = *(v18 - 8);
        v20 = *(v19 + 48);
        v21 = v16;
        if (v20(v6 + v17, 1, v18))
        {
          goto LABEL_28;
        }

        v39 = swift_getEnumCaseMultiPayload();
        if (v39 > 4)
        {
          if (v39 <= 7)
          {
            if (v39 == 5 || v39 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v39 != 8 && v39 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v39 > 2)
        {
          goto LABEL_114;
        }

        if (v39 == 1)
        {
          goto LABEL_113;
        }

        if (v39 != 2)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = swift_getEnumCaseMultiPayload();
      v111 = v8;
      v109 = v3;
      v110 = v7;
      if (v15 <= 4)
      {
        if (v15 > 2)
        {
LABEL_65:
          v54 = sub_21DBF563C();
          (*(*(v54 - 8) + 16))(v5, v6, v54);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v15 != 1)
        {
          if (v15 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v55 = *v6;
        *v5 = *v6;
        v56 = v55;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v15 > 7)
      {
        if (v15 == 8 || v15 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v15 == 5 || v15 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(v5, v6, *(*(v14 - 8) + 64));
LABEL_92:
      v60 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v61 = v60[5];
      v62 = v5 + v61;
      v63 = v6 + v61;
      v64 = *(v6 + v61 + 8);
      if (v64)
      {
        v106 = v5;
        *v62 = *v63;
        *(v62 + 1) = v64;
        v65 = *(v63 + 2);
        v66 = *(v63 + 3);
        v68 = *(v63 + 4);
        v67 = *(v63 + 5);
        v69 = *(v63 + 6);
        v70 = *(v63 + 7);
        v101 = v63[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v65, v66, v68, v67, v69, v70, v101);
        *(v62 + 2) = v65;
        *(v62 + 3) = v66;
        *(v62 + 4) = v68;
        *(v62 + 5) = v67;
        *(v62 + 6) = v69;
        *(v62 + 7) = v70;
        v62[64] = v101;
        *(v62 + 65) = *(v63 + 65);
        v71 = v63[120];
        if (v71 == 255)
        {
          *(v62 + 72) = *(v63 + 72);
          *(v62 + 88) = *(v63 + 88);
          *(v62 + 104) = *(v63 + 104);
          v62[120] = v63[120];
        }

        else
        {
          v72 = *(v63 + 9);
          v73 = *(v63 + 10);
          v74 = *(v63 + 11);
          v75 = *(v63 + 12);
          v76 = *(v63 + 13);
          v102 = *(v63 + 14);
          v77 = v71 & 1;
          sub_21D0FB960(v72, v73, v74, v75, v76, v102, v71 & 1);
          *(v62 + 9) = v72;
          *(v62 + 10) = v73;
          *(v62 + 11) = v74;
          *(v62 + 12) = v75;
          *(v62 + 13) = v76;
          *(v62 + 14) = v102;
          v62[120] = v77;
        }

        v7 = v110;
        v8 = v111;
        v5 = v106;
        v3 = v109;
        v62[121] = v63[121];
        goto LABEL_98;
      }

LABEL_95:
      v78 = *(v63 + 5);
      *(v62 + 4) = *(v63 + 4);
      *(v62 + 5) = v78;
      *(v62 + 6) = *(v63 + 6);
      *(v62 + 106) = *(v63 + 106);
      v79 = *(v63 + 1);
      *v62 = *v63;
      *(v62 + 1) = v79;
      v80 = *(v63 + 3);
      *(v62 + 2) = *(v63 + 2);
      *(v62 + 3) = v80;
LABEL_98:
      *(v5 + v60[6]) = *(v6 + v60[6]);
      *(v5 + v60[7]) = *(v6 + v60[7]);
      *(v5 + v60[8]) = *(v6 + v60[8]);
      *(v5 + v60[9]) = *(v6 + v60[9]);
      *(v5 + v60[10]) = *(v6 + v60[10]);
      v81 = v60[11];
      v82 = *(v6 + v81);
      *(v5 + v81) = v82;
      v83 = v82;
      goto LABEL_129;
    }

    v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v25 = swift_getEnumCaseMultiPayload();
    v113 = v8;
    if (v25 <= 4)
    {
      if (v25 > 2)
      {
LABEL_69:
        v57 = sub_21DBF563C();
        (*(*(v57 - 8) + 16))(v5, v6, v57);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v25 != 1)
      {
        if (v25 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v58 = *v6;
      *v5 = *v6;
      v59 = v58;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v25 > 7)
    {
      if (v25 == 8 || v25 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v25 == 5 || v25 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(v5, v6, *(*(v24 - 8) + 64));
LABEL_100:
    v60 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v84 = v60[5];
    v62 = v5 + v84;
    v63 = v6 + v84;
    v85 = *(v6 + v84 + 8);
    if (v85)
    {
      *v62 = *v63;
      *(v62 + 1) = v85;
      v86 = *(v63 + 2);
      v87 = *(v63 + 3);
      v88 = *(v63 + 4);
      v97 = *(v63 + 5);
      v103 = *(v63 + 7);
      v107 = *(v63 + 6);
      v99 = v63[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v86, v87, v88, v97, v107, v103, v99);
      *(v62 + 2) = v86;
      *(v62 + 3) = v87;
      *(v62 + 4) = v88;
      *(v62 + 5) = v97;
      *(v62 + 6) = v107;
      *(v62 + 7) = v103;
      v62[64] = v99;
      *(v62 + 65) = *(v63 + 65);
      v89 = v63[120];
      if (v89 == 255)
      {
        *(v62 + 72) = *(v63 + 72);
        *(v62 + 88) = *(v63 + 88);
        *(v62 + 104) = *(v63 + 104);
        v62[120] = v63[120];
      }

      else
      {
        v104 = *(v63 + 10);
        v108 = *(v63 + 9);
        v90 = *(v63 + 12);
        v91 = *(v63 + 13);
        v98 = *(v63 + 14);
        v100 = *(v63 + 11);
        v92 = v89 & 1;
        sub_21D0FB960(v108, v104, v100, v90, v91, v98, v89 & 1);
        *(v62 + 9) = v108;
        *(v62 + 10) = v104;
        *(v62 + 11) = v100;
        *(v62 + 12) = v90;
        *(v62 + 13) = v91;
        *(v62 + 14) = v98;
        v62[120] = v92;
      }

      v8 = v113;
      v62[121] = v63[121];
      goto LABEL_98;
    }

    goto LABEL_95;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C0);
  memcpy(v5, v6, *(*(v9 - 8) + 64));
  return v3;
}

_BYTE *assignWithCopy for TTRSECreateRemindersTreeViewModelUpdateContext(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v4 = a1;
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = &a1[v5];
  v7 = &a2[v5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E4D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(v6, 1, v8);
  v12 = v10(v7, 1, v8);
  if (!v11)
  {
    if (v12)
    {
      sub_21DA0A138(v6);
      goto LABEL_11;
    }

    if (v4 == a2)
    {
LABEL_269:
      *(v6 + *(v8 + 48)) = *(v7 + *(v8 + 48));
      return v4;
    }

    sub_21D24B040(v6);
    v18 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v72 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v73 = *(v72 - 8);
            if ((*(v73 + 48))(v7, 1, v72))
            {
              v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(v6, v7, *(*(v74 - 8) + 64));
            }

            else
            {
              *v6 = *v7;
              v101 = *(v72 + 20);
              v102 = sub_21DBF6C1C();
              v229 = *(*(v102 - 8) + 16);
              sub_21DBF8E0C();
              v229(v6 + v101, v7 + v101, v102);
              (*(v73 + 56))(v6, 0, 1, v72);
            }

            v103 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v104 = (v6 + v103);
            v105 = (v7 + v103);
            if (v105[1])
            {
              *v104 = *v105;
              v104[1] = v105[1];
              v106 = v105[2];
              v104[2] = v106;
              sub_21DBF8E0C();
              v107 = v106;
            }

            else
            {
              v108 = *v105;
              v104[2] = v105[2];
              *v104 = v108;
            }

            goto LABEL_268;
          case 7:
            v88 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v89 = *(v88 - 8);
            if ((*(v89 + 48))(v7, 1, v88))
            {
              v90 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(v6, v7, *(*(v90 - 8) + 64));
            }

            else
            {
              v110 = sub_21DBF563C();
              (*(*(v110 - 8) + 16))(v6, v7, v110);
              *(v6 + *(v88 + 20)) = *(v7 + *(v88 + 20));
              (*(v89 + 56))(v6, 0, 1, v88);
            }

            v111 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(v6 + *(v111 + 20)) = *(v7 + *(v111 + 20));
            goto LABEL_268;
          case 8:
            *v6 = *v7;
            v20 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v21 = sub_21DBF8D7C();
            (*(*(v21 - 8) + 16))(v6 + v20, v7 + v20, v21);
LABEL_268:
            swift_storeEnumTagMultiPayload();
            goto LABEL_269;
        }

        goto LABEL_102;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *v6 = *v7;
        *(v6 + 8) = *(v7 + 8);
        *(v6 + 9) = *(v7 + 9);
        *(v6 + 10) = *(v7 + 10);
        v63 = v7[2];
        v6[2] = v63;
        v64 = v63;
        goto LABEL_268;
      }

      v84 = *v7;
      *v6 = *v7;
      v58 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v59 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v60 = *(v59 - 8);
      v85 = *(v60 + 48);
      v86 = v84;
      if (v85(v7 + v58, 1, v59))
      {
LABEL_97:
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v6 + v58, v7 + v58, *(*(v87 - 8) + 64));
        goto LABEL_268;
      }

      v109 = swift_getEnumCaseMultiPayload();
      if (v109 > 4)
      {
        if (v109 <= 7)
        {
          if (v109 == 5 || v109 == 6)
          {
            goto LABEL_253;
          }

          goto LABEL_266;
        }

        if (v109 != 8 && v109 != 9)
        {
          goto LABEL_266;
        }

LABEL_252:
        v201 = *(v7 + v58);
        *(v6 + v58) = v201;
        v202 = v201;
        swift_storeEnumTagMultiPayload();
LABEL_267:
        (*(v60 + 56))(v6 + v58, 0, 1, v59);
        goto LABEL_268;
      }

      if (v109 <= 2)
      {
        if (v109 != 1)
        {
          if (v109 == 2)
          {
            goto LABEL_253;
          }

LABEL_266:
          memcpy(v6 + v58, v7 + v58, *(v60 + 64));
          goto LABEL_267;
        }

        goto LABEL_252;
      }

LABEL_253:
      v203 = sub_21DBF563C();
      (*(*(v203 - 8) + 16))(v6 + v58, v7 + v58, v203);
      swift_storeEnumTagMultiPayload();
      goto LABEL_267;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v69 = *v7;
        *v6 = *v7;
        v58 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v59 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v60 = *(v59 - 8);
        v70 = *(v60 + 48);
        v71 = v69;
        if (v70(v7 + v58, 1, v59))
        {
          goto LABEL_97;
        }

        v100 = swift_getEnumCaseMultiPayload();
        if (v100 > 4)
        {
          if (v100 <= 7)
          {
            if (v100 == 5 || v100 == 6)
            {
              goto LABEL_253;
            }

            goto LABEL_266;
          }

          if (v100 != 8 && v100 != 9)
          {
            goto LABEL_266;
          }

          goto LABEL_252;
        }

        if (v100 > 2)
        {
          goto LABEL_253;
        }

        if (v100 == 1)
        {
          goto LABEL_252;
        }

        if (v100 != 2)
        {
          goto LABEL_266;
        }
      }

      else
      {
        v57 = *v7;
        *v6 = *v7;
        v58 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v59 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v60 = *(v59 - 8);
        v61 = *(v60 + 48);
        v62 = v57;
        if (v61(v7 + v58, 1, v59))
        {
          goto LABEL_97;
        }

        v99 = swift_getEnumCaseMultiPayload();
        if (v99 > 4)
        {
          if (v99 <= 7)
          {
            if (v99 == 5 || v99 == 6)
            {
              goto LABEL_253;
            }

            goto LABEL_266;
          }

          if (v99 != 8 && v99 != 9)
          {
            goto LABEL_266;
          }

          goto LABEL_252;
        }

        if (v99 > 2)
        {
          goto LABEL_253;
        }

        if (v99 == 1)
        {
          goto LABEL_252;
        }

        if (v99 != 2)
        {
          goto LABEL_266;
        }
      }

      goto LABEL_253;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
LABEL_102:
        memcpy(v6, v7, *(*(v18 - 8) + 64));
        goto LABEL_269;
      }

      v33 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v34 = swift_getEnumCaseMultiPayload();
      if (v34 <= 4)
      {
        if (v34 > 2)
        {
LABEL_173:
          v152 = sub_21DBF563C();
          (*(*(v152 - 8) + 16))(v6, v7, v152);
          swift_storeEnumTagMultiPayload();
          goto LABEL_221;
        }

        if (v34 != 1)
        {
          if (v34 == 2)
          {
            goto LABEL_173;
          }

          goto LABEL_220;
        }

LABEL_177:
        v154 = *v7;
        *v6 = *v7;
        v155 = v154;
        swift_storeEnumTagMultiPayload();
        goto LABEL_221;
      }

      if (v34 > 7)
      {
        if (v34 == 8 || v34 == 9)
        {
          goto LABEL_177;
        }
      }

      else if (v34 == 5 || v34 == 6)
      {
        goto LABEL_173;
      }

LABEL_220:
      memcpy(v6, v7, *(*(v33 - 8) + 64));
LABEL_221:
      v167 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v168 = v167[5];
      v169 = v6 + v168;
      v170 = v7 + v168;
      if (*(v7 + v168 + 8))
      {
        *v169 = *v170;
        *(v169 + 1) = *(v170 + 1);
        v171 = *(v170 + 2);
        v172 = *(v170 + 3);
        v173 = *(v170 + 4);
        v209 = *(v170 + 5);
        v224 = *(v170 + 7);
        v232 = *(v170 + 6);
        v217 = v170[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v171, v172, v173, v209, v232, v224, v217);
        *(v169 + 2) = v171;
        *(v169 + 3) = v172;
        *(v169 + 4) = v173;
        *(v169 + 5) = v209;
        *(v169 + 6) = v232;
        *(v169 + 7) = v224;
        v169[64] = v217;
        v169[65] = v170[65];
        v169[66] = v170[66];
        v169[67] = v170[67];
        v169[68] = v170[68];
        v174 = v170[120];
        if (v174 == 255)
        {
          v184 = *(v170 + 72);
          v185 = *(v170 + 88);
          v186 = *(v170 + 104);
          v169[120] = v170[120];
          *(v169 + 104) = v186;
          *(v169 + 88) = v185;
          *(v169 + 72) = v184;
        }

        else
        {
          v225 = *(v170 + 10);
          v233 = *(v170 + 9);
          v175 = *(v170 + 12);
          v176 = *(v170 + 13);
          v210 = *(v170 + 14);
          v218 = *(v170 + 11);
          v177 = v174 & 1;
          sub_21D0FB960(v233, v225, v218, v175, v176, v210, v174 & 1);
          *(v169 + 9) = v233;
          *(v169 + 10) = v225;
          *(v169 + 11) = v218;
          *(v169 + 12) = v175;
          *(v169 + 13) = v176;
          *(v169 + 14) = v210;
          v169[120] = v177;
        }

        v169[121] = v170[121];
        goto LABEL_227;
      }

LABEL_224:
      v178 = *v170;
      v179 = *(v170 + 1);
      v180 = *(v170 + 3);
      *(v169 + 2) = *(v170 + 2);
      *(v169 + 3) = v180;
      *v169 = v178;
      *(v169 + 1) = v179;
      v181 = *(v170 + 4);
      v182 = *(v170 + 5);
      v183 = *(v170 + 6);
      *(v169 + 106) = *(v170 + 106);
      *(v169 + 5) = v182;
      *(v169 + 6) = v183;
      *(v169 + 4) = v181;
LABEL_227:
      *(v6 + v167[6]) = *(v7 + v167[6]);
      *(v6 + v167[7]) = *(v7 + v167[7]);
      *(v6 + v167[8]) = *(v7 + v167[8]);
      *(v6 + v167[9]) = *(v7 + v167[9]);
      *(v6 + v167[10]) = *(v7 + v167[10]);
      v187 = v167[11];
      v188 = *(v7 + v187);
      *(v6 + v187) = v188;
      v189 = v188;
      goto LABEL_268;
    }

    v66 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v67 = swift_getEnumCaseMultiPayload();
    if (v67 <= 4)
    {
      if (v67 > 2)
      {
LABEL_181:
        v158 = sub_21DBF563C();
        (*(*(v158 - 8) + 16))(v6, v7, v158);
        swift_storeEnumTagMultiPayload();
        goto LABEL_232;
      }

      if (v67 != 1)
      {
        if (v67 == 2)
        {
          goto LABEL_181;
        }

        goto LABEL_231;
      }

LABEL_185:
      v160 = *v7;
      *v6 = *v7;
      v161 = v160;
      swift_storeEnumTagMultiPayload();
      goto LABEL_232;
    }

    if (v67 > 7)
    {
      if (v67 == 8 || v67 == 9)
      {
        goto LABEL_185;
      }
    }

    else if (v67 == 5 || v67 == 6)
    {
      goto LABEL_181;
    }

LABEL_231:
    memcpy(v6, v7, *(*(v66 - 8) + 64));
LABEL_232:
    v167 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v190 = v167[5];
    v169 = v6 + v190;
    v170 = v7 + v190;
    if (*(v7 + v190 + 8))
    {
      *v169 = *v170;
      *(v169 + 1) = *(v170 + 1);
      v191 = *(v170 + 2);
      v192 = *(v170 + 3);
      v193 = *(v170 + 4);
      v211 = *(v170 + 5);
      v226 = *(v170 + 7);
      v234 = *(v170 + 6);
      v219 = v170[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v191, v192, v193, v211, v234, v226, v219);
      *(v169 + 2) = v191;
      *(v169 + 3) = v192;
      *(v169 + 4) = v193;
      *(v169 + 5) = v211;
      *(v169 + 6) = v234;
      *(v169 + 7) = v226;
      v169[64] = v219;
      v169[65] = v170[65];
      v169[66] = v170[66];
      v169[67] = v170[67];
      v169[68] = v170[68];
      v194 = v170[120];
      if (v194 == 255)
      {
        v198 = *(v170 + 72);
        v199 = *(v170 + 88);
        v200 = *(v170 + 104);
        v169[120] = v170[120];
        *(v169 + 104) = v200;
        *(v169 + 88) = v199;
        *(v169 + 72) = v198;
      }

      else
      {
        v227 = *(v170 + 10);
        v235 = *(v170 + 9);
        v195 = *(v170 + 12);
        v196 = *(v170 + 13);
        v212 = *(v170 + 14);
        v220 = *(v170 + 11);
        v197 = v194 & 1;
        sub_21D0FB960(v235, v227, v220, v195, v196, v212, v194 & 1);
        *(v169 + 9) = v235;
        *(v169 + 10) = v227;
        *(v169 + 11) = v220;
        *(v169 + 12) = v195;
        *(v169 + 13) = v196;
        *(v169 + 14) = v212;
        v169[120] = v197;
      }

      v169[121] = v170[121];
      goto LABEL_227;
    }

    goto LABEL_224;
  }

  if (!v12)
  {
    v13 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 > 3)
    {
      if (v14 > 5)
      {
        switch(v14)
        {
          case 6:
            v44 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v45 = *(v44 - 8);
            if ((*(v45 + 48))(v7, 1, v44))
            {
              v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(v6, v7, *(*(v46 - 8) + 64));
            }

            else
            {
              *v6 = *v7;
              v75 = *(v44 + 20);
              v76 = sub_21DBF6C1C();
              v228 = *(*(v76 - 8) + 16);
              sub_21DBF8E0C();
              v228(v6 + v75, v7 + v75, v76);
              (*(v45 + 56))(v6, 0, 1, v44);
            }

            v77 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v78 = (v6 + v77);
            v79 = (v7 + v77);
            if (v79[1])
            {
              *v78 = *v79;
              v78[1] = v79[1];
              v80 = v79[2];
              v78[2] = v80;
              sub_21DBF8E0C();
              v81 = v80;
            }

            else
            {
              v82 = *v79;
              v78[2] = v79[2];
              *v78 = v82;
            }

            swift_storeEnumTagMultiPayload();
            goto LABEL_244;
          case 7:
            v54 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v55 = *(v54 - 8);
            if ((*(v55 + 48))(v7, 1, v54))
            {
              v56 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(v6, v7, *(*(v56 - 8) + 64));
            }

            else
            {
              v91 = sub_21DBF563C();
              (*(*(v91 - 8) + 16))(v6, v7, v91);
              *(v6 + *(v54 + 20)) = *(v7 + *(v54 + 20));
              (*(v55 + 56))(v6, 0, 1, v54);
            }

            v92 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(v6 + *(v92 + 20)) = *(v7 + *(v92 + 20));
            swift_storeEnumTagMultiPayload();
            goto LABEL_244;
          case 8:
            *v6 = *v7;
            v15 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v16 = sub_21DBF8D7C();
            (*(*(v16 - 8) + 16))(v6 + v15, v7 + v15, v16);
            swift_storeEnumTagMultiPayload();
LABEL_244:
            *(v6 + *(v8 + 48)) = *(v7 + *(v8 + 48));
            (*(v9 + 56))(v6, 0, 1, v8);
            return v4;
        }

LABEL_53:
        memcpy(v6, v7, *(*(v13 - 8) + 64));
        goto LABEL_244;
      }

      if (v14 != 4)
      {
        *v6 = *v7;
        *(v6 + 8) = *(v7 + 8);
        *(v6 + 9) = *(v7 + 9);
        *(v6 + 10) = *(v7 + 10);
        v31 = v7[2];
        v6[2] = v31;
        v32 = v31;
        swift_storeEnumTagMultiPayload();
        goto LABEL_244;
      }

      v240 = v4;
      v47 = *v7;
      *v6 = *v7;
      v48 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v49 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v50 = *(v49 - 8);
      v51 = *(v50 + 48);
      v52 = v47;
      if (v51(v7 + v48, 1, v49))
      {
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v6 + v48, v7 + v48, *(*(v53 - 8) + 64));
LABEL_243:
        swift_storeEnumTagMultiPayload();
        v4 = v240;
        goto LABEL_244;
      }

      v83 = swift_getEnumCaseMultiPayload();
      if (v83 > 4)
      {
        if (v83 <= 7)
        {
          if (v83 == 5 || v83 == 6)
          {
            goto LABEL_189;
          }

          goto LABEL_241;
        }

        if (v83 != 8 && v83 != 9)
        {
          goto LABEL_241;
        }
      }

      else
      {
        if (v83 > 2)
        {
LABEL_189:
          v164 = sub_21DBF563C();
          (*(*(v164 - 8) + 16))(v6 + v48, v7 + v48, v164);
          swift_storeEnumTagMultiPayload();
LABEL_242:
          (*(v50 + 56))(v6 + v48, 0, 1, v49);
          goto LABEL_243;
        }

        if (v83 != 1)
        {
          if (v83 == 2)
          {
            goto LABEL_189;
          }

LABEL_241:
          memcpy(v6 + v48, v7 + v48, *(v50 + 64));
          goto LABEL_242;
        }
      }

      v165 = *(v7 + v48);
      *(v6 + v48) = v165;
      v166 = v165;
      swift_storeEnumTagMultiPayload();
      goto LABEL_242;
    }

    if (v14 <= 1)
    {
      if (v14)
      {
        if (v14 != 1)
        {
          goto LABEL_53;
        }

        v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v23 = swift_getEnumCaseMultiPayload();
        v238 = v4;
        v236 = v8;
        if (v23 <= 4)
        {
          if (v23 > 2)
          {
LABEL_103:
            v93 = sub_21DBF563C();
            (*(*(v93 - 8) + 16))(v6, v7, v93);
            swift_storeEnumTagMultiPayload();
            goto LABEL_159;
          }

          if (v23 != 1)
          {
            if (v23 == 2)
            {
              goto LABEL_103;
            }

            goto LABEL_158;
          }

LABEL_106:
          v94 = *v7;
          *v6 = *v7;
          v95 = v94;
          swift_storeEnumTagMultiPayload();
          goto LABEL_159;
        }

        if (v23 > 7)
        {
          if (v23 == 8 || v23 == 9)
          {
            goto LABEL_106;
          }
        }

        else if (v23 == 5 || v23 == 6)
        {
          goto LABEL_103;
        }

LABEL_158:
        memcpy(v6, v7, *(*(v22 - 8) + 64));
LABEL_159:
        v112 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v113 = v112[5];
        v114 = v6 + v113;
        v115 = v7 + v113;
        if (*(v7 + v113 + 8))
        {
          v221 = v6;
          v230 = v7;
          *v114 = *v115;
          *(v114 + 1) = *(v115 + 1);
          v116 = *(v115 + 2);
          v117 = *(v115 + 3);
          v119 = *(v115 + 4);
          v118 = *(v115 + 5);
          v121 = *(v115 + 6);
          v120 = *(v115 + 7);
          v213 = v115[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v116, v117, v119, v118, v121, v120, v213);
          *(v114 + 2) = v116;
          *(v114 + 3) = v117;
          *(v114 + 4) = v119;
          *(v114 + 5) = v118;
          *(v114 + 6) = v121;
          *(v114 + 7) = v120;
          v114[64] = v213;
          v114[65] = v115[65];
          v114[66] = v115[66];
          v114[67] = v115[67];
          v114[68] = v115[68];
          v122 = v115[120];
          if (v122 == 255)
          {
            v135 = *(v115 + 72);
            v136 = *(v115 + 88);
            v137 = *(v115 + 104);
            v114[120] = v115[120];
            *(v114 + 104) = v137;
            *(v114 + 88) = v136;
            *(v114 + 72) = v135;
          }

          else
          {
            v123 = *(v115 + 9);
            v124 = *(v115 + 10);
            v125 = *(v115 + 11);
            v126 = *(v115 + 12);
            v127 = *(v115 + 13);
            v214 = *(v115 + 14);
            v128 = v122 & 1;
            sub_21D0FB960(v123, v124, v125, v126, v127, v214, v122 & 1);
            *(v114 + 9) = v123;
            *(v114 + 10) = v124;
            *(v114 + 11) = v125;
            *(v114 + 12) = v126;
            *(v114 + 13) = v127;
            *(v114 + 14) = v214;
            v114[120] = v128;
          }

          v4 = v238;
          v7 = v230;
          v8 = v236;
          v114[121] = v115[121];
          v6 = v221;
          goto LABEL_165;
        }

LABEL_162:
        v129 = *v115;
        v130 = *(v115 + 1);
        v131 = *(v115 + 3);
        *(v114 + 2) = *(v115 + 2);
        *(v114 + 3) = v131;
        *v114 = v129;
        *(v114 + 1) = v130;
        v132 = *(v115 + 4);
        v133 = *(v115 + 5);
        v134 = *(v115 + 6);
        *(v114 + 106) = *(v115 + 106);
        *(v114 + 5) = v133;
        *(v114 + 6) = v134;
        *(v114 + 4) = v132;
LABEL_165:
        *(v6 + v112[6]) = *(v7 + v112[6]);
        *(v6 + v112[7]) = *(v7 + v112[7]);
        *(v6 + v112[8]) = *(v7 + v112[8]);
        *(v6 + v112[9]) = *(v7 + v112[9]);
        *(v6 + v112[10]) = *(v7 + v112[10]);
        v138 = v112[11];
        v139 = *(v7 + v138);
        *(v6 + v138) = v139;
        v140 = v139;
        swift_storeEnumTagMultiPayload();
        goto LABEL_244;
      }

      v35 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v36 = swift_getEnumCaseMultiPayload();
      if (v36 <= 4)
      {
        if (v36 > 2)
        {
LABEL_107:
          v96 = sub_21DBF563C();
          (*(*(v96 - 8) + 16))(v6, v7, v96);
          swift_storeEnumTagMultiPayload();
          goto LABEL_167;
        }

        if (v36 != 1)
        {
          if (v36 == 2)
          {
            goto LABEL_107;
          }

          goto LABEL_166;
        }

LABEL_110:
        v97 = *v7;
        *v6 = *v7;
        v98 = v97;
        swift_storeEnumTagMultiPayload();
        goto LABEL_167;
      }

      if (v36 > 7)
      {
        if (v36 == 8 || v36 == 9)
        {
          goto LABEL_110;
        }
      }

      else if (v36 == 5 || v36 == 6)
      {
        goto LABEL_107;
      }

LABEL_166:
      memcpy(v6, v7, *(*(v35 - 8) + 64));
LABEL_167:
      v112 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v141 = v112[5];
      v114 = v6 + v141;
      v115 = v7 + v141;
      if (*(v7 + v141 + 8))
      {
        v231 = v7;
        *v114 = *v115;
        *(v114 + 1) = *(v115 + 1);
        v142 = *(v115 + 2);
        v143 = *(v115 + 3);
        v144 = *(v115 + 4);
        v205 = *(v115 + 5);
        v215 = *(v115 + 7);
        v222 = *(v115 + 6);
        v207 = v115[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v142, v143, v144, v205, v222, v215, v207);
        *(v114 + 2) = v142;
        *(v114 + 3) = v143;
        *(v114 + 4) = v144;
        *(v114 + 5) = v205;
        *(v114 + 6) = v222;
        *(v114 + 7) = v215;
        v114[64] = v207;
        v114[65] = v115[65];
        v114[66] = v115[66];
        v114[67] = v115[67];
        v114[68] = v115[68];
        v145 = v115[120];
        if (v145 == 255)
        {
          v149 = *(v115 + 72);
          v150 = *(v115 + 88);
          v151 = *(v115 + 104);
          v114[120] = v115[120];
          *(v114 + 104) = v151;
          *(v114 + 88) = v150;
          *(v114 + 72) = v149;
        }

        else
        {
          v146 = *(v115 + 9);
          v216 = *(v115 + 11);
          v223 = *(v115 + 10);
          v147 = *(v115 + 13);
          v206 = *(v115 + 14);
          v208 = *(v115 + 12);
          v148 = v145 & 1;
          sub_21D0FB960(v146, v223, v216, v208, v147, v206, v145 & 1);
          *(v114 + 9) = v146;
          *(v114 + 10) = v223;
          *(v114 + 11) = v216;
          *(v114 + 12) = v208;
          *(v114 + 13) = v147;
          *(v114 + 14) = v206;
          v114[120] = v148;
        }

        v114[121] = v115[121];
        v7 = v231;
        goto LABEL_165;
      }

      goto LABEL_162;
    }

    if (v14 != 2)
    {
      v239 = v4;
      v24 = *v7;
      *v6 = *v7;
      v25 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v27 = *(v26 - 8);
      v28 = *(v27 + 48);
      v29 = v24;
      if (v28(v7 + v25, 1, v26))
      {
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v6 + v25, v7 + v25, *(*(v30 - 8) + 64));
LABEL_230:
        v4 = v239;
        swift_storeEnumTagMultiPayload();
        goto LABEL_244;
      }

      v65 = swift_getEnumCaseMultiPayload();
      if (v65 > 4)
      {
        if (v65 <= 7)
        {
          if (v65 == 5 || v65 == 6)
          {
            goto LABEL_174;
          }

          goto LABEL_228;
        }

        if (v65 != 8 && v65 != 9)
        {
          goto LABEL_228;
        }
      }

      else
      {
        if (v65 > 2)
        {
LABEL_174:
          v153 = sub_21DBF563C();
          (*(*(v153 - 8) + 16))(v6 + v25, v7 + v25, v153);
          swift_storeEnumTagMultiPayload();
LABEL_229:
          (*(v27 + 56))(v6 + v25, 0, 1, v26);
          goto LABEL_230;
        }

        if (v65 != 1)
        {
          if (v65 == 2)
          {
            goto LABEL_174;
          }

LABEL_228:
          memcpy(v6 + v25, v7 + v25, *(v27 + 64));
          goto LABEL_229;
        }
      }

      v156 = *(v7 + v25);
      *(v6 + v25) = v156;
      v157 = v156;
      swift_storeEnumTagMultiPayload();
      goto LABEL_229;
    }

    v237 = v8;
    v37 = *v7;
    *v6 = *v7;
    v38 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v39 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v40 = *(v39 - 8);
    v41 = *(v40 + 48);
    v42 = v37;
    if (v41(v7 + v38, 1, v39))
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(v6 + v38, v7 + v38, *(*(v43 - 8) + 64));
LABEL_240:
      swift_storeEnumTagMultiPayload();
      v8 = v237;
      goto LABEL_244;
    }

    v68 = swift_getEnumCaseMultiPayload();
    if (v68 > 4)
    {
      if (v68 <= 7)
      {
        if (v68 == 5 || v68 == 6)
        {
          goto LABEL_182;
        }

        goto LABEL_238;
      }

      if (v68 != 8 && v68 != 9)
      {
        goto LABEL_238;
      }
    }

    else
    {
      if (v68 > 2)
      {
LABEL_182:
        v159 = sub_21DBF563C();
        (*(*(v159 - 8) + 16))(v6 + v38, v7 + v38, v159);
        swift_storeEnumTagMultiPayload();
LABEL_239:
        (*(v40 + 56))(v6 + v38, 0, 1, v39);
        goto LABEL_240;
      }

      if (v68 != 1)
      {
        if (v68 == 2)
        {
          goto LABEL_182;
        }

LABEL_238:
        memcpy(v6 + v38, v7 + v38, *(v40 + 64));
        goto LABEL_239;
      }
    }

    v162 = *(v7 + v38);
    *(v6 + v38) = v162;
    v163 = v162;
    swift_storeEnumTagMultiPayload();
    goto LABEL_239;
  }

LABEL_11:
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C0);
  memcpy(v6, v7, *(*(v17 - 8) + 64));
  return v4;
}

uint64_t sub_21DA0A138(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E4D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *initializeWithTake for TTRSECreateRemindersTreeViewModelUpdateContext(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = &a1[v4];
  v6 = &a2[v4];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E4D0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v25 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v26 = *(v25 - 8);
          if ((*(v26 + 48))(v6, 1, v25))
          {
            v27 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(v5, v6, *(*(v27 - 8) + 64));
          }

          else
          {
            v30 = sub_21DBF563C();
            (*(*(v30 - 8) + 32))(v5, v6, v30);
            v5[*(v25 + 20)] = v6[*(v25 + 20)];
            (*(v26 + 56))(v5, 0, 1, v25);
          }

          v31 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *&v5[*(v31 + 20)] = *&v6[*(v31 + 20)];
          goto LABEL_89;
        }

        if (EnumCaseMultiPayload != 8)
        {
          goto LABEL_34;
        }

        *v5 = *v6;
        v21 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v22 = sub_21DBF8D7C();
        (*(*(v22 - 8) + 32))(&v5[v21], &v6[v21], v22);
LABEL_89:
        swift_storeEnumTagMultiPayload();
        goto LABEL_90;
      }

      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v15 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v16 = *(v15 - 8);
          if ((*(v16 + 48))(v6, 1, v15))
          {
            v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(v5, v6, *(*(v17 - 8) + 64));
          }

          else
          {
            *v5 = *v6;
            v32 = *(v15 + 20);
            v33 = sub_21DBF6C1C();
            (*(*(v33 - 8) + 32))(&v5[v32], &v6[v32], v33);
            (*(v16 + 56))(v5, 0, 1, v15);
          }

          v34 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v35 = &v5[v34];
          v36 = &v6[v34];
          *v35 = *v36;
          *(v35 + 2) = *(v36 + 2);
          goto LABEL_89;
        }

        goto LABEL_34;
      }

      *v5 = *v6;
      v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(&v6[v18], 1, v19))
      {
        v28 = swift_getEnumCaseMultiPayload();
        if (v28 <= 3)
        {
          if (v28 == 2 || v28 == 3)
          {
            goto LABEL_59;
          }
        }

        else if (v28 == 4 || v28 == 5 || v28 == 6)
        {
          goto LABEL_59;
        }

        goto LABEL_87;
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v23 = swift_getEnumCaseMultiPayload();
          if (v23 <= 3)
          {
            if (v23 == 2 || v23 == 3)
            {
              goto LABEL_11;
            }
          }

          else if (v23 == 4 || v23 == 5 || v23 == 6)
          {
            goto LABEL_11;
          }

          goto LABEL_66;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v13 = swift_getEnumCaseMultiPayload();
          if (v13 <= 3)
          {
            if (v13 == 2 || v13 == 3)
            {
              goto LABEL_11;
            }
          }

          else if (v13 == 4 || v13 == 5 || v13 == 6)
          {
LABEL_11:
            v14 = sub_21DBF563C();
            (*(*(v14 - 8) + 32))(v5, v6, v14);
            swift_storeEnumTagMultiPayload();
LABEL_67:
            v39 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v40 = v39[5];
            v41 = &v5[v40];
            v42 = &v6[v40];
            v43 = v42[3];
            v41[2] = v42[2];
            v41[3] = v43;
            v44 = v42[1];
            *v41 = *v42;
            v41[1] = v44;
            *(v41 + 106) = *(v42 + 106);
            v45 = v42[6];
            v41[5] = v42[5];
            v41[6] = v45;
            v41[4] = v42[4];
            v5[v39[6]] = v6[v39[6]];
            v5[v39[7]] = v6[v39[7]];
            v5[v39[8]] = v6[v39[8]];
            v5[v39[9]] = v6[v39[9]];
            v5[v39[10]] = v6[v39[10]];
            *&v5[v39[11]] = *&v6[v39[11]];
            goto LABEL_89;
          }

LABEL_66:
          memcpy(v5, v6, *(*(v12 - 8) + 64));
          goto LABEL_67;
        }

LABEL_34:
        memcpy(v5, v6, *(*(v10 - 8) + 64));
LABEL_90:
        v5[*(v7 + 48)] = v6[*(v7 + 48)];
        (*(v8 + 56))(v5, 0, 1, v7);
        return a1;
      }

      if (EnumCaseMultiPayload != 2)
      {
        *v5 = *v6;
        v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v20 = *(v19 - 8);
        if ((*(v20 + 48))(&v6[v18], 1, v19))
        {
          goto LABEL_31;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 <= 3)
        {
          if (v37 == 2 || v37 == 3)
          {
            goto LABEL_59;
          }
        }

        else if (v37 == 4 || v37 == 5 || v37 == 6)
        {
LABEL_59:
          v38 = sub_21DBF563C();
          (*(*(v38 - 8) + 32))(&v5[v18], &v6[v18], v38);
          swift_storeEnumTagMultiPayload();
LABEL_88:
          (*(v20 + 56))(&v5[v18], 0, 1, v19);
          goto LABEL_89;
        }

LABEL_87:
        memcpy(&v5[v18], &v6[v18], *(v20 + 64));
        goto LABEL_88;
      }

      *v5 = *v6;
      v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(&v6[v18], 1, v19))
      {
        v29 = swift_getEnumCaseMultiPayload();
        if (v29 <= 3)
        {
          if (v29 == 2 || v29 == 3)
          {
            goto LABEL_59;
          }
        }

        else if (v29 == 4 || v29 == 5 || v29 == 6)
        {
          goto LABEL_59;
        }

        goto LABEL_87;
      }
    }

LABEL_31:
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&v5[v18], &v6[v18], *(*(v24 - 8) + 64));
    goto LABEL_89;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C0);
  memcpy(v5, v6, *(*(v9 - 8) + 64));
  return a1;
}

_BYTE *assignWithTake for TTRSECreateRemindersTreeViewModelUpdateContext(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = &a1[v5];
  v7 = &a2[v5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E4D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(v6, 1, v8);
  v12 = v10(v7, 1, v8);
  if (!v11)
  {
    if (v12)
    {
      sub_21DA0A138(v6);
      goto LABEL_14;
    }

    if (a1 == a2)
    {
LABEL_184:
      *(v6 + *(v8 + 48)) = *(v7 + *(v8 + 48));
      return a1;
    }

    sub_21D24B040(v6);
    v19 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v45 = swift_getEnumCaseMultiPayload();
          if (v45 <= 3)
          {
            if (v45 == 2 || v45 == 3)
            {
              goto LABEL_24;
            }
          }

          else if (v45 == 4 || v45 == 5 || v45 == 6)
          {
            goto LABEL_24;
          }

          goto LABEL_154;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v22 = swift_getEnumCaseMultiPayload();
          if (v22 <= 3)
          {
            if (v22 == 2 || v22 == 3)
            {
              goto LABEL_24;
            }
          }

          else if (v22 == 4 || v22 == 5 || v22 == 6)
          {
LABEL_24:
            v23 = sub_21DBF563C();
            (*(*(v23 - 8) + 32))(v6, v7, v23);
            swift_storeEnumTagMultiPayload();
LABEL_155:
            v79 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v80 = v79[5];
            v81 = (v6 + v80);
            v82 = (v7 + v80);
            v83 = v82[3];
            v81[2] = v82[2];
            v81[3] = v83;
            v84 = v82[1];
            *v81 = *v82;
            v81[1] = v84;
            *(v81 + 106) = *(v82 + 106);
            v85 = v82[6];
            v81[5] = v82[5];
            v81[6] = v85;
            v81[4] = v82[4];
            *(v6 + v79[6]) = *(v7 + v79[6]);
            *(v6 + v79[7]) = *(v7 + v79[7]);
            *(v6 + v79[8]) = *(v7 + v79[8]);
            *(v6 + v79[9]) = *(v7 + v79[9]);
            *(v6 + v79[10]) = *(v7 + v79[10]);
            *(v6 + v79[11]) = *(v7 + v79[11]);
            goto LABEL_183;
          }

LABEL_154:
          memcpy(v6, v7, *(*(v21 - 8) + 64));
          goto LABEL_155;
        }

        goto LABEL_95;
      }

      if (EnumCaseMultiPayload == 2)
      {
        *v6 = *v7;
        v40 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v41 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v42 = *(v41 - 8);
        if ((*(v42 + 48))(v7 + v40, 1, v41))
        {
LABEL_85:
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(v6 + v40, v7 + v40, *(*(v50 - 8) + 64));
          goto LABEL_183;
        }

        v69 = swift_getEnumCaseMultiPayload();
        if (v69 <= 3)
        {
          if (v69 == 2 || v69 == 3)
          {
            goto LABEL_138;
          }
        }

        else if (v69 == 4 || v69 == 5 || v69 == 6)
        {
          goto LABEL_138;
        }
      }

      else
      {
        *v6 = *v7;
        v40 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v41 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v42 = *(v41 - 8);
        if ((*(v42 + 48))(v7 + v40, 1, v41))
        {
          goto LABEL_85;
        }

        v77 = swift_getEnumCaseMultiPayload();
        if (v77 <= 3)
        {
          if (v77 == 2 || v77 == 3)
          {
            goto LABEL_138;
          }
        }

        else if (v77 == 4 || v77 == 5 || v77 == 6)
        {
LABEL_138:
          v78 = sub_21DBF563C();
          (*(*(v78 - 8) + 32))(v6 + v40, v7 + v40, v78);
          swift_storeEnumTagMultiPayload();
LABEL_182:
          (*(v42 + 56))(v6 + v40, 0, 1, v41);
          goto LABEL_183;
        }
      }

LABEL_181:
      memcpy(v6 + v40, v7 + v40, *(v42 + 64));
      goto LABEL_182;
    }

    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v51 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v52 = *(v51 - 8);
        if ((*(v52 + 48))(v7, 1, v51))
        {
          v53 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(v6, v7, *(*(v53 - 8) + 64));
        }

        else
        {
          v70 = sub_21DBF563C();
          (*(*(v70 - 8) + 32))(v6, v7, v70);
          *(v6 + *(v51 + 20)) = *(v7 + *(v51 + 20));
          (*(v52 + 56))(v6, 0, 1, v51);
        }

        v71 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *(v6 + *(v71 + 20)) = *(v7 + *(v71 + 20));
        goto LABEL_183;
      }

      if (EnumCaseMultiPayload == 8)
      {
        *v6 = *v7;
        v43 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v44 = sub_21DBF8D7C();
        (*(*(v44 - 8) + 32))(v6 + v43, v7 + v43, v44);
LABEL_183:
        swift_storeEnumTagMultiPayload();
        goto LABEL_184;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        *v6 = *v7;
        v40 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v41 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v42 = *(v41 - 8);
        if ((*(v42 + 48))(v7 + v40, 1, v41))
        {
          goto LABEL_85;
        }

        v68 = swift_getEnumCaseMultiPayload();
        if (v68 <= 3)
        {
          if (v68 == 2 || v68 == 3)
          {
            goto LABEL_138;
          }
        }

        else if (v68 == 4 || v68 == 5 || v68 == 6)
        {
          goto LABEL_138;
        }

        goto LABEL_181;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v32 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v33 = *(v32 - 8);
        if ((*(v33 + 48))(v7, 1, v32))
        {
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(v6, v7, *(*(v34 - 8) + 64));
        }

        else
        {
          *v6 = *v7;
          v72 = *(v32 + 20);
          v73 = sub_21DBF6C1C();
          (*(*(v73 - 8) + 32))(v6 + v72, v7 + v72, v73);
          (*(v33 + 56))(v6, 0, 1, v32);
        }

        v74 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v75 = v6 + v74;
        v76 = v7 + v74;
        *v75 = *v76;
        *(v75 + 2) = *(v76 + 2);
        goto LABEL_183;
      }
    }

LABEL_95:
    memcpy(v6, v7, *(*(v19 - 8) + 64));
    goto LABEL_184;
  }

  if (!v12)
  {
    v13 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 > 3)
    {
      if (v14 > 6)
      {
        if (v14 == 7)
        {
          v37 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v38 = *(v37 - 8);
          if ((*(v38 + 48))(v7, 1, v37))
          {
            v39 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(v6, v7, *(*(v39 - 8) + 64));
          }

          else
          {
            v48 = sub_21DBF563C();
            (*(*(v48 - 8) + 32))(v6, v7, v48);
            *(v6 + *(v37 + 20)) = *(v7 + *(v37 + 20));
            (*(v38 + 56))(v6, 0, 1, v37);
          }

          v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *(v6 + *(v49 + 20)) = *(v7 + *(v49 + 20));
          goto LABEL_161;
        }

        if (v14 != 8)
        {
          goto LABEL_52;
        }

        *v6 = *v7;
        v30 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v31 = sub_21DBF8D7C();
        (*(*(v31 - 8) + 32))(v6 + v30, v7 + v30, v31);
LABEL_161:
        swift_storeEnumTagMultiPayload();
        goto LABEL_162;
      }

      if (v14 != 4)
      {
        if (v14 == 6)
        {
          v24 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v25 = *(v24 - 8);
          if ((*(v25 + 48))(v7, 1, v24))
          {
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(v6, v7, *(*(v26 - 8) + 64));
          }

          else
          {
            *v6 = *v7;
            v54 = *(v24 + 20);
            v55 = sub_21DBF6C1C();
            (*(*(v55 - 8) + 32))(v6 + v54, v7 + v54, v55);
            (*(v25 + 56))(v6, 0, 1, v24);
          }

          v56 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v57 = v6 + v56;
          v58 = v7 + v56;
          *v57 = *v58;
          *(v57 + 2) = *(v58 + 2);
          goto LABEL_161;
        }

        goto LABEL_52;
      }

      *v6 = *v7;
      v27 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v29 = *(v28 - 8);
      if (!(*(v29 + 48))(v7 + v27, 1, v28))
      {
        v46 = swift_getEnumCaseMultiPayload();
        if (v46 <= 3)
        {
          if (v46 == 2 || v46 == 3)
          {
            goto LABEL_94;
          }
        }

        else if (v46 == 4 || v46 == 5 || v46 == 6)
        {
          goto LABEL_94;
        }

        goto LABEL_159;
      }
    }

    else
    {
      if (v14 <= 1)
      {
        if (!v14)
        {
          v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v35 = swift_getEnumCaseMultiPayload();
          if (v35 <= 3)
          {
            if (v35 == 2 || v35 == 3)
            {
              goto LABEL_11;
            }
          }

          else if (v35 == 4 || v35 == 5 || v35 == 6)
          {
            goto LABEL_11;
          }

          goto LABEL_102;
        }

        if (v14 == 1)
        {
          v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v16 = swift_getEnumCaseMultiPayload();
          if (v16 <= 3)
          {
            if (v16 == 2 || v16 == 3)
            {
              goto LABEL_11;
            }
          }

          else if (v16 == 4 || v16 == 5 || v16 == 6)
          {
LABEL_11:
            v17 = sub_21DBF563C();
            (*(*(v17 - 8) + 32))(v6, v7, v17);
            swift_storeEnumTagMultiPayload();
LABEL_103:
            v61 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v62 = v61[5];
            v63 = (v6 + v62);
            v64 = (v7 + v62);
            v65 = v64[3];
            v63[2] = v64[2];
            v63[3] = v65;
            v66 = v64[1];
            *v63 = *v64;
            v63[1] = v66;
            *(v63 + 106) = *(v64 + 106);
            v67 = v64[6];
            v63[5] = v64[5];
            v63[6] = v67;
            v63[4] = v64[4];
            *(v6 + v61[6]) = *(v7 + v61[6]);
            *(v6 + v61[7]) = *(v7 + v61[7]);
            *(v6 + v61[8]) = *(v7 + v61[8]);
            *(v6 + v61[9]) = *(v7 + v61[9]);
            *(v6 + v61[10]) = *(v7 + v61[10]);
            *(v6 + v61[11]) = *(v7 + v61[11]);
            goto LABEL_161;
          }

LABEL_102:
          memcpy(v6, v7, *(*(v15 - 8) + 64));
          goto LABEL_103;
        }

LABEL_52:
        memcpy(v6, v7, *(*(v13 - 8) + 64));
LABEL_162:
        *(v6 + *(v8 + 48)) = *(v7 + *(v8 + 48));
        (*(v9 + 56))(v6, 0, 1, v8);
        return a1;
      }

      if (v14 != 2)
      {
        *v6 = *v7;
        v27 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v29 = *(v28 - 8);
        if ((*(v29 + 48))(v7 + v27, 1, v28))
        {
          goto LABEL_49;
        }

        v59 = swift_getEnumCaseMultiPayload();
        if (v59 <= 3)
        {
          if (v59 == 2 || v59 == 3)
          {
            goto LABEL_94;
          }
        }

        else if (v59 == 4 || v59 == 5 || v59 == 6)
        {
LABEL_94:
          v60 = sub_21DBF563C();
          (*(*(v60 - 8) + 32))(v6 + v27, v7 + v27, v60);
          swift_storeEnumTagMultiPayload();
LABEL_160:
          (*(v29 + 56))(v6 + v27, 0, 1, v28);
          goto LABEL_161;
        }

LABEL_159:
        memcpy(v6 + v27, v7 + v27, *(v29 + 64));
        goto LABEL_160;
      }

      *v6 = *v7;
      v27 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v29 = *(v28 - 8);
      if (!(*(v29 + 48))(v7 + v27, 1, v28))
      {
        v47 = swift_getEnumCaseMultiPayload();
        if (v47 <= 3)
        {
          if (v47 == 2 || v47 == 3)
          {
            goto LABEL_94;
          }
        }

        else if (v47 == 4 || v47 == 5 || v47 == 6)
        {
          goto LABEL_94;
        }

        goto LABEL_159;
      }
    }

LABEL_49:
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(v6 + v27, v7 + v27, *(*(v36 - 8) + 64));
    goto LABEL_161;
  }

LABEL_14:
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C0);
  memcpy(v6, v7, *(*(v18 - 8) + 64));
  return a1;
}

void sub_21DA0D5E4()
{
  sub_21D58AE7C();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t TTRShowCustomSmartListTipKitDataModelSource.__allocating_init(store:smartList:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t TTRShowCustomSmartListTipKitDataModelSource.init(store:smartList:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

RemindersUICore::TTRTipKitDataModelSourceContextKeyCondition __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRShowCustomSmartListTipKitDataModelSource.hasCompletedReminders()()
{
  v2 = v1;
  v48 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v47 - v4;
  v5 = sub_21DBF773C();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF6C9C();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_21DBF72DC();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v47 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF714C();
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x28223BE20](v10);
  v62 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_21DBF734C();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v61 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF71BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DBF70DC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58568);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v22 = &v47 - v21;
  swift_beginAccess();
  v23 = *(v2 + 16);
  v24 = *MEMORY[0x277D45420];
  v65 = v18;
  v66 = v17;
  v25 = v17;
  v26 = v16;
  (*(v18 + 104))(v20, v24, v25);
  v27 = *MEMORY[0x277D45470];
  v67 = v14;
  v68 = v13;
  v28 = v14;
  v29 = v61;
  (*(v28 + 104))(v16, v27, v13);
  (*(v70 + 104))(v29, *MEMORY[0x277D45500], v71);
  v30 = v62;
  v31 = v63;
  v32 = v64;
  (*(v63 + 104))(v62, *MEMORY[0x277D45460]);
  v33 = v23;
  v49 = v22;
  v34 = v69;
  sub_21DBF6CAC();
  if (v34)
  {

    (*(v31 + 8))(v30, v32);
    (*(v70 + 8))(v29, v71);
    (*(v67 + 8))(v26, v68);
    return (*(v65 + 8))(v20, v66);
  }

  else
  {

    (*(v31 + 8))(v30, v32);
    (*(v70 + 8))(v29, v71);
    (*(v67 + 8))(v26, v68);
    (*(v65 + 8))(v20, v66);
    v36 = v52;
    v37 = v51;
    v38 = v49;
    v39 = sub_21DBF76DC();
    v40 = v56;
    MEMORY[0x223D3F440](v39);
    (*(v53 + 8))(v36, v54);
    v41 = v60;
    sub_21DBF715C();
    (*(v58 + 8))(v40, v59);
    v42 = v55;
    v43 = v57;
    if ((*(v55 + 48))(v41, 1, v57) == 1)
    {
      sub_21DA0DEC4(v41);
      sub_21DA0DF2C();
      swift_allocError();
      swift_willThrow();
      return (*(v50 + 8))(v38, v37);
    }

    else
    {
      v44 = v47;
      (*(v42 + 32))(v47, v41, v43);
      v45 = sub_21DBF72CC();
      (*(v42 + 8))(v44, v43);
      result = (*(v50 + 8))(v38, v37);
      if (v45 <= 0)
      {
        v46 = 1;
      }

      else
      {
        v46 = 2;
      }

      *v48 = v46;
    }
  }

  return result;
}

uint64_t sub_21DA0DEC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DA0DF2C()
{
  result = qword_27CE64AD0;
  if (!qword_27CE64AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64AD0);
  }

  return result;
}

uint64_t TTRShowCustomSmartListTipKitDataModelSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

BOOL static TTRRemindersListTip.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v8 = *(v7 + 56);
  sub_21DA0E134(a1, &v10 - v5);
  sub_21DA0E134(a2, &v6[v8]);
  LOBYTE(a2) = *v6 ^ v6[v8];
  sub_21DA0E3B4(&v6[v8]);
  sub_21DA0E3B4(v6);
  return (a2 & 1) == 0;
}

uint64_t sub_21DA0E134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListTip(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TTRRemindersListTip.visibilityPriority.getter@<X0>(BOOL *a1@<X8>)
{
  v3 = type metadata accessor for TTRRemindersListTips(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListTip(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DA0E134(v1, v8);
  sub_21DA0E430(v8, v5);
  v9 = *v5;
  result = sub_21DA0E3B4(v5);
  *a1 = (v9 & 1) == 0;
  return result;
}

BOOL sub_21DA0E2B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v8 = *(v7 + 56);
  sub_21DA0E134(a1, &v10 - v5);
  sub_21DA0E134(a2, &v6[v8]);
  LOBYTE(a2) = *v6 ^ v6[v8];
  sub_21DA0E3B4(&v6[v8]);
  sub_21DA0E3B4(v6);
  return (a2 & 1) == 0;
}

uint64_t TTRRemindersListTips.TipID.assetColor.getter()
{
  if (*v0)
  {
    return sub_21DBF9A1C();
  }

  else
  {
    return sub_21DBF9A5C();
  }
}

uint64_t sub_21DA0E3B4(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListTips(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DA0E430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListTips(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TTRRemindersListTips.TipID.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRRemindersListTips.tip.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v4 = sub_21DBF8D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRRemindersListTips.init(tipID:tip:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v6 = sub_21DBF8D7C();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

RemindersUICore::TTRRemindersListTip::VisibilityPriority_optional __swiftcall TTRRemindersListTip.VisibilityPriority.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 250)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 500)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (rawValue == 750)
  {
    v3 = 0;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t sub_21DA0E658()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](-250 * v1 + 750);
  return sub_21DBFC82C();
}

uint64_t sub_21DA0E6E0()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](-250 * v1 + 750);
  return sub_21DBFC82C();
}

uint64_t TTRRemindersListTip.description.getter()
{
  v1 = type metadata accessor for TTRRemindersListTips(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListTip(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DA0E134(v0, v6);
  sub_21DA0E430(v6, v3);
  v11[0] = 0x2874694B706974;
  v11[1] = 0xE700000000000000;
  if (*v3)
  {
    v7 = 0x6553656D616E6572;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (*v3)
  {
    v8 = 0xED00006E6F697463;
  }

  else
  {
    v8 = 0x800000021DC73AD0;
  }

  MEMORY[0x223D42AA0](v7, v8);

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  v9 = v11[0];
  sub_21DA0E3B4(v3);
  return v9;
}

uint64_t TTRRemindersListTips.TipID.description.getter()
{
  if (*v0)
  {
    return 0x6553656D616E6572;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_21DA0E8FC()
{
  if (*v0)
  {
    return 0x6553656D616E6572;
  }

  else
  {
    return 0xD000000000000010;
  }
}

unint64_t sub_21DA0E974()
{
  result = qword_27CE64AD8;
  if (!qword_27CE64AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64AD8);
  }

  return result;
}

unint64_t sub_21DA0E9C8()
{
  result = qword_27CE64AE0;
  if (!qword_27CE64AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64AE0);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRRemindersListTip(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v6 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
    v7 = sub_21DBF8D7C();
    (*(*(v7 - 8) + 16))(&v3[v6], &a2[v6], v7);
  }

  return v3;
}

uint64_t destroy for TTRRemindersListTip(uint64_t a1)
{
  v2 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v3 = sub_21DBF8D7C();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

_BYTE *initializeWithCopy for TTRRemindersListTip(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v5 = sub_21DBF8D7C();
  (*(*(v5 - 8) + 16))(&a1[v4], &a2[v4], v5);
  return a1;
}

_BYTE *assignWithCopy for TTRRemindersListTip(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v5 = sub_21DBF8D7C();
  (*(*(v5 - 8) + 24))(&a1[v4], &a2[v4], v5);
  return a1;
}

_BYTE *initializeWithTake for TTRRemindersListTip(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v5 = sub_21DBF8D7C();
  (*(*(v5 - 8) + 32))(&a1[v4], &a2[v4], v5);
  return a1;
}

_BYTE *assignWithTake for TTRRemindersListTip(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v5 = sub_21DBF8D7C();
  (*(*(v5 - 8) + 40))(&a1[v4], &a2[v4], v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListTip(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListTips(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_indexTm_2);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListTip(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListTips(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j____swift_store_extra_inhabitant_indexTm_2);
}

uint64_t sub_21DA0EEB8(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListTips(319);
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8);
    swift_initEnumMetadataSingleCase();
    result = 0;
    *(*(a1 - 8) + 84) = *(v4 + 84);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRRemindersListTips(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v7 = sub_21DBF8D7C();
    (*(*(v7 - 8) + 16))(&v3[v5], &a2[v5], v7);
  }

  return v3;
}

uint64_t destroy for TTRRemindersListTips(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = sub_21DBF8D7C();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

_BYTE *initializeWithCopy for TTRRemindersListTips(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_21DBF8D7C();
  (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *assignWithCopy for TTRRemindersListTips(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_21DBF8D7C();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *initializeWithTake for TTRRemindersListTips(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_21DBF8D7C();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *assignWithTake for TTRRemindersListTips(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_21DBF8D7C();
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_21DBF8D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *__swift_store_extra_inhabitant_indexTm_2(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_21DBF8D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21DA0F3D4()
{
  result = sub_21DBF8D7C();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21DA0F490(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21D215340(0, v5[2] + 1, 1, v5);
    v5 = result;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    result = sub_21D215340((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = a1;
  v9[5] = a2;
  *v2 = v5;
  return result;
}

uint64_t sub_21DA0F534@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v23 - v11);
  v13 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 1, 1, v13);
  *&v27[0] = v4;
  result = sub_21D0E8DA0(v12);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    *(&v23 - 2) = v27;
    *(&v23 - 1) = v12;
    v26 = a3;
    v25 = sub_21D174668(sub_21DA312A8, (&v23 - 4), 0, v16);
    sub_21D0CF7E0(v12, &qword_27CE5A490);
    v24 = a2;
    v17 = a1[3];
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v17);
    v23 = a4;
    v14(v12, 1, 1, v13);
    v19 = TTRTreeContentsQueryable.children(of:)(v12, v17, v18);
    v20 = sub_21D0CF7E0(v12, &qword_27CE5A490);
    MEMORY[0x28223BE20](v20);
    *(&v23 - 2) = sub_21DA30FC8;
    *(&v23 - 1) = v5;
    sub_21D0D32E4(a1, v27);
    v21 = swift_allocObject();
    v22 = sub_21D0D0FD0(v27, (v21 + 2));
    MEMORY[0x28223BE20](v22);
    *(&v23 - 2) = sub_21DA30FF8;
    *(&v23 - 1) = v21;

    sub_21DA11A2C(v25, v19, sub_21DA30FF0, (&v23 - 4), sub_21DA31374, (&v23 - 4), v24, v26, v23);
  }

  return result;
}

void sub_21DA0F818()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(*v0 + 16);
  if (!v6)
  {
    return;
  }

  v7 = v6 - 1;
  if (v6 == 1)
  {
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_17:
    v5 = sub_21D256E34(v5);
  }

  v8 = 1;
  while (1)
  {
    v10 = v8 - 1;
    if (v8 - 1 == v7)
    {
      goto LABEL_6;
    }

    v11 = v5[2];
    if (v10 >= v11)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v12 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v13 = *(v2 + 72);
    v14 = &v12[v13 * v10];
    sub_21D0FE734(v14, v4, type metadata accessor for TTRAccountsListsViewModel.Item);
    if (v7 >= v11)
    {
      goto LABEL_16;
    }

    sub_21DA310BC(&v12[v13 * v7], v14);
    if (v7 >= v5[2])
    {
      break;
    }

    sub_21DA31120(v4, &v12[v13 * v7]);
LABEL_6:
    if (v8++ >= --v7)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v0 = v5;
}

uint64_t sub_21DA0F9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v48 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A508);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A510);
  MEMORY[0x28223BE20](v56);
  v55 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A520);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A08);
  v57 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v62 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v52 = &v47 - v18;
  v51 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v51);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 + 16);
  if (v22)
  {
    v23 = a2 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v49 = (v19 + 56);
    v24 = *(v19 + 72);
    v60 = (v57 + 56);
    v61 = v24;
    v59 = (v57 + 48);
    v63 = MEMORY[0x277D84F90];
    v50 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      sub_21D0FE734(v23, v21, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D25FC60(v6);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4A8);
      if ((*(*(v25 - 8) + 48))(v6, 1, v25) == 1)
      {
        sub_21D0CF7E0(v6, &qword_27CE5A508);
        v26 = 1;
      }

      else
      {
        v27 = *&v6[*(v25 + 48)];
        v28 = v56;
        v29 = *(v56 + 48);
        v30 = v6;
        v58 = v23;
        v31 = v6;
        v32 = v55;
        sub_21D0D523C(v30, v55, &qword_27CE5A490);
        *(v32 + v29) = v27;
        v33 = *(v28 + 48);
        v21 = v50;
        v34 = *(v32 + v33);
        v35 = v32;
        v6 = v31;
        v36 = v53;
        sub_21D0D523C(v35, v53, &qword_27CE5A490);
        v37 = v36;
        v38 = v54;
        sub_21D0D523C(v37, v54, &qword_27CE5A490);
        (*v49)(v14, 1, 1, v51);
        v39 = v38;
        v23 = v58;
        sub_21D0F02F4(v39, v14, &qword_27CE5A490);
        v26 = 0;
        *&v14[*(v15 + 36)] = v34;
      }

      (*v60)(v14, v26, 1, v15);
      sub_21D101450(v21, type metadata accessor for TTRAccountsListsViewModel.Item);
      if ((*v59)(v14, 1, v15) == 1)
      {
        sub_21D0CF7E0(v14, &qword_27CE5A520);
      }

      else
      {
        v40 = v23;
        v41 = v52;
        sub_21D0D523C(v14, v52, &qword_27CE59A08);
        sub_21D0D523C(v41, v62, &qword_27CE59A08);
        v42 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_21D2151EC(0, v63[2] + 1, 1, v63);
        }

        v44 = v63[2];
        v43 = v63[3];
        if (v44 >= v43 >> 1)
        {
          v63 = sub_21D2151EC(v43 > 1, v44 + 1, 1, v63);
        }

        v45 = v63;
        v63[2] = v44 + 1;
        sub_21D0D523C(v62, v45 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v44, &qword_27CE59A08);
        v22 = v42;
        v23 = v40;
      }

      v23 += v61;
      --v22;
    }

    while (v22);
  }

  else
  {
    v63 = MEMORY[0x277D84F90];
  }

  sub_21D272524(v48, v63, v47);
}

double TTRAccountsListsViewModel.List.init(remSmartList:reminderCounts:parentList:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_opt_self();
  v62 = a2;
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v10 = [v8 localizedStringFromNumber:v9 numberStyle:1];

  v11 = sub_21DBFA16C();
  v60 = v12;
  v61 = v11;

  v13 = [a1 customContext];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 badge];

    if (v15)
    {
      v16 = [v15 emoji];
      if (v16)
      {
        v17 = v16;
        v18 = sub_21DBFA16C();
        v20 = v19;

        v21 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) == 0)
        {
          v21 = v18 & 0xFFFFFFFFFFFFLL;
        }

        if (v21)
        {
          if (qword_280D1BAA8 != -1)
          {
            swift_once();
          }

          v59 = v18;
          v50 = 0x800000021DC73AF0;
          v22 = sub_21DBF516C();
          v56 = v23;
          v57 = v22;

          v55 = 1;
          v24 = &off_278331000;
          if (!a3)
          {
            goto LABEL_10;
          }

          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

  v25 = a1;
  v26 = sub_21DA262C8(v25);

  v27 = v26;
  v28 = [v25 customContext];
  v59 = v26;
  if (v28)
  {

    v29 = REMListBadgeEmblem.name.getter();
    v56 = v30;
    v57 = v29;
  }

  else
  {

    v56 = 0;
    v57 = 0;
  }

  v20 = 0;
  v55 = 0;
  v24 = &off_278331000;
  if (!a3)
  {
LABEL_10:
    v52 = 0;
    v53 = 0;
    v54 = 0;
    goto LABEL_18;
  }

LABEL_17:
  v31 = [a3 displayName];
  v32 = sub_21DBFA16C();
  v53 = v33;
  v54 = v32;

  v52 = [a3 v24[425]];
LABEL_18:
  v34 = [a1 accountCapabilities];
  v35 = [v34 supportsPinnedLists];

  v58 = v20;
  if (v35)
  {
    v51 = [a1 isPinned];
  }

  else
  {
    v51 = 2;
  }

  v36 = [a1 v24[425]];
  v37 = [a1 name];
  v38 = sub_21DBFA16C();
  v40 = v39;

  v41 = sub_21DBF673C();
  v42 = sub_21DBF675C();
  type metadata accessor for TTRListColors();
  v63[3] = sub_21D0D8CF0(0, &qword_280D0C320);
  v63[4] = &protocol witness table for REMSmartList;
  v63[0] = a1;
  v43 = a1;
  static TTRListColors.color(for:)(v63, v64);

  v44 = sub_21DBF676C();
  (*(*(v44 - 8) + 8))(v62, v44);
  sub_21D0CF7E0(v63, &qword_27CE59DC0);
  v45 = v65;
  v46 = v64[0];
  v47 = v64[1];
  v48 = v64[2];
  *a4 = v36;
  *(a4 + 8) = v38;
  *(a4 + 16) = v40;
  *(a4 + 24) = v41;
  *(a4 + 32) = v42;
  *(a4 + 40) = v61;
  *(a4 + 48) = v60;
  *(a4 + 56) = v57;
  *(a4 + 64) = v56;
  *(a4 + 72) = v46;
  *(a4 + 88) = v47;
  *(a4 + 104) = v48;
  *(a4 + 120) = v45;
  *(a4 + 128) = v59;
  *(a4 + 136) = v58;
  *(a4 + 144) = v55;
  *(a4 + 145) = 1;
  *(a4 + 146) = v51;
  *(a4 + 147) = 0;
  result = 0.0;
  *(a4 + 168) = 0u;
  *(a4 + 152) = 0u;
  *(a4 + 184) = 0;
  *(a4 + 192) = v52;
  *(a4 + 200) = v54;
  *(a4 + 208) = v53;
  *(a4 + 216) = 1;
  return result;
}

uint64_t TTRAccountsListsViewModel.listOrCustomSmartList(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0FE734(a1, v6, type metadata accessor for TTRAccountsListsViewModel.Item);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
      result = sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.Item);
      goto LABEL_3;
    case 5:
      v11 = v6[11];
      v12 = v6[9];
      v60 = v6[10];
      v61 = v11;
      v13 = v6[11];
      v62[0] = v6[12];
      *(v62 + 10) = *(v6 + 202);
      v14 = v6[7];
      v15 = v6[5];
      v56 = v6[6];
      v57 = v14;
      v16 = v6[7];
      v17 = v6[9];
      v58 = v6[8];
      v59 = v17;
      v18 = v6[3];
      v19 = v6[1];
      v52 = v6[2];
      v53 = v18;
      v20 = v6[3];
      v21 = v6[5];
      v54 = v6[4];
      v55 = v21;
      v22 = v6[1];
      v50 = *v6;
      v51 = v22;
      v47 = v60;
      v48 = v13;
      v49[0] = v6[12];
      *(v49 + 10) = *(v6 + 202);
      v43 = v56;
      v44 = v16;
      v45 = v58;
      v46 = v12;
      v39 = v52;
      v40 = v20;
      v41 = v54;
      v42 = v15;
      v37 = v50;
      v38 = v19;
      v10 = TTRAccountsListsViewModel.remList(for:)(&v37);
      result = sub_21D1077D8(&v50);
      if (!v10)
      {
        goto LABEL_3;
      }

      goto LABEL_16;
    case 6:
      v23 = v6[11];
      v24 = v6[9];
      v60 = v6[10];
      v61 = v23;
      v25 = v6[11];
      v62[0] = v6[12];
      *(v62 + 10) = *(v6 + 202);
      v26 = v6[7];
      v27 = v6[5];
      v56 = v6[6];
      v57 = v26;
      v28 = v6[7];
      v29 = v6[9];
      v58 = v6[8];
      v59 = v29;
      v30 = v6[3];
      v31 = v6[1];
      v52 = v6[2];
      v53 = v30;
      v32 = v6[3];
      v33 = v6[5];
      v54 = v6[4];
      v55 = v33;
      v34 = v6[1];
      v50 = *v6;
      v51 = v34;
      v47 = v60;
      v48 = v25;
      v49[0] = v6[12];
      *(v49 + 10) = *(v6 + 202);
      v43 = v56;
      v44 = v28;
      v45 = v58;
      v46 = v24;
      v39 = v52;
      v40 = v32;
      v41 = v54;
      v42 = v27;
      v37 = v50;
      v38 = v31;
      v35 = TTRAccountsListsViewModel.remSmartList(for:)(&v37);
      result = sub_21D1077D8(&v50);
      if (!v35)
      {
        goto LABEL_3;
      }

      *a2 = v35;
      v8 = 1;
      goto LABEL_4;
    case 7:
      v9 = *(v6 + 6);
      sub_21DA1CE20(v9, &v50);
      v10 = v50;
      if (BYTE8(v50) == 1 || BYTE8(v50) == 4)
      {

LABEL_16:
        *a2 = v10;
        *(a2 + 8) = 0;
      }

      else
      {
        if (BYTE8(v50) != 255)
        {
          sub_21D103A34(v50, BYTE8(v50));
        }

LABEL_3:
        *a2 = 0;
        v8 = -1;
LABEL_4:
        *(a2 + 8) = v8;
      }

      return result;
    case 15:
    case 16:
      goto LABEL_3;
    default:
      v36 = sub_21DBF56BC();
      result = (*(*(v36 - 8) + 8))(v6, v36);
      goto LABEL_3;
  }
}

{
  v4 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0FE734(a1, v6, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = v6[11];
    v8 = v6[9];
    v47 = v6[10];
    v48 = v7;
    v9 = v6[11];
    v49[0] = v6[12];
    *(v49 + 10) = *(v6 + 202);
    v10 = v6[7];
    v11 = v6[5];
    v43 = v6[6];
    v44 = v10;
    v12 = v6[7];
    v13 = v6[9];
    v45 = v6[8];
    v46 = v13;
    v14 = v6[3];
    v15 = v6[1];
    v39 = v6[2];
    v40 = v14;
    v16 = v6[3];
    v17 = v6[5];
    v41 = v6[4];
    v42 = v17;
    v18 = v6[1];
    v37 = *v6;
    v38 = v18;
    v34 = v47;
    v35 = v9;
    v36[0] = v6[12];
    *(v36 + 10) = *(v6 + 202);
    v30 = v43;
    v31 = v12;
    v32 = v45;
    v33 = v8;
    v26 = v39;
    v27 = v16;
    v28 = v41;
    v29 = v11;
    v24 = v37;
    v25 = v15;
    v19 = TTRAccountsListsViewModel.remList(for:)(&v24);
    if (v19)
    {
      v20 = v19;
      result = sub_21D1077D8(&v37);
      *a2 = v20;
      *(a2 + 8) = 0;
    }

    else
    {
      v34 = v47;
      v35 = v48;
      v36[0] = v49[0];
      *(v36 + 10) = *(v49 + 10);
      v30 = v43;
      v31 = v44;
      v32 = v45;
      v33 = v46;
      v26 = v39;
      v27 = v40;
      v28 = v41;
      v29 = v42;
      v24 = v37;
      v25 = v38;
      v22 = TTRAccountsListsViewModel.remSmartList(for:)(&v24);
      result = sub_21D1077D8(&v37);
      if (v22)
      {
        *a2 = v22;
        v23 = 1;
      }

      else
      {
        *a2 = 0;
        v23 = -1;
      }

      *(a2 + 8) = v23;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = -1;
    return sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  }

  return result;
}

id TTRAccountsListsViewModel.listOrCustomSmartList(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = TTRAccountsListsViewModel.remList(for:)(a1);
  if (result)
  {
    *a2 = result;
    *(a2 + 8) = 0;
  }

  else
  {
    result = TTRAccountsListsViewModel.remSmartList(for:)(a1);
    if (result)
    {
      *a2 = result;
      v5 = 1;
    }

    else
    {
      *a2 = 0;
      v5 = -1;
    }

    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t TTRAccountsListsViewModel.account(with:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  *&v12 = MEMORY[0x28223BE20](v11 - 8).n128_u64[0];
  v14 = &v19 - v13;
  v15 = [a1 uuid];
  sub_21DBF568C();

  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v10, v14);
  sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    result = sub_21D0CF7E0(v14, &qword_27CE5A490);
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    sub_21D0FE734(v14, v7, type metadata accessor for TTRAccountsListsViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v17 = *v7;
      v18 = v7[1];
    }

    else
    {
      sub_21D101450(v7, type metadata accessor for TTRAccountsListsViewModel.Item);
      v17 = 0uLL;
      v18 = 0uLL;
    }

    *a2 = v17;
    a2[1] = v18;
    return sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
  }

  return result;
}

id TTRAccountsListsViewModel.remAccount(for:)(uint64_t a1)
{
  sub_21DA1CE20(*(a1 + 16), &v2);
  if (v3 != 255)
  {
    result = v2;
    if (!v3)
    {
      return result;
    }

    sub_21D103A34(v2, v3);
  }

  return 0;
}

Swift::Bool __swiftcall TTRAccountsListsViewModel.exceedsMaximumNumberOfPinnedListsAdding(count:)(Swift::Int count)
{
  v38 = count;
  v2 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v44);
  v43 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = &v33 - v7;
  v39 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
  MEMORY[0x28223BE20](v39);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180) - 8;
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes);
  v46 = *(v18 + 16);
  if (v46)
  {
    v19 = 0;
    v20 = 0;
    v45 = v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v21 = v15;
    v41 = v15;
    v42 = v18;
    v36 = v10;
    v37 = v9;
    v35 = v12;
    while (v19 < *(v18 + 16))
    {
      sub_21D0D3954(v45 + *(v21 + 72) * v19++, v17, &qword_27CE58180);
      sub_21D0FE734(v17, v12, type metadata accessor for TTRAccountsListsViewModel.Item);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
        case 4u:
        case 7u:
        case 8u:
        case 9u:
        case 0xAu:
        case 0xBu:
        case 0xCu:
        case 0xDu:
        case 0xEu:
          sub_21D0CF7E0(v17, &qword_27CE58180);
          result = sub_21D101450(v12, type metadata accessor for TTRAccountsListsViewModel.Item);
          goto LABEL_4;
        case 2u:
          sub_21D100E28(v12, v9, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
          v23 = *&v9[*(v39 + 20)];
          v24 = *(v23 + 16);
          if (!v24)
          {
            goto LABEL_27;
          }

          v25 = v23 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
          v26 = *(v34 + 72);
          break;
        case 3u:
          sub_21D0CF7E0(v17, &qword_27CE58180);
          v30 = v40;
          sub_21D100E28(v12, v40, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          v31 = *(v30 + *(v44 + 36));
          result = sub_21D101450(v30, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          if (v31 == 2)
          {
            goto LABEL_28;
          }

          v22 = __OFADD__(v20++, 1);
          v18 = v42;
          if (v22)
          {
            goto LABEL_37;
          }

          v21 = v41;
          goto LABEL_4;
        case 5u:
        case 6u:
          sub_21D0CF7E0(v17, &qword_27CE58180);
          result = sub_21D101450(v12, type metadata accessor for TTRAccountsListsViewModel.Item);
          v22 = __OFADD__(v20++, 1);
          if (v22)
          {
            goto LABEL_35;
          }

          goto LABEL_4;
        case 0xFu:
        case 0x10u:
          result = sub_21D0CF7E0(v17, &qword_27CE58180);
          goto LABEL_4;
        default:
          sub_21D0CF7E0(v17, &qword_27CE58180);
          v32 = sub_21DBF56BC();
          result = (*(*(v32 - 8) + 8))(v12, v32);
          goto LABEL_4;
      }

      do
      {
        sub_21D0FE734(v25, v4, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          result = sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
          v22 = __OFADD__(v20++, 1);
          if (v22)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v27 = v2;
          v28 = v43;
          sub_21D100E28(v4, v43, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          v29 = *(v28 + *(v44 + 36));
          result = sub_21D101450(v28, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          if (v29 != 2)
          {
            v22 = __OFADD__(v20++, 1);
            if (v22)
            {
              goto LABEL_34;
            }
          }

          v2 = v27;
        }

        v25 += v26;
        --v24;
      }

      while (v24);
LABEL_27:
      v9 = v37;
      sub_21D101450(v37, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
      result = sub_21D0CF7E0(v17, &qword_27CE58180);
      v12 = v35;
LABEL_28:
      v21 = v41;
      v18 = v42;
LABEL_4:
      if (v19 == v46)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
    v20 = 0;
LABEL_30:
    if (!__OFADD__(v20, v38))
    {
      return v20 + v38 > 9;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

id TTRAccountsListsViewModel.remList(for:)(uint64_t a1)
{
  sub_21DA1CE20(*(a1 + 48), &v3);
  result = v3;
  if (v4 != 1 && v4 != 4)
  {
    if (v4 != 255)
    {
      sub_21D103A34(v3, v4);
    }

    return 0;
  }

  return result;
}

{
  TTRAccountsListsViewModel.listOrCustomSmartList(for:)(a1, &v2);
  if (v3 != 255)
  {
    result = v2;
    if ((v3 & 1) == 0)
    {
      return result;
    }

    sub_21D157864(v2, v3);
  }

  return 0;
}

{
  v2 = *a1;
  v3 = *(a1 + 146);
  if (v3 != 2 && (v3 & 1) != 0)
  {
    MEMORY[0x28223BE20](v2);
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90);
    sub_21D0D0F1C(&qword_280D0C3F0, &qword_27CE61C90);
    sub_21DBFA48C();

    if (v7 != 255)
    {
      result = v6;
      if ((v7 & 1) == 0)
      {
        return result;
      }

      sub_21D157864(v6, v7);
    }

    return 0;
  }

  sub_21DA1CE20(v2, &v6);
  result = v6;
  if (v7 != 1 && v7 != 4)
  {
    if (v7 != 255)
    {
      sub_21D103A34(v6, v7);
    }

    return 0;
  }

  return result;
}

uint64_t TTRAccountsListsViewModel.allowedInsertionIndicesInAccount(_:)(void *a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v30 = a1;
  v22 = a1;
  v24 = &v30 - v23;
  v25 = [v22 uuid];
  sub_21DBF568C();

  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v13, v24);
  sub_21D101450(v13, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  result = sub_21D0E8DA0(v24);
  v33 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_21D0D3954(v24, v19, &qword_27CE5A490);

    v27 = [v30 uuid];
    sub_21DBF568C();

    swift_storeEnumTagMultiPayload();
    sub_21D1083C8(v13, v16);
    sub_21D101450(v13, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    if ((*(v31 + 48))(v16, 1, v32) == 1)
    {

      sub_21D0CF7E0(v19, &qword_27CE5A490);
      sub_21D0CF7E0(v24, &qword_27CE5A490);
      sub_21D0CF7E0(v16, &qword_27CE5A490);
    }

    else
    {
      sub_21D100E28(v16, v7, type metadata accessor for TTRAccountsListsViewModel.Item);
      v28 = v33;
      while (v28)
      {
        sub_21D107A34(--v28, v19, v4);
        TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v13);
        TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v10);
        v29 = _s15RemindersUICore25TTRAccountsListsViewModelC14ItemIdentifierO2eeoiySbAE_AEtFZ_0(v13, v10);
        sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
        sub_21D101450(v13, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
        sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.Item);
        if (v29)
        {

          sub_21D0CF7E0(v19, &qword_27CE5A490);
          sub_21D0CF7E0(v24, &qword_27CE5A490);
          sub_21D101450(v7, type metadata accessor for TTRAccountsListsViewModel.Item);
          v33 = v28;
          return 0;
        }
      }

      sub_21D0CF7E0(v19, &qword_27CE5A490);
      sub_21D0CF7E0(v24, &qword_27CE5A490);
      sub_21D101450(v7, type metadata accessor for TTRAccountsListsViewModel.Item);
    }

    return 0;
  }

  return result;
}

double TTRAccountsListsViewModel.Item.group.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0FE734(v2, v6, type metadata accessor for TTRAccountsListsViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v7 = v6[1];
    *a1 = *v6;
    a1[1] = v7;
    v8 = v6[2];
    v9 = v6[3];
    a1[2] = v8;
    a1[3] = v9;
  }

  else
  {
    sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.Item);
    *&v8 = 0;
    *a1 = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
  }

  return *&v8;
}

id TTRAccountsListsViewModel.remSmartList(for:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 146);
  if (v3 == 2 || (v3 & 1) == 0)
  {
    sub_21DA1CE20(v2, &v5);
    result = v5;
    if (v6 == 2)
    {
      return result;
    }

    if (v6 != 255)
    {
      sub_21D103A34(v5, v6);
    }
  }

  else
  {
    MEMORY[0x28223BE20](v2);
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90);
    sub_21D0D0F1C(&qword_280D0C3F0, &qword_27CE61C90);
    sub_21DBFA48C();

    if (v6 != 255)
    {
      result = v5;
      if (v6)
      {
        return result;
      }

      sub_21D157864(v5, v6);
    }
  }

  return 0;
}

uint64_t sub_21DA11918(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_21D0FE734(a1, &v10 - v5, type metadata accessor for TTRAccountsListsViewModel.Item);
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = a2(v6);
  sub_21D0CF7E0(v6, &qword_27CE5A490);
  return v8;
}

uint64_t sub_21DA11A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v93 = a5;
  v94 = a6;
  v91 = a3;
  v92 = a4;
  v100 = a1;
  v101 = a2;
  v68 = a9;
  v11 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v90 = &v68 - v16;
  v102 = sub_21DBF810C();
  v17 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE599F8);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v78 = &v68 - v20;
  v73 = sub_21DBF5F4C();
  v98 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v68 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_21DC09CF0;
  v99 = v12;
  v27 = v12;
  v28 = v22;
  v29 = *(v27 + 56);
  v89 = v11;
  v86 = v29;
  v87 = v27 + 56;
  v29(v25, 1, 1, v11);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64CC8);
  v30 = swift_allocObject();
  v31 = v30 + *(*v30 + 88);
  v88 = v25;
  v32 = v26;
  sub_21D0D523C(v25, v31, &qword_27CE5A490);
  v33 = v101;
  *(v30 + *(*v30 + 96)) = v100;
  *(v30 + *(*v30 + 104)) = v33;
  *(v26 + 32) = v30;
  v105 = v26;
  v96 = v17 + 16;
  v71 = v17;
  v95 = (v17 + 8);
  v72 = (v98 + 8);
  sub_21DBF8E0C();
  result = sub_21DBF8E0C();
  v35 = 0;
  v79 = MEMORY[0x277D84F90];
  v77 = xmmword_21DC241F0;
  v76 = xmmword_21DC364B0;
  v75 = a8;
  v74 = a7;
  v83 = v28;
  while (1)
  {
    v82 = v35;
    if ((v32 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x223D44740](v35, v32);
    }

    else
    {
      if (v35 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }
    }

    v37 = *(v36 + *(*v36 + 96));
    v38 = *(*v36 + 104);
    v84 = v36;
    v100 = *(v36 + v38);
    v101 = v37;
    v103 = v100;
    v104 = v37;
    if (a7)
    {
      v39 = swift_allocObject();
      *(v39 + 16) = a7;
      *(v39 + 24) = a8;
      v40 = sub_21DA31088;
    }

    else
    {
      v40 = sub_21DA263EC;
      v39 = 0;
    }

    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *(v41 + 24) = v39;
    v42 = v101;
    sub_21DBF8E0C();
    v43 = v100;
    sub_21DBF8E0C();
    sub_21D0D0E78(a7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C60);
    sub_21D0D0F1C(&qword_280D178E0, &qword_27CE61C60);
    sub_21DBFAC4C();

    v44 = swift_allocObject();
    v45 = v76;
    *(v44 + 16) = v77;
    *(v44 + 32) = v45;
    v103 = v43;
    v104 = v42;
    v81 = v44;
    v46 = sub_21DBF5F2C();
    if (*(v46 + 16))
    {
      v47 = v78;
      sub_21D0D3954(v84 + *(*v84 + 88), v78, &qword_27CE5A490);
      *(v47 + *(v70 + 28)) = v46;
      v48 = v79;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v90;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v48 = sub_21D215210(0, v48[2] + 1, 1, v48);
      }

      v52 = v48[2];
      v51 = v48[3];
      if (v52 >= v51 >> 1)
      {
        v48 = sub_21D215210(v51 > 1, v52 + 1, 1, v48);
      }

      v48[2] = v52 + 1;
      v53 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v79 = v48;
      sub_21D0D523C(v78, v48 + v53 + *(v69 + 72) * v52, &qword_27CE599F8);
    }

    else
    {

      v50 = v90;
    }

    v54 = sub_21DBF5F1C();
    v55 = *(v54 + 16);
    v80 = v54;
    if (v55)
    {
      break;
    }

LABEL_28:
    (*v72)(v83, v73);

    if (v32 >> 62)
    {
      result = sub_21DBFBD7C();
    }

    else
    {
      result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a8 = v75;
    a7 = v74;
    v35 = v82 + 1;
    if ((v82 + 1) >= result)
    {

      *v68 = v79;
      return result;
    }
  }

  v56 = v54 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
  v57 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v98 = v101 + v57;
  v97 = v100 + v57;
  v58 = *(v71 + 72);
  v59 = *(v71 + 16);
  v59(v19, v56, v102);
  while (1)
  {
    result = sub_21DBF80FC();
    if (result < 0)
    {
      break;
    }

    if (result >= *(v101 + 16))
    {
      goto LABEL_35;
    }

    v60 = *(v99 + 72);
    sub_21D0FE734(v98 + v60 * result, v50, type metadata accessor for TTRAccountsListsViewModel.Item);
    v61 = sub_21DBF80EC();
    result = (*v95)(v19, v102);
    if ((v61 & 0x8000000000000000) != 0)
    {
      goto LABEL_36;
    }

    if (v61 >= *(v100 + 16))
    {
      goto LABEL_37;
    }

    sub_21D0FE734(v97 + v61 * v60, v14, type metadata accessor for TTRAccountsListsViewModel.Item);
    v62 = v91(v50);
    v63 = v93(v14);
    if (*(v62 + 16) | *(v63 + 16))
    {
      v64 = v63;
      v65 = v88;
      sub_21D0FE734(v14, v88, type metadata accessor for TTRAccountsListsViewModel.Item);
      v86(v65, 0, 1, v89);
      v66 = swift_allocObject();
      sub_21D0D523C(v65, v66 + *(*v66 + 88), &qword_27CE5A490);
      *(v66 + *(*v66 + 96)) = v62;
      *(v66 + *(*v66 + 104)) = v64;

      MEMORY[0x223D42D80](v67);
      if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();

      sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
      v50 = v90;
      sub_21D101450(v90, type metadata accessor for TTRAccountsListsViewModel.Item);
      v32 = v105;
    }

    else
    {

      sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D101450(v50, type metadata accessor for TTRAccountsListsViewModel.Item);
    }

    v56 += v58;
    if (!--v55)
    {
      goto LABEL_28;
    }

    v59(v19, v56, v102);
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_21DA1256C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v27 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[1];
  v11 = v10[2];
  if (!v11)
  {
LABEL_9:
    v17 = *(v27 + 56);

    return v17(a1, 1, 1, v6, v7);
  }

  while (1)
  {
    v12 = &v10[2 * v11];
    v14 = v12[2];
    v13 = v12[3];
    v15 = *(v14 + 16);
    if (v13 != v15)
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v10[2];
      if (!v16)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = sub_21D256E48(v10);
      v16 = v10[2];
      if (!v16)
      {
LABEL_8:
        __break(1u);
        goto LABEL_9;
      }
    }

    v10[2] = v16 - 1;

    v1[1] = v10;
    v11 = v10[2];
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < v15)
  {
    sub_21D0FE734(v14 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v13, v9, type metadata accessor for TTRAccountsListsViewModel.Item);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

  __break(1u);
LABEL_24:
  result = sub_21D256E48(v10);
  v10 = result;
LABEL_15:
  if (v11 > v10[2])
  {
    __break(1u);
    goto LABEL_26;
  }

  v19 = &v10[2 * v11 - 2];
  v21 = v19[5];
  v20 = v19 + 5;
  v22 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *v20 = v22;
  v1[1] = v10;
  sub_21D0FE734(v9, v5, type metadata accessor for TTRAccountsListsViewModel.Item);
  v23 = *(v27 + 56);
  v27 += 56;
  v23(v5, 0, 1, v6);
  v28 = *v1;
  result = sub_21D0E8DA0(v5);
  if (result < 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  MEMORY[0x28223BE20](result);
  *(&v26 - 2) = &v28;
  *(&v26 - 1) = v5;
  v25 = sub_21D174668(sub_21DA312A8, (&v26 - 4), 0, v24);
  sub_21D0CF7E0(v5, &qword_27CE5A490);
  if (*(v25 + 16))
  {
    sub_21DA0F490(v25, 0);
  }

  else
  {
  }

  sub_21D100E28(v9, a1, type metadata accessor for TTRAccountsListsViewModel.Item);
  return (v23)(a1, 0, 1, v6);
}

id TTRAccountsListsViewModel.remCustomSmartList(for:)(uint64_t a1)
{
  TTRAccountsListsViewModel.listOrCustomSmartList(for:)(a1, &v2);
  if (v3 != 255)
  {
    result = v2;
    if (v3)
    {
      return result;
    }

    sub_21D157864(v2, v3);
  }

  return 0;
}

id TTRAccountsListsViewModel.remAccount(for:)(void *a1)
{
  sub_21DA1CE20(a1, &v2);
  if (v3 != 255)
  {
    result = v2;
    if (!v3)
    {
      return result;
    }

    sub_21D103A34(v2, v3);
  }

  return 0;
}

char *TTRAccountsListsViewModel.lists(in:)(uint64_t a1)
{
  result = sub_21DA1A714(*(a1 + 48));
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

{
  result = sub_21DA1A714(*(a1 + 16));
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t TTRAccountsListsViewModel.pinnedLists(in:)(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v33 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (v31 - v6);
  MEMORY[0x28223BE20](v8);
  v10 = v31 - v9;
  v32 = *(a1 + 48);
  result = TTRAccountsListsViewModel.visiblePinnedLists.getter();
  v12 = result;
  v13 = *(result + 16);
  if (v13)
  {
    v14 = 0;
    v34 = MEMORY[0x277D84F90];
    v31[1] = v2;
    v35 = v13;
    while (1)
    {
      if (v14 >= *(v12 + 16))
      {
        __break(1u);
        return result;
      }

      v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v16 = *(v3 + 72);
      sub_21D0FE734(v12 + v15 + v16 * v14, v10, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      sub_21D0FE734(v10, v7, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v17 = v7[11];
        v36[10] = v7[10];
        v36[11] = v17;
        *v37 = v7[12];
        *&v37[10] = *(v7 + 202);
        v18 = v7[7];
        v36[6] = v7[6];
        v36[7] = v18;
        v19 = v7[9];
        v36[8] = v7[8];
        v36[9] = v19;
        v20 = v7[3];
        v36[2] = v7[2];
        v36[3] = v20;
        v21 = v7[5];
        v36[4] = v7[4];
        v36[5] = v21;
        v22 = v7[1];
        v36[0] = *v7;
        v36[1] = v22;
        v23 = *v37;
        if (*v37)
        {
          sub_21D0D8CF0(0, &qword_280D17880);
          v24 = v32;
          v25 = v23;
          v26 = sub_21DBFB63C();
          sub_21D1077D8(v36);

          if (v26)
          {
            sub_21D100E28(v10, v33, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
            v27 = v34;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v38 = v27;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21D18F6B0(0, *(v27 + 16) + 1, 1);
              v27 = v38;
            }

            v30 = *(v27 + 16);
            v29 = *(v27 + 24);
            if (v30 >= v29 >> 1)
            {
              sub_21D18F6B0(v29 > 1, v30 + 1, 1);
              v27 = v38;
            }

            *(v27 + 16) = v30 + 1;
            v34 = v27;
            result = sub_21D100E28(v33, v27 + v15 + v30 * v16, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
            v13 = v35;
            goto LABEL_5;
          }
        }

        else
        {
          sub_21D1077D8(v36);
        }

        v13 = v35;
      }

      else
      {
        sub_21D101450(v7, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      }

      result = sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
LABEL_5:
      if (v13 == ++v14)
      {
        goto LABEL_18;
      }
    }
  }

  v34 = MEMORY[0x277D84F90];
LABEL_18:

  return v34;
}

uint64_t sub_21DA12F98()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F4D8);
  v1 = __swift_project_value_buffer(v0, qword_280D0F4D8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRAccountsListsViewModel.PinnedList.longTitle.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v2);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  MEMORY[0x28223BE20](v5);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0FE734(v1, v7, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = v7[11];
    v16[10] = v7[10];
    v16[11] = v8;
    v17[0] = v7[12];
    *(v17 + 10) = *(v7 + 202);
    v9 = v7[7];
    v16[6] = v7[6];
    v16[7] = v9;
    v10 = v7[9];
    v16[8] = v7[8];
    v16[9] = v10;
    v11 = v7[3];
    v16[2] = v7[2];
    v16[3] = v11;
    v12 = v7[5];
    v16[4] = v7[4];
    v16[5] = v12;
    v13 = v7[1];
    v16[0] = *v7;
    v16[1] = v13;
    v14 = *(&v16[0] + 1);
    sub_21DBF8E0C();
    sub_21D1077D8(v16);
  }

  else
  {
    sub_21D100E28(v7, v4, type metadata accessor for TTRAccountsListsViewModel.SmartList);
    LOBYTE(v16[0]) = v4[*(v2 + 20)];
    v14 = TTRListType.PredefinedSmartListType.longTitle.getter();
    sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.SmartList);
  }

  return v14;
}

uint64_t TTRListType.PredefinedSmartListType.longTitle.getter()
{
  v1 = **(&unk_27832F608 + *v0);
  v2 = REMSmartListType.longTitle.getter();
  v4 = v3;

  if (v4)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t TTRAccountsListsViewModel.SmartList.visibility.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

BOOL TTRAccountsListsViewModel.SmartList.shouldBeVisible.getter()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  v2 = *(v0 + *(v1 + 36));
  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    return 0;
  }

  return *(v0 + *(v1 + 24)) > 0;
}

uint64_t TTRAccountsListsViewModel.SmartList.init(id:type:count:overdueCount:visibility:dynamicGlyph:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v11 = *a5;
  v12 = a6[1];
  v25 = *a6;
  v13 = sub_21DBF56BC();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a7, a1, v13);
  v15 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  *(a7 + v15[5]) = v10;
  *(a7 + v15[6]) = a3;
  v16 = objc_opt_self();
  v17 = sub_21DBFABEC();
  v18 = [v16 localizedStringFromNumber:v17 numberStyle:1];

  v19 = sub_21DBFA16C();
  v21 = v20;

  result = (*(v14 + 8))(a1, v13);
  v23 = (a7 + v15[7]);
  *v23 = v19;
  v23[1] = v21;
  *(a7 + v15[8]) = a4;
  *(a7 + v15[9]) = v11;
  v24 = (a7 + v15[10]);
  *v24 = v25;
  v24[1] = v12;
  return result;
}

BOOL static TTRAccountsListsViewModel.List.PinState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

BOOL sub_21DA135A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

void *TTRAccountsListsViewModel.List.groupID.getter()
{
  v1 = *(v0 + 192);
  v2 = v1;
  return v1;
}

uint64_t TTRAccountsListsViewModel.List.groupName.getter()
{
  v1 = *(v0 + 200);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRAccountsListsViewModel.Group.name.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRAccountsListsViewModel.Group.countText.getter()
{
  v1 = *(v0 + 24);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRAccountsListsViewModel.Tip.name.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRAccountsListsViewModel.HashtagsSection.title.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t TTRAccountsListsViewModel.HashtagFilterOperation.Option.localizedOptionString.getter()
{
  if (*v0)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t TTRAccountsListsViewModel.HashtagFilterOperation.Option.shortLocalizedOptionString.getter()
{
  if (*v0)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

RemindersUICore::TTRAccountsListsViewModel::HashtagFilterOperation::Option_optional __swiftcall TTRAccountsListsViewModel.HashtagFilterOperation.Option.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t TTRAccountsListsViewModel.HashtagFilterOperation.selectedItem.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t TTRAccountsListsViewModel.HashtagFilterOperation.selectedItem.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

void TTRAccountsListsViewModel.HashtagFilterOperation.Option.init(selection:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_21DBF6C1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = *(v5 + 16);
  v12(&v23 - v10, a1, v4, v9);
  v13 = (*(v5 + 88))(v11, v4);
  if (v13 == *MEMORY[0x277D45378])
  {
    (v12)(v7, v11, v4);
    (*(v5 + 96))(v7, v4);

    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE50) + 64);
    v15 = sub_21DBF6C0C();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 88))(&v7[v14], v15);
    if (v17 == *MEMORY[0x277D45388])
    {
      v18 = 0;
LABEL_11:
      v20 = *(v5 + 8);
      v20(a1, v4);
      v20(v11, v4);
      *a2 = v18;
      return;
    }

    if (v17 == *MEMORY[0x277D45390])
    {
LABEL_10:
      v18 = 1;
      goto LABEL_11;
    }

    (*(v16 + 8))(&v7[v14], v15);
  }

  else if (v13 == *MEMORY[0x277D45398] || v13 == *MEMORY[0x277D45380])
  {
    goto LABEL_10;
  }

  if (qword_280D0F4D0 != -1)
  {
    swift_once();
  }

  v21 = sub_21DBF84BC();
  __swift_project_value_buffer(v21, qword_280D0F4D8);
  v22 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v22);
  sub_21DAEAB00("Unknown label specifier", 23, 2);
  __break(1u);
}

uint64_t _s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD0V2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF56BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21DA14074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void))
{
  if (_s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (v8 = a3(0), (a4(*(a1 + *(v8 + 20)), *(a2 + *(v8 + 20)))))
  {
    v9 = *(a1 + *(v8 + 24)) ^ *(a2 + *(v8 + 24)) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_21DA14110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (_s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (a5(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))))
  {
    v9 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t TTRAccountsListsViewModel.RecentlyDeletedList.countText.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRAccountsListsViewModel.RecentlyDeletedList.init(accountID:countText:count:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

BOOL static TTRAccountsListsViewModel.RecentlyDeletedList.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  sub_21D0D8CF0(0, &qword_280D17680);
  if (sub_21DBFB63C() & 1) != 0 && (v2 == v5 ? (v8 = v3 == v6) : (v8 = 0), v8 || (sub_21DBFC64C()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

BOOL sub_21DA1427C(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  sub_21D0D8CF0(0, &qword_280D17680);
  if (sub_21DBFB63C() & 1) != 0 && (v2 == v5 ? (v8 = v3 == v6) : (v8 = 0), v8 || (sub_21DBFC64C()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

RemindersUICore::TTRAccountsListsViewModel::ItemIdentifier::CodingKeys_optional __swiftcall TTRAccountsListsViewModel.ItemIdentifier.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v3 = v1;
  v4 = stringValue._countAndFlagsBits == 1684632949 && stringValue._object == 0xE400000000000000;
  if (v4 || (countAndFlagsBits = stringValue._countAndFlagsBits, (sub_21DBFC64C() & 1) != 0))
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0xD000000000000013 && 0x800000021DC73B60 == object || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x79786F7270 && object == 0xE500000000000000)
  {

    v7 = 2;
  }

  else
  {
    v8 = sub_21DBFC64C();

    if (v8)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t TTRAccountsListsViewModel.ItemIdentifier.CodingKeys.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRAccountsListsViewModel.ItemIdentifier.CodingKeys.stringValue.getter()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x79786F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_21DA14554()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x79786F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_21DA145BC(uint64_t a1)
{
  v2 = sub_21DA2716C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DA145F8(uint64_t a1)
{
  v2 = sub_21DA2716C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTRAccountsListsViewModel.ItemIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  v5 = sub_21DBF56BC();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64BD8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v40 = v37 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64BE0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v37 - v17;
  v41 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v41);
  v42 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_21DA2716C();
  v21 = sub_21DBFC87C();
  if (v2)
  {
    v22 = v46;
    v23 = v48;
  }

  else
  {
    v38 = v16;
    v39 = v15;
    v37[0] = v9;
    v37[1] = v37;
    v47 = &unk_282EA8210;
    MEMORY[0x28223BE20](v21);
    v37[-2] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64BF0);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64BF8);
    sub_21D0D0F1C(&qword_27CE64C00, &qword_27CE64BF0);
    v25 = v40;
    v26 = v24;
    sub_21DBFA48C();
    v27 = v12;
    sub_21D0D3954(v25, v12, &qword_27CE64BD8);
    v28 = (*(*(v26 - 8) + 48))(v12, 1, v26);
    v29 = v39;
    if (v28 != 1)
    {
      sub_21D0CF7E0(v25, &qword_27CE64BD8);
      v33 = *(v26 + 48);
      v34 = v44;
      v35 = *(v43 + 32);
      v36 = v37[0];
      v35(v37[0], v27 + v33, v44);
      v31 = v42;
      v35(v42, v36, v34);
      swift_storeEnumTagMultiPayload();
      (*(v38 + 8))(v18, v29);
      v23 = v48;
      v22 = v46;
      goto LABEL_6;
    }

    sub_21D0CF7E0(v27, &qword_27CE64BD8);
    sub_21DA271DC();
    v3 = swift_allocError();
    swift_willThrow();
    sub_21D0CF7E0(v25, &qword_27CE64BD8);
    (*(v38 + 8))(v18, v29);
    v23 = v48;
    v22 = v46;
  }

  sub_21D0D32E4(v22, &v47);
  v30 = v45;
  sub_21DBF569C();

  v31 = v42;
  (*(v43 + 32))(v42, v30, v44);
  swift_storeEnumTagMultiPayload();
LABEL_6:
  sub_21D100E28(v31, v23, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_21DA14BD8@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_21DBF56BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v19 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64BE0);
  sub_21D0DCFD0(&qword_27CE65160, MEMORY[0x277CC95F0]);
  result = sub_21DBFC49C();
  if (!v2)
  {
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_21D0CF7E0(v7, &qword_27CE58370);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64BF8);
      return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
    }

    else
    {
      v15 = *(v9 + 32);
      v15(v11, v7, v8);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64BF8);
      v17 = *(v16 + 48);
      *a2 = v12;
      v15(&a2[v17], v11, v8);
      return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
    }
  }

  return result;
}

uint64_t TTRAccountsListsViewModel.ItemIdentifier.encode(to:)(void *a1)
{
  v27 = sub_21DBF56BC();
  v2 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v24[0] = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v24 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = v24 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C10);
  v25 = *(v13 - 8);
  v26 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v24 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DA2716C();
  sub_21DBFC88C();
  sub_21D0FE734(v24[1], v12, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = *(v2 + 32);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = v27;
      v17(v6, v12, v27);
      v29 = 1;
      sub_21D0DCFD0(&qword_27CE5B4B8, MEMORY[0x277CC95F0]);
      v19 = v26;
      sub_21DBFC56C();
      (*(v2 + 8))(v6, v18);
    }

    else
    {
      v21 = v24[0];
      v22 = v27;
      v17(v24[0], v12, v27);
      v30 = 2;
      sub_21D0DCFD0(&qword_27CE5B4B8, MEMORY[0x277CC95F0]);
      v19 = v26;
      sub_21DBFC56C();
      (*(v2 + 8))(v21, v22);
    }
  }

  else
  {
    v20 = v27;
    v17(v9, v12, v27);
    v28 = 0;
    sub_21D0DCFD0(&qword_27CE5B4B8, MEMORY[0x277CC95F0]);
    v19 = v26;
    sub_21DBFC56C();
    (*(v2 + 8))(v9, v20);
  }

  return (*(v25 + 8))(v15, v19);
}

uint64_t TTRAccountsListsViewModel.ItemIdentifier.hashValue.getter()
{
  sub_21DBFC7DC();
  TTRAccountsListsViewModel.ItemIdentifier.hash(into:)();
  return sub_21DBFC82C();
}

id TTRAccountsListsViewModel.AuxiliaryData.REMListOrSmartList.objectID.getter()
{
  v1 = [*v0 objectID];

  return v1;
}

id TTRAccountsListsViewModel.AuxiliaryData.Model.remAccount.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

id TTRAccountsListsViewModel.AuxiliaryData.Model.remList.getter()
{
  v1 = *(v0 + 8);
  if (v1 != 4 && v1 != 1)
  {
    return 0;
  }

  v3 = *v0;
  sub_21D0FF19C(*v0, v1);
  return v3;
}

id TTRAccountsListsViewModel.AuxiliaryData.Model.remSmartList.getter()
{
  if (*(v0 + 8) != 2)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

id TTRAccountsListsViewModel.AuxiliaryData.model.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_21D105AA4(v2, v3);
}

uint64_t TTRAccountsListsViewModel.AuxiliaryData.init(model:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t TTRAccountsListsViewModel.pinnedListsSectionItems.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes);
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes + 8) != 1)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = *v9;
  v11 = *(*v9 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v18 = MEMORY[0x277D84F90];
    sub_21D18F6F4(0, v11, 0);
    v12 = v18;
    v13 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v17 = *(v2 + 72);
    do
    {
      sub_21D0D3954(v13, v4, &qword_27CE58180);
      sub_21D0FE734(v4, v8, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D0CF7E0(v4, &qword_27CE58180);
      v18 = v12;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21D18F6F4(v14 > 1, v15 + 1, 1);
        v12 = v18;
      }

      *(v12 + 16) = v15 + 1;
      sub_21D100E28(v8, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, type metadata accessor for TTRAccountsListsViewModel.Item);
      v13 += v17;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t TTRAccountsListsViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_maximumItemCountInPinnedListsSection) = 9;
  v1 = MEMORY[0x277D84F90];
  v2 = sub_21D0DDA78(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C18);
  v3 = swift_allocObject();
  v11 = v1;
  v10 = MEMORY[0x277D84F98];
  sub_21D0DA894(v1, &v11, &v10);
  v4 = v10;
  v3[2] = v11;
  v3[3] = v4;
  v3[4] = v2;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree) = v3;
  *(v0 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_smartListDisplayability) = sub_21D0DDE70(v1);
  v5 = v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes;
  *v5 = v1;
  *(v5 + 8) = 0;
  v6 = OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsHeaderItem;
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v0 + v6, 1, 1, v7);
  v8(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsItem, 1, 1, v7);
  v8(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_permissionMainItem, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsItems) = v1;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_accountsCapabilities) = 0;
  return v0;
}

uint64_t TTRAccountsListsViewModel.__allocating_init(viewModel:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_21DA27C54(a1);

  return v2;
}

uint64_t TTRAccountsListsViewModel.init(viewModel:)(uint64_t a1)
{
  v1 = sub_21DA27C54(a1);

  return v1;
}

uint64_t TTRAccountsListsViewModel.__allocating_init(model:options:accountMigrationState:cloudKitNetworkActivity:smartListsDisplayOrder:smartListsVisibility:pinnedListsContactsData:currentHashtagSelection:isEditing:tip:permissionRequest:accountForUpgradeHint:)(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, void, void, void), void *a5, void *a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t *a12, __int128 *a13, void *a14)
{
  v19 = swift_allocObject();
  TTRAccountsListsViewModel.init(model:options:accountMigrationState:cloudKitNetworkActivity:smartListsDisplayOrder:smartListsVisibility:pinnedListsContactsData:currentHashtagSelection:isEditing:tip:permissionRequest:accountForUpgradeHint:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  return v19;
}

uint64_t *TTRAccountsListsViewModel.init(model:options:accountMigrationState:cloudKitNetworkActivity:smartListsDisplayOrder:smartListsVisibility:pinnedListsContactsData:currentHashtagSelection:isEditing:tip:permissionRequest:accountForUpgradeHint:)(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, void, void, void), void *a5, void *a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t *a12, __int128 *a13, void *a14)
{
  v15 = v14;
  v623 = a6;
  v622 = a5;
  v616 = a4;
  *&v615 = a3;
  v608 = a1;
  v601 = a11;
  v561 = *v15;
  v19 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v19 - 8);
  v539 = &v502 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v538 = &v502 - v22;
  v527 = type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0);
  MEMORY[0x28223BE20](v527);
  v551 = &v502 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F780);
  MEMORY[0x28223BE20](v24 - 8);
  v549 = &v502 - v25;
  v26 = sub_21DBF6C1C();
  v524 = *(v26 - 8);
  v525 = v26;
  MEMORY[0x28223BE20](v26);
  v509 = &v502 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v510 = &v502 - v29;
  MEMORY[0x28223BE20](v30);
  v535 = &v502 - v31;
  v529 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
  v526 = *(v529 - 8);
  MEMORY[0x28223BE20](v529);
  v552 = &v502 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v523 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
  MEMORY[0x28223BE20](v523);
  v550 = &v502 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v584 = sub_21DBF78CC();
  v598 = *(v584 - 8);
  MEMORY[0x28223BE20](v584);
  v547 = &v502 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v546 = &v502 - v36;
  MEMORY[0x28223BE20](v37);
  v596 = &v502 - v38;
  v39 = type metadata accessor for TTRAccountsListsViewModel.PinnedListsSection(0);
  MEMORY[0x28223BE20](v39 - 8);
  v508 = &v502 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v609 = sub_21DBF56BC();
  v588 = *(v609 - 8);
  MEMORY[0x28223BE20](v609);
  v537 = &v502 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v528 = &v502 - v43;
  MEMORY[0x28223BE20](v44);
  v591 = &v502 - v45;
  v595 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  v594 = *(v595 - 8);
  MEMORY[0x28223BE20](v595);
  v593 = (&v502 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v47);
  *&v606 = &v502 - v48;
  v590 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  v597 = *(v590 - 8);
  MEMORY[0x28223BE20](v590);
  v568 = &v502 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v589 = &v502 - v51;
  MEMORY[0x28223BE20](v52);
  v572 = &v502 - v53;
  v566 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C20);
  MEMORY[0x28223BE20](v566);
  v512 = &v502 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v507 = &v502 - v56;
  MEMORY[0x28223BE20](v57);
  v534 = &v502 - v58;
  MEMORY[0x28223BE20](v59);
  v540 = &v502 - v60;
  MEMORY[0x28223BE20](v61);
  v531 = &v502 - v62;
  v63 = type metadata accessor for TTRAccountsListsViewModel.TipSection(0);
  MEMORY[0x28223BE20](v63 - 8);
  v517 = &v502 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D180);
  v536 = *(v65 - 8);
  MEMORY[0x28223BE20](v65 - 8);
  v516 = (&v502 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v67);
  v570 = (&v502 - v68);
  v619 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v611 = *(v619 - 8);
  MEMORY[0x28223BE20](v619);
  v614 = &v502 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v548 = &v502 - v71;
  MEMORY[0x28223BE20](v72);
  v574 = &v502 - v73;
  MEMORY[0x28223BE20](v74);
  v567 = &v502 - v75;
  MEMORY[0x28223BE20](v76);
  v617 = (&v502 - v77);
  MEMORY[0x28223BE20](v78);
  v592 = &v502 - v79;
  MEMORY[0x28223BE20](v80);
  v522 = (&v502 - v81);
  MEMORY[0x28223BE20](v82);
  v579 = &v502 - v83;
  v84 = type metadata accessor for TTRAccountsListsViewModel.PermissionsSection(0);
  MEMORY[0x28223BE20](v84 - 8);
  v521 = &v502 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v578 = &v502 - v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v88 - 8);
  v582 = &v502 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90);
  v583 = &v502 - v91;
  MEMORY[0x28223BE20](v92);
  v560 = &v502 - v93;
  MEMORY[0x28223BE20](v94);
  v556 = &v502 - v95;
  MEMORY[0x28223BE20](v96);
  v604 = &v502 - v97;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D4C8);
  MEMORY[0x28223BE20](v98 - 8);
  v514 = &v502 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v100);
  v518 = &v502 - v101;
  MEMORY[0x28223BE20](v102);
  v506 = &v502 - v103;
  MEMORY[0x28223BE20](v104);
  v505 = &v502 - v105;
  MEMORY[0x28223BE20](v106);
  v532 = &v502 - v107;
  MEMORY[0x28223BE20](v108);
  v530 = &v502 - v109;
  v607 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180);
  v612 = *(v607 - 8);
  MEMORY[0x28223BE20](v607);
  v575 = &v502 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v111);
  v621 = &v502 - v112;
  MEMORY[0x28223BE20](v113);
  v545 = &v502 - v114;
  MEMORY[0x28223BE20](v115);
  v544 = &v502 - v116;
  MEMORY[0x28223BE20](v117);
  v610 = (&v502 - v118);
  MEMORY[0x28223BE20](v119);
  v511 = &v502 - v120;
  MEMORY[0x28223BE20](v121);
  v513 = &v502 - v122;
  MEMORY[0x28223BE20](v123);
  v605 = &v502 - v124;
  MEMORY[0x28223BE20](v125);
  v503 = &v502 - v126;
  MEMORY[0x28223BE20](v127);
  v533 = &v502 - v128;
  MEMORY[0x28223BE20](v129);
  v515 = &v502 - v130;
  MEMORY[0x28223BE20](v131);
  v571 = (&v502 - v132);
  MEMORY[0x28223BE20](v133);
  v519 = &v502 - v134;
  MEMORY[0x28223BE20](v135);
  v520 = &v502 - v136;
  MEMORY[0x28223BE20](v137);
  v569 = &v502 - v138;
  MEMORY[0x28223BE20](v139);
  v577 = &v502 - v140;
  MEMORY[0x28223BE20](v141);
  v563 = &v502 - v142;
  MEMORY[0x28223BE20](v143);
  v562 = &v502 - v144;
  v145 = sub_21DBF604C();
  v554 = *(v145 - 8);
  v555 = v145;
  MEMORY[0x28223BE20](v145);
  v553 = &v502 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
  v620 = sub_21DBF69AC();
  v618 = *(v620 - 1);
  MEMORY[0x28223BE20](v620);
  v603 = &v502 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v148);
  v150 = &v502 - v149;
  v151 = sub_21DBF680C();
  v541 = *(v151 - 8);
  v542 = v151;
  MEMORY[0x28223BE20](v151);
  v153 = &v502 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
  v586 = *a2;
  v154 = *a7;
  v558 = *a8;
  v559 = v154;
  v155 = a12[1];
  v504 = *a12;
  v564 = v155;
  v156 = a13[3];
  v648 = a13[2];
  v649 = v156;
  v650 = a13[4];
  v651 = *(a13 + 10);
  v157 = a13[1];
  v646 = *a13;
  v647 = v157;
  v602 = v15;
  *(v15 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_maximumItemCountInPinnedListsSection) = 9;
  v158 = *(sub_21DBF69CC() + 16);

  v600 = v153;
  sub_21DBF68FC();
  v645 = a14;
  if (v601)
  {
    v645 = 0;
  }

  else
  {
    v159 = a14;
  }

  v543 = a14;
  v160 = sub_21DBF69CC();
  MEMORY[0x28223BE20](v160);
  v161 = v600;
  *(&v502 - 8) = &v645;
  *(&v502 - 7) = v161;
  v162 = v616;
  *(&v502 - 6) = v615;
  *(&v502 - 5) = v162;
  v163 = v623;
  *(&v502 - 4) = v622;
  *(&v502 - 3) = v163;
  *(&v502 - 16) = v158 == 1;
  v585 = v601 & 1;
  *(&v502 - 15) = v601 & 1;
  v164 = sub_21D0F5358(sub_21DA27D9C, (&v502 - 10), v160);
  v573 = a10;
  v565 = a9;

  static TTRAccountsListsViewModel.generateAccountsCapabilities(_:)(&v631);
  v165 = &v502;
  v587 = OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_accountsCapabilities;
  *(v602 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_accountsCapabilities) = v631;
  MEMORY[0x28223BE20](v166);
  *(&v502 - 2) = v161;
  v622 = sub_21D0FDEBC(sub_21D0FE4B8, (&v502 - 4), v164);
  v557 = 0;

  v167 = sub_21DBF69CC();
  v168 = 0;
  v613 = *(v167 + 16);
  v616 = (v618 + 16);
  *&v615 = v618 + 8;
  v169 = v620;
  do
  {
    v170 = v168;
    if (v613 == v168)
    {
      break;
    }

    if (v168 >= *(v167 + 16))
    {
      goto LABEL_143;
    }

    v165 = v618;
    (*(v618 + 16))(v150, v167 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v168++, v169);
    v171 = sub_21DBF693C();
    v172 = [v171 capabilities];

    LODWORD(v171) = [v172 supportsGroceriesList];
    (*(v165 + 8))(v150, v169);
  }

  while (!v171);

  v173 = sub_21DBF69CC();
  v576 = *(v173 + 16);
  if (v576)
  {
    v174 = 0;
    v581 = v173 + ((*(v618 + 80) + 32) & ~*(v618 + 80));
    *&v580 = v173;
    do
    {
      if (v174 >= *(v173 + 16))
      {
        goto LABEL_145;
      }

      (*(v618 + 16))(v603, v581 + *(v618 + 72) * v174, v620);
      v175 = sub_21DBF697C();
      v176 = v175;
      v599 = v174;
      if (v175 >> 62)
      {
        v177 = sub_21DBFBD7C();
        if (v177)
        {
LABEL_14:
          v169 = 0;
          v623 = v176 & 0xC000000000000001;
          while (1)
          {
            if (v623)
            {
              v178 = MEMORY[0x223D44740](v169, v176);
            }

            else
            {
              if (v169 >= *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_142;
              }

              v178 = *(v176 + 8 * v169 + 32);
            }

            v179 = v178;
            v180 = v169 + 1;
            if (__OFADD__(v169, 1))
            {
              break;
            }

            v181 = [v178 groceryContext];
            if (v181)
            {
              v182 = v181;
              v165 = [v181 shouldCategorizeGroceryItems];

              if (v165)
              {
                (*v615)(v603, v620);

                v183 = 1;
                goto LABEL_28;
              }
            }

            else
            {
            }

            ++v169;
            if (v180 == v177)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }
      }

      else
      {
        v177 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v177)
        {
          goto LABEL_14;
        }
      }

LABEL_10:
      v174 = v599 + 1;

      (*v615)(v603, v620);
      v173 = v580;
    }

    while (v174 != v576);
  }

  v183 = 0;
LABEL_28:
  v185 = v553;
  v184 = v554;
  v186 = v555;
  (*(v554 + 104))(v553, *MEMORY[0x277D44DD0], v555);
  v187 = sub_21DBF603C();
  (*(v184 + 8))(v185, v186);
  v169 = MEMORY[0x277D84F90];
  if (v613 == v170)
  {
    v188 = v622;
    goto LABEL_36;
  }

  v188 = v622;
  if (v183)
  {
LABEL_36:
    v189 = v619;
    goto LABEL_37;
  }

  v189 = v619;
  if (v187)
  {
    v190 = v562;
    swift_storeEnumTagMultiPayload();
    v191 = v607;
    v192 = &v190[*(v607 + 52)];
    *v192 = 0;
    v192[8] = -1;
    *&v190[*(v191 + 56)] = v169;
    v193 = v563;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58798);
    v194 = (*(v612 + 80) + 32) & ~*(v612 + 80);
    v195 = swift_allocObject();
    *(v195 + 16) = xmmword_21DC08D00;
    sub_21D0D3954(v190, v195 + v194, &qword_27CE58180);
    v196 = v193 + *(v191 + 52);
    *v196 = 0;
    *(v196 + 8) = -1;
    v188 = v622;
    *(v193 + *(v191 + 56)) = v195;
    v197 = v530;
    sub_21D0D3954(v193, v530, &qword_27CE58180);
    v198 = v188[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v644 = v188;
    if (!isUniquelyReferenced_nonNull_native || v198 >= v188[3] >> 1)
    {
      v188 = sub_21D0FBE34(isUniquelyReferenced_nonNull_native, v198 + 1, 1, v188);
      v644 = v188;
    }

    sub_21D103AC8(0, 0, 1, v197);
    sub_21D0CF7E0(v563, &qword_27CE58180);
    sub_21D0CF7E0(v562, &qword_27CE58180);
    goto LABEL_36;
  }

LABEL_37:
  v616 = *(v611 + 7);
  v618 = v611 + 56;
  v616(v604, 1, 1, v189);
  v613 = v645;
  if (!v645)
  {
    goto LABEL_45;
  }

  v200 = v645;
  v201 = [v200 objectID];
  v202 = [v200 accountTypeHost];
  LOBYTE(v203) = [v202 isLocal];

  if (qword_27CE56F98 != -1)
  {
    goto LABEL_185;
  }

  while (1)
  {
    v204 = v609;
    v205 = __swift_project_value_buffer(v609, qword_27CE64B60);
    (*(v588 + 16))(v578, v205, v204);
    v620 = v201;
    static TTRPermissionConfiguration.updateRequest(accountID:isLocalAccount:)(v201, v203, &v625);
    v634 = v628;
    v633 = v627;
    v206 = v626;
    v631 = v625;
    v632 = v626;
    v635 = v629;
    *&v636 = v630;
    v207 = v626;
    v208 = v627;
    v209 = v628;
    v210 = v579;
    *(v579 + 56) = v625;
    v580 = v631;
    *v210 = v631;
    v599 = v207;
    *(v210 + 1) = v207;
    v581 = v208;
    *(v210 + 2) = v208;
    *&v615 = *(&v208 + 1);
    v603 = v209;
    *(v210 + 6) = v209;
    *(v210 + 72) = v206;
    v210[88] = 0;
    swift_storeEnumTagMultiPayload();
    v211 = v210;
    v212 = v577;
    sub_21D0FE734(v211, v577, type metadata accessor for TTRAccountsListsViewModel.Item);
    v213 = v607;
    v214 = v212 + *(v607 + 52);
    *v214 = 0;
    *(v214 + 8) = -1;
    *(v212 + *(v213 + 56)) = v169;
    v215 = v635;
    v216 = v636;
    v217 = 1;
    v622 = v188;
    v623 = v200;
    v576 = *(&v635 + 1);
    v562 = v636;
    v563 = *(&v634 + 1);
    v218 = v570;
    if (v635)
    {
      *v570 = *(&v634 + 1);
      *(v218 + 1) = v215;
      v218[3] = v216;
      *(v218 + 88) = 1;
      swift_storeEnumTagMultiPayload();
      v213 = v607;
      v217 = 0;
      v219 = v218 + *(v607 + 52);
      *v219 = 0;
      v219[8] = -1;
      *(v218 + *(v213 + 56)) = v169;
    }

    v220 = *(v612 + 56);
    v220(v218, v217, 1, v213);
    v221 = v569;
    sub_21D0FE734(v578, v569, type metadata accessor for TTRAccountsListsViewModel.PermissionsSection);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C28);
    v222 = *(v536 + 72);
    v223 = (*(v536 + 80) + 32) & ~*(v536 + 80);
    v224 = v218;
    v225 = swift_allocObject();
    *(v225 + 16) = xmmword_21DC08D20;
    v226 = v225 + v223;
    sub_21D0D3954(v577, v226, &qword_27CE58180);
    v220(v226, 0, 1, v213);
    sub_21D0D3954(v224, v226 + v222, &qword_27CE5D180);
    v624 = v225;
    v227 = v580;
    sub_21DBF8E0C();
    v228 = v227;
    sub_21DBF8E0C();
    sub_21D5D5D9C(v615, v603);
    sub_21D5D5DC4(v563, v215, v576, v562);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C30);
    sub_21D0D0F1C(&qword_27CE64C38, &qword_27CE64C30);
    v229 = sub_21DBFA41C();

    v230 = v604;
    sub_21D0CF7E0(v604, &qword_27CE5A490);
    v231 = v221 + *(v213 + 52);
    *v231 = 0;
    *(v231 + 8) = -1;
    *(v221 + *(v213 + 56)) = v229;
    sub_21D0FE734(v579, v230, type metadata accessor for TTRAccountsListsViewModel.Item);
    v189 = v619;
    v616(v230, 0, 1, v619);
    v232 = v532;
    sub_21D0D3954(v221, v532, &qword_27CE58180);
    v188 = v622;
    v233 = v622[2];
    v234 = swift_isUniquelyReferenced_nonNull_native();
    v644 = v188;
    if (!v234 || v233 >= v188[3] >> 1)
    {
      v188 = sub_21D0FBE34(v234, v233 + 1, 1, v188);
      v644 = v188;
    }

    v235 = v623;
    v236 = v620;
    sub_21D103AC8(0, 0, 1, v232);

    sub_21DA28E58(&v631);
    sub_21D0CF7E0(v569, &qword_27CE58180);
    sub_21D0CF7E0(v570, &qword_27CE5D180);
    sub_21D0CF7E0(v577, &qword_27CE58180);
    sub_21D101450(v579, type metadata accessor for TTRAccountsListsViewModel.Item);
    sub_21D101450(v578, type metadata accessor for TTRAccountsListsViewModel.PermissionsSection);
LABEL_45:
    v237 = v556;
    sub_21D0D3954(v604, v556, &qword_27CE5A490);
    v238 = *(v611 + 6);
    v239 = v238(v237, 1, v189);
    v240 = v571;
    if (v239 != 1)
    {
      sub_21D0CF7E0(&v646, &qword_27CE64C40);
      v241 = &qword_27CE5A490;
      v242 = v237;
      goto LABEL_49;
    }

    sub_21D0CF7E0(v237, &qword_27CE5A490);
    if (v601)
    {
      v241 = &qword_27CE64C40;
      v242 = &v646;
LABEL_49:
      sub_21D0CF7E0(v242, v241);
      goto LABEL_50;
    }

    v245 = v647;
    if (v647)
    {
      v622 = v188;
      v581 = *(&v646 + 1);
      v246 = v646;
      v577 = *(&v647 + 1);
      v247 = *(&v648 + 1);
      v623 = v648;
      v599 = *(&v649 + 1);
      v248 = v649;
      *&v615 = *(&v650 + 1);
      v620 = v650;
      v603 = v651;
      if (qword_27CE56F98 != -1)
      {
        swift_once();
      }

      v249 = v609;
      v250 = __swift_project_value_buffer(v609, qword_27CE64B60);
      (*(v588 + 16))(v521, v250, v249);
      v251 = v522;
      v252 = v246;
      v253 = v581;
      *v522 = v246;
      v251[1] = v253;
      v581 = v245;
      v254 = v577;
      v251[2] = v245;
      v251[3] = v254;
      v251[4] = v623;
      v251[5] = v247;
      v251[6] = v248;
      v255 = v632;
      *(v251 + 7) = v631;
      *(v251 + 9) = v255;
      *(v251 + 88) = 0;
      swift_storeEnumTagMultiPayload();
      v256 = v251;
      v257 = v520;
      sub_21D0FE734(v256, v520, type metadata accessor for TTRAccountsListsViewModel.Item);
      v258 = v607;
      v259 = v257 + *(v607 + 52);
      *v259 = 0;
      *(v259 + 8) = -1;
      v260 = MEMORY[0x277D84F90];
      *(v257 + *(v258 + 56)) = MEMORY[0x277D84F90];
      v261 = 1;
      v262 = v620;
      *&v580 = v247;
      v579 = v248;
      v578 = v252;
      v263 = v516;
      if (v620)
      {
        *v516 = v599;
        v263[1] = v262;
        v264 = v603;
        v263[2] = v615;
        v263[3] = v264;
        *(v263 + 88) = 1;
        swift_storeEnumTagMultiPayload();
        v258 = v607;
        v261 = 0;
        v265 = v263 + *(v607 + 52);
        *v265 = 0;
        v265[8] = -1;
        *(v263 + *(v258 + 56)) = v260;
      }

      v349 = *(v612 + 56);
      v349(v263, v261, 1, v258);
      sub_21D0FE734(v521, v519, type metadata accessor for TTRAccountsListsViewModel.PermissionsSection);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C28);
      v350 = *(v536 + 72);
      v351 = v263;
      v352 = (*(v536 + 80) + 32) & ~*(v536 + 80);
      v353 = swift_allocObject();
      *(v353 + 16) = xmmword_21DC08D20;
      v354 = v353 + v352;
      sub_21D0D3954(v520, v354, &qword_27CE58180);
      v349(v354, 0, 1, v258);
      sub_21D0D3954(v351, v354 + v350, &qword_27CE5D180);
      *&v625 = v353;
      sub_21DBF8E0C();
      v355 = v578;
      sub_21DBF8E0C();
      sub_21D5D5D9C(v580, v579);
      sub_21D5D5DC4(v599, v620, v615, v603);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C30);
      sub_21D0D0F1C(&qword_27CE64C38, &qword_27CE64C30);
      v356 = sub_21DBFA41C();
      v357 = v619;

      v358 = v604;
      sub_21D0CF7E0(v604, &qword_27CE5A490);
      v359 = v519;
      v360 = v519 + *(v258 + 52);
      *v360 = 0;
      *(v360 + 8) = -1;
      v361 = *(v258 + 56);
      v189 = v357;
      *(v359 + v361) = v356;
      v362 = v359;
      sub_21D0FE734(v522, v358, type metadata accessor for TTRAccountsListsViewModel.Item);
      v616(v358, 0, 1, v357);
      v363 = v505;
      sub_21D0D3954(v362, v505, &qword_27CE58180);
      v188 = v622;
      v364 = v622[2];
      v365 = swift_isUniquelyReferenced_nonNull_native();
      v644 = v188;
      if (!v365 || v364 >= v188[3] >> 1)
      {
        v188 = sub_21D0FBE34(v365, v364 + 1, 1, v188);
        v644 = v188;
      }

      sub_21D103AC8(0, 0, 1, v363);
      sub_21D0CF7E0(&v646, &qword_27CE64C40);
      sub_21D0CF7E0(v519, &qword_27CE58180);
      sub_21D0CF7E0(v516, &qword_27CE5D180);
      sub_21D0CF7E0(v520, &qword_27CE58180);
      sub_21D101450(v522, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D101450(v521, type metadata accessor for TTRAccountsListsViewModel.PermissionsSection);
      v240 = v571;
    }

LABEL_50:
    v622 = v188;
    v243 = v560;
    sub_21D0D3954(v604, v560, &qword_27CE5A490);
    if (v238(v243, 1, v189) == 1)
    {
      sub_21D0CF7E0(v243, &qword_27CE5A490);
      v244 = v567;
      if (v601)
      {
      }

      else
      {
        v266 = v609;
        v267 = v564;
        if (v564)
        {
          *v240 = v504;
          v240[1] = v267;
          swift_storeEnumTagMultiPayload();
          v268 = v607;
          v269 = v240 + *(v607 + 52);
          *v269 = 0;
          v269[8] = -1;
          *(v240 + *(v268 + 56)) = MEMORY[0x277D84F90];
          if (qword_27CE56FA0 != -1)
          {
            swift_once();
          }

          v270 = __swift_project_value_buffer(v266, qword_27CE64B78);
          v271 = v517;
          (*(v588 + 16))(v517, v270, v266);
          v272 = v515;
          sub_21D0FE734(v271, v515, type metadata accessor for TTRAccountsListsViewModel.TipSection);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58798);
          v273 = (*(v612 + 80) + 32) & ~*(v612 + 80);
          v274 = swift_allocObject();
          *(v274 + 16) = xmmword_21DC08D00;
          sub_21D0D3954(v240, v274 + v273, &qword_27CE58180);
          v275 = v272 + *(v268 + 52);
          *v275 = 0;
          *(v275 + 8) = -1;
          *(v272 + *(v268 + 56)) = v274;
          v276 = v272;
          v277 = v506;
          sub_21D0D3954(v276, v506, &qword_27CE58180);
          v278 = v622;
          v279 = v622[2];
          v280 = swift_isUniquelyReferenced_nonNull_native();
          v644 = v278;
          if (!v280 || v279 >= v278[3] >> 1)
          {
            v622 = sub_21D0FBE34(v280, v279 + 1, 1, v278);
            v644 = v622;
          }

          sub_21D103AC8(0, 0, 1, v277);
          sub_21D0CF7E0(v515, &qword_27CE58180);
          sub_21D101450(v517, type metadata accessor for TTRAccountsListsViewModel.TipSection);
          sub_21D0CF7E0(v571, &qword_27CE58180);
        }
      }
    }

    else
    {

      sub_21D0CF7E0(v243, &qword_27CE5A490);
      v244 = v567;
    }

    v281 = v602;
    v282 = v587;
    v283 = *(v602 + v587);
    *&v631 = v559;
    v284 = TTRListType.PredefinedSmartListsDisplayOrder.orderingIncludingAllPossibleSmartLists.getter();
    MEMORY[0x28223BE20](v284);
    v285 = v600;
    *(&v502 - 6) = v561;
    *(&v502 - 5) = v285;
    v286 = v558;
    *(&v502 - 4) = v283;
    *(&v502 - 3) = v286;
    *(&v502 - 16) = v585;
    v623 = sub_21D0FF9B8(sub_21D0FFCD4, (&v502 - 8), v284);

    v287 = *(v281 + v282);
    v288 = sub_21D0DDE70(MEMORY[0x277D84F90]);
    MEMORY[0x28223BE20](v288);
    *(&v502 - 2) = v287;
    *(&v502 - 1) = v285;
    v289 = v285;
    *(v281 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_smartListDisplayability) = sub_21D1015B4(v290, sub_21D101634, (&v502 - 4), byte_282EA6970);
    if ((v586 & 2) != 0)
    {
      v291 = v610;
      v169 = v619;
      v292 = v566;
      if ((v586 & 4) == 0)
      {
        v305 = v623;
        if (v601)
        {

          v306 = sub_21DBF691C();
          *&v631 = *(v602 + v587);
          _s15RemindersUICore25TTRAccountsListsViewModelC022generateEditablePinnedD007orderediD012capabilities022visiblePredefinedSmartD014reminderCountsSayAA23TTRTreeStorageNodeValueVyAC4ItemOAC13AuxiliaryDataVGGSay19ReminderKitInternal015REMAccountsListwE0C0F0V0I4ListOG_AC20AccountsCapabilitiesVSayAC0N4ListVGAS0xP0VtFZ_0(v306, &v631, v305, v600);
          v308 = v307;

          v309 = v609;
          v310 = v622;
          v311 = v508;
        }

        else
        {
          v330 = *(v566 + 48);
          v331 = sub_21DBF691C();
          *&v631 = *(v602 + v587);
          v332 = v507;
          static TTRAccountsListsViewModel.generatePinnedLists(orderedPinnedLists:visiblePredefinedSmartLists:capabilities:pinnedListsContactsData:reminderCounts:includesNonEditablePredefinedSmartList:)(v507, (v507 + v330), v331, v305, &v631, v565, v600, 0);

          v333 = v540;
          sub_21D0D3954(v332, v540, &qword_27CE64C20);
          sub_21D103A34(*(v333 + *(v292 + 48)), *(v333 + *(v292 + 48) + 8));
          v334 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
          v335 = *(v333 + *(v334 + 20));
          sub_21DBF8E0C();
          sub_21D101450(v333, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
          v336 = *(v335 + 16);

          if (v336)
          {
            sub_21D0D3954(v332, v333, &qword_27CE64C20);
            sub_21D103A34(*(v333 + *(v292 + 48)), *(v333 + *(v292 + 48) + 8));
            v337 = v503;
            sub_21D100E28(v333, v503, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
            swift_storeEnumTagMultiPayload();
            v338 = v534;
            sub_21D0D3954(v332, v534, &qword_27CE64C20);
            v339 = v338 + *(v292 + 48);
            v340 = *v339;
            LOBYTE(v339) = *(v339 + 8);
            v341 = v607;
            v342 = v337 + *(v607 + 52);
            *v342 = v340;
            *(v342 + 8) = v339;
            v343 = MEMORY[0x277D84F90];
            *(v337 + *(v341 + 56)) = MEMORY[0x277D84F90];
            sub_21D101450(v338, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
            v344 = sub_21D0FBE34(0, 1, 1, v343);
            v346 = v344[2];
            v345 = v344[3];
            v620 = v344;
            v347 = v572;
            if (v346 >= v345 >> 1)
            {
              v620 = sub_21D0FBE34(v345 > 1, v346 + 1, 1, v620);
            }

            v348 = v620;
            v620[2] = v346 + 1;
            sub_21D0D523C(v337, v348 + ((*(v612 + 80) + 32) & ~*(v612 + 80)) + *(v612 + 72) * v346, &qword_27CE58180);
          }

          else
          {
            v620 = MEMORY[0x277D84F90];
            v347 = v572;
          }

          v366 = v305[2];
          v367 = MEMORY[0x277D84F90];
          if (v366)
          {
            v165 = 0;
            while (v165 < v305[2])
            {
              v368 = (*(v597 + 80) + 32) & ~*(v597 + 80);
              v369 = *(v597 + 72);
              sub_21D0FE734(v305 + v368 + v369 * v165, v347, type metadata accessor for TTRAccountsListsViewModel.SmartList);
              if (*(v347 + *(v590 + 20)) == 5)
              {
                sub_21D100E28(v347, v589, type metadata accessor for TTRAccountsListsViewModel.SmartList);
                v370 = swift_isUniquelyReferenced_nonNull_native();
                *&v631 = v367;
                if ((v370 & 1) == 0)
                {
                  sub_21D18F738(0, *(v367 + 16) + 1, 1);
                  v367 = v631;
                }

                v372 = *(v367 + 16);
                v371 = *(v367 + 24);
                if (v372 >= v371 >> 1)
                {
                  sub_21D18F738(v371 > 1, v372 + 1, 1);
                  v367 = v631;
                }

                *(v367 + 16) = v372 + 1;
                sub_21D100E28(v589, v367 + v368 + v372 * v369, type metadata accessor for TTRAccountsListsViewModel.SmartList);
                v169 = v619;
                v347 = v572;
              }

              else
              {
                sub_21D101450(v347, type metadata accessor for TTRAccountsListsViewModel.SmartList);
              }

              if (v366 == ++v165)
              {
                goto LABEL_99;
              }
            }

LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
            goto LABEL_146;
          }

LABEL_99:

          v373 = *(v367 + 16);
          if (v373)
          {
            v374 = v367 + ((*(v597 + 80) + 32) & ~*(v597 + 80));
            v623 = *(v597 + 72);
            v603 = (v588 + 16);
            v375 = (v588 + 32);
            v615 = xmmword_21DC08D00;
            v376 = v606;
            do
            {
              sub_21D0FE734(v374, v376, type metadata accessor for TTRAccountsListsViewModel.SmartList);
              swift_storeEnumTagMultiPayload();
              v377 = v593;
              sub_21D0FE734(v376, v593, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v378 = v377[11];
                v641 = v377[10];
                v642 = v378;
                v643[0] = v377[12];
                *(v643 + 10) = *(v377 + 202);
                v379 = v377[7];
                v637 = v377[6];
                v638 = v379;
                v380 = v377[9];
                v639 = v377[8];
                v640 = v380;
                v381 = v377[3];
                v633 = v377[2];
                v634 = v381;
                v382 = v377[5];
                v635 = v377[4];
                v636 = v382;
                v383 = v377[1];
                v631 = *v377;
                v632 = v383;
                v384 = [v631 uuid];
                v385 = v591;
                sub_21DBF568C();

                sub_21D1077D8(&v631);
                v386 = v609;
              }

              else
              {
                v387 = v377;
                v388 = v568;
                sub_21D100E28(v387, v568, type metadata accessor for TTRAccountsListsViewModel.SmartList);
                v385 = v591;
                v386 = v609;
                (*v603)(v591, v388, v609);
                sub_21D101450(v388, type metadata accessor for TTRAccountsListsViewModel.SmartList);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE587B0);
              v389 = (*(v594 + 80) + 32) & ~*(v594 + 80);
              v390 = swift_allocObject();
              *(v390 + 16) = v615;
              sub_21D0FE734(v606, v390 + v389, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
              v391 = v592;
              (*v375)(v592, v385, v386);
              *(v391 + *(v334 + 20)) = v390;
              *(v391 + *(v334 + 24)) = 0;
              swift_storeEnumTagMultiPayload();
              v392 = v607;
              v393 = v605;
              v394 = v605 + *(v607 + 52);
              *v394 = 0;
              *(v394 + 8) = -1;
              sub_21D100E28(v391, v393, type metadata accessor for TTRAccountsListsViewModel.Item);
              *(v393 + *(v392 + 56)) = MEMORY[0x277D84F90];
              v395 = v620;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v395 = sub_21D0FBE34(0, v395[2] + 1, 1, v395);
              }

              v397 = v395[2];
              v396 = v395[3];
              v620 = v395;
              v376 = v606;
              if (v397 >= v396 >> 1)
              {
                v620 = sub_21D0FBE34(v396 > 1, v397 + 1, 1, v620);
              }

              sub_21D101450(v376, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
              v398 = v620;
              v620[2] = v397 + 1;
              sub_21D0D523C(v605, v398 + ((*(v612 + 80) + 32) & ~*(v612 + 80)) + *(v612 + 72) * v397, &qword_27CE58180);
              v374 += v623;
              --v373;
              v169 = v619;
            }

            while (v373);
          }

          sub_21D0CF7E0(v507, &qword_27CE64C20);
          v309 = v609;
          v310 = v622;
          v244 = v567;
          v291 = v610;
          v311 = v508;
          v308 = v620;
        }

        v304 = v308;
        if (v308[2])
        {
          if (qword_280D14DE0 != -1)
          {
            swift_once();
          }

          v399 = __swift_project_value_buffer(v309, qword_280D14DE8);
          (*(v588 + 16))(v311, v399, v309);
          v400 = v513;
          sub_21D0FE734(v311, v513, type metadata accessor for TTRAccountsListsViewModel.PinnedListsSection);
          swift_storeEnumTagMultiPayload();
          v401 = v607;
          v402 = v400 + *(v607 + 52);
          *v402 = 0;
          *(v402 + 8) = -1;
          *(v400 + *(v401 + 56)) = v308;
          sub_21D0D3954(v400, v514, &qword_27CE58180);
          v403 = v310[2];
          sub_21DBF8E0C();
          v404 = swift_isUniquelyReferenced_nonNull_native();
          v644 = v310;
          if (!v404 || v403 >= v310[3] >> 1)
          {
            v310 = sub_21D0FBE34(v404, v403 + 1, 1, v310);
            v644 = v310;
          }

          sub_21D103AC8(0, 0, 1, v514);
          v644 = v310;
          sub_21D0CF7E0(v513, &qword_27CE58180);
          sub_21D101450(v311, type metadata accessor for TTRAccountsListsViewModel.PinnedListsSection);
        }

        sub_21DBF8E0C();
        *&v615 = 1;
        goto LABEL_118;
      }
    }

    else
    {
      v291 = v610;
      v169 = v619;
      v292 = v566;
      if ((v586 & 4) == 0)
      {
        v293 = *(v566 + 48);
        v294 = sub_21DBF691C();
        *&v631 = *(v602 + v587);
        v295 = v540;
        static TTRAccountsListsViewModel.generatePinnedLists(orderedPinnedLists:visiblePredefinedSmartLists:capabilities:pinnedListsContactsData:reminderCounts:includesNonEditablePredefinedSmartList:)(v540, (v540 + v293), v294, v623, &v631, v565, v289, 1);

        v296 = v534;
        sub_21D0D3954(v295, v534, &qword_27CE64C20);
        sub_21D103A34(*(v296 + *(v292 + 48)), *(v296 + *(v292 + 48) + 8));
        v297 = v511;
        sub_21D100E28(v296, v511, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
        swift_storeEnumTagMultiPayload();
        v298 = v512;
        sub_21D0D3954(v295, v512, &qword_27CE64C20);
        v299 = v298 + *(v292 + 48);
        v300 = *v299;
        LOBYTE(v299) = *(v299 + 8);
        v301 = v607;
        v302 = v297 + *(v607 + 52);
        *v302 = v300;
        *(v302 + 8) = v299;
        *(v297 + *(v301 + 56)) = MEMORY[0x277D84F90];
        sub_21D101450(v298, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58798);
        v303 = (*(v612 + 80) + 32) & ~*(v612 + 80);
        v304 = swift_allocObject();
        *(v304 + 16) = xmmword_21DC08D00;
        sub_21D0D523C(v297, v304 + v303, &qword_27CE58180);
        sub_21D0CF7E0(v295, &qword_27CE64C20);
        sub_21DBF8E0C();
        *&v615 = 0;
LABEL_78:
        v310 = v622;
        goto LABEL_118;
      }
    }

    v312 = *(v292 + 48);
    v313 = sub_21DBF691C();
    *&v631 = *(v602 + v587);
    v314 = v531;
    static TTRAccountsListsViewModel.generatePinnedLists(orderedPinnedLists:visiblePredefinedSmartLists:capabilities:pinnedListsContactsData:reminderCounts:includesNonEditablePredefinedSmartList:)(v531, (v531 + v312), v313, v623, &v631, v565, v289, 1);

    v315 = v314;

    v316 = v540;
    sub_21D0D3954(v314, v540, &qword_27CE64C20);
    sub_21D103A34(*(v316 + *(v292 + 48)), *(v316 + *(v292 + 48) + 8));
    v317 = *(v316 + *(type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0) + 20));
    sub_21DBF8E0C();
    sub_21D101450(v316, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
    v318 = *(v317 + 16);

    if (!v318)
    {
      sub_21D0CF7E0(v314, &qword_27CE64C20);
      *&v615 = 1;
      v304 = MEMORY[0x277D84F90];
      goto LABEL_78;
    }

    sub_21D0D3954(v314, v316, &qword_27CE64C20);
    sub_21D103A34(*(v316 + *(v292 + 48)), *(v316 + *(v292 + 48) + 8));
    v319 = v533;
    sub_21D100E28(v316, v533, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
    swift_storeEnumTagMultiPayload();
    v320 = v534;
    sub_21D0D3954(v315, v534, &qword_27CE64C20);
    v321 = v320 + *(v292 + 48);
    v322 = *v321;
    LOBYTE(v321) = *(v321 + 8);
    v323 = v607;
    v324 = v319 + *(v607 + 52);
    *v324 = v322;
    *(v324 + 8) = v321;
    *(v319 + *(v323 + 56)) = MEMORY[0x277D84F90];
    sub_21D101450(v320, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
    v325 = v319;
    v326 = v518;
    sub_21D0D3954(v325, v518, &qword_27CE58180);
    v310 = v622;
    v327 = v622[2];
    v328 = swift_isUniquelyReferenced_nonNull_native();
    v644 = v310;
    if (!v328 || v327 >= v310[3] >> 1)
    {
      v310 = sub_21D0FBE34(v328, v327 + 1, 1, v310);
      v644 = v310;
    }

    *&v615 = 1;
    sub_21D103AC8(0, 0, 1, v326);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58798);
    v329 = (*(v612 + 80) + 32) & ~*(v612 + 80);
    v304 = swift_allocObject();
    *(v304 + 16) = xmmword_21DC08D00;
    sub_21D0D523C(v533, v304 + v329, &qword_27CE58180);
    sub_21D0CF7E0(v315, &qword_27CE64C20);
    sub_21DBF8E0C();
LABEL_118:
    v622 = v310;
    v405 = *(v304 + 16);
    v620 = v304;
    if (v405)
    {
      v406 = v304 + ((*(v612 + 80) + 32) & ~*(v612 + 80));
      v407 = *(v612 + 72);
      v623 = MEMORY[0x277D84F90];
      do
      {
        sub_21D0D3954(v406, v291, &qword_27CE58180);
        sub_21D0FE734(v291, v244, type metadata accessor for TTRAccountsListsViewModel.Item);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          sub_21D101450(v244, type metadata accessor for TTRAccountsListsViewModel.Item);
          sub_21D0FE734(v291, v617, type metadata accessor for TTRAccountsListsViewModel.Item);
          sub_21D0CF7E0(v291, &qword_27CE58180);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v623 = sub_21D103C5C(0, *(v623 + 16) + 1, 1, v623);
          }

          v409 = *(v623 + 16);
          v408 = *(v623 + 24);
          if (v409 >= v408 >> 1)
          {
            v623 = sub_21D103C5C(v408 > 1, v409 + 1, 1, v623);
          }

          v410 = v623;
          *(v623 + 16) = v409 + 1;
          sub_21D100E28(v617, v410 + ((*(v611 + 80) + 32) & ~*(v611 + 80)) + *(v611 + 9) * v409, type metadata accessor for TTRAccountsListsViewModel.Item);
          v291 = v610;
        }

        else
        {
          sub_21D0CF7E0(v291, &qword_27CE58180);
          sub_21D101450(v244, type metadata accessor for TTRAccountsListsViewModel.Item);
        }

        v406 += v407;
        --v405;
      }

      while (v405);
    }

    else
    {

      v623 = MEMORY[0x277D84F90];
    }

    v411 = sub_21DBF68EC();
    v165 = v411;
    if (!(v411 >> 62))
    {
      v412 = *((v411 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v412)
      {
        goto LABEL_147;
      }

      goto LABEL_132;
    }

LABEL_146:
    v412 = sub_21DBFBD7C();
    if (!v412)
    {
LABEL_147:

      goto LABEL_148;
    }

LABEL_132:
    *&v631 = MEMORY[0x277D84F90];
    sub_21D18E678(0, v412 & ~(v412 >> 63), 0);
    if (v412 < 0)
    {
      __break(1u);
LABEL_187:
      swift_once();
      goto LABEL_151;
    }

    v413 = 0;
    v414 = v631;
    do
    {
      if ((v165 & 0xC000000000000001) != 0)
      {
        v415 = MEMORY[0x223D44740](v413, v165);
      }

      else
      {
        v415 = *(v165 + 8 * v413 + 32);
      }

      v416 = v415;
      v417 = [v415 name];
      v418 = sub_21DBFA16C();
      v420 = v419;

      *&v631 = v414;
      v422 = *(v414 + 16);
      v421 = *(v414 + 24);
      if (v422 >= v421 >> 1)
      {
        sub_21D18E678((v421 > 1), v422 + 1, 1);
        v414 = v631;
      }

      ++v413;
      *(v414 + 16) = v422 + 1;
      v423 = v414 + 16 * v422;
      *(v423 + 32) = v418;
      *(v423 + 40) = v420;
    }

    while (v412 != v413);

    v169 = v619;
LABEL_148:
    v424 = v546;
    sub_21DBF784C();
    sub_21DBF689C();
    v425 = v547;
    sub_21DBF784C();
    sub_21DBF782C();
    v426 = v598 + 8;
    v427 = *(v598 + 8);
    v428 = v584;
    v427(v425, v584);
    v617 = v427;
    v427(v424, v428);
    v429 = sub_21DBF786C();
    v165 = v549;
    v598 = v426;
    if (v429)
    {
      v430 = 1;
      v200 = v618;
      v431 = v616;
      v616(v582, 1, 1, v169);
      v201 = v583;
      v188 = v622;
      goto LABEL_165;
    }

    if (qword_27CE56FB0 != -1)
    {
      goto LABEL_187;
    }

LABEL_151:
    v432 = v609;
    v433 = __swift_project_value_buffer(v609, qword_27CE64BA8);
    v435 = (v588 + 16);
    v434 = *(v588 + 16);
    v436 = v550;
    v434(v550, v433, v432);
    v437 = sub_21DBF785C();
    v438 = v523;
    *(v436 + *(v523 + 20)) = v437;
    *(v436 + *(v438 + 24)) = (v601 & 1) == 0;
    sub_21D0FE734(v436, v574, type metadata accessor for TTRAccountsListsViewModel.Hashtags);
    swift_storeEnumTagMultiPayload();
    sub_21D0D3954(v573, v165, &qword_27CE5F780);
    v439 = v524;
    v440 = v525;
    v441 = (*(v524 + 48))(v165, 1, v525);
    v442 = v535;
    if (v441 == 1)
    {
      sub_21D0CF7E0(v165, &qword_27CE5F780);
      if (qword_27CE56FB8 != -1)
      {
        swift_once();
      }

      v443 = v609;
      v444 = __swift_project_value_buffer(v609, qword_27CE64BC0);
      v445 = v552;
      v434(v552, v444, v443);
      v446 = v529;
      *(v445 + *(v529 + 20)) = &unk_282EA8238;
      v447 = 1;
    }

    else
    {
      (*(v439 + 32))(v535, v165, v440);
      v448 = v442;
      if (qword_27CE56FB8 != -1)
      {
        swift_once();
      }

      v449 = v609;
      v450 = __swift_project_value_buffer(v609, qword_27CE64BC0);
      v434(v528, v450, v449);
      v451 = v439;
      v452 = *(v439 + 16);
      v453 = v510;
      v452(v510, v448, v440);
      v454 = v509;
      v452(v509, v453, v440);
      TTRAccountsListsViewModel.HashtagFilterOperation.Option.init(selection:)(v454, &v631);
      LODWORD(v606) = v631;
      v611 = v434;
      v455 = v552;
      v456 = v528;
      v457 = v609;
      v611(v552, v528, v609);
      v610 = v435;
      v458 = v529;
      v605 = *(v529 + 20);
      v459 = *(v451 + 8);
      v459(v453, v440);
      (*(v588 + 8))(v456, v457);
      v459(v535, v440);
      v447 = v606;
      v446 = v458;
      *(v455 + v605) = &unk_282EA8260;
      v445 = v455;
      v434 = v611;
    }

    *(v445 + *(v446 + 24)) = v447;
    if (qword_27CE56FA8 != -1)
    {
      swift_once();
    }

    v460 = v609;
    v461 = __swift_project_value_buffer(v609, qword_27CE64B90);
    v462 = v551;
    v434(v551, v461, v460);
    v463 = *(v527 + 20);
    sub_21D0FE734(v445, v462 + v463, type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation);
    (*(v526 + 56))(v462 + v463, 0, 1, v446);
    v464 = v548;
    sub_21D0FE734(v462, v548, type metadata accessor for TTRAccountsListsViewModel.HashtagsSection);
    swift_storeEnumTagMultiPayload();
    v465 = v544;
    sub_21D0FE734(v464, v544, type metadata accessor for TTRAccountsListsViewModel.Item);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58798);
    v466 = *(v612 + 72);
    v467 = (*(v612 + 80) + 32) & ~*(v612 + 80);
    v468 = swift_allocObject();
    *(v468 + 16) = xmmword_21DC08D00;
    sub_21D0FE734(v574, v468 + v467, type metadata accessor for TTRAccountsListsViewModel.Item);
    v469 = v607;
    v470 = *(v607 + 52);
    v471 = v468 + v467 + v470;
    *v471 = 0;
    *(v471 + 8) = -1;
    v472 = *(v469 + 56);
    *(v468 + v467 + v472) = MEMORY[0x277D84F90];
    v473 = v465 + v470;
    *v473 = 0;
    *(v473 + 8) = -1;
    *(v465 + v472) = v468;
    sub_21D0D3954(v465, v545, &qword_27CE58180);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v622 = sub_21D0FBE34(0, v622[2] + 1, 1, v622);
    }

    v475 = v622[2];
    v474 = v622[3];
    if (v475 >= v474 >> 1)
    {
      v622 = sub_21D0FBE34(v474 > 1, v475 + 1, 1, v622);
    }

    sub_21D0CF7E0(v544, &qword_27CE58180);
    sub_21D101450(v551, type metadata accessor for TTRAccountsListsViewModel.HashtagsSection);
    sub_21D101450(v552, type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation);
    sub_21D101450(v550, type metadata accessor for TTRAccountsListsViewModel.Hashtags);
    v476 = v622;
    v622[2] = v475 + 1;
    v477 = v476 + v467 + v475 * v466;
    v188 = v476;
    sub_21D0D523C(v545, v477, &qword_27CE58180);
    v644 = v188;
    v478 = v582;
    sub_21D100E28(v548, v582, type metadata accessor for TTRAccountsListsViewModel.Item);
    v200 = v618;
    v431 = v616;
    v616(v478, 0, 1, v169);
    v201 = v583;
    sub_21D100E28(v574, v583, type metadata accessor for TTRAccountsListsViewModel.Item);
    v430 = 0;
LABEL_165:
    v479 = v586;
    v431(v201, v430, 1, v169);
    if ((v479 & 8) == 0)
    {
      break;
    }

    v618 = v188[2];
    if (!v618)
    {
      break;
    }

    v480 = 0;
    v611 = (v588 + 32);
    v610 = (v588 + 16);
    v616 = (v588 + 8);
    v606 = xmmword_21DC08D00;
    v203 = v609;
    while (v480 < v188[2])
    {
      v200 = v169;
      v169 = v480 + 1;
      v481 = (*(v612 + 80) + 32) & ~*(v612 + 80);
      v622 = v188;
      v201 = *(v612 + 72) * v480;
      v482 = v188 + v481 + v201;
      v483 = v621;
      sub_21D0D3954(v482, v621, &qword_27CE58180);
      sub_21D0FE734(v483, v614, type metadata accessor for TTRAccountsListsViewModel.Item);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
        case 2u:
        case 3u:
        case 5u:
        case 6u:
        case 7u:
        case 8u:
        case 9u:
        case 0xAu:
        case 0xBu:
        case 0xDu:
        case 0xEu:
          sub_21D101450(v614, type metadata accessor for TTRAccountsListsViewModel.Item);
          goto LABEL_171;
        case 4u:
          v200 = *(v614 + 27);

          v203 = v609;

          if (v200)
          {
            goto LABEL_178;
          }

          goto LABEL_171;
        case 0xCu:
          sub_21D101450(v614, type metadata accessor for TTRAccountsListsViewModel.Item);
LABEL_178:
          v485 = v538;
          v486 = v203;
          TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v538);
          v487 = v539;
          sub_21D100E28(v485, v539, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
          v200 = v537;
          v488 = v487;
          v489 = v486;
          (*v611)(v537, v488, v486);
          v490 = v575;
          (*v610)(v575, v200, v489);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58798);
          v491 = swift_allocObject();
          *(v491 + 16) = v606;
          sub_21D0D3954(v621, v491 + v481, &qword_27CE58180);
          (*v616)(v200, v609);
          v492 = v607;
          v493 = v490 + *(v607 + 52);
          *v493 = 0;
          *(v493 + 8) = -1;
          *(v490 + *(v492 + 56)) = v491;
          v188 = v622;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v188 = sub_21D256DBC(v188);
          }

          sub_21D0CF7E0(v621, &qword_27CE58180);
          v203 = v609;
          if (v480 >= v188[2])
          {
            goto LABEL_184;
          }

          sub_21D0F02F4(v575, v188 + v481 + v201, &qword_27CE58180);
          v644 = v188;
          break;
        case 0xFu:
        case 0x10u:
          goto LABEL_171;
        default:
          (*v616)(v614, v203);
LABEL_171:
          sub_21D0CF7E0(v621, &qword_27CE58180);
          v188 = v622;
          break;
      }

      ++v480;
      v484 = v618 == v169;
      v169 = v619;
      if (v484)
      {
        goto LABEL_182;
      }
    }

    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    swift_once();
  }

LABEL_182:
  sub_21DBF8E0C();
  v494 = MEMORY[0x277D84F90];
  v495 = sub_21D0DDA78(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C18);
  v496 = swift_allocObject();
  *&v631 = v494;
  *&v625 = MEMORY[0x277D84F98];
  sub_21D0DA894(v188, &v631, &v625);

  v497 = v625;
  v496[2] = v631;
  v496[3] = v497;
  v496[4] = v495;

  sub_21D0CF7E0(v573, &qword_27CE5F780);
  v498 = sub_21DBF69DC();
  (*(*(v498 - 8) + 8))(v608, v498);
  v617(v596, v584);
  v499 = v602;
  *(v602 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree) = v496;
  *(v499 + 16) = v585;
  v500 = v499 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes;
  *v500 = v620;
  *(v500 + 8) = v615;
  sub_21D0D523C(v582, v499 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsHeaderItem, &qword_27CE5A490);
  sub_21D0D523C(v583, v499 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsItem, &qword_27CE5A490);
  sub_21D0D523C(v604, v499 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_permissionMainItem, &qword_27CE5A490);
  *(v499 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsItems) = v623;

  (*(v541 + 8))(v600, v542);
  return v499;
}